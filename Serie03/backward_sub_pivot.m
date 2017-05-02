function x = backward_sub_pivot(R,y)
    [~,n]=size(R);
    x=zeros(n,1);
    x(n)=y(n)/R(n,n);
    for i=n-1:-1:1
        x(i)=(1/R(i,i))*(y(i)-R(i,(i+1:n))*x((i+1):n));
    end

end