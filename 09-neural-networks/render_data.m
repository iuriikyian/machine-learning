function render_data(X, Y, color1, color0)
    idx0 = find(Y == 0);
    idx1 = find(Y == 1);
    hold on;
    plot(X(idx0,1), X(idx0,2), color0);
    hold on;
    plot(X(idx1,1), X(idx1,2), color1);
end