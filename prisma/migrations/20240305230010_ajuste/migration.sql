/*
  Warnings:

  - You are about to drop the `ACCOUNTS` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `USERS` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `USERS` DROP FOREIGN KEY `USERS_account__fk_fkey`;

-- DropTable
DROP TABLE `ACCOUNTS`;

-- DropTable
DROP TABLE `USERS`;

-- CreateTable
CREATE TABLE `Users` (
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
CREATE TABLE `accounts` (
    `account_id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `level_1` VARCHAR(191) NOT NULL,
    `level_2` VARCHAR(191) NOT NULL,
    `level_3` VARCHAR(191) NOT NULL,
    `level_4` VARCHAR(191) NOT NULL,
    `level_5` VARCHAR(191) NOT NULL,
    `level_6` VARCHAR(191) NOT NULL,
    `level_7` VARCHAR(191) NOT NULL,
    `level_8` VARCHAR(191) NOT NULL,
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
ALTER TABLE `Users` ADD CONSTRAINT `Users_account__fk_fkey` FOREIGN KEY (`account__fk`) REFERENCES `accounts`(`account_id`) ON DELETE RESTRICT ON UPDATE CASCADE;
