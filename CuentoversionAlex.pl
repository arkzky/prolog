%% Hechos necesarios
heroe(juan,valiente).

princesa(maria).

principe(juan).



villano(hombre_lobo, carnivoro).
%villano(momia, no_carnivoro).
%villano(bruja,fea).
%villano(vampiro,chupasangre).
%villano(ladron,malvado).
%villano(mujer_lobo,carnivora).

niña(rosita).

%para los lugares
tiene_arboles(bosque).
tiene_animales(bosque).
asusta(bosque).

es_grande(castillo).
es_bonito(castillo).

es_bonito(pueblo).
tiene(pueblo,casas).

no_hay_agua(desierto).
nadie_vive(desierto).

tiene_palmeras(isla).
tiene_playa(isla).

%% Hechos extra
cazador(juan).



%finales
es_tragico(tragico).
es_alegre(alegre).
es_comico(comico).
es_inesperado(sorpresa).
es_triste(triste).


/*Reglas Modelo de Mundo*/

cazador_muere(Hombre,Monstruo,Lugar):-
    cazador(Hombre),
    villano(Monstruo,carnivoro),
    es_bosque(Lugar).


%se_conocen(juan,maria).
se_conocen(Hombre,Mujer):-va_castillo(Hombre),
                          saluda(Mujer,Hombre).
va_castillo(juan).
saluda(maria,juan).
tienen_problemas(juan,maria).
huye(maria).
esta_triste(juan).
regresa(maria).
se_enamoran(juan,maria).
vence(juan,hombre_lobo).

vio(juan,hombre_lobo).
mata(hombre_lobo,guardia).
persigue(juan,hombre_lobo).
se_escapa(hombre_lobo,bosque).
pone_trampa(juan,hombre_lobo).
atrapa(juan,hombre_lobo).

se_encuentran(juan,maria).
convierten_amigos(Hombre,Mujer):-princesa(Mujer),
                                 principe(Hombre).
come(maria,manzana_embrujada).
se_desmaya(maria).
investigar_sobre(juan,manzana_embrujada).
es(manzana_embrujada,manzana_de_la_discoria).
la_beso(juan,maria).
desperto(maria).
viven_felices(juan,maria).


se_casan(Mujer,Principe):-
    princesa(Mujer),
    heroe(Principe,valiente).

no_son_felices(Hombre,Monstruo,Lugar):-
    cazador_muere(Hombre,Monstruo,Lugar).

ganan(Hombre,Monstruo):-
    cazador(Hombre),
    villano(Monstruo,carnivoro),
    vence(Hombre,Monstruo).

/*Reglas Conocimiento Planificacion*/
%Hombre mujer castillo y tiene que decir que final
cuento(Hombre,Mujer,Lugar,Final):-
                            cazador(Hombre),
                            princesa(Mujer),
                            es_castillo(Lugar),
                            %hechos intermedios
                            se_encuentran(Hombre,Mujer),
                            tienen_problemas(Hombre,Mujer),
                            huye(Mujer),
                            esta_triste(Hombre),
                            regresa(Mujer),
                            se_enamoran(Hombre,Mujer),
                            se_casan(Mujer,Hombre),
                            es_alegre(Final),
                            write("Habia una vez dos jovenes, un cazador llamado Juan y una dulce princesa llamada Maria, la cual vivia en un gran Castillo, se conocieron porque Juan fue al castillo y Maria lo saludo, desde ese entonces se volvieron amigos, pero por malos entendidos tuvieron problemas, eso ocasiono que Maria huya, dejando a Juan muy triste, pasaron los dias y Juan perdia la esperanza de que Maria regresara, fue cuando entonces ella regreso, en ese momento ambos se dieron cuenta que no podian vivir sin el otro y que estaban enamorados, entonces decidieron casarse en el hermoso Castillo en le cual Maria vivia. Fin");
                            cazador(Hombre),
                            princesa(Mujer),
                            es_castillo(Lugar),
                            %hechos intermedios
                            se_encuentran(Hombre,Mujer),
                            tienen_problemas(Hombre,Mujer),
                            huye(Mujer),
                            esta_triste(Hombre),
                            regresa(Mujer),
                            se_enamoran(Hombre,Mujer),
                            se_casan(Mujer,Hombre),
                            es_alegre(Final),
                            write("Habia una vez dos criaturas, un cazador llamado Juan y una dulce princesa llamada Maria, la cual vivia en un gran Castillo, se conocieron porque Juan fue al castillo y Maria lo saludo, desde ese entonces se volvieron amigos, pero por malos entendidos tuvieron problemas, eso ocasiono que Maria huya, dejando a Juan muy triste, pasaron los dias y Juan perdia la esperanza de que Maria regresara, fue cuando entonces ella regreso, en ese momento ambos se dieron cuenta que no podian vivir sin el otro y que estaban enamorados, entonces decidieron casarse en el hermoso Castillo en le cual Maria vivia. Fin");
                            %write("El principe cazador "),write(Hombre), write(" y la princesa "),write(Mujer),write(" se casan felizmente con todos sus familiares en el "),write(Lugar).
                             principe(Hombre),
                             princesa(Mujer),
                             es_bosque(Lugar),
                             %hechos intermedios
                             se_conocen(Hombre,Mujer),
                             convierten_amigos(Hombre,Mujer),
                             come(Mujer,manzana_embrujada),
                             se_desmaya(Mujer),
                             investigar_sobre(Hombre,manzana_embrujada),
                             es(manzana_embrujada,manzana_de_la_discoria),
                             la_beso(Hombre,Mujer),
                             desperto(Mujer),
                             viven_felices(Hombre,Mujer),
                             es_alegre(Final),
                             write("Habia una vez una joven princesa llamada Maria que vivia en el bosque, en el mismo lugar conocio a un principe llamado Juan, rapidamente se hicieron amigos, pasaban mucho tiempo juntos en el bosque, hasta que un dia, Maria encontro una manzana, ella penso que era una manzana normal, pero estaba equivocada, la manzana estaba embrujada, al comerla se desmayo, Juan al ver eso, entro en panico, luego de tranquilizarse un poco analizo la situacion y comenzo a investigar sobre la manzana embrujada, despues de su investigacion descubrio que era la manzana de la discordia y que era una manzana muy poderosa, al parecer la unica forma de recuperar a su amiga era recibir el beso del verdadero amor, el nunca habia visto a su amiga de esa forma y dudo si su beso funcionaria, pero no tenia nada que perder, asi que se acerco a ella, suavemente la beso en los labios, al observar si funciono, veia que no pasaba nada, al alejarse desilusionado y triste, escucho una dulce y suave voz, era Maria quien se habia despertado por el beso, Juan al ver que estaba despierta, corrio hacia ella y la abrazo con todas sus fuerzas, estaba tan feliz que comenzo a llorar, la Princesa, al ver su peculiar reaccion pregunto, ¿Por que estas tan triste?, a lo que Juan respondio, ¿Acaso no recuerdas nada? En fin, no importa, solo se que quiero pasar el resto de mis dias contigo. Fin").



cuento(Hombre,Monstruo,Lugar,Final):-
                            cazador(Hombre),
                            villano(Monstruo,carnivoro),
                            es_castillo(Lugar),
                            %hechos intermedios
                            va_castillo(Hombre),
                            vio(Hombre,Monstruo),
                            mata(Monstruo,guardia),
                            persigue(Hombre,Monstruo),
                            se_escapa(Monstruo,bosque),%fue al bosque
                            pone_trampa(Hombre,Monstruo),
                            atrapa(Hombre,Monstruo),
                            ganan(Hombre,Monstruo),
                            es_alegre(Final),
                            write("Habia una vez un joven cazador llamado Juan, el siempre iba  al castilo cada semana por provisiones para su casa, pero un dia al caminar por los pasillos del castillo,Juan vio un horrendo acto, un Hombre_Lobo habia atacado y matado a un guardia del castillo, en cuanto el Hombre_Lobo noto su presencia, salio corriendo, causando una persecucion entre ellos, al final el Hombre_Lobo logro escapar al bosque, Juan, decidido a hacer algo, le puso uuna trampa en el bosque, espero pacientemente durante la noche, hasta que su paciencia dio frutos, pudo atrapar al Hombre_Lobo, despues de atraparlo combatieron en un ardua lucha y al final Juan gano, celebrando su triunfo regreso al castillo con la cabeza del Hombre_Lobo como trofeo. Fin").
                            %write("El cazador "), write(Hombre), write(" vencio al horrible villano  "), write(Monstruo ), write(", mata al villano, gana la batalla y se queda a vivir en el "), write(Lugar).

cuento(Hombre,Mujer,Monstruo,Lugar,Final):-
                            princesa(Mujer),
                            no_son_felices(Hombre,Monstruo,Lugar),
                            es_tragico(Final),
                            write("El cazador "), write(Hombre), write(" fue devorado por el "), write(Monstruo ), write(" por haber estado en el "), write(Lugar), write(" y la mujer "), write(Mujer), write(" queda viuda").






/*Reglas Conocimiento Social*/

es_castillo(Lugar):-es_grande(Lugar),
                   es_bonito(Lugar).

es_bosque(Lugar):-tiene_arboles(Lugar),
                  asusta(Lugar),
                  tiene_animales(Lugar).

es_pueblo(Lugar):-tiene(Lugar,casas),
                   es_bonito(Lugar).
es_desierto(Lugar):-no_hay_agua(Lugar),
                    nadie_vive(Lugar).
es_isla(Lugar):-tiene_palmeras(Lugar),
                 tiene_playa(Lugar).







