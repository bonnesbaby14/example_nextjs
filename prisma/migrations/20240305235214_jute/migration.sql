/*
  Warnings:

  - You are about to drop the column `params_nivel1_fk` on the `Accounts` table. All the data in the column will be lost.
  - You are about to drop the column `params_nivel2_fk` on the `Accounts` table. All the data in the column will be lost.
  - You are about to drop the column `params_nivel3_fk` on the `Accounts` table. All the data in the column will be lost.
  - You are about to drop the column `params_nivel4_fk` on the `Accounts` table. All the data in the column will be lost.
  - You are about to drop the column `params_nivel5_fk` on the `Accounts` table. All the data in the column will be lost.
  - You are about to drop the column `params_nivel6_fk` on the `Accounts` table. All the data in the column will be lost.
  - You are about to drop the column `params_nivel7_fk` on the `Accounts` table. All the data in the column will be lost.
  - You are about to drop the column `params_nivel8_fk` on the `Accounts` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[param_nivel1_fk]` on the table `Accounts` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[param_nivel2_fk]` on the table `Accounts` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[param_nivel3_fk]` on the table `Accounts` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[param_nivel4_fk]` on the table `Accounts` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[param_nivel5_fk]` on the table `Accounts` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[param_nivel6_fk]` on the table `Accounts` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[param_nivel7_fk]` on the table `Accounts` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[param_nivel8_fk]` on the table `Accounts` will be added. If there are existing duplicate values, this will fail.

*/
-- AlterTable
ALTER TABLE `Accounts` DROP COLUMN `params_nivel1_fk`,
    DROP COLUMN `params_nivel2_fk`,
    DROP COLUMN `params_nivel3_fk`,
    DROP COLUMN `params_nivel4_fk`,
    DROP COLUMN `params_nivel5_fk`,
    DROP COLUMN `params_nivel6_fk`,
    DROP COLUMN `params_nivel7_fk`,
    DROP COLUMN `params_nivel8_fk`,
    ADD COLUMN `param_nivel1_fk` INTEGER NULL,
    ADD COLUMN `param_nivel2_fk` INTEGER NULL,
    ADD COLUMN `param_nivel3_fk` INTEGER NULL,
    ADD COLUMN `param_nivel4_fk` INTEGER NULL,
    ADD COLUMN `param_nivel5_fk` INTEGER NULL,
    ADD COLUMN `param_nivel6_fk` INTEGER NULL,
    ADD COLUMN `param_nivel7_fk` INTEGER NULL,
    ADD COLUMN `param_nivel8_fk` INTEGER NULL;

-- CreateTable
CREATE TABLE `Params` (
    `param_id` INTEGER NOT NULL AUTO_INCREMENT,
    `clave_elector` INTEGER NOT NULL DEFAULT 0,
    `curp` INTEGER NOT NULL DEFAULT 0,
    `section` INTEGER NOT NULL DEFAULT 0,
    `address` INTEGER NOT NULL DEFAULT 0,
    `ext` INTEGER NOT NULL DEFAULT 0,
    `phone` INTEGER NOT NULL DEFAULT 0,
    `event` INTEGER NOT NULL DEFAULT 0,
    `photo1` INTEGER NOT NULL DEFAULT 0,
    `photoo2` INTEGER NOT NULL DEFAULT 0,
    `photo3` INTEGER NOT NULL DEFAULT 0,
    `photo4` INTEGER NOT NULL DEFAULT 0,
    `photo5` INTEGER NOT NULL DEFAULT 0,
    `photo6` INTEGER NOT NULL DEFAULT 0,
    `photo7` INTEGER NOT NULL DEFAULT 0,
    `photo8` INTEGER NOT NULL DEFAULT 0,
    `photo9` INTEGER NOT NULL DEFAULT 0,
    `photo0` INTEGER NOT NULL DEFAULT 0,
    `first_level` INTEGER NOT NULL DEFAULT 1,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updated_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`param_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateIndex
CREATE UNIQUE INDEX `Accounts_param_nivel1_fk_key` ON `Accounts`(`param_nivel1_fk`);

-- CreateIndex
CREATE UNIQUE INDEX `Accounts_param_nivel2_fk_key` ON `Accounts`(`param_nivel2_fk`);

-- CreateIndex
CREATE UNIQUE INDEX `Accounts_param_nivel3_fk_key` ON `Accounts`(`param_nivel3_fk`);

-- CreateIndex
CREATE UNIQUE INDEX `Accounts_param_nivel4_fk_key` ON `Accounts`(`param_nivel4_fk`);

-- CreateIndex
CREATE UNIQUE INDEX `Accounts_param_nivel5_fk_key` ON `Accounts`(`param_nivel5_fk`);

-- CreateIndex
CREATE UNIQUE INDEX `Accounts_param_nivel6_fk_key` ON `Accounts`(`param_nivel6_fk`);

-- CreateIndex
CREATE UNIQUE INDEX `Accounts_param_nivel7_fk_key` ON `Accounts`(`param_nivel7_fk`);

-- CreateIndex
CREATE UNIQUE INDEX `Accounts_param_nivel8_fk_key` ON `Accounts`(`param_nivel8_fk`);

-- AddForeignKey
ALTER TABLE `Accounts` ADD CONSTRAINT `Accounts_param_nivel1_fk_fkey` FOREIGN KEY (`param_nivel1_fk`) REFERENCES `Params`(`param_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Accounts` ADD CONSTRAINT `Accounts_param_nivel2_fk_fkey` FOREIGN KEY (`param_nivel2_fk`) REFERENCES `Params`(`param_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Accounts` ADD CONSTRAINT `Accounts_param_nivel3_fk_fkey` FOREIGN KEY (`param_nivel3_fk`) REFERENCES `Params`(`param_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Accounts` ADD CONSTRAINT `Accounts_param_nivel4_fk_fkey` FOREIGN KEY (`param_nivel4_fk`) REFERENCES `Params`(`param_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Accounts` ADD CONSTRAINT `Accounts_param_nivel5_fk_fkey` FOREIGN KEY (`param_nivel5_fk`) REFERENCES `Params`(`param_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Accounts` ADD CONSTRAINT `Accounts_param_nivel6_fk_fkey` FOREIGN KEY (`param_nivel6_fk`) REFERENCES `Params`(`param_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Accounts` ADD CONSTRAINT `Accounts_param_nivel7_fk_fkey` FOREIGN KEY (`param_nivel7_fk`) REFERENCES `Params`(`param_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Accounts` ADD CONSTRAINT `Accounts_param_nivel8_fk_fkey` FOREIGN KEY (`param_nivel8_fk`) REFERENCES `Params`(`param_id`) ON DELETE SET NULL ON UPDATE CASCADE;
