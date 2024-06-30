# neconoa.f5.si

![](https://img.shields.io/uptimerobot/status/m787979705-dedee70ce3309167bafdd585?label=Port%20Status)
![mc.yohane.su](https://img.shields.io/endpoint?url=https%3A%2F%2Fminecraft-server-status-badge.vercel.app%2Fapi%2Fserver%2Fmc.yohane.su%3Fport%3D25565)

my minecraft server

## setup & start

Deploy Machine
```sh
### deps: docker, docker-compose
### deps(backup service): systemd, rclone
$ ./setup.sh
$ docker-compose up -d
```

:bulb: It is highly recommended to use [compose-cd](https://github.com/sksat/compose-cd) for continuous deployment.

Expose Machine
```sh
### deps: systemd, cloudflared
$ cp ./minecraft-expose.service ~/.config/systemd/user/
$ systemctl --user enable --now minecraft-expose
```

## maintenance

```sh
$ ./cmd.sh say hello
```

or use [mcrcon](https://github.com/Tiiffi/mcrcon)

## how to join

Edit [whitelist.json](https://github.com/idxma/neconoa.f5.si/blob/main/data/whitelist.json) and send a pull request

## links

- container image: [papermc-docker](https://github.com/sksat/papermc-docker)
- deploy automation script: [compose-cd](https://github.com/sksat/compose-cd)
- whitelist.json check Action: [minecraft-whitelist-validator](https://github.com/sksat/minecraft-whitelist-validator)
