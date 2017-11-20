USE Atm_App;
GO

CREATE TABLE Account (
	AccountID int IDENTITY (1,1) NOT NULL,
	AccountType nvarchar(10) NOT NULL,
	PinNum nvarchar(4) NOT NULL,
	Balance money NOT NULL,
	CustomerID int NOT NULL,
	CONSTRAINT [PK_dbo.Account] PRIMARY KEY CLUSTERED ([AccountID] ASC),
	CONSTRAINT [FK_dbo.Account_dbo.Customer_CustomerID] FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customer] ([CustomerID]) ON DELETE CASCADE
);

GO
CREATE NONCLUSTERED INDEX [IX_CustomerID]
	ON [dbo].[Account]([CustomerID] ASC);