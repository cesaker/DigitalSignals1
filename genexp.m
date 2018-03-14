function y = genexp(b,n0,L)

%uso: Y = genexp(B,N0,L)
%B: entrada escalar
%N0: instante de comienzo (entero)
%L: longitud de la se~nal generada (entero) %Y: se~nal de salida Y de longitud L
%Mostramos un error si nos dan una longitud negativa o nula

if (L < 1)
  error ('GENEXP : Longitud no positiva')
end

%Construimos un vector de tiempos desde n0 y longitud L

nn = n0 + [0 : L-1];   %Notese como hago un vector de 0 a L-1
                       %y luego le sumo a cada termino n0
                       
%Generamos una se~nal exponencial con base b de longitud L %comenzando en n0

y = b.^nn;
end
