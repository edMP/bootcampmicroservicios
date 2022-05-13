# bootcampmicroservicios
bootcamp docker

edauardo muriel poussa

estos días de docker me han resultado intensos es una herramienta que de primeras si el funcionamiento es correcto resulta fácil de aprender, en el caso hipotético de que no falle nada la curva de aprendizaje puede ser simple, claro está esto no pasa en el momento que empiezan a aparecer los errores resulta muy difícil sin conocimiento o sin apoyo poder avanzar en el trabajo. 

Si es cierto que existen una gran cantidad de webs que te dan información para solucionarlos, sin embargo, de igual manera identificar correctamente el problema es complicado por lo que buscar de forma correcta la información necesaria no es nada fácil, de igual manera me a resultado una herramienta muy completa y con un nivel de dificulta elevado peroa ceptable para aprender a utilizarla  

En los documentos adjuntos el Docker file solo subo uno por son muy parecido. Ya que ene estos defino la de donde se tiene que descargar la imagen con el  

From FROM openjdk:11 

Luego se le indica el puerto donde debe permanecer abierto mediante expose  

expose 8080 

 

luego con copy indicando donde guardar las copias de la imagen empeleo los * ya que al ser una imagen por servicios no tendré conflicto a la hora de referenciar al jar por lo que se ejecutara sin problemas 

 COPY *jar /jars/*jar 

Y por ultimo con cmd ejecuto el jar en cuestión de igual manera referenciados con * en lugar del nombre del archivo  

CMD java -jar /jars/*jar 

El docker compose me parece de gran utilidad a la hora de trabajar con múltiples contenedores ya que de lo contrario tendríamos que ir uno por uno levantado los, además el tenerlos unidos en un único documento hace más fácil buscarlos o modificar cualquier cosa ya que de lo contrario y en un trabajo con más carga imagino que el buscar entre las carpetas puede ser algo horrible.  como medainte el docker-compose up los levanto todos a la vez pues el comando docker stop $(docker ps –q) me a resultado de gran utilidad ya que los para todos de una sola vez y si alguno de los contendores depende de otro con este comando se evitan posibles errores. 

Los otros elementos adjuntos son las imágenes creadas 

bootcamp/productservice       eduprices 

bootcamp/priceservice-mysql      eduproduct 

Bootcamp/zuulservice         eduzuul 

Bootcamp/eurekaserver     edueureka 

bootcamp/adminserver        eduadmin 

por algun motivo no me permite subirte los tgz de las imagenes asi que te doy un enelace a drive para que descarges el zip he probado a descargarlo con otro ordenador 
y no he tenido problema.  https://drive.google.com/file/d/1jRsacgBMLLMH4xVeRllviHsuoqifn-7z/view?usp=sharing
