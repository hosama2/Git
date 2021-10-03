sudo apt update && sudo apt install firefox xvfb wm2 scrot tigervnc-standalone-server qt5-default libgdk* -y
sudo apt install /workspace/mint/megacmd-xUbuntu_20.04_amd64.deb -y
sudo apt install /workspace/mint/peazip_8.2.0.LINUX.GTK2-1_amd64.deb -y
docker stop myst
docker rm myst
docker run --cap-add NET_ADMIN -d -p 4449:4449 --name myst -v /workspace/mint/mysterium-node:/var/lib/mysterium-node mysteriumnetwork/myst:latest service --agreed-terms-and-conditions
vncserver
cd noVNC
./utils/novnc_proxy --vnc localhost:5901