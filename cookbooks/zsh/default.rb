package 'zsh'

directory "#{ENV['HOME']}/.zsh/" do
  owner node[:user]
  group node[:user]
end

directory "#{ENV['HOME']}/.zsh/functions" do
  owner node[:user]
  group node[:user]
end

execute "touch #{ENV['HOME']}/.zsh/00-machine.zsh" do
  not_if "test -e #{ENV['HOME']}/.zsh/00-machine.zsh"
end

ln '.zsh/ext-peco.zsh'
ln '.zsh/ext-kubernetes.zsh'
ln '.zshrc'
