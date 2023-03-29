for ext in `cat vsc-extensions.txt`; do
  code --force --install-extension "$ext"
done
