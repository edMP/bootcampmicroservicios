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

Docker-compose nos permite manipular múltiples contenedores, definiendo cada uno de que imagen debe trabajar en que puerto se debe abrir y tras características. 

Con docker-compose up se ejecutara y levantara todos los contenedores que estén indicados dentro del documento. 

Al igualq ue con docker run podemos ahcer docker-compose up –d para que se ejecuten en segundo plano  

Con docker ps podremos verlos activos 

Si queremos bórralos todos a la vez usaremos docker stop $(docker ps –q) ya que ps –q nos da solo los identificadores de los conetedores que estén activos. 

Con docker registre crearemos un repositorio local de los contenedores que queramos  

las imagenes que cree y guarde en los tgz son:
bootcamp/productservice       eduprices 

bootcamp/priceservice-mysql      eduproduct 

Bootcamp/zuulservice         eduzuul 

Bootcamp/eurekaserver     edueureka 

bootcamp/adminserver        eduadmin 

por algun motivo no me permite subirte los tgz de las imagenes asi que te doy un enelace a drive para que descarges el zip he probado a descargarlo con otro ordenador 
y no he tenido problema.  https://drive.google.com/file/d/1jRsacgBMLLMH4xVeRllviHsuoqifn-7z/view?usp=sharing
