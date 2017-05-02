function P = per_mat(p)
    n = size(p,2);
    P = zeros(n);
    % Iterate all numbers
    for i = 1:n
        % Iterate permutatuon elements
        for j = 1:n
            % Set entry in permutation matrix, if numbers match
            if p(1,j) == i
                P(i,j) = 1;
            end
        end
    end
end
