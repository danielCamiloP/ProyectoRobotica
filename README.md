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


## Video del proyecto


A continuación se muestra la imágen con el enlace para dirigirse al video en YouTube

[![image](https://user-images.githubusercontent.com/64372371/204072583-d9271273-bc38-4886-89ba-8fc4792ca87a.png)
](https://youtu.be/mKOnXZ3IoE4)


A continuación se prosigue con toda la explicación y documentación del proyecto.

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

A continuación se muestran físicamente las piezas luego de realizar el corte láser en MDF 5mm por separado y ensambladas

![image](https://user-images.githubusercontent.com/64372371/204057729-4cb47637-83e5-4d4e-a503-ef2a3b484b69.png)

![image](https://user-images.githubusercontent.com/64372371/204072668-7a889c3b-b23b-42b5-8795-3033901a8261.png)



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
## Modelado en RobotStudio

Para realizar el modelo en RobotStudio se genera una estación de trabajo y se ubica en ella el brazo a utilizar, en este caso el IRB 140. Contando con la estación de trabajo y el brazo, se procede a generar el controlador y activarlo. Con los preliminares listos, se comienza a modelar el sistema para generar las trayectorias. El primer paso es agregar la herramienta, para ello se importa la geometría de esta y se ajusta el respectivo TCP con orientación de 45 grados en el eje “Y” y 6 milímetros de desfase en “X” y 160 en “z”. 

Con la herramienta ya asociada al robot, se definen los objetos de trabajo, en este caso dos, uno para la parte que tiene las piezas del gripper, y otro para la base en la cual se realizará el ensamblaje, y se definen sistemas coordenados para cada uno con el método de los tres puntos, destacando que los objetos se ubican frente al robot, con las pinzas orientadas hacia este, y un desfase de altura de 277 milímetros debido a la ubicación en físico a dicha altura.

![image](https://user-images.githubusercontent.com/42346344/204063663-1197f1b0-440e-4e3b-9125-50467227c81a.png)

Con todo y lo anterior, se proceden a crear 2 posiciones de ejes claves en el modelo, de tipo Home, la primera el Home de laboratorio, con todas las articulaciones en 0°, y la segunda el Home de Herramienta, en el cual la herramienta queda perpendicular al plano de las placas, con todas las articulaciones en 0° a excepción de la quinta con 45° por la orientación del codo de la herramienta. Y luego se crean los puntos de las trayectorias, creados de a 4 por cada pieza, 2 en la placa portapiezas y 2 en la base. Para los de la placa portapiezas se tienen P#_Porta_ como el punto en el cual toca la pieza y se genera la succión, y P#_Alto_ como un punto equivalente al anterior, pero con un offset en “Z”, esto con el fin de que no se ataque la pieza en diagonal y no se desplace y se afecte la precisión del programa. Para los de la base se tiene algo similar, solo que se tratan de P#_ Base_ y de P#_Balto .

Ahora bien, con los puntos definidos, se tienen las señales digitales, en el presente caso, se tienen comandos de espera para una señal digital de entrada asignada a un botón que permita controlar la succión de las piezas, y se tienen 3 señales digitales de salida, un piloto que informa sobre el final del proceso, y dos señales que controlan la activación o desactivación de la válvula y conmutan. Se tienen, así pues, las siguientes trayectorias para el ensamblaje del gripper:


![image](https://user-images.githubusercontent.com/42346344/204070806-8dbcb703-91c0-4ea3-8e3d-20c54f8dc578.png)
![image](https://user-images.githubusercontent.com/42346344/204070815-4b07d2f3-14b7-457a-b652-b6f397fe2245.png)
![image](https://user-images.githubusercontent.com/42346344/204070827-a3b0212b-5571-4c37-a4d0-166851f43817.png)
![image](https://user-images.githubusercontent.com/42346344/204070840-65e68e1a-b3c4-4e6b-81f1-55313dd73573.png)
![image](https://user-images.githubusercontent.com/42346344/204070847-0b7f90a4-205d-46ce-ac17-10d20d0406eb.png)
![image](https://user-images.githubusercontent.com/42346344/204070860-39bbac06-fc71-4df7-9776-8c9ac5ce948d.png)
 
La velocidad de las trayectorias se da como 150 mm/s cuando se trabaja en desplazamientos entre puntos altos de las placas, y 50 mm/s cuando son movimientos de aproximación a estas, mientras que la zona siempre se mantiene en 10. Considerando dichas definiciones, el código RAPID para una trayectoria arbitraria se define como:

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
ENDPROC 
~~~
 
Finalmente, se añaden todas las trayectorias al Main, incluyendo el encendido del piloto final del programa, y el retorno a Home de Laboratorio, y se añaden las instrucciones `SpyStart` y `SpyStop` para general un .log que contiene el tiempo de cada instrucción y general de la simulación, y la instrucción Break que evita que se repita el programa, resultando en un Main:

~~~
PROC main()
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
    ENDPROC 
~~~

Cabe destacar que el programa solicita que se pulse le botón también para el inicio general y que la primera trayectoria que ejecuta es ir al Home de Laboratorio. 

## Proceso de ensamble
### Ensamble manual
Como una primera prueba, se buscó realizar el ensamble del gripper empleando una sola mano que tomara las piezas, y así poder determinar dos preguntas: ¿Es fácil colocar las piezas en la base de ensamble?, y ¿Cuál es el mejor orden de armado para el gripper? En el video del proyecto se detalla como se realizó este ensamble, y se confirma que es posible que el manipulador ensamble el gripper, así como el orden adecuado, el cual fue indicado en las piezas usando lápiz. Una vez se tuvo ensamblado el gripper, se probó su funcionamiento, evidenciando que sería necesario lubricar las ranuras de los dedos, así como el pistón para permitir un movimiento suave y fácil de realizar.

https://user-images.githubusercontent.com/37418973/204070414-a6842f20-201e-49cb-b4ad-e968ac367d56.mp4

El siguiente paso a seguir, fue realizar el ensamble nuevamente, empleando la ventosa en su portaherramienta, y el sistema neumático. Esto permitiría comprobar que los puntos de contacto de la herramienta con las piezas sería adecuado, así como poder comprobar el funcionamiento de las salidas digitales del sistema robótico. Luego de realizar la prueba, se confirma que la herramienta es funcional, con lo que se procedió a realizar el ensamble automatizado.

https://user-images.githubusercontent.com/37418973/204070880-ae64a9b9-35ac-420e-b12c-e33eebf04b95.mp4


Imágen del montaje en ensamble manual:

![image](https://user-images.githubusercontent.com/64372371/204072294-604dbbb6-bc8b-4bcc-8b03-30e31001ec5e.png)


### Ensamble automatizado

El proceso de ensamble automatizado inició con la colocación y armado del sistema neumático sobre el manipulador, fijando la electroválvula y el bleeder por medio de cinta, y asegurándose de que las conexiones entre los distintos componentes no tuvieran fugas. Se empleó manguera de 8mm entre la salida de aire del manipulador y la electroválvula, manguera de 6mm entre la electroválvula y el venturi, y finalmente manguera de 8mm entre el venturi y la ventosa, teniendo cuidado de que la manguera no se enredara alrededor del brazo. Durante este proceso, también se instaló la herramienta en el plato portaherramienta.

![image](https://user-images.githubusercontent.com/37418973/204070771-3695007a-58a7-412b-89d1-2c8d12db4f07.png)

Posterior a verificar la succión del sistema, se procedió a realizar una ejecución del código de RobotStudio en vacío, para así poder verificar la colocación de los WorkObjects del programa (la base porta piezas y la base de ensamble), y observar que toda la rutina se ejecutó sin fallas. Una vez se completó el programa en vacío, se posicionaron las bases dentro del espacio de trabajo, deteniendo el programa en el momento en que se iba a tomar la primer pieza del gripper. Empleando esto, se calibró la altura del WorkObject de ambas bases, así como su posición. Este mismo proceso fue realizado con la base de ensamble, colocando la pieza sobre la base de enamble y colocando tornillos para poder obtener una buena alineación. 

Con los workobjects alineados, se ejecutó la rutina de ensamblado en su totalidad, sin colocar tornillos en la base de ensamble. El resultado de este primer proceso fue satisfactorio, salvo por unos offset en la ubicación de las piezas. Esto indicó que sería necesario trabajar el WorkObject de la base de ensamble, separado del primero. 

![image](https://user-images.githubusercontent.com/37418973/204069280-126bdfd9-d6cb-4204-8a72-753c411ad0a9.png)

Luego de corregir este error, y recalibrar la posición de los WorkObject, se ejecutó el código en vacío una vez más, para por último realizar una ejecución con tornillos en la base de ensamble. Luego de afinar aun mejor la posición de la base de ensamble, se obtuvo un proceso de ensamblado satisfactorio, como se muestra en el video del proyecto.

https://user-images.githubusercontent.com/37418973/204070702-d189692a-3cbe-4cb5-9cc1-4ff5a17a959c.mp4

Imágen en montaje asistido:

![image](https://user-images.githubusercontent.com/64372371/204072681-a41d0ed8-b36d-4e3e-985c-733fcfae7ce7.png)

Como se puede evidenciar, se logra finalizar la rutina de ensamble asistido con el IRB140, donde cabe resaltar que se tuvo una mejor precisión debido a la mejor repitivilidad del IRB140 en comparación de un operario manual. Los tiempos de ejecución también pudieron haber sido mucho más reducidos, sin em bargo por fines académicos, se utilizaron velocidades bajas y paradas del brazo en cada trayectoria con el fin de no ocasionar inconvenientes con las piezas, herramienta y el robot.



## Conclusiones

* Se diseñó un gripper paralelo de 6 piezas capaz de realizar el agarre de piezas sencillas.
* Se realizó un proceso de ensamblaje asistido del gripper mediante simulación en Robotstudio e implementado físicamente en el LabSIR.
* La repetibilidad y tiempos de ensamblaje de un proceso asistido son considerablemente mejores que un proceso de ensamblaje manual.
* La calibración de herramientas y Workobjects en el laboratorio son clave en el proceso de ensamblaje, ya que este va a determinar la correspondencia con el resultado de simulación.
