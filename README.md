## Load_Balancer
### 說明:可透過load balancer(front-end server)將 request分配至 back-end server
* load_banacnerC/default.conf 為load balancer 設定檔
* default.conf 為 back-end server 設定檔
* 透過 dockerfile 將back-end server 製作成docker image
* 此範例部屬在EC2，可以參考以下設定
  * 若無DNS 可直接在 /etc/hosts 給一暫定DNS練習
  * load balancer 的 Security Groups 設定如下:
  
  | IP version| Type   | Protocol| Port range| Source        |
  | :----:    | :----: | :----:  | :----:    | :----         | 
  | IPV4      | HTTPS  | TCP     | 443       | 0.0.0.0/0     |
  | IPV4      | SSH    | TCP     | 22        | 0.0.0.0/0     |
  | IPV4      | HTTP   | TCP     | 80        | 0.0.0.0/0     | \
  
  * back-end server 的 Security Groups 設定如下:
  
    
  | IP version| Type   | Protocol| Port range| Source         |
  | :----:    | :----: | :----:  | :----:    | :----          | 
  | IPV4      | HTTPS  | TCP     | 443       | 172.31.0.0/16  |
  | IPV4      | SSH    | TCP     | 22        | 0.0.0.0/0      |
  | IPV4      | HTTP   | TCP     | 80        | 172.31.0.0/16  | \

##更新資訊
* 2023/2/9 上傳
* 2023/2/10 新增README
