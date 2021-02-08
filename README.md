# AnnaKudina_infra
AnnaKudina Infra repository

how to connect to someinternalhost in a single command - use jumpping
ssh -J anna2@84.201.175.134 anna2@10.130.0.13

ssh someinternalhost from the local console of the working device, to connect using the someinternalhost alias - add it to~/. ssh/config
Host bastion HostName 84.201.175.134 User anna IdentityFile ~/.ssh/anna
Host someinternalhost HostName 10.130.0.13 ProxyJump anna@84.201.175.134 User anna

bastion_IP = 84.201.175.134 
someinternalhost_IP = 10.130.0.13
