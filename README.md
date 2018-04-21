# Biblioteca para o Cálculo de Distância Euclidiana

É parte de uma, dentre diversas propostas, de algoritmos mais otimizados
para rodarem em `Python`, através de um simples `import`. 

Para executar, dada situação atual do projeto, é necessário somente um
processador com instruções `avx2` e um sistema operacional com o `make` instalado.

Caso contrário, só será possível o `build` das implementações.

###  Processo de execução

```
$ make
$ ./build/baseline
$ ./build/ed128
$ ./build/ed256
$ make clean
```
