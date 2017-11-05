library(networkD3)
# 加载数据
data(MisLinks)
data(MisNodes)

# 画图
forceNetwork(Links = MisLinks, Nodes = MisNodes,
             Source = "source", Target = "target",
             Value = "value", NodeID = "name",
             Group = "group", opacity = 0.8)


