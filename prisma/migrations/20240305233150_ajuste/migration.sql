/*
  Warnings:

  - A unique constraint covering the columns `[permission_level1_fk]` on the table `Accounts` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[permission_level2_fk]` on the table `Accounts` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[permission_level3_fk]` on the table `Accounts` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[permission_level4_fk]` on the table `Accounts` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[permission_level5_fk]` on the table `Accounts` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[permission_level6_fk]` on the table `Accounts` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[permission_level7_fk]` on the table `Accounts` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[permission_level8_fk]` on the table `Accounts` will be added. If there are existing duplicate values, this will fail.

*/
-- AlterTable
ALTER TABLE `Accounts` MODIFY `level_6` VARCHAR(191) NULL,
    MODIFY `level_7` VARCHAR(191) NULL,
    MODIFY `level_8` VARCHAR(191) NULL,
    MODIFY `photo_1` VARCHAR(191) NULL,
    MODIFY `photo_2` VARCHAR(191) NULL,
    MODIFY `photo_3` VARCHAR(191) NULL,
    MODIFY `photo_4` VARCHAR(191) NULL,
    MODIFY `photo_5` VARCHAR(191) NULL,
    MODIFY `photo_6` VARCHAR(191) NULL,
    MODIFY `photo_7` VARCHAR(191) NULL,
    MODIFY `photo_8` VARCHAR(191) NULL,
    MODIFY `photo_9` VARCHAR(191) NULL,
    MODIFY `photo_10` VARCHAR(191) NULL,
    MODIFY `message` VARCHAR(191) NULL,
    MODIFY `params_nivel1_fk` INTEGER NOT NULL DEFAULT 0,
    MODIFY `params_nivel2_fk` INTEGER NOT NULL DEFAULT 0,
    MODIFY `params_nivel3_fk` INTEGER NOT NULL DEFAULT 0,
    MODIFY `params_nivel4_fk` INTEGER NOT NULL DEFAULT 0,
    MODIFY `params_nivel5_fk` INTEGER NOT NULL DEFAULT 0,
    MODIFY `params_nivel6_fk` INTEGER NOT NULL DEFAULT 0,
    MODIFY `params_nivel7_fk` INTEGER NOT NULL DEFAULT 0,
    MODIFY `params_nivel8_fk` INTEGER NOT NULL DEFAULT 0,
    MODIFY `created_by` INTEGER NOT NULL DEFAULT 0,
    MODIFY `updated_by` INTEGER NOT NULL DEFAULT 0,
    MODIFY `block_deadline_date` DATETIME(3) NULL,
    MODIFY `stated_fk` INTEGER NOT NULL DEFAULT 0,
    MODIFY `municipality_fk` INTEGER NOT NULL DEFAULT 0;

-- CreateTable
CREATE TABLE `Permissions` (
    `permission_id` INTEGER NOT NULL AUTO_INCREMENT,
    `map` INTEGER NOT NULL DEFAULT 1,
    `task` INTEGER NOT NULL DEFAULT 1,
    `report` INTEGER NOT NULL DEFAULT 1,
    `setting` INTEGER NOT NULL DEFAULT 1,
    `event` INTEGER NOT NULL DEFAULT 1,
    `contact` INTEGER NOT NULL DEFAULT 1,
    `beneficiary` INTEGER NOT NULL DEFAULT 1,
    `card` INTEGER NOT NULL DEFAULT 1,
    `audit` INTEGER NOT NULL DEFAULT 1,
    `display_levels` INTEGER NOT NULL DEFAULT 1,
    `updated_at` DATETIME(3) NOT NULL,
    `created_at` DATETIME(3) NOT NULL,

    PRIMARY KEY (`permission_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateIndex
CREATE UNIQUE INDEX `Accounts_permission_level1_fk_key` ON `Accounts`(`permission_level1_fk`);

-- CreateIndex
CREATE UNIQUE INDEX `Accounts_permission_level2_fk_key` ON `Accounts`(`permission_level2_fk`);

-- CreateIndex
CREATE UNIQUE INDEX `Accounts_permission_level3_fk_key` ON `Accounts`(`permission_level3_fk`);

-- CreateIndex
CREATE UNIQUE INDEX `Accounts_permission_level4_fk_key` ON `Accounts`(`permission_level4_fk`);

-- CreateIndex
CREATE UNIQUE INDEX `Accounts_permission_level5_fk_key` ON `Accounts`(`permission_level5_fk`);

-- CreateIndex
CREATE UNIQUE INDEX `Accounts_permission_level6_fk_key` ON `Accounts`(`permission_level6_fk`);

-- CreateIndex
CREATE UNIQUE INDEX `Accounts_permission_level7_fk_key` ON `Accounts`(`permission_level7_fk`);

-- CreateIndex
CREATE UNIQUE INDEX `Accounts_permission_level8_fk_key` ON `Accounts`(`permission_level8_fk`);

-- AddForeignKey
ALTER TABLE `Accounts` ADD CONSTRAINT `Accounts_permission_level1_fk_fkey` FOREIGN KEY (`permission_level1_fk`) REFERENCES `Permissions`(`permission_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Accounts` ADD CONSTRAINT `Accounts_permission_level2_fk_fkey` FOREIGN KEY (`permission_level2_fk`) REFERENCES `Permissions`(`permission_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Accounts` ADD CONSTRAINT `Accounts_permission_level3_fk_fkey` FOREIGN KEY (`permission_level3_fk`) REFERENCES `Permissions`(`permission_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Accounts` ADD CONSTRAINT `Accounts_permission_level4_fk_fkey` FOREIGN KEY (`permission_level4_fk`) REFERENCES `Permissions`(`permission_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Accounts` ADD CONSTRAINT `Accounts_permission_level5_fk_fkey` FOREIGN KEY (`permission_level5_fk`) REFERENCES `Permissions`(`permission_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Accounts` ADD CONSTRAINT `Accounts_permission_level6_fk_fkey` FOREIGN KEY (`permission_level6_fk`) REFERENCES `Permissions`(`permission_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Accounts` ADD CONSTRAINT `Accounts_permission_level7_fk_fkey` FOREIGN KEY (`permission_level7_fk`) REFERENCES `Permissions`(`permission_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Accounts` ADD CONSTRAINT `Accounts_permission_level8_fk_fkey` FOREIGN KEY (`permission_level8_fk`) REFERENCES `Permissions`(`permission_id`) ON DELETE RESTRICT ON UPDATE CASCADE;
