#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <sys/mman.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>
#include <time.h>

#include "hps_0.h"
#include <sys/time.h>

int main(int argc, char const *argv[]) {
    struct timeval  tv1, tv2;
   	gettimeofday(&tv1, NULL);
    int fd = open("/dev/mem", ( O_RDWR | O_SYNC ) );
    if (fd < 0) {
        return -1;
    }
    printf("Abriu '/dev/mem'\n");

    void *mem_lw = mmap(NULL, NEURON_CONTROL_0_SPAN, (PROT_READ | PROT_WRITE),
            MAP_SHARED, fd, NEURON_CONTROL_0_BASE);
    if (mem_lw == MAP_FAILED) {
        close(fd);
        return -1;
    }
    printf("Abriu LW\n");


    void *mem_pesos = mmap(NULL, IMG_SPAN + WEIGHTS_0_SPAN, ( PROT_READ | PROT_WRITE ),
            MAP_SHARED, fd, IMG_BASE);
    if (mem_pesos == MAP_FAILED) {
        close(fd);
        return -1;
    }
    printf("Abriu RAM Pesos\n");

    void *mem_ocr = mem_pesos + (WEIGHTS_0_BASE - IMG_BASE);
    printf("Abriu RAM Imagem\n");


    volatile uint32_t *input_lw  = (uint32_t*) mem_lw;
    volatile uint32_t *input_ocr = (uint32_t*) mem_ocr;
    volatile uint32_t *input_pesos = (uint32_t*) mem_pesos;


    // input_ocr[0] = 0x6;
    // input_pesos[0] = 0x2;
    // input_ocr[1] = 0x7;
    // input_pesos[1] = 0x9;
    // input_ocr[2] = 0x5;
    // input_pesos[2] = 0x3;
    // input_ocr[3] = 0x2;
    // input_pesos[3] = 0x1;
    // input_ocr[4] = 0x9;
    // input_pesos[4] = 0x2;

    // memset(input_pesos, (uint32_t) 1, WEIGHTS_0_SPAN-1);
    // memset(input_ocr, (uint32_t) 1, IMG_SPAN-1);

    size_t i;
    for (i = 0; i < 1000; i++) {
      input_ocr[i] = 1;
      input_pesos[i] = 1;
    }

    printf("Pixel1: %x\n", input_ocr[0]);
    printf("Peso1:  %x\n", input_pesos[0]);

    printf("Pixel2: %x\n", input_ocr[1]);
    printf("Peso2:  %x\n", input_pesos[1]);

    printf("Pixel3: %x\n", input_ocr[2]);
    printf("Peso3:  %x\n", input_pesos[2]);

    printf("Pixel4: %x\n", input_ocr[3]);
    printf("Peso4:  %x\n", input_pesos[3]);

    printf("Pixel5: %x\n", input_ocr[4]);
    printf("Peso5:  %x\n", input_pesos[4]);

    input_lw[0] = 0x0;
    input_lw[1] = atoi(argv[1]);
    input_lw[2] = 0x1;
    printf("Começou\n");

    while (!(input_lw[3] & 0x1)) {
    }
    printf("%x  %x\n", input_lw[0], input_lw[1]);
    printf("%x\n", input_lw[2]);
    fflush(stdin);


    gettimeofday(&tv2, NULL);
   	printf ("Total time = %f seconds\n",
           (double) (tv2.tv_usec - tv1.tv_usec) / 1000000 +
           (double) (tv2.tv_sec - tv1.tv_sec));

    munmap(mem_lw, NEURON_CONTROL_0_SPAN);
    munmap(mem_pesos, NEURON_CONTROL_0_SPAN);
    close(fd);
    return 0;
}
