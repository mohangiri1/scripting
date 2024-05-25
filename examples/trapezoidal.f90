program trapezoidal
implicit none
real,external::f
real::a,b,h,p,integration,summ
integer::n,i
print*,"Welcome to this program. This program does integration using trapezoidal rule"
print*,"Please insert the lower limit of integration"
read*,a
print*,"Please insert upper limit of integration"
read*,b
print*,"Please insert number of sub-interval"
read*,n
h=(b-a)/n
p=(h/2.)*(f(a)+f(b))
summ=0
do i=1,n-1
summ=summ+h*f(a+i*h)
enddo
integration=p+summ
print*,"The integrated value using trapezoidal rule is",integration
end

real function f(x)
f=x**3
end
