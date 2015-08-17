      program factorial
      include "mpif.h"
      integer myid, ierr,numprocs,mpi_err
      integer imax, imaxloc
      integer status(MPI_STATUS_SIZE),request

      call MPI_INIT( ierr )
      call MPI_COMM_RANK( MPI_COMM_WORLD, myid, ierr )
      call MPI_COMM_SIZE( MPI_COMM_WORLD, numprocs, ierr )
      imaxloc=IRAND(myid)
      call MPI_ALLREDUCE(imaxloc,imax,1,MPI_INTEGER,MPI_MAX,MPI_COMM_WORLD,mpi_err)
      if (imax.eq.imaxloc) then
         write(*,*)"Max=",imax,"on task",myid
      endif
      call MPI_FINALIZE(ierr)
      stop
      end
