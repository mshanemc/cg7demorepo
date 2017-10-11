#!/bin/bash
# put the record page back the way it was
cp -f backup/* force-app/main/default/flexipages

# put that pack into the Salesforce org
sfdx force:source:push -f