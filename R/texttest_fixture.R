rm(list=ls())

source('gilded_rose.R')

writeLines('TextTest')

items <- list(
  item('Vest', 10, 20),
  item('Aged Brie', 2, 0),
  item('Juice', 5, 7),
  item('Diamond', 0, 80),
  item('Diamond', -1, 80),
  item('Backstage passes', 15, 20),
  item('Backstage passes', 10, 49),
  item('Backstage passes', 5, 49),
  # This Bio item does not work properly yet
  item('Bio Cake', 3, 6)
)

days <- 2
for (day in 0:days) {
  writeLines(paste('-------- day ', day, ' --------', sep=''))
  writeLines('name, sellIn, quality')
  lapply(items, 
    function(item) {
      writeLines(as.character(item))
    }
  )
  writeLines('')
  items <- update_quality(items)
}

rm('day', 'days', 'items')
