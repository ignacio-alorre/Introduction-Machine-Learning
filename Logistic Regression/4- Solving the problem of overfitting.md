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

<img src="/_Images/OverfittingProblem/of4.png" alt="CR4" width="450"/>
