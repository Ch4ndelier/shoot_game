library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
        
        
        
entity antishake is
port (clk3,clear,speedup,speeddown,random,usual,fprtmove,fplftmove,fire:in std_logic;
        clear3,speedup3,speeddown3,random3,usual3,fprtmove3,fplftmove3,fire3:out std_logic);
end antishake;

architecture as of antishake is

begin
process(clk3,clear)
variable cnt20:integer range 0 to 20 ;
begin
  if(clear='1') then
       if(clk3'event and clk3='1') then
         if(cnt20>=20)then
         clear3<='0';
         elsif(cnt20>=19)then
         clear3<='1';
         cnt20:=cnt20+1;
         else
         cnt20:=cnt20+1;
         clear3<='0';
         end if;
       end if;
    else cnt20:=0;clear3<='0';
   end if;
 end process;
 
 process(clk3,usual)
variable cnt20:integer range 0 to 20 ;
begin
  if(usual='1') then
       if(clk3'event and clk3='1') then
         if(cnt20>=20)then
         usual3<='0';
         elsif(cnt20>=19)then
         usual3<='1';
         cnt20:=cnt20+1;
         else
         cnt20:=cnt20+1;
         usual3<='0';
         end if;
       end if;
    else cnt20:=0;usual3<='0';
   end if;
 end process;
 

process(clk3,speedup)
variable cnt20:integer range 0 to 20 ;
begin
  if(speedup='1') then
       if(clk3'event and clk3='1') then
         if(cnt20>=20)then
         speedup3<='0';
         elsif(cnt20>=19)then
         speedup3<='1';
         cnt20:=cnt20+1;
         else
         cnt20:=cnt20+1;
         speedup3<='0';
         end if;
       end if;
    else cnt20:=0;speedup3<='0';
   end if;
 end process;

process(clk3,speeddown)
variable cnt20:integer range 0 to 20; 
begin
  if(speeddown='1') then
       if(clk3'event and clk3='1') then
         if(cnt20>=20)then
         speeddown3<='0';
         elsif(cnt20>=19)then
         speeddown3<='1';
         cnt20:=cnt20+1;
         else
         cnt20:=cnt20+1;
         speeddown3<='0';
         end if;
       end if;
    else cnt20:=0;speeddown3<='0';
   end if;
 end process;
 

process(clk3,random)
variable cnt20:integer range 0 to 20;
begin
  if(random='1') then
       if(clk3'event and clk3='1') then
         if(cnt20>=20)then
         random3<='0';
         elsif(cnt20>=19)then
         random3<='1';
         cnt20:=cnt20+1;
         else
         cnt20:=cnt20+1;
         random3<='0';
         end if;
       end if;
    else cnt20:=0;random3<='0';
   end if;
 end process;
 

process(clk3,fprtmove)
variable cnt20:integer range 0 to 20 ;
begin
  if(fprtmove='1') then
       if(clk3'event and clk3='1') then
         if(cnt20>=20)then
         fprtmove3<='0';
         elsif(cnt20>=19)then
         fprtmove3<='1';
         cnt20:=cnt20+1;
         else
         cnt20:=cnt20+1;
         fprtmove3<='0';
         end if;
       end if;
    else cnt20:=0;fprtmove3<='0';
   end if;
 end process;
 

process(clk3,fplftmove)
variable cnt20:integer range 0 to 20; 
begin
  if(fplftmove='1') then
       if(clk3'event and clk3='1') then
         if(cnt20>=20)then
         fplftmove3<='0';
         elsif(cnt20>=19)then
         fplftmove3<='1';
         cnt20:=cnt20+1;
         else
         cnt20:=cnt20+1;
         fplftmove3<='0';
         end if;
       end if;
    else cnt20:=0;fplftmove3<='0';
   end if;
 end process;
 


 p8:process(clk3,fire)
variable cnt20:integer range 0 to 20 ;
begin
  if(fire='1') then
       if(clk3'event and clk3='1') then
         if(cnt20>=20)then
         fire3<='0';
         elsif(cnt20>=19)then
         fire3<='1';
         cnt20:=cnt20+1;
         else
         cnt20:=cnt20+1;
         fire3<='0';
         end if;
       end if;
    else cnt20:=0;fire3<='0';
   end if;
 end process;




end as;
