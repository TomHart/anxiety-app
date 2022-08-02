#!/usr/bin/env sh

if [ ! -f "values.yaml" ]; then
  echo 'No values.yaml file to process';
  exit 0;
fi

if [ -n "$image_tag" ]; then
  echo 'Swap image tag';
  sed -i.bak "s/\$TAG/$image_tag/" ./values.yaml
fi

if echo "$image_tag" | grep -Eq '[0-9]+.[0-9]+.[0-9]+'; then
   echo 'Deploying a tag'
   subdomain='anxiety'
fi

if [ -n "$subdomain" ]; then
  echo 'Swap host';
  sed -i.bak "s/\$HOST/$subdomain.tom-hart.net/" ./values.yaml
fi
