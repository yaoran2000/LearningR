library(plotly)
p <- ggplot(data=lattice::singer,aes(x=height,fill=voice.part))+
  geom_density()+
  facet_grid(voice.part~.)
(gg <- ggplotly(p))