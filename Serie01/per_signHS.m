function [ s ] = per_signHS( P )
%PER_SIGNHS High speed version of per_sign
%   This function mostly serves as a demonstration. It shows how combining
%   built in functions with some creativity can lead to massively improved
%   CPU and memory efficiency.
%   Tested for n*n matrices with n<50 million.
%
%   Example: random n=5e7 perm matrix in about 5.3 seconds.
%   This was measured on a single core at 2.7 GHz clock speed.
[~,n] = size(P);    % determine the size of the matrix
s=1;                % the sign of the matrix we start with
dl(1:n) = true;     % list of coloumns in the matrix we already dealth with (inverted for speed)
[I,~]=find(P);      % get the location of the 1 elements in each coloumn.
for i=1:n
  l=0;              % length of the current cycle
  pos=i;
  while dl(pos)     % as long as the current coloumn hasn't been been dealth with (see line 12)
    dl(pos)=false;  % set current coloumn to "dealt with"
    pos=I(pos);     % gain new coloumn by finding the position of the 1 element in the current coloumn (see line 13)
    l=l+1;          % increase length of cycle
  end
  if l && (mod(l,2) == 0) % change sign if an even cycle is found
    s=-s;
  end
end
end