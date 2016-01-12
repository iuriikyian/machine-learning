function vec(X, fmt = 'r')
    hold on;
    m = size(X, 1);
    if m != 1
        error('only 1 row vectors are supported');
    end;
    n = size(X, 2)
    switch n
        case 2
            quiver(0, 0, X(1,1), X(1,2), fmt);
            break;
        case 3
            plot3([0, X(1,1)], [0, X(1,2)], [0, X(1,3)], fmt);
            break;
        otherwise
            error('only size 2 and 3 is supported');
            break;
    end
    for i = 1:size(x, 1)
        plot([0; x(i,1)], [0; y(i,1)], fmt);
    end;
    hold off;
end;