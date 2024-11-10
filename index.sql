CREATE TABLE `clientes` (
	`id` INTEGER,
	PRIMARY KEY(`id`)
);


CREATE TABLE `veiculos` (
	`clientesId` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`id` INTEGER,
	PRIMARY KEY(`clientesId`)
);


CREATE TABLE `ordens_servicos` (
	`veiculoid` INTEGER NOT NULL AUTO_INCREMENT UNIQUE,
	`equipeid` INTEGER,
	`id` LINESTRING,
	PRIMARY KEY(`veiculoid`)
);


CREATE TABLE `mecanicos` (
	`equipeid` LINESTRING NOT NULL UNIQUE,
	PRIMARY KEY(`equipeid`)
);


CREATE TABLE `Equipes` (
	`id` LINESTRING NOT NULL UNIQUE,
	PRIMARY KEY(`id`)
);


CREATE TABLE `pecas` (
	`OrdenServicoid` LINESTRING NOT NULL UNIQUE,
	PRIMARY KEY(`OrdenServicoid`)
);


CREATE TABLE `servicos` (
	`OrdenServicoid` LINESTRING NOT NULL UNIQUE,
	PRIMARY KEY(`OrdenServicoid`)
);


ALTER TABLE `clientes`
ADD FOREIGN KEY(`id`) REFERENCES `veiculos`(`clientesId`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `veiculos`
ADD FOREIGN KEY(`id`) REFERENCES `ordens_servicos`(`veiculoid`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `Equipes`
ADD FOREIGN KEY(`id`) REFERENCES `ordens_servicos`(`id`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `Equipes`
ADD FOREIGN KEY(`id`) REFERENCES `mecanicos`(`equipeid`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `ordens_servicos`
ADD FOREIGN KEY(`id`) REFERENCES `servicos`(`OrdenServicoid`)
ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE `ordens_servicos`
ADD FOREIGN KEY(`id`) REFERENCES `pecas`(`OrdenServicoid`)
ON UPDATE NO ACTION ON DELETE NO ACTION;