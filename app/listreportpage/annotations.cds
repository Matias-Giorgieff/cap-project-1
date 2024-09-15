using CatalogService as service from '../../srv/catalog-service';


annotate service.Clients with @odata.draft.enabled;
annotate service.Clients with @odata.draft.bypass;

annotate service.Clients with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Nombre',
                Value : Nombre,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Edad',
                Value : Edad,
            },
            {
                $Type : 'UI.DataField',
                Label : 'EstadoCivil_ID',
                Value : EstadoCivil_ID,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Nombre',
            Value : Nombre,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Edad',
            Value : Edad,
        },
        {
            $Type : 'UI.DataField',
            Label : 'EstadoCivil_ID',
            Value : EstadoCivil_ID,
        },
    ],
);

annotate service.Clients with {
    EstadoCivil @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'EstadoCivil',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : EstadoCivil_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'Nombre',
            },
        ],
    }
};

