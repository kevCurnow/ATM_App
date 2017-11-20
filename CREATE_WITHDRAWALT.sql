USE Atm_App;
GO

CREATE TABLE Withdrawal (
	WithdrawalID int IDENTITY (1,1) NOT NULL,
	Amount money NOT NULL,
	TransactionID int NOT NULL,
	CONSTRAINT [PK_dbo.Withdrawal] PRIMARY KEY CLUSTERED ([WithdrawalID] ASC),
	CONSTRAINT [FK_dbo.Withdrawal_dbo.Transactions_TransactionID] FOREIGN KEY ([TransactionID]) REFERENCES [dbo].[Transactions] ([TransactionID]) ON DELETE CASCADE
);

GO
CREATE NONCLUSTERED INDEX [IX_TransactionID]
	ON [dbo].[Withdrawal]([TransactionID] ASC);