program rk4th
implicit none
real,external::f
real::x,y,h,xg,k1,k2,dy,k3,k4
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
k2=h*f(x+h/2.,y+k1*h/2.)
k3=h*f(x+h/2.,y+k2*h/2.)
k4=h*f(x+h,y+k3*h)
dy=(1/6.)*(k1+k4+2*(k2+k3))
y=y+dy
!print*,"The value of x and it's corresponding y is",x,y
enddo
print*,"The value of x and it's corresponding y is",x,y
end

real function f(x,y)
real::x,y
f=x+2*y
end

