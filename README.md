# Install php(7.2),nginx,redis,mysql based on docker-compose

# Include
```
Nginx 1.13.0-alpine
PHP （7.2-fpm-alpine）
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
