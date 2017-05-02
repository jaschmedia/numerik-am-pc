function [ s ] = per_signNR( P )
%PER_SIGNNR Summary of this function goes here
%   Detailed explanation goes here
[~,n] = size(P);
s=1;
dl = zeros(1,n);
for i=1:n
  l=0;
  pos=i;
  while dl(pos)==0
    dl(pos)=1;
    np = P(:,pos);
    pos = find(np,1);
    % pos = find(P(:,pos),1);
    l=l+1;
  end
  if (l ~= 0) && (mod(l,2) == 0)
    s=s*(-1);
  end
end
end