##
#
# Download and initialize variable cxxopts_DIR
#

CMLIB_DEPENDNECY(
	URI "https://github.com/bringauto/cxxopts-package/releases/download/v2.2.1/libcxxopts-dev_v2.2.1_any.zip"
	TYPE ARCHIVE
	OUTPUT_PATH_VAR _cxxopts_DIR
)

SET(cxxopts_DIR "${_cxxopts_DIR}"
	CACHE STRING
	"cxxopts dir"
)
