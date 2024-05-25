program mcinte
implicit none
real,external::f
real::a,b,p,summ,integration,x,answer,error
integer::n,i
print*,"please insert the lower limit of integration"
read*,a
print*,"Please insert the upper limit of integration"
read*,b
print*,"Please insert the number of random num that you want to generate"
read*,n
summ=0
do i=1,n
p=rand()
x=a+p+p*(b-a-1)
summ=summ+f(x)
end do
integration=(b-a)*summ/n
answer=(b**3-a**3)/3

error=abs(answer-integration)*100/answer
print*,"The integrated value using mc and manually respectively is",integration,answer
print*,"the percentage error is",error
end

real function f(x)
real::x
f=x**2
end
