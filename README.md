# Moved to GitLab

https://gitlab.com/jbwyatt4/chef_dotfile_manager_tutorial

# Dotfile Manager with Chef

Ruby MUST be installed directly on the user system for root/system package installation. Once installed user can install the chef-dk package directly. RVM is assumed to be installed to the user's directory. Since RVM requires a login shell, I only setup .bash_profile to source my custom script. (.bashrc only handles non login shells.)

## Install Ruby (system wide)
For Debian/Chef systems install from here

https://downloads.chef.io/chefdk#ubuntu

For Arch simply install the ruby package directly
Make sure to disable doc generation (in both user and root)

You can use RVM installed to root as well, but I have not tested it.

## Install Chef system wide
Install Ruby through the package manager, then:
sudo gem install chef-dk

# Usage
First you should install packages as root.

To install packages (as root) run:
./install.sh
This will run the cookbooks/solobook/recipes/root_only.rb

To actually configure your bash file, hostfile, and atom (as a user) run:
./run.sh

# Notes
Only tested on Ubuntu, Debian 10 Testing, and Manjaro. All with user able to sudo into root.

To reinstall system packages or atom packages, delete the chefflag-packages in root and user folders, respectively.

If you have issues installing, see Gemfile.lock for the version number I tested with.

# License
Apache-2.0
Copyright 2018 John B. Wyatt IV

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
