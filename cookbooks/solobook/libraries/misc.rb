def wuser_dir(str = '')
  Dir.home + '/' + str
end

def deb_list_install(list)
  list.each do |pkg|
    Chef::Log.fatal(pkg)
    apt_package pkg do
      action :install
    end
  end
end

def pacman_list_install(list)
  list.each do |pacman|
    Chef::Log.fatal(pacman)
    pacman_package pacman do
      action :install
    end
  end
end
