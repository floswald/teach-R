
if (!require(rgl)) install.package('rgl')

snapshot <- TRUE	# make pictures of this in current directory
setwd("~/Dropbox/teaching/math_stats/my-material/exercises")

library(rgl)	# use rgl library
## @knitr setup
xhigh <- 2
xlow  <- -2
x     <- seq(from=xhigh,to=xlow,le=100)
y     <- x
dat   <- expand.grid(x=x,y=y)
fun   <- function(x) 2*x[1]^2 + 2*x[2]^2 - 4*x[1]*x[2] - x[1]^4 - x[2]^4
pdat  <- apply(dat,1,fun)
pdat[pdat <= -1] <- -1	# set values lower than -1 equal to -1.

# plane along x=-y,z=0
open3d()
axes3d()
surface3d(x,y,pdat,color="red",alpha=0.9)
planes3d(a=1,b=-1,c=0,d=-0.001,color="green")	# plane along x=y, z=0
text3d(x=2,y=2,z=7,text="y = x",font=4)
text3d(x=2,y=-2,z=7,text="y = -x",font=4)
rgl.snapshot("case1.png")

# plane along x=y,z=0
open3d()
axes3d()
surface3d(x,y,pdat,color="red",alpha=0.9)
planes3d(a=1,b=1,c=0,d=0.0001,color="blue")		
text3d(x=2,y=-2,z=7,text="y = -x",font=4)
rgl.snapshot("case2.png")


