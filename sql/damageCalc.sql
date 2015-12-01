DROP FUNCTION IF EXISTS damageCalc;
DELIMITER //
CREATE FUNCTION damageCalc (InAttackType VARCHAR(10), InDefenseType1 VARCHAR(10), InDefenseType2  VARCHAR(10))
	RETURNS FLOAT	
BEGIN
DECLARE mult1 FLOAT;
DECLARE mult2 FLOAT;

SELECT Multiplier INTO mult1 FROM Effectiveness WHERE (AttackType = InAttackType AND DefenseType = InDefenseType1);

IF InDefenseType2 IS NOT NULL
	THEN SELECT Multiplier INTO mult2 FROM Effectiveness WHERE (AttackType = InAttackType AND DefenseType = InDefenseType2);
ELSE
	RETURN mult1;
END IF;

RETURN (mult1 * mult2);	

END //
DELIMITER ;