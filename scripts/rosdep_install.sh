#!/bin/bash

if [ ${2} = "kinetic" ]; then
    rosdep update --include-eol-distros
else
    rosdep update
fi

rosdep install --default-yes --from-paths ${1}/src --ignore-src -r --rosdistro ${2}
