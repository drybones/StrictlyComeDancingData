CREATE TABLE [dbo].[Couple]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [ProfessionalId] INT NOT NULL, 
    [CelebrityId] INT NOT NULL, 
    [SeriesId] INT NOT NULL, 
    CONSTRAINT [FK_Couple_Professional] FOREIGN KEY (ProfessionalId) REFERENCES [Professional]([Id]),
	CONSTRAINT [FK_Couple_Celebrity] FOREIGN KEY (CelebrityId) REFERENCES [Celebrity]([Id]),
	CONSTRAINT [FK_Couple_Series] FOREIGN KEY (SeriesId) REFERENCES [Series]([Id])
)
