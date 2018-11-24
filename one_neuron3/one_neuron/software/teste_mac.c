#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <sys/mman.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>

#include "hps_0.h"


int main(int argc, char const *argv[]) {
  int fd = open("/dev/mem", ( O_RDWR | O_SYNC ) );
  if (fd < 0) {
    return -1;
  }


  void *mem_lw = mmap(NULL, NEURON_CONTROL_0_SPAN, (PROT_READ | PROT_WRITE),
          MAP_SHARED, fd, NEURON_CONTROL_0_BASE);
  if (mem_lw == MAP_FAILED) {
      close(fd);
      return -1;
  }


  void *mem_pesos = mmap(NULL, PESOS_SPAN, ( PROT_READ | PROT_WRITE ),
          MAP_SHARED, fd, PESOS_BASE);
  if (mem_pesos == MAP_FAILED) {
      close(fd);
      return -1;
  }


  void *mem_pesos = mmap(NULL, PESOS_SPAN, ( PROT_READ | PROT_WRITE ),
          MAP_SHARED, fd, PESOS_BASE);
  if (mem_pesos == MAP_FAILED) {
      close(fd);
      return -1;
  }


  void *mem_ocr = mmap(NULL, OCR_SPAN, ( PROT_READ | PROT_WRITE ),
          MAP_SHARED, fd, OCR_BASE);
  if (mem_ocr == MAP_FAILED) {
      close(fd);
      return -1;
  }


  volatile uint32_t *input_lw  = (uint32_t*) mem_lw;
  volatile uint32_t *input_ocr = (uint32_t*) mem_ocr;
  volatile uint32_t *input_pesos = (uint32_t*) mem_pesos;


  mem_ocr[0] = 0x1;
  mem_pesos[0] = 0x2;


  input_lw[2] = 0x1;


  while (!(input_lw[3] & 0x1)) {
  }


  printf("%lx\n", input_lw[0]);


  return 0;
}
