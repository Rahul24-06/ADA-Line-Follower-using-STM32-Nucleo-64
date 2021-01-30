with pincon;
with utility;

package body IO is

   type M_State is (Fwd, Rev, Stop);

   procedure Control_Motor (S : in M_State) is
   begin
      case S is
		when Fwd =>
            -- Drive forward
            pincon.Write (pincon.Pin_3, True);
            pincon.Write (pincon.Pin_5, False);
            pincon.Write (pincon.Pin_6, False);
			pincon.Write (pincon.Pin_9, True);
		when Rev =>
            -- Drive Rev
            pincon.Write (pincon.Pin_3, False);
            pincon.Write (pincon.Pin_5, True);
            pincon.Write (pincon.Pin_6, True);
			pincon.Write (pincon.Pin_9, False);
         when Stop =>
            -- stop the motor
            pincon.Write (pincon.Pin_3, False);
            pincon.Write (pincon.Pin_5, False);
            pincon.Write (pincon.Pin_6, False);
			pincon.Write (pincon.Pin_9, False);

      end case;
   end Control_Motor;

end IO;