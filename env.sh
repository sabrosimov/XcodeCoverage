SOURCE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )"/.. && pwd )"

export CURRENT_ARCH="i386"

export PRGROOT=$SOURCE_DIR"/supervisor-dashboard"
export SRCROOT=$PRGROOT"/Supervisor Dashboard"
export OBJROOT=$SRCROOT"/build"
export BUILT_PRODUCTS_DIR=$OBJROOT"/Release-iphonesimulator"
export OBJECT_FILE_DIR_normal=$OBJROOT"/Supervisor Dashboard.build/Release-iphonesimulator/Supervisor-cal.build/Objects-normal"