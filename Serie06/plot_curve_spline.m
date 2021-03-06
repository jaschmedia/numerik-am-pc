clear
close all

load Points.dat

x = Points(:, 1);
y = Points(:, 2);
n = length(x); % Anzahl der Punkte

% Berechne hier die Stuetzstellen t_k(1),t_k(2),...,t_k(n)
t_k = zeros(n,1);
for i=2:n
  t_k(i)=t_k(i-1)+sqrt((x(i)-x(i-1)).^2+(y(i)-y(i-1)).^2);
end

% Bestimme hier die Werte t
t = t_k(1):0.1:t_k(n);

% Bestimme die Splines s_x und s_y
s_x = spline(t_k,x,t);
s_y = spline(t_k,y,t);

% Zeichne hier die Kurve
plot(x,y,'o',s_x,s_y)
