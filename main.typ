#import "template.typ": *

#show: cardiff-poster.with(
  project-title: [Development of Origami-based Geometric Robots with Innovative Locomotion Mechanisms],
  author: "Archie Webster",
  author-email: "webstera2@cardiff.ac.uk",
  supervisor: "Dr Seyed Amir Tafrishi",
  logo: "Cardiff_University_logo.png",
)

= Introduction
This project developed a gearbox for a novel origami based robot which can leverage the same contraction mechanism for shape change and locomotion. The robot consists of two parts; a circular flexible skeleton and an origami cap on either side. By pulling in the corners of the skeleton, a shape change can occur. By contracting these corners in sequence, the robot is able to achieve locomotion. The transformation and locomotion is done with a single motor, creating an under-actuated design.

#figure(
  image("images/noOrigamiOverhead.png"),
  caption: [The  robot without the origami cap (1: unactuated; 2-5: actuation).],
) <Overhead>

= Project history
Previous to this internship, the skeleton was developed with compliant joints and the origami cap was designed and manufactured. Different gearbox designs had been developed to contract the skeleton, however, the gearboxes that could contract the corners in sequence could not support multiple rotations.

= The gearbox

@Exploded shows the gearbox developed in this internship. A worm gear driven by the motor is attached to a vertical shaft which rotates a mutilated gear. This gear is surrounded by 4 spools which it intermittently rotates. When the spools rotate they pull in wires connected to the corners of the skeleton in sequence, inducing locomotion.

#figure(
  image("images/OrigamiRobotExploded.png"),
  caption: [An exploded view of the gearbox design.],
) <Exploded>


= Rolling

@Rolling shows four frames from a video of the robot rolling. The left side is pulled in which causes the center of mass to shift towards the right, causing it to roll by $90degree$.

#figure(
  image("images/withOrigami4FrameAnnotatedWithBG (Large).png"),
  caption: [A rolling sequence towards the right with the origami cap.],
) <Rolling>
