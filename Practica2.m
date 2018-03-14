%Practica 2
%Cesar Daniel Sanchez Martinez

%% 1.1 Vision en el tiempo del teorema

t1=0:0.001:2;
t2=0:0.02:2;

x1=cos(2*pi*3*t1);
x2=cos(2*pi*3*t2);

figure (1)
plot(t1,x1,'r')
hold on
stem(t2,x2,'b')
hold off

% En la se�al azul estamos muestreando a 50 Hz 

% Para que la se�al azul est� muestreada a 10, 6 y 3,5 Hz modificaremos
% el c�digo anterior utilizado 

t1=0:0.001:2;
t2=0:0.1:2;

x1=cos(2*pi*3*t1);
x2=cos(2*pi*3*t2);

figure(2)
plot(t1,x1,'r')
hold on
stem(t2,x2,'b')
hold off

%%%%%%

t1=0:0.001:2;
t2=0:0.1/6:2;

x1=cos(2*pi*3*t1);
x2=cos(2*pi*3*t2);

figure (3)
plot(t1,x1,'r')
hold on
stem(t2,x2,'b')
hold off

%%%%%%

t1=0:0.001:2;
t2=0:0.1/3.5:2;

x1=cos(2*pi*3*t1);
x2=cos(2*pi*3*t2);

figure (4)
plot(t1,x1,'r')
hold on
stem(t2,x2,'b')
hold off

% Para representar la se�al de 3,5 Hz usaremos el siguiente codigo: %

t2=0:1/3.5:2;
x2=cos(2*pi*3*t2);
figure(5)
stem(t2,x2)

% Como podemos ver no somos capaces de reconstruir la se�al original. Con
% las dem�s frecuencias (6 y 10 Hz) no pasa, ya que respentan el teorema
% de muestreo, ya que la se�al tiene una frecuencia de 3 Hz 

% La se�al con la que se onfunde tendr� una frecuencia igual a 1/2=0.5 Hz

% De las frecuencias propuestas, las que respetan el teorema de muestreo
% son la de 50, 10 y 6 Hz, ya que son mayores o iguales al doble de la
% frecuencia del coseno.



%% 1.2 Visi�n en el espectro del teorema

%Para calcular la transformada de Fourier con Fs a 50, 10, 6 y 3,5 Hz
%usamos los siguients scripts

Fs=50;
t2=0:1/Fs:10;
x2=cos(2*pi*3*t2);
espectro=abs(fft(x2));
frecuencias=0:Fs/(length(espectro)-1):Fs;
figure(6)
plot(frecuencias, espectro, 'b')

Fs=10;
t2=0:1/Fs:10;
x2=cos(2*pi*3*t2);
espectro=abs(fft(x2));
frecuencias=0:Fs/(length(espectro)-1):Fs;
figure(7)
plot(frecuencias, espectro, 'b')

Fs=6;
t2=0:1/Fs:10;
x2=cos(2*pi*3*t2);
espectro=abs(fft(x2));
frecuencias=0:Fs/(length(espectro)-1):Fs;
figure(8)
plot(frecuencias, espectro, 'b')

Fs=3.5;
t2=0:1/Fs:10;
x2=cos(2*pi*3*t2);
espectro=abs(fft(x2));
frecuencias=0:Fs/(length(espectro)-1):Fs;
figure(8)
plot(frecuencias, espectro, 'b')

% La imagen si es coherente, ya que la frecuencia de la se�al original
% coincide con la muestreada en las tres primeras gr�ficas (se respeta el
% teorema)
% El primer pico del espectro se situa a 3Hz
% En 3,5 Hz se situa a 0,5 Hz, que es la frecuencia que tendria la se�al
% original (1/2=0,5)

% Debemos tener en cuenta que la transformada de Fourier nos deber�a
% mostrar dos deltas, una en la parte negativa y otra en la positiva, pero
% lo que conseguimos aqu� es mostrar una en la parte positiva y otra en Fs


%% 1.3 Experiencia Auditiva

%Vamos a utilizar los siguientes codigos

Fs1=44100;
t3=0:1/Fs1:3;
x3=cos(2*pi*7000*t3);
sound(x3,Fs1)

Fs2=22050;
t4=0:1/Fs2:3;
x4=cos(2*pi*7000*t4);
sound(x4,Fs2)

Fs3=11025;
t5=0:1/Fs3:3;
x5=cos(2*pi*7000*t5);
sound(x5,Fs3)

Fs4=8000;
t6=0:1/Fs4:3;
x6=cos(2*pi*7000*t6);
sound(x6,Fs4)

% El unico que respeta el esquema de calidad es el CD y el Cassette, ya que
% estan muestreadas a mas del doble de 7000Hz. Las otras dos no cumplen el
% teorema

% No. Las dos primeras frecuencias suenan practicamente gual ya que
% respetan el teorema, pero las dos ultimas suenan mas graves

% La frecuencia de los dos primeros tonos se situara en 7000Hz. En los
% otros dos tonos, la frecuencia ser� menor ya que el sonido es mas grave,
% aunque no podemos concretar directamente cual sera

% A la hora de poder escuchar los diferentes sonidos lo que he hecho ha
% sido ejecutar el codigo con cada uno de ellos e ir a�adiendo y borrando
% uno a uno los sonidos.





