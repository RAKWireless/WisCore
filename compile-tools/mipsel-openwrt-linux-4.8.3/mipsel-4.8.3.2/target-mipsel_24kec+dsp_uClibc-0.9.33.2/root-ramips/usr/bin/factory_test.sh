#! /bin/sh

MODE=${1}
if [ "${MODE}" = "reset" ]; then
	MODE=" "
	if [ -e "/etc/wiskeyinfo" ]; then
		rm -rf /etc/wiskeyinfo
	fi
	if [ -e "/etc/wiskey/alexa.conf" ]; then
		rm -rf /etc/wiskey/alexa.conf
	fi
else
	MODE="quit"
fi
LEDPORT=44
LEDON=0
LEDOFF=1
LEDOPEN="0"
if [ ! -d "/sys/class/gpio/gpio44" ]; then
	LEDOPEN="1"
	echo "${LEDPORT}" >/sys/class/gpio/export
fi
if [ -e "/sys/class/gpio/gpio44/direction" ]; then
	echo "out" > /sys/class/gpio/gpio44/direction
fi
if [ -e "/sys/class/gpio/gpio44/value" ]; then
	echo "${LEDON}" > /sys/class/gpio/gpio44/value
fi

nums=`ps | grep alexa_run_demo | grep -v grep | wc -l`

if [[ ${nums} == 0 ]]; then
	nums=0
else
	killall alexa_run_demo
fi


while [ 1 ]
do
        if [[ -f /etc/wiskeyinfo ]]; then
                nums=`grep "serial_num #=" /etc/wiskeyinfo | grep -v grep | wc -l`
        else
                nums=0
        fi
        if [[ ${nums} == 0 ]]; then
                /usr/bin/product_test /etc/wiskeyinfo /etc/wiskey/alexa.conf ${MODE}
                if [[ $? == 1 ]]; then
			exit 1
                fi
        else
                echo "OK"
                break;
    fi
done


if [ -e "/sys/class/gpio/gpio44/value" ]; then
	echo "${LEDOFF}" > /sys/class/gpio/gpio44/value
fi
if [ "${LEDOPEN}" = "1" ]; then
	if [ -d "/sys/class/gpio/gpio44" ]; then
		echo "${LEDPORT}" >/sys/class/gpio/unexport
	fi
fi

return 0
