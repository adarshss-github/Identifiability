theta1 = 600 ;
theta2 = 200;
m = 4 ;

M = [m 0 ; 0 m] ;
K = [theta2 -theta2; -theta2 (theta1+theta2)] ;

[f,w,Phi] = undmodpar(M,K) ;
