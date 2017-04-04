# create the overlay network
docker network create -d overlay simplechat

# create the redis service 
docker service create --name=redis --network simplechat -p 6379:6379 --constraint "node.role == worker" redis:3.2

# create the simple-chat-api service
docker service create --name=simple-chat-api --network simplechat -e SIMPLE_CHAT_REDIS_ENDPOINT="redis:6379" -p 82:82 --constraint "node.role == worker" jcorioland/simple-chat-api:linux-1.0

# create the simple-chat-client service
docker service create --name=simple-chat-client --endpoint-mode dnsrr --network simplechat --publish mode=host,target=5000 --constraint "node.role == manager" jcorioland/simple-chat-client:latest

