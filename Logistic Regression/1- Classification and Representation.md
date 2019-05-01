Examples of binary classification problems:

Emails: Spam/ not Spam
Tumor: Malignant / Benign 

In all these examples the value of y belongs to {0,1}, where we can name 0 to the negative class and 1 the positive class.

<img src="/_Images/ClassificationRepresentation/cr1.png" alt="CR1" width="450"/>

**Why we can't use Linear Regression for Clasification problems**

Let's try to solve this problem using Linear Regression:

We will set a threshold between 1 and 0, for example at 0.5 and we will predict y using this threshold.

<img src="/_Images/ClassificationRepresentation/cr2.png" alt="CR2" width="450"/>

We will have something like in the image below, which may seem reasonable:

<img src="/_Images/ClassificationRepresentation/cr3.png" alt="CR3" width="450"/>

For the previous case everything seems to work fine, but now lets imagine we have a new sample like in the image below.

<img src="/_Images/ClassificationRepresentation/cr4.png" alt="CR4" width="450"/>

The problem appears when we recalculate the line that fits to the data, since it will show a result similar to the blue line. Which 
will make two of the Malignant tumors to be considered as Benign.

<img src="/_Images/ClassificationRepresentation/cr5.png" alt="CR5" width="450"/>

The conclusion is that applying Linear Regression to Classification problem, usually doesn’t end up well.

Another reason is that using Linear Regression our hypothesis may have values smaller than 0 and greater than 1. But our classes 
for this binary classification can be just 1 or 0.

<img src="/_Images/ClassificationRepresentation/cr6.png" alt="CR6" width="450"/>

Logistic Regression

With Logistic Regression we will grant that the output will match the condition:

<img src="/_Images/ClassificationRepresentation/cr7.png" alt="CR7" width="450"/>

For Logistic Regression we are going to use:

<img src="/_Images/ClassificationRepresentation/cr8.png" alt="CR8" width="450"/>

Where g(z) is going to be the Sigmoid function:

<img src="/_Images/ClassificationRepresentation/cr9.png" alt="CR9" width="450"/>

This is how the Sigmoid Function looks like:

<img src="/_Images/ClassificationRepresentation/cr10.png" alt="CR10" width="450"/>

Interpretation of Hypothesis Output

<img src="/_Images/ClassificationRepresentation/cr11.png" alt="CR11" width="450"/>

In case the output of my hypothesis is 0.7, we tell to the patient that there are 70% chance of tumor being malignant. So it will 
be the probability that y=1, given x, parameterized by Ө.

<img src="/_Images/ClassificationRepresentation/cr12.png" alt="CR12" width="450"/>

### Decision Boundary

<img src="/_Images/ClassificationRepresentation/cr13.png" alt="CR13" width="450"/>

Using the aid of the Sigmoid function plot, we can define the Decision Boundary like:

g(z) ≥ 0.5 when z ≥ 0. Since hӨ(x) = g(ӨTx), whenever ӨTx ≥ 0 then y = 1

g(z) < 0.5 when z < 0. Since hӨ(x) = g(ӨTx) , whenever ӨTx < 0 then y = 0

Now lets suppose we have a training set as in this plot, and a hypothesis as in the right side of the image below.

<img src="/_Images/ClassificationRepresentation/cr14.png" alt="CR14" width="450"/>

Lets give as initial values for Ө = [-3, 1, 1]

<img src="/_Images/ClassificationRepresentation/cr15.png" alt="CR15" width="450"/>

If x1+x2 ≥ 3, then y =1
If x1+x2 < 3, then y - 0

<img src="/_Images/ClassificationRepresentation/cr16.png" alt="CR16" width="450"/>

The boundary depends on the hypothesis, not on the dataset.

Example:

Ө0 = 5, Ө1 = -1, Ө2 = 0, so that hӨ = g(5-x1).

We should Predict Y = 0 if x1 is greater than 5.

<img src="/_Images/ClassificationRepresentation/cr17.png" alt="CR17" width="450"/>

Non-linear decission boundaries

<img src="/_Images/ClassificationRepresentation/cr18.png" alt="CR18" width="450"/>

Let's use Ө = [1, 0, 0, 1, 1]

<img src="/_Images/ClassificationRepresentation/cr19.png" alt="CR19" width="450"/>

This can be plot as:

<img src="/_Images/ClassificationRepresentation/cr20.png" alt="CR20" width="450"/>

Inside the circle y = 0 and outside the circle y = 1


