-- DropForeignKey
ALTER TABLE `Accounts` DROP FOREIGN KEY `Accounts_permission_level1_fk_fkey`;

-- DropForeignKey
ALTER TABLE `Accounts` DROP FOREIGN KEY `Accounts_permission_level2_fk_fkey`;

-- DropForeignKey
ALTER TABLE `Accounts` DROP FOREIGN KEY `Accounts_permission_level3_fk_fkey`;

-- DropForeignKey
ALTER TABLE `Accounts` DROP FOREIGN KEY `Accounts_permission_level4_fk_fkey`;

-- DropForeignKey
ALTER TABLE `Accounts` DROP FOREIGN KEY `Accounts_permission_level5_fk_fkey`;

-- DropForeignKey
ALTER TABLE `Accounts` DROP FOREIGN KEY `Accounts_permission_level6_fk_fkey`;

-- DropForeignKey
ALTER TABLE `Accounts` DROP FOREIGN KEY `Accounts_permission_level7_fk_fkey`;

-- DropForeignKey
ALTER TABLE `Accounts` DROP FOREIGN KEY `Accounts_permission_level8_fk_fkey`;

-- AlterTable
ALTER TABLE `Accounts` MODIFY `permission_level1_fk` INTEGER NULL,
    MODIFY `permission_level2_fk` INTEGER NULL,
    MODIFY `permission_level3_fk` INTEGER NULL,
    MODIFY `permission_level4_fk` INTEGER NULL,
    MODIFY `permission_level5_fk` INTEGER NULL,
    MODIFY `permission_level6_fk` INTEGER NULL,
    MODIFY `permission_level7_fk` INTEGER NULL,
    MODIFY `permission_level8_fk` INTEGER NULL;

-- AddForeignKey
ALTER TABLE `Accounts` ADD CONSTRAINT `Accounts_permission_level1_fk_fkey` FOREIGN KEY (`permission_level1_fk`) REFERENCES `Permissions`(`permission_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Accounts` ADD CONSTRAINT `Accounts_permission_level2_fk_fkey` FOREIGN KEY (`permission_level2_fk`) REFERENCES `Permissions`(`permission_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Accounts` ADD CONSTRAINT `Accounts_permission_level3_fk_fkey` FOREIGN KEY (`permission_level3_fk`) REFERENCES `Permissions`(`permission_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Accounts` ADD CONSTRAINT `Accounts_permission_level4_fk_fkey` FOREIGN KEY (`permission_level4_fk`) REFERENCES `Permissions`(`permission_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Accounts` ADD CONSTRAINT `Accounts_permission_level5_fk_fkey` FOREIGN KEY (`permission_level5_fk`) REFERENCES `Permissions`(`permission_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Accounts` ADD CONSTRAINT `Accounts_permission_level6_fk_fkey` FOREIGN KEY (`permission_level6_fk`) REFERENCES `Permissions`(`permission_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Accounts` ADD CONSTRAINT `Accounts_permission_level7_fk_fkey` FOREIGN KEY (`permission_level7_fk`) REFERENCES `Permissions`(`permission_id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Accounts` ADD CONSTRAINT `Accounts_permission_level8_fk_fkey` FOREIGN KEY (`permission_level8_fk`) REFERENCES `Permissions`(`permission_id`) ON DELETE SET NULL ON UPDATE CASCADE;
