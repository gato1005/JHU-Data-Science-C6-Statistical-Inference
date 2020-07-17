x<-c(-0.5,0,1,1,1.5)
y<-c(0,0,2,0,0)
plot(x,
     y,
     lwd=3,
     frame.plot = FALSE,
     type = "l")

# beta distribution
# "p"beta - probability from eta density

pbeta(0.75,2,1)

# CDF - Cumulative Distributive Function

pbeta(c(0.4,0.5,0.6),2,1)

# quantiles
# "q"beta - quantile

qbeta(0.5,2,1)
