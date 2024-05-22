# Titles

## Index Creating

> With 5 shard and 0 replicas according to our data node count.

<details>
  <summary>Create an Index</summary>

  ```json
PUT /dba-test-000001
{PUT tymeal_v2023050-u2/
{
  "mappings": {
    "properties": {
      "all_fields": {
        "type": "text"
      },
      "bannerUrl": {
        "type": "keyword",
        "index": false
      },
      "boostableText": {
        "type": "text"
      },
      "chain": {
        "type": "boolean"
      },
      "deboostable": {
        "type": "boolean"
      },
      "deliveryAreas": {
        "type": "nested",
        "properties": {
          "area": {
            "type": "geo_shape"
          },
          "averageDeliveryTime": {
            "properties": {
              "max": {
                "type": "integer"
              },
              "min": {
                "type": "integer"
              }
            }
          },
          "minBasketPrice": {
            "type": "float"
          },
          "status": {
            "type": "keyword"
          }
        }
      },
      "deliveryHours": {
        "type": "integer_range"
      },
      "deliveryType": {
        "type": "keyword"
      },
      "discountAmount": {
        "type": "long"
      },
      "filterableLabelIds": {
        "properties": {
          "id": {
            "type": "long"
          },
          "name": {
            "type": "keyword"
          }
        }
      },
      "flashSale": {
        "type": "boolean"
      },
      "groupId": {
        "type": "long"
      },
      "hasActiveProductsAndSections": {
        "type": "boolean"
      },
      "hasDistrictStar": {
        "type": "keyword"
      },
      "id": {
        "type": "long"
      },
      "ingredients": {
        "properties": {
          "id": {
            "type": "long"
          },
          "name": {
            "type": "keyword"
          },
          "price": {
            "type": "float"
          },
          "status": {
            "type": "keyword"
          }
        }
      },
      "kitchens": {
        "properties": {
          "id": {
            "type": "integer"
          },
          "idWithName": {
            "type": "keyword",
            "index": false
          },
          "name": {
            "type": "keyword",
            "index": false,
            "copy_to": [
              "all_fields",
              "boostableText"
            ]
          }
        }
      },
      "lmd": {
        "type": "date",
        "index": false
      },
      "location": {
        "properties": {
          "cityId": {
            "type": "integer"
          },
          "districtId": {
            "type": "integer"
          },
          "neighborhoodId": {
            "type": "integer"
          },
          "neighborhoodName": {
            "type": "keyword"
          },
          "point": {
            "type": "geo_point"
          }
        }
      },
      "locationId": {
        "type": "long"
      },
      "logoUrl": {
        "type": "keyword",
        "index": false
      },
      "massPromoPermission": {
        "type": "boolean"
      },
      "modifierGroups": {
        "properties": {
          "id": {
            "type": "long"
          },
          "max": {
            "type": "integer",
            "index": false
          },
          "min": {
            "type": "integer",
            "index": false
          },
          "modifierProducts": {
            "properties": {
              "position": {
                "type": "integer",
                "index": false
              },
              "price": {
                "type": "float",
                "index": false
              },
              "productId": {
                "type": "long"
              },
              "type": {
                "type": "keyword"
              }
            }
          },
          "multiSelectableModifierProduct": {
            "type": "boolean"
          },
          "name": {
            "type": "keyword"
          },
          "status": {
            "type": "keyword"
          }
        }
      },
      "name": {
        "type": "text",
        "copy_to": [
          "all_fields",
          "sortableName",
          "boostableText"
        ]
      },
      "nonNestedProducts": {
        "properties": {
          "attributes": {
            "properties": {
              "key": {
                "type": "text",
                "fields": {
                  "keyword": {
                    "type": "keyword",
                    "ignore_above": 256
                  }
                }
              },
              "name": {
                "type": "text",
                "fields": {
                  "keyword": {
                    "type": "keyword",
                    "ignore_above": 256
                  }
                }
              },
              "values": {
                "properties": {
                  "id": {
                    "type": "text",
                    "fields": {
                      "keyword": {
                        "type": "keyword",
                        "ignore_above": 256
                      }
                    }
                  },
                  "name": {
                    "type": "text",
                    "fields": {
                      "keyword": {
                        "type": "keyword",
                        "ignore_above": 256
                      }
                    }
                  }
                }
              }
            }
          },
          "category": {
            "properties": {
              "hierarchyPath": {
                "type": "text",
                "fields": {
                  "keyword": {
                    "type": "keyword",
                    "ignore_above": 256
                  }
                }
              },
              "id": {
                "type": "long"
              },
              "leaf": {
                "type": "boolean"
              },
              "name": {
                "type": "text",
                "fields": {
                  "keyword": {
                    "type": "keyword",
                    "ignore_above": 256
                  }
                }
              }
            }
          },
          "categoryHierarchies": {
            "properties": {
              "id": {
                "type": "long"
              },
              "leaf": {
                "type": "boolean"
              },
              "name": {
                "type": "text",
                "fields": {
                  "keyword": {
                    "type": "keyword",
                    "ignore_above": 256
                  }
                }
              },
              "parentId": {
                "type": "long"
              }
            }
          },
          "description": {
            "type": "keyword"
          },
          "directlyAddToBasket": {
            "type": "boolean"
          },
          "extraIngredients": {
            "type": "long"
          },
          "id": {
            "type": "long"
          },
          "imageUrl": {
            "type": "keyword",
            "index": false
          },
          "ingredients": {
            "type": "long"
          },
          "modifierGroups": {
            "properties": {
              "id": {
                "type": "long"
              },
              "position": {
                "type": "integer",
                "index": false
              }
            }
          },
          "name": {
            "type": "text"
          },
          "originalPrice": {
            "type": "float"
          },
          "ownSellable": {
            "type": "boolean"
          },
          "sellingPrice": {
            "type": "float"
          },
          "status": {
            "type": "keyword",
            "index": false
          },
          "upsellOffer": {
            "type": "boolean"
          }
        }
      },
      "paymentMethods": {
        "properties": {
          "type": {
            "type": "keyword"
          }
        }
      },
      "products": {
        "type": "nested",
        "properties": {
          "attributes": {
            "properties": {
              "key": {
                "type": "keyword",
                "index": false
              },
              "name": {
                "type": "keyword",
                "index": false
              },
              "values": {
                "properties": {
                  "id": {
                    "type": "keyword",
                    "index": false
                  },
                  "name": {
                    "type": "keyword",
                    "index": false
                  }
                }
              }
            }
          },
          "category": {
            "properties": {
              "hierarchyPath": {
                "type": "keyword",
                "index": false
              },
              "id": {
                "type": "integer",
                "index": false
              },
              "leaf": {
                "type": "boolean",
                "index": false
              },
              "name": {
                "type": "keyword"
              }
            }
          },
          "categoryHierarchies": {
            "properties": {
              "id": {
                "type": "integer",
                "index": false
              },
              "leaf": {
                "type": "boolean",
                "index": false
              },
              "name": {
                "type": "keyword"
              },
              "parentId": {
                "type": "integer",
                "index": false
              }
            }
          },
          "description": {
            "type": "keyword",
            "index": false
          },
          "directlyAddToBasket": {
            "type": "boolean"
          },
          "extraIngredients": {
            "type": "long",
            "index": false
          },
          "id": {
            "type": "long"
          },
          "imageUrl": {
            "type": "keyword",
            "index": false
          },
          "ingredients": {
            "type": "long",
            "index": false
          },
          "modifierGroups": {
            "properties": {
              "id": {
                "type": "long"
              },
              "position": {
                "type": "integer",
                "index": false
              }
            }
          },
          "multipleMenu": {
            "type": "boolean"
          },
          "name": {
            "type": "text"
          },
          "originalPrice": {
            "type": "float"
          },
          "ownSellable": {
            "type": "boolean"
          },
          "scores": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              }
            }
          },
          "sellingPrice": {
            "type": "float"
          },
          "status": {
            "type": "keyword",
            "index": false
          },
          "upsellOffer": {
            "type": "boolean"
          }
        }
      },
      "promotion": {
        "properties": {
          "aggregationField": {
            "type": "keyword"
          },
          "bannerUrl": {
            "type": "keyword"
          },
          "id": {
            "type": "long"
          },
          "productGroupTag": {
            "type": "keyword"
          },
          "ranking": {
            "type": "long"
          }
        }
      },
      "review": {
        "properties": {
          "averageScores": {
            "properties": {
              "delivery": {
                "type": "float"
              },
              "flavor": {
                "type": "float"
              },
              "overall": {
                "type": "float"
              },
              "service": {
                "type": "float"
              }
            }
          },
          "commentCount": {
            "type": "long"
          },
          "ratingCount": {
            "type": "long"
          }
        }
      },
      "scoresInterval": {
        "properties": {
          "0": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "1": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "2": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "3": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "4": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "5": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "6": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "7": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "8": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "9": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "10": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "11": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "12": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "13": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "14": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "15": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "16": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "17": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "18": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "19": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "20": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "21": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "22": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "23": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          }
        }
      },
      "sections": {
        "properties": {
          "isPromoted": {
            "type": "boolean"
          },
          "name": {
            "type": "keyword"
          },
          "position": {
            "type": "integer",
            "index": false
          },
          "products": {
            "properties": {
              "id": {
                "type": "long"
              },
              "position": {
                "type": "integer",
                "index": false
              }
            }
          },
          "status": {
            "type": "keyword",
            "index": false
          }
        }
      },
      "sortableName": {
        "type": "keyword",
        "index": false,
        "normalizer": "turkish_lowercase_normalizer"
      },
      "storeCustomValues": {
        "properties": {
          "key": {
            "type": "keyword",
            "index": false
          },
          "value": {
            "type": "keyword",
            "index": false
          }
        }
      },
      "supplierId": {
        "type": "long"
      },
      "tags": {
        "properties": {
          "id": {
            "type": "long"
          }
        }
      },
      "thumbnailUrl": {
        "type": "keyword",
        "index": false
      },
      "videoUrl": {
        "type": "keyword",
        "index": false
      },
      "virtualKitchenId": {
        "type": "long"
      },
      "workingStatus": {
        "type": "keyword"
      }
    }
  },
  "settings": {
    "index": {
      "refresh_interval": "-1",
      "number_of_shards": "10",
      "translog": {
        "flush_threshold_size": "1024mb",
        "durability": "async"
      },
      "requests": {
        "cache": {
          "enable": "true"
        }
      },
      "analysis": {
        "filter": {
          "wordDelimeterTokenFilter": {
            "catenate_all": "true",
            "split_on_numerics": "true",
            "type": "word_delimiter",
            "preserve_original": "true"
          },
          "myAsciifolding": {
            "type": "asciifolding",
            "preserveOriginal": "true"
          },
          "turkish_lowercase": {
            "type": "lowercase",
            "language": "turkish"
          }
        },
        "normalizer": {
          "turkish_lowercase_normalizer": {
            "type": "custom",
            "filter": [
              "turkish_lowercase"
            ],
            "char_filter": [
              "turkishSortCharFilter"
            ]
          }
        },
        "analyzer": {
          "default": {
            "filter": [
              "turkish_lowercase",
              "myAsciifolding",
              "wordDelimeterTokenFilter"
            ],
            "char_filter": [
              "turkishCharFilter"
            ],
            "type": "custom",
            "tokenizer": "standard"
          }
        },
        "char_filter": {
          "turkishCharFilter": {
            "type": "mapping",
            "mappings": [
              "ı => i",
              "ü => u",
              "ö => o",
              "ş => s",
              "ç => c",
              "ğ => g",
              "& => ' '",
              "- => ' '",
              "' => ",
              "’ => ",
              "` => ",
              "_ => "
            ]
          },
          "turkishSortCharFilter": {
            "type": "mapping",
            "mappings": [
              "ı => i",
              "i => iz",
              "ü => uz",
              "ö => oz",
              "ş => sz",
              "ç => cz",
              "ğ => gz",
              "İ => iz",
              "Ü => uz",
              "Ö => oz",
              "Ş => sz",
              "Ç => cz",
              "Ğ => gz",
              "& => ' '",
              "- => ' '",
              "' => ",
              "’ => ",
              "` => ",
              "_ => "
            ]
          }
        }
      },
      "number_of_replicas": "1"
    }
  }
}

PUT tymeal_v2023050-u2/
{
  "mappings": {
    "properties": {
      "all_fields": {
        "type": "text"
      },
      "bannerUrl": {
        "type": "keyword",
        "index": false
      },
      "boostableText": {
        "type": "text"
      },
      "chain": {
        "type": "boolean"
      },
      "deboostable": {
        "type": "boolean"
      },
      "deliveryAreas": {
        "type": "nested",
        "properties": {
          "area": {
            "type": "geo_shape"
          },
          "averageDeliveryTime": {
            "properties": {
              "max": {
                "type": "integer"
              },
              "min": {
                "type": "integer"
              }
            }
          },
          "minBasketPrice": {
            "type": "float"
          },
          "status": {
            "type": "keyword"
          }
        }
      },
      "deliveryHours": {
        "type": "integer_range"
      },
      "deliveryType": {
        "type": "keyword"
      },
      "discountAmount": {
        "type": "long"
      },
      "filterableLabelIds": {
        "properties": {
          "id": {
            "type": "long"
          },
          "name": {
            "type": "keyword"
          }
        }
      },
      "flashSale": {
        "type": "boolean"
      },
      "groupId": {
        "type": "long"
      },
      "hasActiveProductsAndSections": {
        "type": "boolean"
      },
      "hasDistrictStar": {
        "type": "keyword"
      },
      "id": {
        "type": "long"
      },
      "ingredients": {
        "properties": {
          "id": {
            "type": "long"
          },
          "name": {
            "type": "keyword"
          },
          "price": {
            "type": "float"
          },
          "status": {
            "type": "keyword"
          }
        }
      },
      "kitchens": {
        "properties": {
          "id": {
            "type": "integer"
          },
          "idWithName": {
            "type": "keyword",
            "index": false
          },
          "name": {
            "type": "keyword",
            "index": false,
            "copy_to": [
              "all_fields",
              "boostableText"
            ]
          }
        }
      },
      "lmd": {
        "type": "date",
        "index": false
      },
      "location": {
        "properties": {
          "cityId": {
            "type": "integer"
          },
          "districtId": {
            "type": "integer"
          },
          "neighborhoodId": {
            "type": "integer"
          },
          "neighborhoodName": {
            "type": "keyword"
          },
          "point": {
            "type": "geo_point"
          }
        }
      },
      "locationId": {
        "type": "long"
      },
      "logoUrl": {
        "type": "keyword",
        "index": false
      },
      "massPromoPermission": {
        "type": "boolean"
      },
      "modifierGroups": {
        "properties": {
          "id": {
            "type": "long"
          },
          "max": {
            "type": "integer",
            "index": false
          },
          "min": {
            "type": "integer",
            "index": false
          },
          "modifierProducts": {
            "properties": {
              "position": {
                "type": "integer",
                "index": false
              },
              "price": {
                "type": "float",
                "index": false
              },
              "productId": {
                "type": "long"
              },
              "type": {
                "type": "keyword"
              }
            }
          },
          "multiSelectableModifierProduct": {
            "type": "boolean"
          },
          "name": {
            "type": "keyword"
          },
          "status": {
            "type": "keyword"
          }
        }
      },
      "name": {
        "type": "text",
        "copy_to": [
          "all_fields",
          "sortableName",
          "boostableText"
        ]
      },
      "nonNestedProducts": {
        "properties": {
          "attributes": {
            "properties": {
              "key": {
                "type": "text",
                "fields": {
                  "keyword": {
                    "type": "keyword",
                    "ignore_above": 256
                  }
                }
              },
              "name": {
                "type": "text",
                "fields": {
                  "keyword": {
                    "type": "keyword",
                    "ignore_above": 256
                  }
                }
              },
              "values": {
                "properties": {
                  "id": {
                    "type": "text",
                    "fields": {
                      "keyword": {
                        "type": "keyword",
                        "ignore_above": 256
                      }
                    }
                  },
                  "name": {
                    "type": "text",
                    "fields": {
                      "keyword": {
                        "type": "keyword",
                        "ignore_above": 256
                      }
                    }
                  }
                }
              }
            }
          },
          "category": {
            "properties": {
              "hierarchyPath": {
                "type": "text",
                "fields": {
                  "keyword": {
                    "type": "keyword",
                    "ignore_above": 256
                  }
                }
              },
              "id": {
                "type": "long"
              },
              "leaf": {
                "type": "boolean"
              },
              "name": {
                "type": "text",
                "fields": {
                  "keyword": {
                    "type": "keyword",
                    "ignore_above": 256
                  }
                }
              }
            }
          },
          "categoryHierarchies": {
            "properties": {
              "id": {
                "type": "long"
              },
              "leaf": {
                "type": "boolean"
              },
              "name": {
                "type": "text",
                "fields": {
                  "keyword": {
                    "type": "keyword",
                    "ignore_above": 256
                  }
                }
              },
              "parentId": {
                "type": "long"
              }
            }
          },
          "description": {
            "type": "keyword"
          },
          "directlyAddToBasket": {
            "type": "boolean"
          },
          "extraIngredients": {
            "type": "long"
          },
          "id": {
            "type": "long"
          },
          "imageUrl": {
            "type": "keyword",
            "index": false
          },
          "ingredients": {
            "type": "long"
          },
          "modifierGroups": {
            "properties": {
              "id": {
                "type": "long"
              },
              "position": {
                "type": "integer",
                "index": false
              }
            }
          },
          "name": {
            "type": "text"
          },
          "originalPrice": {
            "type": "float"
          },
          "ownSellable": {
            "type": "boolean"
          },
          "sellingPrice": {
            "type": "float"
          },
          "status": {
            "type": "keyword",
            "index": false
          },
          "upsellOffer": {
            "type": "boolean"
          }
        }
      },
      "paymentMethods": {
        "properties": {
          "type": {
            "type": "keyword"
          }
        }
      },
      "products": {
        "type": "nested",
        "properties": {
          "attributes": {
            "properties": {
              "key": {
                "type": "keyword",
                "index": false
              },
              "name": {
                "type": "keyword",
                "index": false
              },
              "values": {
                "properties": {
                  "id": {
                    "type": "keyword",
                    "index": false
                  },
                  "name": {
                    "type": "keyword",
                    "index": false
                  }
                }
              }
            }
          },
          "category": {
            "properties": {
              "hierarchyPath": {
                "type": "keyword",
                "index": false
              },
              "id": {
                "type": "integer",
                "index": false
              },
              "leaf": {
                "type": "boolean",
                "index": false
              },
              "name": {
                "type": "keyword"
              }
            }
          },
          "categoryHierarchies": {
            "properties": {
              "id": {
                "type": "integer",
                "index": false
              },
              "leaf": {
                "type": "boolean",
                "index": false
              },
              "name": {
                "type": "keyword"
              },
              "parentId": {
                "type": "integer",
                "index": false
              }
            }
          },
          "description": {
            "type": "keyword",
            "index": false
          },
          "directlyAddToBasket": {
            "type": "boolean"
          },
          "extraIngredients": {
            "type": "long",
            "index": false
          },
          "id": {
            "type": "long"
          },
          "imageUrl": {
            "type": "keyword",
            "index": false
          },
          "ingredients": {
            "type": "long",
            "index": false
          },
          "modifierGroups": {
            "properties": {
              "id": {
                "type": "long"
              },
              "position": {
                "type": "integer",
                "index": false
              }
            }
          },
          "multipleMenu": {
            "type": "boolean"
          },
          "name": {
            "type": "text"
          },
          "originalPrice": {
            "type": "float"
          },
          "ownSellable": {
            "type": "boolean"
          },
          "scores": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              }
            }
          },
          "sellingPrice": {
            "type": "float"
          },
          "status": {
            "type": "keyword",
            "index": false
          },
          "upsellOffer": {
            "type": "boolean"
          }
        }
      },
      "promotion": {
        "properties": {
          "aggregationField": {
            "type": "keyword"
          },
          "bannerUrl": {
            "type": "keyword"
          },
          "id": {
            "type": "long"
          },
          "productGroupTag": {
            "type": "keyword"
          },
          "ranking": {
            "type": "long"
          }
        }
      },
      "review": {
        "properties": {
          "averageScores": {
            "properties": {
              "delivery": {
                "type": "float"
              },
              "flavor": {
                "type": "float"
              },
              "overall": {
                "type": "float"
              },
              "service": {
                "type": "float"
              }
            }
          },
          "commentCount": {
            "type": "long"
          },
          "ratingCount": {
            "type": "long"
          }
        }
      },
      "scoresInterval": {
        "properties": {
          "0": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "1": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "2": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "3": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "4": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "5": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "6": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "7": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "8": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "9": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "10": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "11": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "12": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "13": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "14": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "15": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "16": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "17": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "18": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "19": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "20": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "21": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "22": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "23": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          }
        }
      },
      "sections": {
        "properties": {
          "isPromoted": {
            "type": "boolean"
          },
          "name": {
            "type": "keyword"
          },
          "position": {
            "type": "integer",
            "index": false
          },
          "products": {
            "properties": {
              "id": {
                "type": "long"
              },
              "position": {
                "type": "integer",
                "index": false
              }
            }
          },
          "status": {
            "type": "keyword",
            "index": false
          }
        }
      },
      "sortableName": {
        "type": "keyword",
        "index": false,
        "normalizer": "turkish_lowercase_normalizer"
      },
      "storeCustomValues": {
        "properties": {
          "key": {
            "type": "keyword",
            "index": false
          },
          "value": {
            "type": "keyword",
            "index": false
          }
        }
      },
      "supplierId": {
        "type": "long"
      },
      "tags": {
        "properties": {
          "id": {
            "type": "long"
          }
        }
      },
      "thumbnailUrl": {
        "type": "keyword",
        "index": false
      },
      "videoUrl": {
        "type": "keyword",
        "index": false
      },
      "virtualKitchenId": {
        "type": "long"
      },
      "workingStatus": {
        "type": "keyword"
      }
    }
  },
  "settings": {
    "index": {
      "refresh_interval": "-1",
      "number_of_shards": "10",
      "translog": {
        "flush_threshold_size": "1024mb",
        "durability": "async"
      },
      "requests": {
        "cache": {
          "enable": "true"
        }
      },
      "analysis": {
        "filter": {
          "wordDelimeterTokenFilter": {
            "catenate_all": "true",
            "split_on_numerics": "true",
            "type": "word_delimiter",
            "preserve_original": "true"
          },
          "myAsciifolding": {
            "type": "asciifolding",
            "preserveOriginal": "true"
          },
          "turkish_lowercase": {
            "type": "lowercase",
            "language": "turkish"
          }
        },
        "normalizer": {
          "turkish_lowercase_normalizer": {
            "type": "custom",
            "filter": [
              "turkish_lowercase"
            ],
            "char_filter": [
              "turkishSortCharFilter"
            ]
          }
        },
        "analyzer": {
          "default": {
            "filter": [
              "turkish_lowercase",
              "myAsciifolding",
              "wordDelimeterTokenFilter"
            ],
            "char_filter": [
              "turkishCharFilter"
            ],
            "type": "custom",
            "tokenizer": "standard"
          }
        },
        "char_filter": {
          "turkishCharFilter": {
            "type": "mapping",
            "mappings": [
              "ı => i",
              "ü => u",
              "ö => o",
              "ş => s",
              "ç => c",
              "ğ => g",
              "& => ' '",
              "- => ' '",
              "' => ",
              "’ => ",
              "` => ",
              "_ => "
            ]
          },
          "turkishSortCharFilter": {
            "type": "mapping",
            "mappings": [
              "ı => i",
              "i => iz",
              "ü => uz",
              "ö => oz",
              "ş => sz",
              "ç => cz",
              "ğ => gz",
              "İ => iz",
              "Ü => uz",
              "Ö => oz",
              "Ş => sz",
              "Ç => cz",
              "Ğ => gz",
              "& => ' '",
              "- => ' '",
              "' => ",
              "’ => ",
              "` => ",
              "_ => "
            ]
          }
        }
      },
      "number_of_replicas": "1"
    }
  }
}


  "settings": {
    "index": {
      "number_of_shards": 5, 
      "number_of_replicas": 0
    }
  }
}


  ```
</details>


<details>
  <summary>Index with normalizer</summary>
  
  ```json
PUT tymeal_v2023050-u2/
{
  "mappings": {
    "properties": {
      "all_fields": {
        "type": "text"
      },
      "bannerUrl": {
        "type": "keyword",
        "index": false
      },
      "boostableText": {
        "type": "text"
      },
      "chain": {
        "type": "boolean"
      },
      "deboostable": {
        "type": "boolean"
      },
      "deliveryAreas": {
        "type": "nested",
        "properties": {
          "area": {
            "type": "geo_shape"
          },
          "averageDeliveryTime": {
            "properties": {
              "max": {
                "type": "integer"
              },
              "min": {
                "type": "integer"
              }
            }
          },
          "minBasketPrice": {
            "type": "float"
          },
          "status": {
            "type": "keyword"
          }
        }
      },
      "deliveryHours": {
        "type": "integer_range"
      },
      "deliveryType": {
        "type": "keyword"
      },
      "discountAmount": {
        "type": "long"
      },
      "filterableLabelIds": {
        "properties": {
          "id": {
            "type": "long"
          },
          "name": {
            "type": "keyword"
          }
        }
      },
      "flashSale": {
        "type": "boolean"
      },
      "groupId": {
        "type": "long"
      },
      "hasActiveProductsAndSections": {
        "type": "boolean"
      },
      "hasDistrictStar": {
        "type": "keyword"
      },
      "id": {
        "type": "long"
      },
      "ingredients": {
        "properties": {
          "id": {
            "type": "long"
          },
          "name": {
            "type": "keyword"
          },
          "price": {
            "type": "float"
          },
          "status": {
            "type": "keyword"
          }
        }
      },
      "kitchens": {
        "properties": {
          "id": {
            "type": "integer"
          },
          "idWithName": {
            "type": "keyword",
            "index": false
          },
          "name": {
            "type": "keyword",
            "index": false,
            "copy_to": [
              "all_fields",
              "boostableText"
            ]
          }
        }
      },
      "lmd": {
        "type": "date",
        "index": false
      },
      "location": {
        "properties": {
          "cityId": {
            "type": "integer"
          },
          "districtId": {
            "type": "integer"
          },
          "neighborhoodId": {
            "type": "integer"
          },
          "neighborhoodName": {
            "type": "keyword"
          },
          "point": {
            "type": "geo_point"
          }
        }
      },
      "locationId": {
        "type": "long"
      },
      "logoUrl": {
        "type": "keyword",
        "index": false
      },
      "massPromoPermission": {
        "type": "boolean"
      },
      "modifierGroups": {
        "properties": {
          "id": {
            "type": "long"
          },
          "max": {
            "type": "integer",
            "index": false
          },
          "min": {
            "type": "integer",
            "index": false
          },
          "modifierProducts": {
            "properties": {
              "position": {
                "type": "integer",
                "index": false
              },
              "price": {
                "type": "float",
                "index": false
              },
              "productId": {
                "type": "long"
              },
              "type": {
                "type": "keyword"
              }
            }
          },
          "multiSelectableModifierProduct": {
            "type": "boolean"
          },
          "name": {
            "type": "keyword"
          },
          "status": {
            "type": "keyword"
          }
        }
      },
      "name": {
        "type": "text",
        "copy_to": [
          "all_fields",
          "sortableName",
          "boostableText"
        ]
      },
      "nonNestedProducts": {
        "properties": {
          "attributes": {
            "properties": {
              "key": {
                "type": "text",
                "fields": {
                  "keyword": {
                    "type": "keyword",
                    "ignore_above": 256
                  }
                }
              },
              "name": {
                "type": "text",
                "fields": {
                  "keyword": {
                    "type": "keyword",
                    "ignore_above": 256
                  }
                }
              },
              "values": {
                "properties": {
                  "id": {
                    "type": "text",
                    "fields": {
                      "keyword": {
                        "type": "keyword",
                        "ignore_above": 256
                      }
                    }
                  },
                  "name": {
                    "type": "text",
                    "fields": {
                      "keyword": {
                        "type": "keyword",
                        "ignore_above": 256
                      }
                    }
                  }
                }
              }
            }
          },
          "category": {
            "properties": {
              "hierarchyPath": {
                "type": "text",
                "fields": {
                  "keyword": {
                    "type": "keyword",
                    "ignore_above": 256
                  }
                }
              },
              "id": {
                "type": "long"
              },
              "leaf": {
                "type": "boolean"
              },
              "name": {
                "type": "text",
                "fields": {
                  "keyword": {
                    "type": "keyword",
                    "ignore_above": 256
                  }
                }
              }
            }
          },
          "categoryHierarchies": {
            "properties": {
              "id": {
                "type": "long"
              },
              "leaf": {
                "type": "boolean"
              },
              "name": {
                "type": "text",
                "fields": {
                  "keyword": {
                    "type": "keyword",
                    "ignore_above": 256
                  }
                }
              },
              "parentId": {
                "type": "long"
              }
            }
          },
          "description": {
            "type": "keyword"
          },
          "directlyAddToBasket": {
            "type": "boolean"
          },
          "extraIngredients": {
            "type": "long"
          },
          "id": {
            "type": "long"
          },
          "imageUrl": {
            "type": "keyword",
            "index": false
          },
          "ingredients": {
            "type": "long"
          },
          "modifierGroups": {
            "properties": {
              "id": {
                "type": "long"
              },
              "position": {
                "type": "integer",
                "index": false
              }
            }
          },
          "name": {
            "type": "text"
          },
          "originalPrice": {
            "type": "float"
          },
          "ownSellable": {
            "type": "boolean"
          },
          "sellingPrice": {
            "type": "float"
          },
          "status": {
            "type": "keyword",
            "index": false
          },
          "upsellOffer": {
            "type": "boolean"
          }
        }
      },
      "paymentMethods": {
        "properties": {
          "type": {
            "type": "keyword"
          }
        }
      },
      "products": {
        "type": "nested",
        "properties": {
          "attributes": {
            "properties": {
              "key": {
                "type": "keyword",
                "index": false
              },
              "name": {
                "type": "keyword",
                "index": false
              },
              "values": {
                "properties": {
                  "id": {
                    "type": "keyword",
                    "index": false
                  },
                  "name": {
                    "type": "keyword",
                    "index": false
                  }
                }
              }
            }
          },
          "category": {
            "properties": {
              "hierarchyPath": {
                "type": "keyword",
                "index": false
              },
              "id": {
                "type": "integer",
                "index": false
              },
              "leaf": {
                "type": "boolean",
                "index": false
              },
              "name": {
                "type": "keyword"
              }
            }
          },
          "categoryHierarchies": {
            "properties": {
              "id": {
                "type": "integer",
                "index": false
              },
              "leaf": {
                "type": "boolean",
                "index": false
              },
              "name": {
                "type": "keyword"
              },
              "parentId": {
                "type": "integer",
                "index": false
              }
            }
          },
          "description": {
            "type": "keyword",
            "index": false
          },
          "directlyAddToBasket": {
            "type": "boolean"
          },
          "extraIngredients": {
            "type": "long",
            "index": false
          },
          "id": {
            "type": "long"
          },
          "imageUrl": {
            "type": "keyword",
            "index": false
          },
          "ingredients": {
            "type": "long",
            "index": false
          },
          "modifierGroups": {
            "properties": {
              "id": {
                "type": "long"
              },
              "position": {
                "type": "integer",
                "index": false
              }
            }
          },
          "multipleMenu": {
            "type": "boolean"
          },
          "name": {
            "type": "text"
          },
          "originalPrice": {
            "type": "float"
          },
          "ownSellable": {
            "type": "boolean"
          },
          "scores": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              }
            }
          },
          "sellingPrice": {
            "type": "float"
          },
          "status": {
            "type": "keyword",
            "index": false
          },
          "upsellOffer": {
            "type": "boolean"
          }
        }
      },
      "promotion": {
        "properties": {
          "aggregationField": {
            "type": "keyword"
          },
          "bannerUrl": {
            "type": "keyword"
          },
          "id": {
            "type": "long"
          },
          "productGroupTag": {
            "type": "keyword"
          },
          "ranking": {
            "type": "long"
          }
        }
      },
      "review": {
        "properties": {
          "averageScores": {
            "properties": {
              "delivery": {
                "type": "float"
              },
              "flavor": {
                "type": "float"
              },
              "overall": {
                "type": "float"
              },
              "service": {
                "type": "float"
              }
            }
          },
          "commentCount": {
            "type": "long"
          },
          "ratingCount": {
            "type": "long"
          }
        }
      },
      "scoresInterval": {
        "properties": {
          "0": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "1": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "2": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "3": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "4": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "5": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "6": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "7": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "8": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "9": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "10": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "11": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "12": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "13": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "14": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "15": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "16": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "17": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "18": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "19": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "20": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "21": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "22": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          },
          "23": {
            "properties": {
              "1": {
                "type": "double"
              },
              "2": {
                "type": "double"
              },
              "9": {
                "type": "double"
              },
              "11": {
                "type": "double"
              },
              "12": {
                "type": "double"
              },
              "13": {
                "type": "double"
              },
              "14": {
                "type": "double"
              },
              "15": {
                "type": "double"
              },
              "16": {
                "type": "double"
              },
              "17": {
                "type": "double"
              },
              "18": {
                "type": "double"
              },
              "19": {
                "type": "double"
              },
              "20": {
                "type": "double"
              }
            }
          }
        }
      },
      "sections": {
        "properties": {
          "isPromoted": {
            "type": "boolean"
          },
          "name": {
            "type": "keyword"
          },
          "position": {
            "type": "integer",
            "index": false
          },
          "products": {
            "properties": {
              "id": {
                "type": "long"
              },
              "position": {
                "type": "integer",
                "index": false
              }
            }
          },
          "status": {
            "type": "keyword",
            "index": false
          }
        }
      },
      "sortableName": {
        "type": "keyword",
        "index": false,
        "normalizer": "turkish_lowercase_normalizer"
      },
      "storeCustomValues": {
        "properties": {
          "key": {
            "type": "keyword",
            "index": false
          },
          "value": {
            "type": "keyword",
            "index": false
          }
        }
      },
      "supplierId": {
        "type": "long"
      },
      "tags": {
        "properties": {
          "id": {
            "type": "long"
          }
        }
      },
      "thumbnailUrl": {
        "type": "keyword",
        "index": false
      },
      "videoUrl": {
        "type": "keyword",
        "index": false
      },
      "virtualKitchenId": {
        "type": "long"
      },
      "workingStatus": {
        "type": "keyword"
      }
    }
  },
  "settings": {
    "index": {
      "refresh_interval": "-1",
      "number_of_shards": "10",
      "translog": {
        "flush_threshold_size": "1024mb",
        "durability": "async"
      },
      "requests": {
        "cache": {
          "enable": "true"
        }
      },
      "analysis": {
        "filter": {
          "wordDelimeterTokenFilter": {
            "catenate_all": "true",
            "split_on_numerics": "true",
            "type": "word_delimiter",
            "preserve_original": "true"
          },
          "myAsciifolding": {
            "type": "asciifolding",
            "preserveOriginal": "true"
          },
          "turkish_lowercase": {
            "type": "lowercase",
            "language": "turkish"
          }
        },
        "normalizer": {
          "turkish_lowercase_normalizer": {
            "type": "custom",
            "filter": [
              "turkish_lowercase"
            ],
            "char_filter": [
              "turkishSortCharFilter"
            ]
          }
        },
        "analyzer": {
          "default": {
            "filter": [
              "turkish_lowercase",
              "myAsciifolding",
              "wordDelimeterTokenFilter"
            ],
            "char_filter": [
              "turkishCharFilter"
            ],
            "type": "custom",
            "tokenizer": "standard"
          }
        },
        "char_filter": {
          "turkishCharFilter": {
            "type": "mapping",
            "mappings": [
              "ı => i",
              "ü => u",
              "ö => o",
              "ş => s",
              "ç => c",
              "ğ => g",
              "& => ' '",
              "- => ' '",
              "' => ",
              "’ => ",
              "` => ",
              "_ => "
            ]
          },
          "turkishSortCharFilter": {
            "type": "mapping",
            "mappings": [
              "ı => i",
              "i => iz",
              "ü => uz",
              "ö => oz",
              "ş => sz",
              "ç => cz",
              "ğ => gz",
              "İ => iz",
              "Ü => uz",
              "Ö => oz",
              "Ş => sz",
              "Ç => cz",
              "Ğ => gz",
              "& => ' '",
              "- => ' '",
              "' => ",
              "’ => ",
              "` => ",
              "_ => "
            ]
          }
        }
      },
      "number_of_replicas": "1"
    }
  }
}
  ```
</details>

## Index Life Cycle Mamagement
### Index Template

> Here we specify an index template for the index dba-test when to rollovered with exact settings and not to loose our shard-replications as well.

<details>
  <summary>Apply Index Template</summary>

  ```json
PUT /_index_template/dba-test
{
  "index_patterns": [
    "dba-test-*"
  ],
    "template": {
      "settings": {
        "index": {
          "lifecycle": {
            "name": "dba-test",
            "rollover_alias": "dba-test"
      },
      "routing": {
        "allocation": {
          "require": {
            "data": "hot"
          }
        }
      },
      "mapping": {
        "ignore_malformed": "true"
      },
      "number_of_shards": "5",
      "number_of_replicas": "0"
    }
  }
}
}

  ```
</details>


### Index Alias Uygulama 

> We should create&apply our alias to manage our ILM and other settings for our index each by index names. This let us prevent confusing between large ES clusters.

<details>

  <summary>Create and Apply aliase to our index</summary>

  ```json
POST /_aliases
{
  "actions": [
    {
      "add": {
        "index": "dba-test-*",
        "alias": "dba-test"
      }
    }
  ]
}

  ```
</details>

### Index Life Cycle Policy Apply

> In this section we tell through our policy when and in which conditions to be rollovered.
    
    | Hot age day : Specifices for how many day we would like to store data.
    | Delete age day: Index will be deleted after rollovered.
    | Hot size: Specifices after how much disk space allocated our index to be rollovered. 

<details>
  <summary>ILM Policy Apply</summary>

  ```json
PUT _ilm/policy/dba-test
{
    "policy": {
      "phases": {
        "hot": {
          "min_age": "0ms",
          "actions": {
            "rollover": {
              "max_age": "1d",
              "max_size": "30gb"
            },
            "set_priority": {
              "priority": 100
            }
          }
        },
        "warm": {
          "actions": {
            "allocate": {
              "number_of_replicas": 0,
              "include": {},
              "exclude": {},
              "require": {
                "data": "${ES_WARM_PHASE_NODE_SELECTOR}"
              }
            },
            "forcemerge": {
              "max_num_segments": 1
            },
            "set_priority": {
              "priority": 50
            }
          }
        },
        "cold": {
          "min_age": "0d",
          "actions": {
            "allocate": {
              "include": {},
              "exclude": {},
              "require": {
                "data": "hot"
              }
            },
            "set_priority": {
              "priority": 0
            }
          }
        },
        "delete": {
          "min_age": "7d",
          "actions": {
            "delete": {}
          }
        }
      }
    }
  }

  ```
</details>


## Index Search
### Match_all

<details>
  <summary>Example of match_all</summary>

  ```json
GET /dba-test/_search
{
  "query": {
    "match_all": {}
  }
}

  ```
</details>

### Multi_match

<details>
  <summary>Example of multi_match</summary>
  
  ```json
GET /dba-test/_search
{
  "query": {
    "multi_match": {
      "query": "burton",
      "fields": ["address","firstname"]
      }
    }
}

  ```
</details>

### Wildcard Match

> Example for the value matching with all possibilites.

<details>
  <summary>Example of wildcard match</summary>

  ```json
GET /dba-test/_search
{
  "query": {
    "wildcard": {
      "lastname": {
        "value": "o***ns"
        }
    }
  }
}

  ```
</details>

### Match Phrase

> Example for the string we looking for.

<details>
  <summary>Example of match phrase</summary>
  
  ```json
GET /dba-test/_search
{
  "query": {
    "match_phrase": {
      "employer": "eventex"
    }  
  }
}

  ```
</details>

### Compound Query

> A compound query is a combination of two or more queries that are joined together using a logical operator. There are three types of logical operators that can be used to combine queries in Elasticsearch.

<details>
  <summary>Example of compound query for bool</summary>
  
  ```json
GET /dba-test/_search
{
  "query": {
    "bool": {
      "must": [
        {
          "term": {
            "address": {
              "value": "street"
            }
          }
        }
      ]
      ,"must_not": [
        {
          "term": {
            "age": {
              "value": 27
            }
          }
        }
      ]
    }
  }
}

  ```
</details>

<details>
  <summary>Example of compound query for constant_score</summary>
  
  ```json
GET dba-test/_search
{
  "query": {
    "constant_score": {
      "filter": {
        "term": {
          "gender": "m"
        }
      },
      "boost": 1.2
    }
  }
}
  ```
</details>

    Boost scores can be applied to specific term or overall query as we used. This indicates relevance score and can be any positive or negative number.
    This can be seen by "max_score" : 1.0 if not used or 1.2 if used as the same way.

<details>
  <summary>Another example of boosting score query</summary>
  
  ```json
GET dba-test/_search
{
  "query": {
   "boosting": {
     "negative": {
       "term": {
         "gender": {
           "value": "m"
         }
       }
     },
     "positive": {
       "term": {
         "gender": {
           "value": "f"
         }
       }
     },
     "negative_boost": 0.5
   }
  }
}
  ```
</details>

## Query Costs
### Expensive Queries
Our wildcard search is very common example of slow query because of scanning millions of documents.

> search.allow_expensive_queries: false

    can be set (by default "enabled") to disallow about latencies and long time lapses.
### Fuzzy Search

    Uses "Levenshtein Distance"
    Returns documents that similar to search term.

<details>
  <summary>Fuzzy Search</summary>
  
  ```json
GET dba-test/_search
{
  "query": {
    "fuzzy": {
      "address": {
        "value": "strets"
      }
    }
  }
}
  ```
</details>


<details>
  <summary>Regexp Search</summary>
  
  ```json
GET dba-test/_search
{
  "query": {
    "regexp": {
      "city": {
        "value": ".*ksonbu.*"
      }
    }
  }
}
  ```
</details>

> "." Matches any character

> "+" Repeath the preciding character one or more times

> "?" Repeat the preceding character

> "|" Or operator to split left amd right side


### Index


In Elasticsearch, an index is a collection of documents that have similar characteristics or fields. For example, you could have an index for customer data, another index for product data, and so on.

Each index in Elasticsearch is divided into one or more shards. A shard is a subset of the index's data and is essentially a self-contained index that can be stored on a single node or distributed across multiple nodes. Sharding allows Elasticsearch to distribute and parallelize search and indexing operations across multiple nodes, which can improve performance and scalability.


### Shard
Documents within an index distributed across multiple nodes. 

Gain disk size heavines and search latency.

Collect result from each shard.

Primary shard is static setting which must be decided while creating index.

> Best Practise Teorically -> Nodes = primary * ( replica + 1)

> https://gbaptista.github.io/elastic-calculator/

> We dont use shard routing which assing some documents to specific shard. We use alias overall index to get search result but for the same index we can create more aliases with routing and serach via those aliases but keep in mind these queries will be read by the specific node only.

### Mapping
In Elasticsearch, a mapping is a schema definition that defines the fields, data types, and properties of the documents stored in an index. The mapping defines the structure of the data and allows Elasticsearch to interpret and index the data correctly, which is essential for efficient search and retrieval of data.

Some of the properties that can be specified in an Elasticsearch mapping include:

* Data type: Defines the data type of the field, such as string, integer, date, boolean, etc.
* Index options: Specifies whether the field should be indexed or not, whether it should be stored or not, etc.
* Nested and object fields: Defines the structure of nested and object fields in the index.
* Multi-fields: Defines one or more sub-fields for a field to support different queries or analysis.
