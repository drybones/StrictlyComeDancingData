CREATE TABLE [dbo].[Score]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [DanceId] INT NOT NULL, 
    [JudgeId] INT NOT NULL, 
    [Score] INT NOT NULL,
    CONSTRAINT [FK_Score_Dance] FOREIGN KEY (DanceId) REFERENCES [Dance]([Id]),
    CONSTRAINT [FK_Score_Judge] FOREIGN KEY (JudgeId) REFERENCES [Judge]([Id])
)
