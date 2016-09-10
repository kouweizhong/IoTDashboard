﻿CREATE TABLE dbo.Signal
(
  SignalId INT IDENTITY NOT NULL
, DeviceId INT NOT NULL
, SignalTime DATETIMEOFFSET NOT NULL
, SignalValue NUMERIC (19, 8) NOT NULL

, CONSTRAINT PK_Signal PRIMARY KEY CLUSTERED (SignalId)
, CONSTRAINT FK_Signal_Device FOREIGN KEY (DeviceId) REFERENCES dbo.Device(DeviceId)
)