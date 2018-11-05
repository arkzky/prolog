cazador(arturo).
cazador(juan).

villano(hombre_lobo, carnivoro).
villano(momia, no_carnivoro).
villano(bruja,fea).

niña(mabel).

hada(campanita).
hada(jeni).

reina(ella, bonita).
reina(isabel, fea).

princesa(maria).
princesa(airam).

heroe(oscar,valiente).
heroe(juan,valiente).
%heroe(luis, valiente).
%
tiene_arboles(bosque).
tiene_animales(bosque).

/*Reglas Modelo de Mundo*/

lo_mata(Hombre,Monstruo):-
    cazador(Hombre),
    villano(Monstruo,carnivoro).

sobrevive(Mujer,Niña):-
    hada(Mujer),
    reina(Niña,bonita). %a lo mejor hacer una condicion de Niña(Niña). algo asi

/*Reglas Conocimiento Planificación*/
%Hombre mujer castillo y tiene que decir que final
cuento_prueba(Hombre,Mujer,Lugar):- cazador(Hombre),
                             princesa(Mujer),
                             es_bosque(Lugar),
                             se_casan(Mujer,Hombre),
                             write("El principe cazador "),write(Hombre), write(" y la princesa "),write(Mujer),write(" se casan felizmente con todos sus familiares en el "),write(Lugar).


se_casan(Mujer,Principe):-
    princesa(Mujer),
    heroe(Principe,valiente).

no_son_felices(Mujer,Niña):-
    madrastra(Mujer,malvada),
    hija(Niña).

ganan(Hombre,Monstruo):-
    cazador(Hombre),
    villano(Monstruo,fea).

/*Reglas Conocimiento Social*/

es_casillo(Lugar):-es_bonito(Lugar),
                   es_grande(Lugar).

es_bosque(Lugar):-tiene_arboles(Lugar),
                  tiene_animales(Lugar).




