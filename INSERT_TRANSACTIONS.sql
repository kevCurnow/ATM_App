SET IDENTITY_INSERT Transactions ON

INSERT INTO Transactions(TransactionID, Amount, TransactionType, TransactionTime, AccountID)
VALUES ('1', '420', 'Deposit', '2017-11-20 12:01:57', '1');
INSERT INTO Transactions(TransactionID, Amount, TransactionType, TransactionTime, AccountID)
VALUES ('2', '12.55', 'Withdrawal', '2017-11-25 18:25:00', '4');
INSERT INTO Transactions(TransactionID, Amount, TransactionType, TransactionTime, AccountID)
VALUES ('3', '999.99', 'Deposit', '2017-11-19 23:59:59', '3');

SET IDENTITY_INSERT Transactions OFF