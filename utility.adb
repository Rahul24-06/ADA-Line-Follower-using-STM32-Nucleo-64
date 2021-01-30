package body Utility is

   procedure While_1 is
   begin
      loop
         null;
      end loop;
   end While_1;

   procedure Delay_random is
      Iterations : constant := 100_000;
   begin
      for I in 1 .. Iterations loop
         null;
      end loop;
   end Delay_random;

end Utility;