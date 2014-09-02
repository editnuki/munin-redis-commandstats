#!/bin/bash


if [ -f /usr/share/munin/plugins/redis_info_commandstats_call ];
  echo "exist redis_info_commandstats_call plugin"
else
  cp plugins/redis_info_commandstats_call /usr/share/munin/plugins
  chown /usr/share/munin/plugins/redis_info_commandstats_call
  chmod a+x /usr/share/munin/plugins/redis_info_commandstats_call
  ln -s /usr/share/munin/plugins/redis_info_commandstats_call /etc/munin/plugins/
fi


if [ -f /usr/share/munin/plugins/redis_info_commandstats_usec_per_call ];
  echo "exist redis_info_commandstats_usec_per_call "
else
  cp plugins/redis_info_commandstats_usec_per_call /usr/share/munin/plugins
  chown root. /usr/share/munin/plugins/redis_info_commandstats_usec_per_call
  chmod a+x /usr/share/munin/plugins/redis_info_commandstats_usec_per_call
  ln -s /usr/share/munin/plugins/redis_info_commandstats_usec_per_call /etc/munin/plugins/
fi

/etc/init.d/munin-node restart

exit 0
