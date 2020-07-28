# | Consider the random variable X representing a roll of a fair dice. By 'fair' we mean all the sides are equally likely to appear. What is the
# | expected value of X?
#   
# > (1+2+3+4+5+6)/6
# [1] 3.5
# 
# | Using the function expect_dice with dice_high as its argument, calculate the expected value of a roll of dice_high.
# 
# > expect_dice(dice_high)
# [1] 4.333333
# 
# | See how the expected value of dice_high is higher than that of the fair dice. Now calculate the expected value of a roll of dice_low.
# 
# > expect_dice(dice_low)
# [1] 2.666667
# 
# | Suppose you were rolling our two loaded dice, dice_high and dice_low. You can use this linearity property of expectation to compute the expected
# | value of their average. Let X_hi and X_lo represent the respective outcomes of the dice roll. The expected value of the average is E((X_hi +
# | X_lo)/2) or .5 *( E(X_hi)+E(X_lo) ). Compute this now. Remember we stored the expected values in edh and edl.
# 
# > .5*(edh+edl)
# [1] 3.5
# 
# | Knowing that the expected value is the area under the triangle, t*f(t), what is the expected value of the random
# | variable with this PDF?
#   
# 1: .25
# 2: .5
# 3: 2.0
# 4: 1.0
# 
# Selection: 2
# 
# | To find the expected value of this random variable you need to integrate the function t*f(t). Here f(t)=t/2, the
# | diagonal line. (You might recall this from the last probability lesson.) The function you're integrating over is
# | therefore t^2/2. We've defined a function myfunc for you representing this. You can use the R function 'integrate'
# | with parameters myfunc, 0 (the lower bound), and 2 (the upper bound) to find the expected value. Do this now.
# 
# > integrate(myfunc,0,2)
# 1.333333 with absolute error < 1.5e-14
# 
# | We've defined a small population of 5 numbers for you, spop. Look at it now.
# 
# > spop
# [1]  1  4  7 10 13
# 
# | The R function mean will give us the mean of spop. Do this now.
# 
# > mean(spop)
# [1] 7
# 
# | Each of these 10 samples will have a mean, right? We can use the R function apply to calculate the mean of each row
# | of the matrix allsam. We simply call apply with the arguments allsam, 1, and mean. The second argument, 1, tells
# | 'apply' to apply the third argument 'mean' to the rows of the matrix. Try this now.
# 
# > apply(allsam,1,mean)
#  [1]  2.5  4.0  5.5  7.0  5.5  7.0  8.5  8.5 10.0 11.5
#  
# | ... if we take the expected value of these sample means we'll see something amazing. We've stored the sample means in
# | the array smeans for you. Use the R function mean on the array smeans now.
# 
# > mean(smeans)
# [1] 7
# 
# | Expected values are properties of what?
# 
# 1: variances
# 2: fulcrums
# 3: distributions
# 4: demanding parents
# 
# Selection: 3
# 
# | A population mean is a center of mass of what?
# 
# 1: a distribution
# 2: a population
# 3: a sample
# 4: a family
# 
# Selection: 2
# 
# | A sample mean is a center of mass of what?
# 
# 1: a distribution
# 2: observed data
# 3: a family
# 4: a population
# 
# Selection: 2
# 
# | True or False? A population mean estimates a sample mean.
# 
# 1: True
# 2: False
# 
# Selection: 2
# 
# | True or False? A sample mean is unbiased.
# 
# 1: False
# 2: True
# 
# Selection: 2
# 
# | True or False? The more data that goes into the sample mean, the more concentrated its density / mass function is
# | around the population mean.
# 
# 1: True
# 2: False
# 
# Selection: 1
# 
# | We'll do another simulation to test the theory. First, assume you're taking averages of 10 Poisson(4) samples and
# | compute the standard error of these means. Use the formula you just chose.
# 
# > 2/sqrt(10)
# [1] 0.6324555
# 
# | Now check it as we did before. Use the expression sd(apply(matrix(rpois(10000,4),1000),1,mean)).
# 
# > sd(apply(matrix(rpois(10000,4),1000),1,mean))
# [1] 0.623831
# 
# Poisson(4) are distributions with variance 4; what standard error would means of
# | random samples of n Poisson(4) have?
#   
# 1: 2/sqrt(n)
# 2: 1/sqrt(2*n)
# 3: 2*sqrt(n)
# 4: I haven't a clue
# 
# Selection: 1
# 
# | We'll do another simulation to test the theory. First, assume you're taking averages of 10 Poisson(4) samples and
# | compute the standard error of these means. Use the formula you just chose.
# 
# > 2/sqrt(10)
# [1] 0.6324555
# 
# | Now check it as we did before. Use the expression sd(apply(matrix(rpois(10000,4),1000),1,mean)).
# 
# > sd(apply(matrix(rpois(10000,4),1000),1,mean))
# [1] 0.623831
# 
# | Like magic, right? One final test. Fair coin flips have variance 0.25; means of random samples of n coin flips
# | have what standard error?
#   
#   1: I haven't a clue
# 2: 2*sqrt(n)
# 3: 1/sqrt(2*n)
# 4: 2/sqrt(n)
# 5: 1/(2*sqrt(n))
# 
# Selection: 5
# 
# | You know the drill. Assume you're taking averages of 10 coin flips and compute the standard error of these means
# | with the theoretical formula you just picked.
# 
# > 1/(2*sqrt(10))
# [1] 0.1581139
# 
# | Now check it as we did before. Use the expression sd(apply(matrix(sample(0:1,10000,TRUE),1000),1,mean)).
# 
# > sd(apply(matrix(sample(0:1,10000,TRUE),1000),1,mean))
# [1] 0.1571849
# 
# | Suppose you had a measurement that was 4 standard deviations from the distribution's mean. What would be the
# | upper bound of the probability of this happening using Chebyshev's inequality?
# 
# 1: 25%
# 2: 96%
# 3: 11%
# 4: 6%
# 5: 0%
# 
# Selection: 4
# 
# | Now to review. The sample variance estimates what?
# 
# 1: sample standard deviation
# 2: sample mean
# 3: population variance
# 4: population
# 
# Selection: 3
# 
# | The distribution of the sample variance is centered at what?
# 
# 1: population
# 2: population variance
# 3: sample mean
# 4: sample standard deviation
# 
# Selection: 2
# 
# | True or False - The sample variance gets more concentrated around the population variance with larger sample
# | sizes
# 
# 1: True
# 2: False
# 
# Selection: 1
# 
# | The variance of the sample mean is the population variance divided by ?
# 
# 1: n
# 2: n^2
# 3: I haven't a clue
# 4: sqrt(n)
# 
# Selection: 1
# 
# | The standard error of the sample mean is the sample standard deviation s divided by ?
#   
# 1: n^2
# 2: I haven't a clue
# 3: sqrt(n)
# 4: n
# 
# Selection: 3
# 
# 
