# Proyecto Robótica
## Universidad Nacional de Colombia
## 2022-2
***
### Autores
- Johan Andrés Díaz Roa
- Julián Andrés Caipa Prieto
- Andrés Holguín Restrepo 
- Daniel Camilo Peña Pabón

### Profesores encargados
- Ing. Ricardo Emiro Ramírez H.
- Ing. Jhoan Sebastian Rodriguez R.
***
![IMG_20221125_105504](https://user-images.githubusercontent.com/42346344/204056881-92df57a2-d083-443b-979d-fea0639a1ad0.jpg)



## Descripción

Para la asignatura de Robótica, de la Universidad Nacional de Colombia, se planteó como proyecto final realizar un proceso de ensamblado pick and place de un modelo de un gripper, realizado en MDF, usando los manipuladores IRB 140 del LabSIR de la universidad. Para esta tarea, se tuvo disponibilidad de un ensamble de ventosa, venturi y electroválvula que permitiera tomar las piezas empleando vacío.
### Objetivos
- Diseñar el modelo de un gripper articulado con al menos 5 piezas el cual debe ser ensamblado empleando piezas planas cortadas de láminas, unidas entre sí con pasadores, y considerando dimensiones adecuadas para poder ser ensambladas empleando la ventosa.
- Diseñar las dos bases de trabajo de donde se tomarán las piezas, y de donde estas serán colocadas con sus correspondientes pasadores y guías de ensamblado.
- Diseñar el portaherramienta que permitirá acoplar la ventosa al manipulador IRB 140.
- Realizar el ensamble del gripper considerando el orden adecuado de reubicación de las piezas para ser colocadas en la base de ensamble, de tal manera que se pueda accionar el mecanismo una vez acabe el proceso de ensamble.
- Documentar el desarrollo del laboratorio por medio de un video y un Readme en el repositorio del proyecto.

## Diseño del gripper articulado

### Gripper preliminar

Para un primer diseño, se consideró un gripper de apertura paralela. Este primer modelo de gripper empleó piezas con una tolerancia para poder ser tomadas por la ventosa de 30mm como mínimo en cada pieza. Se consideró su fabricación en MDF de 5mm de espesor. El plano de este primer gripper se muestra a continuación:

![image](https://user-images.githubusercontent.com/64372371/204057964-b8cdc41b-650d-4ad2-98ba-b62a76f209b4.png)

También, se diseño una base para las piezas aprovechando la lámina de MDF de la cual se realizó el corte, para poder tomar las piezas de su respectivo lugar, y una base de ensamble que consideró un nivel para poder reposar los dedos del gripper, y los 13 agujeros necesarios para poder colocar tornillos M5 boca arriba tal que el manipulador pudiera depositar las piezas del gripper alineando los tornillos.

![image](https://user-images.githubusercontent.com/64372371/204058077-3b2c96e5-b047-4784-a376-334733b64e2b.png)



Luego de realizar pruebas en el laboratorio empleando la ventosa y una sola mano para realizar el ensamble, resultó evidente que no era viable utilizar este primer diseño. Primeramente, la ventosa tenía muy poco margen de error en su colocación sobre el gripper. También, debido a las tolerancias tan precisas que se tenían para los agujeros de los tornillos, resultaba muy poco factible realizar el ensamble empleando una sola mano y la ventosa. Por medio de este criterio, se descartó el diseño de gripper paralelo, optando por un gripper de apertura en ángulo con dimensiones más grandes para así tener mucho mejor margen de error en el proceso de ensamblado.

### Gripper final

Para el diseño del nuevo gripper se consideró que la ventosa quedara con un área de 40x40 mm en cada pieza, tal que se puedan tomar bien. Se diseñaron los agujeros de los tornillos con un margen de 2mm adicionales en el diámetro de los agujeros, es decir, agujeros de 7mm para tornillos M5. El nuevo gripper reemplazó el mecanismo paralelo de 4 eslabones y dos dedos, por dos piezas que consideraban eslabón y pinza, para disminuir la complejidad del ensamble. También, para facilitar el diseño de trayectorias, en el modelo CAD de las piezas del gripper se indicó el centro de donde debería llegar la ventosa para tomar la pieza, con un pequeño agujero de 1mm. Este agujero no fue cortado en el modelo en físico del gripper, para poder tener una succióna decuada de la ventosa.

Dicho esto, a continuación se muestra el gripper en ensamble y las dimensiones de cada una de las piezas asociadas. Para referirse a los planos de fabricación de cada una de estas piezas [Haga click aquí](https://github.com/danielCamiloP/ProyectoRobotica/blob/main/CAD/Planos/Planos.pdf). En este archivo, se encuentran todos los planos tanto del gripper como de la base porta piezas y la base de ensamble.


Gripper:

![image](https://user-images.githubusercontent.com/64372371/204056441-f26fc719-8243-44d6-9b25-2f785d5be0e5.png)

Base:

![image](https://user-images.githubusercontent.com/64372371/204056332-cd4bb508-ad5b-45fc-a778-03e35e8d6579.png)

Pinza:

![image](https://user-images.githubusercontent.com/64372371/204056349-e28ed4ab-f092-4102-b25e-22c73c64d80e.png)

Soporte:

![image](https://user-images.githubusercontent.com/64372371/204056364-4ff2e12c-455c-4a62-a752-7ae6b29d0545.png)

Pistón:

![image](https://user-images.githubusercontent.com/64372371/204056375-bd135353-9744-4f5f-afa4-2863ef69cda4.png)

A continuación se muestran físicamente las piezas luego de realizar el corte láser en MDF 5mm

![image](https://user-images.githubusercontent.com/64372371/204057729-4cb47637-83e5-4d4e-a503-ef2a3b484b69.png)



Adicionalmente, se consideró el mismo método de ensamble de la base para las piezas, donde se colocó un fondo a la lámina de donde se cortaron las piezas de MDF en primera instancia. Sin embargo,luego de varias pruebas en el laboratorio, se concluyó que para facilitar el proceso de ensamblaje, se modificaría esta base por una en  que todas las piezas partan con la orientación en que serán colocadas en la base de ensamble, esto con el fin de reducir los errores relativos entre piezas generadas por cambios de orientación en el movimiento con el IRB140. La nueva base de ensamble siguió el diseño de la del primer gripper, tomando una placa de MDF con agujeros cortados al tamaño de los cabezales de los tornillos y colocando un fondo a estos agujeros. Los tornillos M5 nuevamente irían hacia arriba, tal que la pieza a ensamblar pueda bajar alineada tal que al final del proceso solo haya que colocar tuercas en cada uno de los tornillos. 

Base porta piezas inicial:

![image](https://user-images.githubusercontent.com/64372371/204056915-c9a5f39e-18c0-4374-9255-c481a5953bf5.png)

Base porta piezas final:

![image](https://user-images.githubusercontent.com/64372371/204056966-b89f4f27-b760-45f6-b0bf-6f506d609666.png)

Base de ensamblaje:

![image](https://user-images.githubusercontent.com/64372371/204057041-d09b3194-8e1d-42ad-b4b6-13ac29ec2e7c.png)

Mostrados estos modelados, se van a exponer las dimensiones de estas partes finales, las cuales se pueden encontrar sus planos en el hipervínculo mencionado anteriormente para los planos. Además, en la base porta piezas se muestran las coordenadas de los puntos de succión establecidos para los agarres de la ventosa.

Dimensiones base porta piezas final:

![image](https://user-images.githubusercontent.com/64372371/204057158-8e383962-d71d-4edb-82b7-ad76e6168f5f.png)

Dimensiones base de ensamblaje:

![image](https://user-images.githubusercontent.com/64372371/204057163-f7971b8a-a846-4aae-991a-4415c7aba44b.png)

Cabe resaltar que para la base del porta piezas, lo que se realizó fue una impresión a escala real en tamaño A3 del plano, esto con el fin de poder tener una mayor facilidad de movimiento y calibración de las piezas en la práctica, donde la hoja A3 se colocó sobre una base ámplia y plana. Estas dos piezas son colocadas con la misma orientación en el espacio de trabajo del IRB140 como se evidencia en la siguiente imágen:

![image](https://user-images.githubusercontent.com/64372371/204057350-24b45237-979a-4235-b065-bd966822e871.png)


Fue necesario el uso de cinta sobre las bases para que estas permanecieran fijas y no perder la calibración de las piezas de trabajo junto con sus bases.

***

## Herramienta porta ventosa

Para la herramienta porta ventosa de opta por utilizar un ensamble de piezas que permita facilitar el agarre de piezas, además de la posibilidad de tener 2 TCP en caso de una diferencia de work object entre software e implementación, usar una antena como TCP para definir los 3 puntos del nuevo work object en el laboratorio.

Lo primero es definir que tipo de agarre y a qué componente se debe realizar.

FOTO VENTOSA Y UNION PARA AGARRE

![Modelo acople ventosa manguera](https://user-images.githubusercontent.com/64372371/203583419-3b360a2b-2147-45c7-ae40-20dd16941638.png)

Como se puede evidenciar, existe una región efectiva donde puede generarse un acople de agarre de la ventosa, a continuación se muestran las dimensiones de esta pieza de donde se realizará el acople.

![medidas acople ventosa manguera](https://user-images.githubusercontent.com/64372371/203585673-74d0e43a-491f-4a5e-bfcb-7fd83b5dfbbe.png)


A partir de esto, se puede empezar a diseñar el ensamble, empezando por la unión al plato del IRB hasta la unión con la ventosa.
***

### Acople soporte-plato

Ya teniendo el soporte del marcador, se diseña el acople entre dicho soporte y el plato del IRB140. Para empezar, cabe describir ambas conexiones.  

Por un lado, la conexión al soporte debe realizarse mediante una conexión hembra-macho, donde se tiene un diámetro interno del tubo de PVC de 21.4mm medido con un pie de rey. Por el otro lado, el plato cuenta con la siguiente disposición de agujeros roscados:

![Dimensiones plato](https://user-images.githubusercontent.com/64372371/203584279-e67c42e7-d4b9-4d3b-964c-9340f5eed0bf.png)
#### Modelado 3D

Con todo y lo anterior, se define la siguiente pieza para este acople:

![Modelo 3D soporte-plato](https://user-images.githubusercontent.com/64372371/203584315-dc1dbe92-3cac-4169-8002-fb8958b9797c.png)

![Dimensiones del acople soporte-plato](https://user-images.githubusercontent.com/64372371/203584426-d3a3a7c6-6d22-4989-a873-44373c25157e.png)

Los planos completos de esta pieza, junto con las próximas a mencionar se encuentran [haciendo click aquí](https://github.com/danielCamiloP/ProyectoRobotica/blob/main/CAD/Planos/Planos%20portaherramienta.pdf).

Como se puede evidenciar, se cumplen las condiciones para el acople por tornillos M6 al plato, y una diferencia entre diámetros e 0.4mm entre la conexión macho-hembra, lo cual se contempló en caso de posibles imperfecciones en la impresión 3D.

#### Impresión 3D

A partir de este modelado 3D, se utiliza el software Repetier Host y una impresora 3D para generar la pieza. Cabe resaltar que, al ser una impresora propia, la calidad no es tan alta como lo hubiera sido mandar a imprimir. Se imprime en PLA con capas de 0.3mm de espesor y densidad de pieza del 20%. Los resultados de la impresión se muestran a continuación:


![Modelo 3D en Repetier-Host](https://user-images.githubusercontent.com/64372371/203584524-66957a24-f991-4180-9237-e9da907691d7.png)

![Acople impreso](https://user-images.githubusercontent.com/64372371/203584888-b88c357b-2ada-4698-97bd-f5cd05064b57.png)


### Codo PVC 45°

Ahora, para la unión entre piezas, se plantea usar un codo de PVC de 45° tal que la orientación final de la ventosa esté a 45° respecto al plato del IRB140, esto con el fin de facilitar montaje, evitar un número excesivo de singularidades, y realizar mejor las tareas.

De este modo, se consigue un codo de referencia "Codo Presión 1/2" 45° D-2466 Pvc" de PAVCO como se ve en la siguiente imágen:

![image](https://user-images.githubusercontent.com/64372371/203583651-51b62e79-2e7d-4d8c-b09e-a806d6162a24.png)

Ya con este codo en físico, se dirige a las librerías de Traceparts y se consigue el equivalente al codo en formato .ipt. A continuación se evidencia una imágen de dicho modelado.

![image](https://user-images.githubusercontent.com/64372371/203583669-ace78a8e-4f17-4e3d-bbe6-18ee35f8ba15.png)

Se puede descargar esta pieza en el siguiente enlace: [Click aquí](https://www.traceparts.com/es/product/cepex-codo-45deg-encolar-hembra-serie-metrica-up02sf-d16-code16307?CatalogPath=TRACEPARTS%3ATP07003005&Product=32-18022005-099264&PartNumber=05%2002%20016)

De este modo, ya se puede unir el codo con las demás piezas en el modelado.

### Acople codo-ventosa

Para realizar el acople entre el codo y la ventosa, se va a usar el propio acople entre la ventosa y la manguera para poder hacer acción de agarre mediante dos piezas, las cuales se van a unir con 4 tornillos M3 los cuales son capaces de mantener rígida la ventosa y así evitar movimientos indeseados en esta.

El modelado de las dos piezas se muestra a continuacion:

![Modelo acople codo-ventosa](https://github.com/danielCamiloP/ProyectoRobotica/blob/main/CAD/PortaHerramienta/Imagenes/base%201.png?raw=true)
![Modelo acople-tapa codo-ventosa](https://github.com/danielCamiloP/ProyectoRobotica/blob/main/CAD/PortaHerramienta/Imagenes/base%202.png?raw=true)

Como se puede evidenciar, existe un quinto agujero en la tapa para poder añadir una antena para definir un segundo TCP en caso de ser necesario.

Las medidas de las dos piezas se muestra a continuación:

![Medidas base agarre ventosa](https://user-images.githubusercontent.com/64372371/204060286-10645fe3-4310-43fc-b638-42a44249d941.png)
![Medidas tapa agarre ventosa](https://user-images.githubusercontent.com/64372371/204060293-f5092195-4508-4fdf-a1d9-d33e6d504d8a.png)


#### Impresión 3D

A partir de estas configuraciones, se realiza el proceso de impresión 3D en PLA de estas dos piezas con la misma configuración de la pieza pasada:

![base agarre ventosa](https://user-images.githubusercontent.com/64372371/204058892-273993e6-592a-45b5-ac47-efa9cd5f2801.png)
![tapa agarre ventosa](https://user-images.githubusercontent.com/64372371/204058958-8cf53945-b721-457c-aaf0-a19eb4ab0e00.png)


### Conjunto porta herramienta

Con base en todas las piezas mencionadas hasta este momento, se realiza el ensamble físico de este, y se miden con un calibrador pie de rey, las distancias al centro de la base, ya que estas serán tenidas en cuenta para el modelado.

![image](https://user-images.githubusercontent.com/64372371/204055852-11015e09-ce1d-4856-9da9-2f4431b44cc2.png)

Como se puede evidenciar, el diámetro del acomple ventosa-manguera terminó siendo mayor al diámetro de cierre de acople de agarre de la ventosa con el fin de que no genere juego y mediante una lima se pueda remover el material suficiente, sin embargo mediante el uso de los tornillos, se logra ajustar adecuadamente la ventosa y no fue necesario remover demasiado material.

Dicho esto, se tienen coordenadas del TCP (centro de la ventosa) de 116mm de altura, y 6mm de distancia radial al centro de la base, además de una rotación de 45° entre el eje Z del plato y de la ventosa.

A partir de estas coordenadas del TCP, se realizan los ajustes necesarios entre las uniones de cada uno de los componentes con el fin de coincidir lo más posible entre la realidad y el modelado para luego ser exportado a Robot Studio.

![image](https://user-images.githubusercontent.com/64372371/203583700-d8cf30a6-35c1-4ec1-ba2b-b0f0eb427318.png)

Con este modelado, se exporta el portaherramienta, junto con la ventosa, a un archivo .SAT que será utilizado como la herramienta en Robot Studio.
***
