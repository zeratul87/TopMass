pushd /uscms_data/d3/msaunder/TopMass/
#tar --exclude='*~' --exclude-vcs --exclude='CMSSW_8_0_26_patch1/.SCRAM' --exclude='CMSSW_8_0_26_patch1/src/TopNtuplizer/*.root' --exclude='CMSSW_8_0_26_patch1/src/TopNtuplizer/.git' --exclude='*tgz' -zcf CMSSW_8_0_26_patch1.tgz CMSSW_8_0_26_patch1
tar --exclude='*~' --exclude-vcs --exclude='CMSSW_8_0_26_patch1/.SCRAM' --exclude='CMSSW_8_0_26_patch1/src/TopNtuplizer/Plotting' --exclude='CMSSW_8_0_26_patch1/src/TopNtuplizer/.git' --exclude='*tgz' -zcf CMSSW_8_0_26_patch1.tgz CMSSW_8_0_26_patch1

xrdcp -f CMSSW_8_0_26_patch1.tgz root://cmseos.fnal.gov//store/user/${USER}/condorFiles/CMSSW_8_0_26_patch1.tgz

rm CMSSW_8_0_26_patch1.tgz

popd

