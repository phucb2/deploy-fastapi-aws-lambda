# aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 220909644281.dkr.ecr.us-east-1.amazonaws.com
echo "Building image"
docker tag myapi:latest 220909644281.dkr.ecr.us-east-1.amazonaws.com/myrepo:latest
echo "Pushing image to ECR"
docker push 220909644281.dkr.ecr.us-east-1.amazonaws.com/myrepo:latest
# curl -XPOST "http://localhost:9000/2015-03-31/functions/function/invocations" -d '{"resource": "/", "path": "/items/1", "httpMethod": "GET", "requestContext": {}, "multiValueQueryStringParameters": null}'