function [p] = p3(theta1,theta2,w1,sigw1,w2,sigw2)

w1theta = (1/sqrt(20)) * sqrt( theta1 + 2*theta2 - sqrt((theta1.^2 + 4*theta2.^2)) ) ;
w2theta = (1/sqrt(20)) * sqrt( theta1 + 2*theta2 + sqrt((theta1.^2 + 4*theta2.^2)) ) ;

p = ( 1/ ( (2*pi) * sigw1*sigw2) ) * exp( -((w1theta - w1 ).^2)./ (2*sigw1^2) - ((w2theta - w2 ).^2)./ (2*sigw2^2) ) ;


end