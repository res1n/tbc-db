
SET @MYRA := '5109'; -- Myra Tyrngaarde

-- ----------------------------------------

SET @GUID := (SELECT `guid` FROM `creature` WHERE `id`=@MYRA);
SET @POINT := '0';

UPDATE `creature` SET `position_x`='-4925.116', `position_y`='-947.6945', `position_z`='501.6491', `orientation`='4.042188', `MovementType`='2' WHERE `id`=@MYRA;

DELETE FROM `creature_movement` WHERE `id`=@GUID;
DELETE FROM `creature_movement_template` WHERE `entry`=@MYRA;

INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`) VALUES
(@MYRA, (@POINT := @POINT + 1), '-4940.067', '-966.5563', '501.5916'),
(@MYRA, (@POINT := @POINT + 1), '-4956.591', '-978.8500', '501.6491'),
(@MYRA, (@POINT := @POINT + 1), '-4966.608', '-974.9324', '502.7796'),
(@MYRA, (@POINT := @POINT + 1), '-4977.690', '-967.0145', '501.6595'),
(@MYRA, (@POINT := @POINT + 1), '-4978.871', '-957.0950', '501.6595'),
(@MYRA, (@POINT := @POINT + 1), '-4966.549', '-946.7832', '501.6595'),
(@MYRA, (@POINT := @POINT + 1), '-4946.386', '-929.8782', '501.6594'),
(@MYRA, (@POINT := @POINT + 1), '-4924.840', '-913.5948', '501.6594'),
(@MYRA, (@POINT := @POINT + 1), '-4904.366', '-898.4344', '501.6594'),
(@MYRA, (@POINT := @POINT + 1), '-4898.426', '-902.3857', '501.6593'),
(@MYRA, (@POINT := @POINT + 1), '-4891.908', '-916.8919', '501.6311'),
(@MYRA, (@POINT := @POINT + 1), '-4902.026', '-933.6296', '501.5292'),
(@MYRA, (@POINT := @POINT + 1), '-4925.541', '-947.7893', '501.6206');