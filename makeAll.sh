#!/bin/bash
read -p "Informar versao do build: " version
export version
. buildAll.sh
. pushAll.sh
. kubeupdate.sh
