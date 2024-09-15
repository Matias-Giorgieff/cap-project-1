sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'ns.prop.clientestopropiedades',
            componentId: 'PropiedadesObjectPage',
            contextPath: '/Clientes/Propiedades'
        },
        CustomPageDefinitions
    );
});