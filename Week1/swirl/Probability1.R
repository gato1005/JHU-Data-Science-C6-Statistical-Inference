# | The first step in understanding probability is to see if you understand what outcomes of an experiment are possible. For instance, if you were
# | rolling a single, fair die once, how many outcomes are possible?
#   
# 1: 4
# 2: 1
# 3: 6
# 4: Too many
# 
# Selection: 3
# 
# | The probability of a particular outcome of an experiment is the ratio of the number of ways that outcome can occur to all possible outcomes of the
# | experiment. Since there are 6 possible outcomes to the experiment of rolling a die, and we assume the die is fair, each outcome is equally likely.
# | So what is the probability of rolling a 2?
#   
# 1: 2/6
# 2: 1/3
# 3: 0
# 4: 1/6
# 
# Selection: 4
# 
# | What is the probability of rolling an even number?
#   
# 1: 1/2
# 2: 0
# 3: 1/3
# 4: 1
# 
# Selection: 1
# 
# 
# | Suppose you rolled the fair die twice in succession. What is the probability of rolling two 4's?
# 
# 1: 2/6
# 2: 1/36
# 3: 1/6
# 4: 0
# 
# Selection: 2
# 
# | If A and B are two independent events then the probability of them both occurring is the product of the probabilities. P(A&B) = P(A) * P(B)
# 
# | Suppose you rolled the fair die twice. What is the probability of rolling the same number two times in a row?
# 
# 1: 1/36
# 2: 0
# 3: 2/6
# 4: 1/6
# 
# Selection: 4
# 
# | Now consider the experiment of rolling 2 dice, one red and one green. Assume the dice are fair and not loaded. How many distinct outcomes are
# | possible?
# 
# 1: 11
# 2: 1
# 3: 12
# 4: 36
# 
# Selection: 4
# 
# | Rolling these two dice, what's the probability of rolling a 10?
# 
# 1: 0
# 2: 2/36
# 3: 1/6
# 4: 3/36
# 
# Selection: 4
# 
# | What sum is the most likely when rolling these two dice?
#   
# 1: 12
# 2: 7
# 3: 9
# 4: 1
# 5: 2
# 
# Selection: 2
# 
# | Back to rolling two dice. Which expression represents the probability of rolling an even number or a number greater than 8?
#   
# 1: (18+10-4)/36
# 2: (18+4-2)/36
# 3: (18+10-2)/36
# 4: (18+10)/36
# 
# Selection: 1
# 
# | Which of the following expressions represents the probability of rolling a number greater than 10?
#   
# 1: (2+1)/36
# 2: (3+1-1)/36
# 3: (3+1)/36
# 4: (1+1)/36
# 
# Selection: 1
# 
# | Use the answer to the previous question and the fact that the sum of all outcomes must sum to 1 to determine the probability of rolling a number
# | less than or equal to 10.
# 
# > 33/36
# [1] 0.9166667
# 
# | When drawing a single card, how many outcomes are possible?
#   
# > 52
# [1] 52
# 
# | What is the probability of drawing a jack?
#   
# > 4/52
# [1] 0.07692308
# 
# | If you're dealt a hand of 5 cards, what is the probability of getting all 5 of the same value?
# 
# > 0
# [1] 0
# 
# | What is the probability of drawing a face card?
# 
# > 12/52
# [1] 0.2307692
# 
# | Suppose you draw a face card and don't replace it in the deck. What is the probability that when you draw a second card it also will be a face
# | card?
#   
# 1: 11/51
# 2: 11/52
# 3: 0
# 4: 12/51
# 
# Selection: 1
# 
# | Suppose you draw a face card and don't replace it in the deck. What is the probability that when you draw a second card it also will be a face
# | card of the same suit?
# 
# > 2/51
# [1] 0.03921569
# 
