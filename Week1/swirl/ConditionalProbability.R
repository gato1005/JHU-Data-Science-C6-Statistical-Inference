| If you were given a fair die and asked what the probability of rolling a 3 is, what would you reply?
  
1: 1/6
2: 1/4
3: 1
4: 1/3
5: 1/2

Selection: 1

| Suppose the person who gave you the dice rolled it behind your back and told you the roll was odd. Now what is the probability that the roll was a
| 3?
  
1: 1/4
2: 1/3
3: 1/6
4: 1/2
5: 1

Selection: 2

| Back to our dice example. Which of the following expressions represents P(A&B), where A is the event of rolling a 3 and B is the event of the roll
| being odd?
  
1: 1
2: 1/2
3: 1/3
4: 1/4
5: 1/6

Selection: 5

| Continuing with the same dice example. Which of the following expressions represents P(A&B)/P(B), where A is the event of rolling a 3 and B is the
| event of the roll being odd?
  
1: 1/6
2: (1/6)/(1/2)
3: (1/3)/(1/2)
4: (1/2)/(1/6)

Selection: 2

| Let 'D' be the event that the patient has HIV, and let '+' indicate a positive test result and '-' a negative. What information do we know? Recall
| that we know the accuracy rates of the HIV test.

1: P(+|~D) and P(-|D)
2: P(+|D) and P(-|D)
3: P(+|~D) and P(-|~D)
4: P(+|D) and P(-|~D)

Selection: 4

| Suppose a person gets a positive test result and comes from a population with a HIV prevalence rate of .001. We'd like to know the probability
| that he really has HIV. Which of the following represents this?

1: P(~D|+)
2: P(+|D)
3: P(D|-)
4: P(D|+)

Selection: 4

| Disease prevalence is .001. Test sensitivity (+ result with disease) is 99.7% and specificity (- result without disease) is 98.5%. First compute
| the numerator, P(+|D)*P(D). (This is also part of the denominator.)

> .997*.001
[1] 0.000997

| Now solve for the remainder of the denominator, P(+|~D)*P(~D).

> (1-.985)*(1-.001)
[1] 0.014985

| Now put the pieces together to compute the probability that the patient has the disease given his positive test result, P(D|+). Plug your last two
| answers into the formula P(+|D) * P(D) / ( P(+|D) * P(D) + P(+|~D) * P(~D) ) to compute P(D|+).

> .997*.001/(.997*.001 + 0.014985)
[1] 0.06238268

| The diagnostic likelihood ratio of a positive test, DLR_+, is the ratio of the two + conditional probabilities, one given the presence of disease
| and the other given the absence. Specifically, DLR_+ = P(+|D) / P(+|~D). Similarly, the DLR_- is defined as a ratio. Which of the following do you
| think represents the DLR_-?

1: I haven't a clue.
2: P(-|D) / P(+|~D)
3: P(+|~D) / P(-|D)
4: P(-|D) / P(-|~D)

Selection: 4

| Recall that P(+|D) and P(-|~D), (test sensitivity and specificity respectively) are accuracy rates of a diagnostic test for the two possible
| results. They should be close to 1 because no one would take an inaccurate test, right? Since DLR_+ = P(+|D) / P(+|~D) we recognize the numerator
| as test sensitivity and the denominator as the complement of test specificity.

| Since the numerator is close to 1 and the denominator is close to 0 do you expect DLR_+ to be large or small?
  
1: Large
2: Small
3: I haven't a clue.

Selection: 1

| Now recall that DLR_- = P(-|D) / P(-|~D). Here the numerator is the complement of sensitivity and the denominator is specificity. From the
| arithmetic and what you know about accuracy tests, do you expect DLR_- to be large or small?

1: I haven't a clue.
2: Large
3: Small

Selection: 3

| The left side of the equation represents the post-test odds of disease given a positive test result. The equation says that the post-test odds of
| disease equals the pre-test odds of disease (that is, P(D)/P(~D) ) times

1: I haven't a clue.
2: the DLR_-
3: the DLR_+

Selection: 3

| The equation P(D|-) / P(~D|-) = P(-|D) / P(-|~D) * P(D)/P(~D) says what about the post-test odds of disease relative to the pre-test odds of
| disease given negative test results?

1: I haven't a clue.
2: post-test odds are greater than pre-test odds
3: post-test odds are less than pre-test odds

Selection: 3

| We've seen examples of independence in our previous probability lessons. Let's review a little. What's the probability of rolling a '6' twice in a
| row using a fair die?

1: 1/2
2: 1/6
3: 1/36
4: 2/6

Selection: 3

| You're given a fair die and asked to roll it twice. What's the probability that the second roll of the die matches the first?

1: 1/2
2: 1/6
3: 2/6
4: 1/36

Selection: 2

| If the chance of developing a disease with a genetic or environmental component is p, is the chance of both you and your sibling developing that
| disease p*p?

1: Yes
2: No

Selection: 2




