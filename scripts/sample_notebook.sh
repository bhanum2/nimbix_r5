#!/bin/bash

cd /usr/local/samples
sudo /usr/sbin/nginx
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib:/usr/local/cuda/targets/ppc64le-linux/lib/
export PYTHONPATH=$PYTHONPATH:/opt/anaconda2/lib/python2.7/site-packages:/opt/DL/tensorflow/lib/python2.7/site-packages
jupyter notebook --no-browser --NotebookApp.token="" &
sudo /usr/sbin/sshd -D
