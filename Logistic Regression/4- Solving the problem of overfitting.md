# The problem of the Overfitting

  * This example is underfit, or has high bias. Basically it means we have a very strong preconception that the prize of the houses 
  will be very linearly with the size.
  * This example match quite good
  * This example has overfitting, or has high variance.
  
<img src="/_Images/OverfittingProblem/of1.png" alt="CR1" width="450"/>

Overfitting comes when we have too many features, the learned hypothesis may fit the training set very well, but fails to generalize 
to new examples (predict prizes in new examples).

<img src="/_Images/OverfittingProblem/of2.png" alt="CR2" width="450"/>

In this logistic regression examples we have once again underfitting in the first example and overfitting in the third one.

### How to address overfitting

Sometimes it is not possible to plot the hypothesis, for example because we have so many features and it is hard to see in a plot which one are producing overfitting. So we need to use other techniques to find the overfitting. 

It may appear specially when we have too many features and very little training data.

### Options to address overfitting:

	1. Reduce number of features.
		-Manually select which features to keep.
		-Model selection algorithm (later in course).

The problem for these two, by applying this techniques you are throwing away information. And this information may be useful.

	2. Regularization
		-Keep all the features, but reduce magnitude/values of parameters Өj 
		-Works well when we have a lot of features, each of which contributes a bit to predicting y.

### Regularization

Intuition: In the example of the right side we will have overfitting.

<img src="/_Images/OverfittingProblem/of3.png" alt="CR3" width="450"/>

If we penalize Ө3 and Ө4 then we will have almost a quadratic function in the example of the right as well.

Small values for the parameters will produce 
	-"Simpler"/smoother hypothesis
	-Which will be less prone to overfitting.

Example

<img src="/_Images/OverfittingProblem/of4.png" alt="CR4" width="450"/>

This is the Cost Function for Linear Regression

<img src="/_Images/OverfittingProblem/of5.png" alt="CR5" width="450"/>

What we are going to do now is to modify this cost function to shrink all the parameters by multiplying then by the regularization parameter λ. This parameter will control the trade-off between two different summarotires of the equation.

<img src="/_Images/OverfittingProblem/of6.png" alt="CR6" width="450"/>

We need to take into account that in case we set λ to be a very large value, we will penalize too much the the parameters Ө (which will be all close to 0), and the algorithm will result in underfitting (fails to fit even the training set). Just Ө0 will be present, which is a horizontal straight line.

Regularized Linear Regression

We are going to penalize all Ө except Ө0. So the algorithm will look like:

<img src="/_Images/OverfittingProblem/of7.png" alt="CR7" width="450"/>

We can regroup the last term like this:

<img src="/_Images/OverfittingProblem/of8.png" alt="CR8" width="450"/>

Where the following term use to be a little bit smaller than 1, like 0.99. which will shrink Өj

<img src="/_Images/OverfittingProblem/of9.png" alt="CR9" width="150"/>

### In the case of Normal Equation

<img src="/_Images/OverfittingProblem/of10.png" alt="CR10" width="450"/>

Where the Matrix multiplying λ will have 1 in the diagonal (except in the first position) and 0s in the rest. The size of this matrix will be (n+1)x(n+1)

Note: as long as λ > 0, the first term will be always invertible. So using regularization, we will grant to have an invertible matrix.

### Regularized Logistic Regression

We start with the previous example

<img src="/_Images/OverfittingProblem/of11.png" alt="CR11" width="450"/>

<img src="/_Images/OverfittingProblem/of12.png" alt="CR12" width="450"/>

When using regularized logistic regresson, which of theses is the best way to monitor whether gradent descent is working correctly?

Plot the following equation as a function of the number of iterations and make sure it's decreasing.

<img src="/_Images/OverfittingProblem/of13.png" alt="CR13" width="450"/>

<img src="/_Images/OverfittingProblem/of14.png" alt="CR14" width="450"/>
