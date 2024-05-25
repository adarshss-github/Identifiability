clr
theta1 = 0:0.1:700 ;
theta2 = 0:0.1:700 ;
[theta1,theta2] = meshgrid(theta1,theta2) ;
p1 = @p1 ;
load('EigSolu.mat', 'w')
y = p1(theta1,theta2,w(1),(1/10)*w(1)) ;
contour(theta1,theta2,y,'Color',[0 0.4470 0.7410]) ;
title('Posterior Distribution Density Shape (Only \omega_{1} measured)','FontSize',16)
xlabel('\theta_{1} N/m','FontSize',16)
ylabel('\theta_{2} N/m','FontSize',16)


%p2
clr
theta1 = 0.1:0.1:700 ;
theta2 = 0.1:0.1:700 ;
[theta1,theta2] = meshgrid(theta1,theta2) ;
p2 = @p2 ;
load('EigSolu.mat', 'w')
y = p2(theta1,theta2,w(2),(1/10)*w(2)) ;
contour(theta1,theta2,y) ;
title('Posterior Distribution Density Shape (Only \omega_{2} measured)','FontSize',16)
xlabel('\theta_{1} N/m','FontSize',16)
ylabel('\theta_{2} N/m','FontSize',16)
%%

clr
theta1 = 0.1:0.1:700 ;
theta2 = 0.1:0.1:700 ;
[theta1,theta2] = meshgrid(theta1,theta2) ;
p3 = @p3 ;
load('EigSolu.mat', 'w')
y = p3(theta1,theta2,w(1,1),(1/10)*w(1),w(2),(1/10)*w(2)) ;
contour(theta1,theta2,y,'ShowText','on') ;
title('Posterior Distribution Density Shape (\omega_{1} and \omega_{2} measured)','FontSize',16)
xlabel('\theta_{1} N/m','FontSize',16)
ylabel('\theta_{2} N/m','FontSize',16)