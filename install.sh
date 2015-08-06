#!/bin/bash

URL="https://github.com/Mashape/kong/releases/download/VERSION/kong-VERSION.trusty_all.deb"
LATEST=$(http https://api.github.com/repos/mashape/kong/releases/latest | jq -r .tag_name)
wget ${URL//VERSION/$LATEST}
dpkg -i kong-*.trusty_all.deb
