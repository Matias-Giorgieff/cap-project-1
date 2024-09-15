sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'ns/fiori/project1/test/integration/FirstJourney',
		'ns/fiori/project1/test/integration/pages/ClientsMain'
    ],
    function(JourneyRunner, opaJourney, ClientsMain) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('ns/fiori/project1') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheClientsMain: ClientsMain
                }
            },
            opaJourney.run
        );
    }
);