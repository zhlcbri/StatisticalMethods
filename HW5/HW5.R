# R1
flipper = function(pheads) {
  if (runif(1, min = 0, max = 1) < pheads) {
    return(1)
  } 
  else {
    return(0)
  }
}

pHeads = 0.2
flipper(0.2)


# R2
countTilTwoHeads = function() {
  lastFlip = flipper(0.2)
  currentFlip = flipper(0.2)
  flipCount = 2
  
  while (lastFlip == 0 | currentFlip == 0) {
    # print("flipping")
    lastFlip = currentFlip
    currentFlip = flipper(0.2)
    flipCount = flipCount + 1
  }
  
  return(flipCount)
}

countTilTwoHeads()


# R3
mean(replicate(5000, countTilTwoHeads()))

