/*
  Warnings:

  - You are about to drop the column `person__fk` on the `Users` table. All the data in the column will be lost.
  - Added the required column `person_fk` to the `Users` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `Users` DROP COLUMN `person__fk`,
    ADD COLUMN `person_fk` INTEGER NOT NULL;
