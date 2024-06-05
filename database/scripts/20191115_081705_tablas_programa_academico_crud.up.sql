-- object: programa_academico | type: SCHEMA --
-- DROP SCHEMA IF EXISTS programa_academico CASCADE;
CREATE SCHEMA programa_academico;
-- ddl-end --

SET search_path TO pg_catalog,public,programa_academico;
-- ddl-end --

-- object: programa_academico.metodologia | type: TABLE --
-- DROP TABLE IF EXISTS programa_academico.metodologia CASCADE;
CREATE TABLE programa_academico.metodologia (
	id serial NOT NULL,
	nombre character varying(50) NOT NULL,
	descripcion character varying(250),
	codigo_abreviacion character varying(20),
	activo boolean NOT NULL,
	numero_orden numeric(5,2),
	fecha_creacion timestamp NOT NULL,
	fecha_modificacion timestamp NOT NULL,
	CONSTRAINT pk_metodologia PRIMARY KEY (id),
	CONSTRAINT uq_nombre_metodologia UNIQUE (nombre)

);
-- ddl-end --
COMMENT ON TABLE programa_academico.metodologia IS 'Tabla que almacena las metodologías para un programa académico';
-- ddl-end --
COMMENT ON COLUMN programa_academico.metodologia.id IS 'Identificador de la tabla paramétrica metodologia';
-- ddl-end --
COMMENT ON COLUMN programa_academico.metodologia.nombre IS 'Nombre de la metodología (ej: presencial, virtual, a distancia)';
-- ddl-end --
COMMENT ON COLUMN programa_academico.metodologia.descripcion IS 'Descripción opcional del parámetro';
-- ddl-end --
COMMENT ON COLUMN programa_academico.metodologia.codigo_abreviacion IS 'Código de abreviación, sigla, acrónimo u otra representación corta del registro si se requiere';
-- ddl-end --
COMMENT ON COLUMN programa_academico.metodologia.activo IS 'Campo que indica si el parámetro está activo';
-- ddl-end --
COMMENT ON COLUMN programa_academico.metodologia.numero_orden IS 'En dado caso que se necesite establecer un orden a los registros que no se encuentre definido por aplicación ni por BD. Allí se almacena permitiendo realizar subitems mediante la precisión.';
-- ddl-end --
COMMENT ON CONSTRAINT pk_metodologia ON programa_academico.metodologia  IS 'Llave primaria de la tabla metodologia';
-- ddl-end --
COMMENT ON CONSTRAINT uq_nombre_metodologia ON programa_academico.metodologia  IS 'Restricción para que no se repita el nombre de las metodologías';
-- ddl-end --

-- object: programa_academico.nivel_formacion | type: TABLE --
-- DROP TABLE IF EXISTS programa_academico.nivel_formacion CASCADE;
CREATE TABLE programa_academico.nivel_formacion (
	id serial NOT NULL,
	nombre character varying(50) NOT NULL,
	descripcion character varying(250),
	codigo_abreviacion character varying(20),
	activo boolean NOT NULL,
	numero_orden numeric(5,2),
	fecha_creacion timestamp NOT NULL,
	fecha_modificacion timestamp NOT NULL,
	CONSTRAINT pk_nivel_formacion PRIMARY KEY (id),
	CONSTRAINT uq_nombre_nivel_formacion UNIQUE (nombre)

);
-- ddl-end --
COMMENT ON TABLE programa_academico.nivel_formacion IS 'Tabla paramétrica con los niveles de formación';
-- ddl-end --
COMMENT ON COLUMN programa_academico.nivel_formacion.id IS 'Identificador de la tabla nivel_formacion';
-- ddl-end --
COMMENT ON COLUMN programa_academico.nivel_formacion.nombre IS 'Nombre del nivel de formación (ej: Tecnológica, Universitaria, Especialización)';
-- ddl-end --
COMMENT ON COLUMN programa_academico.nivel_formacion.descripcion IS 'Descripción opcional del parámetro';
-- ddl-end --
COMMENT ON COLUMN programa_academico.nivel_formacion.codigo_abreviacion IS 'Código de abreviación, sigla, acrónimo u otra representación corta del registro si se requiere';
-- ddl-end --
COMMENT ON COLUMN programa_academico.nivel_formacion.activo IS 'Campo que indica si el parámetro está activo';
-- ddl-end --
COMMENT ON COLUMN programa_academico.nivel_formacion.numero_orden IS 'En dado caso que se necesite establecer un orden a los registros que no se encuentre definido por aplicación ni por BD. Allí se almacena permitiendo realizar subitems mediante la precisión.';
-- ddl-end --
COMMENT ON CONSTRAINT pk_nivel_formacion ON programa_academico.nivel_formacion  IS 'Llave primaria de la tabla nivel_formacion';
-- ddl-end --
COMMENT ON CONSTRAINT uq_nombre_nivel_formacion ON programa_academico.nivel_formacion  IS 'Restricción para que no se repita el nombre de los niveles de formación';
-- ddl-end --

-- object: programa_academico.programa_academico | type: TABLE --
-- DROP TABLE IF EXISTS programa_academico.programa_academico CASCADE;
CREATE TABLE programa_academico.programa_academico (
	id serial NOT NULL,
	codigo integer NOT NULL,
	nombre character varying(250) NOT NULL,
	institucion integer NOT NULL,
	duracion numeric(10,0) NOT NULL,
	unidad_tiempo integer NOT NULL,
	titulacion integer,
	nucleo_basico_conocimiento integer,
	activo boolean NOT NULL,
	fecha_creacion timestamp NOT NULL,
	fecha_modificacion timestamp NOT NULL,
	metodologia integer NOT NULL,
	nivel_formacion integer NOT NULL,
	titulacion1 integer NOT NULL,
	CONSTRAINT pk_programa_academico PRIMARY KEY (id)

);
-- ddl-end --
COMMENT ON TABLE programa_academico.programa_academico IS 'Programas académicos de las intituciones de educación regstrados en el SNIES, SIET u otros (cuando es educación informal)';
-- ddl-end --
COMMENT ON COLUMN programa_academico.programa_academico.id IS 'Identificadorde la tabla programa_academico';
-- ddl-end --
COMMENT ON COLUMN programa_academico.programa_academico.codigo IS 'Corresponde al código del registro en el SNIES o el SIET(para los programas de Educacion para el Trabajo y el Desarrollo Humano), para los programas de educación informal el código es 0';
-- ddl-end --
COMMENT ON COLUMN programa_academico.programa_academico.nombre IS 'Nombre del programa académico';
-- ddl-end --
COMMENT ON COLUMN programa_academico.programa_academico.institucion IS 'Institución que ofrece el programa académico. Referencia a la tabla organizacion';
-- ddl-end --
COMMENT ON COLUMN programa_academico.programa_academico.duracion IS 'Duración del programa académico';
-- ddl-end --
COMMENT ON COLUMN programa_academico.programa_academico.unidad_tiempo IS 'Unidad de tiempo para la duración la formación académica (ej: Años, Semestres). Referencia a la tabla unidad_tiempo';
-- ddl-end --
COMMENT ON COLUMN programa_academico.programa_academico.nucleo_basico_conocimiento IS 'Referencia a la tabla nucleo_basico_conocimiento';
-- ddl-end --
COMMENT ON COLUMN programa_academico.programa_academico.activo IS 'Indica el estado del programa (ACTIVO, INACTIVO)';
-- ddl-end --
COMMENT ON CONSTRAINT pk_programa_academico ON programa_academico.programa_academico  IS 'Llave primaria de la tabla programa_academico';
-- ddl-end --

-- object: programa_academico.titulacion | type: TABLE --
-- DROP TABLE IF EXISTS programa_academico.titulacion CASCADE;
CREATE TABLE programa_academico.titulacion (
	id serial NOT NULL,
	nombre character varying(250) NOT NULL,
	descripcion character varying(250),
	codigo_abreviacion character varying(20),
	activo boolean NOT NULL,
	numero_orden numeric(10,2),
	fecha_creacion timestamp NOT NULL,
	fecha_modificacion timestamp NOT NULL,
	CONSTRAINT pk_titulacion PRIMARY KEY (id)

);
-- ddl-end --
COMMENT ON TABLE programa_academico.titulacion IS 'Tabla paramétrica con las titulaciones de los programas académicos';
-- ddl-end --
COMMENT ON COLUMN programa_academico.titulacion.id IS 'Identificador de la tabla titulacion';
-- ddl-end --
COMMENT ON COLUMN programa_academico.titulacion.nombre IS 'Nombre del título otorgado por la institución';
-- ddl-end --
COMMENT ON COLUMN programa_academico.titulacion.descripcion IS 'Descripción opcional del parámetro';
-- ddl-end --
COMMENT ON COLUMN programa_academico.titulacion.codigo_abreviacion IS 'Código de abreviación, sigla, acrónimo u otra representación corta del registro si se requiere';
-- ddl-end --
COMMENT ON COLUMN programa_academico.titulacion.activo IS 'Campo que indica si el parámetro está activo';
-- ddl-end --
COMMENT ON COLUMN programa_academico.titulacion.numero_orden IS 'En dado caso que se necesite establecer un orden a los registros que no se encuentre definido por aplicación ni por BD. Allí se almacena permitiendo realizar subitems mediante la precisión.';
-- ddl-end --
COMMENT ON CONSTRAINT pk_titulacion ON programa_academico.titulacion  IS 'Llave primaria de la tabla titulacion';
-- ddl-end --

-- object: fk_programa_academico_metodologia | type: CONSTRAINT --
-- ALTER TABLE programa_academico.programa_academico DROP CONSTRAINT IF EXISTS fk_programa_academico_metodologia CASCADE;
ALTER TABLE programa_academico.programa_academico ADD CONSTRAINT fk_programa_academico_metodologia FOREIGN KEY (metodologia)
REFERENCES programa_academico.metodologia (id) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: fk_programa_academico_nivel_formacion | type: CONSTRAINT --
-- ALTER TABLE programa_academico.programa_academico DROP CONSTRAINT IF EXISTS fk_programa_academico_nivel_formacion CASCADE;
ALTER TABLE programa_academico.programa_academico ADD CONSTRAINT fk_programa_academico_nivel_formacion FOREIGN KEY (nivel_formacion)
REFERENCES programa_academico.nivel_formacion (id) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

-- object: fk_programa_academico_titulacion | type: CONSTRAINT --
-- ALTER TABLE programa_academico.programa_academico DROP CONSTRAINT IF EXISTS fk_programa_academico_titulacion CASCADE;
ALTER TABLE programa_academico.programa_academico ADD CONSTRAINT fk_programa_academico_titulacion FOREIGN KEY (titulacion1)
REFERENCES programa_academico.titulacion (id) MATCH FULL
ON DELETE RESTRICT ON UPDATE CASCADE;
-- ddl-end --

GRANT USAGE ON SCHEMA programa_academico TO desarrollooas;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA programa_academico TO desarrollooas;
GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA programa_academico TO desarrollooas;