using Plots
using ImageView 
using Images

function iplot(p)
    p = plot(p, dpi = 300);
    display(p);
    savefig("test.png");
    img = load("test.png");
    imshow(img)
    rm("test.png");
    
    return nothing    
end 