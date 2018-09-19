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
echo "Using project root ${BF_ROOT}";

pushd ${BS4_BUILD_ROOT};

# Update changes
cp -vf ${BF_ROOT}/updates/_variables.scss ${BS4_BUILD_ROOT}/scss/_variables.scss;

# rebuild
npm run dist

# Copy back update
## css
cp -vf ${BS4_BUILD_ROOT}/dist/css/bootstrap.css ${BF_ROOT}/css/bootstrap-bf.css;
cp -vf ${BS4_BUILD_ROOT}/dist/css/bootstrap.css.map ${BF_ROOT}/css/bootstrap-bf.css.map;
cp -vf ${BS4_BUILD_ROOT}/dist/css/bootstrap.min.css ${BF_ROOT}/css/bootstrap-bf.min.css;
cp -vf ${BS4_BUILD_ROOT}/dist/css/bootstrap.min.css.map ${BF_ROOT}/css/bootstrap-bf.min.css.map;

## js
cp -vf ${BS4_BUILD_ROOT}/dist/js/bootstrap.bundle.js ${BF_ROOT}/js/bootstrap-bf.bundle.js 
cp -vf ${BS4_BUILD_ROOT}/dist/js/bootstrap.bundle.js.map ${BF_ROOT}/js/bootstrap-bf.bundle.js.map 
cp -vf ${BS4_BUILD_ROOT}/dist/js/bootstrap.bundle.min.js ${BF_ROOT}/js/bootstrap-bf.bundle.min.js 
cp -vf ${BS4_BUILD_ROOT}/dist/js/bootstrap.bundle.min.js.map ${BF_ROOT}/js/bootstrap-bf.bundle.min.js.map 
cp -vf ${BS4_BUILD_ROOT}/dist/js/bootstrap.js ${BF_ROOT}/js/bootstrap-bf.js 
cp -vf ${BS4_BUILD_ROOT}/dist/js/bootstrap.js.map ${BF_ROOT}/js/bootstrap-bf.js.map 
cp -vf ${BS4_BUILD_ROOT}/dist/js/bootstrap.min.js ${BF_ROOT}/js/bootstrap-bf.min.js 
cp -vf ${BS4_BUILD_ROOT}/dist/js/bootstrap.min.js.map ${BF_ROOT}/js/bootstrap-bf.min.js.map 

echo "DONE...";
