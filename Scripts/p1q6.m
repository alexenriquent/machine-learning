function out = reverse(in, n)
% Reverses the input vector in chunks of size 'n'.
    out = [];
    s = size(in);
    for i = 1:floor(s(2)/n)
        out = [out in(end-n+1:end)];
        in = in(1:end-n);
    end
    out = [out in];
end