function h = plotFittedPoints(x,y,fun,params,markMidpt)
    % Fits a model to points. 

    %Create a new figure and do some plotting!
    figure;
    plot(x,y,'b*',x,fun(params,x),'g'),legend('data','fit');
    
    %Draw a vertical line that intersects the midpoint of the sigmoid's
    %   vertical.
    if markMidpt
        midpoint = getVertMidpt(x,y);
        hold on; 
        hx = graph2d.constantline(midpoint, 'LineStyle',':', 'Color',[.7 .7 .7]);
        changedependvar(hx,'x');
    end
    
    %Return the figure's handle. 
    h = gcf;
end
