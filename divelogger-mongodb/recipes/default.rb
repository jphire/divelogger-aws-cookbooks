#
# Cookbook Name:: divelogger
# Recipe:: default
#
# Copyright (C) 2015 Janne Laukkanen
#
# All rights reserved - Do Not Redistribute
#

# create users
include_recipe 'divelogger-mongodb::user'

# include mongodb recipes
include_recipe "divelogger-mongodb::mongodb"

include_recipe "divelogger-mongodb::utils"
