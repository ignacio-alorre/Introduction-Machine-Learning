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

### Gradient Descent

Previously the Gradient Descent was:

<img src="/_Images/MultivariateLinearRegression/mv5.png" alt="MLR5" width="450"/>

Now for multivariate:

<img src="/_Images/MultivariateLinearRegression/mv6.png" alt="MLR6" width="450"/>

<img src="/_Images/MultivariateLinearRegression/mv7.png" alt="MLR7" width="450"/>

### Feature Scaling:

Idea: Make sure features are on similar scale so gradient descent can converge more quickly

x1 = size(0-2000 feet^2)
x2 = number of bedrooms(1-5)

The problem can be seen graphically, in case the scale of the features is very different, the shape of the contours will be skinny in one dimension, making it harder to converge.

<img src="/_Images/MultivariateLinearRegression/mv8.png" alt="MLR8" width="450"/>

