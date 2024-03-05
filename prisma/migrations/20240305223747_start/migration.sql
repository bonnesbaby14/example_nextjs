/*
  Warnings:

  - You are about to drop the `Beneficio` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Contacto` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `ContactoAsignado` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `ContactoGrupo` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `ConversacionUser` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Credencializacion` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `CredencializacionPersona` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Cuenta` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Escolaridad` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `EscolaridadDefault` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Estado` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `GrupoNivel1` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `GrupoNivel2` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `GrupoNivel3` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `GrupoNivel4` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `GrupoNivel5` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `GrupoNivel6` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `GrupoNivel7` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `GrupoNivel8` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Log` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Mensaje` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Municipio` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Ocupacion` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `OcupacionDefault` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Parametrizable` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Parametros1` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Parametros2` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Parametros3` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Permisos` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Persona` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Seccion` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `SeccionesGeneral` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Tarea` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `TareaCompletada` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `TareaGrupo` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `TipoBeneficio` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Users` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Validacion` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE `Beneficio`;

-- DropTable
DROP TABLE `Contacto`;

-- DropTable
DROP TABLE `ContactoAsignado`;

-- DropTable
DROP TABLE `ContactoGrupo`;

-- DropTable
DROP TABLE `ConversacionUser`;

-- DropTable
DROP TABLE `Credencializacion`;

-- DropTable
DROP TABLE `CredencializacionPersona`;

-- DropTable
DROP TABLE `Cuenta`;

-- DropTable
DROP TABLE `Escolaridad`;

-- DropTable
DROP TABLE `EscolaridadDefault`;

-- DropTable
DROP TABLE `Estado`;

-- DropTable
DROP TABLE `GrupoNivel1`;

-- DropTable
DROP TABLE `GrupoNivel2`;

-- DropTable
DROP TABLE `GrupoNivel3`;

-- DropTable
DROP TABLE `GrupoNivel4`;

-- DropTable
DROP TABLE `GrupoNivel5`;

-- DropTable
DROP TABLE `GrupoNivel6`;

-- DropTable
DROP TABLE `GrupoNivel7`;

-- DropTable
DROP TABLE `GrupoNivel8`;

-- DropTable
DROP TABLE `Log`;

-- DropTable
DROP TABLE `Mensaje`;

-- DropTable
DROP TABLE `Municipio`;

-- DropTable
DROP TABLE `Ocupacion`;

-- DropTable
DROP TABLE `OcupacionDefault`;

-- DropTable
DROP TABLE `Parametrizable`;

-- DropTable
DROP TABLE `Parametros1`;

-- DropTable
DROP TABLE `Parametros2`;

-- DropTable
DROP TABLE `Parametros3`;

-- DropTable
DROP TABLE `Permisos`;

-- DropTable
DROP TABLE `Persona`;

-- DropTable
DROP TABLE `Seccion`;

-- DropTable
DROP TABLE `SeccionesGeneral`;

-- DropTable
DROP TABLE `Tarea`;

-- DropTable
DROP TABLE `TareaCompletada`;

-- DropTable
DROP TABLE `TareaGrupo`;

-- DropTable
DROP TABLE `TipoBeneficio`;

-- DropTable
DROP TABLE `Users`;

-- DropTable
DROP TABLE `Validacion`;

-- CreateTable
CREATE TABLE `USERS` (
    `user_id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `password` VARCHAR(191) NOT NULL,
    `person__fk` INTEGER NOT NULL,
    `account__fk` INTEGER NOT NULL,
    `lever` INTEGER NOT NULL,
    `super` INTEGER NOT NULL,
    `first_access` INTEGER NOT NULL,
    `enabled` INTEGER NOT NULL,
    `active` INTEGER NOT NULL,
    `created_at` DATETIME(3) NOT NULL,
    `updated_at` DATETIME(3) NOT NULL,
    `logged_at` DATETIME(3) NOT NULL,
    `free` INTEGER NOT NULL,
    `leader_person_id` VARCHAR(191) NOT NULL,
    `visualizer` INTEGER NOT NULL,

    PRIMARY KEY (`user_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `ACCOUNT` (
    `account_id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `level_1_fk` VARCHAR(191) NOT NULL,
    `level_2_fk` VARCHAR(191) NOT NULL,
    `level_3_fk` VARCHAR(191) NOT NULL,
    `level_4_fk` VARCHAR(191) NOT NULL,
    `level_5_fk` VARCHAR(191) NOT NULL,
    `level_6_fk` VARCHAR(191) NOT NULL,
    `level_7_fk` VARCHAR(191) NOT NULL,
    `level_8_fk` VARCHAR(191) NOT NULL,
    `catalogo_1` VARCHAR(191) NOT NULL,
    `catalogo_2` VARCHAR(191) NOT NULL,
    `catalogo_3` VARCHAR(191) NOT NULL,
    `photo_1` VARCHAR(191) NOT NULL,
    `photo_2` VARCHAR(191) NOT NULL,
    `photo_3` VARCHAR(191) NOT NULL,
    `photo_4` VARCHAR(191) NOT NULL,
    `photo_5` VARCHAR(191) NOT NULL,
    `photo_6` VARCHAR(191) NOT NULL,
    `photo_7` VARCHAR(191) NOT NULL,
    `photo_8` VARCHAR(191) NOT NULL,
    `photo_9` VARCHAR(191) NOT NULL,
    `photo_10` VARCHAR(191) NOT NULL,
    `message` VARCHAR(191) NOT NULL,
    `number_levels` INTEGER NOT NULL DEFAULT 5,
    `params_nivel1_fk` INTEGER NOT NULL,
    `params_nivel2_fk` INTEGER NOT NULL,
    `params_nivel3_fk` INTEGER NOT NULL,
    `params_nivel4_fk` INTEGER NOT NULL,
    `params_nivel5_fk` INTEGER NOT NULL,
    `params_nivel6_fk` INTEGER NOT NULL,
    `params_nivel7_fk` INTEGER NOT NULL,
    `params_nivel8_fk` INTEGER NOT NULL,
    `created_by` INTEGER NOT NULL,
    `created_at` DATETIME(3) NOT NULL,
    `updated_by` INTEGER NOT NULL,
    `updated_at` DATETIME(3) NOT NULL,
    `enabled` INTEGER NOT NULL DEFAULT 1,
    `block_deadline_date` DATETIME(3) NOT NULL,
    `active` INTEGER NOT NULL DEFAULT 1,
    `enable_load` INTEGER NOT NULL DEFAULT 1,
    `free` INTEGER NOT NULL DEFAULT 0,
    `lite` INTEGER NOT NULL DEFAULT 0,
    `stated_fk` INTEGER NOT NULL,
    `municipality_fk` INTEGER NOT NULL,
    `permission_level1_fk` INTEGER NOT NULL,
    `permission_level2_fk` INTEGER NOT NULL,
    `permission_level3_fk` INTEGER NOT NULL,
    `permission_level4_fk` INTEGER NOT NULL,
    `permission_level5_fk` INTEGER NOT NULL,
    `permission_level6_fk` INTEGER NOT NULL,
    `permission_level7_fk` INTEGER NOT NULL,
    `permission_level8_fk` INTEGER NOT NULL,
    `leader_view` INTEGER NOT NULL DEFAULT 0,
    `immediate_lower_registration` INTEGER NOT NULL DEFAULT 0,

    PRIMARY KEY (`account_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `USERS` ADD CONSTRAINT `USERS_account__fk_fkey` FOREIGN KEY (`account__fk`) REFERENCES `ACCOUNT`(`account_id`) ON DELETE RESTRICT ON UPDATE CASCADE;
