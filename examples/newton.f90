program newton
implicit none
real::x
integer::iteration
print*,"Please insert the initial guess of the root of equation."
read*,x
call ntrap(x,iteration)
print*,"The root of the equation is",x
end

real function f(x)
real::x
f=3*x**2-1
end

real function fd(x)
real::x
fd=6*x
end

subroutine ntrap(x,iteration)
implicit none
real,external::f,fd
real::error,tol,x
integer::iteration
tol=0.0000001
iteration=0
10 error=-f(x)/fd(x)
x=x+error
iteration=iteration+1
if (abs(error) .gt. tol) then
goto 10
endif
print*,"Tolerance is",tol
Print*,"Iteration is",iteration
end
