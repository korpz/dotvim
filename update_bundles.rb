#!/usr/bin/env ruby

git_bundles = [ 
  "git://github.com/korpz/PHPDocumenter-vim.git",
  "git://github.com/korpz/Autoclose-vim.git",
  "git://github.com/korpz/Office-functions.git",
  "git://github.com/msanders/snipmate.vim.git",
  "git://github.com/scrooloose/nerdtree.git",
  "git://github.com/tpope/vim-fugitive.git",
  "git://github.com/tpope/vim-git.git",
  "git://github.com/tpope/vim-surround.git",
  "git://github.com/tsaleh/vim-supertab.git",
  "git://github.com/xenoterracide/css.vim.git",
  "git://github.com/vim-scripts/The-NERD-Commenter.git",
  "git://github.com/vimcn/NERD_tree.vim.git",
  "git://github.com/vim-scripts/taglist.vim.git",
  "git://github.com/mattn/zencoding-vim.git",
  "git://github.com/tpope/vim-surround.git",
]

vim_org_scripts = [
  ["IndexedSearch", "7062",  "plugin"],
  ["gist",          "12732", "plugin"],
  ["jquery",        "12107", "syntax"],
]

require 'fileutils'
require 'open-uri'

bundles_dir = File.join(File.dirname(__FILE__), "bundle")

FileUtils.cd(bundles_dir)

puts "Trashing everything (lookout!)"
Dir["*"].each {|d| FileUtils.rm_rf d }

git_bundles.each do |url|
  dir = url.split('/').last.sub(/\.git$/, '')
  puts "  Unpacking #{url} into #{dir}"
  `git clone #{url} #{dir}`
  FileUtils.rm_rf(File.join(dir, ".git"))
end

vim_org_scripts.each do |name, script_id, script_type|
  puts "  Downloading #{name}"
  local_file = File.join(name, script_type, "#{name}.vim")
  FileUtils.mkdir_p(File.dirname(local_file))
  File.open(local_file, "w") do |file|
    file << open("http://www.vim.org/scripts/download_script.php?src_id=#{script_id}").read
  end
end
