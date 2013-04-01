read -p "What do you want to change to? (local/remote)?" choice
case "$choice" in 
  local|l|L ) cmdText='s/71.171.93.14 sv1.oweb.co/192.168.1.172 sv1.oweb.co/';;
  remote|r|R ) cmdText='s/192.168.1.172 sv1.oweb.co/71.171.93.14 sv1.oweb.co/';;
  * ) echo "invalid";;
esac

sudo sed "$cmdText" /private/etc/hosts > /tmp/hosts_tmp
sudo cp /tmp/hosts_tmp /private/etc/hosts

cat /private/etc/hosts

exit 0