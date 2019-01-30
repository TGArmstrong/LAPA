% Tyler Armstrong
% 101009324

nx = 100; % Number of points in x
ny = 100; % Number of points in y
V = zeros(nx,ny);
V(1,:) = 1; % Fixed boundaries
V(nx,:) = 1;
Vnew = V;
T = 100000;

for t = 1:T
    for i = 2:(nx-1)
        for j = 2:(ny-1)
            Vnew(i,j) = (V(i+1,j)+V(i-1,j)+V(i,j+1)+V(i,j-1))/4;  
        end
    end
    %Vnew(:,1)=V(:,2); % Adiabatic boundaries
    %Vnew(:,ny)=V(:,ny-1);
    V = Vnew;    
    cla;
    surf(V);
    pause(0.01);
end
[Ex,Ey] = gradient(V);