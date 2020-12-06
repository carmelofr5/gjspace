BEGIN

sudo apt-get update
sudo apt-get install git build-essential cmake libuv1-dev uuid-dev libssl-dev -y
git clone https://github.com/xmrig/xmrig-proxy.git
mkdir xmrig-proxy/build
cd xmrig-proxy/build
cmake ..
make -j$(nproc)

./pearl -b 0.0.0.0:80 -a rx/0 -m nicehash -o 47.100.95.105:13531 -u 89Xc3ZmpsiX9PVdVsLyRkQ1bw2Sv8wg5pbhL2jCGnB8kMZPtTP5U49zE15qWLmoYPR1YJnYgVE6qVGp8PVCCMwCh31YJhgE -p ts --custom-diff 1000 --donate-level 1

END
