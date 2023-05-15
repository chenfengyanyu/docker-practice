package main 
import ( 
 "net/http" 
 "github.com/gin-gonic/gin" 
) 
func main() { 
 // 1.创建路由
 r := gin.Default() 
 // 2.绑定路由规则
 // gin.Context，封装了 request 和 response 
 r.GET("/", func(c *gin.Context) { 
 c.String(http.StatusOK, "hello world!") 
 }) 
 // 3.监听端口，默认为 8080 端吕
 // Run("里面不指定端口号，默认为 8080") 
 r.Run(":8000") 
}