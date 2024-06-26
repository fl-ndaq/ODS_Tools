SELECT TOP 1000
        tExposureSet.ExposureSetName,
        tContract.ContractID,
        tLocation.LocationID,
        tLocation.LocationName,
        tLocation.ReplacementValueA as BuildingValue,
        tLocation.ReplacementValueB as OtherValue,
        tLocation.ReplacementValueC as ContentsValue,
        tLocation.ReplacementValueD as TimeElementValue,
        tLocation.ReplacementValueDaysCovered as DaysCovered,
        tLocation.PerDiemRate,
        tLocation.TotalReplacementValue,
        tLocation.Premium,
        tLocation.CurrencyCode,
        tLocation.Territory,
        tLocation.IsTenant,
        tLocation.LocationGroup,
        tLocation.IsPrimaryLocation,
        tLocation.CountryCode,
        tLocation.CRESTACode,
        tLocation.AreaCode,
        tLocation.AreaName,
        tLocation.SubareaCode,
        tLocation.SubareaName,
        tLocation.PostalCode,
        tLocation.Subarea2Code,
        tLocation.Subarea2Name,
        tLocation.Address,
        tLocation.City,
        tLocation.Latitude,
        tLocation.Longitude,
        tLocation.GeoMatchLevelCode,
        tLocation.GeocoderCode,
        tLocation.InceptionDate,
        tLocation.ExpirationDate,
        tLocation.AIROccupancyCode,
        tLocation.AIRConstructionCodeA,
        tLocation.UserOccupancySchemeCode,
        tLocation.UserOccupancyCode,
        tLocation.UserConstructionSchemeCode,
        tLocation.UserConstructionCodeA,
        tLocation.RiskCount,
        tLocation.YearBuilt,
        tLocation.Stories,
        tLocation.BuildingHeight,
        tLocation.BuildingHeightUnitCode,
        tLocation.GrossArea,
        tLocation.GrossAreaUnitCode,
        tLocation.UserDefined1,
        tLocation.UserDefined2,
        tLocation.UserDefined3,
        tLocation.UserDefined4,
        tLocation.UserDefined5,
        tLocFeature.AppurtenantStructureCode,
        tLocFeature.BrickVeneerCode,
        tLocFeature.BuildingConditionCode,
        tLocFeature.BuildingExteriorOpeningCode,
        tLocFeature.BuildingShapeCode,
        tLocFeature.ChimneyCode,
        tLocFeature.CustomFloodStandardOfProtection,
        tLocFeature.CustomFloodZoneCode,
        tLocFeature.EquipmentCode,
        tLocFeature.ExternalDoorCode,
        tLocFeature.FloorArea,
        tLocFeature.FloorAreaUnitCode,
        tLocFeature.FloorsOccupied,
        tLocFeature.FoundationCode,
        tLocFeature.FoundationConnectionCode,
        tLocFeature.GlassTypeCode,
        tLocFeature.InternalPartitionCode,
        tLocFeature.ISValueCode,
        tLocFeature.LatticeCode,
        tLocFeature.MultiStoryHallCode,
        tLocFeature.OrnamentationCode,
        tLocFeature.PoundingCode,
        tLocFeature.ProjectCompletion,
        tLocFeature.RedundancyCode,
        tLocFeature.RetrofitCode,
        tLocFeature.RoofAnchorageCode,
        tLocFeature.RoofAttachedStructureCode,
        tLocFeature.RoofCoverAttachCode,
        tLocFeature.RoofCoverCode,
        tLocFeature.RoofDeckAttachCode,
        tLocFeature.RoofDeckCode,
        tLocFeature.RoofGeometryCode,
        tLocFeature.RoofPitchCode,
        tLocFeature.RoofYearBuilt,
        tLocFeature.ShapeIrregularityCode,
        tLocFeature.ShortColumnCode,
        tLocFeature.SmallDebrisCode,
        tLocFeature.SoftStoryCode,
        tLocFeature.SpecialConstructionCode,
        tLocFeature.TallOneStoryCode,
        tLocFeature.TankCode,
        tLocFeature.TerrainRoughnessCode,
        tLocFeature.TorsionCode,
        tLocFeature.TreeExposureCode,
        tLocFeature.WallAttachedStructureCode,
        tLocFeature.WindowProtectionCode,
        tLocFeature.BasementFinishTypeCode,
        tLocFeature.BasementLevelCount,
        tLocFeature.BaseFloodElevation,
        tLocFeature.BaseFloodElevationUnitCode,
        tLocFeature.ContentVulnerabilityCode,
        tLocFeature.CustomElevation,
        tLocFeature.CustomElevationUnitCode,
        tLocFeature.FirstFloorHeight,
        tLocFeature.FirstFloorHeightUnitCode,
        tLocFeature.ServiceEquipmentProtectionCode,
        tLocFeature.IsFireSprinklerAvailable,
        tLocFeature.ISOOccupancyCode,
        tLocFeature.ISOConstructionCode,
        tLocFeature.CustomFloodSOPType,
        tLocTerm.PerilSetCode,
        tLocTerm.LimitTypeCode,
        tLocTerm.Limit1,
        tLocTerm.Limit2,
        tLocTerm.Limit3,
        tLocTerm.Limit4,
        tLocTerm.DeductibleTypeCode,
        tLocTerm.Deductible1,
        tLocTerm.Deductible2,
        tLocTerm.Deductible3,
        tLocTerm.Deductible4,
        tLocTerm.CededAmount,
        tLocTerm.Participation1,
        tLocTerm.Participation2
FROM    tLocation
JOIN    tLocFeature ON tLocation.LocationSID = tLocFeature.LocationSID
JOIN    tLocTerm ON tLocation.LocationSID = tLocTerm.LocationSID
JOIN    tContract ON tLocation.ContractSID = tContract.ContractSID
JOIN    tLayerConditionLocationXref ON tLocation.LocationSID = tLayerConditionLocationXref.LocationSID
JOIN    tLayerCondition ON tLayerCondition.LayerConditionSID = tLayerConditionLocationXref.LayerConditionSID
JOIN    tExposureSet ON tExposureSet.ExposureSetSID = tLocation.ExposureSetSID
