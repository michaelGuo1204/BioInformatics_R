# title  :
print('=============================+')
P_1 <-c(rnorm(20,40,12),rnorm(30,20,13))
P_2 <-c(rnorm(20,40,10),rnorm(30,20,11))
P_3 <-c(rnorm(20,40,15),rnorm(30,20,19))
N_1 <-c(rnorm(20,10,18),rnorm(30,20,12))
N_2 <-c(rnorm(20,10,4),rnorm(30,20,6))
N_3 <-c(rnorm(20,10,7),rnorm(30,20,12))
data <- matrix(c(P_1,P_2,P_3,N_1,N_2,N_3),nrow=50)
check<-function (col)
{
  ifelse(col>0,col,-col)
}
Tddata<-apply(data,10,check)
count<-
countTPM<-function (counts,efflen)
{
  rate<-log(counts)-log(efflen)
  denom<-log(sum(exp(rate)))
  exp(rate-denom+log(1e9))
}
countFPKM<-function (counts,efflen)
{
  N<-sum(counts)
  exp(log(counts)+log(1e9)-log(efflen)-log(N))
}

