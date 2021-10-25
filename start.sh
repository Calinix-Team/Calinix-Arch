rootuser () {
  if [[ "$EUID" = 0 ]]; then
    continue
  else
    echo "Please Run As Root"
    sleep 2
    exit
  fi
}
rootuser
rm -rf ../isobuild/*
cp -r ./* ../isobuild/
cd ../isobuild
sudo ./steps.sh
