% %zurisaddai Sandoval Lara
%Tesis: Self-organizing clustering  by Growing-SOM for EEG Biometrics
%Asesora: Dra. Pilar Gómez Gil
%modificado: 25 de Mayo del 2020.
%Programa que crea una particion de 3 conjuntos de datos
%base de datos de Biomex. con 14 canales para 50 sujetos 25 hombres y 25
%mujeres, base de datos balanceada


%programa para particionar datos deacuerdo a clases balanceadas donde el
%cada sujeto tiene dos grabaciones una primera de 10 digitos y otra de 4
%digitos, el creador menciona que la base de datos con 4 dijitos se usa
%para  los sistemas biometricos, los primeros 15 segundos son relajacion ojos cerrados, 15
%segundos observando instruccines ojos abiertos, posteriormente se realiza
%la toma de datos


s1=load('F001_01G04'); %se lee la matriz de datos
%_Cargar los 50 sujetos
i_escogido=1;
Resto=cell(1,50);
for i=1:50
    
    data=matriz_ele(i);
    matriz_aux=eti(data,i);
    Resto{1,i_escogido}=matriz_aux;
    i_escogido = i_escogido+1;
    
  
    
end
save('Conjunto_datos_etiq','matriz_todos'); %se guarda el conjunto de datos de la matriz con todos los canales y los datos por sujeto



%Funcion que contruye base datos
function data=matriz_ele(j)
 if(j==1)
     data=s1;
 end
  if(j==2)
     data=s2;
  end
  if(j==3)
     data=s3;
  end
  if(j==4)
     data=s4;
  end
  if(j==5)
     data=s5;
 end
  if(j==6)
     data=s6;
  end
  if(j==7)
     data=s7;
  end
  if(j==8)
     data=s8;
  end
   if(j==9)
     data=s9;
  end
  if(j==10)
     data=s10;
  end
%______________________sujetos 10(mujeres)
 if(j==11)
     data=s11;
 end
  if(j==12)
     data=s12;
  end
  if(j==13)
     data=s13;
  end
  if(j==14)
     data=s14;
  end
  if(j==15)
     data=s15;
 end
  if(j==16)
     data=s16;
  end
  if(j==17)
     data=s17;
  end
  if(j==18)
     data=s18;
  end
   if(j==19)
     data=s19;
  end
  if(j==20)
     data=s20;
  end
  %_____________________20 sujetos (mujeres)
  if(j==21)
     data=s21;
  end
  if(j==22)
     data=s22;
  end
  if(j==23)
     data=s23;
  end
  if(j==24)
     data=s24;
  end
  if(j==25)
     data=s25;
 end
  if(j==26)
     data=s26;
  end
  if(j==27)
     data=s27;
  end
  if(j==28)
     data=s28;
  end
   if(j==29)
     data=s29;
  end
  if(j==30)
     data=s30;
  end
%______________________sujetos 30(25mujeres) y 5 hombres
 if(j==31)
     data=s31;
 end
  if(j==32)
     data=s32;
  end
  if(j==33)
     data=s33;
  end
  if(j==34)
     data=s34;
  end
  if(j==35)
     data=s35;
 end
  if(j==36)
     data=s36;
  end
  if(j==37)
     data=s37;
  end
  if(j==38)
     data=s38;
  end
   if(j==39)
     data=s39;
  end
  if(j==40)
     data=s40;
  end
  %___________________hombres
  if(j==41)
     data=s41;
 end
  if(j==42)
     data=s42;
  end
  if(j==43)
     data=s43;
  end
  if(j==44)
     data=s44;
  end
  if(j==45)
     data=s45;
 end
  if(j==46)
     data=s46;
  end
  if(j==47)
     data=s47;
  end
  if(j==48)
     data=s48;
  end
   if(j==49)
     data=s49;
  end
  if(j==50)
     data=s50;
  end
end

function matriz_aux=eti(data,k)
 matriz_aux=data(:,3:16); %se seleccionan los 14 canales con 43000 muestras
 matriz_aux = matriz_aux';
 [n,~]=size(matriz_aux);
 vector_etiq=zero(n,1);
 vector_etiq =k+ vector_etiq;
 matriz_aux= horzcat(matriz_aux,vector_etiq);
end

