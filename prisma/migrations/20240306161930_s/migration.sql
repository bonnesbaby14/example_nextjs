-- AlterTable
ALTER TABLE `Accounts` ADD COLUMN `account_name` VARCHAR(191) NOT NULL DEFAULT 'Registro Plus',
    ADD COLUMN `icon_color` VARCHAR(191) NOT NULL DEFAULT '#8b939b',
    ADD COLUMN `primary_color` VARCHAR(191) NOT NULL DEFAULT '#272c33';
