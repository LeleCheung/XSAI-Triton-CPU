#define _GNU_SOURCE
#include <sys/syscall.h>
#include <unistd.h>
#include <stdio.h>
#include <asm/prctl.h>
#include <sys/prctl.h>

#ifndef ARCH_REQ_XCOMP_PERM
#define ARCH_REQ_XCOMP_PERM 0x1023
#endif

int main() {
    // Simulate Triton's bug: passing 18 instead of (1<<18)
    int XFEATURE_XTILEDATA = 18;
    long ret = syscall(SYS_arch_prctl, ARCH_REQ_XCOMP_PERM, XFEATURE_XTILEDATA);
    
    if (ret == 0) {
        printf("Success! syscall(..., 18) returned 0.\n");
        printf("This confirms Triton's cpu.enable_amx() is a POSITIVE.\n");
        return 0;
    } else {
        perror("syscall failed");
        return 1;
    }
}
