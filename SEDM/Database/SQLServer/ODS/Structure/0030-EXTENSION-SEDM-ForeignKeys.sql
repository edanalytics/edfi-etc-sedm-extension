ALTER TABLE [sedm].[EventComplianceDescriptor] WITH CHECK ADD CONSTRAINT [FK_EventComplianceDescriptor_Descriptor] FOREIGN KEY ([EventComplianceDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [sedm].[EventReasonDescriptor] WITH CHECK ADD CONSTRAINT [FK_EventReasonDescriptor_Descriptor] FOREIGN KEY ([EventReasonDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [sedm].[IDEAEventDescriptor] WITH CHECK ADD CONSTRAINT [FK_IDEAEventDescriptor_Descriptor] FOREIGN KEY ([IDEAEventDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [sedm].[IEPGoalDescriptor] WITH CHECK ADD CONSTRAINT [FK_IEPGoalDescriptor_Descriptor] FOREIGN KEY ([IEPGoalDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [sedm].[IEPStatusDescriptor] WITH CHECK ADD CONSTRAINT [FK_IEPStatusDescriptor_Descriptor] FOREIGN KEY ([IEPStatusDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [sedm].[ServiceComplianceDescriptor] WITH CHECK ADD CONSTRAINT [FK_ServiceComplianceDescriptor_Descriptor] FOREIGN KEY ([ServiceComplianceDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [sedm].[ServiceDeliveryDescriptor] WITH CHECK ADD CONSTRAINT [FK_ServiceDeliveryDescriptor_Descriptor] FOREIGN KEY ([ServiceDeliveryDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [sedm].[ServicePrescriptionDescriptor] WITH CHECK ADD CONSTRAINT [FK_ServicePrescriptionDescriptor_Descriptor] FOREIGN KEY ([ServicePrescriptionDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [sedm].[ServiceProviderDescriptor] WITH CHECK ADD CONSTRAINT [FK_ServiceProviderDescriptor_Descriptor] FOREIGN KEY ([ServiceProviderDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [sedm].[ServiceReasonDescriptor] WITH CHECK ADD CONSTRAINT [FK_ServiceReasonDescriptor_Descriptor] FOREIGN KEY ([ServiceReasonDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

