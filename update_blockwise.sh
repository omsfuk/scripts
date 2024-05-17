# 检查参数是否为空
if [ -z "$1" ]; then
    echo "Usage: $0 <git_branch>"
    exit 1
fi

rm -rf /opt/tiger/flow/flowservice/blockwise/blockwise
git clone --branch "$1" https://code.byted.org/flowlang/blockwise.git /opt/tiger/flow/flowservice/blockwise/blockwise
kill $(pgrep -f "bizengine")
