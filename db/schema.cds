namespace com.satinfotech.electronicsdb;
using { managed, cuid } from '@sap/cds/common';

entity BusinessPartner: cuid, managed{
  
  @title: 'Business Partner Number'
  BusinessPartnerNumber : String(10)  @mandatory;
  @title: 'Name'
  Name      : String(100)  @mandatory;
  @title: 'Address 1'
  Address1  : String(100)  @mandatory;
  @title: 'Address 2'
  Address2  : String(100) ;
  @title: 'City'
  City      : String(50)  @mandatory;
  @title: 'State'
  State     : String(50)  @mandatory;
   @title: 'PINCode'
  PINCode   : String(10) @mandatory;
   @title: 'Is GSTN Registered'
  IsGSTNRegistered : Boolean default false;
  @title: 'GSTIN Number'
  GSTINNumber : String(15) ;
  @title: 'Is Vendor' 
  IsVendor  : Boolean @mandatory;
 @title: 'Is Customer' 
  IsCustomer: Boolean  @mandatory;
}

entity Store: cuid, managed {
  @title: 'Store ID'
  StoreID   : String(5)  @mandatory;
  @title: 'Name'
  Name      : String(100)  @mandatory;
   @title: 'Address 1'
  Address1  : String(100) @mandatory;
   @title: 'Address 2'
  Address2  : String(100);
  @title: 'City'
  City      : String(50)  @mandatory;
  @title: 'State'
  State     : String(50)  @mandatory;
  @title: 'PINCode'
  PINCode   : String(10)  @mandatory;
}

entity Product: cuid, managed{
  
  @title: 'Product ID'
  ProductID         : String(10)  @mandatory;
  @title: 'Name'
  Name              : String(100)  @mandatory;
   @title: 'Product Image URL'
  ProductImageURL   : String(255);
   @title: 'Product Cost Price'
  ProductCostPrice  : Decimal(10,2) @mandatory;
  ProductSellPrice  : Decimal(10,2)  @mandatory;
}
/*
entity StockData {
  key ID       : UUID;
  @title: 'Stock Data'
  store_ID   : UUID @title: 'Store ID' @mandatory;
  product_ID : UUID @title: 'Product ID' @mandatory;
  StockQuantity : Integer @title: 'Stock Quantity' @mandatory;
}

entity PurchaseOrder {
  key ID       : UUID;
  @title: 'Purchase Order'
  PurchaseOrderNumber : UUID @title: 'Purchase Order Number' @mandatory;
  BusinessPartner : Association to BusinessPartner @title: 'Business Partner' @mandatory;
  PurchaseOrderDate : DateTime @title: 'Purchase Order Date' @mandatory;
  Items : Composition of many PurchaseOrderItem;
}

entity PurchaseOrderItem {
  key ID       : UUID;
  @title: 'Purchase Order Item'
  purchaseOrder : Association to PurchaseOrder;
  product_ID : UUID @title: 'Product ID' @mandatory;
  Quantity   : Integer @title: 'Quantity' @mandatory;
  Price      : Decimal(10,2) @title: 'Price' @mandatory;
  store_ID   : UUID @title: 'Store ID' @mandatory;
}

entity SalesOrder {
  key ID       : UUID;
  @title: 'Sales Order'
  SalesOrderNumber : UUID @title: 'Sales Order Number' @mandatory;
  BusinessPartner : Association to BusinessPartner @title: 'Business Partner' @mandatory;
  SalesDate  : DateTime @title: 'Sales Date' @mandatory;
  Items : Composition of many SalesOrderItem;
}

entity SalesOrderItem {
  key ID       : UUID;
  @title: 'Sales Order Item'
  salesOrder : Association to SalesOrder;
  product_ID : UUID @title: 'Product ID' @mandatory;
  Quantity   : Integer @title: 'Quantity' @mandatory;
  Price      : Decimal(10,2) @title: 'Price' @mandatory;
  store_ID   : UUID @title: 'Store ID' @mandatory;
}
*/