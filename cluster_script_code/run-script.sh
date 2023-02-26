#!/bin/bash
#SBATCH -o run-3.out
#SBATCH -p batch
#SBATCH -N 3
#SBATCH --nodelist=node-01,node-03,node-05

mpirun --mca btl_tcp_if_exclude docker0,lo -np 24 /home/riset/matmul.o
