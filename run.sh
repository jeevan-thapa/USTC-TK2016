pwsh 1_Pcap2Session.ps1 -s
pwsh 2_ProcessSession.ps1 -a -s
python 3_Session2Png.py
python 4_Png2Mnist.py