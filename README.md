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

Lo primero es definir que tipo de agarre y a qué componente se debe realizar.

FOTO VENTOSA Y UNION PARA AGARRE
MODELO VENTOSA Y UNION PARA AGARRE

Como se puede evidenciar, existe una región efectiva donde puede generarse un acople de agarre de la ventosa, a continuación se muestran las dimensiones de esta pieza de donde se realizará el acople.

FOTO MEDIDAS PIEZA SOLDADA

![image](https://user-images.githubusercontent.com/64372371/203583419-3b360a2b-2147-45c7-ae40-20dd16941638.png)


A partir de esto, se puede empezar a diseñar el ensamble, empezando por la unión al plato del IRB hasta la unión con la ventosa.
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

Ahora, para la unión entre piezas, se plantea usar un codo de PVC de 45° tal que la orientación final de la ventosa esté a 45° respecto al plato del IRB140, esto con el fin de facilitar montaje, evitar un número excesivo de singularidades, y realizar mejor las tareas.

De este modo, se consigue un codo de referencia "Codo Presión 1/2" 45° D-2466 Pvc" de PAVCO como se ve en la siguiente imágen:

![image](https://user-images.githubusercontent.com/64372371/203583651-51b62e79-2e7d-4d8c-b09e-a806d6162a24.png)

Ya con este codo en físico, se dirige a las librerías de Traceparts y se consigue el equivalente al codo en formato .ipt. A continuación se evidencia una imágen de dicho modelado.

![image](https://user-images.githubusercontent.com/64372371/203583669-ace78a8e-4f17-4e3d-bbe6-18ee35f8ba15.png)

Se puede descargar esta pieza en el siguiente enlace: [Click aquí](https://www.traceparts.com/es/product/cepex-codo-45deg-encolar-hembra-serie-metrica-up02sf-d16-code16307?CatalogPath=TRACEPARTS%3ATP07003005&Product=32-18022005-099264&PartNumber=05%2002%20016)

De este modo, ya se puede unir el codo con las demás piezas en el modelado.


### Acople codo-ventosa

Para realizar el acople entre el codo y la ventosa, se va a usar el propio acople entre la ventosa y la manguera para poder hacer acción de agarre mediante dos piezas.


El modelado de las dos piezas se muestra a continuacion:

![Modelo acople codo-ventosa](https://github.com/danielCamiloP/ProyectoRobotica/blob/main/CAD/PortaHerramienta/Imagenes/base%201.png?raw=true)
![Modelo acople-tapa codo-ventosa](https://github.com/danielCamiloP/ProyectoRobotica/blob/main/CAD/PortaHerramienta/Imagenes/base%202.png?raw=true)

Como se puede evidenciar, existe un quinto agujero en la tapa para poder añadir una antena para definir un segundo TCP en caso de ser necesario.

Las medidas de las dos piezas se muestra a continuación:

![Medidas acople codo-ventosa](https://github.com/danielCamiloP/ProyectoRobotica/blob/main/CAD/PortaHerramienta/Imagenes/base%201%20medidas.png?raw=true)
![Medidas acople-tapa codo-ventosa](https://github.com/danielCamiloP/ProyectoRobotica/blob/main/CAD/PortaHerramienta/Imagenes/base%202%20medidas.png?raw=true)



### Conjunto porta herramienta

Con base en todas las piezas mencionadas hasta este momento, se realiza el ensamble físico de este, y se miden con un calibrador pie de rey, las distancias al centro de la base, ya que estas serán tenidas en cuenta para el modelado.


![Modelo conjunto porta herramientas](https://github.com/danielCamiloP/ProyectoRobotica/blob/main/CAD/PortaHerramienta/Imagenes/ensamble%20PH.png?raw=true)

Como se puede evidenciar, el diámetro del acomple ventosa-manguera terminó siendo mayor al diámetro de cierre de acople de agarre de la ventosa con el fin de que no genere juego y mediante una lima se pueda remover el material suficiente, sin embargo mediante el uso de los tornillos, se logra ajustar adecuadamente la ventosa y no fue necesario remover demasiado material.

Dicho esto, se tienen coordenadas del TCP (centro de la ventosa) de 116mm de altura, y 6mm de distancia radial al centro de la base, además de una rotación de 45° entre el eje Z del plato y de la ventosa.



A partir de estas coordenadas del TCP, se realizan los ajustes necesarios entre las uniones de cada uno de los componentes con el fin de coincidir lo más posible entre la realidad y el modelado para luego ser exportado a Robot Studio. A


![image](https://user-images.githubusercontent.com/64372371/203583700-d8cf30a6-35c1-4ec1-ba2b-b0f0eb427318.png)


Con este modelado, se exporta el portaherramienta, junto con la ventosa, a un archivo .SAT que será utilizado como la herramienta en Robot Studio.
***
