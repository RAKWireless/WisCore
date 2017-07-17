#!/bin/ash

WIRELESS_CONF=/etc/config/wireless 
wisaddr=`cat /sys/class/net/ra0/address | awk -F ':' '{print $4 $5 $6}'`

uci set $WIRELESS_CONF.radio0.type="ralink"
uci set $WIRELESS_CONF.radio0.variant="mt7628"
uci set $WIRELESS_CONF.radio0.country="TW"
uci set $WIRELESS_CONF.radio0.hwmode="11g"
uci set $WIRELESS_CONF.radio0.htmode="HT40"
uci set $WIRELESS_CONF.radio0.channel="auto"
uci set $WIRELESS_CONF.radio0.disabled='0'
uci set $WIRELESS_CONF.radio0.linkit_mode="ap"

uci set $WIRELESS_CONF.ap.device="radio0"
uci set $WIRELESS_CONF.ap.mode="ap"
uci set $WIRELESS_CONF.ap.network="lan"
uci set $WIRELESS_CONF.ap.ifname="ra0"
uci set $WIRELESS_CONF.ap.encryption="none"
uci set $WIRELESS_CONF.ap.ssid="WisCore_$wisaddr"
uci set $WIRELESS_CONF.ap.seq='1'

uci set $WIRELESS_CONF.sta.device="radio0"
uci set $WIRELESS_CONF.sta.mode="sta"
uci set $WIRELESS_CONF.sta.network="wan0"
uci set $WIRELESS_CONF.sta.ifname="apcli0"
uci set $WIRELESS_CONF.sta.led="mediatek:orange:wifi"

uci set $WIRELESS_CONF.sta.ssid="UpLinkAp"
uci set $WIRELESS_CONF.sta.key="SecureKey"
uci set $WIRELESS_CONF.sta.encryption="psk"

uci commit

rm /etc/wiskey/nabtonat.conf

sync

reboot
