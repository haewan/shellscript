/etc/sysctl.conf

# By OSCI -----------------------------------------------------------
net.ipv4.neigh.default.unres_qlen = 100
net.ipv4.tcp_retries1 = 2
net.ipv4.tcp_retries2 = 3
# TIME_WAIT socket 다시 사용하기 (default : 0)
net.ipv4.tcp_tw_reuse = 1
net.ipv4.tcp_tw_recycle = 1
# tcp_fin_timeout 값 줄이기
#FIN-WAIT-2에서 소켓을 가지고 있는 시간 (default : 60)
net.ipv4.tcp_fin_timeout = 10
# 동작중이지 않은 소켓 연결 끊는 시간 줄이기 (default : 7200)
net.ipv4.tcp_keepalive_time = 1800
net.ipv4.tcp_keepalive_intvl = 30
net.ipv4.tcp_keepalive_probes = 2
# backlog connections queue값 올리기 (default : 2048)
net.ipv4.tcp_max_syn_backlog = 8192
# don't cache ssthresh from previous connection
net.ipv4.tcp_no_metrics_save = 1
# Increase system IP port limits to allow for more connections
net.ipv4.ip_local_port_range = 2000 65000
# number of packets to keep in backlog before the kernel starts dropping them
net.ipv4.tcp_max_syn_backlog = 3240000
# increase socket listen backlog
net.core.somaxconn = 32400
net.ipv4.tcp_max_tw_buckets = 1440000
# Increase TCP buffer sizes
net.core.rmem_default = 8388608
net.core.rmem_max = 25165824
net.core.wmem_max = 25165824
net.ipv4.tcp_rmem = 4096 87380 25165824
net.ipv4.tcp_wmem = 4096 65536 25165824
# CVE-2016-5696 : 100 -> 999999999
net.ipv4.tcp_challenge_ack_limit = 999999999
# L4 DSR
net.ipv4.conf.all.arp_ignore = 1
net.ipv4.conf.all.arp_announce = 2
net.ipv4.tcp_timestamps = 0
net.ipv4.tcp_sack = 0
net.ipv4.tcp_orphan_retries = 0
vm.swappiness = 0
vm.max_map_count=1440000

/etc/security/limit.conf
# By OSCI ----------------------------------------------------------- 

@was            soft        nofile                8192
@was            hard       nofile              65535
@was            soft        nproc                8192
@was            hard       nproc              65535
@was            -           memlock    125829120
@was            -           stack          unlimited
@was            -           core           unlimited


*            soft        nofile       8192
*            hard       nofile       65535
*            soft        nproc       4096
*            hard       nproc       65535
*            soft        core        10485760
