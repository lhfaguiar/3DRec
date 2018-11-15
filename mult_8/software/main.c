#include <sys/mman.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdint.h>
#include <stdio.h>

#define PAGE_SIZE sysconf(_SC_PAGESIZE)
#define LWHPS2FPGA_BASE 0xff200000


int main(int argc, char const *argv[])
{
    size_t i;

    printf("oi\n");
    int fd = open("/dev/mem", O_RDWR|O_SYNC);
    fflush(stdout);
    if (fd < 0) {
        return -1;
    }
    printf("Abriu\n");
    fflush(stdout);

    void *mem = mmap(NULL, PAGE_SIZE, PROT_READ | PROT_WRITE,
            MAP_SHARED, fd, LWHPS2FPGA_BASE);
    if (mem == MAP_FAILED) {
        close(fd);
        return -1;
    }
    printf("mapeou\n");

    volatile uint32_t *input = mem;

    printf("Comecou\n");
    // input[0] = 0x0001;
    input[0] = 0x00050000;
    while(input[0] & 0x1);
    printf("%d\n", input[0]);
    // input[0] |= 0x0001;
    // for(i = 0; i < 10; i++)
    // {
    //     input[0] = 0x0;
    // }
    // for(i = 0; i < 10; i++)
    // {
        // input[0] = 0x1;
    // }
    // for(i = 0; i < 10; i++)
    // {
    //     input[0] = 0xF;
    // }
    
    fflush(stdout);
    munmap(mem, PAGE_SIZE);
    close(fd);
    printf("terminou\n");


    return 0;
}
