# on the bucket **ExcelHistory** and collection **CampaignExcelHistory** under defauult scope.
CREATE PRIMARY INDEX `#primary` ON `ExcelHistory`.`_default`.`CampaignExcelHistory` WITH { "num_replica": 1};
