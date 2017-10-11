#!/bin/bash
# put the record page back the way it was
cp -f backup/* force-app/main/default/flexipages

# put that pack into the Salesforce org
sfdx force:source:push -f

#check in the changes so the source stays clean
git add force-app/main/default/flexipages/Merchandising_Mix_Record_Page.flexipage-meta.xml
git commit -m 'auto-reset'
git push origin master