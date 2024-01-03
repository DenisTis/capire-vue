Application created using cds init command
Application should perform rest requests to the defined connection and receive answer back
## Commands (first switch to the applicaton folder (cpapp or rest-client-app)):
- create App: cds init, npm install, cds watch

- add local database: cds deploy --to sqlite:db/<namespace.appname>.db
- prepare for deployment (only single feature add is working): cds add hana,mta,xsuaa,approuter --for production
- if not having fiori app - remove property "welcomeFile" from app/xs-app.json
- if not having fiori app - enable feature in package.json: "cds": { "features": {  "fiori_preview": true  },}
- add redirect to cloud api endpoint (should be your endpoint) in xs-security.json: "oauth2-configuration": {  "redirect-uris": ["https://*.us10-001.hana.ondemand.com/**"]}
- build mta archive: mbt build -t gen --mtar mta.tar
- login to cloud account: cf login
- deploy: cf deploy gen/mta.tar
!! Important: here, -db service creation will fail. Reason: Instance has to be added manually in BTP Cockpit, tab "Instances".
To check correct parameters - go to the broken instance and remember what was there 


<!-- - build App (locally): cds build (--production)
- build App (mta archive): mbt build -t gen --mtar mta.tar
- deploy mta archive: cf deploy gen/mta.tar
- deploy App: cf push -->

## Prerequisites: 
npm i -g @sap/cds-dk, mbt

## Once a day login: 
cf login -a https://api.cf.us10-001.hana.ondemand.com -u tislenko.denis@gmail.com -p Cloud2023!
DBADMIN pwd: Empresa1!

## Important: 
use npm ci !


## Trainings: 
Create: https://developers.sap.com/tutorials/cp-apm-nodejs-create-service.html
Deploy: https://developers.sap.com/tutorials/cap-service-deploy.html
Create Fiori-Elements based UI: https://developers.sap.com/tutorials/btp-app-create-ui-fiori-elements.html
Create freestyle UI5 app: https://developers.sap.com/tutorials/btp-app-create-ui-freestyle-sapui5.html

## Re-creating application after suspend: 
- SAP HANA Database has to be created again (name should be rest-client-app)
    DBADMIN password (has to be re-etntered is usually Empresa1!)