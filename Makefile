EXECS=my_bcast compare_bcast jacobi-mpi
MPICC=mpicc

all: ${EXECS}

my_bcast: my_bcast.c
	${MPICC} -o my_bcast my_bcast.c

compare_bcast: compare_bcast.c
	${MPICC} -o compare_bcast compare_bcast.c

jacobi-mpi: jacobi-mpi.c
	${MPICC} -o jacobi-mpi jacobi-mpi.c

clean:
	rm -f ${EXECS}
