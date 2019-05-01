# Logistic Regression Model

How to automate the choice of the best Ө giving a training set. For example:

<img src="/_Images/LogisticRegressionModel/lm1.png" alt="LM1" width="450"/>

### Cost function

<img src="/_Images/LogisticRegressionModel/lm2.png" alt="LM2" width="450"/>

Since the Sigmoid function is non linear, it will produce non convex cost functions.

<img src="/_Images/LogisticRegressionModel/lm3.png" alt="LM3" width="450"/>

<img src="/_Images/LogisticRegressionModel/lm4.png" alt="LM4" width="450"/>

So to be able to apply gradient descent and get a convex cost function, we are going to use the following cost function

<img src="/_Images/LogisticRegressionModel/lm5.png" alt="LM5" width="450"/>

Which graphically looks like this:

<img src="/_Images/LogisticRegressionModel/lm6.png" alt="LM6" width="450"/>

This cost function has got some desirable properties. It penalize a lot false positives or false negative:

<img src="/_Images/LogisticRegressionModel/lm7.png" alt="LM7" width="450"/>

<img src="/_Images/LogisticRegressionModel/lm8.png" alt="LM8" width="450"/>

### Simplied Cost Function and Gradient Descent

<img src="/_Images/LogisticRegressionModel/lm9.png" alt="LM9" width="450"/>

We can simply the Cost function in one single line

<img src="/_Images/LogisticRegressionModel/lm10.png" alt="LM10" width="450"/>

<img src="/_Images/LogisticRegressionModel/lm11.png" alt="LM11" width="450"/>

We want to fit the parameters to minimize J(Ө)

<img src="/_Images/LogisticRegressionModel/lm12.png" alt="LM12" width="150"/>

To make a prediction given new x

<img src="/_Images/LogisticRegressionModel/lm13.png" alt="LM13" width="450"/>

The way to minimize the cost function is by using Gradient Descent

<img src="/_Images/LogisticRegressionModel/lm14.png" alt="LM14" width="450"/>

The Algorithm looks identical to linear regression, however the definion of the hypothesis has changed

<img src="/_Images/LogisticRegressionModel/lm15.png" alt="LM15" width="300"/>

Suppose you are running Gradient Descent to fit logistic regression model with parameter Ө Є Rn+1.Which of the followings 
is a reasonable way to make sure the learning rate α is set properly and the gradient descent is running correctly

<img src="/_Images/LogisticRegressionModel/lm16.png" alt="LM16" width="900"/>
<img src="/_Images/LogisticRegressionModel/lm17.png" alt="LM17" width="450"/>

### Advance Optimization

<img src="/_Images/LogisticRegressionModel/lm18.png" alt="LM18" width="350"/>

The last three algorithms have a number of advantages.

<img src="/_Images/LogisticRegressionModel/lm19.png" alt="LM19" width="450"/>

About: No need to manually pick α. This is because they have an inner loop which automatically tries out different values for 
the learning rate and automatically picks up a good learning rate alpha. So they can even pick up a different learning rate for 
each iteration.

This algorithms often run much faster than gradient descent, so they are mostly used instead of gradient descent when you have 
a large marchine learning problem.

<img src="/_Images/LogisticRegressionModel/lm20.png" alt="LM20" width="450"/>

We can see that to minimize the cost function Ө1 and Ө2 should have a value of 5. But if we would like to calculate it using 
gradient descent. We should write in octave something like:

<img src="/_Images/LogisticRegressionModel/lm21.png" alt="LM21" width="450"/>

Then you can call advance optimization functions:

<img src="/_Images/LogisticRegressionModel/lm22.png" alt="LM22" width="450"/>

fminunc: Function minimization unconstrain. It will return an exitflag = 1 in case the algorithm converge.

<img src="/_Images/LogisticRegressionModel/lm23.png" alt="LM23" width="900"/>
