# |========                                                                                                      |   7%
# | Which of the following outcomes would be correct?
#   
# 1: H_0 is FALSE and we accept it
# 2: H_0 is TRUE and we reject it
# 3: H_a is FALSE and we accept it
# 4: H_a is TRUE and we accept it
# 
# Selection: 4
# 
# |=========                                                                                                     |   8%
# | Which of the following outcomes would be an error?
#   
# 1: H_0 is TRUE and we reject it
# 2: H_a is FALSE and we reject it
# 3: H_a is TRUE and we accept it
# 4: H_0 is FALSE and we reject it
# 
# Selection: 1
# 
# |===============                                                                                               |  13%
# | Can we ever be sure that we're absolutely right?
# 
# 1: No
# 2: Always
# 3: Let's not get into philosophy now
# 4: Yes
# 
# Selection: 1
# 
# |===================                                                                                           |  17%
# | As in the slides, we'll consider an American court of law. The null hypothesis is that the defendant is innocent. If
# | an innocent man is convicted what type of error is this?
# 
# 1: Type I
# 2: Type II
# 
# Selection: 1
# 
# |====================                                                                                          |  18%
# | You might send the innocent man to jail by rejecting H_0. Suppose a guilty person is not convicted. What type of
# | error is this?
# 
# 1: Type I
# 2: Type II
# 
# Selection: 2
# 
# |========================                                                                                      |  22%
# | Recall that the standard error of a sample mean is given by the formula s/sqrt(n). Recall in our sleep example we had
# | a sample of 100 subjects, our mean RDI (X') was 32 events / hour with a standard deviation (s) of 10 events / hour.
# | What is the standard error of the mean in this example?

1
#[1]

# |============================                                                                                  |  25%
# | The shaded portion represents 5% of the area under this normal density curve. Which expression represents the
# | smallest value X for which the area is shaded, assuming this is standard normal?
#   
#   1: qt(.95,99)
# 2: dnorm(.95)
# 3: qnorm(.95)
# 4: rnorm(.95)
# 
# Selection: 3

# |================================                                                                              |  29%
# | Recall that our observed mean X' is 32 which is greater than C=31.645, so it falls in that 5% region. What do we do
# | with H_0?
# 
# 1: fail to reject it
# 2: reject it
# 3: give it another chance
# 
# Selection: 2

# |=====================================                                                                         |  34%
# | What is the Z score for this example? Recall the Z score is X'-mu divided by the standard error of the mean. In this
# | example X'=32, mu=30 and the standard error is 10/sqrt(100)=1.

2
# [1] 2

# |======================================                                                                        |  35%
# | The Z score is 2. The quantile is 1.645, so since 2>1.645. What do we do with H_0?
#   
# 1: give it another chance
# 2: fail to reject it
# 3: reject it
# 
# Selection: 3

# |==========================================                                                                    |  39%
# | This means that our test statistic has what mean and standard deviation?
#   
# 1: 1 and 1
# 2: 0 and 1
# 3: 1 and 0
# 4: 0 and 0
# 
# Selection: 2

# |================================================                                                              |  43%
# | We already covered the alternative hypothesis H_a that mu > mu_0 but let's review it. We would reject H_0 (and accept
# | H_a) when our sample mean is what?
# 
# 1: equal to mu_0
# 2: significantly greater than mu_0
# 3: significantly less than mu_0
# 4: huh?
# 
# Selection: 2

# |=================================================                                                             |  45%
# | This means that our test statistic (X'-mu) / (s/sqrt(n)) is what?
# 
# 1: at least 1.64 std dev less than mu_0
# 2: equal to mu_0
# 3: at least 1.64 std dev greater than mu_0
# 4: huh?
# 
# Selection: 3

# |============================================================                                                  |  54%
# | What do you think we call the region of values for which we reject H_0?
#   
# 1: the waggy tails
# 2: the shady tails
# 3: the rejection region
# 4: the region of interest
# 5: the abnormal region
# 
# Selection: 3

# |==============================================================                                                |  57%
# | Remember the CLT. For a distribution to be approximated by a normal what does the sample size have to be?
#   
# 1: abnormal
# 2: large
# 3: normal
# 4: small
# 
# Selection: 2

# |====================================================================                                          |  61%
# | What is the value of the test statistic (X'-mu)/(s/sqrt(n)) with sample size 16?

2/(10/4)
# [1] 0.8

# |=====================================================================                                         |  63%
# | How many degrees of freedom do we have with a sample size of 16?
  
15
# [1] 15

# |======================================================================                                        |  64%
# | Under H_0, the probability that the test statistic is larger than the 95th percentile of the t distribution is 5%.
# | Use the R function qt with the arguments .95 and the correct number of degrees of freedom to find the quantile.

qt(.95,df = 15)
# [1] 1.75305

# |=========================================================================                                     |  66%
# | This means what?
#   
# 1: we reject H_a
# 2: we reject H_0
# 3: we fail to reject H_0
# 
# Selection: 3

# |=============================================================================                                 |  70%
# | Do you expect qt(.975,15) to be bigger or smaller than qt(.95,15)?
#   
# 1: smaller
# 2: bigger
# 
# Selection: 2

# |==============================================================================                                |  71%
# | Since the test statistic was smaller than qt(.95,15) will it be bigger or smaller than qt(.975,15)?
#   
# 1: smaller
# 2: bigger
# 
# Selection: 1

# |================================================================================                              |  72%
# | Now for the left tail, qt(.025,15). What can we say about it?
#   
# 1: we don't know anything about it
# 2: it is bigger than qt(.975,15)
# 3: it is less than 0
# 4: it is greater than 0
# 
# Selection: 3

# |==================================================================================                            |  75%
# | So the test statistic .8 failed both sides of the test. That means we ?
#   
# 1: reject H_a
# 2: fail to reject H_0
# 3: huh?
# 4: reject H_0
# 
# Selection: 2

# |=====================================================================================                         |  77%
# | Look at the dimensions of fs now using the R function dim.

dim(fs)
# [1] 1078    2

# |======================================================================================                        |  78%
# | So fs has 1078 rows and 2 columns. The columns, fheight and sheight, contain the heights of a father and his son.
# | Obviously there are 1078 such pairs. We can run t.test on this data in one of two ways. First, we can run it with
# | just one argument, the difference between the heights, say fs$sheight-fs$fheight. OR we can run it with three
# | arguments, the two heights plus the paired argument set to TRUE. Run t.test now using whichever way you prefer.
# 
> t.test(fs$sheight-fs$fheight)
# 
# One Sample t-test
# 
# data:  fs$sheight - fs$fheight
# t = 11.789, df = 1077, p-value < 2.2e-16
# alternative hypothesis: true mean is not equal to 0
# 95 percent confidence interval:
#   0.8310296 1.1629160
# sample estimates:
#   mean of x 
# 0.9969728

# |=======================================================================================                       |  80%
# | The test statistic is what?
#   
# 1: 2.2e-16
# 2: 11.7885
# 3: 0.9969728
# 4: .8310296
# 
# Selection: 2

# |===========================================================================================                   |  83%
# | We can test this by multiplying the t statistic (11.7885) by the standard deviation of the data divided by the square
# | root of the sample size. Specifically run 11.7885 * sd(fs$sheight-fs$fheight)/sqrt(1078).
# 
11.7885 * sd(fs$sheight-fs$fheight)/sqrt(1078)
# [1] 0.9969686

# |=========================================================================================================     |  95%
# | So mybin[1]=1.0, meaning that with probability 1 there are at least 0 girls, and mybin[2]=.996 is the probability
# | that there's at least 1 girl out of the 8, and so forth. The probabilities decrease as i increases. What is the least
# | value of i for which the probability is less than .05?
# 
8
# [1] 8

# |==========================================================================================================    |  96%
# | So mybin[8]=.03 is the probability of having at least 7 girls out of a sample of size 8 under H_0 (if p actually is
#                                                                                                      | .5) which is what our sample has. This is less than .05 so our sample falls in this region of rejection. Does that
# | mean we accept or reject H_0, (that either gender is equally likely) based on this sample of size 8?
#   
# 1: accept H_0
# 2: reject H_0
# 
# Selection: 2

