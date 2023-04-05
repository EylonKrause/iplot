using Plots
using ImageView 
using Images

include("iplot.jl")


function y1(x)
    return x.^2
end

t = -5:1E-1:5;
y = y1(t);

print(y)

p1 = plot(t,y,    
label="line", color="blue",
title="A title indeed", titlefont=20,
xlab = "x axis", xtickfont=12, 
ylab = "y axis", ytickfont=12,
guidefont=20 #Both x and y axis labels fonts
);

#BYPASS GKS qtTerm:
iplot(p1)

z = randn(length(t));
p2 = histogram(z)

#BYPASS GKS qtTerm:
iplot(p2)

readline()

