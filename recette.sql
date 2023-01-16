create database if not exists recette;
use recette;

create table if not exists usuario ( 
usuario_id int not null auto_increment,
nombre varchar(45),
username varchar(20),
contrasenya varchar(20),
insignia varchar(45),
primary key (usuario_id)
);

create table if not exists grupo (
grupo_id int not null auto_increment,
nombre varchar(45),
administrador int,
primary key (grupo_id),
foreign key (administrador) references usuario (usuario_id)
);

create table if not exists ingrediente ( 
ingrediente_id int not null auto_increment,
nombre varchar(45),
unidad varchar(20),
primary key (ingrediente_id)
);

create table if not exists receta (
receta_id int not null auto_increment,
usuario_id int,
nombre varchar(45),
texto text,
cantidad int, -- cantidad de ingrediente
tipo varchar(45),
visitas int,
privacidad varchar(10),
tiempo int,
valoracion int,
primary key (receta_id),
foreign key (usuario_id) references usuario (usuario_id)
);

create table if not exists menu (
menu_id int not null auto_increment,
nombre varchar(45),
valoracion int,
primary key (menu_id)
);

create table if not exists usuario_grupo (
usuario_id int,
grupo_id int,
foreign key (usuario_id) references usuario (usuario_id),
foreign key (grupo_id) references grupo (grupo_id),
constraint fk_usuario_grupo unique (usuario_id, grupo_id)
);

create table if not exists lista_compra (
usuario_id int,
ingrediente_id int,
cantidad int,
foreign key (usuario_id) references usuario (usuario_id),
foreign key (ingrediente_id) references ingrediente (ingrediente_id),
constraint fk_lista_compra unique (usuario_id, ingrediente_id)
);

create table if not exists receta_ingrediente (
receta_id int,
ingrediente_id int,
foreign key (receta_id) references receta (receta_id),
foreign key (ingrediente_id) references ingrediente (ingrediente_id),
constraint fk_receta_ingrediente unique (receta_id, ingrediente_id)
);

create table if not exists menu_receta (
menu_id int,
receta_id int,
foreign key (menu_id) references menu (menu_id),
foreign key (receta_id) references receta (receta_id),
constraint fk_menu_receta unique (menu_id, receta_id)
);