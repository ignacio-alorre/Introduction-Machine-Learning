# Multivariate Linear Regression

For this case we try to predict our output based on several features(variables) instead of just one. Going back to the example of the 
houses we have:

<img src="/_Images/MultivariateLinearRegression/mv1.png" alt="MLR1" width="450"/>

<img src="/_Images/MultivariateLinearRegression/mv2.png" alt="MLR2" width="450"/>

So for the previous example x2(4) would be 40.

Now our hypothesis would be:

<img src="/_Images/MultivariateLinearRegression/mv3.png" alt="MLR3" width="450"/>

Now the cost function would be

<img src="/_Images/MultivariateLinearRegression/mv4.png" alt="MLR4" width="450"/>

## Gradient Descent

Previously the Gradient Descent was:

<img src="/_Images/MultivariateLinearRegression/mv5.png" alt="MLR5" width="450"/>

Now for multivariate:

<img src="/_Images/MultivariateLinearRegression/mv6.png" alt="MLR6" width="450"/>

<img src="/_Images/MultivariateLinearRegression/mv7.png" alt="MLR7" width="450"/>

## Feature Scaling:

Idea: Make sure features are on similar scale so gradient descent can converge more quickly

x1 = size(0-2000 feet^2)
x2 = number of bedrooms(1-5)

The problem can be seen graphically, in case the scale of the features is very different, the shape of the contours will be skinny in one dimension, making it harder to converge.

<img src="/_Images/MultivariateLinearRegression/mv8.png" alt="MLR8" width="450"/>

So one solution will be to scale the features, for example dividing each feature between it's maximum value. Something like this:

<img src="/_Images/MultivariateLinearRegression/mv9.png" alt="MLR9" width="450"/>

After the scaling we will end up with both features in a scale between 0 and 1. Graphically it will be something similar to:

<img src="/_Images/MultivariateLinearRegression/mv10.png" alt="MLR10" width="450"/>

Feature scaling: Get every feature into approximately -1 ≤ xi ≤ 1 range

### Mean Normalization

Replace xi with xi-µi (where µi  is the average for that feature) to make features have approximately zero mean(do not apply to xo = 1). Then you divide that term by the standard deviation (max - min)

<img src="/_Images/MultivariateLinearRegression/mv11.png" alt="MLR11" width="450"/>

### Debbuging to be sure Gradient Descent is working correctly.

The goal of Gradient Descent is to find the value for Ө which minimize the cost function

<img src="/_Images/MultivariateLinearRegression/mv12.png" alt="MLR12" width="450"/>

There is something called Automatic Convergence Test. It declares converge when J(Ө) decreseases by less than epsilon (for example 10-3) in one iteration. However finding that thresshold epsilon may be hard, that is why it is more reliable to plot the whole graph as in the example above.

This kind of plots may help you to understand if Gradient Descent is working correctly.
For example, if you have results like the ones in the images below, we can predict it will not converge and it is necessary to choose a smaller learning rate.

<img src="/_Images/MultivariateLinearRegression/mv13.png" alt="MLR13" width="450"/>

<img src="/_Images/MultivariateLinearRegression/mv14.png" alt="MLR14" width="450"/>

We need to keep this two things in mind:

* For sufficeintly small α, J(Ө) should decrease on every iteration
* But if α is too small, gradient descent can be slow to converge


It is recommeded to choose as learning rate values like: 0.001, 0.003, 0.01, 0.03, 0.1, 0.3 or 1

### How to choose the correct features in Linear Regression

We will use as an example the prediction of the prize of a house.

<img src="/_Images/MultivariateLinearRegression/mv15.png" alt="MLR15" width="450"/>

What you could do instead is to create one single feature named Area which will be frontage * depth.

<img src="/_Images/MultivariateLinearRegression/mv16.png" alt="MLR16" width="450"/>

Now if we want to use our feature size to fit in this cubic model, we could do something like this:

<img src="/_Images/MultivariateLinearRegression/mv17.png" alt="MLR17" width="450"/>

It will be really important to apply here feature scaling, since these three features will have very different ranges.

Examples of how a problem may be given:

<img src="/_Images/MultivariateLinearRegression/mv18.png" alt="MLR18" width="450"/>

