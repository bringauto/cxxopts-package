##
#
# Download and initialize variable cxxopts_DIR
#

CMLIB_DEPENDENCY(
	URI "https://github.com/bringauto/cxxopts-package/releases/download/v2.2.1/libcxxopts-dev_v2.2.1_any.zip"
	TYPE ARCHIVE
	OUTPUT_PATH_VAR _cxxopts_ROOT
)

SET(cxxopts_ROOT "${_cxxopts_ROOT}"
	CACHE STRING
	"cxxopts root directory"
	FORCE
)

