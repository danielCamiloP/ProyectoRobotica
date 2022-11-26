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
#Modelado en RobotStudio

Se arma el espacio de trabajo a usar en el proyecto. Se busca que la placa base y la base de las piezas queden alineadas a los ejes 'x' y 'y'.

![image](https://user-images.githubusercontent.com/42346344/204063663-1197f1b0-440e-4e3b-9125-50467227c81a.png)

Luego se crean los puntos a usar en las trayectorias. Primero se establece un punto Home (Todos los actuadores en posición 0), luego se establecen puntos de agarre para cada pieza(Px_Porta). Para ello tomamos de referencia el pequeño agujero incluido en cada uno de los modelos de la placa de base. Posteriormente se situan puntos de aproximación. Estos puntos estarán situados a una cierta distancia vertical de cada uno de los puntos de agarre correspondientes(Px_Alto).  

Despúes y de la misma manera se ubican puntos de liberar piezas en los modelos de pieza ubicados en la placa de montaje (Px_Base) y así mismo se sitúan puntos de aproximación sobre los anteriores a una cierta distancia vertical (Px_BAlto).

Ahora para cada pieza se crea una trayectoria que pasa por el punto de aproximación de agarre,  el punto de agarre, el punto de aproximación de agarre, el punto de aproximación de ensamble, el punto de ensamble y el punto de aproximación de ensamble. Este orden con el fin de que no se muevan las placas de base o ensamble debido a alguna fuerza horizontal aplicada por la pieza agarrada. En las siguientes imágenes se pueden ver las trayectorias a implementar:
![image](https://user-images.githubusercontent.com/42346344/204070806-8dbcb703-91c0-4ea3-8e3d-20c54f8dc578.png)
![image](https://user-images.githubusercontent.com/42346344/204070815-4b07d2f3-14b7-457a-b652-b6f397fe2245.png)
![image](https://user-images.githubusercontent.com/42346344/204070827-a3b0212b-5571-4c37-a4d0-166851f43817.png)
![image](https://user-images.githubusercontent.com/42346344/204070840-65e68e1a-b3c4-4e6b-81f1-55313dd73573.png)
![image](https://user-images.githubusercontent.com/42346344/204070847-0b7f90a4-205d-46ce-ac17-10d20d0406eb.png)
![image](https://user-images.githubusercontent.com/42346344/204070860-39bbac06-fc71-4df7-9776-8c9ac5ce948d.png)
 
En cada una de estas trayectorias se incluyen algunas instrucciones intermedias que permiten el control de la válvula que acciona o libre la ventosa destinada a agarrar cada pieza. La válvula a utilizar requiere de dos señales digitales, cada una correspondiente a una bobina que sitúa la válvula en una de sus dos posiciones. La salida digital 1 ajusta la válvula física para que la ventosa empieze a succionar. La salida digital 2 ajusta la válvula física para que la ventosa deje de succionar. Cada vez que se llega a un punto de agarre se espera a que se active la entreda digital 1(Botón accionado por operario), para luego activar la salida digital 1 y rápidamente desactivar la salida 1, un pulso que no debe ser muy corto, ya que en caso de ser muy corto, la bobina en la válvula no tendría el tiempo suficiente para cambiar la posición. Luego, al llegar al punto de ensamble, se vuelve a esperar hasta la activación de la entrada digital 1, se activa la salida digital 2 y se desactiva casi al instante la salida digital 2. El código en RAPID de una trayectoria se vería de la siguiente manera:
~~~
 PROC Path_Px()
  MoveAbsJ HomeHerramienta,v150,z10,Tool_AJDJ\WObj:=BaseG;
  MoveL Px_Alto,v150,z10,Tool_AJDJ\WObj:=Portapiezas;
  MoveL Px_Porta,v50,z10,Tool_AJDJ\WObj:=Portapiezas;
  WaitDI DI_01,1;
  SetDO DO_01,1;
  WaitTime 0.05;
  SetDO DO_01,0;
  MoveL Px_Alto,v50,z10,Tool_AJDJ\WObj:=Portapiezas;
  MoveL Px_BAlto,v150,z10,Tool_AJDJ\WObj:=BaseG;
  MoveL Px_Base,v50,z10,Tool_AJDJ\WObj:=BaseG;
  WaitDI DI_01,1;
  SetDO DO_02,1;
  WaitTime 0.05;
  SetDO DO_02,0;
  MoveL Px_BAlto,v50,z10,Tool_AJDJ\WObj:=BaseG;
ENDPROC~~~
 
Luego se incluyen en orden cada una de las trayectorias anteriores en el procedimiento principal (main). Al inicio de la función principal, se incluye un procedimiento para llegar a la posición de Home luego de que se detecte la activación de la entrada digital 1. Luego de llegar a home y volver a accionar el botón, se inicia el proceso de ensamble, que son los 6 procedimientos definidos anteriormente. Al finalizar los 6 procedimientos, el manipulador vuelve a desplazarse a la posición Home y se activa la salida digital 3, que consta de la bombilla que se debe encender al finalizar el proceso de ensamblado. Adicionalmente se incluyen la instrucciones _SpyArt_y _SyStop_para registrar en la simulación el tiempo que demora el manipulador en llevar a cabo el ensamblado. El código del procedimiento principal es el siguiente:

~~~PROC main()
        SpyStart "HOME:/spy.log";
        SetDO DO_03,0; 
        WaitDI DI_01,1; 
        ToHome; 
        WaitDI DI_01,1;
        Path_P1;
        Path_P2;
        Path_P3;
        Path_P4;
        Path_P5;
        Path_P6;
        ToHome;
        SetDO DO_03,1;
        SpyStop;
        Break;
    ENDPROC~~~
## Proceso de ensamble
### Ensamble manual
Como una primera prueba, se buscó realizar el ensamble del gripper empleando una sola mano que tomara las piezas, y así poder determinar dos preguntas: ¿Es fácil colocar las piezas en la base de ensamble?, y ¿Cuál es el mejor orden de armado para el gripper? En el video del proyecto se detalla como se realizó este ensamble, y se confirma que es posible que el manipulador ensamble el gripper, así como el orden adecuado, el cual fue indicado en las piezas usando lápiz. Una vez se tuvo ensamblado el gripper, se probó su funcionamiento, evidenciando que sería necesario lubricar las ranuras de los dedos, así como el pistón para permitir un movimiento suave y fácil de realizar.

https://user-images.githubusercontent.com/37418973/204070414-a6842f20-201e-49cb-b4ad-e968ac367d56.mp4

El siguiente paso a seguir, fue realizar el ensamble nuevamente, empleando la ventosa en su portaherramienta, y el sistema neumático. Esto permitiría comprobar que los puntos de contacto de la herramienta con las piezas sería adecuado, así como poder comprobar el funcionamiento de las salidas digitales del sistema robótico. Luego de realizar la prueba, se confirma que la herramienta es funcional, con lo que se procedió a realizar el ensamble automatizado.

https://user-images.githubusercontent.com/37418973/204070880-ae64a9b9-35ac-420e-b12c-e33eebf04b95.mp4

### Ensamble automatizado

El proceso de ensamble automatizado inició con la colocación y armado del sistema neumático sobre el manipulador, fijando la electroválvula y el bleeder por medio de cinta, y asegurándose de que las conexiones entre los distintos componentes no tuvieran fugas. Se empleó manguera de 8mm entre la salida de aire del manipulador y la electroválvula, manguera de 6mm entre la electroválvula y el venturi, y finalmente manguera de 8mm entre el venturi y la ventosa, teniendo cuidado de que la manguera no se enredara alrededor del brazo. Durante este proceso, también se instaló la herramienta en el plato portaherramienta.

![image](https://user-images.githubusercontent.com/37418973/204070771-3695007a-58a7-412b-89d1-2c8d12db4f07.png)

Posterior a verificar la succión del sistema, se procedió a realizar una ejecución del código de RobotStudio en vacío, para así poder verificar la colocación de los WorkObjects del programa (la base porta piezas y la base de ensamble), y observar que toda la rutina se ejecutó sin fallas. Una vez se completó el programa en vacío, se posicionaron las bases dentro del espacio de trabajo, deteniendo el programa en el momento en que se iba a tomar la primer pieza del gripper. Empleando esto, se calibró la altura del WorkObject de ambas bases, así como su posición. Este mismo proceso fue realizado con la base de ensamble, colocando la pieza sobre la base de enamble y colocando tornillos para poder obtener una buena alineación. 

Con los workobjects alineados, se ejecutó la rutina de ensamblado en su totalidad, sin colocar tornillos en la base de ensamble. El resultado de este primer proceso fue satisfactorio, salvo por unos offset en la ubicación de las piezas. Esto indicó que sería necesario trabajar el WorkObject de la base de ensamble, separado del primero. 

![image](https://user-images.githubusercontent.com/37418973/204069280-126bdfd9-d6cb-4204-8a72-753c411ad0a9.png)

Luego de corregir este error, y recalibrar la posición de los WorkObject, se ejecutó el código en vacío una vez más, para por último realizar una ejecución con tornillos en la base de ensamble. Luego de afinar aun mejor la posición de la base de ensamble, se obtuvo un proceso de ensamblado satisfactorio, como se muestra en el video del proyecto.

https://user-images.githubusercontent.com/37418973/204070702-d189692a-3cbe-4cb5-9cc1-4ff5a17a959c.mp4
