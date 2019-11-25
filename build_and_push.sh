docker build -t alb .
# aws ecr create-repository --repository-name apps/redis-exporter
docker tag alb 304598332814.dkr.ecr.us-east-1.amazonaws.com/apps/redis-exporter:alb
$(aws ecr get-login --no-include-email --region us-east-1)
docker push 304598332814.dkr.ecr.us-east-1.amazonaws.com/apps/redis-exporter:alb
