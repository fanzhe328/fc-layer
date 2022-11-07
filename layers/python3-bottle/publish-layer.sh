#!/bin/bash
#set -ex

service_devs_access="fz"
layer_name="Python3-Bottle"
compatible_runtime="custom"
zip_code="./layer.zip"
all_regions="cn-shenzhen cn-hangzhou cn-shanghai cn-qingdao cn-beijing cn-zhangjiakou cn-huhehaote cn-chengdu cn-hongkong ap-northeast-1 ap-southeast-1 eu-central-1 eu-west-1 us-west-1 us-east-1 ap-south-1 ap-southeast-3 ap-southeast-5 ap-southeast-2"

regions=${REGIONS-"cn-hangzhou cn-shanghai cn-qingdao cn-beijing cn-zhangjiakou cn-huhehaote cn-chengdu cn-hongkong ap-northeast-1 ap-southeast-1 eu-central-1 eu-west-1 us-west-1 us-east-1 ap-south-1 ap-southeast-3 ap-southeast-5 ap-southeast-2"}

for region in $(echo $regions); do
    echo "---------- push layer ${layer_name} to $region ..."
    s cli fc layer --access ${service_devs_access} --region ${region} publish --layer-name ${layer_name} --compatible-runtime ${compatible_runtime} --code ${zip_code}
    s cli fc layer --access ${service_devs_access} --region ${region} acl --layer-name ${layer_name} --public
    s cli fc layer --access ${service_devs_access} --region ${region} list --layer-name ${layer_name}
done