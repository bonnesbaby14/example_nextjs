-- CreateTable
CREATE TABLE `Municipio` (
    `idestado` INTEGER NOT NULL,
    `estado` VARCHAR(191) NOT NULL,
    `idmunicipio` INTEGER NOT NULL,
    `municipio` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`idmunicipio`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Ocupacion` (
    `idocupacion` INTEGER NOT NULL,
    `nombre` VARCHAR(191) NOT NULL,
    `idcuenta` INTEGER NULL,
    `activo` INTEGER NOT NULL DEFAULT 1,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`idocupacion`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `OcupacionDefault` (
    `idocupacion` INTEGER NOT NULL,
    `nombre` VARCHAR(191) NOT NULL,
    `activo` INTEGER NOT NULL DEFAULT 1,

    PRIMARY KEY (`idocupacion`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Parametrizable` (
    `idparametrizable` INTEGER NOT NULL,
    `clave_elector` VARCHAR(191) NOT NULL,
    `curp` VARCHAR(191) NOT NULL,
    `seccion` VARCHAR(191) NOT NULL,
    `domicilio` VARCHAR(191) NOT NULL,
    `exterior` VARCHAR(191) NOT NULL,
    `celular` VARCHAR(191) NOT NULL,
    `eventos` VARCHAR(191) NULL,
    `foto1` VARCHAR(191) NOT NULL,
    `foto2` VARCHAR(191) NOT NULL,
    `foto3` VARCHAR(191) NOT NULL,
    `foto4` VARCHAR(191) NOT NULL,
    `foto5` VARCHAR(191) NOT NULL,
    `foto6` VARCHAR(191) NOT NULL,
    `foto7` VARCHAR(191) NOT NULL,
    `foto8` VARCHAR(191) NOT NULL,
    `foto9` VARCHAR(191) NOT NULL,
    `foto10` VARCHAR(191) NOT NULL,
    `primer_nivel` INTEGER NOT NULL DEFAULT 1,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`idparametrizable`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
