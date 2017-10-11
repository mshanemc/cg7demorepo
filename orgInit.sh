#!/bin/bash
sfdx force:org:create -s -f config/project-scratch-def.json -a ntoLight
sfdx force:source:push
sfdx force:user:permset:assign -n NTO
sfdx force:apex:execute -f scripts/deleteAll.cls
sfdx force:data:tree:import -p data/importPlan.json
sfdx force:user:password:generate
sfdx force:org:open -p /one/one.app#/sObject/Merchandising_Mix__c/list?filterName=All

# manual steps
# password reset, etc?
# update heroku config with credentials (secret)