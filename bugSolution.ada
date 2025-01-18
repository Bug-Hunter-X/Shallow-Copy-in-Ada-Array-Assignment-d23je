```ada
procedure Example_Solution is
   type My_Array is array (1..10) of Integer;
   A : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   B : My_Array;
begin
   B := A'Copy; -- Create a deep copy
   for I in A'Range loop
      A(I) := A(I) * 2;
   end loop;
   for I in B'Range loop
      Ada.Text_IO.Put_Line(Integer'Image(B(I)));
   end loop;
end Example_Solution;
```