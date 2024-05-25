program pi_mc
implicit none
double precision::R(2),norm,pi,error
integer::n,i,m
print*,"Please insert the number of darts that you want to through"
read*,n
m=0
do i=1,n
Call random_number(R)
norm=R(1)**2+R(2)**2
if (norm .lt. 1.00d0) then
m=m+1
endif
pi=4.00d0*m/i
error=abs(pi-4.00d0*atan(1.00d0))*100/(4.00d0*atan(1.00d0))
print*,pi,4.00d0*atan(1.00d0),error
enddo
end
