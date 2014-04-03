#
# Cookbook Name:: build-essential
# Recipe:: fedora
#
# Copyright 2008-2013, Opscode, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

%w{
  autoconf
  bison
  flex
  gcc
  gcc-c++
  kernel-devel
  make
  m4
}.each do |pkg|

  r = package pkg do
    action(node['build_essential']['compiletime'] ? :nothing : :install)
  end
  r.run_action(:install) if node['build_essential']['compiletime']

end
