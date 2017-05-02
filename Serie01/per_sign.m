function [ s ] = per_sign( P )
%PER_SIGN Calculate the sign of a permutation.
%   Best use per_signHS, as it is faster and has a better memory safety.
%   Works up to roughly n*n matrices where n<80000.
[~,n] = size(P);
s=1;
dl = zeros(1,n);
for i=1:n
  [P,~,l,~,dl]=recur(P,i,0,n,dl);
  if (l ~= 0) && (mod(l,2) == 0)
    s=s*(-1);
  end
end
end

function [P,pos,l,n,dl] = recur(P,pos,l,n,dl)
    if dl(pos)==0
      dl(pos)=1;
      npos = find(P(:,pos),1);
      
      [P,pos,l,n,dl]=recur(P,npos,l+1,n,dl);
      
    end
    
  
end
