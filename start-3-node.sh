echo 'starting first node'
cockroach start --insecure --store=node1 --listen-addr=localhost:26257 --http-addr=localhost:8095 --join=localhost:26257,localhost:26258,localhost:26259 --background
echo 'sleeping for 10s'
sleep 10s
echo 'starting second node'
cockroach start --insecure --store=node2 --listen-addr=localhost:26258 --http-addr=localhost:8096 --join=localhost:26257,localhost:26258,localhost:26259 --background
echo 'sleeping for 10s'
sleep 10s
echo 'starting third node'
cockroach start --insecure --store=node3 --listen-addr=localhost:26259 --http-addr=localhost:8097 --join=localhost:26257,localhost:26258,localhost:26259 --background