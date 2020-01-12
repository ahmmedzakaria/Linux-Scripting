echo "Getting new ui"
echo $SERVER


echo "Creating Partitions ..."
device=sda
part1=sda1
part2=sda2
part3=sda3

parted -s /dev/$sda p
parted -s /dev/$sda mklabel gpt
parted -s /dev/$sda mkpart ESP fat32 1MiB 513MiB
parted -s /dev/$sda set 1 boot on
parted -s /dev/$sda mkpart primary ext4 513MiB 25GiB
parted -s /dev/$sda mkpart primary linux-swap 25GiB 35GiB
parted -s /dev/$sda p
mkfs.fat -F32 /dev/$part1
mkfs.ext4 -F /dev/$part2
mkfs.ext4 -F /dev/$part3
#mkswap /dev/$part3
#swapon /dev/$part3

mount /dev/$part2 /mnt

mkdir /mnt/home
mount /dev/$part3 /mnt/home

mkdir -p /mnt/boot
mount /dev/$part1 /mnt/boot
lsblk
echo "Partiontion Completed"
