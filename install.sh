for ext in `curl https://raw.githubusercontent.com/flynnwebdev/vscode-extensions/main/vsc-extensions.txt`; do
  code --force --install-extension "$ext"
done
