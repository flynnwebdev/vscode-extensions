# Read the remote vsc-extensions.txt and install them in *nix environment (MacOS or WSL/Ubuntu)
for ext in `curl https://raw.githubusercontent.com/flynnwebdev/vscode-extensions/main/vsc-extensions.txt`; do
  code --force --install-extension "$ext"
done

# If running in WSL, install additional Windows-only extensions
if type "cmd.exe" | grep WINDOWS > /dev/null; then
  cmd.exe /C code --force --install-extension "ms-vscode-remote.remote-wsl"
  cmd.exe /C code --force --install-extension "ms-vscode-remote.remote-wsl"
fi

echo
echo "Please restart VS Code if it is already running."
