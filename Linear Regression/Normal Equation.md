# Normal Equation

So far we have been using Gradient Descent to solve Linear Regression. 

Now we are going to use Normal Equation, which is a method to solve for Ө analytically. So instead of running the Gradient Descent 
Algorithm iteratively, we will solve the equation in one step.

<img src="/_Images/NormalEquation/ne1.png" alt="NE1" width="450"/>

In case Ө is a real number, to solve the equation we need to derivate and set the result to 0, like this:

<img src="/_Images/NormalEquation/ne2.png" alt="NE2" width="450"/>

But in the problem we are interested in,Ө is a n + 1 dimensional parameter vector. And our cost function will be something similar to:

<img src="/_Images/NormalEquation/ne3.png" alt="NE3" width="450"/>

Let's run an example to see this better:

<img src="/_Images/NormalEquation/ne4.png" alt="NE4" width="450"/>

The first step will be to add the first column x0, with all 1s. 

<img src="/_Images/NormalEquation/ne5.png" alt="NE5" width="450"/>

Now, once we hace the matrix X and the vector y, we can compute the equation:

<img src="/_Images/NormalEquation/ne6.png" alt="NE6" width="450"/>

In the general case we have m examples and n features. Something similar to:

<img src="/_Images/NormalEquation/ne7.png" alt="NE7" width="450"/>

Now we will build our Matrix X with the training samples, like this in the image below. We will get a Matrix m X (n+1)

<img src="/_Images/NormalEquation/ne8.png" alt="NE8" width="450"/>

For example, if we have a model with one single features and m training samples (so we will have a matriz X of size mx2):

<img src="/_Images/NormalEquation/ne9.png" alt="NE9" width="450"/>


### Some notes about the Normal Equation

<img src="/_Images/NormalEquation/ne10.png" alt="NE10" width="450"/>

The first component is the inverse of the product between the X matrix and its transpose:

<img src="/_Images/NormalEquation/ne11.png" alt="NE11" width="450"/>

Which can be achieved in octave like:

<img src="/_Images/NormalEquation/ne12.png" alt="NE12" width="450"/>

**Notes:** 
* In case we are using Normal Equation, feature scaling is not necessary.
* What if (XTX) is non-invertible? pinv handle this situation. It calculates the pseoudoinvertible. However, lets imagine we didn’t have pinv. How could we solve the issue? These are typical things which make (XTX) to be  non-invertible: 
	* Redundant features(linearly dependent), like x1 =size in feet2 and     x2 = size in m2.
	* In case there are too many features (m<n). We need to delete some features or use regularization.
  
### When to use Gradient Descent and when to use Normal Equation

<img src="/_Images/NormalEquation/ne13.png" alt="NE13" width="450"/>

We consider n very large if around 10000 features or more


