# Proyecto Robótica
## Universiad Nacional de Colombia
## 2022-2
***
### Autores
- Johan Díaz
- Julián Andrés Caipa Prieto
- Andrés Holguín Restrepo 
- Daniel Peña

### Profesores encargados
- Ing. Ricardo Emiro Ramírez H.
- Ing. Jhoan Sebastian Rodriguez R.
***


## Descripción




## Herramienta porta ventosa

Para la herramienta porta ventosa de opta por utilizar un ensamble de piezas que permita facilitar el agarre de piezas, además de la posibilidad de tener 2 TCP en caso de una mala definición de work object, usar una antena como TCP para definir los 3 puntos del nuevo work object en el laboratorio.



***


### Acople soporte-plato

Ya teniendo el soporte del marcador, se diseña el acople entre dicho soporte y el plato del IRB140. Para empezar, cabe describir ambas conexiones.  

Por un lado, la conexión al soporte debe realizarse mediante una conexión hembra-macho, donde se tiene un diámetro interno del tubo de PVC de 21.4mm medido con un pie de rey. Por el otro lado, el plato cuenta con la siguiente disposición de agujeros roscados:

![Dimensiones del plato del IRB140](https://github.com/jcaipap/Lab1_Robotica_Caipa_Holguin/blob/main/Dise%C3%B1o%20de%20la%20herramienta/Imagenes/plato.png?raw=true)

#### Modelado 3D

Con todo y lo anterior, se define la siguiente pieza para este acople:

![Modelo 3D soporte-plato](https://github.com/jcaipap/Lab1_Robotica_Caipa_Holguin/blob/main/Dise%C3%B1o%20de%20la%20herramienta/Imagenes/acople3D.png)

![Dimensiones del acople soporte-plato](https://github.com/jcaipap/Lab1_Robotica_Caipa_Holguin/blob/main/Dise%C3%B1o%20de%20la%20herramienta/Imagenes/base.png?raw=true)

Como se puede evidenciar, se cumplen las condiciones para el acople por tornillos M6 al plato, y una diferencia entre diámetros e 0.4mm entre la conexión macho-hembra, lo cual se contempló en caso de posibles imperfecciones en la impresión 3D.

#### Impresión 3D

A partir de este modelado 3D, se utiliza el software Repetier Host y una impresora 3D para generar la pieza. Cabe resaltar que, al ser una impresora propia, la calidad no es tan alta como lo hubiera sido mandar a imprimir. Se imprime en PLA con capas de 0.3mm de espesor y densidad de pieza del 20%. Los resultados de la impresión se muestran a continuación:

![Modelo 3D en Repetier-Host](https://github.com/jcaipap/Lab1_Robotica_Caipa_Holguin/blob/main/Dise%C3%B1o%20de%20la%20herramienta/Imagenes/3DRH.png?raw=true)

![Acople impreso](https://github.com/jcaipap/Lab1_Robotica_Caipa_Holguin/blob/main/Dise%C3%B1o%20de%20la%20herramienta/Imagenes/3DI.jpg?raw=true)



### Codo PVC 45°


### Acople codo-ventosa

Para realizar el acople entre el codo y la ventosa, se va a usar el propio acople entre la ventosa y la manguera para poder hacer acción de agarre mediante dos piezas.


### Conjunto porta herramienta



***
