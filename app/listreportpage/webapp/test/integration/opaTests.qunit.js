sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'nm/propietarios/listreportpage/test/integration/FirstJourney',
		'nm/propietarios/listreportpage/test/integration/pages/ClientsList',
		'nm/propietarios/listreportpage/test/integration/pages/ClientsObjectPage',
		'nm/propietarios/listreportpage/test/integration/pages/PropiedadesObjectPage'
    ],
    function(JourneyRunner, opaJourney, ClientsList, ClientsObjectPage, PropiedadesObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('nm/propietarios/listreportpage') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheClientsList: ClientsList,
					onTheClientsObjectPage: ClientsObjectPage,
					onThePropiedadesObjectPage: PropiedadesObjectPage
                }
            },
            opaJourney.run
        );
    }
);