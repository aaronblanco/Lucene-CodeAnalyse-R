
#Proporción de métodos ocultos
#(Method Hiding Factor –MHF-)

#Leemos el dataset class y recogemos NLM y NLMP. 
#Numero de métodos  y número de métodos  públicos.
NM <- luc49_Class[["NM"]];
NPM <- luc49_Class[["NPM"]];
#Restamos los métodos y de esa manera obtenemos los métodos no públicos, es decir, todos los privados.
NLMPrivados <- (NM -	NPM)
#Proporción de suma de los métodos privados.
Privado <- 1-(sum(NPM)/sum(NM));
print(Privado);

#Proporción de atributos ocultos.
#(Attribute Hiding Factor –AHF-)


#Leemos el dataset  y recogemos NA y NPA. 
#Numero de atributos (X43 ES EL NUMERO DE ATRIBUTOS)  y número de métodos  públicos.
NAtt <- luc49_Class[["X43"]];
NPA <- luc49_Class[["NPA"]];

print(NAtt);

#Restamos los atributos y de esa manera obtenemos los atributos no públicos, es decir, todos los privados.
NAPrivados <- (NAtt -	NPA)
#Proporción de suma de los atributos privados.
APrivado <- 1-(sum(NPA)/sum(NAtt));
print(APrivado);




#Proporción de métodos heredados
#(Method Inheritance Factor –MIF-)

#Leemos el dataset  
NM <- luc49_Class[["NM"]];
NLM <- luc49_Class[["NLM"]];
#Calculamos el número de métodos heredados restando el número total de métodos al número de métodos publicos locales.
HEREADOS <- (NM - NLM);
#La proporción la hacemos mediante heredados dividos entre numero de métodos totales.

MIF <- (sum(HEREADOS)/sum(NM));

print(MIF);




#Proporción de atributos heredados.
#(Attribute Inheritance Factor –AIF-)

#Leemos el dataset  
NAtt <- luc49_Class[["X43"]];
NLA <- luc49_Class[["NLA"]];
#Calculamos el número de atributos heredados restando el número total de atributos al número de atributos publicos locales.
HEREADOS <- (NAtt - NLA);
#La proporción la hacemos mediante heredados dividos entre numero de atributos totales.

MIF <- (sum(HEREADOS)/sum(NAtt));

print(MIF);

#Proporción de polimorfismo.
#Polymorphism Factor (PF)





#Proporción de acoplamiento.
#(Coupling Factor –CF-)


# Acomplamiento y numero de ancestros
CBO <- luc49_Class[["CBO"]];
NOA <- luc49_Class[["NOA"]];

numeroClases <- length(luc49_Class[["ID"]]);

NumR <- CBO-NOA;

CF <- (numeroClases - 1)/sum(NumR);
print(CF);


