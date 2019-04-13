ALTER TABLE `grades`
MODIFY COLUMN `name`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '' AFTER `id`,
ADD COLUMN `gender`  enum('male','female') NULL DEFAULT 'male' AFTER `name`;

update grades set gender = 'female' where id > 6;