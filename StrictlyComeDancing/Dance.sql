CREATE TABLE [dbo].[Dance]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [CoupleId] INT NOT NULL, 
    [SeriesId] INT NOT NULL, 
    [WeekNumber] INT NOT NULL, 
    [DanceStyleId] INT NOT NULL, 
    [SongId] INT NOT NULL, 
    [Order] INT NOT NULL, 
    CONSTRAINT [FK_Dance_Couple] FOREIGN KEY (CoupleId) REFERENCES [Couple]([Id]),
    CONSTRAINT [FK_Dance_Series] FOREIGN KEY (SeriesId) REFERENCES [Series]([Id]),
    CONSTRAINT [FK_Dance_DanceStyle] FOREIGN KEY (DanceStyleId) REFERENCES [DanceStyle]([Id]),
    CONSTRAINT [FK_Dance_Song] FOREIGN KEY (SongId) REFERENCES [Song]([Id])
)
