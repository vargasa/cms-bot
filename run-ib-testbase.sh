#!/bin/bash
echo "#!/bin/bash -ex"
echo "set +x"
echo "source $CMS_PATH/cmsset_default.sh  || true"
echo "scram -a $ARCHITECTURE project $RELEASE_FORMAT"
echo "cp $WORKSPACE/cms-bot/das-utils/das_client $WORKSPACE/cms-bot/das-utils/das_client.py"
echo "cd $RELEASE_FORMAT"
echo 'eval `scram runtime -sh`'
echo "$WORKSPACE/cms-bot/das-utils/use-ibeos-sort"
echo "export CMS_PATH=/cvmfs/cms-ib.cern.ch/week0"
echo "export PATH=$WORKSPACE/cms-bot/das-utils:\$PATH"
echo "export FRONTIER_LOG_LEVEL=warning"
echo "set -x"
