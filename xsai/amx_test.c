#define _GNU_SOURCE
#include <sys/syscall.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <errno.h>
#include <asm/prctl.h>
#include <sys/prctl.h>

// 定义 AMX 相关的常量，防止旧版头文件缺失
#ifndef ARCH_GET_XCOMP_SUPP
#define ARCH_GET_XCOMP_SUPP 0x1021
#endif
#ifndef ARCH_GET_XCOMP_PERM
#define ARCH_GET_XCOMP_PERM 0x1022
#endif
#ifndef ARCH_REQ_XCOMP_PERM
#define ARCH_REQ_XCOMP_PERM 0x1023
#endif

#ifndef XFEATURE_XTILECFG
#define XFEATURE_XTILECFG 17
#endif
#ifndef XFEATURE_XTILEDATA
#define XFEATURE_XTILEDATA 18
#endif

int main() {
    unsigned long features = 0;
    long ret;

    // 1. 查询系统/硬件支持的扩展特性 (Supported)
    // 这代表内核认为硬件具备哪些能力
    ret = syscall(SYS_arch_prctl, ARCH_GET_XCOMP_SUPP, &features);
    if (ret) {
        perror("ARCH_GET_XCOMP_SUPP");
        return 1;
    }
    printf("Supported XSTATE features: 0x%lx\n", features);

    // 2. 查询当前进程已获得的权限 (Current Permission)
    // 这代表当前进程可以使用哪些特性而不会触发非法指令异常
    ret = syscall(SYS_arch_prctl, ARCH_GET_XCOMP_PERM, &features);
    if (ret) {
        perror("ARCH_GET_XCOMP_PERM");
        return 1;
    }
    printf("Current XSTATE permission: 0x%lx\n", features);

    // 3. 尝试申请 AMX 权限
    // 我们需要同时申请 XTILECFG (配置寄存器) 和 XTILEDATA (数据寄存器)
    unsigned long amx_mask = (1UL << XFEATURE_XTILECFG) | (1UL << XFEATURE_XTILEDATA);
    
    // 申请时，通常需要包含当前已有的权限，或者只传增量（取决于内核实现，通常建议传目标全集）
    // 这里我们尝试请求 "当前权限 + AMX权限"
    unsigned long request_mask = features | amx_mask;
    
    printf("Requesting permission for mask: 0x%lx (AMX bits: 0x%lx)\n", request_mask, amx_mask);

    ret = syscall(SYS_arch_prctl, ARCH_REQ_XCOMP_PERM, request_mask);
    if (ret) {
        // 如果失败，打印错误码
        printf("Failed to enable AMX. Errno: %d\n", errno);
        perror("ARCH_REQ_XCOMP_PERM");
        return 1;
    }
    
    printf("Success! AMX permission enabled.\n");
    return 0;
}
