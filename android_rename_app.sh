#!/bin/bash

# If the $HOME variable equals "/home/gitlab-runner" this is assumed to be running in the ionic pro
# package environment. If you use gitlab runner locally you may need to adjust this logic.
if [ "$HOME" = "/home/gitlab-runner" ]
  then
    echo "Ionic Pro package build detected. Overriding app_name string."
    #For cordova-android@6.4.0
    # sed -i '''s/{working name}/{unicode name}/' ./platforms/android/res/values/strings.xml
    # cat ./platforms/android/res/values/strings.xml


    #For cordova-android@7.0.0+
    sed -i '''s/HOPI/HHOPI/' ./platforms/android/app/src/main/res/values/strings.xml
    cat ./platforms/android/app/src/main/res/values/strings.xml
fi