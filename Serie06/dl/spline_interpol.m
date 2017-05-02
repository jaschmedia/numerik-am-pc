function s = spline_interpol(K,x,z)

% Achtung: x und z muessen Spaltenvektoren sein!

n = length(x)-1;

% Extrahiere die einzelnen Koeffizienten aus K
A = ...
B = ...
C = ...
D = ...

% Finde die Indizes i, sodass x(i) <= z < x(i)
i = zeros(size(z));

for j = 1:length(z)
    i(j) = find(z(j) >= x,1,'last');
    if i(j) == n+1 % (Korrektur falls ind=n+1)
        i(j) = n;
    end
end

% Berechne die Interpolierten Werte s
s = ...
    
end

