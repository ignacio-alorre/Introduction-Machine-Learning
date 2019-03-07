# Introduction

Machine Learning can be considered the field of study that gives computers the ability to learn without being explictly programmed. Another possible definition is:

*"A computer program is said to learn from experience E with respect to some class of tasks T and performance measure P, if its performance at tasks in T, as measured by P, improves with experience E."*

Example: playing checkers.

* E = the experience of playing many games of checkers 
* T = the task of playing checkers. 
* P = the probability that the program will win the next game.

In general, any machine learning problem can be assigned to one of two broad classifications:

* Supervised learning 
* Unsupervised learning

## Supervised Learning

In supervised learning, we are given a data set and already know what our correct output should look like, having the idea that there is a relationship between the input and the output.

Supervised learning problems are categorized into "regression" and "classification" problems. In a regression problem, we are trying to predict results within a continuous output, meaning that we are trying to map input variables to some continuous function. In a classification problem, we are instead trying to predict results in a discrete output. In other words, we are trying to map input variables into discrete categories.

**Example 1**:

Given data about the size of houses on the real estate market, try to predict their price. Price as a function of size is a continuous output, so this is a regression problem.

We could turn this example into a classification problem by instead making our output about whether the house "sells for more or less than the asking price." Here we are classifying the houses based on price into two discrete categories.

**Example 2**:

* **Regression** - Given a picture of a person, we have to predict their age on the basis of the given picture 
* **Classification** - Given a patient with a tumor, we have to predict whether the tumor is malignant or benign

**Regression Example**: From the given values (red crosses) you define a function which goes through the most of them. There are several options as you can see (blue and purple line)

![IntroML1](https://github.com/ignacio-alorre/Machine-Learning/blob/master/Concepts/Images/introML1.png)

**Classification Example**: Malignant cancer are the red crosses and benign the blue crosses.

![IntroML2](https://github.com/ignacio-alorre/Machine-Learning/blob/master/Concepts/Images/introML2.png)

## Unsupervised Learning 

Unsupervised learning allows us to approach problems with little or no idea what our results should look like. We can derive structure from data where we don't necessarily know the effect of the variables. 

We can derive this structure by clustering the data based on relationships among the variables in the data. 

With unsupervised learning there is no feedback based on the prediction results. 

**Example:**

* **Clustering**: Take a collection of 1,000,000 different genes, and find a way to automatically group these genes into groups that are somehow similar or related by different variables, such as lifespan, location, roles, and so on. 

* **Non-clustering**: The "Cocktail Party Algorithm", allows you to find structure in a chaotic environmentA. (i.e. identifying individual voices and music from a mesh of sounds at a cocktail party).

Here we have an example where we don’t really know what is the meaning of each gene, but we can cluster individuals based on the presence or absence of a particular gene.

![IntroML3](https://github.com/ignacio-alorre/Machine-Learning/blob/master/Concepts/Images/introML3.png)

# Model

Supervised Learning: Given the "right answer" for each example in the data

Regression Problem: Predict "real-valued" output

![Model 1](https://github.com/ignacio-alorre/Machine-Learning/blob/master/Concepts/Images/modelML1.png)

To describe the supervised learning problem slightly more formally, our goal is, given a training set, to learn a function h : X -> Y so that h(x) is a “good” predictor for the corresponding value of y. For historical reasons, this function h is called a hypothesis. Seen pictorially, the process is therefore like this:

![Model 2](https://github.com/ignacio-alorre/Machine-Learning/blob/master/Concepts/Images/modelML2.png)

When the target variable that we’re trying to predict is continuous, such as in our housing example, we call the learning problem a regression problem. When y can take on only a small number of discrete values (such as if, given the living area, we wanted to predict if a dwelling is a house or an apartment, say), we call it a classification problem.

# Cost Function

He start with an hypothesis which can be written like:

![Cost 1](https://github.com/ignacio-alorre/Machine-Learning/blob/master/Concepts/Images/costML1.png)

Our Task is to find out which are the best values for those parameters. Lets start with simple examples:

![Cost 2](https://github.com/ignacio-alorre/Machine-Learning/blob/master/Concepts/Images/costML2.png)

The goal is to find the parameters which can trace a function as close as possible to out trainning set. For example:

![Cost 3](https://github.com/ignacio-alorre/Machine-Learning/blob/master/Concepts/Images/costML3.png)

A more accurate definition for a cost function:

![Cost 4](https://github.com/ignacio-alorre/Machine-Learning/blob/master/Concepts/Images/costML4.png)

To recap:

![Cost 5](https://github.com/ignacio-alorre/Machine-Learning/blob/master/Concepts/Images/costML5.png)

Lets follow an example where Ө0 = 0.

First Ө1 = 1

![Cost 6](https://github.com/ignacio-alorre/Machine-Learning/blob/master/Concepts/Images/costML6.png)

Then Ө1 = 0.5

![Cost 7](https://github.com/ignacio-alorre/Machine-Learning/blob/master/Concepts/Images/costML7.png)

Now we place the results of J(Ө)

![Cost 8](https://github.com/ignacio-alorre/Machine-Learning/blob/master/Concepts/Images/costML8.png)

**In case we have more than one Parameter**

In case Ө0 != 0 the cost function will be plot in a 2D model, where all elements belonging to the same contour will have the same value for the cost function.

![Cost 9](https://github.com/ignacio-alorre/Machine-Learning/blob/master/Concepts/Images/costML9.png)

Here an hypothesis really close to the minimum:

![Cost 10](https://github.com/ignacio-alorre/Machine-Learning/blob/master/Concepts/Images/costML10.png)
