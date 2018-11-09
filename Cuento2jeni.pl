cazador(arturo).
cazador(juan).
cazador(pedro).
cazador(chris).
cazador(manuel).
cazador(josue).

villano(hombre_lobo, carnivoro).
villano(momia, no_carnivoro).
villano(bruja,fea).
villano(vampiro,chupasangre).
villano(ladron,malvado).
villano(mujer_lobo,carnivora).

niña(mabel).
niña(rosita).
niña(marisol).
niña(rocio).
niña(carla).
niña(perla).

hada(campanita).
hada(jeni).
hada(patricia).
hada(susi).
hada(joceline).
hada(arieny).

reina(ella, bonita).
reina(isabel, fea).
reina(blanca_nieves,valiente).
reina(malefica,poderosa).
reina(aurora,hermosa).
reina(tiana,sapo).

princesa(maria).
princesa(airam).
princesa(maddie).
princesa(soledad).
princesa(estefania).
princesa(carolina).

heroe(oscar,valiente).
heroe(juan,valiente).
heroe(erick,fuerte).
heroe(francisco,comelon).
heroe(luis,dormilon).
heroe(carlos,campesino).

tiene_arboles(bosque).
tiene_animales(bosque).
asusta(bosque).
es_grande(castillo).
es_bonito(castillo).

/*Reglas Modelo de Mundo*/

lo_mata(Hombre,Monstruo):-
    cazador(Hombre),
    villano(Monstruo,carnivoro).

sobrevive(Mujer,Niña):-
    hada(Mujer),
    reina(Niña,bonita). %a lo mejor hacer una condicion de Niña(Niña). algo asi

/*Reglas Conocimiento Planificación*/
%Hombre mujer castillo y tiene que decir que final
cuento_prueba(Hombre,Mujer,Monstruo,Lugar):- cazador(Hombre),
                             princesa(Mujer),
                             es_bosque(Lugar),
                             se_casan(Mujer,Hombre),
                             write("El principe cazador "),write(Hombre), write(" y la princesa "),write(Mujer),write(" se casan felizmente con todos sus familiares en el "),write(Lugar);

                             villano(Monstruo,carnivoro),
                               es_castillo(Lugar),
                               ganan(Hombre,Monstruo),
                               write("El cazador "), write(Hombre), write(" venció al horrible villano  "), write(Monstruo), write(", mata al villano, gana la batalla y se queda a vivir en el "), write(Lugar).

cuento_prueba2(Hombre,Monstruo,Lugar):- cazador(Hombre),
                               villano(Monstruo,carnivoro),
                               es_castillo(Lugar),
                               ganan(Hombre,Monstruo),
                               write("El cazador "), write(Hombre), write(" venció al horrible villano  "), write(Monstruo ), write(", mata al villano, gana la batalla y se queda a vivir en el "), write(Lugar).



se_casan(Mujer,Principe):-
    princesa(Mujer),
    heroe(Principe,valiente).

no_son_felices(Mujer,Niña):-
    madrastra(Mujer,malvada),
    hija(Niña).

ganan(Hombre,Monstruo):-
    cazador(Hombre),
    villano(Monstruo,carnivoro).

/*Reglas Conocimiento Social*/

es_castillo(Lugar):-es_grande(Lugar),
                   es_bonito(Lugar).

es_bosque(Lugar):-tiene_arboles(Lugar),
                  asusta(Lugar),
                  tiene_animales(Lugar).







