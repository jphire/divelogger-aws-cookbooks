#!/bin/bash

# run the following command from the DL app root, and set version to current version name

USER=$(whoami)
VERSION="0.1."
bundle="/Users/$USER/Sites/dive-logger/chef-bundles/bundle"
bundle_path="/Users/$USER/Sites/dive-logger/chef-bundles/bundle.zip"
tepoch=`date +%s`

echo $#

#if [ ! $# == 1 ];then 
#    echo "usage: $0 $VERSION*  (* is the new version number you wish to deploy to)"
#    exit
#fi

#if [[ "$1" == $VERSION* ]]; then
    echo "creating new bundle.."
    echo "$bundle_path"
    if [ -f "$bundle_path" ]; then    
        read -p "Bundle with that version already exists, are you sure? y|n" -n 1 -r
        echo    # (optional) move to a new line
        if [[ $REPLY =~ ^[Yy]$ ]]; then
          echo "creating bundle.."
          if [ -e $bundle_path ]; then
	    echo "renaming old bundle to $bundle-$tepoch.zip"
            mv $bundle_path $bundle-$tepoch.zip
          fi

          create_bundle=`git archive --format=zip HEAD > $bundle_path`;echo $create_bundle
          echo "done. New version bundle is now in: $bundle_path"
        else
	  echo "reverting.."
        fi 
    else
        if [ -e $bundle_path ]; then
	   echo "renaming old bundle to $bundle-$tepoch.zip"
	   mv $bundle_path $bundle-$tepoch.zip
        fi

        create_bundle=`git archive --format=zip HEAD > $bundle_path`;echo $create_bundle
        echo "done. New version bundle is now in: $bundle_path"
    fi
	#create_bundle=`git archive --format=zip HEAD > $bundle_path$1`;echo $create_bundle
#else 
#    echo "incorrect arguments given. The first argument must be a version number of format: $VERSION"
#fi
