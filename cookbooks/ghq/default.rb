github_binary 'ghq' do
  repository 'motemen/ghq'
  version 'v0.9.0'
  archive "ghq_#{node[:os]}_amd64.zip"
  binary_path "ghq"
end
