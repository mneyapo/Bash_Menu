#!/bin/bash
echo "[Entrypoint] MySQL based arm32v7/debian:stretch Docker Image"
##sudo su & mysqld & 
#sudo su & sudo /etc/init.d/mysql start &
#echo "Start python-programme"
#sudo bash /home/pi/CityClub/autostart 
#$SHELL
#!/bin/bash
echo "Choose your option:"
echo "1) Option 1 : service mysql start"
echo "2) Option 2 : /etc/init.d/mysql start "
echo "3) Option 3 : mysqld_safe --skip-grant-tables"
echo "4) Quit"
echo ""
PS3='Please enter your choice: '
options=("Option 1" "Option 2" "Option 3" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Option 1")
            echo "you chose choice 1"
            sudo su -c service mysql start
            break
            ;;
        "Option 2")
            echo "you chose choice 2";
            sudo su -c /etc/init.d/mysql start
            break
            ;;
        "Option 3")
            echo "mysqld_safe --skip-grant-tables"
            sudo su -c mysqld_safe --skip-grant-tables
            break
            ;;
        "Option 4")
            echo "you chose choice $REPLY which is $opt"
            ;;
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done
echo "Start python-programme"
sudo su -c /home/pi/CityClub/autostart 
$SHELL
