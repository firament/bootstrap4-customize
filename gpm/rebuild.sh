#! /bin/bash
####################################################################################################
#                                                                                                  #
#       Script to                                                                                  #
#         1. Update bootstrap source with custom changes                                           #
#         2. Copy back compiled dist file                                                          #
#                                                                                                  #
####################################################################################################
# bash gpm/rebuild.sh  2>&1 | tee ${HOME}/Documents/bs-gpm-build.txt

source $(dirname $0)/../10-Notes/set_paths.sh;

echo "Using Path ${BS4_BUILD_ROOT}";
echo "Using project root ${GPM_ROOT}";

pushd ${BS4_BUILD_ROOT};

# Update changes
cp -vf ${GPM_ROOT}/updates/_variables.scss ${BS4_BUILD_ROOT}/scss/_variables.scss;

# rebuild
npm run dist

# Copy back update
## css
cp -vf ${BS4_BUILD_ROOT}/dist/css/bootstrap.css                 ${GPM_ROOT}/css/bootstrap-gpm.css;
cp -vf ${BS4_BUILD_ROOT}/dist/css/bootstrap.css.map             ${GPM_ROOT}/css/bootstrap-gpm.css.map;
cp -vf ${BS4_BUILD_ROOT}/dist/css/bootstrap.min.css             ${GPM_ROOT}/css/bootstrap-gpm.min.css;
cp -vf ${BS4_BUILD_ROOT}/dist/css/bootstrap.min.css.map         ${GPM_ROOT}/css/bootstrap-gpm.min.css.map;

## js
cp -vf ${BS4_BUILD_ROOT}/dist/js/bootstrap.bundle.js            ${GPM_ROOT}/js/bootstrap-gpm.bundle.js 
cp -vf ${BS4_BUILD_ROOT}/dist/js/bootstrap.bundle.js.map        ${GPM_ROOT}/js/bootstrap-gpm.bundle.js.map 
cp -vf ${BS4_BUILD_ROOT}/dist/js/bootstrap.bundle.min.js        ${GPM_ROOT}/js/bootstrap-gpm.bundle.min.js 
cp -vf ${BS4_BUILD_ROOT}/dist/js/bootstrap.bundle.min.js.map	${GPM_ROOT}/js/bootstrap-gpm.bundle.min.js.map 
cp -vf ${BS4_BUILD_ROOT}/dist/js/bootstrap.js                   ${GPM_ROOT}/js/bootstrap-gpm.js 
cp -vf ${BS4_BUILD_ROOT}/dist/js/bootstrap.js.map               ${GPM_ROOT}/js/bootstrap-gpm.js.map 
cp -vf ${BS4_BUILD_ROOT}/dist/js/bootstrap.min.js               ${GPM_ROOT}/js/bootstrap-gpm.min.js 
cp -vf ${BS4_BUILD_ROOT}/dist/js/bootstrap.min.js.map           ${GPM_ROOT}/js/bootstrap-gpm.min.js.map 

echo "DONE...";
