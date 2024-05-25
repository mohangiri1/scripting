program simsons_rule
implicit none
real,external::f
real::a,b,h,simson,fodd,feven
integer::n,i,m
Print*,'welcome to the simsons integration method using fortran'
Print*,'Please insert the lower limit of integration'
read*,a
print*,'Please insert the upper limit of integration'
read*,b
print*,'Please insert the number of sub-intervals'
read*,n
h = (b-a)/n
m = n/2
fodd=0
do i=0,m-1
fodd= fodd+f(a+(2*i+1)*h)
end do
feven = 0
do i=2,m-2
feven = feven+f(a+2*i*h)
end do
simson = (h/3.)*(f(a)+f(b)+4*fodd+2*feven)
print*,'lower limit = ',a
print*,'upper limit = ',b
print*,'the integrated value using simsons rule is;',simson
print*,'Limitation of this method'
Print*,'1)This method assumes the function to be linear'
print*,'2)we can assume function to be linear to many functions only if we divide the interval with small width'
end

real function f(x)
real::x
f = x**2
end
