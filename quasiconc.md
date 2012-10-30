Convex, Concave, Quasiconcave, or What?
========================================================

This note tries to provide a graphical explanation to the quasiconcavity of real valued functions. Please refer to Daniel Wilhem's lecture note and Pemberton & Rau.

Definitions
-----------

Here we first remind ourselves of the relevant definitions. After that, we illustrate each of them.

#### Convex Set

> A set $V \subset \mathbb{R}^n$ is called **convex** if the line segment between any two points *in* $V$ is contained in the set itself, i.e. if $$ \alpha x + (1-\alpha)y \in V \text{ for all }\alpha \in [0,1], x,y \in V $$ 

#### Concave Function

> $f$ is a **concave** function if all the points *on or below* its graph form a convex set, i.e. if the set $$ \{(x,y) \in \mathbb{R}^n \times \mathbb{R}: y\leq f(x)\} $$ is convex.

#### Quasi-concave Function

> $f$ is a **quasi-concave** function if for any number $c\in\mathbb{R}$, the following sets are convex: $$ \{ x \in \mathbb{R}^n: f(x) \geq c \}$$

A Concave function
----------------



We plot the function $f(x,y) = x^{0.25} y^{0.25},x,y \geq 0$. You might recognize this as the canonical "Cobb Douglas" functional form. Here goes:

![plot of chunk cd1](figure/cd1.png) 


Now, why is this a *concave* function? We have to check all the points on or below it's graph, i.e. all the points on the shape and in the shape's interior. Line segments connecting any two points must lie inside the shape. Here I draw two lines, both of them are in the interior.

![plot of chunk cd1line](figure/cd1line.png) 


A quasi-concave function
-----------------------

Let's plot a quasi-concave function now. It's the same function as before, but with different powers: $f(x,y) = x^2 y^2,x,y \geq 0$

![plot of chunk cd2](figure/cd2.png) 


The definition of a quasi-concave function basically talks about the level sets of $f$, i.e. $\{ x \in \mathbb{R}^n: f(x) = c \}$ is the level set of $f$ at value $c$. Let's draw a couple of levels into our quasi-concave function and then look at the corresponding contour plot (of level sets):


![plot of chunk cd2contour](figure/cd2contour.png) 


Here's the contour plot. This is like looking from above at the previous figure and drawing the lines where the original (red) shape and the inserted (blue) level sets intersect.

![plot of chunk cd3](figure/cd3.png) 


The important thing to note here is that each of the level sets is indeed a **convex set**: pick any two points and connect them, you'll draw a line *inside* the corresponding level set.

Every Concave function is Quasi-Concave
---------------------------------------

That is easy to see if we draw the level sets of our concave function from above:
![plot of chunk cd4](figure/cd4.png) 

The level sets are convex.

Not Every Quasi-Concave function is Concave
---------------------------------------

Remember that concavity requires that connecting any two points *on or below* the graph of $f$ must produce a line below the graph. Let's try that with our quasi-concave function:

![plot of chunk cd5](figure/cd5.png) 

You can see that the line lies outside the shape, so this does not qualify as a concave function.

Why is this relevant for constrained maximization?
--------------------------------------------------

You can see that whenever $f$ is quasi-concave, level sets are convex (and most of the time differentiable). We want to find a unique point of tangency between the level sets of the objective $f$ and the constraint set. Convex level sets guarantee this.

Try this at home
----------------

You can download a program called R and run a demo file, where you can actually move around the 3D shapes from above. It's for free. To try this out, follow those steps:
1. go to [r-project](http://www.r-project.org) to download R
2. go to [github-gist](https://gist.github.com/3826511) and download the demo file
3. launch R
4. click on File > Source File and choose the file "rgl.r" from the location you downloaded to in step 2
5. the program will produce many plotting windows. you can place them on your screen, resize them, and grab the 3d objects with your mouse to move them around.





