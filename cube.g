# We consider the group of transformations of Rubik's cube. 
# We number the faces of this cube as follows:
#
#                     +--------------+
#                     |              |
#                     |  1    2    3 |
#                     |              |
#                     |  4  top    5 |
#                     |              |
#                     |  6    7    8 |
#                     |              |
#      +--------------+--------------+--------------+--------------+
#      |              |              |              |              |
#      |  9   10   11 | 17   18   19 | 25   26   27 | 33   34   35 |
#      |              |              |              |              |
#      | 12  left  13 | 20 front  21 | 28 right  29 | 36  rear  37 |
#      |              |              |              |              |
#      | 14   15   16 | 22   23   24 | 30   31   32 | 38   39   40 |
#      |              |              |              |              |
#      +--------------+--------------+--------------+--------------+
#                     |              |
#                     | 41   42   43 |
#                     |              |
#                     | 44 bottom 45 |
#                     |              |
#                     | 46   47   48 |
#                     |              |
#                     +--------------+
# 
# Then the group is generated by the following generators, 
# corresponding to the rotations of six faces of the cube
# clockwise by 90 degrees.

cube := Group(
( 1, 3, 8, 6)( 2, 5, 7, 4)( 9,33,25,17)(10,34,26,18)(11,35,27,19),
( 9,11,16,14)(10,13,15,12)( 1,17,41,40)( 4,20,44,37)( 6,22,46,35),
(17,19,24,22)(18,21,23,20)( 6,25,43,16)( 7,28,42,13)( 8,30,41,11),
(25,27,32,30)(26,29,31,28)( 3,38,43,19)( 5,36,45,21)( 8,33,48,24),
(33,35,40,38)(34,37,39,36)( 3, 9,46,32)( 2,12,47,29)( 1,14,48,27),
(41,43,48,46)(42,45,47,44)(14,22,30,38)(15,23,31,39)(16,24,32,40) );

# Now calculate the number of possible states of Rubik's cube:
Size( cube );
