# 检查参数是否为空
if [ -z "$1" ]; then
    echo "Usage: $0 <git_branch>"
    exit 1
fi

# if [ ! -d /opt/tiger/flow/flowservice/dist-info ]; then
#  mkdir -p /opt/tiger/flow/flowservice/dist-info
#  cp -r /opt/tiger/flow/flowservice/flow_engine/blockwise/bytedblockwise-* /opt/tiger/flow/flowservice/dist-info/
# fi

rm -rf /opt/tiger/flow/flowservice/flow_engine/blockwise
git clone --branch "$1" https://code.byted.org/flowlang/blockwise.git /opt/tiger/flow/flowservice/flow_engine/blockwise
# cp -r /opt/tiger/flow/flowservice/dist-info/ /opt/tiger/flow/flowservice/flow_engine/blockwise/

kill $(pgrep -f "bizengine")
