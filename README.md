# docker-rsync-server
Server Usage: ``` docker run -itd -p 50000:873 -v /data1:/data1 q1angch0u/rsync ```

Client Usage: ``` RSYNC_PASSWORD=123456 rsync --progress [path_to_transfer] -avz --port=50000 rsync://simulation@[server_ip]/data/[path_to_save] ```
