### Servlet
> Servlet是一个运行在Web服务器中的Java小程序。
接收和响应来自Web客户端的HTTP请求。
通过web.xml配置servlet mapping来将路由和servlet关联起来。

servlet默认参数配置
方式一：web.xml
```
    <servlet>
        <servlet-name>helloServlet</servlet-name>
        <servlet-class>com.wrox.HelloServlet</servlet-class>
        <init-param>
            <param-name>database</param-name>
            <param-value>Mongodb</param-value>
        </init-param>
        <init-param>
            <param-name>server</param-name>
            <param-value>10.2.2.2</param-value>
        </init-param>
    </servlet>
```
方式二：servlet注解(简洁集中，但是多个实例、特定执行顺序时无法满足)
```
	@WebServlet(
        name = "contextParameterServlet",
        urlPatterns = {"/contextParameters"},
        initParams = {
        	@WebInitParams(name = "database", value = "Mongodb"),
        	@WebInitParams(name = "server", value = "10.10.1.1")
    	}
	)
```

### doGet、doPost


### JSP
> servlet处理页面展示还是太弱，所以需要引入jsp，负责view的展示。
如何把servlet和jsp对应起来？

jsp标签格式
<%@ page ... %>

指令、声名、脚本、表达式