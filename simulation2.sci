exec('draw_triangle.sci', 0)
rand('uniform');
clf;

[X,Y] = draw_triangle(10)
x0 = 2; //wspolrzedne punktu startowego
y0 = 1;

for i = 1 : 10000  
    vertex = 3 * rand() // losowanie zmiennej z przedziału (0, 3)
                        // jeżeli jej wartość jest <= 1 to zostaje wybrany wierzchołek A
                        // jeżeli > 1 i <= 2 to wierzchołek B itd. 
    if vertex <= 1 then        
        x1 = (X(1)+ x0)/2 // nowe położenie cząstki w połowie drogi między punktami
        y1 = (Y(1)+ y0)/2
        plot2d(x1, y1, 0)        
        x0 = x1
        y0 = y1        
    end
    
    if vertex <= 2 & vertex > 1 then
        x1 = (X(2)+ x0)/2
        y1 = (Y(2)+ y0)/2
        plot2d(x1, y1, 0)        
        x0 = x1
        y0 = y1
    end
    
    if vertex <= 3 & vertex > 2 then
        x1 = (X(3)+ x0)/2
        y1 = (Y(3)+ y0)/2
        plot2d(x1, y1, 0)        
        x0 = x1
        y0 = y1
    end    
end




