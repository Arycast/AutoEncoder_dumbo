options = FunctionApproximation.Options();
options.ApproximateSolutionType = 'MATLAB';

functionToApproximate = 'sigmoid_LUT_func';

problem = FunctionApproximation.Problem(functionToApproximate, 'Options', options);
problem.InputLowerBounds = -8;
problem.InputUpperBounds = 8;