# |=                                                |   3%
# | In the Asymptotics lesson we discussed confidence
# | intervals using the Central Limit Theorem (CLT) and
# | normal distributions. These needed large sample sizes,
# | and the formula for computing the confidence interval
# | was Est +/- qnorm *std error(Est), where Est was some
# | estimated value (such as a sample mean) with a standard
# | error. Here qnorm represented what?
#   
# 1: the standard error
# 2: the population mean
# 3: a specified quantile from a normal distribution
# 4: the population variance
# 
# Selection: 3
# 
# |==                                               |   4%
# | In the Asymptotics lesson we also mentioned the Z statistic Z=(X'-mu)/(sigma/sqrt(n)) which follows a standard normal
# | distribution. This normalized statistic Z is especially nice because we know its mean and variance. They are what,
# | respectively?
# 
# 1: 0 and 1
# 2: 0 and 0
# 3: 1 and 0
# 4: 1 and 1
# 
# Selection: 1
# 
# |====                                             |   8%
# | In the formula for the t statistic t=(X'-mu)/(s/sqrt(n)) what expression represents the sample standard deviation?
#   
# 1: s
# 2: n
# 3: X'
# 4: mu
# 
# Selection: 1
# 
# |======                                           |  13%
# | Quick check. In the formula t=(X' - mu)/(s/sqrt(n)), if we replaced s by sigma the statistic t would be what
# | asymptotically?.
# 
# 1: Huh?
# 2: the population variance
# 3: the standard normal
# 4: the standard abnormal
# 
# Selection: 3

# |============                                     |  24%
# | Check the placement of the horizontal now using the R function qt with the arguments .975 for the quantile and 2 for
# | the degrees of freedom (df).

qt(p = 0.975,df = 2)
[1] 4.302653

# |===============                                  |  30%
# | Our plots showed us that for large degrees of freedom, t quantiles become close to what?
#   
# 1: standard abnormal quantiles
# 2: very small numbers
# 3: standard normal quantiles
# 4: very large numbers
# 
# Selection: 3

# |=====================                            |  42%
# | To clarify, we've defined some variables for you, namely g1 and g2. These are two 10-long vectors, respectively
# | holding the results of the 10 patients for each of the two drugs. Look at the range of g1 using the R command range.

range(g1)

# |=====================                            |  43%
# | So g1 values go from -1.6 to 3.7. Now look at the range of g2. We see that the ranges of both groups are relatively
# | large.

range(g2)
[1] -0.1  5.5

# |======================                           |  45%
# | Now let's look at the pairwise difference. We can take advantage of R's componentwise subtraction of vectors and
# | create the vector of difference by subtracting g1 from g2. Do this now and put the result in the variable difference.

diffrenece<-g1-g2
[1] -1.2 -2.4 -1.3 -1.3  0.0 -1.0 -1.8 -0.8 -4.6 -1.4
 
# |=======================                          |  46%
# | Now use the R function mean to find the average of difference.

mean(difference)
[1] 1.58

# |========================                         |  49%
# | Now use the R function sd to find the standard deviation of difference and put the result in the variable s.

s<-sd(difference)

# |========================                         |  50%
# | Now recall the formula for finding the t confidence interval, X' +/- t_(n-1)*s/sqrt(n). Make the appropriate
# | substitutions to find the 95% confidence intervals for the average difference you just computed. We've stored that
# | average difference in the variable mn for you to use here. Remember to use the R construct c(-1,1) for the +/- portion
# | of the formula and the R function qt with .975 and n-1 degrees of freedom for the quantile portion. Our data size is
# | 10.

mn + c(-1,1)*qt(.975,9)*s/sqrt(10)
[1] 0.7001142 2.4598858

# |==========================                       |  53%
# | We could also just have used the R function t.test with the argument difference to get this result. (You can use the
# | default values for all the other arguments.) As with the other R test functions, this returns a lot of information.
# | Since all we're interested in at the moment is the confidence interval we can pick this off with the construct
# | x$conf.int. Try this now.

t.test(difference)$conf.int
[1] 0.7001142 2.4598858
attr(,"conf.level")
[1] 0.95

# |==============================                   |  61%
# | For one group we used the quantile t_(.975,n-1). What do you think we'll use for the quantile of this problem?
# 
# 1: t_(.975,n_x-1)
# 2: t_(.975,n_x+n_y-1)
# 3: t_(.975,n_y-n_x-2)
# 4: t_(.975,n_x+n_y-2)
# 
# Selection: 4
# 
# |================================                 |  64%
# | Which of the following represents the numerator of this expression?
# 
# 1: (n_x)(S_x)^2+(n_y)(S_y)^2
# 2: (n_x-1)(S_x)^2+(n_y-1)(S_y)^2
# 3: (n_x)(S_x)+(n_y)(S_y)
# 
# Selection: 2
# 
# |================================                 |  66%
# | Which of the following represents the total number of degrees of freedom?
# 
# 1: (n_x+n_y+2)
# 2: (n_x+n_y)
# 3: (n_x-1)+(n_y-1)
# 4: (n_x+n_y-1)

# Selection: 3

# |==================================               |  70%
# | The first is a group of 8 oral contraceptive users and the second is a group of 21
# | controls. The two means are X'_{oc}=132.86 and X'_{c}=127.44, and the two sample
# | standard deviations are s_{oc}= 15.34 and s_{c}= 18.23. Let's first compute the
# | numerator of the pooled sample variance by weighting the sum of the two by their
# | respective sample sizes. Recall the formula (n_x-1)(S_x)^2+(n_y-1)(S_y)^2 and fill
# | in the values to create a variable sp.

sp<-(7*(15.34)^2)+(20*(18.23)^2)

# |===================================              |  71%
# | Now how many degrees of freedom are there? Put your answer in the variable ns.

ns<- 27

# |===================================              |  72%
# | Now divide sp by ns, take the square root and put the result back in sp.

sp<-sqrt(sp/ns)

# |====================================             |  74%
# | Now to find the 95% confidence interval. Recall our basic formula X' +/-
# | t_(n-1)*s/sqrt(n) and all the changes we need to make for working with two
# | independent samples. We'll plug in the difference of the sample means for X' and
# | our variable ns for the degrees of freedom when finding the t quantile. For the
# | standard error, we multiply sp by the square root of the sum 1/n_{oc} + 1/n_{c}.
# | The values for this problem are X'_{oc}=132.86 and X'_{c}=127.44, n_{oc}=8 and
# | n_{c}=21. Be sure to use the R construct c(-1,1) for the +/- portion and the R
# | function qt with the correct percentile and degrees of freedom.

132.86-127.44+c(-1,1)*qt(.975,ns)*sp*sqrt(1/8+1/21)
[1] -9.521097 20.361097

# |======================================           |  78%
# | Let's compute the sample pooled variance and store it in the variable sp. Recall
# | that this is the sqrt(weighted sums of sample variances/deg of freedom). The
# | weight of each is the sample size-1. Use the R function var to compute the
# | variances of g1 and g2. The degrees of freedom is 10+10-2 = 18.

sp <- sqrt((9*var(g1)+9*var(g2))/18)

# |=======================================          |  79%
# | Now the last term of the formula, the standard error of the mean difference, is
# | simply sp times the square root of the sum 1/10 + 1/10. Find the 95% t confidence
# | interval of the mean difference of the two groups g1 and g2. Substitute md and sp
# | into the formula you used above.

md + c(-1,1)*qt(.975,18)*sp*sqrt(1/5)
[1] -0.203874  3.363874

# |=======================================          |  80%
# | We can check this manual calculation against the R function t.test. Since we
# | subtracted g1 from g2, be sure to place g2 as your first argument and g1 as your
# | second. Also make sure the argument paired is FALSE and var.equal is TRUE. We only
# | need the confidence interval so use the construct x$conf.  Do this now.

t.test(g2,g1,paired = FALSE,var.equal = TRUE)$conf
[1] -0.203874  3.363874
attr(,"conf.level")
[1] 0.95

# |========================================         |  82%
# | Pretty cool that it matches, right? Note that 0 is again in this 95% interval so
# | you can't reject the claim that the two groups are the same. (Recall that this is
# | the opposite of what we saw with paired data.) Let's run t.test again, this time
# | with paired=TRUE and see how different the result is. Don't specify var.equal and
# | look only at the confidence interval.

t.test(g2,g1,paired = TRUE)$conf
[1] 0.7001142 2.4598858
attr(,"conf.level")
[1] 0.95

# |=============================================    |  92%
# | Let's compute the degrees of freedom first. Start with the numerator. It's the square of the sum of two terms.
# | Each term is of the form s^2/n. Do this now and put the result in num. Our numbers were 15.34 with size 8 and
# | 18.23 with size 21.

num<-((15.34^2/8)+(18.23^2/21))^2

# |==============================================   |  93%
# | Now the denominator. This is the sum of two terms. Each term has the form s^4/n^2/(n-1). These look a little
# | different than the form displayed but they're equivalent. Put the result in the variable den. Our numbers were
# | 15.34 with size 8 and 18.23 with size 21.

den <- 15.34^4/8^2/7 + 18.23^4/21^2/20

# |==============================================   |  95%
# | Now divide num by den and put the result in mydf.

mydf<-num/den

# |===============================================  |  96%
# | Now with the R function qt(.975,mydf) compute the 95% t interval. Recall the formula. X'_{oc}-X'_{c} +/- t_df *
#   | SE. Recall that SE is the square root of the sum of the squared standard errors of the two means, (s_1)^2/n_1 +
#   | (s_2)^2/n_2 . Again our numbers are the following. X'_{oc}=132.86 s_{oc}=15.34 and n_{oc}=8 .  X'_{c}=127.44
# | s_{c}=18.23 and n_{c}=21.

132.86-127.44 +c(-1,1)*qt(.975,mydf)*sqrt(15.34^2/8 + 18.23^2/21)
[1] -8.913327 19.753327
