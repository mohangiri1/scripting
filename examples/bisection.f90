program bisection
implicit none
real,external::f
real::a,b,c
print*,"Please insert the value of a and b such that f(a) and f(b) should have opposite sign"
read*,a,b
10 c=(a+b)/2
if (f(c)==0) then
print*,"The root of the equation is =",c
else if (f(a)*f(c) .gt. 0) then
a=c
goto 10
else
b=c
goto 10
endif
end

real function f(x)
real::x
f=3*x-1
end

