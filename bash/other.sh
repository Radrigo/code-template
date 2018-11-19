#Notify send function for root user which not use X display! 
function send_massege {
    id_user=`ls /run/user | awk '{print $1}' | tr -d '\n'` 

    if [ -z $id_user ]; then
        return
    fi

    name_user=`id -n -u $id_user | tr -d '\n'`

    header_msg='INCOGNITO IPTABLES SERVICE:' 
    body_msg='Created new /etc/incognito_iptables.rc'

    sudo -u $name_user DISPLAY=:0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/$id_user/bus notify-send -u normal "$header_msg" "$body_msg"
}
