#########################################################
# Part of ChaakScripts                                  #
# Copyright (c) 2024 Amirtha Krishnan and contributors  #
# Provided under MIT                                    #
#########################################################

class_name Random extends Node

# Random Vector2

static func random2d(min_x: float, max_x: float, min_y: float, max_y: float) -> Vector2:
	var random_x = randf_range(min_x, max_x)
	var random_y = randf_range(min_y, max_y)
	return Vector2(random_x, random_y)

# Random Vector2i

static func random2di(min_x: int, max_x: int, min_y: int, max_y: int) -> Vector2:
	var random_x = randi_range(min_x, max_x)
	var random_y = randi_range(min_y, max_y)
	return Vector2(random_x, random_y)

# Random Vector3

static func random3d(min_x: float, max_x: float, min_y: float, max_y: float, min_z: float, max_z: float) -> Vector3:
	var random_x = randf_range(min_x, max_x)
	var random_y = randf_range(min_y, max_y)
	var random_z = randf_range(min_z, max_z)
	return Vector3(random_x, random_y, random_z)

# Random Vector3i

static func random3di(min_x: int, max_x: int, min_y: int, max_y: int, min_z: int, max_z: int) -> Vector3:
	var random_x = randi_range(min_x, max_x)
	var random_y = randi_range(min_y, max_y)
	var random_z = randi_range(min_z, max_z)
	return Vector3(random_x, random_y, random_z)

# Random Color (RGB, no alpha)

static func random_color_rgb() -> Color:
	var r = randf()  
	var g = randf()  
	var b = randf()
	return Color(r, g, b)

# Random Color (RGB, with alpha)

static func random_color_rgba() -> Color:
	var r = randf()  
	var g = randf()  
	var b = randf()
	var a = randf()
	return Color(r, g, b, a)

# Random Color (HSV, no alpha)

static func random_color_hsv() -> Color:
	var hue = randf()
	var saturation = randf_range(0.5, 1.0)
	var value = randf_range(0.5, 1.0)
	return Color.from_hsv(hue, saturation, value)

# Random unit Vector2D representing a direction

static func random_direction_2d() -> Vector2:
	var t = randf() * TAU
	return Vector2(cos(t), sin(t))

# Random unit Vector3D representing a direction

static func random_direction_3d() -> Vector3:
	var z = randf_range(-1.0, 1.0)
	var a = randf_range(0.0, TAU)
	var r = sqrt(1.0 - z * z)
	return Vector3(r * cos(a), r * sin(a), z)

# Random rotation in radians

static func random_rotation_radians() -> float:
	return randf_range(0.0, TAU)

# Random rotation in 2 axii, in radians

static func random_rotation_radians_2d() -> Vector2:
	var x = randf_range(0.0, TAU)
	var y = randf_range(0.0, TAU)
	return Vector2(x, y)

# Random rotation in 3 axii, in radians

static func random_rotation_radians_3d() -> Vector3:
	var x = randf_range(0.0, TAU)
	var y = randf_range(0.0, TAU)
	var z = randf_range(0.0, TAU)
	return Vector3(x, y, z)

# Random rotation in degrees

static func random_rotation_degrees() -> float:
	return rad_to_deg(randf_range(0.0, TAU))

# Random rotation in 2 axii, in degrees

static func random_rotation_degrees_2d() -> Vector2:
	var x = rad_to_deg(randf_range(0.0, TAU))
	var y = rad_to_deg(randf_range(0.0, TAU))
	return Vector2(x, y)

# Random rotation in 3 axii, in degrees

static func random_rotation_degrees_3d() -> Vector3:
	var x = rad_to_deg(randf_range(0.0, TAU))
	var y = rad_to_deg(randf_range(0.0, TAU))
	var z = rad_to_deg(randf_range(0.0, TAU))
	return Vector3(x, y, z)

# Random point inside 2D rectangular region

static func point_in_region_2d(region: Rect2) -> Vector2:
	var end = region.position + region.size
	var point = Vector2()
	point.x = randf_range(region.position.x, end.x)
	point.y = randf_range(region.position.y, end.y)
	return point

# Random point inside 3D cuboidal region based on Axis-Aligned-Bounding-Box

static func point_in_region_3d(region: AABB) -> Vector3:
	var end = region.position + region.size
	var point = Vector3()
	point.x = randf_range(region.position.x, end.x)
	point.y = randf_range(region.position.y, end.y)
	point.z = randf_range(region.position.z, end.z)
	return point

#Random point inside a 2D circle with minimum and maximum radii.

static func point_in_circle(radius_min: float, radius_max: float) -> Vector2:
	var r2_max = radius_max * radius_max
	var r2_min = radius_min * radius_min
	var r = sqrt(randf() * (r2_max - r2_min) + r2_min)
	var t = randf() * TAU
	return Vector2(r * cos(t), r * sin(t))

# Random point inside a 3D sphere with the specified minimum and maximum radii.

static func point_in_sphere(radius_min: float, radius_max: float) -> Vector3:
	var r2_max = radius_max * radius_max
	var r2_min = radius_min * radius_min
	var r = sqrt(randf() * (r2_max - r2_min) + r2_min)
	var theta = randf() * TAU
	var phi = acos(randf() * 2.0 - 1.0)
	return Vector3(
		r * sin(phi) * cos(theta),
		r * sin(phi) * sin(theta),
		r * cos(phi)
	)

# Random string of specified length, containing lowercase letters, uppercase letters, and digits

static func random_str(length: int) -> String:
	var chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
	var result = ""
	for _i in range(length):
		result += chars[randi() % chars.length()]
	return result

# Random string of specified length, containing only digits

static func random_str_numeric(length: int) -> String:
	var chars = "0123456789"
	var result = ""
	for _i in range(length):
		result += chars[randi() % chars.length()]
	return result

# Random string of specified length, containing only lowercase letters and digits

static func random_str_alphanumeric(length: int) -> String:
	var chars = "abcdefghijklmnopqrstuvwxyz0123456789"
	var result = ""
	for _i in range(length):
		result += chars[randi() % chars.length()]
	return result

# Random string of specified length, containing only lowercase letters

static func random_str_alpha(length: int) -> String:
	var chars = "abcdefghijklmnopqrstuvwxyz"
	var result = ""
	for _i in range(length):
		result += chars[randi() % chars.length()]
	return result
