Changes

1) on initialization of the board initalize movelists for pieces
from that point only call (piece-genmoves) on a piece that has changed locations

2) move the genmoves function to inside the piece data structure

3) for min max only recursively call min/max on those pieces that could interact with each other


