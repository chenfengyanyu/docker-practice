from nameko.standalone.rpc import ClusterRpcProxy 
CONFIG={'AMQP_URI':"amqp://username}:{password}@{host}"}

 with ClusterRpcProxy(CONFIG) as rpc: 
//使用 remote_data 即可
 remote_data = rpc.micro_service.hello(name=”World”)