#!/bin/bash
ibmcloud login -r $REGION -g $RESOURCE_GROUP --apikey $API_KEY 
ibmcloud is snapshot-create --name ${NAME_PREFIX}-`date +%Y-%m-%d-%H-%M-%S` --volume ${VOLUME_ID}
spar