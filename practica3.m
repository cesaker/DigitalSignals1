%%Practica 3
%César Daniel Sánchez Martínez

%%Primera parte

x=load('signal2.txt');
soundsc(x)
figure(1)
subplot(2,1,1)
plot(x)
y=x(4200:4500);
subplot(2,1,2)
plot(y)

%%3.1
%Aqui lo que vamos a hacer es calcular la autocorrelación de la señal en un
%período de tiempo concreto, y a la vez obtendremos su periodo:


N=length(y);

for l=0:60
    aux=0;
    for n=1:N-1-l
        aux=aux+y(n).*y(n+l);
end
    rxx(l+1)=(1/N)*aux;
    pxx(l+1)=rxx(l+1)/rxx(1);
end
xs=0:60;
autocorr(y,60);

figure(2)
hold on
stem(xs,pxx)
[val,pos_min]=min(pxx); 
vector=pxx(pos_min:length(pxx)); 
[val,pos_max]=max(vector); 
periodo=pos_min+pos_max-2

%En la gráfica podemos observar que la función de autocorrelación de matlab
%y la que nosotros hemos puesto coinciden a la perfección. Podemos ver que
%el periodo de la función (diferencia entre los dos primeros máximos) es de
%50 muestras, lo que hace que sea verdad el final del script, donde hemos
%hallado que el periodo da 50.



%%3.3

k1=100;k2=250;k3=500;
g1=k1*randn(length(y),1);
yk1=y+g1;
g2=k2*randn(length(y),1);
yk2=y+g2;
g3=k3*randn(length(y),1);
yk3=y+g3;
%plot(yk)
auto1=autocorr(yk1,60);
auto2=autocorr(yk2,60);
auto3=autocorr(yk3,60);
subplot(3,1,1)
stem(auto1)
subplot(3,1,2)
stem(auto2)
subplot(3,1,3)
stem(auto3)

[val,pos_min]=min(auto1); 
vector=auto1(pos_min:length(auto1)); 
[val,pos_max]=max(vector); 
periodo1=pos_min+pos_max-2

[val,pos_min]=min(auto2); 
vector=auto2(pos_min:length(auto2)); 
[val,pos_max]=max(vector); 
periodo2=pos_min+pos_max-2

[val,pos_min]=min(auto3); 
vector=auto3(pos_min:length(auto3)); 
[val,pos_max]=max(vector); 
periodo3=pos_min+pos_max-2

%Con este script podemos observar que el periodo no cambia el periodo en
%las diferentes señales con ruido en una cantidad significante, ya que la
%único que cambia es la tercera que puede dar entre 49 y 51.
