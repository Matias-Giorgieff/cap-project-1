using CatalogServiceDos as service from '../../srv/catalog-service';


annotate service.Clientes with @odata.draft.enabled;
annotate service.Clientes with @odata.draft.bypass;


annotate service.Clientes with @(
    Capabilities                 : {
        InsertRestrictions: {
            $Type     : 'Capabilities.InsertRestrictionsType',
            Insertable: true
        },
        DeleteRestrictions: {
            $Type    : 'Capabilities.DeleteRestrictionsType',
            Deletable: true
        },

        UpdateRestrictions: {
            $Type    : 'Capabilities.UpdateRestrictionsType',
            Updatable: true
        }

    },

    UI.FieldGroup #GeneratedGroup: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'Nombre',
                Value: Nombre,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Edad',
                Value: Edad,
            },
            {
                $Type: 'UI.DataField',
                Label: 'IdCliente',
                Value: IdCliente,
            },
            {
                $Type: 'UI.DataField',
                Label: 'EstadoCivil',
                Value: EstadoCivil,
            },
        ],
    },
    UI.Facets                    : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'GeneratedFacet1',
        Label : 'General Information',
        Target: '@UI.FieldGroup#GeneratedGroup',
    }, ],
    UI.LineItem                  : [
        {
            $Type: 'UI.DataField',
            Label: 'Nombre',
            Value: Nombre,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Edad',
            Value: Edad,
        },
        {
            $Type: 'UI.DataField',
            Label: 'EstadoCivil',
            Value: EstadoCivil,
        },
    ],
);

annotate service.Propiedades with @(
    UI.FieldGroup #PropiedadesGroup: {
        $Type: 'UI.FieldGroupType',
        Data : [{
            $Type: 'UI.DataField',
            Label: 'Nombre',
            Value: Nombre,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Descripcion',
            Value: Descripcion,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Direccions',
            Value: Direccion,
        },
        ],
    },
    
    UI.LineItem                  : [
        {
            $Type: 'UI.DataField',
            Label: 'Nombre',
            Value: Nombre,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Descripcion',
            Value: Descripcion,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Direccions',
            Value: Direccion,
        },
    ],
);

