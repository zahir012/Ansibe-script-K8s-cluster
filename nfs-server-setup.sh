apt install nfs-kernel-server

mkdir --mode=777 /opt/k8sdata

vim /etc/exports

/k8sdata  *(rw,sync,no_subtree_check)



exportfs -f
showmount -e localhost

showmount -e 192.168.169.97

helm repo add nfs https://kubernetes-sigs.github.io/nfs-subdir-external-provisioner

helm install nfs \
nfs-subdir-external-provisioner/nfs-subdir-external-provisioner \
--set nfs.server=192.168.169.97 \
--set nfs.path=/k8sdata \
--set storageClass.onDelete=true -n storagefs



helm install nfs \
nfs-subdir-external-provisioner/nfs-subdir-external-provisioner \
--set nfs.server=192.168.169.97 \
--set nfs.path=/k8sdata \
--set storageClass.onDelete=true


helm repo add nfs-subdir-external-provisioner https://kubernetes-sigs.github.io/nfs-subdir-external-provisioner