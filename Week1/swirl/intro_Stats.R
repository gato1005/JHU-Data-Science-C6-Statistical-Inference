# install swirl if not available
install.packages("swirl")

# version should be > 2.2.21
packageVersion("swirl")

# load the package
library(swirl)

# download material for this course
install_from_swirl("Statistical Inference")

# start swirl
swirl()


# | In this lesson, we'll briefly introduce basics of statistical inference, the process of drawing conclusions "about a population using noisy
# | statistical data where uncertainty must be accounted for". In other words, statistical inference lets scientists formulate conclusions from data
# | and quantify the uncertainty arising from using incomplete data.

# | Which of the following is NOT an example of statistical inference?
#   
# 1: Polling before an election to predict its outcome
# 2: Recording the results of a statistics exam
# 3: Testing the efficacy of a new drug
# 4: Constructing a medical image from fMRI data
# 
# Selection: 2
# 
# | That's the answer I was looking for.
# 
# | So statistical inference involves formulating conclusions using data AND quantifying the uncertainty associated with those conclusions. The
# | uncertainty could arise from incomplete or bad data.

# | Which of the following would NOT be a source of bad data?
#   
# 1: Selection bias
# 2: A randomly selected sample of population
# 3: Small sample size
# 4: A poorly designed study
# 
# Selection: 2

# | So with statistical inference we use data to draw general conclusions about a population. Which of the following would a scientist using
# | statistical inference techniques consider a problem?
#   
# 1: Our study has no bias and is well-designed
# 2: Contaminated data
# 3: Our data sample is representative of the population
# 
# Selection: 2

# | Which of the following is NOT an example of statistical inference in action?
#   
# 1: Estimating the proportion of people who will vote for a candidate
# 2: Testing the effectiveness of a medical treatment
# 3: Counting sheep
# 4: Determining a causative mechanism underlying a disease
# 
# Selection: 3

