# 1 - Introduction

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

![IntroML1](././_Images/LinearRegression/introML1.png)

**Classification Example**: Malignant cancer are the red crosses and benign the blue crosses.

![IntroML2](./Images/introML2.png)

## Unsupervised Learning 

Unsupervised learning allows us to approach problems with little or no idea what our results should look like. We can derive structure from data where we don't necessarily know the effect of the variables. 

We can derive this structure by clustering the data based on relationships among the variables in the data. 

With unsupervised learning there is no feedback based on the prediction results. 

**Example:**

* **Clustering**: Take a collection of 1,000,000 different genes, and find a way to automatically group these genes into groups that are somehow similar or related by different variables, such as lifespan, location, roles, and so on. 

* **Non-clustering**: The "Cocktail Party Algorithm", allows you to find structure in a chaotic environmentA. (i.e. identifying individual voices and music from a mesh of sounds at a cocktail party).

Here we have an example where we don’t really know what is the meaning of each gene, but we can cluster individuals based on the presence or absence of a particular gene.

![IntroML3](./Images/introML3.png)

# 2 - Model

Supervised Learning: Given the "right answer" for each example in the data

Regression Problem: Predict "real-valued" output

![Model 1](./Images/modelML1.png)

To describe the supervised learning problem slightly more formally, our goal is, given a training set, to learn a function h : X -> Y so that h(x) is a “good” predictor for the corresponding value of y. For historical reasons, this function h is called a hypothesis. Seen pictorially, the process is therefore like this:

![Model 2](./Images/modelML2.png)

When the target variable that we’re trying to predict is continuous, such as in our housing example, we call the learning problem a regression problem. When y can take on only a small number of discrete values (such as if, given the living area, we wanted to predict if a dwelling is a house or an apartment, say), we call it a classification problem.

# 3 - Cost Function

He start with an hypothesis which can be written like:

<img src="./Images/costML1.png" alt="costML1" width="350"/>


Our Task is to find out which are the best values for those parameters. Lets start with simple examples:

![Cost 2](./Images/costML2.png)

The goal is to find the parameters which can trace a function as close as possible to out trainning set. For example:

<img src="./Images/costML3.png" alt="costML3" width="400"/>

A more accurate definition for a cost function:

![Cost 4](./Images/costML4.png)

To recap:

<img src="./Images/costML5.png" alt="costML5" width="400"/>

Lets follow an example where Ө0 = 0.

* First Ө1 = 1

<img src="./Images/costML6.png" alt="costML6" width="500"/>

* Then Ө1 = 0.5

<img src="./Images/costML7.png" alt="costML7" width="400"/>

Now we place the results of J(Ө)

<img src="./Images/costML8.png" alt="costML8" width="400"/>

**In case we have more than one Parameter**

In case Ө0 != 0 the cost function will be plot in a 2D model, where all elements belonging to the same contour will have the same value for the cost function.

<img src="./Images/costML9.png" alt="costML9" width="400"/>

Here an hypothesis really close to the minimum:

![Cost 10](./Images/costML10.png)


# 4 - Gradient Descent

**Introduction**

<img src="./Images/gradML1.png" alt="gradML1" width="350"/>

With this initial values for Ө0 and Ө1 we can have a value for J like one under the red cross:

![Grad 2](./Images/gradML2.png)

So the goal now is to decide in what direction we should take a "baby step" to get closer to a minimum. Like this:

![Grad 3](./Images/gradML3.png)

Then you continue taking "baby steps" until you reach a minimum in the function

![Grad 4](./Images/gradML4.png)

It is interesting to mention that if we start gradient descent a little bit to the right, the result may change drastically

![Grad 5](./Images/gradML5.png)

This is how it looks like Gradient Descent Mathematically:

<img src="./Images/gradML6.png" alt="gradML6" width="400"/>

Some notes: 

* The operator := is an assigment. For example in a := b, means assign to a the value of b. This is different than a = b, where we make an Truth Assertion.
* The parameter α is the learning rate, and determine how big each "baby step" will be during the learning process.
* Gradient descent first compute the new value of Ө0 and Ө1 and then simultaneously updates Ө0 and Ө1. Not first compute and update Ө0 and later Ө1.

**Intuition of the derivative term**

![Grad 7](./Images/gradML7.png)

Let's assume we have a single parameter Ө1. In the red dot of the function the derivative term will give us the slope of the red tangent. We can see for this particular example the slope is positive, so we will substract a value from the current Ө1 value (so we will move it to the left for the next iteration).

![Grad 8](./Images/gradML8.png)

For this other example, the derivative term has a negative value, so we will move Ө1 to the right. We can see in both cases we are moving to the minimum in each iteration.

We need to be careful when choosing the learning rate. Here are some examples of what may happen in case we choose this learning rate too big or too small.

![Grad 9](./Images/gradML9.png)

It may be a problem when our learning algorithm reach a local minimum. Since it will not be able to keep iterating (looking for the global minimum)

![Grad 10](./Images/gradML10.png)

As we approach a local minimum, gradient descent will automatically take smaller steps. So no need to decrease α over time. This is because when we approach to a minimum, the slope is less steep (in the local minimun will have 0 value). You can see this in the following image:

<img src="./Images/gradML11.png" alt="gradML11" width="400"/>

The partial derivatives can be expressed as:

<img src="./Images/gradML12.png" alt="gradML12" width="400"/>

And for an hypothesis with just Ө0 and Ө1 we can define each case like:

<img src="./Images/gradML13.png" alt="gradML13" width="400"/>

And now we plug this terms in the Algorithm:

<img src="./Images/gradML14.png" alt="gradML14" width="400"/>

The Gradient Descent Cost Function (At least in Linear Regression) will have always a bowl-shape, since it is a convex function. This function doesn't have any local optimum, just the global optimum.

![Grad 15](./Images/gradML15.png)

If possible make a gif with video: Gradient Descent For Linear Regression, form min 6.30.

This algorithm sometimes is called also Batch Gradient Descent

"Batch": Each step of gradient descent uses all the training examples. You can see it is always the sum of the m training samples. There are other versions of the algorithm which don't use all the training examples.
