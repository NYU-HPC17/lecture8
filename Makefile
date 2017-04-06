EXECS=my_bcast compare_bcast jacobi-mpi jacobi-mpi-nonblocking
MPICC=mpicc

all: ${EXECS}

my_bcast: my_bcast.c
	${MPICC} -o my_bcast my_bcast.c

compare_bcast: compare_bcast.c
	${MPICC} -o compare_bcast compare_bcast.c

jacobi-mpi: jacobi-mpi.c
	${MPICC} -o jacobi-mpi jacobi-mpi.c

jacobi-mpi-nonblocking: jacobi-mpi-nonblocking.c
	${MPICC} -o jacobi-mpi-nonblocking jacobi-mpi-nonblocking.c

clean:
	rm -f ${EXECS}
