## Description

This middle size repository for development on golang

### Docker-compose example
```yaml
  app:
    image: ghcr.io/pavel-one/go:latest
    command: ["air"]
    user: "{{USER}}:{{GROUP}}"
    environment:
      - TZ=Europe/Moscow
    volumes:
      - .:/usr/src/app
      - ~/go/pkg:/go/pkg
      - /etc/passwd:/etc/passwd
      - /etc/shadow:/etc/shadow
```