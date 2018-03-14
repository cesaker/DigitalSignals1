clc
clear all

%Apartado 2

L = 30;
nn = 0:(L-1);
imp = zeros(L,1);
imp(1) = 1;         %Creamos un vector de dimensión 30 en nuestro caso
                    %que llamaremos nn y hará de eje de abscisas de 
                    %nuestra función impulso. A continuación creamos un
                    %vector de la misma dimensión pero lleno de ceros
                    %excepto la primera componente que corresponde con la
                    %función impulso.
                    
figure(1);                    
subplot(2,1,1);
plot(nn,imp);       %En plot podemos ver como el primer valor empieza en 0
                    %y el siguiente empieza en 1, uniendo los puntos, no 
                    %no siendo una aproximación precisa.
subplot(2,1,2);
stem(nn,imp);       %En stem podemos ver lo mismo que antes pero en vez de
                    %unir los puntos los muestra sin unir, obteniendo la
                    %función impulso digital.
                    
%Apartado 2.1a

L1 = 20;
nn1 = 1:(L1);
imp1 = zeros(L1,1);
imp1 (5) = 0.9;

L2 = 21;
nn2 = -(L2-1)/2:(L2-1)/2;
imp2 = zeros(L2,1);
imp2 (11) = 4.5;

figure(2);
subplot(3,1,1);
stem(nn1,imp1);
subplot(3,1,2);
stem(nn2,imp2);


%Apartado 2.1b

P=5;
A=2;
M=10;


for i=1:P:M*P
      s(i)=A;
end

nn3=0:(length(s)-1);

subplot(3,1,3);
stem(nn3,s);

%Apartdo 3

figure(3);                      %Para poder saber las muestras que hace en
                                %un ciclo dividimos la frecuencia por 2pi
                                %y así las sacamos.

w1 =pi/17;                      %Aqui podemos ver como tarda 34 muestras en
                                %hacer un ciclo completo (pi/17)/2pi.
n1 = 0:75;               
                    
for i=1:length(n1);
    x1(i)=sin(w1*(i-1));
end

subplot(4,1,1);
stem(n1,x1);


w2 = 3*pi;                      %Aqui podemos ver como tarda 3/2 muestras 
                                %en hacer un ciclo completo.
n2 = -10:10;               
                    
for i=1:length(n2);
    x2(i)=sin(w2*(i-1)+pi/2);
end

subplot(4,1,2);
stem(n2,x2);

w3 = pi;                        %Aqui podemos ver como tarda 2 muestras en
                                %hacer un ciclo completo.
n3 = -10:10;

for i=1:length(n3);
    x3(i)=sin(w3*(i-1)+pi/2);
end

subplot(4,1,3);
stem(n3,x3);

w4 = pi/(sqrt(23));             %Aqui podemos ver como tarda 2sqrt(23) 
                                %muestras en hacer un ciclo completo.
n4 = 0:50;

for i=1:length(n4);
    x4(i)=cos(w4*(i-1));
end

subplot(4,1,4);
stem(n4,x4);

%Como podemos ver, para que una señal sea periódica la frecuencia
%normalizada (ciclos/muestra) tiene que poder expresarse en una fracción.
%La primera señal si es periódica ya que son 1/34 ciclos/muestra.
%La segunda también es periódica debido a que son 2/3 ciclos/muestra.
%La tercera también es periódica debido a que son 1/2 ciclos/muestra.
%La cuarta también es no es periódica debido a que sqrt(23) no es un número
%racional.

%Porque las frecuencias digitales tienen periodo 2*pi.


%Apartado 4.1

genexp(exp(1),0,10)
figure(4);
stem(ans)
genexp(2,-8,16)
figure(5);
stem(ans);

%Apartado 4.2

%Aqui comprobamos que son iguales los términos

genexp(0.5,0,5);
valor11=sum(ans)
valor12=(1-0.5^5)/(1-0.5)

genexp(0.3,0,8);
valor21 = sum(ans)
valor22 = (1-0.3^8)/(1-0.3)

genexp(-0.3,0,8);
valor31 = sum(ans)
valor32 = (1-(-0.3)^8)/(1+0.3)


%Apartado 4.3a

%Definimos el intervalo de tiempo [0 25]
n=0:50;
%Construimos la exponencial compleja
x=exp(j*n/3)
%Representamos la parte real y la imaginaria
figure(6), stem(n,real(x)), title ('Parte Real')
figure(7), stem(n,imag(x)), title ('Parte Imaginaria')

%Podemos observar como la parte real e imaginaria están desplazadas pi/2.
%Esto es debido a la fórmula de Euler, en la que la parte real es un 
%coseno y la imaginaria un seno.

%Apartado 4.3b

n=0:20;
x=3*exp(pi/10*j*n)
figure(8);
stem(imag(x), real(x));

%Como podemos ver en la figura, nos encontramos ante una especia de
%circunferencia.

%Los puntos están a una distancia de 3 unidades de longitud.

%La imagen no cambia a partir del [0,19].

