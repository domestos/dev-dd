# Linux
docker-compose build
# Windows
docker-compose -f "dev_dd\docker-compose.yml" up -d --build

docker-compose -f "dev_dd\docker-compose.yml" run app sh -c "django-admin.py startproject app ."

docker-compose -f "dev_dd\docker-compose.yml"down