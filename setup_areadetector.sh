#! /bin/bash

# IOC directory. Script will delete pre-existing contents
IOC_DIR=/home/epics-dev/Documents/ioc_dir

rm -rf $IOC_DIR
mkdir -p $IOC_DIR

cp /opt/epics/RELEASE.local $IOC_DIR

cp -r /opt/epics/adsimdetector-2.11/iocs/simDetectorIOC $IOC_DIR
cp -r /opt/epics/adpvadriver-1.6/iocs/pvaDriverIOC $IOC_DIR

make -C $IOC_DIR/simDetectorIOC
make -C $IOC_DIR/pvaDriverIOC

cp $IOC_DIR/simDetectorIOC/iocBoot/iocSimDetector/envPaths{,.linux}
cp $IOC_DIR/pvaDriverIOC/iocBoot/iocPvaDriver/envPaths{,.linux}
