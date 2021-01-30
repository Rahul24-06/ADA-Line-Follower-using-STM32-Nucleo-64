package reg is

   type Word is mod 2**32;

   RCC_CR : Word;
   pragma Volatile (RCC_CR);
   pragma Import (C, RCC_CR, "RCC_CR");

   RCC_AHB1ENR : Word;
   pragma Volatile (RCC_AHB1ENR);
   pragma Import (C, RCC_AHB1ENR, "RCC_AHB1ENR");

   RCC_AHB2ENR : Word;
   pragma Volatile (RCC_AHB2ENR);
   pragma Import (C, RCC_AHB2ENR, "RCC_AHB2ENR");

   GPIOA_MODER : Word;
   pragma Volatile (GPIOA_MODER);
   pragma Import (C, GPIOA_MODER, "GPIOA_MODER");

   GPIOA_PUPDR : Word;
   pragma Volatile (GPIOA_PUPDR);
   pragma Import (C, GPIOA_PUPDR, "GPIOA_PUPDR");

   GPIOA_IDR : Word;
   pragma Volatile (GPIOA_IDR);
   pragma Import (C, GPIOA_IDR, "GPIOA_IDR");

   GPIOA_BSRR : Word;
   pragma Volatile (GPIOA_BSRR);
   pragma Import (C, GPIOA_BSRR, "GPIOA_BSRR");

   GPIOD_MODER : Word;
   pragma Volatile (GPIOD_MODER);
   pragma Import (C, GPIOD_MODER, "GPIOD_MODER");

   GPIOD_PUPDR : Word;
   pragma Volatile (GPIOD_PUPDR);
   pragma Import (C, GPIOD_PUPDR, "GPIOD_PUPDR");

   GPIOD_IDR : Word;
   pragma Volatile (GPIOD_IDR);
   pragma Import (C, GPIOD_IDR, "GPIOD_IDR");

   GPIOD_BSRR : Word;
   pragma Volatile (GPIOD_BSRR);
   pragma Import (C, GPIOD_BSRR, "GPIOD_BSRR");

   GPIOE_MODER : Word;
   pragma Volatile (GPIOE_MODER);
   pragma Import (C, GPIOE_MODER, "GPIOE_MODER");

   GPIOE_PUPDR : Word;
   pragma Volatile (GPIOE_PUPDR);
   pragma Import (C, GPIOE_PUPDR, "GPIOE_PUPDR");

   GPIOE_IDR : Word;
   pragma Volatile (GPIOE_IDR);
   pragma Import (C, GPIOE_IDR, "GPIOE_IDR");

   GPIOE_BSRR : Word;
   pragma Volatile (GPIOE_BSRR);
   pragma Import (C, GPIOE_BSRR, "GPIOE_BSRR");

   GPIOF_MODER : Word;
   pragma Volatile (GPIOF_MODER);
   pragma Import (C, GPIOF_MODER, "GPIOF_MODER");

   GPIOF_PUPDR : Word;
   pragma Volatile (GPIOF_PUPDR);
   pragma Import (C, GPIOF_PUPDR, "GPIOF_PUPDR");

   GPIOF_IDR : Word;
   pragma Volatile (GPIOF_IDR);
   pragma Import (C, GPIOF_IDR, "GPIOF_IDR");

   GPIOF_BSRR : Word;
   pragma Volatile (GPIOF_BSRR);
   pragma Import (C, GPIOF_BSRR, "GPIOF_BSRR");

   RNG_CR : Word;
   pragma Volatile (RNG_CR);
   pragma Import (C, RNG_CR, "RNG_CR");

   RNG_SR : Word;
   pragma Volatile (RNG_SR);
   pragma Import (C, RNG_SR, "RNG_SR");

   RNG_DR : Word;
   pragma Volatile (RNG_DR);
   pragma Import (C, RNG_DR, "RNG_DR");

end reg;