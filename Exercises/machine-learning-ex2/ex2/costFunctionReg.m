function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta


	Jtheta = 0;
	RegTheta = [0; theta(2:length(theta))];
	
	for i = 1 : m
		Htheta = X(i,:)*theta;
		sigm = sigmoid(Htheta);
		Jtheta = Jtheta + (-y(i)*log(sigm)-((1-y(i))*log(1-sigm)));
		
		grad = grad + ((sigm - y(i))*X(i,:))';
		
	end
	
	n = length(theta);
	
	ThetaReg = 0;
	for j = 2 : n
		ThetaReg = ThetaReg + (theta(j)^2);
	end

	J = (Jtheta/(m))+((ThetaReg*lambda)/(2*m));
    grad = (grad+(lambda*RegTheta))/(m);


% =============================================================

end