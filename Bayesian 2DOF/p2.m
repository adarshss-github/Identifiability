function [p] = p2(theta1,theta2,w2,sigw2)

w2theta = (1/sqrt(20)) * sqrt( theta1 + 2*theta2 + sqrt((theta1.^2 + 4*theta2.^2)) ) ;


p = ( 1/ ( sqrt(2*pi) * sigw2) ) * exp( -((w2theta - w2 ).^2)./ (2*sigw2^2) ) ;


end