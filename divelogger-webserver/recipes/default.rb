#
# Cookbook Name:: divelogger
# Recipe:: default
#
# Copyright (C) 2015 Janne Laukkanen
#
# All rights reserved - Do Not Redistribute
#
# include_recipe "mongodb::default"
# include_recipe "redis::default"



# include web server recipes
include_recipe "divelogger-webserver::deploy"

