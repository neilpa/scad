# FreeCAD

Experimenting with FreeCAD modeling. Starting with the [Learn FreeCAD channel][yt-learn].

Lessons:

 * [x] Turners Cube
 * [x] Whiffle Ball
 * [ ] Casino Dice
 * [ ] Bearing Bracket
 * [ ] Fork Bearing
 * [ ] Compression Spring
 * [ ] Propeller
 * [ ] Inner Threads
 * [ ] Outer Threads
 * [ ] Heart-shaped Ahstray
 * [ ] Bird Feeder
 * [ ] Ball Bearing

[yt-learn]: https://www.youtube.com/channel/UC_9HwDkwxllq5lFGkYBIH9g


# Lesson 2: Whiffle Ball

On version 0.17 there's the introduction of the "Body" concept. Drawing the triangles sketch using parts design adds a new body instance and prevents changing the rotation. Chagned approach from there

    * Moved the trianges sketch into the main object tree
    * Deleted the now empty Body entity
    * Switched to the parts bench to finish the drawing
    * Used the extrude tool as an alternative to padding the sketch
        * Same size of 60 mm
        * Relative to the normals
        * Symmetric
    * Copied the above extrusion and rotated about the Z-axis 90deg (rather than redrawing)
    * Then performed the cut on the holed-box with the extruded pieces
