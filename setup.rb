home = ENV['HOME']
working_dir = Dir.pwd

# backup home-level dotfiles and link to dropbox ones
%w(.zshrc .bashrc .oh-my-zsh .oh-my-zsh-custom).each do |dotfile|
  unless File.symlink?(home + "/#{dotfile}")
    system "mv -v #{home}/#{dotfile} #{home}/#{dotfile}-bak" if File.exists?(home + "/#{dotfile}")
    system "ln -s -v #{working_dir}/#{dotfile} #{home}/#{dotfile}"
  else
    puts "Skipping #{dotfile}, already a symlink..."
  end
end

# application .config/... directory config stuffs
%w(terminator).each do |app|
  config_dir = "#{home}/.config/#{app}"
  unless File.symlink?(config_dir)
    system "mv -v #{config_dir} #{config_dir}-bak" if File.exists?(config_dir)
    system "ln -s -v #{working_dir}/#{app} #{config_dir}"
  else
    puts "Skipping #{app} config directory, already a symlink..."
  end
end
