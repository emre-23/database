# tt-psql-wmntr02.trendyol.com

Copy-DbaDbTableData -SqlInstance tdwlistener -Destination tdwlistener -Database LOSCM -DestinationDatabase LOSCM -Table LWMS_STOCK -DestinationTable LWMS_STOCK_30122023_v1 -AutoCreateTable -KeepIdentity

Copy-DbaDbTableData -SqlInstance tdwlistener -Destination tdwlistener -Database LOSCM -DestinationDatabase LOSCM -Table LWMS_LOCATION -DestinationTable LWMS_LOCATION_30122023_v1 -AutoCreateTable -KeepIdentity