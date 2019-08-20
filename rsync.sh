#### Rsync #####

#!/bin/bash

DATEA=`date +%Y-%m-%d-%H:%M`
nohup sshpass -pxxx rsync -arv /svc/data/irteam root@xxxxx:/home1 --progress --log-file=./rsync_$DATEA.log
