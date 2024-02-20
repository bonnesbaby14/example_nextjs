-- CreateTable
CREATE TABLE `Beneficio` (
    `idbeneficio` INTEGER NOT NULL,
    `idcuenta` INTEGER NOT NULL,
    `idpersona` INTEGER NOT NULL,
    `idtipo_beneficio` INTEGER NOT NULL,
    `descripcion` VARCHAR(191) NULL,
    `cantidad` INTEGER NOT NULL,
    `archivo` VARCHAR(191) NULL,
    `activo` INTEGER NOT NULL DEFAULT 1,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `created_by` INTEGER NOT NULL,
    `updated_by` INTEGER NULL,

    PRIMARY KEY (`idbeneficio`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Contacto` (
    `idcontacto` INTEGER NOT NULL,
    `nombre` VARCHAR(191) NULL,
    `descripcion` VARCHAR(191) NULL,
    `estado` VARCHAR(191) NULL,
    `nivel` INTEGER NULL,
    `idnivel1` INTEGER NULL,
    `idnivel2` INTEGER NULL,
    `idnivel3` INTEGER NULL,
    `idnivel4` INTEGER NULL,
    `idnivel5` INTEGER NULL,
    `idnivel6` INTEGER NULL,
    `idnivel7` INTEGER NULL,
    `idnivel8` INTEGER NULL,
    `origen_idnivel1` INTEGER NULL,
    `origen_idnivel2` INTEGER NULL,
    `origen_idnivel3` INTEGER NULL,
    `origen_idnivel4` INTEGER NULL,
    `origen_idnivel5` INTEGER NULL,
    `origen_idnivel6` INTEGER NULL,
    `origen_idnivel7` INTEGER NULL,
    `origen_idnivel8` INTEGER NULL,
    `idcuenta` INTEGER NULL,
    `created_at` DATETIME(3) NULL,
    `updated_at` DATETIME(3) NULL,
    `created_by` INTEGER NULL,
    `activo` INTEGER NULL DEFAULT 1,

    PRIMARY KEY (`idcontacto`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `ContactoAsignado` (
    `idcontacto_asignado` INTEGER NOT NULL,
    `idcontacto_grupo` INTEGER NULL,
    `nombre` VARCHAR(191) NULL,
    `descripcion` VARCHAR(191) NULL,
    `nota` VARCHAR(191) NULL,
    `estado` VARCHAR(191) NULL,
    `idpersona` INTEGER NULL,
    `idcuenta` INTEGER NULL,
    `foto` VARCHAR(191) NULL,
    `idpersona_completada` INTEGER NULL,
    `created_at` DATETIME(3) NULL,
    `updated_at` DATETIME(3) NULL,
    `activo` INTEGER NULL DEFAULT 1,

    PRIMARY KEY (`idcontacto_asignado`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `ContactoGrupo` (
    `idcontacto_grupo` INTEGER NOT NULL,
    `idcontacto` INTEGER NOT NULL,
    `idcuenta` INTEGER NOT NULL,
    `idnivel1` INTEGER NULL,
    `idnivel2` INTEGER NULL,
    `idnivel3` INTEGER NULL,
    `idnivel4` INTEGER NULL,
    `idnivel5` INTEGER NULL,
    `idnivel6` INTEGER NULL,
    `idnivel7` INTEGER NULL,
    `idnivel8` INTEGER NULL,
    `activo` INTEGER NOT NULL DEFAULT 1,
    `nivel` INTEGER NOT NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`idcontacto_grupo`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `ConversacionUser` (
    `idconversacion_user` INTEGER NOT NULL,
    `idconversacion` INTEGER NULL,
    `iduser` INTEGER NULL,

    PRIMARY KEY (`idconversacion_user`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Credencializacion` (
    `idcredencializacion` INTEGER NOT NULL,
    `idcuenta` INTEGER NOT NULL,
    `idgrupo` INTEGER NULL DEFAULT -1,
    `idpersona` INTEGER NULL,
    `idpersona_lider` INTEGER NULL,
    `nivel` INTEGER NOT NULL,
    `activo` INTEGER NOT NULL DEFAULT 1,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `created_by` INTEGER NULL,

    PRIMARY KEY (`idcredencializacion`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `CredencializacionPersona` (
    `idcredencializacion_persona` INTEGER NOT NULL,
    `idpersona` INTEGER NOT NULL,
    `idcredencializacion` INTEGER NOT NULL,
    `activo` INTEGER NOT NULL DEFAULT 1,

    PRIMARY KEY (`idcredencializacion_persona`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Cuenta` (
    `idcuenta` INTEGER NOT NULL,
    `nombre` VARCHAR(191) NULL,
    `nivel_1` VARCHAR(191) NULL,
    `nivel_2` VARCHAR(191) NULL,
    `nivel_3` VARCHAR(191) NULL,
    `nivel_4` VARCHAR(191) NULL,
    `nivel_5` VARCHAR(191) NULL,
    `nivel_6` VARCHAR(191) NULL,
    `nivel_7` VARCHAR(191) NULL,
    `nivel_8` VARCHAR(191) NULL,
    `foto_1` VARCHAR(191) NULL,
    `catalogo_1` VARCHAR(191) NULL,
    `catalogo_2` VARCHAR(191) NULL,
    `catalogo_3` VARCHAR(191) NULL,
    `foto_2` VARCHAR(191) NULL,
    `foto_3` VARCHAR(191) NULL,
    `foto_4` VARCHAR(191) NULL,
    `foto_5` VARCHAR(191) NULL,
    `foto_6` VARCHAR(191) NULL,
    `foto_7` VARCHAR(191) NULL,
    `foto_8` VARCHAR(191) NULL,
    `foto_9` VARCHAR(191) NULL,
    `foto_10` VARCHAR(191) NULL,
    `mensaje` VARCHAR(191) NULL,
    `numero_niveles` INTEGER NOT NULL DEFAULT 5,
    `parametrizables_nivel1` INTEGER NULL,
    `parametrizables_nivel2` INTEGER NULL,
    `parametrizables_nivel3` INTEGER NULL,
    `parametrizables_nivel4` INTEGER NULL,
    `parametrizables_nivel5` INTEGER NULL,
    `parametrizables_nivel6` INTEGER NULL,
    `parametrizables_nivel7` INTEGER NULL,
    `parametrizables_nivel8` INTEGER NULL,
    `created_by` INTEGER NULL,
    `created_at` DATETIME(3) NULL,
    `updated_by` INTEGER NULL,
    `updated_at` DATETIME(3) NULL,
    `habilitado` INTEGER NOT NULL DEFAULT 1,
    `fecha_limite_bloqueo` DATETIME(3) NULL,
    `activo` INTEGER NOT NULL DEFAULT 1,
    `habilitar_carga` INTEGER NOT NULL DEFAULT 1,
    `gratuita` INTEGER NOT NULL DEFAULT 0,
    `lite` INTEGER NOT NULL DEFAULT 0,
    `base_datos_SAC` VARCHAR(191) NULL,
    `usuario_SAC` VARCHAR(191) NULL,
    `idestado` INTEGER NOT NULL,
    `idmunicipio` INTEGER NOT NULL,
    `permiso_nivel1` INTEGER NULL,
    `permiso_nivel2` INTEGER NULL,
    `permiso_nivel3` INTEGER NULL,
    `permiso_nivel4` INTEGER NULL,
    `permiso_nivel5` INTEGER NULL,
    `permiso_nivel6` INTEGER NULL,
    `permiso_nivel7` INTEGER NULL,
    `permiso_nivel8` INTEGER NULL,
    `vista_lideres` INTEGER NOT NULL DEFAULT 0,
    `registro_inferior_inmediato` INTEGER NOT NULL DEFAULT 0,

    PRIMARY KEY (`idcuenta`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Escolaridad` (
    `idescolaridad` INTEGER NOT NULL,
    `nombre` VARCHAR(191) NOT NULL,
    `idcuenta` INTEGER NULL,
    `activo` INTEGER NOT NULL DEFAULT 1,
    `created_at` DATETIME(3) NULL,
    `updated_at` DATETIME(3) NULL,

    PRIMARY KEY (`idescolaridad`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `EscolaridadDefault` (
    `idescolaridad` INTEGER NOT NULL,
    `nombre` VARCHAR(191) NOT NULL,
    `activo` INTEGER NOT NULL DEFAULT 1,

    PRIMARY KEY (`idescolaridad`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Estado` (
    `idestado` INTEGER NOT NULL,
    `estado` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`idestado`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `GrupoNivel1` (
    `idgrupo_nivel1` INTEGER NOT NULL,
    `idcuenta` INTEGER NOT NULL,
    `nombre` VARCHAR(191) NULL,
    `mensaje` VARCHAR(191) NULL,
    `activo` INTEGER NOT NULL DEFAULT 1,
    `created_at` DATETIME(3) NULL,
    `updated_at` DATETIME(3) NULL,
    `created_by` INTEGER NULL,
    `meta` INTEGER NOT NULL DEFAULT 0,

    PRIMARY KEY (`idgrupo_nivel1`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `GrupoNivel2` (
    `idgrupo_nivel2` INTEGER NOT NULL,
    `idcuenta` INTEGER NOT NULL,
    `idnivel1` INTEGER NULL,
    `nombre` VARCHAR(191) NULL,
    `mensaje` VARCHAR(191) NULL,
    `activo` INTEGER NOT NULL DEFAULT 1,
    `created_at` DATETIME(3) NULL,
    `updated_at` DATETIME(3) NULL,
    `created_by` INTEGER NULL,
    `meta` INTEGER NOT NULL DEFAULT 0,

    PRIMARY KEY (`idgrupo_nivel2`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `GrupoNivel3` (
    `idgrupo_nivel3` INTEGER NOT NULL,
    `idcuenta` INTEGER NOT NULL,
    `idnivel1` INTEGER NULL,
    `idnivel2` INTEGER NULL,
    `nombre` VARCHAR(191) NULL,
    `mensaje` VARCHAR(191) NULL,
    `activo` INTEGER NOT NULL DEFAULT 1,
    `created_at` DATETIME(3) NULL,
    `updated_at` DATETIME(3) NULL,
    `created_by` INTEGER NULL,
    `meta` INTEGER NOT NULL DEFAULT 0,

    PRIMARY KEY (`idgrupo_nivel3`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `GrupoNivel4` (
    `idgrupo_nivel4` INTEGER NOT NULL,
    `idcuenta` INTEGER NOT NULL,
    `idnivel1` INTEGER NULL,
    `idnivel2` INTEGER NULL,
    `idnivel3` INTEGER NULL,
    `nombre` VARCHAR(191) NULL,
    `mensaje` VARCHAR(191) NULL,
    `activo` INTEGER NOT NULL DEFAULT 1,
    `created_at` DATETIME(3) NULL,
    `updated_at` DATETIME(3) NULL,
    `created_by` INTEGER NULL,
    `meta` INTEGER NOT NULL DEFAULT 0,

    PRIMARY KEY (`idgrupo_nivel4`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `GrupoNivel5` (
    `idgrupo_nivel5` INTEGER NOT NULL,
    `idcuenta` INTEGER NOT NULL,
    `idnivel1` INTEGER NULL,
    `idnivel2` INTEGER NULL,
    `idnivel3` INTEGER NULL,
    `idnivel4` INTEGER NULL,
    `nombre` VARCHAR(191) NULL,
    `mensaje` VARCHAR(191) NULL,
    `activo` INTEGER NOT NULL DEFAULT 1,
    `created_at` DATETIME(3) NULL,
    `updated_at` DATETIME(3) NULL,
    `created_by` INTEGER NULL,
    `meta` INTEGER NOT NULL DEFAULT 0,

    PRIMARY KEY (`idgrupo_nivel5`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `GrupoNivel6` (
    `idgrupo_nivel6` INTEGER NOT NULL,
    `idcuenta` INTEGER NOT NULL,
    `idnivel1` INTEGER NULL,
    `idnivel2` INTEGER NULL,
    `idnivel3` INTEGER NULL,
    `idnivel4` INTEGER NULL,
    `idnivel5` INTEGER NOT NULL,
    `nombre` VARCHAR(191) NULL,
    `mensaje` VARCHAR(191) NULL,
    `activo` INTEGER NOT NULL DEFAULT 1,
    `created_at` DATETIME(3) NULL,
    `updated_at` DATETIME(3) NULL,
    `created_by` INTEGER NULL,
    `meta` INTEGER NOT NULL DEFAULT 0,

    PRIMARY KEY (`idgrupo_nivel6`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `GrupoNivel7` (
    `idgrupo_nivel7` INTEGER NOT NULL,
    `idcuenta` INTEGER NOT NULL,
    `idnivel1` INTEGER NULL,
    `idnivel2` INTEGER NULL,
    `idnivel3` INTEGER NULL,
    `idnivel4` INTEGER NULL,
    `idnivel5` INTEGER NOT NULL,
    `idnivel6` INTEGER NULL,
    `nombre` VARCHAR(191) NULL,
    `mensaje` VARCHAR(191) NULL,
    `activo` INTEGER NOT NULL DEFAULT 1,
    `created_at` DATETIME(3) NULL,
    `updated_at` DATETIME(3) NULL,
    `created_by` INTEGER NULL,
    `meta` INTEGER NOT NULL DEFAULT 0,

    PRIMARY KEY (`idgrupo_nivel7`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `GrupoNivel8` (
    `idgrupo_nivel8` INTEGER NOT NULL,
    `idcuenta` INTEGER NOT NULL,
    `idnivel1` INTEGER NULL,
    `idnivel2` INTEGER NULL,
    `idnivel3` INTEGER NULL,
    `idnivel4` INTEGER NULL,
    `idnivel5` INTEGER NOT NULL,
    `idnivel6` INTEGER NULL,
    `idnivel7` INTEGER NOT NULL,
    `nombre` VARCHAR(191) NULL,
    `mensaje` VARCHAR(191) NULL,
    `activo` INTEGER NOT NULL DEFAULT 1,
    `created_at` DATETIME(3) NULL,
    `updated_at` DATETIME(3) NULL,
    `created_by` INTEGER NULL,
    `meta` INTEGER NOT NULL DEFAULT 0,

    PRIMARY KEY (`idgrupo_nivel8`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Log` (
    `idlog` INTEGER NOT NULL,
    `idusuario` INTEGER NOT NULL,
    `accion` VARCHAR(191) NOT NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`idlog`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Mensaje` (
    `idmensaje` INTEGER NOT NULL,
    `mensaje` VARCHAR(191) NOT NULL DEFAULT '',
    `idremitente` INTEGER NULL,
    `idconversacion` INTEGER NULL,
    `tipo` VARCHAR(191) NULL,

    PRIMARY KEY (`idmensaje`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
