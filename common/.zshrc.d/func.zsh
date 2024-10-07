function pyrightconfig () {
  fullpath=$(poetry env info --path)
  if [ $? -ne 0 ]; then return; fi;

  cat << EOF > pyrightconfig.json
{
  "venvPath": "$(dirname $fullpath)",
  "venv": "$(basename $fullpath)"
}
EOF
}

