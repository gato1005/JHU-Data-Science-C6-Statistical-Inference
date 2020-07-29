# |=====                                                                                                                   |   4%
# | Recall our simulations and discussions of sample means in previous lessons. We can now talk about the distribution of sample
# | means of a collection of iid observations. The mean of the sample mean estimates what?
#   
#   1: population variance
# 2: sigma^2/n
# 3: population mean
# 4: standard error
# 
# Selection: 3
# 
# |==========                                                                                                              |   8%
# | To see this in action, we've copied some code from the slides and created the function coinPlot. It takes an integer n which is the number of
# | coin tosses that will be simulated. As coinPlot does these coin flips it computes the cumulative sum (assuming heads are 1 and tails 0), but
# | after each toss it divides the cumulative sum by the number of flips performed so far. It then plots this value for each of the k=1...n
# | tosses. Try it now for n=10.
# 
# > coinPlot(n = 10)
# 
# |============                                                                                                            |  10%
# | Your output depends on R's random number generator, but your plot probably jumps around a bit and, by the 10th flip, your cumulative sum/10
# | is probably different from mine. If you did this several times, your plots would vary quite a bit. Now call coinPlot again, this time with
# | 10000 as the argument.
# 
# > coinPlot(n = 10000)
# 
# | Based on our previous lesson do you think the sample variance (and hence sample deviation) are consistent as well?
#   
# 1: No
# 2: Yes
# 
# Selection: 2
# 
# |=======================                                                                                                 |  19%
# | Do you recognize sigma/sqrt(n) from our lesson on variance? Since the population std deviation sigma is unknown, sigma/sqrt(n) is often
# | approximated by what?
#   
# 1: the variance of the population
# 2: I give up
# 3: the standard error of the sample mean
# 4: the mean of the population
# 
# Selection: 3
# 
# |===========================================                                                                             |  36%
# | Note that for a 95% confidence interval we divide (100-95) by 2 (since we have both left and right tails) and add the
# | result to 95 to compute the quantile we need. The 97.5 quantile is actually 1.96, but for simplicity it's often just
# | rounded up to 2. If you wanted to find a 90% confidence interval what quantile would you want?
# 
# 1: 95
# 2: 85
# 3: 90
# 4: 100
# 
# Selection:  1
# 
# |============================================                                                                            |  37%
# | Use the R function qnorm to find the 95th quantile for a standard normal distribution. Remember that qnorm takes a
# | probability as an input. You can use default values for all the other arguments.
# 
# warning messages from top-level task callback 'mini'
# Warning messages:
# 1: Use of `dat$y` is discouraged. Use `y` instead. 
# 2: Use of `dat$y` is discouraged. Use `y` instead. 
# > qnorm(p = .95)
# [1] 1.644854
# 
# |==============================================                                                                          |  38%
# | As we've seen before, in a binomial distribution in which p represents the probability or proportion of success, the
# | variance sigma^2 is p(1-p), so the standard error of the sample mean p' is sqrt(p(1-p)/n) where n is the sample size. The
# | 95% confidence interval of p is then p' +/- 2*sqrt(p(1-p)/n). The 2 in this formula represents what?
#   
# 1: the mean of p'
# 2: the standard error of p'
# 3: the approximate 97.5% normal quantile
# 4: the variance of p'
# 
# Selection: 3
# 
# |=================================================                                                                       |  41%
# | Using 1/2 for the value of p in the formula above yields what expression for the 95% confidence interval for p?
# 
# 1: p'+/- 1/(2*sqrt(n))
# 2: p'+/- 1/sqrt(n)
# 3: p'+/- 2*sqrt(n)
# 
# Selection: 2
# 
# |===================================================                                                                     |  42%
# | Here's another example of applying this formula from the slides. Suppose you were running for office and your pollster polled
# | 100 people. Of these 60 claimed they were going to vote for you. You'd like to estimate the true proportion of people who
# | will vote for you and you want to be 95% confident of your estimate. We need to find the limits that will contain the true
# | proportion of your supporters with 95% confidence, so we'll use the formula p' +/- 1/sqrt(n) to answer this question. First,
# | what value would you use for p', the sampled estimate?
# 
# 1: .10
# 2: .60
# 3: 1.00
# 4: .56
# 
# Selection: 2
# 
# |=====================================================                                                                   |  44%
# | What would you use for 1/sqrt(n)?
# 
# 1: 1/100
# 2: 1/10
# 3: 1/sqrt(60)
# 4: 1/sqrt(56)
# 
# Selection: 2
# 
# |======================================================                                                                  |  45%
# | The bounds of the interval then are what?
# 
# 1: I haven't a clue
# 2: .5 and .7
# 3: .46 and .66
# 4: .55 and .65
# 
# Selection: 2
# 
# |========================================================                                                                |  47%
# | How do you feel about the election?
#   
# 1: unsure
# 2: I'll pull out
# 3: confident
# 4: Perseverance, that's the answer
# 
# Selection: 3
# 
# |===========================================================                                                             |  49%
# | With the formula p'+/- qnorm(.975)*sqrt(p'(1-p')/100), use the p' and n values from above and the R construct p'+c(-1,1)...
# | to handle the plus/minus portion of the formula. You should see bounds similar to the ones you just estimated.
# 
# > 0.6 + c(-1,1)*qnorm(.975)*sqrt(0.6(0.4)/100)
# [1] 0.5039818 0.6960182
# 
# |=============================================================                                                           |  51%
# | As an alternative to this Wald interval, we can also use the R function binom.test with the parameters 60 and 100 and let all
# | the others default. This function "performs an exact test of a simple null hypothesis about the probability of success in a
# | Bernoulli experiment." (This means it guarantees the coverages, uses a lot of computation and doesn't rely on the CLT.) This
# | function returns a lot of information but all we want now are the values of the confidence interval that it returns. Use the
# | R construct x$conf.int to find these now.
# 
# > binom.test(60,100)$conf.int
# [1] 0.4972092 0.6967052
# attr(,"conf.level")
# [1] 0.95
# 
# |=================================================================================                                       |  67%
# | Try running ACCompar now with an input of 20.
# 
# > ACCompar(20)
# [1] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
# [1] 10
# 
# |=====================================================================================                                   |  71%
# | In this example what would you use as the estimated mean x/t?
#   
# 1: 94.32/5
# 2: I haven't a clue
# 3: 5/94.32
# 
# Selection: 3
# 
# |=======================================================================================                                 |  73%
# | Set a variable lamb now with this value.
# 
# > lamb<-5/94.32
# 
# |=========================================================================================                               |  74%
# | So lamb is our estimated mean and lamb/t is our estimated variance. The formula we've used to calculate a 95% confidence
# | interval is est mean + c(-1,1)*qnorm(.975)*sqrt(est var). Use this formula now making the appropriate substitutions.
# 
# > lamb + c(-1,1)*qnorm(.975)*sqrt(lamb/94.32)
# [1] 0.006545667 0.099476386
# 
# | Your dedication is inspiring!
#   
# |==========================================================================================                              |  75%
# | As a check we can use R's function poisson.test with the arguments 5 and 94.32 to check this result. This is an exact test so
# | it guarantees coverage. As with the binomial exact test, we only need to look at the conf portion of the result using the
# | x$conf construct. Do this now.
# 
# > poisson.test(5,94.32)$conf
# [1] 0.01721254 0.12371005
# attr(,"conf.level")
# [1] 0.95
# 
# |===================================================================================================                     |  82%
# | What tells us that averages of iid samples converge to the population means that they are estimating?
# 
# 1: the law of small numbers
# 2: the CLT
# 3: the law of large numbers
# 4: the BLT
# 
# Selection: 3
# 
# |====================================================================================================                    |  84%
# | What tells us that averages are approximately normal for large enough sample sizes
# 
# 1: the law of large numbers
# 2: the BLT
# 3: the CLT
# 4: the law of small numbers
# 
# Selection: 3
# 
# |======================================================================================================                  |  85%
# | The Central Limit Theorem (CLT) tells us that averages have what kind of distributions?
# 
# 1: normal
# 2: binomial
# 3: abnormal
# 4: Poisson
# 
# Selection: 1
# 
# |========================================================================================================                |  86%
# | The Central Limit Theorem (CLT) tells us that averages have normal distributions centered at what?
# 
# 1: the population mean
# 2: the population variance
# 3: the standard error
# 
# Selection: 1
# 
# |=========================================================================================================               |  88%
# | The Central Limit Theorem (CLT) tells us that averages have normal distributions with standard deviations equal to what?
# 
# 1: the standard error
# 2: the population mean
# 3: the population variance
# 
# Selection: 1
# 
# |===========================================================================================================             |  89%
# | True or False - The Central Limit Theorem (CLT) tells us that averages always have normal distributions no matter how big the
# | sample size
# 
# 1: True
# 2: False
# 
# Selection: 2
# 
# |============================================================================================================            |  90%
# | To calculate a confidence interval for a mean you take the sample mean and add and subtract the relevant normal quantile
# | times the what?
# 
# 1: standard error
# 2: mean
# 3: variance
# 4: variance/n
# 
# Selection: 1
# 
# |==============================================================================================================          |  92%
# | For a 95% confidence interval approximately how many standard errors would you add and subtract from the sample mean?
# 
# 1: 6
# 2: 2
# 3: 4
# 4: 8
# 
# Selection: 2
# 
# |================================================================================================================        |  93%
# | If you wanted increased coverage what would you do to your confidence interval?
# 
# 1: keep it the same
# 2: decrease it
# 3: increase it
# 
# Selection: 3
# 
# |=================================================================================================================       |  95%
# | If you had less variability in your data would your confidence interval get bigger or smaller?
# 
# 1: smaller
# 2: bigger
# 
# Selection: 1
# 
# |===================================================================================================================     |  96%
# | If you had larger sample size would your confidence interval get bigger or smaller?
# 
# 1: bigger
# 2: smaller
# 
# Selection: 2
# 
# |=====================================================================================================================   |  97%
# | A quick fix for small sample size binomial calculations is what?
# 
# 1: add 2 successes and 2 failures
# 2: add 2 successes and 4 failures
# 3: changing data seem dishonest
# 4: add 2 successes and subtract 2 failures
# 
# Selection: 1
# 
