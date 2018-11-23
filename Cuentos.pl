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
%% 
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


etapa1(Rol1,Rol2,Rol3,Rol4):-personaje(Rol1,juan,_),
                             busca(Rol1,tesoro),
                             write(" El hombre estaba animado y parte en busca de un tesoro.");

                             personaje(Rol1,juan,_),
                             explora(Rol1,llanuras),
                             write(" El hombre queria explorar asi que sale a explorar las llanuras.");

                             personaje(Rol1,maria,_),
                             es_infeliz(Rol1),
                             write(" La mujer era infeliz en la vida que tenia, la odiaba.");

                             personaje(Rol1,maria,_),
                             se_pierde(Rol1),
                             write(" La mujer decide salir a dar un paseo pero se termina perdiendo.");

                             personaje(Rol2,maria,_),
                             es_infeliz(Rol2),
                             write(" La mujer era infeliz en la vida que tenia, la odiaba.");

                             personaje(Rol2,maria,_),
                             se_pierde(Rol2),
                             write(" La mujer decide salir a dar un paseo pero se termina perdiendo.");

                             personaje(Rol1,hombre_lobo,_),
                             planear(Rol1,estrategia),
                             write(" El villano planeo una estrategia para sus siniestros planes.");

                             personaje(Rol1,hombre_lobo,_),
                             ataca(Rol1,entorno),
                             write(" El villano decidio atacar su entorno durante la noche.");

                             personaje(Rol2,hombre_lobo,_),
                             planear(Rol2,estrategia),
                             write(" El villano planeo una estrategia para sus siniestros planes.");

                             personaje(Rol2,hombre_lobo,_),
                             ataca(Rol2,entorno),
                             write(" El villano decidio atacar su entorno durante la noche.");

                             personaje(Rol3,hombre_lobo,_),
                             planear(Rol3,estrategia),
                             write(" El villano planeo una estrategia para sus siniestros planes.");

                             personaje(Rol3,hombre_lobo,_),
                             ataca(Rol3,entorno),
                             write(" El villano decidio atacar su entorno durante la noche.");

                             personaje(Rol1,miguel,_),
                             encontrar(Rol1,pasaje_secreto),
                             write(" El niño estaba paseando por el lugar y de repente encuentra un pasase secreto y decidio entrar en el a explorar.");

                             personaje(Rol1,miguel,_),
                             encuentro(Rol1,espada),
                             write(" El niño encontro una espada guardada muy bien bajo una apertura bajo tierra.");

                             personaje(Rol2,miguel,_),
                             encontrar(Rol2,pasaje_secreto),
                             write(" El niño estaba paseando por el lugar y de repente encuentra un pasase secreto y decidio entrar en el a explorar.");

                             personaje(Rol2,miguel,_),
                             encuentro(Rol2,espada),
                             write(" El niño encontro una espada guardada muy bien bajo una apertura bajo tierra.");

                             personaje(Rol3,miguel,_),
                             encontrar(Rol3,pasaje_secreto),
                             write(" El niño estaba paseando por el lugar y de repente encuentra un pasase secreto y decidio entrar en el a explorar.");

                             personaje(Rol3,miguel,_),
                             encuentro(Rol3,espada),
                             write(" El niño encontro una espada guardada muy bien bajo una apertura bajo tierra.");

                             personaje(Rol4,miguel,_),
                             encontrar(Rol4,pasaje_secreto),
                             write(" El niño estaba paseando por el lugar y de repente encuentra un pasase secreto y decidio entrar en el a explorar.");

                             personaje(Rol4,miguel,_),
                             encuentro(Rol4,espada),
                             write(" El niño encontro una espada guardada muy bien bajo una apertura bajo tierra.");
                             personaje(Rol2,rosita,_),
                             entra(Rol2,lugar_extraño),
                             write(" La niña estaba paseando por el lugar y por accidente entro a un lugar misterioso.");

                             personaje(Rol2,rosita,_),
                             encuentra(Rol2,amigo_misterioso),
                             write(" La niña estaba paseando por el lugar y encontro a un personaje misterioso quien se volvio su amigo rapidamente.");

                             personaje(Rol3,rosita,_),
                             entra(Rol3,lugar_extraño),
                             write(" La niña estaba paseando por el lugar y por accidente entro a un lugar misterioso.");

                             personaje(Rol3,rosita,_),
                             encuentra(Rol3,amigo_misterioso),
                             write(" La niña estaba paseando por el lugar y encontro a un personaje misterioso quien se volvio su amigo rapidamente.");

                             personaje(Rol4,rosita,_),
                             entra(Rol4,lugar_extraño),
                             write(" La niña estaba paseando por el lugar y por accidente entro a un lugar misterioso.");

                             personaje(Rol4,rosita,_),
                             encuentra(Rol4,amigo_misterioso),
                             write(" La niña estaba paseando por el lugar y encontro a un personaje misterioso quien se volvio su amigo rapidamente.").

etapa2(Rol1,Rol2,Rol3,Rol4):-personaje(Rol1,juan,_),
                             compra(Rol1,espada),
                             write(" Luego, al encontrar el tesoro, compra una espada.");

                             personaje(Rol1,juan,_),
                             encuentro_h(Rol1,caballo),
                             write(" Luego, en ese lugar encontro a un caballo.");

                             personaje(Rol1,maria,_),
                             escapa2(Rol1,hogar),
                             write(" Luego, por esos motivos escapa de su hogar en busca de algo nuevo.");

                             personaje(Rol1,maria,_),
                             hablar(Rol1,animales),
                             write(" Luego, al no saber que hacer decide hablar con los animales.");

                             personaje(Rol2,maria,_),
                             escapa2(Rol2,hogar),
                             write(" Luego, por esos motivos escapa de su hogar en busca de algo nuevo.");

                             personaje(Rol2,maria,_),
                             hablar(Rol2,animales),
                             write(" Luego, al no saber que hacer decide hablar con los animales.");

                             personaje(Rol1,hombre_lobo,_),
                             engañar(Rol1,habitantes),
                             write(" Luego, en villano engaño a los habitantes para llevar a cabo su plan.");

                             personaje(Rol1,hombre_lobo,_),
                             roba(Rol1,comida),
                             write(" Luego, robo mucha comida que habia en ese lugar");

                             personaje(Rol2,hombre_lobo,_),
                             engañar(Rol2,habitantes),
                             write(" Luego, el villano engaño a los habitantes para llevar a cabo su plan.");

                             personaje(Rol2,hombre_lobo,_),
                             roba(Rol2,comida),
                             write(" Luego, robo mucha comida que habia en ese lugar");

                             personaje(Rol3,hombre_lobo,_),
                             engañar(Rol3,habitantes),
                             write(" Luego, el villano engaño a los habitantes para llevar a cabo su plan.");

                             personaje(Rol3,hombre_lobo,_),
                             roba(Rol3,comida),
                             write(" Luego, robo mucha comida que habia en ese lugar");

                             personaje(Rol1,miguel,_),
                             es_atacado(Rol1,goblins),
                             write(" Luego, el niño fue atacado por unos goblins.");

                             personaje(Rol1,miguel,_),
                             lastima(Rol1,animal),
                             write(" Luego, el niño decidio usar la espada pero por accidente lastimo a un animal.");

                             personaje(Rol2,miguel,_),
                             es_atacado(Rol2,goblins),
                             write(" Luego, el niño fue atacado por unos goblins.");

                             personaje(Rol2,miguel,_),
                             lastima(Rol2,animal),
                             write(" Luego, el niño decidio usar la espada pero por accidente lastimo a un animal.");

                             personaje(Rol3,miguel,_),
                             es_atacado(Rol3,goblins),
                             write(" Luego, el niño fue atacado por unos goblins.");

                             personaje(Rol3,miguel,_),
                             lastima(Rol3,animal),
                             write(" Luego, el niño decidio usar la espada pero por accidente lastimo a un animal.");

                             personaje(Rol4,miguel,_),
                             es_atacado(Rol4,goblins),
                             write(" Luego, el niño fue atacado por unos goblins.");

                             personaje(Rol4,miguel,_),
                             lastima(Rol4,animal),
                             write(" Luego, el niño decidio usar la espada pero por accidente lastimo a un animal.");

                             personaje(Rol2,rosita,_),
                             perderse(Rol2,lugar_extraño),
                             write(" Luego, al entrar ahi se perdio en el lugar extraño.");

                             personaje(Rol2,rosita,_),
                             ayuda(Rol2,amigo),
                             write(" Luego, al volverse amigos se ayudaron entre si.");

                             personaje(Rol3,rosita,_),
                             perderse(Rol3,lugar_extraño),
                             write(" Luego, al entrar ahi se perdio en el lugar extraño.");

                             personaje(Rol3,rosita,_),
                             ayuda(Rol3,amigo),
                             write(" Luego, al volverse amigos se ayudaron entre si.");

                             personaje(Rol4,rosita,_),
                             perderse(Rol4,lugar_extraño),
                             write(" Luego, al entrar ahi se perdio en el lugar extraño.");

                             personaje(Rol4,rosita,_),
                             ayuda(Rol4,amigo),
                             write(" Luego, al volverse amigos se ayudaron entre si.").

etapa3(Rol1,Rol2,Rol3,Rol4):-personaje(Rol1,juan,_),
                             cazar(Rol1,animales),
                             write(" Despues, con la espada se pone a cazar animales.");

                             personaje(Rol1,juan,_),
                             domar(Rol1,caballo),
                             write(" Despues, decidio domar al caballo en vez de matarlo.");

                             personaje(Rol1,maria,_),
                             regresa(Rol1,hogar),
                             write(" Despues, regresa a su hogar despues de todo lo que ha pasado.");

                             personaje(Rol2,maria,_),
                             regresa(Rol2,hogar),
                             write(" Despues, regresa a su hogar despues de todo lo que ha pasado.");

                             personaje(Rol1,hombre_lobo,_),
                             matar(Rol1,un_vagabundo),
                             write(" Despues, el villano mato a un vagabundo que paseaba por ahi.");

                             personaje(Rol1,hombre_lobo,_),
                             escapar(Rol1,comida),
                             write(" Despues, el villano escapo con la comida y regreso a su hogar.");

                             personaje(Rol2,hombre_lobo,_),
                             matar(Rol2,un_vagabundo),
                             write(" Despues, el villano mato a un vagabundo que paseaba por ahi.");

                             personaje(Rol2,hombre_lobo,_),
                             escapar(Rol2,comida),
                             write(" Despues, el villano escapo con la comida y regreso a su hogar.");

                             personaje(Rol3,hombre_lobo,_),
                             matar(Rol3,un_vagabundo),
                             write(" Despues, el villano mato a un vagabundo que paseaba por ahi.");

                             personaje(Rol3,hombre_lobo,_),
                             escapar(Rol3,comida),
                             write(" Despues, el villano escapo con la comida y regreso a su hogar.");

                             personaje(Rol1,miguel,_),
                             escapo(Rol1,pasaje_secreto),
                             write(" Despues, por suerte el niño pudo escapar del pasaje secreto.");

                             personaje(Rol1,miguel,_),
                             regresa_n(Rol1,casa),
                             write(" Despues de lo que habia pasado, el niño decidio regresar a su casa.");
                             personaje(Rol2,miguel,_),
                             escapo(Rol2,pasaje_secreto),
                             write(" Despues, por suerte el niño pudo escapar del pasaje secreto.");

                             personaje(Rol2,miguel,_),
                             regresa_n(Rol2,casa),
                             write(" Despues de lo que habia pasado, el niño decidio regresar a su casa.");
                             personaje(Rol3,miguel,_),
                             escapo(Rol3,pasaje_secreto),
                             write(" Despues, por suerte el niño pudo escapar del pasaje secreto.");

                             personaje(Rol3,miguel,_),
                             regresa_n(Rol3,casa),
                             write(" Despues de lo que habia pasado, el niño decidio regresar a su casa.");
                             personaje(Rol4,miguel,_),
                             escapo(Rol4,pasaje_secreto),
                             write(" Despues, por suerte el niño pudo escapar del pasaje secreto.");

                             personaje(Rol4,miguel,_),
                             regresa_n(Rol4,casa),
                             write(" Despues de lo que habia pasado, el niño decidio regresar a su casa.");
                             personaje(Rol2,rosita,_),
                             escapa(Rol2,lugar_extraño),
                             write(" Despues, de estar en ese lugar logro escapar sana y salva.");

                             personaje(Rol2,rosita,_),
                             regreso(Rol2,hogar),
                             write(" Despues, regreso a su hogar a contar sus aventuras de ese dia.");

                             personaje(Rol3,rosita,_),
                             escapa(Rol3,lugar_extraño),
                             write(" Despues, de estar en ese lugar logro escapar sana y salva.");

                             personaje(Rol3,rosita,_),
                             regreso(Rol3,hogar),
                             write(" Despues, regreso a su hogar a contar sus aventuras de ese dia.");

                             personaje(Rol4,rosita,_),
                             escapa(Rol4,lugar_extraño),
                             write(" Despues, de estar en ese lugar logro escapar sana y salva.");

                             personaje(Rol4,rosita,_),
                             regreso(Rol4,hogar),
                             write(" Despues, regreso a su hogar a contar sus aventuras de ese dia.").

etapas(Rol1,Rol2,Rol3,Rol4):-etapa1(Rol1,Rol2,Rol3,Rol4),
                             etapa2(Rol1,Rol2,Rol3,Rol4),
                             etapa3(Rol1,Rol2,Rol3,Rol4).


%% Hechos necesarios
%hombre
busca(hombre,tesoro).
compra(hombre,espada).
cazar(hombre,animales).

explora(hombre,llanuras).
encuentro_h(hombre,caballo).
domar(hombre,caballo).

%princesa
es_infeliz(mujer).
escapa2(mujer,hogar).
regresa(mujer,hogar).

se_pierde(mujer).
hablar(mujer,animales).
%regresa de nuevo
%se_envenena(mujer,manzana_envenenada).

%villano
planear(villano,estrategia).
engañar(villano,habitantes).
matar(villano,un_vagabundo).

ataca(villano,entorno).
roba(villano,comida).
escapar(villano,comida).



%niño
encontrar(niño,pasaje_secreto).
es_atacado(niño,goblins).
escapo(niño,pasaje_secreto).


encuentro(niño,espada).
lastima(niño,animal).
regresa_n(niño,casa).
%sale(niño,pasaje_secreto).

%niña
%posee(niña,espejo_magico).
entra(niña,lugar_extraño).
perderse(niña,lugar_extraño).
escapa(niña,lugar_extraño).

encuentra(niña,amigo_misterioso).
ayuda(niña,amigo).
regreso(niña,hogar).



%cuento(Ro1,Rol2,Rol3,Rol4,Rol5)
cuento(Rol1,Rol2,Rol3,Rol4,Lugar,Final):-inicio(Rol1,Rol2,Rol3,Rol4,Lugar),!,
                                                   etapa1(Rol1,Rol2,Rol3,Rol4),
                                                   etapa2(Rol1,Rol2,Rol3,Rol4),
                                                   etapa3(Rol1,Rol2,Rol3,Rol4),
                                                   final(Rol1,Rol2,Rol3,Rol4,Final);


                                                    inicio(Rol1,Rol2,Rol3,Lugar),!,
                                                    etapa1(Rol1,Rol2,Rol3,Rol4),
                                                    etapa2(Rol1,Rol2,Rol3,Rol4),
                                                    etapa3(Rol1,Rol2,Rol3,Rol4),
                                                    final(Rol1,Rol2,Rol3,Rol4,Final);

                                                    inicio(Rol1,Rol2,Lugar),
                                                    etapa1(Rol1,Rol2,Rol3,Rol4),
                                                    etapa2(Rol1,Rol2,Rol3,Rol4),
                                                    etapa3(Rol1,Rol2,Rol3,Rol4),
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




