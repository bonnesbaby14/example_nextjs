-- CreateTable
CREATE TABLE `User` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `email_verified_at` DATETIME(3) NOT NULL,
    `password` VARCHAR(191) NOT NULL,
    `remember_token` VARCHAR(191) NOT NULL,
    `idpersona` INTEGER NOT NULL,
    `idcuenta` INTEGER NOT NULL,
    `nivel` INTEGER NOT NULL,
    `super` INTEGER NOT NULL,
    `primer_acceso` INTEGER NOT NULL,
    `habilitado` INTEGER NOT NULL,
    `activo` INTEGER NOT NULL,
    `created_at` DATETIME(3) NOT NULL,
    `updated_at` DATETIME(3) NOT NULL,
    `logged_at` DATETIME(3) NOT NULL,
    `gratuita` INTEGER NOT NULL,
    `idpersona_lider` VARCHAR(191) NOT NULL,
    `visualizador` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
