/*
  Warnings:

  - You are about to drop the column `level_1_fk` on the `ACCOUNT` table. All the data in the column will be lost.
  - You are about to drop the column `level_2_fk` on the `ACCOUNT` table. All the data in the column will be lost.
  - You are about to drop the column `level_3_fk` on the `ACCOUNT` table. All the data in the column will be lost.
  - You are about to drop the column `level_4_fk` on the `ACCOUNT` table. All the data in the column will be lost.
  - You are about to drop the column `level_5_fk` on the `ACCOUNT` table. All the data in the column will be lost.
  - You are about to drop the column `level_6_fk` on the `ACCOUNT` table. All the data in the column will be lost.
  - You are about to drop the column `level_7_fk` on the `ACCOUNT` table. All the data in the column will be lost.
  - You are about to drop the column `level_8_fk` on the `ACCOUNT` table. All the data in the column will be lost.
  - Added the required column `level_1` to the `ACCOUNT` table without a default value. This is not possible if the table is not empty.
  - Added the required column `level_2` to the `ACCOUNT` table without a default value. This is not possible if the table is not empty.
  - Added the required column `level_3` to the `ACCOUNT` table without a default value. This is not possible if the table is not empty.
  - Added the required column `level_4` to the `ACCOUNT` table without a default value. This is not possible if the table is not empty.
  - Added the required column `level_5` to the `ACCOUNT` table without a default value. This is not possible if the table is not empty.
  - Added the required column `level_6` to the `ACCOUNT` table without a default value. This is not possible if the table is not empty.
  - Added the required column `level_7` to the `ACCOUNT` table without a default value. This is not possible if the table is not empty.
  - Added the required column `level_8` to the `ACCOUNT` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `ACCOUNT` DROP COLUMN `level_1_fk`,
    DROP COLUMN `level_2_fk`,
    DROP COLUMN `level_3_fk`,
    DROP COLUMN `level_4_fk`,
    DROP COLUMN `level_5_fk`,
    DROP COLUMN `level_6_fk`,
    DROP COLUMN `level_7_fk`,
    DROP COLUMN `level_8_fk`,
    ADD COLUMN `level_1` VARCHAR(191) NOT NULL,
    ADD COLUMN `level_2` VARCHAR(191) NOT NULL,
    ADD COLUMN `level_3` VARCHAR(191) NOT NULL,
    ADD COLUMN `level_4` VARCHAR(191) NOT NULL,
    ADD COLUMN `level_5` VARCHAR(191) NOT NULL,
    ADD COLUMN `level_6` VARCHAR(191) NOT NULL,
    ADD COLUMN `level_7` VARCHAR(191) NOT NULL,
    ADD COLUMN `level_8` VARCHAR(191) NOT NULL;
