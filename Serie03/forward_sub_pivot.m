function y = forward_sub_pivot(L,b)
    [~,n]=size(L);
    y=zeros(n,1);
    y(1)=b(1)/L(1,1);
    for i=2:n
        y(i)=(1/L(i,i))*(b(i)-L(i,(1:n))*y(1:n));
    end
    
end

