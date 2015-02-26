# docker_dir_share
## Docker Data-only container pattern

```bash:
$ docker run -i -t -d -P --name share_data -v /usr/local/nginx/logs/ ubuntu:14.04 /bin/bash

$ docker run -d --volumes-from share_data -p 80 [nginx_image]

$ docker run --volumes-from share_data [fluent_image]
```

Multiple directory share
`-v /usr/local/nginx/logs/ -v /tmp`

## Sample td-agent.conf
```
<source>
  type tail
  format nginx
  path /usr/local/nginx/logs/access.log
  pos_file /tmp/access_log.pos
  tag httpd.log.access
</source>

<match httpd.log.**>
  type file
  path /var/log/td-agent/httpd/logs/
</match>
```
