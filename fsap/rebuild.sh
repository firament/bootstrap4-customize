#! /bin/bash
####################################################################################################
#                                                                                                  #
#       Script to                                                                                  #
#         1. Update bootstrap source with custom changes                                           #
#         2. Copy back compiled dist file                                                          #
#                                                                                                  #
####################################################################################################
# bash fsap/rebuild.sh  2>&1 | tee ${HOME}/Documents/bs-fsap-build.txt

source $(dirname $0)/../10-Notes/set_paths.sh;

echo "Using Path ${BS4_BUILD_ROOT}";
echo "Using project root ${FSAP_ROOT}";

pushd ${BS4_BUILD_ROOT};

# Update changes
cp -vf ${FSAP_ROOT}/updates/_variables.scss ${BS4_BUILD_ROOT}/scss/_variables.scss;

# rebuild
npm run dist

# Copy back update
## css
cp -vf ${BS4_BUILD_ROOT}/dist/css/bootstrap.css                 ${FSAP_ROOT}/css/bootstrap-fsap.css;
cp -vf ${BS4_BUILD_ROOT}/dist/css/bootstrap.css.map             ${FSAP_ROOT}/css/bootstrap-fsap.css.map;
cp -vf ${BS4_BUILD_ROOT}/dist/css/bootstrap.min.css             ${FSAP_ROOT}/css/bootstrap-fsap.min.css;
cp -vf ${BS4_BUILD_ROOT}/dist/css/bootstrap.min.css.map         ${FSAP_ROOT}/css/bootstrap-fsap.min.css.map;

## js
cp -vf ${BS4_BUILD_ROOT}/dist/js/bootstrap.bundle.js            ${FSAP_ROOT}/js/bootstrap-fsap.bundle.js 
cp -vf ${BS4_BUILD_ROOT}/dist/js/bootstrap.bundle.js.map        ${FSAP_ROOT}/js/bootstrap-fsap.bundle.js.map 
cp -vf ${BS4_BUILD_ROOT}/dist/js/bootstrap.bundle.min.js        ${FSAP_ROOT}/js/bootstrap-fsap.bundle.min.js 
cp -vf ${BS4_BUILD_ROOT}/dist/js/bootstrap.bundle.min.js.map	${FSAP_ROOT}/js/bootstrap-fsap.bundle.min.js.map 
cp -vf ${BS4_BUILD_ROOT}/dist/js/bootstrap.js                   ${FSAP_ROOT}/js/bootstrap-fsap.js 
cp -vf ${BS4_BUILD_ROOT}/dist/js/bootstrap.js.map               ${FSAP_ROOT}/js/bootstrap-fsap.js.map 
cp -vf ${BS4_BUILD_ROOT}/dist/js/bootstrap.min.js               ${FSAP_ROOT}/js/bootstrap-fsap.min.js 
cp -vf ${BS4_BUILD_ROOT}/dist/js/bootstrap.min.js.map           ${FSAP_ROOT}/js/bootstrap-fsap.min.js.map 

echo "DONE...";
