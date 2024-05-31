USE netflix;

SET SQL_SAFE_UPDATES = 0;

-- expected_payment and num_members must be updated  
CREATE TRIGGER trigger_account
AFTER INSERT ON Users
FOR EACH ROW 
UPDATE Accounts a
SET a.num_members = a.num_members + 1
WHERE NEW.account_id = a.account_id;

CREATE TRIGGER trigger_payment
AFTER INSERT ON Users
FOR EACH ROW
UPDATE Accounts a
SET a.expected_payment = a.pay_per_month * a.num_members;

SHOW TRIGGERS;
