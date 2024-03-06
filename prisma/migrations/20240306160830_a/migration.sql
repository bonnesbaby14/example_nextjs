-- AddForeignKey
ALTER TABLE `GroupsLevel1` ADD CONSTRAINT `GroupsLevel1_account_fk_fkey` FOREIGN KEY (`account_fk`) REFERENCES `Accounts`(`account_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `GroupsLevel2` ADD CONSTRAINT `GroupsLevel2_account_fk_fkey` FOREIGN KEY (`account_fk`) REFERENCES `Accounts`(`account_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `GroupsLevel3` ADD CONSTRAINT `GroupsLevel3_account_fk_fkey` FOREIGN KEY (`account_fk`) REFERENCES `Accounts`(`account_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `GroupsLevel4` ADD CONSTRAINT `GroupsLevel4_account_fk_fkey` FOREIGN KEY (`account_fk`) REFERENCES `Accounts`(`account_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `GroupsLevel5` ADD CONSTRAINT `GroupsLevel5_account_fk_fkey` FOREIGN KEY (`account_fk`) REFERENCES `Accounts`(`account_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `GroupsLevel6` ADD CONSTRAINT `GroupsLevel6_account_fk_fkey` FOREIGN KEY (`account_fk`) REFERENCES `Accounts`(`account_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `GroupsLevel7` ADD CONSTRAINT `GroupsLevel7_account_fk_fkey` FOREIGN KEY (`account_fk`) REFERENCES `Accounts`(`account_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `GroupsLevel8` ADD CONSTRAINT `GroupsLevel8_account_fk_fkey` FOREIGN KEY (`account_fk`) REFERENCES `Accounts`(`account_id`) ON DELETE RESTRICT ON UPDATE CASCADE;
