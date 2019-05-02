# Motivations

## Non-Linear hypotheses

We will need to use this technique instead of Linear or Logistic Regression when we to learn complex non linear hypothesis.

For this case we can start taking features like:

x12 +x1*x2 + x1+x3+…+x1*x100 + x22 + x2*x3+…+x2*x100

or

x13 + x12 *x2 + x12 *x3 …


We can make several combinations, but will end up with a lot of overfitting since most of these combiantions are linearly dependent. 
Adding this combiantion will solve the problem of a complex non linear hypothesis, we will just end up with really complex equation 
with many features which will not fit a good hypothesis, so we need another techniques.
