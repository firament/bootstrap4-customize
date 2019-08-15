#! /bin/bash
####################################################################################################
#                                                                                                  #
#       Script to                                                                                  #
#         1. Update bootstrap source with custom changes                                           #
#         2. Copy back compiled dist file                                                          #
#                                                                                                  #
####################################################################################################

source $(dirname $0)/../10-Notes/set_paths.sh;

echo "Using Path ${BS4_BUILD_ROOT}";
echo "Using project root ${RN_ROOT}";

pushd ${BS4_BUILD_ROOT};

# Update changes
cp -vf ${RN_ROOT}/updates/_variables.scss ${BS4_BUILD_ROOT}/scss/_variables.scss;

# rebuild
npm run dist

# Copy back update
## css
cp -vf ${BS4_BUILD_ROOT}/dist/css/bootstrap.css         ${RN_ROOT}/css/bootstrap-rn.css;
cp -vf ${BS4_BUILD_ROOT}/dist/css/bootstrap.css.map     ${RN_ROOT}/css/bootstrap-rn.css.map;
cp -vf ${BS4_BUILD_ROOT}/dist/css/bootstrap.min.css     ${RN_ROOT}/css/bootstrap-rn.min.css;
cp -vf ${BS4_BUILD_ROOT}/dist/css/bootstrap.min.css.map ${RN_ROOT}/css/bootstrap-rn.min.css.map;

## js
cp -vf ${BS4_BUILD_ROOT}/dist/js/bootstrap.bundle.js            ${RN_ROOT}/js/bootstrap-rn.bundle.js 
cp -vf ${BS4_BUILD_ROOT}/dist/js/bootstrap.bundle.js.map        ${RN_ROOT}/js/bootstrap-rn.bundle.js.map 
cp -vf ${BS4_BUILD_ROOT}/dist/js/bootstrap.bundle.min.js        ${RN_ROOT}/js/bootstrap-rn.bundle.min.js 
cp -vf ${BS4_BUILD_ROOT}/dist/js/bootstrap.bundle.min.js.map    ${RN_ROOT}/js/bootstrap-rn.bundle.min.js.map 
cp -vf ${BS4_BUILD_ROOT}/dist/js/bootstrap.js                   ${RN_ROOT}/js/bootstrap-rn.js 
cp -vf ${BS4_BUILD_ROOT}/dist/js/bootstrap.js.map               ${RN_ROOT}/js/bootstrap-rn.js.map 
cp -vf ${BS4_BUILD_ROOT}/dist/js/bootstrap.min.js               ${RN_ROOT}/js/bootstrap-rn.min.js 
cp -vf ${BS4_BUILD_ROOT}/dist/js/bootstrap.min.js.map           ${RN_ROOT}/js/bootstrap-rn.min.js.map 

echo "DONE...";
