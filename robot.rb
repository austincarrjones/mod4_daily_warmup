# In this challenge, you are working with a computer simulation of a mobile robot. The robot moves on a plane, and its movements are described by a command string consisting of one or more of the following letters:

# G instructs the robot to move forward one step
# L instructs the robot to turn left
# R instructs the robot to turn right
# The robot CANNOT go backwards - poor robot. After running all of the movement commands, you want to know if the robot returns to its original starting location.

#     #Ruby
#     return_to_origin?("GRGRGRG")
#     => true

#     JavaScript
#     returnToOrigin("GRGL")
#     => false

# Will there be more than just G,L,R in the command string?
# is there a limit to the length of the command?

# Garrett suggesting to use an array to map out the plane. Would we need to make a grid like battleship?

# forward, right, forward, right, forward, right, forward

# tracker for left vs right increments and tracker for up vs down increments

# start at "X0Y0"

# Garrett talking about making a class - this is a real world representation of things.

# what if you get a RR

# GGG = false
# R = True
# L = True
# RRRRRRRR = True

# .each on the string

# start out on x0, y0
G = y + 1
R + G = x + 1
R + R + G = y - 1
R + R + R + G = x - 1

can you slice the string into 

method to add 1 to y