#! /bin/bash

# for each plantcv tutorial touch the "auto_run" file with new date
# will run on the first of every month per:
#

triggered_time = `date +'%Y-%m-%d-%H-%M-%S'`

for dir in /data/datascience/users/jsumner/plantcv-tutorial-index/repos/*/; do
	   cd $dir
	   git pull origin main
	   echo triggered_time > "auto_run"
	   git add .
	   git commit -m "Auto commit on $triggered_time"
	   git push origin main
	   cd ..
	done
