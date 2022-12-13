Do not stow this directory. 
keybindings.json and settings.json will live under 
file path `/Users/$user/Library/Application Support/Code/User` 
we can create a file structure for this since `$user` will be 
different in every computer. One potential workaround would be 
symlink in every computer those files to the files in our 
.dotfiles but we dont' currently have a way of adding those 
files using the traditional stow command `stow --apend -vt target dir`. 
Or there might already be a workaround for this problem. 
