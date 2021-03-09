# Setup mono for Ubuntu-20.04
sudo apt install gnupg ca-certificates
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb https://download.mono-project.com/repo/ubuntu stable-focal main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
sudo apt update
sudo apt install mono-devel

# Setup powershell
sudo apt-get update
sudo apt-get install -y wget apt-transport-https software-properties-common
wget -q https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo apt-get update
sudo add-apt-repository universe
sudo apt-get install -y powershell

# Install fdupes
sudo apt-get ins tall fdupes

# Install p7zip
sudo apt-get install p7zip

# Download USTC-TFC2016 dataset
cd 1_Pcap
git clone https://github.com/yungshenglu/USTC-TFC2016.git
p7zip -d 1_Pcap/USTC-TFC2016/*/*7z
mv 1_Pcap/USTC-TFC2016/Benign/SMB/SMB-1.pcap 1_Pcap/USTC-TFC2016/Benign/SMB.pcap
rm -r SMB
mv 1_Pcap/USTC-TFC2016/Benign/Weibo/Weibo-1.pcap 1_Pcap/USTC-TFC2016/Benign/Weibo.pcap
rm -r Weibo
cd ..
