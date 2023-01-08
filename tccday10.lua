cls()
t=0
s=math.sin
text="VIIXXIBOYAT 2023!!"

function TIC()
 t=t+1
 i=t%300/100
 if i>2 then
   xmas(t)
 elseif i>1 then
  tunnel(t)
 else 
  plasma(t)
 end
 scroller(t) 
end

function plasma(t) 
 for y=0,135 do
  for x=0,239 do
   c=s(x/32+t/-128)
    +s(y/32+t/-128)
    *s(t/32)
   pix(x,y,c*8+t/12)
  end
 end
end

function tunnel(t)
 for y=-68,67 do
  for x=-120,119 do
   X=(math.atan2(y,x)+math.pi)*2.546
   Y=999/math.sqrt(x*x+y*y+1)+t/8
   c=(X//1)~(Y//1)
   pix(120+x,68+y,c&11)
  end
 end
end

function xmas(t)
 cls(8)
 for i=0,4,1 do
  tri(120,30+i*12,
      90-i*5,60+i*12,
      150+i*5,60+i*12,
      7)
 end  
 circ(120,29,1,4) 
 rect(115,108,10,8,3)
 rect(0,116,240,36,6)
 for i=0,900 do
  pix(i*5+math.sin(i)*20,(i*40+t)%136,12)
 end
end

function scroller(t) 
 for i=1,#text do
  print(
   string.sub(text,i,i),
   (24*i-t)%480-16,
   63+math.sin(i+t/16)*12,
   0,true,3)
  print(
   string.sub(text,i,i),
   (24*i-t)%480-18,
   61+math.sin(i+t/16)*12,
   12,true,3)
 end
end
-- <TILES>
-- 001:eccccccccc888888caaaaaaaca888888cacccccccacc0ccccacc0ccccacc0ccc
-- 002:ccccceee8888cceeaaaa0cee888a0ceeccca0ccc0cca0c0c0cca0c0c0cca0c0c
-- 003:eccccccccc888888caaaaaaaca888888cacccccccacccccccacc0ccccacc0ccc
-- 004:ccccceee8888cceeaaaa0cee888a0ceeccca0cccccca0c0c0cca0c0c0cca0c0c
-- 017:cacccccccaaaaaaacaaacaaacaaaaccccaaaaaaac8888888cc000cccecccccec
-- 018:ccca00ccaaaa0ccecaaa0ceeaaaa0ceeaaaa0cee8888ccee000cceeecccceeee
-- 019:cacccccccaaaaaaacaaacaaacaaaaccccaaaaaaac8888888cc000cccecccccec
-- 020:ccca00ccaaaa0ccecaaa0ceeaaaa0ceeaaaa0cee8888ccee000cceeecccceeee
-- </TILES>

-- <WAVES>
-- 000:00000000ffffffff00000000ffffffff
-- 001:0123456789abcdeffedcba9876543210
-- 002:0123456789abcdef0123456789abcdef
-- </WAVES>

-- <SFX>
-- 000:000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000304000000000
-- </SFX>

-- <TRACKS>
-- 000:100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- </TRACKS>

-- <PALETTE>
-- 000:1a1c2c5d275db13e53ef7d57ffcd75a7f07038b76425717929366f3b5dc941a6f673eff7f4f4f494b0c2566c86333c57
-- </PALETTE>

