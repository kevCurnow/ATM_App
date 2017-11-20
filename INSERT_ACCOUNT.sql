SET IDENTITY_INSERT dbo.Account ON
INSERT INTO Account(AccountID, AccountType, PinNum, Balance, CustomerID, AccountNumber)
Values (1, 'Savings', '6969', 420691.01, 1, 1);
INSERT INTO Account(AccountID, AccountType, PinNum, Balance, CustomerID, AccountNumber)
Values (2, 'Checkings', '2994', 100000, 2, 2);
INSERT INTO Account(AccountID, AccountType, PinNum, Balance, CustomerID, AccountNumber)
Values (3, 'Savings', '6174', 999999.99, 3, 3);
SET IDENTITY_INSERT dbo.Account OFF;