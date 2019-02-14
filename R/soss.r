smooth.construct.soss.smooth.spec <- function(object,data,knots)
# implements a class of sos like smooths with an additional shrinkage
# term in the penalty... this allows for fully integrated GCV model selection
{ attr(object,"shrink") <- .1
  object <- smooth.construct.sos.smooth.spec(object,data,knots)
  class(object) <- "soss.smooth"
  object
} ## smooth.construct.soss.smooth.spec

Predict.matrix.soss.smooth <- function(object,data)
# this is the prediction method for a spline on the sphere smooth 
# with shrinkage
{ Predict.matrix.sos.smooth(object,data)
} ## Predict.matrix.soss.smooth
