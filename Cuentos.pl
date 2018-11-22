%personajes
personaje(hombre,juan,principe).
%personaje(hombre,juan,rey).
%personaje(hombre,juan,cazador).

personaje(mujer,maria,princesa).
%personaje(mujer,maria,reina).

personaje(villano, hombre_lobo, carnivoro).
%personaje(villano,bruja,fea).
%personaje(villano,ladron,malo).

personaje(niño,miguel,valiente).
%personaje(niño,miguel,temeroso).

%personaje(niña,rosita,timida).
personaje(niña,rosita,curiosa).


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

%finales
es_alegre(alegre).
es_comico(comico).
es_sorpresa(sorpresa).
es_tragico(tragico).
es_triste(triste).

/*Reglas Conocimiento Social*/

es_castillo(Lugar):-es_grande(Lugar),
                   es_bonito(Lugar),write("en el castillo.").

es_bosque(Lugar):-tiene_arboles(Lugar),
                  asusta(Lugar),
                  tiene_animales(Lugar), write("en el bosque.").

es_pueblo(Lugar):-tiene(Lugar,casas),
                   es_bonito(Lugar),write("en el pueblo.").

es_desierto(Lugar):-no_hay_agua(Lugar),
                    nadie_vive(Lugar), write("en el desierto.").

es_isla(Lugar):-tiene_palmeras(Lugar),
                 tiene_playa(Lugar),write("en una isla.").

lugar(Lugar):-es_castillo(Lugar);
              es_bosque(Lugar);
              es_pueblo(Lugar);
              es_desierto(Lugar);
              es_isla(Lugar).

%etapas del cuento
%
% prueba(Hombre,Mujer,Villano,Niño,Lugar):-inicio(Hombre,Mujer,Lugar),inicio(Hombre,Mujer,Villano,Lugar),inicio(Hombre,Mujer,Villano,Niño,Lugar).
%


inicio(Rol1,Rol2,Rol3,Rol4,Lugar):-personaje(Rol1,juan,principe),
                                              personaje(Rol2,maria,princesa),
                                              personaje(Rol3,hombre_lobo,carnivoro),
                                              personaje(Rol4,miguel,valiente),
                                              write("Habia una vez un principe llamado juan, una princesa llamada maria quien vivia con un niño llamado miguel, los cuales vivian acechados por un hombre lobo, todos ellos vivian "),
                                              lugar(Lugar);

                                              personaje(Rol1,juan,principe),
                                              personaje(Rol2,maria,princesa),
                                              personaje(Rol3,hombre_lobo,carnivoro),
                                              personaje(Rol4,rosita,curiosa),
                                              write("Habia una vez un principe llamado juan, una princesa llamada maria quien vivia con una niña llamada rosita, los cuales vivian acechados por un hombre lobo "),
                                              lugar(Lugar);

                                              personaje(Rol1,juan,principe),
                                              personaje(Rol2,maria,princesa),
                                              personaje(Rol3,miguel,valiente),
                                              personaje(Rol4,rosita,curiosa),
                                              write("Habia una vez un principe llamado juan, una princesa llamada maria quienes cuidaban 2 niños llamados miguel y rosita, los cuales vivian "),
                                              lugar(Lugar);

                                              personaje(Rol1,juan,principe),
                                              personaje(Rol2,hombre_lobo,carnivoro),
                                              personaje(Rol3,miguel,valiente),
                                              personaje(Rol4,rosita,curiosa),
                                              write("Habia una vez un principe llamado juan quien vivia con un niño llamado miguel y  una niña llamada rosita, los cuales vivian acechados por un hombre lobo "),
                                              lugar(Lugar);

                                              personaje(Rol1,maria,princesa),
                                              personaje(Rol2,hombre_lobo,carnivoro),
                                              personaje(Rol3,miguel,valiente),
                                              personaje(Rol4,rosita,curiosa),
                                              write("Habia una vez una princesa llamada maria quien vivia con un niño llamado miguel y  una niña llamada rosita, los cuales vivian acechados por un hombre lobo "),
                                              lugar(Lugar);
                                              
%% 
                                              personaje(Rol1,juan,principe),
                                              personaje(Rol2,maria,princesa),
                                              personaje(Rol3,hombre_lobo,carnivoro),
                                              write("Habia una vez una un principe llamado juan y una princesa llamada maria, ademas de un villano que era un hombre lobo, los cuales coexistian "),
                                              lugar(Lugar);

                                              personaje(Rol1,juan,principe),
                                              personaje(Rol2,maria,princesa),
                                              personaje(Rol3,miguel,valiente),
                                              write("Habia una vez un principe llamado juan y una princesa llamada maria, los cuales cuidaban un niño llamado miguel el cual era muy valiente, ellos vivian "),
                                              lugar(Lugar);

                                              personaje(Rol1,juan,principe),
                                              personaje(Rol2,maria,princesa),
                                              personaje(Rol3,rosita,curiosa),
                                              write("Habia una vez un principe llamado juan y una princesa llamada maria, los cuales tenian una niña llamada rosita la cual era muy curiosa, ellos vivian "),
                                              lugar(Lugar);

                                              personaje(Rol1,juan,principe),
                                              personaje(Rol2,hombre_lobo,carnivoro),
                                              personaje(Rol3,miguel,valiente),
                                              write("Habia una vez un principe llamado juan, un niño llamado miguel el cual era muy valiente y ademas habia un hombre lobo, todos coexistiendo "),
                                              lugar(Lugar);

                                              personaje(Rol1,juan,principe),
                                              personaje(Rol2,hombre_lobo,carnivoro),
                                              personaje(Rol3,rosita,curiosa),
                                              write("Habia una vez un principe llamado juan, una niña llamada rosita la cual era muy curiosa y ademas habia un hombre lobo, todos coexistiendo "),
                                              lugar(Lugar);

                                              personaje(Rol1,juan,principe),
                                              personaje(Rol2,miguel,valiente),
                                              personaje(Rol3,rosita,curiosa),
                                              write("Habia una vez un principe llamado juan, un niño llamado miguel y una niña llamada rosita, ellos vivian "),
                                              lugar(Lugar);

                                              personaje(Rol1,maria,princesa),
                                              personaje(Rol2,hombre_lobo,carnivoro),
                                              personaje(Rol3,miguel,valiente),
                                              write("Habia una vez una princesa llamada maria quien vivia con un niño llamado miguel y un villano que era un hombre lobo, ellos coexistian "),
                                              lugar(Lugar);

                                              personaje(Rol1,maria,princesa),
                                              personaje(Rol2,hombre_lobo,carnivoro),
                                              personaje(Rol3,rosita,curiosa),
                                              write("Habia una vez una princesa llamada maria quien vivia con una niña llamada rosita y un villano que era un hombre lobo, ellos coexistian "),
                                              lugar(Lugar);

                                              personaje(Rol1,maria,princesa),
                                              personaje(Rol2,miguel,valiente),
                                              personaje(Rol3,rosita,curiosa),
                                              write("Habia una vez una princesa llamada maria, un niño llamado juan y una niña llamada rosita, ellos vivian "),
                                              lugar(Lugar);

                                              personaje(Rol1,hombre_lobo,carnivoro),
                                              personaje(Rol2,miguel,valiente),
                                              personaje(Rol3,rosita,curiosa),
                                              write("Habia una vez 2 niños, uno llamado miguel y otra llamada rosita, ambos coexistian con un hombre lobo "),
                                              lugar(Lugar); 

%% inicio(Rol1,Rol2,Lugar):-
personaje(Rol1,juan,principe),
                                              personaje(Rol2,maria,princesa),
                                              write("Habia una vez una princesa llamada maria y un principe llamado juan, ambos vivian "),
                                              lugar(Lugar);
                                              %write("prueba");

                                              personaje(Rol1,juan,principe),
                                              personaje(Rol2,hombre_lobo,carnivoro),
                                              write("Habia una vez un principe llamado juan y un villano despiada el cual era un hombre lobo, ambos coexistian "),
                                              lugar(Lugar);
                                              %write("prueba2");


                                              personaje(Rol1,juan,principe),
                                              personaje(Rol2,miguel,valiente),
                                              write("Habia una vez un principe llamado juan el cual cuidaba un niño llamado miguel, quien era muy valiente, ambos vivian "),
                                              lugar(Lugar);

                                              personaje(Rol1,juan,principe),
                                              personaje(Rol2,rosita,curiosa),
                                              write("Habia una vez un principe llamado juan el cual cuidaba una niña llamada rosita, quien era muy curiosa, ambos vivian "),
                                              lugar(Lugar);

                                              personaje(Rol1,maria,princesa),
                                              personaje(Rol2,hombre_lobo,carnivoro),
                                              write("Habia una vez una princesa llamada maria y un villano que era un hombre lobo, ambos coexistian "),
                                              lugar(Lugar);

                                              personaje(Rol1,maria,princesa),
                                              personaje(Rol2,miguel,valiente),
                                              write("Habia una vez una princesa llamada maria y un pequeño niño llamado miguel, ambos vivian "),
                                              lugar(Lugar);

                                              personaje(Rol1,maria,princesa),
                                              personaje(Rol2,rosita,curiosa),                                                             write("Habia una vez una princesa llamada maria y una niña llamada rosita la cual era muy curiosa, ambos vivian "),
                                              lugar(Lugar);

                                              personaje(Rol1,hombre_lobo,carnivoro),
                                              personaje(Rol2,miguel,valiente),
                                              write("Habia una vez un villano que era un hombre lobo y un pequeño niño llamado juan, quien era muy valiente, ambos coexistian "),
                                              lugar(Lugar);

                                              personaje(Rol1,hombre_lobo,carnivoro),
                                              personaje(Rol2,rosita,curiosa),
                                              write("Habia una vez un villano que era un hombre lobo y una pequeña niña llamada rosita, quien era muy curiosa, ambos coexistian "),
                                              lugar(Lugar);

                                              personaje(Rol1,miguel,valiente),
                                              personaje(Rol2,rosita,curiosa),
                                              write("Habia una vez 2 niños, uno llamado juan y otra llamada maria, ambos vivian "),
                                              lugar(Lugar).




final(Rol1,Rol2,Rol3,Rol4,Final):-es_alegre(Final),
                                                   feliz(Rol1,Rol2);

                                                   es_comico(Final),
                                                   chiste(Rol1,Rol2,Rol3,Rol4);

                                                   es_sorpresa(Final),
                                                   traicion(Rol1,Rol2,Rol3);

                                                   es_tragico(Final),
                                                   mueren(Rol1,Rol2);


                                                   es_triste(Final),
                                                   tristeza(Rol1,Rol2,Rol3).
feliz(Rol1,Rol2):-personaje(Rol1,_,_),
                            personaje(Rol2,_,_),
                            not(personaje(Rol1,hombre_lobo,_)),
                            not(personaje(Rol2,hombre_lobo,_)),
                            write("Al final el/la "),
                            write(Rol1),
                            write(" y el/la "),
                            write(Rol2),
                            write(" se vuelven amigos por todas las cosas que han pasado juntos. Fin");
                            personaje(Rol1,juan,_),
                            personaje(Rol2,maria,_),
                            not(personaje(Rol1,hombre_lobo,_)),
                            not(personaje(Rol2,hombre_lobo,_)),
                            write("Al final el/la "),
                            write(Rol1),
                            write(" y el/la "),
                            write(Rol2),
                            write(" se enamoran por todas las cosas que han pasado juntos y se terminan casando. Fin");

                            personaje(Rol1,hombre_lobo,_),
                            write("Al final el/la "),
                            write(Rol2),
                            write(" vence al villano y todos son felices por siempre. Fin");

                            personaje(Rol2,hombre_lobo,_),
                            write("Al final el/la "),
                            write(Rol1),
                            write(" vence al villano y todos son felices por siempre. Fin").

tristeza(Rol1,Rol2,Rol3):-personaje(Rol1,juan,_),
                          personaje(Rol2,maria,_),
                          write("A pesar de todo lo que pasaron juntos, el hombre decide marcharse a otro lugar dejando a la mujer sola y destrozada. Fin");
                          personaje(Rol1,_,_),
                          not(personaje(Rol1,hombre_lobo,_)),
                          write("A pesar de todo lo que paso, el/la "),
                          write(Rol1),
                          write(" decide abandonar a todos y se va muy lejos. Fin");

                          personaje(Rol2,_,_),
                          not(personaje(Rol2,hombre_lobo,_)),
                          write("A pesar de todo lo que paso, el/la "),
                          write(Rol2),
                          write(" decide abandonar a todos y se va muy lejos. Fin");

                          personaje(Rol3,_,_),
                          not(personaje(Rol3,hombre_lobo,_)),
                          write("A pesar de todo lo que paso, el/la "),
                          write(Rol3),
                          write(" decide abandonar a todos y se va muy lejos. Fin");

                          personaje(Rol1,miguel,_),
                          personaje(Rol2,rosita,_),
                          write("A pesar de todo lo que pasaron juntos, el niño decide dejar de ser amigo de la niña y se va con otra familia. Fin").

chiste(Rol1,Rol2,Rol3,Rol4):-personaje(Rol1,_,_),
                             not(personaje(Rol1,hombre_lobo,_)),
                             write("Al final el/la "),
                             write(Rol1),
                             write(" toma un libro y al lanzarlo suenan unas risas de fondo y todos terminan riendo y siendo amigos. Fin");
                             personaje(Rol2,_,_),
                             not(personaje(Rol2,hombre_lobo,_)),
                             write("Al final el/la "),
                             write(Rol2),
                             write(" toma un pato de hule y al apretarlo suenan unas risas de fondo y todos terminan contando chistes y siendo amigos. Fin");

                             personaje(Rol1,hombre_lobo,_),
                             write("Al final de todo el hombre lobo se tropieza con una cascara de platano y muere y todos vivieron felices por siempre. Fin");
                             personaje(Rol2,hombre_lobo,_),
                             write("Al final de todo el hombre lobo se tropieza con una cascara de platano y muere y todos vivieron felices por siempre. Fin");
                             personaje(Rol3,hombre_lobo,_),
                             write("Al final de todo el hombre lobo se tropieza con una cascara de platano y muere y todos vivieron felices por siempre. Fin");
                             personaje(Rol4,hombre_lobo,_),
                             write("Al final de todo el hombre lobo se tropieza con una cascara de platano y muere y todos vivieron felices por siempre. Fin").

traicion(Rol1,Rol2,Rol3):-personaje(Rol1,_,_),
                     not(personaje(Rol1,hombre_lobo,_)),
                     write("Parecia que todo saldria bien pero entonces el/la "),
                     write(Rol1),
                     write(" traiciona a todos y destruye el lugar. Fin");

                     personaje(Rol2,_,_),
                     not(personaje(Rol2,hombre_lobo,_)),
                     write("Parecia que todo saldria bien pero entonces el/la "),
                     write(Rol2),
                     write(" traiciona a todos y destruye el lugar. Fin");

                     personaje(Rol1,juan,_),
                     personaje(Rol2,hombre_lobo,_),
                     write("Parecia que el hombre habia ganado pero sin razon aparente se une con el villano y se convierte en un hombre lobo y destruyeron el lugar. Fin");

                     personaje(Rol1,miguel,_),
                     write("Repentinamente el niño saca una pocion magica de su ropa y al beberla se convirtio en un dragon, ataco a todos y se fue volando. Fin");

                     personaje(Rol2,miguel,_),
                     write("Repentinamente el niño saca una pocion magica de su ropa y al beberla se convirtio en un dragon, ataco a todos y se fue volando.");

                     personaje(Rol3,miguel,_),
                     write("Repentinamente el niño saca una pocion magica de su ropa y al beberla se convirtio en un dragon, ataco a todos y se fue volando. Fin").



mueren(Rol1,Rol2):-personaje(Rol1,_,_),
                        not(personaje(Rol1,hombre_lobo,_)),
                        write("Todo parecia que iba bien, pero por azares del destino, el/la "),
                        write(Rol1),
                        write(" muere. Fin");

                        personaje(Rol2,_,_),
                        not(personaje(Rol1,hombre_lobo,_)),
                        write("Todo parecia que iba bien, pero por azares del destino, el/la "),
                        write(Rol2),
                        write(" muere. Fin");

                        personaje(Rol1,_,_),
                        personaje(Rol2,_,_),
                        not(personaje(Rol1,hombre_lobo,_)),
                        not(personaje(Rol2,hombre_lobo,_)),
                        write("Todo parecia que iba bien, pero por azares del destino, el/la "),
                        write(Rol1),
                        write(" y el/la "),
                        write(Rol2),
                        write(" mueren. Fin").


%% Hechos necesarios
%hombre
%vive(juan,solo).
%trabaja(juan,herrero).
explora(hombre,ruinas).
busca(hombre,tesoro).
cazar(hombre,animales).
compra(hombre,espada).
domar(hombre,caballo).
correr(hombre).


%protege(juan,maria).
%salva(juan,maria).
%%regresa(juan,maria,padres).
%%le_pagan(juan,padres).

%princesa
es_infeliz(mujer).
escapa2(mujer,hogar).
se_pierde(mujer).
se_enveneda(mujer,manzana_envenenada).
hablar(mujer,animales).
regresa(mujer,hogar).


%%corre_peligro(maria).
%la_salvan(maria,juan).
%compra(maria,casa).
%vive(maria,juan,casa).

%villano
planear(villano,estrategia).
engañar(villano,habitantes).
matar(villano,un_vagabundo).
ataca(villano,entorno).
escapar(villano).
roba(villano,comida).
%desaparecer(villano).

%niña
posee(niña,espejo_magico).
entra(niña,lugar_extraño).
perderse(niña,lugar_extraño).
encuentra(niña,amigo).
la_ayuda(niña,amigo).
escapa(niña,lugar_extraño).
%este es de la niña



%llorar(niña).
%pedir_ayuda(niña,villano).
%escapar(niña,villano).
%encontrar(niña,camino).
%regresar(niña,padres).

%niño
encontrar(niño,pasasje_secreto).
es_atacado(niño,goblins).
escapo(niño,goblins).
encuentro(niño,espada).
vence(niño,goblins).
sale(niño,pasaje_secreto).

%encontrar(niño,casa).
%darse_cuenta(niño,casa,villano).
%esconderse(niño,villano).
%robar(niño,arma,villano).
%escapar(niño,casa).
%regresar(niño,padres).

%cuento(Ro1,Rol2,Rol3,Rol4,Rol5)
cuento(Rol1,Rol2,Rol3,Rol4,Lugar,Final):-inicio(Rol1,Rol2,Rol3,Rol4,Lugar),!,
                                                   final(Rol1,Rol2,Rol3,Rol4,Final);

                                                    inicio(Rol1,Rol2,Rol3,Lugar),!,
                                                    final(Rol1,Rol2,Rol3,Rol4,Final);

                                                    inicio(Rol1,Rol2,Lugar),
%                                        etapa1(),
%                                        etapa2(),
%                                        etapa3(),
                                        final(Rol1,Rol2,Rol3,Rol4,Final).
%                                        2 hechos por etapa
%
% cuento(Hombre,Mujer,Villano,Niño,Niña,Lugar,Final):-inicio(Hombre,Mujer,Villano,Lugar),
%
                                                  %  final(Hombre,Mujer,Villano,Niño,Niña,Lugar,Final).

% cuento(Hombre,Mujer,Villano,Niño,Niña,Lugar,Final):-inicio(Hombre,Mujer,Villano,Niño,Lugar),
%
                                                   % final(Hombre,Mujer,Villano,Niño,Niña,Lugar,Final).




