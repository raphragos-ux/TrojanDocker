# Base image na magaan at matatag
FROM alpine:latest

# I-install ang Trojan
RUN apk update && apk add --no-cache trojan

# Kopyahin ang iyong config file papuntang container
COPY config.json /etc/trojan/config.json

# Buksan ang port na gagamitin ng Trojan
EXPOSE 443

# Simulan ang Trojan kapag tumakbo ang container
CMD ["trojan", "-c", "/etc/trojan/config.json"]
