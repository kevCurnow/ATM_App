USE Atm_App;
GO

CREATE TABLE Transactions (
	TransactionID int IDENTITY (1,1) NOT NULL,
	Amount money NULL,
	TransactionType nvarchar(15) NOT NULL,
	TransactionTime datetime NOT NULL,
	AccountID int NOT NULL,
	CONSTRAINT [PK_dbo.Transactions] PRIMARY KEY CLUSTERED ([TransactionID] ASC),
	CONSTRAINT [FK_dbo.Transactions_dbo.Account_AccountID] FOREIGN KEY ([AccountID]) REFERENCES [dbo].[Account] ([AccountID]) ON DELETE CASCADE
);

GO
CREATE NONCLUSTERED INDEX [IX_AccountID]
	ON [dbo].[Transactions]([AccountID] ASC);