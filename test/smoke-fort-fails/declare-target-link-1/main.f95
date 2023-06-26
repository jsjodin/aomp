module test_0
    implicit none
    INTEGER :: sp(10) = (/0,0,0,0,0,0,0,0,0,0/)
    !$omp declare target link(sp)
end module test_0

! Work-around for print being weirdly captured by the kernel
! when placed after the target region
subroutine print_test(x)
integer, intent(in), dimension(10) :: x
integer i
do i = 1, 10
     PRINT *, x(i)
end do
end subroutine

program main
    use test_0
!$omp target map(from:sp)
    do i = 1, 10
        sp(i) = i;
    end do
!$omp end target

call print_test(sp)

end program