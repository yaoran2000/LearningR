chordEx1 = list(
  title = list(
    text = '测试数据',
    subtext = 'From d3.js',
    x = 'right',
    y = 'bottom'
  ),
  tooltip = list(
    trigger = 'item',
    formatter = JS('function(params) {
                   if (params.indicator2) { // is edge
                   return params.value.weight;
                   } else {// is node
                   return params.name
                   }
                   }')
  ),
  toolbox = list(
    show = TRUE,
    feature = list(
      restore = list(show = TRUE),
      magicType = list(show = TRUE, type = c('force', 'chord')),
      saveAsImage = list(show = TRUE)
    )
  ),
  legend = list(
    x = 'left',
    data = c('group1', 'group2', 'group3', 'group4')
  ),
  series = list(
    list(
      type = 'chord',
      sort = 'ascending',
      sortSub = 'descending',
      showScale = TRUE,
      showScaleText = TRUE,
      data = list(
        list(name = 'group1'),
        list(name = 'group2'),
        list(name = 'group3'),
        list(name = 'group4')
      ),
      itemStyle = list(
        normal = list(
          label = list(show = FALSE)
        )
      ),
      matrix = rbind(
        c(11975,  5871, 8916, 2868),
        c( 1951, 10048, 2060, 6171),
        c( 8010, 16145, 8090, 8045),
        c( 1013,   990,  940, 6907)
      )
    )
  )
    )

echart(chordEx1)