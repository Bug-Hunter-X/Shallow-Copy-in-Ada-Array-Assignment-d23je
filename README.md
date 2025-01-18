# Ada Shallow Copy Bug

This example demonstrates a potential issue with Ada's default array assignment.  When an array is assigned to another using `:=`, a shallow copy is created.  This means both arrays share the same memory location for their elements.  Modifying one array will also modify the other.

**Bug:** The code performs an in-place modification of array `A`. Because `B` is a shallow copy, modifications to `A` are reflected in `B`.

**Solution:**  Use `A'Copy` to create a deep copy of array A, and avoid the unintended side effects.

This demonstrates a common pitfall for programmers coming from languages with different array handling semantics.