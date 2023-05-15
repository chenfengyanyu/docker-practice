from nameko.rpc import rpc 
class GreetingService: 
 name = "micro_service" 
 @rpc 
 def hello(self, name): 
 return "Hello, {}!".format(name)