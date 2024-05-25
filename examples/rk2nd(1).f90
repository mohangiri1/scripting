program rk2nd
implicit none
real,external::f
real::x,y,h,xg,k1,k2,dy
integer::n,i
print*,"Please insert the initial condition of x ie x0"
read*,x
Print*,"Please insert the initial condition of y ie y0"
read*,y
print*,"Please insert the width of the x (ie interval) or value of h"
read*,h
print*,"Plese insert the value of x at which solution is to be found ie xg"
read*,xg
n=int((xg-x)/h+0.5)
do i=1,n
x=x+h
k1=h*f(x,y)
k2=h*f(x+h,y+k1*h)
dy=(1/2.)*(k1+k2)
y=y+dy
!print*,"The value of x and it's corresponding y is",x,y
enddo
print*,"The value of x and it's corresponding y is",x,y
end

real function f(x,y)
real::x,y
f=x+2*y
end

