set -euo pipefail
cd "$(dirname "$0")" || exit 1

chmod +x ./NativeInject/InjectLib
xattr -cr ./NativeInject/InjectLib
codesign -fs - ./NativeInject/InjectLib
sudo ./NativeInject/InjectLib $(pwd)