clear;

x = 0 : 0.01 : 1;

epsilon = 0.1 : 0.05 : 0.8;

g = 1 - (1 - x).^(1 / 5);
plot(x, g, '--','LineWidth', 1.5);
grid on;
hold on;

f = zeros(length(epsilon), length(x));
for idx = 1 : floor(length(epsilon) / 2)
    f(idx, :) = epsilon(idx) * x.^2;
    plot(x, f(idx, :));
end

for idx = floor(length(epsilon) / 2) + 1 : length(epsilon)
    f(idx, :) = epsilon(idx) * x.^2;
    plot(x, f(idx, :));
end


legend('g^{-1}', '{\epsilon} = 0.1', '{\epsilon} = 0.15', ...
    '{\epsilon} = 0.2', '{\epsilon} = 0.25', '{\epsilon} = 0.3', ...
    '{\epsilon} = 0.35', '{\epsilon} = 0.4', '{\epsilon} = 0.45', ...
    '{\epsilon} = 0.5', '{\epsilon} = 0.55', '{\epsilon} = 0.6', ...
    '{\epsilon} = 0.65', '{\epsilon} = 0.7', '{\epsilon} = 0.75', ...
    '{\epsilon} = 0.8');