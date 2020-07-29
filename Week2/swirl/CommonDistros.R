# |==                                                                                                        |   2%
# | Given the title of this lesson, what do you think it will cover?
#   
# 1: Common Distributions
# 2: Rare Distributions
# 3: Common Bistros
# 4: I haven't a clue
# 
# Selection: 1
# 
# |=======                                                                                                   |   7%
# | It might surprise you to learn that you've probably had experience with Bernoulli trials. Which of the following
# | would be a Bernoulli trial?
#   
# 1: Spinning a roulette wheel
# 2: Drawing a card from a deck
# 3: Flipping a coin
# 4: Tossing a die
# 
# Selection: 3
# 
# |==========                                                                                                |   9%
# | For simplicity, we usually say that Bernoulli random variables take only the values 1 and 0. Suppose we also
# | specify that the probability that the Bernoulli outcome of 1 is p. Which of the following represents the
# | probability of a 0 outcome?
#   
# 1: p(1-p)
# 2: p^2
# 3: p
# 4: 1-p
# 
# Selection: 4
# 
# |============                                                                                              |  11%
# | If the probability of a 1 is p and the probability of a 0 is 1-p which of the following represents the PMF of a
# | Bernoulli distribution? Recall that the PMF is the function representing the probability that X=x.
# 
# 1: p^x * (1-p)^(1-x)
# 2: x*(1-x)
# 3: p^(1-x) *(1-p)*(1-x)
# 4: p*(1-p)
# 
# Selection: 1
# 
# |==============                                                                                            |  14%
# | Recall the definition of the expectation of a random variable. Suppose we have a Bernoulli random variable and,
# | as before, the probability it equals 1 (a success) is p and probability it equals 0 (a failure) is 1-p. What is
# | its mean?
#   
# 1: p
# 2: 1-p
# 3: p(1-p)
# 4: p^2
# 
# Selection: 1
# 
# |=================                                                                                         |  16%
# | Given the same Bernoulli random variable above, which of the following represents E(X^2)
# 
# 1: p(1-p)
# 2: p^2
# 3: p
# 4: (1-p)^2
# 5: 1-p
# 
# Selection: 3
# 
# | Use the answers of the last two questions to find the variance of the Bernoulli random variable. Recall Var =
# | E(X^2)-(E(X))^2
# 
# 1: p^2*(1-p)^2
# 2: p(1-p)
# 3: p^2-p
# 4: p(p-1)
# 
# Selection: 2
# 
# |========================                                                                                  |  23%
# | The PMF of a binomial random variable X is the function representing the probability that X=x. In other words,
# | that there are x successes out of n independent trials. Which of the following represents the PMF of a binomial
# | distribution? Here x, the number of successes, goes from 0 to n, the number of trials, and choose(n,x) represents
# | the binomial coefficient 'n choose x' which is the number of ways x successes out of n trials can occur
# | regardless of order.
# 
# 1: choose(n,x) * p^(n-x) * (1-p)^x
# 2: choose(n,x) * p^x * (1-p)^(n-x)
# 3: choose(n,x) * p*x*(1-p)*(1-x)
# 4: p^x
# 
# Selection: 2
# 
# |==========================                                                                                |  25%
# | Suppose we were going to flip a biased coin 5 times. The probability of tossing a head is .8 and a tail .2. What
# | is the probability that you'll toss at least 3 heads.
# 
# > (choose(5,3) * (0.8)^3 * (0.2)^2) + (choose(5,4) * (0.8)^4 * (0.2)^1) + (choose(5,5) * (0.8)^5 * (0.2)^0)
# [1] 0.94208
# 
# |=============================                                                                             |  27%
# | Now you can verify your answer with the R function pbinom. The quantile is 2, the size is 5, the prob is .8 and
# | the lower.tail is FALSE. Try it now.
# 
# > pbinom(2,size=5,prob=.8,lower.tail=FALSE)
# [1] 0.94208
# 
# |=========================================                                                                 |  39%
# | The R function qnorm(prob) returns the value of x (quantile) for which the area under the standard normal
# | distribution to the left of x equals the parameter prob. (Recall that the entire area under the curve is 1.) Use
# | qnorm now to find the 10th percentile of the standard normal. Remember the argument prob must be between 0 and 1.
# | You don't have to specify any of the other parameters since the default is the standard normal.
# 
# warning messages from top-level task callback 'mini'
# Warning messages:
# 1: Use of `dat$y` is discouraged. Use `y` instead. 
# 2: Use of `dat$y` is discouraged. Use `y` instead. 
# 3: Use of `dat$y` is discouraged. Use `y` instead. 
# > qnorm(0.1)
# [1] -1.281552
# 
# |==============================================                                                            |  43%
# | Which of the following would you expect to be the 1st percentile?
#   
# 1: 0
# 2: -2.33
# 3: 2.33
# 4: -1.28
# 5: -1.0
# 
# Selection: 2
# 
# |================================================                                                          |  45%
# | By looking at the picture can you say what the 50th percentile is?
#   
# warning messages from top-level task callback 'mini'
# Warning messages:
# 1: Use of `dat$y` is discouraged. Use `y` instead. 
# 2: Use of `dat$y` is discouraged. Use `y` instead. 
# 3: Use of `dat$y` is discouraged. Use `y` instead. 
# > 0
# [1] 0
# 
# |===================================================                                                       |  48%
# | We can use the symmetry of the bell curve to determine other quantiles. Given that 2.5% of the area under the
# | curve falls to the left of x=-1.96, what is the 97.5 percentile for the standard normal?
#   
# 1: 1.96
# 2: 2.33
# 3: -1.28
# 4: 2
# 
# Selection: 1
# 
# |===============================================================                                           |  59%
# | Again, we can use R's qnorm function and simply specify the mean and standard deviation (the square root of the
# | variance). Do this now. Find the 97.5th percentile of a normal distribution with mean 3 and standard deviation 2.
# 
# > qnorm(p = 0.975, mean = 3, sd = 2)
# [1] 6.919928
# 
# |=================================================================                                         |  61%
# | Let's check it using the formula above, X = mu + sigma*Z. Here we'll use the 97.5th percentile for the standard
# | normal as the value Z in the formula. Recall that we previously calculated this to be 1.96. Let's multiply this
# | by the standard deviation of the given normal distribution (2) and add in its mean (3) to see if we get a result
# | close to the one qnorm gave us.
# 
# > 3 + 2*1.96
# [1] 6.92
# 
# |===================================================================                                       |  64%
# | Suppose you have a normal distribution with mean 1020 and standard deviation of 50 and you want to compute the
# | probability that the associated random variable X > 1200. The easiest way to do this is to use R's pnorm function
# | in which you specify the quantile (1200), the mean (1020) and standard deviation (50). You also must specify that
# | the lower.tail is FALSE since we're asking for a probability that the random variable is greater than our
# | quantile. Do this now.
# 
# > pnorm(q=1200,mean = 1020,sd=50,lower.tail = FALSE)
# [1] 0.0001591086
# 
# |======================================================================                                    |  66%
# | Alternatively, we could use the formula above to transform the given distribution to a standard normal. We
# | compute the number of standard deviations the specified number (1200) is from the mean with Z = (X -mu)/sigma.
# | This is our new quantile. We can then use the standard normal distribution and the default values of pnorm.
# | Remember to specify that lower.tail is FALSE.  Do this now.
# 
# > pnorm((1200-1020)/50,lower.tail=FALSE)
# [1] 0.0001591086
# 
# | For practice, using the same distribution, find the
# | 75% percentile. Use qnorm and specify the
# | probability (.75), the mean (1020) and standard
# | deviation (50). Since we want to include the left
# | part of the curve we can use the default
# | lower.tail=TRUE.
# 
# warning messages from top-level task callback 'mini'
# Warning messages:
# 1: Use of `dat$y` is discouraged. Use `y` instead. 
# 2: Use of `dat$y` is discouraged. Use `y` instead. 
# 3: Use of `dat$y` is discouraged. Use `y` instead. 
# 4: Use of `dat$y` is discouraged. Use `y` instead. 
# 5: Use of `dat$y` is discouraged. Use `y` instead. 
# 6: Use of `dat$y` is discouraged. Use `y` instead. 
# > qnorm(p = 0.75, mean = 1020, sd = 50, lower.tail = TRUE)
# [1] 1053.724
# 
# |===========================================================================                               |  70%
# | Note that R functions pnorm and qnorm are inverses.
# | What would you expect pnorm(qnorm(.53)) to return?
#   
# > pnorm(qnorm(.53))
# [1] 0.53
# 
# |=============================================================================                             |  73%
# | How about qnorm(pnorm(.53))?
#   
# > qnorm(pnorm(.53))
# [1] 0.53
# 
# |============================================================================================              |  86%
# | For example, suppose the number of people that show up at a bus stop is Poisson with a mean of 2.5 per hour, and we want to
# | know the probability that at most 3 people show up in a 4 hour period. We use the R function ppois which returns a probability
# | that the random variable is less than or equal to 3. We only need to specify the quantile (3) and the mean (2.5 * 4). We can
# | use the default parameters, lower.tail=TRUE and log.p=FALSE. Try it now.
# 
# > ppois(3,2.5*4)
# [1] 0.01033605
# 
# |================================================================================================          |  91%
# | To see this, use the R function pbinom to estimate the probability that you'll see at most 5 successes out of 1000 trials each
# | of which has probability .01. As before, you can use the default parameter values (lower.tail=TRUE and log.p=FALSE) and just
# | specify the quantile, size, and probability.
# 
# > pbinom(q = 5,size = 1000,prob = 0.01,)
# [1] 0.06613951
# 
# |===================================================================================================       |  93%
# | Now use the function ppois with quantile equal to 5 and lambda equal to n*p to see if you get a similar result.
# 
# > ppois(q = 5,lambda = 1000*0.01)
# [1] 0.06708596
# 
