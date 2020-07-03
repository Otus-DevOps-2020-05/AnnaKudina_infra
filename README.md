# AnnaKudina_infra
AnnaKudina Infra repository

how to connect to someinternalhost in a single command - use jumpping
ssh -J anmikha2@130.193.49.31 anmikha2@10.130.0.28

ssh someinternalhost from the local console of the working device, to connect using the someinternalhost alias - add it to~/. ssh/config
Host bastion HostName 130.193.49.31 User anmikha2 IdentityFile ~/.ssh/anmikha2
Host someinternalhost HostName 10.130.0.28 ProxyJump anmikha2@130.193.49.31 User anmikha2

bastion_IP = 130.193.49.31 
someinternalhost_IP = 10.130.0.28
