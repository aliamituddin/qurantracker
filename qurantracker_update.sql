ALTER TABLE `frequencies`
ADD COLUMN `sortno`  int NULL DEFAULT 0 AFTER `status`;

update frequencies set sortno = id;

ALTER TABLE `makhrajs`
ADD COLUMN `sortno`  int NULL DEFAULT 0 AFTER `override`;

update makhrajs set sortno = id;

ALTER TABLE `tajweeds`
ADD COLUMN `sortno`  int NULL DEFAULT 0 AFTER `override`;

update tajweeds set sortno = id;

ALTER TABLE `weaknesses`
ADD COLUMN `sortno`  int NULL DEFAULT 0 AFTER `override`;

update weaknesses set sortno = id;

ALTER TABLE `partners`
ADD COLUMN `sortno`  int NULL DEFAULT 0 AFTER `status`;

update partners set sortno = id;