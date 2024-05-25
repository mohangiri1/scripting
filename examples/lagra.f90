program lagran
implicit none
real::xg,l,summ
integer::n,i,j,k
real,dimension(:),allocatable::x,y
print*,"welcome to this program created by Giree Mohan"

print*,"please insert the number of dimension of array/number of data points"
read*,n
allocate(x(n))
allocate(y(n))

print*,"please insert the value of x and it's corresponding y respectively"
do i=1,n
read*,x(i),y(i)
enddo

print*,"please insert the value of x at which y is to be interpolated"
read*,xg

summ=0
do j=1,n

l=1
do k=1,n
if (k .ne. j) then
l=l*(xg-x(k))/(x(j)-x(k))
endif
enddo

summ=summ+l*y(j)
enddo
print*,"The interpolated value at",xg,"is",summ
end
