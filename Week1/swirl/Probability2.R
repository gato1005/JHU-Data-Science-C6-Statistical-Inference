| If you had a ruler of infinite precision, would measuring the height of adults around the world be continuous or discrete?
  
1: discrete
2: continuous

Selection: 2

| Is the drawing of a hand of cards continuous or discrete?
  
1: discrete
2: continuous

Selection: 1

| For instance, suppose we have a coin which may or may not be fair. Let x=0 represent a 'heads' outcome and x=1 represent a 'tails' outcome of a
| coin toss. If p is the probability of 'heads' which of the following represents the PMF of the coin toss?  The variable x is either 0 (heads) or 1
| (tails).

1: (p^x)*(1-p)^(1-x)
2: (p^(1-x))*(1-p)^x

Selection: 2

| Consider this figure - a rectangle with height 1 and width 2 with a diagonal line drawn from the lower left corner (0,0) to the upper right (2,1).
| The area of the entire rectangle is 2 and elementary geometry tells us that the diagonal divides the rectangle into 2 equal areas.

...

| Could the diagonal line represent a probability density function for a random variable with a range of values between 0 and 2? Assume the lower
| side of the rectangle is the x axis.

1: No
2: Yes

Selection: 2

| Now consider the shaded portion of the triangle - a smaller triangle with a base of length 1.6 and height determined by the diagonal. We'll answer

| the question, "What proportion of the big triangle is shaded?"

...

| This proportion represents the probability that throwing a piece of cat kibble at the bigger triangle (below the diagonal) hits the blue portion.

...

| We have to compute the area of the blue triangle. (Since the area of the big triangle is 1, the area of the blue triangle is the proportion of the
| big triangle that is shaded.) We know the base, but what is its height?

1: .8
2: .5
3: .25
4: I can't tell

Selection: 1

| What is the area of the blue triangle?
  
> 0.5*(1.6)*0.8
[1] 0.64

| So, what is the probability that the kibble we throw at the bigger triangle will hit the blue portion?
  
> 0.64
[1] 0.64

| In the triangle example from above, which of the following expressions represents F(x), the CDF?

1: x*2x/2
2: x*x/4
3: x*x/2
4: x^2

Selection: 2

| Now use the R function integrate to integrate mypdf with the parameters lower equal to 0 and upper equal to 1.6. See if you get the same area
| (probability) you got before.

> integrate(mypdf,0,1.6)
0.64 with absolute error < 7.1e-15

| In our example, which of the following expressions represents the survival function?
  
1: 1-x*x/4
2: 1-x*x/2
3: 1-x^2
4: 1-x*2x/2

Selection: 1

| What percentile is the median?
  
1: 50-th
2: I can't tell
3: 25-th
4: 95-th

Selection: 1

| What is the 50th percentile of the CDF F(x)=(x^2)/4 from the example above?

> sqrt(2)
[1] 1.414214

| What does this mean with respect to the kibble we're tossing at the triangle?
  
1: All of it falls to the left of 1.41
2: All of it falls on the vertical line at 1.41
3: All of it falls to the right of 1.41
4: Half of it falls to the left of 1.41

Selection: 4
