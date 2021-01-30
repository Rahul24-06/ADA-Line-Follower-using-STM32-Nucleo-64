with reg;

package body pinconfig is

   use type reg.Word;

   procedure Enable_Input (Pin : in Pin_ID; Mode : in Input_Mode) is
   begin
      case Pin is
         when Pin_2 =>
            reg.RCC_AHB1ENR := reg.RCC_AHB1ENR
                or 2#10_0000#; -- bit 5
            
            reg.GPIOF_MODER := reg.GPIOF_MODER
               and 2#0011_1111_1111_1111_1111_1111_1111_1111#; -- bits 30-31
            
            if Mode = Pulled_Up then
               reg.GPIOF_PUPDR := (reg.GPIOF_PUPDR
                  and 2#0011_1111_1111_1111_1111_1111_1111_1111#)
                   or 2#0100_0000_0000_0000_0000_0000_0000_0000#;
            else
               reg.GPIOF_PUPDR := reg.GPIOF_PUPDR
                  and 2#0011_1111_1111_1111_1111_1111_1111_1111#;
            end if;

         when Pin_3 =>
            reg.RCC_AHB1ENR := reg.RCC_AHB1ENR
                or 2#1_0000#; -- bit 4
            
            reg.GPIOE_MODER := reg.GPIOE_MODER
               and 2#1111_0011_1111_1111_1111_1111_1111_1111#; -- bits 26-27
            
            if Mode = Pulled_Up then
               reg.GPIOE_PUPDR := (reg.GPIOE_PUPDR
                  and 2#1111_0011_1111_1111_1111_1111_1111_1111#)
                   or 2#0000_0100_0000_0000_0000_0000_0000_0000#;
            else
               reg.GPIOE_PUPDR := reg.GPIOE_PUPDR
                  and 2#1111_0011_1111_1111_1111_1111_1111_1111#;
            end if;

         when Pin_4 =>
            reg.RCC_AHB1ENR := reg.RCC_AHB1ENR
                or 2#10_0000#; -- bit 5
            
            reg.GPIOF_MODER := reg.GPIOF_MODER
               and 2#1100_1111_1111_1111_1111_1111_1111_1111#; -- bits 28-29
            
            if Mode = Pulled_Up then
               reg.GPIOF_PUPDR := (reg.GPIOF_PUPDR
                  and 2#1100_1111_1111_1111_1111_1111_1111_1111#)
                   or 2#0001_0000_0000_0000_0000_0000_0000_0000#;
            else
               reg.GPIOF_PUPDR := reg.GPIOF_PUPDR
                  and 2#1100_1111_1111_1111_1111_1111_1111_1111#;
            end if;

         when Pin_5 =>
            reg.RCC_AHB1ENR := reg.RCC_AHB1ENR
                or 2#1_0000#; -- bit 4
            
            reg.GPIOE_MODER := reg.GPIOE_MODER
               and 2#1111_1111_0011_1111_1111_1111_1111_1111#; -- bits 22-23
            
            if Mode = Pulled_Up then
               reg.GPIOE_PUPDR := (reg.GPIOE_PUPDR
                  and 2#1111_1111_0011_1111_1111_1111_1111_1111#)
                   or 2#0000_0000_0100_0000_0000_0000_0000_0000#;
            else
               reg.GPIOE_PUPDR := reg.GPIOE_PUPDR
                  and 2#1111_1111_0011_1111_1111_1111_1111_1111#;
            end if;

         when Pin_6 =>
            reg.RCC_AHB1ENR := reg.RCC_AHB1ENR
                or 2#1_0000#; -- bit 4
            
            reg.GPIOE_MODER := reg.GPIOE_MODER
               and 2#1111_1111_1111_0011_1111_1111_1111_1111#; -- bits 18-19
            
            if Mode = Pulled_Up then
               reg.GPIOE_PUPDR := (reg.GPIOE_PUPDR
                  and 2#1111_1111_1111_0011_1111_1111_1111_1111#)
                   or 2#0000_0000_0000_0100_0000_0000_0000_0000#;
            else
               reg.GPIOE_PUPDR := reg.GPIOE_PUPDR
                  and 2#1111_1111_1111_0011_1111_1111_1111_1111#;
            end if;

         when Pin_7 =>
            reg.RCC_AHB1ENR := reg.RCC_AHB1ENR
                or 2#10_0000#; -- bit 5
            
            reg.GPIOF_MODER := reg.GPIOF_MODER
               and 2#1111_0011_1111_1111_1111_1111_1111_1111#; -- bits 26-27
            
            if Mode = Pulled_Up then
               reg.GPIOF_PUPDR := (reg.GPIOF_PUPDR
                  and 2#1111_0011_1111_1111_1111_1111_1111_1111#)
                   or 2#0000_0100_0000_0000_0000_0000_0000_0000#;
            else
               reg.GPIOF_PUPDR := reg.GPIOF_PUPDR
                  and 2#1111_0011_1111_1111_1111_1111_1111_1111#;
            end if;

         when Pin_8 =>
            reg.RCC_AHB1ENR := reg.RCC_AHB1ENR
                or 2#10_0000#; -- bit 5
            
            reg.GPIOF_MODER := reg.GPIOF_MODER
               and 2#1111_1100_1111_1111_1111_1111_1111_1111#; -- bits 24-25
            
            if Mode = Pulled_Up then
               reg.GPIOF_PUPDR := (reg.GPIOF_PUPDR
                  and 2#1111_1100_1111_1111_1111_1111_1111_1111#)
                   or 2#0000_0001_0000_0000_0000_0000_0000_0000#;
            else
               reg.GPIOF_PUPDR := reg.GPIOF_PUPDR
                  and 2#1111_1100_1111_1111_1111_1111_1111_1111#;
            end if;

         when Pin_9 =>
            reg.RCC_AHB1ENR := reg.RCC_AHB1ENR
                or 2#1000#; -- bit 3
            
            reg.GPIOD_MODER := reg.GPIOD_MODER
               and 2#0011_1111_1111_1111_1111_1111_1111_1111#; -- bit pair 30-31
            
            if Mode = Pulled_Up then
               reg.GPIOD_PUPDR := (reg.GPIOD_PUPDR
                  and 2#0011_1111_1111_1111_1111_1111_1111_1111#)
                   or 2#0100_0000_0000_0000_0000_0000_0000_0000#;
            else
               reg.GPIOD_PUPDR := reg.GPIOD_PUPDR
                  and 2#0011_1111_1111_1111_1111_1111_1111_1111#;
            end if;

         when Pin_10 =>
            reg.RCC_AHB1ENR := reg.RCC_AHB1ENR
                or 2#1000#; -- bit 3
            
            reg.GPIOD_MODER := reg.GPIOD_MODER
               and 2#1100_1111_1111_1111_1111_1111_1111_1111#; -- bit pair 28-29
            
            if Mode = Pulled_Up then
               reg.GPIOD_PUPDR := (reg.GPIOD_PUPDR
                  and 2#1100_1111_1111_1111_1111_1111_1111_1111#)
                   or 2#0001_0000_0000_0000_0000_0000_0000_0000#;
            else
               reg.GPIOD_PUPDR := reg.GPIOD_PUPDR
                  and 2#1100_1111_1111_1111_1111_1111_1111_1111#;
            end if;

         when Pin_11 =>
            reg.RCC_AHB1ENR := reg.RCC_AHB1ENR
                or 2#1#; -- bit 0
            
            reg.GPIOA_MODER := reg.GPIOA_MODER
               and 2#1111_1111_1111_1111_0011_1111_1111_1111#; -- bit pair 14-15
            
            if Mode = Pulled_Up then
               reg.GPIOA_PUPDR := (reg.GPIOA_PUPDR
                  and 2#1111_1111_1111_1111_0011_1111_1111_1111#)
                   or 2#0000_0000_0000_0000_0100_0000_0000_0000#;
            else
               reg.GPIOA_PUPDR := reg.GPIOA_PUPDR
                  and 2#1111_1111_1111_1111_0011_1111_1111_1111#;
            end if;

         when Pin_12 =>
            reg.RCC_AHB1ENR := reg.RCC_AHB1ENR
                or 2#1#; -- bit 0
            
            reg.GPIOA_MODER := reg.GPIOA_MODER
               and 2#1111_1111_1111_1111_1100_1111_1111_1111#; -- bit pair 12-13
            
            if Mode = Pulled_Up then
               reg.GPIOA_PUPDR := (reg.GPIOA_PUPDR
                  and 2#1111_1111_1111_1111_1100_1111_1111_1111#)
                   or 2#0000_0000_0000_0000_0001_0000_0000_0000#;
            else
               reg.GPIOA_PUPDR := reg.GPIOA_PUPDR
                  and 2#1111_1111_1111_1111_1100_1111_1111_1111#;
            end if;

         when Pin_13 =>
            reg.RCC_AHB1ENR := reg.RCC_AHB1ENR
                or 2#1#; -- bit 0
            
            reg.GPIOA_MODER := reg.GPIOA_MODER
               and 2#1111_1111_1111_1111_1111_0011_1111_1111#; -- bit pair 10-11
            
            if Mode = Pulled_Up then
               reg.GPIOA_PUPDR := (reg.GPIOA_PUPDR
                  and 2#1111_1111_1111_1111_1111_0011_1111_1111#)
                   or 2#0000_0000_0000_0000_0000_0100_0000_0000#;
            else
               reg.GPIOA_PUPDR := reg.GPIOA_PUPDR
                  and 2#1111_1111_1111_1111_1111_0011_1111_1111#;
            end if;

         end case;
   end Enable_Input;
   
   procedure Enable_Output (Pin : in Pin_ID) is
   begin
      case Pin is
         when Pin_2 =>
            reg.RCC_AHB1ENR := reg.RCC_AHB1ENR
                or 2#10_0000#; -- bit 5
            reg.GPIOF_MODER := (reg.GPIOF_MODER
               and 2#0011_1111_1111_1111_1111_1111_1111_1111#)
                or 2#0100_0000_0000_0000_0000_0000_0000_0000#; -- bits 30-31

         when Pin_3 =>
            reg.RCC_AHB1ENR := reg.RCC_AHB1ENR
                or 2#1_0000#; -- bit 4
            reg.GPIOE_MODER := (reg.GPIOE_MODER
               and 2#1111_0011_1111_1111_1111_1111_1111_1111#)
                or 2#0000_0100_0000_0000_0000_0000_0000_0000#; -- bits 26-27

         when Pin_4 =>
            reg.RCC_AHB1ENR := reg.RCC_AHB1ENR
                or 2#10_0000#; -- bit 5
            reg.GPIOF_MODER := (reg.GPIOF_MODER
               and 2#1100_1111_1111_1111_1111_1111_1111_1111#)
                or 2#0001_0000_0000_0000_0000_0000_0000_0000#; -- bits 28-29

         when Pin_5 =>
            reg.RCC_AHB1ENR := reg.RCC_AHB1ENR
                or 2#1_0000#; -- bit 4
            reg.GPIOE_MODER := (reg.GPIOE_MODER
               and 2#1111_1111_0011_1111_1111_1111_1111_1111#)
                or 2#0000_0000_0100_0000_0000_0000_0000_0000#; -- bits 22-23

         when Pin_6 =>
            reg.RCC_AHB1ENR := reg.RCC_AHB1ENR
                or 2#1_0000#; -- bit 4
            reg.GPIOE_MODER := (reg.GPIOE_MODER
               and 2#1111_1111_1111_0011_1111_1111_1111_1111#)
                or 2#0000_0000_0000_0100_0000_0000_0000_0000#; -- bits 18-19

         when Pin_7 =>
            reg.RCC_AHB1ENR := reg.RCC_AHB1ENR
                or 2#10_0000#; -- bit 5
            reg.GPIOF_MODER := (reg.GPIOF_MODER
               and 2#1111_0011_1111_1111_1111_1111_1111_1111#)
                or 2#0000_0100_0000_0000_0000_0000_0000_0000#; -- bits 26-27

         when Pin_8 =>
            reg.RCC_AHB1ENR := reg.RCC_AHB1ENR
                or 2#10_0000#; -- bit 5
            reg.GPIOF_MODER := (reg.GPIOF_MODER
               and 2#1111_1100_1111_1111_1111_1111_1111_1111#)
                or 2#0000_0001_0000_0000_0000_0000_0000_0000#; -- bits 24-25

         when Pin_9 =>
            reg.RCC_AHB1ENR := reg.RCC_AHB1ENR
                or 2#1000#; -- bit 3
            reg.GPIOD_MODER := (reg.GPIOD_MODER
               and 2#0011_1111_1111_1111_1111_1111_1111_1111#)
                or 2#0100_0000_0000_0000_0000_0000_0000_0000#; -- bits 30-31

         when Pin_10 =>
            reg.RCC_AHB1ENR := reg.RCC_AHB1ENR
                or 2#1000#; -- bit 3
            reg.GPIOD_MODER := (reg.GPIOD_MODER
               and 2#1100_1111_1111_1111_1111_1111_1111_1111#)
                or 2#0001_0000_0000_0000_0000_0000_0000_0000#; -- bits 28-29

         when Pin_11 =>
            reg.RCC_AHB1ENR := reg.RCC_AHB1ENR
                or 2#1#; -- bit 0
            reg.GPIOA_MODER := (reg.GPIOA_MODER
               and 2#1111_1111_1111_1111_0011_1111_1111_1111#)
                or 2#0000_0000_0000_0000_0100_0000_0000_0000#; -- bits 14-15

         when Pin_12 =>
            reg.RCC_AHB1ENR := reg.RCC_AHB1ENR
                or 2#1#; -- bit 0
            reg.GPIOA_MODER := (reg.GPIOA_MODER
               and 2#1111_1111_1111_1111_1100_1111_1111_1111#)
                or 2#0000_0000_0000_0000_0001_0000_0000_0000#; -- bits 12-13

         when Pin_13 =>
            reg.RCC_AHB1ENR := reg.RCC_AHB1ENR
                or 2#1#; -- bit 0
            reg.GPIOA_MODER := (reg.GPIOA_MODER
               and 2#1111_1111_1111_1111_1111_0011_1111_1111#)
                or 2#0000_0000_0000_0000_0000_0100_0000_0000#; -- bits 10-11
      end case;
   end Enable_Output;
   
   procedure Read (Pin : in Pin_ID; State : out Boolean) is
      Data : reg.Word;
   begin
      case Pin is
         when Pin_2 =>
            Data := reg.GPIOF_IDR;
            State := (Data and 2#1000_0000_0000_0000#) /= 0; -- bit 15

         when Pin_3 =>
            Data := reg.GPIOE_IDR;
            State := (Data and 2#10_0000_0000_0000#) /= 0; -- bit 13

         when Pin_4 =>
            Data := reg.GPIOF_IDR;
            State := (Data and 2#100_0000_0000_0000#) /= 0; -- bit 14

         when Pin_5 =>
            Data := reg.GPIOE_IDR;
            State := (Data and 2#1000_0000_0000#) /= 0; -- bit 11

         when Pin_6 =>
            Data := reg.GPIOE_IDR;
            State := (Data and 2#10_0000_0000#) /= 0; -- bit 9

         when Pin_7 =>
            Data := reg.GPIOF_IDR;
            State := (Data and 2#10_0000_0000_0000#) /= 0; -- bit 13

         when Pin_8 =>
            Data := reg.GPIOF_IDR;
            State := (Data and 2#1_0000_0000_0000#) /= 0; -- bit 12

         when Pin_9 =>
            Data := reg.GPIOD_IDR;
            State := (Data and 2#1000_0000_0000_0000#) /= 0; -- bit 15

         when Pin_10 =>
            Data := reg.GPIOD_IDR;
            State := (Data and 2#100_0000_0000_0000#) /= 0; -- bit 14

         when Pin_11 =>
            Data := reg.GPIOA_IDR;
            State := (Data and 2#1000_0000#) /= 0; -- bit 7

         when Pin_12 =>
            Data := reg.GPIOA_IDR;
            State := (Data and 2#100_0000#) /= 0; -- bit 6

         when Pin_13 =>
            Data := reg.GPIOA_IDR;
            State := (Data and 2#10_0000#) /= 0; -- bit 5
      end case;            
   end Read;

   procedure Write (Pin : in Pin_ID; State : Boolean) is
   begin
      case Pin is
         when Pin_2 =>
            if State then
               reg.GPIOF_BSRR := 2#1000_0000_0000_0000#; -- bit 15
            else
               reg.GPIOF_BSRR := 2#1000_0000_0000_0000_0000_0000_0000_0000#;
            end if;

         when Pin_3 =>
            if State then
               reg.GPIOE_BSRR := 2#10_0000_0000_0000#; -- bit 13
            else
               reg.GPIOE_BSRR := 2#10_0000_0000_0000_0000_0000_0000_0000#;
            end if;

         when Pin_4 =>
            if State then
               reg.GPIOF_BSRR := 2#100_0000_0000_0000#; -- bit 14
            else
               reg.GPIOF_BSRR := 2#100_0000_0000_0000_0000_0000_0000_0000#;
            end if;

         when Pin_5 =>
            if State then
               reg.GPIOE_BSRR := 2#1000_0000_0000#; -- bit 11
            else
               reg.GPIOE_BSRR := 2#1000_0000_0000_0000_0000_0000_0000#;
            end if;

         when Pin_6 =>
            if State then
               reg.GPIOE_BSRR := 2#10_0000_0000#; -- bit 9
            else
               reg.GPIOE_BSRR := 2#10_0000_0000_0000_0000_0000_0000#;
            end if;

         when Pin_7 =>
            if State then
               reg.GPIOF_BSRR := 2#10_0000_0000_0000#; -- bit 13
            else
               reg.GPIOF_BSRR := 2#10_0000_0000_0000_0000_0000_0000_0000#;
            end if;

         when Pin_8 =>
            if State then
               reg.GPIOF_BSRR := 2#1_0000_0000_0000#; -- bit 12
            else
               reg.GPIOF_BSRR := 2#1_0000_0000_0000_0000_0000_0000_0000#;
            end if;

         when Pin_9 =>
            if State then
               reg.GPIOD_BSRR := 2#1000_0000_0000_0000#; -- bit 15
            else
               reg.GPIOD_BSRR := 2#1000_0000_0000_0000_0000_0000_0000_0000#;
            end if;

         when Pin_10 =>
            if State then
               reg.GPIOD_BSRR := 2#100_0000_0000_0000#; -- bit 14
            else
               reg.GPIOD_BSRR := 2#100_0000_0000_0000_0000_0000_0000_0000#;
            end if;

         when Pin_11 =>
            if State then
               reg.GPIOA_BSRR := 2#1000_0000#; -- bit 7
            else
               reg.GPIOA_BSRR := 2#1000_0000_0000_0000_0000_0000#;
            end if;

         when Pin_12 =>
            if State then
               reg.GPIOA_BSRR := 2#100_0000#; -- bit 6
            else
               reg.GPIOA_BSRR := 2#100_0000_0000_0000_0000_0000#;
            end if;

         when Pin_13 =>
            if State then
               reg.GPIOA_BSRR := 2#10_0000#; -- bit 5
            else
               reg.GPIOA_BSRR := 2#10_0000_0000_0000_0000_0000#;
            end if;
      end case;
   end Write;

end reg;