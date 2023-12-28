branch=main
git clone -b $branch https://github.com/TeamUltroid/Ultroid /root/TeamUltroid
cp ultroid/.env /root/TeamUltroid/.env
cd /root/TeamUltroid
docker build . --rm --force-rm --compress --pull --file Dockerfile -t ultroid
pip3 uninstall telegraph && pip3 install telegraph
docker run --privileged --env-file .env --rm -i ultroid 
