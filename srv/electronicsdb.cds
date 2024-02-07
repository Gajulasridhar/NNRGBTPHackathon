using {com.satinfotech.electronicsdb as db} from '../db/schema';

service Market {
    entity BusinessPartner as projection on db.BusinessPartner{
        @UI.Hidden: true
        ID,
        *
    };
    entity Store as projection on db. Store{
        @UI.Hidden: true
        ID,
        *
    };
    entity Product as projection on db.Product{
        @UI.Hidden: true
        ID,
        *
    };
    }

annotate Market.BusinessPartner with @odata.draft.enabled;
annotate Market.Store with @odata.draft.enabled;
annotate Market.Product with @odata.draft.enabled;

annotate Market.BusinessPartner with @(
    UI.LineItem: [
        {
            $Type : 'UI.DataField',
            Value :  BusinessPartnerNumber
        },
        
        {
            $Type : 'UI.DataField',
  
            Value :  Name 
        },
        
        {
            $Type : 'UI.DataField',
            Value :   Address1
        },
        {
            $Type : 'UI.DataField',
            Value : Address2 
        },
        {
            $Type : 'UI.DataField',
            Value :  City 
        },
           
         {
            $Type : 'UI.DataField',
            Value :   State
        },
         {
            $Type : 'UI.DataField',
            Value :   PINCode 
        },
         {
            $Type : 'UI.DataField',
            Value :  IsGSTNRegistered
        },
          {
            $Type : 'UI.DataField',
            Value :  GSTINNumber
        },
          {
            $Type : 'UI.DataField',
            Value :    IsVendor
        },
          {
            $Type : 'UI.DataField',
            Value :   IsCustomer
        },
      
    ],
    UI.SelectionFields: [  Name , State, PINCode],  
     UI.FieldGroup #BusinessPartnerinformation:{
        $Type : 'UI.FieldGroupType',
        Data : [
          {
            $Type : 'UI.DataField',
            Value :  BusinessPartnerNumber
        },
        
        {
            $Type : 'UI.DataField',
  
            Value :  Name 
        },
        
        {
            $Type : 'UI.DataField',
            Value :   Address1
        },
        {
            $Type : 'UI.DataField',
            Value : Address2 
        },
        {
            $Type : 'UI.DataField',
            Value :  City 
        },
           
         {
            $Type : 'UI.DataField',
            Value :   State
        },
         {
            $Type : 'UI.DataField',
            Value :   PINCode 
        },
         {
            $Type : 'UI.DataField',
            Value :  IsGSTNRegistered
        },
          {
            $Type : 'UI.DataField',
            Value :  GSTINNumber
        },
          {
            $Type : 'UI.DataField',
            Value :    IsVendor
        },
          {
            $Type : 'UI.DataField',
            Value :   IsCustomer
        },
        ],
     },
      UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'BuisinessPartnerInfoFacet',
            Label : 'BuisinessPartnerInformation',
            Target : '@UI.FieldGroup#BusinessPartnerinformation',
        },
         
    ],
);
