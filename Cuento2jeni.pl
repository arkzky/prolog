%% Hechos necesarios
heroe(oscar,valiente).
heroe(juan,valiente).
heroe(erick,fuerte).
heroe(francisco,comelon).
heroe(luis,dormilon).
heroe(carlos,campesino).
heroe(juan).


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

tiene_arboles(bosque).
tiene_animales(bosque).
asusta(bosque).
es_grande(castillo).
es_bonito(castillo).

%% Hechos extra
cazador(arturo).
cazador(juan).
cazador(pedro).
cazador(chris).
cazador(manuel).
cazador(josue).

hada(campanita).
hada(jeni).
hada(patricia).
hada(susi).
hada(joceline).
hada(arieny).




/*Reglas Modelo de Mundo*/

cazador_muere(Hombre,Monstruo,Lugar):-
    cazador(Hombre),
    villano(Monstruo,carnivoro),
    es_bosque(Lugar).

sobrevive(Mujer,Niña):-
    hada(Mujer),
    reina(Niña,bonita). %a lo mejor hacer una condicion de Niña(Niña). algo asi


/*Reglas Conocimiento Planificación*/
%Hombre mujer castillo y tiene que decir que final
cuento(Hombre,Mujer,Lugar):-  
                            cazador(Hombre),
                            princesa(Mujer),
                            es_castillo(Lugar),
                            se_casan(Mujer,Hombre),
                            write("El principe cazador "),write(Hombre), write(" y la princesa "),write(Mujer),write(" se casan felizmente con todos sus familiares en el "),write(Lugar).

cuento(Hombre,Monstruo,Lugar):- 
                            cazador(Hombre),
                            villano(Monstruo,carnivoro),
                            es_castillo(Lugar),
                            ganan(Hombre,Monstruo),
                            write("El cazador "), write(Hombre), write(" venció al horrible villano  "), write(Monstruo ), write(", mata al villano, gana la batalla y se queda a vivir en el "), write(Lugar).

cuento(Hombre,Mujer,Monstruo,Lugar):-                               
                            princesa(Mujer),
                            no_son_felices(Hombre,Monstruo,Lugar),
                            write("El cazador "), write(Hombre), write(" fue devorado por el "), write(Monstruo ), write(" por haber estado en el "), write(Lugar), write(" y la mujer "), write(Mujer), write(" queda viuda").

                          


se_casan(Mujer,Principe):-
    princesa(Mujer),
    heroe(Principe,valiente).

no_son_felices(Hombre,Monstruo,Lugar):-
    cazador_muere(Hombre,Monstruo,Lugar).


no_son_felices(Hombre,Mujer,Monstruo):-
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







