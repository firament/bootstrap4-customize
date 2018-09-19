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
echo "Using project root ${DIST_ROOT}";

pushd ${BS4_BUILD_ROOT};

# Update changes
cp -vf ${DIST_ROOT}/updates/_variables.scss ${BS4_BUILD_ROOT}/scss/_variables.scss;

# rebuild
npm run dist

# Copy back update
## css
cp -vf ${BS4_BUILD_ROOT}/dist/css/bootstrap.css ${DIST_ROOT}/css/bootstrap.css;
cp -vf ${BS4_BUILD_ROOT}/dist/css/bootstrap.css.map ${DIST_ROOT}/css/bootstrap.css.map;
cp -vf ${BS4_BUILD_ROOT}/dist/css/bootstrap.min.css ${DIST_ROOT}/css/bootstrap.min.css;
cp -vf ${BS4_BUILD_ROOT}/dist/css/bootstrap.min.css.map ${DIST_ROOT}/css/bootstrap.min.css.map;

## js
cp -vf ${BS4_BUILD_ROOT}/dist/js/bootstrap.bundle.js ${DIST_ROOT}/js/bootstrap.bundle.js 
cp -vf ${BS4_BUILD_ROOT}/dist/js/bootstrap.bundle.js.map ${DIST_ROOT}/js/bootstrap.bundle.js.map 
cp -vf ${BS4_BUILD_ROOT}/dist/js/bootstrap.bundle.min.js ${DIST_ROOT}/js/bootstrap.bundle.min.js 
cp -vf ${BS4_BUILD_ROOT}/dist/js/bootstrap.bundle.min.js.map ${DIST_ROOT}/js/bootstrap.bundle.min.js.map 
cp -vf ${BS4_BUILD_ROOT}/dist/js/bootstrap.js ${DIST_ROOT}/js/bootstrap.js 
cp -vf ${BS4_BUILD_ROOT}/dist/js/bootstrap.js.map ${DIST_ROOT}/js/bootstrap.js.map 
cp -vf ${BS4_BUILD_ROOT}/dist/js/bootstrap.min.js ${DIST_ROOT}/js/bootstrap.min.js 
cp -vf ${BS4_BUILD_ROOT}/dist/js/bootstrap.min.js.map ${DIST_ROOT}/js/bootstrap.min.js.map 

echo "DONE...";
