-- AlterTable
ALTER TABLE `Cuenta` MODIFY `vista_lideres` INTEGER NULL DEFAULT 0;

-- CreateTable
CREATE TABLE `Parametros1` (
    `idparametro1` INTEGER NOT NULL,
    `nombre` VARCHAR(191) NULL,
    `idcuenta` INTEGER NULL,
    `activo` INTEGER NOT NULL DEFAULT 1,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`idparametro1`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Parametros2` (
    `idparametro2` INTEGER NOT NULL,
    `nombre` VARCHAR(191) NULL,
    `idcuenta` INTEGER NULL,
    `activo` INTEGER NOT NULL DEFAULT 1,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`idparametro2`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Parametros3` (
    `idparametro3` INTEGER NOT NULL,
    `nombre` VARCHAR(191) NULL,
    `idcuenta` INTEGER NULL,
    `activo` INTEGER NOT NULL DEFAULT 1,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`idparametro3`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Permisos` (
    `idpermiso` INTEGER NOT NULL,
    `mapas` INTEGER NOT NULL DEFAULT 1,
    `tareas` INTEGER NOT NULL DEFAULT 1,
    `reportes` INTEGER NOT NULL DEFAULT 1,
    `configuracion` INTEGER NOT NULL DEFAULT 1,
    `eventos` INTEGER NOT NULL DEFAULT 1,
    `contactos` INTEGER NOT NULL DEFAULT 1,
    `beneficiarios` INTEGER NOT NULL DEFAULT 1,
    `credencializacion` INTEGER NOT NULL DEFAULT 1,
    `auditoria` INTEGER NOT NULL DEFAULT 1,
    `visualizar_niveles` INTEGER NOT NULL DEFAULT 1,
    `updated_at` DATETIME(3) NULL,
    `created_at` DATETIME(3) NULL,

    PRIMARY KEY (`idpermiso`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Seccion` (
    `idseccion` INTEGER NOT NULL,
    `idcuenta` INTEGER NOT NULL,
    `idestado` INTEGER NOT NULL,
    `seccion` INTEGER NOT NULL,
    `listado_nominal` INTEGER NOT NULL,
    `meta` INTEGER NOT NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NULL,
    `activo` INTEGER NOT NULL DEFAULT 1,
    `idmunicipio` INTEGER NOT NULL,

    PRIMARY KEY (`idseccion`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `SeccionesGeneral` (
    `seccion` INTEGER NOT NULL,
    `idestado` INTEGER NOT NULL,
    `estado` VARCHAR(191) NOT NULL,
    `idmunicipio` INTEGER NOT NULL,
    `distrito` INTEGER NOT NULL,
    `distrito_local` INTEGER NOT NULL,

    PRIMARY KEY (`seccion`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Tarea` (
    `idtarea` INTEGER NOT NULL,
    `nombre` VARCHAR(191) NULL,
    `descripcion` VARCHAR(191) NULL,
    `nivel` INTEGER NULL,
    `idnivel1` INTEGER NULL,
    `idnivel2` INTEGER NULL,
    `idnivel3` INTEGER NULL,
    `idnivel4` INTEGER NULL,
    `idnivel5` INTEGER NULL,
    `idnivel6` INTEGER NULL,
    `idnivel7` INTEGER NULL,
    `idnivel8` INTEGER NULL,
    `fecha_inicio` DATETIME(3) NULL,
    `fecha_vencimiento` DATETIME(3) NULL,
    `idcuenta` INTEGER NULL,
    `created_at` DATETIME(3) NULL,
    `updated_at` DATETIME(3) NULL,
    `created_by` INTEGER NULL,
    `activo` INTEGER NULL,
    `latitud` DOUBLE NULL,
    `longitud` DOUBLE NULL,
    `direccion` VARCHAR(191) NULL,

    PRIMARY KEY (`idtarea`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `TareaCompletada` (
    `idtarea_completada` INTEGER NOT NULL,
    `idtarea_grupo` INTEGER NULL,
    `nombre` VARCHAR(191) NULL,
    `descripcion` VARCHAR(191) NULL,
    `idpersona` INTEGER NULL,
    `idcuenta` INTEGER NULL,
    `foto` VARCHAR(191) NULL,
    `created_at` DATETIME(3) NULL,
    `updated_at` DATETIME(3) NULL,
    `activo` INTEGER NULL,
    `foto2` VARCHAR(191) NULL,
    `foto3` VARCHAR(191) NULL,
    `foto4` VARCHAR(191) NULL,
    `foto5` VARCHAR(191) NULL,
    `foto6` VARCHAR(191) NULL,

    PRIMARY KEY (`idtarea_completada`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `TareaGrupo` (
    `idtarea_grupo` INTEGER NOT NULL,
    `idtarea` INTEGER NOT NULL,
    `nivel` INTEGER NOT NULL,
    `idnivel1` INTEGER NULL,
    `idnivel2` INTEGER NULL,
    `idnivel3` INTEGER NULL,
    `idnivel4` INTEGER NULL,
    `idnivel5` INTEGER NULL,
    `idnivel6` INTEGER NULL,
    `idnivel7` INTEGER NULL,
    `idnivel8` INTEGER NULL,
    `idcuenta` INTEGER NOT NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `activo` INTEGER NOT NULL DEFAULT 1,

    PRIMARY KEY (`idtarea_grupo`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `TipoBeneficio` (
    `idtipo_beneficio` INTEGER NOT NULL,
    `idcuenta` INTEGER NOT NULL,
    `nombre` VARCHAR(191) NOT NULL,
    `activo` INTEGER NOT NULL DEFAULT 1,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`idtipo_beneficio`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Validacion` (
    `idvalidacion` INTEGER NOT NULL,
    `nota` VARCHAR(191) NULL,
    `validacion` INTEGER NULL,
    `idpersona` INTEGER NULL,
    `idcuenta` INTEGER NULL,
    `activo` INTEGER NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`idvalidacion`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
