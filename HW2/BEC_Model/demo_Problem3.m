clear;

dc = 6;

x = 0 : 0.01 : 1;

epsilon = 0.;

dv = 1 : dc - 1;

g = 1 - (1 - x).^(1 / (dc - 1));
plot(x, g, '--','LineWidth', 1.5, 'DisplayName','g^{-1}');
grid on;
hold on;

f = zeros(length(epsilon), length(x));
for idx = 1 : length(dv)
    f(idx, :) = epsilon * x.^(dv(idx) - 1);
    plot(x, f(idx, :), 'LineWidth', 1.5, 'DisplayName', ['dv = ', num2str(dv(idx))]);
end

legend;