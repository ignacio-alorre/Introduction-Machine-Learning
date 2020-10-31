function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

	C_vect = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];
	sigma_vect = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];
	
	m = length(C_vect);
	
	SolVect = zeros(m^2,1);

	for i = 1 : m
		for j = 1 : m
			model= svmTrain(X, y, C_vect(i), @(x1, x2) gaussianKernel(x1, x2, sigma_vect(j))); 
			predictions = svmPredict(model, Xval);
			index = ((i-1)*m)+j;
			SolVect(index) = mean(double(predictions ~= yval));
		end
	end

	[val, pos] = min(SolVect)
	
	indexC = floor(pos/8)+1;
	indexSigma = mod(pos,8);
	
	C = C_vect(indexC);
	sigma = sigma_vect(indexSigma);

% =========================================================================

end
