 %zurisaddai Sandoval Lara
%Tesis: Self-organizing clustering  by Growing-SOM for EEG Biometrics
%Asesora: Dra. Pilar Gómez Gil
%modificado: 6 de junio del 2020.
%Programa que crea una particion de 3 conjuntos de datos
%base de datos de Biomex. 


%programa para particionar datos deacuerdo a clases balanceadas donde el
%sujeto 1, 3,4,5,6 hasta 40 tendran los primeros 40 para
%Training_Testing_validation y conjunto impostores que seran los sujetos 22
%a 25 mujeres y los 2 hombres sobrantes 21 y 22
% asi cumplira las condiciones reales de un
%sistema biometrico.
clear all;
clear variables;
load('Biomex_FM'); 
recortado1= Conj_total;
[m,n]=size(recortado1);
i_escogido=1;
j_escogido=1;
k_escogido=1;
Training = cell(m,20);
Resto=cell(m,20);
Impostor=cell(m,6);
