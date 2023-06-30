-- Eliminar la tabla si ya existe
DROP TABLE IF EXISTS practica3.arbol;

-- Eliminar el usuario si ya existe
DROP USER IF EXISTS 'usuario_practica3'@'%';

-- Eliminar el esquema si ya existe
DROP SCHEMA IF EXISTS practica3;

-- Crear el esquema
CREATE SCHEMA practica3;

-- Crear el usuario
CREATE USER 'usuario_practica3'@'%' IDENTIFIED BY 'UClave.';

-- Otorgar todos los privilegios al usuario en el esquema
GRANT ALL PRIVILEGES ON practica3.* TO 'usuario_practica3'@'%';
FLUSH PRIVILEGES;

-- Crear la tabla arbol
CREATE TABLE practica3.arbol (
  id_arbol INT NOT NULL AUTO_INCREMENT,
  nombre_comun VARCHAR(50) NOT NULL,
  descripcion VARCHAR(500) NOT NULL,
  anios_vida INT NOT NULL,
  ruta_imagen VARCHAR(1024),
  activo BOOL,
  PRIMARY KEY (id_arbol)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;

-- Insertar los datos en la tabla arbol
INSERT INTO practica3.arbol (id_arbol, nombre_comun, descripcion, anios_vida, ruta_imagen, activo) 
VALUES 
('1', 'Árboles frutales', 'Los árboles frutales son aquellos que producen frutos comestibles. Existen una gran variedad de árboles frutales como el manzano, el duraznero y el limonero. Estos árboles requieren cuidados especiales para garantizar una buena cosecha.', 30, 'https://cdn.pixabay.com/photo/2020/04/23/11/32/fruit-trees-5082094_1280.jpg', true),
('2', 'Árboles coníferos', 'Los árboles coníferos son aquellos que pertenecen a la familia de las coníferas, la cual incluye árboles como el pino, el abeto y el ciprés. Estos árboles son conocidos por tener hojas en forma de aguja y producir conos.', 50, 'https://cdn.pixabay.com/photo/2017/01/16/08/49/ecuador-1983542_1280.jpg', false),
('3', 'Arbol de Plátano', 'Los árboles de sombra son aquellos que proporcionan una buena cobertura y sombra gracias a su frondosidad. Un ejemplo de árbol de sombra es el plátano. Estos árboles son ideales para crear áreas frescas y agradables.', 40, 'https://upload.wikimedia.org/wikipedia/commons/2/23/%C3%81rbol_de_Pl%C3%A1tano_en_el_Jard%C3%ADn_Bot%C3%A1nico_de_Lima.jpg', true);arbolarbol