sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/prop/clientestopropiedades/test/integration/FirstJourney',
		'ns/prop/clientestopropiedades/test/integration/pages/ClientesList',
		'ns/prop/clientestopropiedades/test/integration/pages/ClientesObjectPage',
		'ns/prop/clientestopropiedades/test/integration/pages/PropiedadesObjectPage'
    ],
    function(JourneyRunner, opaJourney, ClientesList, ClientesObjectPage, PropiedadesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/prop/clientestopropiedades') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheClientesList: ClientesList,
					onTheClientesObjectPage: ClientesObjectPage,
					onThePropiedadesObjectPage: PropiedadesObjectPage
                }
            },
            opaJourney.run
        );
    }
);