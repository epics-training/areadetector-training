#! /bin/bash

# Default file writing settings
caput 13SIM1:TIFF1:CreateDirectory 1
caput -S 13SIM1:TIFF1:FilePath "\/home\/epics-dev\/Documents\/images"
caput -S 13SIM1:TIFF1:FileName "something"
caput -S 13SIM1:TIFF1:FileTemplate "%s%s_%d.tif"
caput 13SIM1:TIFF1:AutoIncrement Yes

# Enable attributes for sim detector and stats1 plugin
caput -S 13SIM1:cam1:NDAttributesFile "simDetectorAttributes.xml"
caput -S 13SIM1:Stats1:NDAttributesFile "StatsAttributes.xml"

# Set up tracking of peak with overlay
caput 13SIM1:Over1:1:Use Yes
caput 13SIM1:Over1:1:Shape Cross
caput 13SIM1:Stats1:ComputeCentroid Yes

caput 13SIM1:Over1:1:PositionXLink.DOL ""
caput 13SIM1:Over1:1:CenterXLink.DOL "13SIM1:Stats1:CentroidX_RBV CP MS"
caput 13SIM1:Over1:1:SizeXLink.DOL ""
caput 13SIM1:Over1:1:WidthX 3
caput 13SIM1:Over1:1:SizeX 300

caput 13SIM1:Over1:1:PositionYLink.DOL ""
caput 13SIM1:Over1:1:CenterYLink.DOL "13SIM1:Stats1:CentroidY_RBV CP MS"
caput 13SIM1:Over1:1:SizeYLink.DOL ""
caput 13SIM1:Over1:1:WidthY 3
caput 13SIM1:Over1:1:SizeY 300

