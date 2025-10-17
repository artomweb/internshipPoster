#import "template.typ": *

#show: cardiff-poster.with(
  project-title: [Development of Origami-based Geometric Robots with Innovative Locomotion Mechanisms],
  author: "Archie Webster",
  author-email: "webstera2@cardiff.ac.uk",
  supervisor: "Dr Seyed Amir Tafrishi",
  logo: "Cardiff_University_logo.png",
)

= Introduction
This project developed a gearbox for a novel origami-based robot which can leverage the same contraction mechanism for shape change and locomotion. The robot consists of two parts; a circular flexible skeleton and an origami cap on either side. By pulling in the corners of the skeleton, a shape change can occur. By contracting these corners in sequence, the robot is able to achieve locomotion. The transformation and locomotion is achieved with a single motor, creating an under-actuated design.

#figure(
  image("images/noOrigamiOverhead.png"),
  caption: [The  robot without the origami cap (1: unactuated; 2-5: actuation).],
) <Overhead>

= Project history
Prior to this project, the skeleton was developed with compliant joints and the origami cap was designed and manufactured. Different gearbox designs had been developed to contract the skeleton, however, the gearboxes that could contract the corners in sequence could not support multiple rotations.

#figure(
  image("images/compliant.png"),
  caption: [The geometry of the compliant joints which form the skeleton.],
) <Overhead>

= The gearbox

@Exploded shows the gearbox developed in this project. A worm gear driven by the motor is attached to a vertical shaft which rotates a mutilated gear. This gear is surrounded by 4 spools which it intermittently rotates. When the spools rotate they pull in wires connected to the corners of the skeleton in sequence, inducing locomotion.

#figure(
  image("images/OrigamiRobotExploded.png"),
  caption: [An exploded view of the gearbox design.],
) <Exploded>

= Gear ratios
The worm gear has 43 teeth, producing a $43:1$ reduction. For every 43 rotations of the motor, the central shaft rotates once:

$ theta_"driver" = frac(theta_"motor", 43) $

The mutilated gears consist of an inner gear (5 teeth) and an outer gear (10 teeth). The ratio is therefore $10:5 = 2:1$. For every full rotation of the driver, the driven spool rotates $180degree$ (half a turn):
$ theta_"spool" = frac(theta_"driver", 2) $

Combining these two stages gives:
$ theta_"spool" = frac(theta_"motor", 43 times 2) = frac(theta_"motor", 86) $

Given the spool radius $r = 8 "mm"$, the linear displacement of the wire for a motor rotation of $theta_"motor"$ radians is:
$ L = r thin theta_"spool" = r (theta_"motor" dot frac(T_"driver", T_"driven" dot T_"worm")) $

For the half-rotation ($180degree$ or $pi$ radians) of the driven gear (8mm radius):

$ L = 8 "mm" times pi = 25.1 "mm" $

This means each engagement of the mutilated gear produces approximately 25 mm of wire travel.

Developing an equation for the wire retraction length based on the spool configuration enabled the design of the appropriate retraction length for the compliant skeleton.


= Rolling

@Rolling shows four frames from a video of the robot rolling. The left side is pulled in which causes the center of mass to shift towards the right, causing it to roll by $90degree$. For the paper, an IMU was attached to the gearbox to plot motor rotation against the rotation angle of the robot.

#figure(
  image("images/withOrigami4FrameAnnotatedWithBG (Large).png"),
  caption: [A rolling sequence towards the right with the origami cap.],
) <Rolling>

= Future work

The next goal of this project is to allow the spools to be driven out of order and rotated to an angle where they are held in place while the driving gear selects another spool. This can allow more intelligent locomotion where a corner can be contracted before going over an obstacle.
