// The width of the inside of a slot for holding a phone (horizontal axis)
slot_width = 80;

// The height of the inside of a slot for holding a phone (horizontal axis)
slot_height = 10;

// The height of the organizer itself
box_size = 60;

// The thickness of the walls between the phones, around the box and its floor
thickness = 1;

// The number of slots in the organizer
slot_count = 8;

// Front wall, N slots, N - 1 walls between slots and back wall
box_height = thickness + (slot_height + thickness) * slot_count;

// Left wall + slot size + right wall
box_width = thickness + slot_width + thickness;

// Floor
cube([box_width, box_height, thickness]);

// Left wall
translate([0, 0, thickness])
cube([thickness, box_height, box_size - thickness]);

// Left wall
translate([box_width - thickness, 0, thickness])
cube([thickness, box_height, box_size - thickness]);

// Front wall
cube([box_width, thickness, box_size]);

// Slot walls and back wall
for (index = [0:slot_count]) {
  translate([0, index * (slot_height + thickness), 0])
  cube([box_width, thickness, box_size]);
}
