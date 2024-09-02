# Random Class Documentation
Contains a variety of randomness functions that is useful for procedural generation.

## Methods
| Function | Return Type | Description |
|----------|-------------|-------------|
| `random2d(min_x: float, max_x: float, min_y: float, max_y: float)` | `Vector2` | Generates a random 2D vector with float components |
| `random2di(min_x: int, max_x: int, min_y: int, max_y: int)` | `Vector2i` | Generates a random 2D vector with integer components |
| `random3d(min_x: float, max_x: float, min_y: float, max_y: float, min_z: float, max_z: float)` | `Vector3` | Generates a random 3D vector with float components |
| `random3di(min_x: int, max_x: int, min_y: int, max_y: int, min_z: int, max_z: int)` | `Vector3i` | Generates a random 3D vector with integer components |
| `random_color_rgb()` | `Color` |	Generates a random RGB color (no alpha) |
| `random_color_rgba()`	| `Color`	| Generates a random RGBA color (with alpha) | 
| `random_color_hsv()`	| `Color`	| Generates a random HSV color (no alpha) |
| `random_direction_2d()` | `Vector2` | Random unit Vector2D representing a direction |
| `random_direction_3d()` | `Vector3` | Random unit Vector3D representing a direction |
| `random_rotation_radians()` | `float` | Random rotation in radians |
| `random_rotation_radians_2d()` | `Vector2` | Random rotation in 2 axes, in radians |
| `random_rotation_radians_3d()` | `Vector3` | Random rotation in 3 axes, in radians |
| `random_rotation_degrees()` | `float` | Random rotation in degrees |
| `random_rotation_degrees_2d()` | `Vector2` | Random rotation in 2 axes, in degrees |
| `random_rotation_degrees_3d()` | `Vector3` | Random rotation in 3 axes, in degrees |
| `point_in_region_2d(region: Rect2)` | `Vector2` | Random point inside 2D rectangular region |
| `point_in_region_3d(region: AABB)` | `Vector3` | Random point inside 3D cuboidal region |
| `point_in_circle(radius_min: float, radius_max: float)` | `Vector2` | Random point inside a 2D circle with min/max radii |
| `point_in_sphere(radius_min: float, radius_max: float)` | `Vector3` | Random point inside a 3D sphere with min/max radii |
| `random_str(length: int)` | `String` | Random string of specified length, containing lowercase letters, uppercase letters, and digits |
| `random_str_numeric(length: int)` | `String` | Random string of specified length, containing only digits |
| `random_str_alphanumeric(length: int)` | `String` | Random string of specified length, containing only lowercase letters and digits |
| `random_str_alpha(length: int)` | `String` | Random string of specified length, containing only lowercase letters |

### Random2D

```gdscript
static func random2d(min_x: float, max_x: float, min_y: float, max_y: float) -> Vector2:
```

Generates a random `Vector2` with x and y components within the specified ranges.

#### Parameters:
- `min_x` (float): The minimum value for the x component.
- `max_x` (float): The maximum value for the x component.
- `min_y` (float): The minimum value for the y component.
- `max_y` (float): The maximum value for the y component.

#### Returns:
- `Vector2`: A random `Vector2` with x and y components within the specified ranges.

#### Description:
This function generates a random `Vector2` by independently selecting random values for the x and y components within the specified ranges. The x component is randomly chosen between `min_x` and `max_x` (inclusive), while the y component is randomly chosen between `min_y` and `max_y` (inclusive).

#### Example usage:
```gdscript
var random_vector = Random.random2d(-10.0, 10.0, -5.0, 5.0)
print(random_vector)  # Output: (random x, random y)
```

### Random2Di

```gdscript
static func random2di(min_x: int, max_x: int, min_y: int, max_y: int) -> Vector2i:
```

Generates a random `Vector2i` with x and y components within the specified integer ranges.

#### Parameters:
- `min_x` (int): The minimum value for the x component.
- `max_x` (int): The maximum value for the x component.
- `min_y` (int): The minimum value for the y component.
- `max_y` (int): The maximum value for the y component.

#### Returns:
- `Vector2i`: A random `Vector2i` with x and y components within the specified integer ranges.

#### Description:
This function generates a random `Vector2i` by independently selecting random integer values for the x and y components within the specified ranges. The x component is randomly chosen between `min_x` and `max_x` (inclusive), while the y component is randomly chosen between `min_y` and `max_y` (inclusive).

#### Example usage:
```gdscript
var random_vector = Random.random2di(-10, 10, -5, 5)
print(random_vector)  # Output: (random x, random y)
```

### Random3D

```gdscript
static func random3d(min_x: float, max_x: float, min_y: float, max_y: float, min_z: float, max_z: float) -> Vector3:
```

Generates a random `Vector3` with x, y, and z components within the specified ranges.

#### Parameters:
- `min_x` (float): The minimum value for the x component.
- `max_x` (float): The maximum value for the x component.
- `min_y` (float): The minimum value for the y component.
- `max_y` (float): The maximum value for the y component.
- `min_z` (float): The minimum value for the z component.
- `max_z` (float): The maximum value for the z component.

#### Returns:
- `Vector3`: A random `Vector3` with x, y, and z components within the specified ranges.

#### Description:
This function generates a random `Vector3` by independently selecting random values for the x, y, and z components within the specified ranges. The x component is randomly chosen between `min_x` and `max_x` (inclusive), the y component between `min_y` and `max_y` (inclusive), and the z component between `min_z` and `max_z` (inclusive).

#### Example usage:
```gdscript
var random_vector = Random.random3d(-10.0, 10.0, -5.0, 5.0, 0.0, 20.0)
print(random_vector)  # Output: (random x, random y, random z)
```

### Random3Di

```gdscript
static func random3di(min_x: int, max_x: int, min_y: int, max_y: int, min_z: int, max_z: int) -> Vector3i:
```

Generates a random `Vector3i` with x, y, and z components within the specified integer ranges.

#### Parameters:
- `min_x` (int): The minimum value for the x component.
- `max_x` (int): The maximum value for the x component.
- `min_y` (int): The minimum value for the y component.
- `max_y` (int): The maximum value for the y component.
- `min_z` (int): The minimum value for the z component.
- `max_z` (int): The maximum value for the z component.

#### Returns:
- `Vector3i`: A random `Vector3i` with x, y, and z components within the specified integer ranges.

#### Description:
This function generates a random `Vector3i` by independently selecting random integer values for the x, y, and z components within the specified ranges. The x component is randomly chosen between `min_x` and `max_x` (inclusive), the y component between `min_y` and `max_y` (inclusive), and the z component between `min_z` and `max_z` (inclusive).

#### Example usage:
```gdscript
var random_vector = Random.random3di(-10, 10, -5, 5, 0, 20)
print(random_vector)  # Output: (random x, random y, random z)
```
