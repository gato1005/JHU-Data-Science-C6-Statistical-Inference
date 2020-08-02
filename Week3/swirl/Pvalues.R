# |==========                                                                                                    |  10%
# | What do you think the first step is?
#   
# 1: Compare the test statistic to a Z or t quantile
# 2: Create a null hypothesis
# 3: Consult your crystal ball
# 4: Calculate a test statistic from the data
# 
# Selection: 2

# |================                                                                                              |  14%
# | So you propose a null hypothesis. What's the next step?
# 
# 1: Calculate a test statistic from the given data
# 2: Reject H_0
# 3: Compare the test statistic to a Z or t score
# 4: Go back to the crystal ball
# 
# Selection: 1

# |==================                                                                                            |  17%
# | Now you have a proposed statistic (from your reasoned hypothesis) and a test statistic computed from your gathered
# | data. What's the final step?
# 
# 1: Compare the test statistic to the hypothetical distribution
# 2: Go back to the crystal ball
# 3: Reject H_0
# 4: Calculate a test statistic from the given data
# 
# Selection: 1
# 
# |=============================                                                                                 |  26%
# | R can help us! We can use the R function pt, the distribution function of the t distribution. This function returns
# | one of two probabilities, EITHER the probability of X > q (if lower.tail is FALSE) OR X <= q (if lower.tail is TRUE),
# | where q is a quantile argument. Here we'll set q=2.5, df=15, lower.tail=FALSE since H_a says that mu>mu_0. We have to
# | gauge the extremity in the direction of H_a. Run this now.
# 
pt(q=2.5, df=15, lower.tail=FALSE)
# [1] 0.0122529

# |==================================                                                                            |  31%
# | What should we do?
#   
#   1: Fail to reject H_0
# 2: Consult the crystal ball
# 3: Reject H_0
# 
# Selection: 3
# 
# |==========================================                                                                    |  38%
# | Why did we reject? Find the quantile associated with this test, that's the place to start. Use qnorm at the 95th
# | percentile.
# 
qnorm(0.95)
# [1] 1.644854

# |===============================================                                                               |  43%
# | Now try the 99th percentile to see if we would still reject H_0.
# 
qnorm(0.99)
# [1] 2.326348

# |==================================================                                                            |  45%
# | Would we reject H_0 if alpha were .01?
#   
# 1: Yes
# 2: No
# 
# Selection: 2

# |=======================================================                                                       |  50%
# | So our data (the test statistic) tells us what the attained significance level is. We use the R function pnorm to
# | give us this number. With the default values, specifically lower.tail=TRUE, this gives us the probability that a
# | random draw from the distribution is less than or equal to the argument. Try it now with the test statistic value 2.
# | Use the default values for all the other arguments.
# 
pnorm(2)
# [1] 0.9772499

# |============================================================                                                  |  55%
# | Now let's find the p value associated with this example. As before, we'll use pnorm. But this time we'll set the
# | lower.tail argument to FALSE. This gives us the probability of X exceeding the test statistic, that is, the area
# | under the curve to the right of test statistic. Try it now with the test statistic value 2.
# 
pnorm(2,lower.tail = FALSE)
# [1] 0.02275013

# |============================================================================                                  |  69%
# | The second last value shows us that the probability of having at least 7 girls (out of 8 children) is .035, assuming
# | that genders are equally likely (p=.5).  You can verify this with the R function pbinom, with the arguments 6,
# | size=8, prob=.5, and lower.tail=FALSE. (This last yields the probability that X>6.) Try this now.
# 
pbinom(6,size = 8,prob = .5,lower.tail = FALSE)
# [1] 0.03515625

# |===============================================================================                               |  71%
# | We see a probability of about .03. Should we reject or fail to reject H_0 if alpha = .05?
#   
# 1: Reject
# 2: Fail to reject
# 
# Selection: 1

# |=================================================================================                             |  74%
# | We see a probability of about .03. Should we reject or fail to reject H_0 if alpha = .04?
#   
#   1: Fail to reject
# 2: Reject
# 
# Selection: 2

# |====================================================================================                          |  76%
# | We see a probability of about .03. Should we reject or fail to reject H_0 if alpha = .03?
#   
# 1: Fail to reject
# 2: Reject
# 
# Selection: 1

# |======================================================================================                        |  79%
# | For the other side of the test we want the probability that X<=7, again out of a sample of size 8 with probability
# | .5. Again, we use pbinom, this time with an argument of 7 and lower.tail=TRUE. Try this now.
# 
pbinom(7,size = 8,prob = .5,lower.tail = TRUE)
# [1] 0.9960938

# |====================================================================================================          |  90%
# | As before, R has the handy function ppois, which returns probabilities for Poisson distributions. We want the
# | probability of seeing at least 9 infections using a lambda value of 5 and lower.tail=FALSE. As when we used pbinom we
# | have to use 9 as the argument since we're looking for a probability of a value greater than the argument. Try this
# | now.
# 
ppois(q=9,lambda=5,lower.tail = FALSE)
# [1] 0.03182806

# |======================================================================================================        |  93%
# | We see a probability of about .03. Should we reject or fail to reject H_0? (Remember those helpful pictures with
# | shaded areas. Smaller areas mean smaller probabilities and vice versa.)
# 
# 1: Fail to reject
# 2: Reject
# 
# Selection: 2