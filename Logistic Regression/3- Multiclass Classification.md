# Multiclass Classification

**Examples:**

Email foldering: Work, Friends, Family, Hobby (4 categories)

Medical Diagram: Not ill, Cold, Flu (3 categories)

**Binary Classification vs Multi-class classification**

<img src="/_Images/MulticlassClassification/mc1.png" alt="MC1" width="450"/>

So in multiclass classification we will have something like this:

<img src="/_Images/MulticlassClassification/mc2.png" alt="MC2" width="450"/>

So we will turn this into three separate binary classification problems. 

Let’s start with the class 1. So we are gonna create a new sort of fake training set where classes 2 and 3 get assigned to negative class, and class 1 to the positive class.

Now we are gonna fit a classifier h(1)Ө(x) where the triangles are the positive examples and the circles are the negative examples.

The we repeat the previous steps with the other two classes. So we will have something generic like:

<img src="/_Images/MulticlassClassification/mc3.png" alt="MC3" width="450"/>

To summarize, for each x, we will run the three clasiffiers and we will pick the prediction of the one which returns the higher value. 

<img src="/_Images/MulticlassClassification/mc4.png" alt="MC4" width="450"/>
