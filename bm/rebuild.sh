#! /bin/bash
####################################################################################################
#                                                                                                  #
#       Script to                                                                                  #
#         1. Update bootstrap source with custom changes                                           #
#         2. Copy back compiled dist file                                                          #
#                                                                                                  #
####################################################################################################
# bash bm/rebuild.sh  2>&1 | tee ${HOME}/Documents/bs-bm-build.txt

source $(dirname $0)/../10-Notes/set_paths.sh;

echo "Using Path ${BS4_BUILD_ROOT}";
echo "Using project root ${BM_ROOT}";

pushd ${BS4_BUILD_ROOT};

# Update changes
cp -vf ${BM_ROOT}/updates/_variables.scss ${BS4_BUILD_ROOT}/scss/_variables.scss;

# rebuild
npm run dist

# Copy back update
## css
cp -vf ${BS4_BUILD_ROOT}/dist/css/bootstrap.css ${BM_ROOT}/css/bootstrap-bm.css;
cp -vf ${BS4_BUILD_ROOT}/dist/css/bootstrap.css.map ${BM_ROOT}/css/bootstrap-bm.css.map;
cp -vf ${BS4_BUILD_ROOT}/dist/css/bootstrap.min.css ${BM_ROOT}/css/bootstrap-bm.min.css;
cp -vf ${BS4_BUILD_ROOT}/dist/css/bootstrap.min.css.map ${BM_ROOT}/css/bootstrap-bm.min.css.map;

## js
cp -vf ${BS4_BUILD_ROOT}/dist/js/bootstrap.bundle.js ${BM_ROOT}/js/bootstrap-bm.bundle.js 
cp -vf ${BS4_BUILD_ROOT}/dist/js/bootstrap.bundle.js.map ${BM_ROOT}/js/bootstrap-bm.bundle.js.map 
cp -vf ${BS4_BUILD_ROOT}/dist/js/bootstrap.bundle.min.js ${BM_ROOT}/js/bootstrap-bm.bundle.min.js 
cp -vf ${BS4_BUILD_ROOT}/dist/js/bootstrap.bundle.min.js.map ${BM_ROOT}/js/bootstrap-bm.bundle.min.js.map 
cp -vf ${BS4_BUILD_ROOT}/dist/js/bootstrap.js ${BM_ROOT}/js/bootstrap-bm.js 
cp -vf ${BS4_BUILD_ROOT}/dist/js/bootstrap.js.map ${BM_ROOT}/js/bootstrap-bm.js.map 
cp -vf ${BS4_BUILD_ROOT}/dist/js/bootstrap.min.js ${BM_ROOT}/js/bootstrap-bm.min.js 
cp -vf ${BS4_BUILD_ROOT}/dist/js/bootstrap.min.js.map ${BM_ROOT}/js/bootstrap-bm.min.js.map 

echo "DONE...";
