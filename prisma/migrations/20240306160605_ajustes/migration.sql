/*
  Warnings:

  - You are about to drop the column `account__fk` on the `Users` table. All the data in the column will be lost.
  - Added the required column `account_fk` to the `Users` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `Users` DROP FOREIGN KEY `Users_account__fk_fkey`;

-- AlterTable
ALTER TABLE `Users` DROP COLUMN `account__fk`,
    ADD COLUMN `account_fk` INTEGER NOT NULL;

-- CreateTable
CREATE TABLE `Persons` (
    `person_id` INTEGER NOT NULL AUTO_INCREMENT,
    `account_fk` INTEGER NOT NULL,
    `last_name` VARCHAR(191) NOT NULL,
    `second_last_name` VARCHAR(191) NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `address` VARCHAR(191) NOT NULL,
    `ext` VARCHAR(191) NOT NULL,
    `int` VARCHAR(191) NOT NULL,
    `electoral_block` VARCHAR(191) NOT NULL,
    `neighborhood` VARCHAR(191) NOT NULL,
    `municipality_state` VARCHAR(191) NOT NULL,
    `age` INTEGER NOT NULL,
    `birth_date` VARCHAR(191) NOT NULL,
    `gender` VARCHAR(191) NOT NULL,
    `location` VARCHAR(191) NOT NULL,
    `emision` VARCHAR(191) NOT NULL,
    `validity` VARCHAR(191) NOT NULL,
    `curp` VARCHAR(191) NOT NULL,
    `clave_elector` VARCHAR(191) NOT NULL,
    `seccion` VARCHAR(191) NOT NULL,
    `stated` VARCHAR(191) NOT NULL,
    `municipaly` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `phone` VARCHAR(191) NOT NULL,
    `facebook` VARCHAR(191) NOT NULL,
    `twitter` VARCHAR(191) NOT NULL,
    `local_phone` VARCHAR(191) NOT NULL,
    `note_1` VARCHAR(191) NOT NULL,
    `note_2` VARCHAR(191) NOT NULL,
    `scholarship` VARCHAR(191) NOT NULL,
    `occupation` VARCHAR(191) NOT NULL,
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
    `lat` VARCHAR(191) NOT NULL,
    `lng` VARCHAR(191) NOT NULL,
    `level1_fk` INTEGER NULL,
    `level2_fk` INTEGER NULL,
    `level3_fk` INTEGER NULL,
    `level4_fk` INTEGER NULL,
    `level5_fk` INTEGER NULL,
    `level6_fk` INTEGER NULL,
    `level7_fk` INTEGER NULL,
    `level8_fk` INTEGER NULL,
    `created_by` INTEGER NOT NULL,
    `created_at` DATETIME(3) NOT NULL,
    `updated_by` INTEGER NOT NULL,
    `updated_at` DATETIME(3) NOT NULL,
    `mobile_registration` INTEGER NOT NULL DEFAULT 0,
    `active` INTEGER NOT NULL DEFAULT 1,
    `parm1` VARCHAR(191) NOT NULL,
    `parm2` VARCHAR(191) NOT NULL,
    `parm3` VARCHAR(191) NOT NULL,
    `card` INTEGER NOT NULL DEFAULT 0,
    `leader_person_id` VARCHAR(191) NOT NULL,
    `validation_id` INTEGER NOT NULL,
    `whatsapp` INTEGER NOT NULL DEFAULT 0,

    PRIMARY KEY (`person_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `GroupsLevel1` (
    `group_id` INTEGER NOT NULL AUTO_INCREMENT,
    `account_fk` INTEGER NOT NULL,
    `name` VARCHAR(191) NOT NULL,
    `message` VARCHAR(191) NOT NULL,
    `active` INTEGER NOT NULL DEFAULT 1,
    `created_at` DATETIME(3) NOT NULL,
    `updated_at` DATETIME(3) NOT NULL,
    `created_by` INTEGER NOT NULL,
    `goal` INTEGER NOT NULL DEFAULT 0,

    PRIMARY KEY (`group_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `GroupsLevel2` (
    `group_id` INTEGER NOT NULL AUTO_INCREMENT,
    `account_fk` INTEGER NOT NULL,
    `level1_fk` INTEGER NULL,
    `name` VARCHAR(191) NOT NULL,
    `message` VARCHAR(191) NOT NULL,
    `active` INTEGER NOT NULL DEFAULT 1,
    `created_at` DATETIME(3) NOT NULL,
    `updated_at` DATETIME(3) NOT NULL,
    `created_by` INTEGER NOT NULL,
    `goal` INTEGER NOT NULL DEFAULT 0,

    PRIMARY KEY (`group_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `GroupsLevel3` (
    `group_id` INTEGER NOT NULL AUTO_INCREMENT,
    `account_fk` INTEGER NOT NULL,
    `level1_fk` INTEGER NULL,
    `level2_fk` INTEGER NULL,
    `name` VARCHAR(191) NOT NULL,
    `message` VARCHAR(191) NOT NULL,
    `active` INTEGER NOT NULL DEFAULT 1,
    `created_at` DATETIME(3) NOT NULL,
    `updated_at` DATETIME(3) NOT NULL,
    `created_by` INTEGER NOT NULL,
    `goal` INTEGER NOT NULL DEFAULT 0,

    PRIMARY KEY (`group_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `GroupsLevel4` (
    `group_id` INTEGER NOT NULL AUTO_INCREMENT,
    `account_fk` INTEGER NOT NULL,
    `level1_fk` INTEGER NULL,
    `level2_fk` INTEGER NULL,
    `level3_fk` INTEGER NULL,
    `name` VARCHAR(191) NOT NULL,
    `message` VARCHAR(191) NOT NULL,
    `active` INTEGER NOT NULL DEFAULT 1,
    `created_at` DATETIME(3) NOT NULL,
    `updated_at` DATETIME(3) NOT NULL,
    `created_by` INTEGER NOT NULL,
    `goal` INTEGER NOT NULL DEFAULT 0,

    PRIMARY KEY (`group_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `GroupsLevel5` (
    `group_id` INTEGER NOT NULL AUTO_INCREMENT,
    `account_fk` INTEGER NOT NULL,
    `level1_fk` INTEGER NULL,
    `level2_fk` INTEGER NULL,
    `level3_fk` INTEGER NULL,
    `level4_fk` INTEGER NULL,
    `name` VARCHAR(191) NOT NULL,
    `message` VARCHAR(191) NOT NULL,
    `active` INTEGER NOT NULL DEFAULT 1,
    `created_at` DATETIME(3) NOT NULL,
    `updated_at` DATETIME(3) NOT NULL,
    `created_by` INTEGER NOT NULL,
    `goal` INTEGER NOT NULL DEFAULT 0,

    PRIMARY KEY (`group_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `GroupsLevel6` (
    `group_id` INTEGER NOT NULL AUTO_INCREMENT,
    `account_fk` INTEGER NOT NULL,
    `level1_fk` INTEGER NULL,
    `level2_fk` INTEGER NULL,
    `level3_fk` INTEGER NULL,
    `level4_fk` INTEGER NULL,
    `level5_fk` INTEGER NULL,
    `name` VARCHAR(191) NOT NULL,
    `message` VARCHAR(191) NOT NULL,
    `active` INTEGER NOT NULL DEFAULT 1,
    `created_at` DATETIME(3) NOT NULL,
    `updated_at` DATETIME(3) NOT NULL,
    `created_by` INTEGER NOT NULL,
    `goal` INTEGER NOT NULL DEFAULT 0,

    PRIMARY KEY (`group_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `GroupsLevel7` (
    `group_id` INTEGER NOT NULL AUTO_INCREMENT,
    `account_fk` INTEGER NOT NULL,
    `level1_fk` INTEGER NULL,
    `level2_fk` INTEGER NULL,
    `level3_fk` INTEGER NULL,
    `level4_fk` INTEGER NULL,
    `level5_fk` INTEGER NULL,
    `level6_fk` INTEGER NULL,
    `name` VARCHAR(191) NOT NULL,
    `message` VARCHAR(191) NOT NULL,
    `active` INTEGER NOT NULL DEFAULT 1,
    `created_at` DATETIME(3) NOT NULL,
    `updated_at` DATETIME(3) NOT NULL,
    `created_by` INTEGER NOT NULL,
    `goal` INTEGER NOT NULL DEFAULT 0,

    PRIMARY KEY (`group_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `GroupsLevel8` (
    `group_id` INTEGER NOT NULL AUTO_INCREMENT,
    `account_fk` INTEGER NOT NULL,
    `level1_fk` INTEGER NULL,
    `level2_fk` INTEGER NULL,
    `level3_fk` INTEGER NULL,
    `level4_fk` INTEGER NULL,
    `level5_fk` INTEGER NULL,
    `level6_fk` INTEGER NULL,
    `level7_fk` INTEGER NULL,
    `name` VARCHAR(191) NOT NULL,
    `message` VARCHAR(191) NOT NULL,
    `active` INTEGER NOT NULL DEFAULT 1,
    `created_at` DATETIME(3) NOT NULL,
    `updated_at` DATETIME(3) NOT NULL,
    `created_by` INTEGER NOT NULL,
    `goal` INTEGER NOT NULL DEFAULT 0,

    PRIMARY KEY (`group_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Users` ADD CONSTRAINT `Users_account_fk_fkey` FOREIGN KEY (`account_fk`) REFERENCES `Accounts`(`account_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Persons` ADD CONSTRAINT `Persons_account_fk_fkey` FOREIGN KEY (`account_fk`) REFERENCES `Accounts`(`account_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Persons` ADD CONSTRAINT `Persons_level1_fk_fkey` FOREIGN KEY (`level1_fk`) REFERENCES `GroupsLevel1`(`group_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Persons` ADD CONSTRAINT `Persons_level2_fk_fkey` FOREIGN KEY (`level2_fk`) REFERENCES `GroupsLevel2`(`group_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Persons` ADD CONSTRAINT `Persons_level3_fk_fkey` FOREIGN KEY (`level3_fk`) REFERENCES `GroupsLevel3`(`group_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Persons` ADD CONSTRAINT `Persons_level4_fk_fkey` FOREIGN KEY (`level4_fk`) REFERENCES `GroupsLevel4`(`group_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Persons` ADD CONSTRAINT `Persons_level5_fk_fkey` FOREIGN KEY (`level5_fk`) REFERENCES `GroupsLevel5`(`group_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Persons` ADD CONSTRAINT `Persons_level6_fk_fkey` FOREIGN KEY (`level6_fk`) REFERENCES `GroupsLevel6`(`group_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Persons` ADD CONSTRAINT `Persons_level7_fk_fkey` FOREIGN KEY (`level7_fk`) REFERENCES `GroupsLevel7`(`group_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Persons` ADD CONSTRAINT `Persons_level8_fk_fkey` FOREIGN KEY (`level8_fk`) REFERENCES `GroupsLevel8`(`group_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `GroupsLevel2` ADD CONSTRAINT `GroupsLevel2_level1_fk_fkey` FOREIGN KEY (`level1_fk`) REFERENCES `GroupsLevel1`(`group_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `GroupsLevel3` ADD CONSTRAINT `GroupsLevel3_level1_fk_fkey` FOREIGN KEY (`level1_fk`) REFERENCES `GroupsLevel1`(`group_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `GroupsLevel3` ADD CONSTRAINT `GroupsLevel3_level2_fk_fkey` FOREIGN KEY (`level2_fk`) REFERENCES `GroupsLevel2`(`group_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `GroupsLevel4` ADD CONSTRAINT `GroupsLevel4_level1_fk_fkey` FOREIGN KEY (`level1_fk`) REFERENCES `GroupsLevel1`(`group_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `GroupsLevel4` ADD CONSTRAINT `GroupsLevel4_level2_fk_fkey` FOREIGN KEY (`level2_fk`) REFERENCES `GroupsLevel2`(`group_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `GroupsLevel4` ADD CONSTRAINT `GroupsLevel4_level3_fk_fkey` FOREIGN KEY (`level3_fk`) REFERENCES `GroupsLevel3`(`group_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `GroupsLevel5` ADD CONSTRAINT `GroupsLevel5_level1_fk_fkey` FOREIGN KEY (`level1_fk`) REFERENCES `GroupsLevel1`(`group_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `GroupsLevel5` ADD CONSTRAINT `GroupsLevel5_level2_fk_fkey` FOREIGN KEY (`level2_fk`) REFERENCES `GroupsLevel2`(`group_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `GroupsLevel5` ADD CONSTRAINT `GroupsLevel5_level3_fk_fkey` FOREIGN KEY (`level3_fk`) REFERENCES `GroupsLevel3`(`group_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `GroupsLevel5` ADD CONSTRAINT `GroupsLevel5_level4_fk_fkey` FOREIGN KEY (`level4_fk`) REFERENCES `GroupsLevel4`(`group_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `GroupsLevel6` ADD CONSTRAINT `GroupsLevel6_level1_fk_fkey` FOREIGN KEY (`level1_fk`) REFERENCES `GroupsLevel1`(`group_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `GroupsLevel6` ADD CONSTRAINT `GroupsLevel6_level2_fk_fkey` FOREIGN KEY (`level2_fk`) REFERENCES `GroupsLevel2`(`group_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `GroupsLevel6` ADD CONSTRAINT `GroupsLevel6_level3_fk_fkey` FOREIGN KEY (`level3_fk`) REFERENCES `GroupsLevel3`(`group_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `GroupsLevel6` ADD CONSTRAINT `GroupsLevel6_level4_fk_fkey` FOREIGN KEY (`level4_fk`) REFERENCES `GroupsLevel4`(`group_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `GroupsLevel6` ADD CONSTRAINT `GroupsLevel6_level5_fk_fkey` FOREIGN KEY (`level5_fk`) REFERENCES `GroupsLevel5`(`group_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `GroupsLevel7` ADD CONSTRAINT `GroupsLevel7_level1_fk_fkey` FOREIGN KEY (`level1_fk`) REFERENCES `GroupsLevel1`(`group_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `GroupsLevel7` ADD CONSTRAINT `GroupsLevel7_level2_fk_fkey` FOREIGN KEY (`level2_fk`) REFERENCES `GroupsLevel2`(`group_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `GroupsLevel7` ADD CONSTRAINT `GroupsLevel7_level3_fk_fkey` FOREIGN KEY (`level3_fk`) REFERENCES `GroupsLevel3`(`group_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `GroupsLevel7` ADD CONSTRAINT `GroupsLevel7_level4_fk_fkey` FOREIGN KEY (`level4_fk`) REFERENCES `GroupsLevel4`(`group_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `GroupsLevel7` ADD CONSTRAINT `GroupsLevel7_level5_fk_fkey` FOREIGN KEY (`level5_fk`) REFERENCES `GroupsLevel5`(`group_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `GroupsLevel7` ADD CONSTRAINT `GroupsLevel7_level6_fk_fkey` FOREIGN KEY (`level6_fk`) REFERENCES `GroupsLevel6`(`group_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `GroupsLevel8` ADD CONSTRAINT `GroupsLevel8_level1_fk_fkey` FOREIGN KEY (`level1_fk`) REFERENCES `GroupsLevel1`(`group_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `GroupsLevel8` ADD CONSTRAINT `GroupsLevel8_level2_fk_fkey` FOREIGN KEY (`level2_fk`) REFERENCES `GroupsLevel2`(`group_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `GroupsLevel8` ADD CONSTRAINT `GroupsLevel8_level3_fk_fkey` FOREIGN KEY (`level3_fk`) REFERENCES `GroupsLevel3`(`group_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `GroupsLevel8` ADD CONSTRAINT `GroupsLevel8_level4_fk_fkey` FOREIGN KEY (`level4_fk`) REFERENCES `GroupsLevel4`(`group_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `GroupsLevel8` ADD CONSTRAINT `GroupsLevel8_level5_fk_fkey` FOREIGN KEY (`level5_fk`) REFERENCES `GroupsLevel5`(`group_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `GroupsLevel8` ADD CONSTRAINT `GroupsLevel8_level6_fk_fkey` FOREIGN KEY (`level6_fk`) REFERENCES `GroupsLevel6`(`group_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `GroupsLevel8` ADD CONSTRAINT `GroupsLevel8_level7_fk_fkey` FOREIGN KEY (`level7_fk`) REFERENCES `GroupsLevel7`(`group_id`) ON DELETE SET NULL ON UPDATE CASCADE;
