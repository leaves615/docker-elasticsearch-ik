#!/bin/bash
### https://blog.dockbit.com/templating-your-dockerfile-like-a-boss-2a84a67d28e9
render() {
sedStr="
  s/%%VERSION%%/$1/g;
"

sed -e "$sedStr" $1
}

mkdir $1
render Dockerfile.template > $1/Dockerfile

# versions=(7.10.1 7.11.2 7.12.1 7.13.4 7.14.2 7.16.3 7.17.6 8.1.3 8.2.3 8.3.3 8.4.3)
# for version in ${versions[*]}; do
#   if [ ! -d $version ]; then
#     mkdir $version
#   fi
#   render Dockerfile.template > $version/Dockerfile
# done
