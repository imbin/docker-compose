# docker-compose install php(5.4,5.6,7.1,7.2),nginx,redis,mysql

# Include
```
Nginx 1.13.0-alpine
PHP （5.4-fpm, 5.6-fpm.alpine, 7.1-fpm-alpine, 7-fpm-alpine）
Redis 3.2
MySQL 5.7
```

# Require

```
Docker for (Mac/Windows 10)
```

# Build

```
sh build.sh
```

# First Startup

```
docker-compose up -d
```

# Second Startup

```
docker-compose start/restart/stop
```

# Status

```
docker-compose ps
```

# Uninstall

```
docker-compose down
```

# Reinstall

```
docker-compose down
sh build.sh
docker-compose up -d
```
