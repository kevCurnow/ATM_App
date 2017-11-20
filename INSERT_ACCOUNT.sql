SET IDENTITY_INSERT Account ON

INSERT INTO Account(AccountID, AccountType, PinNum, Balance, CustomerID)
VALUES ('1', 'Savings', '6969', '1234567.69', '1');
INSERT INTO Account(AccountID, AccountType, PinNum, Balance, CustomerID)
VALUES ('2', 'Checking', '6969', '24678.44', '1');
INSERT INTO Account(AccountID, AccountType, PinNum, Balance, CustomerID)
VALUES ('3', 'Savings', '6174', '9999999.99', '2');
INSERT INTO Account(AccountID, AccountType, PinNum, Balance, CustomerID)
VALUES ('4', 'Savings', '2994', '100000.00', '3');

SET IDENTITY_INSERT Account OFF
