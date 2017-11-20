USE Atm_App;
GO

CREATE TABLE Deposit (
	DepositID int IDENTITY (1,1) NOT NULL,
	Amount money NOT NULL,
	TransactionID int NOT NULL,
	CONSTRAINT [PK_dbo.Deposit] PRIMARY KEY CLUSTERED ([DepositID] ASC),
	CONSTRAINT [FK_dbo.Deposit_dbo.Transactions_TransactionID] FOREIGN KEY ([TransactionID]) REFERENCES [dbo].[Transactions] ([TransactionID]) ON DELETE CASCADE
);

GO
CREATE NONCLUSTERED INDEX [IX_TransactionID]
	ON [dbo].[Deposit]([TransactionID] ASC);