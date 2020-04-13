
n update() {
  sudo apt update && \
  sudo apt upgrade -y
}
update

function i3install() {
  read -p "Would you like to install i3 along with DE? " answer
  if [[ $answer == 'yes' ]]
  then
    sudo apt install i3
  elif [[ $answer == 'no' ]]
  then
    sudo apt install i3 -y && \
    sudo apt install xinit -y
  else
    echo "You should choose yes or no"
  fi
}
i3install


function i3autostart() {
  read -p "Would you like to start i3 automatically? " answer
  if [[ $answer == 'yes' ]]
  then
    echo "
    # autostart i3
    if [[ "$(tty)" == '/dev/tty1' ]]; then
      exec startx
    fi" | sudo tee -a /etc/profile
    elif [[ $answer == 'no' ]]
    then
      echo "Don't forget to run i3"
   fi
}
i3autostart

