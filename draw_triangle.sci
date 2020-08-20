function [X, Y] = draw_triangle(a)    
    exec('my_segs.sci', 0);
    exec('coordinates.sci', 0);
    clf;
    //plot2d([-10,10],[-10,10],[-1,-1]);  
    xtitle('Aleksander Skup, N = 10000') 
    x0 = 0; // wspolrzedne punktu startowego
    y0 = 0;
    X = [] // macierz kolejnych wierzchlokow trojkata
    Y = []    
    angle = [0, 120, 240] 
    for i = 1:3
        X(i) = x0 // aktualizacja macierzy wierzcholkow
        Y(i) = y0        
        angle(i);        
        [x1, y1] = coordinates(a, angle(i), x0, y0);       
        my_segs(x0, y0, x1, y1);
        x0 = x1; // aktualizacja bieżącego wierzcholka
        y0 = y1;       
    end
endfunction
