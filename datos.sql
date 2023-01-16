insert into usuario (nombre, username, contrasenya) values ("lola","lolalaloca","pasooooo");
insert into usuario (nombre, username, contrasenya) values ("eduardo","edumontenegro","kikiriki");
insert into usuario (nombre, username, contrasenya) values ("antonia","antoniafont","alegria420");

insert into ingrediente (nombre, unidad) values ("harina","gramos");
insert into ingrediente (nombre, unidad) values ("pan rallado","gramos");
insert into ingrediente (nombre, unidad) values ("leche","litros");
insert into ingrediente (nombre, unidad) values ("agua","litros");
insert into ingrediente (nombre, unidad) values ("pan","gramos");
insert into ingrediente (nombre, unidad) values ("huevos","unidades");

insert into receta (nombre, texto, cantidad, tipo, privacidad, tiempo, visitas, valoracion) values ("tortilla", "batir huevos y freír", 2, "fácil", "pública", 5, 42, 3);
insert into receta (nombre, texto, cantidad, tipo, privacidad, tiempo, visitas, valoracion) values ("tostada", "rebanar pan y calentar en la sartén", 1, "fácil", "pública", 3, 17, 2);
insert into receta (nombre, texto, cantidad, tipo, privacidad, tiempo, visitas) values ("vaso de agua", "llenar un vaso con agua", 2, "trivial", "pública", 1, 0);

insert into menu (nombre) values ("desayuno humilde");
insert into menu_receta (menu_id, receta_id) values (1, 1);
insert into menu_receta (menu_id, receta_id) values (1, 2);
insert into menu_receta (menu_id, receta_id) values (1, 3);

insert into grupo (nombre, administrador) values ("recetas para pobres", 1);
insert into usuario_grupo (grupo_id, usuario_id) values (1, 1);
insert into usuario_grupo (grupo_id, usuario_id) values (1, 2);

insert into lista_compra (usuario_id, ingrediente_id, cantidad) values (1, 1, 500);
insert into lista_compra (usuario_id, ingrediente_id, cantidad) values (1, 3, 1);
insert into lista_compra (usuario_id, ingrediente_id, cantidad) values (1, 6, 6);