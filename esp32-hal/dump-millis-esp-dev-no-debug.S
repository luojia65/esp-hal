
target/xtensa-esp32-none-elf/release/examples/hello_world:     file format elf32-xtensa-le


Disassembly of section .vectors:

40080000 <_WindowOverflow4>:
40080000:	49c500        	s32e	a0, a5, -16
40080003:	49d510        	s32e	a1, a5, -12
40080006:	49e520        	s32e	a2, a5, -8
40080009:	49f530        	s32e	a3, a5, -4
4008000c:	003400        	rfwo
4008000f:	0041f0        	break	1, 15
	...

40080040 <_WindowUnderflow4>:
40080040:	09c500        	l32e	a0, a5, -16
40080043:	09d510        	l32e	a1, a5, -12
40080046:	09e520        	l32e	a2, a5, -8
40080049:	09f530        	l32e	a3, a5, -4
4008004c:	003500        	rfwu
	...

40080050 <_AllocAException>:
40080050:	034800        	rsr.windowbase	a0
40080053:	4080f0        	rotw	-1
40080056:	03e620        	rsr.ps	a2
40080059:	343820        	extui	a3, a2, 8, 4
4008005c:	303340        	xor	a3, a3, a4
4008005f:	03d140        	rsr.excsave1	a4
40080062:	113380        	slli	a3, a3, 8
40080065:	302230        	xor	a2, a2, a3
40080068:	13e620        	wsr.ps	a2
4008006b:	002010        	rsync
4008006e:	ce74f7        	bbci	a4, 31, 40080040 <_WindowUnderflow4>
40080071:	4080f0        	rotw	-1
40080074:	4878e7        	bbci	a8, 30, 400800c0 <_WindowUnderflow8>
40080077:	4080f0        	rotw	-1
4008007a:	003086        	j	40080140 <_WindowUnderflow12>
4008007d:	0041f0        	break	1, 15

40080080 <_WindowOverflow8>:
40080080:	49c900        	s32e	a0, a9, -16
40080083:	09d100        	l32e	a0, a1, -12
40080086:	49d910        	s32e	a1, a9, -12
40080089:	49e920        	s32e	a2, a9, -8
4008008c:	49f930        	s32e	a3, a9, -4
4008008f:	498040        	s32e	a4, a0, -32
40080092:	499050        	s32e	a5, a0, -28
40080095:	49a060        	s32e	a6, a0, -24
40080098:	49b070        	s32e	a7, a0, -20
4008009b:	003400        	rfwo
4008009e:	0041f0        	break	1, 15
	...

400800c0 <_WindowUnderflow8>:
400800c0:	09c900        	l32e	a0, a9, -16
400800c3:	09d910        	l32e	a1, a9, -12
400800c6:	09e920        	l32e	a2, a9, -8
400800c9:	09d170        	l32e	a7, a1, -12
400800cc:	09f930        	l32e	a3, a9, -4
400800cf:	098740        	l32e	a4, a7, -32
400800d2:	099750        	l32e	a5, a7, -28
400800d5:	09a760        	l32e	a6, a7, -24
400800d8:	09b770        	l32e	a7, a7, -20
400800db:	003500        	rfwu
400800de:	0041f0        	break	1, 15
	...

40080100 <_WindowOverflow12>:
40080100:	49cd00        	s32e	a0, a13, -16
40080103:	09d100        	l32e	a0, a1, -12
40080106:	49dd10        	s32e	a1, a13, -12
40080109:	49ed20        	s32e	a2, a13, -8
4008010c:	49fd30        	s32e	a3, a13, -4
4008010f:	494040        	s32e	a4, a0, -48
40080112:	495050        	s32e	a5, a0, -44
40080115:	496060        	s32e	a6, a0, -40
40080118:	497070        	s32e	a7, a0, -36
4008011b:	498080        	s32e	a8, a0, -32
4008011e:	499090        	s32e	a9, a0, -28
40080121:	49a0a0        	s32e	a10, a0, -24
40080124:	49b0b0        	s32e	a11, a0, -20
40080127:	003400        	rfwo
4008012a:	0041f0        	break	1, 15
	...

40080140 <_WindowUnderflow12>:
40080140:	09cd00        	l32e	a0, a13, -16
40080143:	09dd10        	l32e	a1, a13, -12
40080146:	09ed20        	l32e	a2, a13, -8
40080149:	09d1b0        	l32e	a11, a1, -12
4008014c:	09fd30        	l32e	a3, a13, -4
4008014f:	094b40        	l32e	a4, a11, -48
40080152:	095b50        	l32e	a5, a11, -44
40080155:	096b60        	l32e	a6, a11, -40
40080158:	097b70        	l32e	a7, a11, -36
4008015b:	098b80        	l32e	a8, a11, -32
4008015e:	099b90        	l32e	a9, a11, -28
40080161:	09aba0        	l32e	a10, a11, -24
40080164:	09bbb0        	l32e	a11, a11, -20
40080167:	003500        	rfwu
4008016a:	0041f0        	break	1, 15
	...

40080180 <_Level2InterruptVector>:
40080180:	13d200        	wsr.excsave2	a0
40080183:	006e05        	call0	40080864 <__default_naked_level_2_interrupt>
40080186:	0041f0        	break	1, 15
	...

400801c0 <_Level3InterruptVector>:
400801c0:	13d300        	wsr.excsave3	a0
400801c3:	006f45        	call0	400808b8 <__default_naked_level_3_interrupt>
400801c6:	0041f0        	break	1, 15
	...

40080200 <_Level4InterruptVector>:
40080200:	13d400        	wsr.excsave4	a0
40080203:	007085        	call0	4008090c <__default_naked_level_4_interrupt>
40080206:	0041f0        	break	1, 15
	...

40080240 <_Level5InterruptVector>:
40080240:	13d500        	wsr.excsave5	a0
40080243:	0071c5        	call0	40080960 <__default_naked_level_5_interrupt>
40080246:	0041f0        	break	1, 15
	...

40080280 <_Level6InterruptVector>:
40080280:	13d600        	wsr.excsave6	a0
40080283:	007305        	call0	400809b4 <__default_naked_level_6_interrupt>
40080286:	0041f0        	break	1, 15
	...

400802c0 <_Level7InterruptVector>:
400802c0:	13d700        	wsr.excsave7	a0
400802c3:	007445        	call0	40080a08 <__default_naked_level_7_interrupt>
400802c6:	0041f0        	break	1, 15
	...

40080300 <_KernelExceptionVector>:
40080300:	13d100        	wsr.excsave1	a0
40080303:	03e800        	rsr.exccause	a0
40080306:	425026        	beqi	a0, 5, 4008034c <.AllocAException>
40080309:	004885        	call0	40080794 <__default_naked_exception>
4008030c:	0041f0        	break	1, 15
	...

40080340 <_UserExceptionVector>:
40080340:	13d100        	wsr.excsave1	a0
40080343:	03e800        	rsr.exccause	a0
40080346:	025026        	beqi	a0, 5, 4008034c <.AllocAException>
40080349:	004485        	call0	40080794 <__default_naked_exception>

4008034c <.AllocAException>:
4008034c:	ffd005        	call0	40080050 <_AllocAException>
4008034f:	0041f0        	break	1, 15
	...

400803c0 <_DoubleExceptionVector>:
400803c0:	13d100        	wsr.excsave1	a0
400803c3:	004485        	call0	4008080c <__default_naked_double_exception>
400803c6:	0041f0        	break	1, 15
	...

Disassembly of section .text:

400d0020 <_stext>:
400d0020:	f5f000        	extui	a15, a0, 16, 16
400d0023:	3f          	.byte 0x3f
400d0024:	ff          	.byte 0xff
400d0025:	ff          	.byte 0xff
400d0026:	ff          	.byte 0xff
400d0027:	7f          	.byte 0x7f
400d0028:	f018      	l32i.n	a1, a0, 60
400d002a:	1c3ff5        	call12	400ec428 <_etext+0x16d75>
400d002d:	3ff5f0        	f64cmph	a15, a5, a15, 3
400d0030:	f5f020        	extui	a15, a2, 16, 16
400d0033:	3f          	.byte 0x3f
400d0034:	ff          	.byte 0xff
400d0035:	ff          	.byte 0xff
400d0036:	800000        	add	a0, a0, a0
400d0039:	3f4000        	f64cmph	a4, a0, a0, 3
400d003c:	400070        	lsi	f7, a0, 0x100
400d003f:	3f          	.byte 0x3f
400d0040:	0d2760        	lsi	f6, a7, 52
400d0043:	00e840        	lsi	f4, a8, 0
400d0046:	403f40        	lsi	f4, a15, 0x100
400d0049:	000f42        	l8ui	a4, a15, 0
400d004c:	a51000        	extui	a1, a0, 16, 11
400d004f:	4e0cd4        	lsi	f13, a12, 0x138
400d0052:	400d      	lsi	f0, a0, 0
400d0054:	f5f010        	extui	a15, a1, 16, 16
400d0057:	3f          	.byte 0x3f
400d0058:	ff          	.byte 0xff
400d0059:	ff          	.byte 0xff
400d005a:	3f          	.byte 0x3f
400d005b:	f01400        	subx8	a1, a4, a0
400d005e:	003ff5        	call12	400d045c <_stext+0x43c>
400d0061:	400000        	ssr	a0
400d0064:	000000        	ill
400d0067:	000020        	lsi	f2, a0, 0
400d006a:	9c8000        	lsi	f0, a0, 0x270
400d006d:	3f4000        	f64cmph	a4, a0, a0, 3
400d0070:	000800        	lsi	f0, a8, 0
400d0073:	000000        	ill
400d0076:	1c0001        	l32r	a0, 40097078 <_text_heap_start+0x15350>
400d0079:	3ff400        	f64cmph	a15, a4, a0, 3
400d007c:	800000        	add	a0, a0, a0
400d007f:	000000        	ill
400d0082:	f43ff4        	lsi	f15, a15, 0x3d0
400d0085:	3f4000        	f64cmph	a4, a0, a0, 3
400d0088:	0d3774        	lsi	f7, a7, 52
400d008b:	250440        	extui	a0, a4, 20, 3
400d008e:	400d      	lsi	f0, a0, 0
400d0090:	0d1b04        	lsi	f0, a11, 52
400d0093:	017840        	slli	a7, a8, 28
400d0096:	1c3f40        	lsi	f4, a15, 112
400d0099:	3f4002        	s8i	a0, a0, 63
400d009c:	fb0000        	f64addc	a0, a0, 0, 0
400d009f:	3f          	.byte 0x3f
400d00a0:	010c      	movi.n	a1, 0
400d00a2:	a03f40        	addx4	a3, a15, a4
400d00a5:	3f4001        	l32r	a0, 4009fda8 <_text_heap_start+0x1e080>
400d00a8:	0d5310        	lsi	f1, a3, 52
400d00ab:	0f6040        	f64cmph	a6, a0, a4, 0
400d00ae:	400d      	lsi	f0, a0, 0
400d00b0:	5318      	l32i.n	a1, a3, 20
400d00b2:	400d      	lsi	f0, a0, 0
400d00b4:	f40010        	extui	a0, a1, 0, 16
400d00b7:	3f          	.byte 0x3f
400d00b8:	000c      	movi.n	a0, 0
400d00ba:	023ff4        	lsi	f15, a15, 8
400d00bd:	000070        	lsi	f7, a0, 0
400d00c0:	0c9c      	beqz.n	a12, 400d00d4 <_stext+0xb4>
400d00c2:	400d      	lsi	f0, a0, 0
400d00c4:	f5f064        	lsi	f6, a0, 0x3d4
400d00c7:	3f          	.byte 0x3f
400d00c8:	d83aa1        	l32r	a10, 400c61b0 <_text_heap_end+0x261b0>
400d00cb:	f04850        	subx8	a4, a8, a5
400d00ce:	343ff5        	call12	401044cc <_etext+0x2ee19>
400d00d1:	0f          	.byte 0xf
400d00d2:	400d      	lsi	f0, a0, 0
400d00d4:	06b8      	l32i.n	a11, a6, 0
400d00d6:	400d      	lsi	f0, a0, 0
400d00d8:	0d2620        	lsi	f2, a6, 52
400d00db:	01d040        	slli	a13, a0, 28
400d00de:	c03f40        	sub	a3, a15, a4
400d00e1:	3f4001        	l32r	a0, 4009fde4 <_text_heap_start+0x1e0bc>
400d00e4:	4001d4        	lsi	f13, a1, 0x100
400d00e7:	3f          	.byte 0x3f
400d00e8:	4001e4        	lsi	f14, a1, 0x100
400d00eb:	3f          	.byte 0x3f
400d00ec:	08f8      	l32i.n	a15, a8, 0
400d00ee:	400d      	lsi	f0, a0, 0
400d00f0:	010c      	movi.n	a1, 0
400d00f2:	043f40        	extui	a3, a4, 15, 1
400d00f5:	3f4002        	s8i	a0, a0, 63
400d00f8:	00ac      	beqz.n	a0, 400d011c <_stext+0xfc>
400d00fa:	d03f40        	subx2	a3, a15, a4
400d00fd:	3f4000        	f64cmph	a4, a0, a0, 3
400d0100:	00d8      	l32i.n	a13, a0, 0
400d0102:	c83f40        	lsi	f4, a15, 0x320
400d0105:	400d27        	bnone	a13, a2, 400d0149 <_stext+0x129>
400d0108:	f09c      	beqz.n	a0, 400d012b <_stext+0x10b>
400d010a:	a43ff5        	call12	40074508 <_stack_end_cpu0+0x74508>
400d010d:	3ff5f0        	f64cmph	a15, a5, a15, 3
400d0110:	400137        	bnone	a1, a3, 400d0154 <_stext+0x134>
400d0113:	3f          	.byte 0x3f
400d0114:	400164        	lsi	f6, a1, 0x100
400d0117:	3f          	.byte 0x3f
400d0118:	020c      	movi.n	a2, 0
400d011a:	ec3f40        	lsi	f4, a15, 0x3b0
400d011d:	400d27        	bnone	a13, a2, 400d0161 <_stext+0x141>
400d0120:	0c18      	l32i.n	a1, a12, 0
400d0122:	400d      	lsi	f0, a0, 0
400d0124:	009200        	all4	b0, b0:b1:b2:b3
400d0127:	000040        	lsi	f4, a0, 0
400d012a:	004000        	break	0, 0
400d012d:	3ff800        	f64cmph	a15, a8, a0, 3
400d0130:	f80000        	lsi	f0, a0, 0x3e0
400d0133:	3f          	.byte 0x3f
400d0134:	000000        	ill
400d0137:	000050        	lsi	f5, a0, 0
400d013a:	745000        	extui	a5, a0, 0, 8
400d013d:	0f          	.byte 0xf
400d013e:	400d      	lsi	f0, a0, 0
400d0140:	f480b0        	extui	a8, a11, 0, 16
400d0143:	3f          	.byte 0x3f
400d0144:	02bc      	beqz.n	a2, 400d0178 <_stext+0x158>
400d0146:	643f40        	extui	a3, a4, 15, 7
400d0149:	3f4003        	ssi	f0, a0, 252
400d014c:	f48070        	extui	a8, a7, 0, 16
400d014f:	3f          	.byte 0x3f
400d0150:	008534        	lsi	f3, a5, 0
400d0153:	feff40        	f64iter	a15, a15, a4, 3, 1
400d0156:	ff          	.byte 0xff
400d0157:	5c3b      	addi.n	a5, a12, 3
400d0159:	0e          	.byte 0xe
400d015a:	400d      	lsi	f0, a0, 0
400d015c:	f48050        	extui	a8, a5, 0, 16
400d015f:	3f          	.byte 0x3f
400d0160:	006000        	rsil	a0, 0
400d0163:	000000        	ill
400d0166:	ff          	.byte 0xff
400d0167:	7f          	.byte 0x7f
400d0168:	f068      	l32i.n	a6, a0, 60
400d016a:	ff3ff5        	call12	400cf568 <_text_heap_end+0x2f568>
400d016d:	8f          	.byte 0x8f
400d016e:	f08000        	subx8	a8, a0, a0
400d0171:	0249      	s32i.n	a4, a2, 0
400d0173:	800000        	add	a0, a0, a0
400d0176:	b30000        	movgez	a0, a0, a0
400d0179:	000081        	l32r	a8, 4009017c <_text_heap_start+0xe454>
400d017c:	f06c      	movi.n	a0, -17
400d017e:	283ff5        	call12	400f857c <_etext+0x22ec9>
400d0181:	0d0d      	mov.n	a0, a13
400d0183:	de8340        	f64iter	a8, a3, a4, 1, 1
400d0186:	431b      	addi.n	a4, a3, 1
400d0188:	400240        	lsi	f4, a2, 0x100
400d018b:	3f          	.byte 0x3f
400d018c:	02ac      	beqz.n	a2, 400d01b0 <_stext+0x190>
400d018e:	a43f40        	extui	a3, a4, 15, 11
400d0191:	3ff480        	f64cmph	a15, a4, a8, 3
400d0194:	808c      	beqz.n	a0, 400d01a0 <_stext+0x180>
400d0196:	ff3ff4        	lsi	f15, a15, 0x3fc
400d0199:	fffb      	addi.n	a15, a15, 15
400d019b:	7f          	.byte 0x7f
400d019c:	c4b400        	extui	a11, a0, 4, 13
400d019f:	5a0004        	mula.da.lh.lddec	m0, a0, m0, a0
400d01a2:	300262        	l8ui	a6, a2, 48
400d01a5:	400d53        	lsi	f5, a13, 0x100
400d01a8:	5338      	l32i.n	a3, a3, 20
400d01aa:	400d      	lsi	f0, a0, 0
400d01ac:	fb0001        	l32r	a0, 400cedac <_text_heap_end+0x2edac>
400d01af:	3f          	.byte 0x3f
400d01b0:	fb0000        	f64addc	a0, a0, 0, 0
400d01b3:	3f          	.byte 0x3f
400d01b4:	5308      	l32i.n	a0, a3, 20
400d01b6:	400d      	lsi	f0, a0, 0
400d01b8:	fb0000        	f64addc	a0, a0, 0, 0
400d01bb:	3f          	.byte 0x3f
400d01bc:	fb0000        	f64addc	a0, a0, 0, 0
400d01bf:	3f          	.byte 0x3f
400d01c0:	2708      	l32i.n	a0, a7, 8
400d01c2:	3c3f40        	lsi	f4, a15, 240
400d01c5:	4e          	.byte 0x4e
400d01c6:	400d      	lsi	f0, a0, 0
400d01c8:	080000        	lsx	f0, a0, a0
400d01cb:	094c40        	l32e	a4, a12, -48
400d01ce:	400d      	lsi	f0, a0, 0
400d01d0:	1048      	l32i.n	a4, a0, 4
400d01d2:	400d      	lsi	f0, a0, 0
400d01d4:	5398      	l32i.n	a9, a3, 20
400d01d6:	400d      	lsi	f0, a0, 0
400d01d8:	53a8      	l32i.n	a10, a3, 20
400d01da:	400d      	lsi	f0, a0, 0
400d01dc:	0d1ea0        	lsi	f10, a14, 52
400d01df:	1e3840        	f64sexp	a3, a8, a4
400d01e2:	400d      	lsi	f0, a0, 0
400d01e4:	04ac      	beqz.n	a4, 400d0208 <_stext+0x1e8>
400d01e6:	b83f40        	lsi	f4, a15, 0x2e0
400d01e9:	400d53        	lsi	f5, a13, 0x100
400d01ec:	4004b3        	lsi	f11, a4, 0x100
400d01ef:	3f          	.byte 0x3f
400d01f0:	04b8      	l32i.n	a11, a4, 0
400d01f2:	a03f40        	addx4	a3, a15, a4
400d01f5:	400d20        	lsi	f2, a13, 0x100
400d01f8:	04c8      	l32i.n	a12, a4, 0
400d01fa:	ca3f40        	float.s	f3, a15, 4
400d01fd:	3f4004        	lsi	f0, a0, 252
400d0200:	04cc      	bnez.n	a4, 400d0204 <_stext+0x1e4>
400d0202:	ce3f40        	f64iter	a3, a15, a4, 0, 1
400d0205:	3f4004        	lsi	f0, a0, 252
400d0208:	4004d0        	lsi	f13, a4, 0x100
400d020b:	3f          	.byte 0x3f
400d020c:	4004d2        	l8ui	a13, a4, 64
400d020f:	3f          	.byte 0x3f
400d0210:	4004d4        	lsi	f13, a4, 0x100
400d0213:	3f          	.byte 0x3f
400d0214:	4004d6        	bgez	a4, 400d0618 <_stext+0x5f8>
400d0217:	3f          	.byte 0x3f
400d0218:	04d8      	l32i.n	a13, a4, 0
400d021a:	da3f40        	ufloat.s	f3, a15, 4
400d021d:	3f4004        	lsi	f0, a0, 252
400d0220:	04dc      	bnez.n	a4, 400d0234 <_stext+0x214>
400d0222:	de3f40        	f64iter	a3, a15, a4, 1, 1
400d0225:	3f4004        	lsi	f0, a0, 252
400d0228:	4004e1        	l32r	a14, 400a0238 <_text_heap_end+0x238>
400d022b:	3f          	.byte 0x3f
400d022c:	4004e4        	lsi	f14, a4, 0x100
400d022f:	3f          	.byte 0x3f
400d0230:	4004e7        	bnone	a4, a14, 400d0274 <_stext+0x254>
400d0233:	3f          	.byte 0x3f
400d0234:	04ea      	add.n	a0, a4, a14
400d0236:	ed3f40        	lsi	f4, a15, 0x3b4
400d0239:	3f4004        	lsi	f0, a0, 252
400d023c:	4004f0        	lsi	f15, a4, 0x100
400d023f:	3f          	.byte 0x3f
400d0240:	4004f3        	lsi	f15, a4, 0x100
400d0243:	3f          	.byte 0x3f
400d0244:	04fb      	addi.n	a0, a4, 15
400d0246:	033f40        	lsi	f4, a15, 12
400d0249:	3f4005        	call0	4010f64c <_etext+0x39f99>
400d024c:	400507        	bnone	a5, a0, 400d0290 <_stext+0x270>
400d024f:	3f          	.byte 0x3f
400d0250:	0f          	.byte 0xf
400d0251:	3f4005        	call0	4010f654 <_etext+0x39fa1>
400d0254:	400515        	call4	401102a8 <_etext+0x3abf5>
400d0257:	3f          	.byte 0x3f
400d0258:	1e          	.byte 0x1e
400d0259:	3f4005        	call0	4010f65c <_etext+0x39fa9>
400d025c:	400527        	bnone	a5, a2, 400d02a0 <_stext+0x280>
400d025f:	3f          	.byte 0x3f
400d0260:	0529      	s32i.n	a2, a5, 0
400d0262:	2e3f40        	f64norm	a3, a15, a4, 0
400d0265:	3f4005        	call0	4010f668 <_etext+0x39fb5>
400d0268:	400533        	lsi	f3, a5, 0x100
400d026b:	3f          	.byte 0x3f
400d026c:	400535        	call12	401102c0 <_etext+0x3ac0d>
400d026f:	3f          	.byte 0x3f
400d0270:	400537        	bnone	a5, a3, 400d02b4 <_stext+0x294>
400d0273:	3f          	.byte 0x3f
400d0274:	0539      	s32i.n	a3, a5, 0
400d0276:	3b3f40        	ueq.s	b3, f15, f4
400d0279:	3f4005        	call0	4010f67c <_etext+0x39fc9>
400d027c:	400542        	l8ui	a4, a5, 64
400d027f:	3f          	.byte 0x3f
400d0280:	050b      	addi.n	a0, a5, -1
400d0282:	493f40        	s32e	a4, a15, -52
400d0285:	3f4005        	call0	4010f688 <_etext+0x39fd5>
400d0288:	054c      	movi.n	a5, 64
400d028a:	4f3f40        	f64cmph	a3, a15, a4, 4
400d028d:	3f4005        	call0	4010f690 <_etext+0x39fdd>
400d0290:	400551        	l32r	a5, 400a02a4 <_text_heap_end+0x2a4>
400d0293:	3f          	.byte 0x3f
400d0294:	400553        	lsi	f5, a5, 0x100
400d0297:	3f          	.byte 0x3f
400d0298:	400555        	call4	401102f0 <_etext+0x3ac3d>
400d029b:	3f          	.byte 0x3f
400d029c:	400557        	bnone	a5, a5, 400d02e0 <_stext+0x2c0>
400d029f:	3f          	.byte 0x3f
400d02a0:	0559      	s32i.n	a5, a5, 0
400d02a2:	5b3f40        	ult.s	b3, f15, f4
400d02a5:	3f4005        	call0	4010f6a8 <_etext+0x39ff5>
400d02a8:	055d      	mov.n	a5, a5
400d02aa:	5f3f40        	f64cmph	a3, a15, a4, 5
400d02ad:	3f4005        	call0	4010f6b0 <_etext+0x39ffd>
400d02b0:	400561        	l32r	a6, 400a02c4 <_text_heap_end+0x2c4>
400d02b3:	3f          	.byte 0x3f
400d02b4:	400563        	lsi	f6, a5, 0x100
400d02b7:	3f          	.byte 0x3f
400d02b8:	400566        	bnei	a5, -1, 400d02fc <_stext+0x2dc>
400d02bb:	3f          	.byte 0x3f
400d02bc:	0569      	s32i.n	a6, a5, 0
400d02be:	6c3f40        	lsi	f4, a15, 0x1b0
400d02c1:	3f4005        	call0	4010f6c4 <_etext+0x3a011>
400d02c4:	6f          	.byte 0x6f
400d02c5:	3f4005        	call0	4010f6c8 <_etext+0x3a015>
400d02c8:	400572        	l8ui	a7, a5, 64
400d02cb:	3f          	.byte 0x3f
400d02cc:	21ec      	bnez.n	a1, 400d02f2 <_stext+0x2d2>
400d02ce:	400d      	lsi	f0, a0, 0
400d02d0:	0578      	l32i.n	a7, a5, 0
400d02d2:	783f40        	lsi	f4, a15, 0x1e0
400d02d5:	4009      	s32i.n	a0, a0, 16
400d02d7:	3f          	.byte 0x3f
400d02d8:	0d5384        	lsi	f8, a3, 52
400d02db:	097c40        	l32e	a4, a12, -36
400d02de:	873f40        	lsi	f4, a15, 0x21c
400d02e1:	4009      	s32i.n	a0, a0, 16
400d02e3:	3f          	.byte 0x3f
400d02e4:	400992        	l8ui	a9, a9, 64
400d02e7:	3f          	.byte 0x3f
400d02e8:	099d      	mov.n	a9, a9
400d02ea:	a83f40        	lsi	f4, a15, 0x2a0
400d02ed:	4009      	s32i.n	a0, a0, 16
400d02ef:	3f          	.byte 0x3f
400d02f0:	4009b3        	lsi	f11, a9, 0x100
400d02f3:	3f          	.byte 0x3f
400d02f4:	be          	.byte 0xbe
400d02f5:	4009      	s32i.n	a0, a0, 16
400d02f7:	3f          	.byte 0x3f
400d02f8:	09c9      	s32i.n	a12, a9, 0
400d02fa:	d43f40        	extui	a3, a4, 15, 14
400d02fd:	4009      	s32i.n	a0, a0, 16
400d02ff:	3f          	.byte 0x3f
400d0300:	de          	.byte 0xde
400d0301:	4009      	s32i.n	a0, a0, 16
400d0303:	3f          	.byte 0x3f
400d0304:	09e8      	l32i.n	a14, a9, 0
400d0306:	f73f40        	lsi	f4, a15, 0x3dc
400d0309:	4009      	s32i.n	a0, a0, 16
400d030b:	3f          	.byte 0x3f
400d030c:	400a05        	call0	401103b0 <_etext+0x3acfd>
400d030f:	3f          	.byte 0x3f
400d0310:	0f          	.byte 0xf
400d0311:	400a      	add.n	a4, a0, a0
400d0313:	3f          	.byte 0x3f
400d0314:	0a1c      	movi.n	a10, 16
400d0316:	283f40        	lsi	f4, a15, 160
400d0319:	400a      	add.n	a4, a0, a0
400d031b:	3f          	.byte 0x3f
400d031c:	0a38      	l32i.n	a3, a10, 0
400d031e:	423f40        	xorb	b3, b15, b4
400d0321:	400a      	add.n	a4, a0, a0
400d0323:	3f          	.byte 0x3f
400d0324:	0a4c      	movi.n	a10, 64
400d0326:	563f40        	lsi	f4, a15, 0x158
400d0329:	400a      	add.n	a4, a0, a0
400d032b:	3f          	.byte 0x3f
400d032c:	400a65        	call8	401103d4 <_etext+0x3ad21>
400d032f:	3f          	.byte 0x3f
400d0330:	6f          	.byte 0x6f
400d0331:	400a      	add.n	a4, a0, a0
400d0333:	3f          	.byte 0x3f
400d0334:	0a78      	l32i.n	a7, a10, 0
400d0336:	303f40        	xor	a3, a15, a4
400d0339:	400a      	add.n	a4, a0, a0
400d033b:	3f          	.byte 0x3f
400d033c:	400a84        	lsi	f8, a10, 0x100
400d033f:	3f          	.byte 0x3f
400d0340:	400a96        	bltz	a10, 400d0744 <<esp_hal_common::timer::Timer<T> as embedded_hal::timer::CountDown>::start+0x8c>
400d0343:	3f          	.byte 0x3f
400d0344:	400aa4        	lsi	f10, a10, 0x100
400d0347:	3f          	.byte 0x3f
400d0348:	400ab6        	bltui	a10, 0x8000, 400d038c <_stext+0x36c>
400d034b:	3f          	.byte 0x3f
400d034c:	400ac4        	lsi	f12, a10, 0x100
400d034f:	3f          	.byte 0x3f
400d0350:	400ad2        	l8ui	a13, a10, 64
400d0353:	3f          	.byte 0x3f
400d0354:	400af0        	lsi	f15, a10, 0x100
400d0357:	3f          	.byte 0x3f
400d0358:	0af9      	s32i.n	a15, a10, 0
400d035a:	033f40        	lsi	f4, a15, 12
400d035d:	400b      	addi.n	a4, a0, -1
400d035f:	3f          	.byte 0x3f
400d0360:	400b15        	call4	40110414 <_etext+0x3ad61>
400d0363:	3f          	.byte 0x3f
400d0364:	400b21        	l32r	a2, 400a0390 <_text_heap_end+0x390>
400d0367:	3f          	.byte 0x3f
400d0368:	400b27        	bnone	a11, a2, 400d03ac <_stext+0x38c>
400d036b:	3f          	.byte 0x3f
400d036c:	0b38      	l32i.n	a3, a11, 0
400d036e:	463f40        	lsi	f4, a15, 0x118
400d0371:	400b      	addi.n	a4, a0, -1
400d0373:	3f          	.byte 0x3f
400d0374:	400b50        	lsi	f5, a11, 0x100
400d0377:	3f          	.byte 0x3f
400d0378:	400b57        	bnone	a11, a5, 400d03bc <_stext+0x39c>
400d037b:	3f          	.byte 0x3f
400d037c:	ff          	.byte 0xff
400d037d:	ff          	.byte 0xff
400d037e:	f26fc0        	rems	a6, a15, a12
400d0381:	002386        	j	400d0413 <_stext+0x3f3>
400d0384:	ff          	.byte 0xff
400d0385:	05f5e0        	extui	a15, a14, 21, 1
400d0388:	f5e100        	extui	a14, a0, 17, 16
400d038b:	851f05        	call0	4005557c <_stack_end_cpu0+0x5557c>
400d038e:	51eb      	addi.n	a5, a1, 14
400d0390:	400d06        	j	400e03c8 <_etext+0xad15>
400d0393:	3f          	.byte 0x3f
400d0394:	1759      	s32i.n	a5, a7, 4
400d0396:	ffd1b7        	bbs	a1, a11, 400d0399 <_stext+0x379>
400d0399:	3f          	.byte 0x3f
400d039a:	7b0000        	ule.s	b0, f0, f0
400d039d:	000014        	lsi	f1, a0, 0
400d03a0:	0f          	.byte 0xf
400d03a1:	000027        	bnone	a0, a2, 400d03a5 <_stext+0x385>
400d03a4:	002710        	lsi	f1, a7, 0
400d03a7:	fffc00        	f64cmph	a15, a12, a0, 15
400d03aa:	000000        	ill
400d03ad:	6fc100        	f64cmph	a12, a1, a0, 6
400d03b0:	0d4e24        	lsi	f2, a14, 52
400d03b3:	e40040        	extui	a0, a4, 0, 15
400d03b6:	540b      	addi.n	a5, a4, -1
400d03b8:	7a4000        	divn.s	f4, f0, f0
400d03bb:	5af310        	msub.s	f15, f3, f1
400d03be:	ce0000        	f64iter	a0, a0, a0, 0, 1
400d03c1:	400d      	lsi	f0, a0, 0
400d03c3:	3f          	.byte 0x3f
400d03c4:	0dec      	bnez.n	a13, 400d03e8 <_stext+0x3c8>
400d03c6:	203f40        	or	a3, a15, a4
400d03c9:	0d1b      	addi.n	a0, a13, 1
400d03cb:	000040        	lsi	f4, a0, 0
400d03ce:	0008      	l32i.n	a0, a0, 0
400d03d0:	361973        	lsi	f7, a9, 216
400d03d3:	f1e8      	l32i.n	a14, a1, 60
400d03d5:	9598f4        	lsi	f15, a8, 0x254
400d03d8:	0d53f0        	lsi	f15, a3, 52
400d03db:	b0d240        	addx8	a13, a2, a4
400d03de:	db4a      	add.n	a13, a11, a4
400d03e0:	3e          	.byte 0x3e
400d03e1:	760f25        	call8	401464d4 <_etext+0x70e21>
400d03e4:	913d      	lsi	f3, a1, 4
400d03e6:	58e460        	ssxp	f14, a4, a6
400d03e9:	000011        	l32r	a1, 400903ec <_text_heap_start+0xe6c4>
400d03ec:	180000        	lsxp	f0, a0, a0
400d03ef:	dcfb76        	lsi	f7, a11, 0x370
400d03f2:	7538      	l32i.n	a3, a5, 28
400d03f4:	0d1680        	lsi	f8, a6, 52
400d03f7:	4e5040        	f64rnd	a5, a0, a4, 0
400d03fa:	400d      	lsi	f0, a0, 0
400d03fc:	0dfc      	bnez.n	a13, 400d0430 <_stext+0x410>
400d03fe:	bc3f40        	lsi	f4, a15, 0x2f0
400d0401:	0d38      	l32i.n	a3, a13, 0
400d0403:	0d0440        	lsi	f4, a4, 52
400d0406:	f43f40        	extui	a3, a4, 15, 16
400d0409:	400c      	movi.n	a0, 4
400d040b:	3f          	.byte 0x3f
400d040c:	0d32d4        	lsi	f13, a2, 52
400d040f:	0dfc40        	lsi	f4, a12, 52
400d0412:	843f40        	extui	a3, a4, 15, 9
400d0415:	400d31        	l32r	a3, 400a044c <_text_heap_end+0x44c>
400d0418:	0d4e64        	lsi	f6, a14, 52
400d041b:	0f8440        	f64cmph	a8, a4, a4, 0
400d041e:	203f40        	or	a3, a15, a4
400d0421:	400d33        	lsi	f3, a13, 0x100
400d0424:	400ea0        	lsi	f10, a14, 0x100
400d0427:	3f          	.byte 0x3f
400d0428:	33b8      	l32i.n	a11, a3, 12
400d042a:	400d      	lsi	f0, a0, 0
400d042c:	400eb0        	lsi	f11, a14, 0x100
400d042f:	3f          	.byte 0x3f
400d0430:	400ec0        	lsi	f12, a14, 0x100
400d0433:	3f          	.byte 0x3f
400d0434:	4020b4        	lsi	f11, a0, 0x100
400d0437:	3f          	.byte 0x3f
400d0438:	1f08      	l32i.n	a0, a15, 4
400d043a:	400d      	lsi	f0, a0, 0
400d043c:	400ec3        	lsi	f12, a14, 0x100
400d043f:	3f          	.byte 0x3f
400d0440:	400ec5        	call0	40110530 <_etext+0x3ae7d>
400d0443:	3f          	.byte 0x3f
400d0444:	400ec7        	bnone	a14, a12, 400d0488 <_stext+0x468>
400d0447:	3f          	.byte 0x3f
400d0448:	0ec9      	s32i.n	a12, a14, 0
400d044a:	cc3f40        	lsi	f4, a15, 0x330
400d044d:	0e          	.byte 0xe
400d044e:	d43f40        	extui	a3, a4, 15, 14
400d0451:	0e          	.byte 0xe
400d0452:	d63f40        	lsi	f4, a15, 0x358
400d0455:	0e          	.byte 0xe
400d0456:	d83f40        	lsi	f4, a15, 0x360
400d0459:	0e          	.byte 0xe
400d045a:	dc3f40        	lsi	f4, a15, 0x370
400d045d:	0e          	.byte 0xe
400d045e:	ac3f40        	lsi	f4, a15, 0x2b0
400d0461:	0f          	.byte 0xf
400d0462:	9c3f40        	lsi	f4, a15, 0x270
400d0465:	0f          	.byte 0xf
400d0466:	bc3f40        	lsi	f4, a15, 0x2f0
400d0469:	0f          	.byte 0xf
400d046a:	a03f40        	addx4	a3, a15, a4
400d046d:	0f          	.byte 0xf
400d046e:	cc3f40        	lsi	f4, a15, 0x330
400d0471:	0f          	.byte 0xf
400d0472:	dc3f40        	lsi	f4, a15, 0x370
400d0475:	0f          	.byte 0xf
400d0476:	df3f40        	f64cmph	a3, a15, a4, 13
400d0479:	0f          	.byte 0xf
400d047a:	a73f40        	lsi	f4, a15, 0x29c
400d047d:	854432        	s8i	a3, a4, 133
400d0480:	a419      	s32i.n	a1, a4, 40
400d0482:	e0d802        	addmi	a0, a8, 0xffffe000
400d0485:	0f          	.byte 0xf
400d0486:	283f40        	lsi	f4, a15, 160
400d0489:	3f4010        	f64cmph	a4, a0, a1, 3
400d048c:	400fe4        	lsi	f14, a15, 0x100
400d048f:	3f          	.byte 0x3f
400d0490:	0d4650        	lsi	f5, a6, 52
400d0493:	103c40        	and	a3, a12, a4
400d0496:	d43f40        	extui	a3, a4, 15, 14
400d0499:	400d53        	lsi	f5, a13, 0x100
400d049c:	463c      	movi.n	a6, 52
400d049e:	400d      	lsi	f0, a0, 0
400d04a0:	104c      	movi.n	a0, 65
400d04a2:	553f40        	extui	a3, a4, 31, 6
400d04a5:	3f4010        	f64cmph	a4, a0, a1, 3
400d04a8:	105c      	movi.n	a0, 81
400d04aa:	6c3f40        	lsi	f4, a15, 0x1b0
400d04ad:	3f4010        	f64cmph	a4, a0, a1, 3
400d04b0:	401074        	lsi	f7, a0, 0x100
400d04b3:	3f          	.byte 0x3f
400d04b4:	401084        	lsi	f8, a0, 0x100
400d04b7:	3f          	.byte 0x3f
400d04b8:	401094        	lsi	f9, a0, 0x100
400d04bb:	3f          	.byte 0x3f
400d04bc:	4010a4        	lsi	f10, a0, 0x100
400d04bf:	3f          	.byte 0x3f
400d04c0:	4010b0        	lsi	f11, a0, 0x100
400d04c3:	3f          	.byte 0x3f
400d04c4:	400fe0        	lsi	f14, a15, 0x100
400d04c7:	3f          	.byte 0x3f
400d04c8:	0ecd      	mov.n	a12, a14
400d04ca:	013f40        	slli	a3, a15, 28
400d04cd:	010101        	l32r	a0, 400908d4 <_text_heap_start+0xebac>
400d04d0:	ff          	.byte 0xff
400d04d1:	00ff00        	lsi	f0, a15, 0
400d04d4:	010001        	l32r	a0, 400908d4 <_text_heap_start+0xebac>
400d04d7:	10c800        	and	a12, a8, a0
400d04da:	d03f40        	subx2	a3, a15, a4
400d04dd:	3f4010        	f64cmph	a4, a0, a1, 3
400d04e0:	2248      	l32i.n	a4, a2, 8
400d04e2:	400d      	lsi	f0, a0, 0
400d04e4:	0ed9      	s32i.n	a13, a14, 0
400d04e6:	da3f40        	ufloat.s	f3, a15, 4
400d04e9:	0e          	.byte 0xe
400d04ea:	783f40        	lsi	f4, a15, 0x1e0
400d04ed:	4009      	s32i.n	a0, a0, 16
400d04ef:	3f          	.byte 0x3f
400d04f0:	00ff00        	lsi	f0, a15, 0
400d04f3:	11a000        	slli	a10, a0, 16
400d04f6:	6c3f40        	lsi	f4, a15, 0x1b0
400d04f9:	400d33        	lsi	f3, a13, 0x100
400d04fc:	4010e0        	lsi	f14, a0, 0x100
400d04ff:	3f          	.byte 0x3f
400d0500:	4011b0        	lsi	f11, a1, 0x100
400d0503:	3f          	.byte 0x3f
400d0504:	020000        	andb	b0, b0, b0
400d0507:	01f000        	slli	a15, a0, 32
400d050a:	0e          	.byte 0xe
400d050b:	48c700        	ssx	f12, a7, a0
400d050e:	fffd      	lsi	f15, a15, 60
400d0510:	1fffe0        	f64cmph	a15, a15, a14, 1
400d0513:	a6e000        	lsi	f0, a0, 0x298
400d0516:	fe0002        	l8ui	a0, a0, 254
400d0519:	ff          	.byte 0xff
400d051a:	1f          	.byte 0x1f
400d051b:	b81e00        	lsi	f0, a14, 0x2e0
400d051e:	500002        	l8ui	a0, a0, 80
400d0521:	fffd31        	l32r	a3, 400d0518 <_stext+0x4f8>
400d0524:	fd0800        	lsi	f0, a8, 0x3f4
400d0527:	ff          	.byte 0xff
400d0528:	fff3e1        	l32r	a14, 400d04f4 <_stext+0x4d4>
400d052b:	ff          	.byte 0xff
400d052c:	fd0000        	lsi	f0, a0, 0x3f4
400d052f:	ff          	.byte 0xff
400d0530:	f1ff00        	lsi	f0, a15, 0x3c4
400d0533:	ff          	.byte 0xff
400d0534:	124b      	addi.n	a1, a2, 4
400d0536:	5ffff5        	call12	40130534 <_etext+0x5ae81>
400d0539:	3f4014        	lsi	f1, a0, 252
400d053c:	4014b3        	lsi	f11, a4, 0x100
400d053f:	3f          	.byte 0x3f
400d0540:	401573        	lsi	f7, a5, 0x100
400d0543:	3f          	.byte 0x3f
400d0544:	2bb8      	l32i.n	a11, a11, 8
400d0546:	400d      	lsi	f0, a0, 0
400d0548:	4011c0        	lsi	f12, a1, 0x100
400d054b:	3f          	.byte 0x3f
400d054c:	401210        	lsi	f1, a2, 0x100
400d054f:	3f          	.byte 0x3f
400d0550:	401330        	lsi	f3, a3, 0x100
400d0553:	3f          	.byte 0x3f
400d0554:	401734        	lsi	f3, a7, 0x100
400d0557:	3f          	.byte 0x3f
400d0558:	172c      	movi.n	a7, 33
400d055a:	ff3f40        	f64cmph	a3, a15, a4, 15
400d055d:	fe          	.byte 0xfe
400d055e:	fe          	.byte 0xfe
400d055f:	fe          	.byte 0xfe
400d0560:	808080        	add	a8, a0, a8
400d0563:	17c480        	lsi	f8, a4, 92
400d0566:	7c3f40        	lsi	f4, a15, 0x1f0
400d0569:	400d33        	lsi	f3, a13, 0x100
400d056c:	0d3330        	lsi	f3, a3, 52
400d056f:	33d040        	clamps	a13, a0, 11
400d0572:	400d      	lsi	f0, a0, 0
400d0574:	0d32e4        	lsi	f14, a2, 52
400d0577:	326c40        	orbc	b6, b12, b4
400d057a:	400d      	lsi	f0, a0, 0
400d057c:	0d3280        	lsi	f8, a2, 52
400d057f:	325c40        	orbc	b5, b12, b4
400d0582:	400d      	lsi	f0, a0, 0
400d0584:	324c      	movi.n	a2, 67
400d0586:	400d      	lsi	f0, a0, 0
400d0588:	0d32a4        	lsi	f10, a2, 52
400d058b:	183440        	lsxp	f3, a4, a4
400d058e:	d43f40        	extui	a3, a4, 15, 14
400d0591:	4018      	l32i.n	a1, a0, 16
400d0593:	3f          	.byte 0x3f
400d0594:	0d32b4        	lsi	f11, a2, 52
400d0597:	190440        	lsi	f4, a4, 100
400d059a:	143f40        	extui	a3, a4, 15, 2
400d059d:	4019      	s32i.n	a1, a0, 16
400d059f:	3f          	.byte 0x3f
400d05a0:	0d32c4        	lsi	f12, a2, 52
400d05a3:	194840        	lsi	f4, a8, 100
400d05a6:	583f40        	ssxp	f3, a15, a4
400d05a9:	4019      	s32i.n	a1, a0, 16
400d05ab:	3f          	.byte 0x3f
400d05ac:	0d3290        	lsi	f9, a2, 52
400d05af:	180040        	lsxp	f0, a0, a4
400d05b2:	f23f40        	rems	a3, a15, a4
400d05b5:	4019      	s32i.n	a1, a0, 16
400d05b7:	3f          	.byte 0x3f
400d05b8:	1c0000        	lsi	f0, a0, 112
400d05bb:	000000        	ill
400d05be:	f40011        	l32r	a1, 400cd5c0 <_text_heap_end+0x2d5c0>
400d05c1:	401a      	add.n	a4, a0, a1
400d05c3:	3f          	.byte 0x3f
400d05c4:	0d2d80        	lsi	f8, a13, 52
400d05c7:	415c40        	srli	a5, a4, 12
400d05ca:	400d      	lsi	f0, a0, 0
400d05cc:	1b1c      	movi.n	a11, 17
400d05ce:	d43f40        	extui	a3, a4, 15, 14
400d05d1:	3f4017        	ball	a0, a1, 400d0614 <_stext+0x5f4>
400d05d4:	1a88      	l32i.n	a8, a10, 4
400d05d6:	583f40        	ssxp	f3, a15, a4
400d05d9:	401a      	add.n	a4, a0, a1
400d05db:	3f          	.byte 0x3f
400d05dc:	1a78      	l32i.n	a7, a10, 4
400d05de:	1c3f40        	lsi	f4, a15, 112
400d05e1:	401a      	add.n	a4, a0, a1
400d05e3:	3f          	.byte 0x3f
400d05e4:	401a34        	lsi	f3, a10, 0x100
400d05e7:	3f          	.byte 0x3f
400d05e8:	401bf4        	lsi	f15, a11, 0x100
400d05eb:	3f          	.byte 0x3f
400d05ec:	401bc4        	lsi	f12, a11, 0x100
400d05ef:	3f          	.byte 0x3f
400d05f0:	278c      	beqz.n	a7, 400d05f6 <_stext+0x5d6>
400d05f2:	400d      	lsi	f0, a0, 0
400d05f4:	401be4        	lsi	f14, a11, 0x100
400d05f7:	3f          	.byte 0x3f
400d05f8:	ff          	.byte 0xff
400d05f9:	ff          	.byte 0xff
400d05fa:	1f          	.byte 0x1f
400d05fb:	1c7400        	lsi	f0, a4, 112
400d05fe:	d43f40        	extui	a3, a4, 15, 14
400d0601:	401b      	addi.n	a4, a0, 1
400d0603:	3f          	.byte 0x3f
400d0604:	ff          	.byte 0xff
400d0605:	ff          	.byte 0xff
400d0606:	ff          	.byte 0xff
400d0607:	537007        	bbci	a0, 16, 400d065e <_stext+0x63e>
400d060a:	400d      	lsi	f0, a0, 0
400d060c:	ff          	.byte 0xff
400d060d:	ff          	.byte 0xff
400d060e:	ff          	.byte 0xff
400d060f:	1f          	.byte 0x1f
400d0610:	0d2924        	lsi	f2, a9, 52
400d0613:	3b6040        	ueq.s	b6, f0, f4
400d0616:	400d      	lsi	f0, a0, 0
400d0618:	1f38      	l32i.n	a3, a15, 4
400d061a:	703f40        	lsi	f4, a15, 0x1c0
400d061d:	400d36        	entry	a13, 0x2000
400d0620:	2c98      	l32i.n	a9, a12, 8
400d0622:	400d      	lsi	f0, a0, 0
400d0624:	555555        	call4	40125b7c <_etext+0x504c9>
400d0627:	333355        	call4	4010395c <_etext+0x2e2a9>
400d062a:	0f3333        	lsi	f3, a3, 60
400d062d:	0f          	.byte 0xf
400d062e:	0f          	.byte 0xf
400d062f:	0f          	.byte 0xf
400d0630:	401fc4        	lsi	f12, a15, 0x100
400d0633:	3f          	.byte 0x3f
400d0634:	401fd4        	lsi	f13, a15, 0x100
400d0637:	3f          	.byte 0x3f
400d0638:	402174        	lsi	f7, a1, 0x100
400d063b:	3f          	.byte 0x3f
400d063c:	402164        	lsi	f6, a1, 0x100
400d063f:	3f          	.byte 0x3f
400d0640:	0d3b94        	lsi	f9, a11, 52
400d0643:	1fec40        	f64cmph	a14, a12, a4, 1
400d0646:	8c3f40        	lsi	f4, a15, 0x230
400d0649:	3f4020        	f64cmph	a4, a0, a2, 3
400d064c:	209c      	beqz.n	a0, 400d0662 <_stext+0x642>
400d064e:	843f40        	extui	a3, a4, 15, 9
400d0651:	3f4021        	l32r	a2, 400a0354 <_text_heap_end+0x354>
400d0654:	3df8      	l32i.n	a15, a13, 12
400d0656:	400d      	lsi	f0, a0, 0
400d0658:	402156        	bnez	a1, 400d0a5e <main+0x112>
400d065b:	3f          	.byte 0x3f
400d065c:	5e          	.byte 0x5e
400d065d:	3f4021        	l32r	a2, 400a0360 <_text_heap_end+0x360>
400d0660:	218c      	beqz.n	a1, 400d0666 <_stext+0x646>
400d0662:	903f40        	addx2	a3, a15, a4
400d0665:	3f4021        	l32r	a2, 400a0368 <_text_heap_end+0x368>
400d0668:	22e8      	l32i.n	a14, a2, 8
400d066a:	603f40        	lsi	f4, a15, 0x180
400d066d:	400d53        	lsi	f5, a13, 0x100
400d0670:	4df8      	l32i.n	a15, a13, 16
400d0672:	400d      	lsi	f0, a0, 0
400d0674:	21f8      	l32i.n	a15, a1, 8
400d0676:	c43f40        	extui	a3, a4, 15, 13
400d0679:	3f4021        	l32r	a2, 400a037c <_text_heap_end+0x37c>
400d067c:	4cec      	bnez.n	a12, 400d06a4 <_stext+0x684>
400d067e:	400d      	lsi	f0, a0, 0
400d0680:	2228      	l32i.n	a2, a2, 8
400d0682:	183f40        	lsxp	f3, a15, a4
400d0685:	3f4022        	s8i	a2, a0, 63
400d0688:	402254        	lsi	f5, a2, 0x100
400d068b:	3f          	.byte 0x3f
400d068c:	ff          	.byte 0xff
400d068d:	ff          	.byte 0xff
400d068e:	ff          	.byte 0xff
400d068f:	3f          	.byte 0x3f
400d0690:	f80000        	lsi	f0, a0, 0x3e0
400d0693:	ff          	.byte 0xff
400d0694:	f80000        	lsi	f0, a0, 0x3e0
400d0697:	3f          	.byte 0x3f
400d0698:	402360        	lsi	f6, a3, 0x100
400d069b:	3f          	.byte 0x3f
400d069c:	402260        	lsi	f6, a2, 0x100
400d069f:	3f          	.byte 0x3f
400d06a0:	0d2830        	lsi	f3, a8, 52
400d06a3:	414840        	srli	a4, a4, 8
400d06a6:	400d      	lsi	f0, a0, 0
400d06a8:	4e78      	l32i.n	a7, a14, 16
400d06aa:	400d      	lsi	f0, a0, 0
400d06ac:	0d5590        	lsi	f9, a5, 52
400d06af:	524840        	lsi	f4, a8, 0x148
400d06b2:	400d      	lsi	f0, a0, 0
400d06b4:	568c      	beqz.n	a6, 400d06bd <<esp_hal_common::timer::Timer<T> as embedded_hal::timer::CountDown>::start+0x5>
400d06b6:	400d      	lsi	f0, a0, 0

400d06b8 <<esp_hal_common::timer::Timer<T> as embedded_hal::timer::CountDown>::start>:
400d06b8:	004136        	entry	a1, 32
400d06bb:	fe5961        	l32r	a6, 400d0020 <_stext>
400d06be:	0020c0        	memw
400d06c1:	0688      	l32i.n	a8, a6, 0
400d06c3:	fe5891        	l32r	a9, 400d0024 <_stext+0x4>
400d06c6:	108890        	and	a8, a8, a9
400d06c9:	0020c0        	memw
400d06cc:	0689      	s32i.n	a8, a6, 0
400d06ce:	0020c0        	memw
400d06d1:	0688      	l32i.n	a8, a6, 0
400d06d3:	ffab92        	movi	a9, 0xfffffbff
400d06d6:	108890        	and	a8, a8, a9
400d06d9:	0020c0        	memw
400d06dc:	0689      	s32i.n	a8, a6, 0
400d06de:	fe5281        	l32r	a8, 400d0028 <_stext+0x8>
400d06e1:	090c      	movi.n	a9, 0
400d06e3:	0020c0        	memw
400d06e6:	0899      	s32i.n	a9, a8, 0
400d06e8:	fe5181        	l32r	a8, 400d002c <_stext+0xc>
400d06eb:	0020c0        	memw
400d06ee:	0899      	s32i.n	a9, a8, 0
400d06f0:	fe5081        	l32r	a8, 400d0030 <_stext+0x10>
400d06f3:	190c      	movi.n	a9, 1
400d06f5:	0020c0        	memw
400d06f8:	0899      	s32i.n	a9, a8, 0
400d06fa:	0288      	l32i.n	a8, a2, 0
400d06fc:	0020c0        	memw
400d06ff:	0698      	l32i.n	a9, a6, 0
400d0701:	41ad90        	srli	a10, a9, 13
400d0704:	fe4c91        	l32r	a9, 400d0034 <_stext+0x14>
400d0707:	109a90        	and	a9, a10, a9
400d070a:	0f39f6        	bgeui	a9, 3, 400d071d <<esp_hal_common::timer::Timer<T> as embedded_hal::timer::CountDown>::start+0x65>
400d070d:	119a00        	slli	a9, a10, 16
400d0710:	219e90        	srai	a9, a9, 14
400d0713:	fe4ca1        	l32r	a10, 400d0044 <_stext+0x24>
400d0716:	9a9a      	add.n	a9, a10, a9
400d0718:	0998      	l32i.n	a9, a9, 0
400d071a:	000086        	j	400d0720 <<esp_hal_common::timer::Timer<T> as embedded_hal::timer::CountDown>::start+0x68>
400d071d:	08d916        	beqz	a9, 400d07ae <<esp_hal_common::timer::Timer<T> as embedded_hal::timer::CountDown>::start+0xf6>
400d0720:	7f3897        	bltu	a8, a9, 400d07a3 <<esp_hal_common::timer::Timer<T> as embedded_hal::timer::CountDown>::start+0xeb>
400d0723:	fe4931        	l32r	a3, 400d0048 <_stext+0x28>
400d0726:	a2a430        	muluh	a10, a4, a3
400d0729:	82b530        	mull	a11, a5, a3
400d072c:	7aba      	add.n	a7, a10, a11
400d072e:	c2c890        	quou	a12, a8, a9
400d0731:	fe46a1        	l32r	a10, 400d004c <_stext+0x2c>
400d0734:	e8a0b2        	movi	a11, 232
400d0737:	0d0c      	movi.n	a13, 0
400d0739:	fe4551        	l32r	a5, 400d0050 <_stext+0x30>
400d073c:	0005e0        	callx8	a5
400d073f:	0acd      	mov.n	a12, a10
400d0741:	0bdd      	mov.n	a13, a11
400d0743:	82a430        	mull	a10, a4, a3
400d0746:	07bd      	mov.n	a11, a7
400d0748:	0005e0        	callx8	a5
400d074b:	fe4281        	l32r	a8, 400d0054 <_stext+0x34>
400d074e:	0020c0        	memw
400d0751:	08a9      	s32i.n	a10, a8, 0
400d0753:	fe4181        	l32r	a8, 400d0058 <_stext+0x38>
400d0756:	108b80        	and	a8, a11, a8
400d0759:	fe4091        	l32r	a9, 400d005c <_stext+0x3c>
400d075c:	0020c0        	memw
400d075f:	0989      	s32i.n	a8, a9, 0
400d0761:	0020c0        	memw
400d0764:	0688      	l32i.n	a8, a6, 0
400d0766:	fe3e91        	l32r	a9, 400d0060 <_stext+0x40>
400d0769:	208890        	or	a8, a8, a9
400d076c:	0020c0        	memw
400d076f:	0689      	s32i.n	a8, a6, 0
400d0771:	0020c0        	memw
400d0774:	0688      	l32i.n	a8, a6, 0
400d0776:	fe3b91        	l32r	a9, 400d0064 <_stext+0x44>
400d0779:	208890        	or	a8, a8, a9
400d077c:	0020c0        	memw
400d077f:	0689      	s32i.n	a8, a6, 0
400d0781:	0020c0        	memw
400d0784:	0688      	l32i.n	a8, a6, 0
400d0786:	fe3891        	l32r	a9, 400d0068 <_stext+0x48>
400d0789:	208890        	or	a8, a8, a9
400d078c:	0020c0        	memw
400d078f:	0689      	s32i.n	a8, a6, 0
400d0791:	0020c0        	memw
400d0794:	0688      	l32i.n	a8, a6, 0
400d0796:	00a492        	movi	a9, 0x400
400d0799:	208890        	or	a8, a8, a9
400d079c:	0020c0        	memw
400d079f:	0689      	s32i.n	a8, a6, 0
400d07a1:	f01d      	retw.n
400d07a3:	fe25a1        	l32r	a10, 400d0038 <_stext+0x18>
400d07a6:	9b1c      	movi.n	a11, 25
400d07a8:	fe31c1        	l32r	a12, 400d006c <_stext+0x4c>
400d07ab:	0001c6        	j	400d07b6 <<esp_hal_common::timer::Timer<T> as embedded_hal::timer::CountDown>::start+0xfe>
400d07ae:	fe22a1        	l32r	a10, 400d0038 <_stext+0x18>
400d07b1:	9b1c      	movi.n	a11, 25
400d07b3:	fe22c1        	l32r	a12, 400d003c <_stext+0x1c>
400d07b6:	fe2281        	l32r	a8, 400d0040 <_stext+0x20>
400d07b9:	0008e0        	callx8	a8
400d07bc:	0041f0        	break	1, 15
	...

400d07c0 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h8e6caf477792733eE.llvm.18208902720112032255>:
400d07c0:	006136        	entry	a1, 48
400d07c3:	080c      	movi.n	a8, 0
400d07c5:	0189      	s32i.n	a8, a1, 0
400d07c7:	04e3f6        	bgeui	a3, 128, 400d07cf <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h8e6caf477792733eE.llvm.18208902720112032255+0xf>
400d07ca:	190c      	movi.n	a9, 1
400d07cc:	002386        	j	400d085e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h8e6caf477792733eE.llvm.18208902720112032255+0x9e>
400d07cf:	fe2881        	l32r	a8, 400d0070 <_stext+0x50>
400d07d2:	1eb387        	bgeu	a3, a8, 400d07f4 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h8e6caf477792733eE.llvm.18208902720112032255+0x34>
400d07d5:	f83c      	movi.n	a8, 63
400d07d7:	108380        	and	a8, a3, a8
400d07da:	80a092        	movi	a9, 128
400d07dd:	208890        	or	a8, a8, a9
400d07e0:	014182        	s8i	a8, a1, 1
400d07e3:	418630        	srli	a8, a3, 6
400d07e6:	c0af92        	movi	a9, -64
400d07e9:	203890        	or	a3, a8, a9
400d07ec:	004132        	s8i	a3, a1, 0
400d07ef:	290c      	movi.n	a9, 2
400d07f1:	001a46        	j	400d085e <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h8e6caf477792733eE.llvm.18208902720112032255+0x9e>
400d07f4:	fe2081        	l32r	a8, 400d0074 <_stext+0x54>
400d07f7:	29b387        	bgeu	a3, a8, 400d0824 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h8e6caf477792733eE.llvm.18208902720112032255+0x64>
400d07fa:	f83c      	movi.n	a8, 63
400d07fc:	109380        	and	a9, a3, a8
400d07ff:	80a0a2        	movi	a10, 128
400d0802:	2099a0        	or	a9, a9, a10
400d0805:	024192        	s8i	a9, a1, 2
400d0808:	419c30        	srli	a9, a3, 12
400d080b:	0b6c      	movi.n	a11, -32
400d080d:	20b9b0        	or	a11, a9, a11
400d0810:	0041b2        	s8i	a11, a1, 0
400d0813:	419630        	srli	a9, a3, 6
400d0816:	108980        	and	a8, a9, a8
400d0819:	2088a0        	or	a8, a8, a10
400d081c:	014182        	s8i	a8, a1, 1
400d081f:	390c      	movi.n	a9, 3
400d0821:	000dc6        	j	400d085c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h8e6caf477792733eE.llvm.18208902720112032255+0x9c>
400d0824:	f83c      	movi.n	a8, 63
400d0826:	109380        	and	a9, a3, a8
400d0829:	80a0a2        	movi	a10, 128
400d082c:	2099a0        	or	a9, a9, a10
400d082f:	034192        	s8i	a9, a1, 3
400d0832:	291c      	movi.n	a9, 18
400d0834:	400900        	ssr	a9
400d0837:	919030        	srl	a9, a3
400d083a:	0b7c      	movi.n	a11, -16
400d083c:	20b9b0        	or	a11, a9, a11
400d083f:	0041b2        	s8i	a11, a1, 0
400d0842:	419630        	srli	a9, a3, 6
400d0845:	109980        	and	a9, a9, a8
400d0848:	2099a0        	or	a9, a9, a10
400d084b:	024192        	s8i	a9, a1, 2
400d084e:	419c30        	srli	a9, a3, 12
400d0851:	108980        	and	a8, a9, a8
400d0854:	2088a0        	or	a8, a8, a10
400d0857:	014182        	s8i	a8, a1, 1
400d085a:	490c      	movi.n	a9, 4
400d085c:	0b3d      	mov.n	a3, a11
400d085e:	00c182        	addi	a8, a1, 0
400d0861:	989a      	add.n	a9, a8, a9
400d0863:	fe05a1        	l32r	a10, 400d0078 <_stext+0x58>
400d0866:	fe05b1        	l32r	a11, 400d007c <_stext+0x5c>
400d0869:	ffa0c2        	movi	a12, 255
400d086c:	fe05d1        	l32r	a13, 400d0080 <_stext+0x60>
400d086f:	0020c0        	memw
400d0872:	0ae8      	l32i.n	a14, a10, 0
400d0874:	10eeb0        	and	a14, a14, a11
400d0877:	ff4e56        	bnez	a14, 400d086f <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h8e6caf477792733eE.llvm.18208902720112032255+0xaf>
400d087a:	10e3c0        	and	a14, a3, a12
400d087d:	0020c0        	memw
400d0880:	0de9      	s32i.n	a14, a13, 0
400d0882:	881b      	addi.n	a8, a8, 1
400d0884:	051897        	beq	a8, a9, 400d088d <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h8e6caf477792733eE.llvm.18208902720112032255+0xcd>
400d0887:	000832        	l8ui	a3, a8, 0
400d088a:	fff846        	j	400d086f <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h8e6caf477792733eE.llvm.18208902720112032255+0xaf>
400d088d:	020c      	movi.n	a2, 0
400d088f:	f01d      	retw.n
400d0891:	000000        	ill

400d0894 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h71303aa08ee66055E.llvm.18208902720112032255>:
400d0894:	008136        	entry	a1, 64
400d0897:	0288      	l32i.n	a8, a2, 0
400d0899:	0189      	s32i.n	a8, a1, 0
400d089b:	5388      	l32i.n	a8, a3, 20
400d089d:	6189      	s32i.n	a8, a1, 24
400d089f:	4388      	l32i.n	a8, a3, 16
400d08a1:	5189      	s32i.n	a8, a1, 20
400d08a3:	3388      	l32i.n	a8, a3, 12
400d08a5:	4189      	s32i.n	a8, a1, 16
400d08a7:	2388      	l32i.n	a8, a3, 8
400d08a9:	3189      	s32i.n	a8, a1, 12
400d08ab:	1388      	l32i.n	a8, a3, 4
400d08ad:	2189      	s32i.n	a8, a1, 8
400d08af:	0388      	l32i.n	a8, a3, 0
400d08b1:	1189      	s32i.n	a8, a1, 4
400d08b3:	00c1a2        	addi	a10, a1, 0
400d08b6:	fdf3b1        	l32r	a11, 400d0084 <_stext+0x64>
400d08b9:	04c1c2        	addi	a12, a1, 4
400d08bc:	fdf381        	l32r	a8, 400d0088 <_stext+0x68>
400d08bf:	0008e0        	callx8	a8
400d08c2:	0a2d      	mov.n	a2, a10
400d08c4:	f01d      	retw.n
	...

400d08c8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h9d9e221cec6733c8E.llvm.18208902720112032255>:
400d08c8:	004136        	entry	a1, 32
400d08cb:	023416        	beqz	a4, 400d08f2 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h9d9e221cec6733c8E.llvm.18208902720112032255+0x2a>
400d08ce:	fdea81        	l32r	a8, 400d0078 <_stext+0x58>
400d08d1:	fdea91        	l32r	a9, 400d007c <_stext+0x5c>
400d08d4:	fdeba1        	l32r	a10, 400d0080 <_stext+0x60>
400d08d7:	0020f0        	nop
400d08da:	148476        	loop	a4, 400d08f2 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h9d9e221cec6733c8E.llvm.18208902720112032255+0x2a>
400d08dd:	0003b2        	l8ui	a11, a3, 0
400d08e0:	0020c0        	memw
400d08e3:	08c8      	l32i.n	a12, a8, 0
400d08e5:	10cc90        	and	a12, a12, a9
400d08e8:	ff4c56        	bnez	a12, 400d08e0 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h9d9e221cec6733c8E.llvm.18208902720112032255+0x18>
400d08eb:	0020c0        	memw
400d08ee:	0ab9      	s32i.n	a11, a10, 0
400d08f0:	331b      	addi.n	a3, a3, 1
400d08f2:	020c      	movi.n	a2, 0
400d08f4:	f01d      	retw.n
	...

400d08f8 <hello_world::test>:
400d08f8:	00e136        	entry	a1, 112
400d08fb:	070c      	movi.n	a7, 0
400d08fd:	1179      	s32i.n	a7, a1, 4
400d08ff:	160c      	movi.n	a6, 1
400d0901:	0169      	s32i.n	a6, a1, 0
400d0903:	2179      	s32i.n	a7, a1, 8
400d0905:	00c1a2        	addi	a10, a1, 0
400d0908:	fde181        	l32r	a8, 400d008c <_stext+0x6c>
400d090b:	0008e0        	callx8	a8
400d090e:	71d9      	s32i.n	a13, a1, 28
400d0910:	61c9      	s32i.n	a12, a1, 24
400d0912:	51b9      	s32i.n	a11, a1, 20
400d0914:	41a9      	s32i.n	a10, a1, 16
400d0916:	fdde81        	l32r	a8, 400d0090 <_stext+0x70>
400d0919:	9189      	s32i.n	a8, a1, 36
400d091b:	10c182        	addi	a8, a1, 16
400d091e:	8189      	s32i.n	a8, a1, 32
400d0920:	44c182        	addi	a8, a1, 68
400d0923:	a189      	s32i.n	a8, a1, 40
400d0925:	106162        	s32i	a6, a1, 64
400d0928:	20c182        	addi	a8, a1, 32
400d092b:	f189      	s32i.n	a8, a1, 60
400d092d:	d179      	s32i.n	a7, a1, 52
400d092f:	280c      	movi.n	a8, 2
400d0931:	c189      	s32i.n	a8, a1, 48
400d0933:	fdd881        	l32r	a8, 400d0094 <_stext+0x74>
400d0936:	b189      	s32i.n	a8, a1, 44
400d0938:	28c1a2        	addi	a10, a1, 40
400d093b:	fdd7b1        	l32r	a11, 400d0098 <_stext+0x78>
400d093e:	2cc1c2        	addi	a12, a1, 44
400d0941:	fdd181        	l32r	a8, 400d0088 <_stext+0x68>
400d0944:	0008e0        	callx8	a8
400d0947:	f01d      	retw.n
400d0949:	000000        	ill

400d094c <main>:
400d094c:	00c136        	entry	a1, 96
400d094f:	070c      	movi.n	a7, 0
400d0951:	078d      	mov.n	a8, a7
400d0953:	61e480        	xsr.intenable	a8
400d0956:	002010        	rsync
400d0959:	fdd091        	l32r	a9, 400d009c <_stext+0x7c>
400d095c:	0009a2        	l8ui	a10, a9, 0
400d095f:	127a56        	bnez	a10, 400d0a8a <main+0x13e>
400d0962:	150c      	movi.n	a5, 1
400d0964:	004952        	s8i	a5, a9, 0
400d0967:	079d      	mov.n	a9, a7
400d0969:	61e490        	xsr.intenable	a9
400d096c:	208890        	or	a8, a8, a9
400d096f:	002010        	rsync
400d0972:	13e480        	wsr.intenable	a8
400d0975:	002010        	rsync
400d0978:	fdcc81        	l32r	a8, 400d00a8 <_stext+0x88>
400d097b:	0008e0        	callx8	a8
400d097e:	28c162        	addi	a6, a1, 40
400d0981:	fdca81        	l32r	a8, 400d00ac <_stext+0x8c>
400d0984:	06ad      	mov.n	a10, a6
400d0986:	0008e0        	callx8	a8
400d0989:	04c1a2        	addi	a10, a1, 4
400d098c:	fdc981        	l32r	a8, 400d00b0 <_stext+0x90>
400d098f:	06bd      	mov.n	a11, a6
400d0991:	0008e0        	callx8	a8
400d0994:	2188      	l32i.n	a8, a1, 8
400d0996:	5189      	s32i.n	a8, a1, 20
400d0998:	fdc781        	l32r	a8, 400d00b4 <_stext+0x94>
400d099b:	11a192        	movi	a9, 0x111
400d099e:	0020c0        	memw
400d09a1:	0899      	s32i.n	a9, a8, 0
400d09a3:	fdc591        	l32r	a9, 400d00b8 <_stext+0x98>
400d09a6:	0020c0        	memw
400d09a9:	0979      	s32i.n	a7, a9, 0
400d09ab:	fdc4a1        	l32r	a10, 400d00bc <_stext+0x9c>
400d09ae:	0020c0        	memw
400d09b1:	08a9      	s32i.n	a10, a8, 0
400d09b3:	0020c0        	memw
400d09b6:	0979      	s32i.n	a7, a9, 0
400d09b8:	fdc281        	l32r	a8, 400d00c0 <_stext+0xa0>
400d09bb:	0008e0        	callx8	a8
400d09be:	61a9      	s32i.n	a10, a1, 24
400d09c0:	fdc181        	l32r	a8, 400d00c4 <_stext+0xa4>
400d09c3:	fdc191        	l32r	a9, 400d00c8 <_stext+0xa8>
400d09c6:	0020c0        	memw
400d09c9:	0899      	s32i.n	a9, a8, 0
400d09cb:	fdc091        	l32r	a9, 400d00cc <_stext+0xac>
400d09ce:	0020c0        	memw
400d09d1:	0979      	s32i.n	a7, a9, 0
400d09d3:	0020c0        	memw
400d09d6:	0879      	s32i.n	a7, a8, 0
400d09d8:	18c1a2        	addi	a10, a1, 24
400d09db:	fdbd81        	l32r	a8, 400d00d0 <_stext+0xb0>
400d09de:	0008e0        	callx8	a8
400d09e1:	14c1a2        	addi	a10, a1, 20
400d09e4:	fd99c1        	l32r	a12, 400d0048 <_stext+0x28>
400d09e7:	fdbb81        	l32r	a8, 400d00d4 <_stext+0xb4>
400d09ea:	07dd      	mov.n	a13, a7
400d09ec:	0008e0        	callx8	a8
400d09ef:	fdba81        	l32r	a8, 400d00d8 <_stext+0xb8>
400d09f2:	0189      	s32i.n	a8, a1, 0
400d09f4:	8189      	s32i.n	a8, a1, 32
400d09f6:	fdb981        	l32r	a8, 400d00dc <_stext+0xbc>
400d09f9:	7189      	s32i.n	a8, a1, 28
400d09fb:	28c122        	addi	a2, a1, 40
400d09fe:	9129      	s32i.n	a2, a1, 36
400d0a00:	f159      	s32i.n	a5, a1, 60
400d0a02:	1cc182        	addi	a8, a1, 28
400d0a05:	e189      	s32i.n	a8, a1, 56
400d0a07:	c179      	s32i.n	a7, a1, 48
400d0a09:	230c      	movi.n	a3, 2
400d0a0b:	b139      	s32i.n	a3, a1, 44
400d0a0d:	fdb481        	l32r	a8, 400d00e0 <_stext+0xc0>
400d0a10:	a189      	s32i.n	a8, a1, 40
400d0a12:	24c1a2        	addi	a10, a1, 36
400d0a15:	fda061        	l32r	a6, 400d0098 <_stext+0x78>
400d0a18:	28c1c2        	addi	a12, a1, 40
400d0a1b:	fd9b41        	l32r	a4, 400d0088 <_stext+0x68>
400d0a1e:	06bd      	mov.n	a11, a6
400d0a20:	0004e0        	callx8	a4
400d0a23:	0188      	l32i.n	a8, a1, 0
400d0a25:	8189      	s32i.n	a8, a1, 32
400d0a27:	fdaf81        	l32r	a8, 400d00e4 <_stext+0xc4>
400d0a2a:	7189      	s32i.n	a8, a1, 28
400d0a2c:	9129      	s32i.n	a2, a1, 36
400d0a2e:	f159      	s32i.n	a5, a1, 60
400d0a30:	1cc182        	addi	a8, a1, 28
400d0a33:	e189      	s32i.n	a8, a1, 56
400d0a35:	c179      	s32i.n	a7, a1, 48
400d0a37:	b139      	s32i.n	a3, a1, 44
400d0a39:	fdab81        	l32r	a8, 400d00e8 <_stext+0xc8>
400d0a3c:	a189      	s32i.n	a8, a1, 40
400d0a3e:	24c1a2        	addi	a10, a1, 36
400d0a41:	28c1c2        	addi	a12, a1, 40
400d0a44:	06bd      	mov.n	a11, a6
400d0a46:	0004e0        	callx8	a4
400d0a49:	fda861        	l32r	a6, 400d00ec <_stext+0xcc>
400d0a4c:	0006e0        	callx8	a6
400d0a4f:	0006e0        	callx8	a6
400d0a52:	7129      	s32i.n	a2, a1, 28
400d0a54:	f179      	s32i.n	a7, a1, 60
400d0a56:	fda661        	l32r	a6, 400d00f0 <_stext+0xd0>
400d0a59:	e169      	s32i.n	a6, a1, 56
400d0a5b:	c179      	s32i.n	a7, a1, 48
400d0a5d:	b159      	s32i.n	a5, a1, 44
400d0a5f:	fda531        	l32r	a3, 400d00f4 <_stext+0xd4>
400d0a62:	a139      	s32i.n	a3, a1, 40
400d0a64:	1cc1a2        	addi	a10, a1, 28
400d0a67:	fd87b1        	l32r	a11, 400d0084 <_stext+0x64>
400d0a6a:	28c1c2        	addi	a12, a1, 40
400d0a6d:	0004e0        	callx8	a4
400d0a70:	036a16        	beqz	a10, 400d0aaa <main+0x15e>
400d0a73:	fda7a1        	l32r	a10, 400d0110 <_stext+0xf0>
400d0a76:	bb2c      	movi.n	a11, 43
400d0a78:	28c1c2        	addi	a12, a1, 40
400d0a7b:	fda6d1        	l32r	a13, 400d0114 <_stext+0xf4>
400d0a7e:	fda6e1        	l32r	a14, 400d0118 <_stext+0xf8>
400d0a81:	fda681        	l32r	a8, 400d011c <_stext+0xfc>
400d0a84:	0008e0        	callx8	a8
400d0a87:	0041f0        	break	1, 15
400d0a8a:	61e470        	xsr.intenable	a7
400d0a8d:	208870        	or	a8, a8, a7
400d0a90:	002010        	rsync
400d0a93:	13e480        	wsr.intenable	a8
400d0a96:	002010        	rsync
400d0a99:	fd81a1        	l32r	a10, 400d00a0 <_stext+0x80>
400d0a9c:	bb2c      	movi.n	a11, 43
400d0a9e:	fd81c1        	l32r	a12, 400d00a4 <_stext+0x84>
400d0aa1:	fd6781        	l32r	a8, 400d0040 <_stext+0x20>
400d0aa4:	0008e0        	callx8	a8
400d0aa7:	0041f0        	break	1, 15
400d0aaa:	fd5d21        	l32r	a2, 400d0020 <_stext>
400d0aad:	0020c0        	memw
400d0ab0:	0288      	l32i.n	a8, a2, 0
400d0ab2:	f97c      	movi.n	a9, -1
400d0ab4:	462987        	blt	a9, a8, 400d0afe <main+0x1b2>
400d0ab7:	fd9481        	l32r	a8, 400d0108 <_stext+0xe8>
400d0aba:	0020c0        	memw
400d0abd:	0888      	l32i.n	a8, a8, 0
400d0abf:	108850        	and	a8, a8, a5
400d0ac2:	fe7816        	beqz	a8, 400d0aad <main+0x161>
400d0ac5:	fd9181        	l32r	a8, 400d010c <_stext+0xec>
400d0ac8:	0020c0        	memw
400d0acb:	0859      	s32i.n	a5, a8, 0
400d0acd:	0020c0        	memw
400d0ad0:	0288      	l32i.n	a8, a2, 0
400d0ad2:	00a492        	movi	a9, 0x400
400d0ad5:	208890        	or	a8, a8, a9
400d0ad8:	0020c0        	memw
400d0adb:	0289      	s32i.n	a8, a2, 0
400d0add:	28c182        	addi	a8, a1, 40
400d0ae0:	7189      	s32i.n	a8, a1, 28
400d0ae2:	f179      	s32i.n	a7, a1, 60
400d0ae4:	e169      	s32i.n	a6, a1, 56
400d0ae6:	c179      	s32i.n	a7, a1, 48
400d0ae8:	b159      	s32i.n	a5, a1, 44
400d0aea:	a139      	s32i.n	a3, a1, 40
400d0aec:	1cc1a2        	addi	a10, a1, 28
400d0aef:	fd65b1        	l32r	a11, 400d0084 <_stext+0x64>
400d0af2:	28c1c2        	addi	a12, a1, 40
400d0af5:	0004e0        	callx8	a4
400d0af8:	fb1a16        	beqz	a10, 400d0aad <main+0x161>
400d0afb:	ffdd06        	j	400d0a73 <main+0x127>
400d0afe:	f179      	s32i.n	a7, a1, 60
400d0b00:	fd7e81        	l32r	a8, 400d00f8 <_stext+0xd8>
400d0b03:	e189      	s32i.n	a8, a1, 56
400d0b05:	c179      	s32i.n	a7, a1, 48
400d0b07:	b159      	s32i.n	a5, a1, 44
400d0b09:	fd7c81        	l32r	a8, 400d00fc <_stext+0xdc>
400d0b0c:	a189      	s32i.n	a8, a1, 40
400d0b0e:	28c1a2        	addi	a10, a1, 40
400d0b11:	fd7bb1        	l32r	a11, 400d0100 <_stext+0xe0>
400d0b14:	fd7c81        	l32r	a8, 400d0104 <_stext+0xe4>
400d0b17:	0008e0        	callx8	a8
400d0b1a:	0041f0        	break	1, 15
400d0b1d:	000000        	ill

400d0b20 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hfcbbce69520cf322E.llvm.18140158893863525499>:
400d0b20:	006136        	entry	a1, 48
400d0b23:	02a8      	l32i.n	a10, a2, 0
400d0b25:	080c      	movi.n	a8, 0
400d0b27:	0189      	s32i.n	a8, a1, 0
400d0b29:	07e3f6        	bgeui	a3, 128, 400d0b34 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hfcbbce69520cf322E.llvm.18140158893863525499+0x14>
400d0b2c:	004132        	s8i	a3, a1, 0
400d0b2f:	1c0c      	movi.n	a12, 1
400d0b31:	002386        	j	400d0bc3 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hfcbbce69520cf322E.llvm.18140158893863525499+0xa3>
400d0b34:	fd4f81        	l32r	a8, 400d0070 <_stext+0x50>
400d0b37:	1eb387        	bgeu	a3, a8, 400d0b59 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hfcbbce69520cf322E.llvm.18140158893863525499+0x39>
400d0b3a:	f83c      	movi.n	a8, 63
400d0b3c:	108380        	and	a8, a3, a8
400d0b3f:	80a092        	movi	a9, 128
400d0b42:	208890        	or	a8, a8, a9
400d0b45:	014182        	s8i	a8, a1, 1
400d0b48:	418630        	srli	a8, a3, 6
400d0b4b:	c0a092        	movi	a9, 192
400d0b4e:	208890        	or	a8, a8, a9
400d0b51:	004182        	s8i	a8, a1, 0
400d0b54:	2c0c      	movi.n	a12, 2
400d0b56:	001a46        	j	400d0bc3 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hfcbbce69520cf322E.llvm.18140158893863525499+0xa3>
400d0b59:	fd4681        	l32r	a8, 400d0074 <_stext+0x54>
400d0b5c:	2ab387        	bgeu	a3, a8, 400d0b8a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hfcbbce69520cf322E.llvm.18140158893863525499+0x6a>
400d0b5f:	f83c      	movi.n	a8, 63
400d0b61:	109380        	and	a9, a3, a8
400d0b64:	80a0b2        	movi	a11, 128
400d0b67:	2099b0        	or	a9, a9, a11
400d0b6a:	024192        	s8i	a9, a1, 2
400d0b6d:	419c30        	srli	a9, a3, 12
400d0b70:	e0a0c2        	movi	a12, 224
400d0b73:	2099c0        	or	a9, a9, a12
400d0b76:	004192        	s8i	a9, a1, 0
400d0b79:	419630        	srli	a9, a3, 6
400d0b7c:	108980        	and	a8, a9, a8
400d0b7f:	2088b0        	or	a8, a8, a11
400d0b82:	014182        	s8i	a8, a1, 1
400d0b85:	3c0c      	movi.n	a12, 3
400d0b87:	000e06        	j	400d0bc3 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17hfcbbce69520cf322E.llvm.18140158893863525499+0xa3>
400d0b8a:	f83c      	movi.n	a8, 63
400d0b8c:	109380        	and	a9, a3, a8
400d0b8f:	80a0b2        	movi	a11, 128
400d0b92:	2099b0        	or	a9, a9, a11
400d0b95:	034192        	s8i	a9, a1, 3
400d0b98:	291c      	movi.n	a9, 18
400d0b9a:	400900        	ssr	a9
400d0b9d:	919030        	srl	a9, a3
400d0ba0:	f0a0c2        	movi	a12, 240
400d0ba3:	2099c0        	or	a9, a9, a12
400d0ba6:	004192        	s8i	a9, a1, 0
400d0ba9:	419630        	srli	a9, a3, 6
400d0bac:	109980        	and	a9, a9, a8
400d0baf:	2099b0        	or	a9, a9, a11
400d0bb2:	024192        	s8i	a9, a1, 2
400d0bb5:	419c30        	srli	a9, a3, 12
400d0bb8:	108980        	and	a8, a9, a8
400d0bbb:	2088b0        	or	a8, a8, a11
400d0bbe:	014182        	s8i	a8, a1, 1
400d0bc1:	4c0c      	movi.n	a12, 4
400d0bc3:	00c1b2        	addi	a11, a1, 0
400d0bc6:	fd5681        	l32r	a8, 400d0120 <_stext+0x100>
400d0bc9:	0008e0        	callx8	a8
400d0bcc:	0a2d      	mov.n	a2, a10
400d0bce:	f01d      	retw.n

400d0bd0 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17he42a2c2b9aef8717E.llvm.18140158893863525499>:
400d0bd0:	008136        	entry	a1, 64
400d0bd3:	0288      	l32i.n	a8, a2, 0
400d0bd5:	0189      	s32i.n	a8, a1, 0
400d0bd7:	5388      	l32i.n	a8, a3, 20
400d0bd9:	6189      	s32i.n	a8, a1, 24
400d0bdb:	4388      	l32i.n	a8, a3, 16
400d0bdd:	5189      	s32i.n	a8, a1, 20
400d0bdf:	3388      	l32i.n	a8, a3, 12
400d0be1:	4189      	s32i.n	a8, a1, 16
400d0be3:	2388      	l32i.n	a8, a3, 8
400d0be5:	3189      	s32i.n	a8, a1, 12
400d0be7:	1388      	l32i.n	a8, a3, 4
400d0be9:	2189      	s32i.n	a8, a1, 8
400d0beb:	0388      	l32i.n	a8, a3, 0
400d0bed:	1189      	s32i.n	a8, a1, 4
400d0bef:	00c1a2        	addi	a10, a1, 0
400d0bf2:	fd29b1        	l32r	a11, 400d0098 <_stext+0x78>
400d0bf5:	04c1c2        	addi	a12, a1, 4
400d0bf8:	fd2481        	l32r	a8, 400d0088 <_stext+0x68>
400d0bfb:	0008e0        	callx8	a8
400d0bfe:	0a2d      	mov.n	a2, a10
400d0c00:	f01d      	retw.n
	...

400d0c04 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17ha4ce7563b0712dedE.llvm.18140158893863525499>:
400d0c04:	004136        	entry	a1, 32
400d0c07:	02a8      	l32i.n	a10, a2, 0
400d0c09:	fd4581        	l32r	a8, 400d0120 <_stext+0x100>
400d0c0c:	03bd      	mov.n	a11, a3
400d0c0e:	04cd      	mov.n	a12, a4
400d0c10:	0008e0        	callx8	a8
400d0c13:	0a2d      	mov.n	a2, a10
400d0c15:	f01d      	retw.n
	...

400d0c18 <<esp_println::Printer as core::fmt::Write>::write_str>:
400d0c18:	004136        	entry	a1, 32
400d0c1b:	00f416        	beqz	a4, 400d0c2e <<esp_println::Printer as core::fmt::Write>::write_str+0x16>
400d0c1e:	fd4171        	l32r	a7, 400d0124 <_stext+0x104>
400d0c21:	0003a2        	l8ui	a10, a3, 0
400d0c24:	0007e0        	callx8	a7
400d0c27:	331b      	addi.n	a3, a3, 1
400d0c29:	440b      	addi.n	a4, a4, -1
400d0c2b:	ff2456        	bnez	a4, 400d0c21 <<esp_println::Printer as core::fmt::Write>::write_str+0x9>
400d0c2e:	020c      	movi.n	a2, 0
400d0c30:	f01d      	retw.n
	...

400d0c34 <ESP32Reset>:
400d0c34:	004136        	entry	a1, 32
400d0c37:	fd3c81        	l32r	a8, 400d0128 <_stext+0x108>
400d0c3a:	00a002        	movi	a0, 0
400d0c3d:	201880        	or	a1, a8, a8
400d0c40:	fd3bb1        	l32r	a11, 400d012c <_stext+0x10c>
400d0c43:	fd3ba1        	l32r	a10, 400d0130 <_stext+0x110>
400d0c46:	f97c      	movi.n	a9, -1
400d0c48:	080c      	movi.n	a8, 0
400d0c4a:	20bab7        	bgeu	a10, a11, 400d0c6e <ESP32Reset+0x3a>
400d0c4d:	30ca90        	xor	a12, a10, a9
400d0c50:	da4b      	addi.n	a13, a10, 4
400d0c52:	013db7        	bltu	a13, a11, 400d0c57 <ESP32Reset+0x23>
400d0c55:	0dbd      	mov.n	a11, a13
400d0c57:	bcba      	add.n	a11, a12, a11
400d0c59:	41b2b0        	srli	a11, a11, 2
400d0c5c:	bb1b      	addi.n	a11, a11, 1
400d0c5e:	0020f0        	nop
400d0c61:	0020f0        	nop
400d0c64:	068b76        	loop	a11, 400d0c6e <ESP32Reset+0x3a>
400d0c67:	0020c0        	memw
400d0c6a:	0a89      	s32i.n	a8, a10, 0
400d0c6c:	aa4b      	addi.n	a10, a10, 4
400d0c6e:	fd31b1        	l32r	a11, 400d0134 <_stext+0x114>
400d0c71:	fd31a1        	l32r	a10, 400d0138 <_stext+0x118>
400d0c74:	1abab7        	bgeu	a10, a11, 400d0c92 <ESP32Reset+0x5e>
400d0c77:	309a90        	xor	a9, a10, a9
400d0c7a:	ca4b      	addi.n	a12, a10, 4
400d0c7c:	013cb7        	bltu	a12, a11, 400d0c81 <ESP32Reset+0x4d>
400d0c7f:	0cbd      	mov.n	a11, a12
400d0c81:	99ba      	add.n	a9, a9, a11
400d0c83:	419290        	srli	a9, a9, 2
400d0c86:	991b      	addi.n	a9, a9, 1
400d0c88:	068976        	loop	a9, 400d0c92 <ESP32Reset+0x5e>
400d0c8b:	0020c0        	memw
400d0c8e:	0a89      	s32i.n	a8, a10, 0
400d0c90:	aa4b      	addi.n	a10, a10, 4
400d0c92:	fd2a81        	l32r	a8, 400d013c <_stext+0x11c>
400d0c95:	0008e0        	callx8	a8
400d0c98:	0041f0        	break	1, 15
	...

400d0c9c <esp_hal_common::rtc_cntl::Rtc::new>:
400d0c9c:	006136        	entry	a1, 48
400d0c9f:	fd2881        	l32r	a8, 400d0140 <_stext+0x120>
400d0ca2:	0020c0        	memw
400d0ca5:	0888      	l32i.n	a8, a8, 0
400d0ca7:	091c      	movi.n	a9, 16
400d0ca9:	400900        	ssr	a9
400d0cac:	919080        	srl	a9, a8
400d0caf:	a81b      	addi.n	a10, a8, 1
400d0cb1:	0d2ab6        	bltui	a10, 2, 400d0cc2 <esp_hal_common::rtc_cntl::Rtc::new+0x26>
400d0cb4:	fce0a1        	l32r	a10, 400d0034 <_stext+0x14>
400d0cb7:	1088a0        	and	a8, a8, a10
400d0cba:	049897        	bne	a8, a9, 400d0cc2 <esp_hal_common::rtc_cntl::Rtc::new+0x26>
400d0cbd:	892c      	movi.n	a9, 40
400d0cbf:	549897        	bne	a8, a9, 400d0d17 <esp_hal_common::rtc_cntl::Rtc::new+0x7b>
400d0cc2:	fd2241        	l32r	a4, 400d014c <_stext+0x12c>
400d0cc5:	0020c0        	memw
400d0cc8:	0488      	l32i.n	a8, a4, 0
400d0cca:	fce691        	l32r	a9, 400d0064 <_stext+0x44>
400d0ccd:	208890        	or	a8, a8, a9
400d0cd0:	0020c0        	memw
400d0cd3:	0489      	s32i.n	a8, a4, 0
400d0cd5:	3a0c      	movi.n	a10, 3
400d0cd7:	fd1e81        	l32r	a8, 400d0150 <_stext+0x130>
400d0cda:	0189      	s32i.n	a8, a1, 0
400d0cdc:	0008e0        	callx8	a8
400d0cdf:	fd1d21        	l32r	a2, 400d0154 <_stext+0x134>
400d0ce2:	2ca172        	movi	a7, 0x12c
400d0ce5:	060c      	movi.n	a6, 0
400d0ce7:	00a452        	movi	a5, 0x400
400d0cea:	fd1b31        	l32r	a3, 400d0158 <_stext+0x138>
400d0ced:	0020c0        	memw
400d0cf0:	0488      	l32i.n	a8, a4, 0
400d0cf2:	108820        	and	a8, a8, a2
400d0cf5:	0020c0        	memw
400d0cf8:	0489      	s32i.n	a8, a4, 0
400d0cfa:	07ad      	mov.n	a10, a7
400d0cfc:	0188      	l32i.n	a8, a1, 0
400d0cfe:	0008e0        	callx8	a8
400d0d01:	06ad      	mov.n	a10, a6
400d0d03:	05bd      	mov.n	a11, a5
400d0d05:	0003e0        	callx8	a3
400d0d08:	fe1a16        	beqz	a10, 400d0ced <esp_hal_common::rtc_cntl::Rtc::new+0x51>
400d0d0b:	fd1481        	l32r	a8, 400d015c <_stext+0x13c>
400d0d0e:	0020c0        	memw
400d0d11:	08a9      	s32i.n	a10, a8, 0
400d0d13:	420c      	movi.n	a2, 4
400d0d15:	f01d      	retw.n
400d0d17:	fd0ba1        	l32r	a10, 400d0144 <_stext+0x124>
400d0d1a:	4b5c      	movi.n	a11, 84
400d0d1c:	fd0bc1        	l32r	a12, 400d0148 <_stext+0x128>
400d0d1f:	fcc881        	l32r	a8, 400d0040 <_stext+0x20>
400d0d22:	0008e0        	callx8	a8
400d0d25:	0041f0        	break	1, 15

400d0d28 <_ZN14esp_hal_common8rtc_cntl8RtcClock18calibrate_internal17hfd8ee0b38465c958E.llvm.10704473388258232010>:
400d0d28:	006136        	entry	a1, 48
400d0d2b:	03ad      	mov.n	a10, a3
400d0d2d:	ffa082        	movi	a8, 255
400d0d30:	108280        	and	a8, a2, a8
400d0d33:	0d0c      	movi.n	a13, 0
400d0d35:	1b0c      	movi.n	a11, 1
400d0d37:	290c      	movi.n	a9, 2
400d0d39:	0bed      	mov.n	a14, a11
400d0d3b:	011897        	beq	a8, a9, 400d0d40 <_ZN14esp_hal_common8rtc_cntl8RtcClock18calibrate_internal17hfd8ee0b38465c958E.llvm.10704473388258232010+0x18>
400d0d3e:	0ded      	mov.n	a14, a13
400d0d40:	fd0351        	l32r	a5, 400d014c <_stext+0x12c>
400d0d43:	0020c0        	memw
400d0d46:	05f8      	l32i.n	a15, a5, 0
400d0d48:	00a1c2        	movi	a12, 0x100
400d0d4b:	10ffc0        	and	a15, a15, a12
400d0d4e:	31f9      	s32i.n	a15, a1, 12
400d0d50:	011fd7        	beq	a15, a13, 400d0d55 <_ZN14esp_hal_common8rtc_cntl8RtcClock18calibrate_internal17hfd8ee0b38465c958E.llvm.10704473388258232010+0x2d>
400d0d53:	0dbd      	mov.n	a11, a13
400d0d55:	10beb0        	and	a11, a14, a11
400d0d58:	005b56        	bnez	a11, 400d0d61 <_ZN14esp_hal_common8rtc_cntl8RtcClock18calibrate_internal17hfd8ee0b38465c958E.llvm.10704473388258232010+0x39>
400d0d5b:	171866        	bnei	a8, 1, 400d0d76 <_ZN14esp_hal_common8rtc_cntl8RtcClock18calibrate_internal17hfd8ee0b38465c958E.llvm.10704473388258232010+0x4e>
400d0d5e:	00a2c2        	movi	a12, 0x200
400d0d61:	0020c0        	memw
400d0d64:	05d8      	l32i.n	a13, a5, 0
400d0d66:	20cdc0        	or	a12, a13, a12
400d0d69:	0020c0        	memw
400d0d6c:	05c9      	s32i.n	a12, a5, 0
400d0d6e:	1c0c      	movi.n	a12, 1
400d0d70:	30bbc0        	xor	a11, a11, a12
400d0d73:	000046        	j	400d0d78 <_ZN14esp_hal_common8rtc_cntl8RtcClock18calibrate_internal17hfd8ee0b38465c958E.llvm.10704473388258232010+0x50>
400d0d76:	0b0c      	movi.n	a11, 0
400d0d78:	21b9      	s32i.n	a11, a1, 8
400d0d7a:	11b230        	slli	a11, a2, 13
400d0d7d:	fcf8c1        	l32r	a12, 400d0160 <_stext+0x140>
400d0d80:	10bbc0        	and	a11, a11, a12
400d0d83:	11ca00        	slli	a12, a10, 16
400d0d86:	fcf7d1        	l32r	a13, 400d0164 <_stext+0x144>
400d0d89:	10ccd0        	and	a12, a12, a13
400d0d8c:	20bcb0        	or	a11, a12, a11
400d0d8f:	fcf641        	l32r	a4, 400d0168 <_stext+0x148>
400d0d92:	0020c0        	memw
400d0d95:	04c8      	l32i.n	a12, a4, 0
400d0d97:	fcf5d1        	l32r	a13, 400d016c <_stext+0x14c>
400d0d9a:	10ccd0        	and	a12, a12, a13
400d0d9d:	20bbc0        	or	a11, a11, a12
400d0da0:	0020c0        	memw
400d0da3:	04b9      	s32i.n	a11, a4, 0
400d0da5:	0020c0        	memw
400d0da8:	04b8      	l32i.n	a11, a4, 0
400d0daa:	fcafc1        	l32r	a12, 400d0068 <_stext+0x48>
400d0dad:	20bbc0        	or	a11, a11, a12
400d0db0:	0020c0        	memw
400d0db3:	04b9      	s32i.n	a11, a4, 0
400d0db5:	fcef61        	l32r	a6, 400d0174 <_stext+0x154>
400d0db8:	06bd      	mov.n	a11, a6
400d0dba:	021897        	beq	a8, a9, 400d0dc0 <_ZN14esp_hal_common8rtc_cntl8RtcClock18calibrate_internal17hfd8ee0b38465c958E.llvm.10704473388258232010+0x98>
400d0dbd:	fcecb1        	l32r	a11, 400d0170 <_stext+0x150>
400d0dc0:	190c      	movi.n	a9, 1
400d0dc2:	1199      	s32i.n	a9, a1, 4
400d0dc4:	029897        	bne	a8, a9, 400d0dca <_ZN14esp_hal_common8rtc_cntl8RtcClock18calibrate_internal17hfd8ee0b38465c958E.llvm.10704473388258232010+0xa2>
400d0dc7:	fcecb1        	l32r	a11, 400d0178 <_stext+0x158>
400d0dca:	fc9f81        	l32r	a8, 400d0048 <_stext+0x28>
400d0dcd:	828a80        	mull	a8, a10, a8
400d0dd0:	c278b0        	quou	a7, a8, a11
400d0dd3:	fcdf31        	l32r	a3, 400d0150 <_stext+0x130>
400d0dd6:	07ad      	mov.n	a10, a7
400d0dd8:	0003e0        	callx8	a3
400d0ddb:	0020c0        	memw
400d0dde:	0488      	l32i.n	a8, a4, 0
400d0de0:	108860        	and	a8, a8, a6
400d0de3:	01d856        	bnez	a8, 400d0e04 <_ZN14esp_hal_common8rtc_cntl8RtcClock18calibrate_internal17hfd8ee0b38465c958E.llvm.10704473388258232010+0xdc>
400d0de6:	080c      	movi.n	a8, 0
400d0de8:	0189      	s32i.n	a8, a1, 0
400d0dea:	160c      	movi.n	a6, 1
400d0dec:	fce221        	l32r	a2, 400d0174 <_stext+0x154>
400d0def:	025716        	beqz	a7, 400d0e18 <_ZN14esp_hal_common8rtc_cntl8RtcClock18calibrate_internal17hfd8ee0b38465c958E.llvm.10704473388258232010+0xf0>
400d0df2:	06ad      	mov.n	a10, a6
400d0df4:	0003e0        	callx8	a3
400d0df7:	0020c0        	memw
400d0dfa:	0488      	l32i.n	a8, a4, 0
400d0dfc:	108820        	and	a8, a8, a2
400d0dff:	770b      	addi.n	a7, a7, -1
400d0e01:	fea816        	beqz	a8, 400d0def <_ZN14esp_hal_common8rtc_cntl8RtcClock18calibrate_internal17hfd8ee0b38465c958E.llvm.10704473388258232010+0xc7>
400d0e04:	fcde81        	l32r	a8, 400d017c <_stext+0x15c>
400d0e07:	0020c0        	memw
400d0e0a:	0888      	l32i.n	a8, a8, 0
400d0e0c:	412780        	srli	a2, a8, 7
400d0e0f:	31a8      	l32i.n	a10, a1, 12
400d0e11:	21b8      	l32i.n	a11, a1, 8
400d0e13:	11c8      	l32i.n	a12, a1, 4
400d0e15:	0001c6        	j	400d0e20 <_ZN14esp_hal_common8rtc_cntl8RtcClock18calibrate_internal17hfd8ee0b38465c958E.llvm.10704473388258232010+0xf8>
400d0e18:	31a8      	l32i.n	a10, a1, 12
400d0e1a:	21b8      	l32i.n	a11, a1, 8
400d0e1c:	11c8      	l32i.n	a12, a1, 4
400d0e1e:	0128      	l32i.n	a2, a1, 0
400d0e20:	0020c0        	memw
400d0e23:	0488      	l32i.n	a8, a4, 0
400d0e25:	fc7f91        	l32r	a9, 400d0024 <_stext+0x4>
400d0e28:	108890        	and	a8, a8, a9
400d0e2b:	0020c0        	memw
400d0e2e:	0489      	s32i.n	a8, a4, 0
400d0e30:	0020c0        	memw
400d0e33:	0588      	l32i.n	a8, a5, 0
400d0e35:	ffae92        	movi	a9, 0xfffffeff
400d0e38:	108890        	and	a8, a8, a9
400d0e3b:	2088a0        	or	a8, a8, a10
400d0e3e:	0020c0        	memw
400d0e41:	0589      	s32i.n	a8, a5, 0
400d0e43:	108bc0        	and	a8, a11, a12
400d0e46:	00f816        	beqz	a8, 400d0e59 <_ZN14esp_hal_common8rtc_cntl8RtcClock18calibrate_internal17hfd8ee0b38465c958E.llvm.10704473388258232010+0x131>
400d0e49:	0020c0        	memw
400d0e4c:	0588      	l32i.n	a8, a5, 0
400d0e4e:	ffad92        	movi	a9, 0xfffffdff
400d0e51:	108890        	and	a8, a8, a9
400d0e54:	0020c0        	memw
400d0e57:	0589      	s32i.n	a8, a5, 0
400d0e59:	f01d      	retw.n
	...

400d0e5c <esp_hal_common::rtc_cntl::RtcClock::calibrate>:
400d0e5c:	004136        	entry	a1, 32
400d0e5f:	fcb881        	l32r	a8, 400d0140 <_stext+0x120>
400d0e62:	0020c0        	memw
400d0e65:	0888      	l32i.n	a8, a8, 0
400d0e67:	091c      	movi.n	a9, 16
400d0e69:	400900        	ssr	a9
400d0e6c:	919080        	srl	a9, a8
400d0e6f:	a80b      	addi.n	a10, a8, -1
400d0e71:	db7c      	movi.n	a11, -3
400d0e73:	173ba7        	bltu	a11, a10, 400d0e8e <esp_hal_common::rtc_cntl::RtcClock::calibrate+0x32>
400d0e76:	fc6fa1        	l32r	a10, 400d0034 <_stext+0x14>
400d0e79:	1068a0        	and	a6, a8, a10
400d0e7c:	0e9697        	bne	a6, a9, 400d0e8e <esp_hal_common::rtc_cntl::RtcClock::calibrate+0x32>
400d0e7f:	871c      	movi.n	a7, 24
400d0e81:	241677        	beq	a6, a7, 400d0ea9 <esp_hal_common::rtc_cntl::RtcClock::calibrate+0x4d>
400d0e84:	a71c      	movi.n	a7, 26
400d0e86:	1f1677        	beq	a6, a7, 400d0ea9 <esp_hal_common::rtc_cntl::RtcClock::calibrate+0x4d>
400d0e89:	882c      	movi.n	a8, 40
400d0e8b:	679687        	bne	a6, a8, 400d0ef6 <esp_hal_common::rtc_cntl::RtcClock::calibrate+0x9a>
400d0e8e:	fcbc81        	l32r	a8, 400d0180 <_stext+0x160>
400d0e91:	02ad      	mov.n	a10, a2
400d0e93:	03bd      	mov.n	a11, a3
400d0e95:	0008e0        	callx8	a8
400d0e98:	872c      	movi.n	a7, 40
400d0e9a:	a2d730        	muluh	a13, a7, a3
400d0e9d:	82c730        	mull	a12, a7, a3
400d0ea0:	208cd0        	or	a8, a12, a13
400d0ea3:	018856        	bnez	a8, 400d0ebf <esp_hal_common::rtc_cntl::RtcClock::calibrate+0x63>
400d0ea6:	001d86        	j	400d0f20 <esp_hal_common::rtc_cntl::RtcClock::calibrate+0xc4>
400d0ea9:	fcb581        	l32r	a8, 400d0180 <_stext+0x160>
400d0eac:	02ad      	mov.n	a10, a2
400d0eae:	03bd      	mov.n	a11, a3
400d0eb0:	0008e0        	callx8	a8
400d0eb3:	a2d730        	muluh	a13, a7, a3
400d0eb6:	82c730        	mull	a12, a7, a3
400d0eb9:	208cd0        	or	a8, a12, a13
400d0ebc:	060816        	beqz	a8, 400d0f20 <esp_hal_common::rtc_cntl::RtcClock::calibrate+0xc4>
400d0ebf:	190c      	movi.n	a9, 1
400d0ec1:	400900        	ssr	a9
400d0ec4:	818dc0        	src	a8, a13, a12
400d0ec7:	01ead0        	slli	a14, a10, 19
400d0eca:	fe8a      	add.n	a15, a14, a8
400d0ecc:	8f0b      	addi.n	a8, a15, -1
400d0ece:	070c      	movi.n	a7, 0
400d0ed0:	09bd      	mov.n	a11, a9
400d0ed2:	0138f7        	bltu	a8, a15, 400d0ed7 <esp_hal_common::rtc_cntl::RtcClock::calibrate+0x7b>
400d0ed5:	07bd      	mov.n	a11, a7
400d0ed7:	013fe7        	bltu	a15, a14, 400d0edc <esp_hal_common::rtc_cntl::RtcClock::calibrate+0x80>
400d0eda:	079d      	mov.n	a9, a7
400d0edc:	41ada0        	srli	a10, a10, 13
400d0edf:	41e1d0        	srli	a14, a13, 1
400d0ee2:	aaea      	add.n	a10, a10, a14
400d0ee4:	9a9a      	add.n	a9, a10, a9
400d0ee6:	99ba      	add.n	a9, a9, a11
400d0ee8:	b90b      	addi.n	a11, a9, -1
400d0eea:	fc5991        	l32r	a9, 400d0050 <_stext+0x30>
400d0eed:	08ad      	mov.n	a10, a8
400d0eef:	0009e0        	callx8	a9
400d0ef2:	0a2d      	mov.n	a2, a10
400d0ef4:	f01d      	retw.n
400d0ef6:	fca281        	l32r	a8, 400d0180 <_stext+0x160>
400d0ef9:	02ad      	mov.n	a10, a2
400d0efb:	03bd      	mov.n	a11, a3
400d0efd:	0008e0        	callx8	a8
400d0f00:	fc5281        	l32r	a8, 400d0048 <_stext+0x28>
400d0f03:	828680        	mull	a8, a6, a8
400d0f06:	fc9f91        	l32r	a9, 400d0184 <_stext+0x164>
400d0f09:	a28890        	muluh	a8, a8, a9
400d0f0c:	291c      	movi.n	a9, 18
400d0f0e:	400900        	ssr	a9
400d0f11:	917080        	srl	a7, a8
400d0f14:	a2d730        	muluh	a13, a7, a3
400d0f17:	82c730        	mull	a12, a7, a3
400d0f1a:	208cd0        	or	a8, a12, a13
400d0f1d:	f9e856        	bnez	a8, 400d0ebf <esp_hal_common::rtc_cntl::RtcClock::calibrate+0x63>
400d0f20:	fc9aa1        	l32r	a10, 400d0188 <_stext+0x168>
400d0f23:	9b1c      	movi.n	a11, 25
400d0f25:	fc99c1        	l32r	a12, 400d018c <_stext+0x16c>
400d0f28:	fc4681        	l32r	a8, 400d0040 <_stext+0x20>
400d0f2b:	0008e0        	callx8	a8
400d0f2e:	0041f0        	break	1, 15
400d0f31:	000000        	ill

400d0f34 <<esp_hal_common::rtc_cntl::Rwdt as embedded_hal::watchdog::WatchdogDisable>::disable>:
400d0f34:	004136        	entry	a1, 32
400d0f37:	fc9681        	l32r	a8, 400d0190 <_stext+0x170>
400d0f3a:	fc6391        	l32r	a9, 400d00c8 <_stext+0xa8>
400d0f3d:	0020c0        	memw
400d0f40:	0899      	s32i.n	a9, a8, 0
400d0f42:	fc9491        	l32r	a9, 400d0194 <_stext+0x174>
400d0f45:	0020c0        	memw
400d0f48:	09a8      	l32i.n	a10, a9, 0
400d0f4a:	fc93b1        	l32r	a11, 400d0198 <_stext+0x178>
400d0f4d:	10aab0        	and	a10, a10, a11
400d0f50:	0020c0        	memw
400d0f53:	09a9      	s32i.n	a10, a9, 0
400d0f55:	090c      	movi.n	a9, 0
400d0f57:	0020c0        	memw
400d0f5a:	0899      	s32i.n	a9, a8, 0
400d0f5c:	f01d      	retw.n
	...

400d0f60 <esp_hal_common::clock::ClockControl::boot_defaults>:
400d0f60:	004136        	entry	a1, 32
400d0f63:	fc8e81        	l32r	a8, 400d019c <_stext+0x17c>
400d0f66:	3289      	s32i.n	a8, a2, 12
400d0f68:	fc8e91        	l32r	a9, 400d01a0 <_stext+0x180>
400d0f6b:	2299      	s32i.n	a9, a2, 8
400d0f6d:	1289      	s32i.n	a8, a2, 4
400d0f6f:	0289      	s32i.n	a8, a2, 0
400d0f71:	f01d      	retw.n
	...

400d0f74 <Reset>:
400d0f74:	004136        	entry	a1, 32
400d0f77:	fc8b81        	l32r	a8, 400d01a4 <_stext+0x184>
400d0f7a:	0008e0        	callx8	a8
400d0f7d:	fc8a81        	l32r	a8, 400d01a8 <_stext+0x188>
400d0f80:	0008e0        	callx8	a8
400d0f83:	f67c      	movi.n	a6, -1
400d0f85:	070c      	movi.n	a7, 0
400d0f87:	029a16        	beqz	a10, 400d0fb4 <Reset+0x40>
400d0f8a:	fc8891        	l32r	a9, 400d01ac <_stext+0x18c>
400d0f8d:	fc8881        	l32r	a8, 400d01b0 <_stext+0x190>
400d0f90:	20b897        	bgeu	a8, a9, 400d0fb4 <Reset+0x40>
400d0f93:	30a860        	xor	a10, a8, a6
400d0f96:	b84b      	addi.n	a11, a8, 4
400d0f98:	013b97        	bltu	a11, a9, 400d0f9d <Reset+0x29>
400d0f9b:	0b9d      	mov.n	a9, a11
400d0f9d:	9a9a      	add.n	a9, a10, a9
400d0f9f:	419290        	srli	a9, a9, 2
400d0fa2:	991b      	addi.n	a9, a9, 1
400d0fa4:	0020f0        	nop
400d0fa7:	0020f0        	nop
400d0faa:	068976        	loop	a9, 400d0fb4 <Reset+0x40>
400d0fad:	0020c0        	memw
400d0fb0:	0879      	s32i.n	a7, a8, 0
400d0fb2:	884b      	addi.n	a8, a8, 4
400d0fb4:	fc8081        	l32r	a8, 400d01b4 <_stext+0x194>
400d0fb7:	0008e0        	callx8	a8
400d0fba:	024a16        	beqz	a10, 400d0fe2 <Reset+0x6e>
400d0fbd:	fc7e81        	l32r	a8, 400d01b8 <_stext+0x198>
400d0fc0:	fc7fa1        	l32r	a10, 400d01bc <_stext+0x19c>
400d0fc3:	1bba87        	bgeu	a10, a8, 400d0fe2 <Reset+0x6e>
400d0fc6:	309a60        	xor	a9, a10, a6
400d0fc9:	ba4b      	addi.n	a11, a10, 4
400d0fcb:	013b87        	bltu	a11, a8, 400d0fd0 <Reset+0x5c>
400d0fce:	0b8d      	mov.n	a8, a11
400d0fd0:	898a      	add.n	a8, a9, a8
400d0fd2:	884b      	addi.n	a8, a8, 4
400d0fd4:	c97c      	movi.n	a9, -4
400d0fd6:	10c890        	and	a12, a8, a9
400d0fd9:	fc79b1        	l32r	a11, 400d01c0 <_stext+0x1a0>
400d0fdc:	fc7a81        	l32r	a8, 400d01c4 <_stext+0x1a4>
400d0fdf:	0008e0        	callx8	a8
400d0fe2:	13f070        	wsr.ccompare0	a7
400d0fe5:	13f170        	wsr.ccompare1	a7
400d0fe8:	13f270        	wsr.ccompare2	a7
400d0feb:	002000        	isync
400d0fee:	fc7681        	l32r	a8, 400d01c8 <_stext+0x1a8>
400d0ff1:	13e780        	wsr.vecbase	a8
400d0ff4:	fc7681        	l32r	a8, 400d01cc <_stext+0x1ac>
400d0ff7:	0008e0        	callx8	a8
400d0ffa:	0041f0        	break	1, 15
400d0ffd:	000000        	ill

400d1000 <<&T as core::fmt::Debug>::fmt>:
400d1000:	004136        	entry	a1, 32
400d1003:	02a8      	l32i.n	a10, a2, 0
400d1005:	fc7281        	l32r	a8, 400d01d0 <_stext+0x1b0>
400d1008:	03bd      	mov.n	a11, a3
400d100a:	0008e0        	callx8	a8
400d100d:	0a2d      	mov.n	a2, a10
400d100f:	f01d      	retw.n
400d1011:	000000        	ill

400d1014 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt>:
400d1014:	004136        	entry	a1, 32
400d1017:	fc6f81        	l32r	a8, 400d01d4 <_stext+0x1b4>
400d101a:	03ad      	mov.n	a10, a3
400d101c:	0008e0        	callx8	a8
400d101f:	005a16        	beqz	a10, 400d1028 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x14>
400d1022:	fc6f81        	l32r	a8, 400d01e0 <_stext+0x1c0>
400d1025:	0004c6        	j	400d103c <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x28>
400d1028:	fc6c81        	l32r	a8, 400d01d8 <_stext+0x1b8>
400d102b:	03ad      	mov.n	a10, a3
400d102d:	0008e0        	callx8	a8
400d1030:	005a16        	beqz	a10, 400d1039 <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x25>
400d1033:	fc6a81        	l32r	a8, 400d01dc <_stext+0x1bc>
400d1036:	000086        	j	400d103c <core::fmt::num::<impl core::fmt::Debug for u32>::fmt+0x28>
400d1039:	fc2781        	l32r	a8, 400d00d8 <_stext+0xb8>
400d103c:	02ad      	mov.n	a10, a2
400d103e:	03bd      	mov.n	a11, a3
400d1040:	0008e0        	callx8	a8
400d1043:	0a2d      	mov.n	a2, a10
400d1045:	f01d      	retw.n
	...

400d1048 <<xtensa_lx_rt::exception::esp32::Context as core::fmt::Debug>::fmt>:
400d1048:	008136        	entry	a1, 64
400d104b:	0cc172        	addi	a7, a1, 12
400d104e:	fc65c1        	l32r	a12, 400d01e4 <_stext+0x1c4>
400d1051:	7d0c      	movi.n	a13, 7
400d1053:	21d9      	s32i.n	a13, a1, 8
400d1055:	fc6481        	l32r	a8, 400d01e8 <_stext+0x1c8>
400d1058:	07ad      	mov.n	a10, a7
400d105a:	03bd      	mov.n	a11, a3
400d105c:	0008e0        	callx8	a8
400d105f:	5129      	s32i.n	a2, a1, 20
400d1061:	fc62b1        	l32r	a11, 400d01ec <_stext+0x1cc>
400d1064:	250c      	movi.n	a5, 2
400d1066:	14c1d2        	addi	a13, a1, 20
400d1069:	fc6161        	l32r	a6, 400d01f0 <_stext+0x1d0>
400d106c:	fc6241        	l32r	a4, 400d01f4 <_stext+0x1d4>
400d106f:	07ad      	mov.n	a10, a7
400d1071:	05cd      	mov.n	a12, a5
400d1073:	06ed      	mov.n	a14, a6
400d1075:	0004e0        	callx8	a4
400d1078:	824b      	addi.n	a8, a2, 4
400d107a:	5189      	s32i.n	a8, a1, 20
400d107c:	fc5fb1        	l32r	a11, 400d01f8 <_stext+0x1d8>
400d107f:	14c1d2        	addi	a13, a1, 20
400d1082:	07ad      	mov.n	a10, a7
400d1084:	05cd      	mov.n	a12, a5
400d1086:	06ed      	mov.n	a14, a6
400d1088:	0004e0        	callx8	a4
400d108b:	828b      	addi.n	a8, a2, 8
400d108d:	5189      	s32i.n	a8, a1, 20
400d108f:	fc5bb1        	l32r	a11, 400d01fc <_stext+0x1dc>
400d1092:	14c1d2        	addi	a13, a1, 20
400d1095:	07ad      	mov.n	a10, a7
400d1097:	05cd      	mov.n	a12, a5
400d1099:	06ed      	mov.n	a14, a6
400d109b:	0004e0        	callx8	a4
400d109e:	82cb      	addi.n	a8, a2, 12
400d10a0:	5189      	s32i.n	a8, a1, 20
400d10a2:	fc57b1        	l32r	a11, 400d0200 <_stext+0x1e0>
400d10a5:	14c1d2        	addi	a13, a1, 20
400d10a8:	07ad      	mov.n	a10, a7
400d10aa:	05cd      	mov.n	a12, a5
400d10ac:	06ed      	mov.n	a14, a6
400d10ae:	0004e0        	callx8	a4
400d10b1:	10c282        	addi	a8, a2, 16
400d10b4:	5189      	s32i.n	a8, a1, 20
400d10b6:	fc53b1        	l32r	a11, 400d0204 <_stext+0x1e4>
400d10b9:	14c1d2        	addi	a13, a1, 20
400d10bc:	07ad      	mov.n	a10, a7
400d10be:	05cd      	mov.n	a12, a5
400d10c0:	06ed      	mov.n	a14, a6
400d10c2:	0004e0        	callx8	a4
400d10c5:	14c282        	addi	a8, a2, 20
400d10c8:	5189      	s32i.n	a8, a1, 20
400d10ca:	fc4fb1        	l32r	a11, 400d0208 <_stext+0x1e8>
400d10cd:	14c1d2        	addi	a13, a1, 20
400d10d0:	07ad      	mov.n	a10, a7
400d10d2:	05cd      	mov.n	a12, a5
400d10d4:	06ed      	mov.n	a14, a6
400d10d6:	0004e0        	callx8	a4
400d10d9:	18c282        	addi	a8, a2, 24
400d10dc:	5189      	s32i.n	a8, a1, 20
400d10de:	fc4bb1        	l32r	a11, 400d020c <_stext+0x1ec>
400d10e1:	14c1d2        	addi	a13, a1, 20
400d10e4:	07ad      	mov.n	a10, a7
400d10e6:	05cd      	mov.n	a12, a5
400d10e8:	06ed      	mov.n	a14, a6
400d10ea:	0004e0        	callx8	a4
400d10ed:	1cc282        	addi	a8, a2, 28
400d10f0:	5189      	s32i.n	a8, a1, 20
400d10f2:	fc47b1        	l32r	a11, 400d0210 <_stext+0x1f0>
400d10f5:	14c1d2        	addi	a13, a1, 20
400d10f8:	07ad      	mov.n	a10, a7
400d10fa:	05cd      	mov.n	a12, a5
400d10fc:	06ed      	mov.n	a14, a6
400d10fe:	0004e0        	callx8	a4
400d1101:	20c282        	addi	a8, a2, 32
400d1104:	5189      	s32i.n	a8, a1, 20
400d1106:	fc43b1        	l32r	a11, 400d0214 <_stext+0x1f4>
400d1109:	14c1d2        	addi	a13, a1, 20
400d110c:	07ad      	mov.n	a10, a7
400d110e:	05cd      	mov.n	a12, a5
400d1110:	06ed      	mov.n	a14, a6
400d1112:	0004e0        	callx8	a4
400d1115:	24c282        	addi	a8, a2, 36
400d1118:	5189      	s32i.n	a8, a1, 20
400d111a:	fc3fb1        	l32r	a11, 400d0218 <_stext+0x1f8>
400d111d:	14c1d2        	addi	a13, a1, 20
400d1120:	07ad      	mov.n	a10, a7
400d1122:	05cd      	mov.n	a12, a5
400d1124:	06ed      	mov.n	a14, a6
400d1126:	0004e0        	callx8	a4
400d1129:	28c282        	addi	a8, a2, 40
400d112c:	5189      	s32i.n	a8, a1, 20
400d112e:	fc3bb1        	l32r	a11, 400d021c <_stext+0x1fc>
400d1131:	14c1d2        	addi	a13, a1, 20
400d1134:	07ad      	mov.n	a10, a7
400d1136:	05cd      	mov.n	a12, a5
400d1138:	06ed      	mov.n	a14, a6
400d113a:	0004e0        	callx8	a4
400d113d:	2cc282        	addi	a8, a2, 44
400d1140:	5189      	s32i.n	a8, a1, 20
400d1142:	fc37b1        	l32r	a11, 400d0220 <_stext+0x200>
400d1145:	14c1d2        	addi	a13, a1, 20
400d1148:	07ad      	mov.n	a10, a7
400d114a:	05cd      	mov.n	a12, a5
400d114c:	06ed      	mov.n	a14, a6
400d114e:	0004e0        	callx8	a4
400d1151:	30c282        	addi	a8, a2, 48
400d1154:	5189      	s32i.n	a8, a1, 20
400d1156:	fc33b1        	l32r	a11, 400d0224 <_stext+0x204>
400d1159:	330c      	movi.n	a3, 3
400d115b:	14c1d2        	addi	a13, a1, 20
400d115e:	07ad      	mov.n	a10, a7
400d1160:	03cd      	mov.n	a12, a3
400d1162:	1139      	s32i.n	a3, a1, 4
400d1164:	06ed      	mov.n	a14, a6
400d1166:	0004e0        	callx8	a4
400d1169:	34c282        	addi	a8, a2, 52
400d116c:	5189      	s32i.n	a8, a1, 20
400d116e:	fc2eb1        	l32r	a11, 400d0228 <_stext+0x208>
400d1171:	14c1d2        	addi	a13, a1, 20
400d1174:	07ad      	mov.n	a10, a7
400d1176:	03cd      	mov.n	a12, a3
400d1178:	06ed      	mov.n	a14, a6
400d117a:	0004e0        	callx8	a4
400d117d:	38c282        	addi	a8, a2, 56
400d1180:	5189      	s32i.n	a8, a1, 20
400d1182:	fc2ab1        	l32r	a11, 400d022c <_stext+0x20c>
400d1185:	14c1d2        	addi	a13, a1, 20
400d1188:	07ad      	mov.n	a10, a7
400d118a:	03cd      	mov.n	a12, a3
400d118c:	06ed      	mov.n	a14, a6
400d118e:	0004e0        	callx8	a4
400d1191:	3cc282        	addi	a8, a2, 60
400d1194:	5189      	s32i.n	a8, a1, 20
400d1196:	fc26b1        	l32r	a11, 400d0230 <_stext+0x210>
400d1199:	14c1d2        	addi	a13, a1, 20
400d119c:	07ad      	mov.n	a10, a7
400d119e:	03cd      	mov.n	a12, a3
400d11a0:	06ed      	mov.n	a14, a6
400d11a2:	0004e0        	callx8	a4
400d11a5:	40c282        	addi	a8, a2, 64
400d11a8:	5189      	s32i.n	a8, a1, 20
400d11aa:	fc22b1        	l32r	a11, 400d0234 <_stext+0x214>
400d11ad:	14c1d2        	addi	a13, a1, 20
400d11b0:	07ad      	mov.n	a10, a7
400d11b2:	03cd      	mov.n	a12, a3
400d11b4:	06ed      	mov.n	a14, a6
400d11b6:	0004e0        	callx8	a4
400d11b9:	44c282        	addi	a8, a2, 68
400d11bc:	5189      	s32i.n	a8, a1, 20
400d11be:	fc1eb1        	l32r	a11, 400d0238 <_stext+0x218>
400d11c1:	14c1d2        	addi	a13, a1, 20
400d11c4:	07ad      	mov.n	a10, a7
400d11c6:	03cd      	mov.n	a12, a3
400d11c8:	06ed      	mov.n	a14, a6
400d11ca:	0004e0        	callx8	a4
400d11cd:	48c282        	addi	a8, a2, 72
400d11d0:	5189      	s32i.n	a8, a1, 20
400d11d2:	fc1ab1        	l32r	a11, 400d023c <_stext+0x21c>
400d11d5:	14c1d2        	addi	a13, a1, 20
400d11d8:	07ad      	mov.n	a10, a7
400d11da:	03cd      	mov.n	a12, a3
400d11dc:	06ed      	mov.n	a14, a6
400d11de:	0004e0        	callx8	a4
400d11e1:	4cc282        	addi	a8, a2, 76
400d11e4:	5189      	s32i.n	a8, a1, 20
400d11e6:	fc16b1        	l32r	a11, 400d0240 <_stext+0x220>
400d11e9:	830c      	movi.n	a3, 8
400d11eb:	14c1d2        	addi	a13, a1, 20
400d11ee:	07ad      	mov.n	a10, a7
400d11f0:	03cd      	mov.n	a12, a3
400d11f2:	06ed      	mov.n	a14, a6
400d11f4:	0004e0        	callx8	a4
400d11f7:	50c282        	addi	a8, a2, 80
400d11fa:	5189      	s32i.n	a8, a1, 20
400d11fc:	fc12b1        	l32r	a11, 400d0244 <_stext+0x224>
400d11ff:	14c1d2        	addi	a13, a1, 20
400d1202:	07ad      	mov.n	a10, a7
400d1204:	03cd      	mov.n	a12, a3
400d1206:	06ed      	mov.n	a14, a6
400d1208:	0004e0        	callx8	a4
400d120b:	54c282        	addi	a8, a2, 84
400d120e:	5189      	s32i.n	a8, a1, 20
400d1210:	fc0eb1        	l32r	a11, 400d0248 <_stext+0x228>
400d1213:	430c      	movi.n	a3, 4
400d1215:	14c1d2        	addi	a13, a1, 20
400d1218:	07ad      	mov.n	a10, a7
400d121a:	03cd      	mov.n	a12, a3
400d121c:	0139      	s32i.n	a3, a1, 0
400d121e:	06ed      	mov.n	a14, a6
400d1220:	0004e0        	callx8	a4
400d1223:	58c282        	addi	a8, a2, 88
400d1226:	5189      	s32i.n	a8, a1, 20
400d1228:	fc09b1        	l32r	a11, 400d024c <_stext+0x22c>
400d122b:	14c1d2        	addi	a13, a1, 20
400d122e:	07ad      	mov.n	a10, a7
400d1230:	03cd      	mov.n	a12, a3
400d1232:	06ed      	mov.n	a14, a6
400d1234:	0004e0        	callx8	a4
400d1237:	5cc282        	addi	a8, a2, 92
400d123a:	5189      	s32i.n	a8, a1, 20
400d123c:	fc05b1        	l32r	a11, 400d0250 <_stext+0x230>
400d123f:	6c0c      	movi.n	a12, 6
400d1241:	14c1d2        	addi	a13, a1, 20
400d1244:	07ad      	mov.n	a10, a7
400d1246:	06ed      	mov.n	a14, a6
400d1248:	0004e0        	callx8	a4
400d124b:	60c282        	addi	a8, a2, 96
400d124e:	5189      	s32i.n	a8, a1, 20
400d1250:	fc01b1        	l32r	a11, 400d0254 <_stext+0x234>
400d1253:	930c      	movi.n	a3, 9
400d1255:	14c1d2        	addi	a13, a1, 20
400d1258:	07ad      	mov.n	a10, a7
400d125a:	03cd      	mov.n	a12, a3
400d125c:	06ed      	mov.n	a14, a6
400d125e:	0004e0        	callx8	a4
400d1261:	64c282        	addi	a8, a2, 100
400d1264:	5189      	s32i.n	a8, a1, 20
400d1266:	fbfcb1        	l32r	a11, 400d0258 <_stext+0x238>
400d1269:	14c1d2        	addi	a13, a1, 20
400d126c:	07ad      	mov.n	a10, a7
400d126e:	03cd      	mov.n	a12, a3
400d1270:	06ed      	mov.n	a14, a6
400d1272:	0004e0        	callx8	a4
400d1275:	68c282        	addi	a8, a2, 104
400d1278:	5189      	s32i.n	a8, a1, 20
400d127a:	fbf8b1        	l32r	a11, 400d025c <_stext+0x23c>
400d127d:	14c1d2        	addi	a13, a1, 20
400d1280:	07ad      	mov.n	a10, a7
400d1282:	05cd      	mov.n	a12, a5
400d1284:	06ed      	mov.n	a14, a6
400d1286:	0004e0        	callx8	a4
400d1289:	6cc282        	addi	a8, a2, 108
400d128c:	5189      	s32i.n	a8, a1, 20
400d128e:	fbf4b1        	l32r	a11, 400d0260 <_stext+0x240>
400d1291:	530c      	movi.n	a3, 5
400d1293:	14c1d2        	addi	a13, a1, 20
400d1296:	07ad      	mov.n	a10, a7
400d1298:	03cd      	mov.n	a12, a3
400d129a:	06ed      	mov.n	a14, a6
400d129c:	0004e0        	callx8	a4
400d129f:	70c282        	addi	a8, a2, 112
400d12a2:	5189      	s32i.n	a8, a1, 20
400d12a4:	fbf0b1        	l32r	a11, 400d0264 <_stext+0x244>
400d12a7:	14c1d2        	addi	a13, a1, 20
400d12aa:	07ad      	mov.n	a10, a7
400d12ac:	03cd      	mov.n	a12, a3
400d12ae:	06ed      	mov.n	a14, a6
400d12b0:	0004e0        	callx8	a4
400d12b3:	74c282        	addi	a8, a2, 116
400d12b6:	5189      	s32i.n	a8, a1, 20
400d12b8:	fbecb1        	l32r	a11, 400d0268 <_stext+0x248>
400d12bb:	14c1d2        	addi	a13, a1, 20
400d12be:	07ad      	mov.n	a10, a7
400d12c0:	05cd      	mov.n	a12, a5
400d12c2:	06ed      	mov.n	a14, a6
400d12c4:	0004e0        	callx8	a4
400d12c7:	78c282        	addi	a8, a2, 120
400d12ca:	5189      	s32i.n	a8, a1, 20
400d12cc:	fbe8b1        	l32r	a11, 400d026c <_stext+0x24c>
400d12cf:	14c1d2        	addi	a13, a1, 20
400d12d2:	07ad      	mov.n	a10, a7
400d12d4:	05cd      	mov.n	a12, a5
400d12d6:	06ed      	mov.n	a14, a6
400d12d8:	0004e0        	callx8	a4
400d12db:	7cc282        	addi	a8, a2, 124
400d12de:	5189      	s32i.n	a8, a1, 20
400d12e0:	fbe4b1        	l32r	a11, 400d0270 <_stext+0x250>
400d12e3:	14c1d2        	addi	a13, a1, 20
400d12e6:	07ad      	mov.n	a10, a7
400d12e8:	05cd      	mov.n	a12, a5
400d12ea:	06ed      	mov.n	a14, a6
400d12ec:	0004e0        	callx8	a4
400d12ef:	80a082        	movi	a8, 128
400d12f2:	828a      	add.n	a8, a2, a8
400d12f4:	5189      	s32i.n	a8, a1, 20
400d12f6:	fbdfb1        	l32r	a11, 400d0274 <_stext+0x254>
400d12f9:	14c1d2        	addi	a13, a1, 20
400d12fc:	07ad      	mov.n	a10, a7
400d12fe:	05cd      	mov.n	a12, a5
400d1300:	06ed      	mov.n	a14, a6
400d1302:	0004e0        	callx8	a4
400d1305:	84a082        	movi	a8, 132
400d1308:	828a      	add.n	a8, a2, a8
400d130a:	5189      	s32i.n	a8, a1, 20
400d130c:	fbdbb1        	l32r	a11, 400d0278 <_stext+0x258>
400d130f:	14c1d2        	addi	a13, a1, 20
400d1312:	07ad      	mov.n	a10, a7
400d1314:	2138      	l32i.n	a3, a1, 8
400d1316:	03cd      	mov.n	a12, a3
400d1318:	06ed      	mov.n	a14, a6
400d131a:	0004e0        	callx8	a4
400d131d:	88a082        	movi	a8, 136
400d1320:	828a      	add.n	a8, a2, a8
400d1322:	5189      	s32i.n	a8, a1, 20
400d1324:	fbd6b1        	l32r	a11, 400d027c <_stext+0x25c>
400d1327:	14c1d2        	addi	a13, a1, 20
400d132a:	07ad      	mov.n	a10, a7
400d132c:	03cd      	mov.n	a12, a3
400d132e:	06ed      	mov.n	a14, a6
400d1330:	0004e0        	callx8	a4
400d1333:	8ca082        	movi	a8, 140
400d1336:	828a      	add.n	a8, a2, a8
400d1338:	5189      	s32i.n	a8, a1, 20
400d133a:	fbd1b1        	l32r	a11, 400d0280 <_stext+0x260>
400d133d:	14c1d2        	addi	a13, a1, 20
400d1340:	07ad      	mov.n	a10, a7
400d1342:	01c8      	l32i.n	a12, a1, 0
400d1344:	06ed      	mov.n	a14, a6
400d1346:	0004e0        	callx8	a4
400d1349:	90a082        	movi	a8, 144
400d134c:	828a      	add.n	a8, a2, a8
400d134e:	5189      	s32i.n	a8, a1, 20
400d1350:	fbcdb1        	l32r	a11, 400d0284 <_stext+0x264>
400d1353:	14c1d2        	addi	a13, a1, 20
400d1356:	07ad      	mov.n	a10, a7
400d1358:	1138      	l32i.n	a3, a1, 4
400d135a:	03cd      	mov.n	a12, a3
400d135c:	06ed      	mov.n	a14, a6
400d135e:	0004e0        	callx8	a4
400d1361:	94a082        	movi	a8, 148
400d1364:	828a      	add.n	a8, a2, a8
400d1366:	5189      	s32i.n	a8, a1, 20
400d1368:	fbc8b1        	l32r	a11, 400d0288 <_stext+0x268>
400d136b:	14c1d2        	addi	a13, a1, 20
400d136e:	07ad      	mov.n	a10, a7
400d1370:	03cd      	mov.n	a12, a3
400d1372:	06ed      	mov.n	a14, a6
400d1374:	0004e0        	callx8	a4
400d1377:	98a082        	movi	a8, 152
400d137a:	828a      	add.n	a8, a2, a8
400d137c:	5189      	s32i.n	a8, a1, 20
400d137e:	fbc3b1        	l32r	a11, 400d028c <_stext+0x26c>
400d1381:	14c1d2        	addi	a13, a1, 20
400d1384:	07ad      	mov.n	a10, a7
400d1386:	05cd      	mov.n	a12, a5
400d1388:	06ed      	mov.n	a14, a6
400d138a:	0004e0        	callx8	a4
400d138d:	9ca082        	movi	a8, 156
400d1390:	828a      	add.n	a8, a2, a8
400d1392:	5189      	s32i.n	a8, a1, 20
400d1394:	fbbfb1        	l32r	a11, 400d0290 <_stext+0x270>
400d1397:	14c1d2        	addi	a13, a1, 20
400d139a:	07ad      	mov.n	a10, a7
400d139c:	05cd      	mov.n	a12, a5
400d139e:	06ed      	mov.n	a14, a6
400d13a0:	0004e0        	callx8	a4
400d13a3:	a0a082        	movi	a8, 160
400d13a6:	828a      	add.n	a8, a2, a8
400d13a8:	5189      	s32i.n	a8, a1, 20
400d13aa:	fbbab1        	l32r	a11, 400d0294 <_stext+0x274>
400d13ad:	14c1d2        	addi	a13, a1, 20
400d13b0:	07ad      	mov.n	a10, a7
400d13b2:	05cd      	mov.n	a12, a5
400d13b4:	06ed      	mov.n	a14, a6
400d13b6:	0004e0        	callx8	a4
400d13b9:	a4a082        	movi	a8, 164
400d13bc:	828a      	add.n	a8, a2, a8
400d13be:	5189      	s32i.n	a8, a1, 20
400d13c0:	fbb6b1        	l32r	a11, 400d0298 <_stext+0x278>
400d13c3:	14c1d2        	addi	a13, a1, 20
400d13c6:	07ad      	mov.n	a10, a7
400d13c8:	05cd      	mov.n	a12, a5
400d13ca:	06ed      	mov.n	a14, a6
400d13cc:	0004e0        	callx8	a4
400d13cf:	a8a082        	movi	a8, 168
400d13d2:	828a      	add.n	a8, a2, a8
400d13d4:	5189      	s32i.n	a8, a1, 20
400d13d6:	fbb1b1        	l32r	a11, 400d029c <_stext+0x27c>
400d13d9:	14c1d2        	addi	a13, a1, 20
400d13dc:	07ad      	mov.n	a10, a7
400d13de:	05cd      	mov.n	a12, a5
400d13e0:	06ed      	mov.n	a14, a6
400d13e2:	0004e0        	callx8	a4
400d13e5:	aca082        	movi	a8, 172
400d13e8:	828a      	add.n	a8, a2, a8
400d13ea:	5189      	s32i.n	a8, a1, 20
400d13ec:	fbadb1        	l32r	a11, 400d02a0 <_stext+0x280>
400d13ef:	14c1d2        	addi	a13, a1, 20
400d13f2:	07ad      	mov.n	a10, a7
400d13f4:	05cd      	mov.n	a12, a5
400d13f6:	06ed      	mov.n	a14, a6
400d13f8:	0004e0        	callx8	a4
400d13fb:	b0a082        	movi	a8, 176
400d13fe:	828a      	add.n	a8, a2, a8
400d1400:	5189      	s32i.n	a8, a1, 20
400d1402:	fba8b1        	l32r	a11, 400d02a4 <_stext+0x284>
400d1405:	14c1d2        	addi	a13, a1, 20
400d1408:	07ad      	mov.n	a10, a7
400d140a:	05cd      	mov.n	a12, a5
400d140c:	06ed      	mov.n	a14, a6
400d140e:	0004e0        	callx8	a4
400d1411:	b4a082        	movi	a8, 180
400d1414:	828a      	add.n	a8, a2, a8
400d1416:	5189      	s32i.n	a8, a1, 20
400d1418:	fba4b1        	l32r	a11, 400d02a8 <_stext+0x288>
400d141b:	14c1d2        	addi	a13, a1, 20
400d141e:	07ad      	mov.n	a10, a7
400d1420:	05cd      	mov.n	a12, a5
400d1422:	06ed      	mov.n	a14, a6
400d1424:	0004e0        	callx8	a4
400d1427:	b8a082        	movi	a8, 184
400d142a:	828a      	add.n	a8, a2, a8
400d142c:	5189      	s32i.n	a8, a1, 20
400d142e:	fb9fb1        	l32r	a11, 400d02ac <_stext+0x28c>
400d1431:	14c1d2        	addi	a13, a1, 20
400d1434:	07ad      	mov.n	a10, a7
400d1436:	05cd      	mov.n	a12, a5
400d1438:	06ed      	mov.n	a14, a6
400d143a:	0004e0        	callx8	a4
400d143d:	bca082        	movi	a8, 188
400d1440:	828a      	add.n	a8, a2, a8
400d1442:	5189      	s32i.n	a8, a1, 20
400d1444:	fb9bb1        	l32r	a11, 400d02b0 <_stext+0x290>
400d1447:	14c1d2        	addi	a13, a1, 20
400d144a:	07ad      	mov.n	a10, a7
400d144c:	05cd      	mov.n	a12, a5
400d144e:	06ed      	mov.n	a14, a6
400d1450:	0004e0        	callx8	a4
400d1453:	c0a082        	movi	a8, 192
400d1456:	828a      	add.n	a8, a2, a8
400d1458:	5189      	s32i.n	a8, a1, 20
400d145a:	fb96b1        	l32r	a11, 400d02b4 <_stext+0x294>
400d145d:	14c1d2        	addi	a13, a1, 20
400d1460:	07ad      	mov.n	a10, a7
400d1462:	03cd      	mov.n	a12, a3
400d1464:	06ed      	mov.n	a14, a6
400d1466:	0004e0        	callx8	a4
400d1469:	c4a082        	movi	a8, 196
400d146c:	828a      	add.n	a8, a2, a8
400d146e:	5189      	s32i.n	a8, a1, 20
400d1470:	fb92b1        	l32r	a11, 400d02b8 <_stext+0x298>
400d1473:	14c1d2        	addi	a13, a1, 20
400d1476:	07ad      	mov.n	a10, a7
400d1478:	03cd      	mov.n	a12, a3
400d147a:	06ed      	mov.n	a14, a6
400d147c:	0004e0        	callx8	a4
400d147f:	c8a082        	movi	a8, 200
400d1482:	828a      	add.n	a8, a2, a8
400d1484:	5189      	s32i.n	a8, a1, 20
400d1486:	fb8db1        	l32r	a11, 400d02bc <_stext+0x29c>
400d1489:	14c1d2        	addi	a13, a1, 20
400d148c:	07ad      	mov.n	a10, a7
400d148e:	03cd      	mov.n	a12, a3
400d1490:	06ed      	mov.n	a14, a6
400d1492:	0004e0        	callx8	a4
400d1495:	cca082        	movi	a8, 204
400d1498:	828a      	add.n	a8, a2, a8
400d149a:	5189      	s32i.n	a8, a1, 20
400d149c:	fb89b1        	l32r	a11, 400d02c0 <_stext+0x2a0>
400d149f:	14c1d2        	addi	a13, a1, 20
400d14a2:	07ad      	mov.n	a10, a7
400d14a4:	03cd      	mov.n	a12, a3
400d14a6:	06ed      	mov.n	a14, a6
400d14a8:	0004e0        	callx8	a4
400d14ab:	d0a082        	movi	a8, 208
400d14ae:	828a      	add.n	a8, a2, a8
400d14b0:	5189      	s32i.n	a8, a1, 20
400d14b2:	fb84b1        	l32r	a11, 400d02c4 <_stext+0x2a4>
400d14b5:	14c1d2        	addi	a13, a1, 20
400d14b8:	07ad      	mov.n	a10, a7
400d14ba:	03cd      	mov.n	a12, a3
400d14bc:	06ed      	mov.n	a14, a6
400d14be:	0004e0        	callx8	a4
400d14c1:	d4a082        	movi	a8, 212
400d14c4:	828a      	add.n	a8, a2, a8
400d14c6:	5189      	s32i.n	a8, a1, 20
400d14c8:	fb80b1        	l32r	a11, 400d02c8 <_stext+0x2a8>
400d14cb:	14c1d2        	addi	a13, a1, 20
400d14ce:	07ad      	mov.n	a10, a7
400d14d0:	03cd      	mov.n	a12, a3
400d14d2:	06ed      	mov.n	a14, a6
400d14d4:	0004e0        	callx8	a4
400d14d7:	fb7d81        	l32r	a8, 400d02cc <_stext+0x2ac>
400d14da:	07ad      	mov.n	a10, a7
400d14dc:	0008e0        	callx8	a8
400d14df:	0a2d      	mov.n	a2, a10
400d14e1:	f01d      	retw.n
	...

400d14e4 <<&T as core::fmt::Debug>::fmt>:
400d14e4:	004136        	entry	a1, 32
400d14e7:	0278      	l32i.n	a7, a2, 0
400d14e9:	fb3a81        	l32r	a8, 400d01d4 <_stext+0x1b4>
400d14ec:	03ad      	mov.n	a10, a3
400d14ee:	0008e0        	callx8	a8
400d14f1:	005a16        	beqz	a10, 400d14fa <<&T as core::fmt::Debug>::fmt+0x16>
400d14f4:	fb3b81        	l32r	a8, 400d01e0 <_stext+0x1c0>
400d14f7:	0004c6        	j	400d150e <<&T as core::fmt::Debug>::fmt+0x2a>
400d14fa:	fb3781        	l32r	a8, 400d01d8 <_stext+0x1b8>
400d14fd:	03ad      	mov.n	a10, a3
400d14ff:	0008e0        	callx8	a8
400d1502:	005a16        	beqz	a10, 400d150b <<&T as core::fmt::Debug>::fmt+0x27>
400d1505:	fb3581        	l32r	a8, 400d01dc <_stext+0x1bc>
400d1508:	000086        	j	400d150e <<&T as core::fmt::Debug>::fmt+0x2a>
400d150b:	faf381        	l32r	a8, 400d00d8 <_stext+0xb8>
400d150e:	07ad      	mov.n	a10, a7
400d1510:	03bd      	mov.n	a11, a3
400d1512:	0008e0        	callx8	a8
400d1515:	0a2d      	mov.n	a2, a10
400d1517:	f01d      	retw.n
400d1519:	000000        	ill

400d151c <<xtensa_lx_rt::exception::ExceptionCause as core::fmt::Debug>::fmt>:
400d151c:	004136        	entry	a1, 32
400d151f:	0288      	l32i.n	a8, a2, 0
400d1521:	fb6b91        	l32r	a9, 400d02d0 <_stext+0x2b0>
400d1524:	a08890        	addx4	a8, a8, a9
400d1527:	0888      	l32i.n	a8, a8, 0
400d1529:	0008a0        	jx	a8
400d152c:	fb93b1        	l32r	a11, 400d0378 <_stext+0x358>
400d152f:	7c0c      	movi.n	a12, 7
400d1531:	004f06        	j	400d1671 <<xtensa_lx_rt::exception::ExceptionCause as core::fmt::Debug>::fmt+0x155>
400d1534:	fb6eb1        	l32r	a11, 400d02ec <_stext+0x2cc>
400d1537:	bc0c      	movi.n	a12, 11
400d1539:	004d06        	j	400d1671 <<xtensa_lx_rt::exception::ExceptionCause as core::fmt::Debug>::fmt+0x155>
400d153c:	fb6bb1        	l32r	a11, 400d02e8 <_stext+0x2c8>
400d153f:	bc0c      	movi.n	a12, 11
400d1541:	004b06        	j	400d1671 <<xtensa_lx_rt::exception::ExceptionCause as core::fmt::Debug>::fmt+0x155>
400d1544:	fb68b1        	l32r	a11, 400d02e4 <_stext+0x2c4>
400d1547:	bc0c      	movi.n	a12, 11
400d1549:	004906        	j	400d1671 <<xtensa_lx_rt::exception::ExceptionCause as core::fmt::Debug>::fmt+0x155>
400d154c:	fb7bb1        	l32r	a11, 400d0338 <_stext+0x318>
400d154f:	8c0c      	movi.n	a12, 8
400d1551:	004706        	j	400d1671 <<xtensa_lx_rt::exception::ExceptionCause as core::fmt::Debug>::fmt+0x155>
400d1554:	fb6eb1        	l32r	a11, 400d030c <_stext+0x2ec>
400d1557:	ac0c      	movi.n	a12, 10
400d1559:	004506        	j	400d1671 <<xtensa_lx_rt::exception::ExceptionCause as core::fmt::Debug>::fmt+0x155>
400d155c:	fb65b1        	l32r	a11, 400d02f0 <_stext+0x2d0>
400d155f:	bc0c      	movi.n	a12, 11
400d1561:	004306        	j	400d1671 <<xtensa_lx_rt::exception::ExceptionCause as core::fmt::Debug>::fmt+0x155>
400d1564:	fb7ab1        	l32r	a11, 400d034c <_stext+0x32c>
400d1567:	ec0c      	movi.n	a12, 14
400d1569:	004106        	j	400d1671 <<xtensa_lx_rt::exception::ExceptionCause as core::fmt::Debug>::fmt+0x155>
400d156c:	fb75b1        	l32r	a11, 400d0340 <_stext+0x320>
400d156f:	ec0c      	movi.n	a12, 14
400d1571:	003f06        	j	400d1671 <<xtensa_lx_rt::exception::ExceptionCause as core::fmt::Debug>::fmt+0x155>
400d1574:	fb60b1        	l32r	a11, 400d02f4 <_stext+0x2d4>
400d1577:	bc0c      	movi.n	a12, 11
400d1579:	003d06        	j	400d1671 <<xtensa_lx_rt::exception::ExceptionCause as core::fmt::Debug>::fmt+0x155>
400d157c:	fb7eb1        	l32r	a11, 400d0374 <_stext+0x354>
400d157f:	7c0c      	movi.n	a12, 7
400d1581:	003b06        	j	400d1671 <<xtensa_lx_rt::exception::ExceptionCause as core::fmt::Debug>::fmt+0x155>
400d1584:	fb7bb1        	l32r	a11, 400d0370 <_stext+0x350>
400d1587:	ac0c      	movi.n	a12, 10
400d1589:	003906        	j	400d1671 <<xtensa_lx_rt::exception::ExceptionCause as core::fmt::Debug>::fmt+0x155>
400d158c:	fb78b1        	l32r	a11, 400d036c <_stext+0x34c>
400d158f:	ec0c      	movi.n	a12, 14
400d1591:	003706        	j	400d1671 <<xtensa_lx_rt::exception::ExceptionCause as core::fmt::Debug>::fmt+0x155>
400d1594:	fb75b1        	l32r	a11, 400d0368 <_stext+0x348>
400d1597:	1c1c      	movi.n	a12, 17
400d1599:	003506        	j	400d1671 <<xtensa_lx_rt::exception::ExceptionCause as core::fmt::Debug>::fmt+0x155>
400d159c:	fb70b1        	l32r	a11, 400d035c <_stext+0x33c>
400d159f:	2c1c      	movi.n	a12, 18
400d15a1:	003306        	j	400d1671 <<xtensa_lx_rt::exception::ExceptionCause as core::fmt::Debug>::fmt+0x155>
400d15a4:	fb6cb1        	l32r	a11, 400d0354 <_stext+0x334>
400d15a7:	9c0c      	movi.n	a12, 9
400d15a9:	003106        	j	400d1671 <<xtensa_lx_rt::exception::ExceptionCause as core::fmt::Debug>::fmt+0x155>
400d15ac:	fb67b1        	l32r	a11, 400d0348 <_stext+0x328>
400d15af:	ec0c      	movi.n	a12, 14
400d15b1:	002f06        	j	400d1671 <<xtensa_lx_rt::exception::ExceptionCause as core::fmt::Debug>::fmt+0x155>
400d15b4:	fb62b1        	l32r	a11, 400d033c <_stext+0x31c>
400d15b7:	2c1c      	movi.n	a12, 18
400d15b9:	002d06        	j	400d1671 <<xtensa_lx_rt::exception::ExceptionCause as core::fmt::Debug>::fmt+0x155>
400d15bc:	fb5eb1        	l32r	a11, 400d0334 <_stext+0x314>
400d15bf:	cc0c      	movi.n	a12, 12
400d15c1:	002b06        	j	400d1671 <<xtensa_lx_rt::exception::ExceptionCause as core::fmt::Debug>::fmt+0x155>
400d15c4:	fb55b1        	l32r	a11, 400d0318 <_stext+0x2f8>
400d15c7:	8c0c      	movi.n	a12, 8
400d15c9:	002906        	j	400d1671 <<xtensa_lx_rt::exception::ExceptionCause as core::fmt::Debug>::fmt+0x155>
400d15cc:	fb52b1        	l32r	a11, 400d0314 <_stext+0x2f4>
400d15cf:	cc0c      	movi.n	a12, 12
400d15d1:	002706        	j	400d1671 <<xtensa_lx_rt::exception::ExceptionCause as core::fmt::Debug>::fmt+0x155>
400d15d4:	fb4ab1        	l32r	a11, 400d02fc <_stext+0x2dc>
400d15d7:	ac0c      	movi.n	a12, 10
400d15d9:	002506        	j	400d1671 <<xtensa_lx_rt::exception::ExceptionCause as core::fmt::Debug>::fmt+0x155>
400d15dc:	fb3eb1        	l32r	a11, 400d02d4 <_stext+0x2b4>
400d15df:	4c0c      	movi.n	a12, 4
400d15e1:	002306        	j	400d1671 <<xtensa_lx_rt::exception::ExceptionCause as core::fmt::Debug>::fmt+0x155>
400d15e4:	fb60b1        	l32r	a11, 400d0364 <_stext+0x344>
400d15e7:	6c0c      	movi.n	a12, 6
400d15e9:	002106        	j	400d1671 <<xtensa_lx_rt::exception::ExceptionCause as core::fmt::Debug>::fmt+0x155>
400d15ec:	fb5db1        	l32r	a11, 400d0360 <_stext+0x340>
400d15ef:	cc0c      	movi.n	a12, 12
400d15f1:	001f06        	j	400d1671 <<xtensa_lx_rt::exception::ExceptionCause as core::fmt::Debug>::fmt+0x155>
400d15f4:	fb59b1        	l32r	a11, 400d0358 <_stext+0x338>
400d15f7:	ac0c      	movi.n	a12, 10
400d15f9:	001d06        	j	400d1671 <<xtensa_lx_rt::exception::ExceptionCause as core::fmt::Debug>::fmt+0x155>
400d15fc:	fb55b1        	l32r	a11, 400d0350 <_stext+0x330>
400d15ff:	ec1c      	movi.n	a12, 30
400d1601:	001b06        	j	400d1671 <<xtensa_lx_rt::exception::ExceptionCause as core::fmt::Debug>::fmt+0x155>
400d1604:	fb50b1        	l32r	a11, 400d0344 <_stext+0x324>
400d1607:	2c1c      	movi.n	a12, 18
400d1609:	001906        	j	400d1671 <<xtensa_lx_rt::exception::ExceptionCause as core::fmt::Debug>::fmt+0x155>
400d160c:	fb49b1        	l32r	a11, 400d0330 <_stext+0x310>
400d160f:	9c0c      	movi.n	a12, 9
400d1611:	001706        	j	400d1671 <<xtensa_lx_rt::exception::ExceptionCause as core::fmt::Debug>::fmt+0x155>
400d1614:	fb45b1        	l32r	a11, 400d0328 <_stext+0x308>
400d1617:	fc0c      	movi.n	a12, 15
400d1619:	001506        	j	400d1671 <<xtensa_lx_rt::exception::ExceptionCause as core::fmt::Debug>::fmt+0x155>
400d161c:	fb42b1        	l32r	a11, 400d0324 <_stext+0x304>
400d161f:	ac0c      	movi.n	a12, 10
400d1621:	001306        	j	400d1671 <<xtensa_lx_rt::exception::ExceptionCause as core::fmt::Debug>::fmt+0x155>
400d1624:	fb3fb1        	l32r	a11, 400d0320 <_stext+0x300>
400d1627:	ac0c      	movi.n	a12, 10
400d1629:	001106        	j	400d1671 <<xtensa_lx_rt::exception::ExceptionCause as core::fmt::Debug>::fmt+0x155>
400d162c:	fb35b1        	l32r	a11, 400d0300 <_stext+0x2e0>
400d162f:	ac0c      	movi.n	a12, 10
400d1631:	000f06        	j	400d1671 <<xtensa_lx_rt::exception::ExceptionCause as core::fmt::Debug>::fmt+0x155>
400d1634:	fb31b1        	l32r	a11, 400d02f8 <_stext+0x2d8>
400d1637:	bc0c      	movi.n	a12, 11
400d1639:	000d06        	j	400d1671 <<xtensa_lx_rt::exception::ExceptionCause as core::fmt::Debug>::fmt+0x155>
400d163c:	fb3cb1        	l32r	a11, 400d032c <_stext+0x30c>
400d163f:	ac0c      	movi.n	a12, 10
400d1641:	000b06        	j	400d1671 <<xtensa_lx_rt::exception::ExceptionCause as core::fmt::Debug>::fmt+0x155>
400d1644:	fb36b1        	l32r	a11, 400d031c <_stext+0x2fc>
400d1647:	ac0c      	movi.n	a12, 10
400d1649:	000906        	j	400d1671 <<xtensa_lx_rt::exception::ExceptionCause as core::fmt::Debug>::fmt+0x155>
400d164c:	fb2fb1        	l32r	a11, 400d0308 <_stext+0x2e8>
400d164f:	ec0c      	movi.n	a12, 14
400d1651:	000706        	j	400d1671 <<xtensa_lx_rt::exception::ExceptionCause as core::fmt::Debug>::fmt+0x155>
400d1654:	fb2cb1        	l32r	a11, 400d0304 <_stext+0x2e4>
400d1657:	fc0c      	movi.n	a12, 15
400d1659:	000506        	j	400d1671 <<xtensa_lx_rt::exception::ExceptionCause as core::fmt::Debug>::fmt+0x155>
400d165c:	fb21b1        	l32r	a11, 400d02e0 <_stext+0x2c0>
400d165f:	bc0c      	movi.n	a12, 11
400d1661:	000306        	j	400d1671 <<xtensa_lx_rt::exception::ExceptionCause as core::fmt::Debug>::fmt+0x155>
400d1664:	fb1eb1        	l32r	a11, 400d02dc <_stext+0x2bc>
400d1667:	bc0c      	movi.n	a12, 11
400d1669:	000106        	j	400d1671 <<xtensa_lx_rt::exception::ExceptionCause as core::fmt::Debug>::fmt+0x155>
400d166c:	fb29b1        	l32r	a11, 400d0310 <_stext+0x2f0>
400d166f:	dc0c      	movi.n	a12, 13
400d1671:	fb1981        	l32r	a8, 400d02d8 <_stext+0x2b8>
400d1674:	03ad      	mov.n	a10, a3
400d1676:	0008e0        	callx8	a8
400d1679:	0a2d      	mov.n	a2, a10
400d167b:	f01d      	retw.n
400d167d:	0041f0        	break	1, 15

400d1680 <core::fmt::num::parse_u64_into>:
400d1680:	00a136        	entry	a1, 80
400d1683:	b149      	s32i.n	a4, a1, 44
400d1685:	0548      	l32i.n	a4, a5, 0
400d1687:	481c      	movi.n	a8, 20
400d1689:	02a487        	bge	a4, a8, 400d168f <core::fmt::num::parse_u64_into+0xf>
400d168c:	011806        	j	400d1af0 <core::fmt::num::parse_u64_into+0x470>
400d168f:	0a0c      	movi.n	a10, 0
400d1691:	190c      	movi.n	a9, 1
400d1693:	fb3ab1        	l32r	a11, 400d037c <_stext+0x35c>
400d1696:	098d      	mov.n	a8, a9
400d1698:	49bb27        	bgeu	a11, a2, 400d16e5 <core::fmt::num::parse_u64_into+0x65>
400d169b:	fb3971        	l32r	a7, 400d0380 <_stext+0x360>
400d169e:	4bb737        	bgeu	a7, a3, 400d16ed <core::fmt::num::parse_u64_into+0x6d>
400d16a1:	4d9377        	bne	a3, a7, 400d16f2 <core::fmt::num::parse_u64_into+0x72>
400d16a4:	fa6491        	l32r	a9, 400d0034 <_stext+0x14>
400d16a7:	9199      	s32i.n	a9, a1, 36
400d16a9:	04f816        	beqz	a8, 400d16fc <core::fmt::num::parse_u64_into+0x7c>
400d16ac:	8149      	s32i.n	a4, a1, 32
400d16ae:	fb3f61        	l32r	a6, 400d03ac <_stext+0x38c>
400d16b1:	fa6781        	l32r	a8, 400d0050 <_stext+0x30>
400d16b4:	02ad      	mov.n	a10, a2
400d16b6:	03bd      	mov.n	a11, a3
400d16b8:	06cd      	mov.n	a12, a6
400d16ba:	07dd      	mov.n	a13, a7
400d16bc:	084d      	mov.n	a4, a8
400d16be:	0008e0        	callx8	a8
400d16c1:	828a70        	mull	a8, a10, a7
400d16c4:	a29a60        	muluh	a9, a10, a6
400d16c7:	898a      	add.n	a8, a9, a8
400d16c9:	829b60        	mull	a9, a11, a6
400d16cc:	889a      	add.n	a8, a8, a9
400d16ce:	c08380        	sub	a8, a3, a8
400d16d1:	829a60        	mull	a9, a10, a6
400d16d4:	070c      	movi.n	a7, 0
400d16d6:	5159      	s32i.n	a5, a1, 20
400d16d8:	41a9      	s32i.n	a10, a1, 16
400d16da:	02b297        	bgeu	a2, a9, 400d16e0 <core::fmt::num::parse_u64_into+0x60>
400d16dd:	004fc6        	j	400d1820 <core::fmt::num::parse_u64_into+0x1a0>
400d16e0:	07ad      	mov.n	a10, a7
400d16e2:	004f06        	j	400d1822 <core::fmt::num::parse_u64_into+0x1a2>
400d16e5:	0a8d      	mov.n	a8, a10
400d16e7:	fb2671        	l32r	a7, 400d0380 <_stext+0x360>
400d16ea:	b33737        	bltu	a7, a3, 400d16a1 <core::fmt::num::parse_u64_into+0x21>
400d16ed:	0a9d      	mov.n	a9, a10
400d16ef:	b11377        	beq	a3, a7, 400d16a4 <core::fmt::num::parse_u64_into+0x24>
400d16f2:	098d      	mov.n	a8, a9
400d16f4:	fa5091        	l32r	a9, 400d0034 <_stext+0x14>
400d16f7:	9199      	s32i.n	a9, a1, 36
400d16f9:	faf856        	bnez	a8, 400d16ac <core::fmt::num::parse_u64_into+0x2c>
400d16fc:	090c      	movi.n	a9, 0
400d16fe:	1a0c      	movi.n	a10, 1
400d1700:	fb21b1        	l32r	a11, 400d0384 <_stext+0x364>
400d1703:	0a8d      	mov.n	a8, a10
400d1705:	023b27        	bltu	a11, a2, 400d170b <core::fmt::num::parse_u64_into+0x8b>
400d1708:	00cd46        	j	400d1a41 <core::fmt::num::parse_u64_into+0x3c1>
400d170b:	029397        	bne	a3, a9, 400d1711 <core::fmt::num::parse_u64_into+0x91>
400d170e:	00cdc6        	j	400d1a49 <core::fmt::num::parse_u64_into+0x3c9>
400d1711:	021397        	beq	a3, a9, 400d1717 <core::fmt::num::parse_u64_into+0x97>
400d1714:	00ce46        	j	400d1a51 <core::fmt::num::parse_u64_into+0x3d1>
400d1717:	33b816        	beqz	a8, 400d1a56 <core::fmt::num::parse_u64_into+0x3d6>
400d171a:	f8c482        	addi	a8, a4, -8
400d171d:	a189      	s32i.n	a8, a1, 40
400d171f:	0589      	s32i.n	a8, a5, 0
400d1721:	fb1971        	l32r	a7, 400d0388 <_stext+0x368>
400d1724:	0d0c      	movi.n	a13, 0
400d1726:	fa4a81        	l32r	a8, 400d0050 <_stext+0x30>
400d1729:	02ad      	mov.n	a10, a2
400d172b:	03bd      	mov.n	a11, a3
400d172d:	07cd      	mov.n	a12, a7
400d172f:	0008e0        	callx8	a8
400d1732:	828a70        	mull	a8, a10, a7
400d1735:	c0b280        	sub	a11, a2, a8
400d1738:	fb15d1        	l32r	a13, 400d038c <_stext+0x36c>
400d173b:	a28bd0        	muluh	a8, a11, a13
400d173e:	41e580        	srli	a14, a8, 5
400d1741:	64a082        	movi	a8, 100
400d1744:	829e80        	mull	a9, a14, a8
400d1747:	c0cb90        	sub	a12, a11, a9
400d174a:	fb1191        	l32r	a9, 400d0390 <_stext+0x370>
400d174d:	90fc90        	addx2	a15, a12, a9
400d1750:	010f72        	l8ui	a7, a15, 1
400d1753:	b168      	l32i.n	a6, a1, 44
400d1755:	c46a      	add.n	a12, a4, a6
400d1757:	053d      	mov.n	a3, a5
400d1759:	5c0b      	addi.n	a5, a12, -1
400d175b:	004572        	s8i	a7, a5, 0
400d175e:	035d      	mov.n	a5, a3
400d1760:	000ff2        	l8ui	a15, a15, 0
400d1763:	fecc72        	addi	a7, a12, -2
400d1766:	0047f2        	s8i	a15, a7, 0
400d1769:	a2ded0        	muluh	a13, a14, a13
400d176c:	41d5d0        	srli	a13, a13, 5
400d176f:	82dd80        	mull	a13, a13, a8
400d1772:	c0ded0        	sub	a13, a14, a13
400d1775:	90dd90        	addx2	a13, a13, a9
400d1778:	010de2        	l8ui	a14, a13, 1
400d177b:	fdccf2        	addi	a15, a12, -3
400d177e:	004fe2        	s8i	a14, a15, 0
400d1781:	000dd2        	l8ui	a13, a13, 0
400d1784:	fccce2        	addi	a14, a12, -4
400d1787:	004ed2        	s8i	a13, a14, 0
400d178a:	fb02d1        	l32r	a13, 400d0394 <_stext+0x374>
400d178d:	a2dbd0        	muluh	a13, a11, a13
400d1790:	41efd0        	srli	a14, a13, 15
400d1793:	fb01f1        	l32r	a15, 400d0398 <_stext+0x378>
400d1796:	10eef0        	and	a14, a14, a15
400d1799:	fb00f1        	l32r	a15, 400d039c <_stext+0x37c>
400d179c:	82eef0        	mull	a14, a14, a15
400d179f:	1f1c      	movi.n	a15, 17
400d17a1:	400f00        	ssr	a15
400d17a4:	91e0e0        	srl	a14, a14
400d17a7:	82ee80        	mull	a14, a14, a8
400d17aa:	41ddd0        	srli	a13, a13, 13
400d17ad:	c0dde0        	sub	a13, a13, a14
400d17b0:	9128      	l32i.n	a2, a1, 36
400d17b2:	10dd20        	and	a13, a13, a2
400d17b5:	90dd90        	addx2	a13, a13, a9
400d17b8:	010de2        	l8ui	a14, a13, 1
400d17bb:	fbccf2        	addi	a15, a12, -5
400d17be:	004fe2        	s8i	a14, a15, 0
400d17c1:	a1f8      	l32i.n	a15, a1, 40
400d17c3:	000dd2        	l8ui	a13, a13, 0
400d17c6:	faccc2        	addi	a12, a12, -6
400d17c9:	004cd2        	s8i	a13, a12, 0
400d17cc:	fa6ec1        	l32r	a12, 400d0184 <_stext+0x164>
400d17cf:	a2bbc0        	muluh	a11, a11, a12
400d17d2:	2c1c      	movi.n	a12, 18
400d17d4:	400c00        	ssr	a12
400d17d7:	91b0b0        	srl	a11, a11
400d17da:	ffa0c2        	movi	a12, 255
400d17dd:	10dbc0        	and	a13, a11, a12
400d17e0:	9e2c      	movi.n	a14, 41
400d17e2:	82dde0        	mull	a13, a13, a14
400d17e5:	41dcd0        	srli	a13, a13, 12
400d17e8:	828d80        	mull	a8, a13, a8
400d17eb:	c08b80        	sub	a8, a11, a8
400d17ee:	1088c0        	and	a8, a8, a12
400d17f1:	908890        	addx2	a8, a8, a9
400d17f4:	010892        	l8ui	a9, a8, 1
400d17f7:	b6fa      	add.n	a11, a6, a15
400d17f9:	014b92        	s8i	a9, a11, 1
400d17fc:	000882        	l8ui	a8, a8, 0
400d17ff:	004b82        	s8i	a8, a11, 0
400d1802:	fae781        	l32r	a8, 400d03a0 <_stext+0x380>
400d1805:	02b8a7        	bgeu	a8, a10, 400d180b <core::fmt::num::parse_u64_into+0x18b>
400d1808:	0096c6        	j	400d1a67 <core::fmt::num::parse_u64_into+0x3e7>
400d180b:	064d      	mov.n	a4, a6
400d180d:	0f7d      	mov.n	a7, a15
400d180f:	0aed      	mov.n	a14, a10
400d1811:	108e20        	and	a8, a14, a2
400d1814:	63a092        	movi	a9, 99
400d1817:	02b987        	bgeu	a9, a8, 400d181d <core::fmt::num::parse_u64_into+0x19d>
400d181a:	007146        	j	400d19e3 <core::fmt::num::parse_u64_into+0x363>
400d181d:	00ad86        	j	400d1ad7 <core::fmt::num::parse_u64_into+0x457>
400d1820:	1a0c      	movi.n	a10, 1
400d1822:	c0b8a0        	sub	a11, a8, a10
400d1825:	71b9      	s32i.n	a11, a1, 28
400d1827:	c03290        	sub	a3, a2, a9
400d182a:	64a062        	movi	a6, 100
400d182d:	03ad      	mov.n	a10, a3
400d182f:	06cd      	mov.n	a12, a6
400d1831:	a169      	s32i.n	a6, a1, 40
400d1833:	07dd      	mov.n	a13, a7
400d1835:	042d      	mov.n	a2, a4
400d1837:	0002e0        	callx8	a2
400d183a:	1129      	s32i.n	a2, a1, 4
400d183c:	31a9      	s32i.n	a10, a1, 12
400d183e:	fadc81        	l32r	a8, 400d03b0 <_stext+0x390>
400d1841:	2189      	s32i.n	a8, a1, 8
400d1843:	06cd      	mov.n	a12, a6
400d1845:	07dd      	mov.n	a13, a7
400d1847:	0008e0        	callx8	a8
400d184a:	fad161        	l32r	a6, 400d0390 <_stext+0x370>
400d184d:	908a60        	addx2	a8, a10, a6
400d1850:	0169      	s32i.n	a6, a1, 0
400d1852:	010892        	l8ui	a9, a8, 1
400d1855:	b1b8      	l32i.n	a11, a1, 44
400d1857:	81a8      	l32i.n	a10, a1, 32
400d1859:	5aba      	add.n	a5, a10, a11
400d185b:	fdc5a2        	addi	a10, a5, -3
400d185e:	004a92        	s8i	a9, a10, 0
400d1861:	000882        	l8ui	a8, a8, 0
400d1864:	fcc592        	addi	a9, a5, -4
400d1867:	004982        	s8i	a8, a9, 0
400d186a:	facec1        	l32r	a12, 400d03a4 <_stext+0x384>
400d186d:	03ad      	mov.n	a10, a3
400d186f:	7148      	l32i.n	a4, a1, 28
400d1871:	04bd      	mov.n	a11, a4
400d1873:	07dd      	mov.n	a13, a7
400d1875:	0002e0        	callx8	a2
400d1878:	a1c8      	l32i.n	a12, a1, 40
400d187a:	07dd      	mov.n	a13, a7
400d187c:	2128      	l32i.n	a2, a1, 8
400d187e:	0002e0        	callx8	a2
400d1881:	908a60        	addx2	a8, a10, a6
400d1884:	010892        	l8ui	a9, a8, 1
400d1887:	fbc5a2        	addi	a10, a5, -5
400d188a:	004a92        	s8i	a9, a10, 0
400d188d:	000882        	l8ui	a8, a8, 0
400d1890:	fac592        	addi	a9, a5, -6
400d1893:	004982        	s8i	a8, a9, 0
400d1896:	f9ecc1        	l32r	a12, 400d0048 <_stext+0x28>
400d1899:	03ad      	mov.n	a10, a3
400d189b:	04bd      	mov.n	a11, a4
400d189d:	07dd      	mov.n	a13, a7
400d189f:	1148      	l32i.n	a4, a1, 4
400d18a1:	0004e0        	callx8	a4
400d18a4:	a168      	l32i.n	a6, a1, 40
400d18a6:	06cd      	mov.n	a12, a6
400d18a8:	07dd      	mov.n	a13, a7
400d18aa:	0002e0        	callx8	a2
400d18ad:	01b8      	l32i.n	a11, a1, 0
400d18af:	908ab0        	addx2	a8, a10, a11
400d18b2:	010892        	l8ui	a9, a8, 1
400d18b5:	f9c5a2        	addi	a10, a5, -7
400d18b8:	004a92        	s8i	a9, a10, 0
400d18bb:	000882        	l8ui	a8, a8, 0
400d18be:	f8c592        	addi	a9, a5, -8
400d18c1:	004982        	s8i	a8, a9, 0
400d18c4:	3188      	l32i.n	a8, a1, 12
400d18c6:	828860        	mull	a8, a8, a6
400d18c9:	03ad      	mov.n	a10, a3
400d18cb:	61a9      	s32i.n	a10, a1, 24
400d18cd:	c08a80        	sub	a8, a10, a8
400d18d0:	9088b0        	addx2	a8, a8, a11
400d18d3:	0b3d      	mov.n	a3, a11
400d18d5:	010892        	l8ui	a9, a8, 1
400d18d8:	b50b      	addi.n	a11, a5, -1
400d18da:	004b92        	s8i	a9, a11, 0
400d18dd:	000882        	l8ui	a8, a8, 0
400d18e0:	fec592        	addi	a9, a5, -2
400d18e3:	004982        	s8i	a8, a9, 0
400d18e6:	faa8c1        	l32r	a12, 400d0388 <_stext+0x368>
400d18e9:	7128      	l32i.n	a2, a1, 28
400d18eb:	02bd      	mov.n	a11, a2
400d18ed:	07dd      	mov.n	a13, a7
400d18ef:	0004e0        	callx8	a4
400d18f2:	04ed      	mov.n	a14, a4
400d18f4:	faa671        	l32r	a7, 400d038c <_stext+0x36c>
400d18f7:	a28a70        	muluh	a8, a10, a7
400d18fa:	418580        	srli	a8, a8, 5
400d18fd:	828860        	mull	a8, a8, a6
400d1900:	c08a80        	sub	a8, a10, a8
400d1903:	908830        	addx2	a8, a8, a3
400d1906:	036d      	mov.n	a6, a3
400d1908:	010892        	l8ui	a9, a8, 1
400d190b:	f7c5a2        	addi	a10, a5, -9
400d190e:	004a92        	s8i	a9, a10, 0
400d1911:	000882        	l8ui	a8, a8, 0
400d1914:	f6c592        	addi	a9, a5, -10
400d1917:	004982        	s8i	a8, a9, 0
400d191a:	faa6c1        	l32r	a12, 400d03b4 <_stext+0x394>
400d191d:	2d0c      	movi.n	a13, 2
400d191f:	6148      	l32i.n	a4, a1, 24
400d1921:	04ad      	mov.n	a10, a4
400d1923:	02bd      	mov.n	a11, a2
400d1925:	023d      	mov.n	a3, a2
400d1927:	0e2d      	mov.n	a2, a14
400d1929:	0002e0        	callx8	a2
400d192c:	a28a70        	muluh	a8, a10, a7
400d192f:	418580        	srli	a8, a8, 5
400d1932:	a178      	l32i.n	a7, a1, 40
400d1934:	828870        	mull	a8, a8, a7
400d1937:	c08a80        	sub	a8, a10, a8
400d193a:	908860        	addx2	a8, a8, a6
400d193d:	010892        	l8ui	a9, a8, 1
400d1940:	f5c5a2        	addi	a10, a5, -11
400d1943:	004a92        	s8i	a9, a10, 0
400d1946:	000882        	l8ui	a8, a8, 0
400d1949:	f4c592        	addi	a9, a5, -12
400d194c:	004982        	s8i	a8, a9, 0
400d194f:	fa9ac1        	l32r	a12, 400d03b8 <_stext+0x398>
400d1952:	fa9ad1        	l32r	a13, 400d03bc <_stext+0x39c>
400d1955:	04ad      	mov.n	a10, a4
400d1957:	03bd      	mov.n	a11, a3
400d1959:	0002e0        	callx8	a2
400d195c:	ffa082        	movi	a8, 255
400d195f:	109a80        	and	a9, a10, a8
400d1962:	9b2c      	movi.n	a11, 41
400d1964:	8299b0        	mull	a9, a9, a11
400d1967:	419c90        	srli	a9, a9, 12
400d196a:	829970        	mull	a9, a9, a7
400d196d:	c09a90        	sub	a9, a10, a9
400d1970:	108980        	and	a8, a9, a8
400d1973:	908860        	addx2	a8, a8, a6
400d1976:	010892        	l8ui	a9, a8, 1
400d1979:	81a8      	l32i.n	a10, a1, 32
400d197b:	f0ca72        	addi	a7, a10, -16
400d197e:	b1a8      	l32i.n	a10, a1, 44
400d1980:	0a4d      	mov.n	a4, a10
400d1982:	aa7a      	add.n	a10, a10, a7
400d1984:	014a92        	s8i	a9, a10, 1
400d1987:	000882        	l8ui	a8, a8, 0
400d198a:	004a82        	s8i	a8, a10, 0
400d198d:	f9afc1        	l32r	a12, 400d004c <_stext+0x2c>
400d1990:	e8a0d2        	movi	a13, 232
400d1993:	61a8      	l32i.n	a10, a1, 24
400d1995:	03bd      	mov.n	a11, a3
400d1997:	0002e0        	callx8	a2
400d199a:	fa8381        	l32r	a8, 400d03a8 <_stext+0x388>
400d199d:	108a80        	and	a8, a10, a8
400d19a0:	418280        	srli	a8, a8, 2
400d19a3:	fa7e91        	l32r	a9, 400d039c <_stext+0x37c>
400d19a6:	828890        	mull	a8, a8, a9
400d19a9:	191c      	movi.n	a9, 17
400d19ab:	400900        	ssr	a9
400d19ae:	918080        	srl	a8, a8
400d19b1:	a198      	l32i.n	a9, a1, 40
400d19b3:	828890        	mull	a8, a8, a9
400d19b6:	c08a80        	sub	a8, a10, a8
400d19b9:	9128      	l32i.n	a2, a1, 36
400d19bb:	108820        	and	a8, a8, a2
400d19be:	908860        	addx2	a8, a8, a6
400d19c1:	010892        	l8ui	a9, a8, 1
400d19c4:	f3c5a2        	addi	a10, a5, -13
400d19c7:	004a92        	s8i	a9, a10, 0
400d19ca:	000882        	l8ui	a8, a8, 0
400d19cd:	f2c592        	addi	a9, a5, -14
400d19d0:	004982        	s8i	a8, a9, 0
400d19d3:	5158      	l32i.n	a5, a1, 20
400d19d5:	41e8      	l32i.n	a14, a1, 16
400d19d7:	108e20        	and	a8, a14, a2
400d19da:	63a092        	movi	a9, 99
400d19dd:	023987        	bltu	a9, a8, 400d19e3 <core::fmt::num::parse_u64_into+0x363>
400d19e0:	003cc6        	j	400d1ad7 <core::fmt::num::parse_u64_into+0x457>
400d19e3:	fec772        	addi	a7, a7, -2
400d19e6:	947a      	add.n	a9, a4, a7
400d19e8:	fa7081        	l32r	a8, 400d03a8 <_stext+0x388>
400d19eb:	108e80        	and	a8, a14, a8
400d19ee:	418280        	srli	a8, a8, 2
400d19f1:	fa6aa1        	l32r	a10, 400d039c <_stext+0x37c>
400d19f4:	8288a0        	mull	a8, a8, a10
400d19f7:	1a1c      	movi.n	a10, 17
400d19f9:	400a00        	ssr	a10
400d19fc:	918080        	srl	a8, a8
400d19ff:	64a0a2        	movi	a10, 100
400d1a02:	82a8a0        	mull	a10, a8, a10
400d1a05:	c0aea0        	sub	a10, a14, a10
400d1a08:	10aa20        	and	a10, a10, a2
400d1a0b:	fa61b1        	l32r	a11, 400d0390 <_stext+0x370>
400d1a0e:	90aab0        	addx2	a10, a10, a11
400d1a11:	010ab2        	l8ui	a11, a10, 1
400d1a14:	0149b2        	s8i	a11, a9, 1
400d1a17:	000aa2        	l8ui	a10, a10, 0
400d1a1a:	0049a2        	s8i	a10, a9, 0
400d1a1d:	109820        	and	a9, a8, a2
400d1a20:	0299f6        	bgeui	a9, 10, 400d1a26 <core::fmt::num::parse_u64_into+0x3a6>
400d1a23:	002ec6        	j	400d1ae2 <core::fmt::num::parse_u64_into+0x462>
400d1a26:	fec782        	addi	a8, a7, -2
400d1a29:	0589      	s32i.n	a8, a5, 0
400d1a2b:	848a      	add.n	a8, a4, a8
400d1a2d:	fa58a1        	l32r	a10, 400d0390 <_stext+0x370>
400d1a30:	9099a0        	addx2	a9, a9, a10
400d1a33:	0109a2        	l8ui	a10, a9, 1
400d1a36:	0148a2        	s8i	a10, a8, 1
400d1a39:	000992        	l8ui	a9, a9, 0
400d1a3c:	004892        	s8i	a9, a8, 0
400d1a3f:	f01d      	retw.n
400d1a41:	098d      	mov.n	a8, a9
400d1a43:	021397        	beq	a3, a9, 400d1a49 <core::fmt::num::parse_u64_into+0x3c9>
400d1a46:	ff31c6        	j	400d1711 <core::fmt::num::parse_u64_into+0x91>
400d1a49:	09ad      	mov.n	a10, a9
400d1a4b:	029397        	bne	a3, a9, 400d1a51 <core::fmt::num::parse_u64_into+0x3d1>
400d1a4e:	ff3146        	j	400d1717 <core::fmt::num::parse_u64_into+0x97>
400d1a51:	0a8d      	mov.n	a8, a10
400d1a53:	cc3856        	bnez	a8, 400d171a <core::fmt::num::parse_u64_into+0x9a>
400d1a56:	04fd      	mov.n	a15, a4
400d1a58:	02ad      	mov.n	a10, a2
400d1a5a:	b168      	l32i.n	a6, a1, 44
400d1a5c:	9128      	l32i.n	a2, a1, 36
400d1a5e:	fa5081        	l32r	a8, 400d03a0 <_stext+0x380>
400d1a61:	0238a7        	bltu	a8, a10, 400d1a67 <core::fmt::num::parse_u64_into+0x3e7>
400d1a64:	ff68c6        	j	400d180b <core::fmt::num::parse_u64_into+0x18b>
400d1a67:	fccf72        	addi	a7, a15, -4
400d1a6a:	867a      	add.n	a8, a6, a7
400d1a6c:	fa4a91        	l32r	a9, 400d0394 <_stext+0x374>
400d1a6f:	a29a90        	muluh	a9, a10, a9
400d1a72:	41ed90        	srli	a14, a9, 13
400d1a75:	fa4b91        	l32r	a9, 400d03a4 <_stext+0x384>
400d1a78:	829e90        	mull	a9, a14, a9
400d1a7b:	c09a90        	sub	a9, a10, a9
400d1a7e:	fa4aa1        	l32r	a10, 400d03a8 <_stext+0x388>
400d1a81:	10a9a0        	and	a10, a9, a10
400d1a84:	41a2a0        	srli	a10, a10, 2
400d1a87:	fa45b1        	l32r	a11, 400d039c <_stext+0x37c>
400d1a8a:	82aab0        	mull	a10, a10, a11
400d1a8d:	1b1c      	movi.n	a11, 17
400d1a8f:	400b00        	ssr	a11
400d1a92:	91a0a0        	srl	a10, a10
400d1a95:	fa3eb1        	l32r	a11, 400d0390 <_stext+0x370>
400d1a98:	90cab0        	addx2	a12, a10, a11
400d1a9b:	010cd2        	l8ui	a13, a12, 1
400d1a9e:	0148d2        	s8i	a13, a8, 1
400d1aa1:	000cc2        	l8ui	a12, a12, 0
400d1aa4:	0048c2        	s8i	a12, a8, 0
400d1aa7:	64a082        	movi	a8, 100
400d1aaa:	828a80        	mull	a8, a10, a8
400d1aad:	c08980        	sub	a8, a9, a8
400d1ab0:	108820        	and	a8, a8, a2
400d1ab3:	9088b0        	addx2	a8, a8, a11
400d1ab6:	010892        	l8ui	a9, a8, 1
400d1ab9:	064d      	mov.n	a4, a6
400d1abb:	af6a      	add.n	a10, a15, a6
400d1abd:	ba0b      	addi.n	a11, a10, -1
400d1abf:	004b92        	s8i	a9, a11, 0
400d1ac2:	000882        	l8ui	a8, a8, 0
400d1ac5:	feca92        	addi	a9, a10, -2
400d1ac8:	004982        	s8i	a8, a9, 0
400d1acb:	108e20        	and	a8, a14, a2
400d1ace:	63a092        	movi	a9, 99
400d1ad1:	02b987        	bgeu	a9, a8, 400d1ad7 <core::fmt::num::parse_u64_into+0x457>
400d1ad4:	ffc2c6        	j	400d19e3 <core::fmt::num::parse_u64_into+0x363>
400d1ad7:	0e8d      	mov.n	a8, a14
400d1ad9:	109820        	and	a9, a8, a2
400d1adc:	0299b6        	bltui	a9, 10, 400d1ae2 <core::fmt::num::parse_u64_into+0x462>
400d1adf:	ffd0c6        	j	400d1a26 <core::fmt::num::parse_u64_into+0x3a6>
400d1ae2:	970b      	addi.n	a9, a7, -1
400d1ae4:	0599      	s32i.n	a9, a5, 0
400d1ae6:	949a      	add.n	a9, a4, a9
400d1ae8:	30c882        	addi	a8, a8, 48
400d1aeb:	004982        	s8i	a8, a9, 0
400d1aee:	f01d      	retw.n
400d1af0:	fa34a1        	l32r	a10, 400d03c0 <_stext+0x3a0>
400d1af3:	cb1c      	movi.n	a11, 28
400d1af5:	fa33c1        	l32r	a12, 400d03c4 <_stext+0x3a4>
400d1af8:	f95281        	l32r	a8, 400d0040 <_stext+0x20>
400d1afb:	0008e0        	callx8	a8
400d1afe:	0041f0        	break	1, 15
400d1b01:	000000        	ill

400d1b04 <core::fmt::num::<impl core::fmt::Display for u128>::fmt>:
400d1b04:	004136        	entry	a1, 32
400d1b07:	32d8      	l32i.n	a13, a2, 12
400d1b09:	22c8      	l32i.n	a12, a2, 8
400d1b0b:	12b8      	l32i.n	a11, a2, 4
400d1b0d:	02a8      	l32i.n	a10, a2, 0
400d1b0f:	1e0c      	movi.n	a14, 1
400d1b11:	fa2d81        	l32r	a8, 400d03c8 <_stext+0x3a8>
400d1b14:	03fd      	mov.n	a15, a3
400d1b16:	0008e0        	callx8	a8
400d1b19:	0a2d      	mov.n	a2, a10
400d1b1b:	f01d      	retw.n
400d1b1d:	000000        	ill

400d1b20 <core::fmt::num::fmt_u128>:
400d1b20:	014136        	entry	a1, 160
400d1b23:	106172        	s32i	a7, a1, 64
400d1b26:	f169      	s32i.n	a6, a1, 60
400d1b28:	782c      	movi.n	a8, 39
400d1b2a:	e189      	s32i.n	a8, a1, 56
400d1b2c:	1c6182        	s32i	a8, a1, 112
400d1b2f:	080c      	movi.n	a8, 0
400d1b31:	fa2691        	l32r	a9, 400d03cc <_stext+0x3ac>
400d1b34:	073497        	bltu	a4, a9, 400d1b3f <core::fmt::num::fmt_u128+0x1f>
400d1b37:	08ad      	mov.n	a10, a8
400d1b39:	079587        	bne	a5, a8, 400d1b44 <core::fmt::num::fmt_u128+0x24>
400d1b3c:	000186        	j	400d1b46 <core::fmt::num::fmt_u128+0x26>
400d1b3f:	1a0c      	movi.n	a10, 1
400d1b41:	011587        	beq	a5, a8, 400d1b46 <core::fmt::num::fmt_u128+0x26>
400d1b44:	08ad      	mov.n	a10, a8
400d1b46:	309490        	xor	a9, a4, a9
400d1b49:	209950        	or	a9, a9, a5
400d1b4c:	011987        	beq	a9, a8, 400d1b51 <core::fmt::num::fmt_u128+0x31>
400d1b4f:	0a8d      	mov.n	a8, a10
400d1b51:	fa21b1        	l32r	a11, 400d03d8 <_stext+0x3b8>
400d1b54:	3a1c      	movi.n	a10, 19
400d1b56:	f93e91        	l32r	a9, 400d0050 <_stext+0x30>
400d1b59:	1161b2        	s32i	a11, a1, 68
400d1b5c:	c199      	s32i.n	a9, a1, 48
400d1b5e:	d139      	s32i.n	a3, a1, 52
400d1b60:	b1a9      	s32i.n	a10, a1, 44
400d1b62:	01c816        	beqz	a8, 400d1b82 <core::fmt::num::fmt_u128+0x62>
400d1b65:	400a00        	ssr	a10
400d1b68:	81a320        	src	a10, a3, a2
400d1b6b:	81b430        	src	a11, a4, a3
400d1b6e:	fa1dc1        	l32r	a12, 400d03e4 <_stext+0x3c4>
400d1b71:	fa1dd1        	l32r	a13, 400d03e8 <_stext+0x3c8>
400d1b74:	0009e0        	callx8	a9
400d1b77:	0a4d      	mov.n	a4, a10
400d1b79:	0b7d      	mov.n	a7, a11
400d1b7b:	030c      	movi.n	a3, 0
400d1b7d:	035d      	mov.n	a5, a3
400d1b7f:	004c46        	j	400d1cb4 <core::fmt::num::fmt_u128+0x194>
400d1b82:	a159      	s32i.n	a5, a1, 40
400d1b84:	050c      	movi.n	a5, 0
400d1b86:	1159      	s32i.n	a5, a1, 4
400d1b88:	0159      	s32i.n	a5, a1, 0
400d1b8a:	fa1171        	l32r	a7, 400d03d0 <_stext+0x3b0>
400d1b8d:	fa1161        	l32r	a6, 400d03d4 <_stext+0x3b4>
400d1b90:	02ad      	mov.n	a10, a2
400d1b92:	03bd      	mov.n	a11, a3
400d1b94:	05cd      	mov.n	a12, a5
400d1b96:	05dd      	mov.n	a13, a5
400d1b98:	07ed      	mov.n	a14, a7
400d1b9a:	06fd      	mov.n	a15, a6
400d1b9c:	112182        	l32i	a8, a1, 68
400d1b9f:	0008e0        	callx8	a8
400d1ba2:	21c9      	s32i.n	a12, a1, 8
400d1ba4:	51d9      	s32i.n	a13, a1, 20
400d1ba6:	1159      	s32i.n	a5, a1, 4
400d1ba8:	0159      	s32i.n	a5, a1, 0
400d1baa:	fa0ce1        	l32r	a14, 400d03dc <_stext+0x3bc>
400d1bad:	fa0cf1        	l32r	a15, 400d03e0 <_stext+0x3c0>
400d1bb0:	9129      	s32i.n	a2, a1, 36
400d1bb2:	02ad      	mov.n	a10, a2
400d1bb4:	03bd      	mov.n	a11, a3
400d1bb6:	05cd      	mov.n	a12, a5
400d1bb8:	05dd      	mov.n	a13, a5
400d1bba:	71e9      	s32i.n	a14, a1, 28
400d1bbc:	61f9      	s32i.n	a15, a1, 24
400d1bbe:	112182        	l32i	a8, a1, 68
400d1bc1:	0008e0        	callx8	a8
400d1bc4:	0a3d      	mov.n	a3, a10
400d1bc6:	31b9      	s32i.n	a11, a1, 12
400d1bc8:	0c2d      	mov.n	a2, a12
400d1bca:	81d9      	s32i.n	a13, a1, 32
400d1bcc:	1159      	s32i.n	a5, a1, 4
400d1bce:	0159      	s32i.n	a5, a1, 0
400d1bd0:	04ad      	mov.n	a10, a4
400d1bd2:	a1b8      	l32i.n	a11, a1, 40
400d1bd4:	05cd      	mov.n	a12, a5
400d1bd6:	05dd      	mov.n	a13, a5
400d1bd8:	07ed      	mov.n	a14, a7
400d1bda:	06fd      	mov.n	a15, a6
400d1bdc:	112182        	l32i	a8, a1, 68
400d1bdf:	0008e0        	callx8	a8
400d1be2:	41d9      	s32i.n	a13, a1, 16
400d1be4:	21d8      	l32i.n	a13, a1, 8
400d1be6:	1159      	s32i.n	a5, a1, 4
400d1be8:	0159      	s32i.n	a5, a1, 0
400d1bea:	9d3a      	add.n	a9, a13, a3
400d1bec:	89aa      	add.n	a8, a9, a10
400d1bee:	160c      	movi.n	a6, 1
400d1bf0:	06ad      	mov.n	a10, a6
400d1bf2:	013897        	bltu	a8, a9, 400d1bf7 <core::fmt::num::fmt_u128+0xd7>
400d1bf5:	05ad      	mov.n	a10, a5
400d1bf7:	068d      	mov.n	a8, a6
400d1bf9:	0139d7        	bltu	a9, a13, 400d1bfe <core::fmt::num::fmt_u128+0xde>
400d1bfc:	058d      	mov.n	a8, a5
400d1bfe:	51e8      	l32i.n	a14, a1, 20
400d1c00:	3198      	l32i.n	a9, a1, 12
400d1c02:	9e9a      	add.n	a9, a14, a9
400d1c04:	998a      	add.n	a9, a9, a8
400d1c06:	b9ba      	add.n	a11, a9, a11
400d1c08:	bbaa      	add.n	a11, a11, a10
400d1c0a:	06dd      	mov.n	a13, a6
400d1c0c:	027d      	mov.n	a7, a2
400d1c0e:	023b97        	bltu	a11, a9, 400d1c14 <core::fmt::num::fmt_u128+0xf4>
400d1c11:	006e46        	j	400d1dce <core::fmt::num::fmt_u128+0x2ae>
400d1c14:	021b97        	beq	a11, a9, 400d1c1a <core::fmt::num::fmt_u128+0xfa>
400d1c17:	006ec6        	j	400d1dd6 <core::fmt::num::fmt_u128+0x2b6>
400d1c1a:	acaa      	add.n	a10, a12, a10
400d1c1c:	062d      	mov.n	a2, a6
400d1c1e:	31a9      	s32i.n	a10, a1, 12
400d1c20:	023ac7        	bltu	a10, a12, 400d1c26 <core::fmt::num::fmt_u128+0x106>
400d1c23:	006f46        	j	400d1de4 <core::fmt::num::fmt_u128+0x2c4>
400d1c26:	06ad      	mov.n	a10, a6
400d1c28:	0239e7        	bltu	a9, a14, 400d1c2e <core::fmt::num::fmt_u128+0x10e>
400d1c2b:	006fc6        	j	400d1dee <core::fmt::num::fmt_u128+0x2ce>
400d1c2e:	0119e7        	beq	a9, a14, 400d1c33 <core::fmt::num::fmt_u128+0x113>
400d1c31:	0a8d      	mov.n	a8, a10
400d1c33:	378a      	add.n	a3, a7, a8
400d1c35:	04ad      	mov.n	a10, a4
400d1c37:	a1b8      	l32i.n	a11, a1, 40
400d1c39:	05cd      	mov.n	a12, a5
400d1c3b:	05dd      	mov.n	a13, a5
400d1c3d:	71e8      	l32i.n	a14, a1, 28
400d1c3f:	61f8      	l32i.n	a15, a1, 24
400d1c41:	112182        	l32i	a8, a1, 68
400d1c44:	0008e0        	callx8	a8
400d1c47:	93aa      	add.n	a9, a3, a10
400d1c49:	068d      	mov.n	a8, a6
400d1c4b:	013937        	bltu	a9, a3, 400d1c50 <core::fmt::num::fmt_u128+0x130>
400d1c4e:	058d      	mov.n	a8, a5
400d1c50:	41a8      	l32i.n	a10, a1, 16
400d1c52:	fa2a      	add.n	a15, a10, a2
400d1c54:	06ad      	mov.n	a10, a6
400d1c56:	013377        	bltu	a3, a7, 400d1c5b <core::fmt::num::fmt_u128+0x13b>
400d1c59:	05ad      	mov.n	a10, a5
400d1c5b:	81e8      	l32i.n	a14, a1, 32
400d1c5d:	aeaa      	add.n	a10, a14, a10
400d1c5f:	baba      	add.n	a11, a10, a11
400d1c61:	eb8a      	add.n	a14, a11, a8
400d1c63:	fefa      	add.n	a15, a14, a15
400d1c65:	31b8      	l32i.n	a11, a1, 12
400d1c67:	79ba      	add.n	a7, a9, a11
400d1c69:	06bd      	mov.n	a11, a6
400d1c6b:	023797        	bltu	a7, a9, 400d1c71 <core::fmt::num::fmt_u128+0x151>
400d1c6e:	0061c6        	j	400d1df9 <core::fmt::num::fmt_u128+0x2d9>
400d1c71:	9fba      	add.n	a9, a15, a11
400d1c73:	06fd      	mov.n	a15, a6
400d1c75:	0239e7        	bltu	a9, a14, 400d1c7b <core::fmt::num::fmt_u128+0x15b>
400d1c78:	006246        	j	400d1e05 <core::fmt::num::fmt_u128+0x2e5>
400d1c7b:	0219e7        	beq	a9, a14, 400d1c81 <core::fmt::num::fmt_u128+0x161>
400d1c7e:	0062c6        	j	400d1e0d <core::fmt::num::fmt_u128+0x2ed>
400d1c81:	06fd      	mov.n	a15, a6
400d1c83:	023ea7        	bltu	a14, a10, 400d1c89 <core::fmt::num::fmt_u128+0x169>
400d1c86:	006346        	j	400d1e17 <core::fmt::num::fmt_u128+0x2f7>
400d1c89:	021ea7        	beq	a14, a10, 400d1c8f <core::fmt::num::fmt_u128+0x16f>
400d1c8c:	0063c6        	j	400d1e1f <core::fmt::num::fmt_u128+0x2ff>
400d1c8f:	ec8a      	add.n	a14, a12, a8
400d1c91:	8eba      	add.n	a8, a14, a11
400d1c93:	06ad      	mov.n	a10, a6
400d1c95:	0238e7        	bltu	a8, a14, 400d1c9b <core::fmt::num::fmt_u128+0x17b>
400d1c98:	006446        	j	400d1e2d <core::fmt::num::fmt_u128+0x30d>
400d1c9b:	013ec7        	bltu	a14, a12, 400d1ca0 <core::fmt::num::fmt_u128+0x180>
400d1c9e:	056d      	mov.n	a6, a5
400d1ca0:	bd6a      	add.n	a11, a13, a6
400d1ca2:	abaa      	add.n	a10, a11, a10
400d1ca4:	eb1c      	movi.n	a11, 30
400d1ca6:	400b00        	ssr	a11
400d1ca9:	817a80        	src	a7, a10, a8
400d1cac:	814890        	src	a4, a8, a9
400d1caf:	9130a0        	srl	a3, a10
400d1cb2:	9128      	l32i.n	a2, a1, 36
400d1cb4:	f67c      	movi.n	a6, -1
400d1cb6:	1169      	s32i.n	a6, a1, 4
400d1cb8:	0169      	s32i.n	a6, a1, 0
400d1cba:	f9cce1        	l32r	a14, 400d03ec <_stext+0x3cc>
400d1cbd:	f9ccf1        	l32r	a15, 400d03f0 <_stext+0x3d0>
400d1cc0:	04ad      	mov.n	a10, a4
400d1cc2:	07bd      	mov.n	a11, a7
400d1cc4:	03cd      	mov.n	a12, a3
400d1cc6:	05dd      	mov.n	a13, a5
400d1cc8:	112182        	l32i	a8, a1, 68
400d1ccb:	0008e0        	callx8	a8
400d1cce:	0a8d      	mov.n	a8, a10
400d1cd0:	a82a      	add.n	a10, a8, a2
400d1cd2:	043a87        	bltu	a10, a8, 400d1cda <core::fmt::num::fmt_u128+0x1ba>
400d1cd5:	080c      	movi.n	a8, 0
400d1cd7:	000046        	j	400d1cdc <core::fmt::num::fmt_u128+0x1bc>
400d1cda:	180c      	movi.n	a8, 1
400d1cdc:	d198      	l32i.n	a9, a1, 52
400d1cde:	9b9a      	add.n	a9, a11, a9
400d1ce0:	b98a      	add.n	a11, a9, a8
400d1ce2:	48c1c2        	addi	a12, a1, 72
400d1ce5:	70c1d2        	addi	a13, a1, 112
400d1ce8:	f9c321        	l32r	a2, 400d03f4 <_stext+0x3d4>
400d1ceb:	0002e0        	callx8	a2
400d1cee:	208430        	or	a8, a4, a3
400d1cf1:	209750        	or	a9, a7, a5
400d1cf4:	208890        	or	a8, a8, a9
400d1cf7:	0a0816        	beqz	a8, 400d1d9b <core::fmt::num::fmt_u128+0x27b>
400d1cfa:	d129      	s32i.n	a2, a1, 52
400d1cfc:	1c2182        	l32i	a8, a1, 112
400d1cff:	48c192        	addi	a9, a1, 72
400d1d02:	a199      	s32i.n	a9, a1, 40
400d1d04:	14c9a2        	addi	a10, a9, 20
400d1d07:	ecc8c2        	addi	a12, a8, -20
400d1d0a:	0b3c      	movi.n	a11, 48
400d1d0c:	f9bb81        	l32r	a8, 400d03f8 <_stext+0x3d8>
400d1d0f:	81b9      	s32i.n	a11, a1, 32
400d1d11:	9189      	s32i.n	a8, a1, 36
400d1d13:	0008e0        	callx8	a8
400d1d16:	b188      	l32i.n	a8, a1, 44
400d1d18:	400800        	ssr	a8
400d1d1b:	81a740        	src	a10, a7, a4
400d1d1e:	813370        	src	a3, a3, a7
400d1d21:	f9b0c1        	l32r	a12, 400d03e4 <_stext+0x3c4>
400d1d24:	f9b121        	l32r	a2, 400d03e8 <_stext+0x3c8>
400d1d27:	b1a9      	s32i.n	a10, a1, 44
400d1d29:	03bd      	mov.n	a11, a3
400d1d2b:	0c5d      	mov.n	a5, a12
400d1d2d:	02dd      	mov.n	a13, a2
400d1d2f:	c188      	l32i.n	a8, a1, 48
400d1d31:	0008e0        	callx8	a8
400d1d34:	1169      	s32i.n	a6, a1, 4
400d1d36:	0169      	s32i.n	a6, a1, 0
400d1d38:	481c      	movi.n	a8, 20
400d1d3a:	1c6182        	s32i	a8, a1, 112
400d1d3d:	f9abe1        	l32r	a14, 400d03ec <_stext+0x3cc>
400d1d40:	f9acf1        	l32r	a15, 400d03f0 <_stext+0x3d0>
400d1d43:	c1a9      	s32i.n	a10, a1, 48
400d1d45:	112182        	l32i	a8, a1, 68
400d1d48:	0008e0        	callx8	a8
400d1d4b:	0a8d      	mov.n	a8, a10
400d1d4d:	a84a      	add.n	a10, a8, a4
400d1d4f:	040c      	movi.n	a4, 0
400d1d51:	160c      	movi.n	a6, 1
400d1d53:	069d      	mov.n	a9, a6
400d1d55:	013a87        	bltu	a10, a8, 400d1d5a <core::fmt::num::fmt_u128+0x23a>
400d1d58:	049d      	mov.n	a9, a4
400d1d5a:	8b7a      	add.n	a8, a11, a7
400d1d5c:	b89a      	add.n	a11, a8, a9
400d1d5e:	70c1d2        	addi	a13, a1, 112
400d1d61:	a1c8      	l32i.n	a12, a1, 40
400d1d63:	d188      	l32i.n	a8, a1, 52
400d1d65:	0008e0        	callx8	a8
400d1d68:	068d      	mov.n	a8, a6
400d1d6a:	b198      	l32i.n	a9, a1, 44
400d1d6c:	4cb957        	bgeu	a9, a5, 400d1dbc <core::fmt::num::fmt_u128+0x29c>
400d1d6f:	4eb327        	bgeu	a3, a2, 400d1dc1 <core::fmt::num::fmt_u128+0x2a1>
400d1d72:	509327        	bne	a3, a2, 400d1dc6 <core::fmt::num::fmt_u128+0x2a6>
400d1d75:	022856        	bnez	a8, 400d1d9b <core::fmt::num::fmt_u128+0x27b>
400d1d78:	180c      	movi.n	a8, 1
400d1d7a:	48c192        	addi	a9, a1, 72
400d1d7d:	20a980        	or	a10, a9, a8
400d1d80:	1c2182        	l32i	a8, a1, 112
400d1d83:	c80b      	addi.n	a12, a8, -1
400d1d85:	8178      	l32i.n	a7, a1, 32
400d1d87:	07bd      	mov.n	a11, a7
400d1d89:	9188      	l32i.n	a8, a1, 36
400d1d8b:	0008e0        	callx8	a8
400d1d8e:	080c      	movi.n	a8, 0
400d1d90:	1c6182        	s32i	a8, a1, 112
400d1d93:	c188      	l32i.n	a8, a1, 48
400d1d95:	208870        	or	a8, a8, a7
400d1d98:	484182        	s8i	a8, a1, 72
400d1d9b:	1c2182        	l32i	a8, a1, 112
400d1d9e:	48c192        	addi	a9, a1, 72
400d1da1:	e98a      	add.n	a14, a9, a8
400d1da3:	e198      	l32i.n	a9, a1, 56
400d1da5:	c0f980        	sub	a15, a9, a8
400d1da8:	f995c1        	l32r	a12, 400d03fc <_stext+0x3dc>
400d1dab:	0d0c      	movi.n	a13, 0
400d1dad:	f99481        	l32r	a8, 400d0400 <_stext+0x3e0>
400d1db0:	1021a2        	l32i	a10, a1, 64
400d1db3:	f1b8      	l32i.n	a11, a1, 60
400d1db5:	0008e0        	callx8	a8
400d1db8:	0a2d      	mov.n	a2, a10
400d1dba:	f01d      	retw.n
400d1dbc:	048d      	mov.n	a8, a4
400d1dbe:	b03327        	bltu	a3, a2, 400d1d72 <core::fmt::num::fmt_u128+0x252>
400d1dc1:	046d      	mov.n	a6, a4
400d1dc3:	ae1327        	beq	a3, a2, 400d1d75 <core::fmt::num::fmt_u128+0x255>
400d1dc6:	068d      	mov.n	a8, a6
400d1dc8:	fac816        	beqz	a8, 400d1d78 <core::fmt::num::fmt_u128+0x258>
400d1dcb:	fff306        	j	400d1d9b <core::fmt::num::fmt_u128+0x27b>
400d1dce:	05dd      	mov.n	a13, a5
400d1dd0:	029b97        	bne	a11, a9, 400d1dd6 <core::fmt::num::fmt_u128+0x2b6>
400d1dd3:	ff90c6        	j	400d1c1a <core::fmt::num::fmt_u128+0xfa>
400d1dd6:	0dad      	mov.n	a10, a13
400d1dd8:	acaa      	add.n	a10, a12, a10
400d1dda:	062d      	mov.n	a2, a6
400d1ddc:	31a9      	s32i.n	a10, a1, 12
400d1dde:	02bac7        	bgeu	a10, a12, 400d1de4 <core::fmt::num::fmt_u128+0x2c4>
400d1de1:	ff9046        	j	400d1c26 <core::fmt::num::fmt_u128+0x106>
400d1de4:	052d      	mov.n	a2, a5
400d1de6:	06ad      	mov.n	a10, a6
400d1de8:	02b9e7        	bgeu	a9, a14, 400d1dee <core::fmt::num::fmt_u128+0x2ce>
400d1deb:	ff8fc6        	j	400d1c2e <core::fmt::num::fmt_u128+0x10e>
400d1dee:	05ad      	mov.n	a10, a5
400d1df0:	0219e7        	beq	a9, a14, 400d1df6 <core::fmt::num::fmt_u128+0x2d6>
400d1df3:	ff8e86        	j	400d1c31 <core::fmt::num::fmt_u128+0x111>
400d1df6:	ff8e46        	j	400d1c33 <core::fmt::num::fmt_u128+0x113>
400d1df9:	05bd      	mov.n	a11, a5
400d1dfb:	9fba      	add.n	a9, a15, a11
400d1dfd:	06fd      	mov.n	a15, a6
400d1dff:	02b9e7        	bgeu	a9, a14, 400d1e05 <core::fmt::num::fmt_u128+0x2e5>
400d1e02:	ff9d46        	j	400d1c7b <core::fmt::num::fmt_u128+0x15b>
400d1e05:	05fd      	mov.n	a15, a5
400d1e07:	0299e7        	bne	a9, a14, 400d1e0d <core::fmt::num::fmt_u128+0x2ed>
400d1e0a:	ff9cc6        	j	400d1c81 <core::fmt::num::fmt_u128+0x161>
400d1e0d:	0fbd      	mov.n	a11, a15
400d1e0f:	06fd      	mov.n	a15, a6
400d1e11:	02bea7        	bgeu	a14, a10, 400d1e17 <core::fmt::num::fmt_u128+0x2f7>
400d1e14:	ff9c46        	j	400d1c89 <core::fmt::num::fmt_u128+0x169>
400d1e17:	05fd      	mov.n	a15, a5
400d1e19:	029ea7        	bne	a14, a10, 400d1e1f <core::fmt::num::fmt_u128+0x2ff>
400d1e1c:	ff9bc6        	j	400d1c8f <core::fmt::num::fmt_u128+0x16f>
400d1e1f:	0f8d      	mov.n	a8, a15
400d1e21:	ec8a      	add.n	a14, a12, a8
400d1e23:	8eba      	add.n	a8, a14, a11
400d1e25:	06ad      	mov.n	a10, a6
400d1e27:	02b8e7        	bgeu	a8, a14, 400d1e2d <core::fmt::num::fmt_u128+0x30d>
400d1e2a:	ff9b46        	j	400d1c9b <core::fmt::num::fmt_u128+0x17b>
400d1e2d:	05ad      	mov.n	a10, a5
400d1e2f:	023ec7        	bltu	a14, a12, 400d1e35 <core::fmt::num::fmt_u128+0x315>
400d1e32:	ff9a06        	j	400d1c9e <core::fmt::num::fmt_u128+0x17e>
400d1e35:	ff99c6        	j	400d1ca0 <core::fmt::num::fmt_u128+0x180>

400d1e38 <core::fmt::num::<impl core::fmt::LowerHex for i32>::fmt>:
400d1e38:	014136        	entry	a1, 160
400d1e3b:	80a0a2        	movi	a10, 128
400d1e3e:	00c182        	addi	a8, a1, 0
400d1e41:	88aa      	add.n	a8, a8, a10
400d1e43:	0278      	l32i.n	a7, a2, 0
400d1e45:	f90c      	movi.n	a9, 15
400d1e47:	7c5c      	movi.n	a12, 87
400d1e49:	0d3c      	movi.n	a13, 48
400d1e4b:	ae0c      	movi.n	a14, 10
400d1e4d:	000386        	j	400d1e5f <core::fmt::num::<impl core::fmt::LowerHex for i32>::fmt+0x27>
400d1e50:	a7aa      	add.n	a10, a7, a10
400d1e52:	880b      	addi.n	a8, a8, -1
400d1e54:	0048a2        	s8i	a10, a8, 0
400d1e57:	ab0b      	addi.n	a10, a11, -1
400d1e59:	4174f0        	srli	a7, a15, 4
400d1e5c:	10b9f7        	bgeu	a9, a15, 400d1e70 <core::fmt::num::<impl core::fmt::LowerHex for i32>::fmt+0x38>
400d1e5f:	0abd      	mov.n	a11, a10
400d1e61:	07fd      	mov.n	a15, a7
400d1e63:	10af90        	and	a10, a15, a9
400d1e66:	0d7d      	mov.n	a7, a13
400d1e68:	e43ae7        	bltu	a10, a14, 400d1e50 <core::fmt::num::<impl core::fmt::LowerHex for i32>::fmt+0x18>
400d1e6b:	0c7d      	mov.n	a7, a12
400d1e6d:	fff7c6        	j	400d1e50 <core::fmt::num::<impl core::fmt::LowerHex for i32>::fmt+0x18>
400d1e70:	81a082        	movi	a8, 129
400d1e73:	1aba87        	bgeu	a10, a8, 400d1e91 <core::fmt::num::<impl core::fmt::LowerHex for i32>::fmt+0x59>
400d1e76:	00c192        	addi	a9, a1, 0
400d1e79:	e9aa      	add.n	a14, a9, a10
400d1e7b:	c0f8b0        	sub	a15, a8, a11
400d1e7e:	1b0c      	movi.n	a11, 1
400d1e80:	f961c1        	l32r	a12, 400d0404 <_stext+0x3e4>
400d1e83:	2d0c      	movi.n	a13, 2
400d1e85:	f95e81        	l32r	a8, 400d0400 <_stext+0x3e0>
400d1e88:	03ad      	mov.n	a10, a3
400d1e8a:	0008e0        	callx8	a8
400d1e8d:	0a2d      	mov.n	a2, a10
400d1e8f:	f01d      	retw.n
400d1e91:	80a0b2        	movi	a11, 128
400d1e94:	f95dc1        	l32r	a12, 400d0408 <_stext+0x3e8>
400d1e97:	f95d81        	l32r	a8, 400d040c <_stext+0x3ec>
400d1e9a:	0008e0        	callx8	a8
400d1e9d:	0041f0        	break	1, 15

400d1ea0 <core::fmt::num::<impl core::fmt::UpperHex for i32>::fmt>:
400d1ea0:	014136        	entry	a1, 160
400d1ea3:	80a0a2        	movi	a10, 128
400d1ea6:	00c182        	addi	a8, a1, 0
400d1ea9:	88aa      	add.n	a8, a8, a10
400d1eab:	0278      	l32i.n	a7, a2, 0
400d1ead:	f90c      	movi.n	a9, 15
400d1eaf:	7c3c      	movi.n	a12, 55
400d1eb1:	0d3c      	movi.n	a13, 48
400d1eb3:	ae0c      	movi.n	a14, 10
400d1eb5:	000386        	j	400d1ec7 <core::fmt::num::<impl core::fmt::UpperHex for i32>::fmt+0x27>
400d1eb8:	a7aa      	add.n	a10, a7, a10
400d1eba:	880b      	addi.n	a8, a8, -1
400d1ebc:	0048a2        	s8i	a10, a8, 0
400d1ebf:	ab0b      	addi.n	a10, a11, -1
400d1ec1:	4174f0        	srli	a7, a15, 4
400d1ec4:	10b9f7        	bgeu	a9, a15, 400d1ed8 <core::fmt::num::<impl core::fmt::UpperHex for i32>::fmt+0x38>
400d1ec7:	0abd      	mov.n	a11, a10
400d1ec9:	07fd      	mov.n	a15, a7
400d1ecb:	10af90        	and	a10, a15, a9
400d1ece:	0d7d      	mov.n	a7, a13
400d1ed0:	e43ae7        	bltu	a10, a14, 400d1eb8 <core::fmt::num::<impl core::fmt::UpperHex for i32>::fmt+0x18>
400d1ed3:	0c7d      	mov.n	a7, a12
400d1ed5:	fff7c6        	j	400d1eb8 <core::fmt::num::<impl core::fmt::UpperHex for i32>::fmt+0x18>
400d1ed8:	81a082        	movi	a8, 129
400d1edb:	1aba87        	bgeu	a10, a8, 400d1ef9 <core::fmt::num::<impl core::fmt::UpperHex for i32>::fmt+0x59>
400d1ede:	00c192        	addi	a9, a1, 0
400d1ee1:	e9aa      	add.n	a14, a9, a10
400d1ee3:	c0f8b0        	sub	a15, a8, a11
400d1ee6:	1b0c      	movi.n	a11, 1
400d1ee8:	f947c1        	l32r	a12, 400d0404 <_stext+0x3e4>
400d1eeb:	2d0c      	movi.n	a13, 2
400d1eed:	f94481        	l32r	a8, 400d0400 <_stext+0x3e0>
400d1ef0:	03ad      	mov.n	a10, a3
400d1ef2:	0008e0        	callx8	a8
400d1ef5:	0a2d      	mov.n	a2, a10
400d1ef7:	f01d      	retw.n
400d1ef9:	80a0b2        	movi	a11, 128
400d1efc:	f943c1        	l32r	a12, 400d0408 <_stext+0x3e8>
400d1eff:	f94381        	l32r	a8, 400d040c <_stext+0x3ec>
400d1f02:	0008e0        	callx8	a8
400d1f05:	0041f0        	break	1, 15

400d1f08 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str>:
400d1f08:	00c136        	entry	a1, 96
400d1f0b:	035d      	mov.n	a5, a3
400d1f0d:	14c416        	beqz	a4, 400d205d <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x155>
400d1f10:	18c182        	addi	a8, a1, 24
400d1f13:	18c872        	addi	a7, a8, 24
400d1f16:	1288      	l32i.n	a8, a2, 4
400d1f18:	5189      	s32i.n	a8, a1, 20
400d1f1a:	0288      	l32i.n	a8, a2, 0
400d1f1c:	4189      	s32i.n	a8, a1, 16
400d1f1e:	2238      	l32i.n	a3, a2, 8
400d1f20:	a80c      	movi.n	a8, 10
400d1f22:	3189      	s32i.n	a8, a1, 12
400d1f24:	180c      	movi.n	a8, 1
400d1f26:	2189      	s32i.n	a8, a1, 8
400d1f28:	060c      	movi.n	a6, 0
400d1f2a:	1179      	s32i.n	a7, a1, 4
400d1f2c:	0139      	s32i.n	a3, a1, 0
400d1f2e:	000646        	j	400d1f4b <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x43>
400d1f31:	5188      	l32i.n	a8, a1, 20
400d1f33:	3888      	l32i.n	a8, a8, 12
400d1f35:	0c0c      	movi.n	a12, 0
400d1f37:	41a8      	l32i.n	a10, a1, 16
400d1f39:	02bd      	mov.n	a11, a2
400d1f3b:	0008e0        	callx8	a8
400d1f3e:	11fa56        	bnez	a10, 400d2061 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x159>
400d1f41:	c04430        	sub	a4, a4, a3
400d1f44:	1178      	l32i.n	a7, a1, 4
400d1f46:	0138      	l32i.n	a3, a1, 0
400d1f48:	111416        	beqz	a4, 400d205d <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x155>
400d1f4b:	052d      	mov.n	a2, a5
400d1f4d:	000382        	l8ui	a8, a3, 0
400d1f50:	010816        	beqz	a8, 400d1f64 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x5c>
400d1f53:	5188      	l32i.n	a8, a1, 20
400d1f55:	3888      	l32i.n	a8, a8, 12
400d1f57:	f92eb1        	l32r	a11, 400d0410 <_stext+0x3f0>
400d1f5a:	4c0c      	movi.n	a12, 4
400d1f5c:	41a8      	l32i.n	a10, a1, 16
400d1f5e:	0008e0        	callx8	a8
400d1f61:	0fca56        	bnez	a10, 400d2061 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x159>
400d1f64:	3188      	l32i.n	a8, a1, 12
400d1f66:	c189      	s32i.n	a8, a1, 48
400d1f68:	2198      	l32i.n	a9, a1, 8
400d1f6a:	b199      	s32i.n	a9, a1, 44
400d1f6c:	a189      	s32i.n	a8, a1, 40
400d1f6e:	9149      	s32i.n	a4, a1, 36
400d1f70:	8169      	s32i.n	a6, a1, 32
400d1f72:	7149      	s32i.n	a4, a1, 28
400d1f74:	6129      	s32i.n	a2, a1, 24
400d1f76:	02ad      	mov.n	a10, a2
400d1f78:	04cd      	mov.n	a12, a4
400d1f7a:	068d      	mov.n	a8, a6
400d1f7c:	8a8a      	add.n	a8, a10, a8
400d1f7e:	18c1a2        	addi	a10, a1, 24
400d1f81:	99aa      	add.n	a9, a9, a10
400d1f83:	1709a2        	l8ui	a10, a9, 23
400d1f86:	258cf6        	bgeui	a12, 8, 400d1faf <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0xa7>
400d1f89:	06bd      	mov.n	a11, a6
400d1f8b:	069d      	mov.n	a9, a6
400d1f8d:	028c16        	beqz	a12, 400d1fb9 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0xb1>
400d1f90:	0b0c      	movi.n	a11, 0
400d1f92:	0f8c76        	loop	a12, 400d1fa5 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x9d>
400d1f95:	ffa092        	movi	a9, 255
400d1f98:	109a90        	and	a9, a10, a9
400d1f9b:	0008d2        	l8ui	a13, a8, 0
400d1f9e:	5a1d97        	beq	a13, a9, 400d1ffc <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0xf4>
400d1fa1:	881b      	addi.n	a8, a8, 1
400d1fa3:	bb1b      	addi.n	a11, a11, 1
400d1fa5:	090c      	movi.n	a9, 0
400d1fa7:	0cbd      	mov.n	a11, a12
400d1fa9:	0f1926        	beqi	a9, 1, 400d1fbc <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0xb4>
400d1fac:	001446        	j	400d2001 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0xf9>
400d1faf:	f91991        	l32r	a9, 400d0414 <_stext+0x3f4>
400d1fb2:	08bd      	mov.n	a11, a8
400d1fb4:	0009e0        	callx8	a9
400d1fb7:	0a9d      	mov.n	a9, a10
400d1fb9:	441966        	bnei	a9, 1, 400d2001 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0xf9>
400d1fbc:	8188      	l32i.n	a8, a1, 32
400d1fbe:	8b8a      	add.n	a8, a11, a8
400d1fc0:	881b      	addi.n	a8, a8, 1
400d1fc2:	8189      	s32i.n	a8, a1, 32
400d1fc4:	b1c8      	l32i.n	a12, a1, 44
400d1fc6:	1e38c7        	bltu	a8, a12, 400d1fe8 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0xe0>
400d1fc9:	7198      	l32i.n	a9, a1, 28
400d1fcb:	193987        	bltu	a9, a8, 400d1fe8 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0xe0>
400d1fce:	025cb6        	bltui	a12, 5, 400d1fd4 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0xcc>
400d1fd1:	002406        	j	400d2065 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x15d>
400d1fd4:	c058c0        	sub	a5, a8, a12
400d1fd7:	6188      	l32i.n	a8, a1, 24
400d1fd9:	a85a      	add.n	a10, a8, a5
400d1fdb:	f90f81        	l32r	a8, 400d0418 <_stext+0x3f8>
400d1fde:	07bd      	mov.n	a11, a7
400d1fe0:	0008e0        	callx8	a8
400d1fe3:	067a16        	beqz	a10, 400d204e <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x146>
400d1fe6:	8188      	l32i.n	a8, a1, 32
400d1fe8:	9198      	l32i.n	a9, a1, 36
400d1fea:	133987        	bltu	a9, a8, 400d2001 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0xf9>
400d1fed:	71a8      	l32i.n	a10, a1, 28
400d1fef:	0e3a97        	bltu	a10, a9, 400d2001 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0xf9>
400d1ff2:	c0c980        	sub	a12, a9, a8
400d1ff5:	b198      	l32i.n	a9, a1, 44
400d1ff7:	61a8      	l32i.n	a10, a1, 24
400d1ff9:	ffdfc6        	j	400d1f7c <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x74>
400d1ffc:	190c      	movi.n	a9, 1
400d1ffe:	ba1926        	beqi	a9, 1, 400d1fbc <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0xb4>
400d2001:	080c      	movi.n	a8, 0
400d2003:	004382        	s8i	a8, a3, 0
400d2006:	043d      	mov.n	a3, a4
400d2008:	523a      	add.n	a5, a2, a3
400d200a:	f23316        	beqz	a3, 400d1f31 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x29>
400d200d:	27b347        	bgeu	a3, a4, 400d2038 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x130>
400d2010:	000582        	l8ui	a8, a5, 0
400d2013:	238800        	sext	a8, a8, 7
400d2016:	bfaf72        	movi	a7, -65
400d2019:	5aa787        	bge	a7, a8, 400d2077 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x16f>
400d201c:	5188      	l32i.n	a8, a1, 20
400d201e:	3888      	l32i.n	a8, a8, 12
400d2020:	41a8      	l32i.n	a10, a1, 16
400d2022:	02bd      	mov.n	a11, a2
400d2024:	03cd      	mov.n	a12, a3
400d2026:	0008e0        	callx8	a8
400d2029:	034a56        	bnez	a10, 400d2061 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x159>
400d202c:	000582        	l8ui	a8, a5, 0
400d202f:	238800        	sext	a8, a8, 7
400d2032:	55a787        	bge	a7, a8, 400d208b <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x183>
400d2035:	ffc206        	j	400d1f41 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x39>
400d2038:	3b9437        	bne	a4, a3, 400d2077 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x16f>
400d203b:	5188      	l32i.n	a8, a1, 20
400d203d:	3888      	l32i.n	a8, a8, 12
400d203f:	41a8      	l32i.n	a10, a1, 16
400d2041:	02bd      	mov.n	a11, a2
400d2043:	04cd      	mov.n	a12, a4
400d2045:	0008e0        	callx8	a8
400d2048:	ef5a16        	beqz	a10, 400d1f41 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x39>
400d204b:	000486        	j	400d2061 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x159>
400d204e:	180c      	movi.n	a8, 1
400d2050:	004382        	s8i	a8, a3, 0
400d2053:	351b      	addi.n	a3, a5, 1
400d2055:	523a      	add.n	a5, a2, a3
400d2057:	fb2356        	bnez	a3, 400d200d <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x105>
400d205a:	ffb4c6        	j	400d1f31 <<core::fmt::builders::PadAdapter as core::fmt::Write>::write_str+0x29>
400d205d:	020c      	movi.n	a2, 0
400d205f:	f01d      	retw.n
400d2061:	120c      	movi.n	a2, 1
400d2063:	f01d      	retw.n
400d2065:	4b0c      	movi.n	a11, 4
400d2067:	f8ed81        	l32r	a8, 400d041c <_stext+0x3fc>
400d206a:	f8ed91        	l32r	a9, 400d0420 <_stext+0x400>
400d206d:	0cad      	mov.n	a10, a12
400d206f:	08cd      	mov.n	a12, a8
400d2071:	0009e0        	callx8	a9
400d2074:	0041f0        	break	1, 15
400d2077:	0c0c      	movi.n	a12, 0
400d2079:	f8eae1        	l32r	a14, 400d0424 <_stext+0x404>
400d207c:	f8eb81        	l32r	a8, 400d0428 <_stext+0x408>
400d207f:	02ad      	mov.n	a10, a2
400d2081:	04bd      	mov.n	a11, a4
400d2083:	03dd      	mov.n	a13, a3
400d2085:	0008e0        	callx8	a8
400d2088:	0041f0        	break	1, 15
400d208b:	f8e8e1        	l32r	a14, 400d042c <_stext+0x40c>
400d208e:	f8e681        	l32r	a8, 400d0428 <_stext+0x408>
400d2091:	02ad      	mov.n	a10, a2
400d2093:	04bd      	mov.n	a11, a4
400d2095:	03cd      	mov.n	a12, a3
400d2097:	04dd      	mov.n	a13, a4
400d2099:	0008e0        	callx8	a8
400d209c:	0041f0        	break	1, 15
	...

400d20a0 <core::fmt::builders::DebugStruct::field>:
400d20a0:	00c136        	entry	a1, 96
400d20a3:	04fd      	mov.n	a15, a4
400d20a5:	040282        	l8ui	a8, a2, 4
400d20a8:	1d0c      	movi.n	a13, 1
400d20aa:	0d7d      	mov.n	a7, a13
400d20ac:	007816        	beqz	a8, 400d20b7 <core::fmt::builders::DebugStruct::field+0x17>
400d20af:	0542d2        	s8i	a13, a2, 5
400d20b2:	044272        	s8i	a7, a2, 4
400d20b5:	f01d      	retw.n
400d20b7:	0248      	l32i.n	a4, a2, 0
400d20b9:	0488      	l32i.n	a8, a4, 0
400d20bb:	490c      	movi.n	a9, 4
400d20bd:	109890        	and	a9, a8, a9
400d20c0:	050282        	l8ui	a8, a2, 5
400d20c3:	1159      	s32i.n	a5, a1, 4
400d20c5:	0169      	s32i.n	a6, a1, 0
400d20c7:	0d6d      	mov.n	a6, a13
400d20c9:	01d956        	bnez	a9, 400d20ea <core::fmt::builders::DebugStruct::field+0x4a>
400d20cc:	ffa092        	movi	a9, 255
400d20cf:	108890        	and	a8, a8, a9
400d20d2:	090c      	movi.n	a9, 0
400d20d4:	029897        	bne	a8, a9, 400d20da <core::fmt::builders::DebugStruct::field+0x3a>
400d20d7:	002bc6        	j	400d218a <core::fmt::builders::DebugStruct::field+0xea>
400d20da:	f8dab1        	l32r	a11, 400d0444 <_stext+0x424>
400d20dd:	0f5d      	mov.n	a5, a15
400d20df:	021897        	beq	a8, a9, 400d20e5 <core::fmt::builders::DebugStruct::field+0x45>
400d20e2:	002bc6        	j	400d2195 <core::fmt::builders::DebugStruct::field+0xf5>
400d20e5:	3c0c      	movi.n	a12, 3
400d20e7:	002b06        	j	400d2197 <core::fmt::builders::DebugStruct::field+0xf7>
400d20ea:	ffa092        	movi	a9, 255
400d20ed:	108890        	and	a8, a8, a9
400d20f0:	018856        	bnez	a8, 400d210c <core::fmt::builders::DebugStruct::field+0x6c>
400d20f3:	64a8      	l32i.n	a10, a4, 24
400d20f5:	7488      	l32i.n	a8, a4, 28
400d20f7:	3888      	l32i.n	a8, a8, 12
400d20f9:	f8cdb1        	l32r	a11, 400d0430 <_stext+0x410>
400d20fc:	3c0c      	movi.n	a12, 3
400d20fe:	0f7d      	mov.n	a7, a15
400d2100:	0008e0        	callx8	a8
400d2103:	06dd      	mov.n	a13, a6
400d2105:	07fd      	mov.n	a15, a7
400d2107:	0d7d      	mov.n	a7, a13
400d2109:	fa2a56        	bnez	a10, 400d20af <core::fmt::builders::DebugStruct::field+0xf>
400d210c:	170c      	movi.n	a7, 1
400d210e:	144172        	s8i	a7, a1, 20
400d2111:	6488      	l32i.n	a8, a4, 24
400d2113:	7498      	l32i.n	a9, a4, 28
400d2115:	14c1a2        	addi	a10, a1, 20
400d2118:	41a9      	s32i.n	a10, a1, 16
400d211a:	3199      	s32i.n	a9, a1, 12
400d211c:	2189      	s32i.n	a8, a1, 8
400d211e:	2488      	l32i.n	a8, a4, 8
400d2120:	3498      	l32i.n	a9, a4, 12
400d2122:	44a8      	l32i.n	a10, a4, 16
400d2124:	54b8      	l32i.n	a11, a4, 20
400d2126:	04c8      	l32i.n	a12, a4, 0
400d2128:	14d8      	l32i.n	a13, a4, 4
400d212a:	2004e2        	l8ui	a14, a4, 32
400d212d:	3841e2        	s8i	a14, a1, 56
400d2130:	71d9      	s32i.n	a13, a1, 28
400d2132:	61c9      	s32i.n	a12, a1, 24
400d2134:	f8c0c1        	l32r	a12, 400d0434 <_stext+0x414>
400d2137:	d1c9      	s32i.n	a12, a1, 52
400d2139:	b1b9      	s32i.n	a11, a1, 44
400d213b:	a1a9      	s32i.n	a10, a1, 40
400d213d:	9199      	s32i.n	a9, a1, 36
400d213f:	8189      	s32i.n	a8, a1, 32
400d2141:	08c1a2        	addi	a10, a1, 8
400d2144:	c1a9      	s32i.n	a10, a1, 48
400d2146:	f8bc51        	l32r	a5, 400d0438 <_stext+0x418>
400d2149:	03bd      	mov.n	a11, a3
400d214b:	0fcd      	mov.n	a12, a15
400d214d:	0005e0        	callx8	a5
400d2150:	02ca56        	bnez	a10, 400d2180 <core::fmt::builders::DebugStruct::field+0xe0>
400d2153:	08c1a2        	addi	a10, a1, 8
400d2156:	f8b9b1        	l32r	a11, 400d043c <_stext+0x41c>
400d2159:	2c0c      	movi.n	a12, 2
400d215b:	0005e0        	callx8	a5
400d215e:	01ea56        	bnez	a10, 400d2180 <core::fmt::builders::DebugStruct::field+0xe0>
400d2161:	0188      	l32i.n	a8, a1, 0
400d2163:	3888      	l32i.n	a8, a8, 12
400d2165:	18c1b2        	addi	a11, a1, 24
400d2168:	11a8      	l32i.n	a10, a1, 4
400d216a:	0008e0        	callx8	a8
400d216d:	00fa56        	bnez	a10, 400d2180 <core::fmt::builders::DebugStruct::field+0xe0>
400d2170:	d188      	l32i.n	a8, a1, 52
400d2172:	3888      	l32i.n	a8, a8, 12
400d2174:	c1a8      	l32i.n	a10, a1, 48
400d2176:	f8b2b1        	l32r	a11, 400d0440 <_stext+0x420>
400d2179:	2c0c      	movi.n	a12, 2
400d217b:	0008e0        	callx8	a8
400d217e:	0a7d      	mov.n	a7, a10
400d2180:	06dd      	mov.n	a13, a6
400d2182:	0542d2        	s8i	a13, a2, 5
400d2185:	044272        	s8i	a7, a2, 4
400d2188:	f01d      	retw.n
400d218a:	f8afb1        	l32r	a11, 400d0448 <_stext+0x428>
400d218d:	0f5d      	mov.n	a5, a15
400d218f:	029897        	bne	a8, a9, 400d2195 <core::fmt::builders::DebugStruct::field+0xf5>
400d2192:	ffd3c6        	j	400d20e5 <core::fmt::builders::DebugStruct::field+0x45>
400d2195:	2c0c      	movi.n	a12, 2
400d2197:	64a8      	l32i.n	a10, a4, 24
400d2199:	7488      	l32i.n	a8, a4, 28
400d219b:	3888      	l32i.n	a8, a8, 12
400d219d:	0008e0        	callx8	a8
400d21a0:	06dd      	mov.n	a13, a6
400d21a2:	0d7d      	mov.n	a7, a13
400d21a4:	05cd      	mov.n	a12, a5
400d21a6:	03bd      	mov.n	a11, a3
400d21a8:	f03a56        	bnez	a10, 400d20af <core::fmt::builders::DebugStruct::field+0xf>
400d21ab:	64a8      	l32i.n	a10, a4, 24
400d21ad:	7488      	l32i.n	a8, a4, 28
400d21af:	3888      	l32i.n	a8, a8, 12
400d21b1:	0008e0        	callx8	a8
400d21b4:	06dd      	mov.n	a13, a6
400d21b6:	0d7d      	mov.n	a7, a13
400d21b8:	ef3a56        	bnez	a10, 400d20af <core::fmt::builders::DebugStruct::field+0xf>
400d21bb:	64a8      	l32i.n	a10, a4, 24
400d21bd:	7488      	l32i.n	a8, a4, 28
400d21bf:	3888      	l32i.n	a8, a8, 12
400d21c1:	f89eb1        	l32r	a11, 400d043c <_stext+0x41c>
400d21c4:	2c0c      	movi.n	a12, 2
400d21c6:	0008e0        	callx8	a8
400d21c9:	06dd      	mov.n	a13, a6
400d21cb:	0188      	l32i.n	a8, a1, 0
400d21cd:	1198      	l32i.n	a9, a1, 4
400d21cf:	0d7d      	mov.n	a7, a13
400d21d1:	edaa56        	bnez	a10, 400d20af <core::fmt::builders::DebugStruct::field+0xf>
400d21d4:	3888      	l32i.n	a8, a8, 12
400d21d6:	09ad      	mov.n	a10, a9
400d21d8:	04bd      	mov.n	a11, a4
400d21da:	0008e0        	callx8	a8
400d21dd:	06dd      	mov.n	a13, a6
400d21df:	0a7d      	mov.n	a7, a10
400d21e1:	0542d2        	s8i	a13, a2, 5
400d21e4:	044272        	s8i	a7, a2, 4
400d21e7:	f01d      	retw.n
400d21e9:	000000        	ill

400d21ec <core::fmt::builders::DebugStruct::finish>:
400d21ec:	004136        	entry	a1, 32
400d21ef:	0402a2        	l8ui	a10, a2, 4
400d21f2:	050282        	l8ui	a8, a2, 5
400d21f5:	ffa072        	movi	a7, 255
400d21f8:	00a816        	beqz	a8, 400d2206 <core::fmt::builders::DebugStruct::finish+0x1a>
400d21fb:	108a70        	and	a8, a10, a7
400d21fe:	010816        	beqz	a8, 400d2212 <core::fmt::builders::DebugStruct::finish+0x26>
400d2201:	1a0c      	movi.n	a10, 1
400d2203:	0442a2        	s8i	a10, a2, 4
400d2206:	108a70        	and	a8, a10, a7
400d2209:	020c      	movi.n	a2, 0
400d220b:	011827        	beq	a8, a2, 400d2210 <core::fmt::builders::DebugStruct::finish+0x24>
400d220e:	120c      	movi.n	a2, 1
400d2210:	f01d      	retw.n
400d2212:	0288      	l32i.n	a8, a2, 0
400d2214:	0898      	l32i.n	a9, a8, 0
400d2216:	4a0c      	movi.n	a10, 4
400d2218:	1099a0        	and	a9, a9, a10
400d221b:	00d956        	bnez	a9, 400d222c <core::fmt::builders::DebugStruct::finish+0x40>
400d221e:	68a8      	l32i.n	a10, a8, 24
400d2220:	7888      	l32i.n	a8, a8, 28
400d2222:	3888      	l32i.n	a8, a8, 12
400d2224:	f88bb1        	l32r	a11, 400d0450 <_stext+0x430>
400d2227:	2c0c      	movi.n	a12, 2
400d2229:	000286        	j	400d2237 <core::fmt::builders::DebugStruct::finish+0x4b>
400d222c:	68a8      	l32i.n	a10, a8, 24
400d222e:	7888      	l32i.n	a8, a8, 28
400d2230:	3888      	l32i.n	a8, a8, 12
400d2232:	f886b1        	l32r	a11, 400d044c <_stext+0x42c>
400d2235:	1c0c      	movi.n	a12, 1
400d2237:	0008e0        	callx8	a8
400d223a:	0442a2        	s8i	a10, a2, 4
400d223d:	108a70        	and	a8, a10, a7
400d2240:	020c      	movi.n	a2, 0
400d2242:	c89827        	bne	a8, a2, 400d220e <core::fmt::builders::DebugStruct::finish+0x22>
400d2245:	fff1c6        	j	400d2210 <core::fmt::builders::DebugStruct::finish+0x24>

400d2248 <core::fmt::builders::DebugTuple::field>:
400d2248:	00c136        	entry	a1, 96
400d224b:	080282        	l8ui	a8, a2, 8
400d224e:	00c816        	beqz	a8, 400d225e <core::fmt::builders::DebugTuple::field+0x16>
400d2251:	1258      	l32i.n	a5, a2, 4
400d2253:	170c      	movi.n	a7, 1
400d2255:	084272        	s8i	a7, a2, 8
400d2258:	851b      	addi.n	a8, a5, 1
400d225a:	1289      	s32i.n	a8, a2, 4
400d225c:	f01d      	retw.n
400d225e:	0268      	l32i.n	a6, a2, 0
400d2260:	0688      	l32i.n	a8, a6, 0
400d2262:	490c      	movi.n	a9, 4
400d2264:	108890        	and	a8, a8, a9
400d2267:	1258      	l32i.n	a5, a2, 4
400d2269:	017856        	bnez	a8, 400d2284 <core::fmt::builders::DebugTuple::field+0x3c>
400d226c:	080c      	movi.n	a8, 0
400d226e:	029587        	bne	a5, a8, 400d2274 <core::fmt::builders::DebugTuple::field+0x2c>
400d2271:	002206        	j	400d22fd <core::fmt::builders::DebugTuple::field+0xb5>
400d2274:	f874b1        	l32r	a11, 400d0444 <_stext+0x424>
400d2277:	170c      	movi.n	a7, 1
400d2279:	07cd      	mov.n	a12, a7
400d227b:	021587        	beq	a5, a8, 400d2281 <core::fmt::builders::DebugTuple::field+0x39>
400d227e:	002146        	j	400d2307 <core::fmt::builders::DebugTuple::field+0xbf>
400d2281:	002106        	j	400d2309 <core::fmt::builders::DebugTuple::field+0xc1>
400d2284:	01d556        	bnez	a5, 400d22a5 <core::fmt::builders::DebugTuple::field+0x5d>
400d2287:	66a8      	l32i.n	a10, a6, 24
400d2289:	7688      	l32i.n	a8, a6, 28
400d228b:	3888      	l32i.n	a8, a8, 12
400d228d:	f871b1        	l32r	a11, 400d0454 <_stext+0x434>
400d2290:	2c0c      	movi.n	a12, 2
400d2292:	0008e0        	callx8	a8
400d2295:	00ca16        	beqz	a10, 400d22a5 <core::fmt::builders::DebugTuple::field+0x5d>
400d2298:	170c      	movi.n	a7, 1
400d229a:	050c      	movi.n	a5, 0
400d229c:	084272        	s8i	a7, a2, 8
400d229f:	851b      	addi.n	a8, a5, 1
400d22a1:	1289      	s32i.n	a8, a2, 4
400d22a3:	f01d      	retw.n
400d22a5:	170c      	movi.n	a7, 1
400d22a7:	0c4172        	s8i	a7, a1, 12
400d22aa:	6688      	l32i.n	a8, a6, 24
400d22ac:	7698      	l32i.n	a9, a6, 28
400d22ae:	0cc1a2        	addi	a10, a1, 12
400d22b1:	21a9      	s32i.n	a10, a1, 8
400d22b3:	1199      	s32i.n	a9, a1, 4
400d22b5:	0189      	s32i.n	a8, a1, 0
400d22b7:	2688      	l32i.n	a8, a6, 8
400d22b9:	3698      	l32i.n	a9, a6, 12
400d22bb:	46a8      	l32i.n	a10, a6, 16
400d22bd:	56b8      	l32i.n	a11, a6, 20
400d22bf:	06c8      	l32i.n	a12, a6, 0
400d22c1:	16d8      	l32i.n	a13, a6, 4
400d22c3:	2006e2        	l8ui	a14, a6, 32
400d22c6:	3041e2        	s8i	a14, a1, 48
400d22c9:	51d9      	s32i.n	a13, a1, 20
400d22cb:	41c9      	s32i.n	a12, a1, 16
400d22cd:	f859c1        	l32r	a12, 400d0434 <_stext+0x414>
400d22d0:	b1c9      	s32i.n	a12, a1, 44
400d22d2:	00c1c2        	addi	a12, a1, 0
400d22d5:	a1c9      	s32i.n	a12, a1, 40
400d22d7:	91b9      	s32i.n	a11, a1, 36
400d22d9:	81a9      	s32i.n	a10, a1, 32
400d22db:	7199      	s32i.n	a9, a1, 28
400d22dd:	6189      	s32i.n	a8, a1, 24
400d22df:	3488      	l32i.n	a8, a4, 12
400d22e1:	10c1b2        	addi	a11, a1, 16
400d22e4:	03ad      	mov.n	a10, a3
400d22e6:	0008e0        	callx8	a8
400d22e9:	f68a56        	bnez	a10, 400d2255 <core::fmt::builders::DebugTuple::field+0xd>
400d22ec:	b188      	l32i.n	a8, a1, 44
400d22ee:	3888      	l32i.n	a8, a8, 12
400d22f0:	a1a8      	l32i.n	a10, a1, 40
400d22f2:	f853b1        	l32r	a11, 400d0440 <_stext+0x420>
400d22f5:	2c0c      	movi.n	a12, 2
400d22f7:	0008e0        	callx8	a8
400d22fa:	000806        	j	400d231e <core::fmt::builders::DebugTuple::field+0xd6>
400d22fd:	f856b1        	l32r	a11, 400d0458 <_stext+0x438>
400d2300:	170c      	movi.n	a7, 1
400d2302:	07cd      	mov.n	a12, a7
400d2304:	011587        	beq	a5, a8, 400d2309 <core::fmt::builders::DebugTuple::field+0xc1>
400d2307:	2c0c      	movi.n	a12, 2
400d2309:	66a8      	l32i.n	a10, a6, 24
400d230b:	7688      	l32i.n	a8, a6, 28
400d230d:	3888      	l32i.n	a8, a8, 12
400d230f:	0008e0        	callx8	a8
400d2312:	f3fa56        	bnez	a10, 400d2255 <core::fmt::builders::DebugTuple::field+0xd>
400d2315:	3488      	l32i.n	a8, a4, 12
400d2317:	03ad      	mov.n	a10, a3
400d2319:	06bd      	mov.n	a11, a6
400d231b:	0008e0        	callx8	a8
400d231e:	0a7d      	mov.n	a7, a10
400d2320:	084272        	s8i	a7, a2, 8
400d2323:	851b      	addi.n	a8, a5, 1
400d2325:	1289      	s32i.n	a8, a2, 4
400d2327:	f01d      	retw.n
400d2329:	000000        	ill

400d232c <core::fmt::Write::write_char>:
400d232c:	006136        	entry	a1, 48
400d232f:	080c      	movi.n	a8, 0
400d2331:	0189      	s32i.n	a8, a1, 0
400d2333:	07e3f6        	bgeui	a3, 128, 400d233e <core::fmt::Write::write_char+0x12>
400d2336:	004132        	s8i	a3, a1, 0
400d2339:	1c0c      	movi.n	a12, 1
400d233b:	002386        	j	400d23cd <core::fmt::Write::write_char+0xa1>
400d233e:	f74c81        	l32r	a8, 400d0070 <_stext+0x50>
400d2341:	1eb387        	bgeu	a3, a8, 400d2363 <core::fmt::Write::write_char+0x37>
400d2344:	f83c      	movi.n	a8, 63
400d2346:	108380        	and	a8, a3, a8
400d2349:	80a092        	movi	a9, 128
400d234c:	208890        	or	a8, a8, a9
400d234f:	014182        	s8i	a8, a1, 1
400d2352:	418630        	srli	a8, a3, 6
400d2355:	c0a092        	movi	a9, 192
400d2358:	208890        	or	a8, a8, a9
400d235b:	004182        	s8i	a8, a1, 0
400d235e:	2c0c      	movi.n	a12, 2
400d2360:	001a46        	j	400d23cd <core::fmt::Write::write_char+0xa1>
400d2363:	f74481        	l32r	a8, 400d0074 <_stext+0x54>
400d2366:	2ab387        	bgeu	a3, a8, 400d2394 <core::fmt::Write::write_char+0x68>
400d2369:	f83c      	movi.n	a8, 63
400d236b:	109380        	and	a9, a3, a8
400d236e:	80a0a2        	movi	a10, 128
400d2371:	2099a0        	or	a9, a9, a10
400d2374:	024192        	s8i	a9, a1, 2
400d2377:	419c30        	srli	a9, a3, 12
400d237a:	e0a0b2        	movi	a11, 224
400d237d:	2099b0        	or	a9, a9, a11
400d2380:	004192        	s8i	a9, a1, 0
400d2383:	419630        	srli	a9, a3, 6
400d2386:	108980        	and	a8, a9, a8
400d2389:	2088a0        	or	a8, a8, a10
400d238c:	014182        	s8i	a8, a1, 1
400d238f:	3c0c      	movi.n	a12, 3
400d2391:	000e06        	j	400d23cd <core::fmt::Write::write_char+0xa1>
400d2394:	f83c      	movi.n	a8, 63
400d2396:	109380        	and	a9, a3, a8
400d2399:	80a0a2        	movi	a10, 128
400d239c:	2099a0        	or	a9, a9, a10
400d239f:	034192        	s8i	a9, a1, 3
400d23a2:	291c      	movi.n	a9, 18
400d23a4:	400900        	ssr	a9
400d23a7:	919030        	srl	a9, a3
400d23aa:	f0a0b2        	movi	a11, 240
400d23ad:	2099b0        	or	a9, a9, a11
400d23b0:	004192        	s8i	a9, a1, 0
400d23b3:	419630        	srli	a9, a3, 6
400d23b6:	109980        	and	a9, a9, a8
400d23b9:	2099a0        	or	a9, a9, a10
400d23bc:	024192        	s8i	a9, a1, 2
400d23bf:	419c30        	srli	a9, a3, 12
400d23c2:	108980        	and	a8, a9, a8
400d23c5:	2088a0        	or	a8, a8, a10
400d23c8:	014182        	s8i	a8, a1, 1
400d23cb:	4c0c      	movi.n	a12, 4
400d23cd:	00c1b2        	addi	a11, a1, 0
400d23d0:	f81a81        	l32r	a8, 400d0438 <_stext+0x418>
400d23d3:	02ad      	mov.n	a10, a2
400d23d5:	0008e0        	callx8	a8
400d23d8:	0a2d      	mov.n	a2, a10
400d23da:	f01d      	retw.n

400d23dc <core::fmt::Write::write_fmt>:
400d23dc:	008136        	entry	a1, 64
400d23df:	0129      	s32i.n	a2, a1, 0
400d23e1:	5388      	l32i.n	a8, a3, 20
400d23e3:	6189      	s32i.n	a8, a1, 24
400d23e5:	4388      	l32i.n	a8, a3, 16
400d23e7:	5189      	s32i.n	a8, a1, 20
400d23e9:	3388      	l32i.n	a8, a3, 12
400d23eb:	4189      	s32i.n	a8, a1, 16
400d23ed:	2388      	l32i.n	a8, a3, 8
400d23ef:	3189      	s32i.n	a8, a1, 12
400d23f1:	1388      	l32i.n	a8, a3, 4
400d23f3:	2189      	s32i.n	a8, a1, 8
400d23f5:	0388      	l32i.n	a8, a3, 0
400d23f7:	1189      	s32i.n	a8, a1, 4
400d23f9:	00c1a2        	addi	a10, a1, 0
400d23fc:	f818b1        	l32r	a11, 400d045c <_stext+0x43c>
400d23ff:	04c1c2        	addi	a12, a1, 4
400d2402:	f72181        	l32r	a8, 400d0088 <_stext+0x68>
400d2405:	0008e0        	callx8	a8
400d2408:	0a2d      	mov.n	a2, a10
400d240a:	f01d      	retw.n

400d240c <<&mut W as core::fmt::Write>::write_str>:
400d240c:	004136        	entry	a1, 32
400d240f:	02a8      	l32i.n	a10, a2, 0
400d2411:	f80981        	l32r	a8, 400d0438 <_stext+0x418>
400d2414:	03bd      	mov.n	a11, a3
400d2416:	04cd      	mov.n	a12, a4
400d2418:	0008e0        	callx8	a8
400d241b:	0a2d      	mov.n	a2, a10
400d241d:	f01d      	retw.n
	...

400d2420 <<&mut W as core::fmt::Write>::write_char>:
400d2420:	006136        	entry	a1, 48
400d2423:	02a8      	l32i.n	a10, a2, 0
400d2425:	080c      	movi.n	a8, 0
400d2427:	0189      	s32i.n	a8, a1, 0
400d2429:	07e3f6        	bgeui	a3, 128, 400d2434 <<&mut W as core::fmt::Write>::write_char+0x14>
400d242c:	004132        	s8i	a3, a1, 0
400d242f:	1c0c      	movi.n	a12, 1
400d2431:	002386        	j	400d24c3 <<&mut W as core::fmt::Write>::write_char+0xa3>
400d2434:	f70f81        	l32r	a8, 400d0070 <_stext+0x50>
400d2437:	1eb387        	bgeu	a3, a8, 400d2459 <<&mut W as core::fmt::Write>::write_char+0x39>
400d243a:	f83c      	movi.n	a8, 63
400d243c:	108380        	and	a8, a3, a8
400d243f:	80a092        	movi	a9, 128
400d2442:	208890        	or	a8, a8, a9
400d2445:	014182        	s8i	a8, a1, 1
400d2448:	418630        	srli	a8, a3, 6
400d244b:	c0a092        	movi	a9, 192
400d244e:	208890        	or	a8, a8, a9
400d2451:	004182        	s8i	a8, a1, 0
400d2454:	2c0c      	movi.n	a12, 2
400d2456:	001a46        	j	400d24c3 <<&mut W as core::fmt::Write>::write_char+0xa3>
400d2459:	f70681        	l32r	a8, 400d0074 <_stext+0x54>
400d245c:	2ab387        	bgeu	a3, a8, 400d248a <<&mut W as core::fmt::Write>::write_char+0x6a>
400d245f:	f83c      	movi.n	a8, 63
400d2461:	109380        	and	a9, a3, a8
400d2464:	80a0b2        	movi	a11, 128
400d2467:	2099b0        	or	a9, a9, a11
400d246a:	024192        	s8i	a9, a1, 2
400d246d:	419c30        	srli	a9, a3, 12
400d2470:	e0a0c2        	movi	a12, 224
400d2473:	2099c0        	or	a9, a9, a12
400d2476:	004192        	s8i	a9, a1, 0
400d2479:	419630        	srli	a9, a3, 6
400d247c:	108980        	and	a8, a9, a8
400d247f:	2088b0        	or	a8, a8, a11
400d2482:	014182        	s8i	a8, a1, 1
400d2485:	3c0c      	movi.n	a12, 3
400d2487:	000e06        	j	400d24c3 <<&mut W as core::fmt::Write>::write_char+0xa3>
400d248a:	f83c      	movi.n	a8, 63
400d248c:	109380        	and	a9, a3, a8
400d248f:	80a0b2        	movi	a11, 128
400d2492:	2099b0        	or	a9, a9, a11
400d2495:	034192        	s8i	a9, a1, 3
400d2498:	291c      	movi.n	a9, 18
400d249a:	400900        	ssr	a9
400d249d:	919030        	srl	a9, a3
400d24a0:	f0a0c2        	movi	a12, 240
400d24a3:	2099c0        	or	a9, a9, a12
400d24a6:	004192        	s8i	a9, a1, 0
400d24a9:	419630        	srli	a9, a3, 6
400d24ac:	109980        	and	a9, a9, a8
400d24af:	2099b0        	or	a9, a9, a11
400d24b2:	024192        	s8i	a9, a1, 2
400d24b5:	419c30        	srli	a9, a3, 12
400d24b8:	108980        	and	a8, a9, a8
400d24bb:	2088b0        	or	a8, a8, a11
400d24be:	014182        	s8i	a8, a1, 1
400d24c1:	4c0c      	movi.n	a12, 4
400d24c3:	00c1b2        	addi	a11, a1, 0
400d24c6:	f7dc81        	l32r	a8, 400d0438 <_stext+0x418>
400d24c9:	0008e0        	callx8	a8
400d24cc:	0a2d      	mov.n	a2, a10
400d24ce:	f01d      	retw.n

400d24d0 <<&mut W as core::fmt::Write>::write_fmt>:
400d24d0:	008136        	entry	a1, 64
400d24d3:	0288      	l32i.n	a8, a2, 0
400d24d5:	0189      	s32i.n	a8, a1, 0
400d24d7:	5388      	l32i.n	a8, a3, 20
400d24d9:	6189      	s32i.n	a8, a1, 24
400d24db:	4388      	l32i.n	a8, a3, 16
400d24dd:	5189      	s32i.n	a8, a1, 20
400d24df:	3388      	l32i.n	a8, a3, 12
400d24e1:	4189      	s32i.n	a8, a1, 16
400d24e3:	2388      	l32i.n	a8, a3, 8
400d24e5:	3189      	s32i.n	a8, a1, 12
400d24e7:	1388      	l32i.n	a8, a3, 4
400d24e9:	2189      	s32i.n	a8, a1, 8
400d24eb:	0388      	l32i.n	a8, a3, 0
400d24ed:	1189      	s32i.n	a8, a1, 4
400d24ef:	00c1a2        	addi	a10, a1, 0
400d24f2:	f7dab1        	l32r	a11, 400d045c <_stext+0x43c>
400d24f5:	04c1c2        	addi	a12, a1, 4
400d24f8:	f6e481        	l32r	a8, 400d0088 <_stext+0x68>
400d24fb:	0008e0        	callx8	a8
400d24fe:	0a2d      	mov.n	a2, a10
400d2500:	f01d      	retw.n
	...

400d2504 <core::time::Duration::as_millis>:
400d2504:	006136        	entry	a1, 48
400d2507:	070c      	movi.n	a7, 0
400d2509:	1179      	s32i.n	a7, a1, 4
400d250b:	0179      	s32i.n	a7, a1, 0
400d250d:	02a8      	l32i.n	a10, a2, 0
400d250f:	12b8      	l32i.n	a11, a2, 4
400d2511:	e8a3e2        	movi	a14, 0x3e8
400d2514:	f7b181        	l32r	a8, 400d03d8 <_stext+0x3b8>
400d2517:	07cd      	mov.n	a12, a7
400d2519:	07dd      	mov.n	a13, a7
400d251b:	07fd      	mov.n	a15, a7
400d251d:	0008e0        	callx8	a8
400d2520:	2288      	l32i.n	a8, a2, 8
400d2522:	f71891        	l32r	a9, 400d0184 <_stext+0x164>
400d2525:	a28890        	muluh	a8, a8, a9
400d2528:	291c      	movi.n	a9, 18
400d252a:	400900        	ssr	a9
400d252d:	918080        	srl	a8, a8
400d2530:	2a8a      	add.n	a2, a10, a8
400d2532:	180c      	movi.n	a8, 1
400d2534:	089d      	mov.n	a9, a8
400d2536:	12b2a7        	bgeu	a2, a10, 400d254c <core::time::Duration::as_millis+0x48>
400d2539:	3b9a      	add.n	a3, a11, a9
400d253b:	08ed      	mov.n	a14, a8
400d253d:	14b3b7        	bgeu	a3, a11, 400d2555 <core::time::Duration::as_millis+0x51>
400d2540:	1632a7        	bltu	a2, a10, 400d255a <core::time::Duration::as_millis+0x56>
400d2543:	4c9a      	add.n	a4, a12, a9
400d2545:	18b4c7        	bgeu	a4, a12, 400d2561 <core::time::Duration::as_millis+0x5d>
400d2548:	5d8a      	add.n	a5, a13, a8
400d254a:	f01d      	retw.n
400d254c:	079d      	mov.n	a9, a7
400d254e:	3b9a      	add.n	a3, a11, a9
400d2550:	08ed      	mov.n	a14, a8
400d2552:	ea33b7        	bltu	a3, a11, 400d2540 <core::time::Duration::as_millis+0x3c>
400d2555:	07ed      	mov.n	a14, a7
400d2557:	e8b2a7        	bgeu	a2, a10, 400d2543 <core::time::Duration::as_millis+0x3f>
400d255a:	0e9d      	mov.n	a9, a14
400d255c:	4c9a      	add.n	a4, a12, a9
400d255e:	e634c7        	bltu	a4, a12, 400d2548 <core::time::Duration::as_millis+0x44>
400d2561:	078d      	mov.n	a8, a7
400d2563:	5d8a      	add.n	a5, a13, a8
400d2565:	f01d      	retw.n
	...

400d2568 <<&T as core::fmt::Debug>::fmt>:
400d2568:	006136        	entry	a1, 48
400d256b:	0288      	l32i.n	a8, a2, 0
400d256d:	0848      	l32i.n	a4, a8, 0
400d256f:	63a8      	l32i.n	a10, a3, 24
400d2571:	7388      	l32i.n	a8, a3, 28
400d2573:	3888      	l32i.n	a8, a8, 12
400d2575:	f7bab1        	l32r	a11, 400d0460 <_stext+0x440>
400d2578:	8c0c      	movi.n	a12, 8
400d257a:	0008e0        	callx8	a8
400d257d:	020c      	movi.n	a2, 0
400d257f:	054122        	s8i	a2, a1, 5
400d2582:	0441a2        	s8i	a10, a1, 4
400d2585:	0139      	s32i.n	a3, a1, 0
400d2587:	2149      	s32i.n	a4, a1, 8
400d2589:	00c162        	addi	a6, a1, 0
400d258c:	f7b6b1        	l32r	a11, 400d0464 <_stext+0x444>
400d258f:	470c      	movi.n	a7, 4
400d2591:	08c1d2        	addi	a13, a1, 8
400d2594:	f7b5e1        	l32r	a14, 400d0468 <_stext+0x448>
400d2597:	f71731        	l32r	a3, 400d01f4 <_stext+0x1d4>
400d259a:	06ad      	mov.n	a10, a6
400d259c:	07cd      	mov.n	a12, a7
400d259e:	0003e0        	callx8	a3
400d25a1:	848b      	addi.n	a8, a4, 8
400d25a3:	2189      	s32i.n	a8, a1, 8
400d25a5:	f7b1b1        	l32r	a11, 400d046c <_stext+0x44c>
400d25a8:	08c1d2        	addi	a13, a1, 8
400d25ab:	f7b151        	l32r	a5, 400d0470 <_stext+0x450>
400d25ae:	06ad      	mov.n	a10, a6
400d25b0:	07cd      	mov.n	a12, a7
400d25b2:	05ed      	mov.n	a14, a5
400d25b4:	0003e0        	callx8	a3
400d25b7:	84cb      	addi.n	a8, a4, 12
400d25b9:	2189      	s32i.n	a8, a1, 8
400d25bb:	f7aeb1        	l32r	a11, 400d0474 <_stext+0x454>
400d25be:	3c0c      	movi.n	a12, 3
400d25c0:	08c1d2        	addi	a13, a1, 8
400d25c3:	06ad      	mov.n	a10, a6
400d25c5:	05ed      	mov.n	a14, a5
400d25c7:	0003e0        	callx8	a3
400d25ca:	0401a2        	l8ui	a10, a1, 4
400d25cd:	050182        	l8ui	a8, a1, 5
400d25d0:	ffa062        	movi	a6, 255
400d25d3:	007816        	beqz	a8, 400d25de <<&T as core::fmt::Debug>::fmt+0x76>
400d25d6:	108a60        	and	a8, a10, a6
400d25d9:	00b816        	beqz	a8, 400d25e8 <<&T as core::fmt::Debug>::fmt+0x80>
400d25dc:	1a0c      	movi.n	a10, 1
400d25de:	108a60        	and	a8, a10, a6
400d25e1:	011827        	beq	a8, a2, 400d25e6 <<&T as core::fmt::Debug>::fmt+0x7e>
400d25e4:	120c      	movi.n	a2, 1
400d25e6:	f01d      	retw.n
400d25e8:	0188      	l32i.n	a8, a1, 0
400d25ea:	0898      	l32i.n	a9, a8, 0
400d25ec:	109970        	and	a9, a9, a7
400d25ef:	016956        	bnez	a9, 400d2609 <<&T as core::fmt::Debug>::fmt+0xa1>
400d25f2:	68a8      	l32i.n	a10, a8, 24
400d25f4:	7888      	l32i.n	a8, a8, 28
400d25f6:	3888      	l32i.n	a8, a8, 12
400d25f8:	f796b1        	l32r	a11, 400d0450 <_stext+0x430>
400d25fb:	2c0c      	movi.n	a12, 2
400d25fd:	0008e0        	callx8	a8
400d2600:	108a60        	and	a8, a10, a6
400d2603:	dd9827        	bne	a8, a2, 400d25e4 <<&T as core::fmt::Debug>::fmt+0x7c>
400d2606:	fff706        	j	400d25e6 <<&T as core::fmt::Debug>::fmt+0x7e>
400d2609:	68a8      	l32i.n	a10, a8, 24
400d260b:	7888      	l32i.n	a8, a8, 28
400d260d:	3888      	l32i.n	a8, a8, 12
400d260f:	f78fb1        	l32r	a11, 400d044c <_stext+0x42c>
400d2612:	1c0c      	movi.n	a12, 1
400d2614:	0008e0        	callx8	a8
400d2617:	108a60        	and	a8, a10, a6
400d261a:	c69827        	bne	a8, a2, 400d25e4 <<&T as core::fmt::Debug>::fmt+0x7c>
400d261d:	fff146        	j	400d25e6 <<&T as core::fmt::Debug>::fmt+0x7e>

400d2620 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt>:
400d2620:	00c136        	entry	a1, 96
400d2623:	0139      	s32i.n	a3, a1, 0
400d2625:	0298      	l32i.n	a9, a2, 0
400d2627:	7e2c      	movi.n	a14, 39
400d2629:	f75d81        	l32r	a8, 400d03a0 <_stext+0x380>
400d262c:	023897        	bltu	a8, a9, 400d2632 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt+0x12>
400d262f:	003946        	j	400d2718 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt+0xf8>
400d2632:	f75881        	l32r	a8, 400d0394 <_stext+0x374>
400d2635:	5189      	s32i.n	a8, a1, 20
400d2637:	f75b81        	l32r	a8, 400d03a4 <_stext+0x384>
400d263a:	4189      	s32i.n	a8, a1, 16
400d263c:	f75b81        	l32r	a8, 400d03a8 <_stext+0x388>
400d263f:	3189      	s32i.n	a8, a1, 12
400d2641:	f75681        	l32r	a8, 400d039c <_stext+0x37c>
400d2644:	2189      	s32i.n	a8, a1, 8
400d2646:	181c      	movi.n	a8, 17
400d2648:	1189      	s32i.n	a8, a1, 4
400d264a:	f75171        	l32r	a7, 400d0390 <_stext+0x370>
400d264d:	64a062        	movi	a6, 100
400d2650:	f67951        	l32r	a5, 400d0034 <_stext+0x14>
400d2653:	f74c41        	l32r	a4, 400d0384 <_stext+0x364>
400d2656:	092d      	mov.n	a2, a9
400d2658:	fcce82        	addi	a8, a14, -4
400d265b:	18c1a2        	addi	a10, a1, 24
400d265e:	3a8a      	add.n	a3, a10, a8
400d2660:	5198      	l32i.n	a9, a1, 20
400d2662:	a29290        	muluh	a9, a2, a9
400d2665:	419d90        	srli	a9, a9, 13
400d2668:	41b8      	l32i.n	a11, a1, 16
400d266a:	82b9b0        	mull	a11, a9, a11
400d266d:	c0b2b0        	sub	a11, a2, a11
400d2670:	31c8      	l32i.n	a12, a1, 12
400d2672:	10cbc0        	and	a12, a11, a12
400d2675:	41c2c0        	srli	a12, a12, 2
400d2678:	21d8      	l32i.n	a13, a1, 8
400d267a:	82ccd0        	mull	a12, a12, a13
400d267d:	11d8      	l32i.n	a13, a1, 4
400d267f:	400d00        	ssr	a13
400d2682:	91c0c0        	srl	a12, a12
400d2685:	90dc70        	addx2	a13, a12, a7
400d2688:	010df2        	l8ui	a15, a13, 1
400d268b:	0143f2        	s8i	a15, a3, 1
400d268e:	000dd2        	l8ui	a13, a13, 0
400d2691:	0043d2        	s8i	a13, a3, 0
400d2694:	82cc60        	mull	a12, a12, a6
400d2697:	c0bbc0        	sub	a11, a11, a12
400d269a:	10bb50        	and	a11, a11, a5
400d269d:	90bb70        	addx2	a11, a11, a7
400d26a0:	010bc2        	l8ui	a12, a11, 1
400d26a3:	aeaa      	add.n	a10, a14, a10
400d26a5:	da0b      	addi.n	a13, a10, -1
400d26a7:	004dc2        	s8i	a12, a13, 0
400d26aa:	000bb2        	l8ui	a11, a11, 0
400d26ad:	fecaa2        	addi	a10, a10, -2
400d26b0:	004ab2        	s8i	a11, a10, 0
400d26b3:	08ed      	mov.n	a14, a8
400d26b5:	9d3427        	bltu	a4, a2, 400d2656 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt+0x36>
400d26b8:	63a0b2        	movi	a11, 99
400d26bb:	f735a1        	l32r	a10, 400d0390 <_stext+0x370>
400d26be:	61bb97        	bgeu	a11, a9, 400d2723 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt+0x103>
400d26c1:	fec882        	addi	a8, a8, -2
400d26c4:	18c1b2        	addi	a11, a1, 24
400d26c7:	cb8a      	add.n	a12, a11, a8
400d26c9:	f737b1        	l32r	a11, 400d03a8 <_stext+0x388>
400d26cc:	10b9b0        	and	a11, a9, a11
400d26cf:	41b2b0        	srli	a11, a11, 2
400d26d2:	f732d1        	l32r	a13, 400d039c <_stext+0x37c>
400d26d5:	82bbd0        	mull	a11, a11, a13
400d26d8:	1d1c      	movi.n	a13, 17
400d26da:	400d00        	ssr	a13
400d26dd:	91b0b0        	srl	a11, a11
400d26e0:	64a0d2        	movi	a13, 100
400d26e3:	82dbd0        	mull	a13, a11, a13
400d26e6:	c099d0        	sub	a9, a9, a13
400d26e9:	f652d1        	l32r	a13, 400d0034 <_stext+0x14>
400d26ec:	1099d0        	and	a9, a9, a13
400d26ef:	9099a0        	addx2	a9, a9, a10
400d26f2:	0109d2        	l8ui	a13, a9, 1
400d26f5:	014cd2        	s8i	a13, a12, 1
400d26f8:	000992        	l8ui	a9, a9, 0
400d26fb:	004c92        	s8i	a9, a12, 0
400d26fe:	269bb6        	bltui	a11, 10, 400d2728 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt+0x108>
400d2701:	fec882        	addi	a8, a8, -2
400d2704:	18c192        	addi	a9, a1, 24
400d2707:	998a      	add.n	a9, a9, a8
400d2709:	90aba0        	addx2	a10, a11, a10
400d270c:	010ab2        	l8ui	a11, a10, 1
400d270f:	0149b2        	s8i	a11, a9, 1
400d2712:	000aa2        	l8ui	a10, a10, 0
400d2715:	000646        	j	400d2732 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt+0x112>
400d2718:	0e8d      	mov.n	a8, a14
400d271a:	63a0b2        	movi	a11, 99
400d271d:	f71ca1        	l32r	a10, 400d0390 <_stext+0x370>
400d2720:	9d3b97        	bltu	a11, a9, 400d26c1 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt+0xa1>
400d2723:	09bd      	mov.n	a11, a9
400d2725:	d89bf6        	bgeui	a11, 10, 400d2701 <core::fmt::num::imp::<impl core::fmt::Display for u32>::fmt+0xe1>
400d2728:	880b      	addi.n	a8, a8, -1
400d272a:	18c192        	addi	a9, a1, 24
400d272d:	998a      	add.n	a9, a9, a8
400d272f:	30cba2        	addi	a10, a11, 48
400d2732:	0049a2        	s8i	a10, a9, 0
400d2735:	18c192        	addi	a9, a1, 24
400d2738:	e98a      	add.n	a14, a9, a8
400d273a:	792c      	movi.n	a9, 39
400d273c:	c0f980        	sub	a15, a9, a8
400d273f:	1b0c      	movi.n	a11, 1
400d2741:	f74dc1        	l32r	a12, 400d0478 <_stext+0x458>
400d2744:	0d0c      	movi.n	a13, 0
400d2746:	f72e81        	l32r	a8, 400d0400 <_stext+0x3e0>
400d2749:	01a8      	l32i.n	a10, a1, 0
400d274b:	0008e0        	callx8	a8
400d274e:	0a2d      	mov.n	a2, a10
400d2750:	f01d      	retw.n
	...

400d2754 <<T as core::any::Any>::type_id>:
400d2754:	004136        	entry	a1, 32
400d2757:	f74921        	l32r	a2, 400d047c <_stext+0x45c>
400d275a:	f74931        	l32r	a3, 400d0480 <_stext+0x460>
400d275d:	f01d      	retw.n
	...

400d2760 <core::panicking::panic>:
400d2760:	008136        	entry	a1, 64
400d2763:	080c      	movi.n	a8, 0
400d2765:	5189      	s32i.n	a8, a1, 20
400d2767:	f74791        	l32r	a9, 400d0484 <_stext+0x464>
400d276a:	4199      	s32i.n	a9, a1, 16
400d276c:	2189      	s32i.n	a8, a1, 8
400d276e:	180c      	movi.n	a8, 1
400d2770:	1189      	s32i.n	a8, a1, 4
400d2772:	18c182        	addi	a8, a1, 24
400d2775:	0189      	s32i.n	a8, a1, 0
400d2777:	7139      	s32i.n	a3, a1, 28
400d2779:	6129      	s32i.n	a2, a1, 24
400d277b:	00c1a2        	addi	a10, a1, 0
400d277e:	f66181        	l32r	a8, 400d0104 <_stext+0xe4>
400d2781:	04bd      	mov.n	a11, a4
400d2783:	0008e0        	callx8	a8
400d2786:	0041f0        	break	1, 15
400d2789:	000000        	ill

400d278c <core::panicking::panic_bounds_check>:
400d278c:	00a136        	entry	a1, 80
400d278f:	1139      	s32i.n	a3, a1, 4
400d2791:	0129      	s32i.n	a2, a1, 0
400d2793:	280c      	movi.n	a8, 2
400d2795:	7189      	s32i.n	a8, a1, 28
400d2797:	20c192        	addi	a9, a1, 32
400d279a:	6199      	s32i.n	a9, a1, 24
400d279c:	090c      	movi.n	a9, 0
400d279e:	4199      	s32i.n	a9, a1, 16
400d27a0:	3189      	s32i.n	a8, a1, 12
400d27a2:	f73981        	l32r	a8, 400d0488 <_stext+0x468>
400d27a5:	2189      	s32i.n	a8, a1, 8
400d27a7:	f64c81        	l32r	a8, 400d00d8 <_stext+0xb8>
400d27aa:	b189      	s32i.n	a8, a1, 44
400d27ac:	00c192        	addi	a9, a1, 0
400d27af:	a199      	s32i.n	a9, a1, 40
400d27b1:	9189      	s32i.n	a8, a1, 36
400d27b3:	04c182        	addi	a8, a1, 4
400d27b6:	8189      	s32i.n	a8, a1, 32
400d27b8:	08c1a2        	addi	a10, a1, 8
400d27bb:	f65281        	l32r	a8, 400d0104 <_stext+0xe4>
400d27be:	04bd      	mov.n	a11, a4
400d27c0:	0008e0        	callx8	a8
400d27c3:	0041f0        	break	1, 15
	...

400d27c8 <core::panicking::panic_fmt>:
400d27c8:	008136        	entry	a1, 64
400d27cb:	180c      	movi.n	a8, 1
400d27cd:	104182        	s8i	a8, a1, 16
400d27d0:	3139      	s32i.n	a3, a1, 12
400d27d2:	2129      	s32i.n	a2, a1, 8
400d27d4:	f72e81        	l32r	a8, 400d048c <_stext+0x46c>
400d27d7:	1189      	s32i.n	a8, a1, 4
400d27d9:	f72a81        	l32r	a8, 400d0484 <_stext+0x464>
400d27dc:	0189      	s32i.n	a8, a1, 0
400d27de:	00c1a2        	addi	a10, a1, 0
400d27e1:	f72b81        	l32r	a8, 400d0490 <_stext+0x470>
400d27e4:	0008e0        	callx8	a8
400d27e7:	0041f0        	break	1, 15
	...

400d27ec <core::result::unwrap_failed>:
400d27ec:	00c136        	entry	a1, 96
400d27ef:	1139      	s32i.n	a3, a1, 4
400d27f1:	0129      	s32i.n	a2, a1, 0
400d27f3:	3159      	s32i.n	a5, a1, 12
400d27f5:	2149      	s32i.n	a4, a1, 8
400d27f7:	280c      	movi.n	a8, 2
400d27f9:	9189      	s32i.n	a8, a1, 36
400d27fb:	28c192        	addi	a9, a1, 40
400d27fe:	8199      	s32i.n	a9, a1, 32
400d2800:	090c      	movi.n	a9, 0
400d2802:	6199      	s32i.n	a9, a1, 24
400d2804:	5189      	s32i.n	a8, a1, 20
400d2806:	f72381        	l32r	a8, 400d0494 <_stext+0x474>
400d2809:	4189      	s32i.n	a8, a1, 16
400d280b:	f72381        	l32r	a8, 400d0498 <_stext+0x478>
400d280e:	d189      	s32i.n	a8, a1, 52
400d2810:	08c182        	addi	a8, a1, 8
400d2813:	c189      	s32i.n	a8, a1, 48
400d2815:	f72181        	l32r	a8, 400d049c <_stext+0x47c>
400d2818:	b189      	s32i.n	a8, a1, 44
400d281a:	00c182        	addi	a8, a1, 0
400d281d:	a189      	s32i.n	a8, a1, 40
400d281f:	10c1a2        	addi	a10, a1, 16
400d2822:	f63881        	l32r	a8, 400d0104 <_stext+0xe4>
400d2825:	06bd      	mov.n	a11, a6
400d2827:	0008e0        	callx8	a8
400d282a:	0041f0        	break	1, 15
400d282d:	000000        	ill

400d2830 <<core::panic::panic_info::PanicInfo as core::fmt::Debug>::fmt>:
400d2830:	006136        	entry	a1, 48
400d2833:	027d      	mov.n	a7, a2
400d2835:	63a8      	l32i.n	a10, a3, 24
400d2837:	7388      	l32i.n	a8, a3, 28
400d2839:	3888      	l32i.n	a8, a8, 12
400d283b:	f719b1        	l32r	a11, 400d04a0 <_stext+0x480>
400d283e:	9c0c      	movi.n	a12, 9
400d2840:	0008e0        	callx8	a8
400d2843:	020c      	movi.n	a2, 0
400d2845:	054122        	s8i	a2, a1, 5
400d2848:	0441a2        	s8i	a10, a1, 4
400d284b:	0139      	s32i.n	a3, a1, 0
400d284d:	2179      	s32i.n	a7, a1, 8
400d284f:	00c162        	addi	a6, a1, 0
400d2852:	f714b1        	l32r	a11, 400d04a4 <_stext+0x484>
400d2855:	750c      	movi.n	a5, 7
400d2857:	08c1d2        	addi	a13, a1, 8
400d285a:	f713e1        	l32r	a14, 400d04a8 <_stext+0x488>
400d285d:	f66541        	l32r	a4, 400d01f4 <_stext+0x1d4>
400d2860:	06ad      	mov.n	a10, a6
400d2862:	05cd      	mov.n	a12, a5
400d2864:	0004e0        	callx8	a4
400d2867:	878b      	addi.n	a8, a7, 8
400d2869:	2189      	s32i.n	a8, a1, 8
400d286b:	f710b1        	l32r	a11, 400d04ac <_stext+0x48c>
400d286e:	08c1d2        	addi	a13, a1, 8
400d2871:	f70fe1        	l32r	a14, 400d04b0 <_stext+0x490>
400d2874:	06ad      	mov.n	a10, a6
400d2876:	05cd      	mov.n	a12, a5
400d2878:	0004e0        	callx8	a4
400d287b:	87cb      	addi.n	a8, a7, 12
400d287d:	2189      	s32i.n	a8, a1, 8
400d287f:	f70db1        	l32r	a11, 400d04b4 <_stext+0x494>
400d2882:	8c0c      	movi.n	a12, 8
400d2884:	08c1d2        	addi	a13, a1, 8
400d2887:	f70ce1        	l32r	a14, 400d04b8 <_stext+0x498>
400d288a:	06ad      	mov.n	a10, a6
400d288c:	0004e0        	callx8	a4
400d288f:	10c782        	addi	a8, a7, 16
400d2892:	2189      	s32i.n	a8, a1, 8
400d2894:	f70ab1        	l32r	a11, 400d04bc <_stext+0x49c>
400d2897:	ac0c      	movi.n	a12, 10
400d2899:	08c1d2        	addi	a13, a1, 8
400d289c:	f709e1        	l32r	a14, 400d04c0 <_stext+0x4a0>
400d289f:	06ad      	mov.n	a10, a6
400d28a1:	0004e0        	callx8	a4
400d28a4:	0401a2        	l8ui	a10, a1, 4
400d28a7:	050182        	l8ui	a8, a1, 5
400d28aa:	ffa072        	movi	a7, 255
400d28ad:	007816        	beqz	a8, 400d28b8 <<core::panic::panic_info::PanicInfo as core::fmt::Debug>::fmt+0x88>
400d28b0:	108a70        	and	a8, a10, a7
400d28b3:	00b816        	beqz	a8, 400d28c2 <<core::panic::panic_info::PanicInfo as core::fmt::Debug>::fmt+0x92>
400d28b6:	1a0c      	movi.n	a10, 1
400d28b8:	108a70        	and	a8, a10, a7
400d28bb:	011827        	beq	a8, a2, 400d28c0 <<core::panic::panic_info::PanicInfo as core::fmt::Debug>::fmt+0x90>
400d28be:	120c      	movi.n	a2, 1
400d28c0:	f01d      	retw.n
400d28c2:	0188      	l32i.n	a8, a1, 0
400d28c4:	0898      	l32i.n	a9, a8, 0
400d28c6:	4a0c      	movi.n	a10, 4
400d28c8:	1099a0        	and	a9, a9, a10
400d28cb:	016956        	bnez	a9, 400d28e5 <<core::panic::panic_info::PanicInfo as core::fmt::Debug>::fmt+0xb5>
400d28ce:	68a8      	l32i.n	a10, a8, 24
400d28d0:	7888      	l32i.n	a8, a8, 28
400d28d2:	3888      	l32i.n	a8, a8, 12
400d28d4:	f6dfb1        	l32r	a11, 400d0450 <_stext+0x430>
400d28d7:	2c0c      	movi.n	a12, 2
400d28d9:	0008e0        	callx8	a8
400d28dc:	108a70        	and	a8, a10, a7
400d28df:	db9827        	bne	a8, a2, 400d28be <<core::panic::panic_info::PanicInfo as core::fmt::Debug>::fmt+0x8e>
400d28e2:	fff686        	j	400d28c0 <<core::panic::panic_info::PanicInfo as core::fmt::Debug>::fmt+0x90>
400d28e5:	68a8      	l32i.n	a10, a8, 24
400d28e7:	7888      	l32i.n	a8, a8, 28
400d28e9:	3888      	l32i.n	a8, a8, 12
400d28eb:	f6d8b1        	l32r	a11, 400d044c <_stext+0x42c>
400d28ee:	1c0c      	movi.n	a12, 1
400d28f0:	0008e0        	callx8	a8
400d28f3:	108a70        	and	a8, a10, a7
400d28f6:	c49827        	bne	a8, a2, 400d28be <<core::panic::panic_info::PanicInfo as core::fmt::Debug>::fmt+0x8e>
400d28f9:	fff0c6        	j	400d28c0 <<core::panic::panic_info::PanicInfo as core::fmt::Debug>::fmt+0x90>

400d28fc <<&T as core::fmt::Debug>::fmt>:
400d28fc:	004136        	entry	a1, 32
400d28ff:	6378      	l32i.n	a7, a3, 24
400d2901:	7388      	l32i.n	a8, a3, 28
400d2903:	3868      	l32i.n	a6, a8, 12
400d2905:	f6efb1        	l32r	a11, 400d04c4 <_stext+0x4a4>
400d2908:	3c0c      	movi.n	a12, 3
400d290a:	07ad      	mov.n	a10, a7
400d290c:	0006e0        	callx8	a6
400d290f:	003a16        	beqz	a10, 400d2916 <<&T as core::fmt::Debug>::fmt+0x1a>
400d2912:	120c      	movi.n	a2, 1
400d2914:	f01d      	retw.n
400d2916:	f6ecb1        	l32r	a11, 400d04c8 <_stext+0x4a8>
400d2919:	7c0c      	movi.n	a12, 7
400d291b:	07ad      	mov.n	a10, a7
400d291d:	0006e0        	callx8	a6
400d2920:	0a2d      	mov.n	a2, a10
400d2922:	f01d      	retw.n

400d2924 <core::str::count::do_count_chars>:
400d2924:	008136        	entry	a1, 64
400d2927:	028d      	mov.n	a8, a2
400d2929:	983b      	addi.n	a9, a8, 3
400d292b:	c47c      	movi.n	a4, -4
400d292d:	109940        	and	a9, a9, a4
400d2930:	c09980        	sub	a9, a9, a8
400d2933:	34b397        	bgeu	a3, a9, 400d296b <core::str::count::do_count_chars+0x47>
400d2936:	078316        	beqz	a3, 400d29b2 <core::str::count::do_count_chars+0x8e>
400d2939:	090c      	movi.n	a9, 0
400d293b:	1a0c      	movi.n	a10, 1
400d293d:	bfafb2        	movi	a11, -65
400d2940:	092d      	mov.n	a2, a9
400d2942:	000186        	j	400d294c <core::str::count::do_count_chars+0x28>
400d2945:	22ca      	add.n	a2, a2, a12
400d2947:	881b      	addi.n	a8, a8, 1
400d2949:	000606        	j	400d2965 <core::str::count::do_count_chars+0x41>
400d294c:	0020f0        	nop
400d294f:	0020f0        	nop
400d2952:	128376        	loop	a3, 400d2968 <core::str::count::do_count_chars+0x44>
400d2955:	0008c2        	l8ui	a12, a8, 0
400d2958:	23dc00        	sext	a13, a12, 7
400d295b:	0acd      	mov.n	a12, a10
400d295d:	e42bd7        	blt	a11, a13, 400d2945 <core::str::count::do_count_chars+0x21>
400d2960:	09cd      	mov.n	a12, a9
400d2962:	fff7c6        	j	400d2945 <core::str::count::do_count_chars+0x21>
400d2965:	0020f0        	nop
400d2968:	0053c6        	j	400d2abb <core::str::count::do_count_chars+0x197>
400d296b:	4a0c      	movi.n	a10, 4
400d296d:	c53a97        	bltu	a10, a9, 400d2936 <core::str::count::do_count_chars+0x12>
400d2970:	c0c390        	sub	a12, a3, a9
400d2973:	bf4cb6        	bltui	a12, 4, 400d2936 <core::str::count::do_count_chars+0x12>
400d2976:	3a0c      	movi.n	a10, 3
400d2978:	31a9      	s32i.n	a10, a1, 12
400d297a:	10dca0        	and	a13, a12, a10
400d297d:	0f0c      	movi.n	a15, 0
400d297f:	bfafe2        	movi	a14, -65
400d2982:	41f9      	s32i.n	a15, a1, 16
400d2984:	02e916        	beqz	a9, 400d29b6 <core::str::count::do_count_chars+0x92>
400d2987:	1a0c      	movi.n	a10, 1
400d2989:	0b0c      	movi.n	a11, 0
400d298b:	0bfd      	mov.n	a15, a11
400d298d:	087d      	mov.n	a7, a8
400d298f:	000186        	j	400d2999 <core::str::count::do_count_chars+0x75>
400d2992:	ff6a      	add.n	a15, a15, a6
400d2994:	771b      	addi.n	a7, a7, 1
400d2996:	000486        	j	400d29ac <core::str::count::do_count_chars+0x88>
400d2999:	128976        	loop	a9, 400d29af <core::str::count::do_count_chars+0x8b>
400d299c:	000762        	l8ui	a6, a7, 0
400d299f:	235600        	sext	a5, a6, 7
400d29a2:	0a6d      	mov.n	a6, a10
400d29a4:	ea2e57        	blt	a14, a5, 400d2992 <core::str::count::do_count_chars+0x6e>
400d29a7:	0b6d      	mov.n	a6, a11
400d29a9:	fff946        	j	400d2992 <core::str::count::do_count_chars+0x6e>
400d29ac:	0020f0        	nop
400d29af:	0000c6        	j	400d29b6 <core::str::count::do_count_chars+0x92>
400d29b2:	020c      	movi.n	a2, 0
400d29b4:	f01d      	retw.n
400d29b6:	389a      	add.n	a3, a8, a9
400d29b8:	4188      	l32i.n	a8, a1, 16
400d29ba:	02dd16        	beqz	a13, 400d29eb <core::str::count::do_count_chars+0xc7>
400d29bd:	108c40        	and	a8, a12, a4
400d29c0:	938a      	add.n	a9, a3, a8
400d29c2:	0a0c      	movi.n	a10, 0
400d29c4:	1b0c      	movi.n	a11, 1
400d29c6:	0a8d      	mov.n	a8, a10
400d29c8:	000186        	j	400d29d2 <core::str::count::do_count_chars+0xae>
400d29cb:	887a      	add.n	a8, a8, a7
400d29cd:	991b      	addi.n	a9, a9, 1
400d29cf:	000486        	j	400d29e5 <core::str::count::do_count_chars+0xc1>
400d29d2:	128d76        	loop	a13, 400d29e8 <core::str::count::do_count_chars+0xc4>
400d29d5:	000972        	l8ui	a7, a9, 0
400d29d8:	236700        	sext	a6, a7, 7
400d29db:	0b7d      	mov.n	a7, a11
400d29dd:	ea2e67        	blt	a14, a6, 400d29cb <core::str::count::do_count_chars+0xa7>
400d29e0:	0a7d      	mov.n	a7, a10
400d29e2:	fff946        	j	400d29cb <core::str::count::do_count_chars+0xa7>
400d29e5:	0020f0        	nop
400d29e8:	ffffc6        	j	400d29eb <core::str::count::do_count_chars+0xc7>
400d29eb:	0149      	s32i.n	a4, a1, 0
400d29ed:	4152c0        	srli	a5, a12, 2
400d29f0:	28fa      	add.n	a2, a8, a15
400d29f2:	c0a082        	movi	a8, 192
400d29f5:	5189      	s32i.n	a8, a1, 20
400d29f7:	fca082        	movi	a8, 252
400d29fa:	1189      	s32i.n	a8, a1, 4
400d29fc:	f6b5c1        	l32r	a12, 400d04d0 <_stext+0x4b0>
400d29ff:	f6b581        	l32r	a8, 400d04d4 <_stext+0x4b4>
400d2a02:	2189      	s32i.n	a8, a1, 8
400d2a04:	fd7c      	movi.n	a13, -1
400d2a06:	f6b1e1        	l32r	a14, 400d04cc <_stext+0x4ac>
400d2a09:	0009c6        	j	400d2a34 <core::str::count::do_count_chars+0x110>
400d2a0c:	3188      	l32i.n	a8, a1, 12
400d2a0e:	108380        	and	a8, a3, a8
400d2a11:	c05630        	sub	a5, a6, a3
400d2a14:	a033a0        	addx4	a3, a3, a10
400d2a17:	109bc0        	and	a9, a11, a12
400d2a1a:	41b8b0        	srli	a11, a11, 8
400d2a1d:	10bbc0        	and	a11, a11, a12
400d2a20:	9b9a      	add.n	a9, a11, a9
400d2a22:	21b8      	l32i.n	a11, a1, 8
400d2a24:	82b9b0        	mull	a11, a9, a11
400d2a27:	091c      	movi.n	a9, 16
400d2a29:	400900        	ssr	a9
400d2a2c:	91b0b0        	srl	a11, a11
400d2a2f:	2b2a      	add.n	a2, a11, a2
400d2a31:	088856        	bnez	a8, 400d2abd <core::str::count::do_count_chars+0x199>
400d2a34:	056d      	mov.n	a6, a5
400d2a36:	03ad      	mov.n	a10, a3
400d2a38:	07f616        	beqz	a6, 400d2abb <core::str::count::do_count_chars+0x197>
400d2a3b:	063d      	mov.n	a3, a6
400d2a3d:	5188      	l32i.n	a8, a1, 20
400d2a3f:	013687        	bltu	a6, a8, 400d2a44 <core::str::count::do_count_chars+0x120>
400d2a42:	5138      	l32i.n	a3, a1, 20
400d2a44:	1188      	l32i.n	a8, a1, 4
400d2a46:	104380        	and	a4, a3, a8
400d2a49:	419240        	srli	a9, a4, 2
400d2a4c:	1199c0        	slli	a9, a9, 4
400d2a4f:	41b8      	l32i.n	a11, a1, 16
400d2a51:	fb7916        	beqz	a9, 400d2a0c <core::str::count::do_count_chars+0xe8>
400d2a54:	f0c992        	addi	a9, a9, -16
400d2a57:	419490        	srli	a9, a9, 4
400d2a5a:	991b      	addi.n	a9, a9, 1
400d2a5c:	0b0c      	movi.n	a11, 0
400d2a5e:	0a5d      	mov.n	a5, a10
400d2a60:	0020f0        	nop
400d2a63:	0020f0        	nop
400d2a66:	4e8976        	loop	a9, 400d2ab8 <core::str::count::do_count_chars+0x194>
400d2a69:	1588      	l32i.n	a8, a5, 4
400d2a6b:	3078d0        	xor	a7, a8, a13
400d2a6e:	417770        	srli	a7, a7, 7
400d2a71:	418680        	srli	a8, a8, 6
400d2a74:	208780        	or	a8, a7, a8
400d2a77:	1088e0        	and	a8, a8, a14
400d2a7a:	0578      	l32i.n	a7, a5, 0
400d2a7c:	30f7d0        	xor	a15, a7, a13
400d2a7f:	41f7f0        	srli	a15, a15, 7
400d2a82:	417670        	srli	a7, a7, 6
400d2a85:	20ff70        	or	a15, a15, a7
400d2a88:	10ffe0        	and	a15, a15, a14
400d2a8b:	bfba      	add.n	a11, a15, a11
400d2a8d:	8b8a      	add.n	a8, a11, a8
400d2a8f:	25b8      	l32i.n	a11, a5, 8
400d2a91:	30fbd0        	xor	a15, a11, a13
400d2a94:	41f7f0        	srli	a15, a15, 7
400d2a97:	41b6b0        	srli	a11, a11, 6
400d2a9a:	20bfb0        	or	a11, a15, a11
400d2a9d:	10bbe0        	and	a11, a11, a14
400d2aa0:	88ba      	add.n	a8, a8, a11
400d2aa2:	35b8      	l32i.n	a11, a5, 12
400d2aa4:	30fbd0        	xor	a15, a11, a13
400d2aa7:	41f7f0        	srli	a15, a15, 7
400d2aaa:	41b6b0        	srli	a11, a11, 6
400d2aad:	20bfb0        	or	a11, a15, a11
400d2ab0:	10bbe0        	and	a11, a11, a14
400d2ab3:	b8ba      	add.n	a11, a8, a11
400d2ab5:	10c552        	addi	a5, a5, 16
400d2ab8:	ffd406        	j	400d2a0c <core::str::count::do_count_chars+0xe8>
400d2abb:	f01d      	retw.n
400d2abd:	c0a0b2        	movi	a11, 192
400d2ac0:	0136b7        	bltu	a6, a11, 400d2ac5 <core::str::count::do_count_chars+0x1a1>
400d2ac3:	0b6d      	mov.n	a6, a11
400d2ac5:	a0a4a0        	addx4	a10, a4, a10
400d2ac8:	3188      	l32i.n	a8, a1, 12
400d2aca:	108680        	and	a8, a6, a8
400d2acd:	01b8      	l32i.n	a11, a1, 0
400d2acf:	a088b0        	addx4	a8, a8, a11
400d2ad2:	418280        	srli	a8, a8, 2
400d2ad5:	f81b      	addi.n	a15, a8, 1
400d2ad7:	0b0c      	movi.n	a11, 0
400d2ad9:	148f76        	loop	a15, 400d2af1 <core::str::count::do_count_chars+0x1cd>
400d2adc:	0a88      	l32i.n	a8, a10, 0
400d2ade:	3078d0        	xor	a7, a8, a13
400d2ae1:	417770        	srli	a7, a7, 7
400d2ae4:	418680        	srli	a8, a8, 6
400d2ae7:	208780        	or	a8, a7, a8
400d2aea:	1088e0        	and	a8, a8, a14
400d2aed:	b8ba      	add.n	a11, a8, a11
400d2aef:	aa4b      	addi.n	a10, a10, 4
400d2af1:	108bc0        	and	a8, a11, a12
400d2af4:	41a8b0        	srli	a10, a11, 8
400d2af7:	10aac0        	and	a10, a10, a12
400d2afa:	8a8a      	add.n	a8, a10, a8
400d2afc:	21a8      	l32i.n	a10, a1, 8
400d2afe:	8288a0        	mull	a8, a8, a10
400d2b01:	400900        	ssr	a9
400d2b04:	918080        	srl	a8, a8
400d2b07:	282a      	add.n	a2, a8, a2
400d2b09:	f01d      	retw.n
	...

400d2b0c <<&T as core::fmt::Debug>::fmt>:
400d2b0c:	006136        	entry	a1, 48
400d2b0f:	0258      	l32i.n	a5, a2, 0
400d2b11:	0588      	l32i.n	a8, a5, 0
400d2b13:	042816        	beqz	a8, 400d2b59 <<&T as core::fmt::Debug>::fmt+0x4d>
400d2b16:	63a8      	l32i.n	a10, a3, 24
400d2b18:	7388      	l32i.n	a8, a3, 28
400d2b1a:	3888      	l32i.n	a8, a8, 12
400d2b1c:	f66fb1        	l32r	a11, 400d04d8 <_stext+0x4b8>
400d2b1f:	460c      	movi.n	a6, 4
400d2b21:	06cd      	mov.n	a12, a6
400d2b23:	0008e0        	callx8	a8
400d2b26:	0841a2        	s8i	a10, a1, 8
400d2b29:	0139      	s32i.n	a3, a1, 0
400d2b2b:	070c      	movi.n	a7, 0
400d2b2d:	094172        	s8i	a7, a1, 9
400d2b30:	1179      	s32i.n	a7, a1, 4
400d2b32:	3159      	s32i.n	a5, a1, 12
400d2b34:	00c1a2        	addi	a10, a1, 0
400d2b37:	0cc1b2        	addi	a11, a1, 12
400d2b3a:	f668c1        	l32r	a12, 400d04dc <_stext+0x4bc>
400d2b3d:	f66881        	l32r	a8, 400d04e0 <_stext+0x4c0>
400d2b40:	0008e0        	callx8	a8
400d2b43:	080152        	l8ui	a5, a1, 8
400d2b46:	1188      	l32i.n	a8, a1, 4
400d2b48:	ffa042        	movi	a4, 255
400d2b4b:	05a816        	beqz	a8, 400d2ba9 <<&T as core::fmt::Debug>::fmt+0x9d>
400d2b4e:	109540        	and	a9, a5, a4
400d2b51:	01b916        	beqz	a9, 400d2b70 <<&T as core::fmt::Debug>::fmt+0x64>
400d2b54:	150c      	movi.n	a5, 1
400d2b56:	0013c6        	j	400d2ba9 <<&T as core::fmt::Debug>::fmt+0x9d>
400d2b59:	63a8      	l32i.n	a10, a3, 24
400d2b5b:	7388      	l32i.n	a8, a3, 28
400d2b5d:	3888      	l32i.n	a8, a8, 12
400d2b5f:	f663b1        	l32r	a11, 400d04ec <_stext+0x4cc>
400d2b62:	4c0c      	movi.n	a12, 4
400d2b64:	0008e0        	callx8	a8
400d2b67:	0a7d      	mov.n	a7, a10
400d2b69:	180c      	movi.n	a8, 1
400d2b6b:	102780        	and	a2, a7, a8
400d2b6e:	f01d      	retw.n
400d2b70:	0138      	l32i.n	a3, a1, 0
400d2b72:	231866        	bnei	a8, 1, 400d2b99 <<&T as core::fmt::Debug>::fmt+0x8d>
400d2b75:	090182        	l8ui	a8, a1, 9
400d2b78:	108840        	and	a8, a8, a4
400d2b7b:	01a816        	beqz	a8, 400d2b99 <<&T as core::fmt::Debug>::fmt+0x8d>
400d2b7e:	0388      	l32i.n	a8, a3, 0
400d2b80:	108860        	and	a8, a8, a6
400d2b83:	012856        	bnez	a8, 400d2b99 <<&T as core::fmt::Debug>::fmt+0x8d>
400d2b86:	63a8      	l32i.n	a10, a3, 24
400d2b88:	7388      	l32i.n	a8, a3, 28
400d2b8a:	3888      	l32i.n	a8, a8, 12
400d2b8c:	f656b1        	l32r	a11, 400d04e4 <_stext+0x4c4>
400d2b8f:	150c      	movi.n	a5, 1
400d2b91:	05cd      	mov.n	a12, a5
400d2b93:	0008e0        	callx8	a8
400d2b96:	00fa56        	bnez	a10, 400d2ba9 <<&T as core::fmt::Debug>::fmt+0x9d>
400d2b99:	63a8      	l32i.n	a10, a3, 24
400d2b9b:	7388      	l32i.n	a8, a3, 28
400d2b9d:	3888      	l32i.n	a8, a8, 12
400d2b9f:	f652b1        	l32r	a11, 400d04e8 <_stext+0x4c8>
400d2ba2:	1c0c      	movi.n	a12, 1
400d2ba4:	0008e0        	callx8	a8
400d2ba7:	0a5d      	mov.n	a5, a10
400d2ba9:	108540        	and	a8, a5, a4
400d2bac:	b91877        	beq	a8, a7, 400d2b69 <<&T as core::fmt::Debug>::fmt+0x5d>
400d2baf:	170c      	movi.n	a7, 1
400d2bb1:	180c      	movi.n	a8, 1
400d2bb3:	102780        	and	a2, a7, a8
400d2bb6:	f01d      	retw.n

400d2bb8 <_ZN4core7unicode9printable5check17h41a931e8e4bbd5c3E.llvm.5870707130826185254>:
400d2bb8:	006136        	entry	a1, 48
400d2bbb:	180c      	movi.n	a8, 1
400d2bbd:	0189      	s32i.n	a8, a1, 0
400d2bbf:	04b416        	beqz	a4, 400d2c0e <_ZN4core7unicode9printable5check17h41a931e8e4bbd5c3E.llvm.5870707130826185254+0x56>
400d2bc2:	909430        	addx2	a9, a4, a3
400d2bc5:	f64aa1        	l32r	a10, 400d04f0 <_stext+0x4d0>
400d2bc8:	10a2a0        	and	a10, a2, a10
400d2bcb:	41b8a0        	srli	a11, a10, 8
400d2bce:	0a0c      	movi.n	a10, 0
400d2bd0:	ffa0c2        	movi	a12, 255
400d2bd3:	10dbc0        	and	a13, a11, a12
400d2bd6:	0103e2        	l8ui	a14, a3, 1
400d2bd9:	baea      	add.n	a11, a10, a14
400d2bdb:	0003f2        	l8ui	a15, a3, 0
400d2bde:	332b      	addi.n	a3, a3, 2
400d2be0:	229fd7        	bne	a15, a13, 400d2c06 <_ZN4core7unicode9printable5check17h41a931e8e4bbd5c3E.llvm.5870707130826185254+0x4e>
400d2be3:	02bba7        	bgeu	a11, a10, 400d2be9 <_ZN4core7unicode9printable5check17h41a931e8e4bbd5c3E.llvm.5870707130826185254+0x31>
400d2be6:	002446        	j	400d2c7b <_ZN4core7unicode9printable5check17h41a931e8e4bbd5c3E.llvm.5870707130826185254+0xc3>
400d2be9:	02b6b7        	bgeu	a6, a11, 400d2bef <_ZN4core7unicode9printable5check17h41a931e8e4bbd5c3E.llvm.5870707130826185254+0x37>
400d2bec:	0025c6        	j	400d2c87 <_ZN4core7unicode9printable5check17h41a931e8e4bbd5c3E.llvm.5870707130826185254+0xcf>
400d2bef:	f5aa      	add.n	a15, a5, a10
400d2bf1:	afea      	add.n	a10, a15, a14
400d2bf3:	121fa7        	beq	a15, a10, 400d2c09 <_ZN4core7unicode9printable5check17h41a931e8e4bbd5c3E.llvm.5870707130826185254+0x51>
400d2bf6:	10e2c0        	and	a14, a2, a12
400d2bf9:	4f1b      	addi.n	a4, a15, 1
400d2bfb:	000f82        	l8ui	a8, a15, 0
400d2bfe:	04fd      	mov.n	a15, a4
400d2c00:	ef98e7        	bne	a8, a14, 400d2bf3 <_ZN4core7unicode9printable5check17h41a931e8e4bbd5c3E.llvm.5870707130826185254+0x3b>
400d2c03:	001686        	j	400d2c61 <_ZN4core7unicode9printable5check17h41a931e8e4bbd5c3E.llvm.5870707130826185254+0xa9>
400d2c06:	043df7        	bltu	a13, a15, 400d2c0e <_ZN4core7unicode9printable5check17h41a931e8e4bbd5c3E.llvm.5870707130826185254+0x56>
400d2c09:	0bad      	mov.n	a10, a11
400d2c0b:	c79397        	bne	a3, a9, 400d2bd6 <_ZN4core7unicode9printable5check17h41a931e8e4bbd5c3E.llvm.5870707130826185254+0x1e>
400d2c0e:	c1a8      	l32i.n	a10, a1, 48
400d2c10:	01f8      	l32i.n	a15, a1, 0
400d2c12:	0f9d      	mov.n	a9, a15
400d2c14:	044a16        	beqz	a10, 400d2c5c <_ZN4core7unicode9printable5check17h41a931e8e4bbd5c3E.llvm.5870707130826185254+0xa4>
400d2c17:	a7aa      	add.n	a10, a7, a10
400d2c19:	f50691        	l32r	a9, 400d0034 <_stext+0x14>
400d2c1c:	10b290        	and	a11, a2, a9
400d2c1f:	190c      	movi.n	a9, 1
400d2c21:	d71b      	addi.n	a13, a7, 1
400d2c23:	0007c2        	l8ui	a12, a7, 0
400d2c26:	018c80        	slli	a8, a12, 24
400d2c29:	31e880        	srai	a14, a8, 24
400d2c2c:	00ae96        	bltz	a14, 400d2c3a <_ZN4core7unicode9printable5check17h41a931e8e4bbd5c3E.llvm.5870707130826185254+0x82>
400d2c2f:	0d7d      	mov.n	a7, a13
400d2c31:	c0bbc0        	sub	a11, a11, a12
400d2c34:	01cbd6        	bgez	a11, 400d2c54 <_ZN4core7unicode9printable5check17h41a931e8e4bbd5c3E.llvm.5870707130826185254+0x9c>
400d2c37:	000846        	j	400d2c5c <_ZN4core7unicode9printable5check17h41a931e8e4bbd5c3E.llvm.5870707130826185254+0xa4>
400d2c3a:	2c1da7        	beq	a13, a10, 400d2c6a <_ZN4core7unicode9printable5check17h41a931e8e4bbd5c3E.llvm.5870707130826185254+0xb2>
400d2c3d:	7fa082        	movi	a8, 127
400d2c40:	108e80        	and	a8, a14, a8
400d2c43:	118880        	slli	a8, a8, 8
400d2c46:	0107c2        	l8ui	a12, a7, 1
400d2c49:	20c8c0        	or	a12, a8, a12
400d2c4c:	772b      	addi.n	a7, a7, 2
400d2c4e:	c0bbc0        	sub	a11, a11, a12
400d2c51:	007b96        	bltz	a11, 400d2c5c <_ZN4core7unicode9printable5check17h41a931e8e4bbd5c3E.llvm.5870707130826185254+0xa4>
400d2c54:	180c      	movi.n	a8, 1
400d2c56:	309980        	xor	a9, a9, a8
400d2c59:	c497a7        	bne	a7, a10, 400d2c21 <_ZN4core7unicode9printable5check17h41a931e8e4bbd5c3E.llvm.5870707130826185254+0x69>
400d2c5c:	1029f0        	and	a2, a9, a15
400d2c5f:	f01d      	retw.n
400d2c61:	090c      	movi.n	a9, 0
400d2c63:	01f8      	l32i.n	a15, a1, 0
400d2c65:	1029f0        	and	a2, a9, a15
400d2c68:	f01d      	retw.n
400d2c6a:	f624a1        	l32r	a10, 400d04fc <_stext+0x4dc>
400d2c6d:	bb2c      	movi.n	a11, 43
400d2c6f:	f624c1        	l32r	a12, 400d0500 <_stext+0x4e0>
400d2c72:	f4f381        	l32r	a8, 400d0040 <_stext+0x20>
400d2c75:	0008e0        	callx8	a8
400d2c78:	0041f0        	break	1, 15
400d2c7b:	f61ec1        	l32r	a12, 400d04f4 <_stext+0x4d4>
400d2c7e:	f61e81        	l32r	a8, 400d04f8 <_stext+0x4d8>
400d2c81:	0008e0        	callx8	a8
400d2c84:	0041f0        	break	1, 15
400d2c87:	f61bc1        	l32r	a12, 400d04f4 <_stext+0x4d4>
400d2c8a:	f5e581        	l32r	a8, 400d0420 <_stext+0x400>
400d2c8d:	0bad      	mov.n	a10, a11
400d2c8f:	06bd      	mov.n	a11, a6
400d2c91:	0008e0        	callx8	a8
400d2c94:	0041f0        	break	1, 15
	...

400d2c98 <core::unicode::printable::is_printable>:
400d2c98:	006136        	entry	a1, 48
400d2c9b:	170c      	movi.n	a7, 1
400d2c9d:	06c2f6        	bgeui	a2, 32, 400d2ca7 <core::unicode::printable::is_printable+0xf>
400d2ca0:	0a0c      	movi.n	a10, 0
400d2ca2:	102a70        	and	a2, a10, a7
400d2ca5:	f01d      	retw.n
400d2ca7:	7fa082        	movi	a8, 127
400d2caa:	07ad      	mov.n	a10, a7
400d2cac:	3c3287        	bltu	a2, a8, 400d2cec <core::unicode::printable::is_printable+0x54>
400d2caf:	f4f181        	l32r	a8, 400d0074 <_stext+0x54>
400d2cb2:	15b287        	bgeu	a2, a8, 400d2ccb <core::unicode::printable::is_printable+0x33>
400d2cb5:	2fa182        	movi	a8, 0x12f
400d2cb8:	0189      	s32i.n	a8, a1, 0
400d2cba:	f623b1        	l32r	a11, 400d0548 <_stext+0x528>
400d2cbd:	8c2c      	movi.n	a12, 40
400d2cbf:	f623d1        	l32r	a13, 400d054c <_stext+0x52c>
400d2cc2:	20a1e2        	movi	a14, 0x120
400d2cc5:	f622f1        	l32r	a15, 400d0550 <_stext+0x530>
400d2cc8:	000606        	j	400d2ce4 <core::unicode::printable::is_printable+0x4c>
400d2ccb:	f60e81        	l32r	a8, 400d0504 <_stext+0x4e4>
400d2cce:	1fb287        	bgeu	a2, a8, 400d2cf1 <core::unicode::printable::is_printable+0x59>
400d2cd1:	b6a182        	movi	a8, 0x1b6
400d2cd4:	0189      	s32i.n	a8, a1, 0
400d2cd6:	f618b1        	l32r	a11, 400d0538 <_stext+0x518>
400d2cd9:	ac2c      	movi.n	a12, 42
400d2cdb:	f618d1        	l32r	a13, 400d053c <_stext+0x51c>
400d2cde:	c0a0e2        	movi	a14, 192
400d2ce1:	f617f1        	l32r	a15, 400d0540 <_stext+0x520>
400d2ce4:	f61881        	l32r	a8, 400d0544 <_stext+0x524>
400d2ce7:	02ad      	mov.n	a10, a2
400d2ce9:	0008e0        	callx8	a8
400d2cec:	102a70        	and	a2, a10, a7
400d2cef:	f01d      	retw.n
400d2cf1:	090c      	movi.n	a9, 0
400d2cf3:	180c      	movi.n	a8, 1
400d2cf5:	f604b1        	l32r	a11, 400d0508 <_stext+0x4e8>
400d2cf8:	08ad      	mov.n	a10, a8
400d2cfa:	0132b7        	bltu	a2, a11, 400d2cff <core::unicode::printable::is_printable+0x67>
400d2cfd:	09ad      	mov.n	a10, a9
400d2cff:	f603b1        	l32r	a11, 400d050c <_stext+0x4ec>
400d2d02:	c2ba      	add.n	a12, a2, a11
400d2d04:	6d0c      	movi.n	a13, 6
400d2d06:	08bd      	mov.n	a11, a8
400d2d08:	013dc7        	bltu	a13, a12, 400d2d0d <core::unicode::printable::is_printable+0x75>
400d2d0b:	09bd      	mov.n	a11, a9
400d2d0d:	f600c1        	l32r	a12, 400d0510 <_stext+0x4f0>
400d2d10:	10d2c0        	and	a13, a2, a12
400d2d13:	f600e1        	l32r	a14, 400d0514 <_stext+0x4f4>
400d2d16:	08cd      	mov.n	a12, a8
400d2d18:	019de7        	bne	a13, a14, 400d2d1d <core::unicode::printable::is_printable+0x85>
400d2d1b:	09cd      	mov.n	a12, a9
400d2d1d:	10bcb0        	and	a11, a12, a11
400d2d20:	f5fec1        	l32r	a12, 400d0518 <_stext+0x4f8>
400d2d23:	10d2c0        	and	a13, a2, a12
400d2d26:	f5fde1        	l32r	a14, 400d051c <_stext+0x4fc>
400d2d29:	08cd      	mov.n	a12, a8
400d2d2b:	019de7        	bne	a13, a14, 400d2d30 <core::unicode::printable::is_printable+0x98>
400d2d2e:	09cd      	mov.n	a12, a9
400d2d30:	10bcb0        	and	a11, a12, a11
400d2d33:	f5fbc1        	l32r	a12, 400d0520 <_stext+0x500>
400d2d36:	d2ca      	add.n	a13, a2, a12
400d2d38:	2e7c      	movi.n	a14, -14
400d2d3a:	08cd      	mov.n	a12, a8
400d2d3c:	013de7        	bltu	a13, a14, 400d2d41 <core::unicode::printable::is_printable+0xa9>
400d2d3f:	09cd      	mov.n	a12, a9
400d2d41:	10bbc0        	and	a11, a11, a12
400d2d44:	f5f8c1        	l32r	a12, 400d0524 <_stext+0x504>
400d2d47:	d2ca      	add.n	a13, a2, a12
400d2d49:	f5f7e1        	l32r	a14, 400d0528 <_stext+0x508>
400d2d4c:	08cd      	mov.n	a12, a8
400d2d4e:	013de7        	bltu	a13, a14, 400d2d53 <core::unicode::printable::is_printable+0xbb>
400d2d51:	09cd      	mov.n	a12, a9
400d2d53:	10bbc0        	and	a11, a11, a12
400d2d56:	f5f5c1        	l32r	a12, 400d052c <_stext+0x50c>
400d2d59:	d2ca      	add.n	a13, a2, a12
400d2d5b:	1eaae2        	movi	a14, 0xfffffa1e
400d2d5e:	08cd      	mov.n	a12, a8
400d2d60:	013de7        	bltu	a13, a14, 400d2d65 <core::unicode::printable::is_printable+0xcd>
400d2d63:	09cd      	mov.n	a12, a9
400d2d65:	10bbc0        	and	a11, a11, a12
400d2d68:	f5f2c1        	l32r	a12, 400d0530 <_stext+0x510>
400d2d6b:	c2ca      	add.n	a12, a2, a12
400d2d6d:	f5f1d1        	l32r	a13, 400d0534 <_stext+0x514>
400d2d70:	013cd7        	bltu	a12, a13, 400d2d75 <core::unicode::printable::is_printable+0xdd>
400d2d73:	098d      	mov.n	a8, a9
400d2d75:	108b80        	and	a8, a11, a8
400d2d78:	10aa80        	and	a10, a10, a8
400d2d7b:	102a70        	and	a2, a10, a7
400d2d7e:	f01d      	retw.n

400d2d80 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt>:
400d2d80:	01a136        	entry	a1, 208
400d2d83:	0388      	l32i.n	a8, a3, 0
400d2d85:	061c      	movi.n	a6, 16
400d2d87:	109860        	and	a9, a8, a6
400d2d8a:	150c      	movi.n	a5, 1
400d2d8c:	0ee956        	bnez	a9, 400d2e7e <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0xfe>
400d2d8f:	092c      	movi.n	a9, 32
400d2d91:	108890        	and	a8, a8, a9
400d2d94:	11b856        	bnez	a8, 400d2eb3 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x133>
400d2d97:	0169      	s32i.n	a6, a1, 0
400d2d99:	2139      	s32i.n	a3, a1, 8
400d2d9b:	3159      	s32i.n	a5, a1, 12
400d2d9d:	1129      	s32i.n	a2, a1, 4
400d2d9f:	0228      	l32i.n	a2, a2, 0
400d2da1:	7e2c      	movi.n	a14, 39
400d2da3:	f57f81        	l32r	a8, 400d03a0 <_stext+0x380>
400d2da6:	023827        	bltu	a8, a2, 400d2dac <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x2c>
400d2da9:	005846        	j	400d2f0e <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x18e>
400d2dac:	f57a81        	l32r	a8, 400d0394 <_stext+0x374>
400d2daf:	8189      	s32i.n	a8, a1, 32
400d2db1:	f57c81        	l32r	a8, 400d03a4 <_stext+0x384>
400d2db4:	7189      	s32i.n	a8, a1, 28
400d2db6:	f57c81        	l32r	a8, 400d03a8 <_stext+0x388>
400d2db9:	6189      	s32i.n	a8, a1, 24
400d2dbb:	f57881        	l32r	a8, 400d039c <_stext+0x37c>
400d2dbe:	5189      	s32i.n	a8, a1, 20
400d2dc0:	181c      	movi.n	a8, 17
400d2dc2:	4189      	s32i.n	a8, a1, 16
400d2dc4:	f57371        	l32r	a7, 400d0390 <_stext+0x370>
400d2dc7:	64a042        	movi	a4, 100
400d2dca:	f49a61        	l32r	a6, 400d0034 <_stext+0x14>
400d2dcd:	f56d51        	l32r	a5, 400d0384 <_stext+0x364>
400d2dd0:	029d      	mov.n	a9, a2
400d2dd2:	fcce82        	addi	a8, a14, -4
400d2dd5:	24c132        	addi	a3, a1, 36
400d2dd8:	a38a      	add.n	a10, a3, a8
400d2dda:	81b8      	l32i.n	a11, a1, 32
400d2ddc:	a229b0        	muluh	a2, a9, a11
400d2ddf:	412d20        	srli	a2, a2, 13
400d2de2:	71b8      	l32i.n	a11, a1, 28
400d2de4:	82b2b0        	mull	a11, a2, a11
400d2de7:	c0b9b0        	sub	a11, a9, a11
400d2dea:	61c8      	l32i.n	a12, a1, 24
400d2dec:	10cbc0        	and	a12, a11, a12
400d2def:	41c2c0        	srli	a12, a12, 2
400d2df2:	51d8      	l32i.n	a13, a1, 20
400d2df4:	82ccd0        	mull	a12, a12, a13
400d2df7:	41d8      	l32i.n	a13, a1, 16
400d2df9:	400d00        	ssr	a13
400d2dfc:	91c0c0        	srl	a12, a12
400d2dff:	90dc70        	addx2	a13, a12, a7
400d2e02:	010df2        	l8ui	a15, a13, 1
400d2e05:	014af2        	s8i	a15, a10, 1
400d2e08:	000dd2        	l8ui	a13, a13, 0
400d2e0b:	004ad2        	s8i	a13, a10, 0
400d2e0e:	82ac40        	mull	a10, a12, a4
400d2e11:	c0aba0        	sub	a10, a11, a10
400d2e14:	10aa60        	and	a10, a10, a6
400d2e17:	90aa70        	addx2	a10, a10, a7
400d2e1a:	010ab2        	l8ui	a11, a10, 1
400d2e1d:	ce3a      	add.n	a12, a14, a3
400d2e1f:	dc0b      	addi.n	a13, a12, -1
400d2e21:	004db2        	s8i	a11, a13, 0
400d2e24:	000aa2        	l8ui	a10, a10, 0
400d2e27:	feccb2        	addi	a11, a12, -2
400d2e2a:	004ba2        	s8i	a10, a11, 0
400d2e2d:	08ed      	mov.n	a14, a8
400d2e2f:	9d3597        	bltu	a5, a9, 400d2dd0 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x50>
400d2e32:	63a092        	movi	a9, 99
400d2e35:	023927        	bltu	a9, a2, 400d2e3b <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0xbb>
400d2e38:	003746        	j	400d2f19 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x199>
400d2e3b:	fec882        	addi	a8, a8, -2
400d2e3e:	24c192        	addi	a9, a1, 36
400d2e41:	a98a      	add.n	a10, a9, a8
400d2e43:	f55991        	l32r	a9, 400d03a8 <_stext+0x388>
400d2e46:	109290        	and	a9, a2, a9
400d2e49:	419290        	srli	a9, a9, 2
400d2e4c:	f554b1        	l32r	a11, 400d039c <_stext+0x37c>
400d2e4f:	8299b0        	mull	a9, a9, a11
400d2e52:	1b1c      	movi.n	a11, 17
400d2e54:	400b00        	ssr	a11
400d2e57:	919090        	srl	a9, a9
400d2e5a:	64a0b2        	movi	a11, 100
400d2e5d:	82b9b0        	mull	a11, a9, a11
400d2e60:	c0b2b0        	sub	a11, a2, a11
400d2e63:	f474c1        	l32r	a12, 400d0034 <_stext+0x14>
400d2e66:	10bbc0        	and	a11, a11, a12
400d2e69:	f549c1        	l32r	a12, 400d0390 <_stext+0x370>
400d2e6c:	90bbc0        	addx2	a11, a11, a12
400d2e6f:	010bc2        	l8ui	a12, a11, 1
400d2e72:	014ac2        	s8i	a12, a10, 1
400d2e75:	000bb2        	l8ui	a11, a11, 0
400d2e78:	004ab2        	s8i	a11, a10, 0
400d2e7b:	002706        	j	400d2f1b <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x19b>
400d2e7e:	80a0a2        	movi	a10, 128
400d2e81:	24c182        	addi	a8, a1, 36
400d2e84:	88aa      	add.n	a8, a8, a10
400d2e86:	0278      	l32i.n	a7, a2, 0
400d2e88:	f90c      	movi.n	a9, 15
400d2e8a:	7c5c      	movi.n	a12, 87
400d2e8c:	0d3c      	movi.n	a13, 48
400d2e8e:	ae0c      	movi.n	a14, 10
400d2e90:	000386        	j	400d2ea2 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x122>
400d2e93:	a7aa      	add.n	a10, a7, a10
400d2e95:	880b      	addi.n	a8, a8, -1
400d2e97:	0048a2        	s8i	a10, a8, 0
400d2e9a:	ab0b      	addi.n	a10, a11, -1
400d2e9c:	4174f0        	srli	a7, a15, 4
400d2e9f:	45b9f7        	bgeu	a9, a15, 400d2ee8 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x168>
400d2ea2:	0abd      	mov.n	a11, a10
400d2ea4:	07fd      	mov.n	a15, a7
400d2ea6:	10af90        	and	a10, a15, a9
400d2ea9:	0d7d      	mov.n	a7, a13
400d2eab:	e43ae7        	bltu	a10, a14, 400d2e93 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x113>
400d2eae:	0c7d      	mov.n	a7, a12
400d2eb0:	fff7c6        	j	400d2e93 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x113>
400d2eb3:	80a0a2        	movi	a10, 128
400d2eb6:	24c182        	addi	a8, a1, 36
400d2eb9:	88aa      	add.n	a8, a8, a10
400d2ebb:	0278      	l32i.n	a7, a2, 0
400d2ebd:	f90c      	movi.n	a9, 15
400d2ebf:	7c3c      	movi.n	a12, 55
400d2ec1:	0d3c      	movi.n	a13, 48
400d2ec3:	ae0c      	movi.n	a14, 10
400d2ec5:	000386        	j	400d2ed7 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x157>
400d2ec8:	a7aa      	add.n	a10, a7, a10
400d2eca:	880b      	addi.n	a8, a8, -1
400d2ecc:	0048a2        	s8i	a10, a8, 0
400d2ecf:	ab0b      	addi.n	a10, a11, -1
400d2ed1:	4174f0        	srli	a7, a15, 4
400d2ed4:	10b9f7        	bgeu	a9, a15, 400d2ee8 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x168>
400d2ed7:	0abd      	mov.n	a11, a10
400d2ed9:	07fd      	mov.n	a15, a7
400d2edb:	10af90        	and	a10, a15, a9
400d2ede:	0d7d      	mov.n	a7, a13
400d2ee0:	e43ae7        	bltu	a10, a14, 400d2ec8 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x148>
400d2ee3:	0c7d      	mov.n	a7, a12
400d2ee5:	fff7c6        	j	400d2ec8 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x148>
400d2ee8:	81a082        	movi	a8, 129
400d2eeb:	023a87        	bltu	a10, a8, 400d2ef1 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x171>
400d2eee:	00a006        	j	400d3172 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x3f2>
400d2ef1:	24c192        	addi	a9, a1, 36
400d2ef4:	e9aa      	add.n	a14, a9, a10
400d2ef6:	c0f8b0        	sub	a15, a8, a11
400d2ef9:	1b0c      	movi.n	a11, 1
400d2efb:	f542c1        	l32r	a12, 400d0404 <_stext+0x3e4>
400d2efe:	2d0c      	movi.n	a13, 2
400d2f00:	f54081        	l32r	a8, 400d0400 <_stext+0x3e0>
400d2f03:	03ad      	mov.n	a10, a3
400d2f05:	0008e0        	callx8	a8
400d2f08:	05da16        	beqz	a10, 400d2f69 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x1e9>
400d2f0b:	008686        	j	400d3129 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x3a9>
400d2f0e:	0e8d      	mov.n	a8, a14
400d2f10:	63a092        	movi	a9, 99
400d2f13:	02b927        	bgeu	a9, a2, 400d2f19 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x199>
400d2f16:	ffc846        	j	400d2e3b <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0xbb>
400d2f19:	029d      	mov.n	a9, a2
400d2f1b:	3158      	l32i.n	a5, a1, 12
400d2f1d:	2138      	l32i.n	a3, a1, 8
400d2f1f:	1128      	l32i.n	a2, a1, 4
400d2f21:	0168      	l32i.n	a6, a1, 0
400d2f23:	0c99f6        	bgeui	a9, 10, 400d2f33 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x1b3>
400d2f26:	880b      	addi.n	a8, a8, -1
400d2f28:	24c1a2        	addi	a10, a1, 36
400d2f2b:	aa8a      	add.n	a10, a10, a8
400d2f2d:	30c992        	addi	a9, a9, 48
400d2f30:	000586        	j	400d2f4a <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x1ca>
400d2f33:	fec882        	addi	a8, a8, -2
400d2f36:	24c1a2        	addi	a10, a1, 36
400d2f39:	aa8a      	add.n	a10, a10, a8
400d2f3b:	f515b1        	l32r	a11, 400d0390 <_stext+0x370>
400d2f3e:	9099b0        	addx2	a9, a9, a11
400d2f41:	0109b2        	l8ui	a11, a9, 1
400d2f44:	014ab2        	s8i	a11, a10, 1
400d2f47:	000992        	l8ui	a9, a9, 0
400d2f4a:	004a92        	s8i	a9, a10, 0
400d2f4d:	24c192        	addi	a9, a1, 36
400d2f50:	e98a      	add.n	a14, a9, a8
400d2f52:	792c      	movi.n	a9, 39
400d2f54:	c0f980        	sub	a15, a9, a8
400d2f57:	1b0c      	movi.n	a11, 1
400d2f59:	f547c1        	l32r	a12, 400d0478 <_stext+0x458>
400d2f5c:	0d0c      	movi.n	a13, 0
400d2f5e:	f52881        	l32r	a8, 400d0400 <_stext+0x3e0>
400d2f61:	03ad      	mov.n	a10, a3
400d2f63:	0008e0        	callx8	a8
400d2f66:	1bfa56        	bnez	a10, 400d3129 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x3a9>
400d2f69:	73b8      	l32i.n	a11, a3, 28
400d2f6b:	63a8      	l32i.n	a10, a3, 24
400d2f6d:	070c      	movi.n	a7, 0
400d2f6f:	e179      	s32i.n	a7, a1, 56
400d2f71:	f57881        	l32r	a8, 400d0554 <_stext+0x534>
400d2f74:	d189      	s32i.n	a8, a1, 52
400d2f76:	b179      	s32i.n	a7, a1, 44
400d2f78:	a159      	s32i.n	a5, a1, 40
400d2f7a:	f57781        	l32r	a8, 400d0558 <_stext+0x538>
400d2f7d:	9189      	s32i.n	a8, a1, 36
400d2f7f:	24c1c2        	addi	a12, a1, 36
400d2f82:	f44181        	l32r	a8, 400d0088 <_stext+0x68>
400d2f85:	0008e0        	callx8	a8
400d2f88:	19da56        	bnez	a10, 400d3129 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x3a9>
400d2f8b:	0388      	l32i.n	a8, a3, 0
400d2f8d:	109860        	and	a9, a8, a6
400d2f90:	10b956        	bnez	a9, 400d309f <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x31f>
400d2f93:	092c      	movi.n	a9, 32
400d2f95:	108890        	and	a8, a8, a9
400d2f98:	138856        	bnez	a8, 400d30d4 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x354>
400d2f9b:	2139      	s32i.n	a3, a1, 8
400d2f9d:	3159      	s32i.n	a5, a1, 12
400d2f9f:	1298      	l32i.n	a9, a2, 4
400d2fa1:	7e2c      	movi.n	a14, 39
400d2fa3:	f4ff81        	l32r	a8, 400d03a0 <_stext+0x380>
400d2fa6:	023897        	bltu	a8, a9, 400d2fac <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x22c>
400d2fa9:	006086        	j	400d312f <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x3af>
400d2fac:	f4fa81        	l32r	a8, 400d0394 <_stext+0x374>
400d2faf:	8189      	s32i.n	a8, a1, 32
400d2fb1:	f4fc81        	l32r	a8, 400d03a4 <_stext+0x384>
400d2fb4:	7189      	s32i.n	a8, a1, 28
400d2fb6:	f4fc81        	l32r	a8, 400d03a8 <_stext+0x388>
400d2fb9:	6189      	s32i.n	a8, a1, 24
400d2fbb:	f4f881        	l32r	a8, 400d039c <_stext+0x37c>
400d2fbe:	5189      	s32i.n	a8, a1, 20
400d2fc0:	181c      	movi.n	a8, 17
400d2fc2:	4189      	s32i.n	a8, a1, 16
400d2fc4:	f4f371        	l32r	a7, 400d0390 <_stext+0x370>
400d2fc7:	64a052        	movi	a5, 100
400d2fca:	f41a61        	l32r	a6, 400d0034 <_stext+0x14>
400d2fcd:	f4ed41        	l32r	a4, 400d0384 <_stext+0x364>
400d2fd0:	092d      	mov.n	a2, a9
400d2fd2:	fcce82        	addi	a8, a14, -4
400d2fd5:	24c132        	addi	a3, a1, 36
400d2fd8:	a38a      	add.n	a10, a3, a8
400d2fda:	8198      	l32i.n	a9, a1, 32
400d2fdc:	a29290        	muluh	a9, a2, a9
400d2fdf:	419d90        	srli	a9, a9, 13
400d2fe2:	71b8      	l32i.n	a11, a1, 28
400d2fe4:	82b9b0        	mull	a11, a9, a11
400d2fe7:	c0b2b0        	sub	a11, a2, a11
400d2fea:	61c8      	l32i.n	a12, a1, 24
400d2fec:	10cbc0        	and	a12, a11, a12
400d2fef:	41c2c0        	srli	a12, a12, 2
400d2ff2:	51d8      	l32i.n	a13, a1, 20
400d2ff4:	82ccd0        	mull	a12, a12, a13
400d2ff7:	41d8      	l32i.n	a13, a1, 16
400d2ff9:	400d00        	ssr	a13
400d2ffc:	91c0c0        	srl	a12, a12
400d2fff:	90dc70        	addx2	a13, a12, a7
400d3002:	010df2        	l8ui	a15, a13, 1
400d3005:	014af2        	s8i	a15, a10, 1
400d3008:	000dd2        	l8ui	a13, a13, 0
400d300b:	004ad2        	s8i	a13, a10, 0
400d300e:	82ac50        	mull	a10, a12, a5
400d3011:	c0aba0        	sub	a10, a11, a10
400d3014:	10aa60        	and	a10, a10, a6
400d3017:	90aa70        	addx2	a10, a10, a7
400d301a:	010ab2        	l8ui	a11, a10, 1
400d301d:	ce3a      	add.n	a12, a14, a3
400d301f:	dc0b      	addi.n	a13, a12, -1
400d3021:	004db2        	s8i	a11, a13, 0
400d3024:	000aa2        	l8ui	a10, a10, 0
400d3027:	feccb2        	addi	a11, a12, -2
400d302a:	004ba2        	s8i	a10, a11, 0
400d302d:	08ed      	mov.n	a14, a8
400d302f:	9d3427        	bltu	a4, a2, 400d2fd0 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x250>
400d3032:	63a0a2        	movi	a10, 99
400d3035:	023a97        	bltu	a10, a9, 400d303b <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x2bb>
400d3038:	003f86        	j	400d313a <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x3ba>
400d303b:	fec882        	addi	a8, a8, -2
400d303e:	24c1a2        	addi	a10, a1, 36
400d3041:	ba8a      	add.n	a11, a10, a8
400d3043:	f4d9a1        	l32r	a10, 400d03a8 <_stext+0x388>
400d3046:	10a9a0        	and	a10, a9, a10
400d3049:	41a2a0        	srli	a10, a10, 2
400d304c:	f4d4c1        	l32r	a12, 400d039c <_stext+0x37c>
400d304f:	82aac0        	mull	a10, a10, a12
400d3052:	1c1c      	movi.n	a12, 17
400d3054:	400c00        	ssr	a12
400d3057:	91d0a0        	srl	a13, a10
400d305a:	64a0c2        	movi	a12, 100
400d305d:	82cdc0        	mull	a12, a13, a12
400d3060:	c099c0        	sub	a9, a9, a12
400d3063:	f3f4c1        	l32r	a12, 400d0034 <_stext+0x14>
400d3066:	1099c0        	and	a9, a9, a12
400d3069:	f4c9c1        	l32r	a12, 400d0390 <_stext+0x370>
400d306c:	9099c0        	addx2	a9, a9, a12
400d306f:	0109c2        	l8ui	a12, a9, 1
400d3072:	014bc2        	s8i	a12, a11, 1
400d3075:	000992        	l8ui	a9, a9, 0
400d3078:	004b92        	s8i	a9, a11, 0
400d307b:	3158      	l32i.n	a5, a1, 12
400d307d:	21a8      	l32i.n	a10, a1, 8
400d307f:	029df6        	bgeui	a13, 10, 400d3085 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x305>
400d3082:	003006        	j	400d3146 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x3c6>
400d3085:	fec882        	addi	a8, a8, -2
400d3088:	24c192        	addi	a9, a1, 36
400d308b:	998a      	add.n	a9, a9, a8
400d308d:	f4c0b1        	l32r	a11, 400d0390 <_stext+0x370>
400d3090:	90cdb0        	addx2	a12, a13, a11
400d3093:	010cb2        	l8ui	a11, a12, 1
400d3096:	0149b2        	s8i	a11, a9, 1
400d3099:	000cb2        	l8ui	a11, a12, 0
400d309c:	002c06        	j	400d3150 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x3d0>
400d309f:	80a0a2        	movi	a10, 128
400d30a2:	24c182        	addi	a8, a1, 36
400d30a5:	88aa      	add.n	a8, a8, a10
400d30a7:	1268      	l32i.n	a6, a2, 4
400d30a9:	f90c      	movi.n	a9, 15
400d30ab:	7c5c      	movi.n	a12, 87
400d30ad:	0d3c      	movi.n	a13, 48
400d30af:	ae0c      	movi.n	a14, 10
400d30b1:	000386        	j	400d30c3 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x343>
400d30b4:	a6aa      	add.n	a10, a6, a10
400d30b6:	880b      	addi.n	a8, a8, -1
400d30b8:	0048a2        	s8i	a10, a8, 0
400d30bb:	ab0b      	addi.n	a10, a11, -1
400d30bd:	4164f0        	srli	a6, a15, 4
400d30c0:	45b9f7        	bgeu	a9, a15, 400d3109 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x389>
400d30c3:	0abd      	mov.n	a11, a10
400d30c5:	06fd      	mov.n	a15, a6
400d30c7:	10af90        	and	a10, a15, a9
400d30ca:	0d6d      	mov.n	a6, a13
400d30cc:	e43ae7        	bltu	a10, a14, 400d30b4 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x334>
400d30cf:	0c6d      	mov.n	a6, a12
400d30d1:	fff7c6        	j	400d30b4 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x334>
400d30d4:	80a0a2        	movi	a10, 128
400d30d7:	24c182        	addi	a8, a1, 36
400d30da:	88aa      	add.n	a8, a8, a10
400d30dc:	1268      	l32i.n	a6, a2, 4
400d30de:	f90c      	movi.n	a9, 15
400d30e0:	7c3c      	movi.n	a12, 55
400d30e2:	0d3c      	movi.n	a13, 48
400d30e4:	ae0c      	movi.n	a14, 10
400d30e6:	000386        	j	400d30f8 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x378>
400d30e9:	a6aa      	add.n	a10, a6, a10
400d30eb:	880b      	addi.n	a8, a8, -1
400d30ed:	0048a2        	s8i	a10, a8, 0
400d30f0:	ab0b      	addi.n	a10, a11, -1
400d30f2:	4164f0        	srli	a6, a15, 4
400d30f5:	10b9f7        	bgeu	a9, a15, 400d3109 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x389>
400d30f8:	0abd      	mov.n	a11, a10
400d30fa:	06fd      	mov.n	a15, a6
400d30fc:	10af90        	and	a10, a15, a9
400d30ff:	0d6d      	mov.n	a6, a13
400d3101:	e43ae7        	bltu	a10, a14, 400d30e9 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x369>
400d3104:	0c6d      	mov.n	a6, a12
400d3106:	fff7c6        	j	400d30e9 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x369>
400d3109:	81a082        	movi	a8, 129
400d310c:	62ba87        	bgeu	a10, a8, 400d3172 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x3f2>
400d310f:	24c192        	addi	a9, a1, 36
400d3112:	e9aa      	add.n	a14, a9, a10
400d3114:	c0f8b0        	sub	a15, a8, a11
400d3117:	1b0c      	movi.n	a11, 1
400d3119:	f4bac1        	l32r	a12, 400d0404 <_stext+0x3e4>
400d311c:	2d0c      	movi.n	a13, 2
400d311e:	f4b881        	l32r	a8, 400d0400 <_stext+0x3e0>
400d3121:	03ad      	mov.n	a10, a3
400d3123:	0008e0        	callx8	a8
400d3126:	001a16        	beqz	a10, 400d312b <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x3ab>
400d3129:	057d      	mov.n	a7, a5
400d312b:	072d      	mov.n	a2, a7
400d312d:	f01d      	retw.n
400d312f:	0e8d      	mov.n	a8, a14
400d3131:	63a0a2        	movi	a10, 99
400d3134:	02ba97        	bgeu	a10, a9, 400d313a <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x3ba>
400d3137:	ffc006        	j	400d303b <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x2bb>
400d313a:	09dd      	mov.n	a13, a9
400d313c:	3158      	l32i.n	a5, a1, 12
400d313e:	21a8      	l32i.n	a10, a1, 8
400d3140:	029db6        	bltui	a13, 10, 400d3146 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x3c6>
400d3143:	ffcf86        	j	400d3085 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x305>
400d3146:	880b      	addi.n	a8, a8, -1
400d3148:	24c192        	addi	a9, a1, 36
400d314b:	998a      	add.n	a9, a9, a8
400d314d:	30cdb2        	addi	a11, a13, 48
400d3150:	0049b2        	s8i	a11, a9, 0
400d3153:	24c192        	addi	a9, a1, 36
400d3156:	e98a      	add.n	a14, a9, a8
400d3158:	792c      	movi.n	a9, 39
400d315a:	c0f980        	sub	a15, a9, a8
400d315d:	1b0c      	movi.n	a11, 1
400d315f:	f4c6c1        	l32r	a12, 400d0478 <_stext+0x458>
400d3162:	070c      	movi.n	a7, 0
400d3164:	f4a781        	l32r	a8, 400d0400 <_stext+0x3e0>
400d3167:	07dd      	mov.n	a13, a7
400d3169:	0008e0        	callx8	a8
400d316c:	fb9a56        	bnez	a10, 400d3129 <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x3a9>
400d316f:	ffee06        	j	400d312b <<core::ops::range::Range<Idx> as core::fmt::Debug>::fmt+0x3ab>
400d3172:	80a0b2        	movi	a11, 128
400d3175:	f4a4c1        	l32r	a12, 400d0408 <_stext+0x3e8>
400d3178:	f4a581        	l32r	a8, 400d040c <_stext+0x3ec>
400d317b:	0008e0        	callx8	a8
400d317e:	0041f0        	break	1, 15
400d3181:	000000        	ill

400d3184 <core::slice::memchr::memchr_general_case>:
400d3184:	004136        	entry	a1, 32
400d3187:	833b      	addi.n	a8, a3, 3
400d3189:	c97c      	movi.n	a9, -4
400d318b:	108890        	and	a8, a8, a9
400d318e:	c08830        	sub	a8, a8, a3
400d3191:	ffa0b2        	movi	a11, 255
400d3194:	028816        	beqz	a8, 400d31c0 <core::slice::memchr::memchr_general_case+0x3c>
400d3197:	04ad      	mov.n	a10, a4
400d3199:	013487        	bltu	a4, a8, 400d319e <core::slice::memchr::memchr_general_case+0x1a>
400d319c:	08ad      	mov.n	a10, a8
400d319e:	01ea16        	beqz	a10, 400d31c0 <core::slice::memchr::memchr_general_case+0x3c>
400d31a1:	090c      	movi.n	a9, 0
400d31a3:	10c2b0        	and	a12, a2, a11
400d31a6:	180c      	movi.n	a8, 1
400d31a8:	03dd      	mov.n	a13, a3
400d31aa:	098a76        	loop	a10, 400d31b7 <core::slice::memchr::memchr_general_case+0x33>
400d31ad:	000de2        	l8ui	a14, a13, 0
400d31b0:	541ec7        	beq	a14, a12, 400d3208 <core::slice::memchr::memchr_general_case+0x84>
400d31b3:	dd1b      	addi.n	a13, a13, 1
400d31b5:	991b      	addi.n	a9, a9, 1
400d31b7:	f8c482        	addi	a8, a4, -8
400d31ba:	07b8a7        	bgeu	a8, a10, 400d31c5 <core::slice::memchr::memchr_general_case+0x41>
400d31bd:	001086        	j	400d3203 <core::slice::memchr::memchr_general_case+0x7f>
400d31c0:	f8c482        	addi	a8, a4, -8
400d31c3:	0a0c      	movi.n	a10, 0
400d31c5:	1092b0        	and	a9, a2, a11
400d31c8:	f4c1c1        	l32r	a12, 400d04cc <_stext+0x4ac>
400d31cb:	8299c0        	mull	a9, a9, a12
400d31ce:	f4e3c1        	l32r	a12, 400d055c <_stext+0x53c>
400d31d1:	fd7c      	movi.n	a13, -1
400d31d3:	f4e3e1        	l32r	a14, 400d0560 <_stext+0x540>
400d31d6:	f3aa      	add.n	a15, a3, a10
400d31d8:	1f78      	l32i.n	a7, a15, 4
400d31da:	307790        	xor	a7, a7, a9
400d31dd:	67ca      	add.n	a6, a7, a12
400d31df:	3077d0        	xor	a7, a7, a13
400d31e2:	107760        	and	a7, a7, a6
400d31e5:	0ff8      	l32i.n	a15, a15, 0
400d31e7:	30ff90        	xor	a15, a15, a9
400d31ea:	6fca      	add.n	a6, a15, a12
400d31ec:	30ffd0        	xor	a15, a15, a13
400d31ef:	10ff60        	and	a15, a15, a6
400d31f2:	20ff70        	or	a15, a15, a7
400d31f5:	10ffe0        	and	a15, a15, a14
400d31f8:	004f56        	bnez	a15, 400d3200 <core::slice::memchr::memchr_general_case+0x7c>
400d31fb:	aa8b      	addi.n	a10, a10, 8
400d31fd:	d5b8a7        	bgeu	a8, a10, 400d31d6 <core::slice::memchr::memchr_general_case+0x52>
400d3200:	3934a7        	bltu	a4, a10, 400d323d <core::slice::memchr::memchr_general_case+0xb9>
400d3203:	079a47        	bne	a10, a4, 400d320e <core::slice::memchr::memchr_general_case+0x8a>
400d3206:	080c      	movi.n	a8, 0
400d3208:	082d      	mov.n	a2, a8
400d320a:	093d      	mov.n	a3, a9
400d320c:	f01d      	retw.n
400d320e:	93aa      	add.n	a9, a3, a10
400d3210:	c0c4a0        	sub	a12, a4, a10
400d3213:	080c      	movi.n	a8, 0
400d3215:	10d2b0        	and	a13, a2, a11
400d3218:	08bd      	mov.n	a11, a8
400d321a:	0020f0        	nop
400d321d:	0020f0        	nop
400d3220:	098c76        	loop	a12, 400d322d <core::slice::memchr::memchr_general_case+0xa9>
400d3223:	0009e2        	l8ui	a14, a9, 0
400d3226:	091ed7        	beq	a14, a13, 400d3233 <core::slice::memchr::memchr_general_case+0xaf>
400d3229:	991b      	addi.n	a9, a9, 1
400d322b:	bb1b      	addi.n	a11, a11, 1
400d322d:	082d      	mov.n	a2, a8
400d322f:	093d      	mov.n	a3, a9
400d3231:	f01d      	retw.n
400d3233:	9baa      	add.n	a9, a11, a10
400d3235:	180c      	movi.n	a8, 1
400d3237:	082d      	mov.n	a2, a8
400d3239:	093d      	mov.n	a3, a9
400d323b:	f01d      	retw.n
400d323d:	f4c9c1        	l32r	a12, 400d0564 <_stext+0x544>
400d3240:	f47381        	l32r	a8, 400d040c <_stext+0x3ec>
400d3243:	04bd      	mov.n	a11, a4
400d3245:	0008e0        	callx8	a8
400d3248:	0041f0        	break	1, 15
	...

400d324c <core::ops::function::FnOnce::call_once>:
400d324c:	004136        	entry	a1, 32
400d324f:	f4c681        	l32r	a8, 400d0568 <_stext+0x548>
400d3252:	02ad      	mov.n	a10, a2
400d3254:	03bd      	mov.n	a11, a3
400d3256:	0008e0        	callx8	a8
400d3259:	0041f0        	break	1, 15

400d325c <core::ops::function::FnOnce::call_once>:
400d325c:	004136        	entry	a1, 32
400d325f:	f4c381        	l32r	a8, 400d056c <_stext+0x54c>
400d3262:	02ad      	mov.n	a10, a2
400d3264:	03bd      	mov.n	a11, a3
400d3266:	0008e0        	callx8	a8
400d3269:	0041f0        	break	1, 15

400d326c <core::ops::function::FnOnce::call_once>:
400d326c:	004136        	entry	a1, 32
400d326f:	f4c081        	l32r	a8, 400d0570 <_stext+0x550>
400d3272:	02ad      	mov.n	a10, a2
400d3274:	03bd      	mov.n	a11, a3
400d3276:	04cd      	mov.n	a12, a4
400d3278:	05dd      	mov.n	a13, a5
400d327a:	0008e0        	callx8	a8
400d327d:	0041f0        	break	1, 15

400d3280 <core::ops::function::FnOnce::call_once>:
400d3280:	004136        	entry	a1, 32
400d3283:	f4bc81        	l32r	a8, 400d0574 <_stext+0x554>
400d3286:	02ad      	mov.n	a10, a2
400d3288:	03bd      	mov.n	a11, a3
400d328a:	0008e0        	callx8	a8
400d328d:	0041f0        	break	1, 15

400d3290 <core::intrinsics::const_eval_select>:
400d3290:	004136        	entry	a1, 32
400d3293:	32d8      	l32i.n	a13, a2, 12
400d3295:	22c8      	l32i.n	a12, a2, 8
400d3297:	12b8      	l32i.n	a11, a2, 4
400d3299:	02a8      	l32i.n	a10, a2, 0
400d329b:	f4b781        	l32r	a8, 400d0578 <_stext+0x558>
400d329e:	0008e0        	callx8	a8
400d32a1:	0041f0        	break	1, 15

400d32a4 <core::intrinsics::const_eval_select>:
400d32a4:	004136        	entry	a1, 32
400d32a7:	f4b581        	l32r	a8, 400d057c <_stext+0x55c>
400d32aa:	02ad      	mov.n	a10, a2
400d32ac:	03bd      	mov.n	a11, a3
400d32ae:	0008e0        	callx8	a8
400d32b1:	0041f0        	break	1, 15

400d32b4 <core::intrinsics::const_eval_select>:
400d32b4:	004136        	entry	a1, 32
400d32b7:	f4b281        	l32r	a8, 400d0580 <_stext+0x560>
400d32ba:	02ad      	mov.n	a10, a2
400d32bc:	03bd      	mov.n	a11, a3
400d32be:	0008e0        	callx8	a8
400d32c1:	0041f0        	break	1, 15

400d32c4 <core::intrinsics::const_eval_select>:
400d32c4:	004136        	entry	a1, 32
400d32c7:	f4af81        	l32r	a8, 400d0584 <_stext+0x564>
400d32ca:	02ad      	mov.n	a10, a2
400d32cc:	03bd      	mov.n	a11, a3
400d32ce:	0008e0        	callx8	a8
400d32d1:	0041f0        	break	1, 15

400d32d4 <core::slice::index::slice_start_index_len_fail>:
400d32d4:	004136        	entry	a1, 32
400d32d7:	f4ac81        	l32r	a8, 400d0588 <_stext+0x568>
400d32da:	02ad      	mov.n	a10, a2
400d32dc:	03bd      	mov.n	a11, a3
400d32de:	0008e0        	callx8	a8
400d32e1:	0041f0        	break	1, 15

400d32e4 <core::slice::index::slice_start_index_len_fail_rt>:
400d32e4:	00a136        	entry	a1, 80
400d32e7:	1139      	s32i.n	a3, a1, 4
400d32e9:	0129      	s32i.n	a2, a1, 0
400d32eb:	280c      	movi.n	a8, 2
400d32ed:	7189      	s32i.n	a8, a1, 28
400d32ef:	20c192        	addi	a9, a1, 32
400d32f2:	6199      	s32i.n	a9, a1, 24
400d32f4:	090c      	movi.n	a9, 0
400d32f6:	4199      	s32i.n	a9, a1, 16
400d32f8:	3189      	s32i.n	a8, a1, 12
400d32fa:	f4a481        	l32r	a8, 400d058c <_stext+0x56c>
400d32fd:	2189      	s32i.n	a8, a1, 8
400d32ff:	f37681        	l32r	a8, 400d00d8 <_stext+0xb8>
400d3302:	b189      	s32i.n	a8, a1, 44
400d3304:	04c192        	addi	a9, a1, 4
400d3307:	a199      	s32i.n	a9, a1, 40
400d3309:	9189      	s32i.n	a8, a1, 36
400d330b:	00c182        	addi	a8, a1, 0
400d330e:	8189      	s32i.n	a8, a1, 32
400d3310:	08c1a2        	addi	a10, a1, 8
400d3313:	f49fb1        	l32r	a11, 400d0590 <_stext+0x570>
400d3316:	f37b81        	l32r	a8, 400d0104 <_stext+0xe4>
400d3319:	0008e0        	callx8	a8
400d331c:	0041f0        	break	1, 15
	...

400d3320 <core::slice::index::slice_end_index_len_fail>:
400d3320:	004136        	entry	a1, 32
400d3323:	f49c81        	l32r	a8, 400d0594 <_stext+0x574>
400d3326:	02ad      	mov.n	a10, a2
400d3328:	03bd      	mov.n	a11, a3
400d332a:	0008e0        	callx8	a8
400d332d:	0041f0        	break	1, 15

400d3330 <core::slice::index::slice_end_index_len_fail_rt>:
400d3330:	00a136        	entry	a1, 80
400d3333:	1139      	s32i.n	a3, a1, 4
400d3335:	0129      	s32i.n	a2, a1, 0
400d3337:	280c      	movi.n	a8, 2
400d3339:	7189      	s32i.n	a8, a1, 28
400d333b:	20c192        	addi	a9, a1, 32
400d333e:	6199      	s32i.n	a9, a1, 24
400d3340:	090c      	movi.n	a9, 0
400d3342:	4199      	s32i.n	a9, a1, 16
400d3344:	3189      	s32i.n	a8, a1, 12
400d3346:	f49481        	l32r	a8, 400d0598 <_stext+0x578>
400d3349:	2189      	s32i.n	a8, a1, 8
400d334b:	f36381        	l32r	a8, 400d00d8 <_stext+0xb8>
400d334e:	b189      	s32i.n	a8, a1, 44
400d3350:	04c192        	addi	a9, a1, 4
400d3353:	a199      	s32i.n	a9, a1, 40
400d3355:	9189      	s32i.n	a8, a1, 36
400d3357:	00c182        	addi	a8, a1, 0
400d335a:	8189      	s32i.n	a8, a1, 32
400d335c:	08c1a2        	addi	a10, a1, 8
400d335f:	f48fb1        	l32r	a11, 400d059c <_stext+0x57c>
400d3362:	f36881        	l32r	a8, 400d0104 <_stext+0xe4>
400d3365:	0008e0        	callx8	a8
400d3368:	0041f0        	break	1, 15
	...

400d336c <core::slice::index::slice_index_order_fail>:
400d336c:	004136        	entry	a1, 32
400d336f:	f48c81        	l32r	a8, 400d05a0 <_stext+0x580>
400d3372:	02ad      	mov.n	a10, a2
400d3374:	03bd      	mov.n	a11, a3
400d3376:	0008e0        	callx8	a8
400d3379:	0041f0        	break	1, 15

400d337c <core::slice::index::slice_index_order_fail_rt>:
400d337c:	00a136        	entry	a1, 80
400d337f:	1139      	s32i.n	a3, a1, 4
400d3381:	0129      	s32i.n	a2, a1, 0
400d3383:	280c      	movi.n	a8, 2
400d3385:	7189      	s32i.n	a8, a1, 28
400d3387:	20c192        	addi	a9, a1, 32
400d338a:	6199      	s32i.n	a9, a1, 24
400d338c:	090c      	movi.n	a9, 0
400d338e:	4199      	s32i.n	a9, a1, 16
400d3390:	3189      	s32i.n	a8, a1, 12
400d3392:	f48481        	l32r	a8, 400d05a4 <_stext+0x584>
400d3395:	2189      	s32i.n	a8, a1, 8
400d3397:	f35081        	l32r	a8, 400d00d8 <_stext+0xb8>
400d339a:	b189      	s32i.n	a8, a1, 44
400d339c:	04c192        	addi	a9, a1, 4
400d339f:	a199      	s32i.n	a9, a1, 40
400d33a1:	9189      	s32i.n	a8, a1, 36
400d33a3:	00c182        	addi	a8, a1, 0
400d33a6:	8189      	s32i.n	a8, a1, 32
400d33a8:	08c1a2        	addi	a10, a1, 8
400d33ab:	f47fb1        	l32r	a11, 400d05a8 <_stext+0x588>
400d33ae:	f35581        	l32r	a8, 400d0104 <_stext+0xe4>
400d33b1:	0008e0        	callx8	a8
400d33b4:	0041f0        	break	1, 15
	...

400d33b8 <core::str::slice_error_fail>:
400d33b8:	006136        	entry	a1, 48
400d33bb:	3159      	s32i.n	a5, a1, 12
400d33bd:	2149      	s32i.n	a4, a1, 8
400d33bf:	1139      	s32i.n	a3, a1, 4
400d33c1:	0129      	s32i.n	a2, a1, 0
400d33c3:	00c1a2        	addi	a10, a1, 0
400d33c6:	f47981        	l32r	a8, 400d05ac <_stext+0x58c>
400d33c9:	0008e0        	callx8	a8
400d33cc:	0041f0        	break	1, 15
	...

400d33d0 <core::str::slice_error_fail_rt>:
400d33d0:	012136        	entry	a1, 144
400d33d3:	1159      	s32i.n	a5, a1, 4
400d33d5:	0149      	s32i.n	a4, a1, 0
400d33d7:	01a182        	movi	a8, 0x101
400d33da:	143387        	bltu	a3, a8, 400d33f2 <core::str::slice_error_fail_rt+0x22>
400d33dd:	01d282        	addmi	a8, a2, 0x100
400d33e0:	000882        	l8ui	a8, a8, 0
400d33e3:	239800        	sext	a9, a8, 7
400d33e6:	bfaf82        	movi	a8, -65
400d33e9:	18a897        	bge	a8, a9, 400d3405 <core::str::slice_error_fail_rt+0x35>
400d33ec:	00a182        	movi	a8, 0x100
400d33ef:	000cc6        	j	400d3426 <core::str::slice_error_fail_rt+0x56>
400d33f2:	080c      	movi.n	a8, 0
400d33f4:	3139      	s32i.n	a3, a1, 12
400d33f6:	2129      	s32i.n	a2, a1, 8
400d33f8:	f46e91        	l32r	a9, 400d05b0 <_stext+0x590>
400d33fb:	4199      	s32i.n	a9, a1, 16
400d33fd:	5189      	s32i.n	a8, a1, 20
400d33ff:	33b347        	bgeu	a3, a4, 400d3436 <core::str::slice_error_fail_rt+0x66>
400d3402:	002186        	j	400d348c <core::str::slice_error_fail_rt+0xbc>
400d3405:	ff0292        	l8ui	a9, a2, 255
400d3408:	239900        	sext	a9, a9, 7
400d340b:	05a897        	bge	a8, a9, 400d3414 <core::str::slice_error_fail_rt+0x44>
400d340e:	ffa082        	movi	a8, 255
400d3411:	000446        	j	400d3426 <core::str::slice_error_fail_rt+0x56>
400d3414:	fe0292        	l8ui	a9, a2, 254
400d3417:	239900        	sext	a9, a9, 7
400d341a:	05a897        	bge	a8, a9, 400d3423 <core::str::slice_error_fail_rt+0x53>
400d341d:	fea082        	movi	a8, 254
400d3420:	000086        	j	400d3426 <core::str::slice_error_fail_rt+0x56>
400d3423:	fda082        	movi	a8, 253
400d3426:	3189      	s32i.n	a8, a1, 12
400d3428:	2129      	s32i.n	a2, a1, 8
400d342a:	f46281        	l32r	a8, 400d05b4 <_stext+0x594>
400d342d:	4189      	s32i.n	a8, a1, 16
400d342f:	580c      	movi.n	a8, 5
400d3431:	5189      	s32i.n	a8, a1, 20
400d3433:	553347        	bltu	a3, a4, 400d348c <core::str::slice_error_fail_rt+0xbc>
400d3436:	523357        	bltu	a3, a5, 400d348c <core::str::slice_error_fail_rt+0xbc>
400d3439:	023547        	bltu	a5, a4, 400d343f <core::str::slice_error_fail_rt+0x6f>
400d343c:	0025c6        	j	400d34d7 <core::str::slice_error_fail_rt+0x107>
400d343f:	480c      	movi.n	a8, 4
400d3441:	f189      	s32i.n	a8, a1, 60
400d3443:	40c192        	addi	a9, a1, 64
400d3446:	e199      	s32i.n	a9, a1, 56
400d3448:	090c      	movi.n	a9, 0
400d344a:	c199      	s32i.n	a9, a1, 48
400d344c:	b189      	s32i.n	a8, a1, 44
400d344e:	f46281        	l32r	a8, 400d05d8 <_stext+0x5b8>
400d3451:	a189      	s32i.n	a8, a1, 40
400d3453:	f41281        	l32r	a8, 400d049c <_stext+0x47c>
400d3456:	176182        	s32i	a8, a1, 92
400d3459:	10c192        	addi	a9, a1, 16
400d345c:	166192        	s32i	a9, a1, 88
400d345f:	156182        	s32i	a8, a1, 84
400d3462:	08c182        	addi	a8, a1, 8
400d3465:	146182        	s32i	a8, a1, 80
400d3468:	f31c81        	l32r	a8, 400d00d8 <_stext+0xb8>
400d346b:	136182        	s32i	a8, a1, 76
400d346e:	04c192        	addi	a9, a1, 4
400d3471:	126192        	s32i	a9, a1, 72
400d3474:	116182        	s32i	a8, a1, 68
400d3477:	00c182        	addi	a8, a1, 0
400d347a:	106182        	s32i	a8, a1, 64
400d347d:	28c1a2        	addi	a10, a1, 40
400d3480:	f457b1        	l32r	a11, 400d05dc <_stext+0x5bc>
400d3483:	f32081        	l32r	a8, 400d0104 <_stext+0xe4>
400d3486:	0008e0        	callx8	a8
400d3489:	0041f0        	break	1, 15
400d348c:	013347        	bltu	a3, a4, 400d3491 <core::str::slice_error_fail_rt+0xc1>
400d348f:	054d      	mov.n	a4, a5
400d3491:	8149      	s32i.n	a4, a1, 32
400d3493:	380c      	movi.n	a8, 3
400d3495:	f189      	s32i.n	a8, a1, 60
400d3497:	40c192        	addi	a9, a1, 64
400d349a:	e199      	s32i.n	a9, a1, 56
400d349c:	090c      	movi.n	a9, 0
400d349e:	c199      	s32i.n	a9, a1, 48
400d34a0:	b189      	s32i.n	a8, a1, 44
400d34a2:	f44f81        	l32r	a8, 400d05e0 <_stext+0x5c0>
400d34a5:	a189      	s32i.n	a8, a1, 40
400d34a7:	f3fd81        	l32r	a8, 400d049c <_stext+0x47c>
400d34aa:	156182        	s32i	a8, a1, 84
400d34ad:	10c192        	addi	a9, a1, 16
400d34b0:	146192        	s32i	a9, a1, 80
400d34b3:	136182        	s32i	a8, a1, 76
400d34b6:	08c182        	addi	a8, a1, 8
400d34b9:	126182        	s32i	a8, a1, 72
400d34bc:	f30781        	l32r	a8, 400d00d8 <_stext+0xb8>
400d34bf:	116182        	s32i	a8, a1, 68
400d34c2:	20c182        	addi	a8, a1, 32
400d34c5:	106182        	s32i	a8, a1, 64
400d34c8:	28c1a2        	addi	a10, a1, 40
400d34cb:	f446b1        	l32r	a11, 400d05e4 <_stext+0x5c4>
400d34ce:	f30d81        	l32r	a8, 400d0104 <_stext+0xe4>
400d34d1:	0008e0        	callx8	a8
400d34d4:	0041f0        	break	1, 15
400d34d7:	018456        	bnez	a4, 400d34f3 <core::str::slice_error_fail_rt+0x123>
400d34da:	054d      	mov.n	a4, a5
400d34dc:	6149      	s32i.n	a4, a1, 24
400d34de:	03cd      	mov.n	a12, a3
400d34e0:	5ab437        	bgeu	a4, a3, 400d353e <core::str::slice_error_fail_rt+0x16e>
400d34e3:	fdc482        	addi	a8, a4, -3
400d34e6:	0a0c      	movi.n	a10, 0
400d34e8:	1b3487        	bltu	a4, a8, 400d3507 <core::str::slice_error_fail_rt+0x137>
400d34eb:	0a9d      	mov.n	a9, a10
400d34ed:	1b19a7        	beq	a9, a10, 400d350c <core::str::slice_error_fail_rt+0x13c>
400d34f0:	000686        	j	400d350e <core::str::slice_error_fail_rt+0x13e>
400d34f3:	25b437        	bgeu	a4, a3, 400d351c <core::str::slice_error_fail_rt+0x14c>
400d34f6:	824a      	add.n	a8, a2, a4
400d34f8:	000882        	l8ui	a8, a8, 0
400d34fb:	238800        	sext	a8, a8, 7
400d34fe:	c0af92        	movi	a9, -64
400d3501:	d5a897        	bge	a8, a9, 400d34da <core::str::slice_error_fail_rt+0x10a>
400d3504:	fff506        	j	400d34dc <core::str::slice_error_fail_rt+0x10c>
400d3507:	190c      	movi.n	a9, 1
400d3509:	0199a7        	bne	a9, a10, 400d350e <core::str::slice_error_fail_rt+0x13e>
400d350c:	08ad      	mov.n	a10, a8
400d350e:	b41b      	addi.n	a11, a4, 1
400d3510:	0ebba7        	bgeu	a11, a10, 400d3522 <core::str::slice_error_fail_rt+0x152>
400d3513:	f3f981        	l32r	a8, 400d04f8 <_stext+0x4d8>
400d3516:	0008e0        	callx8	a8
400d3519:	0041f0        	break	1, 15
400d351c:	ba1347        	beq	a3, a4, 400d34da <core::str::slice_error_fail_rt+0x10a>
400d351f:	ffee46        	j	400d34dc <core::str::slice_error_fail_rt+0x10c>
400d3522:	92aa      	add.n	a9, a2, a10
400d3524:	b2ba      	add.n	a11, a2, a11
400d3526:	c08b90        	sub	a8, a11, a9
400d3529:	c0afc2        	movi	a12, -64
400d352c:	0c19b7        	beq	a9, a11, 400d353c <core::str::slice_error_fail_rt+0x16c>
400d352f:	880b      	addi.n	a8, a8, -1
400d3531:	bb0b      	addi.n	a11, a11, -1
400d3533:	000bd2        	l8ui	a13, a11, 0
400d3536:	23dd00        	sext	a13, a13, 7
400d3539:	ef2dc7        	blt	a13, a12, 400d352c <core::str::slice_error_fail_rt+0x15c>
400d353c:	c8aa      	add.n	a12, a8, a10
400d353e:	013c56        	bnez	a12, 400d3555 <core::str::slice_error_fail_rt+0x185>
400d3541:	249c37        	bne	a12, a3, 400d3569 <core::str::slice_error_fail_rt+0x199>
400d3544:	f423a1        	l32r	a10, 400d05d0 <_stext+0x5b0>
400d3547:	bb2c      	movi.n	a11, 43
400d3549:	f422c1        	l32r	a12, 400d05d4 <_stext+0x5b4>
400d354c:	f2bd81        	l32r	a8, 400d0040 <_stext+0x20>
400d354f:	0008e0        	callx8	a8
400d3552:	0041f0        	break	1, 15
400d3555:	2abc37        	bgeu	a12, a3, 400d3583 <core::str::slice_error_fail_rt+0x1b3>
400d3558:	82ca      	add.n	a8, a2, a12
400d355a:	000882        	l8ui	a8, a8, 0
400d355d:	238800        	sext	a8, a8, 7
400d3560:	bfaf92        	movi	a9, -65
400d3563:	da2987        	blt	a9, a8, 400d3541 <core::str::slice_error_fail_rt+0x171>
400d3566:	000706        	j	400d3586 <core::str::slice_error_fail_rt+0x1b6>
400d3569:	82ca      	add.n	a8, a2, a12
400d356b:	000892        	l8ui	a9, a8, 0
400d356e:	239900        	sext	a9, a9, 7
400d3571:	fa7c      	movi.n	a10, -1
400d3573:	1eaa97        	bge	a10, a9, 400d3595 <core::str::slice_error_fail_rt+0x1c5>
400d3576:	ffa082        	movi	a8, 255
400d3579:	108980        	and	a8, a9, a8
400d357c:	7189      	s32i.n	a8, a1, 28
400d357e:	180c      	movi.n	a8, 1
400d3580:	0021c6        	j	400d360b <core::str::slice_error_fail_rt+0x23b>
400d3583:	ba1c37        	beq	a12, a3, 400d3541 <core::str::slice_error_fail_rt+0x171>
400d3586:	f3a881        	l32r	a8, 400d0428 <_stext+0x408>
400d3589:	02ad      	mov.n	a10, a2
400d358b:	03bd      	mov.n	a11, a3
400d358d:	03dd      	mov.n	a13, a3
400d358f:	0008e0        	callx8	a8
400d3592:	0041f0        	break	1, 15
400d3595:	0108b2        	l8ui	a11, a8, 1
400d3598:	fa3c      	movi.n	a10, 63
400d359a:	10dba0        	and	a13, a11, a10
400d359d:	fb1c      	movi.n	a11, 31
400d359f:	10b9b0        	and	a11, a9, a11
400d35a2:	dfafe2        	movi	a14, -33
400d35a5:	31be97        	bgeu	a14, a9, 400d35da <core::str::slice_error_fail_rt+0x20a>
400d35a8:	0208e2        	l8ui	a14, a8, 2
400d35ab:	10eea0        	and	a14, a14, a10
400d35ae:	11dda0        	slli	a13, a13, 6
400d35b1:	20dde0        	or	a13, a13, a14
400d35b4:	0e7c      	movi.n	a14, -16
400d35b6:	2939e7        	bltu	a9, a14, 400d35e3 <core::str::slice_error_fail_rt+0x213>
400d35b9:	019be0        	slli	a9, a11, 18
400d35bc:	f3ffb1        	l32r	a11, 400d05b8 <_stext+0x598>
400d35bf:	1099b0        	and	a9, a9, a11
400d35c2:	030882        	l8ui	a8, a8, 3
400d35c5:	1088a0        	and	a8, a8, a10
400d35c8:	11ada0        	slli	a10, a13, 6
400d35cb:	208a80        	or	a8, a10, a8
400d35ce:	208890        	or	a8, a8, a9
400d35d1:	f3fa91        	l32r	a9, 400d05bc <_stext+0x59c>
400d35d4:	119897        	bne	a8, a9, 400d35e9 <core::str::slice_error_fail_rt+0x219>
400d35d7:	ffda46        	j	400d3544 <core::str::slice_error_fail_rt+0x174>
400d35da:	118ba0        	slli	a8, a11, 6
400d35dd:	2088d0        	or	a8, a8, a13
400d35e0:	000146        	j	400d35e9 <core::str::slice_error_fail_rt+0x219>
400d35e3:	118b40        	slli	a8, a11, 12
400d35e6:	208d80        	or	a8, a13, a8
400d35e9:	7189      	s32i.n	a8, a1, 28
400d35eb:	04e8f6        	bgeui	a8, 128, 400d35f3 <core::str::slice_error_fail_rt+0x223>
400d35ee:	180c      	movi.n	a8, 1
400d35f0:	0005c6        	j	400d360b <core::str::slice_error_fail_rt+0x23b>
400d35f3:	f29f91        	l32r	a9, 400d0070 <_stext+0x50>
400d35f6:	04b897        	bgeu	a8, a9, 400d35fe <core::str::slice_error_fail_rt+0x22e>
400d35f9:	280c      	movi.n	a8, 2
400d35fb:	000306        	j	400d360b <core::str::slice_error_fail_rt+0x23b>
400d35fe:	f29d91        	l32r	a9, 400d0074 <_stext+0x54>
400d3601:	043897        	bltu	a8, a9, 400d3609 <core::str::slice_error_fail_rt+0x239>
400d3604:	480c      	movi.n	a8, 4
400d3606:	000046        	j	400d360b <core::str::slice_error_fail_rt+0x23b>
400d3609:	380c      	movi.n	a8, 3
400d360b:	81c9      	s32i.n	a12, a1, 32
400d360d:	88ca      	add.n	a8, a8, a12
400d360f:	9189      	s32i.n	a8, a1, 36
400d3611:	580c      	movi.n	a8, 5
400d3613:	f189      	s32i.n	a8, a1, 60
400d3615:	40c192        	addi	a9, a1, 64
400d3618:	e199      	s32i.n	a9, a1, 56
400d361a:	090c      	movi.n	a9, 0
400d361c:	c199      	s32i.n	a9, a1, 48
400d361e:	b189      	s32i.n	a8, a1, 44
400d3620:	f3e881        	l32r	a8, 400d05c0 <_stext+0x5a0>
400d3623:	a189      	s32i.n	a8, a1, 40
400d3625:	f39d81        	l32r	a8, 400d049c <_stext+0x47c>
400d3628:	196182        	s32i	a8, a1, 100
400d362b:	10c192        	addi	a9, a1, 16
400d362e:	186192        	s32i	a9, a1, 96
400d3631:	176182        	s32i	a8, a1, 92
400d3634:	08c182        	addi	a8, a1, 8
400d3637:	166182        	s32i	a8, a1, 88
400d363a:	f3e281        	l32r	a8, 400d05c4 <_stext+0x5a4>
400d363d:	156182        	s32i	a8, a1, 84
400d3640:	20c182        	addi	a8, a1, 32
400d3643:	146182        	s32i	a8, a1, 80
400d3646:	f3e081        	l32r	a8, 400d05c8 <_stext+0x5a8>
400d3649:	136182        	s32i	a8, a1, 76
400d364c:	1cc182        	addi	a8, a1, 28
400d364f:	126182        	s32i	a8, a1, 72
400d3652:	f2a181        	l32r	a8, 400d00d8 <_stext+0xb8>
400d3655:	116182        	s32i	a8, a1, 68
400d3658:	18c182        	addi	a8, a1, 24
400d365b:	106182        	s32i	a8, a1, 64
400d365e:	28c1a2        	addi	a10, a1, 40
400d3661:	f3dab1        	l32r	a11, 400d05cc <_stext+0x5ac>
400d3664:	f2a881        	l32r	a8, 400d0104 <_stext+0xe4>
400d3667:	0008e0        	callx8	a8
400d366a:	0041f0        	break	1, 15
400d366d:	000000        	ill

400d3670 <core::unicode::unicode_data::grapheme_extend::lookup>:
400d3670:	004136        	entry	a1, 32
400d3673:	118250        	slli	a8, a2, 11
400d3676:	0a0c      	movi.n	a10, 0
400d3678:	0c2c      	movi.n	a12, 32
400d367a:	f3dbb1        	l32r	a11, 400d05e8 <_stext+0x5c8>
400d367d:	0c9d      	mov.n	a9, a12
400d367f:	0001c6        	j	400d368a <core::unicode::unicode_data::grapheme_extend::lookup+0x1a>
400d3682:	ac1b      	addi.n	a10, a12, 1
400d3684:	c0c9a0        	sub	a12, a9, a10
400d3687:	1fba97        	bgeu	a10, a9, 400d36aa <core::unicode::unicode_data::grapheme_extend::lookup+0x3a>
400d368a:	41c1c0        	srli	a12, a12, 1
400d368d:	ccaa      	add.n	a12, a12, a10
400d368f:	a0dcb0        	addx4	a13, a12, a11
400d3692:	0dd8      	l32i.n	a13, a13, 0
400d3694:	11dd50        	slli	a13, a13, 11
400d3697:	e73d87        	bltu	a13, a8, 400d3682 <core::unicode::unicode_data::grapheme_extend::lookup+0x12>
400d369a:	0a1d87        	beq	a13, a8, 400d36a8 <core::unicode::unicode_data::grapheme_extend::lookup+0x38>
400d369d:	0c9d      	mov.n	a9, a12
400d369f:	c0c9a0        	sub	a12, a9, a10
400d36a2:	e43a97        	bltu	a10, a9, 400d368a <core::unicode::unicode_data::grapheme_extend::lookup+0x1a>
400d36a5:	000046        	j	400d36aa <core::unicode::unicode_data::grapheme_extend::lookup+0x3a>
400d36a8:	ac1b      	addi.n	a10, a12, 1
400d36aa:	f81c      	movi.n	a8, 31
400d36ac:	02b8a7        	bgeu	a8, a10, 400d36b2 <core::unicode::unicode_data::grapheme_extend::lookup+0x42>
400d36af:	002806        	j	400d3753 <core::unicode::unicode_data::grapheme_extend::lookup+0xe3>
400d36b2:	a0cab0        	addx4	a12, a10, a11
400d36b5:	0c98      	l32i.n	a9, a12, 0
400d36b7:	5d1c      	movi.n	a13, 21
400d36b9:	400d00        	ssr	a13
400d36bc:	919090        	srl	a9, a9
400d36bf:	299a87        	bne	a10, a8, 400d36ec <core::unicode::unicode_data::grapheme_extend::lookup+0x7c>
400d36c2:	c3a2c2        	movi	a12, 0x2c3
400d36c5:	8a0b      	addi.n	a8, a10, -1
400d36c7:	2e3a87        	bltu	a10, a8, 400d36f9 <core::unicode::unicode_data::grapheme_extend::lookup+0x89>
400d36ca:	02c8b6        	bltui	a8, 32, 400d36d0 <core::unicode::unicode_data::grapheme_extend::lookup+0x60>
400d36cd:	002406        	j	400d3761 <core::unicode::unicode_data::grapheme_extend::lookup+0xf1>
400d36d0:	a088b0        	addx4	a8, a8, a11
400d36d3:	0888      	l32i.n	a8, a8, 0
400d36d5:	f3c8a1        	l32r	a10, 400d05f8 <_stext+0x5d8>
400d36d8:	10b8a0        	and	a11, a8, a10
400d36db:	f87c      	movi.n	a8, -1
400d36dd:	308980        	xor	a8, a9, a8
400d36e0:	8c8a      	add.n	a8, a12, a8
400d36e2:	01f856        	bnez	a8, 400d3705 <core::unicode::unicode_data::grapheme_extend::lookup+0x95>
400d36e5:	180c      	movi.n	a8, 1
400d36e7:	102980        	and	a2, a9, a8
400d36ea:	f01d      	retw.n
400d36ec:	1c88      	l32i.n	a8, a12, 4
400d36ee:	400d00        	ssr	a13
400d36f1:	91c080        	srl	a12, a8
400d36f4:	8a0b      	addi.n	a8, a10, -1
400d36f6:	d0ba87        	bgeu	a10, a8, 400d36ca <core::unicode::unicode_data::grapheme_extend::lookup+0x5a>
400d36f9:	0b0c      	movi.n	a11, 0
400d36fb:	f87c      	movi.n	a8, -1
400d36fd:	308980        	xor	a8, a9, a8
400d3700:	8c8a      	add.n	a8, a12, a8
400d3702:	fdf816        	beqz	a8, 400d36e5 <core::unicode::unicode_data::grapheme_extend::lookup+0x75>
400d3705:	c3a2d2        	movi	a13, 0x2c3
400d3708:	09ad      	mov.n	a10, a9
400d370a:	013d97        	bltu	a13, a9, 400d370f <core::unicode::unicode_data::grapheme_extend::lookup+0x9f>
400d370d:	0dad      	mov.n	a10, a13
400d370f:	c0b2b0        	sub	a11, a2, a11
400d3712:	c0da90        	sub	a13, a10, a9
400d3715:	cc0b      	addi.n	a12, a12, -1
400d3717:	0e0c      	movi.n	a14, 0
400d3719:	f3b8f1        	l32r	a15, 400d05fc <_stext+0x5dc>
400d371c:	0e7d      	mov.n	a7, a14
400d371e:	0020f0        	nop
400d3721:	0020f0        	nop
400d3724:	138876        	loop	a8, 400d373b <core::unicode::unicode_data::grapheme_extend::lookup+0xcb>
400d3727:	1917d7        	beq	a7, a13, 400d3744 <core::unicode::unicode_data::grapheme_extend::lookup+0xd4>
400d372a:	ffffc6        	j	400d372d <core::unicode::unicode_data::grapheme_extend::lookup+0xbd>
400d372d:	6f9a      	add.n	a6, a15, a9
400d372f:	000662        	l8ui	a6, a6, 0
400d3732:	ee6a      	add.n	a14, a14, a6
400d3734:	ad3be7        	bltu	a11, a14, 400d36e5 <core::unicode::unicode_data::grapheme_extend::lookup+0x75>
400d3737:	771b      	addi.n	a7, a7, 1
400d3739:	991b      	addi.n	a9, a9, 1
400d373b:	0c9d      	mov.n	a9, a12
400d373d:	180c      	movi.n	a8, 1
400d373f:	102980        	and	a2, a9, a8
400d3742:	f01d      	retw.n
400d3744:	c3a2b2        	movi	a11, 0x2c3
400d3747:	f3aec1        	l32r	a12, 400d0600 <_stext+0x5e0>
400d374a:	f3a981        	l32r	a8, 400d05f0 <_stext+0x5d0>
400d374d:	0008e0        	callx8	a8
400d3750:	0041f0        	break	1, 15
400d3753:	0b2c      	movi.n	a11, 32
400d3755:	f3a5c1        	l32r	a12, 400d05ec <_stext+0x5cc>
400d3758:	f3a681        	l32r	a8, 400d05f0 <_stext+0x5d0>
400d375b:	0008e0        	callx8	a8
400d375e:	0041f0        	break	1, 15
400d3761:	0b2c      	movi.n	a11, 32
400d3763:	f3a4c1        	l32r	a12, 400d05f4 <_stext+0x5d4>
400d3766:	f3a291        	l32r	a9, 400d05f0 <_stext+0x5d0>
400d3769:	08ad      	mov.n	a10, a8
400d376b:	0009e0        	callx8	a9
400d376e:	0041f0        	break	1, 15
400d3771:	000000        	ill

400d3774 <core::fmt::write>:
400d3774:	00a136        	entry	a1, 80
400d3777:	380c      	movi.n	a8, 3
400d3779:	284182        	s8i	a8, a1, 40
400d377c:	082c      	movi.n	a8, 32
400d377e:	3189      	s32i.n	a8, a1, 12
400d3780:	070c      	movi.n	a7, 0
400d3782:	2179      	s32i.n	a7, a1, 8
400d3784:	9139      	s32i.n	a3, a1, 36
400d3786:	8129      	s32i.n	a2, a1, 32
400d3788:	6179      	s32i.n	a7, a1, 24
400d378a:	4179      	s32i.n	a7, a1, 16
400d378c:	2458      	l32i.n	a5, a4, 8
400d378e:	0b1516        	beqz	a5, 400d3843 <core::fmt::write+0xcf>
400d3791:	3498      	l32i.n	a9, a4, 12
400d3793:	1189b0        	slli	a8, a9, 5
400d3796:	07ad      	mov.n	a10, a7
400d3798:	0f8816        	beqz	a8, 400d3894 <core::fmt::write+0x120>
400d379b:	1a0c      	movi.n	a10, 1
400d379d:	11a9      	s32i.n	a10, a1, 4
400d379f:	990b      	addi.n	a9, a9, -1
400d37a1:	f398a1        	l32r	a10, 400d0604 <_stext+0x5e4>
400d37a4:	1099a0        	and	a9, a9, a10
400d37a7:	991b      	addi.n	a9, a9, 1
400d37a9:	0199      	s32i.n	a9, a1, 0
400d37ab:	0428      	l32i.n	a2, a4, 0
400d37ad:	e0c882        	addi	a8, a8, -32
400d37b0:	418580        	srli	a8, a8, 5
400d37b3:	681b      	addi.n	a6, a8, 1
400d37b5:	030c      	movi.n	a3, 0
400d37b7:	b08320        	addx8	a8, a3, a2
400d37ba:	18c8      	l32i.n	a12, a8, 4
400d37bc:	00dc16        	beqz	a12, 400d37cd <core::fmt::write+0x59>
400d37bf:	08b8      	l32i.n	a11, a8, 0
400d37c1:	9188      	l32i.n	a8, a1, 36
400d37c3:	3888      	l32i.n	a8, a8, 12
400d37c5:	81a8      	l32i.n	a10, a1, 32
400d37c7:	0008e0        	callx8	a8
400d37ca:	0e3a56        	bnez	a10, 400d38b1 <core::fmt::write+0x13d>
400d37cd:	4488      	l32i.n	a8, a4, 16
400d37cf:	1598      	l32i.n	a9, a5, 4
400d37d1:	3199      	s32i.n	a9, a1, 12
400d37d3:	1c0592        	l8ui	a9, a5, 28
400d37d6:	284192        	s8i	a9, a1, 40
400d37d9:	2598      	l32i.n	a9, a5, 8
400d37db:	2199      	s32i.n	a9, a1, 8
400d37dd:	55c8      	l32i.n	a12, a5, 20
400d37df:	65a8      	l32i.n	a10, a5, 24
400d37e1:	090c      	movi.n	a9, 0
400d37e3:	015c16        	beqz	a12, 400d37fc <core::fmt::write+0x88>
400d37e6:	09bd      	mov.n	a11, a9
400d37e8:	121c66        	bnei	a12, 1, 400d37fe <core::fmt::write+0x8a>
400d37eb:	b0ca80        	addx8	a12, a10, a8
400d37ee:	1cd8      	l32i.n	a13, a12, 4
400d37f0:	f386e1        	l32r	a14, 400d0608 <_stext+0x5e8>
400d37f3:	09bd      	mov.n	a11, a9
400d37f5:	059de7        	bne	a13, a14, 400d37fe <core::fmt::write+0x8a>
400d37f8:	0ca8      	l32i.n	a10, a12, 0
400d37fa:	0aa8      	l32i.n	a10, a10, 0
400d37fc:	11b8      	l32i.n	a11, a1, 4
400d37fe:	51a9      	s32i.n	a10, a1, 20
400d3800:	41b9      	s32i.n	a11, a1, 16
400d3802:	35b8      	l32i.n	a11, a5, 12
400d3804:	45a8      	l32i.n	a10, a5, 16
400d3806:	011b16        	beqz	a11, 400d381b <core::fmt::write+0xa7>
400d3809:	131b66        	bnei	a11, 1, 400d3820 <core::fmt::write+0xac>
400d380c:	b0ba80        	addx8	a11, a10, a8
400d380f:	1bc8      	l32i.n	a12, a11, 4
400d3811:	f37dd1        	l32r	a13, 400d0608 <_stext+0x5e8>
400d3814:	089cd7        	bne	a12, a13, 400d3820 <core::fmt::write+0xac>
400d3817:	0b98      	l32i.n	a9, a11, 0
400d3819:	09a8      	l32i.n	a10, a9, 0
400d381b:	190c      	movi.n	a9, 1
400d381d:	ffffc6        	j	400d3820 <core::fmt::write+0xac>
400d3820:	71a9      	s32i.n	a10, a1, 28
400d3822:	6199      	s32i.n	a9, a1, 24
400d3824:	0598      	l32i.n	a9, a5, 0
400d3826:	b08980        	addx8	a8, a9, a8
400d3829:	08a8      	l32i.n	a10, a8, 0
400d382b:	1888      	l32i.n	a8, a8, 4
400d382d:	08c1b2        	addi	a11, a1, 8
400d3830:	0008e0        	callx8	a8
400d3833:	07aa56        	bnez	a10, 400d38b1 <core::fmt::write+0x13d>
400d3836:	331b      	addi.n	a3, a3, 1
400d3838:	20c552        	addi	a5, a5, 32
400d383b:	660b      	addi.n	a6, a6, -1
400d383d:	f76656        	bnez	a6, 400d37b7 <core::fmt::write+0x43>
400d3840:	001386        	j	400d3892 <core::fmt::write+0x11e>
400d3843:	5488      	l32i.n	a8, a4, 20
400d3845:	07ad      	mov.n	a10, a7
400d3847:	049816        	beqz	a8, 400d3894 <core::fmt::write+0x120>
400d384a:	4468      	l32i.n	a6, a4, 16
400d384c:	980b      	addi.n	a9, a8, -1
400d384e:	f36fa1        	l32r	a10, 400d060c <_stext+0x5ec>
400d3851:	1099a0        	and	a9, a9, a10
400d3854:	991b      	addi.n	a9, a9, 1
400d3856:	0199      	s32i.n	a9, a1, 0
400d3858:	897c      	movi.n	a9, -8
400d385a:	b08890        	addx8	a8, a8, a9
400d385d:	418380        	srli	a8, a8, 3
400d3860:	581b      	addi.n	a5, a8, 1
400d3862:	0438      	l32i.n	a3, a4, 0
400d3864:	020c      	movi.n	a2, 0
400d3866:	b08230        	addx8	a8, a2, a3
400d3869:	18c8      	l32i.n	a12, a8, 4
400d386b:	00dc16        	beqz	a12, 400d387c <core::fmt::write+0x108>
400d386e:	08b8      	l32i.n	a11, a8, 0
400d3870:	9188      	l32i.n	a8, a1, 36
400d3872:	3888      	l32i.n	a8, a8, 12
400d3874:	81a8      	l32i.n	a10, a1, 32
400d3876:	0008e0        	callx8	a8
400d3879:	034a56        	bnez	a10, 400d38b1 <core::fmt::write+0x13d>
400d387c:	06a8      	l32i.n	a10, a6, 0
400d387e:	1688      	l32i.n	a8, a6, 4
400d3880:	08c1b2        	addi	a11, a1, 8
400d3883:	0008e0        	callx8	a8
400d3886:	027a56        	bnez	a10, 400d38b1 <core::fmt::write+0x13d>
400d3889:	221b      	addi.n	a2, a2, 1
400d388b:	668b      	addi.n	a6, a6, 8
400d388d:	550b      	addi.n	a5, a5, -1
400d388f:	fd3556        	bnez	a5, 400d3866 <core::fmt::write+0xf2>
400d3892:	01a8      	l32i.n	a10, a1, 0
400d3894:	1488      	l32i.n	a8, a4, 4
400d3896:	04ba87        	bgeu	a10, a8, 400d389e <core::fmt::write+0x12a>
400d3899:	0498      	l32i.n	a9, a4, 0
400d389b:	b07a90        	addx8	a7, a10, a9
400d389e:	13ba87        	bgeu	a10, a8, 400d38b5 <core::fmt::write+0x141>
400d38a1:	9188      	l32i.n	a8, a1, 36
400d38a3:	3888      	l32i.n	a8, a8, 12
400d38a5:	17c8      	l32i.n	a12, a7, 4
400d38a7:	07b8      	l32i.n	a11, a7, 0
400d38a9:	81a8      	l32i.n	a10, a1, 32
400d38ab:	0008e0        	callx8	a8
400d38ae:	003a16        	beqz	a10, 400d38b5 <core::fmt::write+0x141>
400d38b1:	120c      	movi.n	a2, 1
400d38b3:	f01d      	retw.n
400d38b5:	020c      	movi.n	a2, 0
400d38b7:	f01d      	retw.n
400d38b9:	000000        	ill

400d38bc <core::fmt::Formatter::pad_integral>:
400d38bc:	008136        	entry	a1, 64
400d38bf:	5179      	s32i.n	a7, a1, 20
400d38c1:	01a316        	beqz	a3, 400d38df <core::fmt::Formatter::pad_integral+0x23>
400d38c4:	0288      	l32i.n	a8, a2, 0
400d38c6:	190c      	movi.n	a9, 1
400d38c8:	109890        	and	a9, a8, a9
400d38cb:	0a0c      	movi.n	a10, 0
400d38cd:	7219a7        	beq	a9, a10, 400d3943 <core::fmt::Formatter::pad_integral+0x87>
400d38d0:	b32c      	movi.n	a3, 43
400d38d2:	797a      	add.n	a7, a9, a7
400d38d4:	490c      	movi.n	a9, 4
400d38d6:	108890        	and	a8, a8, a9
400d38d9:	010816        	beqz	a8, 400d38ed <core::fmt::Formatter::pad_integral+0x31>
400d38dc:	001c06        	j	400d3950 <core::fmt::Formatter::pad_integral+0x94>
400d38df:	0288      	l32i.n	a8, a2, 0
400d38e1:	771b      	addi.n	a7, a7, 1
400d38e3:	d32c      	movi.n	a3, 45
400d38e5:	490c      	movi.n	a9, 4
400d38e7:	108890        	and	a8, a8, a9
400d38ea:	062856        	bnez	a8, 400d3950 <core::fmt::Formatter::pad_integral+0x94>
400d38ed:	040c      	movi.n	a4, 0
400d38ef:	2288      	l32i.n	a8, a2, 8
400d38f1:	0a6816        	beqz	a8, 400d399b <core::fmt::Formatter::pad_integral+0xdf>
400d38f4:	4169      	s32i.n	a6, a1, 16
400d38f6:	3268      	l32i.n	a6, a2, 12
400d38f8:	31b767        	bgeu	a7, a6, 400d392d <core::fmt::Formatter::pad_integral+0x71>
400d38fb:	0288      	l32i.n	a8, a2, 0
400d38fd:	890c      	movi.n	a9, 8
400d38ff:	108890        	and	a8, a8, a9
400d3902:	3129      	s32i.n	a2, a1, 12
400d3904:	0b8856        	bnez	a8, 400d39c0 <core::fmt::Formatter::pad_integral+0x104>
400d3907:	200292        	l8ui	a9, a2, 32
400d390a:	380c      	movi.n	a8, 3
400d390c:	1139      	s32i.n	a3, a1, 4
400d390e:	019987        	bne	a9, a8, 400d3913 <core::fmt::Formatter::pad_integral+0x57>
400d3911:	190c      	movi.n	a9, 1
400d3913:	108980        	and	a8, a9, a8
400d3916:	c06670        	sub	a6, a6, a7
400d3919:	030c      	movi.n	a3, 0
400d391b:	2149      	s32i.n	a4, a1, 8
400d391d:	10a816        	beqz	a8, 400d3a2b <core::fmt::Formatter::pad_integral+0x16f>
400d3920:	021826        	beqi	a8, 1, 400d3926 <core::fmt::Formatter::pad_integral+0x6a>
400d3923:	0042c6        	j	400d3a32 <core::fmt::Formatter::pad_integral+0x176>
400d3926:	080c      	movi.n	a8, 0
400d3928:	0189      	s32i.n	a8, a1, 0
400d392a:	004406        	j	400d3a3e <core::fmt::Formatter::pad_integral+0x182>
400d392d:	f33981        	l32r	a8, 400d0614 <_stext+0x5f4>
400d3930:	02ad      	mov.n	a10, a2
400d3932:	03bd      	mov.n	a11, a3
400d3934:	04cd      	mov.n	a12, a4
400d3936:	05dd      	mov.n	a13, a5
400d3938:	0008e0        	callx8	a8
400d393b:	0caa16        	beqz	a10, 400d3a09 <core::fmt::Formatter::pad_integral+0x14d>
400d393e:	190c      	movi.n	a9, 1
400d3940:	007b46        	j	400d3b31 <core::fmt::Formatter::pad_integral+0x275>
400d3943:	f31e31        	l32r	a3, 400d05bc <_stext+0x59c>
400d3946:	797a      	add.n	a7, a9, a7
400d3948:	490c      	movi.n	a9, 4
400d394a:	108890        	and	a8, a8, a9
400d394d:	f9c816        	beqz	a8, 400d38ed <core::fmt::Formatter::pad_integral+0x31>
400d3950:	36b5f6        	bgeui	a5, 16, 400d398a <core::fmt::Formatter::pad_integral+0xce>
400d3953:	0c8516        	beqz	a5, 400d3a1f <core::fmt::Formatter::pad_integral+0x163>
400d3956:	180c      	movi.n	a8, 1
400d3958:	090c      	movi.n	a9, 0
400d395a:	bfafb2        	movi	a11, -65
400d395d:	09ad      	mov.n	a10, a9
400d395f:	04cd      	mov.n	a12, a4
400d3961:	000186        	j	400d396b <core::fmt::Formatter::pad_integral+0xaf>
400d3964:	aada      	add.n	a10, a10, a13
400d3966:	cc1b      	addi.n	a12, a12, 1
400d3968:	000606        	j	400d3984 <core::fmt::Formatter::pad_integral+0xc8>
400d396b:	0020f0        	nop
400d396e:	0020f0        	nop
400d3971:	128576        	loop	a5, 400d3987 <core::fmt::Formatter::pad_integral+0xcb>
400d3974:	000cd2        	l8ui	a13, a12, 0
400d3977:	23ed00        	sext	a14, a13, 7
400d397a:	08dd      	mov.n	a13, a8
400d397c:	e42be7        	blt	a11, a14, 400d3964 <core::fmt::Formatter::pad_integral+0xa8>
400d397f:	09dd      	mov.n	a13, a9
400d3981:	fff7c6        	j	400d3964 <core::fmt::Formatter::pad_integral+0xa8>
400d3984:	0020f0        	nop
400d3987:	000246        	j	400d3994 <core::fmt::Formatter::pad_integral+0xd8>
400d398a:	f32181        	l32r	a8, 400d0610 <_stext+0x5f0>
400d398d:	04ad      	mov.n	a10, a4
400d398f:	05bd      	mov.n	a11, a5
400d3991:	0008e0        	callx8	a8
400d3994:	7a7a      	add.n	a7, a10, a7
400d3996:	2288      	l32i.n	a8, a2, 8
400d3998:	f58856        	bnez	a8, 400d38f4 <core::fmt::Formatter::pad_integral+0x38>
400d399b:	f31e81        	l32r	a8, 400d0614 <_stext+0x5f4>
400d399e:	02ad      	mov.n	a10, a2
400d39a0:	03bd      	mov.n	a11, a3
400d39a2:	04cd      	mov.n	a12, a4
400d39a4:	05dd      	mov.n	a13, a5
400d39a6:	0008e0        	callx8	a8
400d39a9:	008a16        	beqz	a10, 400d39b5 <core::fmt::Formatter::pad_integral+0xf9>
400d39ac:	190c      	movi.n	a9, 1
400d39ae:	180c      	movi.n	a8, 1
400d39b0:	102980        	and	a2, a9, a8
400d39b3:	f01d      	retw.n
400d39b5:	62a8      	l32i.n	a10, a2, 24
400d39b7:	7288      	l32i.n	a8, a2, 28
400d39b9:	3888      	l32i.n	a8, a8, 12
400d39bb:	06bd      	mov.n	a11, a6
400d39bd:	001406        	j	400d3a11 <core::fmt::Formatter::pad_integral+0x155>
400d39c0:	1288      	l32i.n	a8, a2, 4
400d39c2:	6189      	s32i.n	a8, a1, 24
400d39c4:	083c      	movi.n	a8, 48
400d39c6:	1289      	s32i.n	a8, a2, 4
400d39c8:	200282        	l8ui	a8, a2, 32
400d39cb:	0189      	s32i.n	a8, a1, 0
400d39cd:	03bd      	mov.n	a11, a3
400d39cf:	130c      	movi.n	a3, 1
400d39d1:	204232        	s8i	a3, a2, 32
400d39d4:	f31081        	l32r	a8, 400d0614 <_stext+0x5f4>
400d39d7:	02ad      	mov.n	a10, a2
400d39d9:	04cd      	mov.n	a12, a4
400d39db:	05dd      	mov.n	a13, a5
400d39dd:	0008e0        	callx8	a8
400d39e0:	039d      	mov.n	a9, a3
400d39e2:	14ba56        	bnez	a10, 400d3b31 <core::fmt::Formatter::pad_integral+0x275>
400d39e5:	31a8      	l32i.n	a10, a1, 12
400d39e7:	200a92        	l8ui	a9, a10, 32
400d39ea:	380c      	movi.n	a8, 3
400d39ec:	019987        	bne	a9, a8, 400d39f1 <core::fmt::Formatter::pad_integral+0x135>
400d39ef:	190c      	movi.n	a9, 1
400d39f1:	108980        	and	a8, a9, a8
400d39f4:	c03670        	sub	a3, a6, a7
400d39f7:	040c      	movi.n	a4, 0
400d39f9:	08e816        	beqz	a8, 400d3a8b <core::fmt::Formatter::pad_integral+0x1cf>
400d39fc:	021826        	beqi	a8, 1, 400d3a02 <core::fmt::Formatter::pad_integral+0x146>
400d39ff:	0023c6        	j	400d3a92 <core::fmt::Formatter::pad_integral+0x1d6>
400d3a02:	080c      	movi.n	a8, 0
400d3a04:	2189      	s32i.n	a8, a1, 8
400d3a06:	002506        	j	400d3a9e <core::fmt::Formatter::pad_integral+0x1e2>
400d3a09:	62a8      	l32i.n	a10, a2, 24
400d3a0b:	7288      	l32i.n	a8, a2, 28
400d3a0d:	3888      	l32i.n	a8, a8, 12
400d3a0f:	41b8      	l32i.n	a11, a1, 16
400d3a11:	51c8      	l32i.n	a12, a1, 20
400d3a13:	0008e0        	callx8	a8
400d3a16:	0a9d      	mov.n	a9, a10
400d3a18:	180c      	movi.n	a8, 1
400d3a1a:	102980        	and	a2, a9, a8
400d3a1d:	f01d      	retw.n
400d3a1f:	0a0c      	movi.n	a10, 0
400d3a21:	7a7a      	add.n	a7, a10, a7
400d3a23:	2288      	l32i.n	a8, a2, 8
400d3a25:	ecb856        	bnez	a8, 400d38f4 <core::fmt::Formatter::pad_integral+0x38>
400d3a28:	ffdbc6        	j	400d399b <core::fmt::Formatter::pad_integral+0xdf>
400d3a2b:	0169      	s32i.n	a6, a1, 0
400d3a2d:	036d      	mov.n	a6, a3
400d3a2f:	0002c6        	j	400d3a3e <core::fmt::Formatter::pad_integral+0x182>
400d3a32:	418160        	srli	a8, a6, 1
400d3a35:	961b      	addi.n	a9, a6, 1
400d3a37:	419190        	srli	a9, a9, 1
400d3a3a:	0199      	s32i.n	a9, a1, 0
400d3a3c:	086d      	mov.n	a6, a8
400d3a3e:	028d      	mov.n	a8, a2
400d3a40:	1898      	l32i.n	a9, a8, 4
400d3a42:	6199      	s32i.n	a9, a1, 24
400d3a44:	7848      	l32i.n	a4, a8, 28
400d3a46:	6878      	l32i.n	a7, a8, 24
400d3a48:	190c      	movi.n	a9, 1
400d3a4a:	141367        	beq	a3, a6, 400d3a62 <core::fmt::Formatter::pad_integral+0x1a6>
400d3a4d:	4488      	l32i.n	a8, a4, 16
400d3a4f:	07ad      	mov.n	a10, a7
400d3a51:	61b8      	l32i.n	a11, a1, 24
400d3a53:	092d      	mov.n	a2, a9
400d3a55:	0008e0        	callx8	a8
400d3a58:	029d      	mov.n	a9, a2
400d3a5a:	331b      	addi.n	a3, a3, 1
400d3a5c:	feaa16        	beqz	a10, 400d3a4a <core::fmt::Formatter::pad_integral+0x18e>
400d3a5f:	003386        	j	400d3b31 <core::fmt::Formatter::pad_integral+0x275>
400d3a62:	f2d681        	l32r	a8, 400d05bc <_stext+0x59c>
400d3a65:	61a8      	l32i.n	a10, a1, 24
400d3a67:	029a87        	bne	a10, a8, 400d3a6d <core::fmt::Formatter::pad_integral+0x1b1>
400d3a6a:	0030c6        	j	400d3b31 <core::fmt::Formatter::pad_integral+0x275>
400d3a6d:	096d      	mov.n	a6, a9
400d3a6f:	f2e981        	l32r	a8, 400d0614 <_stext+0x5f4>
400d3a72:	3178      	l32i.n	a7, a1, 12
400d3a74:	07ad      	mov.n	a10, a7
400d3a76:	11b8      	l32i.n	a11, a1, 4
400d3a78:	21c8      	l32i.n	a12, a1, 8
400d3a7a:	05dd      	mov.n	a13, a5
400d3a7c:	0008e0        	callx8	a8
400d3a7f:	05ca16        	beqz	a10, 400d3adf <core::fmt::Formatter::pad_integral+0x223>
400d3a82:	069d      	mov.n	a9, a6
400d3a84:	180c      	movi.n	a8, 1
400d3a86:	102980        	and	a2, a9, a8
400d3a89:	f01d      	retw.n
400d3a8b:	2139      	s32i.n	a3, a1, 8
400d3a8d:	043d      	mov.n	a3, a4
400d3a8f:	0002c6        	j	400d3a9e <core::fmt::Formatter::pad_integral+0x1e2>
400d3a92:	418130        	srli	a8, a3, 1
400d3a95:	931b      	addi.n	a9, a3, 1
400d3a97:	419190        	srli	a9, a9, 1
400d3a9a:	2199      	s32i.n	a9, a1, 8
400d3a9c:	083d      	mov.n	a3, a8
400d3a9e:	1a78      	l32i.n	a7, a10, 4
400d3aa0:	7a28      	l32i.n	a2, a10, 28
400d3aa2:	6a68      	l32i.n	a6, a10, 24
400d3aa4:	190c      	movi.n	a9, 1
400d3aa6:	095d      	mov.n	a5, a9
400d3aa8:	121437        	beq	a4, a3, 400d3abe <core::fmt::Formatter::pad_integral+0x202>
400d3aab:	4288      	l32i.n	a8, a2, 16
400d3aad:	06ad      	mov.n	a10, a6
400d3aaf:	07bd      	mov.n	a11, a7
400d3ab1:	0008e0        	callx8	a8
400d3ab4:	059d      	mov.n	a9, a5
400d3ab6:	441b      	addi.n	a4, a4, 1
400d3ab8:	feca16        	beqz	a10, 400d3aa8 <core::fmt::Formatter::pad_integral+0x1ec>
400d3abb:	001c86        	j	400d3b31 <core::fmt::Formatter::pad_integral+0x275>
400d3abe:	f2bf81        	l32r	a8, 400d05bc <_stext+0x59c>
400d3ac1:	6c1787        	beq	a7, a8, 400d3b31 <core::fmt::Formatter::pad_integral+0x275>
400d3ac4:	3168      	l32i.n	a6, a1, 12
400d3ac6:	66a8      	l32i.n	a10, a6, 24
400d3ac8:	7688      	l32i.n	a8, a6, 28
400d3aca:	3888      	l32i.n	a8, a8, 12
400d3acc:	41b8      	l32i.n	a11, a1, 16
400d3ace:	51c8      	l32i.n	a12, a1, 20
400d3ad0:	0008e0        	callx8	a8
400d3ad3:	03aa16        	beqz	a10, 400d3b11 <core::fmt::Formatter::pad_integral+0x255>
400d3ad6:	059d      	mov.n	a9, a5
400d3ad8:	180c      	movi.n	a8, 1
400d3ada:	102980        	and	a2, a9, a8
400d3add:	f01d      	retw.n
400d3adf:	67a8      	l32i.n	a10, a7, 24
400d3ae1:	7788      	l32i.n	a8, a7, 28
400d3ae3:	3888      	l32i.n	a8, a8, 12
400d3ae5:	41b8      	l32i.n	a11, a1, 16
400d3ae7:	51c8      	l32i.n	a12, a1, 20
400d3ae9:	0008e0        	callx8	a8
400d3aec:	069d      	mov.n	a9, a6
400d3aee:	03fa56        	bnez	a10, 400d3b31 <core::fmt::Formatter::pad_integral+0x275>
400d3af1:	3188      	l32i.n	a8, a1, 12
400d3af3:	7868      	l32i.n	a6, a8, 28
400d3af5:	6878      	l32i.n	a7, a8, 24
400d3af7:	080c      	movi.n	a8, 0
400d3af9:	0148      	l32i.n	a4, a1, 0
400d3afb:	085d      	mov.n	a5, a8
400d3afd:	4b1547        	beq	a5, a4, 400d3b4c <core::fmt::Formatter::pad_integral+0x290>
400d3b00:	4688      	l32i.n	a8, a6, 16
400d3b02:	07ad      	mov.n	a10, a7
400d3b04:	61b8      	l32i.n	a11, a1, 24
400d3b06:	0008e0        	callx8	a8
400d3b09:	851b      	addi.n	a8, a5, 1
400d3b0b:	feca16        	beqz	a10, 400d3afb <core::fmt::Formatter::pad_integral+0x23f>
400d3b0e:	000f06        	j	400d3b4e <core::fmt::Formatter::pad_integral+0x292>
400d3b11:	7648      	l32i.n	a4, a6, 28
400d3b13:	6668      	l32i.n	a6, a6, 24
400d3b15:	080c      	movi.n	a8, 0
400d3b17:	2128      	l32i.n	a2, a1, 8
400d3b19:	083d      	mov.n	a3, a8
400d3b1b:	191327        	beq	a3, a2, 400d3b38 <core::fmt::Formatter::pad_integral+0x27c>
400d3b1e:	4488      	l32i.n	a8, a4, 16
400d3b20:	06ad      	mov.n	a10, a6
400d3b22:	07bd      	mov.n	a11, a7
400d3b24:	0008e0        	callx8	a8
400d3b27:	059d      	mov.n	a9, a5
400d3b29:	831b      	addi.n	a8, a3, 1
400d3b2b:	feaa16        	beqz	a10, 400d3b19 <core::fmt::Formatter::pad_integral+0x25d>
400d3b2e:	06b327        	bgeu	a3, a2, 400d3b38 <core::fmt::Formatter::pad_integral+0x27c>
400d3b31:	180c      	movi.n	a8, 1
400d3b33:	102980        	and	a2, a9, a8
400d3b36:	f01d      	retw.n
400d3b38:	3188      	l32i.n	a8, a1, 12
400d3b3a:	0198      	l32i.n	a9, a1, 0
400d3b3c:	204892        	s8i	a9, a8, 32
400d3b3f:	6198      	l32i.n	a9, a1, 24
400d3b41:	1899      	s32i.n	a9, a8, 4
400d3b43:	090c      	movi.n	a9, 0
400d3b45:	180c      	movi.n	a8, 1
400d3b47:	102980        	and	a2, a9, a8
400d3b4a:	f01d      	retw.n
400d3b4c:	045d      	mov.n	a5, a4
400d3b4e:	02b547        	bgeu	a5, a4, 400d3b54 <core::fmt::Formatter::pad_integral+0x298>
400d3b51:	ff95c6        	j	400d39ac <core::fmt::Formatter::pad_integral+0xf0>
400d3b54:	090c      	movi.n	a9, 0
400d3b56:	180c      	movi.n	a8, 1
400d3b58:	102980        	and	a2, a9, a8
400d3b5b:	f01d      	retw.n
400d3b5d:	000000        	ill

400d3b60 <core::fmt::Formatter::pad_integral::write_prefix>:
400d3b60:	004136        	entry	a1, 32
400d3b63:	f29681        	l32r	a8, 400d05bc <_stext+0x59c>
400d3b66:	111387        	beq	a3, a8, 400d3b7b <core::fmt::Formatter::pad_integral::write_prefix+0x1b>
400d3b69:	62a8      	l32i.n	a10, a2, 24
400d3b6b:	7288      	l32i.n	a8, a2, 28
400d3b6d:	4888      	l32i.n	a8, a8, 16
400d3b6f:	03bd      	mov.n	a11, a3
400d3b71:	0008e0        	callx8	a8
400d3b74:	003a16        	beqz	a10, 400d3b7b <core::fmt::Formatter::pad_integral::write_prefix+0x1b>
400d3b77:	120c      	movi.n	a2, 1
400d3b79:	f01d      	retw.n
400d3b7b:	010416        	beqz	a4, 400d3b8f <core::fmt::Formatter::pad_integral::write_prefix+0x2f>
400d3b7e:	62a8      	l32i.n	a10, a2, 24
400d3b80:	7288      	l32i.n	a8, a2, 28
400d3b82:	3888      	l32i.n	a8, a8, 12
400d3b84:	04bd      	mov.n	a11, a4
400d3b86:	05cd      	mov.n	a12, a5
400d3b88:	0008e0        	callx8	a8
400d3b8b:	0a2d      	mov.n	a2, a10
400d3b8d:	f01d      	retw.n
400d3b8f:	020c      	movi.n	a2, 0
400d3b91:	f01d      	retw.n
	...

400d3b94 <core::fmt::Formatter::pad>:
400d3b94:	006136        	entry	a1, 48
400d3b97:	4298      	l32i.n	a9, a2, 16
400d3b99:	2288      	l32i.n	a8, a2, 8
400d3b9b:	150c      	movi.n	a5, 1
400d3b9d:	051826        	beqi	a8, 1, 400d3ba6 <core::fmt::Formatter::pad+0x12>
400d3ba0:	021926        	beqi	a9, 1, 400d3ba6 <core::fmt::Formatter::pad+0x12>
400d3ba3:	006946        	j	400d3d4c <core::fmt::Formatter::pad+0x1b8>
400d3ba6:	021926        	beqi	a9, 1, 400d3bac <core::fmt::Formatter::pad+0x18>
400d3ba9:	004b06        	j	400d3cd9 <core::fmt::Formatter::pad+0x145>
400d3bac:	d34a      	add.n	a13, a3, a4
400d3bae:	52f8      	l32i.n	a15, a2, 20
400d3bb0:	ffa092        	movi	a9, 255
400d3bb3:	1199      	s32i.n	a9, a1, 4
400d3bb5:	fe7c      	movi.n	a14, -1
400d3bb7:	0b6c      	movi.n	a11, -32
400d3bb9:	0a7c      	movi.n	a10, -16
400d3bbb:	090c      	movi.n	a9, 0
400d3bbd:	037d      	mov.n	a7, a3
400d3bbf:	085f16        	beqz	a15, 400d3c48 <core::fmt::Formatter::pad+0xb4>
400d3bc2:	0189      	s32i.n	a8, a1, 0
400d3bc4:	2139      	s32i.n	a3, a1, 8
400d3bc6:	000246        	j	400d3bd3 <core::fmt::Formatter::pad+0x3f>
400d3bc9:	761b      	addi.n	a7, a6, 1
400d3bcb:	c09960        	sub	a9, a9, a6
400d3bce:	997a      	add.n	a9, a9, a7
400d3bd0:	001b86        	j	400d3c42 <core::fmt::Formatter::pad+0xae>
400d3bd3:	6e8f76        	loop	a15, 400d3c45 <core::fmt::Formatter::pad+0xb1>
400d3bd6:	076d      	mov.n	a6, a7
400d3bd8:	0296d7        	bne	a6, a13, 400d3bde <core::fmt::Formatter::pad+0x4a>
400d3bdb:	003e86        	j	400d3cd9 <core::fmt::Formatter::pad+0x145>
400d3bde:	000672        	l8ui	a7, a6, 0
400d3be1:	237700        	sext	a7, a7, 7
400d3be4:	e12e77        	blt	a14, a7, 400d3bc9 <core::fmt::Formatter::pad+0x35>
400d3be7:	4d37b7        	bltu	a7, a11, 400d3c38 <core::fmt::Formatter::pad+0xa4>
400d3bea:	4f37a7        	bltu	a7, a10, 400d3c3d <core::fmt::Formatter::pad+0xa9>
400d3bed:	04cd      	mov.n	a12, a4
400d3bef:	058d      	mov.n	a8, a5
400d3bf1:	1158      	l32i.n	a5, a1, 4
400d3bf3:	107750        	and	a7, a7, a5
400d3bf6:	010652        	l8ui	a5, a6, 1
400d3bf9:	f43c      	movi.n	a4, 63
400d3bfb:	105540        	and	a5, a5, a4
400d3bfe:	115540        	slli	a5, a5, 12
400d3c01:	020632        	l8ui	a3, a6, 2
400d3c04:	103340        	and	a3, a3, a4
400d3c07:	1133a0        	slli	a3, a3, 6
400d3c0a:	205350        	or	a5, a3, a5
400d3c0d:	030632        	l8ui	a3, a6, 3
400d3c10:	104340        	and	a4, a3, a4
400d3c13:	205540        	or	a5, a5, a4
400d3c16:	0177e0        	slli	a7, a7, 18
400d3c19:	f26741        	l32r	a4, 400d05b8 <_stext+0x598>
400d3c1c:	107740        	and	a7, a7, a4
400d3c1f:	207570        	or	a7, a5, a7
400d3c22:	f26651        	l32r	a5, 400d05bc <_stext+0x59c>
400d3c25:	029757        	bne	a7, a5, 400d3c2b <core::fmt::Formatter::pad+0x97>
400d3c28:	006f46        	j	400d3de9 <core::fmt::Formatter::pad+0x255>
400d3c2b:	764b      	addi.n	a7, a6, 4
400d3c2d:	085d      	mov.n	a5, a8
400d3c2f:	0c4d      	mov.n	a4, a12
400d3c31:	2138      	l32i.n	a3, a1, 8
400d3c33:	0188      	l32i.n	a8, a1, 0
400d3c35:	ffe486        	j	400d3bcb <core::fmt::Formatter::pad+0x37>
400d3c38:	762b      	addi.n	a7, a6, 2
400d3c3a:	ffe346        	j	400d3bcb <core::fmt::Formatter::pad+0x37>
400d3c3d:	763b      	addi.n	a7, a6, 3
400d3c3f:	ffe206        	j	400d3bcb <core::fmt::Formatter::pad+0x37>
400d3c42:	0020f0        	nop
400d3c45:	ffffc6        	j	400d3c48 <core::fmt::Formatter::pad+0xb4>
400d3c48:	0297d7        	bne	a7, a13, 400d3c4e <core::fmt::Formatter::pad+0xba>
400d3c4b:	002286        	j	400d3cd9 <core::fmt::Formatter::pad+0x145>
400d3c4e:	0007d2        	l8ui	a13, a7, 0
400d3c51:	23dd00        	sext	a13, a13, 7
400d3c54:	3c2ed7        	blt	a14, a13, 400d3c94 <core::fmt::Formatter::pad+0x100>
400d3c57:	393db7        	bltu	a13, a11, 400d3c94 <core::fmt::Formatter::pad+0x100>
400d3c5a:	363da7        	bltu	a13, a10, 400d3c94 <core::fmt::Formatter::pad+0x100>
400d3c5d:	11a8      	l32i.n	a10, a1, 4
400d3c5f:	10ada0        	and	a10, a13, a10
400d3c62:	0107b2        	l8ui	a11, a7, 1
400d3c65:	fc3c      	movi.n	a12, 63
400d3c67:	10bbc0        	and	a11, a11, a12
400d3c6a:	11bb40        	slli	a11, a11, 12
400d3c6d:	0207d2        	l8ui	a13, a7, 2
400d3c70:	10ddc0        	and	a13, a13, a12
400d3c73:	11dda0        	slli	a13, a13, 6
400d3c76:	20bdb0        	or	a11, a13, a11
400d3c79:	0307d2        	l8ui	a13, a7, 3
400d3c7c:	10cdc0        	and	a12, a13, a12
400d3c7f:	20bbc0        	or	a11, a11, a12
400d3c82:	01aae0        	slli	a10, a10, 18
400d3c85:	f24cc1        	l32r	a12, 400d05b8 <_stext+0x598>
400d3c88:	10aac0        	and	a10, a10, a12
400d3c8b:	20aba0        	or	a10, a11, a10
400d3c8e:	f24bb1        	l32r	a11, 400d05bc <_stext+0x59c>
400d3c91:	441ab7        	beq	a10, a11, 400d3cd9 <core::fmt::Formatter::pad+0x145>
400d3c94:	01f916        	beqz	a9, 400d3cb7 <core::fmt::Formatter::pad+0x123>
400d3c97:	28b947        	bgeu	a9, a4, 400d3cc3 <core::fmt::Formatter::pad+0x12f>
400d3c9a:	a39a      	add.n	a10, a3, a9
400d3c9c:	000aa2        	l8ui	a10, a10, 0
400d3c9f:	23aa00        	sext	a10, a10, 7
400d3ca2:	c0afb2        	movi	a11, -64
400d3ca5:	02aab7        	bge	a10, a11, 400d3cab <core::fmt::Formatter::pad+0x117>
400d3ca8:	0046c6        	j	400d3dc7 <core::fmt::Formatter::pad+0x233>
400d3cab:	09ad      	mov.n	a10, a9
400d3cad:	03bd      	mov.n	a11, a3
400d3caf:	090c      	movi.n	a9, 0
400d3cb1:	1d9b97        	bne	a11, a9, 400d3cd2 <core::fmt::Formatter::pad+0x13e>
400d3cb4:	000706        	j	400d3cd4 <core::fmt::Formatter::pad+0x140>
400d3cb7:	0a0c      	movi.n	a10, 0
400d3cb9:	03bd      	mov.n	a11, a3
400d3cbb:	090c      	movi.n	a9, 0
400d3cbd:	119b97        	bne	a11, a9, 400d3cd2 <core::fmt::Formatter::pad+0x13e>
400d3cc0:	000406        	j	400d3cd4 <core::fmt::Formatter::pad+0x140>
400d3cc3:	04ad      	mov.n	a10, a4
400d3cc5:	021947        	beq	a9, a4, 400d3ccb <core::fmt::Formatter::pad+0x137>
400d3cc8:	003ec6        	j	400d3dc7 <core::fmt::Formatter::pad+0x233>
400d3ccb:	03bd      	mov.n	a11, a3
400d3ccd:	090c      	movi.n	a9, 0
400d3ccf:	011b97        	beq	a11, a9, 400d3cd4 <core::fmt::Formatter::pad+0x140>
400d3cd2:	0a4d      	mov.n	a4, a10
400d3cd4:	011b97        	beq	a11, a9, 400d3cd9 <core::fmt::Formatter::pad+0x145>
400d3cd7:	0b3d      	mov.n	a3, a11
400d3cd9:	06f816        	beqz	a8, 400d3d4c <core::fmt::Formatter::pad+0x1b8>
400d3cdc:	3278      	l32i.n	a7, a2, 12
400d3cde:	33b4f6        	bgeui	a4, 16, 400d3d15 <core::fmt::Formatter::pad+0x181>
400d3ce1:	062416        	beqz	a4, 400d3d47 <core::fmt::Formatter::pad+0x1b3>
400d3ce4:	080c      	movi.n	a8, 0
400d3ce6:	190c      	movi.n	a9, 1
400d3ce8:	bfafb2        	movi	a11, -65
400d3ceb:	08ad      	mov.n	a10, a8
400d3ced:	03cd      	mov.n	a12, a3
400d3cef:	000186        	j	400d3cf9 <core::fmt::Formatter::pad+0x165>
400d3cf2:	aada      	add.n	a10, a10, a13
400d3cf4:	cc1b      	addi.n	a12, a12, 1
400d3cf6:	000546        	j	400d3d0f <core::fmt::Formatter::pad+0x17b>
400d3cf9:	0020f0        	nop
400d3cfc:	128476        	loop	a4, 400d3d12 <core::fmt::Formatter::pad+0x17e>
400d3cff:	000cd2        	l8ui	a13, a12, 0
400d3d02:	23ed00        	sext	a14, a13, 7
400d3d05:	09dd      	mov.n	a13, a9
400d3d07:	e72be7        	blt	a11, a14, 400d3cf2 <core::fmt::Formatter::pad+0x15e>
400d3d0a:	08dd      	mov.n	a13, a8
400d3d0c:	fff886        	j	400d3cf2 <core::fmt::Formatter::pad+0x15e>
400d3d0f:	0020f0        	nop
400d3d12:	000246        	j	400d3d1f <core::fmt::Formatter::pad+0x18b>
400d3d15:	f23e81        	l32r	a8, 400d0610 <_stext+0x5f0>
400d3d18:	03ad      	mov.n	a10, a3
400d3d1a:	04bd      	mov.n	a11, a4
400d3d1c:	0008e0        	callx8	a8
400d3d1f:	29ba77        	bgeu	a10, a7, 400d3d4c <core::fmt::Formatter::pad+0x1b8>
400d3d22:	2139      	s32i.n	a3, a1, 8
400d3d24:	1159      	s32i.n	a5, a1, 4
400d3d26:	200292        	l8ui	a9, a2, 32
400d3d29:	050c      	movi.n	a5, 0
400d3d2b:	380c      	movi.n	a8, 3
400d3d2d:	05bd      	mov.n	a11, a5
400d3d2f:	011987        	beq	a9, a8, 400d3d34 <core::fmt::Formatter::pad+0x1a0>
400d3d32:	09bd      	mov.n	a11, a9
400d3d34:	108b80        	and	a8, a11, a8
400d3d37:	c037a0        	sub	a3, a7, a10
400d3d3a:	0149      	s32i.n	a4, a1, 0
400d3d3c:	01e816        	beqz	a8, 400d3d5e <core::fmt::Formatter::pad+0x1ca>
400d3d3f:	221866        	bnei	a8, 1, 400d3d65 <core::fmt::Formatter::pad+0x1d1>
400d3d42:	090c      	movi.n	a9, 0
400d3d44:	0009c6        	j	400d3d6f <core::fmt::Formatter::pad+0x1db>
400d3d47:	0a0c      	movi.n	a10, 0
400d3d49:	d53a77        	bltu	a10, a7, 400d3d22 <core::fmt::Formatter::pad+0x18e>
400d3d4c:	62a8      	l32i.n	a10, a2, 24
400d3d4e:	7288      	l32i.n	a8, a2, 28
400d3d50:	3888      	l32i.n	a8, a8, 12
400d3d52:	03bd      	mov.n	a11, a3
400d3d54:	04cd      	mov.n	a12, a4
400d3d56:	0008e0        	callx8	a8
400d3d59:	102a50        	and	a2, a10, a5
400d3d5c:	f01d      	retw.n
400d3d5e:	039d      	mov.n	a9, a3
400d3d60:	053d      	mov.n	a3, a5
400d3d62:	000246        	j	400d3d6f <core::fmt::Formatter::pad+0x1db>
400d3d65:	418130        	srli	a8, a3, 1
400d3d68:	931b      	addi.n	a9, a3, 1
400d3d6a:	419190        	srli	a9, a9, 1
400d3d6d:	083d      	mov.n	a3, a8
400d3d6f:	1278      	l32i.n	a7, a2, 4
400d3d71:	7248      	l32i.n	a4, a2, 28
400d3d73:	6268      	l32i.n	a6, a2, 24
400d3d75:	092d      	mov.n	a2, a9
400d3d77:	161537        	beq	a5, a3, 400d3d91 <core::fmt::Formatter::pad+0x1fd>
400d3d7a:	4488      	l32i.n	a8, a4, 16
400d3d7c:	06ad      	mov.n	a10, a6
400d3d7e:	07bd      	mov.n	a11, a7
400d3d80:	0008e0        	callx8	a8
400d3d83:	551b      	addi.n	a5, a5, 1
400d3d85:	feea16        	beqz	a10, 400d3d77 <core::fmt::Formatter::pad+0x1e3>
400d3d88:	1158      	l32i.n	a5, a1, 4
400d3d8a:	05ad      	mov.n	a10, a5
400d3d8c:	102a50        	and	a2, a10, a5
400d3d8f:	f01d      	retw.n
400d3d91:	f20a81        	l32r	a8, 400d05bc <_stext+0x59c>
400d3d94:	1158      	l32i.n	a5, a1, 4
400d3d96:	05ad      	mov.n	a10, a5
400d3d98:	bd1787        	beq	a7, a8, 400d3d59 <core::fmt::Formatter::pad+0x1c5>
400d3d9b:	3488      	l32i.n	a8, a4, 12
400d3d9d:	06ad      	mov.n	a10, a6
400d3d9f:	21b8      	l32i.n	a11, a1, 8
400d3da1:	01c8      	l32i.n	a12, a1, 0
400d3da3:	0008e0        	callx8	a8
400d3da6:	0a8d      	mov.n	a8, a10
400d3da8:	05ad      	mov.n	a10, a5
400d3daa:	fab856        	bnez	a8, 400d3d59 <core::fmt::Formatter::pad+0x1c5>
400d3dad:	053d      	mov.n	a3, a5
400d3daf:	080c      	movi.n	a8, 0
400d3db1:	085d      	mov.n	a5, a8
400d3db3:	1f1527        	beq	a5, a2, 400d3dd6 <core::fmt::Formatter::pad+0x242>
400d3db6:	4488      	l32i.n	a8, a4, 16
400d3db8:	06ad      	mov.n	a10, a6
400d3dba:	07bd      	mov.n	a11, a7
400d3dbc:	0008e0        	callx8	a8
400d3dbf:	851b      	addi.n	a8, a5, 1
400d3dc1:	feca16        	beqz	a10, 400d3db1 <core::fmt::Formatter::pad+0x21d>
400d3dc4:	000406        	j	400d3dd8 <core::fmt::Formatter::pad+0x244>
400d3dc7:	0b0c      	movi.n	a11, 0
400d3dc9:	09ad      	mov.n	a10, a9
400d3dcb:	090c      	movi.n	a9, 0
400d3dcd:	021b97        	beq	a11, a9, 400d3dd3 <core::fmt::Formatter::pad+0x23f>
400d3dd0:	ffbf86        	j	400d3cd2 <core::fmt::Formatter::pad+0x13e>
400d3dd3:	ffbf46        	j	400d3cd4 <core::fmt::Formatter::pad+0x140>
400d3dd6:	025d      	mov.n	a5, a2
400d3dd8:	043527        	bltu	a5, a2, 400d3de0 <core::fmt::Formatter::pad+0x24c>
400d3ddb:	0a0c      	movi.n	a10, 0
400d3ddd:	000046        	j	400d3de2 <core::fmt::Formatter::pad+0x24e>
400d3de0:	1a0c      	movi.n	a10, 1
400d3de2:	035d      	mov.n	a5, a3
400d3de4:	102a50        	and	a2, a10, a5
400d3de7:	f01d      	retw.n
400d3de9:	085d      	mov.n	a5, a8
400d3deb:	0c4d      	mov.n	a4, a12
400d3ded:	2138      	l32i.n	a3, a1, 8
400d3def:	0188      	l32i.n	a8, a1, 0
400d3df1:	ee7856        	bnez	a8, 400d3cdc <core::fmt::Formatter::pad+0x148>
400d3df4:	ffd506        	j	400d3d4c <core::fmt::Formatter::pad+0x1b8>
	...

400d3df8 <<str as core::fmt::Debug>::fmt>:
400d3df8:	00c136        	entry	a1, 96
400d3dfb:	6478      	l32i.n	a7, a4, 24
400d3dfd:	7458      	l32i.n	a5, a4, 28
400d3dff:	4548      	l32i.n	a4, a5, 16
400d3e01:	2b2c      	movi.n	a11, 34
400d3e03:	07ad      	mov.n	a10, a7
400d3e05:	c1b9      	s32i.n	a11, a1, 48
400d3e07:	0004e0        	callx8	a4
400d3e0a:	160c      	movi.n	a6, 1
400d3e0c:	005a16        	beqz	a10, 400d3e15 <<str as core::fmt::Debug>::fmt+0x1d>
400d3e0f:	065d      	mov.n	a5, a6
400d3e11:	052d      	mov.n	a2, a5
400d3e13:	f01d      	retw.n
400d3e15:	b159      	s32i.n	a5, a1, 44
400d3e17:	2da316        	beqz	a3, 400d40f5 <<str as core::fmt::Debug>::fmt+0x2fd>
400d3e1a:	823a      	add.n	a8, a2, a3
400d3e1c:	1189      	s32i.n	a8, a1, 4
400d3e1e:	050c      	movi.n	a5, 0
400d3e20:	ffa082        	movi	a8, 255
400d3e23:	d189      	s32i.n	a8, a1, 52
400d3e25:	fa7c      	movi.n	a10, -1
400d3e27:	083c      	movi.n	a8, 48
400d3e29:	8189      	s32i.n	a8, a1, 32
400d3e2b:	029d      	mov.n	a9, a2
400d3e2d:	02ed      	mov.n	a14, a2
400d3e2f:	05dd      	mov.n	a13, a5
400d3e31:	9129      	s32i.n	a2, a1, 36
400d3e33:	2169      	s32i.n	a6, a1, 8
400d3e35:	31a9      	s32i.n	a10, a1, 12
400d3e37:	0139      	s32i.n	a3, a1, 0
400d3e39:	6199      	s32i.n	a9, a1, 24
400d3e3b:	000e82        	l8ui	a8, a14, 0
400d3e3e:	239800        	sext	a9, a8, 7
400d3e41:	09aa97        	bge	a10, a9, 400d3e4e <<str as core::fmt::Debug>::fmt+0x56>
400d3e44:	d188      	l32i.n	a8, a1, 52
400d3e46:	10a980        	and	a10, a9, a8
400d3e49:	ee1b      	addi.n	a14, a14, 1
400d3e4b:	001706        	j	400d3eab <<str as core::fmt::Debug>::fmt+0xb3>
400d3e4e:	010ea2        	l8ui	a10, a14, 1
400d3e51:	f83c      	movi.n	a8, 63
400d3e53:	10ba80        	and	a11, a10, a8
400d3e56:	fa1c      	movi.n	a10, 31
400d3e58:	10a9a0        	and	a10, a9, a10
400d3e5b:	dfafc2        	movi	a12, -33
400d3e5e:	36bc97        	bgeu	a12, a9, 400d3e98 <<str as core::fmt::Debug>::fmt+0xa0>
400d3e61:	020ec2        	l8ui	a12, a14, 2
400d3e64:	10cc80        	and	a12, a12, a8
400d3e67:	11bba0        	slli	a11, a11, 6
400d3e6a:	20bbc0        	or	a11, a11, a12
400d3e6d:	0c7c      	movi.n	a12, -16
400d3e6f:	3039c7        	bltu	a9, a12, 400d3ea3 <<str as core::fmt::Debug>::fmt+0xab>
400d3e72:	019ae0        	slli	a9, a10, 18
400d3e75:	f1d0a1        	l32r	a10, 400d05b8 <_stext+0x598>
400d3e78:	1099a0        	and	a9, a9, a10
400d3e7b:	030ea2        	l8ui	a10, a14, 3
400d3e7e:	108a80        	and	a8, a10, a8
400d3e81:	11aba0        	slli	a10, a11, 6
400d3e84:	208a80        	or	a8, a10, a8
400d3e87:	20a890        	or	a10, a8, a9
400d3e8a:	f1cc81        	l32r	a8, 400d05bc <_stext+0x59c>
400d3e8d:	029a87        	bne	a10, a8, 400d3e93 <<str as core::fmt::Debug>::fmt+0x9b>
400d3e90:	009206        	j	400d40dc <<str as core::fmt::Debug>::fmt+0x2e4>
400d3e93:	ee4b      	addi.n	a14, a14, 4
400d3e95:	000486        	j	400d3eab <<str as core::fmt::Debug>::fmt+0xb3>
400d3e98:	118aa0        	slli	a8, a10, 6
400d3e9b:	20a8b0        	or	a10, a8, a11
400d3e9e:	ee2b      	addi.n	a14, a14, 2
400d3ea0:	0001c6        	j	400d3eab <<str as core::fmt::Debug>::fmt+0xb3>
400d3ea3:	118a40        	slli	a8, a10, 12
400d3ea6:	20ab80        	or	a10, a11, a8
400d3ea9:	ee3b      	addi.n	a14, a14, 3
400d3eab:	260c      	movi.n	a6, 2
400d3ead:	c188      	l32i.n	a8, a1, 48
400d3eaf:	71d9      	s32i.n	a13, a1, 28
400d3eb1:	51e9      	s32i.n	a14, a1, 20
400d3eb3:	1438a7        	bltu	a8, a10, 400d3ecb <<str as core::fmt::Debug>::fmt+0xd3>
400d3eb6:	f1d881        	l32r	a8, 400d0618 <_stext+0x5f8>
400d3eb9:	a08a80        	addx4	a8, a10, a8
400d3ebc:	0888      	l32i.n	a8, a8, 0
400d3ebe:	8198      	l32i.n	a9, a1, 32
400d3ec0:	e199      	s32i.n	a9, a1, 56
400d3ec2:	0008a0        	jx	a8
400d3ec5:	74a082        	movi	a8, 116
400d3ec8:	000e86        	j	400d3f06 <<str as core::fmt::Debug>::fmt+0x10e>
400d3ecb:	c85c      	movi.n	a8, 92
400d3ecd:	099a87        	bne	a10, a8, 400d3eda <<str as core::fmt::Debug>::fmt+0xe2>
400d3ed0:	e1a9      	s32i.n	a10, a1, 56
400d3ed2:	41a9      	s32i.n	a10, a1, 16
400d3ed4:	38bd57        	bgeu	a13, a5, 400d3f10 <<str as core::fmt::Debug>::fmt+0x118>
400d3ed7:	0096c6        	j	400d4136 <<str as core::fmt::Debug>::fmt+0x33e>
400d3eda:	f1d081        	l32r	a8, 400d061c <_stext+0x5fc>
400d3edd:	0a2d      	mov.n	a2, a10
400d3edf:	0008e0        	callx8	a8
400d3ee2:	15da56        	bnez	a10, 400d4043 <<str as core::fmt::Debug>::fmt+0x24b>
400d3ee5:	f1ce81        	l32r	a8, 400d0620 <_stext+0x600>
400d3ee8:	02ad      	mov.n	a10, a2
400d3eea:	0008e0        	callx8	a8
400d3eed:	152a16        	beqz	a10, 400d4043 <<str as core::fmt::Debug>::fmt+0x24b>
400d3ef0:	9128      	l32i.n	a2, a1, 36
400d3ef2:	2168      	l32i.n	a6, a1, 8
400d3ef4:	7198      	l32i.n	a9, a1, 28
400d3ef6:	31a8      	l32i.n	a10, a1, 12
400d3ef8:	51e8      	l32i.n	a14, a1, 20
400d3efa:	007346        	j	400d40cb <<str as core::fmt::Debug>::fmt+0x2d3>
400d3efd:	6ea082        	movi	a8, 110
400d3f00:	000086        	j	400d3f06 <<str as core::fmt::Debug>::fmt+0x10e>
400d3f03:	72a082        	movi	a8, 114
400d3f06:	e189      	s32i.n	a8, a1, 56
400d3f08:	41a9      	s32i.n	a10, a1, 16
400d3f0a:	02bd57        	bgeu	a13, a5, 400d3f10 <<str as core::fmt::Debug>::fmt+0x118>
400d3f0d:	008946        	j	400d4136 <<str as core::fmt::Debug>::fmt+0x33e>
400d3f10:	9188      	l32i.n	a8, a1, 36
400d3f12:	b85a      	add.n	a11, a8, a5
400d3f14:	017516        	beqz	a5, 400d3f2f <<str as core::fmt::Debug>::fmt+0x137>
400d3f17:	0eb537        	bgeu	a5, a3, 400d3f29 <<str as core::fmt::Debug>::fmt+0x131>
400d3f1a:	000b82        	l8ui	a8, a11, 0
400d3f1d:	238800        	sext	a8, a8, 7
400d3f20:	c0af92        	movi	a9, -64
400d3f23:	08a897        	bge	a8, a9, 400d3f2f <<str as core::fmt::Debug>::fmt+0x137>
400d3f26:	008306        	j	400d4136 <<str as core::fmt::Debug>::fmt+0x33e>
400d3f29:	021537        	beq	a5, a3, 400d3f2f <<str as core::fmt::Debug>::fmt+0x137>
400d3f2c:	008186        	j	400d4136 <<str as core::fmt::Debug>::fmt+0x33e>
400d3f2f:	01bd16        	beqz	a13, 400d3f4e <<str as core::fmt::Debug>::fmt+0x156>
400d3f32:	12bd37        	bgeu	a13, a3, 400d3f48 <<str as core::fmt::Debug>::fmt+0x150>
400d3f35:	9188      	l32i.n	a8, a1, 36
400d3f37:	88da      	add.n	a8, a8, a13
400d3f39:	000882        	l8ui	a8, a8, 0
400d3f3c:	238800        	sext	a8, a8, 7
400d3f3f:	bfaf92        	movi	a9, -65
400d3f42:	082987        	blt	a9, a8, 400d3f4e <<str as core::fmt::Debug>::fmt+0x156>
400d3f45:	007b46        	j	400d4136 <<str as core::fmt::Debug>::fmt+0x33e>
400d3f48:	021d37        	beq	a13, a3, 400d3f4e <<str as core::fmt::Debug>::fmt+0x156>
400d3f4b:	0079c6        	j	400d4136 <<str as core::fmt::Debug>::fmt+0x33e>
400d3f4e:	c0cd50        	sub	a12, a13, a5
400d3f51:	b188      	l32i.n	a8, a1, 44
400d3f53:	3888      	l32i.n	a8, a8, 12
400d3f55:	07ad      	mov.n	a10, a7
400d3f57:	0008e0        	callx8	a8
400d3f5a:	1b9a56        	bnez	a10, 400d4117 <<str as core::fmt::Debug>::fmt+0x31f>
400d3f5d:	c35c      	movi.n	a3, 92
400d3f5f:	0002c6        	j	400d3f6e <<str as core::fmt::Debug>::fmt+0x176>
400d3f62:	060c      	movi.n	a6, 0
400d3f64:	e1b8      	l32i.n	a11, a1, 56
400d3f66:	07ad      	mov.n	a10, a7
400d3f68:	0004e0        	callx8	a4
400d3f6b:	ea2a56        	bnez	a10, 400d3e11 <<str as core::fmt::Debug>::fmt+0x19>
400d3f6e:	150c      	movi.n	a5, 1
400d3f70:	f1b081        	l32r	a8, 400d0630 <_stext+0x610>
400d3f73:	a08680        	addx4	a8, a6, a8
400d3f76:	0888      	l32i.n	a8, a8, 0
400d3f78:	03bd      	mov.n	a11, a3
400d3f7a:	056d      	mov.n	a6, a5
400d3f7c:	0008a0        	jx	a8
400d3f7f:	d188      	l32i.n	a8, a1, 52
400d3f81:	108280        	and	a8, a2, a8
400d3f84:	f1ac91        	l32r	a9, 400d0634 <_stext+0x614>
400d3f87:	a08890        	addx4	a8, a8, a9
400d3f8a:	0888      	l32i.n	a8, a8, 0
400d3f8c:	0008a0        	jx	a8
400d3f8f:	00af82        	movi	a8, 0xffffff00
400d3f92:	102280        	and	a2, a2, a8
400d3f95:	360c      	movi.n	a6, 3
400d3f97:	7da0b2        	movi	a11, 125
400d3f9a:	fff206        	j	400d3f66 <<str as core::fmt::Debug>::fmt+0x16e>
400d3f9d:	00af82        	movi	a8, 0xffffff00
400d3fa0:	108280        	and	a8, a2, a8
400d3fa3:	360c      	movi.n	a6, 3
400d3fa5:	202860        	or	a2, a8, a6
400d3fa8:	75a0b2        	movi	a11, 117
400d3fab:	ffedc6        	j	400d3f66 <<str as core::fmt::Debug>::fmt+0x16e>
400d3fae:	a1a8      	l32i.n	a10, a1, 40
400d3fb0:	118ae0        	slli	a8, a10, 2
400d3fb3:	c91c      	movi.n	a9, 28
400d3fb5:	108890        	and	a8, a8, a9
400d3fb8:	400800        	ssr	a8
400d3fbb:	e188      	l32i.n	a8, a1, 56
400d3fbd:	918080        	srl	a8, a8
400d3fc0:	f90c      	movi.n	a9, 15
400d3fc2:	108890        	and	a8, a8, a9
400d3fc5:	a90c      	movi.n	a9, 10
400d3fc7:	343897        	bltu	a8, a9, 400d3fff <<str as core::fmt::Debug>::fmt+0x207>
400d3fca:	795c      	movi.n	a9, 87
400d3fcc:	b98a      	add.n	a11, a9, a8
400d3fce:	034a16        	beqz	a10, 400d4006 <<str as core::fmt::Debug>::fmt+0x20e>
400d3fd1:	aa0b      	addi.n	a10, a10, -1
400d3fd3:	a1a9      	s32i.n	a10, a1, 40
400d3fd5:	360c      	movi.n	a6, 3
400d3fd7:	ffe2c6        	j	400d3f66 <<str as core::fmt::Debug>::fmt+0x16e>
400d3fda:	00af82        	movi	a8, 0xffffff00
400d3fdd:	108280        	and	a8, a2, a8
400d3fe0:	290c      	movi.n	a9, 2
400d3fe2:	202890        	or	a2, a8, a9
400d3fe5:	360c      	movi.n	a6, 3
400d3fe7:	7ba0b2        	movi	a11, 123
400d3fea:	ffde06        	j	400d3f66 <<str as core::fmt::Debug>::fmt+0x16e>
400d3fed:	00af82        	movi	a8, 0xffffff00
400d3ff0:	108280        	and	a8, a2, a8
400d3ff3:	490c      	movi.n	a9, 4
400d3ff5:	202890        	or	a2, a8, a9
400d3ff8:	360c      	movi.n	a6, 3
400d3ffa:	03bd      	mov.n	a11, a3
400d3ffc:	ffd986        	j	400d3f66 <<str as core::fmt::Debug>::fmt+0x16e>
400d3fff:	093c      	movi.n	a9, 48
400d4001:	b98a      	add.n	a11, a9, a8
400d4003:	fcaa56        	bnez	a10, 400d3fd1 <<str as core::fmt::Debug>::fmt+0x1d9>
400d4006:	00af82        	movi	a8, 0xffffff00
400d4009:	108280        	and	a8, a2, a8
400d400c:	190c      	movi.n	a9, 1
400d400e:	202890        	or	a2, a8, a9
400d4011:	360c      	movi.n	a6, 3
400d4013:	ffd3c6        	j	400d3f66 <<str as core::fmt::Debug>::fmt+0x16e>
400d4016:	41b8      	l32i.n	a11, a1, 16
400d4018:	10ebf6        	bgeui	a11, 128, 400d402c <<str as core::fmt::Debug>::fmt+0x234>
400d401b:	180c      	movi.n	a8, 1
400d401d:	0138      	l32i.n	a3, a1, 0
400d401f:	9128      	l32i.n	a2, a1, 36
400d4021:	2168      	l32i.n	a6, a1, 8
400d4023:	7198      	l32i.n	a9, a1, 28
400d4025:	31a8      	l32i.n	a10, a1, 12
400d4027:	51e8      	l32i.n	a14, a1, 20
400d4029:	002706        	j	400d40c9 <<str as core::fmt::Debug>::fmt+0x2d1>
400d402c:	f01181        	l32r	a8, 400d0070 <_stext+0x50>
400d402f:	0138      	l32i.n	a3, a1, 0
400d4031:	9128      	l32i.n	a2, a1, 36
400d4033:	2168      	l32i.n	a6, a1, 8
400d4035:	7198      	l32i.n	a9, a1, 28
400d4037:	31a8      	l32i.n	a10, a1, 12
400d4039:	51e8      	l32i.n	a14, a1, 20
400d403b:	7dbb87        	bgeu	a11, a8, 400d40bc <<str as core::fmt::Debug>::fmt+0x2c4>
400d403e:	280c      	movi.n	a8, 2
400d4040:	002146        	j	400d40c9 <<str as core::fmt::Debug>::fmt+0x2d1>
400d4043:	360c      	movi.n	a6, 3
400d4045:	180c      	movi.n	a8, 1
400d4047:	208280        	or	a8, a2, a8
400d404a:	419180        	srli	a9, a8, 1
400d404d:	208890        	or	a8, a8, a9
400d4050:	419280        	srli	a9, a8, 2
400d4053:	208890        	or	a8, a8, a9
400d4056:	419480        	srli	a9, a8, 4
400d4059:	208890        	or	a8, a8, a9
400d405c:	419880        	srli	a9, a8, 8
400d405f:	208890        	or	a8, a8, a9
400d4062:	091c      	movi.n	a9, 16
400d4064:	400900        	ssr	a9
400d4067:	919080        	srl	a9, a8
400d406a:	208890        	or	a8, a8, a9
400d406d:	3198      	l32i.n	a9, a1, 12
400d406f:	308890        	xor	a8, a8, a9
400d4072:	419180        	srli	a9, a8, 1
400d4075:	f16ba1        	l32r	a10, 400d0624 <_stext+0x604>
400d4078:	1099a0        	and	a9, a9, a10
400d407b:	c08890        	sub	a8, a8, a9
400d407e:	f16a91        	l32r	a9, 400d0628 <_stext+0x608>
400d4081:	10a890        	and	a10, a8, a9
400d4084:	418280        	srli	a8, a8, 2
400d4087:	108890        	and	a8, a8, a9
400d408a:	8a8a      	add.n	a8, a10, a8
400d408c:	419480        	srli	a9, a8, 4
400d408f:	889a      	add.n	a8, a8, a9
400d4091:	f16691        	l32r	a9, 400d062c <_stext+0x60c>
400d4094:	108890        	and	a8, a8, a9
400d4097:	f10d91        	l32r	a9, 400d04cc <_stext+0x4ac>
400d409a:	828890        	mull	a8, a8, a9
400d409d:	a91c      	movi.n	a9, 26
400d409f:	400900        	ssr	a9
400d40a2:	918080        	srl	a8, a8
400d40a5:	790c      	movi.n	a9, 7
400d40a7:	308890        	xor	a8, a8, a9
400d40aa:	a189      	s32i.n	a8, a1, 40
400d40ac:	02ad      	mov.n	a10, a2
400d40ae:	520c      	movi.n	a2, 5
400d40b0:	e1a9      	s32i.n	a10, a1, 56
400d40b2:	71d8      	l32i.n	a13, a1, 28
400d40b4:	41a9      	s32i.n	a10, a1, 16
400d40b6:	7c3d57        	bltu	a13, a5, 400d4136 <<str as core::fmt::Debug>::fmt+0x33e>
400d40b9:	ff94c6        	j	400d3f10 <<str as core::fmt::Debug>::fmt+0x118>
400d40bc:	efee81        	l32r	a8, 400d0074 <_stext+0x54>
400d40bf:	043b87        	bltu	a11, a8, 400d40c7 <<str as core::fmt::Debug>::fmt+0x2cf>
400d40c2:	480c      	movi.n	a8, 4
400d40c4:	000046        	j	400d40c9 <<str as core::fmt::Debug>::fmt+0x2d1>
400d40c7:	380c      	movi.n	a8, 3
400d40c9:	589a      	add.n	a5, a8, a9
400d40cb:	6188      	l32i.n	a8, a1, 24
400d40cd:	c08980        	sub	a8, a9, a8
400d40d0:	d8ea      	add.n	a13, a8, a14
400d40d2:	0e9d      	mov.n	a9, a14
400d40d4:	1188      	l32i.n	a8, a1, 4
400d40d6:	021e87        	beq	a14, a8, 400d40dc <<str as core::fmt::Debug>::fmt+0x2e4>
400d40d9:	ff5706        	j	400d3e39 <<str as core::fmt::Debug>::fmt+0x41>
400d40dc:	015516        	beqz	a5, 400d40f5 <<str as core::fmt::Debug>::fmt+0x2fd>
400d40df:	3ab537        	bgeu	a5, a3, 400d411d <<str as core::fmt::Debug>::fmt+0x325>
400d40e2:	825a      	add.n	a8, a2, a5
400d40e4:	000882        	l8ui	a8, a8, 0
400d40e7:	238800        	sext	a8, a8, 7
400d40ea:	bfaf92        	movi	a9, -65
400d40ed:	31a987        	bge	a9, a8, 400d4122 <<str as core::fmt::Debug>::fmt+0x32a>
400d40f0:	058d      	mov.n	a8, a5
400d40f2:	000046        	j	400d40f7 <<str as core::fmt::Debug>::fmt+0x2ff>
400d40f5:	080c      	movi.n	a8, 0
400d40f7:	b28a      	add.n	a11, a2, a8
400d40f9:	c0c380        	sub	a12, a3, a8
400d40fc:	b188      	l32i.n	a8, a1, 44
400d40fe:	3888      	l32i.n	a8, a8, 12
400d4100:	07ad      	mov.n	a10, a7
400d4102:	0008e0        	callx8	a8
400d4105:	065d      	mov.n	a5, a6
400d4107:	d06a56        	bnez	a10, 400d3e11 <<str as core::fmt::Debug>::fmt+0x19>
400d410a:	2b2c      	movi.n	a11, 34
400d410c:	07ad      	mov.n	a10, a7
400d410e:	0004e0        	callx8	a4
400d4111:	0a5d      	mov.n	a5, a10
400d4113:	052d      	mov.n	a2, a5
400d4115:	f01d      	retw.n
400d4117:	2158      	l32i.n	a5, a1, 8
400d4119:	052d      	mov.n	a2, a5
400d411b:	f01d      	retw.n
400d411d:	038d      	mov.n	a8, a3
400d411f:	d41537        	beq	a5, a3, 400d40f7 <<str as core::fmt::Debug>::fmt+0x2ff>
400d4122:	f145e1        	l32r	a14, 400d0638 <_stext+0x618>
400d4125:	f0c081        	l32r	a8, 400d0428 <_stext+0x408>
400d4128:	02ad      	mov.n	a10, a2
400d412a:	03bd      	mov.n	a11, a3
400d412c:	05cd      	mov.n	a12, a5
400d412e:	03dd      	mov.n	a13, a3
400d4130:	0008e0        	callx8	a8
400d4133:	0041f0        	break	1, 15
400d4136:	f141e1        	l32r	a14, 400d063c <_stext+0x61c>
400d4139:	f0bb81        	l32r	a8, 400d0428 <_stext+0x408>
400d413c:	91a8      	l32i.n	a10, a1, 36
400d413e:	03bd      	mov.n	a11, a3
400d4140:	05cd      	mov.n	a12, a5
400d4142:	0008e0        	callx8	a8
400d4145:	0041f0        	break	1, 15

400d4148 <<str as core::fmt::Display>::fmt>:
400d4148:	004136        	entry	a1, 32
400d414b:	f13d81        	l32r	a8, 400d0640 <_stext+0x620>
400d414e:	04ad      	mov.n	a10, a4
400d4150:	02bd      	mov.n	a11, a2
400d4152:	03cd      	mov.n	a12, a3
400d4154:	0008e0        	callx8	a8
400d4157:	0a2d      	mov.n	a2, a10
400d4159:	f01d      	retw.n
	...

400d415c <<char as core::fmt::Debug>::fmt>:
400d415c:	008136        	entry	a1, 64
400d415f:	026d      	mov.n	a6, a2
400d4161:	6378      	l32i.n	a7, a3, 24
400d4163:	7388      	l32i.n	a8, a3, 28
400d4165:	4888      	l32i.n	a8, a8, 16
400d4167:	752c      	movi.n	a5, 39
400d4169:	07ad      	mov.n	a10, a7
400d416b:	05bd      	mov.n	a11, a5
400d416d:	4189      	s32i.n	a8, a1, 16
400d416f:	0008e0        	callx8	a8
400d4172:	120c      	movi.n	a2, 1
400d4174:	24ea56        	bnez	a10, 400d43c6 <<char as core::fmt::Debug>::fmt+0x26a>
400d4177:	0668      	l32i.n	a6, a6, 0
400d4179:	043c      	movi.n	a4, 48
400d417b:	280c      	movi.n	a8, 2
400d417d:	330c      	movi.n	a3, 3
400d417f:	c95c      	movi.n	a9, 92
400d4181:	1199      	s32i.n	a9, a1, 4
400d4183:	090c      	movi.n	a9, 0
400d4185:	3199      	s32i.n	a9, a1, 12
400d4187:	f13091        	l32r	a9, 400d0648 <_stext+0x628>
400d418a:	2199      	s32i.n	a9, a1, 8
400d418c:	0129      	s32i.n	a2, a1, 0
400d418e:	1d3567        	bltu	a5, a6, 400d41af <<char as core::fmt::Debug>::fmt+0x53>
400d4191:	f12c91        	l32r	a9, 400d0644 <_stext+0x624>
400d4194:	a09690        	addx4	a9, a6, a9
400d4197:	0998      	l32i.n	a9, a9, 0
400d4199:	0009a0        	jx	a9
400d419c:	74a042        	movi	a4, 116
400d419f:	280c      	movi.n	a8, 2
400d41a1:	2198      	l32i.n	a9, a1, 8
400d41a3:	a08890        	addx4	a8, a8, a9
400d41a6:	0888      	l32i.n	a8, a8, 0
400d41a8:	3138      	l32i.n	a3, a1, 12
400d41aa:	046d      	mov.n	a6, a4
400d41ac:	0008a0        	jx	a8
400d41af:	c85c      	movi.n	a8, 92
400d41b1:	0f9687        	bne	a6, a8, 400d41c4 <<char as core::fmt::Debug>::fmt+0x68>
400d41b4:	280c      	movi.n	a8, 2
400d41b6:	2198      	l32i.n	a9, a1, 8
400d41b8:	a08890        	addx4	a8, a8, a9
400d41bb:	0888      	l32i.n	a8, a8, 0
400d41bd:	064d      	mov.n	a4, a6
400d41bf:	3138      	l32i.n	a3, a1, 12
400d41c1:	0008a0        	jx	a8
400d41c4:	f11681        	l32r	a8, 400d061c <_stext+0x5fc>
400d41c7:	06ad      	mov.n	a10, a6
400d41c9:	0008e0        	callx8	a8
400d41cc:	0aca16        	beqz	a10, 400d427c <<char as core::fmt::Debug>::fmt+0x120>
400d41cf:	180c      	movi.n	a8, 1
400d41d1:	208680        	or	a8, a6, a8
400d41d4:	419180        	srli	a9, a8, 1
400d41d7:	208890        	or	a8, a8, a9
400d41da:	419280        	srli	a9, a8, 2
400d41dd:	208890        	or	a8, a8, a9
400d41e0:	419480        	srli	a9, a8, 4
400d41e3:	208890        	or	a8, a8, a9
400d41e6:	419880        	srli	a9, a8, 8
400d41e9:	208890        	or	a8, a8, a9
400d41ec:	091c      	movi.n	a9, 16
400d41ee:	400900        	ssr	a9
400d41f1:	919080        	srl	a9, a8
400d41f4:	208890        	or	a8, a8, a9
400d41f7:	f97c      	movi.n	a9, -1
400d41f9:	308890        	xor	a8, a8, a9
400d41fc:	419180        	srli	a9, a8, 1
400d41ff:	f109a1        	l32r	a10, 400d0624 <_stext+0x604>
400d4202:	1099a0        	and	a9, a9, a10
400d4205:	c08890        	sub	a8, a8, a9
400d4208:	f10891        	l32r	a9, 400d0628 <_stext+0x608>
400d420b:	10a890        	and	a10, a8, a9
400d420e:	418280        	srli	a8, a8, 2
400d4211:	108890        	and	a8, a8, a9
400d4214:	8a8a      	add.n	a8, a10, a8
400d4216:	419480        	srli	a9, a8, 4
400d4219:	889a      	add.n	a8, a8, a9
400d421b:	f10491        	l32r	a9, 400d062c <_stext+0x60c>
400d421e:	108890        	and	a8, a8, a9
400d4221:	f0aa91        	l32r	a9, 400d04cc <_stext+0x4ac>
400d4224:	828890        	mull	a8, a8, a9
400d4227:	a91c      	movi.n	a9, 26
400d4229:	400900        	ssr	a9
400d422c:	918080        	srl	a8, a8
400d422f:	790c      	movi.n	a9, 7
400d4231:	302890        	xor	a2, a8, a9
400d4234:	550c      	movi.n	a5, 5
400d4236:	380c      	movi.n	a8, 3
400d4238:	2198      	l32i.n	a9, a1, 8
400d423a:	a08890        	addx4	a8, a8, a9
400d423d:	0888      	l32i.n	a8, a8, 0
400d423f:	064d      	mov.n	a4, a6
400d4241:	3138      	l32i.n	a3, a1, 12
400d4243:	0008a0        	jx	a8
400d4246:	6ea042        	movi	a4, 110
400d4249:	280c      	movi.n	a8, 2
400d424b:	2198      	l32i.n	a9, a1, 8
400d424d:	a08890        	addx4	a8, a8, a9
400d4250:	0888      	l32i.n	a8, a8, 0
400d4252:	3138      	l32i.n	a3, a1, 12
400d4254:	046d      	mov.n	a6, a4
400d4256:	0008a0        	jx	a8
400d4259:	72a042        	movi	a4, 114
400d425c:	280c      	movi.n	a8, 2
400d425e:	2198      	l32i.n	a9, a1, 8
400d4260:	a08890        	addx4	a8, a8, a9
400d4263:	0888      	l32i.n	a8, a8, 0
400d4265:	3138      	l32i.n	a3, a1, 12
400d4267:	046d      	mov.n	a6, a4
400d4269:	0008a0        	jx	a8
400d426c:	280c      	movi.n	a8, 2
400d426e:	2198      	l32i.n	a9, a1, 8
400d4270:	a08890        	addx4	a8, a8, a9
400d4273:	0888      	l32i.n	a8, a8, 0
400d4275:	064d      	mov.n	a4, a6
400d4277:	3138      	l32i.n	a3, a1, 12
400d4279:	0008a0        	jx	a8
400d427c:	f0e981        	l32r	a8, 400d0620 <_stext+0x600>
400d427f:	06ad      	mov.n	a10, a6
400d4281:	0008e0        	callx8	a8
400d4284:	180c      	movi.n	a8, 1
400d4286:	002a16        	beqz	a10, 400d428c <<char as core::fmt::Debug>::fmt+0x130>
400d4289:	001a06        	j	400d42f5 <<char as core::fmt::Debug>::fmt+0x199>
400d428c:	180c      	movi.n	a8, 1
400d428e:	208680        	or	a8, a6, a8
400d4291:	419180        	srli	a9, a8, 1
400d4294:	208890        	or	a8, a8, a9
400d4297:	419280        	srli	a9, a8, 2
400d429a:	208890        	or	a8, a8, a9
400d429d:	419480        	srli	a9, a8, 4
400d42a0:	208890        	or	a8, a8, a9
400d42a3:	419880        	srli	a9, a8, 8
400d42a6:	208890        	or	a8, a8, a9
400d42a9:	091c      	movi.n	a9, 16
400d42ab:	400900        	ssr	a9
400d42ae:	919080        	srl	a9, a8
400d42b1:	208890        	or	a8, a8, a9
400d42b4:	f97c      	movi.n	a9, -1
400d42b6:	308890        	xor	a8, a8, a9
400d42b9:	419180        	srli	a9, a8, 1
400d42bc:	f0daa1        	l32r	a10, 400d0624 <_stext+0x604>
400d42bf:	1099a0        	and	a9, a9, a10
400d42c2:	c08890        	sub	a8, a8, a9
400d42c5:	f0d891        	l32r	a9, 400d0628 <_stext+0x608>
400d42c8:	10a890        	and	a10, a8, a9
400d42cb:	418280        	srli	a8, a8, 2
400d42ce:	108890        	and	a8, a8, a9
400d42d1:	8a8a      	add.n	a8, a10, a8
400d42d3:	419480        	srli	a9, a8, 4
400d42d6:	889a      	add.n	a8, a8, a9
400d42d8:	f0d591        	l32r	a9, 400d062c <_stext+0x60c>
400d42db:	108890        	and	a8, a8, a9
400d42de:	f07b91        	l32r	a9, 400d04cc <_stext+0x4ac>
400d42e1:	828890        	mull	a8, a8, a9
400d42e4:	a91c      	movi.n	a9, 26
400d42e6:	400900        	ssr	a9
400d42e9:	918080        	srl	a8, a8
400d42ec:	790c      	movi.n	a9, 7
400d42ee:	302890        	xor	a2, a8, a9
400d42f1:	550c      	movi.n	a5, 5
400d42f3:	038d      	mov.n	a8, a3
400d42f5:	064d      	mov.n	a4, a6
400d42f7:	2198      	l32i.n	a9, a1, 8
400d42f9:	a08890        	addx4	a8, a8, a9
400d42fc:	0888      	l32i.n	a8, a8, 0
400d42fe:	3138      	l32i.n	a3, a1, 12
400d4300:	046d      	mov.n	a6, a4
400d4302:	0008a0        	jx	a8
400d4305:	07ad      	mov.n	a10, a7
400d4307:	06bd      	mov.n	a11, a6
400d4309:	4188      	l32i.n	a8, a1, 16
400d430b:	0008e0        	callx8	a8
400d430e:	0a5a56        	bnez	a10, 400d43b7 <<char as core::fmt::Debug>::fmt+0x25b>
400d4311:	2188      	l32i.n	a8, a1, 8
400d4313:	a08380        	addx4	a8, a3, a8
400d4316:	0888      	l32i.n	a8, a8, 0
400d4318:	3138      	l32i.n	a3, a1, 12
400d431a:	046d      	mov.n	a6, a4
400d431c:	0008a0        	jx	a8
400d431f:	130c      	movi.n	a3, 1
400d4321:	001f46        	j	400d43a2 <<char as core::fmt::Debug>::fmt+0x246>
400d4324:	ffa082        	movi	a8, 255
400d4327:	108580        	and	a8, a5, a8
400d432a:	f0c891        	l32r	a9, 400d064c <_stext+0x62c>
400d432d:	a08890        	addx4	a8, a8, a9
400d4330:	0888      	l32i.n	a8, a8, 0
400d4332:	0008a0        	jx	a8
400d4335:	00af82        	movi	a8, 0xffffff00
400d4338:	105580        	and	a5, a5, a8
400d433b:	7da062        	movi	a6, 125
400d433e:	330c      	movi.n	a3, 3
400d4340:	fff046        	j	400d4305 <<char as core::fmt::Debug>::fmt+0x1a9>
400d4343:	02cd      	mov.n	a12, a2
400d4345:	118ce0        	slli	a8, a12, 2
400d4348:	c91c      	movi.n	a9, 28
400d434a:	108890        	and	a8, a8, a9
400d434d:	400800        	ssr	a8
400d4350:	918040        	srl	a8, a4
400d4353:	f90c      	movi.n	a9, 15
400d4355:	108890        	and	a8, a8, a9
400d4358:	7a5c      	movi.n	a10, 87
400d435a:	093c      	movi.n	a9, 48
400d435c:	ab0c      	movi.n	a11, 10
400d435e:	0138b7        	bltu	a8, a11, 400d4363 <<char as core::fmt::Debug>::fmt+0x207>
400d4361:	0a9d      	mov.n	a9, a10
400d4363:	698a      	add.n	a6, a9, a8
400d4365:	03ec16        	beqz	a12, 400d43a7 <<char as core::fmt::Debug>::fmt+0x24b>
400d4368:	cc0b      	addi.n	a12, a12, -1
400d436a:	0c2d      	mov.n	a2, a12
400d436c:	330c      	movi.n	a3, 3
400d436e:	ffe4c6        	j	400d4305 <<char as core::fmt::Debug>::fmt+0x1a9>
400d4371:	00af82        	movi	a8, 0xffffff00
400d4374:	108580        	and	a8, a5, a8
400d4377:	290c      	movi.n	a9, 2
400d4379:	205890        	or	a5, a8, a9
400d437c:	7ba062        	movi	a6, 123
400d437f:	330c      	movi.n	a3, 3
400d4381:	ffe006        	j	400d4305 <<char as core::fmt::Debug>::fmt+0x1a9>
400d4384:	00af82        	movi	a8, 0xffffff00
400d4387:	108580        	and	a8, a5, a8
400d438a:	330c      	movi.n	a3, 3
400d438c:	205830        	or	a5, a8, a3
400d438f:	75a062        	movi	a6, 117
400d4392:	ffdbc6        	j	400d4305 <<char as core::fmt::Debug>::fmt+0x1a9>
400d4395:	00af82        	movi	a8, 0xffffff00
400d4398:	108580        	and	a8, a5, a8
400d439b:	490c      	movi.n	a9, 4
400d439d:	205890        	or	a5, a8, a9
400d43a0:	330c      	movi.n	a3, 3
400d43a2:	1168      	l32i.n	a6, a1, 4
400d43a4:	ffd746        	j	400d4305 <<char as core::fmt::Debug>::fmt+0x1a9>
400d43a7:	00af82        	movi	a8, 0xffffff00
400d43aa:	108580        	and	a8, a5, a8
400d43ad:	190c      	movi.n	a9, 1
400d43af:	205890        	or	a5, a8, a9
400d43b2:	330c      	movi.n	a3, 3
400d43b4:	ffd346        	j	400d4305 <<char as core::fmt::Debug>::fmt+0x1a9>
400d43b7:	0128      	l32i.n	a2, a1, 0
400d43b9:	f01d      	retw.n
400d43bb:	7b2c      	movi.n	a11, 39
400d43bd:	07ad      	mov.n	a10, a7
400d43bf:	4188      	l32i.n	a8, a1, 16
400d43c1:	0008e0        	callx8	a8
400d43c4:	0a2d      	mov.n	a2, a10
400d43c6:	f01d      	retw.n

400d43c8 <<core::fmt::Error as core::fmt::Debug>::fmt>:
400d43c8:	004136        	entry	a1, 32
400d43cb:	63a8      	l32i.n	a10, a3, 24
400d43cd:	7388      	l32i.n	a8, a3, 28
400d43cf:	3888      	l32i.n	a8, a8, 12
400d43d1:	f09fb1        	l32r	a11, 400d0650 <_stext+0x630>
400d43d4:	5c0c      	movi.n	a12, 5
400d43d6:	0008e0        	callx8	a8
400d43d9:	0a2d      	mov.n	a2, a10
400d43db:	f01d      	retw.n
400d43dd:	000000        	ill

400d43e0 <<&T as core::fmt::Debug>::fmt>:
400d43e0:	018136        	entry	a1, 192
400d43e3:	0388      	l32i.n	a8, a3, 0
400d43e5:	091c      	movi.n	a9, 16
400d43e7:	10a890        	and	a10, a8, a9
400d43ea:	0298      	l32i.n	a9, a2, 0
400d43ec:	107a56        	bnez	a10, 400d44f7 <<&T as core::fmt::Debug>::fmt+0x117>
400d43ef:	0a2c      	movi.n	a10, 32
400d43f1:	1088a0        	and	a8, a8, a10
400d43f4:	134856        	bnez	a8, 400d452c <<&T as core::fmt::Debug>::fmt+0x14c>
400d43f7:	0139      	s32i.n	a3, a1, 0
400d43f9:	0998      	l32i.n	a9, a9, 0
400d43fb:	7e2c      	movi.n	a14, 39
400d43fd:	efe881        	l32r	a8, 400d03a0 <_stext+0x380>
400d4400:	023897        	bltu	a8, a9, 400d4406 <<&T as core::fmt::Debug>::fmt+0x26>
400d4403:	005ec6        	j	400d4582 <<&T as core::fmt::Debug>::fmt+0x1a2>
400d4406:	efe381        	l32r	a8, 400d0394 <_stext+0x374>
400d4409:	5189      	s32i.n	a8, a1, 20
400d440b:	efe681        	l32r	a8, 400d03a4 <_stext+0x384>
400d440e:	4189      	s32i.n	a8, a1, 16
400d4410:	efe681        	l32r	a8, 400d03a8 <_stext+0x388>
400d4413:	3189      	s32i.n	a8, a1, 12
400d4415:	efe181        	l32r	a8, 400d039c <_stext+0x37c>
400d4418:	2189      	s32i.n	a8, a1, 8
400d441a:	181c      	movi.n	a8, 17
400d441c:	1189      	s32i.n	a8, a1, 4
400d441e:	efdc71        	l32r	a7, 400d0390 <_stext+0x370>
400d4421:	64a062        	movi	a6, 100
400d4424:	ef0451        	l32r	a5, 400d0034 <_stext+0x14>
400d4427:	efd741        	l32r	a4, 400d0384 <_stext+0x364>
400d442a:	092d      	mov.n	a2, a9
400d442c:	fcce82        	addi	a8, a14, -4
400d442f:	18c1a2        	addi	a10, a1, 24
400d4432:	3a8a      	add.n	a3, a10, a8
400d4434:	5198      	l32i.n	a9, a1, 20
400d4436:	a29290        	muluh	a9, a2, a9
400d4439:	419d90        	srli	a9, a9, 13
400d443c:	41b8      	l32i.n	a11, a1, 16
400d443e:	82b9b0        	mull	a11, a9, a11
400d4441:	c0b2b0        	sub	a11, a2, a11
400d4444:	31c8      	l32i.n	a12, a1, 12
400d4446:	10cbc0        	and	a12, a11, a12
400d4449:	41c2c0        	srli	a12, a12, 2
400d444c:	21d8      	l32i.n	a13, a1, 8
400d444e:	82ccd0        	mull	a12, a12, a13
400d4451:	11d8      	l32i.n	a13, a1, 4
400d4453:	400d00        	ssr	a13
400d4456:	91c0c0        	srl	a12, a12
400d4459:	90dc70        	addx2	a13, a12, a7
400d445c:	010df2        	l8ui	a15, a13, 1
400d445f:	0143f2        	s8i	a15, a3, 1
400d4462:	000dd2        	l8ui	a13, a13, 0
400d4465:	0043d2        	s8i	a13, a3, 0
400d4468:	82cc60        	mull	a12, a12, a6
400d446b:	c0bbc0        	sub	a11, a11, a12
400d446e:	10bb50        	and	a11, a11, a5
400d4471:	90bb70        	addx2	a11, a11, a7
400d4474:	010bc2        	l8ui	a12, a11, 1
400d4477:	aeaa      	add.n	a10, a14, a10
400d4479:	da0b      	addi.n	a13, a10, -1
400d447b:	004dc2        	s8i	a12, a13, 0
400d447e:	000bb2        	l8ui	a11, a11, 0
400d4481:	fecaa2        	addi	a10, a10, -2
400d4484:	004ab2        	s8i	a11, a10, 0
400d4487:	08ed      	mov.n	a14, a8
400d4489:	9d3427        	bltu	a4, a2, 400d442a <<&T as core::fmt::Debug>::fmt+0x4a>
400d448c:	63a0a2        	movi	a10, 99
400d448f:	023a97        	bltu	a10, a9, 400d4495 <<&T as core::fmt::Debug>::fmt+0xb5>
400d4492:	003dc6        	j	400d458d <<&T as core::fmt::Debug>::fmt+0x1ad>
400d4495:	fec882        	addi	a8, a8, -2
400d4498:	18c1a2        	addi	a10, a1, 24
400d449b:	ba8a      	add.n	a11, a10, a8
400d449d:	efc2a1        	l32r	a10, 400d03a8 <_stext+0x388>
400d44a0:	10a9a0        	and	a10, a9, a10
400d44a3:	41a2a0        	srli	a10, a10, 2
400d44a6:	efbdc1        	l32r	a12, 400d039c <_stext+0x37c>
400d44a9:	82aac0        	mull	a10, a10, a12
400d44ac:	1c1c      	movi.n	a12, 17
400d44ae:	400c00        	ssr	a12
400d44b1:	91d0a0        	srl	a13, a10
400d44b4:	64a0c2        	movi	a12, 100
400d44b7:	82cdc0        	mull	a12, a13, a12
400d44ba:	c099c0        	sub	a9, a9, a12
400d44bd:	eeddc1        	l32r	a12, 400d0034 <_stext+0x14>
400d44c0:	1099c0        	and	a9, a9, a12
400d44c3:	efb3c1        	l32r	a12, 400d0390 <_stext+0x370>
400d44c6:	9099c0        	addx2	a9, a9, a12
400d44c9:	0109c2        	l8ui	a12, a9, 1
400d44cc:	014bc2        	s8i	a12, a11, 1
400d44cf:	000992        	l8ui	a9, a9, 0
400d44d2:	004b92        	s8i	a9, a11, 0
400d44d5:	01a8      	l32i.n	a10, a1, 0
400d44d7:	029df6        	bgeui	a13, 10, 400d44dd <<&T as core::fmt::Debug>::fmt+0xfd>
400d44da:	002e46        	j	400d4597 <<&T as core::fmt::Debug>::fmt+0x1b7>
400d44dd:	fec882        	addi	a8, a8, -2
400d44e0:	18c192        	addi	a9, a1, 24
400d44e3:	998a      	add.n	a9, a9, a8
400d44e5:	efaab1        	l32r	a11, 400d0390 <_stext+0x370>
400d44e8:	90cdb0        	addx2	a12, a13, a11
400d44eb:	010cb2        	l8ui	a11, a12, 1
400d44ee:	0149b2        	s8i	a11, a9, 1
400d44f1:	000cb2        	l8ui	a11, a12, 0
400d44f4:	002a46        	j	400d45a1 <<&T as core::fmt::Debug>::fmt+0x1c1>
400d44f7:	80a0a2        	movi	a10, 128
400d44fa:	18c182        	addi	a8, a1, 24
400d44fd:	88aa      	add.n	a8, a8, a10
400d44ff:	0978      	l32i.n	a7, a9, 0
400d4501:	f90c      	movi.n	a9, 15
400d4503:	7c5c      	movi.n	a12, 87
400d4505:	0d3c      	movi.n	a13, 48
400d4507:	ae0c      	movi.n	a14, 10
400d4509:	000386        	j	400d451b <<&T as core::fmt::Debug>::fmt+0x13b>
400d450c:	a7aa      	add.n	a10, a7, a10
400d450e:	880b      	addi.n	a8, a8, -1
400d4510:	0048a2        	s8i	a10, a8, 0
400d4513:	ab0b      	addi.n	a10, a11, -1
400d4515:	4174f0        	srli	a7, a15, 4
400d4518:	45b9f7        	bgeu	a9, a15, 400d4561 <<&T as core::fmt::Debug>::fmt+0x181>
400d451b:	0abd      	mov.n	a11, a10
400d451d:	07fd      	mov.n	a15, a7
400d451f:	10af90        	and	a10, a15, a9
400d4522:	0d7d      	mov.n	a7, a13
400d4524:	e43ae7        	bltu	a10, a14, 400d450c <<&T as core::fmt::Debug>::fmt+0x12c>
400d4527:	0c7d      	mov.n	a7, a12
400d4529:	fff7c6        	j	400d450c <<&T as core::fmt::Debug>::fmt+0x12c>
400d452c:	80a0a2        	movi	a10, 128
400d452f:	18c182        	addi	a8, a1, 24
400d4532:	88aa      	add.n	a8, a8, a10
400d4534:	0978      	l32i.n	a7, a9, 0
400d4536:	f90c      	movi.n	a9, 15
400d4538:	7c3c      	movi.n	a12, 55
400d453a:	0d3c      	movi.n	a13, 48
400d453c:	ae0c      	movi.n	a14, 10
400d453e:	000386        	j	400d4550 <<&T as core::fmt::Debug>::fmt+0x170>
400d4541:	a7aa      	add.n	a10, a7, a10
400d4543:	880b      	addi.n	a8, a8, -1
400d4545:	0048a2        	s8i	a10, a8, 0
400d4548:	ab0b      	addi.n	a10, a11, -1
400d454a:	4174f0        	srli	a7, a15, 4
400d454d:	10b9f7        	bgeu	a9, a15, 400d4561 <<&T as core::fmt::Debug>::fmt+0x181>
400d4550:	0abd      	mov.n	a11, a10
400d4552:	07fd      	mov.n	a15, a7
400d4554:	10af90        	and	a10, a15, a9
400d4557:	0d7d      	mov.n	a7, a13
400d4559:	e43ae7        	bltu	a10, a14, 400d4541 <<&T as core::fmt::Debug>::fmt+0x161>
400d455c:	0c7d      	mov.n	a7, a12
400d455e:	fff7c6        	j	400d4541 <<&T as core::fmt::Debug>::fmt+0x161>
400d4561:	81a082        	movi	a8, 129
400d4564:	57ba87        	bgeu	a10, a8, 400d45bf <<&T as core::fmt::Debug>::fmt+0x1df>
400d4567:	18c192        	addi	a9, a1, 24
400d456a:	e9aa      	add.n	a14, a9, a10
400d456c:	c0f8b0        	sub	a15, a8, a11
400d456f:	1b0c      	movi.n	a11, 1
400d4571:	efa4c1        	l32r	a12, 400d0404 <_stext+0x3e4>
400d4574:	2d0c      	movi.n	a13, 2
400d4576:	efa281        	l32r	a8, 400d0400 <_stext+0x3e0>
400d4579:	03ad      	mov.n	a10, a3
400d457b:	0008e0        	callx8	a8
400d457e:	0a2d      	mov.n	a2, a10
400d4580:	f01d      	retw.n
400d4582:	0e8d      	mov.n	a8, a14
400d4584:	63a0a2        	movi	a10, 99
400d4587:	02ba97        	bgeu	a10, a9, 400d458d <<&T as core::fmt::Debug>::fmt+0x1ad>
400d458a:	ffc1c6        	j	400d4495 <<&T as core::fmt::Debug>::fmt+0xb5>
400d458d:	09dd      	mov.n	a13, a9
400d458f:	01a8      	l32i.n	a10, a1, 0
400d4591:	029db6        	bltui	a13, 10, 400d4597 <<&T as core::fmt::Debug>::fmt+0x1b7>
400d4594:	ffd146        	j	400d44dd <<&T as core::fmt::Debug>::fmt+0xfd>
400d4597:	880b      	addi.n	a8, a8, -1
400d4599:	18c192        	addi	a9, a1, 24
400d459c:	998a      	add.n	a9, a9, a8
400d459e:	30cdb2        	addi	a11, a13, 48
400d45a1:	0049b2        	s8i	a11, a9, 0
400d45a4:	18c192        	addi	a9, a1, 24
400d45a7:	e98a      	add.n	a14, a9, a8
400d45a9:	792c      	movi.n	a9, 39
400d45ab:	c0f980        	sub	a15, a9, a8
400d45ae:	1b0c      	movi.n	a11, 1
400d45b0:	efb2c1        	l32r	a12, 400d0478 <_stext+0x458>
400d45b3:	0d0c      	movi.n	a13, 0
400d45b5:	ef9281        	l32r	a8, 400d0400 <_stext+0x3e0>
400d45b8:	0008e0        	callx8	a8
400d45bb:	0a2d      	mov.n	a2, a10
400d45bd:	f01d      	retw.n
400d45bf:	80a0b2        	movi	a11, 128
400d45c2:	ef91c1        	l32r	a12, 400d0408 <_stext+0x3e8>
400d45c5:	ef9181        	l32r	a8, 400d040c <_stext+0x3ec>
400d45c8:	0008e0        	callx8	a8
400d45cb:	0041f0        	break	1, 15
	...

400d45d0 <<&T as core::fmt::Debug>::fmt>:
400d45d0:	004136        	entry	a1, 32
400d45d3:	0288      	l32i.n	a8, a2, 0
400d45d5:	18b8      	l32i.n	a11, a8, 4
400d45d7:	08a8      	l32i.n	a10, a8, 0
400d45d9:	f01e81        	l32r	a8, 400d0654 <_stext+0x634>
400d45dc:	03cd      	mov.n	a12, a3
400d45de:	0008e0        	callx8	a8
400d45e1:	0a2d      	mov.n	a2, a10
400d45e3:	f01d      	retw.n
400d45e5:	000000        	ill

400d45e8 <<&T as core::fmt::Debug>::fmt>:
400d45e8:	008136        	entry	a1, 64
400d45eb:	73b8      	l32i.n	a11, a3, 28
400d45ed:	63a8      	l32i.n	a10, a3, 24
400d45ef:	0288      	l32i.n	a8, a2, 0
400d45f1:	0888      	l32i.n	a8, a8, 0
400d45f3:	5898      	l32i.n	a9, a8, 20
400d45f5:	5199      	s32i.n	a9, a1, 20
400d45f7:	4898      	l32i.n	a9, a8, 16
400d45f9:	4199      	s32i.n	a9, a1, 16
400d45fb:	3898      	l32i.n	a9, a8, 12
400d45fd:	3199      	s32i.n	a9, a1, 12
400d45ff:	2898      	l32i.n	a9, a8, 8
400d4601:	2199      	s32i.n	a9, a1, 8
400d4603:	1898      	l32i.n	a9, a8, 4
400d4605:	1199      	s32i.n	a9, a1, 4
400d4607:	0888      	l32i.n	a8, a8, 0
400d4609:	0189      	s32i.n	a8, a1, 0
400d460b:	00c1c2        	addi	a12, a1, 0
400d460e:	ee9e81        	l32r	a8, 400d0088 <_stext+0x68>
400d4611:	0008e0        	callx8	a8
400d4614:	0a2d      	mov.n	a2, a10
400d4616:	f01d      	retw.n

400d4618 <<&T as core::fmt::Debug>::fmt>:
400d4618:	004136        	entry	a1, 32
400d461b:	0288      	l32i.n	a8, a2, 0
400d461d:	000882        	l8ui	a8, a8, 0
400d4620:	007816        	beqz	a8, 400d462b <<&T as core::fmt::Debug>::fmt+0x13>
400d4623:	f00db1        	l32r	a11, 400d0658 <_stext+0x638>
400d4626:	4c0c      	movi.n	a12, 4
400d4628:	000106        	j	400d4630 <<&T as core::fmt::Debug>::fmt+0x18>
400d462b:	f00cb1        	l32r	a11, 400d065c <_stext+0x63c>
400d462e:	5c0c      	movi.n	a12, 5
400d4630:	f00481        	l32r	a8, 400d0640 <_stext+0x620>
400d4633:	03ad      	mov.n	a10, a3
400d4635:	0008e0        	callx8	a8
400d4638:	0a2d      	mov.n	a2, a10
400d463a:	f01d      	retw.n

400d463c <<&T as core::fmt::Display>::fmt>:
400d463c:	004136        	entry	a1, 32
400d463f:	12c8      	l32i.n	a12, a2, 4
400d4641:	02b8      	l32i.n	a11, a2, 0
400d4643:	efff81        	l32r	a8, 400d0640 <_stext+0x620>
400d4646:	03ad      	mov.n	a10, a3
400d4648:	0008e0        	callx8	a8
400d464b:	0a2d      	mov.n	a2, a10
400d464d:	f01d      	retw.n
	...

400d4650 <rust_begin_unwind>:
400d4650:	022136        	entry	a1, 0x110
400d4653:	1129      	s32i.n	a2, a1, 4
400d4655:	5129      	s32i.n	a2, a1, 20
400d4657:	eca082        	movi	a8, 236
400d465a:	818a      	add.n	a8, a1, a8
400d465c:	00c882        	addi	a8, a8, 0
400d465f:	4189      	s32i.n	a8, a1, 16
400d4661:	6189      	s32i.n	a8, a1, 24
400d4663:	050c      	movi.n	a5, 0
400d4665:	1f6152        	s32i	a5, a1, 124
400d4668:	effe41        	l32r	a4, 400d0660 <_stext+0x640>
400d466b:	1e6142        	s32i	a4, a1, 120
400d466e:	1c6152        	s32i	a5, a1, 112
400d4671:	130c      	movi.n	a3, 1
400d4673:	1b6132        	s32i	a3, a1, 108
400d4676:	effb21        	l32r	a2, 400d0664 <_stext+0x644>
400d4679:	1a6122        	s32i	a2, a1, 104
400d467c:	18c1a2        	addi	a10, a1, 24
400d467f:	effa71        	l32r	a7, 400d0668 <_stext+0x648>
400d4682:	68c1c2        	addi	a12, a1, 104
400d4685:	ee8061        	l32r	a6, 400d0088 <_stext+0x68>
400d4688:	07bd      	mov.n	a11, a7
400d468a:	0006e0        	callx8	a6
400d468d:	4188      	l32i.n	a8, a1, 16
400d468f:	6189      	s32i.n	a8, a1, 24
400d4691:	1f6152        	s32i	a5, a1, 124
400d4694:	1e6142        	s32i	a4, a1, 120
400d4697:	1c6152        	s32i	a5, a1, 112
400d469a:	4139      	s32i.n	a3, a1, 16
400d469c:	1b6132        	s32i	a3, a1, 108
400d469f:	023d      	mov.n	a3, a2
400d46a1:	1a6122        	s32i	a2, a1, 104
400d46a4:	18c1a2        	addi	a10, a1, 24
400d46a7:	68c1c2        	addi	a12, a1, 104
400d46aa:	07bd      	mov.n	a11, a7
400d46ac:	3169      	s32i.n	a6, a1, 12
400d46ae:	0006e0        	callx8	a6
400d46b1:	efee81        	l32r	a8, 400d066c <_stext+0x64c>
400d46b4:	11a8      	l32i.n	a10, a1, 4
400d46b6:	0008e0        	callx8	a8
400d46b9:	3c0c      	movi.n	a12, 3
400d46bb:	01c9      	s32i.n	a12, a1, 0
400d46bd:	06aa16        	beqz	a10, 400d472b <rust_begin_unwind+0xdb>
400d46c0:	3a88      	l32i.n	a8, a10, 12
400d46c2:	2a98      	l32i.n	a9, a10, 8
400d46c4:	0ab8      	l32i.n	a11, a10, 0
400d46c6:	1aa8      	l32i.n	a10, a10, 4
400d46c8:	3661a2        	s32i	a10, a1, 216
400d46cb:	3561b2        	s32i	a11, a1, 212
400d46ce:	316192        	s32i	a9, a1, 196
400d46d1:	346182        	s32i	a8, a1, 208
400d46d4:	ee8181        	l32r	a8, 400d00d8 <_stext+0xb8>
400d46d7:	b189      	s32i.n	a8, a1, 44
400d46d9:	d0a092        	movi	a9, 208
400d46dc:	919a      	add.n	a9, a1, a9
400d46de:	00c992        	addi	a9, a9, 0
400d46e1:	a199      	s32i.n	a9, a1, 40
400d46e3:	9189      	s32i.n	a8, a1, 36
400d46e5:	c4a082        	movi	a8, 196
400d46e8:	818a      	add.n	a8, a1, a8
400d46ea:	00c882        	addi	a8, a8, 0
400d46ed:	8189      	s32i.n	a8, a1, 32
400d46ef:	efe081        	l32r	a8, 400d0670 <_stext+0x650>
400d46f2:	7189      	s32i.n	a8, a1, 28
400d46f4:	d4a082        	movi	a8, 212
400d46f7:	818a      	add.n	a8, a1, a8
400d46f9:	00c882        	addi	a8, a8, 0
400d46fc:	6189      	s32i.n	a8, a1, 24
400d46fe:	eca082        	movi	a8, 236
400d4701:	818a      	add.n	a8, a1, a8
400d4703:	00c882        	addi	a8, a8, 0
400d4706:	326182        	s32i	a8, a1, 200
400d4709:	1f61c2        	s32i	a12, a1, 124
400d470c:	18c182        	addi	a8, a1, 24
400d470f:	1e6182        	s32i	a8, a1, 120
400d4712:	1c6152        	s32i	a5, a1, 112
400d4715:	480c      	movi.n	a8, 4
400d4717:	1b6182        	s32i	a8, a1, 108
400d471a:	efd681        	l32r	a8, 400d0674 <_stext+0x654>
400d471d:	1a6182        	s32i	a8, a1, 104
400d4720:	c8a082        	movi	a8, 200
400d4723:	818a      	add.n	a8, a1, a8
400d4725:	00c8a2        	addi	a10, a8, 0
400d4728:	000886        	j	400d474e <rust_begin_unwind+0xfe>
400d472b:	eca082        	movi	a8, 236
400d472e:	818a      	add.n	a8, a1, a8
400d4730:	00c882        	addi	a8, a8, 0
400d4733:	6189      	s32i.n	a8, a1, 24
400d4735:	080c      	movi.n	a8, 0
400d4737:	1f6182        	s32i	a8, a1, 124
400d473a:	1e6142        	s32i	a4, a1, 120
400d473d:	1c6182        	s32i	a8, a1, 112
400d4740:	180c      	movi.n	a8, 1
400d4742:	1b6182        	s32i	a8, a1, 108
400d4745:	efcc81        	l32r	a8, 400d0678 <_stext+0x658>
400d4748:	1a6182        	s32i	a8, a1, 104
400d474b:	18c1a2        	addi	a10, a1, 24
400d474e:	efc6b1        	l32r	a11, 400d0668 <_stext+0x648>
400d4751:	68c1c2        	addi	a12, a1, 104
400d4754:	3188      	l32i.n	a8, a1, 12
400d4756:	0008e0        	callx8	a8
400d4759:	eca082        	movi	a8, 236
400d475c:	818a      	add.n	a8, a1, a8
400d475e:	00c822        	addi	a2, a8, 0
400d4761:	6129      	s32i.n	a2, a1, 24
400d4763:	1f6152        	s32i	a5, a1, 124
400d4766:	1e6142        	s32i	a4, a1, 120
400d4769:	1c6152        	s32i	a5, a1, 112
400d476c:	4168      	l32i.n	a6, a1, 16
400d476e:	1b6162        	s32i	a6, a1, 108
400d4771:	2139      	s32i.n	a3, a1, 8
400d4773:	1a6132        	s32i	a3, a1, 104
400d4776:	18c1a2        	addi	a10, a1, 24
400d4779:	efbb71        	l32r	a7, 400d0668 <_stext+0x648>
400d477c:	68c1c2        	addi	a12, a1, 104
400d477f:	07bd      	mov.n	a11, a7
400d4781:	3138      	l32i.n	a3, a1, 12
400d4783:	0003e0        	callx8	a3
400d4786:	efbd81        	l32r	a8, 400d067c <_stext+0x65c>
400d4789:	7189      	s32i.n	a8, a1, 28
400d478b:	14c182        	addi	a8, a1, 20
400d478e:	6189      	s32i.n	a8, a1, 24
400d4790:	356122        	s32i	a2, a1, 212
400d4793:	1f6162        	s32i	a6, a1, 124
400d4796:	18c182        	addi	a8, a1, 24
400d4799:	1e6182        	s32i	a8, a1, 120
400d479c:	1d6162        	s32i	a6, a1, 116
400d479f:	efb881        	l32r	a8, 400d0680 <_stext+0x660>
400d47a2:	1c6182        	s32i	a8, a1, 112
400d47a5:	280c      	movi.n	a8, 2
400d47a7:	1189      	s32i.n	a8, a1, 4
400d47a9:	1b6182        	s32i	a8, a1, 108
400d47ac:	efb681        	l32r	a8, 400d0684 <_stext+0x664>
400d47af:	1a6182        	s32i	a8, a1, 104
400d47b2:	d4a082        	movi	a8, 212
400d47b5:	818a      	add.n	a8, a1, a8
400d47b7:	00c8a2        	addi	a10, a8, 0
400d47ba:	68c1c2        	addi	a12, a1, 104
400d47bd:	07bd      	mov.n	a11, a7
400d47bf:	0003e0        	callx8	a3
400d47c2:	6129      	s32i.n	a2, a1, 24
400d47c4:	1f6152        	s32i	a5, a1, 124
400d47c7:	1e6142        	s32i	a4, a1, 120
400d47ca:	1c6152        	s32i	a5, a1, 112
400d47cd:	1b6162        	s32i	a6, a1, 108
400d47d0:	2188      	l32i.n	a8, a1, 8
400d47d2:	1a6182        	s32i	a8, a1, 104
400d47d5:	18c1a2        	addi	a10, a1, 24
400d47d8:	68c1c2        	addi	a12, a1, 104
400d47db:	07bd      	mov.n	a11, a7
400d47dd:	0003e0        	callx8	a3
400d47e0:	6129      	s32i.n	a2, a1, 24
400d47e2:	1f6152        	s32i	a5, a1, 124
400d47e5:	1e6142        	s32i	a4, a1, 120
400d47e8:	1c6152        	s32i	a5, a1, 112
400d47eb:	1b6162        	s32i	a6, a1, 108
400d47ee:	efa681        	l32r	a8, 400d0688 <_stext+0x668>
400d47f1:	1a6182        	s32i	a8, a1, 104
400d47f4:	18c1a2        	addi	a10, a1, 24
400d47f7:	68c1c2        	addi	a12, a1, 104
400d47fa:	07bd      	mov.n	a11, a7
400d47fc:	0003e0        	callx8	a3
400d47ff:	6129      	s32i.n	a2, a1, 24
400d4801:	1f6152        	s32i	a5, a1, 124
400d4804:	1e6142        	s32i	a4, a1, 120
400d4807:	1c6152        	s32i	a5, a1, 112
400d480a:	1b6162        	s32i	a6, a1, 108
400d480d:	2188      	l32i.n	a8, a1, 8
400d480f:	1a6182        	s32i	a8, a1, 104
400d4812:	18c1a2        	addi	a10, a1, 24
400d4815:	68c1c2        	addi	a12, a1, 104
400d4818:	07bd      	mov.n	a11, a7
400d481a:	0003e0        	callx8	a3
400d481d:	20a110        	or	a10, a1, a1
400d4820:	186152        	s32i	a5, a1, 96
400d4823:	166152        	s32i	a5, a1, 88
400d4826:	146152        	s32i	a5, a1, 80
400d4829:	126152        	s32i	a5, a1, 72
400d482c:	106152        	s32i	a5, a1, 64
400d482f:	e159      	s32i.n	a5, a1, 56
400d4831:	c159      	s32i.n	a5, a1, 48
400d4833:	a159      	s32i.n	a5, a1, 40
400d4835:	8159      	s32i.n	a5, a1, 32
400d4837:	6159      	s32i.n	a5, a1, 24
400d4839:	f0ca82        	addi	a8, a10, -16
400d483c:	0020c0        	memw
400d483f:	0898      	l32i.n	a9, a8, 0
400d4841:	ef9281        	l32r	a8, 400d068c <_stext+0x66c>
400d4844:	10b980        	and	a11, a9, a8
400d4847:	ee0691        	l32r	a9, 400d0060 <_stext+0x40>
400d484a:	20fb90        	or	a15, a11, a9
400d484d:	f4caa2        	addi	a10, a10, -12
400d4850:	0020c0        	memw
400d4853:	0ac8      	l32i.n	a12, a10, 0
400d4855:	ef8eb1        	l32r	a11, 400d0690 <_stext+0x670>
400d4858:	ef8fd1        	l32r	a13, 400d0694 <_stext+0x674>
400d485b:	05ad      	mov.n	a10, a5
400d485d:	170c      	movi.n	a7, 1
400d485f:	000686        	j	400d487d <rust_begin_unwind+0x22d>
400d4862:	f0ccf2        	addi	a15, a12, -16
400d4865:	0020c0        	memw
400d4868:	0ff8      	l32i.n	a15, a15, 0
400d486a:	10ff80        	and	a15, a15, a8
400d486d:	20ff90        	or	a15, a15, a9
400d4870:	f4ccc2        	addi	a12, a12, -12
400d4873:	0020c0        	memw
400d4876:	0cc8      	l32i.n	a12, a12, 0
400d4878:	4158      	l32i.n	a5, a1, 16
400d487a:	291ef7        	beq	a14, a15, 400d48a7 <rust_begin_unwind+0x257>
400d487d:	0fed      	mov.n	a14, a15
400d487f:	10fcb0        	and	a15, a12, a11
400d4882:	219fd7        	bne	a15, a13, 400d48a7 <rust_begin_unwind+0x257>
400d4885:	41f8      	l32i.n	a15, a1, 16
400d4887:	10f5f0        	and	a15, a5, a15
400d488a:	fd4f16        	beqz	a15, 400d4862 <rust_begin_unwind+0x212>
400d488d:	029ab6        	bltui	a10, 10, 400d4893 <rust_begin_unwind+0x243>
400d4890:	011246        	j	400d4cdd <rust_begin_unwind+0x68d>
400d4893:	18c1f2        	addi	a15, a1, 24
400d4896:	b0faf0        	addx8	a15, a10, a15
400d4899:	1fe9      	s32i.n	a14, a15, 4
400d489b:	0f79      	s32i.n	a7, a15, 0
400d489d:	9f0c      	movi.n	a15, 9
400d489f:	041af7        	beq	a10, a15, 400d48a7 <rust_begin_unwind+0x257>
400d48a2:	aa1b      	addi.n	a10, a10, 1
400d48a4:	ffee86        	j	400d4862 <rust_begin_unwind+0x212>
400d48a7:	68c1a2        	addi	a10, a1, 104
400d48aa:	18c1b2        	addi	a11, a1, 24
400d48ad:	0c5c      	movi.n	a12, 80
400d48af:	ee4581        	l32r	a8, 400d01c4 <_stext+0x1a4>
400d48b2:	0008e0        	callx8	a8
400d48b5:	a70c      	movi.n	a7, 10
400d48b7:	2f6172        	s32i	a7, a1, 188
400d48ba:	4188      	l32i.n	a8, a1, 16
400d48bc:	2e6182        	s32i	a8, a1, 184
400d48bf:	1a2182        	l32i	a8, a1, 104
400d48c2:	131826        	beqi	a8, 1, 400d48d9 <rust_begin_unwind+0x289>
400d48c5:	1158      	l32i.n	a5, a1, 4
400d48c7:	022866        	bnei	a8, 2, 400d48cd <rust_begin_unwind+0x27d>
400d48ca:	010306        	j	400d4cda <rust_begin_unwind+0x68a>
400d48cd:	2e6152        	s32i	a5, a1, 184
400d48d0:	1c2182        	l32i	a8, a1, 112
400d48d3:	682866        	bnei	a8, 2, 400d493f <rust_begin_unwind+0x2ef>
400d48d6:	010006        	j	400d4cda <rust_begin_unwind+0x68a>
400d48d9:	1b2182        	l32i	a8, a1, 108
400d48dc:	316182        	s32i	a8, a1, 196
400d48df:	ee4081        	l32r	a8, 400d01e0 <_stext+0x1c0>
400d48e2:	336182        	s32i	a8, a1, 204
400d48e5:	c4a082        	movi	a8, 196
400d48e8:	818a      	add.n	a8, a1, a8
400d48ea:	00c882        	addi	a8, a8, 0
400d48ed:	326182        	s32i	a8, a1, 200
400d48f0:	eca082        	movi	a8, 236
400d48f3:	818a      	add.n	a8, a1, a8
400d48f5:	00c882        	addi	a8, a8, 0
400d48f8:	346182        	s32i	a8, a1, 208
400d48fb:	4188      	l32i.n	a8, a1, 16
400d48fd:	3a6182        	s32i	a8, a1, 232
400d4900:	c8a082        	movi	a8, 200
400d4903:	818a      	add.n	a8, a1, a8
400d4905:	00c882        	addi	a8, a8, 0
400d4908:	396182        	s32i	a8, a1, 228
400d490b:	080c      	movi.n	a8, 0
400d490d:	376182        	s32i	a8, a1, 220
400d4910:	1158      	l32i.n	a5, a1, 4
400d4912:	366152        	s32i	a5, a1, 216
400d4915:	ef6181        	l32r	a8, 400d069c <_stext+0x67c>
400d4918:	356182        	s32i	a8, a1, 212
400d491b:	d0a082        	movi	a8, 208
400d491e:	818a      	add.n	a8, a1, a8
400d4920:	00c8a2        	addi	a10, a8, 0
400d4923:	ef51b1        	l32r	a11, 400d0668 <_stext+0x648>
400d4926:	d4a082        	movi	a8, 212
400d4929:	818a      	add.n	a8, a1, a8
400d492b:	00c8c2        	addi	a12, a8, 0
400d492e:	3188      	l32i.n	a8, a1, 12
400d4930:	0008e0        	callx8	a8
400d4933:	2e6152        	s32i	a5, a1, 184
400d4936:	1c2182        	l32i	a8, a1, 112
400d4939:	022866        	bnei	a8, 2, 400d493f <rust_begin_unwind+0x2ef>
400d493c:	00e686        	j	400d4cda <rust_begin_unwind+0x68a>
400d493f:	571866        	bnei	a8, 1, 400d499a <rust_begin_unwind+0x34a>
400d4942:	1d2182        	l32i	a8, a1, 116
400d4945:	316182        	s32i	a8, a1, 196
400d4948:	ee2681        	l32r	a8, 400d01e0 <_stext+0x1c0>
400d494b:	336182        	s32i	a8, a1, 204
400d494e:	c4a082        	movi	a8, 196
400d4951:	818a      	add.n	a8, a1, a8
400d4953:	00c882        	addi	a8, a8, 0
400d4956:	326182        	s32i	a8, a1, 200
400d4959:	eca082        	movi	a8, 236
400d495c:	818a      	add.n	a8, a1, a8
400d495e:	00c882        	addi	a8, a8, 0
400d4961:	346182        	s32i	a8, a1, 208
400d4964:	4188      	l32i.n	a8, a1, 16
400d4966:	3a6182        	s32i	a8, a1, 232
400d4969:	c8a082        	movi	a8, 200
400d496c:	818a      	add.n	a8, a1, a8
400d496e:	00c882        	addi	a8, a8, 0
400d4971:	396182        	s32i	a8, a1, 228
400d4974:	080c      	movi.n	a8, 0
400d4976:	376182        	s32i	a8, a1, 220
400d4979:	366152        	s32i	a5, a1, 216
400d497c:	ef4881        	l32r	a8, 400d069c <_stext+0x67c>
400d497f:	356182        	s32i	a8, a1, 212
400d4982:	d0a082        	movi	a8, 208
400d4985:	818a      	add.n	a8, a1, a8
400d4987:	00c8a2        	addi	a10, a8, 0
400d498a:	ef37b1        	l32r	a11, 400d0668 <_stext+0x648>
400d498d:	d4a082        	movi	a8, 212
400d4990:	818a      	add.n	a8, a1, a8
400d4992:	00c8c2        	addi	a12, a8, 0
400d4995:	3188      	l32i.n	a8, a1, 12
400d4997:	0008e0        	callx8	a8
400d499a:	0188      	l32i.n	a8, a1, 0
400d499c:	2e6182        	s32i	a8, a1, 184
400d499f:	1e2182        	l32i	a8, a1, 120
400d49a2:	022866        	bnei	a8, 2, 400d49a8 <rust_begin_unwind+0x358>
400d49a5:	00cc46        	j	400d4cda <rust_begin_unwind+0x68a>
400d49a8:	571866        	bnei	a8, 1, 400d4a03 <rust_begin_unwind+0x3b3>
400d49ab:	1f2182        	l32i	a8, a1, 124
400d49ae:	316182        	s32i	a8, a1, 196
400d49b1:	ee0b81        	l32r	a8, 400d01e0 <_stext+0x1c0>
400d49b4:	336182        	s32i	a8, a1, 204
400d49b7:	c4a082        	movi	a8, 196
400d49ba:	818a      	add.n	a8, a1, a8
400d49bc:	00c882        	addi	a8, a8, 0
400d49bf:	326182        	s32i	a8, a1, 200
400d49c2:	eca082        	movi	a8, 236
400d49c5:	818a      	add.n	a8, a1, a8
400d49c7:	00c882        	addi	a8, a8, 0
400d49ca:	346182        	s32i	a8, a1, 208
400d49cd:	4188      	l32i.n	a8, a1, 16
400d49cf:	3a6182        	s32i	a8, a1, 232
400d49d2:	c8a082        	movi	a8, 200
400d49d5:	818a      	add.n	a8, a1, a8
400d49d7:	00c882        	addi	a8, a8, 0
400d49da:	396182        	s32i	a8, a1, 228
400d49dd:	080c      	movi.n	a8, 0
400d49df:	376182        	s32i	a8, a1, 220
400d49e2:	366152        	s32i	a5, a1, 216
400d49e5:	ef2d81        	l32r	a8, 400d069c <_stext+0x67c>
400d49e8:	356182        	s32i	a8, a1, 212
400d49eb:	d0a082        	movi	a8, 208
400d49ee:	818a      	add.n	a8, a1, a8
400d49f0:	00c8a2        	addi	a10, a8, 0
400d49f3:	ef1db1        	l32r	a11, 400d0668 <_stext+0x648>
400d49f6:	d4a082        	movi	a8, 212
400d49f9:	818a      	add.n	a8, a1, a8
400d49fb:	00c8c2        	addi	a12, a8, 0
400d49fe:	3188      	l32i.n	a8, a1, 12
400d4a00:	0008e0        	callx8	a8
400d4a03:	480c      	movi.n	a8, 4
400d4a05:	2e6182        	s32i	a8, a1, 184
400d4a08:	202182        	l32i	a8, a1, 128
400d4a0b:	022866        	bnei	a8, 2, 400d4a11 <rust_begin_unwind+0x3c1>
400d4a0e:	00b206        	j	400d4cda <rust_begin_unwind+0x68a>
400d4a11:	571866        	bnei	a8, 1, 400d4a6c <rust_begin_unwind+0x41c>
400d4a14:	212182        	l32i	a8, a1, 132
400d4a17:	316182        	s32i	a8, a1, 196
400d4a1a:	edf181        	l32r	a8, 400d01e0 <_stext+0x1c0>
400d4a1d:	336182        	s32i	a8, a1, 204
400d4a20:	c4a082        	movi	a8, 196
400d4a23:	818a      	add.n	a8, a1, a8
400d4a25:	00c882        	addi	a8, a8, 0
400d4a28:	326182        	s32i	a8, a1, 200
400d4a2b:	eca082        	movi	a8, 236
400d4a2e:	818a      	add.n	a8, a1, a8
400d4a30:	00c882        	addi	a8, a8, 0
400d4a33:	346182        	s32i	a8, a1, 208
400d4a36:	4188      	l32i.n	a8, a1, 16
400d4a38:	3a6182        	s32i	a8, a1, 232
400d4a3b:	c8a082        	movi	a8, 200
400d4a3e:	818a      	add.n	a8, a1, a8
400d4a40:	00c882        	addi	a8, a8, 0
400d4a43:	396182        	s32i	a8, a1, 228
400d4a46:	080c      	movi.n	a8, 0
400d4a48:	376182        	s32i	a8, a1, 220
400d4a4b:	366152        	s32i	a5, a1, 216
400d4a4e:	ef1381        	l32r	a8, 400d069c <_stext+0x67c>
400d4a51:	356182        	s32i	a8, a1, 212
400d4a54:	d0a082        	movi	a8, 208
400d4a57:	818a      	add.n	a8, a1, a8
400d4a59:	00c8a2        	addi	a10, a8, 0
400d4a5c:	ef03b1        	l32r	a11, 400d0668 <_stext+0x648>
400d4a5f:	d4a082        	movi	a8, 212
400d4a62:	818a      	add.n	a8, a1, a8
400d4a64:	00c8c2        	addi	a12, a8, 0
400d4a67:	3188      	l32i.n	a8, a1, 12
400d4a69:	0008e0        	callx8	a8
400d4a6c:	580c      	movi.n	a8, 5
400d4a6e:	2e6182        	s32i	a8, a1, 184
400d4a71:	222182        	l32i	a8, a1, 136
400d4a74:	022866        	bnei	a8, 2, 400d4a7a <rust_begin_unwind+0x42a>
400d4a77:	0097c6        	j	400d4cda <rust_begin_unwind+0x68a>
400d4a7a:	571866        	bnei	a8, 1, 400d4ad5 <rust_begin_unwind+0x485>
400d4a7d:	232182        	l32i	a8, a1, 140
400d4a80:	316182        	s32i	a8, a1, 196
400d4a83:	edd781        	l32r	a8, 400d01e0 <_stext+0x1c0>
400d4a86:	336182        	s32i	a8, a1, 204
400d4a89:	c4a082        	movi	a8, 196
400d4a8c:	818a      	add.n	a8, a1, a8
400d4a8e:	00c882        	addi	a8, a8, 0
400d4a91:	326182        	s32i	a8, a1, 200
400d4a94:	eca082        	movi	a8, 236
400d4a97:	818a      	add.n	a8, a1, a8
400d4a99:	00c882        	addi	a8, a8, 0
400d4a9c:	346182        	s32i	a8, a1, 208
400d4a9f:	4188      	l32i.n	a8, a1, 16
400d4aa1:	3a6182        	s32i	a8, a1, 232
400d4aa4:	c8a082        	movi	a8, 200
400d4aa7:	818a      	add.n	a8, a1, a8
400d4aa9:	00c882        	addi	a8, a8, 0
400d4aac:	396182        	s32i	a8, a1, 228
400d4aaf:	080c      	movi.n	a8, 0
400d4ab1:	376182        	s32i	a8, a1, 220
400d4ab4:	366152        	s32i	a5, a1, 216
400d4ab7:	eef981        	l32r	a8, 400d069c <_stext+0x67c>
400d4aba:	356182        	s32i	a8, a1, 212
400d4abd:	d0a082        	movi	a8, 208
400d4ac0:	818a      	add.n	a8, a1, a8
400d4ac2:	00c8a2        	addi	a10, a8, 0
400d4ac5:	eee8b1        	l32r	a11, 400d0668 <_stext+0x648>
400d4ac8:	d4a082        	movi	a8, 212
400d4acb:	818a      	add.n	a8, a1, a8
400d4acd:	00c8c2        	addi	a12, a8, 0
400d4ad0:	3188      	l32i.n	a8, a1, 12
400d4ad2:	0008e0        	callx8	a8
400d4ad5:	680c      	movi.n	a8, 6
400d4ad7:	2e6182        	s32i	a8, a1, 184
400d4ada:	242182        	l32i	a8, a1, 144
400d4add:	022866        	bnei	a8, 2, 400d4ae3 <rust_begin_unwind+0x493>
400d4ae0:	007d86        	j	400d4cda <rust_begin_unwind+0x68a>
400d4ae3:	571866        	bnei	a8, 1, 400d4b3e <rust_begin_unwind+0x4ee>
400d4ae6:	252182        	l32i	a8, a1, 148
400d4ae9:	316182        	s32i	a8, a1, 196
400d4aec:	edbd81        	l32r	a8, 400d01e0 <_stext+0x1c0>
400d4aef:	336182        	s32i	a8, a1, 204
400d4af2:	c4a082        	movi	a8, 196
400d4af5:	818a      	add.n	a8, a1, a8
400d4af7:	00c882        	addi	a8, a8, 0
400d4afa:	326182        	s32i	a8, a1, 200
400d4afd:	eca082        	movi	a8, 236
400d4b00:	818a      	add.n	a8, a1, a8
400d4b02:	00c882        	addi	a8, a8, 0
400d4b05:	346182        	s32i	a8, a1, 208
400d4b08:	4188      	l32i.n	a8, a1, 16
400d4b0a:	3a6182        	s32i	a8, a1, 232
400d4b0d:	c8a082        	movi	a8, 200
400d4b10:	818a      	add.n	a8, a1, a8
400d4b12:	00c882        	addi	a8, a8, 0
400d4b15:	396182        	s32i	a8, a1, 228
400d4b18:	080c      	movi.n	a8, 0
400d4b1a:	376182        	s32i	a8, a1, 220
400d4b1d:	366152        	s32i	a5, a1, 216
400d4b20:	eedf81        	l32r	a8, 400d069c <_stext+0x67c>
400d4b23:	356182        	s32i	a8, a1, 212
400d4b26:	d0a082        	movi	a8, 208
400d4b29:	818a      	add.n	a8, a1, a8
400d4b2b:	00c8a2        	addi	a10, a8, 0
400d4b2e:	eeceb1        	l32r	a11, 400d0668 <_stext+0x648>
400d4b31:	d4a082        	movi	a8, 212
400d4b34:	818a      	add.n	a8, a1, a8
400d4b36:	00c8c2        	addi	a12, a8, 0
400d4b39:	3188      	l32i.n	a8, a1, 12
400d4b3b:	0008e0        	callx8	a8
400d4b3e:	780c      	movi.n	a8, 7
400d4b40:	2e6182        	s32i	a8, a1, 184
400d4b43:	262182        	l32i	a8, a1, 152
400d4b46:	022866        	bnei	a8, 2, 400d4b4c <rust_begin_unwind+0x4fc>
400d4b49:	006346        	j	400d4cda <rust_begin_unwind+0x68a>
400d4b4c:	571866        	bnei	a8, 1, 400d4ba7 <rust_begin_unwind+0x557>
400d4b4f:	272182        	l32i	a8, a1, 156
400d4b52:	316182        	s32i	a8, a1, 196
400d4b55:	eda281        	l32r	a8, 400d01e0 <_stext+0x1c0>
400d4b58:	336182        	s32i	a8, a1, 204
400d4b5b:	c4a082        	movi	a8, 196
400d4b5e:	818a      	add.n	a8, a1, a8
400d4b60:	00c882        	addi	a8, a8, 0
400d4b63:	326182        	s32i	a8, a1, 200
400d4b66:	eca082        	movi	a8, 236
400d4b69:	818a      	add.n	a8, a1, a8
400d4b6b:	00c882        	addi	a8, a8, 0
400d4b6e:	346182        	s32i	a8, a1, 208
400d4b71:	4188      	l32i.n	a8, a1, 16
400d4b73:	3a6182        	s32i	a8, a1, 232
400d4b76:	c8a082        	movi	a8, 200
400d4b79:	818a      	add.n	a8, a1, a8
400d4b7b:	00c882        	addi	a8, a8, 0
400d4b7e:	396182        	s32i	a8, a1, 228
400d4b81:	080c      	movi.n	a8, 0
400d4b83:	376182        	s32i	a8, a1, 220
400d4b86:	366152        	s32i	a5, a1, 216
400d4b89:	eec481        	l32r	a8, 400d069c <_stext+0x67c>
400d4b8c:	356182        	s32i	a8, a1, 212
400d4b8f:	d0a082        	movi	a8, 208
400d4b92:	818a      	add.n	a8, a1, a8
400d4b94:	00c8a2        	addi	a10, a8, 0
400d4b97:	eeb4b1        	l32r	a11, 400d0668 <_stext+0x648>
400d4b9a:	d4a082        	movi	a8, 212
400d4b9d:	818a      	add.n	a8, a1, a8
400d4b9f:	00c8c2        	addi	a12, a8, 0
400d4ba2:	3188      	l32i.n	a8, a1, 12
400d4ba4:	0008e0        	callx8	a8
400d4ba7:	880c      	movi.n	a8, 8
400d4ba9:	2e6182        	s32i	a8, a1, 184
400d4bac:	282182        	l32i	a8, a1, 160
400d4baf:	022866        	bnei	a8, 2, 400d4bb5 <rust_begin_unwind+0x565>
400d4bb2:	004906        	j	400d4cda <rust_begin_unwind+0x68a>
400d4bb5:	571866        	bnei	a8, 1, 400d4c10 <rust_begin_unwind+0x5c0>
400d4bb8:	292182        	l32i	a8, a1, 164
400d4bbb:	316182        	s32i	a8, a1, 196
400d4bbe:	ed8881        	l32r	a8, 400d01e0 <_stext+0x1c0>
400d4bc1:	336182        	s32i	a8, a1, 204
400d4bc4:	c4a082        	movi	a8, 196
400d4bc7:	818a      	add.n	a8, a1, a8
400d4bc9:	00c882        	addi	a8, a8, 0
400d4bcc:	326182        	s32i	a8, a1, 200
400d4bcf:	eca082        	movi	a8, 236
400d4bd2:	818a      	add.n	a8, a1, a8
400d4bd4:	00c882        	addi	a8, a8, 0
400d4bd7:	346182        	s32i	a8, a1, 208
400d4bda:	4188      	l32i.n	a8, a1, 16
400d4bdc:	3a6182        	s32i	a8, a1, 232
400d4bdf:	c8a082        	movi	a8, 200
400d4be2:	818a      	add.n	a8, a1, a8
400d4be4:	00c882        	addi	a8, a8, 0
400d4be7:	396182        	s32i	a8, a1, 228
400d4bea:	080c      	movi.n	a8, 0
400d4bec:	376182        	s32i	a8, a1, 220
400d4bef:	366152        	s32i	a5, a1, 216
400d4bf2:	eeaa81        	l32r	a8, 400d069c <_stext+0x67c>
400d4bf5:	356182        	s32i	a8, a1, 212
400d4bf8:	d0a082        	movi	a8, 208
400d4bfb:	818a      	add.n	a8, a1, a8
400d4bfd:	00c8a2        	addi	a10, a8, 0
400d4c00:	ee9ab1        	l32r	a11, 400d0668 <_stext+0x648>
400d4c03:	d4a082        	movi	a8, 212
400d4c06:	818a      	add.n	a8, a1, a8
400d4c08:	00c8c2        	addi	a12, a8, 0
400d4c0b:	3188      	l32i.n	a8, a1, 12
400d4c0d:	0008e0        	callx8	a8
400d4c10:	980c      	movi.n	a8, 9
400d4c12:	2e6182        	s32i	a8, a1, 184
400d4c15:	2a2182        	l32i	a8, a1, 168
400d4c18:	022866        	bnei	a8, 2, 400d4c1e <rust_begin_unwind+0x5ce>
400d4c1b:	002ec6        	j	400d4cda <rust_begin_unwind+0x68a>
400d4c1e:	571866        	bnei	a8, 1, 400d4c79 <rust_begin_unwind+0x629>
400d4c21:	2b2182        	l32i	a8, a1, 172
400d4c24:	316182        	s32i	a8, a1, 196
400d4c27:	ed6e81        	l32r	a8, 400d01e0 <_stext+0x1c0>
400d4c2a:	336182        	s32i	a8, a1, 204
400d4c2d:	c4a082        	movi	a8, 196
400d4c30:	818a      	add.n	a8, a1, a8
400d4c32:	00c882        	addi	a8, a8, 0
400d4c35:	326182        	s32i	a8, a1, 200
400d4c38:	eca082        	movi	a8, 236
400d4c3b:	818a      	add.n	a8, a1, a8
400d4c3d:	00c882        	addi	a8, a8, 0
400d4c40:	346182        	s32i	a8, a1, 208
400d4c43:	4188      	l32i.n	a8, a1, 16
400d4c45:	3a6182        	s32i	a8, a1, 232
400d4c48:	c8a082        	movi	a8, 200
400d4c4b:	818a      	add.n	a8, a1, a8
400d4c4d:	00c882        	addi	a8, a8, 0
400d4c50:	396182        	s32i	a8, a1, 228
400d4c53:	080c      	movi.n	a8, 0
400d4c55:	376182        	s32i	a8, a1, 220
400d4c58:	366152        	s32i	a5, a1, 216
400d4c5b:	ee9081        	l32r	a8, 400d069c <_stext+0x67c>
400d4c5e:	356182        	s32i	a8, a1, 212
400d4c61:	d0a082        	movi	a8, 208
400d4c64:	818a      	add.n	a8, a1, a8
400d4c66:	00c8a2        	addi	a10, a8, 0
400d4c69:	ee7fb1        	l32r	a11, 400d0668 <_stext+0x648>
400d4c6c:	d4a082        	movi	a8, 212
400d4c6f:	818a      	add.n	a8, a1, a8
400d4c71:	00c8c2        	addi	a12, a8, 0
400d4c74:	3188      	l32i.n	a8, a1, 12
400d4c76:	0008e0        	callx8	a8
400d4c79:	2e6172        	s32i	a7, a1, 184
400d4c7c:	2c2182        	l32i	a8, a1, 176
400d4c7f:	571866        	bnei	a8, 1, 400d4cda <rust_begin_unwind+0x68a>
400d4c82:	2d2182        	l32i	a8, a1, 180
400d4c85:	316182        	s32i	a8, a1, 196
400d4c88:	ed5681        	l32r	a8, 400d01e0 <_stext+0x1c0>
400d4c8b:	336182        	s32i	a8, a1, 204
400d4c8e:	c4a082        	movi	a8, 196
400d4c91:	818a      	add.n	a8, a1, a8
400d4c93:	00c882        	addi	a8, a8, 0
400d4c96:	326182        	s32i	a8, a1, 200
400d4c99:	eca082        	movi	a8, 236
400d4c9c:	818a      	add.n	a8, a1, a8
400d4c9e:	00c882        	addi	a8, a8, 0
400d4ca1:	346182        	s32i	a8, a1, 208
400d4ca4:	4188      	l32i.n	a8, a1, 16
400d4ca6:	3a6182        	s32i	a8, a1, 232
400d4ca9:	c8a082        	movi	a8, 200
400d4cac:	818a      	add.n	a8, a1, a8
400d4cae:	00c882        	addi	a8, a8, 0
400d4cb1:	396182        	s32i	a8, a1, 228
400d4cb4:	080c      	movi.n	a8, 0
400d4cb6:	376182        	s32i	a8, a1, 220
400d4cb9:	366152        	s32i	a5, a1, 216
400d4cbc:	ee7881        	l32r	a8, 400d069c <_stext+0x67c>
400d4cbf:	356182        	s32i	a8, a1, 212
400d4cc2:	d0a082        	movi	a8, 208
400d4cc5:	818a      	add.n	a8, a1, a8
400d4cc7:	00c8a2        	addi	a10, a8, 0
400d4cca:	ee67b1        	l32r	a11, 400d0668 <_stext+0x648>
400d4ccd:	d4a082        	movi	a8, 212
400d4cd0:	818a      	add.n	a8, a1, a8
400d4cd2:	00c8c2        	addi	a12, a8, 0
400d4cd5:	3188      	l32i.n	a8, a1, 12
400d4cd7:	0008e0        	callx8	a8
400d4cda:	ffff06        	j	400d4cda <rust_begin_unwind+0x68a>
400d4cdd:	ab0c      	movi.n	a11, 10
400d4cdf:	ee6ec1        	l32r	a12, 400d0698 <_stext+0x678>
400d4ce2:	ee4381        	l32r	a8, 400d05f0 <_stext+0x5d0>
400d4ce5:	0008e0        	callx8	a8
400d4ce8:	0041f0        	break	1, 15
	...

400d4cec <<&T as core::fmt::Debug>::fmt>:
400d4cec:	004136        	entry	a1, 32
400d4cef:	02a8      	l32i.n	a10, a2, 0
400d4cf1:	ee6b81        	l32r	a8, 400d06a0 <_stext+0x680>
400d4cf4:	03bd      	mov.n	a11, a3
400d4cf6:	0008e0        	callx8	a8
400d4cf9:	0a2d      	mov.n	a2, a10
400d4cfb:	f01d      	retw.n
400d4cfd:	000000        	ill

400d4d00 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h52ae74190b9322dfE.llvm.13586977565990666445>:
400d4d00:	006136        	entry	a1, 48
400d4d03:	02a8      	l32i.n	a10, a2, 0
400d4d05:	080c      	movi.n	a8, 0
400d4d07:	0189      	s32i.n	a8, a1, 0
400d4d09:	07e3f6        	bgeui	a3, 128, 400d4d14 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h52ae74190b9322dfE.llvm.13586977565990666445+0x14>
400d4d0c:	004132        	s8i	a3, a1, 0
400d4d0f:	1c0c      	movi.n	a12, 1
400d4d11:	002386        	j	400d4da3 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h52ae74190b9322dfE.llvm.13586977565990666445+0xa3>
400d4d14:	ecd781        	l32r	a8, 400d0070 <_stext+0x50>
400d4d17:	1eb387        	bgeu	a3, a8, 400d4d39 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h52ae74190b9322dfE.llvm.13586977565990666445+0x39>
400d4d1a:	f83c      	movi.n	a8, 63
400d4d1c:	108380        	and	a8, a3, a8
400d4d1f:	80a092        	movi	a9, 128
400d4d22:	208890        	or	a8, a8, a9
400d4d25:	014182        	s8i	a8, a1, 1
400d4d28:	418630        	srli	a8, a3, 6
400d4d2b:	c0a092        	movi	a9, 192
400d4d2e:	208890        	or	a8, a8, a9
400d4d31:	004182        	s8i	a8, a1, 0
400d4d34:	2c0c      	movi.n	a12, 2
400d4d36:	001a46        	j	400d4da3 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h52ae74190b9322dfE.llvm.13586977565990666445+0xa3>
400d4d39:	ecce81        	l32r	a8, 400d0074 <_stext+0x54>
400d4d3c:	2ab387        	bgeu	a3, a8, 400d4d6a <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h52ae74190b9322dfE.llvm.13586977565990666445+0x6a>
400d4d3f:	f83c      	movi.n	a8, 63
400d4d41:	109380        	and	a9, a3, a8
400d4d44:	80a0b2        	movi	a11, 128
400d4d47:	2099b0        	or	a9, a9, a11
400d4d4a:	024192        	s8i	a9, a1, 2
400d4d4d:	419c30        	srli	a9, a3, 12
400d4d50:	e0a0c2        	movi	a12, 224
400d4d53:	2099c0        	or	a9, a9, a12
400d4d56:	004192        	s8i	a9, a1, 0
400d4d59:	419630        	srli	a9, a3, 6
400d4d5c:	108980        	and	a8, a9, a8
400d4d5f:	2088b0        	or	a8, a8, a11
400d4d62:	014182        	s8i	a8, a1, 1
400d4d65:	3c0c      	movi.n	a12, 3
400d4d67:	000e06        	j	400d4da3 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h52ae74190b9322dfE.llvm.13586977565990666445+0xa3>
400d4d6a:	f83c      	movi.n	a8, 63
400d4d6c:	109380        	and	a9, a3, a8
400d4d6f:	80a0b2        	movi	a11, 128
400d4d72:	2099b0        	or	a9, a9, a11
400d4d75:	034192        	s8i	a9, a1, 3
400d4d78:	291c      	movi.n	a9, 18
400d4d7a:	400900        	ssr	a9
400d4d7d:	919030        	srl	a9, a3
400d4d80:	f0a0c2        	movi	a12, 240
400d4d83:	2099c0        	or	a9, a9, a12
400d4d86:	004192        	s8i	a9, a1, 0
400d4d89:	419630        	srli	a9, a3, 6
400d4d8c:	109980        	and	a9, a9, a8
400d4d8f:	2099b0        	or	a9, a9, a11
400d4d92:	024192        	s8i	a9, a1, 2
400d4d95:	419c30        	srli	a9, a3, 12
400d4d98:	108980        	and	a8, a9, a8
400d4d9b:	2088b0        	or	a8, a8, a11
400d4d9e:	014182        	s8i	a8, a1, 1
400d4da1:	4c0c      	movi.n	a12, 4
400d4da3:	00c1b2        	addi	a11, a1, 0
400d4da6:	ecde81        	l32r	a8, 400d0120 <_stext+0x100>
400d4da9:	0008e0        	callx8	a8
400d4dac:	0a2d      	mov.n	a2, a10
400d4dae:	f01d      	retw.n

400d4db0 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h0c4865ae91dd271cE.llvm.13586977565990666445>:
400d4db0:	008136        	entry	a1, 64
400d4db3:	0288      	l32i.n	a8, a2, 0
400d4db5:	0189      	s32i.n	a8, a1, 0
400d4db7:	5388      	l32i.n	a8, a3, 20
400d4db9:	6189      	s32i.n	a8, a1, 24
400d4dbb:	4388      	l32i.n	a8, a3, 16
400d4dbd:	5189      	s32i.n	a8, a1, 20
400d4dbf:	3388      	l32i.n	a8, a3, 12
400d4dc1:	4189      	s32i.n	a8, a1, 16
400d4dc3:	2388      	l32i.n	a8, a3, 8
400d4dc5:	3189      	s32i.n	a8, a1, 12
400d4dc7:	1388      	l32i.n	a8, a3, 4
400d4dc9:	2189      	s32i.n	a8, a1, 8
400d4dcb:	0388      	l32i.n	a8, a3, 0
400d4dcd:	1189      	s32i.n	a8, a1, 4
400d4dcf:	00c1a2        	addi	a10, a1, 0
400d4dd2:	ee25b1        	l32r	a11, 400d0668 <_stext+0x648>
400d4dd5:	04c1c2        	addi	a12, a1, 4
400d4dd8:	ecac81        	l32r	a8, 400d0088 <_stext+0x68>
400d4ddb:	0008e0        	callx8	a8
400d4dde:	0a2d      	mov.n	a2, a10
400d4de0:	f01d      	retw.n
	...

400d4de4 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h6d7187caddb5556fE.llvm.13586977565990666445>:
400d4de4:	004136        	entry	a1, 32
400d4de7:	02a8      	l32i.n	a10, a2, 0
400d4de9:	eccd81        	l32r	a8, 400d0120 <_stext+0x100>
400d4dec:	03bd      	mov.n	a11, a3
400d4dee:	04cd      	mov.n	a12, a4
400d4df0:	0008e0        	callx8	a8
400d4df3:	0a2d      	mov.n	a2, a10
400d4df5:	f01d      	retw.n
	...

400d4df8 <<&T as core::fmt::Display>::fmt>:
400d4df8:	004136        	entry	a1, 32
400d4dfb:	12b8      	l32i.n	a11, a2, 4
400d4dfd:	02a8      	l32i.n	a10, a2, 0
400d4dff:	ee2981        	l32r	a8, 400d06a4 <_stext+0x684>
400d4e02:	03cd      	mov.n	a12, a3
400d4e04:	0008e0        	callx8	a8
400d4e07:	0a2d      	mov.n	a2, a10
400d4e09:	f01d      	retw.n
	...

400d4e0c <compiler_builtins::int::udiv::__udivdi3>:
400d4e0c:	004136        	entry	a1, 32
400d4e0f:	ee2681        	l32r	a8, 400d06a8 <_stext+0x688>
400d4e12:	02ad      	mov.n	a10, a2
400d4e14:	03bd      	mov.n	a11, a3
400d4e16:	04cd      	mov.n	a12, a4
400d4e18:	05dd      	mov.n	a13, a5
400d4e1a:	0008e0        	callx8	a8
400d4e1d:	0a2d      	mov.n	a2, a10
400d4e1f:	0b3d      	mov.n	a3, a11
400d4e21:	f01d      	retw.n
	...

400d4e24 <compiler_builtins::int::udiv::__umoddi3>:
400d4e24:	004136        	entry	a1, 32
400d4e27:	ee2081        	l32r	a8, 400d06a8 <_stext+0x688>
400d4e2a:	02ad      	mov.n	a10, a2
400d4e2c:	03bd      	mov.n	a11, a3
400d4e2e:	04cd      	mov.n	a12, a4
400d4e30:	05dd      	mov.n	a13, a5
400d4e32:	0008e0        	callx8	a8
400d4e35:	0c2d      	mov.n	a2, a12
400d4e37:	0d3d      	mov.n	a3, a13
400d4e39:	f01d      	retw.n
	...

400d4e3c <memcpy>:
400d4e3c:	004136        	entry	a1, 32
400d4e3f:	ee1b81        	l32r	a8, 400d06ac <_stext+0x68c>
400d4e42:	02ad      	mov.n	a10, a2
400d4e44:	03bd      	mov.n	a11, a3
400d4e46:	04cd      	mov.n	a12, a4
400d4e48:	0008e0        	callx8	a8
400d4e4b:	0a2d      	mov.n	a2, a10
400d4e4d:	f01d      	retw.n
	...

400d4e50 <memset>:
400d4e50:	004136        	entry	a1, 32
400d4e53:	ee1781        	l32r	a8, 400d06b0 <_stext+0x690>
400d4e56:	02ad      	mov.n	a10, a2
400d4e58:	03bd      	mov.n	a11, a3
400d4e5a:	04cd      	mov.n	a12, a4
400d4e5c:	0008e0        	callx8	a8
400d4e5f:	0a2d      	mov.n	a2, a10
400d4e61:	f01d      	retw.n
	...

400d4e64 <memcmp>:
400d4e64:	004136        	entry	a1, 32
400d4e67:	ee1381        	l32r	a8, 400d06b4 <_stext+0x694>
400d4e6a:	02ad      	mov.n	a10, a2
400d4e6c:	03bd      	mov.n	a11, a3
400d4e6e:	04cd      	mov.n	a12, a4
400d4e70:	0008e0        	callx8	a8
400d4e73:	0a2d      	mov.n	a2, a10
400d4e75:	f01d      	retw.n
	...

400d4e78 <compiler_builtins::int::specialized_div_rem::u64_div_rem>:
400d4e78:	004136        	entry	a1, 32
400d4e7b:	028d      	mov.n	a8, a2
400d4e7d:	002416        	beqz	a4, 400d4e83 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0xb>
400d4e80:	18f516        	beqz	a5, 400d5013 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x19b>
400d4e83:	020c      	movi.n	a2, 0
400d4e85:	015316        	beqz	a3, 400d4e9e <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x26>
400d4e88:	0b0c      	movi.n	a11, 0
400d4e8a:	1a0c      	movi.n	a10, 1
400d4e8c:	0a9d      	mov.n	a9, a10
400d4e8e:	183847        	bltu	a8, a4, 400d4eaa <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x32>
400d4e91:	0b9d      	mov.n	a9, a11
400d4e93:	16b357        	bgeu	a3, a5, 400d4ead <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x35>
400d4e96:	181357        	beq	a3, a5, 400d4eb2 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x3a>
400d4e99:	0a9d      	mov.n	a9, a10
400d4e9b:	016916        	beqz	a9, 400d4eb5 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x3d>
400d4e9e:	039d      	mov.n	a9, a3
400d4ea0:	02ad      	mov.n	a10, a2
400d4ea2:	0a3d      	mov.n	a3, a10
400d4ea4:	084d      	mov.n	a4, a8
400d4ea6:	095d      	mov.n	a5, a9
400d4ea8:	f01d      	retw.n
400d4eaa:	e83357        	bltu	a3, a5, 400d4e96 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x1e>
400d4ead:	0bad      	mov.n	a10, a11
400d4eaf:	e69357        	bne	a3, a5, 400d4e99 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x21>
400d4eb2:	fe8956        	bnez	a9, 400d4e9e <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x26>
400d4eb5:	092c      	movi.n	a9, 32
400d4eb7:	09ad      	mov.n	a10, a9
400d4eb9:	05a516        	beqz	a5, 400d4f17 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x9f>
400d4ebc:	41a150        	srli	a10, a5, 1
400d4ebf:	20a5a0        	or	a10, a5, a10
400d4ec2:	41b2a0        	srli	a11, a10, 2
400d4ec5:	20aab0        	or	a10, a10, a11
400d4ec8:	41b4a0        	srli	a11, a10, 4
400d4ecb:	20aab0        	or	a10, a10, a11
400d4ece:	41b8a0        	srli	a11, a10, 8
400d4ed1:	20aab0        	or	a10, a10, a11
400d4ed4:	0b1c      	movi.n	a11, 16
400d4ed6:	400b00        	ssr	a11
400d4ed9:	91b0a0        	srl	a11, a10
400d4edc:	20aab0        	or	a10, a10, a11
400d4edf:	fb7c      	movi.n	a11, -1
400d4ee1:	30aab0        	xor	a10, a10, a11
400d4ee4:	41b1a0        	srli	a11, a10, 1
400d4ee7:	edcfc1        	l32r	a12, 400d0624 <_stext+0x604>
400d4eea:	10bbc0        	and	a11, a11, a12
400d4eed:	c0aab0        	sub	a10, a10, a11
400d4ef0:	edceb1        	l32r	a11, 400d0628 <_stext+0x608>
400d4ef3:	10cab0        	and	a12, a10, a11
400d4ef6:	41a2a0        	srli	a10, a10, 2
400d4ef9:	10aab0        	and	a10, a10, a11
400d4efc:	acaa      	add.n	a10, a12, a10
400d4efe:	41b4a0        	srli	a11, a10, 4
400d4f01:	aaba      	add.n	a10, a10, a11
400d4f03:	edcab1        	l32r	a11, 400d062c <_stext+0x60c>
400d4f06:	10aab0        	and	a10, a10, a11
400d4f09:	ed70b1        	l32r	a11, 400d04cc <_stext+0x4ac>
400d4f0c:	82aab0        	mull	a10, a10, a11
400d4f0f:	8b1c      	movi.n	a11, 24
400d4f11:	400b00        	ssr	a11
400d4f14:	91a0a0        	srl	a10, a10
400d4f17:	09bd      	mov.n	a11, a9
400d4f19:	05a316        	beqz	a3, 400d4f77 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0xff>
400d4f1c:	41b130        	srli	a11, a3, 1
400d4f1f:	20b3b0        	or	a11, a3, a11
400d4f22:	41c2b0        	srli	a12, a11, 2
400d4f25:	20bbc0        	or	a11, a11, a12
400d4f28:	41c4b0        	srli	a12, a11, 4
400d4f2b:	20bbc0        	or	a11, a11, a12
400d4f2e:	41c8b0        	srli	a12, a11, 8
400d4f31:	20bbc0        	or	a11, a11, a12
400d4f34:	0c1c      	movi.n	a12, 16
400d4f36:	400c00        	ssr	a12
400d4f39:	91c0b0        	srl	a12, a11
400d4f3c:	20bbc0        	or	a11, a11, a12
400d4f3f:	fc7c      	movi.n	a12, -1
400d4f41:	30bbc0        	xor	a11, a11, a12
400d4f44:	41c1b0        	srli	a12, a11, 1
400d4f47:	edb7d1        	l32r	a13, 400d0624 <_stext+0x604>
400d4f4a:	10ccd0        	and	a12, a12, a13
400d4f4d:	c0bbc0        	sub	a11, a11, a12
400d4f50:	edb6c1        	l32r	a12, 400d0628 <_stext+0x608>
400d4f53:	10dbc0        	and	a13, a11, a12
400d4f56:	41b2b0        	srli	a11, a11, 2
400d4f59:	10bbc0        	and	a11, a11, a12
400d4f5c:	bdba      	add.n	a11, a13, a11
400d4f5e:	41c4b0        	srli	a12, a11, 4
400d4f61:	bbca      	add.n	a11, a11, a12
400d4f63:	edb2c1        	l32r	a12, 400d062c <_stext+0x60c>
400d4f66:	10bbc0        	and	a11, a11, a12
400d4f69:	ed58c1        	l32r	a12, 400d04cc <_stext+0x4ac>
400d4f6c:	82bbc0        	mull	a11, a11, a12
400d4f6f:	8c1c      	movi.n	a12, 24
400d4f71:	400c00        	ssr	a12
400d4f74:	91b0b0        	srl	a11, a11
400d4f77:	c0dab0        	sub	a13, a10, a11
400d4f7a:	fa3c      	movi.n	a10, 63
400d4f7c:	10ada0        	and	a10, a13, a10
400d4f7f:	401a00        	ssl	a10
400d4f82:	81c540        	src	a12, a5, a4
400d4f85:	10ed90        	and	a14, a13, a9
400d4f88:	a19400        	sll	a9, a4
400d4f8b:	0a0c      	movi.n	a10, 0
400d4f8d:	09bd      	mov.n	a11, a9
400d4f8f:	019ea7        	bne	a14, a10, 400d4f94 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x11c>
400d4f92:	0cbd      	mov.n	a11, a12
400d4f94:	0acd      	mov.n	a12, a10
400d4f96:	019ea7        	bne	a14, a10, 400d4f9b <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x123>
400d4f99:	09cd      	mov.n	a12, a9
400d4f9b:	f91c      	movi.n	a9, 31
400d4f9d:	109d90        	and	a9, a13, a9
400d4fa0:	1d0c      	movi.n	a13, 1
400d4fa2:	401900        	ssl	a9
400d4fa5:	a1ed00        	sll	a14, a13
400d4fa8:	ff7c      	movi.n	a15, -1
400d4faa:	0a2d      	mov.n	a2, a10
400d4fac:	0002c6        	j	400d4fbb <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x143>
400d4faf:	400d00        	ssr	a13
400d4fb2:	81cbc0        	src	a12, a11, a12
400d4fb5:	41e1e0        	srli	a14, a14, 1
400d4fb8:	41b1b0        	srli	a11, a11, 1
400d4fbb:	0d9d      	mov.n	a9, a13
400d4fbd:	0d38c7        	bltu	a8, a12, 400d4fce <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x156>
400d4fc0:	0a9d      	mov.n	a9, a10
400d4fc2:	c073b0        	sub	a7, a3, a11
400d4fc5:	c09790        	sub	a9, a7, a9
400d4fc8:	0b2f97        	blt	a15, a9, 400d4fd7 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x15f>
400d4fcb:	fff806        	j	400d4faf <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x137>
400d4fce:	c073b0        	sub	a7, a3, a11
400d4fd1:	c09790        	sub	a9, a7, a9
400d4fd4:	d7af97        	bge	a15, a9, 400d4faf <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x137>
400d4fd7:	c088c0        	sub	a8, a8, a12
400d4fda:	0d7d      	mov.n	a7, a13
400d4fdc:	14b847        	bgeu	a8, a4, 400d4ff4 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x17c>
400d4fdf:	0a7d      	mov.n	a7, a10
400d4fe1:	0d6d      	mov.n	a6, a13
400d4fe3:	123957        	bltu	a9, a5, 400d4ff9 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x181>
400d4fe6:	141957        	beq	a9, a5, 400d4ffe <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x186>
400d4fe9:	067d      	mov.n	a7, a6
400d4feb:	2022e0        	or	a2, a2, a14
400d4fee:	012756        	bnez	a7, 400d5004 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x18c>
400d4ff1:	000506        	j	400d5009 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x191>
400d4ff4:	0d6d      	mov.n	a6, a13
400d4ff6:	ecb957        	bgeu	a9, a5, 400d4fe6 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x16e>
400d4ff9:	0a6d      	mov.n	a6, a10
400d4ffb:	ea9957        	bne	a9, a5, 400d4fe9 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x171>
400d4ffe:	2022e0        	or	a2, a2, a14
400d5001:	004716        	beqz	a7, 400d5009 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x191>
400d5004:	093d      	mov.n	a3, a9
400d5006:	ffe946        	j	400d4faf <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x137>
400d5009:	0a0c      	movi.n	a10, 0
400d500b:	0a3d      	mov.n	a3, a10
400d500d:	084d      	mov.n	a4, a8
400d500f:	095d      	mov.n	a5, a9
400d5011:	f01d      	retw.n
400d5013:	11f316        	beqz	a3, 400d5136 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x2be>
400d5016:	023347        	bltu	a3, a4, 400d501c <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x1a4>
400d5019:	004886        	j	400d513f <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x2c7>
400d501c:	419140        	srli	a9, a4, 1
400d501f:	209490        	or	a9, a4, a9
400d5022:	41a290        	srli	a10, a9, 2
400d5025:	2099a0        	or	a9, a9, a10
400d5028:	41a490        	srli	a10, a9, 4
400d502b:	2099a0        	or	a9, a9, a10
400d502e:	41a890        	srli	a10, a9, 8
400d5031:	2099a0        	or	a9, a9, a10
400d5034:	0a1c      	movi.n	a10, 16
400d5036:	400a00        	ssr	a10
400d5039:	91b090        	srl	a11, a9
400d503c:	20b9b0        	or	a11, a9, a11
400d503f:	f97c      	movi.n	a9, -1
400d5041:	30bb90        	xor	a11, a11, a9
400d5044:	41d1b0        	srli	a13, a11, 1
400d5047:	ed77c1        	l32r	a12, 400d0624 <_stext+0x604>
400d504a:	10ddc0        	and	a13, a13, a12
400d504d:	c0dbd0        	sub	a13, a11, a13
400d5050:	ed76b1        	l32r	a11, 400d0628 <_stext+0x608>
400d5053:	10edb0        	and	a14, a13, a11
400d5056:	41d2d0        	srli	a13, a13, 2
400d5059:	10ddb0        	and	a13, a13, a11
400d505c:	deda      	add.n	a13, a14, a13
400d505e:	41e4d0        	srli	a14, a13, 4
400d5061:	ddea      	add.n	a13, a13, a14
400d5063:	ed72e1        	l32r	a14, 400d062c <_stext+0x60c>
400d5066:	10dde0        	and	a13, a13, a14
400d5069:	ed18f1        	l32r	a15, 400d04cc <_stext+0x4ac>
400d506c:	82ddf0        	mull	a13, a13, a15
400d506f:	871c      	movi.n	a7, 24
400d5071:	400700        	ssr	a7
400d5074:	91d0d0        	srl	a13, a13
400d5077:	416130        	srli	a6, a3, 1
400d507a:	206360        	or	a6, a3, a6
400d507d:	412260        	srli	a2, a6, 2
400d5080:	206620        	or	a6, a6, a2
400d5083:	412460        	srli	a2, a6, 4
400d5086:	206620        	or	a6, a6, a2
400d5089:	412860        	srli	a2, a6, 8
400d508c:	206620        	or	a6, a6, a2
400d508f:	400a00        	ssr	a10
400d5092:	91a060        	srl	a10, a6
400d5095:	20a6a0        	or	a10, a6, a10
400d5098:	30aa90        	xor	a10, a10, a9
400d509b:	4161a0        	srli	a6, a10, 1
400d509e:	10c6c0        	and	a12, a6, a12
400d50a1:	c0aac0        	sub	a10, a10, a12
400d50a4:	10cab0        	and	a12, a10, a11
400d50a7:	41a2a0        	srli	a10, a10, 2
400d50aa:	10aab0        	and	a10, a10, a11
400d50ad:	acaa      	add.n	a10, a12, a10
400d50af:	41b4a0        	srli	a11, a10, 4
400d50b2:	aaba      	add.n	a10, a10, a11
400d50b4:	10aae0        	and	a10, a10, a14
400d50b7:	82aaf0        	mull	a10, a10, a15
400d50ba:	400700        	ssr	a7
400d50bd:	91a0a0        	srl	a10, a10
400d50c0:	c0cad0        	sub	a12, a10, a13
400d50c3:	0b2c      	movi.n	a11, 32
400d50c5:	fd1c      	movi.n	a13, 31
400d50c7:	0a0c      	movi.n	a10, 0
400d50c9:	0ded      	mov.n	a14, a13
400d50cb:	021ca7        	beq	a12, a10, 400d50d1 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x259>
400d50ce:	c0ebc0        	sub	a14, a11, a12
400d50d1:	fc3c      	movi.n	a12, 63
400d50d3:	10cec0        	and	a12, a14, a12
400d50d6:	401c00        	ssl	a12
400d50d9:	81c540        	src	a12, a5, a4
400d50dc:	107eb0        	and	a7, a14, a11
400d50df:	a1f400        	sll	a15, a4
400d50e2:	0fbd      	mov.n	a11, a15
400d50e4:	0197a7        	bne	a7, a10, 400d50e9 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x271>
400d50e7:	0cbd      	mov.n	a11, a12
400d50e9:	0acd      	mov.n	a12, a10
400d50eb:	0197a7        	bne	a7, a10, 400d50f0 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x278>
400d50ee:	0fcd      	mov.n	a12, a15
400d50f0:	10eed0        	and	a14, a14, a13
400d50f3:	1d0c      	movi.n	a13, 1
400d50f5:	401e00        	ssl	a14
400d50f8:	a1ed00        	sll	a14, a13
400d50fb:	0afd      	mov.n	a15, a10
400d50fd:	0002c6        	j	400d510c <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x294>
400d5100:	400d00        	ssr	a13
400d5103:	81cbc0        	src	a12, a11, a12
400d5106:	41e1e0        	srli	a14, a14, 1
400d5109:	41b1b0        	srli	a11, a11, 1
400d510c:	0d7d      	mov.n	a7, a13
400d510e:	0d38c7        	bltu	a8, a12, 400d511f <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x2a7>
400d5111:	0a7d      	mov.n	a7, a10
400d5113:	c063b0        	sub	a6, a3, a11
400d5116:	c07670        	sub	a7, a6, a7
400d5119:	0b2977        	blt	a9, a7, 400d5128 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x2b0>
400d511c:	fff806        	j	400d5100 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x288>
400d511f:	c063b0        	sub	a6, a3, a11
400d5122:	c07670        	sub	a7, a6, a7
400d5125:	d7a977        	bge	a9, a7, 400d5100 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x288>
400d5128:	c088c0        	sub	a8, a8, a12
400d512b:	20fef0        	or	a15, a14, a15
400d512e:	025716        	beqz	a7, 400d5157 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x2df>
400d5131:	073d      	mov.n	a3, a7
400d5133:	fff246        	j	400d5100 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x288>
400d5136:	c22840        	quou	a2, a8, a4
400d5139:	829240        	mull	a9, a2, a4
400d513c:	000806        	j	400d5160 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x2e8>
400d513f:	2c9347        	bne	a3, a4, 400d516f <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x2f7>
400d5142:	c22830        	quou	a2, a8, a3
400d5145:	829230        	mull	a9, a2, a3
400d5148:	c08890        	sub	a8, a8, a9
400d514b:	090c      	movi.n	a9, 0
400d514d:	1a0c      	movi.n	a10, 1
400d514f:	0a3d      	mov.n	a3, a10
400d5151:	084d      	mov.n	a4, a8
400d5153:	095d      	mov.n	a5, a9
400d5155:	f01d      	retw.n
400d5157:	c29840        	quou	a9, a8, a4
400d515a:	2029f0        	or	a2, a9, a15
400d515d:	829940        	mull	a9, a9, a4
400d5160:	c08890        	sub	a8, a8, a9
400d5163:	090c      	movi.n	a9, 0
400d5165:	09ad      	mov.n	a10, a9
400d5167:	0a3d      	mov.n	a3, a10
400d5169:	084d      	mov.n	a4, a8
400d516b:	095d      	mov.n	a5, a9
400d516d:	f01d      	retw.n
400d516f:	c2a340        	quou	a10, a3, a4
400d5172:	829a40        	mull	a9, a10, a4
400d5175:	c09390        	sub	a9, a3, a9
400d5178:	ebbfb1        	l32r	a11, 400d0074 <_stext+0x54>
400d517b:	37b4b7        	bgeu	a4, a11, 400d51b6 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x33e>
400d517e:	0b1c      	movi.n	a11, 16
400d5180:	400b00        	ssr	a11
400d5183:	819980        	src	a9, a9, a8
400d5186:	c2c940        	quou	a12, a9, a4
400d5189:	82dc40        	mull	a13, a12, a4
400d518c:	c099d0        	sub	a9, a9, a13
400d518f:	119900        	slli	a9, a9, 16
400d5192:	eba8d1        	l32r	a13, 400d0034 <_stext+0x14>
400d5195:	1088d0        	and	a8, a8, a13
400d5198:	208980        	or	a8, a9, a8
400d519b:	c29840        	quou	a9, a8, a4
400d519e:	82d940        	mull	a13, a9, a4
400d51a1:	c088d0        	sub	a8, a8, a13
400d51a4:	11dc00        	slli	a13, a12, 16
400d51a7:	202d90        	or	a2, a13, a9
400d51aa:	400b00        	ssr	a11
400d51ad:	9190c0        	srl	a9, a12
400d51b0:	20a9a0        	or	a10, a9, a10
400d51b3:	0021c6        	j	400d523e <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x3c6>
400d51b6:	0d0c      	movi.n	a13, 0
400d51b8:	1c0c      	movi.n	a12, 1
400d51ba:	0cbd      	mov.n	a11, a12
400d51bc:	5d3847        	bltu	a8, a4, 400d521d <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x3a5>
400d51bf:	0dbd      	mov.n	a11, a13
400d51c1:	5bb957        	bgeu	a9, a5, 400d5220 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x3a8>
400d51c4:	5d1957        	beq	a9, a5, 400d5225 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x3ad>
400d51c7:	0cbd      	mov.n	a11, a12
400d51c9:	05bb56        	bnez	a11, 400d5228 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x3b0>
400d51cc:	1b0c      	movi.n	a11, 1
400d51ce:	400b00        	ssr	a11
400d51d1:	81c540        	src	a12, a5, a4
400d51d4:	01d410        	slli	a13, a4, 31
400d51d7:	eba4f1        	l32r	a15, 400d0068 <_stext+0x48>
400d51da:	070c      	movi.n	a7, 0
400d51dc:	07ed      	mov.n	a14, a7
400d51de:	000346        	j	400d51ef <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x377>
400d51e1:	160c      	movi.n	a6, 1
400d51e3:	400600        	ssr	a6
400d51e6:	81dcd0        	src	a13, a12, a13
400d51e9:	41f1f0        	srli	a15, a15, 1
400d51ec:	41c1c0        	srli	a12, a12, 1
400d51ef:	0b6d      	mov.n	a6, a11
400d51f1:	0f38d7        	bltu	a8, a13, 400d5204 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x38c>
400d51f4:	076d      	mov.n	a6, a7
400d51f6:	c059c0        	sub	a5, a9, a12
400d51f9:	c06560        	sub	a6, a5, a6
400d51fc:	f57c      	movi.n	a5, -1
400d51fe:	0d2567        	blt	a5, a6, 400d520f <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x397>
400d5201:	fff706        	j	400d51e1 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x369>
400d5204:	c059c0        	sub	a5, a9, a12
400d5207:	c06560        	sub	a6, a5, a6
400d520a:	f57c      	movi.n	a5, -1
400d520c:	d1a567        	bge	a5, a6, 400d51e1 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x369>
400d520f:	c088d0        	sub	a8, a8, a13
400d5212:	20efe0        	or	a14, a15, a14
400d5215:	019616        	beqz	a6, 400d5232 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x3ba>
400d5218:	069d      	mov.n	a9, a6
400d521a:	fff0c6        	j	400d51e1 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x369>
400d521d:	a33957        	bltu	a9, a5, 400d51c4 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x34c>
400d5220:	0dcd      	mov.n	a12, a13
400d5222:	a19957        	bne	a9, a5, 400d51c7 <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x34f>
400d5225:	fa3b16        	beqz	a11, 400d51cc <compiler_builtins::int::specialized_div_rem::u64_div_rem+0x354>
400d5228:	020c      	movi.n	a2, 0
400d522a:	0a3d      	mov.n	a3, a10
400d522c:	084d      	mov.n	a4, a8
400d522e:	095d      	mov.n	a5, a9
400d5230:	f01d      	retw.n
400d5232:	c29840        	quou	a9, a8, a4
400d5235:	2029e0        	or	a2, a9, a14
400d5238:	829940        	mull	a9, a9, a4
400d523b:	c08890        	sub	a8, a8, a9
400d523e:	090c      	movi.n	a9, 0
400d5240:	0a3d      	mov.n	a3, a10
400d5242:	084d      	mov.n	a4, a8
400d5244:	095d      	mov.n	a5, a9
400d5246:	f01d      	retw.n

400d5248 <compiler_builtins::mem::memset>:
400d5248:	004136        	entry	a1, 32
400d524b:	f80c      	movi.n	a8, 15
400d524d:	023847        	bltu	a8, a4, 400d5253 <compiler_builtins::mem::memset+0xb>
400d5250:	001b06        	j	400d52c0 <compiler_builtins::mem::memset+0x78>
400d5253:	609020        	neg	a9, a2
400d5256:	380c      	movi.n	a8, 3
400d5258:	10a980        	and	a10, a9, a8
400d525b:	92aa      	add.n	a9, a2, a10
400d525d:	018a16        	beqz	a10, 400d5279 <compiler_builtins::mem::memset+0x31>
400d5260:	c21b      	addi.n	a12, a2, 1
400d5262:	09bd      	mov.n	a11, a9
400d5264:	013c97        	bltu	a12, a9, 400d5269 <compiler_builtins::mem::memset+0x21>
400d5267:	0cbd      	mov.n	a11, a12
400d5269:	c0bb20        	sub	a11, a11, a2
400d526c:	02cd      	mov.n	a12, a2
400d526e:	0020f0        	nop
400d5271:	048b76        	loop	a11, 400d5279 <compiler_builtins::mem::memset+0x31>
400d5274:	004c32        	s8i	a3, a12, 0
400d5277:	cc1b      	addi.n	a12, a12, 1
400d5279:	c0b4a0        	sub	a11, a4, a10
400d527c:	cc7c      	movi.n	a12, -4
400d527e:	10cbc0        	and	a12, a11, a12
400d5281:	301ca6        	blti	a12, 1, 400d52b5 <compiler_builtins::mem::memset+0x6d>
400d5284:	ffa0d2        	movi	a13, 255
400d5287:	10d3d0        	and	a13, a3, a13
400d528a:	ec90e1        	l32r	a14, 400d04cc <_stext+0x4ac>
400d528d:	f2ca      	add.n	a15, a2, a12
400d528f:	ffaa      	add.n	a15, a15, a10
400d5291:	72aa      	add.n	a7, a2, a10
400d5293:	774b      	addi.n	a7, a7, 4
400d5295:	0137f7        	bltu	a7, a15, 400d529a <compiler_builtins::mem::memset+0x52>
400d5298:	07fd      	mov.n	a15, a7
400d529a:	82dde0        	mull	a13, a13, a14
400d529d:	c0ef20        	sub	a14, a15, a2
400d52a0:	ff7c      	movi.n	a15, -1
400d52a2:	30aaf0        	xor	a10, a10, a15
400d52a5:	aaea      	add.n	a10, a10, a14
400d52a7:	41a2a0        	srli	a10, a10, 2
400d52aa:	aa1b      	addi.n	a10, a10, 1
400d52ac:	09ed      	mov.n	a14, a9
400d52ae:	038a76        	loop	a10, 400d52b5 <compiler_builtins::mem::memset+0x6d>
400d52b1:	0ed9      	s32i.n	a13, a14, 0
400d52b3:	ee4b      	addi.n	a14, a14, 4
400d52b5:	99ca      	add.n	a9, a9, a12
400d52b7:	104b80        	and	a4, a11, a8
400d52ba:	007456        	bnez	a4, 400d52c5 <compiler_builtins::mem::memset+0x7d>
400d52bd:	0006c6        	j	400d52dc <compiler_builtins::mem::memset+0x94>
400d52c0:	029d      	mov.n	a9, a2
400d52c2:	016416        	beqz	a4, 400d52dc <compiler_builtins::mem::memset+0x94>
400d52c5:	849a      	add.n	a8, a4, a9
400d52c7:	a91b      	addi.n	a10, a9, 1
400d52c9:	013a87        	bltu	a10, a8, 400d52ce <compiler_builtins::mem::memset+0x86>
400d52cc:	0a8d      	mov.n	a8, a10
400d52ce:	c08890        	sub	a8, a8, a9
400d52d1:	0020f0        	nop
400d52d4:	048876        	loop	a8, 400d52dc <compiler_builtins::mem::memset+0x94>
400d52d7:	004932        	s8i	a3, a9, 0
400d52da:	991b      	addi.n	a9, a9, 1
400d52dc:	f01d      	retw.n
	...

400d52e0 <_ZN4core3ptr83drop_in_place$LT$$RF$mut$u20$esp_hal_common..serial..Serial$LT$esp32..UART0$GT$$GT$17h0db4c3090f04b306E.llvm.18208902720112032255>:
400d52e0:	004136        	entry	a1, 32
400d52e3:	f01d      	retw.n
400d52e5:	000000        	ill

400d52e8 <core::ptr::drop_in_place<core::fmt::Error>>:
400d52e8:	004136        	entry	a1, 32
400d52eb:	f01d      	retw.n
400d52ed:	000000        	ill

400d52f0 <_ZN4core3ptr53drop_in_place$LT$$RF$mut$u20$esp_println..Printer$GT$17h899dc007c3df5b29E.llvm.18140158893863525499>:
400d52f0:	004136        	entry	a1, 32
400d52f3:	f01d      	retw.n
400d52f5:	000000        	ill

400d52f8 <EspDefaultHandler>:
400d52f8:	004136        	entry	a1, 32
400d52fb:	f01d      	retw.n
400d52fd:	000000        	ill

400d5300 <DefaultHandler>:
400d5300:	004136        	entry	a1, 32
400d5303:	f01d      	retw.n
400d5305:	000000        	ill

400d5308 <__init_data>:
400d5308:	004136        	entry	a1, 32
400d530b:	020c      	movi.n	a2, 0
400d530d:	f01d      	retw.n
	...

400d5310 <fugit::helpers::greater_than_0>:
400d5310:	004136        	entry	a1, 32
400d5313:	f01d      	retw.n
400d5315:	000000        	ill

400d5318 <esp_hal_common::clock::ClockControl::freeze>:
400d5318:	004136        	entry	a1, 32
400d531b:	0388      	l32i.n	a8, a3, 0
400d531d:	1398      	l32i.n	a9, a3, 4
400d531f:	23a8      	l32i.n	a10, a3, 8
400d5321:	33b8      	l32i.n	a11, a3, 12
400d5323:	32b9      	s32i.n	a11, a2, 12
400d5325:	22a9      	s32i.n	a10, a2, 8
400d5327:	1299      	s32i.n	a9, a2, 4
400d5329:	0289      	s32i.n	a8, a2, 0
400d532b:	f01d      	retw.n
400d532d:	000000        	ill

400d5330 <DefaultPreInit>:
400d5330:	004136        	entry	a1, 32
400d5333:	f01d      	retw.n
400d5335:	000000        	ill

400d5338 <default_mem_hook>:
400d5338:	004136        	entry	a1, 32
400d533b:	120c      	movi.n	a2, 1
400d533d:	f01d      	retw.n
	...

400d5340 <core::ptr::drop_in_place<&u32>>:
400d5340:	004136        	entry	a1, 32
400d5343:	f01d      	retw.n
400d5345:	000000        	ill

400d5348 <_ZN4core3ptr25drop_in_place$LT$char$GT$17h71f6f2262a90637fE.llvm.17793378483549668345>:
400d5348:	004136        	entry	a1, 32
400d534b:	f01d      	retw.n
400d534d:	000000        	ill

400d5350 <core::ptr::drop_in_place<bool>>:
400d5350:	004136        	entry	a1, 32
400d5353:	f01d      	retw.n
400d5355:	000000        	ill

400d5358 <_ZN4core3ptr28drop_in_place$LT$$RF$u64$GT$17h8d65b8b7a3e6c4f2E.llvm.12010544344896964025>:
400d5358:	004136        	entry	a1, 32
400d535b:	f01d      	retw.n
400d535d:	000000        	ill

400d5360 <core::panic::panic_info::PanicInfo::location>:
400d5360:	004136        	entry	a1, 32
400d5363:	3228      	l32i.n	a2, a2, 12
400d5365:	f01d      	retw.n
	...

400d5368 <core::ptr::drop_in_place<&core::iter::adapters::map::Map<core::str::iter::Chars,core::str::CharEscapeDefault>>>:
400d5368:	004136        	entry	a1, 32
400d536b:	f01d      	retw.n
400d536d:	000000        	ill

400d5370 <_ZN4core3ops8function6FnOnce9call_once17h0d1a49917258a530E.llvm.18290377080079887965>:
400d5370:	004136        	entry	a1, 32
400d5373:	0020c0        	memw
400d5376:	0288      	l32i.n	a8, a2, 0
400d5378:	ffff06        	j	400d5378 <_ZN4core3ops8function6FnOnce9call_once17h0d1a49917258a530E.llvm.18290377080079887965+0x8>
	...

400d537c <_ZN4core3ptr52drop_in_place$LT$core..fmt..builders..PadAdapter$GT$17h5e24171d3daff765E.llvm.18290377080079887965>:
400d537c:	004136        	entry	a1, 32
400d537f:	f01d      	retw.n
400d5381:	000000        	ill

400d5384 <core::fmt::Formatter::write_str>:
400d5384:	004136        	entry	a1, 32
400d5387:	62a8      	l32i.n	a10, a2, 24
400d5389:	7288      	l32i.n	a8, a2, 28
400d538b:	3888      	l32i.n	a8, a8, 12
400d538d:	03bd      	mov.n	a11, a3
400d538f:	04cd      	mov.n	a12, a4
400d5391:	0008e0        	callx8	a8
400d5394:	0a2d      	mov.n	a2, a10
400d5396:	f01d      	retw.n

400d5398 <core::fmt::Formatter::debug_lower_hex>:
400d5398:	004136        	entry	a1, 32
400d539b:	0288      	l32i.n	a8, a2, 0
400d539d:	091c      	movi.n	a9, 16
400d539f:	108890        	and	a8, a8, a9
400d53a2:	412480        	srli	a2, a8, 4
400d53a5:	f01d      	retw.n
	...

400d53a8 <core::fmt::Formatter::debug_upper_hex>:
400d53a8:	004136        	entry	a1, 32
400d53ab:	0288      	l32i.n	a8, a2, 0
400d53ad:	092c      	movi.n	a9, 32
400d53af:	108890        	and	a8, a8, a9
400d53b2:	412580        	srli	a2, a8, 5
400d53b5:	f01d      	retw.n
	...

400d53b8 <core::fmt::Formatter::debug_struct>:
400d53b8:	004136        	entry	a1, 32
400d53bb:	63a8      	l32i.n	a10, a3, 24
400d53bd:	7388      	l32i.n	a8, a3, 28
400d53bf:	3888      	l32i.n	a8, a8, 12
400d53c1:	04bd      	mov.n	a11, a4
400d53c3:	05cd      	mov.n	a12, a5
400d53c5:	0008e0        	callx8	a8
400d53c8:	080c      	movi.n	a8, 0
400d53ca:	054282        	s8i	a8, a2, 5
400d53cd:	0442a2        	s8i	a10, a2, 4
400d53d0:	0239      	s32i.n	a3, a2, 0
400d53d2:	f01d      	retw.n

400d53d4 <<&T as core::fmt::Debug>::fmt>:
400d53d4:	004136        	entry	a1, 32
400d53d7:	02a8      	l32i.n	a10, a2, 0
400d53d9:	1288      	l32i.n	a8, a2, 4
400d53db:	3888      	l32i.n	a8, a8, 12
400d53dd:	03bd      	mov.n	a11, a3
400d53df:	0008e0        	callx8	a8
400d53e2:	0a2d      	mov.n	a2, a10
400d53e4:	f01d      	retw.n
	...

400d53e8 <_ZN4core3ptr53drop_in_place$LT$$RF$mut$u20$esp_println..Printer$GT$17h8d2f1d32f70627a9E.llvm.13586977565990666445>:
400d53e8:	004136        	entry	a1, 32
400d53eb:	f01d      	retw.n
400d53ed:	000000        	ill

400d53f0 <__multi3>:
400d53f0:	006136        	entry	a1, 48
400d53f3:	c188      	l32i.n	a8, a1, 48
400d53f5:	1121c2        	l32i	a12, a1, 68
400d53f8:	82ac80        	mull	a10, a12, a8
400d53fb:	d1d8      	l32i.n	a13, a1, 52
400d53fd:	102192        	l32i	a9, a1, 64
400d5400:	82b9d0        	mull	a11, a9, a13
400d5403:	ebaa      	add.n	a14, a11, a10
400d5405:	030c      	movi.n	a3, 0
400d5407:	1a0c      	movi.n	a10, 1
400d5409:	0afd      	mov.n	a15, a10
400d540b:	013eb7        	bltu	a14, a11, 400d5410 <__multi3+0x20>
400d540e:	03fd      	mov.n	a15, a3
400d5410:	a2bc80        	muluh	a11, a12, a8
400d5413:	a229d0        	muluh	a2, a9, a13
400d5416:	b2ba      	add.n	a11, a2, a11
400d5418:	bbfa      	add.n	a11, a11, a15
400d541a:	e158      	l32i.n	a5, a1, 56
400d541c:	827950        	mull	a7, a9, a5
400d541f:	2179      	s32i.n	a7, a1, 8
400d5421:	67ba      	add.n	a6, a7, a11
400d5423:	a24980        	muluh	a4, a9, a8
400d5426:	74ea      	add.n	a7, a4, a14
400d5428:	0aed      	mov.n	a14, a10
400d542a:	3179      	s32i.n	a7, a1, 12
400d542c:	71b747        	bgeu	a7, a4, 400d54a1 <__multi3+0xb1>
400d542f:	e6ea      	add.n	a14, a6, a14
400d5431:	0a7d      	mov.n	a7, a10
400d5433:	73be67        	bgeu	a14, a6, 400d54aa <__multi3+0xba>
400d5436:	034d      	mov.n	a4, a3
400d5438:	0a3d      	mov.n	a3, a10
400d543a:	75bb27        	bgeu	a11, a2, 400d54b3 <__multi3+0xc3>
400d543d:	1179      	s32i.n	a7, a1, 4
400d543f:	011b27        	beq	a11, a2, 400d5444 <__multi3+0x54>
400d5442:	03fd      	mov.n	a15, a3
400d5444:	f1b8      	l32i.n	a11, a1, 60
400d5446:	82b9b0        	mull	a11, a9, a11
400d5449:	a23950        	muluh	a3, a9, a5
400d544c:	b3ba      	add.n	a11, a3, a11
400d544e:	825c50        	mull	a5, a12, a5
400d5451:	bb5a      	add.n	a11, a11, a5
400d5453:	bbfa      	add.n	a11, a11, a15
400d5455:	0afd      	mov.n	a15, a10
400d5457:	043d      	mov.n	a3, a4
400d5459:	2178      	l32i.n	a7, a1, 8
400d545b:	013677        	bltu	a6, a7, 400d5460 <__multi3+0x70>
400d545e:	03fd      	mov.n	a15, a3
400d5460:	bbfa      	add.n	a11, a11, a15
400d5462:	11f8      	l32i.n	a15, a1, 4
400d5464:	bbfa      	add.n	a11, a11, a15
400d5466:	82fcd0        	mull	a15, a12, a13
400d5469:	122162        	l32i	a6, a1, 72
400d546c:	825680        	mull	a5, a6, a8
400d546f:	f5fa      	add.n	a15, a5, a15
400d5471:	0a7d      	mov.n	a7, a10
400d5473:	013f57        	bltu	a15, a5, 400d5478 <__multi3+0x88>
400d5476:	037d      	mov.n	a7, a3
400d5478:	8256d0        	mull	a5, a6, a13
400d547b:	a26680        	muluh	a6, a6, a8
400d547e:	665a      	add.n	a6, a6, a5
400d5480:	132152        	l32i	a5, a1, 76
400d5483:	825580        	mull	a5, a5, a8
400d5486:	665a      	add.n	a6, a6, a5
400d5488:	a2ccd0        	muluh	a12, a12, a13
400d548b:	c6ca      	add.n	a12, a6, a12
400d548d:	cc7a      	add.n	a12, a12, a7
400d548f:	bbca      	add.n	a11, a11, a12
400d5491:	4efa      	add.n	a4, a14, a15
400d5493:	0134e7        	bltu	a4, a14, 400d5498 <__multi3+0xa8>
400d5496:	03ad      	mov.n	a10, a3
400d5498:	5baa      	add.n	a5, a11, a10
400d549a:	822980        	mull	a2, a9, a8
400d549d:	3138      	l32i.n	a3, a1, 12
400d549f:	f01d      	retw.n
400d54a1:	03ed      	mov.n	a14, a3
400d54a3:	e6ea      	add.n	a14, a6, a14
400d54a5:	0a7d      	mov.n	a7, a10
400d54a7:	8b3e67        	bltu	a14, a6, 400d5436 <__multi3+0x46>
400d54aa:	037d      	mov.n	a7, a3
400d54ac:	034d      	mov.n	a4, a3
400d54ae:	0a3d      	mov.n	a3, a10
400d54b0:	893b27        	bltu	a11, a2, 400d543d <__multi3+0x4d>
400d54b3:	043d      	mov.n	a3, a4
400d54b5:	1179      	s32i.n	a7, a1, 4
400d54b7:	879b27        	bne	a11, a2, 400d5442 <__multi3+0x52>
400d54ba:	ffe186        	j	400d5444 <__multi3+0x54>
400d54bd:	000000        	ill

400d54c0 <__ashlti3>:
400d54c0:	004136        	entry	a1, 32
400d54c3:	084c      	movi.n	a8, 64
400d54c5:	c1c8      	l32i.n	a12, a1, 48
400d54c7:	10ac80        	and	a10, a12, a8
400d54ca:	9198      	l32i.n	a9, a1, 36
400d54cc:	8188      	l32i.n	a8, a1, 32
400d54ce:	062a56        	bnez	a10, 400d5534 <__ashlti3+0x74>
400d54d1:	b158      	l32i.n	a5, a1, 44
400d54d3:	a148      	l32i.n	a4, a1, 40
400d54d5:	08bc16        	beqz	a12, 400d5564 <__ashlti3+0xa4>
400d54d8:	ff3c      	movi.n	a15, 63
400d54da:	10dcf0        	and	a13, a12, a15
400d54dd:	401d00        	ssl	a13
400d54e0:	81e980        	src	a14, a9, a8
400d54e3:	072c      	movi.n	a7, 32
400d54e5:	10bc70        	and	a11, a12, a7
400d54e8:	a1a800        	sll	a10, a8
400d54eb:	020c      	movi.n	a2, 0
400d54ed:	0a3d      	mov.n	a3, a10
400d54ef:	019b27        	bne	a11, a2, 400d54f4 <__ashlti3+0x34>
400d54f2:	0e3d      	mov.n	a3, a14
400d54f4:	401d00        	ssl	a13
400d54f7:	816540        	src	a6, a5, a4
400d54fa:	a1e400        	sll	a14, a4
400d54fd:	0edd      	mov.n	a13, a14
400d54ff:	019b27        	bne	a11, a2, 400d5504 <__ashlti3+0x44>
400d5502:	06dd      	mov.n	a13, a6
400d5504:	60c0c0        	neg	a12, a12
400d5507:	107c70        	and	a7, a12, a7
400d550a:	10fcf0        	and	a15, a12, a15
400d550d:	400f00        	ssr	a15
400d5510:	916090        	srl	a6, a9
400d5513:	02cd      	mov.n	a12, a2
400d5515:	511727        	beq	a7, a2, 400d556a <__ashlti3+0xaa>
400d5518:	400f00        	ssr	a15
400d551b:	81f980        	src	a15, a9, a8
400d551e:	918090        	srl	a8, a9
400d5521:	531727        	beq	a7, a2, 400d5578 <__ashlti3+0xb8>
400d5524:	029d      	mov.n	a9, a2
400d5526:	551b27        	beq	a11, a2, 400d557f <__ashlti3+0xbf>
400d5529:	571b27        	beq	a11, a2, 400d5584 <__ashlti3+0xc4>
400d552c:	205dc0        	or	a5, a13, a12
400d552f:	204980        	or	a4, a9, a8
400d5532:	f01d      	retw.n
400d5534:	fa3c      	movi.n	a10, 63
400d5536:	10aca0        	and	a10, a12, a10
400d5539:	401a00        	ssl	a10
400d553c:	81a980        	src	a10, a9, a8
400d553f:	092c      	movi.n	a9, 32
400d5541:	109c90        	and	a9, a12, a9
400d5544:	a18800        	sll	a8, a8
400d5547:	020c      	movi.n	a2, 0
400d5549:	085d      	mov.n	a5, a8
400d554b:	081927        	beq	a9, a2, 400d5557 <__ashlti3+0x97>
400d554e:	024d      	mov.n	a4, a2
400d5550:	0a1927        	beq	a9, a2, 400d555e <__ashlti3+0x9e>
400d5553:	023d      	mov.n	a3, a2
400d5555:	f01d      	retw.n
400d5557:	0a5d      	mov.n	a5, a10
400d5559:	024d      	mov.n	a4, a2
400d555b:	f49927        	bne	a9, a2, 400d5553 <__ashlti3+0x93>
400d555e:	084d      	mov.n	a4, a8
400d5560:	023d      	mov.n	a3, a2
400d5562:	f01d      	retw.n
400d5564:	082d      	mov.n	a2, a8
400d5566:	093d      	mov.n	a3, a9
400d5568:	f01d      	retw.n
400d556a:	06cd      	mov.n	a12, a6
400d556c:	400f00        	ssr	a15
400d556f:	81f980        	src	a15, a9, a8
400d5572:	918090        	srl	a8, a9
400d5575:	ab9727        	bne	a7, a2, 400d5524 <__ashlti3+0x64>
400d5578:	0f8d      	mov.n	a8, a15
400d557a:	029d      	mov.n	a9, a2
400d557c:	a99b27        	bne	a11, a2, 400d5529 <__ashlti3+0x69>
400d557f:	0e9d      	mov.n	a9, a14
400d5581:	a79b27        	bne	a11, a2, 400d552c <__ashlti3+0x6c>
400d5584:	0a2d      	mov.n	a2, a10
400d5586:	205dc0        	or	a5, a13, a12
400d5589:	204980        	or	a4, a9, a8
400d558c:	f01d      	retw.n
	...

400d5590 <compiler_builtins::mem::memcpy>:
400d5590:	004136        	entry	a1, 32
400d5593:	f80c      	movi.n	a8, 15
400d5595:	023847        	bltu	a8, a4, 400d559b <compiler_builtins::mem::memcpy+0xb>
400d5598:	0024c6        	j	400d562f <compiler_builtins::mem::memcpy+0x9f>
400d559b:	609020        	neg	a9, a2
400d559e:	380c      	movi.n	a8, 3
400d55a0:	10d980        	and	a13, a9, a8
400d55a3:	92da      	add.n	a9, a2, a13
400d55a5:	01cd16        	beqz	a13, 400d55c5 <compiler_builtins::mem::memcpy+0x35>
400d55a8:	b21b      	addi.n	a11, a2, 1
400d55aa:	09ad      	mov.n	a10, a9
400d55ac:	013b97        	bltu	a11, a9, 400d55b1 <compiler_builtins::mem::memcpy+0x21>
400d55af:	0bad      	mov.n	a10, a11
400d55b1:	c0aa20        	sub	a10, a10, a2
400d55b4:	02bd      	mov.n	a11, a2
400d55b6:	03cd      	mov.n	a12, a3
400d55b8:	098a76        	loop	a10, 400d55c5 <compiler_builtins::mem::memcpy+0x35>
400d55bb:	000ce2        	l8ui	a14, a12, 0
400d55be:	004be2        	s8i	a14, a11, 0
400d55c1:	cc1b      	addi.n	a12, a12, 1
400d55c3:	bb1b      	addi.n	a11, a11, 1
400d55c5:	c0a4d0        	sub	a10, a4, a13
400d55c8:	ce7c      	movi.n	a14, -4
400d55ca:	10bae0        	and	a11, a10, a14
400d55cd:	c3da      	add.n	a12, a3, a13
400d55cf:	10fc80        	and	a15, a12, a8
400d55d2:	061f16        	beqz	a15, 400d5637 <compiler_builtins::mem::memcpy+0xa7>
400d55d5:	021be6        	bgei	a11, 1, 400d55db <compiler_builtins::mem::memcpy+0x4b>
400d55d8:	002246        	j	400d5665 <compiler_builtins::mem::memcpy+0xd5>
400d55db:	10ece0        	and	a14, a12, a14
400d55de:	116cd0        	slli	a6, a12, 3
400d55e1:	851c      	movi.n	a5, 24
400d55e3:	f2ba      	add.n	a15, a2, a11
400d55e5:	7fda      	add.n	a7, a15, a13
400d55e7:	f2da      	add.n	a15, a2, a13
400d55e9:	ff4b      	addi.n	a15, a15, 4
400d55eb:	013f77        	bltu	a15, a7, 400d55f0 <compiler_builtins::mem::memcpy+0x60>
400d55ee:	0f7d      	mov.n	a7, a15
400d55f0:	10f650        	and	a15, a6, a5
400d55f3:	c07720        	sub	a7, a7, a2
400d55f6:	f47c      	movi.n	a4, -1
400d55f8:	30dd40        	xor	a13, a13, a4
400d55fb:	dd7a      	add.n	a13, a13, a7
400d55fd:	41d2d0        	srli	a13, a13, 2
400d5600:	dd1b      	addi.n	a13, a13, 1
400d5602:	0e78      	l32i.n	a7, a14, 0
400d5604:	606060        	neg	a6, a6
400d5607:	106650        	and	a6, a6, a5
400d560a:	095d      	mov.n	a5, a9
400d560c:	0020f0        	nop
400d560f:	0020f0        	nop
400d5612:	168d76        	loop	a13, 400d562c <compiler_builtins::mem::memcpy+0x9c>
400d5615:	400f00        	ssr	a15
400d5618:	914070        	srl	a4, a7
400d561b:	1e78      	l32i.n	a7, a14, 4
400d561d:	401600        	ssl	a6
400d5620:	a13700        	sll	a3, a7
400d5623:	204340        	or	a4, a3, a4
400d5626:	0549      	s32i.n	a4, a5, 0
400d5628:	554b      	addi.n	a5, a5, 4
400d562a:	ee4b      	addi.n	a14, a14, 4
400d562c:	000d46        	j	400d5665 <compiler_builtins::mem::memcpy+0xd5>
400d562f:	029d      	mov.n	a9, a2
400d5631:	03a456        	bnez	a4, 400d566f <compiler_builtins::mem::memcpy+0xdf>
400d5634:	001406        	j	400d5688 <compiler_builtins::mem::memcpy+0xf8>
400d5637:	2a1ba6        	blti	a11, 1, 400d5665 <compiler_builtins::mem::memcpy+0xd5>
400d563a:	e2ba      	add.n	a14, a2, a11
400d563c:	eeda      	add.n	a14, a14, a13
400d563e:	f2da      	add.n	a15, a2, a13
400d5640:	ff4b      	addi.n	a15, a15, 4
400d5642:	013fe7        	bltu	a15, a14, 400d5647 <compiler_builtins::mem::memcpy+0xb7>
400d5645:	0fed      	mov.n	a14, a15
400d5647:	c0ee20        	sub	a14, a14, a2
400d564a:	ff7c      	movi.n	a15, -1
400d564c:	30ddf0        	xor	a13, a13, a15
400d564f:	ddea      	add.n	a13, a13, a14
400d5651:	41d2d0        	srli	a13, a13, 2
400d5654:	dd1b      	addi.n	a13, a13, 1
400d5656:	09ed      	mov.n	a14, a9
400d5658:	0cfd      	mov.n	a15, a12
400d565a:	078d76        	loop	a13, 400d5665 <compiler_builtins::mem::memcpy+0xd5>
400d565d:	0f78      	l32i.n	a7, a15, 0
400d565f:	0e79      	s32i.n	a7, a14, 0
400d5661:	ff4b      	addi.n	a15, a15, 4
400d5663:	ee4b      	addi.n	a14, a14, 4
400d5665:	99ba      	add.n	a9, a9, a11
400d5667:	104a80        	and	a4, a10, a8
400d566a:	3cba      	add.n	a3, a12, a11
400d566c:	018416        	beqz	a4, 400d5688 <compiler_builtins::mem::memcpy+0xf8>
400d566f:	849a      	add.n	a8, a4, a9
400d5671:	a91b      	addi.n	a10, a9, 1
400d5673:	013a87        	bltu	a10, a8, 400d5678 <compiler_builtins::mem::memcpy+0xe8>
400d5676:	0a8d      	mov.n	a8, a10
400d5678:	c08890        	sub	a8, a8, a9
400d567b:	098876        	loop	a8, 400d5688 <compiler_builtins::mem::memcpy+0xf8>
400d567e:	0003a2        	l8ui	a10, a3, 0
400d5681:	0049a2        	s8i	a10, a9, 0
400d5684:	331b      	addi.n	a3, a3, 1
400d5686:	991b      	addi.n	a9, a9, 1
400d5688:	f01d      	retw.n
	...

400d568c <compiler_builtins::mem::memcmp>:
400d568c:	004136        	entry	a1, 32
400d568f:	028d      	mov.n	a8, a2
400d5691:	020c      	movi.n	a2, 0
400d5693:	015416        	beqz	a4, 400d56ac <compiler_builtins::mem::memcmp+0x20>
400d5696:	029d      	mov.n	a9, a2
400d5698:	a39a      	add.n	a10, a3, a9
400d569a:	000aa2        	l8ui	a10, a10, 0
400d569d:	b89a      	add.n	a11, a8, a9
400d569f:	000bb2        	l8ui	a11, a11, 0
400d56a2:	089ba7        	bne	a11, a10, 400d56ae <compiler_builtins::mem::memcmp+0x22>
400d56a5:	991b      	addi.n	a9, a9, 1
400d56a7:	440b      	addi.n	a4, a4, -1
400d56a9:	feb456        	bnez	a4, 400d5698 <compiler_builtins::mem::memcmp+0xc>
400d56ac:	f01d      	retw.n
400d56ae:	c02ba0        	sub	a2, a11, a10
400d56b1:	f01d      	retw.n

Disassembly of section .rodata:

3f400020 <anon.4f5db2e06bf693e24ced293ea764d982.0.llvm.10001694561973772934>:
3f400020:	2f          	.byte 0x2f
3f400021:	6f68      	l32i.n	a6, a15, 24
3f400023:	656d      	lsi	f6, a5, 20
3f400025:	2f          	.byte 0x2f
3f400026:	616d      	lsi	f6, a1, 4
3f400028:	7a6562        	s32i	a6, a5, 0x1e8
3f40002b:	2f          	.byte 0x2f
3f40002c:	766564        	lsi	f6, a5, 0x1d8
3f40002f:	6f6c65        	call8	3f46f6f4 <_rodata_end+0x6cfec>
3f400032:	656d70        	extui	a6, a7, 29, 7
3f400035:	6e          	.byte 0x6e
3f400036:	722f74        	lsi	f7, a15, 0x1c8
3f400039:	747375        	call12	3f474770 <_rodata_end+0x72068>
3f40003c:	2f          	.byte 0x2f
3f40003d:	626d65        	call8	3f462714 <_rodata_end+0x6000c>
3f400040:	646465        	call8	3f464688 <_rodata_end+0x61f80>
3f400043:	2f6465        	call8	3f42f688 <_rodata_end+0x2cf80>
3f400046:	6168      	l32i.n	a6, a1, 24
3f400048:	2f6c      	movi.n	a15, -30
3f40004a:	707365        	call8	3f470780 <_rodata_end+0x6e078>
3f40004d:	682d      	lsi	f2, a8, 32
3f40004f:	2f6c61        	l32r	a6, 3f3cbe00 <PS_WOE+0x3f38be00>
3f400052:	707365        	call8	3f470788 <_rodata_end+0x6e080>
3f400055:	682d      	lsi	f2, a8, 32
3f400057:	2d6c61        	l32r	a6, 3f3cb608 <PS_WOE+0x3f38b608>
3f40005a:	6d6f63        	lsi	f6, a15, 0x1b4
3f40005d:	6f6d      	lsi	f6, a15, 60
3f40005f:	6e          	.byte 0x6e
3f400060:	2f          	.byte 0x2f
3f400061:	637273        	lsi	f7, a2, 0x18c
3f400064:	2f          	.byte 0x2f
3f400065:	6d6974        	lsi	f7, a9, 0x1b4
3f400068:	2e7265        	call8	3f42e790 <_rodata_end+0x2c088>
3f40006b:	007372        	lsi	f7, a3, 0
	...

3f400070 <anon.4f5db2e06bf693e24ced293ea764d982.1.llvm.10001694561973772934>:
3f400070:	400020        	lsi	f2, a0, 0x100
3f400073:	3f          	.byte 0x3f
3f400074:	004d      	mov.n	a4, a0
3f400076:	c10000        	mul16u	a0, a0, a0
3f400079:	000001        	l32r	a0, 3f3c007c <PS_WOE+0x3f38007c>
3f40007c:	2f          	.byte 0x2f
3f40007d:	000000        	ill

3f400080 <str.0.llvm.10001694561973772934>:
3f400080:	747461        	l32r	a6, 3f3dd250 <PS_WOE+0x3f39d250>
3f400083:	706d65        	call8	3f470758 <_rodata_end+0x6e050>
3f400086:	742074        	lsi	f7, a0, 0x1d0
3f400089:	6f          	.byte 0x6f
3f40008a:	696420        	lsi	f2, a4, 0x1a4
3f40008d:	646976        	lsi	f7, a9, 0x190
3f400090:	622065        	call8	3f462298 <_rodata_end+0x5fb90>
3f400093:	2079      	s32i.n	a7, a0, 8
3f400095:	657a      	add.n	a6, a5, a7
3f400097:	006f72        	s32i	a7, a15, 0
	...

3f40009c <anon.4f5db2e06bf693e24ced293ea764d982.2.llvm.10001694561973772934>:
3f40009c:	400020        	lsi	f2, a0, 0x100
3f40009f:	3f          	.byte 0x3f
3f4000a0:	004d      	mov.n	a4, a0
3f4000a2:	c10000        	mul16u	a0, a0, a0
3f4000a5:	000001        	l32r	a0, 3f3c00a8 <PS_WOE+0x3f3800a8>
3f4000a8:	000017        	bnone	a0, a1, 3f4000ac <anon.4f5db2e06bf693e24ced293ea764d982.4.llvm.10001694561973772934>
	...

3f4000ac <anon.4f5db2e06bf693e24ced293ea764d982.4.llvm.10001694561973772934>:
3f4000ac:	6c6143        	lsi	f4, a1, 0x1b0
3f4000af:	656c      	movi.n	a5, -26
3f4000b1:	772064        	lsi	f6, a0, 0x1dc
3f4000b4:	746961        	l32r	a6, 3f3dd258 <PS_WOE+0x3f39d258>
3f4000b7:	6e6f20        	f64rnd	a6, a15, a2, 2
3f4000ba:	6e6120        	f64rnd	a6, a1, a2, 2
3f4000bd:	6e6920        	f64rnd	a6, a9, a2, 2
3f4000c0:	746361        	l32r	a6, 3f3dd24c <PS_WOE+0x3f39d24c>
3f4000c3:	7669      	s32i.n	a6, a6, 28
3f4000c5:	742065        	call8	3f4742cc <_rodata_end+0x71bc4>
3f4000c8:	6d69      	s32i.n	a6, a13, 24
3f4000ca:	217265        	call8	3f4217f0 <_rodata_end+0x1f0e8>
3f4000cd:	000000        	ill

3f4000d0 <anon.4f5db2e06bf693e24ced293ea764d982.5.llvm.10001694561973772934>:
3f4000d0:	00ac      	beqz.n	a0, 3f4000f4 <anon.52126e10129966105681872e9fb5f53e.0.llvm.18208902720112032255>
3f4000d2:	213f40        	srai	a3, a4, 15
3f4000d5:	000000        	ill

3f4000d8 <anon.4f5db2e06bf693e24ced293ea764d982.6.llvm.10001694561973772934>:
3f4000d8:	400020        	lsi	f2, a0, 0x100
3f4000db:	3f          	.byte 0x3f
3f4000dc:	004d      	mov.n	a4, a0
3f4000de:	e20000        	remu	a0, a0, a0
3f4000e1:	000001        	l32r	a0, 3f3c00e4 <PS_WOE+0x3f3800e4>
3f4000e4:	000d      	mov.n	a0, a0
3f4000e6:	000000        	ill
3f4000e9:	000100        	lsi	f0, a1, 0
3f4000ec:	000002        	l8ui	a0, a0, 0
3f4000ef:	000200        	lsi	f0, a2, 0
	...

3f4000f4 <anon.52126e10129966105681872e9fb5f53e.0.llvm.18208902720112032255>:
3f4000f4:	0d52e0        	lsi	f14, a2, 52
3f4000f7:	000440        	lsi	f4, a4, 0
3f4000fa:	040000        	extui	a0, a0, 0, 1
3f4000fd:	000000        	ill
3f400100:	08c8      	l32i.n	a12, a8, 0
3f400102:	400d      	lsi	f0, a0, 0
3f400104:	0d07c0        	lsi	f12, a7, 52
3f400107:	089440        	lsx	f9, a4, a4
3f40010a:	400d      	lsi	f0, a0, 0
3f40010c:	6c6163        	lsi	f6, a1, 0x1b0
3f40010f:	656c      	movi.n	a5, -26
3f400111:	602064        	lsi	f6, a0, 0x180
3f400114:	4f          	.byte 0x4f
3f400115:	697470        	lsi	f7, a4, 0x1a4
3f400118:	6f          	.byte 0x6f
3f400119:	6e          	.byte 0x6e
3f40011a:	3a3a      	add.n	a3, a10, a3
3f40011c:	776e75        	call12	3f477804 <_rodata_end+0x750fc>
3f40011f:	706172        	s32i	a7, a1, 0x1c0
3f400122:	2928      	l32i.n	a2, a9, 8
3f400124:	6f2060        	f64cmph	a2, a0, a6, 6
3f400127:	6e          	.byte 0x6e
3f400128:	206120        	or	a6, a1, a2
3f40012b:	6f4e60        	f64cmph	a4, a14, a6, 6
3f40012e:	6e          	.byte 0x6e
3f40012f:	206065        	call8	3f420734 <_rodata_end+0x1e02c>
3f400132:	6c6176        	lsi	f7, a1, 0x1b0
3f400135:	636575        	call12	3f46378c <_rodata_end+0x61084>
3f400138:	6c6c61        	l32r	a6, 3f3db2e8 <PS_WOE+0x3f39b2e8>
3f40013b:	206465        	call8	3f420780 <_rodata_end+0x1e078>
3f40013e:	655260        	extui	a5, a6, 18, 7
3f400141:	6c7573        	lsi	f7, a5, 0x1b0
3f400144:	3a3a74        	lsi	f7, a10, 232
3f400147:	776e75        	call12	3f47782c <_rodata_end+0x75124>
3f40014a:	706172        	s32i	a7, a1, 0x1c0
3f40014d:	2928      	l32i.n	a2, a9, 8
3f40014f:	6f2060        	f64cmph	a2, a0, a6, 6
3f400152:	6e          	.byte 0x6e
3f400153:	6e6120        	f64rnd	a6, a1, a2, 2
3f400156:	456020        	extui	a6, a2, 16, 5
3f400159:	607272        	lsi	f7, a2, 0x180
3f40015c:	617620        	lsi	f2, a6, 0x184
3f40015f:	756c      	movi.n	a5, -25
3f400161:	000065        	call8	3f400168 <anon.52126e10129966105681872e9fb5f53e.0.llvm.18208902720112032255+0x74>
3f400164:	52e8      	l32i.n	a14, a2, 20
3f400166:	400d      	lsi	f0, a0, 0
3f400168:	000000        	ill
3f40016b:	000100        	lsi	f0, a1, 0
3f40016e:	c80000        	lsi	f0, a0, 0x320
3f400171:	400d43        	lsi	f4, a13, 0x100
3f400174:	000a      	add.n	a0, a0, a0
3f400176:	0c0000        	lsi	f0, a0, 48
3f400179:	3f4001        	l32r	a0, 3f3cfe7c <PS_WOE+0x3f38fe7c>
3f40017c:	000000        	ill
3f40017f:	017400        	slli	a7, a4, 32
3f400182:	013f40        	slli	a3, a15, 28
3f400185:	000000        	ill
3f400188:	617865        	call8	3f461910 <_rodata_end+0x5f208>
3f40018b:	706d      	lsi	f6, a0, 0
3f40018d:	656c      	movi.n	a5, -26
3f40018f:	682f73        	lsi	f7, a15, 0x1a0
3f400192:	6c6c65        	call8	3f46c858 <_rodata_end+0x6a150>
3f400195:	6f          	.byte 0x6f
3f400196:	5f          	.byte 0x5f
3f400197:	726f77        	bbci	a15, 7, 3f40020d <anon.52126e10129966105681872e9fb5f53e.0.llvm.18208902720112032255+0x119>
3f40019a:	646c      	movi.n	a4, -26
3f40019c:	2e          	.byte 0x2e
3f40019d:	007372        	lsi	f7, a3, 0
3f4001a0:	0188      	l32i.n	a8, a1, 0
3f4001a2:	173f40        	lsi	f4, a15, 92
3f4001a5:	000000        	ill
3f4001a8:	0019      	s32i.n	a1, a0, 0
3f4001aa:	2b0000        	oeq.s	b0, f0, f0
3f4001ad:	000000        	ill
3f4001b0:	696c41        	l32r	a4, 3f3da760 <PS_WOE+0x3f39a760>
3f4001b3:	3c6e67        	bbci	a14, 6, 3f4001f3 <anon.52126e10129966105681872e9fb5f53e.0.llvm.18208902720112032255+0xff>
3f4001b6:	323175        	call12	3f4324cc <_rodata_end+0x2fdc4>
3f4001b9:	3e38      	l32i.n	a3, a14, 12
3f4001bb:	203a      	add.n	a2, a0, a3
3f4001bd:	000000        	ill
3f4001c0:	4001b0        	lsi	f11, a1, 0x100
3f4001c3:	3f          	.byte 0x3f
3f4001c4:	000d      	mov.n	a0, a0
3f4001c6:	740000        	extui	a0, a0, 0, 8
3f4001c9:	3f4001        	l32r	a0, 3f3cfecc <PS_WOE+0x3f38fecc>
3f4001cc:	000001        	l32r	a0, 3f3c01cc <PS_WOE+0x3f3801cc>
3f4001cf:	000800        	lsi	f0, a8, 0
3f4001d2:	100000        	and	a0, a0, a0
3f4001d5:	000000        	ill
3f4001d8:	7a6953        	lsi	f5, a9, 0x1e8
3f4001db:	753c65        	call8	3f4755a0 <_rodata_end+0x72e98>
3f4001de:	383231        	l32r	a3, 3f3ce2a8 <PS_WOE+0x3f38e2a8>
3f4001e1:	3e          	.byte 0x3e
3f4001e2:	203a      	add.n	a2, a0, a3
3f4001e4:	01d8      	l32i.n	a13, a1, 0
3f4001e6:	0c3f40        	lsi	f4, a15, 48
3f4001e9:	000000        	ill
3f4001ec:	400174        	lsi	f7, a1, 0x100
3f4001ef:	3f          	.byte 0x3f
3f4001f0:	000001        	l32r	a0, 3f3c01f0 <PS_WOE+0x3f3801f0>
3f4001f3:	654800        	extui	a4, a0, 24, 7
3f4001f6:	6c6c      	movi.n	a12, -26
3f4001f8:	6f          	.byte 0x6f
3f4001f9:	6f7720        	f64cmph	a7, a7, a2, 6
3f4001fc:	646c72        	s32i	a7, a12, 0x190
3f4001ff:	000a21        	l32r	a2, 3f3c0228 <PS_WOE+0x3f380228>
3f400202:	f40000        	extui	a0, a0, 0, 16
3f400205:	3f4001        	l32r	a0, 3f3cff08 <PS_WOE+0x3f38ff08>
3f400208:	000d      	mov.n	a0, a0
3f40020a:	880000        	lsi	f0, a0, 0x220
3f40020d:	3f4001        	l32r	a0, 3f3cff10 <PS_WOE+0x3f38ff10>
3f400210:	000017        	bnone	a0, a1, 3f400214 <anon.52126e10129966105681872e9fb5f53e.0.llvm.18208902720112032255+0x120>
3f400213:	003500        	rfwu
3f400216:	2b0000        	oeq.s	b0, f0, f0
3f400219:	000000        	ill

3f40021c <anon.057cbf4797059ac441880d775b2726fc.0.llvm.18140158893863525499>:
3f40021c:	0d52f0        	lsi	f15, a2, 52
3f40021f:	000440        	lsi	f4, a4, 0
3f400222:	040000        	extui	a0, a0, 0, 1
3f400225:	000000        	ill
3f400228:	0d0c04        	lsi	f0, a12, 52
3f40022b:	0b2040        	lsi	f4, a0, 44
3f40022e:	400d      	lsi	f0, a0, 0
3f400230:	0d0bd0        	lsi	f13, a11, 52
3f400233:	000040        	lsi	f4, a0, 0
	...

3f400240 <str.0.llvm.10704473388258232010>:
3f400240:	747461        	l32r	a6, 3f3dd410 <PS_WOE+0x3f39d410>
3f400243:	706d65        	call8	3f470918 <_rodata_end+0x6e210>
3f400246:	742074        	lsi	f7, a0, 0x1d0
3f400249:	6f          	.byte 0x6f
3f40024a:	696420        	lsi	f2, a4, 0x1a4
3f40024d:	646976        	lsi	f7, a9, 0x190
3f400250:	622065        	call8	3f462458 <_rodata_end+0x5fd50>
3f400253:	2079      	s32i.n	a7, a0, 8
3f400255:	657a      	add.n	a6, a5, a7
3f400257:	        	s32i	a7, a15, 188

3f400259 <anon.40a82d91c785dbb9d24e12147b51c50e.1.llvm.10704473388258232010>:
3f400259:	2f          	.byte 0x2f
3f40025a:	6f68      	l32i.n	a6, a15, 24
3f40025c:	656d      	lsi	f6, a5, 20
3f40025e:	2f          	.byte 0x2f
3f40025f:	616d      	lsi	f6, a1, 4
3f400261:	7a6562        	s32i	a6, a5, 0x1e8
3f400264:	2f          	.byte 0x2f
3f400265:	766564        	lsi	f6, a5, 0x1d8
3f400268:	6f6c65        	call8	3f46f930 <_rodata_end+0x6d228>
3f40026b:	656d70        	extui	a6, a7, 29, 7
3f40026e:	6e          	.byte 0x6e
3f40026f:	722f74        	lsi	f7, a15, 0x1c8
3f400272:	747375        	call12	3f4749a8 <_rodata_end+0x722a0>
3f400275:	2f          	.byte 0x2f
3f400276:	626d65        	call8	3f46294c <_rodata_end+0x60244>
3f400279:	646465        	call8	3f4648c0 <_rodata_end+0x621b8>
3f40027c:	2f6465        	call8	3f42f8c4 <_rodata_end+0x2d1bc>
3f40027f:	6168      	l32i.n	a6, a1, 24
3f400281:	2f6c      	movi.n	a15, -30
3f400283:	707365        	call8	3f4709b8 <_rodata_end+0x6e2b0>
3f400286:	682d      	lsi	f2, a8, 32
3f400288:	2f6c61        	l32r	a6, 3f3cc038 <PS_WOE+0x3f38c038>
3f40028b:	707365        	call8	3f4709c0 <_rodata_end+0x6e2b8>
3f40028e:	682d      	lsi	f2, a8, 32
3f400290:	2d6c61        	l32r	a6, 3f3cb840 <PS_WOE+0x3f38b840>
3f400293:	6d6f63        	lsi	f6, a15, 0x1b4
3f400296:	6f6d      	lsi	f6, a15, 60
3f400298:	6e          	.byte 0x6e
3f400299:	2f          	.byte 0x2f
3f40029a:	637273        	lsi	f7, a2, 0x18c
3f40029d:	2f          	.byte 0x2f
3f40029e:	637472        	lsi	f7, a4, 0x18c
3f4002a1:	5f          	.byte 0x5f
3f4002a2:	746e63        	lsi	f6, a14, 0x1d0
3f4002a5:	2e6c      	movi.n	a14, -30
3f4002a7:	007372        	lsi	f7, a3, 0
	...

3f4002ac <anon.40a82d91c785dbb9d24e12147b51c50e.3.llvm.10704473388258232010>:
3f4002ac:	0259      	s32i.n	a5, a2, 0
3f4002ae:	503f40        	ritlb0	a4, a15
3f4002b1:	000000        	ill
3f4002b4:	000195        	call4	3f4002d0 <anon.220f297325a9d28b2d8a7dde158d4e7a.4.llvm.11142646695660715228+0x14>
3f4002b7:	001900        	movsp	a0, a9
	...

3f4002bc <anon.220f297325a9d28b2d8a7dde158d4e7a.4.llvm.11142646695660715228>:
3f4002bc:	737361        	l32r	a6, 3f3dd088 <PS_WOE+0x3f39d088>
3f4002bf:	747265        	call8	3f4749e4 <_rodata_end+0x722dc>
3f4002c2:	6f69      	s32i.n	a6, a15, 24
3f4002c4:	6e          	.byte 0x6e
3f4002c5:	616620        	lsi	f2, a6, 0x184
3f4002c8:	6c69      	s32i.n	a6, a12, 24
3f4002ca:	3a6465        	call8	3f43a910 <_rodata_end+0x38208>
3f4002cd:	616d20        	lsi	f2, a13, 0x184
3f4002d0:	686374        	lsi	f7, a3, 0x1a0
3f4002d3:	217365        	call8	3f421a08 <_rodata_end+0x1f300>
3f4002d6:	5228      	l32i.n	a2, a2, 20
3f4002d8:	436374        	lsi	f7, a3, 0x10c
3f4002db:	6f6c      	movi.n	a15, -26
3f4002dd:	206b63        	lsi	f6, a11, 128
3f4002e0:	3a3a      	add.n	a3, a10, a3
3f4002e2:	656720        	extui	a6, a2, 23, 7
3f4002e5:	785f74        	lsi	f7, a15, 0x1e0
3f4002e8:	6c6174        	lsi	f7, a1, 0x1b0
3f4002eb:	5f          	.byte 0x5f
3f4002ec:	657266        	bnei	a2, 7, 3f400355 <anon.220f297325a9d28b2d8a7dde158d4e7a.5.llvm.11142646695660715228+0x45>
3f4002ef:	292871        	l32r	a7, 3f3ca790 <PS_WOE+0x3f38a790>
3f4002f2:	202c      	movi.n	a0, 34
3f4002f4:	7458      	l32i.n	a5, a4, 28
3f4002f6:	436c61        	l32r	a6, 3f3d10a8 <PS_WOE+0x3f3910a8>
3f4002f9:	6f6c      	movi.n	a15, -26
3f4002fb:	206b63        	lsi	f6, a11, 128
3f4002fe:	3a3a      	add.n	a3, a10, a3
3f400300:	745220        	extui	a5, a2, 2, 8
3f400303:	745863        	lsi	f6, a8, 0x1d0
3f400306:	466c61        	l32r	a6, 3f3d1cb8 <PS_WOE+0x3f391cb8>
3f400309:	716572        	s32i	a7, a5, 0x1c4
3f40030c:	4d3034        	lsi	f3, a0, 0x134
3f40030f:	      	s32i.n	a2, a15, 8

3f400310 <anon.220f297325a9d28b2d8a7dde158d4e7a.5.llvm.11142646695660715228>:
3f400310:	2f          	.byte 0x2f
3f400311:	6f68      	l32i.n	a6, a15, 24
3f400313:	656d      	lsi	f6, a5, 20
3f400315:	2f          	.byte 0x2f
3f400316:	616d      	lsi	f6, a1, 4
3f400318:	7a6562        	s32i	a6, a5, 0x1e8
3f40031b:	2f          	.byte 0x2f
3f40031c:	766564        	lsi	f6, a5, 0x1d8
3f40031f:	6f6c65        	call8	3f46f9e4 <_rodata_end+0x6d2dc>
3f400322:	656d70        	extui	a6, a7, 29, 7
3f400325:	6e          	.byte 0x6e
3f400326:	722f74        	lsi	f7, a15, 0x1c8
3f400329:	747375        	call12	3f474a60 <_rodata_end+0x72358>
3f40032c:	2f          	.byte 0x2f
3f40032d:	626d65        	call8	3f462a04 <_rodata_end+0x602fc>
3f400330:	646465        	call8	3f464978 <_rodata_end+0x62270>
3f400333:	2f6465        	call8	3f42f978 <_rodata_end+0x2d270>
3f400336:	6168      	l32i.n	a6, a1, 24
3f400338:	2f6c      	movi.n	a15, -30
3f40033a:	707365        	call8	3f470a70 <_rodata_end+0x6e368>
3f40033d:	682d      	lsi	f2, a8, 32
3f40033f:	2f6c61        	l32r	a6, 3f3cc0f0 <PS_WOE+0x3f38c0f0>
3f400342:	707365        	call8	3f470a78 <_rodata_end+0x6e370>
3f400345:	682d      	lsi	f2, a8, 32
3f400347:	2d6c61        	l32r	a6, 3f3cb8f8 <PS_WOE+0x3f38b8f8>
3f40034a:	6d6f63        	lsi	f6, a15, 0x1b4
3f40034d:	6f6d      	lsi	f6, a15, 60
3f40034f:	6e          	.byte 0x6e
3f400350:	2f          	.byte 0x2f
3f400351:	637273        	lsi	f7, a2, 0x18c
3f400354:	2f          	.byte 0x2f
3f400355:	637472        	lsi	f7, a4, 0x18c
3f400358:	2f          	.byte 0x2f
3f400359:	707365        	call8	3f470a90 <_rodata_end+0x6e388>
3f40035c:	2e3233        	lsi	f3, a2, 184
3f40035f:	007372        	lsi	f7, a3, 0
	...

3f400364 <anon.220f297325a9d28b2d8a7dde158d4e7a.6.llvm.11142646695660715228>:
3f400364:	400310        	lsi	f1, a3, 0x100
3f400367:	3f          	.byte 0x3f
3f400368:	000051        	l32r	a5, 3f3c0368 <PS_WOE+0x3f380368>
3f40036b:	000a00        	lsi	f0, a10, 0
3f40036e:	050000        	extui	a0, a0, 16, 1
3f400371:	000000        	ill
3f400374:	637845        	call0	3f463afc <_rodata_end+0x613f4>
3f400377:	747065        	call8	3f474a7c <_rodata_end+0x72374>
3f40037a:	6f69      	s32i.n	a6, a15, 24
3f40037c:	6e          	.byte 0x6e
3f40037d:	203a      	add.n	a2, a0, a3
3f40037f:	202c      	movi.n	a0, 34
3f400381:	000000        	ill
3f400384:	400374        	lsi	f7, a3, 0x100
3f400387:	3f          	.byte 0x3f
3f400388:	000b      	addi.n	a0, a0, -1
3f40038a:	7f0000        	f64cmph	a0, a0, a0, 7
3f40038d:	3f4003        	ssi	f0, a0, 252
3f400390:	000002        	l8ui	a0, a0, 0
3f400393:	000000        	ill
3f400396:	200000        	or	a0, a0, a0
3f400399:	000000        	ill
3f40039c:	000000        	ill
3f40039f:	000200        	lsi	f0, a2, 0
3f4003a2:	000000        	ill
3f4003a5:	000000        	ill
3f4003a8:	000002        	l8ui	a0, a0, 0
3f4003ab:	000000        	ill
3f4003ae:	030000        	rsr.lbeg	a0
3f4003b1:	000000        	ill
3f4003b4:	000001        	l32r	a0, 3f3c03b4 <PS_WOE+0x3f3803b4>
3f4003b7:	002000        	isync
3f4003ba:	180000        	lsxp	f0, a0, a0
3f4003bd:	000000        	ill
3f4003c0:	000002        	l8ui	a0, a0, 0
	...
3f4003cb:	000800        	lsi	f0, a8, 0
3f4003ce:	030000        	rsr.lbeg	a0
3f4003d1:	000000        	ill
3f4003d4:	2f          	.byte 0x2f
3f4003d5:	6f68      	l32i.n	a6, a15, 24
3f4003d7:	656d      	lsi	f6, a5, 20
3f4003d9:	2f          	.byte 0x2f
3f4003da:	616d      	lsi	f6, a1, 4
3f4003dc:	7a6562        	s32i	a6, a5, 0x1e8
3f4003df:	2f          	.byte 0x2f
3f4003e0:	2e          	.byte 0x2e
3f4003e1:	726163        	lsi	f6, a1, 0x1c8
3f4003e4:	2f6f67        	bbci	a15, 6, 3f400417 <anon.220f297325a9d28b2d8a7dde158d4e7a.6.llvm.11142646695660715228+0xb3>
3f4003e7:	676572        	s32i	a7, a5, 0x19c
3f4003ea:	7369      	s32i.n	a6, a3, 28
3f4003ec:	797274        	lsi	f7, a2, 0x1e4
3f4003ef:	2f          	.byte 0x2f
3f4003f0:	637273        	lsi	f7, a2, 0x18c
3f4003f3:	2f          	.byte 0x2f
3f4003f4:	746967        	bbci	a9, 6, 3f40046c <anon.220f297325a9d28b2d8a7dde158d4e7a.6.llvm.11142646695660715228+0x108>
3f4003f7:	7568      	l32i.n	a6, a5, 28
3f4003f9:	632e62        	l32i	a6, a14, 0x18c
3f4003fc:	6f          	.byte 0x6f
3f4003fd:	2d6d      	lsi	f6, a13, 52
3f4003ff:	636531        	l32r	a3, 3f3d9194 <PS_WOE+0x3f399194>
3f400402:	323663        	lsi	f6, a6, 200
3f400405:	3939      	s32i.n	a3, a9, 12
3f400407:	396264        	lsi	f6, a2, 228
3f40040a:	386365        	call8	3f438a40 <_rodata_end+0x36338>
3f40040d:	2f3332        	lsi	f3, a3, 188
3f400410:	7478      	l32i.n	a7, a4, 28
3f400412:	736e65        	call8	3f473af8 <_rodata_end+0x713f0>
3f400415:	6c2d61        	l32r	a6, 3f3db4cc <PS_WOE+0x3f39b4cc>
3f400418:	2d78      	l32i.n	a7, a13, 8
3f40041a:	2d7472        	lsi	f7, a4, 180
3f40041d:	312e30        	srai	a2, a3, 30
3f400420:	302e33        	lsi	f3, a14, 192
3f400423:	2f          	.byte 0x2f
3f400424:	637273        	lsi	f7, a2, 0x18c
3f400427:	2f          	.byte 0x2f
3f400428:	637865        	call8	3f463bb0 <_rodata_end+0x614a8>
3f40042b:	747065        	call8	3f474b30 <_rodata_end+0x72428>
3f40042e:	6f69      	s32i.n	a6, a15, 24
3f400430:	6e          	.byte 0x6e
3f400431:	2f          	.byte 0x2f
3f400432:	707365        	call8	3f470b68 <_rodata_end+0x6e460>
3f400435:	2e3233        	lsi	f3, a2, 184
3f400438:	007372        	lsi	f7, a3, 0
3f40043b:	03d400        	rsr.excsave4	a0
3f40043e:	663f40        	lsi	f4, a15, 0x198
3f400441:	000000        	ill
3f400444:	000066        	bnei	a0, -1, 3f400448 <anon.220f297325a9d28b2d8a7dde158d4e7a.6.llvm.11142646695660715228+0xe4>
3f400447:	000500        	lsi	f0, a5, 0
3f40044a:	490000        	s32e	a0, a0, -64
3f40044d:	6e          	.byte 0x6e
3f40044e:	726574        	lsi	f7, a5, 0x1c8
3f400451:	707572        	lsi	f7, a5, 0x1c0
3f400454:	203a74        	lsi	f7, a10, 128
3f400457:	044c00        	extui	a4, a0, 12, 1
3f40045a:	0b3f40        	lsi	f4, a15, 44
3f40045d:	000000        	ill
3f400460:	7f          	.byte 0x7f
3f400461:	3f4003        	ssi	f0, a0, 252
3f400464:	000002        	l8ui	a0, a0, 0
3f400467:	03d400        	rsr.excsave4	a0
3f40046a:	663f40        	lsi	f4, a15, 0x198
3f40046d:	000000        	ill
3f400470:	006c      	movi.n	a0, -32
3f400472:	050000        	extui	a0, a0, 16, 1
3f400475:	000000        	ill
3f400478:	756f44        	lsi	f4, a15, 0x1d4
3f40047b:	656c62        	s32i	a6, a12, 0x194
3f40047e:	784520        	lsi	f2, a5, 0x1e0
3f400481:	706563        	lsi	f6, a5, 0x1c0
3f400484:	6f6974        	lsi	f7, a9, 0x1bc
3f400487:	6e          	.byte 0x6e
3f400488:	203a      	add.n	a2, a0, a3
3f40048a:	780000        	lsi	f0, a0, 0x1e0
3f40048d:	3f4004        	lsi	f0, a0, 252
3f400490:	000012        	l8ui	a1, a0, 0
3f400493:	037f00        	lsi	f0, a15, 12
3f400496:	023f40        	andb	b3, b15, b4
3f400499:	000000        	ill
3f40049c:	4003d4        	lsi	f13, a3, 0x100
3f40049f:	3f          	.byte 0x3f
3f4004a0:	000066        	bnei	a0, -1, 3f4004a4 <anon.220f297325a9d28b2d8a7dde158d4e7a.6.llvm.11142646695660715228+0x140>
3f4004a3:	007200        	waiti	2
3f4004a6:	050000        	extui	a0, a0, 16, 1
3f4004a9:	000000        	ill
3f4004ac:	6e6f43        	lsi	f4, a15, 0x1b8
3f4004af:	786574        	lsi	f7, a5, 0x1e0
3f4004b2:	435074        	lsi	f7, a0, 0x10c
3f4004b5:	000000        	ill
3f4004b8:	0d5340        	lsi	f4, a3, 52
3f4004bb:	000440        	lsi	f4, a4, 0
3f4004be:	040000        	extui	a0, a0, 0, 1
3f4004c1:	000000        	ill
3f4004c4:	0d14e4        	lsi	f14, a4, 52
3f4004c7:	535040        	max	a5, a0, a4
3f4004ca:	413041        	l32r	a4, 3f3d098c <PS_WOE+0x3f39098c>
3f4004cd:	324131        	l32r	a3, 3f3ccdd4 <PS_WOE+0x3f38cdd4>
3f4004d0:	413341        	l32r	a4, 3f3d099c <PS_WOE+0x3f39099c>
3f4004d3:	354134        	lsi	f3, a1, 212
3f4004d6:	413641        	l32r	a4, 3f3d09b0 <PS_WOE+0x3f3909b0>
3f4004d9:	384137        	ball	a1, a3, 3f400515 <anon.220f297325a9d28b2d8a7dde158d4e7a.6.llvm.11142646695660715228+0x1b1>
3f4004dc:	413941        	l32r	a4, 3f3d09c0 <PS_WOE+0x3f3909c0>
3f4004df:	413031        	l32r	a3, 3f3d09a0 <PS_WOE+0x3f3909a0>
3f4004e2:	413131        	l32r	a3, 3f3d09a8 <PS_WOE+0x3f3909a8>
3f4004e5:	413231        	l32r	a3, 3f3d09b0 <PS_WOE+0x3f3909b0>
3f4004e8:	413331        	l32r	a3, 3f3d09b4 <PS_WOE+0x3f3909b4>
3f4004eb:	413431        	l32r	a3, 3f3d09bc <PS_WOE+0x3f3909bc>
3f4004ee:	533531        	l32r	a3, 3f3d51c4 <PS_WOE+0x3f3951c4>
3f4004f1:	455241        	l32r	a4, 3f3d1a3c <PS_WOE+0x3f391a3c>
3f4004f4:	4358      	l32i.n	a5, a3, 16
3f4004f6:	554143        	ssi	f4, a1, 0x154
3f4004f9:	454553        	ssi	f5, a5, 0x114
3f4004fc:	4358      	l32i.n	a5, a3, 16
3f4004fe:	444156        	bnez	a1, 3f400946 <anon.220f297325a9d28b2d8a7dde158d4e7a.6.llvm.11142646695660715228+0x5e2>
3f400501:	4c5244        	lsi	f4, a2, 0x130
3f400504:	474542        	s8i	a4, a5, 71
3f400507:	454c      	movi.n	a5, 68
3f400509:	4e          	.byte 0x4e
3f40050a:	364644        	lsi	f4, a6, 216
3f40050d:	4c5334        	lsi	f3, a3, 0x130
3f400510:	554f43        	ssi	f4, a15, 0x154
3f400513:	4e          	.byte 0x4e
3f400514:	485454        	mula.da.ll.ldinc	m1, a4, m1, a5
3f400517:	414552        	s8i	a5, a5, 65
3f40051a:	545044        	lsi	f4, a0, 0x150
3f40051d:	435352        	s16i	a5, a3, 134
3f400520:	4f          	.byte 0x4f
3f400521:	504d      	lsi	f4, a0, 0
3f400523:	455241        	l32r	a4, 3f3d1a6c <PS_WOE+0x3f391a6c>
3f400526:	524231        	l32r	a3, 3f3d4e30 <PS_WOE+0x3f394e30>
3f400529:	434341        	l32r	a4, 3f3d1238 <PS_WOE+0x3f391238>
3f40052c:	4f4c      	movi.n	a15, 68
3f40052e:	434341        	l32r	a4, 3f3d123c <PS_WOE+0x3f39123c>
3f400531:	4948      	l32i.n	a4, a9, 16
3f400533:	304d      	lsi	f4, a0, 0
3f400535:	314d      	lsi	f4, a1, 4
3f400537:	324d      	lsi	f4, a2, 8
3f400539:	334d      	lsi	f4, a3, 12
3f40053b:	343646        	j	3f40d618 <_rodata_end+0xaf10>
3f40053e:	4c5f52        	s16i	a5, a15, 152
3f400541:	4f          	.byte 0x4f
3f400542:	343646        	j	3f40d61f <_rodata_end+0xaf17>
3f400545:	485f52        	s16i	a5, a15, 144
3f400548:	4649      	s32i.n	a4, a6, 16
3f40054a:	465243        	lsi	f4, a2, 0x118
3f40054d:	465253        	lsi	f5, a2, 0x118
3f400550:	314630        	srai	a4, a3, 22
3f400553:	463246        	j	3f411e20 <_rodata_end+0xf718>
3f400556:	344633        	ssi	f3, a6, 208
3f400559:	463546        	j	3f411e32 <_rodata_end+0xf72a>
3f40055c:	374636        	entry	a6, 0x1ba0
3f40055f:	463846        	j	3f411e44 <_rodata_end+0xf73c>
3f400562:	4639      	s32i.n	a3, a6, 16
3f400564:	463031        	l32r	a3, 3f3d1e24 <PS_WOE+0x3f391e24>
3f400567:	463131        	l32r	a3, 3f3d1e2c <PS_WOE+0x3f391e2c>
3f40056a:	463231        	l32r	a3, 3f3d1e34 <PS_WOE+0x3f391e34>
3f40056d:	463331        	l32r	a3, 3f3d1e3c <PS_WOE+0x3f391e3c>
3f400570:	463431        	l32r	a3, 3f3d1e40 <PS_WOE+0x3f391e40>
3f400573:	003531        	l32r	a3, 3f3c0648 <PS_WOE+0x3f380648>
3f400576:	2c0000        	lsi	f0, a0, 176
3f400579:	400d15        	call4	3f44064c <_rodata_end+0x3df44>
3f40057c:	157c      	movi.n	a5, -15
3f40057e:	400d      	lsi	f0, a0, 0
3f400580:	0d1584        	lsi	f8, a5, 52
3f400583:	158c40        	extui	a8, a4, 28, 2
3f400586:	400d      	lsi	f0, a0, 0
3f400588:	0d1594        	lsi	f9, a5, 52
3f40058b:	15e440        	extui	a14, a4, 20, 2
3f40058e:	400d      	lsi	f0, a0, 0
3f400590:	15ec      	bnez.n	a5, 3f4005b5 <anon.220f297325a9d28b2d8a7dde158d4e7a.6.llvm.11142646695660715228+0x251>
3f400592:	400d      	lsi	f0, a0, 0
3f400594:	159c      	beqz.n	a5, 3f4005a9 <anon.220f297325a9d28b2d8a7dde158d4e7a.6.llvm.11142646695660715228+0x245>
3f400596:	400d      	lsi	f0, a0, 0
3f400598:	0d15f4        	lsi	f15, a5, 52
3f40059b:	15a440        	extui	a10, a4, 20, 2
3f40059e:	400d      	lsi	f0, a0, 0
3f4005a0:	15fc      	bnez.n	a5, 3f4005d5 <anon.220f297325a9d28b2d8a7dde158d4e7a.6.llvm.11142646695660715228+0x271>
3f4005a2:	400d      	lsi	f0, a0, 0
3f4005a4:	0d1564        	lsi	f6, a5, 52
3f4005a7:	15ac40        	extui	a10, a4, 28, 2
3f4005aa:	400d      	lsi	f0, a0, 0
3f4005ac:	0d1604        	lsi	f0, a6, 52
3f4005af:	156c40        	extui	a6, a4, 28, 2
3f4005b2:	400d      	lsi	f0, a0, 0
3f4005b4:	0d15b4        	lsi	f11, a5, 52
3f4005b7:	154c40        	extui	a4, a4, 28, 2
3f4005ba:	400d      	lsi	f0, a0, 0
3f4005bc:	15bc      	beqz.n	a5, 3f4005f1 <anon.220f297325a9d28b2d8a7dde158d4e7a.6.llvm.11142646695660715228+0x28d>
3f4005be:	400d      	lsi	f0, a0, 0
3f4005c0:	160c      	movi.n	a6, 1
3f4005c2:	400d      	lsi	f0, a0, 0
3f4005c4:	163c      	movi.n	a6, 49
3f4005c6:	400d      	lsi	f0, a0, 0
3f4005c8:	0d1614        	lsi	f1, a6, 52
3f4005cb:	161c40        	lsi	f4, a12, 88
3f4005ce:	400d      	lsi	f0, a0, 0
3f4005d0:	0d1624        	lsi	f2, a6, 52
3f4005d3:	164440        	lsi	f4, a4, 88
3f4005d6:	400d      	lsi	f0, a0, 0
3f4005d8:	0d15c4        	lsi	f12, a5, 52
3f4005db:	15cc40        	extui	a12, a4, 28, 2
3f4005de:	400d      	lsi	f0, a0, 0
3f4005e0:	166c      	movi.n	a6, -31
3f4005e2:	400d      	lsi	f0, a0, 0
3f4005e4:	0d1554        	lsi	f5, a5, 52
3f4005e7:	164c40        	lsi	f4, a12, 88
3f4005ea:	400d      	lsi	f0, a0, 0
3f4005ec:	0d1654        	lsi	f5, a6, 52
3f4005ef:	162c40        	lsi	f4, a12, 88
3f4005f2:	400d      	lsi	f0, a0, 0
3f4005f4:	0d15d4        	lsi	f13, a5, 52
3f4005f7:	163440        	lsi	f4, a4, 88
3f4005fa:	400d      	lsi	f0, a0, 0
3f4005fc:	0d1574        	lsi	f7, a5, 52
3f4005ff:	155c40        	extui	a5, a4, 28, 2
3f400602:	400d      	lsi	f0, a0, 0
3f400604:	0d1534        	lsi	f3, a5, 52
3f400607:	153c40        	extui	a3, a4, 28, 2
3f40060a:	400d      	lsi	f0, a0, 0
3f40060c:	0d1544        	lsi	f4, a5, 52
3f40060f:	165c40        	lsi	f4, a12, 88
3f400612:	400d      	lsi	f0, a0, 0
3f400614:	0d1664        	lsi	f6, a6, 52
3f400617:	167d40        	lsi	f4, a13, 88
3f40061a:	400d      	lsi	f0, a0, 0
3f40061c:	167d      	lsi	f7, a6, 24
3f40061e:	400d      	lsi	f0, a0, 0
3f400620:	167d      	lsi	f7, a6, 24
3f400622:	400d      	lsi	f0, a0, 0
3f400624:	167d      	lsi	f7, a6, 24
3f400626:	400d      	lsi	f0, a0, 0
3f400628:	167d      	lsi	f7, a6, 24
3f40062a:	400d      	lsi	f0, a0, 0
3f40062c:	167d      	lsi	f7, a6, 24
3f40062e:	400d      	lsi	f0, a0, 0
3f400630:	167d      	lsi	f7, a6, 24
3f400632:	400d      	lsi	f0, a0, 0
3f400634:	167d      	lsi	f7, a6, 24
3f400636:	400d      	lsi	f0, a0, 0
3f400638:	167d      	lsi	f7, a6, 24
3f40063a:	400d      	lsi	f0, a0, 0
3f40063c:	167d      	lsi	f7, a6, 24
3f40063e:	400d      	lsi	f0, a0, 0
3f400640:	167d      	lsi	f7, a6, 24
3f400642:	400d      	lsi	f0, a0, 0
3f400644:	167d      	lsi	f7, a6, 24
3f400646:	400d      	lsi	f0, a0, 0
3f400648:	167d      	lsi	f7, a6, 24
3f40064a:	400d      	lsi	f0, a0, 0
3f40064c:	167d      	lsi	f7, a6, 24
3f40064e:	400d      	lsi	f0, a0, 0
3f400650:	167d      	lsi	f7, a6, 24
3f400652:	400d      	lsi	f0, a0, 0
3f400654:	167d      	lsi	f7, a6, 24
3f400656:	400d      	lsi	f0, a0, 0
3f400658:	167d      	lsi	f7, a6, 24
3f40065a:	400d      	lsi	f0, a0, 0
3f40065c:	167d      	lsi	f7, a6, 24
3f40065e:	400d      	lsi	f0, a0, 0
3f400660:	167d      	lsi	f7, a6, 24
3f400662:	400d      	lsi	f0, a0, 0
3f400664:	167d      	lsi	f7, a6, 24
3f400666:	400d      	lsi	f0, a0, 0
3f400668:	167d      	lsi	f7, a6, 24
3f40066a:	400d      	lsi	f0, a0, 0
3f40066c:	167d      	lsi	f7, a6, 24
3f40066e:	400d      	lsi	f0, a0, 0
3f400670:	167d      	lsi	f7, a6, 24
3f400672:	400d      	lsi	f0, a0, 0
3f400674:	167d      	lsi	f7, a6, 24
3f400676:	400d      	lsi	f0, a0, 0
3f400678:	167d      	lsi	f7, a6, 24
3f40067a:	400d      	lsi	f0, a0, 0
3f40067c:	167d      	lsi	f7, a6, 24
3f40067e:	400d      	lsi	f0, a0, 0
3f400680:	167d      	lsi	f7, a6, 24
3f400682:	400d      	lsi	f0, a0, 0
3f400684:	167d      	lsi	f7, a6, 24
3f400686:	400d      	lsi	f0, a0, 0
3f400688:	167d      	lsi	f7, a6, 24
3f40068a:	400d      	lsi	f0, a0, 0
3f40068c:	167d      	lsi	f7, a6, 24
3f40068e:	400d      	lsi	f0, a0, 0
3f400690:	167d      	lsi	f7, a6, 24
3f400692:	400d      	lsi	f0, a0, 0
3f400694:	167d      	lsi	f7, a6, 24
3f400696:	400d      	lsi	f0, a0, 0
3f400698:	167d      	lsi	f7, a6, 24
3f40069a:	400d      	lsi	f0, a0, 0
3f40069c:	167d      	lsi	f7, a6, 24
3f40069e:	400d      	lsi	f0, a0, 0
3f4006a0:	167d      	lsi	f7, a6, 24
3f4006a2:	400d      	lsi	f0, a0, 0
3f4006a4:	167d      	lsi	f7, a6, 24
3f4006a6:	400d      	lsi	f0, a0, 0
3f4006a8:	167d      	lsi	f7, a6, 24
3f4006aa:	400d      	lsi	f0, a0, 0
3f4006ac:	167d      	lsi	f7, a6, 24
3f4006ae:	400d      	lsi	f0, a0, 0
3f4006b0:	167d      	lsi	f7, a6, 24
3f4006b2:	400d      	lsi	f0, a0, 0
3f4006b4:	167d      	lsi	f7, a6, 24
3f4006b6:	400d      	lsi	f0, a0, 0
3f4006b8:	167d      	lsi	f7, a6, 24
3f4006ba:	400d      	lsi	f0, a0, 0
3f4006bc:	167d      	lsi	f7, a6, 24
3f4006be:	400d      	lsi	f0, a0, 0
3f4006c0:	167d      	lsi	f7, a6, 24
3f4006c2:	400d      	lsi	f0, a0, 0
3f4006c4:	167d      	lsi	f7, a6, 24
3f4006c6:	400d      	lsi	f0, a0, 0
3f4006c8:	167d      	lsi	f7, a6, 24
3f4006ca:	400d      	lsi	f0, a0, 0
3f4006cc:	167d      	lsi	f7, a6, 24
3f4006ce:	400d      	lsi	f0, a0, 0
3f4006d0:	167d      	lsi	f7, a6, 24
3f4006d2:	400d      	lsi	f0, a0, 0
3f4006d4:	167d      	lsi	f7, a6, 24
3f4006d6:	400d      	lsi	f0, a0, 0
3f4006d8:	167d      	lsi	f7, a6, 24
3f4006da:	400d      	lsi	f0, a0, 0
3f4006dc:	167d      	lsi	f7, a6, 24
3f4006de:	400d      	lsi	f0, a0, 0
3f4006e0:	167d      	lsi	f7, a6, 24
3f4006e2:	400d      	lsi	f0, a0, 0
3f4006e4:	167d      	lsi	f7, a6, 24
3f4006e6:	400d      	lsi	f0, a0, 0
3f4006e8:	167d      	lsi	f7, a6, 24
3f4006ea:	400d      	lsi	f0, a0, 0
3f4006ec:	167d      	lsi	f7, a6, 24
3f4006ee:	400d      	lsi	f0, a0, 0
3f4006f0:	167d      	lsi	f7, a6, 24
3f4006f2:	400d      	lsi	f0, a0, 0
3f4006f4:	167d      	lsi	f7, a6, 24
3f4006f6:	400d      	lsi	f0, a0, 0
3f4006f8:	167d      	lsi	f7, a6, 24
3f4006fa:	400d      	lsi	f0, a0, 0
3f4006fc:	167d      	lsi	f7, a6, 24
3f4006fe:	400d      	lsi	f0, a0, 0
3f400700:	167d      	lsi	f7, a6, 24
3f400702:	400d      	lsi	f0, a0, 0
3f400704:	167d      	lsi	f7, a6, 24
3f400706:	400d      	lsi	f0, a0, 0
3f400708:	167d      	lsi	f7, a6, 24
3f40070a:	400d      	lsi	f0, a0, 0
3f40070c:	167d      	lsi	f7, a6, 24
3f40070e:	400d      	lsi	f0, a0, 0
3f400710:	167d      	lsi	f7, a6, 24
3f400712:	400d      	lsi	f0, a0, 0
3f400714:	167d      	lsi	f7, a6, 24
3f400716:	400d      	lsi	f0, a0, 0
3f400718:	167d      	lsi	f7, a6, 24
3f40071a:	400d      	lsi	f0, a0, 0
3f40071c:	167d      	lsi	f7, a6, 24
3f40071e:	400d      	lsi	f0, a0, 0
3f400720:	167d      	lsi	f7, a6, 24
3f400722:	400d      	lsi	f0, a0, 0
3f400724:	167d      	lsi	f7, a6, 24
3f400726:	400d      	lsi	f0, a0, 0
3f400728:	167d      	lsi	f7, a6, 24
3f40072a:	400d      	lsi	f0, a0, 0
3f40072c:	167d      	lsi	f7, a6, 24
3f40072e:	400d      	lsi	f0, a0, 0
3f400730:	167d      	lsi	f7, a6, 24
3f400732:	400d      	lsi	f0, a0, 0
3f400734:	167d      	lsi	f7, a6, 24
3f400736:	400d      	lsi	f0, a0, 0
3f400738:	167d      	lsi	f7, a6, 24
3f40073a:	400d      	lsi	f0, a0, 0
3f40073c:	167d      	lsi	f7, a6, 24
3f40073e:	400d      	lsi	f0, a0, 0
3f400740:	167d      	lsi	f7, a6, 24
3f400742:	400d      	lsi	f0, a0, 0
3f400744:	167d      	lsi	f7, a6, 24
3f400746:	400d      	lsi	f0, a0, 0
3f400748:	167d      	lsi	f7, a6, 24
3f40074a:	400d      	lsi	f0, a0, 0
3f40074c:	167d      	lsi	f7, a6, 24
3f40074e:	400d      	lsi	f0, a0, 0
3f400750:	167d      	lsi	f7, a6, 24
3f400752:	400d      	lsi	f0, a0, 0
3f400754:	167d      	lsi	f7, a6, 24
3f400756:	400d      	lsi	f0, a0, 0
3f400758:	167d      	lsi	f7, a6, 24
3f40075a:	400d      	lsi	f0, a0, 0
3f40075c:	167d      	lsi	f7, a6, 24
3f40075e:	400d      	lsi	f0, a0, 0
3f400760:	167d      	lsi	f7, a6, 24
3f400762:	400d      	lsi	f0, a0, 0
3f400764:	167d      	lsi	f7, a6, 24
3f400766:	400d      	lsi	f0, a0, 0
3f400768:	167d      	lsi	f7, a6, 24
3f40076a:	400d      	lsi	f0, a0, 0
3f40076c:	167d      	lsi	f7, a6, 24
3f40076e:	400d      	lsi	f0, a0, 0
3f400770:	167d      	lsi	f7, a6, 24
3f400772:	400d      	lsi	f0, a0, 0
3f400774:	167d      	lsi	f7, a6, 24
3f400776:	400d      	lsi	f0, a0, 0
3f400778:	167d      	lsi	f7, a6, 24
3f40077a:	400d      	lsi	f0, a0, 0
3f40077c:	167d      	lsi	f7, a6, 24
3f40077e:	400d      	lsi	f0, a0, 0
3f400780:	167d      	lsi	f7, a6, 24
3f400782:	400d      	lsi	f0, a0, 0
3f400784:	167d      	lsi	f7, a6, 24
3f400786:	400d      	lsi	f0, a0, 0
3f400788:	167d      	lsi	f7, a6, 24
3f40078a:	400d      	lsi	f0, a0, 0
3f40078c:	167d      	lsi	f7, a6, 24
3f40078e:	400d      	lsi	f0, a0, 0
3f400790:	167d      	lsi	f7, a6, 24
3f400792:	400d      	lsi	f0, a0, 0
3f400794:	167d      	lsi	f7, a6, 24
3f400796:	400d      	lsi	f0, a0, 0
3f400798:	167d      	lsi	f7, a6, 24
3f40079a:	400d      	lsi	f0, a0, 0
3f40079c:	167d      	lsi	f7, a6, 24
3f40079e:	400d      	lsi	f0, a0, 0
3f4007a0:	167d      	lsi	f7, a6, 24
3f4007a2:	400d      	lsi	f0, a0, 0
3f4007a4:	167d      	lsi	f7, a6, 24
3f4007a6:	400d      	lsi	f0, a0, 0
3f4007a8:	167d      	lsi	f7, a6, 24
3f4007aa:	400d      	lsi	f0, a0, 0
3f4007ac:	167d      	lsi	f7, a6, 24
3f4007ae:	400d      	lsi	f0, a0, 0
3f4007b0:	167d      	lsi	f7, a6, 24
3f4007b2:	400d      	lsi	f0, a0, 0
3f4007b4:	167d      	lsi	f7, a6, 24
3f4007b6:	400d      	lsi	f0, a0, 0
3f4007b8:	167d      	lsi	f7, a6, 24
3f4007ba:	400d      	lsi	f0, a0, 0
3f4007bc:	167d      	lsi	f7, a6, 24
3f4007be:	400d      	lsi	f0, a0, 0
3f4007c0:	167d      	lsi	f7, a6, 24
3f4007c2:	400d      	lsi	f0, a0, 0
3f4007c4:	167d      	lsi	f7, a6, 24
3f4007c6:	400d      	lsi	f0, a0, 0
3f4007c8:	167d      	lsi	f7, a6, 24
3f4007ca:	400d      	lsi	f0, a0, 0
3f4007cc:	167d      	lsi	f7, a6, 24
3f4007ce:	400d      	lsi	f0, a0, 0
3f4007d0:	167d      	lsi	f7, a6, 24
3f4007d2:	400d      	lsi	f0, a0, 0
3f4007d4:	167d      	lsi	f7, a6, 24
3f4007d6:	400d      	lsi	f0, a0, 0
3f4007d8:	167d      	lsi	f7, a6, 24
3f4007da:	400d      	lsi	f0, a0, 0
3f4007dc:	167d      	lsi	f7, a6, 24
3f4007de:	400d      	lsi	f0, a0, 0
3f4007e0:	167d      	lsi	f7, a6, 24
3f4007e2:	400d      	lsi	f0, a0, 0
3f4007e4:	167d      	lsi	f7, a6, 24
3f4007e6:	400d      	lsi	f0, a0, 0
3f4007e8:	167d      	lsi	f7, a6, 24
3f4007ea:	400d      	lsi	f0, a0, 0
3f4007ec:	167d      	lsi	f7, a6, 24
3f4007ee:	400d      	lsi	f0, a0, 0
3f4007f0:	167d      	lsi	f7, a6, 24
3f4007f2:	400d      	lsi	f0, a0, 0
3f4007f4:	167d      	lsi	f7, a6, 24
3f4007f6:	400d      	lsi	f0, a0, 0
3f4007f8:	167d      	lsi	f7, a6, 24
3f4007fa:	400d      	lsi	f0, a0, 0
3f4007fc:	167d      	lsi	f7, a6, 24
3f4007fe:	400d      	lsi	f0, a0, 0
3f400800:	167d      	lsi	f7, a6, 24
3f400802:	400d      	lsi	f0, a0, 0
3f400804:	167d      	lsi	f7, a6, 24
3f400806:	400d      	lsi	f0, a0, 0
3f400808:	167d      	lsi	f7, a6, 24
3f40080a:	400d      	lsi	f0, a0, 0
3f40080c:	167d      	lsi	f7, a6, 24
3f40080e:	400d      	lsi	f0, a0, 0
3f400810:	167d      	lsi	f7, a6, 24
3f400812:	400d      	lsi	f0, a0, 0
3f400814:	167d      	lsi	f7, a6, 24
3f400816:	400d      	lsi	f0, a0, 0
3f400818:	167d      	lsi	f7, a6, 24
3f40081a:	400d      	lsi	f0, a0, 0
3f40081c:	167d      	lsi	f7, a6, 24
3f40081e:	400d      	lsi	f0, a0, 0
3f400820:	167d      	lsi	f7, a6, 24
3f400822:	400d      	lsi	f0, a0, 0
3f400824:	167d      	lsi	f7, a6, 24
3f400826:	400d      	lsi	f0, a0, 0
3f400828:	167d      	lsi	f7, a6, 24
3f40082a:	400d      	lsi	f0, a0, 0
3f40082c:	167d      	lsi	f7, a6, 24
3f40082e:	400d      	lsi	f0, a0, 0
3f400830:	167d      	lsi	f7, a6, 24
3f400832:	400d      	lsi	f0, a0, 0
3f400834:	167d      	lsi	f7, a6, 24
3f400836:	400d      	lsi	f0, a0, 0
3f400838:	167d      	lsi	f7, a6, 24
3f40083a:	400d      	lsi	f0, a0, 0
3f40083c:	167d      	lsi	f7, a6, 24
3f40083e:	400d      	lsi	f0, a0, 0
3f400840:	167d      	lsi	f7, a6, 24
3f400842:	400d      	lsi	f0, a0, 0
3f400844:	167d      	lsi	f7, a6, 24
3f400846:	400d      	lsi	f0, a0, 0
3f400848:	167d      	lsi	f7, a6, 24
3f40084a:	400d      	lsi	f0, a0, 0
3f40084c:	167d      	lsi	f7, a6, 24
3f40084e:	400d      	lsi	f0, a0, 0
3f400850:	167d      	lsi	f7, a6, 24
3f400852:	400d      	lsi	f0, a0, 0
3f400854:	167d      	lsi	f7, a6, 24
3f400856:	400d      	lsi	f0, a0, 0
3f400858:	167d      	lsi	f7, a6, 24
3f40085a:	400d      	lsi	f0, a0, 0
3f40085c:	167d      	lsi	f7, a6, 24
3f40085e:	400d      	lsi	f0, a0, 0
3f400860:	167d      	lsi	f7, a6, 24
3f400862:	400d      	lsi	f0, a0, 0
3f400864:	167d      	lsi	f7, a6, 24
3f400866:	400d      	lsi	f0, a0, 0
3f400868:	167d      	lsi	f7, a6, 24
3f40086a:	400d      	lsi	f0, a0, 0
3f40086c:	167d      	lsi	f7, a6, 24
3f40086e:	400d      	lsi	f0, a0, 0
3f400870:	167d      	lsi	f7, a6, 24
3f400872:	400d      	lsi	f0, a0, 0
3f400874:	167d      	lsi	f7, a6, 24
3f400876:	400d      	lsi	f0, a0, 0
3f400878:	167d      	lsi	f7, a6, 24
3f40087a:	400d      	lsi	f0, a0, 0
3f40087c:	167d      	lsi	f7, a6, 24
3f40087e:	400d      	lsi	f0, a0, 0
3f400880:	167d      	lsi	f7, a6, 24
3f400882:	400d      	lsi	f0, a0, 0
3f400884:	167d      	lsi	f7, a6, 24
3f400886:	400d      	lsi	f0, a0, 0
3f400888:	167d      	lsi	f7, a6, 24
3f40088a:	400d      	lsi	f0, a0, 0
3f40088c:	167d      	lsi	f7, a6, 24
3f40088e:	400d      	lsi	f0, a0, 0
3f400890:	167d      	lsi	f7, a6, 24
3f400892:	400d      	lsi	f0, a0, 0
3f400894:	167d      	lsi	f7, a6, 24
3f400896:	400d      	lsi	f0, a0, 0
3f400898:	167d      	lsi	f7, a6, 24
3f40089a:	400d      	lsi	f0, a0, 0
3f40089c:	167d      	lsi	f7, a6, 24
3f40089e:	400d      	lsi	f0, a0, 0
3f4008a0:	167d      	lsi	f7, a6, 24
3f4008a2:	400d      	lsi	f0, a0, 0
3f4008a4:	167d      	lsi	f7, a6, 24
3f4008a6:	400d      	lsi	f0, a0, 0
3f4008a8:	167d      	lsi	f7, a6, 24
3f4008aa:	400d      	lsi	f0, a0, 0
3f4008ac:	167d      	lsi	f7, a6, 24
3f4008ae:	400d      	lsi	f0, a0, 0
3f4008b0:	167d      	lsi	f7, a6, 24
3f4008b2:	400d      	lsi	f0, a0, 0
3f4008b4:	167d      	lsi	f7, a6, 24
3f4008b6:	400d      	lsi	f0, a0, 0
3f4008b8:	167d      	lsi	f7, a6, 24
3f4008ba:	400d      	lsi	f0, a0, 0
3f4008bc:	167d      	lsi	f7, a6, 24
3f4008be:	400d      	lsi	f0, a0, 0
3f4008c0:	167d      	lsi	f7, a6, 24
3f4008c2:	400d      	lsi	f0, a0, 0
3f4008c4:	167d      	lsi	f7, a6, 24
3f4008c6:	400d      	lsi	f0, a0, 0
3f4008c8:	167d      	lsi	f7, a6, 24
3f4008ca:	400d      	lsi	f0, a0, 0
3f4008cc:	167d      	lsi	f7, a6, 24
3f4008ce:	400d      	lsi	f0, a0, 0
3f4008d0:	167d      	lsi	f7, a6, 24
3f4008d2:	400d      	lsi	f0, a0, 0
3f4008d4:	167d      	lsi	f7, a6, 24
3f4008d6:	400d      	lsi	f0, a0, 0
3f4008d8:	167d      	lsi	f7, a6, 24
3f4008da:	400d      	lsi	f0, a0, 0
3f4008dc:	167d      	lsi	f7, a6, 24
3f4008de:	400d      	lsi	f0, a0, 0
3f4008e0:	167d      	lsi	f7, a6, 24
3f4008e2:	400d      	lsi	f0, a0, 0
3f4008e4:	167d      	lsi	f7, a6, 24
3f4008e6:	400d      	lsi	f0, a0, 0
3f4008e8:	167d      	lsi	f7, a6, 24
3f4008ea:	400d      	lsi	f0, a0, 0
3f4008ec:	167d      	lsi	f7, a6, 24
3f4008ee:	400d      	lsi	f0, a0, 0
3f4008f0:	167d      	lsi	f7, a6, 24
3f4008f2:	400d      	lsi	f0, a0, 0
3f4008f4:	167d      	lsi	f7, a6, 24
3f4008f6:	400d      	lsi	f0, a0, 0
3f4008f8:	167d      	lsi	f7, a6, 24
3f4008fa:	400d      	lsi	f0, a0, 0
3f4008fc:	167d      	lsi	f7, a6, 24
3f4008fe:	400d      	lsi	f0, a0, 0
3f400900:	167d      	lsi	f7, a6, 24
3f400902:	400d      	lsi	f0, a0, 0
3f400904:	167d      	lsi	f7, a6, 24
3f400906:	400d      	lsi	f0, a0, 0
3f400908:	167d      	lsi	f7, a6, 24
3f40090a:	400d      	lsi	f0, a0, 0
3f40090c:	167d      	lsi	f7, a6, 24
3f40090e:	400d      	lsi	f0, a0, 0
3f400910:	167d      	lsi	f7, a6, 24
3f400912:	400d      	lsi	f0, a0, 0
3f400914:	167d      	lsi	f7, a6, 24
3f400916:	400d      	lsi	f0, a0, 0
3f400918:	167d      	lsi	f7, a6, 24
3f40091a:	400d      	lsi	f0, a0, 0
3f40091c:	167d      	lsi	f7, a6, 24
3f40091e:	400d      	lsi	f0, a0, 0
3f400920:	167d      	lsi	f7, a6, 24
3f400922:	400d      	lsi	f0, a0, 0
3f400924:	167d      	lsi	f7, a6, 24
3f400926:	400d      	lsi	f0, a0, 0
3f400928:	167d      	lsi	f7, a6, 24
3f40092a:	400d      	lsi	f0, a0, 0
3f40092c:	167d      	lsi	f7, a6, 24
3f40092e:	400d      	lsi	f0, a0, 0
3f400930:	167d      	lsi	f7, a6, 24
3f400932:	400d      	lsi	f0, a0, 0
3f400934:	167d      	lsi	f7, a6, 24
3f400936:	400d      	lsi	f0, a0, 0
3f400938:	167d      	lsi	f7, a6, 24
3f40093a:	400d      	lsi	f0, a0, 0
3f40093c:	167d      	lsi	f7, a6, 24
3f40093e:	400d      	lsi	f0, a0, 0
3f400940:	167d      	lsi	f7, a6, 24
3f400942:	400d      	lsi	f0, a0, 0
3f400944:	167d      	lsi	f7, a6, 24
3f400946:	400d      	lsi	f0, a0, 0
3f400948:	167d      	lsi	f7, a6, 24
3f40094a:	400d      	lsi	f0, a0, 0
3f40094c:	167d      	lsi	f7, a6, 24
3f40094e:	400d      	lsi	f0, a0, 0
3f400950:	167d      	lsi	f7, a6, 24
3f400952:	400d      	lsi	f0, a0, 0
3f400954:	167d      	lsi	f7, a6, 24
3f400956:	400d      	lsi	f0, a0, 0
3f400958:	167d      	lsi	f7, a6, 24
3f40095a:	400d      	lsi	f0, a0, 0
3f40095c:	167d      	lsi	f7, a6, 24
3f40095e:	400d      	lsi	f0, a0, 0
3f400960:	167d      	lsi	f7, a6, 24
3f400962:	400d      	lsi	f0, a0, 0
3f400964:	167d      	lsi	f7, a6, 24
3f400966:	400d      	lsi	f0, a0, 0
3f400968:	167d      	lsi	f7, a6, 24
3f40096a:	400d      	lsi	f0, a0, 0
3f40096c:	167d      	lsi	f7, a6, 24
3f40096e:	400d      	lsi	f0, a0, 0
3f400970:	167d      	lsi	f7, a6, 24
3f400972:	400d      	lsi	f0, a0, 0
3f400974:	15dc      	bnez.n	a5, 3f400989 <anon.220f297325a9d28b2d8a7dde158d4e7a.6.llvm.11142646695660715228+0x625>
3f400976:	400d      	lsi	f0, a0, 0
3f400978:	4e          	.byte 0x4e
3f400979:	6f          	.byte 0x6f
3f40097a:	6e          	.byte 0x6e
3f40097b:	704365        	call8	3f470db0 <_rodata_end+0x6e6a8>
3f40097e:	694437        	ball	a4, a3, 3f4009eb <anon.220f297325a9d28b2d8a7dde158d4e7a.6.llvm.11142646695660715228+0x687>
3f400981:	626173        	lsi	f7, a1, 0x188
3f400984:	656c      	movi.n	a5, -26
3f400986:	704364        	lsi	f6, a3, 0x1c0
3f400989:	694436        	entry	a4, 0x34a0
3f40098c:	626173        	lsi	f7, a1, 0x188
3f40098f:	656c      	movi.n	a5, -26
3f400991:	704364        	lsi	f6, a3, 0x1c0
3f400994:	694435        	call12	3f469dd8 <_rodata_end+0x676d0>
3f400997:	626173        	lsi	f7, a1, 0x188
3f40099a:	656c      	movi.n	a5, -26
3f40099c:	704364        	lsi	f6, a3, 0x1c0
3f40099f:	694434        	lsi	f3, a4, 0x1a4
3f4009a2:	626173        	lsi	f7, a1, 0x188
3f4009a5:	656c      	movi.n	a5, -26
3f4009a7:	704364        	lsi	f6, a3, 0x1c0
3f4009aa:	694433        	ssi	f3, a4, 0x1a4
3f4009ad:	626173        	lsi	f7, a1, 0x188
3f4009b0:	656c      	movi.n	a5, -26
3f4009b2:	704364        	lsi	f6, a3, 0x1c0
3f4009b5:	694432        	s8i	a3, a4, 105
3f4009b8:	626173        	lsi	f7, a1, 0x188
3f4009bb:	656c      	movi.n	a5, -26
3f4009bd:	704364        	lsi	f6, a3, 0x1c0
3f4009c0:	694431        	l32r	a3, 3f3daed0 <PS_WOE+0x3f39aed0>
3f4009c3:	626173        	lsi	f7, a1, 0x188
3f4009c6:	656c      	movi.n	a5, -26
3f4009c8:	704364        	lsi	f6, a3, 0x1c0
3f4009cb:	694430        	lsi	f3, a4, 0x1a4
3f4009ce:	626173        	lsi	f7, a1, 0x188
3f4009d1:	656c      	movi.n	a5, -26
3f4009d3:	655264        	lsi	f6, a2, 0x194
3f4009d6:	726573        	lsi	f7, a5, 0x1c8
3f4009d9:	646576        	lsi	f7, a5, 0x190
3f4009dc:	523133        	lsi	f3, a1, 0x148
3f4009df:	657365        	call8	3f466114 <_rodata_end+0x63a0c>
3f4009e2:	657672        	lsi	f7, a6, 0x194
3f4009e5:	303364        	lsi	f6, a3, 192
3f4009e8:	6f7453        	lsi	f5, a4, 0x1bc
3f4009eb:	506572        	s32i	a7, a5, 0x140
3f4009ee:	686f72        	s32i	a7, a15, 0x1a0
3f4009f1:	6269      	s32i.n	a6, a2, 24
3f4009f3:	7469      	s32i.n	a6, a4, 28
3f4009f5:	4c6465        	call8	3f44d03c <_rodata_end+0x4a934>
3f4009f8:	6f          	.byte 0x6f
3f4009f9:	506461        	l32r	a6, 3f3d4b8c <PS_WOE+0x3f394b8c>
3f4009fc:	686f72        	s32i	a7, a15, 0x1a0
3f4009ff:	6269      	s32i.n	a6, a2, 24
3f400a01:	7469      	s32i.n	a6, a4, 28
3f400a03:	526465        	call8	3f453048 <_rodata_end+0x50940>
3f400a06:	657365        	call8	3f46613c <_rodata_end+0x63a34>
3f400a09:	657672        	lsi	f7, a6, 0x194
3f400a0c:	373264        	lsi	f6, a2, 220
3f400a0f:	6f4c      	movi.n	a15, 70
3f400a11:	536461        	l32r	a6, 3f3d57a4 <PS_WOE+0x3f3957a4>
3f400a14:	726f74        	lsi	f7, a15, 0x1c8
3f400a17:	695265        	call8	3f469f3c <_rodata_end+0x67834>
3f400a1a:	6e          	.byte 0x6e
3f400a1b:	744467        	ball	a4, a6, 3f400a93 <anon.220f297325a9d28b2d8a7dde158d4e7a.6.llvm.11142646695660715228+0x72f>
3f400a1e:	626c      	movi.n	a2, -26
3f400a20:	754d      	lsi	f4, a5, 20
3f400a22:	746c      	movi.n	a4, -25
3f400a24:	4869      	s32i.n	a6, a8, 16
3f400a26:	7469      	s32i.n	a6, a4, 28
3f400a28:	6c7444        	lsi	f4, a4, 0x1b0
3f400a2b:	694d62        	s8i	a6, a13, 105
3f400a2e:	497373        	lsi	f7, a3, 0x124
3f400a31:	626c74        	lsi	f7, a12, 0x188
3f400a34:	694d      	lsi	f4, a9, 36
3f400a36:	527373        	lsi	f7, a3, 0x148
3f400a39:	657365        	call8	3f466170 <_rodata_end+0x63a68>
3f400a3c:	657672        	lsi	f7, a6, 0x194
3f400a3f:	333264        	lsi	f6, a2, 204
3f400a42:	736552        	s32i	a5, a5, 0x1cc
3f400a45:	767265        	call8	3f47716c <_rodata_end+0x74a64>
3f400a48:	326465        	call8	3f433090 <_rodata_end+0x30988>
3f400a4b:	655232        	s16i	a3, a2, 202
3f400a4e:	726573        	lsi	f7, a5, 0x1c8
3f400a51:	646576        	lsi	f7, a5, 0x190
3f400a54:	493132        	lsi	f3, a1, 0x124
3f400a57:	6e          	.byte 0x6e
3f400a58:	727473        	lsi	f7, a4, 0x1c8
3f400a5b:	6f7250        	f64cmph	a7, a2, a5, 6
3f400a5e:	6968      	l32i.n	a6, a9, 24
3f400a60:	746962        	s32i	a6, a9, 0x1d0
3f400a63:	526465        	call8	3f4530a8 <_rodata_end+0x509a0>
3f400a66:	657365        	call8	3f46619c <_rodata_end+0x63a94>
3f400a69:	657672        	lsi	f7, a6, 0x194
3f400a6c:	393164        	lsi	f6, a1, 228
3f400a6f:	6e49      	s32i.n	a4, a14, 24
3f400a71:	727473        	lsi	f7, a4, 0x1c8
3f400a74:	6e6952        	s32i	a5, a9, 0x1b8
3f400a77:	744967        	ball	a9, a6, 3f400aef <anon.220f297325a9d28b2d8a7dde158d4e7a.6.llvm.11142646695660715228+0x78b>
3f400a7a:	626c      	movi.n	a2, -26
3f400a7c:	754d      	lsi	f4, a5, 20
3f400a7e:	746c      	movi.n	a4, -25
3f400a80:	4869      	s32i.n	a6, a8, 16
3f400a82:	7469      	s32i.n	a6, a4, 28
3f400a84:	6f4c      	movi.n	a15, 70
3f400a86:	536461        	l32r	a6, 3f3d5818 <PS_WOE+0x3f395818>
3f400a89:	726f74        	lsi	f7, a15, 0x1c8
3f400a8c:	644165        	call8	3f464ea4 <_rodata_end+0x6279c>
3f400a8f:	457264        	lsi	f6, a2, 0x114
3f400a92:	6f7272        	lsi	f7, a2, 0x1bc
3f400a95:	6e4972        	s8i	a7, a9, 110
3f400a98:	727473        	lsi	f7, a4, 0x1c8
3f400a9b:	646441        	l32r	a4, 3f3d9c2c <PS_WOE+0x3f399c2c>
3f400a9e:	724572        	s8i	a7, a5, 114
3f400aa1:	726f72        	s32i	a7, a15, 0x1c8
3f400aa4:	6f4c      	movi.n	a15, 70
3f400aa6:	536461        	l32r	a6, 3f3d5838 <PS_WOE+0x3f395838>
3f400aa9:	726f74        	lsi	f7, a15, 0x1c8
3f400aac:	614465        	call8	3f461ef4 <_rodata_end+0x5f7ec>
3f400aaf:	456174        	lsi	f7, a1, 0x114
3f400ab2:	6f7272        	lsi	f7, a2, 0x1bc
3f400ab5:	6e4972        	s8i	a7, a9, 110
3f400ab8:	727473        	lsi	f7, a4, 0x1c8
3f400abb:	746144        	lsi	f4, a1, 0x1d0
3f400abe:	724561        	l32r	a6, 3f3dd3d4 <PS_WOE+0x3f39d3d4>
3f400ac1:	726f72        	s32i	a7, a15, 0x1c8
3f400ac4:	637845        	call0	3f46424c <_rodata_end+0x61b44>
3f400ac7:	756c      	movi.n	a5, -25
3f400ac9:	766973        	lsi	f7, a9, 0x1d8
3f400acc:	724565        	call8	3f472f24 <_rodata_end+0x7081c>
3f400acf:	726f72        	s32i	a7, a15, 0x1c8
3f400ad2:	747845        	call0	3f475258 <_rodata_end+0x72b50>
3f400ad5:	6e7265        	call8	3f46f1fc <_rodata_end+0x6caf4>
3f400ad8:	526c61        	l32r	a6, 3f3d5488 <PS_WOE+0x3f395488>
3f400adb:	696765        	call8	3f46a150 <_rodata_end+0x67a48>
3f400ade:	657473        	lsi	f7, a4, 0x194
3f400ae1:	725072        	s16i	a7, a0, 228
3f400ae4:	7669      	s32i.n	a6, a6, 28
3f400ae6:	6c69      	s32i.n	a6, a12, 24
3f400ae8:	656765        	call8	3f466160 <_rodata_end+0x63a58>
3f400aeb:	727245        	call0	3f473210 <_rodata_end+0x70b08>
3f400aee:	6f          	.byte 0x6f
3f400aef:	6e5572        	s16i	a7, a5, 220
3f400af2:	696c61        	l32r	a6, 3f3db0a4 <PS_WOE+0x3f39b0a4>
3f400af5:	656e67        	bbci	a14, 6, 3f400b5e <anon.220f297325a9d28b2d8a7dde158d4e7a.6.llvm.11142646695660715228+0x7fa>
3f400af8:	725064        	lsi	f6, a0, 0x1c8
3f400afb:	7669      	s32i.n	a6, a6, 28
3f400afd:	6c69      	s32i.n	a6, a12, 24
3f400aff:	656765        	call8	3f466174 <_rodata_end+0x63a6c>
3f400b02:	654e64        	lsi	f6, a14, 0x194
3f400b05:	7478      	l32i.n	a7, a4, 28
3f400b07:	564350        	lsi	f5, a3, 0x158
3f400b0a:	756c61        	l32r	a6, 3f3de0bc <PS_WOE+0x3f39e0bc>
3f400b0d:	6c4965        	call8	3f46cfa4 <_rodata_end+0x6a89c>
3f400b10:	656c      	movi.n	a5, -26
3f400b12:	6c6167        	bbci	a1, 6, 3f400b82 <esp32::__INTERRUPTS+0x22>
3f400b15:	766944        	lsi	f4, a9, 0x1d8
3f400b18:	6469      	s32i.n	a6, a4, 24
3f400b1a:	794265        	call8	3f479f40 <_rodata_end+0x77838>
3f400b1d:	655a      	add.n	a6, a5, a5
3f400b1f:	416f72        	s32i	a7, a15, 0x104
3f400b22:	6c6c      	movi.n	a12, -26
3f400b24:	6f          	.byte 0x6f
3f400b25:	4c6163        	lsi	f6, a1, 0x130
3f400b28:	657665        	call8	3f466290 <_rodata_end+0x63b88>
3f400b2b:	4f6c      	movi.n	a15, -28
3f400b2d:	6e          	.byte 0x6e
3f400b2e:	6e4965        	call8	3f46efc4 <_rodata_end+0x6c8bc>
3f400b31:	726574        	lsi	f7, a5, 0x1c8
3f400b34:	707572        	lsi	f7, a5, 0x1c0
3f400b37:	6f4c74        	lsi	f7, a12, 0x1bc
3f400b3a:	536461        	l32r	a6, 3f3d58cc <PS_WOE+0x3f3958cc>
3f400b3d:	726f74        	lsi	f7, a15, 0x1c8
3f400b40:	724565        	call8	3f472f98 <_rodata_end+0x70890>
3f400b43:	726f72        	s32i	a7, a15, 0x1c8
3f400b46:	6e49      	s32i.n	a4, a14, 24
3f400b48:	727473        	lsi	f7, a4, 0x1c8
3f400b4b:	727245        	call0	3f473270 <_rodata_end+0x70b68>
3f400b4e:	6f          	.byte 0x6f
3f400b4f:	795372        	s16i	a7, a3, 242
3f400b52:	616373        	lsi	f7, a3, 0x184
3f400b55:	6c6c      	movi.n	a12, -26
3f400b57:	6c49      	s32i.n	a4, a12, 24
3f400b59:	656c      	movi.n	a5, -26
3f400b5b:	6c6167        	bbci	a1, 6, 3f400bcb <esp32::__INTERRUPTS+0x6b>
	...

3f400b60 <esp32::__INTERRUPTS>:
3f400b60:	0d5300        	lsi	f0, a3, 52
3f400b63:	530040        	max	a0, a0, a4
3f400b66:	400d      	lsi	f0, a0, 0
3f400b68:	0d5300        	lsi	f0, a3, 52
3f400b6b:	530040        	max	a0, a0, a4
3f400b6e:	400d      	lsi	f0, a0, 0
3f400b70:	0d5300        	lsi	f0, a3, 52
3f400b73:	530040        	max	a0, a0, a4
3f400b76:	400d      	lsi	f0, a0, 0
3f400b78:	0d5300        	lsi	f0, a3, 52
3f400b7b:	530040        	max	a0, a0, a4
3f400b7e:	400d      	lsi	f0, a0, 0
3f400b80:	0d5300        	lsi	f0, a3, 52
3f400b83:	530040        	max	a0, a0, a4
3f400b86:	400d      	lsi	f0, a0, 0
	...
3f400b90:	0d5300        	lsi	f0, a3, 52
3f400b93:	530040        	max	a0, a0, a4
3f400b96:	400d      	lsi	f0, a0, 0
3f400b98:	0d5300        	lsi	f0, a3, 52
3f400b9b:	530040        	max	a0, a0, a4
3f400b9e:	400d      	lsi	f0, a0, 0
3f400ba0:	0d5300        	lsi	f0, a3, 52
3f400ba3:	530040        	max	a0, a0, a4
3f400ba6:	400d      	lsi	f0, a0, 0
3f400ba8:	0d5300        	lsi	f0, a3, 52
3f400bab:	530040        	max	a0, a0, a4
3f400bae:	400d      	lsi	f0, a0, 0
3f400bb0:	0d5300        	lsi	f0, a3, 52
3f400bb3:	530040        	max	a0, a0, a4
3f400bb6:	400d      	lsi	f0, a0, 0
3f400bb8:	0d5300        	lsi	f0, a3, 52
3f400bbb:	530040        	max	a0, a0, a4
3f400bbe:	400d      	lsi	f0, a0, 0
	...
3f400bd0:	0d5300        	lsi	f0, a3, 52
3f400bd3:	530040        	max	a0, a0, a4
3f400bd6:	400d      	lsi	f0, a0, 0
3f400bd8:	0d5300        	lsi	f0, a3, 52
3f400bdb:	530040        	max	a0, a0, a4
3f400bde:	400d      	lsi	f0, a0, 0
3f400be0:	0d5300        	lsi	f0, a3, 52
3f400be3:	530040        	max	a0, a0, a4
3f400be6:	400d      	lsi	f0, a0, 0
3f400be8:	0d5300        	lsi	f0, a3, 52
3f400beb:	530040        	max	a0, a0, a4
3f400bee:	400d      	lsi	f0, a0, 0
3f400bf0:	0d5300        	lsi	f0, a3, 52
3f400bf3:	000040        	lsi	f4, a0, 0
3f400bf6:	000000        	ill
3f400bf9:	000000        	ill
3f400bfc:	0d5300        	lsi	f0, a3, 52
3f400bff:	530040        	max	a0, a0, a4
3f400c02:	400d      	lsi	f0, a0, 0
	...
3f400c0c:	0d5300        	lsi	f0, a3, 52
3f400c0f:	530040        	max	a0, a0, a4
3f400c12:	400d      	lsi	f0, a0, 0
3f400c14:	0d5300        	lsi	f0, a3, 52
3f400c17:	530040        	max	a0, a0, a4
3f400c1a:	400d      	lsi	f0, a0, 0
3f400c1c:	0d5300        	lsi	f0, a3, 52
3f400c1f:	530040        	max	a0, a0, a4
3f400c22:	400d      	lsi	f0, a0, 0
3f400c24:	0d5300        	lsi	f0, a3, 52
3f400c27:	530040        	max	a0, a0, a4
3f400c2a:	400d      	lsi	f0, a0, 0
3f400c2c:	0d5300        	lsi	f0, a3, 52
3f400c2f:	530040        	max	a0, a0, a4
3f400c32:	400d      	lsi	f0, a0, 0
3f400c34:	0d5300        	lsi	f0, a3, 52
3f400c37:	530040        	max	a0, a0, a4
3f400c3a:	400d      	lsi	f0, a0, 0
3f400c3c:	000000        	ill
3f400c3f:	530000        	max	a0, a0, a0
3f400c42:	400d      	lsi	f0, a0, 0
3f400c44:	0d5300        	lsi	f0, a3, 52
3f400c47:	530040        	max	a0, a0, a4
3f400c4a:	400d      	lsi	f0, a0, 0
3f400c4c:	0d5300        	lsi	f0, a3, 52
3f400c4f:	530040        	max	a0, a0, a4
3f400c52:	400d      	lsi	f0, a0, 0
3f400c54:	0d5300        	lsi	f0, a3, 52
3f400c57:	530040        	max	a0, a0, a4
3f400c5a:	400d      	lsi	f0, a0, 0
3f400c5c:	0d5300        	lsi	f0, a3, 52
3f400c5f:	530040        	max	a0, a0, a4
3f400c62:	400d      	lsi	f0, a0, 0
3f400c64:	0d5300        	lsi	f0, a3, 52
3f400c67:	        	lsi	f4, a15, 0x1a0

3f400c68 <anon.47d802e9069e3c1943e29254d3ff411d.0.llvm.13237384441404841872>:
3f400c68:	2f          	.byte 0x2f
3f400c69:	6f68      	l32i.n	a6, a15, 24
3f400c6b:	656d      	lsi	f6, a5, 20
3f400c6d:	2f          	.byte 0x2f
3f400c6e:	616d      	lsi	f6, a1, 4
3f400c70:	7a6562        	s32i	a6, a5, 0x1e8
3f400c73:	2f          	.byte 0x2f
3f400c74:	766564        	lsi	f6, a5, 0x1d8
3f400c77:	6f6c65        	call8	3f47033c <_rodata_end+0x6dc34>
3f400c7a:	656d70        	extui	a6, a7, 29, 7
3f400c7d:	6e          	.byte 0x6e
3f400c7e:	722f74        	lsi	f7, a15, 0x1c8
3f400c81:	747375        	call12	3f4753b8 <_rodata_end+0x72cb0>
3f400c84:	2f          	.byte 0x2f
3f400c85:	7478      	l32i.n	a7, a4, 28
3f400c87:	736e65        	call8	3f47436c <_rodata_end+0x71c64>
3f400c8a:	722f61        	l32r	a6, 3f3dd548 <PS_WOE+0x3f39d548>
3f400c8d:	747375        	call12	3f4753c4 <_rodata_end+0x72cbc>
3f400c90:	782d      	lsi	f2, a8, 32
3f400c92:	6e6574        	lsi	f7, a5, 0x1b8
3f400c95:	2d6173        	lsi	f7, a1, 180
3f400c98:	766564        	lsi	f6, a5, 0x1d8
3f400c9b:	2f          	.byte 0x2f
3f400c9c:	697562        	lsi	f6, a5, 0x1a4
3f400c9f:	646c      	movi.n	a4, -26
3f400ca1:	2f          	.byte 0x2f
3f400ca2:	3878      	l32i.n	a7, a8, 12
3f400ca4:	365f36        	entry	a15, 0x1b28
3f400ca7:	752d34        	lsi	f3, a13, 0x1d4
3f400caa:	6e          	.byte 0x6e
3f400cab:	6e6b      	addi.n	a6, a14, 6
3f400cad:	6f          	.byte 0x6f
3f400cae:	2d6e77        	bbci	a14, 7, 3f400cdf <anon.47d802e9069e3c1943e29254d3ff411d.0.llvm.13237384441404841872+0x77>
3f400cb1:	696c      	movi.n	a9, -26
3f400cb3:	6e          	.byte 0x6e
3f400cb4:	2d7875        	call12	3f42e43c <_rodata_end+0x2bd34>
3f400cb7:	756e67        	bbci	a14, 6, 3f400d30 <anon.47d802e9069e3c1943e29254d3ff411d.5.llvm.13237384441404841872+0x2a>
3f400cba:	2f          	.byte 0x2f
3f400cbb:	617473        	lsi	f7, a4, 0x184
3f400cbe:	326567        	bbci	a5, 6, 3f400cf4 <anon.47d802e9069e3c1943e29254d3ff411d.1.llvm.13237384441404841872>
3f400cc1:	2f          	.byte 0x2f
3f400cc2:	696c      	movi.n	a9, -26
3f400cc4:	722f62        	l32i	a6, a15, 0x1c8
3f400cc7:	747375        	call12	3f4753fc <_rodata_end+0x72cf4>
3f400cca:	696c      	movi.n	a9, -26
3f400ccc:	732f62        	l32i	a6, a15, 0x1cc
3f400ccf:	2f6372        	s32i	a7, a3, 188
3f400cd2:	737572        	lsi	f7, a5, 0x1cc
3f400cd5:	6c2f74        	lsi	f7, a15, 0x1b0
3f400cd8:	6269      	s32i.n	a6, a2, 24
3f400cda:	726172        	s32i	a7, a1, 0x1c8
3f400cdd:	2f79      	s32i.n	a7, a15, 8
3f400cdf:	726f63        	lsi	f6, a15, 0x1c8
3f400ce2:	732f65        	call8	3f473fd8 <_rodata_end+0x718d0>
3f400ce5:	2f6372        	s32i	a7, a3, 188
3f400ce8:	746d66        	bnei	a13, 6, 3f400d60 <anon.47d802e9069e3c1943e29254d3ff411d.5.llvm.13237384441404841872+0x5a>
3f400ceb:	2f          	.byte 0x2f
3f400cec:	6e          	.byte 0x6e
3f400ced:	2e6d75        	call12	3f42f3c4 <_rodata_end+0x2ccbc>
3f400cf0:	007372        	lsi	f7, a3, 0
	...

3f400cf4 <anon.47d802e9069e3c1943e29254d3ff411d.1.llvm.13237384441404841872>:
3f400cf4:	0c68      	l32i.n	a6, a12, 0
3f400cf6:	8a3f40        	round.s	a3, f15, 4
3f400cf9:	000000        	ill
3f400cfc:	000065        	call8	3f400d04 <anon.47d802e9069e3c1943e29254d3ff411d.2.llvm.13237384441404841872>
3f400cff:	001400        	movsp	a0, a4
	...

3f400d04 <anon.47d802e9069e3c1943e29254d3ff411d.2.llvm.13237384441404841872>:
3f400d04:	        	xor	a7, a8, a3

3f400d06 <anon.47d802e9069e3c1943e29254d3ff411d.5.llvm.13237384441404841872>:
3f400d06:	303030        	xor	a3, a0, a3
3f400d09:	323031        	l32r	a3, 3f3cd5cc <PS_WOE+0x3f38d5cc>
3f400d0c:	303330        	xor	a3, a3, a3
3f400d0f:	353034        	lsi	f3, a0, 212
3f400d12:	303630        	xor	a3, a6, a3
3f400d15:	383037        	bltu	a0, a3, 3f400d51 <anon.47d802e9069e3c1943e29254d3ff411d.5.llvm.13237384441404841872+0x4b>
3f400d18:	313930        	srai	a3, a3, 25
3f400d1b:	313130        	srai	a3, a3, 17
3f400d1e:	313231        	l32r	a3, 3f3cd1e8 <PS_WOE+0x3f38d1e8>
3f400d21:	343133        	lsi	f3, a1, 208
3f400d24:	313531        	l32r	a3, 3f3cd1f8 <PS_WOE+0x3f38d1f8>
3f400d27:	373136        	entry	a1, 0x1b98
3f400d2a:	313831        	l32r	a3, 3f3cd20c <PS_WOE+0x3f38d20c>
3f400d2d:	3239      	s32i.n	a3, a2, 12
3f400d2f:	313230        	srai	a3, a3, 18
3f400d32:	323232        	lsi	f3, a2, 200
3f400d35:	343233        	lsi	f3, a2, 208
3f400d38:	323532        	lsi	f3, a5, 200
3f400d3b:	373236        	entry	a2, 0x1b98
3f400d3e:	323832        	lsi	f3, a8, 200
3f400d41:	3339      	s32i.n	a3, a3, 12
3f400d43:	313330        	srai	a3, a3, 19
3f400d46:	333233        	lsi	f3, a2, 204
3f400d49:	343333        	lsi	f3, a3, 208
3f400d4c:	333533        	lsi	f3, a5, 204
3f400d4f:	373336        	entry	a3, 0x1b98
3f400d52:	333833        	lsi	f3, a8, 204
3f400d55:	3439      	s32i.n	a3, a4, 12
3f400d57:	313430        	srai	a3, a3, 20
3f400d5a:	343234        	lsi	f3, a2, 208
3f400d5d:	343433        	lsi	f3, a4, 208
3f400d60:	343534        	lsi	f3, a5, 208
3f400d63:	373436        	entry	a4, 0x1b98
3f400d66:	343834        	lsi	f3, a8, 208
3f400d69:	3539      	s32i.n	a3, a5, 12
3f400d6b:	313530        	srai	a3, a3, 21
3f400d6e:	353235        	call12	3f436090 <_rodata_end+0x33988>
3f400d71:	343533        	lsi	f3, a5, 208
3f400d74:	353535        	call12	3f4360c8 <_rodata_end+0x339c0>
3f400d77:	373536        	entry	a5, 0x1b98
3f400d7a:	353835        	call12	3f4360fc <_rodata_end+0x339f4>
3f400d7d:	3639      	s32i.n	a3, a6, 12
3f400d7f:	313630        	srai	a3, a3, 22
3f400d82:	363236        	entry	a2, 0x1b18
3f400d85:	343633        	lsi	f3, a6, 208
3f400d88:	363536        	entry	a5, 0x1b18
3f400d8b:	373636        	entry	a6, 0x1b98
3f400d8e:	363836        	entry	a8, 0x1b18
3f400d91:	3739      	s32i.n	a3, a7, 12
3f400d93:	313730        	srai	a3, a3, 23
3f400d96:	373237        	bltu	a2, a3, 3f400dd1 <anon.47d802e9069e3c1943e29254d3ff411d.5.llvm.13237384441404841872+0xcb>
3f400d99:	343733        	lsi	f3, a7, 208
3f400d9c:	373537        	bltu	a5, a3, 3f400dd7 <anon.47d802e9069e3c1943e29254d3ff411d.5.llvm.13237384441404841872+0xd1>
3f400d9f:	373736        	entry	a7, 0x1b98
3f400da2:	373837        	bltu	a8, a3, 3f400ddd <anon.47d802e9069e3c1943e29254d3ff411d.5.llvm.13237384441404841872+0xd7>
3f400da5:	3839      	s32i.n	a3, a8, 12
3f400da7:	313830        	srai	a3, a3, 24
3f400daa:	3238      	l32i.n	a3, a2, 12
3f400dac:	3338      	l32i.n	a3, a3, 12
3f400dae:	3438      	l32i.n	a3, a4, 12
3f400db0:	3538      	l32i.n	a3, a5, 12
3f400db2:	3638      	l32i.n	a3, a6, 12
3f400db4:	3738      	l32i.n	a3, a7, 12
3f400db6:	3838      	l32i.n	a3, a8, 12
3f400db8:	3938      	l32i.n	a3, a9, 12
3f400dba:	3039      	s32i.n	a3, a0, 12
3f400dbc:	3139      	s32i.n	a3, a1, 12
3f400dbe:	3239      	s32i.n	a3, a2, 12
3f400dc0:	3339      	s32i.n	a3, a3, 12
3f400dc2:	3439      	s32i.n	a3, a4, 12
3f400dc4:	3539      	s32i.n	a3, a5, 12
3f400dc6:	3639      	s32i.n	a3, a6, 12
3f400dc8:	3739      	s32i.n	a3, a7, 12
3f400dca:	3839      	s32i.n	a3, a8, 12
3f400dcc:	3939      	s32i.n	a3, a9, 12
3f400dce:	737361        	l32r	a6, 3f3ddb9c <PS_WOE+0x3f39db9c>
3f400dd1:	747265        	call8	3f4754f8 <_rodata_end+0x72df0>
3f400dd4:	6f69      	s32i.n	a6, a15, 24
3f400dd6:	6e          	.byte 0x6e
3f400dd7:	616620        	lsi	f2, a6, 0x184
3f400dda:	6c69      	s32i.n	a6, a12, 24
3f400ddc:	3a6465        	call8	3f43b424 <_rodata_end+0x38d1c>
3f400ddf:	632a20        	minu	a2, a10, a2
3f400de2:	727275        	call12	3f473508 <_rodata_end+0x70e00>
3f400de5:	203e20        	or	a3, a14, a2
3f400de8:	003931        	l32r	a3, 3f3c0ecc <PS_WOE+0x3f380ecc>
3f400deb:	0c6800        	lsi	f0, a8, 48
3f400dee:	8a3f40        	round.s	a3, f15, 4
3f400df1:	000000        	ill
3f400df4:	0001e5        	call8	3f400e14 <anon.47d802e9069e3c1943e29254d3ff411d.5.llvm.13237384441404841872+0x10e>
3f400df7:	000500        	lsi	f0, a5, 0
3f400dfa:	200000        	or	a0, a0, a0
3f400dfd:	202020        	or	a2, a0, a2
3f400e00:	746164        	lsi	f6, a1, 0x1d0
3f400e03:	746961        	l32r	a6, 3f3ddfa8 <PS_WOE+0x3f39dfa8>
3f400e06:	777265        	call8	3f47852c <_rodata_end+0x75e24>
3f400e09:	656b61        	l32r	a6, 3f3da3b8 <PS_WOE+0x3f39a3b8>
3f400e0c:	6f7264        	lsi	f6, a2, 0x1bc
3f400e0f:	682f70        	lsi	f7, a15, 0x1a0
3f400e12:	6f          	.byte 0x6f
3f400e13:	656d      	lsi	f6, a5, 20
3f400e15:	2f          	.byte 0x2f
3f400e16:	616d      	lsi	f6, a1, 4
3f400e18:	7a6562        	s32i	a6, a5, 0x1e8
3f400e1b:	2f          	.byte 0x2f
3f400e1c:	766564        	lsi	f6, a5, 0x1d8
3f400e1f:	6f6c65        	call8	3f4704e4 <_rodata_end+0x6dddc>
3f400e22:	656d70        	extui	a6, a7, 29, 7
3f400e25:	6e          	.byte 0x6e
3f400e26:	722f74        	lsi	f7, a15, 0x1c8
3f400e29:	747375        	call12	3f475560 <_rodata_end+0x72e58>
3f400e2c:	2f          	.byte 0x2f
3f400e2d:	7478      	l32i.n	a7, a4, 28
3f400e2f:	736e65        	call8	3f474514 <_rodata_end+0x71e0c>
3f400e32:	722f61        	l32r	a6, 3f3dd6f0 <PS_WOE+0x3f39d6f0>
3f400e35:	747375        	call12	3f47556c <_rodata_end+0x72e64>
3f400e38:	782d      	lsi	f2, a8, 32
3f400e3a:	6e6574        	lsi	f7, a5, 0x1b8
3f400e3d:	2d6173        	lsi	f7, a1, 180
3f400e40:	766564        	lsi	f6, a5, 0x1d8
3f400e43:	2f          	.byte 0x2f
3f400e44:	697562        	lsi	f6, a5, 0x1a4
3f400e47:	646c      	movi.n	a4, -26
3f400e49:	2f          	.byte 0x2f
3f400e4a:	3878      	l32i.n	a7, a8, 12
3f400e4c:	365f36        	entry	a15, 0x1b28
3f400e4f:	752d34        	lsi	f3, a13, 0x1d4
3f400e52:	6e          	.byte 0x6e
3f400e53:	6e6b      	addi.n	a6, a14, 6
3f400e55:	6f          	.byte 0x6f
3f400e56:	2d6e77        	bbci	a14, 7, 3f400e87 <anon.47d802e9069e3c1943e29254d3ff411d.5.llvm.13237384441404841872+0x181>
3f400e59:	696c      	movi.n	a9, -26
3f400e5b:	6e          	.byte 0x6e
3f400e5c:	2d7875        	call12	3f42e5e4 <_rodata_end+0x2bedc>
3f400e5f:	756e67        	bbci	a14, 6, 3f400ed8 <anon.f61dfd16ae1eeea3d1293dfb16b79c93.33.llvm.17793378483549668345>
3f400e62:	2f          	.byte 0x2f
3f400e63:	617473        	lsi	f7, a4, 0x184
3f400e66:	326567        	bbci	a5, 6, 3f400e9c <anon.47d802e9069e3c1943e29254d3ff411d.5.llvm.13237384441404841872+0x196>
3f400e69:	2f          	.byte 0x2f
3f400e6a:	696c      	movi.n	a9, -26
3f400e6c:	722f62        	l32i	a6, a15, 0x1c8
3f400e6f:	747375        	call12	3f4755a4 <_rodata_end+0x72e9c>
3f400e72:	696c      	movi.n	a9, -26
3f400e74:	732f62        	l32i	a6, a15, 0x1cc
3f400e77:	2f6372        	s32i	a7, a3, 188
3f400e7a:	737572        	lsi	f7, a5, 0x1cc
3f400e7d:	6c2f74        	lsi	f7, a15, 0x1b0
3f400e80:	6269      	s32i.n	a6, a2, 24
3f400e82:	726172        	s32i	a7, a1, 0x1c8
3f400e85:	2f79      	s32i.n	a7, a15, 8
3f400e87:	726f63        	lsi	f6, a15, 0x1c8
3f400e8a:	732f65        	call8	3f474180 <_rodata_end+0x71a78>
3f400e8d:	2f6372        	s32i	a7, a3, 188
3f400e90:	746d66        	bnei	a13, 6, 3f400f08 <anon.f61dfd16ae1eeea3d1293dfb16b79c93.35.llvm.17793378483549668345+0x2e>
3f400e93:	2f          	.byte 0x2f
3f400e94:	697562        	lsi	f6, a5, 0x1a4
3f400e97:	646c      	movi.n	a4, -26
3f400e99:	737265        	call8	3f4745c0 <_rodata_end+0x71eb8>
3f400e9c:	2e          	.byte 0x2e
3f400e9d:	007372        	lsi	f7, a3, 0
3f400ea0:	400e10        	lsi	f1, a14, 0x100
3f400ea3:	3f          	.byte 0x3f
3f400ea4:	8f          	.byte 0x8f
3f400ea5:	000000        	ill
3f400ea8:	2f          	.byte 0x2f
3f400ea9:	000000        	ill
3f400eac:	000021        	l32r	a2, 3f3c0eac <PS_WOE+0x3f380eac>
3f400eaf:	0e1000        	setb_expstate	0
3f400eb2:	8f3f40        	f64cmph	a3, a15, a4, 8
3f400eb5:	000000        	ill
3f400eb8:	000030        	lsi	f3, a0, 0
3f400ebb:	001200        	movsp	a0, a2
	...

3f400ec0 <anon.f61dfd16ae1eeea3d1293dfb16b79c93.22.llvm.17793378483549668345>:
3f400ec0:	0a7b20        	add.s	f7, f11, f2

3f400ec3 <anon.f61dfd16ae1eeea3d1293dfb16b79c93.23.llvm.17793378483549668345>:
3f400ec3:	203a      	add.n	a2, a0, a3

3f400ec5 <anon.f61dfd16ae1eeea3d1293dfb16b79c93.24.llvm.17793378483549668345>:
3f400ec5:	0a2c      	movi.n	a10, 32

3f400ec7 <anon.f61dfd16ae1eeea3d1293dfb16b79c93.25.llvm.17793378483549668345>:
3f400ec7:	202c      	movi.n	a0, 34

3f400ec9 <anon.f61dfd16ae1eeea3d1293dfb16b79c93.26.llvm.17793378483549668345>:
3f400ec9:	207b20        	or	a7, a11, a2

3f400ecc <anon.f61dfd16ae1eeea3d1293dfb16b79c93.28.llvm.17793378483549668345>:
3f400ecc:	      	lsi	f7, a0, 0

3f400ecd <anon.f61dfd16ae1eeea3d1293dfb16b79c93.30.llvm.17793378483549668345>:
3f400ecd:	207b20        	or	a7, a11, a2
3f400ed0:	2e          	.byte 0x2e
3f400ed1:	2e          	.byte 0x2e
3f400ed2:	        	or	a7, a13, a2

3f400ed4 <anon.f61dfd16ae1eeea3d1293dfb16b79c93.31.llvm.17793378483549668345>:
3f400ed4:	        	lsi	f2, a13, 160

3f400ed6 <anon.f61dfd16ae1eeea3d1293dfb16b79c93.32.llvm.17793378483549668345>:
3f400ed6:	0a28      	l32i.n	a2, a10, 0

3f400ed8 <anon.f61dfd16ae1eeea3d1293dfb16b79c93.33.llvm.17793378483549668345>:
3f400ed8:	      	l32i.n	a2, a12, 8

3f400ed9 <anon.f61dfd16ae1eeea3d1293dfb16b79c93.34.llvm.17793378483549668345>:
3f400ed9:	      	movi.n	a9, 34

3f400eda <anon.f61dfd16ae1eeea3d1293dfb16b79c93.35.llvm.17793378483549668345>:
3f400eda:	0029      	s32i.n	a2, a0, 0
3f400edc:	5348      	l32i.n	a4, a3, 20
3f400ede:	400d      	lsi	f0, a0, 0
3f400ee0:	000004        	lsi	f0, a0, 0
3f400ee3:	000400        	lsi	f0, a4, 0
3f400ee6:	0c0000        	lsi	f0, a0, 48
3f400ee9:	400d24        	lsi	f2, a13, 0x100
3f400eec:	0d2420        	lsi	f2, a4, 52
3f400eef:	24d040        	extui	a13, a4, 0, 3
3f400ef2:	400d      	lsi	f0, a0, 0
3f400ef4:	2f          	.byte 0x2f
3f400ef5:	6f68      	l32i.n	a6, a15, 24
3f400ef7:	656d      	lsi	f6, a5, 20
3f400ef9:	2f          	.byte 0x2f
3f400efa:	616d      	lsi	f6, a1, 4
3f400efc:	7a6562        	s32i	a6, a5, 0x1e8
3f400eff:	2f          	.byte 0x2f
3f400f00:	766564        	lsi	f6, a5, 0x1d8
3f400f03:	6f6c65        	call8	3f4705c8 <_rodata_end+0x6dec0>
3f400f06:	656d70        	extui	a6, a7, 29, 7
3f400f09:	6e          	.byte 0x6e
3f400f0a:	722f74        	lsi	f7, a15, 0x1c8
3f400f0d:	747375        	call12	3f475644 <_rodata_end+0x72f3c>
3f400f10:	2f          	.byte 0x2f
3f400f11:	7478      	l32i.n	a7, a4, 28
3f400f13:	736e65        	call8	3f4745f8 <_rodata_end+0x71ef0>
3f400f16:	722f61        	l32r	a6, 3f3dd7d4 <PS_WOE+0x3f39d7d4>
3f400f19:	747375        	call12	3f475650 <_rodata_end+0x72f48>
3f400f1c:	782d      	lsi	f2, a8, 32
3f400f1e:	6e6574        	lsi	f7, a5, 0x1b8
3f400f21:	2d6173        	lsi	f7, a1, 180
3f400f24:	766564        	lsi	f6, a5, 0x1d8
3f400f27:	2f          	.byte 0x2f
3f400f28:	697562        	lsi	f6, a5, 0x1a4
3f400f2b:	646c      	movi.n	a4, -26
3f400f2d:	2f          	.byte 0x2f
3f400f2e:	3878      	l32i.n	a7, a8, 12
3f400f30:	365f36        	entry	a15, 0x1b28
3f400f33:	752d34        	lsi	f3, a13, 0x1d4
3f400f36:	6e          	.byte 0x6e
3f400f37:	6e6b      	addi.n	a6, a14, 6
3f400f39:	6f          	.byte 0x6f
3f400f3a:	2d6e77        	bbci	a14, 7, 3f400f6b <anon.f61dfd16ae1eeea3d1293dfb16b79c93.35.llvm.17793378483549668345+0x91>
3f400f3d:	696c      	movi.n	a9, -26
3f400f3f:	6e          	.byte 0x6e
3f400f40:	2d7875        	call12	3f42e6c8 <_rodata_end+0x2bfc0>
3f400f43:	756e67        	bbci	a14, 6, 3f400fbc <anon.f61dfd16ae1eeea3d1293dfb16b79c93.35.llvm.17793378483549668345+0xe2>
3f400f46:	2f          	.byte 0x2f
3f400f47:	617473        	lsi	f7, a4, 0x184
3f400f4a:	326567        	bbci	a5, 6, 3f400f80 <anon.f61dfd16ae1eeea3d1293dfb16b79c93.35.llvm.17793378483549668345+0xa6>
3f400f4d:	2f          	.byte 0x2f
3f400f4e:	696c      	movi.n	a9, -26
3f400f50:	722f62        	l32i	a6, a15, 0x1c8
3f400f53:	747375        	call12	3f475688 <_rodata_end+0x72f80>
3f400f56:	696c      	movi.n	a9, -26
3f400f58:	732f62        	l32i	a6, a15, 0x1cc
3f400f5b:	2f6372        	s32i	a7, a3, 188
3f400f5e:	737572        	lsi	f7, a5, 0x1cc
3f400f61:	6c2f74        	lsi	f7, a15, 0x1b0
3f400f64:	6269      	s32i.n	a6, a2, 24
3f400f66:	726172        	s32i	a7, a1, 0x1c8
3f400f69:	2f79      	s32i.n	a7, a15, 8
3f400f6b:	726f63        	lsi	f6, a15, 0x1c8
3f400f6e:	732f65        	call8	3f474264 <_rodata_end+0x71b5c>
3f400f71:	2f6372        	s32i	a7, a3, 188
3f400f74:	727473        	lsi	f7, a4, 0x1c8
3f400f77:	2f          	.byte 0x2f
3f400f78:	746170        	extui	a6, a7, 1, 8
3f400f7b:	726574        	lsi	f7, a5, 0x1c8
3f400f7e:	6e          	.byte 0x6e
3f400f7f:	2e          	.byte 0x2e
3f400f80:	007372        	lsi	f7, a3, 0
3f400f83:	0ef400        	lsi	f0, a4, 56
3f400f86:	8e3f40        	f64iter	a3, a15, a4, 0, 0
3f400f89:	000000        	ill
3f400f8c:	0001b7        	bnone	a1, a11, 3f400f90 <anon.f61dfd16ae1eeea3d1293dfb16b79c93.35.llvm.17793378483549668345+0xb6>
3f400f8f:	002600        	lsi	f0, a6, 0
3f400f92:	490000        	s32e	a0, a0, -64
3f400f95:	726574        	lsi	f7, a5, 0x1c8
3f400f98:	696b      	addi.n	a6, a9, 6
3f400f9a:	6e          	.byte 0x6e
3f400f9b:	696664        	lsi	f6, a6, 0x1a4
3f400f9e:	656c      	movi.n	a5, -26
3f400fa0:	696c      	movi.n	a9, -26
3f400fa2:	6e          	.byte 0x6e
3f400fa3:	696665        	call8	3f46a608 <_rodata_end+0x67f00>
3f400fa6:	6e          	.byte 0x6e
3f400fa7:	7369      	s32i.n	a6, a3, 28
3f400fa9:	6568      	l32i.n	a6, a5, 24
3f400fab:	6f4c64        	lsi	f6, a12, 0x1bc
3f400fae:	746163        	lsi	f6, a1, 0x1d0
3f400fb1:	6f69      	s32i.n	a6, a15, 24
3f400fb3:	6e          	.byte 0x6e
3f400fb4:	4e          	.byte 0x4e
3f400fb5:	616765        	call8	3f46262c <_rodata_end+0x5ff24>
3f400fb8:	766974        	lsi	f7, a9, 0x1d8
3f400fbb:	535065        	call8	3f4544c0 <_rodata_end+0x51db8>
3f400fbe:	400d      	lsi	f0, a0, 0
3f400fc0:	000004        	lsi	f0, a0, 0
3f400fc3:	000400        	lsi	f0, a4, 0
3f400fc6:	d00000        	subx2	a0, a0, a0
3f400fc9:	400d45        	call0	3f4410a0 <_rodata_end+0x3e998>
3f400fcc:	0d5350        	lsi	f5, a3, 52
3f400fcf:	000440        	lsi	f4, a4, 0
3f400fd2:	040000        	extui	a0, a0, 0, 1
3f400fd5:	000000        	ill
3f400fd8:	0d43e0        	lsi	f14, a3, 52
3f400fdb:	6f6340        	f64cmph	a6, a3, a4, 6
3f400fde:	      	movi.n	a0, -32

3f400fdf <anon.062740754efd4980cb4ca796e9fbbf90.0.llvm.127743167606345039>:
3f400fdf:	6e4100        	f64rnd	a4, a1, a0, 2
3f400fe2:	0079      	s32i.n	a7, a0, 0
3f400fe4:	5358      	l32i.n	a5, a3, 20
3f400fe6:	400d      	lsi	f0, a0, 0
3f400fe8:	000000        	ill
3f400feb:	000100        	lsi	f0, a1, 0
3f400fee:	540000        	extui	a0, a0, 0, 6
3f400ff1:	400d27        	bnone	a13, a2, 3f401035 <anon.062740754efd4980cb4ca796e9fbbf90.0.llvm.127743167606345039+0x56>
3f400ff4:	6e69      	s32i.n	a6, a14, 24
3f400ff6:	786564        	lsi	f6, a5, 0x1e0
3f400ff9:	756f20        	extui	a6, a2, 31, 8
3f400ffc:	6f2074        	lsi	f7, a0, 0x1bc
3f400fff:	622066        	bnei	a0, 2, 3f401065 <anon.062740754efd4980cb4ca796e9fbbf90.0.llvm.127743167606345039+0x86>
3f401002:	6f          	.byte 0x6f
3f401003:	646e75        	call12	3f4656e8 <_rodata_end+0x62fe0>
3f401006:	203a73        	lsi	f7, a10, 128
3f401009:	656874        	lsi	f7, a8, 0x194
3f40100c:	656c20        	extui	a6, a2, 28, 7
3f40100f:	6e          	.byte 0x6e
3f401010:	736920        	maxu	a6, a9, a2
3f401013:	622020        	lsi	f2, a0, 0x188
3f401016:	207475        	call12	3f42175c <_rodata_end+0x1f054>
3f401019:	656874        	lsi	f7, a8, 0x194
3f40101c:	6e6920        	f64rnd	a6, a9, a2, 2
3f40101f:	786564        	lsi	f6, a5, 0x1e0
3f401022:	736920        	maxu	a6, a9, a2
3f401025:	000020        	lsi	f2, a0, 0
3f401028:	400ff4        	lsi	f15, a15, 0x100
3f40102b:	3f          	.byte 0x3f
3f40102c:	000020        	lsi	f2, a0, 0
3f40102f:	101400        	and	a1, a4, a0
3f401032:	123f40        	andbc	b3, b15, b4
3f401035:	000000        	ill
3f401038:	203a      	add.n	a2, a0, a3
3f40103a:	e00000        	subx4	a0, a0, a0
3f40103d:	0f          	.byte 0xf
3f40103e:	003f40        	lsi	f4, a15, 0
3f401041:	000000        	ill
3f401044:	1038      	l32i.n	a3, a0, 4
3f401046:	023f40        	andb	b3, b15, b4
3f401049:	000000        	ill
3f40104c:	6e6150        	f64rnd	a6, a1, a5, 2
3f40104f:	6369      	s32i.n	a6, a3, 24
3f401051:	6e49      	s32i.n	a4, a14, 24
3f401053:	706f66        	bnei	a15, 6, 3f4010c7 <anon.062740754efd4980cb4ca796e9fbbf90.0.llvm.127743167606345039+0xe8>
3f401056:	6c7961        	l32r	a6, 3f3dc23c <PS_WOE+0x3f39c23c>
3f401059:	6f          	.byte 0x6f
3f40105a:	586461        	l32r	a6, 3f3d71ec <PS_WOE+0x3f3971ec>
3f40105d:	400d53        	lsi	f5, a13, 0x100
3f401060:	000004        	lsi	f0, a0, 0
3f401063:	000400        	lsi	f0, a4, 0
3f401066:	fc0000        	lsi	f0, a0, 0x3f0
3f401069:	0d28      	l32i.n	a2, a13, 0
3f40106b:	656d40        	extui	a6, a4, 29, 7
3f40106e:	617373        	lsi	f7, a3, 0x184
3f401071:	006567        	bbci	a5, 6, 3f401075 <anon.062740754efd4980cb4ca796e9fbbf90.0.llvm.127743167606345039+0x96>
3f401074:	5358      	l32i.n	a5, a3, 20
3f401076:	400d      	lsi	f0, a0, 0
3f401078:	000004        	lsi	f0, a0, 0
3f40107b:	000400        	lsi	f0, a4, 0
3f40107e:	0c0000        	lsi	f0, a0, 48
3f401081:	0d2b      	addi.n	a0, a13, 2
3f401083:	6f6c40        	f64cmph	a6, a12, a4, 6
3f401086:	746163        	lsi	f6, a1, 0x1d0
3f401089:	6f69      	s32i.n	a6, a15, 24
3f40108b:	6e          	.byte 0x6e
3f40108c:	736552        	s32i	a5, a5, 0x1cc
3f40108f:	656d75        	call12	3f466764 <_rodata_end+0x6405c>
3f401092:	587954        	mula.da.ll.lddec	m3, a9, m1, a5
3f401095:	400d53        	lsi	f5, a13, 0x100
3f401098:	000004        	lsi	f0, a0, 0
3f40109b:	000400        	lsi	f0, a4, 0
3f40109e:	680000        	lsi	f0, a0, 0x1a0
3f4010a1:	400d25        	call8	3f441174 <_rodata_end+0x3ea6c>
3f4010a4:	6e6163        	lsi	f6, a1, 0x1b8
3f4010a7:	5f          	.byte 0x5f
3f4010a8:	776e75        	call12	3f478790 <_rodata_end+0x76088>
3f4010ab:	6e69      	s32i.n	a6, a14, 24
3f4010ad:	000064        	lsi	f6, a0, 0
3f4010b0:	5358      	l32i.n	a5, a3, 20
3f4010b2:	400d      	lsi	f0, a0, 0
3f4010b4:	000004        	lsi	f0, a0, 0
3f4010b7:	000400        	lsi	f0, a4, 0
3f4010ba:	180000        	lsxp	f0, a0, a0
3f4010bd:	400d46        	j	3f4110f6 <_rodata_end+0xe9ee>
3f4010c0:	706f43        	lsi	f4, a15, 0x1c0
3f4010c3:	5a79      	s32i.n	a7, a10, 20
3f4010c5:	6f7265        	call8	3f4707ec <_rodata_end+0x6e0e4>
3f4010c8:	6d6f53        	lsi	f5, a15, 0x1b4
3f4010cb:	744965        	call8	3f475560 <_rodata_end+0x72e58>
3f4010ce:	686d65        	call8	3f4697a4 <_rodata_end+0x6709c>
3f4010d1:	400d53        	lsi	f5, a13, 0x100
3f4010d4:	000004        	lsi	f0, a0, 0
3f4010d7:	000400        	lsi	f0, a4, 0
3f4010da:	e80000        	lsi	f0, a0, 0x3a0
3f4010dd:	400d45        	call0	3f4411b4 <_rodata_end+0x3eaac>
3f4010e0:	6c6163        	lsi	f6, a1, 0x1b0
3f4010e3:	656c      	movi.n	a5, -26
3f4010e5:	602064        	lsi	f6, a0, 0x180
3f4010e8:	4f          	.byte 0x4f
3f4010e9:	697470        	lsi	f7, a4, 0x1a4
3f4010ec:	6f          	.byte 0x6f
3f4010ed:	6e          	.byte 0x6e
3f4010ee:	3a3a      	add.n	a3, a10, a3
3f4010f0:	776e75        	call12	3f4787d8 <_rodata_end+0x760d0>
3f4010f3:	706172        	s32i	a7, a1, 0x1c0
3f4010f6:	2928      	l32i.n	a2, a9, 8
3f4010f8:	6f2060        	f64cmph	a2, a0, a6, 6
3f4010fb:	6e          	.byte 0x6e
3f4010fc:	206120        	or	a6, a1, a2
3f4010ff:	6f4e60        	f64cmph	a4, a14, a6, 6
3f401102:	6e          	.byte 0x6e
3f401103:	206065        	call8	3f421708 <_rodata_end+0x1f000>
3f401106:	6c6176        	lsi	f7, a1, 0x1b0
3f401109:	2f6575        	call12	3f430760 <_rodata_end+0x2e058>
3f40110c:	6f68      	l32i.n	a6, a15, 24
3f40110e:	656d      	lsi	f6, a5, 20
3f401110:	2f          	.byte 0x2f
3f401111:	616d      	lsi	f6, a1, 4
3f401113:	7a6562        	s32i	a6, a5, 0x1e8
3f401116:	2f          	.byte 0x2f
3f401117:	766564        	lsi	f6, a5, 0x1d8
3f40111a:	6f6c65        	call8	3f4707e0 <_rodata_end+0x6e0d8>
3f40111d:	656d70        	extui	a6, a7, 29, 7
3f401120:	6e          	.byte 0x6e
3f401121:	722f74        	lsi	f7, a15, 0x1c8
3f401124:	747375        	call12	3f47585c <_rodata_end+0x73154>
3f401127:	2f          	.byte 0x2f
3f401128:	7478      	l32i.n	a7, a4, 28
3f40112a:	736e65        	call8	3f474810 <_rodata_end+0x72108>
3f40112d:	722f61        	l32r	a6, 3f3dd9ec <PS_WOE+0x3f39d9ec>
3f401130:	747375        	call12	3f475868 <_rodata_end+0x73160>
3f401133:	782d      	lsi	f2, a8, 32
3f401135:	6e6574        	lsi	f7, a5, 0x1b8
3f401138:	2d6173        	lsi	f7, a1, 180
3f40113b:	766564        	lsi	f6, a5, 0x1d8
3f40113e:	2f          	.byte 0x2f
3f40113f:	697562        	lsi	f6, a5, 0x1a4
3f401142:	646c      	movi.n	a4, -26
3f401144:	2f          	.byte 0x2f
3f401145:	3878      	l32i.n	a7, a8, 12
3f401147:	365f36        	entry	a15, 0x1b28
3f40114a:	752d34        	lsi	f3, a13, 0x1d4
3f40114d:	6e          	.byte 0x6e
3f40114e:	6e6b      	addi.n	a6, a14, 6
3f401150:	6f          	.byte 0x6f
3f401151:	2d6e77        	bbci	a14, 7, 3f401182 <anon.062740754efd4980cb4ca796e9fbbf90.0.llvm.127743167606345039+0x1a3>
3f401154:	696c      	movi.n	a9, -26
3f401156:	6e          	.byte 0x6e
3f401157:	2d7875        	call12	3f42e8dc <_rodata_end+0x2c1d4>
3f40115a:	756e67        	bbci	a14, 6, 3f4011d3 <anon.06436f17a84c229bab175a9d4a2866f0.43.llvm.5870707130826185254+0x13>
3f40115d:	2f          	.byte 0x2f
3f40115e:	617473        	lsi	f7, a4, 0x184
3f401161:	326567        	bbci	a5, 6, 3f401197 <anon.062740754efd4980cb4ca796e9fbbf90.0.llvm.127743167606345039+0x1b8>
3f401164:	2f          	.byte 0x2f
3f401165:	696c      	movi.n	a9, -26
3f401167:	722f62        	l32i	a6, a15, 0x1c8
3f40116a:	747375        	call12	3f4758a0 <_rodata_end+0x73198>
3f40116d:	696c      	movi.n	a9, -26
3f40116f:	732f62        	l32i	a6, a15, 0x1cc
3f401172:	2f6372        	s32i	a7, a3, 188
3f401175:	737572        	lsi	f7, a5, 0x1cc
3f401178:	6c2f74        	lsi	f7, a15, 0x1b0
3f40117b:	6269      	s32i.n	a6, a2, 24
3f40117d:	726172        	s32i	a7, a1, 0x1c8
3f401180:	2f79      	s32i.n	a7, a15, 8
3f401182:	726f63        	lsi	f6, a15, 0x1c8
3f401185:	732f65        	call8	3f47447c <_rodata_end+0x71d74>
3f401188:	2f6372        	s32i	a7, a3, 188
3f40118b:	696e75        	call12	3f46a870 <_rodata_end+0x68168>
3f40118e:	646f63        	lsi	f6, a15, 0x190
3f401191:	702f65        	call8	3f471488 <_rodata_end+0x6ed80>
3f401194:	6e6972        	s32i	a7, a9, 0x1b8
3f401197:	626174        	lsi	f7, a1, 0x188
3f40119a:	656c      	movi.n	a5, -26
3f40119c:	2e          	.byte 0x2e
3f40119d:	007372        	lsi	f7, a3, 0
3f4011a0:	110b      	addi.n	a1, a1, -1
3f4011a2:	943f40        	extui	a3, a4, 15, 10
3f4011a5:	000000        	ill
3f4011a8:	000a      	add.n	a0, a0, a0
3f4011aa:	1c0000        	lsi	f0, a0, 112
3f4011ad:	000000        	ill
3f4011b0:	110b      	addi.n	a1, a1, -1
3f4011b2:	943f40        	extui	a3, a4, 15, 10
3f4011b5:	000000        	ill
3f4011b8:	001a      	add.n	a0, a0, a1
3f4011ba:	360000        	lsi	f0, a0, 216
3f4011bd:	000000        	ill

3f4011c0 <anon.06436f17a84c229bab175a9d4a2866f0.43.llvm.5870707130826185254>:
3f4011c0:	030100        	rsr.lend	a0
3f4011c3:	060505        	call0	3f407214 <_rodata_end+0x4b0c>
3f4011c6:	070206        	j	3f402dd2 <_rodata_end+0x6ca>
3f4011c9:	070806        	j	3f402ded <_rodata_end+0x6e5>
3f4011cc:	1109      	s32i.n	a0, a1, 4
3f4011ce:	1c0a      	add.n	a1, a12, a0
3f4011d0:	190b      	addi.n	a1, a9, -1
3f4011d2:	1a0c      	movi.n	a10, 1
3f4011d4:	100d      	lsi	f0, a0, 0
3f4011d6:	0e          	.byte 0xe
3f4011d7:	0f0d      	mov.n	a0, a15
3f4011d9:	031004        	lsi	f0, a0, 12
3f4011dc:	131212        	l16ui	a1, a2, 38
3f4011df:	1609      	s32i.n	a0, a6, 4
3f4011e1:	041701        	l32r	a0, 3f3c2240 <PS_WOE+0x3f382240>
3f4011e4:	0118      	l32i.n	a1, a1, 0
3f4011e6:	0319      	s32i.n	a1, a3, 0
3f4011e8:	071a      	add.n	a0, a7, a1
3f4011ea:	011b      	addi.n	a0, a1, 1
3f4011ec:	021c      	movi.n	a2, 16
3f4011ee:	1f          	.byte 0x1f
3f4011ef:	032016        	beqz	a0, 3f401225 <anon.06436f17a84c229bab175a9d4a2866f0.44.llvm.5870707130826185254+0x15>
3f4011f2:	032b      	addi.n	a0, a3, 2
3f4011f4:	0b2d      	mov.n	a2, a11
3f4011f6:	2e          	.byte 0x2e
3f4011f7:	033001        	l32r	a0, 3f3c1eb8 <PS_WOE+0x3f381eb8>
3f4011fa:	320231        	l32r	a3, 3f3cda04 <PS_WOE+0x3f38da04>
3f4011fd:	02a701        	l32r	a0, 3f3c1c9c <PS_WOE+0x3f381c9c>
3f401200:	02a9      	s32i.n	a10, a2, 0
3f401202:	04aa      	add.n	a0, a4, a10
3f401204:	08ab      	addi.n	a0, a8, 10
3f401206:	02fa      	add.n	a0, a2, a15
3f401208:	05fb      	addi.n	a0, a5, 15
3f40120a:	02fd      	mov.n	a15, a2
3f40120c:	fe          	.byte 0xfe
3f40120d:	09ff03        	lsi	f0, a15, 36

3f401210 <anon.06436f17a84c229bab175a9d4a2866f0.44.llvm.5870707130826185254>:
3f401210:	78ad      	lsi	f10, a8, 32
3f401212:	8b79      	s32i.n	a7, a11, 32
3f401214:	a28d      	lsi	f8, a2, 8
3f401216:	585730        	ssxp	f5, a7, a3
3f401219:	8c8b      	addi.n	a8, a12, 8
3f40121b:	dd1c90        	lsi	f9, a12, 0x374
3f40121e:	0e          	.byte 0xe
3f40121f:	0f          	.byte 0xf
3f401220:	4c4b      	addi.n	a4, a12, 4
3f401222:	fcfb      	addi.n	a15, a12, 15
3f401224:	2e          	.byte 0x2e
3f401225:	2f          	.byte 0x2f
3f401226:	3f          	.byte 0x3f
3f401227:	5d5c      	movi.n	a13, 85
3f401229:	5f          	.byte 0x5f
3f40122a:	8d84e2        	lsi	f14, a4, 0x234
3f40122d:	8e          	.byte 0x8e
3f40122e:	a99291        	l32r	a9, 3f3eb878 <PS_WOE+0x3f3ab878>
3f401231:	bbbab1        	l32r	a11, 3f3f011c <PS_WOE+0x3f3b011c>
3f401234:	c9c6c5        	call0	3f3caea4 <PS_WOE+0x3f38aea4>
3f401237:	deca      	add.n	a13, a14, a12
3f401239:	ffe5e4        	lsi	f14, a5, 0x3fc
3f40123c:	110400        	slli	a0, a4, 16
3f40123f:	312912        	l32i	a1, a9, 196
3f401242:	3a3734        	lsi	f3, a7, 232
3f401245:	3d3b      	addi.n	a3, a13, 3
3f401247:	4a49      	s32i.n	a4, a10, 16
3f401249:	845d      	lsi	f5, a4, 16
3f40124b:	8e          	.byte 0x8e
3f40124c:	b1a992        	movi	a9, 0xfffff9b1
3f40124f:	bbbab4        	lsi	f11, a10, 0x2ec
3f401252:	cecac6        	j	3f3f4d81 <PS_WOE+0x3f3b4d81>
3f401255:	cf          	.byte 0xcf
3f401256:	00e5e4        	lsi	f14, a5, 0
3f401259:	0e0d04        	lsi	f0, a13, 56
3f40125c:	291211        	l32r	a1, 3f3cb6a4 <PS_WOE+0x3f38b6a4>
3f40125f:	3a3431        	l32r	a3, 3f3cfb30 <PS_WOE+0x3f38fb30>
3f401262:	453b      	addi.n	a4, a5, 3
3f401264:	4a4946        	j	3f413b8d <_rodata_end+0x11485>
3f401267:	5e          	.byte 0x5e
3f401268:	846564        	lsi	f6, a5, 0x210
3f40126b:	9d9b91        	l32r	a9, 3f3e88d8 <PS_WOE+0x3f3a88d8>
3f40126e:	cec9      	s32i.n	a12, a14, 48
3f401270:	cf          	.byte 0xcf
3f401271:	110d      	lsi	f0, a1, 4
3f401273:	3a29      	s32i.n	a2, a10, 12
3f401275:	453b      	addi.n	a4, a5, 3
3f401277:	5749      	s32i.n	a4, a7, 20
3f401279:	5c5b      	addi.n	a5, a12, 5
3f40127b:	5e          	.byte 0x5e
3f40127c:	5f          	.byte 0x5f
3f40127d:	8d6564        	lsi	f6, a5, 0x234
3f401280:	b4a991        	l32r	a9, 3f3ee524 <PS_WOE+0x3f3ae524>
3f401283:	bbba      	add.n	a11, a11, a11
3f401285:	dfc9c5        	call0	3f3e0f24 <PS_WOE+0x3f3a0f24>
3f401288:	f0e5e4        	lsi	f14, a5, 0x3c0
3f40128b:	110d      	lsi	f0, a1, 4
3f40128d:	644945        	call0	3f465724 <_rodata_end+0x6301c>
3f401290:	848065        	call8	3f385a98 <PS_WOE+0x3f345a98>
3f401293:	bebcb2        	l32ai	a11, a12, 0x2f8
3f401296:	bf          	.byte 0xbf
3f401297:	f0d7d5        	call4	3f3f2014 <PS_WOE+0x3f3b2014>
3f40129a:	8583f1        	l32r	a15, 3f3e28a8 <PS_WOE+0x3f3a28a8>
3f40129d:	a48b      	addi.n	a10, a4, 8
3f40129f:	bfbea6        	blti	a14, 16, 3f401262 <anon.06436f17a84c229bab175a9d4a2866f0.44.llvm.5870707130826185254+0x52>
3f4012a2:	cec7c5        	call0	3f3cff20 <PS_WOE+0x3f38ff20>
3f4012a5:	cf          	.byte 0xcf
3f4012a6:	dbda      	add.n	a13, a11, a13
3f4012a8:	9848      	l32i.n	a4, a8, 36
3f4012aa:	cdbd      	lsi	f11, a13, 52
3f4012ac:	cfcec6        	j	3f3f51eb <PS_WOE+0x3f3b51eb>
3f4012af:	4e49      	s32i.n	a4, a14, 16
3f4012b1:	4f          	.byte 0x4f
3f4012b2:	5e5957        	bbc	a9, a5, 3f401314 <anon.06436f17a84c229bab175a9d4a2866f0.44.llvm.5870707130826185254+0x104>
3f4012b5:	5f          	.byte 0x5f
3f4012b6:	8e89      	s32i.n	a8, a14, 32
3f4012b8:	8f          	.byte 0x8f
3f4012b9:	b7b6b1        	l32r	a11, 3f3ef194 <PS_WOE+0x3f3af194>
3f4012bc:	bf          	.byte 0xbf
3f4012bd:	c7c6c1        	l32r	a12, 3f3f31d8 <PS_WOE+0x3f3b31d8>
3f4012c0:	1611d7        	beq	a1, a13, 3f4012da <anon.06436f17a84c229bab175a9d4a2866f0.44.llvm.5870707130826185254+0xca>
3f4012c3:	5c5b17        	bbc	a11, a1, 3f401323 <anon.06436f17a84c229bab175a9d4a2866f0.44.llvm.5870707130826185254+0x113>
3f4012c6:	fef7f6        	bgeui	a7, 0x100, 3f4012c8 <anon.06436f17a84c229bab175a9d4a2866f0.44.llvm.5870707130826185254+0xb8>
3f4012c9:	ff          	.byte 0xff
3f4012ca:	716d80        	lsi	f8, a13, 0x1c4
3f4012cd:	de          	.byte 0xde
3f4012ce:	df          	.byte 0xdf
3f4012cf:	0e          	.byte 0xe
3f4012d0:	1f          	.byte 0x1f
3f4012d1:	6e          	.byte 0x6e
3f4012d2:	6f          	.byte 0x6f
3f4012d3:	1d1c      	movi.n	a13, 17
3f4012d5:	5f          	.byte 0x5f
3f4012d6:	7e7d      	lsi	f7, a14, 56
3f4012d8:	ae          	.byte 0xae
3f4012d9:	af          	.byte 0xaf
3f4012da:	7f          	.byte 0x7f
3f4012db:	bcbb      	addi.n	a11, a12, 11
3f4012dd:	1e1716        	beqz	a7, 3f4014c2 <anon.06436f17a84c229bab175a9d4a2866f0.47.llvm.5870707130826185254+0xf>
3f4012e0:	1f          	.byte 0x1f
3f4012e1:	4e4746        	j	3f414c02 <_rodata_end+0x124fa>
3f4012e4:	4f          	.byte 0x4f
3f4012e5:	5a58      	l32i.n	a5, a10, 20
3f4012e7:	5e5c      	movi.n	a14, 85
3f4012e9:	7e          	.byte 0x7e
3f4012ea:	7f          	.byte 0x7f
3f4012eb:	d4c5b5        	call12	3f3d5f44 <PS_WOE+0x3f395f44>
3f4012ee:	f0dcd5        	call4	3f3f20bc <PS_WOE+0x3f3b20bc>
3f4012f1:	72f5f1        	l32r	a15, 3f3ddec8 <PS_WOE+0x3f39dec8>
3f4012f4:	748f73        	lsip	f7, a15, 0x1d0
3f4012f7:	269675        	call12	3f427c5c <_rodata_end+0x25554>
3f4012fa:	2e          	.byte 0x2e
3f4012fb:	2f          	.byte 0x2f
3f4012fc:	b7afa7        	bge	a15, a10, 3f4012b7 <anon.06436f17a84c229bab175a9d4a2866f0.44.llvm.5870707130826185254+0xa7>
3f4012ff:	bf          	.byte 0xbf
3f401300:	d7cfc7        	bnall	a15, a12, 3f4012db <anon.06436f17a84c229bab175a9d4a2866f0.44.llvm.5870707130826185254+0xcb>
3f401303:	df          	.byte 0xdf
3f401304:	409a      	add.n	a4, a0, a9
3f401306:	309897        	bne	a8, a9, 3f40133a <anon.06436f17a84c229bab175a9d4a2866f0.45.llvm.5870707130826185254+0xa>
3f401309:	8f          	.byte 0x8f
3f40130a:	1f          	.byte 0x1f
3f40130b:	ced4d2        	addmi	a13, a4, 0xffffce00
3f40130e:	ff          	.byte 0xff
3f40130f:	4e          	.byte 0x4e
3f401310:	4f          	.byte 0x4f
3f401311:	5b5a      	add.n	a5, a11, a5
3f401313:	0f0807        	bnone	a8, a0, 3f401326 <anon.06436f17a84c229bab175a9d4a2866f0.44.llvm.5870707130826185254+0x116>
3f401316:	2f2710        	f64cmph	a2, a7, a1, 2
3f401319:	ee          	.byte 0xee
3f40131a:	ef          	.byte 0xef
3f40131b:	6e          	.byte 0x6e
3f40131c:	6f          	.byte 0x6f
3f40131d:	3f3d37        	bltu	a13, a3, 3f401360 <anon.06436f17a84c229bab175a9d4a2866f0.45.llvm.5870707130826185254+0x30>
3f401320:	904542        	s8i	a4, a5, 144
3f401323:	675391        	l32r	a9, 3f3db070 <PS_WOE+0x3f39b070>
3f401326:	c9c875        	call12	3f3cafac <PS_WOE+0x3f38afac>
3f401329:	d8d1d0        	lsi	f13, a1, 0x360
3f40132c:	e7d9      	s32i.n	a13, a7, 56
3f40132e:	fe          	.byte 0xfe
3f40132f:	ff          	.byte 0xff

3f401330 <anon.06436f17a84c229bab175a9d4a2866f0.45.llvm.5870707130826185254>:
3f401330:	5f2000        	f64cmph	a2, a0, a0, 5
3f401333:	df8222        	lsi	f2, a2, 0x37c
3f401336:	448204        	lsi	f0, a2, 0x110
3f401339:	1b08      	l32i.n	a0, a11, 4
3f40133b:	110604        	lsi	f0, a6, 68
3f40133e:	0eac81        	l32r	a8, 3f3c4df0 <PS_WOE+0x3f384df0>
3f401341:	05ab80        	extui	a10, a8, 27, 1
3f401344:	1f          	.byte 0x1f
3f401345:	8109      	s32i.n	a0, a1, 32
3f401347:	031b      	addi.n	a0, a3, 1
3f401349:	0819      	s32i.n	a1, a8, 0
3f40134b:	2f0401        	l32r	a0, 3f3ccf5c <PS_WOE+0x3f38cf5c>
3f40134e:	043404        	lsi	f0, a4, 16
3f401351:	010307        	bnone	a3, a0, 3f401356 <anon.06436f17a84c229bab175a9d4a2866f0.45.llvm.5870707130826185254+0x26>
3f401354:	070607        	bnone	a6, a0, 3f40135f <anon.06436f17a84c229bab175a9d4a2866f0.45.llvm.5870707130826185254+0x2f>
3f401357:	500a11        	l32r	a1, 3f3d5380 <PS_WOE+0x3f395380>
3f40135a:	0f          	.byte 0xf
3f40135b:	550712        	l8ui	a1, a7, 85
3f40135e:	040307        	bnone	a3, a0, 3f401366 <anon.06436f17a84c229bab175a9d4a2866f0.45.llvm.5870707130826185254+0x36>
3f401361:	0a1c      	movi.n	a10, 16
3f401363:	0309      	s32i.n	a0, a3, 0
3f401365:	0308      	l32i.n	a0, a3, 0
3f401367:	020307        	bnone	a3, a0, 3f40136d <anon.06436f17a84c229bab175a9d4a2866f0.45.llvm.5870707130826185254+0x3d>
3f40136a:	030303        	lsi	f0, a3, 12
3f40136d:	040c      	movi.n	a4, 0
3f40136f:	0b0305        	call0	3f40c3a0 <_rodata_end+0x9c98>
3f401372:	0e0106        	j	3f404b7a <_rodata_end+0x2472>
3f401375:	4e0515        	call4	3f44f3c8 <_rodata_end+0x4ccc0>
3f401378:	071b07        	beq	a11, a0, 3f401383 <anon.06436f17a84c229bab175a9d4a2866f0.45.llvm.5870707130826185254+0x53>
3f40137b:	020757        	bnone	a7, a5, 3f401381 <anon.06436f17a84c229bab175a9d4a2866f0.45.llvm.5870707130826185254+0x51>
3f40137e:	0d1606        	j	3f4047da <_rodata_end+0x20d2>
3f401381:	430450        	min	a0, a4, a5
3f401384:	032d03        	lsi	f0, a13, 12
3f401387:	110401        	l32r	a0, 3f3c5798 <PS_WOE+0x3f385798>
3f40138a:	0c0f06        	j	3f4043ca <_rodata_end+0x1cc2>
3f40138d:	043a      	add.n	a0, a4, a3
3f40138f:	251d      	lsi	f1, a5, 20
3f401391:	5f          	.byte 0x5f
3f401392:	046d20        	extui	a6, a2, 13, 1
3f401395:	256a      	add.n	a2, a5, a6
3f401397:	05c880        	extui	a12, a8, 24, 1
3f40139a:	03b082        	l32ai	a8, a0, 12
3f40139d:	061a      	add.n	a0, a6, a1
3f40139f:	03fd82        	s32ri	a8, a13, 12
3f4013a2:	0759      	s32i.n	a5, a7, 0
3f4013a4:	180916        	beqz	a9, 3f401528 <anon.06436f17a84c229bab175a9d4a2866f0.47.llvm.5870707130826185254+0x75>
3f4013a7:	1409      	s32i.n	a0, a4, 4
3f4013a9:	140c      	movi.n	a4, 1
3f4013ab:	6a0c      	movi.n	a10, 6
3f4013ad:	060a06        	j	3f402bd9 <_rodata_end+0x4d1>
3f4013b0:	061a      	add.n	a0, a6, a1
3f4013b2:	0759      	s32i.n	a5, a7, 0
3f4013b4:	052b      	addi.n	a0, a5, 2
3f4013b6:	2c0a46        	j	3f40c3e3 <_rodata_end+0x9cdb>
3f4013b9:	040c04        	lsi	f0, a12, 16
3f4013bc:	310301        	l32r	a0, 3f3cd7c8 <PS_WOE+0x3f38d7c8>
3f4013bf:	2c0b      	addi.n	a2, a12, -1
3f4013c1:	061a04        	lsi	f0, a10, 24
3f4013c4:	030b      	addi.n	a0, a3, -1
3f4013c6:	06ac80        	lsi	f8, a12, 24
3f4013c9:	060a      	add.n	a0, a6, a0
3f4013cb:	2f          	.byte 0x2f
3f4013cc:	034d31        	l32r	a3, 3f3c2100 <PS_WOE+0x3f382100>
3f4013cf:	08a480        	lsx	f10, a4, a8
3f4013d2:	033c      	movi.n	a3, 48
3f4013d4:	0f          	.byte 0xf
3f4013d5:	073c03        	lsi	f0, a12, 28
3f4013d8:	0838      	l32i.n	a3, a8, 0
3f4013da:	052b      	addi.n	a0, a5, 2
3f4013dc:	11ff82        	s32ri	a8, a15, 68
3f4013df:	0818      	l32i.n	a1, a8, 0
3f4013e1:	2f          	.byte 0x2f
3f4013e2:	032d11        	l32r	a1, 3f3c2098 <PS_WOE+0x3f382098>
3f4013e5:	210f21        	l32r	a2, 3f3c9824 <PS_WOE+0x3f389824>
3f4013e8:	0f          	.byte 0xf
3f4013e9:	048c80        	extui	a8, a8, 12, 1
3f4013ec:	199782        	l16si	a8, a7, 50
3f4013ef:	150b      	addi.n	a1, a5, -1
3f4013f1:	9488      	l32i.n	a8, a4, 36
3f4013f3:	052f05        	call0	3f4066e4 <_rodata_end+0x3fdc>
3f4013f6:	073b      	addi.n	a0, a7, 3
3f4013f8:	180e02        	l8ui	a0, a14, 24
3f4013fb:	8009      	s32i.n	a0, a0, 32
3f4013fd:	be          	.byte 0xbe
3f4013fe:	0c7422        	lsi	f2, a4, 48
3f401401:	1ad680        	sub.s	f13, f6, f8
3f401404:	050c      	movi.n	a5, 0
3f401406:	05ff80        	extui	a15, a8, 31, 1
3f401409:	0cdf80        	lsi	f8, a15, 48
3f40140c:	039df2        	l16si	a15, a13, 6
3f40140f:	810937        	bnone	a9, a3, 3f401394 <anon.06436f17a84c229bab175a9d4a2866f0.45.llvm.5870707130826185254+0x64>
3f401412:	145c      	movi.n	a4, 81
3f401414:	08b880        	lsx	f11, a8, a8
3f401417:	05cb80        	extui	a12, a8, 27, 1
3f40141a:	180a      	add.n	a1, a8, a0
3f40141c:	033b      	addi.n	a0, a3, 3
3f40141e:	060a      	add.n	a0, a6, a0
3f401420:	0838      	l32i.n	a3, a8, 0
3f401422:	0c0846        	j	3f404447 <_rodata_end+0x1d3f>
3f401425:	0b7406        	j	3f4041f9 <_rodata_end+0x1af1>
3f401428:	1e          	.byte 0x1e
3f401429:	045a03        	lsi	f0, a10, 16
3f40142c:	0959      	s32i.n	a5, a9, 0
3f40142e:	188380        	lsxp	f8, a3, a8
3f401431:	0a1c      	movi.n	a10, 16
3f401433:	4c0916        	beqz	a9, 3f4018f7 <anon.b0ba7e5e3f2c3fce5a4d43122d4ad486.5.llvm.6012552628912787576+0x133>
3f401436:	8a8004        	lsi	f0, a0, 0x228
3f401439:	a4ab06        	j	3f3ea6e9 <PS_WOE+0x3f3aa6e9>
3f40143c:	170c      	movi.n	a7, 1
3f40143e:	a13104        	lsi	f0, a1, 0x284
3f401441:	da8104        	lsi	f0, a1, 0x368
3f401444:	0c0726        	beqi	a7, -1, 3f401454 <anon.06436f17a84c229bab175a9d4a2866f0.45.llvm.5870707130826185254+0x124>
3f401447:	800505        	call0	3f381498 <PS_WOE+0x3f341498>
3f40144a:	8110a6        	blti	a0, 1, 3f4013cf <anon.06436f17a84c229bab175a9d4a2866f0.45.llvm.5870707130826185254+0x9f>
3f40144d:	0107f5        	call12	3f4024cc <anon.4f5b05757c841249a260f1e8a0a0b873.1.llvm.14849298323431214658+0x16c>
3f401450:	062a20        	lsi	f2, a10, 24
3f401453:	044c      	movi.n	a4, 64
3f401455:	048d80        	extui	a8, a8, 13, 1
3f401458:	03be80        	lsi	f8, a14, 12
3f40145b:	031b      	addi.n	a0, a3, 1
3f40145d:	0f          	.byte 0xf
3f40145e:	      	mov.n	a0, a0

3f40145f <anon.06436f17a84c229bab175a9d4a2866f0.46.llvm.5870707130826185254>:
3f40145f:	010600        	slli	a0, a6, 32
3f401462:	010301        	l32r	a0, 3f3c1870 <PS_WOE+0x3f381870>
3f401465:	050204        	lsi	f0, a2, 20
3f401468:	020707        	bnone	a7, a0, 3f40146e <anon.06436f17a84c229bab175a9d4a2866f0.46.llvm.5870707130826185254+0xf>
3f40146b:	0808      	l32i.n	a0, a8, 0
3f40146d:	0209      	s32i.n	a0, a2, 0
3f40146f:	050a      	add.n	a0, a5, a0
3f401471:	020b      	addi.n	a0, a2, -1
3f401473:	0e          	.byte 0xe
3f401474:	011004        	lsi	f0, a0, 4
3f401477:	120211        	l32r	a1, 3f3c5c80 <PS_WOE+0x3f385c80>
3f40147a:	111305        	call0	3f4125ac <_rodata_end+0xfea4>
3f40147d:	150114        	lsi	f1, a1, 84
3f401480:	021702        	l16ui	a0, a7, 4
3f401483:	0d19      	s32i.n	a1, a13, 0
3f401485:	051c      	movi.n	a5, 16
3f401487:	081d      	mov.n	a1, a8
3f401489:	6a0124        	lsi	f2, a1, 0x1a8
3f40148c:	026b04        	lsi	f0, a11, 8
3f40148f:	af          	.byte 0xaf
3f401490:	02bc03        	lsi	f0, a12, 8
3f401493:	cf          	.byte 0xcf
3f401494:	02d102        	addmi	a0, a1, 0x200
3f401497:	d50cd4        	lsi	f13, a12, 0x354
3f40149a:	d609      	s32i.n	a0, a6, 52
3f40149c:	02d702        	addmi	a0, a7, 0x200
3f40149f:	01da      	add.n	a0, a1, a13
3f4014a1:	e105e0        	lsi	f14, a5, 0x384
3f4014a4:	04e702        	s32c1i	a0, a7, 16
3f4014a7:	02e8      	l32i.n	a14, a2, 0
3f4014a9:	ee          	.byte 0xee
3f4014aa:	04f020        	extui	a15, a2, 0, 1
3f4014ad:	02f8      	l32i.n	a15, a2, 0
3f4014af:	02fa      	add.n	a0, a2, a15
3f4014b1:	01fb      	addi.n	a0, a1, 15

3f4014b3 <anon.06436f17a84c229bab175a9d4a2866f0.47.llvm.5870707130826185254>:
3f4014b3:	270c      	movi.n	a7, 2
3f4014b5:	3e3b      	addi.n	a3, a14, 3
3f4014b7:	4e          	.byte 0x4e
3f4014b8:	4f          	.byte 0x4f
3f4014b9:	8f          	.byte 0x8f
3f4014ba:	9e          	.byte 0x9e
3f4014bb:	9e          	.byte 0x9e
3f4014bc:	9f          	.byte 0x9f
3f4014bd:	8b7b      	addi.n	a8, a11, 7
3f4014bf:	a29693        	lsi	f9, a6, 0x288
3f4014c2:	86bab2        	l32ai	a11, a10, 0x218
3f4014c5:	0706b1        	l32r	a11, 3f3c30e0 <PS_WOE+0x3f3830e0>
3f4014c8:	3609      	s32i.n	a0, a6, 12
3f4014ca:	3e3d      	lsi	f3, a14, 56
3f4014cc:	d0f356        	bnez	a3, 3f4011df <anon.06436f17a84c229bab175a9d4a2866f0.43.llvm.5870707130826185254+0x1f>
3f4014cf:	1404d1        	l32r	a13, 3f3c64e0 <PS_WOE+0x3f3864e0>
3f4014d2:	3618      	l32i.n	a1, a6, 12
3f4014d4:	575637        	bbc	a6, a3, 3f40152f <anon.06436f17a84c229bab175a9d4a2866f0.47.llvm.5870707130826185254+0x7c>
3f4014d7:	7f          	.byte 0x7f
3f4014d8:	aeaa      	add.n	a10, a14, a10
3f4014da:	af          	.byte 0xaf
3f4014db:	35bd      	lsi	f11, a5, 20
3f4014dd:	8712e0        	lsi	f14, a2, 0x21c
3f4014e0:	8e89      	s32i.n	a8, a14, 32
3f4014e2:	9e          	.byte 0x9e
3f4014e3:	0e0d04        	lsi	f0, a13, 56
3f4014e6:	291211        	l32r	a1, 3f3cb930 <PS_WOE+0x3f38b930>
3f4014e9:	3a3431        	l32r	a3, 3f3cfdbc <PS_WOE+0x3f38fdbc>
3f4014ec:	494645        	call0	3f44a954 <_rodata_end+0x4824c>
3f4014ef:	4e4a      	add.n	a4, a14, a4
3f4014f1:	4f          	.byte 0x4f
3f4014f2:	5c6564        	lsi	f6, a5, 0x170
3f4014f5:	1bb7b6        	bltui	a7, 16, 3f401514 <anon.06436f17a84c229bab175a9d4a2866f0.47.llvm.5870707130826185254+0x61>
3f4014f8:	071c      	movi.n	a7, 16
3f4014fa:	0a08      	l32i.n	a0, a10, 0
3f4014fc:	140b      	addi.n	a1, a4, -1
3f4014fe:	393617        	bltu	a6, a1, 3f40153b <anon.06436f17a84c229bab175a9d4a2866f0.47.llvm.5870707130826185254+0x88>
3f401501:	a83a      	add.n	a10, a8, a3
3f401503:	d8a9      	s32i.n	a10, a8, 52
3f401505:	09d9      	s32i.n	a13, a9, 0
3f401507:	919037        	bne	a0, a3, 3f40149c <anon.06436f17a84c229bab175a9d4a2866f0.46.llvm.5870707130826185254+0x3d>
3f40150a:	07a8      	l32i.n	a10, a7, 0
3f40150c:	3b0a      	add.n	a3, a11, a0
3f40150e:	3e          	.byte 0x3e
3f40150f:	8f6966        	bnei	a9, 6, 3f4014a2 <anon.06436f17a84c229bab175a9d4a2866f0.46.llvm.5870707130826185254+0x43>
3f401512:	5f6f92        	s32i	a9, a15, 0x17c
3f401515:	bf          	.byte 0xbf
3f401516:	ee          	.byte 0xee
3f401517:	ef          	.byte 0xef
3f401518:	625a      	add.n	a6, a2, a5
3f40151a:	fffcf4        	lsi	f15, a12, 0x3fc
3f40151d:	9b9a      	add.n	a9, a11, a9
3f40151f:	2e          	.byte 0x2e
3f401520:	2f          	.byte 0x2f
3f401521:	552827        	blt	a8, a2, 3f40157a <anon.06436f17a84c229bab175a9d4a2866f0.48.llvm.5870707130826185254+0x7>
3f401524:	a09d      	lsi	f9, a0, 0
3f401526:	a4a3a1        	l32r	a10, 3f3ea7b4 <PS_WOE+0x3f3aa7b4>
3f401529:	ada8a7        	bge	a8, a10, 3f4014da <anon.06436f17a84c229bab175a9d4a2866f0.47.llvm.5870707130826185254+0x27>
3f40152c:	bcba      	add.n	a11, a12, a11
3f40152e:	0b06c4        	lsi	f12, a6, 44
3f401531:	150c      	movi.n	a5, 1
3f401533:	3a1d      	lsi	f1, a10, 40
3f401535:	3f          	.byte 0x3f
3f401536:	a65145        	call0	3f3a7a4c <PS_WOE+0x3f367a4c>
3f401539:	cdcca7        	bnall	a12, a10, 3f40150a <anon.06436f17a84c229bab175a9d4a2866f0.47.llvm.5870707130826185254+0x57>
3f40153c:	1907a0        	lsi	f10, a7, 100
3f40153f:	221a      	add.n	a2, a2, a1
3f401541:	3f3e25        	call8	3f440924 <_rodata_end+0x3e21c>
3f401544:	efece7        	bbsi	a12, 14, 3f401537 <anon.06436f17a84c229bab175a9d4a2866f0.47.llvm.5870707130826185254+0x84>
3f401547:	ff          	.byte 0xff
3f401548:	04c6c5        	call0	3f4061b8 <_rodata_end+0x3ab0>
3f40154b:	252320        	extui	a2, a2, 19, 3
3f40154e:	332826        	beqi	a8, 2, 3f401585 <anon.06436f17a84c229bab175a9d4a2866f0.48.llvm.5870707130826185254+0x12>
3f401551:	3a38      	l32i.n	a3, a10, 12
3f401553:	4a48      	l32i.n	a4, a10, 16
3f401555:	504c      	movi.n	a0, 69
3f401557:	565553        	lsi	f5, a5, 0x158
3f40155a:	5a58      	l32i.n	a5, a10, 20
3f40155c:	5e5c      	movi.n	a14, 85
3f40155e:	656360        	extui	a6, a6, 19, 7
3f401561:	736b66        	bnei	a11, 6, 3f4015d8 <anon.06436f17a84c229bab175a9d4a2866f0.48.llvm.5870707130826185254+0x65>
3f401564:	7d78      	l32i.n	a7, a13, 28
3f401566:	7f          	.byte 0x7f
3f401567:	a48a      	add.n	a10, a4, a8
3f401569:	afaa      	add.n	a10, a15, a10
3f40156b:	d0c0b0        	subx2	a12, a0, a11
3f40156e:	ae          	.byte 0xae
3f40156f:	af          	.byte 0xaf
3f401570:	6e          	.byte 0x6e
3f401571:	6f          	.byte 0x6f
3f401572:	        	lsi	f9, a14, 136

3f401573 <anon.06436f17a84c229bab175a9d4a2866f0.48.llvm.5870707130826185254>:
3f401573:	5e          	.byte 0x5e
3f401574:	057b22        	lsi	f2, a11, 20
3f401577:	2d0403        	lsi	f0, a4, 180
3f40157a:	036603        	lsi	f0, a6, 12
3f40157d:	2e2f01        	l32r	a0, 3f3cce3c <PS_WOE+0x3f38ce3c>
3f401580:	1d8280        	lsi	f8, a2, 116
3f401583:	0f3103        	lsi	f0, a1, 60
3f401586:	041c      	movi.n	a4, 16
3f401588:	1e0924        	lsi	f2, a9, 120
3f40158b:	052b05        	call0	3f40683c <_rodata_end+0x4134>
3f40158e:	0e0444        	lsi	f4, a4, 56
3f401591:	802a      	add.n	a8, a0, a2
3f401593:	06aa      	add.n	a0, a6, a10
3f401595:	240424        	lsi	f2, a4, 144
3f401598:	082804        	mula.dd.ll.ldinc	m2, a8, m0, m2
3f40159b:	4e0b34        	lsi	f3, a11, 0x138
3f40159e:	378143        	lsip	f4, a1, 220
3f4015a1:	1609      	s32i.n	a0, a6, 4
3f4015a3:	080a      	add.n	a0, a8, a0
3f4015a5:	3b18      	l32i.n	a1, a11, 12
3f4015a7:	033945        	call0	3f40493c <_rodata_end+0x2234>
3f4015aa:	090863        	lsi	f6, a8, 36
3f4015ad:	051630        	extui	a1, a3, 22, 1
3f4015b0:	1b0321        	l32r	a2, 3f3c81bc <PS_WOE+0x3f3881bc>
3f4015b3:	400105        	call0	3f4415c4 <_rodata_end+0x3eebc>
3f4015b6:	0438      	l32i.n	a3, a4, 0
3f4015b8:	054b      	addi.n	a0, a5, 4
3f4015ba:	2f          	.byte 0x2f
3f4015bb:	070a04        	lsi	f0, a10, 28
3f4015be:	0709      	s32i.n	a0, a7, 0
3f4015c0:	272040        	lsi	f4, a0, 156
3f4015c3:	090c04        	mula.dd.hl.ldinc	m0, a12, m0, m2
3f4015c6:	3a0336        	entry	a3, 0x1d00
3f4015c9:	071a05        	call0	3f40876c <_rodata_end+0x6064>
3f4015cc:	070c04        	lsi	f0, a12, 28
3f4015cf:	374950        	lsi	f5, a9, 220
3f4015d2:	330d33        	lsi	f3, a13, 204
3f4015d5:	082e07        	blt	a14, a0, 3f4015e1 <anon.06436f17a84c229bab175a9d4a2866f0.48.llvm.5870707130826185254+0x6e>
3f4015d8:	810a      	add.n	a8, a1, a0
3f4015da:	4e5226        	beqi	a2, 5, 3f40162c <anon.06436f17a84c229bab175a9d4a2866f0.48.llvm.5870707130826185254+0xb9>
3f4015dd:	0828      	l32i.n	a2, a8, 0
3f4015df:	162a      	add.n	a1, a6, a2
3f4015e1:	261a      	add.n	a2, a6, a1
3f4015e3:	141c      	movi.n	a4, 17
3f4015e5:	4e0917        	bnone	a9, a1, 3f401637 <anon.06436f17a84c229bab175a9d4a2866f0.48.llvm.5870707130826185254+0xc4>
3f4015e8:	092404        	mula.dd.hl.ldinc	m2, a4, m0, m2
3f4015eb:	190d44        	mula.dd.hl.lddec	m0, a13, m0, m3
3f4015ee:	060a07        	bnone	a10, a0, 3f4015f8 <anon.06436f17a84c229bab175a9d4a2866f0.48.llvm.5870707130826185254+0x85>
3f4015f1:	0848      	l32i.n	a4, a8, 0
3f4015f3:	750927        	bnone	a9, a2, 3f40166c <anon.06436f17a84c229bab175a9d4a2866f0.48.llvm.5870707130826185254+0xf9>
3f4015f6:	3f0b      	addi.n	a3, a15, -1
3f4015f8:	062a41        	l32r	a4, 3f3c2ea0 <PS_WOE+0x3f382ea0>
3f4015fb:	053b      	addi.n	a0, a5, 3
3f4015fd:	060a      	add.n	a0, a6, a0
3f4015ff:	010651        	l32r	a5, 3f3c1a18 <PS_WOE+0x3f381a18>
3f401602:	031005        	call0	3f404704 <_rodata_end+0x1ffc>
3f401605:	8b8005        	call0	3f38ce08 <PS_WOE+0x3f34ce08>
3f401608:	481e62        	l16ui	a6, a14, 144
3f40160b:	0a08      	l32i.n	a0, a10, 0
3f40160d:	5ea680        	f64rnd	a10, a6, a8, 1
3f401610:	0b4522        	s8i	a2, a5, 11
3f401613:	060a      	add.n	a0, a6, a0
3f401615:	130d      	lsi	f0, a3, 12
3f401617:	063a      	add.n	a0, a6, a3
3f401619:	360a      	add.n	a3, a6, a0
3f40161b:	042c      	movi.n	a4, 32
3f40161d:	b98017        	bany	a0, a1, 3f4015da <anon.06436f17a84c229bab175a9d4a2866f0.48.llvm.5870707130826185254+0x67>
3f401620:	643c      	movi.n	a4, 54
3f401622:	480c53        	lsi	f5, a12, 0x120
3f401625:	0a09      	s32i.n	a0, a10, 0
3f401627:	1b4546        	j	3f408340 <_rodata_end+0x5c38>
3f40162a:	0848      	l32i.n	a4, a8, 0
3f40162c:	490d53        	lsi	f5, a13, 0x124
3f40162f:	460781        	l32r	a8, 3f3d2e4c <PS_WOE+0x3f392e4c>
3f401632:	1d0a      	add.n	a1, a13, a0
3f401634:	494703        	ssi	f0, a7, 0x124
3f401637:	0e0337        	bnone	a3, a3, 3f401649 <anon.06436f17a84c229bab175a9d4a2866f0.48.llvm.5870707130826185254+0xd6>
3f40163a:	0a08      	l32i.n	a0, a10, 0
3f40163c:	073906        	j	3f403324 <_rodata_end+0xc1c>
3f40163f:	810a      	add.n	a8, a1, a0
3f401641:	801936        	entry	a9, 0x4008
3f401644:	0f01b7        	bnone	a1, a11, 3f401657 <anon.06436f17a84c229bab175a9d4a2866f0.48.llvm.5870707130826185254+0xe4>
3f401647:	830d32        	l8ui	a3, a13, 131
3f40164a:	669b      	addi.n	a6, a6, 9
3f40164c:	800b75        	call12	3f381704 <PS_WOE+0x3f341704>
3f40164f:	4c8ac4        	lsi	f12, a10, 0x130
3f401652:	840d63        	lsi	f6, a13, 0x210
3f401655:	2f          	.byte 0x2f
3f401656:	8f          	.byte 0x8f
3f401657:	4782d1        	l32r	a13, 3f3d3460 <PS_WOE+0x3f393460>
3f40165a:	82b9a1        	l32r	a10, 3f3e2140 <PS_WOE+0x3f3a2140>
3f40165d:	0739      	s32i.n	a3, a7, 0
3f40165f:	042a      	add.n	a0, a4, a2
3f401661:	065c      	movi.n	a6, 80
3f401663:	460a26        	beqi	a10, -1, 3f4016ad <anon.06436f17a84c229bab175a9d4a2866f0.48.llvm.5870707130826185254+0x13a>
3f401666:	280a      	add.n	a2, a8, a0
3f401668:	821305        	call0	3f38379c <PS_WOE+0x3f34379c>
3f40166b:	655bb0        	extui	a5, a11, 27, 7
3f40166e:	044b      	addi.n	a0, a4, 4
3f401670:	0739      	s32i.n	a3, a7, 0
3f401672:	054011        	l32r	a1, 3f3c2b74 <PS_WOE+0x3f382b74>
3f401675:	020b      	addi.n	a0, a2, -1
3f401677:	0e          	.byte 0xe
3f401678:	08f897        	bbsi	a8, 25, 3f401684 <anon.06436f17a84c229bab175a9d4a2866f0.48.llvm.5870707130826185254+0x111>
3f40167b:	2ad684        	lsi	f8, a6, 168
3f40167e:	a209      	s32i.n	a0, a2, 40
3f401680:	3381e7        	bany	a1, a14, 3f4016b7 <anon.06436f17a84c229bab175a9d4a2866f0.48.llvm.5870707130826185254+0x144>
3f401683:	032d      	mov.n	a2, a3
3f401685:	080411        	l32r	a1, 3f3c3698 <PS_WOE+0x3f383698>
3f401688:	898c81        	l32r	a8, 3f3e3cb8 <PS_WOE+0x3f3a3cb8>
3f40168b:	056b04        	lsi	f0, a11, 20
3f40168e:	030d      	mov.n	a0, a3
3f401690:	0709      	s32i.n	a0, a7, 0
3f401692:	609210        	lsi	f1, a2, 0x180
3f401695:	740947        	bnone	a9, a4, 3f40170d <anon.06436f17a84c229bab175a9d4a2866f0.48.llvm.5870707130826185254+0x19a>
3f401698:	803c      	movi.n	a0, 56
3f40169a:	730af6        	bgeui	a10, 0x8000, 3f401711 <anon.06436f17a84c229bab175a9d4a2866f0.48.llvm.5870707130826185254+0x19e>
3f40169d:	7008      	l32i.n	a0, a0, 28
3f40169f:	804615        	call4	3f381b00 <PS_WOE+0x3f341b00>
3f4016a2:	149a      	add.n	a1, a4, a9
3f4016a4:	570c      	movi.n	a7, 5
3f4016a6:	1909      	s32i.n	a0, a9, 4
3f4016a8:	818780        	src	a8, a7, a8
3f4016ab:	850347        	bnone	a3, a4, 3f401634 <anon.06436f17a84c229bab175a9d4a2866f0.48.llvm.5870707130826185254+0xc1>
3f4016ae:	150f42        	l8ui	a4, a15, 21
3f4016b1:	1f5084        	lsi	f8, a0, 124
3f4016b4:	2be180        	oeq.s	b14, f1, f8
3f4016b7:	2dd580        	lsi	f8, a5, 180
3f4016ba:	041a03        	lsi	f0, a10, 16
3f4016bd:	408102        	lsi	f0, a1, 0x100
3f4016c0:	1f          	.byte 0x1f
3f4016c1:	053a11        	l32r	a1, 3f3c2bac <PS_WOE+0x3f382bac>
3f4016c4:	e08401        	l32r	a0, 3f3f98d4 <PS_WOE+0x3f3b98d4>
3f4016c7:	29f780        	lsi	f8, a7, 164
3f4016ca:	044c      	movi.n	a4, 64
3f4016cc:	040a      	add.n	a0, a4, a0
3f4016ce:	118302        	lsi	f0, a3, 68
3f4016d1:	3d4c44        	lsi	f4, a12, 244
3f4016d4:	3cc280        	lsi	f8, a2, 240
3f4016d7:	040106        	j	3f4026df <anon.4f5b05757c841249a260f1e8a0a0b873.1.llvm.14849298323431214658+0x37f>
3f4016da:	1b0555        	call4	3f41c730 <_rodata_end+0x1a028>
3f4016dd:	810234        	lsi	f3, a2, 0x204
3f4016e0:	0e          	.byte 0xe
3f4016e1:	042c      	movi.n	a4, 32
3f4016e3:	560c64        	lsi	f6, a12, 0x158
3f4016e6:	800a      	add.n	a8, a0, a0
3f4016e8:	ae          	.byte 0xae
3f4016e9:	1d38      	l32i.n	a3, a13, 4
3f4016eb:	2c0d      	lsi	f0, a12, 48
3f4016ed:	070904        	lsi	f0, a9, 28
3f4016f0:	060e02        	l8ui	a0, a14, 6
3f4016f3:	839a80        	moveqz	a9, a10, a8
3f4016f6:	05d8      	l32i.n	a13, a5, 0
3f4016f8:	0d0310        	lsi	f1, a3, 52
3f4016fb:	0c7403        	lsi	f0, a4, 48
3f4016fe:	0759      	s32i.n	a5, a7, 0
3f401700:	040c      	movi.n	a4, 0
3f401702:	0c0f01        	l32r	a0, 3f3c4740 <PS_WOE+0x3f384740>
3f401705:	083804        	mula.dd.ll.ldinc	m3, a8, m0, m2
3f401708:	060a      	add.n	a0, a6, a0
3f40170a:	0828      	l32i.n	a2, a8, 0
3f40170c:	814e22        	s8i	a2, a14, 129
3f40170f:	150c54        	lsi	f5, a12, 84
3f401712:	030503        	lsi	f0, a5, 12
3f401715:	1d0907        	bnone	a9, a0, 3f401736 <anon.b0ba7e5e3f2c3fce5a4d43122d4ad486.4.llvm.6012552628912787576+0x2>
3f401718:	050b03        	lsi	f0, a11, 20
3f40171b:	0a0a06        	j	3f403f47 <_rodata_end+0x183f>
3f40171e:	080806        	j	3f403742 <_rodata_end+0x103a>
3f401721:	800907        	bnone	a9, a0, 3f4016a5 <anon.06436f17a84c229bab175a9d4a2866f0.48.llvm.5870707130826185254+0x132>
3f401724:	25cb      	addi.n	a2, a5, 12
3f401726:	840a      	add.n	a8, a4, a0
3f401728:	2e2e06        	j	3f40cfe4 <_rodata_end+0xa8dc>
3f40172b:	172900        	lsi	f0, a9, 92
3f40172e:	023f40        	andb	b3, b15, b4
3f401731:	000000        	ill

3f401734 <anon.b0ba7e5e3f2c3fce5a4d43122d4ad486.4.llvm.6012552628912787576>:
3f401734:	2f          	.byte 0x2f
3f401735:	6f68      	l32i.n	a6, a15, 24
3f401737:	656d      	lsi	f6, a5, 20
3f401739:	2f          	.byte 0x2f
3f40173a:	616d      	lsi	f6, a1, 4
3f40173c:	7a6562        	s32i	a6, a5, 0x1e8
3f40173f:	2f          	.byte 0x2f
3f401740:	766564        	lsi	f6, a5, 0x1d8
3f401743:	6f6c65        	call8	3f470e08 <_rodata_end+0x6e700>
3f401746:	656d70        	extui	a6, a7, 29, 7
3f401749:	6e          	.byte 0x6e
3f40174a:	722f74        	lsi	f7, a15, 0x1c8
3f40174d:	747375        	call12	3f475e84 <_rodata_end+0x7377c>
3f401750:	2f          	.byte 0x2f
3f401751:	7478      	l32i.n	a7, a4, 28
3f401753:	736e65        	call8	3f474e38 <_rodata_end+0x72730>
3f401756:	722f61        	l32r	a6, 3f3de014 <PS_WOE+0x3f39e014>
3f401759:	747375        	call12	3f475e90 <_rodata_end+0x73788>
3f40175c:	782d      	lsi	f2, a8, 32
3f40175e:	6e6574        	lsi	f7, a5, 0x1b8
3f401761:	2d6173        	lsi	f7, a1, 180
3f401764:	766564        	lsi	f6, a5, 0x1d8
3f401767:	2f          	.byte 0x2f
3f401768:	697562        	lsi	f6, a5, 0x1a4
3f40176b:	646c      	movi.n	a4, -26
3f40176d:	2f          	.byte 0x2f
3f40176e:	3878      	l32i.n	a7, a8, 12
3f401770:	365f36        	entry	a15, 0x1b28
3f401773:	752d34        	lsi	f3, a13, 0x1d4
3f401776:	6e          	.byte 0x6e
3f401777:	6e6b      	addi.n	a6, a14, 6
3f401779:	6f          	.byte 0x6f
3f40177a:	2d6e77        	bbci	a14, 7, 3f4017ab <anon.b0ba7e5e3f2c3fce5a4d43122d4ad486.4.llvm.6012552628912787576+0x77>
3f40177d:	696c      	movi.n	a9, -26
3f40177f:	6e          	.byte 0x6e
3f401780:	2d7875        	call12	3f42ef08 <_rodata_end+0x2c800>
3f401783:	756e67        	bbci	a14, 6, 3f4017fc <anon.b0ba7e5e3f2c3fce5a4d43122d4ad486.5.llvm.6012552628912787576+0x38>
3f401786:	2f          	.byte 0x2f
3f401787:	617473        	lsi	f7, a4, 0x184
3f40178a:	326567        	bbci	a5, 6, 3f4017c0 <anon.b0ba7e5e3f2c3fce5a4d43122d4ad486.4.llvm.6012552628912787576+0x8c>
3f40178d:	2f          	.byte 0x2f
3f40178e:	696c      	movi.n	a9, -26
3f401790:	722f62        	l32i	a6, a15, 0x1c8
3f401793:	747375        	call12	3f475ec8 <_rodata_end+0x737c0>
3f401796:	696c      	movi.n	a9, -26
3f401798:	732f62        	l32i	a6, a15, 0x1cc
3f40179b:	2f6372        	s32i	a7, a3, 188
3f40179e:	737572        	lsi	f7, a5, 0x1cc
3f4017a1:	6c2f74        	lsi	f7, a15, 0x1b0
3f4017a4:	6269      	s32i.n	a6, a2, 24
3f4017a6:	726172        	s32i	a7, a1, 0x1c8
3f4017a9:	2f79      	s32i.n	a7, a15, 8
3f4017ab:	726f63        	lsi	f6, a15, 0x1c8
3f4017ae:	732f65        	call8	3f474aa4 <_rodata_end+0x7239c>
3f4017b1:	2f6372        	s32i	a7, a3, 188
3f4017b4:	696c73        	lsi	f7, a12, 0x1a4
3f4017b7:	2f6563        	lsi	f6, a5, 188
3f4017ba:	656d      	lsi	f6, a5, 20
3f4017bc:	636d      	lsi	f6, a3, 12
3f4017be:	7268      	l32i.n	a6, a2, 28
3f4017c0:	2e          	.byte 0x2e
3f4017c1:	007372        	lsi	f7, a3, 0

3f4017c4 <anon.b0ba7e5e3f2c3fce5a4d43122d4ad486.5.llvm.6012552628912787576>:
3f4017c4:	401734        	lsi	f3, a7, 0x100
3f4017c7:	3f          	.byte 0x3f
3f4017c8:	8f          	.byte 0x8f
3f4017c9:	000000        	ill
3f4017cc:	000057        	bnone	a0, a5, 3f4017d0 <anon.b0ba7e5e3f2c3fce5a4d43122d4ad486.5.llvm.6012552628912787576+0xc>
3f4017cf:	000500        	lsi	f0, a5, 0
3f4017d2:	630000        	minu	a0, a0, a0
3f4017d5:	6c6c61        	l32r	a6, 3f3dc988 <PS_WOE+0x3f39c988>
3f4017d8:	206465        	call8	3f421e20 <_rodata_end+0x1f718>
3f4017db:	704f60        	lsi	f6, a15, 0x1c0
3f4017de:	6f6974        	lsi	f7, a9, 0x1bc
3f4017e1:	6e          	.byte 0x6e
3f4017e2:	3a3a      	add.n	a3, a10, a3
3f4017e4:	776e75        	call12	3f478ecc <_rodata_end+0x767c4>
3f4017e7:	706172        	s32i	a7, a1, 0x1c0
3f4017ea:	2928      	l32i.n	a2, a9, 8
3f4017ec:	6f2060        	f64cmph	a2, a0, a6, 6
3f4017ef:	6e          	.byte 0x6e
3f4017f0:	206120        	or	a6, a1, a2
3f4017f3:	6f4e60        	f64cmph	a4, a14, a6, 6
3f4017f6:	6e          	.byte 0x6e
3f4017f7:	206065        	call8	3f421dfc <_rodata_end+0x1f6f4>
3f4017fa:	6c6176        	lsi	f7, a1, 0x1b0
3f4017fd:	006575        	call12	3f401e54 <_ZN4core7unicode12unicode_data15grapheme_extend7OFFSETS17hc3d1a165f3011cadE.llvm.12515806932495618290+0x1e0>
3f401800:	6e6172        	s32i	a7, a1, 0x1b8
3f401803:	206567        	bbci	a5, 6, 3f401827 <anon.b0ba7e5e3f2c3fce5a4d43122d4ad486.5.llvm.6012552628912787576+0x63>
3f401806:	617473        	lsi	f7, a4, 0x184
3f401809:	207472        	lsi	f7, a4, 128
3f40180c:	6e69      	s32i.n	a6, a14, 24
3f40180e:	786564        	lsi	f6, a5, 0x1e0
3f401811:	6f2020        	f64cmph	a2, a0, a2, 6
3f401814:	207475        	call12	3f421f5c <_rodata_end+0x1f854>
3f401817:	6f          	.byte 0x6f
3f401818:	722066        	bnei	a0, 2, 3f40188e <anon.b0ba7e5e3f2c3fce5a4d43122d4ad486.5.llvm.6012552628912787576+0xca>
3f40181b:	676e61        	l32r	a6, 3f3db5d4 <PS_WOE+0x3f39b5d4>
3f40181e:	662065        	call8	3f467a24 <_rodata_end+0x6531c>
3f401821:	6f          	.byte 0x6f
3f401822:	732072        	l32i	a7, a0, 0x1cc
3f401825:	696c      	movi.n	a9, -26
3f401827:	206563        	lsi	f6, a5, 128
3f40182a:	6f          	.byte 0x6f
3f40182b:	6c2066        	bnei	a0, 2, 3f40189b <anon.b0ba7e5e3f2c3fce5a4d43122d4ad486.5.llvm.6012552628912787576+0xd7>
3f40182e:	676e65        	call8	3f468f14 <_rodata_end+0x6680c>
3f401831:	206874        	lsi	f7, a8, 128
3f401834:	401800        	ssl	a8
3f401837:	3f          	.byte 0x3f
3f401838:	000012        	l8ui	a1, a0, 0
3f40183b:	181200        	lsxp	f1, a2, a0
3f40183e:	223f40        	orb	b3, b15, b4
3f401841:	000000        	ill
3f401844:	2f          	.byte 0x2f
3f401845:	6f68      	l32i.n	a6, a15, 24
3f401847:	656d      	lsi	f6, a5, 20
3f401849:	2f          	.byte 0x2f
3f40184a:	616d      	lsi	f6, a1, 4
3f40184c:	7a6562        	s32i	a6, a5, 0x1e8
3f40184f:	2f          	.byte 0x2f
3f401850:	766564        	lsi	f6, a5, 0x1d8
3f401853:	6f6c65        	call8	3f470f18 <_rodata_end+0x6e810>
3f401856:	656d70        	extui	a6, a7, 29, 7
3f401859:	6e          	.byte 0x6e
3f40185a:	722f74        	lsi	f7, a15, 0x1c8
3f40185d:	747375        	call12	3f475f94 <_rodata_end+0x7388c>
3f401860:	2f          	.byte 0x2f
3f401861:	7478      	l32i.n	a7, a4, 28
3f401863:	736e65        	call8	3f474f48 <_rodata_end+0x72840>
3f401866:	722f61        	l32r	a6, 3f3de124 <PS_WOE+0x3f39e124>
3f401869:	747375        	call12	3f475fa0 <_rodata_end+0x73898>
3f40186c:	782d      	lsi	f2, a8, 32
3f40186e:	6e6574        	lsi	f7, a5, 0x1b8
3f401871:	2d6173        	lsi	f7, a1, 180
3f401874:	766564        	lsi	f6, a5, 0x1d8
3f401877:	2f          	.byte 0x2f
3f401878:	697562        	lsi	f6, a5, 0x1a4
3f40187b:	646c      	movi.n	a4, -26
3f40187d:	2f          	.byte 0x2f
3f40187e:	3878      	l32i.n	a7, a8, 12
3f401880:	365f36        	entry	a15, 0x1b28
3f401883:	752d34        	lsi	f3, a13, 0x1d4
3f401886:	6e          	.byte 0x6e
3f401887:	6e6b      	addi.n	a6, a14, 6
3f401889:	6f          	.byte 0x6f
3f40188a:	2d6e77        	bbci	a14, 7, 3f4018bb <anon.b0ba7e5e3f2c3fce5a4d43122d4ad486.5.llvm.6012552628912787576+0xf7>
3f40188d:	696c      	movi.n	a9, -26
3f40188f:	6e          	.byte 0x6e
3f401890:	2d7875        	call12	3f42f018 <_rodata_end+0x2c910>
3f401893:	756e67        	bbci	a14, 6, 3f40190c <anon.b0ba7e5e3f2c3fce5a4d43122d4ad486.5.llvm.6012552628912787576+0x148>
3f401896:	2f          	.byte 0x2f
3f401897:	617473        	lsi	f7, a4, 0x184
3f40189a:	326567        	bbci	a5, 6, 3f4018d0 <anon.b0ba7e5e3f2c3fce5a4d43122d4ad486.5.llvm.6012552628912787576+0x10c>
3f40189d:	2f          	.byte 0x2f
3f40189e:	696c      	movi.n	a9, -26
3f4018a0:	722f62        	l32i	a6, a15, 0x1c8
3f4018a3:	747375        	call12	3f475fd8 <_rodata_end+0x738d0>
3f4018a6:	696c      	movi.n	a9, -26
3f4018a8:	732f62        	l32i	a6, a15, 0x1cc
3f4018ab:	2f6372        	s32i	a7, a3, 188
3f4018ae:	737572        	lsi	f7, a5, 0x1cc
3f4018b1:	6c2f74        	lsi	f7, a15, 0x1b0
3f4018b4:	6269      	s32i.n	a6, a2, 24
3f4018b6:	726172        	s32i	a7, a1, 0x1c8
3f4018b9:	2f79      	s32i.n	a7, a15, 8
3f4018bb:	726f63        	lsi	f6, a15, 0x1c8
3f4018be:	732f65        	call8	3f474bb4 <_rodata_end+0x724ac>
3f4018c1:	2f6372        	s32i	a7, a3, 188
3f4018c4:	696c73        	lsi	f7, a12, 0x1a4
3f4018c7:	2f6563        	lsi	f6, a5, 188
3f4018ca:	6e69      	s32i.n	a6, a14, 24
3f4018cc:	786564        	lsi	f6, a5, 0x1e0
3f4018cf:	2e          	.byte 0x2e
3f4018d0:	007372        	lsi	f7, a3, 0
3f4018d3:	184400        	lsxp	f4, a4, a0
3f4018d6:	8e3f40        	f64iter	a3, a15, a4, 0, 0
3f4018d9:	000000        	ill
3f4018dc:	000034        	lsi	f3, a0, 0
3f4018df:	000500        	lsi	f0, a5, 0
3f4018e2:	720000        	lsi	f0, a0, 0x1c8
3f4018e5:	676e61        	l32r	a6, 3f3db6a0 <PS_WOE+0x3f39b6a0>
3f4018e8:	652065        	call8	3f466af0 <_rodata_end+0x643e8>
3f4018eb:	6e          	.byte 0x6e
3f4018ec:	692064        	lsi	f6, a0, 0x1a4
3f4018ef:	6e          	.byte 0x6e
3f4018f0:	786564        	lsi	f6, a5, 0x1e0
3f4018f3:	202920        	or	a2, a9, a2
3f4018f6:	656877        	bbci	a8, 7, 3f40195f <anon.b0ba7e5e3f2c3fce5a4d43122d4ad486.5.llvm.6012552628912787576+0x19b>
3f4018f9:	6e          	.byte 0x6e
3f4018fa:	6c7320        	lsi	f2, a3, 0x1b0
3f4018fd:	6369      	s32i.n	a6, a3, 24
3f4018ff:	6e69      	s32i.n	a6, a14, 24
3f401901:	602067        	blt	a0, a6, 3f401965 <anon.b0ba7e5e3f2c3fce5a4d43122d4ad486.5.llvm.6012552628912787576+0x1a1>
3f401904:	4018e4        	lsi	f14, a8, 0x100
3f401907:	3f          	.byte 0x3f
3f401908:	000010        	lsi	f1, a0, 0
3f40190b:	181200        	lsxp	f1, a2, a0
3f40190e:	223f40        	orb	b3, b15, b4
3f401911:	000000        	ill
3f401914:	401844        	lsi	f4, a8, 0x100
3f401917:	3f          	.byte 0x3f
3f401918:	8e          	.byte 0x8e
3f401919:	000000        	ill
3f40191c:	0049      	s32i.n	a4, a0, 0
3f40191e:	050000        	extui	a0, a0, 16, 1
3f401921:	000000        	ill
3f401924:	696c73        	lsi	f7, a12, 0x1a4
3f401927:	206563        	lsi	f6, a5, 128
3f40192a:	6e69      	s32i.n	a6, a14, 24
3f40192c:	786564        	lsi	f6, a5, 0x1e0
3f40192f:	747320        	extui	a7, a2, 3, 8
3f401932:	747261        	l32r	a6, 3f3deafc <PS_WOE+0x3f39eafc>
3f401935:	612073        	lsi	f7, a0, 0x184
3f401938:	202074        	lsi	f7, a0, 128
3f40193b:	747562        	lsi	f6, a5, 0x1d0
3f40193e:	6e6520        	f64rnd	a6, a5, a2, 2
3f401941:	207364        	lsi	f6, a3, 128
3f401944:	207461        	l32r	a6, 3f3c9b14 <PS_WOE+0x3f389b14>
3f401947:	192400        	lsi	f0, a4, 100
3f40194a:	163f40        	lsi	f4, a15, 88
3f40194d:	000000        	ill
3f401950:	193a      	add.n	a1, a9, a3
3f401952:	0d3f40        	lsi	f4, a15, 52
3f401955:	000000        	ill
3f401958:	401844        	lsi	f4, a8, 0x100
3f40195b:	3f          	.byte 0x3f
3f40195c:	8e          	.byte 0x8e
3f40195d:	000000        	ill
3f401960:	005c      	movi.n	a0, 80
3f401962:	050000        	extui	a0, a0, 16, 1
3f401965:	000000        	ill
3f401968:	2f          	.byte 0x2f
3f401969:	6f68      	l32i.n	a6, a15, 24
3f40196b:	656d      	lsi	f6, a5, 20
3f40196d:	2f          	.byte 0x2f
3f40196e:	616d      	lsi	f6, a1, 4
3f401970:	7a6562        	s32i	a6, a5, 0x1e8
3f401973:	2f          	.byte 0x2f
3f401974:	766564        	lsi	f6, a5, 0x1d8
3f401977:	6f6c65        	call8	3f47103c <_rodata_end+0x6e934>
3f40197a:	656d70        	extui	a6, a7, 29, 7
3f40197d:	6e          	.byte 0x6e
3f40197e:	722f74        	lsi	f7, a15, 0x1c8
3f401981:	747375        	call12	3f4760b8 <_rodata_end+0x739b0>
3f401984:	2f          	.byte 0x2f
3f401985:	7478      	l32i.n	a7, a4, 28
3f401987:	736e65        	call8	3f47506c <_rodata_end+0x72964>
3f40198a:	722f61        	l32r	a6, 3f3de248 <PS_WOE+0x3f39e248>
3f40198d:	747375        	call12	3f4760c4 <_rodata_end+0x739bc>
3f401990:	782d      	lsi	f2, a8, 32
3f401992:	6e6574        	lsi	f7, a5, 0x1b8
3f401995:	2d6173        	lsi	f7, a1, 180
3f401998:	766564        	lsi	f6, a5, 0x1d8
3f40199b:	2f          	.byte 0x2f
3f40199c:	697562        	lsi	f6, a5, 0x1a4
3f40199f:	646c      	movi.n	a4, -26
3f4019a1:	2f          	.byte 0x2f
3f4019a2:	3878      	l32i.n	a7, a8, 12
3f4019a4:	365f36        	entry	a15, 0x1b28
3f4019a7:	752d34        	lsi	f3, a13, 0x1d4
3f4019aa:	6e          	.byte 0x6e
3f4019ab:	6e6b      	addi.n	a6, a14, 6
3f4019ad:	6f          	.byte 0x6f
3f4019ae:	2d6e77        	bbci	a14, 7, 3f4019df <anon.b0ba7e5e3f2c3fce5a4d43122d4ad486.5.llvm.6012552628912787576+0x21b>
3f4019b1:	696c      	movi.n	a9, -26
3f4019b3:	6e          	.byte 0x6e
3f4019b4:	2d7875        	call12	3f42f13c <_rodata_end+0x2ca34>
3f4019b7:	756e67        	bbci	a14, 6, 3f401a30 <anon.b0ba7e5e3f2c3fce5a4d43122d4ad486.5.llvm.6012552628912787576+0x26c>
3f4019ba:	2f          	.byte 0x2f
3f4019bb:	617473        	lsi	f7, a4, 0x184
3f4019be:	326567        	bbci	a5, 6, 3f4019f4 <anon.b0ba7e5e3f2c3fce5a4d43122d4ad486.5.llvm.6012552628912787576+0x230>
3f4019c1:	2f          	.byte 0x2f
3f4019c2:	696c      	movi.n	a9, -26
3f4019c4:	722f62        	l32i	a6, a15, 0x1c8
3f4019c7:	747375        	call12	3f4760fc <_rodata_end+0x739f4>
3f4019ca:	696c      	movi.n	a9, -26
3f4019cc:	732f62        	l32i	a6, a15, 0x1cc
3f4019cf:	2f6372        	s32i	a7, a3, 188
3f4019d2:	737572        	lsi	f7, a5, 0x1cc
3f4019d5:	6c2f74        	lsi	f7, a15, 0x1b0
3f4019d8:	6269      	s32i.n	a6, a2, 24
3f4019da:	726172        	s32i	a7, a1, 0x1c8
3f4019dd:	2f79      	s32i.n	a7, a15, 8
3f4019df:	726f63        	lsi	f6, a15, 0x1c8
3f4019e2:	732f65        	call8	3f474cd8 <_rodata_end+0x725d0>
3f4019e5:	2f6372        	s32i	a7, a3, 188
3f4019e8:	727473        	lsi	f7, a4, 0x1c8
3f4019eb:	2f          	.byte 0x2f
3f4019ec:	6f6d      	lsi	f6, a15, 60
3f4019ee:	722e64        	lsi	f6, a14, 0x1c8
3f4019f1:	2e5b73        	lsi	f7, a11, 184
3f4019f4:	2e          	.byte 0x2e
3f4019f5:	2e          	.byte 0x2e
3f4019f6:	625d      	lsi	f5, a2, 8
3f4019f8:	7479      	s32i.n	a7, a4, 28
3f4019fa:	692065        	call8	3f46ac00 <_rodata_end+0x684f8>
3f4019fd:	6e          	.byte 0x6e
3f4019fe:	786564        	lsi	f6, a5, 0x1e0
3f401a01:	692020        	lsi	f2, a0, 0x1a4
3f401a04:	6f2073        	lsi	f7, a0, 0x1bc
3f401a07:	207475        	call12	3f42214c <_rodata_end+0x1fa44>
3f401a0a:	6f          	.byte 0x6f
3f401a0b:	622066        	bnei	a0, 2, 3f401a71 <anon.b0ba7e5e3f2c3fce5a4d43122d4ad486.5.llvm.6012552628912787576+0x2ad>
3f401a0e:	6f          	.byte 0x6f
3f401a0f:	646e75        	call12	3f4660f4 <_rodata_end+0x639ec>
3f401a12:	6f2073        	lsi	f7, a0, 0x1bc
3f401a15:	602066        	bnei	a0, 2, 3f401a79 <anon.b0ba7e5e3f2c3fce5a4d43122d4ad486.5.llvm.6012552628912787576+0x2b5>
3f401a18:	000060        	lsi	f6, a0, 0
3f401a1b:	19f700        	lsi	f0, a7, 100
3f401a1e:	0b3f40        	lsi	f4, a15, 44
3f401a21:	000000        	ill
3f401a24:	401a02        	l16ui	a0, a10, 128
3f401a27:	3f          	.byte 0x3f
3f401a28:	000016        	beqz	a0, 3f401a2c <anon.b0ba7e5e3f2c3fce5a4d43122d4ad486.5.llvm.6012552628912787576+0x268>
3f401a2b:	1a1800        	sub.s	f1, f8, f0
3f401a2e:	013f40        	slli	a3, a15, 28
3f401a31:	000000        	ill
3f401a34:	1968      	l32i.n	a6, a9, 4
3f401a36:	8a3f40        	round.s	a3, f15, 4
3f401a39:	000000        	ill
3f401a3c:	006b      	addi.n	a0, a0, 6
3f401a3e:	090000        	l32e	a0, a0, -64
3f401a41:	000000        	ill
3f401a44:	676562        	s32i	a6, a5, 0x19c
3f401a47:	6e69      	s32i.n	a6, a14, 24
3f401a49:	3d3c20        	lsi	f2, a12, 244
3f401a4c:	6e6520        	f64rnd	a6, a5, a2, 2
3f401a4f:	282064        	lsi	f6, a0, 160
3f401a52:	3d3c20        	lsi	f2, a12, 244
3f401a55:	000020        	lsi	f2, a0, 0
3f401a58:	401a44        	lsi	f4, a10, 0x100
3f401a5b:	3f          	.byte 0x3f
3f401a5c:	0e          	.byte 0xe
3f401a5d:	000000        	ill
3f401a60:	401a52        	l16ui	a5, a10, 128
3f401a63:	3f          	.byte 0x3f
3f401a64:	000004        	lsi	f0, a0, 0
3f401a67:	18f400        	lsxp	f15, a4, a0
3f401a6a:	103f40        	and	a3, a15, a4
3f401a6d:	000000        	ill
3f401a70:	1a18      	l32i.n	a1, a10, 4
3f401a72:	013f40        	slli	a3, a15, 28
3f401a75:	000000        	ill
3f401a78:	1968      	l32i.n	a6, a9, 4
3f401a7a:	8a3f40        	round.s	a3, f15, 4
3f401a7d:	000000        	ill
3f401a80:	6f          	.byte 0x6f
3f401a81:	000000        	ill
3f401a84:	000005        	call0	3f401a88 <anon.b0ba7e5e3f2c3fce5a4d43122d4ad486.5.llvm.6012552628912787576+0x2c4>
3f401a87:	196800        	lsi	f0, a8, 100
3f401a8a:	8a3f40        	round.s	a3, f15, 4
3f401a8d:	000000        	ill
3f401a90:	007d      	mov.n	a7, a0
3f401a92:	2d0000        	lsi	f0, a0, 180
3f401a95:	000000        	ill
3f401a98:	736920        	maxu	a6, a9, a2
3f401a9b:	6f6e20        	f64cmph	a6, a14, a2, 6
3f401a9e:	612074        	lsi	f7, a0, 0x184
3f401aa1:	686320        	lsi	f2, a3, 0x1a0
3f401aa4:	207261        	l32r	a6, 3f3c9c6c <PS_WOE+0x3f389c6c>
3f401aa7:	756f62        	s32i	a6, a15, 0x1d4
3f401aaa:	6e          	.byte 0x6e
3f401aab:	726164        	lsi	f6, a1, 0x1c8
3f401aae:	3b79      	s32i.n	a7, a11, 12
3f401ab0:	746920        	extui	a6, a2, 9, 8
3f401ab3:	736920        	maxu	a6, a9, a2
3f401ab6:	6e6920        	f64rnd	a6, a9, a2, 2
3f401ab9:	646973        	lsi	f7, a9, 0x190
3f401abc:	202065        	call8	3f421cc4 <_rodata_end+0x1f5bc>
3f401abf:	6228      	l32i.n	a2, a2, 24
3f401ac1:	7479      	s32i.n	a7, a4, 28
3f401ac3:	207365        	call8	3f4221f8 <_rodata_end+0x1faf0>
3f401ac6:	637341        	l32r	a4, 3f3da894 <PS_WOE+0x3f39a894>
3f401ac9:	6969      	s32i.n	a6, a9, 24
3f401acb:	727453        	lsi	f5, a4, 0x1c8
3f401ace:	616942        	s32i	a4, a9, 0x184
3f401ad1:	646573        	lsi	f7, a5, 0x190
3f401ad4:	657046        	j	3f41b099 <_rodata_end+0x18991>
3f401ad7:	7078      	l32i.n	a7, a0, 28
3f401ad9:	6f          	.byte 0x6f
3f401ada:	6e          	.byte 0x6e
3f401adb:	746e65        	call8	3f4761c0 <_rodata_end+0x73ab8>
3f401ade:	616d      	lsi	f6, a1, 4
3f401ae0:	6e          	.byte 0x6e
3f401ae1:	736974        	lsi	f7, a9, 0x1cc
3f401ae4:	6e6173        	lsi	f7, a1, 0x1b8
3f401ae7:	616765        	call8	3f46315c <_rodata_end+0x60a54>
3f401aea:	766974        	lsi	f7, a9, 0x1d8
3f401aed:	202965        	call8	3f421d84 <_rodata_end+0x1f67c>
3f401af0:	6f          	.byte 0x6f
3f401af1:	602066        	bnei	a0, 2, 3f401b55 <anon.692f8615d19a0b73c5033698db9ca3c3.52.llvm.12515806932495618290+0x29>
3f401af4:	4019f7        	beq	a9, a15, 3f401b38 <anon.692f8615d19a0b73c5033698db9ca3c3.52.llvm.12515806932495618290+0xc>
3f401af7:	3f          	.byte 0x3f
3f401af8:	000b      	addi.n	a0, a0, -1
3f401afa:	980000        	lsi	f0, a0, 0x260
3f401afd:	401a      	add.n	a4, a0, a1
3f401aff:	3f          	.byte 0x3f
3f401b00:	000026        	beqi	a0, -1, 3f401b04 <anon.b0ba7e5e3f2c3fce5a4d43122d4ad486.5.llvm.6012552628912787576+0x340>
3f401b03:	1abe00        	sub.s	f11, f14, f0
3f401b06:	083f40        	lsx	f3, a15, a4
3f401b09:	000000        	ill
3f401b0c:	ee          	.byte 0xee
3f401b0d:	401a      	add.n	a4, a0, a1
3f401b0f:	3f          	.byte 0x3f
3f401b10:	000006        	j	3f401b14 <anon.b0ba7e5e3f2c3fce5a4d43122d4ad486.5.llvm.6012552628912787576+0x350>
3f401b13:	1a1800        	sub.s	f1, f8, f0
3f401b16:	013f40        	slli	a3, a15, 28
3f401b19:	000000        	ill
3f401b1c:	1968      	l32i.n	a6, a9, 4
3f401b1e:	8a3f40        	round.s	a3, f15, 4
3f401b21:	000000        	ill
3f401b24:	7f          	.byte 0x7f
3f401b25:	000000        	ill
3f401b28:	000005        	call0	3f401b2c <anon.692f8615d19a0b73c5033698db9ca3c3.52.llvm.12515806932495618290>
	...

3f401b2c <anon.692f8615d19a0b73c5033698db9ca3c3.52.llvm.12515806932495618290>:
3f401b2c:	2f          	.byte 0x2f
3f401b2d:	6f68      	l32i.n	a6, a15, 24
3f401b2f:	656d      	lsi	f6, a5, 20
3f401b31:	2f          	.byte 0x2f
3f401b32:	616d      	lsi	f6, a1, 4
3f401b34:	7a6562        	s32i	a6, a5, 0x1e8
3f401b37:	2f          	.byte 0x2f
3f401b38:	766564        	lsi	f6, a5, 0x1d8
3f401b3b:	6f6c65        	call8	3f471200 <_rodata_end+0x6eaf8>
3f401b3e:	656d70        	extui	a6, a7, 29, 7
3f401b41:	6e          	.byte 0x6e
3f401b42:	722f74        	lsi	f7, a15, 0x1c8
3f401b45:	747375        	call12	3f47627c <_rodata_end+0x73b74>
3f401b48:	2f          	.byte 0x2f
3f401b49:	7478      	l32i.n	a7, a4, 28
3f401b4b:	736e65        	call8	3f475230 <_rodata_end+0x72b28>
3f401b4e:	722f61        	l32r	a6, 3f3de40c <PS_WOE+0x3f39e40c>
3f401b51:	747375        	call12	3f476288 <_rodata_end+0x73b80>
3f401b54:	782d      	lsi	f2, a8, 32
3f401b56:	6e6574        	lsi	f7, a5, 0x1b8
3f401b59:	2d6173        	lsi	f7, a1, 180
3f401b5c:	766564        	lsi	f6, a5, 0x1d8
3f401b5f:	2f          	.byte 0x2f
3f401b60:	697562        	lsi	f6, a5, 0x1a4
3f401b63:	646c      	movi.n	a4, -26
3f401b65:	2f          	.byte 0x2f
3f401b66:	3878      	l32i.n	a7, a8, 12
3f401b68:	365f36        	entry	a15, 0x1b28
3f401b6b:	752d34        	lsi	f3, a13, 0x1d4
3f401b6e:	6e          	.byte 0x6e
3f401b6f:	6e6b      	addi.n	a6, a14, 6
3f401b71:	6f          	.byte 0x6f
3f401b72:	2d6e77        	bbci	a14, 7, 3f401ba3 <anon.692f8615d19a0b73c5033698db9ca3c3.52.llvm.12515806932495618290+0x77>
3f401b75:	696c      	movi.n	a9, -26
3f401b77:	6e          	.byte 0x6e
3f401b78:	2d7875        	call12	3f42f300 <_rodata_end+0x2cbf8>
3f401b7b:	756e67        	bbci	a14, 6, 3f401bf4 <_ZN4core7unicode12unicode_data15grapheme_extend17SHORT_OFFSET_RUNS17h4386e350248f7db4E.llvm.12515806932495618290>
3f401b7e:	2f          	.byte 0x2f
3f401b7f:	617473        	lsi	f7, a4, 0x184
3f401b82:	326567        	bbci	a5, 6, 3f401bb8 <anon.692f8615d19a0b73c5033698db9ca3c3.52.llvm.12515806932495618290+0x8c>
3f401b85:	2f          	.byte 0x2f
3f401b86:	696c      	movi.n	a9, -26
3f401b88:	722f62        	l32i	a6, a15, 0x1c8
3f401b8b:	747375        	call12	3f4762c0 <_rodata_end+0x73bb8>
3f401b8e:	696c      	movi.n	a9, -26
3f401b90:	732f62        	l32i	a6, a15, 0x1cc
3f401b93:	2f6372        	s32i	a7, a3, 188
3f401b96:	737572        	lsi	f7, a5, 0x1cc
3f401b99:	6c2f74        	lsi	f7, a15, 0x1b0
3f401b9c:	6269      	s32i.n	a6, a2, 24
3f401b9e:	726172        	s32i	a7, a1, 0x1c8
3f401ba1:	2f79      	s32i.n	a7, a15, 8
3f401ba3:	726f63        	lsi	f6, a15, 0x1c8
3f401ba6:	732f65        	call8	3f474e9c <_rodata_end+0x72794>
3f401ba9:	2f6372        	s32i	a7, a3, 188
3f401bac:	696e75        	call12	3f46b294 <_rodata_end+0x68b8c>
3f401baf:	646f63        	lsi	f6, a15, 0x190
3f401bb2:	752f65        	call8	3f476ea8 <_rodata_end+0x747a0>
3f401bb5:	6e          	.byte 0x6e
3f401bb6:	6369      	s32i.n	a6, a3, 24
3f401bb8:	6f          	.byte 0x6f
3f401bb9:	5f6564        	lsi	f6, a5, 0x17c
3f401bbc:	746164        	lsi	f6, a1, 0x1d0
3f401bbf:	722e61        	l32r	a6, 3f3de478 <PS_WOE+0x3f39e478>
3f401bc2:	        	lsi	f7, a0, 176

3f401bc4 <anon.692f8615d19a0b73c5033698db9ca3c3.53.llvm.12515806932495618290>:
3f401bc4:	1b2c      	movi.n	a11, 33
3f401bc6:	973f40        	lsi	f4, a15, 0x25c
3f401bc9:	000000        	ill
3f401bcc:	004b      	addi.n	a0, a0, 4
3f401bce:	280000        	lsi	f0, a0, 160
3f401bd1:	000000        	ill

3f401bd4 <anon.692f8615d19a0b73c5033698db9ca3c3.54.llvm.12515806932495618290>:
3f401bd4:	1b2c      	movi.n	a11, 33
3f401bd6:	973f40        	lsi	f4, a15, 0x25c
3f401bd9:	000000        	ill
3f401bdc:	000057        	bnone	a0, a5, 3f401be0 <anon.692f8615d19a0b73c5033698db9ca3c3.54.llvm.12515806932495618290+0xc>
3f401bdf:	001600        	movsp	a0, a6
	...

3f401be4 <anon.692f8615d19a0b73c5033698db9ca3c3.55.llvm.12515806932495618290>:
3f401be4:	1b2c      	movi.n	a11, 33
3f401be6:	973f40        	lsi	f4, a15, 0x25c
3f401be9:	000000        	ill
3f401bec:	000052        	l8ui	a5, a0, 0
3f401bef:	003e00        	lsi	f0, a14, 0
	...

3f401bf4 <_ZN4core7unicode12unicode_data15grapheme_extend17SHORT_OFFSET_RUNS17h4386e350248f7db4E.llvm.12515806932495618290>:
3f401bf4:	000300        	lsi	f0, a3, 0
3f401bf7:	048300        	extui	a8, a0, 3, 1
3f401bfa:	910020        	srl	a0, a2
3f401bfd:	006005        	call0	3f402200 <anon.ec47d847621fe90eed050408668042ae.10.llvm.18290377080079887965+0xa2>
3f401c00:	135d      	lsi	f5, a3, 12
3f401c02:	1200a0        	andbc	b0, b0, b10
3f401c05:	1f2017        	blt	a0, a1, 3f401c28 <_ZN4core7unicode12unicode_data15grapheme_extend17SHORT_OFFSET_RUNS17h4386e350248f7db4E.llvm.12515806932495618290+0x34>
3f401c08:	200c      	movi.n	a0, 2
3f401c0a:	ef1f60        	f64cmph	a1, a15, a6, 14
3f401c0d:	a02c      	movi.n	a0, 42
3f401c0f:	2a2b      	addi.n	a2, a10, 2
3f401c11:	2c2030        	lsi	f3, a0, 176
3f401c14:	6f          	.byte 0x6f
3f401c15:	2ce0a6        	blti	a0, 128, 3f401c45 <_ZN4core7unicode12unicode_data15grapheme_extend17SHORT_OFFSET_RUNS17h4386e350248f7db4E.llvm.12515806932495618290+0x51>
3f401c18:	60a802        	movi	a0, 0xfffff860
3f401c1b:	1e2d      	lsi	f2, a14, 56
3f401c1d:	60fb      	addi.n	a6, a0, 15
3f401c1f:	2e          	.byte 0x2e
3f401c20:	20fe00        	or	a15, a14, a0
3f401c23:	ff9e36        	entry	a14, 0x7fc8
3f401c26:	fd3660        	lsi	f6, a6, 0x3f4
3f401c29:	36e101        	l32r	a0, 3f3cf7b0 <PS_WOE+0x3f38f7b0>
3f401c2c:	210a01        	l32r	a0, 3f3ca054 <PS_WOE+0x3f38a054>
3f401c2f:	0d2437        	blt	a4, a3, 3f401c40 <_ZN4core7unicode12unicode_data15grapheme_extend17SHORT_OFFSET_RUNS17h4386e350248f7db4E.llvm.12515806932495618290+0x4c>
3f401c32:	ab37e1        	l32r	a14, 3f3ec910 <PS_WOE+0x3f3ac910>
3f401c35:	0e          	.byte 0xe
3f401c36:	2f3961        	l32r	a6, 3f3cd91c <PS_WOE+0x3f38d91c>
3f401c39:	a118      	l32i.n	a1, a1, 40
3f401c3b:	3039      	s32i.n	a3, a0, 12
3f401c3d:	e11c      	movi.n	a1, 30
3f401c3f:	1ef347        	bbsi	a3, 20, 3f401c61 <_ZN4core7unicode12unicode_data15grapheme_extend17SHORT_OFFSET_RUNS17h4386e350248f7db4E.llvm.12515806932495618290+0x6d>
3f401c42:	f04c21        	l32r	a2, 3f3fdd74 <PS_WOE+0x3f3bdd74>
3f401c45:	e16a      	add.n	a14, a1, a6
3f401c47:	4f          	.byte 0x4f
3f401c48:	4f          	.byte 0x4f
3f401c49:	6f          	.byte 0x6f
3f401c4a:	9d5021        	l32r	a2, 3f3e918c <PS_WOE+0x3f3a918c>
3f401c4d:	a1bc      	beqz.n	a1, 3f401c8b <_ZN4core7unicode12unicode_data15grapheme_extend7OFFSETS17hc3d1a165f3011cadE.llvm.12515806932495618290+0x17>
3f401c4f:	cf0050        	f64cmph	a0, a0, a5, 12
3f401c52:	655161        	l32r	a6, 3f3db198 <PS_WOE+0x3f39b198>
3f401c55:	51a1d1        	l32r	a13, 3f3d62dc <PS_WOE+0x3f3962dc>
3f401c58:	21da00        	srai	a13, a0, 10
3f401c5b:	e00052        	l8ui	a5, a0, 224
3f401c5e:	3053e1        	l32r	a14, 3f3cddac <PS_WOE+0x3f38ddac>
3f401c61:	5561e1        	l32r	a14, 3f3d71e8 <PS_WOE+0x3f3971e8>
3f401c64:	ae          	.byte 0xae
3f401c65:	56a1e2        	movi	a14, 0x156
3f401c68:	e1e8d0        	lsi	f13, a8, 0x384
3f401c6b:	002056        	bnez	a0, 3f401c71 <_ZN4core7unicode12unicode_data15grapheme_extend17SHORT_OFFSET_RUNS17h4386e350248f7db4E.llvm.12515806932495618290+0x7d>
3f401c6e:	6e          	.byte 0x6e
3f401c6f:	01f057        	bbsi	a0, 21, 3f401c74 <_ZN4core7unicode12unicode_data15grapheme_extend7OFFSETS17hc3d1a165f3011cadE.llvm.12515806932495618290>
3f401c72:	ff          	.byte 0xff
3f401c73:	        	bnone	a0, a5, 3f401ce7 <_ZN4core7unicode12unicode_data15grapheme_extend7OFFSETS17hc3d1a165f3011cadE.llvm.12515806932495618290+0x73>

3f401c74 <_ZN4core7unicode12unicode_data15grapheme_extend7OFFSETS17hc3d1a165f3011cadE.llvm.12515806932495618290>:
3f401c74:	007000        	waiti	0
3f401c77:	2d0007        	bnone	a0, a0, 3f401ca8 <_ZN4core7unicode12unicode_data15grapheme_extend7OFFSETS17hc3d1a165f3011cadE.llvm.12515806932495618290+0x34>
3f401c7a:	010101        	l32r	a0, 3f3c2080 <PS_WOE+0x3f382080>
3f401c7d:	020102        	l8ui	a0, a1, 2
3f401c80:	480101        	l32r	a0, 3f3d3c84 <PS_WOE+0x3f393c84>
3f401c83:	300b      	addi.n	a3, a0, -1
3f401c85:	011015        	call4	3f402d88 <_rodata_end+0x680>
3f401c88:	020765        	call8	3f403d00 <_rodata_end+0x15f8>
3f401c8b:	020206        	j	3f402497 <anon.4f5b05757c841249a260f1e8a0a0b873.1.llvm.14849298323431214658+0x137>
3f401c8e:	230401        	l32r	a0, 3f3ca8a0 <PS_WOE+0x3f38a8a0>
3f401c91:	1b1e01        	l32r	a0, 3f3c890c <PS_WOE+0x3f38890c>
3f401c94:	0b5b      	addi.n	a0, a11, 5
3f401c96:	093a      	add.n	a0, a9, a3
3f401c98:	0109      	s32i.n	a0, a1, 0
3f401c9a:	0418      	l32i.n	a1, a4, 0
3f401c9c:	010901        	l32r	a0, 3f3c20c0 <PS_WOE+0x3f3820c0>
3f401c9f:	050103        	lsi	f0, a1, 20
3f401ca2:	032b      	addi.n	a0, a3, 2
3f401ca4:	083c      	movi.n	a8, 48
3f401ca6:	182a      	add.n	a1, a8, a2
3f401ca8:	372001        	l32r	a0, 3f3cf928 <PS_WOE+0x3f38f928>
3f401cab:	010101        	l32r	a0, 3f3c20b0 <PS_WOE+0x3f3820b0>
3f401cae:	040804        	lsi	f0, a8, 16
3f401cb1:	070301        	l32r	a0, 3f3c38c0 <PS_WOE+0x3f3838c0>
3f401cb4:	020a      	add.n	a0, a2, a0
3f401cb6:	011d      	mov.n	a1, a1
3f401cb8:	013a      	add.n	a0, a1, a3
3f401cba:	020101        	l32r	a0, 3f3c24c0 <PS_WOE+0x3f3824c0>
3f401cbd:	010804        	lsi	f0, a8, 4
3f401cc0:	0109      	s32i.n	a0, a1, 0
3f401cc2:	020a      	add.n	a0, a2, a0
3f401cc4:	011a      	add.n	a0, a1, a1
3f401cc6:	390202        	l8ui	a0, a2, 57
3f401cc9:	020401        	l32r	a0, 3f3c24dc <PS_WOE+0x3f3824dc>
3f401ccc:	020204        	lsi	f0, a2, 8
3f401ccf:	010303        	lsi	f0, a3, 4
3f401cd2:	1e          	.byte 0x1e
3f401cd3:	010302        	l8ui	a0, a3, 1
3f401cd6:	020b      	addi.n	a0, a2, -1
3f401cd8:	0139      	s32i.n	a3, a1, 0
3f401cda:	010504        	lsi	f0, a5, 4
3f401cdd:	010402        	l8ui	a0, a4, 1
3f401ce0:	160214        	lsi	f1, a2, 88
3f401ce3:	010106        	j	3f4020eb <anon.ec47d847621fe90eed050408668042ae.2.llvm.18290377080079887965+0x37>
3f401ce6:	013a      	add.n	a0, a1, a3
3f401ce8:	010201        	l32r	a0, 3f3c20f0 <PS_WOE+0x3f3820f0>
3f401ceb:	010804        	lsi	f0, a8, 4
3f401cee:	0a0307        	bnone	a3, a0, 3f401cfc <_ZN4core7unicode12unicode_data15grapheme_extend7OFFSETS17hc3d1a165f3011cadE.llvm.12515806932495618290+0x88>
3f401cf1:	011e02        	l16ui	a0, a14, 2
3f401cf4:	013b      	addi.n	a0, a1, 3
3f401cf6:	0c0101        	l32r	a0, 3f3c4cfc <PS_WOE+0x3f384cfc>
3f401cf9:	010901        	l32r	a0, 3f3c2120 <PS_WOE+0x3f382120>
3f401cfc:	0128      	l32i.n	a2, a1, 0
3f401cfe:	370103        	lsi	f0, a1, 220
3f401d01:	030101        	l32r	a0, 3f3c2908 <PS_WOE+0x3f382908>
3f401d04:	010305        	call0	3f402d38 <_rodata_end+0x630>
3f401d07:	020704        	lsi	f0, a7, 8
3f401d0a:	020b      	addi.n	a0, a2, -1
3f401d0c:	011d      	mov.n	a1, a1
3f401d0e:	013a      	add.n	a0, a1, a3
3f401d10:	020102        	l8ui	a0, a1, 2
3f401d13:	010301        	l32r	a0, 3f3c2120 <PS_WOE+0x3f382120>
3f401d16:	070205        	call0	3f408d38 <_rodata_end+0x6630>
3f401d19:	020b02        	l8ui	a0, a11, 2
3f401d1c:	021c      	movi.n	a2, 16
3f401d1e:	0239      	s32i.n	a3, a2, 0
3f401d20:	020101        	l32r	a0, 3f3c2524 <PS_WOE+0x3f382524>
3f401d23:	010804        	lsi	f0, a8, 4
3f401d26:	0109      	s32i.n	a0, a1, 0
3f401d28:	020a      	add.n	a0, a2, a0
3f401d2a:	011d      	mov.n	a1, a1
3f401d2c:	0148      	l32i.n	a4, a1, 0
3f401d2e:	020104        	lsi	f0, a1, 8
3f401d31:	010103        	lsi	f0, a1, 4
3f401d34:	0108      	l32i.n	a0, a1, 0
3f401d36:	020151        	l32r	a5, 3f3c253c <PS_WOE+0x3f38253c>
3f401d39:	080c07        	bnone	a12, a0, 3f401d45 <_ZN4core7unicode12unicode_data15grapheme_extend7OFFSETS17hc3d1a165f3011cadE.llvm.12515806932495618290+0xd1>
3f401d3c:	020162        	l8ui	a6, a1, 2
3f401d3f:	0b09      	s32i.n	a0, a11, 0
3f401d41:	024a06        	j	3f40266d <anon.4f5b05757c841249a260f1e8a0a0b873.1.llvm.14849298323431214658+0x30d>
3f401d44:	011b      	addi.n	a0, a1, 1
3f401d46:	010101        	l32r	a0, 3f3c214c <PS_WOE+0x3f38214c>
3f401d49:	0e3701        	l32r	a0, 3f3c5628 <PS_WOE+0x3f385628>
3f401d4c:	010501        	l32r	a0, 3f3c2160 <PS_WOE+0x3f382160>
3f401d4f:	0b0502        	l8ui	a0, a5, 11
3f401d52:	092401        	l32r	a0, 3f3c41e4 <PS_WOE+0x3f3841e4>
3f401d55:	046601        	l32r	a0, 3f3c2ef0 <PS_WOE+0x3f382ef0>
3f401d58:	010601        	l32r	a0, 3f3c2170 <PS_WOE+0x3f382170>
3f401d5b:	020202        	l8ui	a0, a2, 2
3f401d5e:	0219      	s32i.n	a1, a2, 0
3f401d60:	100304        	lsi	f0, a3, 64
3f401d63:	010d04        	lsi	f0, a13, 4
3f401d66:	060202        	l8ui	a0, a2, 6
3f401d69:	010f01        	l32r	a0, 3f3c21a8 <PS_WOE+0x3f3821a8>
3f401d6c:	000300        	lsi	f0, a3, 0
3f401d6f:	021d03        	lsi	f0, a13, 8
3f401d72:	1e          	.byte 0x1e
3f401d73:	021e02        	l16ui	a0, a14, 4
3f401d76:	010240        	slli	a0, a2, 28
3f401d79:	010807        	bnone	a8, a0, 3f401d7e <_ZN4core7unicode12unicode_data15grapheme_extend7OFFSETS17hc3d1a165f3011cadE.llvm.12515806932495618290+0x10a>
3f401d7c:	090b02        	l8ui	a0, a11, 9
3f401d7f:	032d01        	l32r	a0, 3f3c2a34 <PS_WOE+0x3f382a34>
3f401d82:	750101        	l32r	a0, 3f3df188 <PS_WOE+0x3f39f188>
3f401d85:	012202        	l32i	a0, a2, 4
3f401d88:	040376        	bf	b3, 3f401d90 <_ZN4core7unicode12unicode_data15grapheme_extend7OFFSETS17hc3d1a165f3011cadE.llvm.12515806932495618290+0x11c>
3f401d8b:	010902        	l8ui	a0, a9, 1
3f401d8e:	db0306        	j	3f3f899e <PS_WOE+0x3f3b899e>
3f401d91:	010202        	l8ui	a0, a2, 1
3f401d94:	013a      	add.n	a0, a1, a3
3f401d96:	010701        	l32r	a0, 3f3c21b4 <PS_WOE+0x3f3821b4>
3f401d99:	010101        	l32r	a0, 3f3c21a0 <PS_WOE+0x3f3821a0>
3f401d9c:	060802        	l8ui	a0, a8, 6
3f401d9f:	020a      	add.n	a0, a2, a0
3f401da1:	1f3001        	l32r	a0, 3f3c9a64 <PS_WOE+0x3f389a64>
3f401da4:	300431        	l32r	a3, 3f3cddb4 <PS_WOE+0x3f38ddb4>
3f401da7:	010107        	bnone	a1, a0, 3f401dac <_ZN4core7unicode12unicode_data15grapheme_extend7OFFSETS17hc3d1a165f3011cadE.llvm.12515806932495618290+0x138>
3f401daa:	280105        	call0	3f429dbc <_rodata_end+0x276b4>
3f401dad:	0c09      	s32i.n	a0, a12, 0
3f401daf:	042002        	l32i	a0, a0, 16
3f401db2:	010202        	l8ui	a0, a2, 1
3f401db5:	013803        	lsi	f0, a8, 4
3f401db8:	030201        	l32r	a0, 3f3c29c0 <PS_WOE+0x3f3829c0>
3f401dbb:	030101        	l32r	a0, 3f3c29c0 <PS_WOE+0x3f3829c0>
3f401dbe:	083a      	add.n	a0, a8, a3
3f401dc0:	980202        	l8ui	a0, a2, 152
3f401dc3:	0d0103        	lsi	f0, a1, 52
3f401dc6:	040701        	l32r	a0, 3f3c2de4 <PS_WOE+0x3f382de4>
3f401dc9:	010601        	l32r	a0, 3f3c21e4 <PS_WOE+0x3f3821e4>
3f401dcc:	c60203        	lsi	f0, a2, 0x318
3f401dcf:	010040        	slli	a0, a0, 28
3f401dd2:	0021c3        	lsi	f12, a1, 0
3f401dd5:	018d03        	lsip	f0, a13, 4
3f401dd8:	002060        	lsi	f6, a0, 0
3f401ddb:	026906        	j	3f402783 <_rodata_end+0x7b>
3f401dde:	010400        	slli	a0, a4, 32
3f401de1:	200a      	add.n	a2, a0, a0
3f401de3:	025002        	s16i	a0, a0, 4
3f401de6:	030100        	rsr.lend	a0
3f401de9:	010401        	l32r	a0, 3f3c21fc <PS_WOE+0x3f3821fc>
3f401dec:	0219      	s32i.n	a1, a2, 0
3f401dee:	970105        	call0	3f398e00 <PS_WOE+0x3f358e00>
3f401df1:	121a02        	l16ui	a0, a10, 36
3f401df4:	010d      	mov.n	a0, a1
3f401df6:	190826        	beqi	a8, -1, 3f401e13 <_ZN4core7unicode12unicode_data15grapheme_extend7OFFSETS17hc3d1a165f3011cadE.llvm.12515806932495618290+0x19f>
3f401df9:	2e0b      	addi.n	a2, a14, -1
3f401dfb:	013003        	lsi	f0, a0, 4
3f401dfe:	020402        	l8ui	a0, a4, 2
3f401e01:	012702        	l32i	a0, a7, 4
3f401e04:	020643        	lsi	f4, a6, 8
3f401e07:	020202        	l8ui	a0, a2, 2
3f401e0a:	010c      	movi.n	a1, 0
3f401e0c:	0108      	l32i.n	a0, a1, 0
3f401e0e:	2f          	.byte 0x2f
3f401e0f:	013301        	l32r	a0, 3f3c22dc <PS_WOE+0x3f3822dc>
3f401e12:	020301        	l32r	a0, 3f3c2620 <PS_WOE+0x3f382620>
3f401e15:	020502        	l8ui	a0, a5, 2
3f401e18:	2a0101        	l32r	a0, 3f3cc61c <PS_WOE+0x3f38c61c>
3f401e1b:	010802        	l8ui	a0, a8, 1
3f401e1e:	ee          	.byte 0xee
3f401e1f:	010201        	l32r	a0, 3f3c2228 <PS_WOE+0x3f382228>
3f401e22:	000104        	lsi	f0, a1, 0
3f401e25:	100001        	l32r	a0, 3f3c5e28 <PS_WOE+0x3f385e28>
3f401e28:	001010        	movsp	a1, a0
3f401e2b:	010002        	l8ui	a0, a0, 1
3f401e2e:	9501e2        	l8ui	a14, a1, 149
3f401e31:	030005        	call0	3f404e34 <_rodata_end+0x272c>
3f401e34:	050201        	l32r	a0, 3f3c323c <PS_WOE+0x3f38323c>
3f401e37:	032804        	lsi	f0, a8, 12
3f401e3a:	a50104        	lsi	f0, a1, 0x294
3f401e3d:	040002        	l8ui	a0, a0, 4
3f401e40:	990200        	lsi	f0, a2, 0x264
3f401e43:	310b      	addi.n	a3, a1, -1
3f401e45:	017b04        	lsi	f0, a11, 4
3f401e48:	290f36        	entry	a15, 0x1480
3f401e4b:	020201        	l32r	a0, 3f3c2654 <PS_WOE+0x3f382654>
3f401e4e:	030a      	add.n	a0, a3, a0
3f401e50:	020431        	l32r	a3, 3f3c2660 <PS_WOE+0x3f382660>
3f401e53:	010702        	l8ui	a0, a7, 1
3f401e56:	033d      	mov.n	a3, a3
3f401e58:	010524        	lsi	f2, a5, 4
3f401e5b:	3e08      	l32i.n	a0, a14, 12
3f401e5d:	020c01        	l32r	a0, 3f3c2690 <PS_WOE+0x3f382690>
3f401e60:	0a0934        	lsi	f3, a9, 40
3f401e63:	010204        	lsi	f0, a2, 4
3f401e66:	5f          	.byte 0x5f
3f401e67:	010203        	lsi	f0, a2, 4
3f401e6a:	060201        	l32r	a0, 3f3c3674 <PS_WOE+0x3f383674>
3f401e6d:	01a001        	l32r	a0, 3f3c24f0 <PS_WOE+0x3f3824f0>
3f401e70:	150803        	lsi	f0, a8, 84
3f401e73:	023902        	lsi	f0, a9, 8
3f401e76:	010101        	l32r	a0, 3f3c227c <PS_WOE+0x3f38227c>
3f401e79:	011601        	l32r	a0, 3f3c22d4 <PS_WOE+0x3f3822d4>
3f401e7c:	0e          	.byte 0xe
3f401e7d:	050307        	bnone	a3, a0, 3f401e86 <_ZN4core7unicode12unicode_data15grapheme_extend7OFFSETS17hc3d1a165f3011cadE.llvm.12515806932495618290+0x212>
3f401e80:	0208c3        	lsi	f12, a8, 8
3f401e83:	010103        	lsi	f0, a1, 4
3f401e86:	510117        	bnone	a1, a1, 3f401edb <_ZN4core7unicode12unicode_data15grapheme_extend7OFFSETS17hc3d1a165f3011cadE.llvm.12515806932495618290+0x267>
3f401e89:	060201        	l32r	a0, 3f3c3694 <PS_WOE+0x3f383694>
3f401e8c:	020101        	l32r	a0, 3f3c2690 <PS_WOE+0x3f382690>
3f401e8f:	020101        	l32r	a0, 3f3c2694 <PS_WOE+0x3f382694>
3f401e92:	eb0201        	l32r	a0, 3f3fca9c <PS_WOE+0x3f3bca9c>
3f401e95:	040201        	l32r	a0, 3f3c2ea0 <PS_WOE+0x3f382ea0>
3f401e98:	010206        	j	3f4022a4 <anon.ec47d847621fe90eed050408668042ae.10.llvm.18290377080079887965+0x146>
3f401e9b:	021b02        	l16ui	a0, a11, 4
3f401e9e:	020855        	call4	3f403f24 <_rodata_end+0x181c>
3f401ea1:	020101        	l32r	a0, 3f3c26a8 <PS_WOE+0x3f3826a8>
3f401ea4:	016a      	add.n	a0, a1, a6
3f401ea6:	020101        	l32r	a0, 3f3c26ac <PS_WOE+0x3f3826ac>
3f401ea9:	010106        	j	3f4022b1 <anon.ec47d847621fe90eed050408668042ae.10.llvm.18290377080079887965+0x153>
3f401eac:	020365        	call8	3f403ee4 <_rodata_end+0x17dc>
3f401eaf:	050104        	lsi	f0, a1, 20
3f401eb2:	010900        	slli	a0, a9, 32
3f401eb5:	01f502        	s32ri	a0, a5, 4
3f401eb8:	020a      	add.n	a0, a2, a0
3f401eba:	040101        	l32r	a0, 3f3c2ec0 <PS_WOE+0x3f382ec0>
3f401ebd:	049001        	l32r	a0, 3f3c3100 <PS_WOE+0x3f383100>
3f401ec0:	040202        	l8ui	a0, a2, 4
3f401ec3:	0a2001        	l32r	a0, 3f3c4744 <PS_WOE+0x3f384744>
3f401ec6:	0628      	l32i.n	a2, a6, 0
3f401ec8:	080402        	l8ui	a0, a4, 8
3f401ecb:	060901        	l32r	a0, 3f3c36f0 <PS_WOE+0x3f3836f0>
3f401ece:	2e0302        	l8ui	a0, a3, 46
3f401ed1:	010d      	mov.n	a0, a1
3f401ed3:	070002        	l8ui	a0, a0, 7
3f401ed6:	010601        	l32r	a0, 3f3c22f0 <PS_WOE+0x3f3822f0>
3f401ed9:	165201        	l32r	a0, 3f3c7824 <PS_WOE+0x3f387824>
3f401edc:	010702        	l8ui	a0, a7, 1
3f401edf:	020102        	l8ui	a0, a1, 2
3f401ee2:	067a      	add.n	a0, a6, a7
3f401ee4:	010103        	lsi	f0, a1, 4
3f401ee7:	070102        	l8ui	a0, a1, 7
3f401eea:	480101        	l32r	a0, 3f3d3ef0 <PS_WOE+0x3f393ef0>
3f401eed:	010302        	l8ui	a0, a3, 1
3f401ef0:	000101        	l32r	a0, 3f3c1ef4 <PS_WOE+0x3f381ef4>
3f401ef3:	050002        	l8ui	a0, a0, 5
3f401ef6:	073b      	addi.n	a0, a7, 3
3f401ef8:	3f0100        	f64cmph	a0, a1, a0, 3
3f401efb:	015104        	lsi	f0, a1, 4
3f401efe:	000200        	lsi	f0, a2, 0
3f401f01:	2e          	.byte 0x2e
3f401f02:	001702        	l16ui	a0, a7, 0
3f401f05:	030101        	l32r	a0, 3f3c2b0c <PS_WOE+0x3f382b0c>
3f401f08:	080504        	mula.dd.ll.ldinc	m0, a5, m0, m2
3f401f0b:	0208      	l32i.n	a0, a2, 0
3f401f0d:	041e07        	beq	a14, a0, 3f401f15 <_ZN4core7unicode12unicode_data15grapheme_extend7OFFSETS17hc3d1a165f3011cadE.llvm.12515806932495618290+0x2a1>
3f401f10:	000394        	lsi	f9, a3, 0
3f401f13:	320437        	bnone	a4, a3, 3f401f49 <_ZN4core7unicode12unicode_data15grapheme_extend7OFFSETS17hc3d1a165f3011cadE.llvm.12515806932495618290+0x2d5>
3f401f16:	0108      	l32i.n	a0, a1, 0
3f401f18:	0e          	.byte 0xe
3f401f19:	051601        	l32r	a0, 3f3c3374 <PS_WOE+0x3f383374>
3f401f1c:	000f01        	l32r	a0, 3f3c1f58 <PS_WOE+0x3f381f58>
3f401f1f:	110107        	bnone	a1, a0, 3f401f34 <_ZN4core7unicode12unicode_data15grapheme_extend7OFFSETS17hc3d1a165f3011cadE.llvm.12515806932495618290+0x2c0>
3f401f22:	010702        	l8ui	a0, a7, 1
3f401f25:	050102        	l8ui	a0, a1, 5
3f401f28:	000700        	lsi	f0, a7, 0
3f401f2b:	043d01        	l32r	a0, 3f3c3020 <PS_WOE+0x3f383020>
3f401f2e:	6d0700        	lsi	f0, a7, 0x1b4
3f401f31:	600007        	bnone	a0, a0, 3f401f95 <_ZN4core7unicode12unicode_data15grapheme_extend7OFFSETS17hc3d1a165f3011cadE.llvm.12515806932495618290+0x321>
3f401f34:	00f080        	lsi	f8, a0, 0
3f401f37:	3f0800        	f64cmph	a0, a8, a0, 3
3f401f3a:	400d      	lsi	f0, a0, 0
3f401f3c:	3eda      	add.n	a3, a14, a13
3f401f3e:	400d      	lsi	f0, a0, 0
3f401f40:	3eda      	add.n	a3, a14, a13
3f401f42:	400d      	lsi	f0, a0, 0
3f401f44:	3eda      	add.n	a3, a14, a13
3f401f46:	400d      	lsi	f0, a0, 0
3f401f48:	3eda      	add.n	a3, a14, a13
3f401f4a:	400d      	lsi	f0, a0, 0
3f401f4c:	3eda      	add.n	a3, a14, a13
3f401f4e:	400d      	lsi	f0, a0, 0
3f401f50:	3eda      	add.n	a3, a14, a13
3f401f52:	400d      	lsi	f0, a0, 0
3f401f54:	3eda      	add.n	a3, a14, a13
3f401f56:	400d      	lsi	f0, a0, 0
3f401f58:	3eda      	add.n	a3, a14, a13
3f401f5a:	400d      	lsi	f0, a0, 0
3f401f5c:	0d3ec5        	call0	3f40f34c <_rodata_end+0xcc44>
3f401f5f:	3efd40        	f64norm	a15, a13, a4, 1
3f401f62:	400d      	lsi	f0, a0, 0
3f401f64:	3eda      	add.n	a3, a14, a13
3f401f66:	400d      	lsi	f0, a0, 0
3f401f68:	3eda      	add.n	a3, a14, a13
3f401f6a:	400d      	lsi	f0, a0, 0
3f401f6c:	0d3f03        	lsi	f0, a15, 52
3f401f6f:	3eda40        	f64norm	a13, a10, a4, 1
3f401f72:	400d      	lsi	f0, a0, 0
3f401f74:	3eda      	add.n	a3, a14, a13
3f401f76:	400d      	lsi	f0, a0, 0
3f401f78:	3eda      	add.n	a3, a14, a13
3f401f7a:	400d      	lsi	f0, a0, 0
3f401f7c:	3eda      	add.n	a3, a14, a13
3f401f7e:	400d      	lsi	f0, a0, 0
3f401f80:	3eda      	add.n	a3, a14, a13
3f401f82:	400d      	lsi	f0, a0, 0
3f401f84:	3eda      	add.n	a3, a14, a13
3f401f86:	400d      	lsi	f0, a0, 0
3f401f88:	3eda      	add.n	a3, a14, a13
3f401f8a:	400d      	lsi	f0, a0, 0
3f401f8c:	3eda      	add.n	a3, a14, a13
3f401f8e:	400d      	lsi	f0, a0, 0
3f401f90:	3eda      	add.n	a3, a14, a13
3f401f92:	400d      	lsi	f0, a0, 0
3f401f94:	3eda      	add.n	a3, a14, a13
3f401f96:	400d      	lsi	f0, a0, 0
3f401f98:	3eda      	add.n	a3, a14, a13
3f401f9a:	400d      	lsi	f0, a0, 0
3f401f9c:	3eda      	add.n	a3, a14, a13
3f401f9e:	400d      	lsi	f0, a0, 0
3f401fa0:	3eda      	add.n	a3, a14, a13
3f401fa2:	400d      	lsi	f0, a0, 0
3f401fa4:	3eda      	add.n	a3, a14, a13
3f401fa6:	400d      	lsi	f0, a0, 0
3f401fa8:	3eda      	add.n	a3, a14, a13
3f401faa:	400d      	lsi	f0, a0, 0
3f401fac:	3eda      	add.n	a3, a14, a13
3f401fae:	400d      	lsi	f0, a0, 0
3f401fb0:	3eda      	add.n	a3, a14, a13
3f401fb2:	400d      	lsi	f0, a0, 0
3f401fb4:	3eda      	add.n	a3, a14, a13
3f401fb6:	400d      	lsi	f0, a0, 0
3f401fb8:	3eda      	add.n	a3, a14, a13
3f401fba:	400d      	lsi	f0, a0, 0
3f401fbc:	3eda      	add.n	a3, a14, a13
3f401fbe:	400d      	lsi	f0, a0, 0
3f401fc0:	0d3ed0        	lsi	f13, a14, 52
3f401fc3:	401640        	lsi	f4, a6, 0x100
3f401fc6:	400d      	lsi	f0, a0, 0
3f401fc8:	0d3f62        	lsi	f6, a15, 52
3f401fcb:	3f6640        	f64cmph	a6, a6, a4, 3
3f401fce:	400d      	lsi	f0, a0, 0
3f401fd0:	7f          	.byte 0x7f
3f401fd1:	3f          	.byte 0x3f
3f401fd2:	400d      	lsi	f0, a0, 0
3f401fd4:	0d4016        	beqz	a0, 3f4020ac <_ZN4core7unicode12unicode_data15grapheme_extend7OFFSETS17hc3d1a165f3011cadE.llvm.12515806932495618290+0x438>
3f401fd7:	3f8f40        	f64cmph	a8, a15, a4, 3
3f401fda:	400d      	lsi	f0, a0, 0
3f401fdc:	ae          	.byte 0xae
3f401fdd:	3f          	.byte 0x3f
3f401fde:	400d      	lsi	f0, a0, 0
3f401fe0:	3fda      	add.n	a3, a15, a13
3f401fe2:	400d      	lsi	f0, a0, 0
3f401fe4:	3f9d      	lsi	f9, a15, 60
3f401fe6:	400d      	lsi	f0, a0, 0
3f401fe8:	3fed      	lsi	f14, a15, 60
3f401fea:	400d      	lsi	f0, a0, 0
3f401fec:	0d42f7        	ball	a2, a15, 3f401ffd <_ZN4core7unicode12unicode_data15grapheme_extend7OFFSETS17hc3d1a165f3011cadE.llvm.12515806932495618290+0x389>
3f401fef:	41c440        	srli	a12, a4, 4
3f401ff2:	400d      	lsi	f0, a0, 0
3f401ff4:	0d41c4        	lsi	f12, a1, 52
3f401ff7:	41c440        	srli	a12, a4, 4
3f401ffa:	400d      	lsi	f0, a0, 0
3f401ffc:	0d41c4        	lsi	f12, a1, 52
3f401fff:	41c440        	srli	a12, a4, 4
3f402002:	400d      	lsi	f0, a0, 0
3f402004:	0d41c4        	lsi	f12, a1, 52
3f402007:	41c440        	srli	a12, a4, 4
3f40200a:	400d      	lsi	f0, a0, 0
3f40200c:	0d41c4        	lsi	f12, a1, 52
3f40200f:	419c40        	srli	a9, a4, 12
3f402012:	400d      	lsi	f0, a0, 0
3f402014:	0d4246        	j	3f405521 <_rodata_end+0x2e19>
3f402017:	41c440        	srli	a12, a4, 4
3f40201a:	400d      	lsi	f0, a0, 0
3f40201c:	0d41c4        	lsi	f12, a1, 52
3f40201f:	425940        	xorb	b5, b9, b4
3f402022:	400d      	lsi	f0, a0, 0
3f402024:	0d41c4        	lsi	f12, a1, 52
3f402027:	41c440        	srli	a12, a4, 4
3f40202a:	400d      	lsi	f0, a0, 0
3f40202c:	0d41c4        	lsi	f12, a1, 52
3f40202f:	41c440        	srli	a12, a4, 4
3f402032:	400d      	lsi	f0, a0, 0
3f402034:	0d41c4        	lsi	f12, a1, 52
3f402037:	41c440        	srli	a12, a4, 4
3f40203a:	400d      	lsi	f0, a0, 0
3f40203c:	0d41c4        	lsi	f12, a1, 52
3f40203f:	41c440        	srli	a12, a4, 4
3f402042:	400d      	lsi	f0, a0, 0
3f402044:	0d41c4        	lsi	f12, a1, 52
3f402047:	41c440        	srli	a12, a4, 4
3f40204a:	400d      	lsi	f0, a0, 0
3f40204c:	0d41c4        	lsi	f12, a1, 52
3f40204f:	41c440        	srli	a12, a4, 4
3f402052:	400d      	lsi	f0, a0, 0
3f402054:	0d41c4        	lsi	f12, a1, 52
3f402057:	41c440        	srli	a12, a4, 4
3f40205a:	400d      	lsi	f0, a0, 0
3f40205c:	0d41c4        	lsi	f12, a1, 52
3f40205f:	41c440        	srli	a12, a4, 4
3f402062:	400d      	lsi	f0, a0, 0
3f402064:	0d41c4        	lsi	f12, a1, 52
3f402067:	41c440        	srli	a12, a4, 4
3f40206a:	400d      	lsi	f0, a0, 0
3f40206c:	0d41c4        	lsi	f12, a1, 52
3f40206f:	41c440        	srli	a12, a4, 4
3f402072:	400d      	lsi	f0, a0, 0
3f402074:	0d41c4        	lsi	f12, a1, 52
3f402077:	41c440        	srli	a12, a4, 4
3f40207a:	400d      	lsi	f0, a0, 0
3f40207c:	0d41c4        	lsi	f12, a1, 52
3f40207f:	41c440        	srli	a12, a4, 4
3f402082:	400d      	lsi	f0, a0, 0
3f402084:	0d41c4        	lsi	f12, a1, 52
3f402087:	426c40        	xorb	b6, b12, b4
3f40208a:	400d      	lsi	f0, a0, 0
3f40208c:	43bb      	addi.n	a4, a3, 11
3f40208e:	400d      	lsi	f0, a0, 0
3f402090:	0d4305        	call0	3f40f4c4 <_rodata_end+0xcdbc>
3f402093:	431f40        	min	a1, a15, a4
3f402096:	400d      	lsi	f0, a0, 0
3f402098:	0d4324        	lsi	f2, a3, 52
3f40209b:	43bb40        	min	a11, a11, a4
3f40209e:	400d      	lsi	f0, a0, 0
3f4020a0:	0d4335        	call12	3f40f4d4 <_rodata_end+0xcdcc>
3f4020a3:	434340        	min	a4, a3, a4
3f4020a6:	400d      	lsi	f0, a0, 0
3f4020a8:	0d4371        	l32r	a7, 3f3c55b4 <PS_WOE+0x3f3855b4>
3f4020ab:	438440        	min	a8, a4, a4
3f4020ae:	400d      	lsi	f0, a0, 0
3f4020b0:	0d4395        	call4	3f40f4ec <_rodata_end+0xcde4>
3f4020b3:	        	max	a7, a12, a4

3f4020b4 <anon.ec47d847621fe90eed050408668042ae.2.llvm.18290377080079887965>:
3f4020b4:	537c      	movi.n	a3, -11
3f4020b6:	400d      	lsi	f0, a0, 0
3f4020b8:	000c      	movi.n	a0, 0
3f4020ba:	040000        	extui	a0, a0, 0, 1
3f4020bd:	000000        	ill
3f4020c0:	1f08      	l32i.n	a0, a15, 4
3f4020c2:	400d      	lsi	f0, a0, 0
3f4020c4:	232c      	movi.n	a3, 34
3f4020c6:	400d      	lsi	f0, a0, 0
3f4020c8:	23dc      	bnez.n	a3, 3f4020de <anon.ec47d847621fe90eed050408668042ae.2.llvm.18290377080079887965+0x2a>
3f4020ca:	400d      	lsi	f0, a0, 0
3f4020cc:	2f          	.byte 0x2f
3f4020cd:	6f68      	l32i.n	a6, a15, 24
3f4020cf:	656d      	lsi	f6, a5, 20
3f4020d1:	2f          	.byte 0x2f
3f4020d2:	616d      	lsi	f6, a1, 4
3f4020d4:	7a6562        	s32i	a6, a5, 0x1e8
3f4020d7:	2f          	.byte 0x2f
3f4020d8:	766564        	lsi	f6, a5, 0x1d8
3f4020db:	6f6c65        	call8	3f4717a0 <_rodata_end+0x6f098>
3f4020de:	656d70        	extui	a6, a7, 29, 7
3f4020e1:	6e          	.byte 0x6e
3f4020e2:	722f74        	lsi	f7, a15, 0x1c8
3f4020e5:	747375        	call12	3f47681c <_rodata_end+0x74114>
3f4020e8:	2f          	.byte 0x2f
3f4020e9:	7478      	l32i.n	a7, a4, 28
3f4020eb:	736e65        	call8	3f4757d0 <_rodata_end+0x730c8>
3f4020ee:	722f61        	l32r	a6, 3f3de9ac <PS_WOE+0x3f39e9ac>
3f4020f1:	747375        	call12	3f476828 <_rodata_end+0x74120>
3f4020f4:	782d      	lsi	f2, a8, 32
3f4020f6:	6e6574        	lsi	f7, a5, 0x1b8
3f4020f9:	2d6173        	lsi	f7, a1, 180
3f4020fc:	766564        	lsi	f6, a5, 0x1d8
3f4020ff:	2f          	.byte 0x2f
3f402100:	697562        	lsi	f6, a5, 0x1a4
3f402103:	646c      	movi.n	a4, -26
3f402105:	2f          	.byte 0x2f
3f402106:	3878      	l32i.n	a7, a8, 12
3f402108:	365f36        	entry	a15, 0x1b28
3f40210b:	752d34        	lsi	f3, a13, 0x1d4
3f40210e:	6e          	.byte 0x6e
3f40210f:	6e6b      	addi.n	a6, a14, 6
3f402111:	6f          	.byte 0x6f
3f402112:	2d6e77        	bbci	a14, 7, 3f402143 <anon.ec47d847621fe90eed050408668042ae.2.llvm.18290377080079887965+0x8f>
3f402115:	696c      	movi.n	a9, -26
3f402117:	6e          	.byte 0x6e
3f402118:	2d7875        	call12	3f42f8a0 <_rodata_end+0x2d198>
3f40211b:	756e67        	bbci	a14, 6, 3f402194 <anon.ec47d847621fe90eed050408668042ae.10.llvm.18290377080079887965+0x36>
3f40211e:	2f          	.byte 0x2f
3f40211f:	617473        	lsi	f7, a4, 0x184
3f402122:	326567        	bbci	a5, 6, 3f402158 <anon.ec47d847621fe90eed050408668042ae.9.llvm.18290377080079887965+0x2>
3f402125:	2f          	.byte 0x2f
3f402126:	696c      	movi.n	a9, -26
3f402128:	722f62        	l32i	a6, a15, 0x1c8
3f40212b:	747375        	call12	3f476860 <_rodata_end+0x74158>
3f40212e:	696c      	movi.n	a9, -26
3f402130:	732f62        	l32i	a6, a15, 0x1cc
3f402133:	2f6372        	s32i	a7, a3, 188
3f402136:	737572        	lsi	f7, a5, 0x1cc
3f402139:	6c2f74        	lsi	f7, a15, 0x1b0
3f40213c:	6269      	s32i.n	a6, a2, 24
3f40213e:	726172        	s32i	a7, a1, 0x1c8
3f402141:	2f79      	s32i.n	a7, a15, 8
3f402143:	726f63        	lsi	f6, a15, 0x1c8
3f402146:	732f65        	call8	3f47543c <_rodata_end+0x72d34>
3f402149:	2f6372        	s32i	a7, a3, 188
3f40214c:	746d66        	bnei	a13, 6, 3f4021c4 <anon.ec47d847621fe90eed050408668042ae.10.llvm.18290377080079887965+0x66>
3f40214f:	2f          	.byte 0x2f
3f402150:	6f6d      	lsi	f6, a15, 60
3f402152:	722e64        	lsi	f6, a14, 0x1c8
3f402155:	        	lsi	f7, a4, 0x1c8

3f402156 <anon.ec47d847621fe90eed050408668042ae.9.llvm.18290377080079887965>:
3f402156:	757274        	lsi	f7, a2, 0x1d4
3f402159:	654c65        	call8	3f467620 <_rodata_end+0x64f18>
3f40215c:	        	bnei	a4, 7, 3f4021c6 <anon.ec47d847621fe90eed050408668042ae.10.llvm.18290377080079887965+0x68>

3f40215e <anon.ec47d847621fe90eed050408668042ae.10.llvm.18290377080079887965>:
3f40215e:	6c6166        	bnei	a1, 6, 3f4021ce <anon.ec47d847621fe90eed050408668042ae.10.llvm.18290377080079887965+0x70>
3f402161:	006573        	lsi	f7, a5, 0
3f402164:	20cc      	bnez.n	a0, 3f40216a <anon.ec47d847621fe90eed050408668042ae.10.llvm.18290377080079887965+0xc>
3f402166:	8a3f40        	round.s	a3, f15, 4
3f402169:	000000        	ill
3f40216c:	088d      	mov.n	a8, a8
3f40216e:	1e0000        	f64sexp	a0, a0, a0
3f402171:	000000        	ill
3f402174:	20cc      	bnez.n	a0, 3f40217a <anon.ec47d847621fe90eed050408668042ae.10.llvm.18290377080079887965+0x1c>
3f402176:	8a3f40        	round.s	a3, f15, 4
3f402179:	000000        	ill
3f40217c:	000894        	lsi	f9, a8, 0
3f40217f:	001600        	movsp	a0, a6
3f402182:	450000        	extui	a0, a0, 16, 5
3f402185:	6f7272        	lsi	f7, a2, 0x1bc
3f402188:	000072        	l8ui	a7, a0, 0
3f40218b:	0a2000        	add.s	f2, f0, f0
3f40218e:	8c0000        	lsi	f0, a0, 0x230
3f402191:	3f4021        	l32r	a2, 3f3d1e94 <PS_WOE+0x3f391e94>
3f402194:	000002        	l8ui	a0, a0, 0
3f402197:	212100        	srai	a2, a0, 1
3f40219a:	204120        	or	a4, a1, a2
3f40219d:	6e6170        	f64rnd	a6, a1, a7, 2
3f4021a0:	6369      	s32i.n	a6, a3, 24
3f4021a2:	636f20        	minu	a6, a15, a2
3f4021a5:	727563        	lsi	f6, a5, 0x1c8
3f4021a8:	206465        	call8	3f4227f0 <_rodata_end+0x200e8>
3f4021ab:	207461        	l32r	a6, 3f3ca37c <PS_WOE+0x3f38a37c>
3f4021ae:	206e61        	l32r	a6, 3f3ca368 <PS_WOE+0x3f38a368>
3f4021b1:	6b6e75        	call12	3f46d898 <_rodata_end+0x6b190>
3f4021b4:	6e          	.byte 0x6e
3f4021b5:	6f          	.byte 0x6f
3f4021b6:	206e77        	bbci	a14, 7, 3f4021da <anon.ec47d847621fe90eed050408668042ae.10.llvm.18290377080079887965+0x7c>
3f4021b9:	6f6c      	movi.n	a15, -26
3f4021bb:	746163        	lsi	f6, a1, 0x1d0
3f4021be:	6f69      	s32i.n	a6, a15, 24
3f4021c0:	6e          	.byte 0x6e
3f4021c1:	000a      	add.n	a0, a0, a0
3f4021c3:	219800        	srai	a9, a0, 8
3f4021c6:	2a3f40        	mul.s	f3, f15, f4
3f4021c9:	000000        	ill
3f4021cc:	202121        	l32r	a2, 3f3ca250 <PS_WOE+0x3f38a250>
3f4021cf:	702041        	l32r	a4, 3f3de250 <PS_WOE+0x3f39e250>
3f4021d2:	696e61        	l32r	a6, 3f3dc78c <PS_WOE+0x3f39c78c>
3f4021d5:	6f2063        	lsi	f6, a0, 0x1bc
3f4021d8:	756363        	lsi	f6, a3, 0x1d4
3f4021db:	646572        	s32i	a7, a5, 0x190
3f4021de:	6e6920        	f64rnd	a6, a9, a2, 2
3f4021e1:	272720        	lsi	f2, a7, 156
3f4021e4:	202c      	movi.n	a0, 34
3f4021e6:	207461        	l32r	a6, 3f3ca3b8 <PS_WOE+0x3f38a3b8>
3f4021e9:	696c      	movi.n	a9, -26
3f4021eb:	6e          	.byte 0x6e
3f4021ec:	2c2065        	call8	3f42e3f4 <_rodata_end+0x2bcec>
3f4021ef:	6f6320        	f64cmph	a6, a3, a2, 6
3f4021f2:	756c      	movi.n	a5, -25
3f4021f4:	6e6d      	lsi	f6, a14, 56
3f4021f6:	cc0a20        	lsi	f2, a10, 0x330
3f4021f9:	3f4021        	l32r	a2, 3f3d1efc <PS_WOE+0x3f391efc>
3f4021fc:	000017        	bnone	a0, a1, 3f402200 <anon.ec47d847621fe90eed050408668042ae.10.llvm.18290377080079887965+0xa2>
3f4021ff:	21e300        	srai	a14, a0, 3
3f402202:	0b3f40        	lsi	f4, a15, 44
3f402205:	000000        	ill
3f402208:	ee          	.byte 0xee
3f402209:	3f4021        	l32r	a2, 3f3d1f0c <PS_WOE+0x3f391f0c>
3f40220c:	0009      	s32i.n	a0, a0, 0
3f40220e:	f70000        	lsi	f0, a0, 0x3dc
3f402211:	3f4021        	l32r	a2, 3f3d1f14 <PS_WOE+0x3f391f14>
3f402214:	000001        	l32r	a0, 3f3c2214 <PS_WOE+0x3f382214>
3f402217:	218c00        	srai	a8, a0, 12
3f40221a:	003f40        	lsi	f4, a15, 0
3f40221d:	000000        	ill
3f402220:	4021f7        	blt	a1, a15, 3f402264 <anon.ec47d847621fe90eed050408668042ae.10.llvm.18290377080079887965+0x106>
3f402223:	3f          	.byte 0x3f
3f402224:	000001        	l32r	a0, 3f3c2224 <PS_WOE+0x3f382224>
3f402227:	000000        	ill
3f40222a:	200000        	or	a0, a0, a0
3f40222d:	000000        	ill
3f402230:	000004        	lsi	f0, a0, 0
3f402233:	000200        	lsi	f0, a2, 0
3f402236:	000000        	ill
3f402239:	000000        	ill
3f40223c:	000002        	l8ui	a0, a0, 0
3f40223f:	000000        	ill
3f402242:	030000        	rsr.lbeg	a0
3f402245:	000000        	ill
3f402248:	636142        	s32i	a4, a1, 0x18c
3f40224b:	746b      	addi.n	a7, a4, 6
3f40224d:	636172        	s32i	a7, a1, 0x18c
3f402250:	0a3a65        	call8	3f40c5f8 <_rodata_end+0x9ef0>
3f402253:	224800        	orb	b4, b8, b0
3f402256:	0b3f40        	lsi	f4, a15, 44
3f402259:	000000        	ill
3f40225c:	007830        	lsi	f3, a8, 0
3f40225f:	225c00        	orb	b5, b12, b0
3f402262:	023f40        	andb	b3, b15, b4
3f402265:	000000        	ill
3f402268:	4021f7        	blt	a1, a15, 3f4022ac <anon.ec47d847621fe90eed050408668042ae.10.llvm.18290377080079887965+0x14e>
3f40226b:	3f          	.byte 0x3f
3f40226c:	000001        	l32r	a0, 3f3c226c <PS_WOE+0x3f38226c>
3f40226f:	0a0a00        	add.s	f0, f10, f0
3f402272:	637845        	call0	3f4659f8 <_rodata_end+0x632f0>
3f402275:	747065        	call8	3f47697c <_rodata_end+0x74274>
3f402278:	6f69      	s32i.n	a6, a15, 24
3f40227a:	6e          	.byte 0x6e
3f40227b:	636f20        	minu	a6, a15, a2
3f40227e:	727563        	lsi	f6, a5, 0x1c8
3f402281:	206465        	call8	3f4228c8 <_rodata_end+0x201c0>
3f402284:	000020        	lsi	f2, a0, 0
3f402287:	227000        	orb	b7, b0, b0
3f40228a:	143f40        	extui	a3, a4, 15, 2
3f40228d:	000000        	ill
3f402290:	402284        	lsi	f8, a2, 0x100
3f402293:	3f          	.byte 0x3f
3f402294:	000001        	l32r	a0, 3f3c2294 <PS_WOE+0x3f382294>
3f402297:	21f700        	srai	a15, a0, 7
3f40229a:	013f40        	slli	a3, a15, 28
3f40229d:	000000        	ill
3f4022a0:	000000        	ill
3f4022a3:	002000        	isync
3f4022a6:	000000        	ill
3f4022a9:	000000        	ill
3f4022ac:	000002        	l8ui	a0, a0, 0
3f4022af:	000000        	ill
3f4022b2:	020000        	andb	b0, b0, b0
3f4022b5:	000000        	ill
3f4022b8:	000000        	ill
3f4022bb:	000300        	lsi	f0, a3, 0
3f4022be:	010000        	slli	a0, a0, 32
3f4022c1:	000000        	ill
3f4022c4:	000020        	lsi	f2, a0, 0
3f4022c7:	001000        	movsp	a0, a0
3f4022ca:	020000        	andb	b0, b0, b0
3f4022cd:	000000        	ill
3f4022d0:	000000        	ill
3f4022d3:	000200        	lsi	f0, a2, 0
3f4022d6:	000000        	ill
3f4022d9:	000000        	ill
3f4022dc:	000003        	lsi	f0, a0, 0
3f4022df:	21f700        	srai	a15, a0, 7
3f4022e2:	013f40        	slli	a3, a15, 28
3f4022e5:	000000        	ill

3f4022e8 <anon.791218e7ef076636cc3141088c5a1bb8.0.llvm.13586977565990666445>:
3f4022e8:	53e8      	l32i.n	a14, a3, 20
3f4022ea:	400d      	lsi	f0, a0, 0
3f4022ec:	000004        	lsi	f0, a0, 0
3f4022ef:	000400        	lsi	f0, a4, 0
3f4022f2:	e40000        	extui	a0, a0, 0, 15
3f4022f5:	0d4d      	mov.n	a4, a13
3f4022f7:	4d0040        	lsi	f4, a0, 0x134
3f4022fa:	400d      	lsi	f0, a0, 0
3f4022fc:	0d4db0        	lsi	f11, a13, 52
3f4022ff:	        	lsi	f4, a15, 0x1a0

3f402300 <anon.4f5b05757c841249a260f1e8a0a0b873.0.llvm.14849298323431214658>:
3f402300:	2f          	.byte 0x2f
3f402301:	6f68      	l32i.n	a6, a15, 24
3f402303:	656d      	lsi	f6, a5, 20
3f402305:	2f          	.byte 0x2f
3f402306:	616d      	lsi	f6, a1, 4
3f402308:	7a6562        	s32i	a6, a5, 0x1e8
3f40230b:	2f          	.byte 0x2f
3f40230c:	2e          	.byte 0x2e
3f40230d:	726163        	lsi	f6, a1, 0x1c8
3f402310:	2f6f67        	bbci	a15, 6, 3f402343 <anon.4f5b05757c841249a260f1e8a0a0b873.0.llvm.14849298323431214658+0x43>
3f402313:	676572        	s32i	a7, a5, 0x19c
3f402316:	7369      	s32i.n	a6, a3, 28
3f402318:	797274        	lsi	f7, a2, 0x1e4
3f40231b:	2f          	.byte 0x2f
3f40231c:	637273        	lsi	f7, a2, 0x18c
3f40231f:	2f          	.byte 0x2f
3f402320:	746967        	bbci	a9, 6, 3f402398 <anon.4f5b05757c841249a260f1e8a0a0b873.1.llvm.14849298323431214658+0x38>
3f402323:	7568      	l32i.n	a6, a5, 28
3f402325:	632e62        	l32i	a6, a14, 0x18c
3f402328:	6f          	.byte 0x6f
3f402329:	2d6d      	lsi	f6, a13, 52
3f40232b:	636531        	l32r	a3, 3f3db0c0 <PS_WOE+0x3f39b0c0>
3f40232e:	323663        	lsi	f6, a6, 200
3f402331:	3939      	s32i.n	a3, a9, 12
3f402333:	396264        	lsi	f6, a2, 228
3f402336:	386365        	call8	3f43a96c <_rodata_end+0x38264>
3f402339:	2f3332        	lsi	f3, a3, 188
3f40233c:	707365        	call8	3f472a74 <_rodata_end+0x7036c>
3f40233f:	622d      	lsi	f2, a2, 8
3f402341:	6b6361        	l32r	a6, 3f3dd0d0 <PS_WOE+0x3f39d0d0>
3f402344:	617274        	lsi	f7, a2, 0x184
3f402347:	2d6563        	lsi	f6, a5, 180
3f40234a:	322e30        	orbc	b2, b14, b3
3f40234d:	2e          	.byte 0x2e
3f40234e:	732f30        	maxu	a2, a15, a3
3f402351:	2f6372        	s32i	a7, a3, 188
3f402354:	7478      	l32i.n	a7, a4, 28
3f402356:	736e65        	call8	3f475a3c <_rodata_end+0x73334>
3f402359:	722e61        	l32r	a6, 3f3dec14 <PS_WOE+0x3f39ec14>
3f40235c:	000073        	lsi	f7, a0, 0
	...

3f402360 <anon.4f5b05757c841249a260f1e8a0a0b873.1.llvm.14849298323431214658>:
3f402360:	402300        	ssa8l	a3
3f402363:	3f          	.byte 0x3f
3f402364:	005d      	mov.n	a5, a0
3f402366:	370000        	lsi	f0, a0, 220
3f402369:	000000        	ill
3f40236c:	000011        	l32r	a1, 3f3c236c <PS_WOE+0x3f38236c>
3f40236f:	18b800        	lsxp	f11, a8, a0
3f402372:	4008      	l32i.n	a0, a0, 16
3f402374:	081314        	lsi	f1, a3, 32
3f402377:	18bd40        	lsxp	f11, a13, a4
3f40237a:	4008      	l32i.n	a0, a0, 16
3f40237c:	18bd      	lsi	f11, a8, 32
3f40237e:	4008      	l32i.n	a0, a0, 16
3f402380:	18bd      	lsi	f11, a8, 32
3f402382:	4008      	l32i.n	a0, a0, 16
3f402384:	189d      	lsi	f9, a8, 32
3f402386:	4008      	l32i.n	a0, a0, 16
3f402388:	18bd      	lsi	f11, a8, 32
3f40238a:	4008      	l32i.n	a0, a0, 16
3f40238c:	18bd      	lsi	f11, a8, 32
3f40238e:	4008      	l32i.n	a0, a0, 16
3f402390:	0818a3        	lsi	f10, a8, 32
3f402393:	18a940        	lsxp	f10, a9, a4
3f402396:	4008      	l32i.n	a0, a0, 16
3f402398:	af          	.byte 0xaf
3f402399:	0818      	l32i.n	a1, a8, 0
3f40239b:	18bd40        	lsxp	f11, a13, a4
3f40239e:	4008      	l32i.n	a0, a0, 16
3f4023a0:	18bd      	lsi	f11, a8, 32
3f4023a2:	4008      	l32i.n	a0, a0, 16
3f4023a4:	18bd      	lsi	f11, a8, 32
3f4023a6:	4008      	l32i.n	a0, a0, 16
3f4023a8:	18bd      	lsi	f11, a8, 32
3f4023aa:	4008      	l32i.n	a0, a0, 16
3f4023ac:	18bd      	lsi	f11, a8, 32
3f4023ae:	4008      	l32i.n	a0, a0, 16
3f4023b0:	18bd      	lsi	f11, a8, 32
3f4023b2:	4008      	l32i.n	a0, a0, 16
3f4023b4:	18bd      	lsi	f11, a8, 32
3f4023b6:	4008      	l32i.n	a0, a0, 16
3f4023b8:	18bd      	lsi	f11, a8, 32
3f4023ba:	4008      	l32i.n	a0, a0, 16
3f4023bc:	18bd      	lsi	f11, a8, 32
3f4023be:	4008      	l32i.n	a0, a0, 16
3f4023c0:	18bd      	lsi	f11, a8, 32
3f4023c2:	4008      	l32i.n	a0, a0, 16
3f4023c4:	18bd      	lsi	f11, a8, 32
3f4023c6:	4008      	l32i.n	a0, a0, 16
3f4023c8:	18bd      	lsi	f11, a8, 32
3f4023ca:	4008      	l32i.n	a0, a0, 16
3f4023cc:	0818b5        	call12	3f40a558 <_rodata_end+0x7e50>
3f4023cf:	162340        	lsi	f4, a3, 88
3f4023d2:	4008      	l32i.n	a0, a0, 16
3f4023d4:	176d      	lsi	f6, a7, 28
3f4023d6:	4008      	l32i.n	a0, a0, 16
3f4023d8:	081773        	lsi	f7, a7, 32
3f4023db:	177940        	lsi	f4, a9, 92
3f4023de:	4008      	l32i.n	a0, a0, 16
3f4023e0:	7e          	.byte 0x7e
3f4023e1:	400817        	bnone	a8, a1, 3f402425 <anon.4f5b05757c841249a260f1e8a0a0b873.1.llvm.14849298323431214658+0xc5>
3f4023e4:	081783        	lsi	f8, a7, 32
3f4023e7:	178840        	lsi	f4, a8, 92
3f4023ea:	4008      	l32i.n	a0, a0, 16
3f4023ec:	8e          	.byte 0x8e
3f4023ed:	400817        	bnone	a8, a1, 3f402431 <anon.4f5b05757c841249a260f1e8a0a0b873.1.llvm.14849298323431214658+0xd1>
3f4023f0:	081794        	lsi	f9, a7, 32
3f4023f3:	179a40        	lsi	f4, a10, 92
3f4023f6:	4008      	l32i.n	a0, a0, 16
3f4023f8:	18bd      	lsi	f11, a8, 32
3f4023fa:	4008      	l32i.n	a0, a0, 16
3f4023fc:	18bd      	lsi	f11, a8, 32
3f4023fe:	4008      	l32i.n	a0, a0, 16
3f402400:	9f          	.byte 0x9f
3f402401:	400817        	bnone	a8, a1, 3f402445 <anon.4f5b05757c841249a260f1e8a0a0b873.1.llvm.14849298323431214658+0xe5>
3f402404:	0817a4        	lsi	f10, a7, 32
3f402407:	17a940        	lsi	f4, a9, 92
3f40240a:	4008      	l32i.n	a0, a0, 16
3f40240c:	ae          	.byte 0xae
3f40240d:	400817        	bnone	a8, a1, 3f402451 <anon.4f5b05757c841249a260f1e8a0a0b873.1.llvm.14849298323431214658+0xf1>
3f402410:	0817b3        	lsi	f11, a7, 32
3f402413:	17b840        	lsi	f4, a8, 92
3f402416:	4008      	l32i.n	a0, a0, 16
3f402418:	17bd      	lsi	f11, a7, 28
3f40241a:	4008      	l32i.n	a0, a0, 16
3f40241c:	0817c2        	l16ui	a12, a7, 16
3f40241f:	17c740        	lsi	f4, a7, 92
3f402422:	4008      	l32i.n	a0, a0, 16
3f402424:	17cc      	bnez.n	a7, 3f402429 <anon.4f5b05757c841249a260f1e8a0a0b873.1.llvm.14849298323431214658+0xc9>
3f402426:	4008      	l32i.n	a0, a0, 16
3f402428:	0817d1        	l32r	a13, 3f3c4484 <PS_WOE+0x3f384484>
3f40242b:	17d740        	lsi	f4, a7, 92
3f40242e:	4008      	l32i.n	a0, a0, 16
3f402430:	18bd      	lsi	f11, a8, 32
3f402432:	4008      	l32i.n	a0, a0, 16
3f402434:	18bd      	lsi	f11, a8, 32
3f402436:	4008      	l32i.n	a0, a0, 16
3f402438:	18bd      	lsi	f11, a8, 32
3f40243a:	4008      	l32i.n	a0, a0, 16
3f40243c:	18bd      	lsi	f11, a8, 32
3f40243e:	4008      	l32i.n	a0, a0, 16
3f402440:	17dd      	lsi	f13, a7, 28
3f402442:	4008      	l32i.n	a0, a0, 16
3f402444:	0817e3        	lsi	f14, a7, 32
3f402447:	17e940        	lsi	f4, a9, 92
3f40244a:	4008      	l32i.n	a0, a0, 16
3f40244c:	ef          	.byte 0xef
3f40244d:	400817        	bnone	a8, a1, 3f402491 <anon.4f5b05757c841249a260f1e8a0a0b873.1.llvm.14849298323431214658+0x131>
3f402450:	0817f5        	call12	3f40a5d0 <_rodata_end+0x7ec8>
3f402453:	17fb40        	lsi	f4, a11, 92
3f402456:	4008      	l32i.n	a0, a0, 16
3f402458:	081801        	l32r	a0, 3f3c44b8 <PS_WOE+0x3f3844b8>
3f40245b:	180740        	lsxp	f0, a7, a4
3f40245e:	4008      	l32i.n	a0, a0, 16
3f402460:	180d      	lsi	f0, a8, 32
3f402462:	4008      	l32i.n	a0, a0, 16
3f402464:	18bd      	lsi	f11, a8, 32
3f402466:	4008      	l32i.n	a0, a0, 16
3f402468:	18bd      	lsi	f11, a8, 32
3f40246a:	4008      	l32i.n	a0, a0, 16
3f40246c:	081813        	lsi	f1, a8, 32
3f40246f:	181940        	lsxp	f1, a9, a4
3f402472:	4008      	l32i.n	a0, a0, 16
3f402474:	18bd      	lsi	f11, a8, 32
3f402476:	4008      	l32i.n	a0, a0, 16
3f402478:	18bd      	lsi	f11, a8, 32
3f40247a:	4008      	l32i.n	a0, a0, 16
3f40247c:	1f          	.byte 0x1f
3f40247d:	0818      	l32i.n	a1, a8, 0
3f40247f:	182540        	lsxp	f2, a5, a4
3f402482:	4008      	l32i.n	a0, a0, 16
3f402484:	182b      	addi.n	a1, a8, 2
3f402486:	4008      	l32i.n	a0, a0, 16
3f402488:	081831        	l32r	a3, 3f3c44e8 <PS_WOE+0x3f3844e8>
3f40248b:	183740        	lsxp	f3, a7, a4
3f40248e:	4008      	l32i.n	a0, a0, 16
3f402490:	183d      	lsi	f3, a8, 32
3f402492:	4008      	l32i.n	a0, a0, 16
3f402494:	081843        	lsi	f4, a8, 32
3f402497:	184940        	lsxp	f4, a9, a4
3f40249a:	4008      	l32i.n	a0, a0, 16
3f40249c:	4f          	.byte 0x4f
3f40249d:	0818      	l32i.n	a1, a8, 0
3f40249f:	185540        	lsxp	f5, a5, a4
3f4024a2:	4008      	l32i.n	a0, a0, 16
3f4024a4:	185b      	addi.n	a1, a8, 5
3f4024a6:	4008      	l32i.n	a0, a0, 16
3f4024a8:	081861        	l32r	a6, 3f3c4508 <PS_WOE+0x3f384508>
3f4024ab:	18bd40        	lsxp	f11, a13, a4
3f4024ae:	4008      	l32i.n	a0, a0, 16
3f4024b0:	081867        	beq	a8, a6, 3f4024bc <anon.4f5b05757c841249a260f1e8a0a0b873.1.llvm.14849298323431214658+0x15c>
3f4024b3:	186d40        	lsxp	f6, a13, a4
3f4024b6:	4008      	l32i.n	a0, a0, 16
3f4024b8:	081873        	lsi	f7, a8, 32
3f4024bb:	187940        	lsxp	f7, a9, a4
3f4024be:	4008      	l32i.n	a0, a0, 16
3f4024c0:	7f          	.byte 0x7f
3f4024c1:	0818      	l32i.n	a1, a8, 0
3f4024c3:	188540        	lsxp	f8, a5, a4
3f4024c6:	4008      	l32i.n	a0, a0, 16
3f4024c8:	188b      	addi.n	a1, a8, 8
3f4024ca:	4008      	l32i.n	a0, a0, 16
3f4024cc:	081891        	l32r	a9, 3f3c452c <PS_WOE+0x3f38452c>
3f4024cf:	189740        	lsxp	f9, a7, a4
3f4024d2:	4008      	l32i.n	a0, a0, 16
3f4024d4:	081620        	lsx	f1, a6, a2
3f4024d7:	1cca40        	lsi	f4, a10, 112
3f4024da:	4008      	l32i.n	a0, a0, 16
3f4024dc:	bf          	.byte 0xbf
3f4024dd:	081b      	addi.n	a0, a8, 1
3f4024df:	1bc440        	un.s	b12, f4, f4
3f4024e2:	4008      	l32i.n	a0, a0, 16
3f4024e4:	1bc9      	s32i.n	a12, a11, 4
3f4024e6:	4008      	l32i.n	a0, a0, 16
3f4024e8:	ce          	.byte 0xce
3f4024e9:	081b      	addi.n	a0, a8, 1
3f4024eb:	1bd340        	un.s	b13, f3, f4
3f4024ee:	4008      	l32i.n	a0, a0, 16
3f4024f0:	1bd8      	l32i.n	a13, a11, 4
3f4024f2:	4008      	l32i.n	a0, a0, 16
3f4024f4:	1bdd      	lsi	f13, a11, 44
3f4024f6:	4008      	l32i.n	a0, a0, 16
3f4024f8:	081be2        	l16ui	a14, a11, 16
3f4024fb:	1be740        	un.s	b14, f7, f4
3f4024fe:	4008      	l32i.n	a0, a0, 16
3f402500:	18bd      	lsi	f11, a8, 32
3f402502:	4008      	l32i.n	a0, a0, 16
3f402504:	18bd      	lsi	f11, a8, 32
3f402506:	4008      	l32i.n	a0, a0, 16
3f402508:	1bec      	bnez.n	a11, 3f40252d <anon.4f5b05757c841249a260f1e8a0a0b873.1.llvm.14849298323431214658+0x1cd>
3f40250a:	4008      	l32i.n	a0, a0, 16
3f40250c:	081bf1        	l32r	a15, 3f3c4578 <PS_WOE+0x3f384578>
3f40250f:	1bf640        	un.s	b15, f6, f4
3f402512:	4008      	l32i.n	a0, a0, 16
3f402514:	1bfb      	addi.n	a1, a11, 15
3f402516:	4008      	l32i.n	a0, a0, 16
3f402518:	081c00        	lsx	f1, a12, a0
3f40251b:	1c0540        	lsi	f4, a5, 112
3f40251e:	4008      	l32i.n	a0, a0, 16
3f402520:	1c0a      	add.n	a1, a12, a0
3f402522:	4008      	l32i.n	a0, a0, 16
3f402524:	0f          	.byte 0xf
3f402525:	081c      	movi.n	a8, 16
3f402527:	1c1440        	lsi	f4, a4, 112
3f40252a:	4008      	l32i.n	a0, a0, 16
3f40252c:	1c19      	s32i.n	a1, a12, 4
3f40252e:	4008      	l32i.n	a0, a0, 16
3f402530:	1e          	.byte 0x1e
3f402531:	081c      	movi.n	a8, 16
3f402533:	1c2340        	lsi	f4, a3, 112
3f402536:	4008      	l32i.n	a0, a0, 16
3f402538:	18bd      	lsi	f11, a8, 32
3f40253a:	4008      	l32i.n	a0, a0, 16
3f40253c:	18bd      	lsi	f11, a8, 32
3f40253e:	4008      	l32i.n	a0, a0, 16
3f402540:	18bd      	lsi	f11, a8, 32
3f402542:	4008      	l32i.n	a0, a0, 16
3f402544:	18bd      	lsi	f11, a8, 32
3f402546:	4008      	l32i.n	a0, a0, 16
3f402548:	1c28      	l32i.n	a2, a12, 4
3f40254a:	4008      	l32i.n	a0, a0, 16
3f40254c:	1c2d      	lsi	f2, a12, 48
3f40254e:	4008      	l32i.n	a0, a0, 16
3f402550:	081c32        	l16ui	a3, a12, 16
3f402553:	1c3740        	lsi	f4, a7, 112
3f402556:	4008      	l32i.n	a0, a0, 16
3f402558:	1c3c      	movi.n	a12, 49
3f40255a:	4008      	l32i.n	a0, a0, 16
3f40255c:	081c41        	l32r	a4, 3f3c45cc <PS_WOE+0x3f3845cc>
3f40255f:	1c4640        	lsi	f4, a6, 112
3f402562:	4008      	l32i.n	a0, a0, 16
3f402564:	1c4b      	addi.n	a1, a12, 4
3f402566:	4008      	l32i.n	a0, a0, 16
3f402568:	081c50        	lsx	f1, a12, a5
3f40256b:	18bd40        	lsxp	f11, a13, a4
3f40256e:	4008      	l32i.n	a0, a0, 16
3f402570:	18bd      	lsi	f11, a8, 32
3f402572:	4008      	l32i.n	a0, a0, 16
3f402574:	081c55        	call4	3f40a73c <_rodata_end+0x8034>
3f402577:	1c5a40        	lsi	f4, a10, 112
3f40257a:	4008      	l32i.n	a0, a0, 16
3f40257c:	18bd      	lsi	f11, a8, 32
3f40257e:	4008      	l32i.n	a0, a0, 16
3f402580:	18bd      	lsi	f11, a8, 32
3f402582:	4008      	l32i.n	a0, a0, 16
3f402584:	5f          	.byte 0x5f
3f402585:	081c      	movi.n	a8, 16
3f402587:	1c6440        	lsi	f4, a4, 112
3f40258a:	4008      	l32i.n	a0, a0, 16
3f40258c:	1c69      	s32i.n	a6, a12, 4
3f40258e:	4008      	l32i.n	a0, a0, 16
3f402590:	6e          	.byte 0x6e
3f402591:	081c      	movi.n	a8, 16
3f402593:	1c7340        	lsi	f4, a3, 112
3f402596:	4008      	l32i.n	a0, a0, 16
3f402598:	1c78      	l32i.n	a7, a12, 4
3f40259a:	4008      	l32i.n	a0, a0, 16
3f40259c:	1c7d      	lsi	f7, a12, 48
3f40259e:	4008      	l32i.n	a0, a0, 16
3f4025a0:	081c82        	l16ui	a8, a12, 16
3f4025a3:	1c8740        	lsi	f4, a7, 112
3f4025a6:	4008      	l32i.n	a0, a0, 16
3f4025a8:	1c8c      	beqz.n	a12, 3f4025ad <anon.4f5b05757c841249a260f1e8a0a0b873.1.llvm.14849298323431214658+0x24d>
3f4025aa:	4008      	l32i.n	a0, a0, 16
3f4025ac:	081c91        	l32r	a9, 3f3c461c <PS_WOE+0x3f38461c>
3f4025af:	1c9640        	lsi	f4, a6, 112
3f4025b2:	4008      	l32i.n	a0, a0, 16
3f4025b4:	18bd      	lsi	f11, a8, 32
3f4025b6:	4008      	l32i.n	a0, a0, 16
3f4025b8:	1c9b      	addi.n	a1, a12, 9
3f4025ba:	4008      	l32i.n	a0, a0, 16
3f4025bc:	081ca0        	lsx	f1, a12, a10
3f4025bf:	1ca540        	lsi	f4, a5, 112
3f4025c2:	4008      	l32i.n	a0, a0, 16
3f4025c4:	1caa      	add.n	a1, a12, a10
3f4025c6:	4008      	l32i.n	a0, a0, 16
3f4025c8:	af          	.byte 0xaf
3f4025c9:	081c      	movi.n	a8, 16
3f4025cb:	1cb440        	lsi	f4, a4, 112
3f4025ce:	4008      	l32i.n	a0, a0, 16
3f4025d0:	1cb9      	s32i.n	a11, a12, 4
3f4025d2:	4008      	l32i.n	a0, a0, 16
3f4025d4:	be          	.byte 0xbe
3f4025d5:	081c      	movi.n	a8, 16
3f4025d7:	1cc340        	lsi	f4, a3, 112
3f4025da:	4008      	l32i.n	a0, a0, 16
3f4025dc:	1cc8      	l32i.n	a12, a12, 4
3f4025de:	4008      	l32i.n	a0, a0, 16
3f4025e0:	2f          	.byte 0x2f
3f4025e1:	6f68      	l32i.n	a6, a15, 24
3f4025e3:	656d      	lsi	f6, a5, 20
3f4025e5:	2f          	.byte 0x2f
3f4025e6:	616d      	lsi	f6, a1, 4
3f4025e8:	7a6562        	s32i	a6, a5, 0x1e8
3f4025eb:	2f          	.byte 0x2f
3f4025ec:	766564        	lsi	f6, a5, 0x1d8
3f4025ef:	6f6c65        	call8	3f471cb4 <_rodata_end+0x6f5ac>
3f4025f2:	656d70        	extui	a6, a7, 29, 7
3f4025f5:	6e          	.byte 0x6e
3f4025f6:	722f74        	lsi	f7, a15, 0x1c8
3f4025f9:	747375        	call12	3f476d30 <_rodata_end+0x74628>
3f4025fc:	2f          	.byte 0x2f
3f4025fd:	626d65        	call8	3f464cd4 <_rodata_end+0x625cc>
3f402600:	646465        	call8	3f466c48 <_rodata_end+0x64540>
3f402603:	2f6465        	call8	3f431c48 <_rodata_end+0x2f540>
3f402606:	6168      	l32i.n	a6, a1, 24
3f402608:	2f6c      	movi.n	a15, -30
3f40260a:	707365        	call8	3f472d40 <_rodata_end+0x70638>
3f40260d:	682d      	lsi	f2, a8, 32
3f40260f:	2f6c61        	l32r	a6, 3f3ce3c0 <PS_WOE+0x3f38e3c0>
3f402612:	707365        	call8	3f472d48 <_rodata_end+0x70640>
3f402615:	682d      	lsi	f2, a8, 32
3f402617:	2d6c61        	l32r	a6, 3f3cdbc8 <PS_WOE+0x3f38dbc8>
3f40261a:	6d6f63        	lsi	f6, a15, 0x1b4
3f40261d:	6f6d      	lsi	f6, a15, 60
3f40261f:	6e          	.byte 0x6e
3f402620:	2f          	.byte 0x2f
3f402621:	637273        	lsi	f7, a2, 0x18c
3f402624:	2f          	.byte 0x2f
3f402625:	6e69      	s32i.n	a6, a14, 24
3f402627:	726574        	lsi	f7, a5, 0x1c8
3f40262a:	707572        	lsi	f7, a5, 0x1c0
3f40262d:	782f74        	lsi	f7, a15, 0x1e0
3f402630:	6e6574        	lsi	f7, a5, 0x1b8
3f402633:	2e6173        	lsi	f7, a1, 184
3f402636:	007372        	lsi	f7, a3, 0
3f402639:	000000        	ill
3f40263c:	ff          	.byte 0xff
3f40263d:	000637        	bnone	a6, a3, 3f402641 <anon.4f5b05757c841249a260f1e8a0a0b873.1.llvm.14849298323431214658+0x2e1>
3f402640:	380000        	lsi	f0, a0, 224
3f402643:	880000        	lsi	f0, a0, 0x220
3f402646:	0028c0        	lsi	f12, a8, 0
3f402649:	530000        	max	a0, a0, a0
3f40264c:	010000        	slli	a0, a0, 32
3f40264f:	000084        	lsi	f8, a0, 0
3f402652:	000000        	ill
3f402655:	000040        	lsi	f4, a0, 0
3f402658:	4025e0        	lsi	f14, a5, 0x100
3f40265b:	3f          	.byte 0x3f
3f40265c:	0058      	l32i.n	a5, a0, 0
3f40265e:	710000        	lsi	f0, a0, 0x1c4
3f402661:	000001        	l32r	a0, 3f3c2664 <PS_WOE+0x3f382664>
3f402664:	0038      	l32i.n	a3, a0, 0
3f402666:	e00000        	subx4	a0, a0, a0
3f402669:	3f4025        	call8	3f441a6c <_rodata_end+0x3f364>
3f40266c:	0058      	l32i.n	a5, a0, 0
3f40266e:	880000        	lsi	f0, a0, 0x220
3f402671:	000001        	l32r	a0, 3f3c2674 <PS_WOE+0x3f382674>
3f402674:	000026        	beqi	a0, -1, 3f402678 <anon.4f5b05757c841249a260f1e8a0a0b873.1.llvm.14849298323431214658+0x318>
3f402677:	25e000        	extui	a14, a0, 16, 3
3f40267a:	583f40        	ssxp	f3, a15, a4
3f40267d:	000000        	ill
3f402680:	0198      	l32i.n	a9, a1, 0
3f402682:	2f0000        	f64cmph	a0, a0, a0, 2
3f402685:	000000        	ill
3f402688:	000001        	l32r	a0, 3f3c2688 <PS_WOE+0x3f382688>
3f40268b:	000100        	lsi	f0, a1, 0
3f40268e:	010000        	slli	a0, a0, 32
3f402691:	000000        	ill
3f402694:	000001        	l32r	a0, 3f3c2694 <PS_WOE+0x3f382694>
3f402697:	000100        	lsi	f0, a1, 0
3f40269a:	010000        	slli	a0, a0, 32
3f40269d:	000000        	ill
3f4026a0:	000001        	l32r	a0, 3f3c26a0 <PS_WOE+0x3f3826a0>
3f4026a3:	000100        	lsi	f0, a1, 0
3f4026a6:	010000        	slli	a0, a0, 32
3f4026a9:	000000        	ill
3f4026ac:	000001        	l32r	a0, 3f3c26ac <PS_WOE+0x3f3826ac>
3f4026af:	000100        	lsi	f0, a1, 0
3f4026b2:	030000        	rsr.lbeg	a0
3f4026b5:	000000        	ill
3f4026b8:	000001        	l32r	a0, 3f3c26b8 <PS_WOE+0x3f3826b8>
3f4026bb:	000100        	lsi	f0, a1, 0
3f4026be:	000000        	ill
3f4026c1:	000000        	ill
3f4026c4:	000003        	lsi	f0, a0, 0
3f4026c7:	000000        	ill
3f4026ca:	010000        	slli	a0, a0, 32
3f4026cd:	000000        	ill
3f4026d0:	000001        	l32r	a0, 3f3c26d0 <PS_WOE+0x3f3826d0>
3f4026d3:	000200        	lsi	f0, a2, 0
3f4026d6:	020000        	andb	b0, b0, b0
3f4026d9:	000000        	ill
3f4026dc:	000002        	l8ui	a0, a0, 0
3f4026df:	000300        	lsi	f0, a3, 0
3f4026e2:	030000        	rsr.lbeg	a0
	...
3f4026f1:	000000        	ill
3f4026f4:	000003        	lsi	f0, a0, 0
3f4026f7:	000000        	ill
3f4026fa:	030000        	rsr.lbeg	a0
	...

Disassembly of section .bss:

3ffb0000 <DEVICE_PERIPHERALS>:
	...

Disassembly of section .rwtext:

40080400 <__level_4_interrupt-0x16c>:
40080400:	0d5300        	lsi	f0, a3, 52
40080403:	000f40        	lsi	f4, a15, 0
40080406:	030000        	rsr.lbeg	a0
40080409:	000000        	ill
4008040c:	040000        	extui	a0, a0, 0, 1
4008040f:	000300        	lsi	f0, a3, 0
40080412:	010004        	lsi	f0, a0, 4
40080415:	000400        	lsi	f0, a4, 0
40080418:	040002        	l8ui	a0, a0, 4
4008041b:	000400        	lsi	f0, a4, 0
4008041e:	050004        	lsi	f0, a0, 20
40080421:	000400        	lsi	f0, a4, 0
40080424:	040006        	j	40081428 <esp_hal_common::interrupt::vectored::handle_interrupts+0x1b8>
40080427:	000700        	lsi	f0, a7, 0
4008042a:	6c0004        	muls.da.ll	m0, a0
4008042d:	080a      	add.n	a0, a8, a0
4008042f:	039440        	lsi	f4, a4, 12
40080432:	843f40        	extui	a3, a4, 15, 9
40080435:	3f4003        	ssi	f0, a0, 252
40080438:	0d1000        	lsi	f0, a0, 52
4008043b:	151c40        	extui	a1, a4, 28, 2
4008043e:	400d      	lsi	f0, a0, 0
40080440:	043c      	movi.n	a4, 48
40080442:	c83f40        	lsi	f4, a15, 0x320
40080445:	400d27        	bnone	a13, a2, 40080489 <_init_end+0x89>
40080448:	0458      	l32i.n	a5, a4, 0
4008044a:	143f40        	extui	a3, a4, 15, 2
4008044d:	400d10        	lsi	f1, a13, 0x100
40080450:	0468      	l32i.n	a6, a4, 0
40080452:	8c3f40        	lsi	f4, a15, 0x230
40080455:	3f4004        	lsi	f0, a0, 252
40080458:	049c      	beqz.n	a4, 4008046c <_init_end+0x6c>
4008045a:	483f40        	ssx	f3, a15, a4
4008045d:	400d10        	lsi	f1, a13, 0x100
40080460:	4022a0        	lsi	f10, a2, 0x100
40080463:	3f          	.byte 0x3f
40080464:	2288      	l32i.n	a8, a2, 8
40080466:	e83f40        	lsi	f4, a15, 0x3a0
40080469:	3f4022        	s8i	a2, a0, 63
4008046c:	0d3774        	lsi	f7, a7, 52
4008046f:	1e3840        	f64sexp	a3, a8, a4
40080472:	400d      	lsi	f0, a0, 0
40080474:	ff          	.byte 0xff
40080475:	ff          	.byte 0xff
40080476:	ff          	.byte 0xff
40080477:	3f          	.byte 0x3f
40080478:	000000        	ill
4008047b:	226040        	orb	b6, b0, b4
4008047e:	003f40        	lsi	f4, a15, 0
40080481:	fff800        	f64cmph	a15, a8, a0, 15
40080484:	f80000        	lsi	f0, a0, 0x3e0
40080487:	3f          	.byte 0x3f
40080488:	4e3c      	movi.n	a14, 52
4008048a:	400d      	lsi	f0, a0, 0
4008048c:	218c      	beqz.n	a1, 40080492 <_init_end+0x92>
4008048e:	e03f40        	subx4	a3, a15, a4
40080491:	3f4022        	s8i	a2, a0, 63
40080494:	081270        	lsx	f1, a2, a7
40080497:	265840        	lsi	f4, a8, 152
4008049a:	8c3f40        	lsi	f4, a15, 0x230
4008049d:	400d27        	bnone	a13, a2, 400804e1 <_init_end+0xe1>
400804a0:	2638      	l32i.n	a3, a6, 8
400804a2:	c03f40        	sub	a3, a15, a4
400804a5:	0188      	l32i.n	a8, a1, 0
400804a7:	555520        	extui	a5, a2, 21, 6
400804aa:	335555        	call4	400b3a00 <_text_heap_end+0x13a00>
400804ad:	333333        	lsi	f3, a3, 204
400804b0:	0f          	.byte 0xf
400804b1:	0f          	.byte 0xf
400804b2:	0f          	.byte 0xf
400804b3:	0f          	.byte 0xf
400804b4:	010101        	l32r	a0, 400408b8 <_stack_end_cpu0+0x408b8>
400804b7:	088001        	l32r	a0, 400426b8 <_stack_end_cpu0+0x426b8>
400804ba:	702000        	lsi	f0, a0, 0x1c0
400804bd:	3f4023        	ssi	f2, a0, 252
400804c0:	400c80        	lsi	f8, a12, 0x100
400804c3:	4e5070        	f64rnd	a5, a0, a7, 0
400804c6:	400d      	lsi	f0, a0, 0
400804c8:	002000        	isync
400804cb:	030000        	rsr.lbeg	a0
400804ce:	ec3ff0        	lsi	f15, a15, 0x3b0
400804d1:	3ff001        	l32r	a0, 40050494 <_stack_end_cpu0+0x50494>
400804d4:	2688      	l32i.n	a8, a6, 8
400804d6:	003f40        	lsi	f4, a15, 0
400804d9:	040000        	extui	a0, a0, 0, 1
400804dc:	f00304        	lsi	f0, a3, 0x3c0
400804df:	3f          	.byte 0x3f
400804e0:	f001f0        	subx8	a0, a1, a15
400804e3:	3f          	.byte 0x3f
400804e4:	000000        	ill
400804e7:	0808      	l32i.n	a0, a8, 0
400804e9:	3ff003        	lsi	f0, a0, 252
400804ec:	f001f4        	lsi	f15, a1, 0x3c0
400804ef:	3f          	.byte 0x3f
400804f0:	000000        	ill
400804f3:	030c10        	rsr.scompare1	a1
400804f6:	f83ff0        	lsi	f15, a15, 0x3e0
400804f9:	3ff001        	l32r	a0, 400504bc <_stack_end_cpu0+0x504bc>
400804fc:	000000        	ill
400804ff:	031020        	rsr.acclo	a2
40080502:	fc3ff0        	lsi	f15, a15, 0x3f0
40080505:	3ff001        	l32r	a0, 400504c8 <_stack_end_cpu0+0x504c8>
40080508:	f00314        	lsi	f1, a3, 0x3c0
4008050b:	3f          	.byte 0x3f
4008050c:	f00200        	subx8	a0, a2, a0
4008050f:	3f          	.byte 0x3f
40080510:	000000        	ill
40080513:	031880        	lsi	f8, a8, 12
40080516:	043ff0        	extui	a3, a15, 15, 1
40080519:	3ff002        	s32ri	a0, a0, 252
4008051c:	031c      	movi.n	a3, 16
4008051e:	083ff0        	lsx	f3, a15, a15
40080521:	3ff002        	s32ri	a0, a0, 252
40080524:	2668      	l32i.n	a6, a6, 8
40080526:	003f40        	lsi	f4, a15, 0
40080529:	fc0000        	lsi	f0, a0, 0x3f0
4008052c:	4023d0        	lsi	f13, a3, 0x100
4008052f:	3f          	.byte 0x3f
40080530:	081d00        	lsx	f1, a13, a0
40080533:	54c040        	extui	a12, a4, 0, 6
40080536:	400d      	lsi	f0, a0, 0
40080538:	00f8      	l32i.n	a15, a0, 0
4008053a:	ec3ff0        	lsi	f15, a15, 0x3b0
4008053d:	3ff000        	f64cmph	a15, a0, a0, 3
40080540:	00fc      	bnez.n	a0, 40080574 <__level_4_interrupt+0x8>
40080542:	f03ff0        	subx8	a3, a15, a15
40080545:	3ff000        	f64cmph	a15, a0, a0, 3
40080548:	f00100        	subx8	a0, a1, a0
4008054b:	3f          	.byte 0x3f
4008054c:	f000f4        	lsi	f15, a0, 0x3c0
4008054f:	3f          	.byte 0x3f
40080550:	0218      	l32i.n	a1, a2, 0
40080552:	043ff0        	extui	a3, a15, 15, 1
40080555:	3ff001        	l32r	a0, 40050518 <_stack_end_cpu0+0x50518>
40080558:	2678      	l32i.n	a7, a6, 8
4008055a:	d83f40        	lsi	f4, a15, 0x360
4008055d:	3f4024        	lsi	f2, a0, 252
40080560:	ff          	.byte 0xff
40080561:	ff          	.byte 0xff
40080562:	600000        	neg	a0, a0
40080565:	400b      	addi.n	a4, a0, -1
40080567:	3f          	.byte 0x3f
40080568:	52f8      	l32i.n	a15, a2, 20
4008056a:	400d      	lsi	f0, a0, 0

4008056c <__level_4_interrupt>:
4008056c:	004136        	entry	a1, 32
4008056f:	ffa481        	l32r	a8, 40080400 <_init_end>
40080572:	03ad      	mov.n	a10, a3
40080574:	0008e0        	callx8	a8
40080577:	f01d      	retw.n
40080579:	0020f0        	nop

4008057c <__level_5_interrupt>:
4008057c:	004136        	entry	a1, 32
4008057f:	ffa081        	l32r	a8, 40080400 <_init_end>
40080582:	03ad      	mov.n	a10, a3
40080584:	0008e0        	callx8	a8
40080587:	f01d      	retw.n
40080589:	0020f0        	nop

4008058c <__level_6_interrupt>:
4008058c:	004136        	entry	a1, 32
4008058f:	ff9c81        	l32r	a8, 40080400 <_init_end>
40080592:	03ad      	mov.n	a10, a3
40080594:	0008e0        	callx8	a8
40080597:	f01d      	retw.n
40080599:	0020f0        	nop

4008059c <__level_7_interrupt>:
4008059c:	004136        	entry	a1, 32
4008059f:	ff9881        	l32r	a8, 40080400 <_init_end>
400805a2:	03ad      	mov.n	a10, a3
400805a4:	0008e0        	callx8	a8
400805a7:	f01d      	retw.n
400805a9:	000000        	ill

400805ac <save_context>:
400805ac:	046122        	s32i	a2, a1, 16
400805af:	056132        	s32i	a3, a1, 20
400805b2:	066142        	s32i	a4, a1, 24
400805b5:	076152        	s32i	a5, a1, 28
400805b8:	086162        	s32i	a6, a1, 32
400805bb:	096172        	s32i	a7, a1, 36
400805be:	0a6182        	s32i	a8, a1, 40
400805c1:	0b6192        	s32i	a9, a1, 44
400805c4:	0c61a2        	s32i	a10, a1, 48
400805c7:	0d61b2        	s32i	a11, a1, 52
400805ca:	0e61c2        	s32i	a12, a1, 56
400805cd:	0f61d2        	s32i	a13, a1, 60
400805d0:	1061e2        	s32i	a14, a1, 64
400805d3:	1161f2        	s32i	a15, a1, 68
400805d6:	030330        	rsr.sar	a3
400805d9:	126132        	s32i	a3, a1, 72
400805dc:	030030        	rsr.lbeg	a3
400805df:	156132        	s32i	a3, a1, 84
400805e2:	030130        	rsr.lend	a3
400805e5:	166132        	s32i	a3, a1, 88
400805e8:	030230        	rsr.lcount	a3
400805eb:	176132        	s32i	a3, a1, 92
400805ee:	e33e70        	rur.threadptr	a3
400805f1:	186132        	s32i	a3, a1, 96
400805f4:	030c30        	rsr.scompare1	a3
400805f7:	196132        	s32i	a3, a1, 100
400805fa:	030430        	rsr.br	a3
400805fd:	1a6132        	s32i	a3, a1, 104
40080600:	031030        	rsr.acclo	a3
40080603:	1b6132        	s32i	a3, a1, 108
40080606:	031130        	rsr.acchi	a3
40080609:	1c6132        	s32i	a3, a1, 112
4008060c:	032030        	rsr.m0	a3
4008060f:	1d6132        	s32i	a3, a1, 116
40080612:	032130        	rsr.m1	a3
40080615:	1e6132        	s32i	a3, a1, 120
40080618:	032230        	rsr.m2	a3
4008061b:	1f6132        	s32i	a3, a1, 124
4008061e:	032330        	rsr.m3	a3
40080621:	206132        	s32i	a3, a1, 128
40080624:	e33ea0        	rur.f64r_lo	a3
40080627:	216132        	s32i	a3, a1, 132
4008062a:	e33eb0        	rur.f64r_hi	a3
4008062d:	226132        	s32i	a3, a1, 136
40080630:	e33ec0        	rur.f64s	a3
40080633:	236132        	s32i	a3, a1, 140
40080636:	e33e80        	rur.fcr	a3
40080639:	246132        	s32i	a3, a1, 144
4008063c:	e33e90        	rur.fsr	a3
4008063f:	256132        	s32i	a3, a1, 148
40080642:	264103        	ssi	f0, a1, 152
40080645:	274113        	ssi	f1, a1, 156
40080648:	284123        	ssi	f2, a1, 160
4008064b:	294133        	ssi	f3, a1, 164
4008064e:	2a4143        	ssi	f4, a1, 168
40080651:	2b4153        	ssi	f5, a1, 172
40080654:	2c4163        	ssi	f6, a1, 176
40080657:	2d4173        	ssi	f7, a1, 180
4008065a:	2e4183        	ssi	f8, a1, 184
4008065d:	2f4193        	ssi	f9, a1, 188
40080660:	3041a3        	ssi	f10, a1, 192
40080663:	3141b3        	ssi	f11, a1, 196
40080666:	3241c3        	ssi	f12, a1, 200
40080669:	3341d3        	ssi	f13, a1, 204
4008066c:	3441e3        	ssi	f14, a1, 208
4008066f:	3541f3        	ssi	f15, a1, 212
40080672:	366102        	s32i	a0, a1, 216
40080675:	03e620        	rsr.ps	a2
40080678:	ff6301        	l32r	a0, 40080404 <_init_end+0x4>
4008067b:	103200        	and	a3, a2, a0
4008067e:	0233f6        	bgeui	a3, 3, 40080684 <save_context+0xd8>
40080681:	ff6131        	l32r	a3, 40080408 <_init_end+0x8>
40080684:	ff6201        	l32r	a0, 4008040c <_init_end+0xc>
40080687:	203300        	or	a3, a3, a0
4008068a:	13e630        	wsr.ps	a3
4008068d:	03b100        	rsr.epc1	a0
40080690:	01d112        	addmi	a1, a1, 0x100
40080693:	10ccc0        	and	a12, a12, a12
40080696:	408030        	rotw	3
40080699:	10ccc0        	and	a12, a12, a12
4008069c:	408030        	rotw	3
4008069f:	10ccc0        	and	a12, a12, a12
400806a2:	408030        	rotw	3
400806a5:	10ccc0        	and	a12, a12, a12
400806a8:	408030        	rotw	3
400806ab:	10ccc0        	and	a12, a12, a12
400806ae:	408040        	rotw	4
400806b1:	ffd112        	addmi	a1, a1, 0xffffff00
400806b4:	13e620        	wsr.ps	a2
400806b7:	002010        	rsync
400806ba:	13b100        	wsr.epc1	a0
400806bd:	362102        	l32i	a0, a1, 216
400806c0:	000080        	ret
400806c3:	0041f0        	break	1, 15
	...

400806c8 <restore_context>:
400806c8:	122132        	l32i	a3, a1, 72
400806cb:	130330        	wsr.sar	a3
400806ce:	152132        	l32i	a3, a1, 84
400806d1:	130030        	wsr.lbeg	a3
400806d4:	162132        	l32i	a3, a1, 88
400806d7:	130130        	wsr.lend	a3
400806da:	172132        	l32i	a3, a1, 92
400806dd:	130230        	wsr.lcount	a3
400806e0:	182132        	l32i	a3, a1, 96
400806e3:	f3e730        	wur.threadptr	a3
400806e6:	192132        	l32i	a3, a1, 100
400806e9:	130c30        	wsr.scompare1	a3
400806ec:	1a2132        	l32i	a3, a1, 104
400806ef:	130430        	wsr.br	a3
400806f2:	1b2132        	l32i	a3, a1, 108
400806f5:	131030        	wsr.acclo	a3
400806f8:	1c2132        	l32i	a3, a1, 112
400806fb:	131130        	wsr.acchi	a3
400806fe:	1d2132        	l32i	a3, a1, 116
40080701:	132030        	wsr.m0	a3
40080704:	1e2132        	l32i	a3, a1, 120
40080707:	132130        	wsr.m1	a3
4008070a:	1f2132        	l32i	a3, a1, 124
4008070d:	132230        	wsr.m2	a3
40080710:	202132        	l32i	a3, a1, 128
40080713:	132330        	wsr.m3	a3
40080716:	212132        	l32i	a3, a1, 132
40080719:	f3ea30        	wur.f64r_lo	a3
4008071c:	222132        	l32i	a3, a1, 136
4008071f:	f3eb30        	wur.f64r_hi	a3
40080722:	232132        	l32i	a3, a1, 140
40080725:	f3ec30        	wur.f64s	a3
40080728:	242132        	l32i	a3, a1, 144
4008072b:	f3e830        	wur.fcr	a3
4008072e:	252132        	l32i	a3, a1, 148
40080731:	f3e930        	wur.fsr	a3
40080734:	260103        	lsi	f0, a1, 152
40080737:	270113        	lsi	f1, a1, 156
4008073a:	280123        	lsi	f2, a1, 160
4008073d:	290133        	lsi	f3, a1, 164
40080740:	2a0143        	lsi	f4, a1, 168
40080743:	2b0153        	lsi	f5, a1, 172
40080746:	2c0163        	lsi	f6, a1, 176
40080749:	2d0173        	lsi	f7, a1, 180
4008074c:	2e0183        	lsi	f8, a1, 184
4008074f:	2f0193        	lsi	f9, a1, 188
40080752:	3001a3        	lsi	f10, a1, 192
40080755:	3101b3        	lsi	f11, a1, 196
40080758:	3201c3        	lsi	f12, a1, 200
4008075b:	3301d3        	lsi	f13, a1, 204
4008075e:	3401e3        	lsi	f14, a1, 208
40080761:	3501f3        	lsi	f15, a1, 212
40080764:	042122        	l32i	a2, a1, 16
40080767:	052132        	l32i	a3, a1, 20
4008076a:	062142        	l32i	a4, a1, 24
4008076d:	072152        	l32i	a5, a1, 28
40080770:	082162        	l32i	a6, a1, 32
40080773:	092172        	l32i	a7, a1, 36
40080776:	0a2182        	l32i	a8, a1, 40
40080779:	0b2192        	l32i	a9, a1, 44
4008077c:	0c21a2        	l32i	a10, a1, 48
4008077f:	0d21b2        	l32i	a11, a1, 52
40080782:	0e21c2        	l32i	a12, a1, 56
40080785:	0f21d2        	l32i	a13, a1, 60
40080788:	1021e2        	l32i	a14, a1, 64
4008078b:	1121f2        	l32i	a15, a1, 68
4008078e:	000080        	ret
40080791:	0041f0        	break	1, 15

40080794 <__default_naked_exception>:
40080794:	200110        	or	a0, a1, a1
40080797:	ffd112        	addmi	a1, a1, 0xffffff00
4008079a:	036102        	s32i	a0, a1, 12
4008079d:	49d100        	s32e	a0, a1, -12
400807a0:	03e600        	rsr.ps	a0
400807a3:	016102        	s32i	a0, a1, 4
400807a6:	03e800        	rsr.exccause	a0
400807a9:	136102        	s32i	a0, a1, 76
400807ac:	03ee00        	rsr.excvaddr	a0
400807af:	146102        	s32i	a0, a1, 80
400807b2:	03b100        	rsr.epc1	a0
400807b5:	006102        	s32i	a0, a1, 0
400807b8:	49c100        	s32e	a0, a1, -16
400807bb:	03d100        	rsr.excsave1	a0
400807be:	026102        	s32i	a0, a1, 8
400807c1:	ffde85        	call0	400805ac <save_context>
400807c4:	ff1301        	l32r	a0, 40080410 <_init_end+0x10>
400807c7:	13e600        	wsr.ps	a0
400807ca:	002010        	rsync
400807cd:	132162        	l32i	a6, a1, 76
400807d0:	084626        	beqi	a6, 4, 400807dc <__default_naked_exception+0x48>
400807d3:	207110        	or	a7, a1, a1
400807d6:	003615        	call4	40080b38 <__exception>
400807d9:	000446        	j	400807ee <.RestoreContext>
400807dc:	ff0e01        	l32r	a0, 40080414 <_init_end+0x14>
400807df:	13e600        	wsr.ps	a0
400807e2:	002010        	rsync
400807e5:	01a062        	movi	a6, 1
400807e8:	207110        	or	a7, a1, a1
400807eb:	00a755        	call4	40081260 <__level_1_interrupt>

400807ee <.RestoreContext>:
400807ee:	ffed85        	call0	400806c8 <restore_context>
400807f1:	012102        	l32i	a0, a1, 4
400807f4:	13e600        	wsr.ps	a0
400807f7:	002102        	l32i	a0, a1, 0
400807fa:	13b100        	wsr.epc1	a0
400807fd:	022102        	l32i	a0, a1, 8
40080800:	032112        	l32i	a1, a1, 12
40080803:	002010        	rsync
40080806:	003000        	rfe
40080809:	0041f0        	break	1, 15

4008080c <__default_naked_double_exception>:
4008080c:	200110        	or	a0, a1, a1
4008080f:	ffd112        	addmi	a1, a1, 0xffffff00
40080812:	036102        	s32i	a0, a1, 12
40080815:	49d100        	s32e	a0, a1, -12
40080818:	03e600        	rsr.ps	a0
4008081b:	016102        	s32i	a0, a1, 4
4008081e:	03e800        	rsr.exccause	a0
40080821:	136102        	s32i	a0, a1, 76
40080824:	03ee00        	rsr.excvaddr	a0
40080827:	146102        	s32i	a0, a1, 80
4008082a:	03c000        	rsr.depc	a0
4008082d:	006102        	s32i	a0, a1, 0
40080830:	49c100        	s32e	a0, a1, -16
40080833:	03d700        	rsr.excsave7	a0
40080836:	026102        	s32i	a0, a1, 8
40080839:	ffd705        	call0	400805ac <save_context>
4008083c:	132162        	l32i	a6, a1, 76
4008083f:	207110        	or	a7, a1, a1
40080842:	002f55        	call4	40080b38 <__exception>
40080845:	ffe805        	call0	400806c8 <restore_context>
40080848:	012102        	l32i	a0, a1, 4
4008084b:	13e600        	wsr.ps	a0
4008084e:	002102        	l32i	a0, a1, 0
40080851:	13b100        	wsr.epc1	a0
40080854:	022102        	l32i	a0, a1, 8
40080857:	032112        	l32i	a1, a1, 12
4008085a:	002010        	rsync
4008085d:	003200        	rfde
40080860:	0041f0        	break	1, 15
	...

40080864 <__default_naked_level_2_interrupt>:
40080864:	200110        	or	a0, a1, a1
40080867:	ffd112        	addmi	a1, a1, 0xffffff00
4008086a:	036102        	s32i	a0, a1, 12
4008086d:	49d100        	s32e	a0, a1, -12
40080870:	03c200        	rsr.eps2	a0
40080873:	016102        	s32i	a0, a1, 4
40080876:	03b200        	rsr.epc2	a0
40080879:	006102        	s32i	a0, a1, 0
4008087c:	49c100        	s32e	a0, a1, -16
4008087f:	03d200        	rsr.excsave2	a0
40080882:	026102        	s32i	a0, a1, 8
40080885:	ffd245        	call0	400805ac <save_context>
40080888:	fee401        	l32r	a0, 40080418 <_init_end+0x18>
4008088b:	13e600        	wsr.ps	a0
4008088e:	002010        	rsync
40080891:	02a062        	movi	a6, 2
40080894:	207110        	or	a7, a1, a1
40080897:	009c95        	call4	40081260 <__level_1_interrupt>
4008089a:	ffe2c5        	call0	400806c8 <restore_context>
4008089d:	012102        	l32i	a0, a1, 4
400808a0:	13c200        	wsr.eps2	a0
400808a3:	002102        	l32i	a0, a1, 0
400808a6:	13b200        	wsr.epc2	a0
400808a9:	022102        	l32i	a0, a1, 8
400808ac:	032112        	l32i	a1, a1, 12
400808af:	002010        	rsync
400808b2:	003210        	rfi	2
400808b5:	0041f0        	break	1, 15

400808b8 <__default_naked_level_3_interrupt>:
400808b8:	200110        	or	a0, a1, a1
400808bb:	ffd112        	addmi	a1, a1, 0xffffff00
400808be:	036102        	s32i	a0, a1, 12
400808c1:	49d100        	s32e	a0, a1, -12
400808c4:	03c300        	rsr.eps3	a0
400808c7:	016102        	s32i	a0, a1, 4
400808ca:	03b300        	rsr.epc3	a0
400808cd:	006102        	s32i	a0, a1, 0
400808d0:	49c100        	s32e	a0, a1, -16
400808d3:	03d300        	rsr.excsave3	a0
400808d6:	026102        	s32i	a0, a1, 8
400808d9:	ffcd05        	call0	400805ac <save_context>
400808dc:	fecd01        	l32r	a0, 40080410 <_init_end+0x10>
400808df:	13e600        	wsr.ps	a0
400808e2:	002010        	rsync
400808e5:	03a062        	movi	a6, 3
400808e8:	207110        	or	a7, a1, a1
400808eb:	009755        	call4	40081260 <__level_1_interrupt>
400808ee:	ffdd85        	call0	400806c8 <restore_context>
400808f1:	012102        	l32i	a0, a1, 4
400808f4:	13c300        	wsr.eps3	a0
400808f7:	002102        	l32i	a0, a1, 0
400808fa:	13b300        	wsr.epc3	a0
400808fd:	022102        	l32i	a0, a1, 8
40080900:	032112        	l32i	a1, a1, 12
40080903:	002010        	rsync
40080906:	003310        	rfi	3
40080909:	0041f0        	break	1, 15

4008090c <__default_naked_level_4_interrupt>:
4008090c:	200110        	or	a0, a1, a1
4008090f:	ffd112        	addmi	a1, a1, 0xffffff00
40080912:	036102        	s32i	a0, a1, 12
40080915:	49d100        	s32e	a0, a1, -12
40080918:	03c400        	rsr.eps4	a0
4008091b:	016102        	s32i	a0, a1, 4
4008091e:	03b400        	rsr.epc4	a0
40080921:	006102        	s32i	a0, a1, 0
40080924:	49c100        	s32e	a0, a1, -16
40080927:	03d400        	rsr.excsave4	a0
4008092a:	026102        	s32i	a0, a1, 8
4008092d:	ffc7c5        	call0	400805ac <save_context>
40080930:	febb01        	l32r	a0, 4008041c <_init_end+0x1c>
40080933:	13e600        	wsr.ps	a0
40080936:	002010        	rsync
40080939:	04a062        	movi	a6, 4
4008093c:	207110        	or	a7, a1, a1
4008093f:	ffc2d5        	call4	4008056c <__level_4_interrupt>
40080942:	ffd845        	call0	400806c8 <restore_context>
40080945:	012102        	l32i	a0, a1, 4
40080948:	13c400        	wsr.eps4	a0
4008094b:	002102        	l32i	a0, a1, 0
4008094e:	13b400        	wsr.epc4	a0
40080951:	022102        	l32i	a0, a1, 8
40080954:	032112        	l32i	a1, a1, 12
40080957:	002010        	rsync
4008095a:	003410        	rfi	4
4008095d:	0041f0        	break	1, 15

40080960 <__default_naked_level_5_interrupt>:
40080960:	200110        	or	a0, a1, a1
40080963:	ffd112        	addmi	a1, a1, 0xffffff00
40080966:	036102        	s32i	a0, a1, 12
40080969:	49d100        	s32e	a0, a1, -12
4008096c:	03c500        	rsr.eps5	a0
4008096f:	016102        	s32i	a0, a1, 4
40080972:	03b500        	rsr.epc5	a0
40080975:	006102        	s32i	a0, a1, 0
40080978:	49c100        	s32e	a0, a1, -16
4008097b:	03d500        	rsr.excsave5	a0
4008097e:	026102        	s32i	a0, a1, 8
40080981:	ffc285        	call0	400805ac <save_context>
40080984:	fea701        	l32r	a0, 40080420 <_init_end+0x20>
40080987:	13e600        	wsr.ps	a0
4008098a:	002010        	rsync
4008098d:	05a062        	movi	a6, 5
40080990:	207110        	or	a7, a1, a1
40080993:	ffbe95        	call4	4008057c <__level_5_interrupt>
40080996:	ffd305        	call0	400806c8 <restore_context>
40080999:	012102        	l32i	a0, a1, 4
4008099c:	13c500        	wsr.eps5	a0
4008099f:	002102        	l32i	a0, a1, 0
400809a2:	13b500        	wsr.epc5	a0
400809a5:	022102        	l32i	a0, a1, 8
400809a8:	032112        	l32i	a1, a1, 12
400809ab:	002010        	rsync
400809ae:	003510        	rfi	5
400809b1:	0041f0        	break	1, 15

400809b4 <__default_naked_level_6_interrupt>:
400809b4:	200110        	or	a0, a1, a1
400809b7:	ffd112        	addmi	a1, a1, 0xffffff00
400809ba:	036102        	s32i	a0, a1, 12
400809bd:	49d100        	s32e	a0, a1, -12
400809c0:	03c600        	rsr.eps6	a0
400809c3:	016102        	s32i	a0, a1, 4
400809c6:	03b600        	rsr.epc6	a0
400809c9:	006102        	s32i	a0, a1, 0
400809cc:	49c100        	s32e	a0, a1, -16
400809cf:	03d600        	rsr.excsave6	a0
400809d2:	026102        	s32i	a0, a1, 8
400809d5:	ffbd45        	call0	400805ac <save_context>
400809d8:	fe9301        	l32r	a0, 40080424 <_init_end+0x24>
400809db:	13e600        	wsr.ps	a0
400809de:	002010        	rsync
400809e1:	06a062        	movi	a6, 6
400809e4:	207110        	or	a7, a1, a1
400809e7:	ffba55        	call4	4008058c <__level_6_interrupt>
400809ea:	ffcdc5        	call0	400806c8 <restore_context>
400809ed:	012102        	l32i	a0, a1, 4
400809f0:	13c600        	wsr.eps6	a0
400809f3:	002102        	l32i	a0, a1, 0
400809f6:	13b600        	wsr.epc6	a0
400809f9:	022102        	l32i	a0, a1, 8
400809fc:	032112        	l32i	a1, a1, 12
400809ff:	002010        	rsync
40080a02:	003610        	rfi	6
40080a05:	0041f0        	break	1, 15

40080a08 <__default_naked_level_7_interrupt>:
40080a08:	200110        	or	a0, a1, a1
40080a0b:	ffd112        	addmi	a1, a1, 0xffffff00
40080a0e:	036102        	s32i	a0, a1, 12
40080a11:	49d100        	s32e	a0, a1, -12
40080a14:	03c700        	rsr.eps7	a0
40080a17:	016102        	s32i	a0, a1, 4
40080a1a:	03b700        	rsr.epc7	a0
40080a1d:	006102        	s32i	a0, a1, 0
40080a20:	49c100        	s32e	a0, a1, -16
40080a23:	03d700        	rsr.excsave7	a0
40080a26:	026102        	s32i	a0, a1, 8
40080a29:	ffb805        	call0	400805ac <save_context>
40080a2c:	fe7f01        	l32r	a0, 40080428 <_init_end+0x28>
40080a2f:	13e600        	wsr.ps	a0
40080a32:	002010        	rsync
40080a35:	07a062        	movi	a6, 7
40080a38:	207110        	or	a7, a1, a1
40080a3b:	ffb615        	call4	4008059c <__level_7_interrupt>
40080a3e:	ffc885        	call0	400806c8 <restore_context>
40080a41:	012102        	l32i	a0, a1, 4
40080a44:	13c700        	wsr.eps7	a0
40080a47:	002102        	l32i	a0, a1, 0
40080a4a:	13b700        	wsr.epc7	a0
40080a4d:	022102        	l32i	a0, a1, 8
40080a50:	032112        	l32i	a1, a1, 12
40080a53:	002010        	rsync
40080a56:	003710        	rfi	7
40080a59:	0041f0        	break	1, 15

40080a5c <__default_exception>:
40080a5c:	004136        	entry	a1, 32
40080a5f:	fe7381        	l32r	a8, 4008042c <_init_end+0x2c>
40080a62:	02ad      	mov.n	a10, a2
40080a64:	03bd      	mov.n	a11, a3
40080a66:	0008e0        	callx8	a8
40080a69:	f01d      	retw.n
	...

40080a6c <__default_user_exception>:
40080a6c:	00a136        	entry	a1, 80
40080a6f:	1139      	s32i.n	a3, a1, 4
40080a71:	0129      	s32i.n	a2, a1, 0
40080a73:	280c      	movi.n	a8, 2
40080a75:	7189      	s32i.n	a8, a1, 28
40080a77:	20c192        	addi	a9, a1, 32
40080a7a:	6199      	s32i.n	a9, a1, 24
40080a7c:	5189      	s32i.n	a8, a1, 20
40080a7e:	fe6c91        	l32r	a9, 40080430 <_init_end+0x30>
40080a81:	4199      	s32i.n	a9, a1, 16
40080a83:	3189      	s32i.n	a8, a1, 12
40080a85:	fe6b81        	l32r	a8, 40080434 <_init_end+0x34>
40080a88:	2189      	s32i.n	a8, a1, 8
40080a8a:	fe6b81        	l32r	a8, 40080438 <_init_end+0x38>
40080a8d:	b189      	s32i.n	a8, a1, 44
40080a8f:	04c182        	addi	a8, a1, 4
40080a92:	a189      	s32i.n	a8, a1, 40
40080a94:	fe6a81        	l32r	a8, 4008043c <_init_end+0x3c>
40080a97:	9189      	s32i.n	a8, a1, 36
40080a99:	00c182        	addi	a8, a1, 0
40080a9c:	8189      	s32i.n	a8, a1, 32
40080a9e:	08c1a2        	addi	a10, a1, 8
40080aa1:	fe67b1        	l32r	a11, 40080440 <_init_end+0x40>
40080aa4:	fe6881        	l32r	a8, 40080444 <_init_end+0x44>
40080aa7:	0008e0        	callx8	a8
40080aaa:	0041f0        	break	1, 15
40080aad:	0020f0        	nop

40080ab0 <__default_interrupt>:
40080ab0:	00a136        	entry	a1, 80
40080ab3:	1139      	s32i.n	a3, a1, 4
40080ab5:	0129      	s32i.n	a2, a1, 0
40080ab7:	280c      	movi.n	a8, 2
40080ab9:	7189      	s32i.n	a8, a1, 28
40080abb:	20c192        	addi	a9, a1, 32
40080abe:	6199      	s32i.n	a9, a1, 24
40080ac0:	5189      	s32i.n	a8, a1, 20
40080ac2:	fe5b91        	l32r	a9, 40080430 <_init_end+0x30>
40080ac5:	4199      	s32i.n	a9, a1, 16
40080ac7:	3189      	s32i.n	a8, a1, 12
40080ac9:	fe5f81        	l32r	a8, 40080448 <_init_end+0x48>
40080acc:	2189      	s32i.n	a8, a1, 8
40080ace:	fe5a81        	l32r	a8, 40080438 <_init_end+0x38>
40080ad1:	b189      	s32i.n	a8, a1, 44
40080ad3:	04c182        	addi	a8, a1, 4
40080ad6:	a189      	s32i.n	a8, a1, 40
40080ad8:	fe5d81        	l32r	a8, 4008044c <_init_end+0x4c>
40080adb:	9189      	s32i.n	a8, a1, 36
40080add:	00c182        	addi	a8, a1, 0
40080ae0:	8189      	s32i.n	a8, a1, 32
40080ae2:	08c1a2        	addi	a10, a1, 8
40080ae5:	fe5ab1        	l32r	a11, 40080450 <_init_end+0x50>
40080ae8:	fe5781        	l32r	a8, 40080444 <_init_end+0x44>
40080aeb:	0008e0        	callx8	a8
40080aee:	0041f0        	break	1, 15
40080af1:	0020f0        	nop

40080af4 <__default_double_exception>:
40080af4:	00a136        	entry	a1, 80
40080af7:	1139      	s32i.n	a3, a1, 4
40080af9:	0129      	s32i.n	a2, a1, 0
40080afb:	280c      	movi.n	a8, 2
40080afd:	7189      	s32i.n	a8, a1, 28
40080aff:	20c192        	addi	a9, a1, 32
40080b02:	6199      	s32i.n	a9, a1, 24
40080b04:	5189      	s32i.n	a8, a1, 20
40080b06:	fe4a91        	l32r	a9, 40080430 <_init_end+0x30>
40080b09:	4199      	s32i.n	a9, a1, 16
40080b0b:	3189      	s32i.n	a8, a1, 12
40080b0d:	fe5181        	l32r	a8, 40080454 <_init_end+0x54>
40080b10:	2189      	s32i.n	a8, a1, 8
40080b12:	fe4981        	l32r	a8, 40080438 <_init_end+0x38>
40080b15:	b189      	s32i.n	a8, a1, 44
40080b17:	04c182        	addi	a8, a1, 4
40080b1a:	a189      	s32i.n	a8, a1, 40
40080b1c:	fe4881        	l32r	a8, 4008043c <_init_end+0x3c>
40080b1f:	9189      	s32i.n	a8, a1, 36
40080b21:	00c182        	addi	a8, a1, 0
40080b24:	8189      	s32i.n	a8, a1, 32
40080b26:	08c1a2        	addi	a10, a1, 8
40080b29:	fe4bb1        	l32r	a11, 40080458 <_init_end+0x58>
40080b2c:	fe4681        	l32r	a8, 40080444 <_init_end+0x44>
40080b2f:	0008e0        	callx8	a8
40080b32:	0041f0        	break	1, 15
40080b35:	000000        	ill

40080b38 <__exception>:
40080b38:	022136        	entry	a1, 0x110
40080b3b:	5129      	s32i.n	a2, a1, 20
40080b3d:	fe4781        	l32r	a8, 4008045c <_init_end+0x5c>
40080b40:	9189      	s32i.n	a8, a1, 36
40080b42:	10a182        	movi	a8, 0x110
40080b45:	818a      	add.n	a8, a1, a8
40080b47:	00c882        	addi	a8, a8, 0
40080b4a:	8189      	s32i.n	a8, a1, 32
40080b4c:	fe3c81        	l32r	a8, 4008043c <_init_end+0x3c>
40080b4f:	7189      	s32i.n	a8, a1, 28
40080b51:	14c182        	addi	a8, a1, 20
40080b54:	6189      	s32i.n	a8, a1, 24
40080b56:	eca082        	movi	a8, 236
40080b59:	818a      	add.n	a8, a1, a8
40080b5b:	00c882        	addi	a8, a8, 0
40080b5e:	356182        	s32i	a8, a1, 212
40080b61:	084d      	mov.n	a4, a8
40080b63:	2149      	s32i.n	a4, a1, 8
40080b65:	260c      	movi.n	a6, 2
40080b67:	1f6162        	s32i	a6, a1, 124
40080b6a:	18c182        	addi	a8, a1, 24
40080b6d:	1e6182        	s32i	a8, a1, 120
40080b70:	1d6162        	s32i	a6, a1, 116
40080b73:	fe3b81        	l32r	a8, 40080460 <_init_end+0x60>
40080b76:	1c6182        	s32i	a8, a1, 112
40080b79:	380c      	movi.n	a8, 3
40080b7b:	0189      	s32i.n	a8, a1, 0
40080b7d:	1b6182        	s32i	a8, a1, 108
40080b80:	fe3981        	l32r	a8, 40080464 <_init_end+0x64>
40080b83:	1a6182        	s32i	a8, a1, 104
40080b86:	d4a082        	movi	a8, 212
40080b89:	818a      	add.n	a8, a1, a8
40080b8b:	00c8a2        	addi	a10, a8, 0
40080b8e:	fe36b1        	l32r	a11, 40080468 <_init_end+0x68>
40080b91:	41b9      	s32i.n	a11, a1, 16
40080b93:	68c1c2        	addi	a12, a1, 104
40080b96:	fe3551        	l32r	a5, 4008046c <_init_end+0x6c>
40080b99:	0005e0        	callx8	a5
40080b9c:	fe3581        	l32r	a8, 40080470 <_init_end+0x70>
40080b9f:	3189      	s32i.n	a8, a1, 12
40080ba1:	7189      	s32i.n	a8, a1, 28
40080ba3:	c8a082        	movi	a8, 200
40080ba6:	818a      	add.n	a8, a1, a8
40080ba8:	00c882        	addi	a8, a8, 0
40080bab:	6189      	s32i.n	a8, a1, 24
40080bad:	fe3171        	l32r	a7, 40080474 <_init_end+0x74>
40080bb0:	442182        	l32i	a8, a1, 0x110
40080bb3:	108870        	and	a8, a8, a7
40080bb6:	fe3091        	l32r	a9, 40080478 <_init_end+0x78>
40080bb9:	1199      	s32i.n	a9, a1, 4
40080bbb:	208890        	or	a8, a8, a9
40080bbe:	326182        	s32i	a8, a1, 200
40080bc1:	356142        	s32i	a4, a1, 212
40080bc4:	120c      	movi.n	a2, 1
40080bc6:	1f6122        	s32i	a2, a1, 124
40080bc9:	18c182        	addi	a8, a1, 24
40080bcc:	1e6182        	s32i	a8, a1, 120
40080bcf:	040c      	movi.n	a4, 0
40080bd1:	1c6142        	s32i	a4, a1, 112
40080bd4:	1b6162        	s32i	a6, a1, 108
40080bd7:	fe2931        	l32r	a3, 4008047c <_init_end+0x7c>
40080bda:	1a6132        	s32i	a3, a1, 104
40080bdd:	d4a082        	movi	a8, 212
40080be0:	818a      	add.n	a8, a1, a8
40080be2:	00c8a2        	addi	a10, a8, 0
40080be5:	68c1c2        	addi	a12, a1, 104
40080be8:	41b8      	l32i.n	a11, a1, 16
40080bea:	0005e0        	callx8	a5
40080bed:	3188      	l32i.n	a8, a1, 12
40080bef:	7189      	s32i.n	a8, a1, 28
40080bf1:	039d      	mov.n	a9, a3
40080bf3:	c8a082        	movi	a8, 200
40080bf6:	818a      	add.n	a8, a1, a8
40080bf8:	00c882        	addi	a8, a8, 0
40080bfb:	6189      	s32i.n	a8, a1, 24
40080bfd:	462182        	l32i	a8, a1, 0x118
40080c00:	108870        	and	a8, a8, a7
40080c03:	1138      	l32i.n	a3, a1, 4
40080c05:	208830        	or	a8, a8, a3
40080c08:	326182        	s32i	a8, a1, 200
40080c0b:	2188      	l32i.n	a8, a1, 8
40080c0d:	356182        	s32i	a8, a1, 212
40080c10:	1f6122        	s32i	a2, a1, 124
40080c13:	18c182        	addi	a8, a1, 24
40080c16:	1e6182        	s32i	a8, a1, 120
40080c19:	1c6142        	s32i	a4, a1, 112
40080c1c:	1b6162        	s32i	a6, a1, 108
40080c1f:	3199      	s32i.n	a9, a1, 12
40080c21:	1a6192        	s32i	a9, a1, 104
40080c24:	d4a082        	movi	a8, 212
40080c27:	818a      	add.n	a8, a1, a8
40080c29:	00c8a2        	addi	a10, a8, 0
40080c2c:	68c1c2        	addi	a12, a1, 104
40080c2f:	41b8      	l32i.n	a11, a1, 16
40080c31:	4159      	s32i.n	a5, a1, 16
40080c33:	0005e0        	callx8	a5
40080c36:	186142        	s32i	a4, a1, 96
40080c39:	166142        	s32i	a4, a1, 88
40080c3c:	146142        	s32i	a4, a1, 80
40080c3f:	126142        	s32i	a4, a1, 72
40080c42:	106142        	s32i	a4, a1, 64
40080c45:	e149      	s32i.n	a4, a1, 56
40080c47:	c149      	s32i.n	a4, a1, 48
40080c49:	a149      	s32i.n	a4, a1, 40
40080c4b:	8149      	s32i.n	a4, a1, 32
40080c4d:	6149      	s32i.n	a4, a1, 24
40080c4f:	472182        	l32i	a8, a1, 0x11c
40080c52:	f0c892        	addi	a9, a8, -16
40080c55:	0020c0        	memw
40080c58:	09b8      	l32i.n	a11, a9, 0
40080c5a:	f4c882        	addi	a8, a8, -12
40080c5d:	0020c0        	memw
40080c60:	08a8      	l32i.n	a10, a8, 0
40080c62:	fe0781        	l32r	a8, 40080480 <_init_end+0x80>
40080c65:	10ca80        	and	a12, a10, a8
40080c68:	fe0791        	l32r	a9, 40080484 <_init_end+0x84>
40080c6b:	021c97        	beq	a12, a9, 40080c71 <__exception+0x139>
40080c6e:	005b06        	j	40080dde <__exception+0x2a6>
40080c71:	10bb70        	and	a11, a11, a7
40080c74:	20cb30        	or	a12, a11, a3
40080c77:	71c9      	s32i.n	a12, a1, 28
40080c79:	6129      	s32i.n	a2, a1, 24
40080c7b:	f0cab2        	addi	a11, a10, -16
40080c7e:	0020c0        	memw
40080c81:	0bb8      	l32i.n	a11, a11, 0
40080c83:	f4caa2        	addi	a10, a10, -12
40080c86:	0020c0        	memw
40080c89:	0aa8      	l32i.n	a10, a10, 0
40080c8b:	10bb70        	and	a11, a11, a7
40080c8e:	20bb30        	or	a11, a11, a3
40080c91:	029cb7        	bne	a12, a11, 40080c97 <__exception+0x15f>
40080c94:	005186        	j	40080dde <__exception+0x2a6>
40080c97:	10ca80        	and	a12, a10, a8
40080c9a:	021c97        	beq	a12, a9, 40080ca0 <__exception+0x168>
40080c9d:	004f46        	j	40080dde <__exception+0x2a6>
40080ca0:	91b9      	s32i.n	a11, a1, 36
40080ca2:	8129      	s32i.n	a2, a1, 32
40080ca4:	f0cac2        	addi	a12, a10, -16
40080ca7:	0020c0        	memw
40080caa:	0cd8      	l32i.n	a13, a12, 0
40080cac:	f4caa2        	addi	a10, a10, -12
40080caf:	0020c0        	memw
40080cb2:	0ac8      	l32i.n	a12, a10, 0
40080cb4:	10ad70        	and	a10, a13, a7
40080cb7:	20aa30        	or	a10, a10, a3
40080cba:	029ba7        	bne	a11, a10, 40080cc0 <__exception+0x188>
40080cbd:	004746        	j	40080dde <__exception+0x2a6>
40080cc0:	10bc80        	and	a11, a12, a8
40080cc3:	021b97        	beq	a11, a9, 40080cc9 <__exception+0x191>
40080cc6:	004506        	j	40080dde <__exception+0x2a6>
40080cc9:	b1a9      	s32i.n	a10, a1, 44
40080ccb:	a129      	s32i.n	a2, a1, 40
40080ccd:	f0ccb2        	addi	a11, a12, -16
40080cd0:	0020c0        	memw
40080cd3:	0bb8      	l32i.n	a11, a11, 0
40080cd5:	f4ccc2        	addi	a12, a12, -12
40080cd8:	0020c0        	memw
40080cdb:	0cc8      	l32i.n	a12, a12, 0
40080cdd:	10bb70        	and	a11, a11, a7
40080ce0:	20bb30        	or	a11, a11, a3
40080ce3:	029ab7        	bne	a10, a11, 40080ce9 <__exception+0x1b1>
40080ce6:	003d06        	j	40080dde <__exception+0x2a6>
40080ce9:	10ac80        	and	a10, a12, a8
40080cec:	021a97        	beq	a10, a9, 40080cf2 <__exception+0x1ba>
40080cef:	003ac6        	j	40080dde <__exception+0x2a6>
40080cf2:	d1b9      	s32i.n	a11, a1, 52
40080cf4:	c129      	s32i.n	a2, a1, 48
40080cf6:	f0cca2        	addi	a10, a12, -16
40080cf9:	0020c0        	memw
40080cfc:	0aa8      	l32i.n	a10, a10, 0
40080cfe:	f4ccc2        	addi	a12, a12, -12
40080d01:	0020c0        	memw
40080d04:	0cc8      	l32i.n	a12, a12, 0
40080d06:	10aa70        	and	a10, a10, a7
40080d09:	20aa30        	or	a10, a10, a3
40080d0c:	029ba7        	bne	a11, a10, 40080d12 <__exception+0x1da>
40080d0f:	0032c6        	j	40080dde <__exception+0x2a6>
40080d12:	10bc80        	and	a11, a12, a8
40080d15:	021b97        	beq	a11, a9, 40080d1b <__exception+0x1e3>
40080d18:	003086        	j	40080dde <__exception+0x2a6>
40080d1b:	f1a9      	s32i.n	a10, a1, 60
40080d1d:	e129      	s32i.n	a2, a1, 56
40080d1f:	f0ccb2        	addi	a11, a12, -16
40080d22:	0020c0        	memw
40080d25:	0bb8      	l32i.n	a11, a11, 0
40080d27:	f4ccc2        	addi	a12, a12, -12
40080d2a:	0020c0        	memw
40080d2d:	0cc8      	l32i.n	a12, a12, 0
40080d2f:	10bb70        	and	a11, a11, a7
40080d32:	20bb30        	or	a11, a11, a3
40080d35:	029ab7        	bne	a10, a11, 40080d3b <__exception+0x203>
40080d38:	002886        	j	40080dde <__exception+0x2a6>
40080d3b:	10ac80        	and	a10, a12, a8
40080d3e:	021a97        	beq	a10, a9, 40080d44 <__exception+0x20c>
40080d41:	002646        	j	40080dde <__exception+0x2a6>
40080d44:	1161b2        	s32i	a11, a1, 68
40080d47:	106122        	s32i	a2, a1, 64
40080d4a:	f0cca2        	addi	a10, a12, -16
40080d4d:	0020c0        	memw
40080d50:	0aa8      	l32i.n	a10, a10, 0
40080d52:	f4ccc2        	addi	a12, a12, -12
40080d55:	0020c0        	memw
40080d58:	0cc8      	l32i.n	a12, a12, 0
40080d5a:	10aa70        	and	a10, a10, a7
40080d5d:	20aa30        	or	a10, a10, a3
40080d60:	7a1ba7        	beq	a11, a10, 40080dde <__exception+0x2a6>
40080d63:	10bc80        	and	a11, a12, a8
40080d66:	749b97        	bne	a11, a9, 40080dde <__exception+0x2a6>
40080d69:	1361a2        	s32i	a10, a1, 76
40080d6c:	126122        	s32i	a2, a1, 72
40080d6f:	f0ccb2        	addi	a11, a12, -16
40080d72:	0020c0        	memw
40080d75:	0bb8      	l32i.n	a11, a11, 0
40080d77:	f4ccc2        	addi	a12, a12, -12
40080d7a:	0020c0        	memw
40080d7d:	0cc8      	l32i.n	a12, a12, 0
40080d7f:	10bb70        	and	a11, a11, a7
40080d82:	20bb30        	or	a11, a11, a3
40080d85:	551ab7        	beq	a10, a11, 40080dde <__exception+0x2a6>
40080d88:	10ac80        	and	a10, a12, a8
40080d8b:	4f9a97        	bne	a10, a9, 40080dde <__exception+0x2a6>
40080d8e:	1561b2        	s32i	a11, a1, 84
40080d91:	146122        	s32i	a2, a1, 80
40080d94:	f0cca2        	addi	a10, a12, -16
40080d97:	0020c0        	memw
40080d9a:	0aa8      	l32i.n	a10, a10, 0
40080d9c:	f4ccc2        	addi	a12, a12, -12
40080d9f:	0020c0        	memw
40080da2:	0cc8      	l32i.n	a12, a12, 0
40080da4:	10aa70        	and	a10, a10, a7
40080da7:	20aa30        	or	a10, a10, a3
40080daa:	301ba7        	beq	a11, a10, 40080dde <__exception+0x2a6>
40080dad:	10bc80        	and	a11, a12, a8
40080db0:	2a9b97        	bne	a11, a9, 40080dde <__exception+0x2a6>
40080db3:	1761a2        	s32i	a10, a1, 92
40080db6:	166122        	s32i	a2, a1, 88
40080db9:	f0ccb2        	addi	a11, a12, -16
40080dbc:	0020c0        	memw
40080dbf:	0bb8      	l32i.n	a11, a11, 0
40080dc1:	f4ccc2        	addi	a12, a12, -12
40080dc4:	0020c0        	memw
40080dc7:	0cc8      	l32i.n	a12, a12, 0
40080dc9:	10bb70        	and	a11, a11, a7
40080dcc:	20bb30        	or	a11, a11, a3
40080dcf:	0b1ab7        	beq	a10, a11, 40080dde <__exception+0x2a6>
40080dd2:	108c80        	and	a8, a12, a8
40080dd5:	059897        	bne	a8, a9, 40080dde <__exception+0x2a6>
40080dd8:	1961b2        	s32i	a11, a1, 100
40080ddb:	186122        	s32i	a2, a1, 96
40080dde:	68c1a2        	addi	a10, a1, 104
40080de1:	18c1b2        	addi	a11, a1, 24
40080de4:	0c5c      	movi.n	a12, 80
40080de6:	fda881        	l32r	a8, 40080488 <_init_end+0x88>
40080de9:	0008e0        	callx8	a8
40080dec:	a70c      	movi.n	a7, 10
40080dee:	2f6172        	s32i	a7, a1, 188
40080df1:	2e6122        	s32i	a2, a1, 184
40080df4:	1a2182        	l32i	a8, a1, 104
40080df7:	111826        	beqi	a8, 1, 40080e0c <__exception+0x2d4>
40080dfa:	022866        	bnei	a8, 2, 40080e00 <__exception+0x2c8>
40080dfd:	00f606        	j	400811d9 <__exception+0x6a1>
40080e00:	2e6162        	s32i	a6, a1, 184
40080e03:	1c2182        	l32i	a8, a1, 112
40080e06:	612866        	bnei	a8, 2, 40080e6b <__exception+0x333>
40080e09:	00f306        	j	400811d9 <__exception+0x6a1>
40080e0c:	1b2182        	l32i	a8, a1, 108
40080e0f:	316182        	s32i	a8, a1, 196
40080e12:	fd9781        	l32r	a8, 40080470 <_init_end+0x70>
40080e15:	336182        	s32i	a8, a1, 204
40080e18:	c4a082        	movi	a8, 196
40080e1b:	818a      	add.n	a8, a1, a8
40080e1d:	00c882        	addi	a8, a8, 0
40080e20:	326182        	s32i	a8, a1, 200
40080e23:	eca082        	movi	a8, 236
40080e26:	818a      	add.n	a8, a1, a8
40080e28:	00c882        	addi	a8, a8, 0
40080e2b:	346182        	s32i	a8, a1, 208
40080e2e:	3a6122        	s32i	a2, a1, 232
40080e31:	c8a082        	movi	a8, 200
40080e34:	818a      	add.n	a8, a1, a8
40080e36:	00c882        	addi	a8, a8, 0
40080e39:	396182        	s32i	a8, a1, 228
40080e3c:	376142        	s32i	a4, a1, 220
40080e3f:	366162        	s32i	a6, a1, 216
40080e42:	3188      	l32i.n	a8, a1, 12
40080e44:	356182        	s32i	a8, a1, 212
40080e47:	d0a082        	movi	a8, 208
40080e4a:	818a      	add.n	a8, a1, a8
40080e4c:	00c8a2        	addi	a10, a8, 0
40080e4f:	fd86b1        	l32r	a11, 40080468 <_init_end+0x68>
40080e52:	d4a082        	movi	a8, 212
40080e55:	818a      	add.n	a8, a1, a8
40080e57:	00c8c2        	addi	a12, a8, 0
40080e5a:	4188      	l32i.n	a8, a1, 16
40080e5c:	0008e0        	callx8	a8
40080e5f:	2e6162        	s32i	a6, a1, 184
40080e62:	1c2182        	l32i	a8, a1, 112
40080e65:	022866        	bnei	a8, 2, 40080e6b <__exception+0x333>
40080e68:	00db46        	j	400811d9 <__exception+0x6a1>
40080e6b:	521866        	bnei	a8, 1, 40080ec1 <__exception+0x389>
40080e6e:	1d2182        	l32i	a8, a1, 116
40080e71:	316182        	s32i	a8, a1, 196
40080e74:	fd7f81        	l32r	a8, 40080470 <_init_end+0x70>
40080e77:	336182        	s32i	a8, a1, 204
40080e7a:	c4a082        	movi	a8, 196
40080e7d:	818a      	add.n	a8, a1, a8
40080e7f:	00c882        	addi	a8, a8, 0
40080e82:	326182        	s32i	a8, a1, 200
40080e85:	eca082        	movi	a8, 236
40080e88:	818a      	add.n	a8, a1, a8
40080e8a:	00c882        	addi	a8, a8, 0
40080e8d:	346182        	s32i	a8, a1, 208
40080e90:	3a6122        	s32i	a2, a1, 232
40080e93:	c8a082        	movi	a8, 200
40080e96:	818a      	add.n	a8, a1, a8
40080e98:	00c882        	addi	a8, a8, 0
40080e9b:	396182        	s32i	a8, a1, 228
40080e9e:	376142        	s32i	a4, a1, 220
40080ea1:	366162        	s32i	a6, a1, 216
40080ea4:	3188      	l32i.n	a8, a1, 12
40080ea6:	356182        	s32i	a8, a1, 212
40080ea9:	d0a082        	movi	a8, 208
40080eac:	818a      	add.n	a8, a1, a8
40080eae:	00c8a2        	addi	a10, a8, 0
40080eb1:	fd6db1        	l32r	a11, 40080468 <_init_end+0x68>
40080eb4:	d4a082        	movi	a8, 212
40080eb7:	818a      	add.n	a8, a1, a8
40080eb9:	00c8c2        	addi	a12, a8, 0
40080ebc:	4188      	l32i.n	a8, a1, 16
40080ebe:	0008e0        	callx8	a8
40080ec1:	0188      	l32i.n	a8, a1, 0
40080ec3:	2e6182        	s32i	a8, a1, 184
40080ec6:	1e2182        	l32i	a8, a1, 120
40080ec9:	022866        	bnei	a8, 2, 40080ecf <__exception+0x397>
40080ecc:	00c246        	j	400811d9 <__exception+0x6a1>
40080ecf:	521866        	bnei	a8, 1, 40080f25 <__exception+0x3ed>
40080ed2:	1f2182        	l32i	a8, a1, 124
40080ed5:	316182        	s32i	a8, a1, 196
40080ed8:	fd6681        	l32r	a8, 40080470 <_init_end+0x70>
40080edb:	336182        	s32i	a8, a1, 204
40080ede:	c4a082        	movi	a8, 196
40080ee1:	818a      	add.n	a8, a1, a8
40080ee3:	00c882        	addi	a8, a8, 0
40080ee6:	326182        	s32i	a8, a1, 200
40080ee9:	eca082        	movi	a8, 236
40080eec:	818a      	add.n	a8, a1, a8
40080eee:	00c882        	addi	a8, a8, 0
40080ef1:	346182        	s32i	a8, a1, 208
40080ef4:	3a6122        	s32i	a2, a1, 232
40080ef7:	c8a082        	movi	a8, 200
40080efa:	818a      	add.n	a8, a1, a8
40080efc:	00c882        	addi	a8, a8, 0
40080eff:	396182        	s32i	a8, a1, 228
40080f02:	376142        	s32i	a4, a1, 220
40080f05:	366162        	s32i	a6, a1, 216
40080f08:	3188      	l32i.n	a8, a1, 12
40080f0a:	356182        	s32i	a8, a1, 212
40080f0d:	d0a082        	movi	a8, 208
40080f10:	818a      	add.n	a8, a1, a8
40080f12:	00c8a2        	addi	a10, a8, 0
40080f15:	fd54b1        	l32r	a11, 40080468 <_init_end+0x68>
40080f18:	d4a082        	movi	a8, 212
40080f1b:	818a      	add.n	a8, a1, a8
40080f1d:	00c8c2        	addi	a12, a8, 0
40080f20:	4188      	l32i.n	a8, a1, 16
40080f22:	0008e0        	callx8	a8
40080f25:	480c      	movi.n	a8, 4
40080f27:	2e6182        	s32i	a8, a1, 184
40080f2a:	202182        	l32i	a8, a1, 128
40080f2d:	022866        	bnei	a8, 2, 40080f33 <__exception+0x3fb>
40080f30:	00a946        	j	400811d9 <__exception+0x6a1>
40080f33:	521866        	bnei	a8, 1, 40080f89 <__exception+0x451>
40080f36:	212182        	l32i	a8, a1, 132
40080f39:	316182        	s32i	a8, a1, 196
40080f3c:	fd4d81        	l32r	a8, 40080470 <_init_end+0x70>
40080f3f:	336182        	s32i	a8, a1, 204
40080f42:	c4a082        	movi	a8, 196
40080f45:	818a      	add.n	a8, a1, a8
40080f47:	00c882        	addi	a8, a8, 0
40080f4a:	326182        	s32i	a8, a1, 200
40080f4d:	eca082        	movi	a8, 236
40080f50:	818a      	add.n	a8, a1, a8
40080f52:	00c882        	addi	a8, a8, 0
40080f55:	346182        	s32i	a8, a1, 208
40080f58:	3a6122        	s32i	a2, a1, 232
40080f5b:	c8a082        	movi	a8, 200
40080f5e:	818a      	add.n	a8, a1, a8
40080f60:	00c882        	addi	a8, a8, 0
40080f63:	396182        	s32i	a8, a1, 228
40080f66:	376142        	s32i	a4, a1, 220
40080f69:	366162        	s32i	a6, a1, 216
40080f6c:	3188      	l32i.n	a8, a1, 12
40080f6e:	356182        	s32i	a8, a1, 212
40080f71:	d0a082        	movi	a8, 208
40080f74:	818a      	add.n	a8, a1, a8
40080f76:	00c8a2        	addi	a10, a8, 0
40080f79:	fd3bb1        	l32r	a11, 40080468 <_init_end+0x68>
40080f7c:	d4a082        	movi	a8, 212
40080f7f:	818a      	add.n	a8, a1, a8
40080f81:	00c8c2        	addi	a12, a8, 0
40080f84:	4188      	l32i.n	a8, a1, 16
40080f86:	0008e0        	callx8	a8
40080f89:	580c      	movi.n	a8, 5
40080f8b:	2e6182        	s32i	a8, a1, 184
40080f8e:	222182        	l32i	a8, a1, 136
40080f91:	022866        	bnei	a8, 2, 40080f97 <__exception+0x45f>
40080f94:	009046        	j	400811d9 <__exception+0x6a1>
40080f97:	521866        	bnei	a8, 1, 40080fed <__exception+0x4b5>
40080f9a:	232182        	l32i	a8, a1, 140
40080f9d:	316182        	s32i	a8, a1, 196
40080fa0:	fd3481        	l32r	a8, 40080470 <_init_end+0x70>
40080fa3:	336182        	s32i	a8, a1, 204
40080fa6:	c4a082        	movi	a8, 196
40080fa9:	818a      	add.n	a8, a1, a8
40080fab:	00c882        	addi	a8, a8, 0
40080fae:	326182        	s32i	a8, a1, 200
40080fb1:	eca082        	movi	a8, 236
40080fb4:	818a      	add.n	a8, a1, a8
40080fb6:	00c882        	addi	a8, a8, 0
40080fb9:	346182        	s32i	a8, a1, 208
40080fbc:	3a6122        	s32i	a2, a1, 232
40080fbf:	c8a082        	movi	a8, 200
40080fc2:	818a      	add.n	a8, a1, a8
40080fc4:	00c882        	addi	a8, a8, 0
40080fc7:	396182        	s32i	a8, a1, 228
40080fca:	376142        	s32i	a4, a1, 220
40080fcd:	366162        	s32i	a6, a1, 216
40080fd0:	3188      	l32i.n	a8, a1, 12
40080fd2:	356182        	s32i	a8, a1, 212
40080fd5:	d0a082        	movi	a8, 208
40080fd8:	818a      	add.n	a8, a1, a8
40080fda:	00c8a2        	addi	a10, a8, 0
40080fdd:	fd22b1        	l32r	a11, 40080468 <_init_end+0x68>
40080fe0:	d4a082        	movi	a8, 212
40080fe3:	818a      	add.n	a8, a1, a8
40080fe5:	00c8c2        	addi	a12, a8, 0
40080fe8:	4188      	l32i.n	a8, a1, 16
40080fea:	0008e0        	callx8	a8
40080fed:	680c      	movi.n	a8, 6
40080fef:	2e6182        	s32i	a8, a1, 184
40080ff2:	242182        	l32i	a8, a1, 144
40080ff5:	022866        	bnei	a8, 2, 40080ffb <__exception+0x4c3>
40080ff8:	007746        	j	400811d9 <__exception+0x6a1>
40080ffb:	521866        	bnei	a8, 1, 40081051 <__exception+0x519>
40080ffe:	252182        	l32i	a8, a1, 148
40081001:	316182        	s32i	a8, a1, 196
40081004:	fd1b81        	l32r	a8, 40080470 <_init_end+0x70>
40081007:	336182        	s32i	a8, a1, 204
4008100a:	c4a082        	movi	a8, 196
4008100d:	818a      	add.n	a8, a1, a8
4008100f:	00c882        	addi	a8, a8, 0
40081012:	326182        	s32i	a8, a1, 200
40081015:	eca082        	movi	a8, 236
40081018:	818a      	add.n	a8, a1, a8
4008101a:	00c882        	addi	a8, a8, 0
4008101d:	346182        	s32i	a8, a1, 208
40081020:	3a6122        	s32i	a2, a1, 232
40081023:	c8a082        	movi	a8, 200
40081026:	818a      	add.n	a8, a1, a8
40081028:	00c882        	addi	a8, a8, 0
4008102b:	396182        	s32i	a8, a1, 228
4008102e:	376142        	s32i	a4, a1, 220
40081031:	366162        	s32i	a6, a1, 216
40081034:	3188      	l32i.n	a8, a1, 12
40081036:	356182        	s32i	a8, a1, 212
40081039:	d0a082        	movi	a8, 208
4008103c:	818a      	add.n	a8, a1, a8
4008103e:	00c8a2        	addi	a10, a8, 0
40081041:	fd09b1        	l32r	a11, 40080468 <_init_end+0x68>
40081044:	d4a082        	movi	a8, 212
40081047:	818a      	add.n	a8, a1, a8
40081049:	00c8c2        	addi	a12, a8, 0
4008104c:	4188      	l32i.n	a8, a1, 16
4008104e:	0008e0        	callx8	a8
40081051:	780c      	movi.n	a8, 7
40081053:	2e6182        	s32i	a8, a1, 184
40081056:	262182        	l32i	a8, a1, 152
40081059:	022866        	bnei	a8, 2, 4008105f <__exception+0x527>
4008105c:	005e46        	j	400811d9 <__exception+0x6a1>
4008105f:	521866        	bnei	a8, 1, 400810b5 <__exception+0x57d>
40081062:	272182        	l32i	a8, a1, 156
40081065:	316182        	s32i	a8, a1, 196
40081068:	fd0281        	l32r	a8, 40080470 <_init_end+0x70>
4008106b:	336182        	s32i	a8, a1, 204
4008106e:	c4a082        	movi	a8, 196
40081071:	818a      	add.n	a8, a1, a8
40081073:	00c882        	addi	a8, a8, 0
40081076:	326182        	s32i	a8, a1, 200
40081079:	eca082        	movi	a8, 236
4008107c:	818a      	add.n	a8, a1, a8
4008107e:	00c882        	addi	a8, a8, 0
40081081:	346182        	s32i	a8, a1, 208
40081084:	3a6122        	s32i	a2, a1, 232
40081087:	c8a082        	movi	a8, 200
4008108a:	818a      	add.n	a8, a1, a8
4008108c:	00c882        	addi	a8, a8, 0
4008108f:	396182        	s32i	a8, a1, 228
40081092:	376142        	s32i	a4, a1, 220
40081095:	366162        	s32i	a6, a1, 216
40081098:	3188      	l32i.n	a8, a1, 12
4008109a:	356182        	s32i	a8, a1, 212
4008109d:	d0a082        	movi	a8, 208
400810a0:	818a      	add.n	a8, a1, a8
400810a2:	00c8a2        	addi	a10, a8, 0
400810a5:	fcf0b1        	l32r	a11, 40080468 <_init_end+0x68>
400810a8:	d4a082        	movi	a8, 212
400810ab:	818a      	add.n	a8, a1, a8
400810ad:	00c8c2        	addi	a12, a8, 0
400810b0:	4188      	l32i.n	a8, a1, 16
400810b2:	0008e0        	callx8	a8
400810b5:	880c      	movi.n	a8, 8
400810b7:	2e6182        	s32i	a8, a1, 184
400810ba:	282182        	l32i	a8, a1, 160
400810bd:	022866        	bnei	a8, 2, 400810c3 <__exception+0x58b>
400810c0:	004546        	j	400811d9 <__exception+0x6a1>
400810c3:	521866        	bnei	a8, 1, 40081119 <__exception+0x5e1>
400810c6:	292182        	l32i	a8, a1, 164
400810c9:	316182        	s32i	a8, a1, 196
400810cc:	fce981        	l32r	a8, 40080470 <_init_end+0x70>
400810cf:	336182        	s32i	a8, a1, 204
400810d2:	c4a082        	movi	a8, 196
400810d5:	818a      	add.n	a8, a1, a8
400810d7:	00c882        	addi	a8, a8, 0
400810da:	326182        	s32i	a8, a1, 200
400810dd:	eca082        	movi	a8, 236
400810e0:	818a      	add.n	a8, a1, a8
400810e2:	00c882        	addi	a8, a8, 0
400810e5:	346182        	s32i	a8, a1, 208
400810e8:	3a6122        	s32i	a2, a1, 232
400810eb:	c8a082        	movi	a8, 200
400810ee:	818a      	add.n	a8, a1, a8
400810f0:	00c882        	addi	a8, a8, 0
400810f3:	396182        	s32i	a8, a1, 228
400810f6:	376142        	s32i	a4, a1, 220
400810f9:	366162        	s32i	a6, a1, 216
400810fc:	3188      	l32i.n	a8, a1, 12
400810fe:	356182        	s32i	a8, a1, 212
40081101:	d0a082        	movi	a8, 208
40081104:	818a      	add.n	a8, a1, a8
40081106:	00c8a2        	addi	a10, a8, 0
40081109:	fcd7b1        	l32r	a11, 40080468 <_init_end+0x68>
4008110c:	d4a082        	movi	a8, 212
4008110f:	818a      	add.n	a8, a1, a8
40081111:	00c8c2        	addi	a12, a8, 0
40081114:	4188      	l32i.n	a8, a1, 16
40081116:	0008e0        	callx8	a8
40081119:	980c      	movi.n	a8, 9
4008111b:	2e6182        	s32i	a8, a1, 184
4008111e:	2a2182        	l32i	a8, a1, 168
40081121:	022866        	bnei	a8, 2, 40081127 <__exception+0x5ef>
40081124:	002c46        	j	400811d9 <__exception+0x6a1>
40081127:	521866        	bnei	a8, 1, 4008117d <__exception+0x645>
4008112a:	2b2182        	l32i	a8, a1, 172
4008112d:	316182        	s32i	a8, a1, 196
40081130:	fcd081        	l32r	a8, 40080470 <_init_end+0x70>
40081133:	336182        	s32i	a8, a1, 204
40081136:	c4a082        	movi	a8, 196
40081139:	818a      	add.n	a8, a1, a8
4008113b:	00c882        	addi	a8, a8, 0
4008113e:	326182        	s32i	a8, a1, 200
40081141:	eca082        	movi	a8, 236
40081144:	818a      	add.n	a8, a1, a8
40081146:	00c882        	addi	a8, a8, 0
40081149:	346182        	s32i	a8, a1, 208
4008114c:	3a6122        	s32i	a2, a1, 232
4008114f:	c8a082        	movi	a8, 200
40081152:	818a      	add.n	a8, a1, a8
40081154:	00c882        	addi	a8, a8, 0
40081157:	396182        	s32i	a8, a1, 228
4008115a:	376142        	s32i	a4, a1, 220
4008115d:	366162        	s32i	a6, a1, 216
40081160:	3188      	l32i.n	a8, a1, 12
40081162:	356182        	s32i	a8, a1, 212
40081165:	d0a082        	movi	a8, 208
40081168:	818a      	add.n	a8, a1, a8
4008116a:	00c8a2        	addi	a10, a8, 0
4008116d:	fcbeb1        	l32r	a11, 40080468 <_init_end+0x68>
40081170:	d4a082        	movi	a8, 212
40081173:	818a      	add.n	a8, a1, a8
40081175:	00c8c2        	addi	a12, a8, 0
40081178:	4188      	l32i.n	a8, a1, 16
4008117a:	0008e0        	callx8	a8
4008117d:	2e6172        	s32i	a7, a1, 184
40081180:	2c2182        	l32i	a8, a1, 176
40081183:	521866        	bnei	a8, 1, 400811d9 <__exception+0x6a1>
40081186:	2d2182        	l32i	a8, a1, 180
40081189:	316182        	s32i	a8, a1, 196
4008118c:	fcb981        	l32r	a8, 40080470 <_init_end+0x70>
4008118f:	336182        	s32i	a8, a1, 204
40081192:	c4a082        	movi	a8, 196
40081195:	818a      	add.n	a8, a1, a8
40081197:	00c882        	addi	a8, a8, 0
4008119a:	326182        	s32i	a8, a1, 200
4008119d:	eca082        	movi	a8, 236
400811a0:	818a      	add.n	a8, a1, a8
400811a2:	00c882        	addi	a8, a8, 0
400811a5:	346182        	s32i	a8, a1, 208
400811a8:	3a6122        	s32i	a2, a1, 232
400811ab:	c8a082        	movi	a8, 200
400811ae:	818a      	add.n	a8, a1, a8
400811b0:	00c882        	addi	a8, a8, 0
400811b3:	396182        	s32i	a8, a1, 228
400811b6:	376142        	s32i	a4, a1, 220
400811b9:	366162        	s32i	a6, a1, 216
400811bc:	3188      	l32i.n	a8, a1, 12
400811be:	356182        	s32i	a8, a1, 212
400811c1:	d0a082        	movi	a8, 208
400811c4:	818a      	add.n	a8, a1, a8
400811c6:	00c8a2        	addi	a10, a8, 0
400811c9:	fca7b1        	l32r	a11, 40080468 <_init_end+0x68>
400811cc:	d4a082        	movi	a8, 212
400811cf:	818a      	add.n	a8, a1, a8
400811d1:	00c8c2        	addi	a12, a8, 0
400811d4:	4188      	l32i.n	a8, a1, 16
400811d6:	0008e0        	callx8	a8
400811d9:	eca082        	movi	a8, 236
400811dc:	818a      	add.n	a8, a1, a8
400811de:	00c882        	addi	a8, a8, 0
400811e1:	356182        	s32i	a8, a1, 212
400811e4:	086d      	mov.n	a6, a8
400811e6:	2169      	s32i.n	a6, a1, 8
400811e8:	1f6142        	s32i	a4, a1, 124
400811eb:	fca831        	l32r	a3, 4008048c <_init_end+0x8c>
400811ee:	1e6132        	s32i	a3, a1, 120
400811f1:	1c6142        	s32i	a4, a1, 112
400811f4:	1b6122        	s32i	a2, a1, 108
400811f7:	3129      	s32i.n	a2, a1, 12
400811f9:	fca521        	l32r	a2, 40080490 <_init_end+0x90>
400811fc:	1a6122        	s32i	a2, a1, 104
400811ff:	d4a082        	movi	a8, 212
40081202:	818a      	add.n	a8, a1, a8
40081204:	00c8a2        	addi	a10, a8, 0
40081207:	fc9871        	l32r	a7, 40080468 <_init_end+0x68>
4008120a:	68c1c2        	addi	a12, a1, 104
4008120d:	07bd      	mov.n	a11, a7
4008120f:	4158      	l32i.n	a5, a1, 16
40081211:	0005e0        	callx8	a5
40081214:	356162        	s32i	a6, a1, 212
40081217:	1f6142        	s32i	a4, a1, 124
4008121a:	1e6132        	s32i	a3, a1, 120
4008121d:	1c6142        	s32i	a4, a1, 112
40081220:	3168      	l32i.n	a6, a1, 12
40081222:	1b6162        	s32i	a6, a1, 108
40081225:	1a6122        	s32i	a2, a1, 104
40081228:	d4a082        	movi	a8, 212
4008122b:	818a      	add.n	a8, a1, a8
4008122d:	00c8a2        	addi	a10, a8, 0
40081230:	68c1c2        	addi	a12, a1, 104
40081233:	07bd      	mov.n	a11, a7
40081235:	0005e0        	callx8	a5
40081238:	2188      	l32i.n	a8, a1, 8
4008123a:	356182        	s32i	a8, a1, 212
4008123d:	1f6142        	s32i	a4, a1, 124
40081240:	1e6132        	s32i	a3, a1, 120
40081243:	1c6142        	s32i	a4, a1, 112
40081246:	1b6162        	s32i	a6, a1, 108
40081249:	1a6122        	s32i	a2, a1, 104
4008124c:	d4a082        	movi	a8, 212
4008124f:	818a      	add.n	a8, a1, a8
40081251:	00c8a2        	addi	a10, a8, 0
40081254:	68c1c2        	addi	a12, a1, 104
40081257:	07bd      	mov.n	a11, a7
40081259:	0005e0        	callx8	a5
4008125c:	ffff06        	j	4008125c <__exception+0x724>
	...

40081260 <__level_1_interrupt>:
40081260:	004136        	entry	a1, 32
40081263:	fc8c81        	l32r	a8, 40080494 <_init_end+0x94>
40081266:	02ad      	mov.n	a10, a2
40081268:	03bd      	mov.n	a11, a3
4008126a:	0008e0        	callx8	a8
4008126d:	f01d      	retw.n
	...

40081270 <esp_hal_common::interrupt::vectored::handle_interrupts>:
40081270:	034136        	entry	a1, 0x1a0
40081273:	3d6132        	s32i	a3, a1, 244
40081276:	03e280        	rsr.interrupt	a8
40081279:	03e490        	rsr.intenable	a9
4008127c:	7a0c      	movi.n	a10, 7
4008127e:	3461a2        	s32i	a10, a1, 208
40081281:	02ba27        	bgeu	a10, a2, 40081287 <esp_hal_common::interrupt::vectored::handle_interrupts+0x17>
40081284:	0293c6        	j	40081cd7 <esp_hal_common::interrupt::vectored::handle_interrupts+0xa67>
40081287:	108980        	and	a8, a9, a8
4008128a:	fc8591        	l32r	a9, 400804a0 <_init_end+0xa0>
4008128d:	a09290        	addx4	a9, a2, a9
40081290:	0998      	l32i.n	a9, a9, 0
40081292:	108890        	and	a8, a8, a9
40081295:	fc8391        	l32r	a9, 400804a4 <_init_end+0xa4>
40081298:	109890        	and	a9, a8, a9
4008129b:	7a1c      	movi.n	a10, 23
4008129d:	3561a2        	s32i	a10, a1, 212
400812a0:	1a0c      	movi.n	a10, 1
400812a2:	3661a2        	s32i	a10, a1, 216
400812a5:	fb7c      	movi.n	a11, -1
400812a7:	06f916        	beqz	a9, 4008131a <esp_hal_common::interrupt::vectored::handle_interrupts+0xaa>
400812aa:	30a9b0        	xor	a10, a9, a11
400812ad:	990b      	addi.n	a9, a9, -1
400812af:	109a90        	and	a9, a10, a9
400812b2:	41a190        	srli	a10, a9, 1
400812b5:	fc7cb1        	l32r	a11, 400804a8 <_init_end+0xa8>
400812b8:	10aab0        	and	a10, a10, a11
400812bb:	c099a0        	sub	a9, a9, a10
400812be:	fc7ba1        	l32r	a10, 400804ac <_init_end+0xac>
400812c1:	10b9a0        	and	a11, a9, a10
400812c4:	419290        	srli	a9, a9, 2
400812c7:	1099a0        	and	a9, a9, a10
400812ca:	9b9a      	add.n	a9, a11, a9
400812cc:	41a490        	srli	a10, a9, 4
400812cf:	99aa      	add.n	a9, a9, a10
400812d1:	fc77a1        	l32r	a10, 400804b0 <_init_end+0xb0>
400812d4:	1099a0        	and	a9, a9, a10
400812d7:	fc77a1        	l32r	a10, 400804b4 <_init_end+0xb4>
400812da:	8299a0        	mull	a9, a9, a10
400812dd:	8a1c      	movi.n	a10, 24
400812df:	400a00        	ssr	a10
400812e2:	919090        	srl	a9, a9
400812e5:	fc74a1        	l32r	a10, 400804b8 <_init_end+0xb8>
400812e8:	1088a0        	and	a8, a8, a10
400812eb:	00b816        	beqz	a8, 400812fa <esp_hal_common::interrupt::vectored::handle_interrupts+0x8a>
400812ee:	401900        	ssl	a9
400812f1:	362182        	l32i	a8, a1, 216
400812f4:	a18800        	sll	a8, a8
400812f7:	13e380        	wsr.intclear	a8
400812fa:	fac992        	addi	a9, a9, -6
400812fd:	352182        	l32i	a8, a1, 212
40081300:	02b897        	bgeu	a8, a9, 40081306 <esp_hal_common::interrupt::vectored::handle_interrupts+0x96>
40081303:	016d86        	j	400818bd <esp_hal_common::interrupt::vectored::handle_interrupts+0x64d>
40081306:	fc4981        	l32r	a8, 4008042c <_init_end+0x2c>
40081309:	fc6ca1        	l32r	a10, 400804bc <_init_end+0xbc>
4008130c:	a099a0        	addx4	a9, a9, a10
4008130f:	0998      	l32i.n	a9, a9, 0
40081311:	0009a0        	jx	a9
40081314:	fc4681        	l32r	a8, 4008042c <_init_end+0x2c>
40081317:	016746        	j	400818b8 <esp_hal_common::interrupt::vectored::handle_interrupts+0x648>
4008131a:	fc6991        	l32r	a9, 400804c0 <_init_end+0xc0>
4008131d:	109890        	and	a9, a8, a9
40081320:	fc6a61        	l32r	a6, 400804c8 <_init_end+0xc8>
40081323:	fc6881        	l32r	a8, 400804c4 <_init_end+0xc4>
40081326:	fc6ba1        	l32r	a10, 400804d4 <_init_end+0xd4>
40081329:	3f61a2        	s32i	a10, a1, 252
4008132c:	fc82a1        	l32r	a10, 40080534 <_init_end+0x134>
4008132f:	3e61a2        	s32i	a10, a1, 248
40081332:	fc7fa1        	l32r	a10, 40080530 <_init_end+0x130>
40081335:	3b61a2        	s32i	a10, a1, 236
40081338:	4061b2        	s32i	a11, a1, 0x100
4008133b:	3c6122        	s32i	a2, a1, 240
4008133e:	077916        	beqz	a9, 400813b9 <esp_hal_common::interrupt::vectored::handle_interrupts+0x149>
40081341:	050c      	movi.n	a5, 0
40081343:	30a9b0        	xor	a10, a9, a11
40081346:	990b      	addi.n	a9, a9, -1
40081348:	109a90        	and	a9, a10, a9
4008134b:	41a190        	srli	a10, a9, 1
4008134e:	fc56b1        	l32r	a11, 400804a8 <_init_end+0xa8>
40081351:	3a61b2        	s32i	a11, a1, 232
40081354:	10aab0        	and	a10, a10, a11
40081357:	c099a0        	sub	a9, a9, a10
4008135a:	fc5431        	l32r	a3, 400804ac <_init_end+0xac>
4008135d:	10a930        	and	a10, a9, a3
40081360:	419290        	srli	a9, a9, 2
40081363:	109930        	and	a9, a9, a3
40081366:	9a9a      	add.n	a9, a10, a9
40081368:	41a490        	srli	a10, a9, 4
4008136b:	99aa      	add.n	a9, a9, a10
4008136d:	fc50a1        	l32r	a10, 400804b0 <_init_end+0xb0>
40081370:	3961a2        	s32i	a10, a1, 228
40081373:	1099a0        	and	a9, a9, a10
40081376:	fc4fa1        	l32r	a10, 400804b4 <_init_end+0xb4>
40081379:	3861a2        	s32i	a10, a1, 224
4008137c:	8299a0        	mull	a9, a9, a10
4008137f:	8a1c      	movi.n	a10, 24
40081381:	3761a2        	s32i	a10, a1, 220
40081384:	400a00        	ssr	a10
40081387:	919090        	srl	a9, a9
4008138a:	401900        	ssl	a9
4008138d:	362192        	l32i	a9, a1, 216
40081390:	a19900        	sll	a9, a9
40081393:	13e390        	wsr.intclear	a9
40081396:	03eb70        	rsr.prid	a7
40081399:	08a192        	movi	a9, 0x108
4008139c:	919a      	add.n	a9, a1, a9
4008139e:	00c942        	addi	a4, a9, 0
400813a1:	70a0c2        	movi	a12, 112
400813a4:	04ad      	mov.n	a10, a4
400813a6:	05bd      	mov.n	a11, a5
400813a8:	0008e0        	callx8	a8
400813ab:	05cd      	mov.n	a12, a5
400813ad:	108760        	and	a8, a7, a6
400813b0:	1c18c7        	beq	a8, a12, 400813d0 <esp_hal_common::interrupt::vectored::handle_interrupts+0x160>
400813b3:	fc4691        	l32r	a9, 400804cc <_init_end+0xcc>
400813b6:	000646        	j	400813d3 <esp_hal_common::interrupt::vectored::handle_interrupts+0x163>
400813b9:	03eb90        	rsr.prid	a9
400813bc:	109960        	and	a9, a9, a6
400813bf:	0a0c      	movi.n	a10, 0
400813c1:	4161a2        	s32i	a10, a1, 0x104
400813c4:	0299a7        	bne	a9, a10, 400813ca <esp_hal_common::interrupt::vectored::handle_interrupts+0x15a>
400813c7:	013d06        	j	400818bf <esp_hal_common::interrupt::vectored::handle_interrupts+0x64f>
400813ca:	fc5ba1        	l32r	a10, 40080538 <_init_end+0x138>
400813cd:	013c46        	j	400818c2 <esp_hal_common::interrupt::vectored::handle_interrupts+0x652>
400813d0:	fc4091        	l32r	a9, 400804d0 <_init_end+0xd0>
400813d3:	0020c0        	memw
400813d6:	0998      	l32i.n	a9, a9, 0
400813d8:	3f21a2        	l32i	a10, a1, 252
400813db:	a099a0        	addx4	a9, a9, a10
400813de:	0998      	l32i.n	a9, a9, 0
400813e0:	1199c0        	slli	a9, a9, 4
400813e3:	949a      	add.n	a9, a4, a9
400813e5:	19a8      	l32i.n	a10, a9, 4
400813e7:	fc3cb1        	l32r	a11, 400804d8 <_init_end+0xd8>
400813ea:	20aab0        	or	a10, a10, a11
400813ed:	19a9      	s32i.n	a10, a9, 4
400813ef:	4021d2        	l32i	a13, a1, 0x100
400813f2:	0518c7        	beq	a8, a12, 400813fb <esp_hal_common::interrupt::vectored::handle_interrupts+0x18b>
400813f5:	fc3991        	l32r	a9, 400804dc <_init_end+0xdc>
400813f8:	000086        	j	400813fe <esp_hal_common::interrupt::vectored::handle_interrupts+0x18e>
400813fb:	fc3991        	l32r	a9, 400804e0 <_init_end+0xe0>
400813fe:	0020c0        	memw
40081401:	0998      	l32i.n	a9, a9, 0
40081403:	3f21a2        	l32i	a10, a1, 252
40081406:	a099a0        	addx4	a9, a9, a10
40081409:	0998      	l32i.n	a9, a9, 0
4008140b:	1199c0        	slli	a9, a9, 4
4008140e:	949a      	add.n	a9, a4, a9
40081410:	19a8      	l32i.n	a10, a9, 4
40081412:	fc34b1        	l32r	a11, 400804e4 <_init_end+0xe4>
40081415:	20aab0        	or	a10, a10, a11
40081418:	19a9      	s32i.n	a10, a9, 4
4008141a:	0518c7        	beq	a8, a12, 40081423 <esp_hal_common::interrupt::vectored::handle_interrupts+0x1b3>
4008141d:	fc3291        	l32r	a9, 400804e8 <_init_end+0xe8>
40081420:	000086        	j	40081426 <esp_hal_common::interrupt::vectored::handle_interrupts+0x1b6>
40081423:	fc3291        	l32r	a9, 400804ec <_init_end+0xec>
40081426:	0020c0        	memw
40081429:	0998      	l32i.n	a9, a9, 0
4008142b:	3f21a2        	l32i	a10, a1, 252
4008142e:	a099a0        	addx4	a9, a9, a10
40081431:	0998      	l32i.n	a9, a9, 0
40081433:	1199c0        	slli	a9, a9, 4
40081436:	949a      	add.n	a9, a4, a9
40081438:	19a8      	l32i.n	a10, a9, 4
4008143a:	fc2db1        	l32r	a11, 400804f0 <_init_end+0xf0>
4008143d:	20aab0        	or	a10, a10, a11
40081440:	19a9      	s32i.n	a10, a9, 4
40081442:	0518c7        	beq	a8, a12, 4008144b <esp_hal_common::interrupt::vectored::handle_interrupts+0x1db>
40081445:	fc2b91        	l32r	a9, 400804f4 <_init_end+0xf4>
40081448:	000086        	j	4008144e <esp_hal_common::interrupt::vectored::handle_interrupts+0x1de>
4008144b:	fc2b91        	l32r	a9, 400804f8 <_init_end+0xf8>
4008144e:	0020c0        	memw
40081451:	0998      	l32i.n	a9, a9, 0
40081453:	3f21a2        	l32i	a10, a1, 252
40081456:	a099a0        	addx4	a9, a9, a10
40081459:	0998      	l32i.n	a9, a9, 0
4008145b:	1199c0        	slli	a9, a9, 4
4008145e:	949a      	add.n	a9, a4, a9
40081460:	19a8      	l32i.n	a10, a9, 4
40081462:	fc26b1        	l32r	a11, 400804fc <_init_end+0xfc>
40081465:	20aab0        	or	a10, a10, a11
40081468:	19a9      	s32i.n	a10, a9, 4
4008146a:	0518c7        	beq	a8, a12, 40081473 <esp_hal_common::interrupt::vectored::handle_interrupts+0x203>
4008146d:	fc2491        	l32r	a9, 40080500 <_init_end+0x100>
40081470:	000086        	j	40081476 <esp_hal_common::interrupt::vectored::handle_interrupts+0x206>
40081473:	fc2491        	l32r	a9, 40080504 <_init_end+0x104>
40081476:	0020c0        	memw
40081479:	0998      	l32i.n	a9, a9, 0
4008147b:	3f21a2        	l32i	a10, a1, 252
4008147e:	a099a0        	addx4	a9, a9, a10
40081481:	0998      	l32i.n	a9, a9, 0
40081483:	1199c0        	slli	a9, a9, 4
40081486:	949a      	add.n	a9, a4, a9
40081488:	19a8      	l32i.n	a10, a9, 4
4008148a:	fbfbb1        	l32r	a11, 40080478 <_init_end+0x78>
4008148d:	20aab0        	or	a10, a10, a11
40081490:	19a9      	s32i.n	a10, a9, 4
40081492:	0518c7        	beq	a8, a12, 4008149b <esp_hal_common::interrupt::vectored::handle_interrupts+0x22b>
40081495:	fc1c91        	l32r	a9, 40080508 <_init_end+0x108>
40081498:	000086        	j	4008149e <esp_hal_common::interrupt::vectored::handle_interrupts+0x22e>
4008149b:	fc1c91        	l32r	a9, 4008050c <_init_end+0x10c>
4008149e:	0020c0        	memw
400814a1:	0998      	l32i.n	a9, a9, 0
400814a3:	3f21a2        	l32i	a10, a1, 252
400814a6:	a099a0        	addx4	a9, a9, a10
400814a9:	0998      	l32i.n	a9, a9, 0
400814ab:	1199c0        	slli	a9, a9, 4
400814ae:	949a      	add.n	a9, a4, a9
400814b0:	19a8      	l32i.n	a10, a9, 4
400814b2:	fc17b1        	l32r	a11, 40080510 <_init_end+0x110>
400814b5:	20aab0        	or	a10, a10, a11
400814b8:	19a9      	s32i.n	a10, a9, 4
400814ba:	0518c7        	beq	a8, a12, 400814c3 <esp_hal_common::interrupt::vectored::handle_interrupts+0x253>
400814bd:	fc1591        	l32r	a9, 40080514 <_init_end+0x114>
400814c0:	000086        	j	400814c6 <esp_hal_common::interrupt::vectored::handle_interrupts+0x256>
400814c3:	fc1591        	l32r	a9, 40080518 <_init_end+0x118>
400814c6:	0020c0        	memw
400814c9:	0998      	l32i.n	a9, a9, 0
400814cb:	3f21a2        	l32i	a10, a1, 252
400814ce:	a099a0        	addx4	a9, a9, a10
400814d1:	0998      	l32i.n	a9, a9, 0
400814d3:	1199c0        	slli	a9, a9, 4
400814d6:	949a      	add.n	a9, a4, a9
400814d8:	29a8      	l32i.n	a10, a9, 8
400814da:	3621b2        	l32i	a11, a1, 216
400814dd:	20aab0        	or	a10, a10, a11
400814e0:	29a9      	s32i.n	a10, a9, 8
400814e2:	0518c7        	beq	a8, a12, 400814eb <esp_hal_common::interrupt::vectored::handle_interrupts+0x27b>
400814e5:	fc0d81        	l32r	a8, 4008051c <_init_end+0x11c>
400814e8:	000086        	j	400814ee <esp_hal_common::interrupt::vectored::handle_interrupts+0x27e>
400814eb:	fc0d81        	l32r	a8, 40080520 <_init_end+0x120>
400814ee:	0020c0        	memw
400814f1:	0888      	l32i.n	a8, a8, 0
400814f3:	3f2192        	l32i	a9, a1, 252
400814f6:	a08890        	addx4	a8, a8, a9
400814f9:	0888      	l32i.n	a8, a8, 0
400814fb:	1188c0        	slli	a8, a8, 4
400814fe:	848a      	add.n	a8, a4, a8
40081500:	2898      	l32i.n	a9, a8, 8
40081502:	2a0c      	movi.n	a10, 2
40081504:	3361a2        	s32i	a10, a1, 204
40081507:	2099a0        	or	a9, a9, a10
4008150a:	2899      	s32i.n	a9, a8, 8
4008150c:	680c      	movi.n	a8, 6
4008150e:	326182        	s32i	a8, a1, 200
40081511:	02b827        	bgeu	a8, a2, 40081517 <esp_hal_common::interrupt::vectored::handle_interrupts+0x2a7>
40081514:	01f3c6        	j	40081ce7 <esp_hal_common::interrupt::vectored::handle_interrupts+0xa77>
40081517:	880c      	movi.n	a8, 8
40081519:	316182        	s32i	a8, a1, 196
4008151c:	084c      	movi.n	a8, 64
4008151e:	306182        	s32i	a8, a1, 192
40081521:	184c      	movi.n	a8, 65
40081523:	3f6182        	s32i	a8, a1, 252
40081526:	f83c      	movi.n	a8, 63
40081528:	2f6182        	s32i	a8, a1, 188
4008152b:	e83c      	movi.n	a8, 62
4008152d:	2e6182        	s32i	a8, a1, 184
40081530:	d83c      	movi.n	a8, 61
40081532:	2d6182        	s32i	a8, a1, 180
40081535:	c83c      	movi.n	a8, 60
40081537:	2c6182        	s32i	a8, a1, 176
4008153a:	b83c      	movi.n	a8, 59
4008153c:	2b6182        	s32i	a8, a1, 172
4008153f:	a83c      	movi.n	a8, 58
40081541:	2a6182        	s32i	a8, a1, 168
40081544:	983c      	movi.n	a8, 57
40081546:	296182        	s32i	a8, a1, 164
40081549:	883c      	movi.n	a8, 56
4008154b:	286182        	s32i	a8, a1, 160
4008154e:	683c      	movi.n	a8, 54
40081550:	276182        	s32i	a8, a1, 156
40081553:	583c      	movi.n	a8, 53
40081555:	266182        	s32i	a8, a1, 152
40081558:	483c      	movi.n	a8, 52
4008155a:	256182        	s32i	a8, a1, 148
4008155d:	383c      	movi.n	a8, 51
4008155f:	246182        	s32i	a8, a1, 144
40081562:	283c      	movi.n	a8, 50
40081564:	236182        	s32i	a8, a1, 140
40081567:	183c      	movi.n	a8, 49
40081569:	226182        	s32i	a8, a1, 136
4008156c:	083c      	movi.n	a8, 48
4008156e:	216182        	s32i	a8, a1, 132
40081571:	f82c      	movi.n	a8, 47
40081573:	206182        	s32i	a8, a1, 128
40081576:	e82c      	movi.n	a8, 46
40081578:	1f6182        	s32i	a8, a1, 124
4008157b:	d82c      	movi.n	a8, 45
4008157d:	1e6182        	s32i	a8, a1, 120
40081580:	c82c      	movi.n	a8, 44
40081582:	1d6182        	s32i	a8, a1, 116
40081585:	b82c      	movi.n	a8, 43
40081587:	1c6182        	s32i	a8, a1, 112
4008158a:	882c      	movi.n	a8, 40
4008158c:	1b6182        	s32i	a8, a1, 108
4008158f:	782c      	movi.n	a8, 39
40081591:	1a6182        	s32i	a8, a1, 104
40081594:	482c      	movi.n	a8, 36
40081596:	196182        	s32i	a8, a1, 100
40081599:	382c      	movi.n	a8, 35
4008159b:	186182        	s32i	a8, a1, 96
4008159e:	282c      	movi.n	a8, 34
400815a0:	176182        	s32i	a8, a1, 92
400815a3:	182c      	movi.n	a8, 33
400815a5:	166182        	s32i	a8, a1, 88
400815a8:	082c      	movi.n	a8, 32
400815aa:	156182        	s32i	a8, a1, 84
400815ad:	f81c      	movi.n	a8, 31
400815af:	146182        	s32i	a8, a1, 80
400815b2:	e81c      	movi.n	a8, 30
400815b4:	136182        	s32i	a8, a1, 76
400815b7:	d81c      	movi.n	a8, 29
400815b9:	126182        	s32i	a8, a1, 72
400815bc:	c81c      	movi.n	a8, 28
400815be:	116182        	s32i	a8, a1, 68
400815c1:	681c      	movi.n	a8, 22
400815c3:	106182        	s32i	a8, a1, 64
400815c6:	581c      	movi.n	a8, 21
400815c8:	f189      	s32i.n	a8, a1, 60
400815ca:	481c      	movi.n	a8, 20
400815cc:	e189      	s32i.n	a8, a1, 56
400815ce:	381c      	movi.n	a8, 19
400815d0:	d189      	s32i.n	a8, a1, 52
400815d2:	281c      	movi.n	a8, 18
400815d4:	c189      	s32i.n	a8, a1, 48
400815d6:	181c      	movi.n	a8, 17
400815d8:	b189      	s32i.n	a8, a1, 44
400815da:	081c      	movi.n	a8, 16
400815dc:	a189      	s32i.n	a8, a1, 40
400815de:	f80c      	movi.n	a8, 15
400815e0:	9189      	s32i.n	a8, a1, 36
400815e2:	e80c      	movi.n	a8, 14
400815e4:	8189      	s32i.n	a8, a1, 32
400815e6:	d80c      	movi.n	a8, 13
400815e8:	7189      	s32i.n	a8, a1, 28
400815ea:	c80c      	movi.n	a8, 12
400815ec:	6189      	s32i.n	a8, a1, 24
400815ee:	980c      	movi.n	a8, 9
400815f0:	5189      	s32i.n	a8, a1, 20
400815f2:	580c      	movi.n	a8, 5
400815f4:	4189      	s32i.n	a8, a1, 16
400815f6:	480c      	movi.n	a8, 4
400815f8:	3189      	s32i.n	a8, a1, 12
400815fa:	1182c0        	slli	a8, a2, 4
400815fd:	08a192        	movi	a9, 0x108
40081600:	919a      	add.n	a9, a1, a9
40081602:	00c992        	addi	a9, a9, 0
40081605:	898a      	add.n	a8, a9, a8
40081607:	2898      	l32i.n	a9, a8, 8
40081609:	3a0c      	movi.n	a10, 3
4008160b:	21a9      	s32i.n	a10, a1, 8
4008160d:	1059a0        	and	a5, a9, a10
40081610:	1888      	l32i.n	a8, a8, 4
40081612:	fbc591        	l32r	a9, 40080528 <_init_end+0x128>
40081615:	106890        	and	a6, a8, a9
40081618:	0c7d      	mov.n	a7, a12
4008161a:	4161c2        	s32i	a12, a1, 0x104
4008161d:	001286        	j	4008166b <esp_hal_common::interrupt::vectored::handle_interrupts+0x3fb>
40081620:	3f21b2        	l32i	a11, a1, 252
40081623:	3c21a2        	l32i	a10, a1, 240
40081626:	0c2d      	mov.n	a2, a12
40081628:	3d21c2        	l32i	a12, a1, 244
4008162b:	3b2182        	l32i	a8, a1, 236
4008162e:	0008e0        	callx8	a8
40081631:	7fa082        	movi	a8, 127
40081634:	10e480        	and	a14, a4, a8
40081637:	1a0c      	movi.n	a10, 1
40081639:	0b0c      	movi.n	a11, 0
4008163b:	0bcd      	mov.n	a12, a11
4008163d:	0bdd      	mov.n	a13, a11
4008163f:	3e2182        	l32i	a8, a1, 248
40081642:	0008e0        	callx8	a8
40081645:	402182        	l32i	a8, a1, 0x100
40081648:	308d80        	xor	a8, a13, a8
4008164b:	4021d2        	l32i	a13, a1, 0x100
4008164e:	412192        	l32i	a9, a1, 0x104
40081651:	109980        	and	a9, a9, a8
40081654:	416192        	s32i	a9, a1, 0x104
40081657:	308cd0        	xor	a8, a12, a13
4008165a:	02cd      	mov.n	a12, a2
4008165c:	105580        	and	a5, a5, a8
4008165f:	308bd0        	xor	a8, a11, a13
40081662:	106680        	and	a6, a6, a8
40081665:	308ad0        	xor	a8, a10, a13
40081668:	107780        	and	a7, a7, a8
4008166b:	3087d0        	xor	a8, a7, a13
4008166e:	970b      	addi.n	a9, a7, -1
40081670:	108890        	and	a8, a8, a9
40081673:	419180        	srli	a9, a8, 1
40081676:	3a21b2        	l32i	a11, a1, 232
40081679:	1099b0        	and	a9, a9, a11
4008167c:	c08890        	sub	a8, a8, a9
4008167f:	109830        	and	a9, a8, a3
40081682:	418280        	srli	a8, a8, 2
40081685:	108830        	and	a8, a8, a3
40081688:	898a      	add.n	a8, a9, a8
4008168a:	419480        	srli	a9, a8, 4
4008168d:	889a      	add.n	a8, a8, a9
4008168f:	3921e2        	l32i	a14, a1, 228
40081692:	1088e0        	and	a8, a8, a14
40081695:	3821f2        	l32i	a15, a1, 224
40081698:	8288f0        	mull	a8, a8, a15
4008169b:	372122        	l32i	a2, a1, 220
4008169e:	400200        	ssr	a2
400816a1:	914080        	srl	a4, a8
400816a4:	3086d0        	xor	a8, a6, a13
400816a7:	960b      	addi.n	a9, a6, -1
400816a9:	108890        	and	a8, a8, a9
400816ac:	419180        	srli	a9, a8, 1
400816af:	1099b0        	and	a9, a9, a11
400816b2:	c08890        	sub	a8, a8, a9
400816b5:	109830        	and	a9, a8, a3
400816b8:	418280        	srli	a8, a8, 2
400816bb:	108830        	and	a8, a8, a3
400816be:	898a      	add.n	a8, a9, a8
400816c0:	419480        	srli	a9, a8, 4
400816c3:	889a      	add.n	a8, a8, a9
400816c5:	1088e0        	and	a8, a8, a14
400816c8:	8288f0        	mull	a8, a8, a15
400816cb:	400200        	ssr	a2
400816ce:	918080        	srl	a8, a8
400816d1:	0297c7        	bne	a7, a12, 400816d7 <esp_hal_common::interrupt::vectored::handle_interrupts+0x467>
400816d4:	20c842        	addi	a4, a8, 32
400816d7:	3085d0        	xor	a8, a5, a13
400816da:	950b      	addi.n	a9, a5, -1
400816dc:	108890        	and	a8, a8, a9
400816df:	419180        	srli	a9, a8, 1
400816e2:	1099b0        	and	a9, a9, a11
400816e5:	c08890        	sub	a8, a8, a9
400816e8:	109830        	and	a9, a8, a3
400816eb:	418280        	srli	a8, a8, 2
400816ee:	108830        	and	a8, a8, a3
400816f1:	898a      	add.n	a8, a9, a8
400816f3:	419480        	srli	a9, a8, 4
400816f6:	889a      	add.n	a8, a8, a9
400816f8:	1088e0        	and	a8, a8, a14
400816fb:	8288f0        	mull	a8, a8, a15
400816fe:	400200        	ssr	a2
40081701:	918080        	srl	a8, a8
40081704:	4121a2        	l32i	a10, a1, 0x104
40081707:	309ad0        	xor	a9, a10, a13
4008170a:	aa0b      	addi.n	a10, a10, -1
4008170c:	1099a0        	and	a9, a9, a10
4008170f:	41a190        	srli	a10, a9, 1
40081712:	10aab0        	and	a10, a10, a11
40081715:	c099a0        	sub	a9, a9, a10
40081718:	10a930        	and	a10, a9, a3
4008171b:	419290        	srli	a9, a9, 2
4008171e:	109930        	and	a9, a9, a3
40081721:	9a9a      	add.n	a9, a10, a9
40081723:	41a490        	srli	a10, a9, 4
40081726:	99aa      	add.n	a9, a9, a10
40081728:	1099e0        	and	a9, a9, a14
4008172b:	8299f0        	mull	a9, a9, a15
4008172e:	400200        	ssr	a2
40081731:	919090        	srl	a9, a9
40081734:	1115c7        	beq	a5, a12, 40081749 <esp_hal_common::interrupt::vectored::handle_interrupts+0x4d9>
40081737:	40c8a2        	addi	a10, a8, 64
4008173a:	209760        	or	a9, a7, a6
4008173d:	1419c7        	beq	a9, a12, 40081755 <esp_hal_common::interrupt::vectored::handle_interrupts+0x4e5>
40081740:	3f2182        	l32i	a8, a1, 252
40081743:	19b847        	bgeu	a8, a4, 40081760 <esp_hal_common::interrupt::vectored::handle_interrupts+0x4f0>
40081746:	005cc6        	j	400818bd <esp_hal_common::interrupt::vectored::handle_interrupts+0x64d>
40081749:	20c982        	addi	a8, a9, 32
4008174c:	40c8a2        	addi	a10, a8, 64
4008174f:	209760        	or	a9, a7, a6
40081752:	ea99c7        	bne	a9, a12, 40081740 <esp_hal_common::interrupt::vectored::handle_interrupts+0x4d0>
40081755:	0a4d      	mov.n	a4, a10
40081757:	3f2182        	l32i	a8, a1, 252
4008175a:	02b847        	bgeu	a8, a4, 40081760 <esp_hal_common::interrupt::vectored::handle_interrupts+0x4f0>
4008175d:	005706        	j	400818bd <esp_hal_common::interrupt::vectored::handle_interrupts+0x64d>
40081760:	fb7381        	l32r	a8, 4008052c <_init_end+0x12c>
40081763:	a08480        	addx4	a8, a4, a8
40081766:	0888      	l32i.n	a8, a8, 0
40081768:	0cbd      	mov.n	a11, a12
4008176a:	0008a0        	jx	a8
4008176d:	3621b2        	l32i	a11, a1, 216
40081770:	ffabc6        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
40081773:	3321b2        	l32i	a11, a1, 204
40081776:	ffaa46        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
40081779:	21b8      	l32i.n	a11, a1, 8
4008177b:	ffa906        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
4008177e:	31b8      	l32i.n	a11, a1, 12
40081780:	ffa7c6        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
40081783:	41b8      	l32i.n	a11, a1, 16
40081785:	ffa686        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
40081788:	3221b2        	l32i	a11, a1, 200
4008178b:	ffa506        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
4008178e:	3421b2        	l32i	a11, a1, 208
40081791:	ffa386        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
40081794:	3121b2        	l32i	a11, a1, 196
40081797:	ffa206        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
4008179a:	51b8      	l32i.n	a11, a1, 20
4008179c:	ffa0c6        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
4008179f:	61b8      	l32i.n	a11, a1, 24
400817a1:	ff9f86        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
400817a4:	71b8      	l32i.n	a11, a1, 28
400817a6:	ff9e46        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
400817a9:	81b8      	l32i.n	a11, a1, 32
400817ab:	ff9d06        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
400817ae:	91b8      	l32i.n	a11, a1, 36
400817b0:	ff9bc6        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
400817b3:	a1b8      	l32i.n	a11, a1, 40
400817b5:	ff9a86        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
400817b8:	b1b8      	l32i.n	a11, a1, 44
400817ba:	ff9946        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
400817bd:	c1b8      	l32i.n	a11, a1, 48
400817bf:	ff9806        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
400817c2:	d1b8      	l32i.n	a11, a1, 52
400817c4:	ff96c6        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
400817c7:	e1b8      	l32i.n	a11, a1, 56
400817c9:	ff9586        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
400817cc:	f1b8      	l32i.n	a11, a1, 60
400817ce:	ff9446        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
400817d1:	1021b2        	l32i	a11, a1, 64
400817d4:	ff92c6        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
400817d7:	3521b2        	l32i	a11, a1, 212
400817da:	ff9146        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
400817dd:	1121b2        	l32i	a11, a1, 68
400817e0:	ff8fc6        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
400817e3:	1221b2        	l32i	a11, a1, 72
400817e6:	ff8e46        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
400817e9:	1321b2        	l32i	a11, a1, 76
400817ec:	ff8cc6        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
400817ef:	1421b2        	l32i	a11, a1, 80
400817f2:	ff8b46        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
400817f5:	1521b2        	l32i	a11, a1, 84
400817f8:	ff89c6        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
400817fb:	1621b2        	l32i	a11, a1, 88
400817fe:	ff8846        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
40081801:	1721b2        	l32i	a11, a1, 92
40081804:	ff86c6        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
40081807:	1821b2        	l32i	a11, a1, 96
4008180a:	ff8546        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
4008180d:	1921b2        	l32i	a11, a1, 100
40081810:	ff83c6        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
40081813:	1a21b2        	l32i	a11, a1, 104
40081816:	ff8246        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
40081819:	1b21b2        	l32i	a11, a1, 108
4008181c:	ff80c6        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
4008181f:	1c21b2        	l32i	a11, a1, 112
40081822:	ff7f46        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
40081825:	1d21b2        	l32i	a11, a1, 116
40081828:	ff7dc6        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
4008182b:	1e21b2        	l32i	a11, a1, 120
4008182e:	ff7c46        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
40081831:	1f21b2        	l32i	a11, a1, 124
40081834:	ff7ac6        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
40081837:	2021b2        	l32i	a11, a1, 128
4008183a:	ff7946        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
4008183d:	2121b2        	l32i	a11, a1, 132
40081840:	ff77c6        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
40081843:	2221b2        	l32i	a11, a1, 136
40081846:	ff7646        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
40081849:	2321b2        	l32i	a11, a1, 140
4008184c:	ff74c6        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
4008184f:	2421b2        	l32i	a11, a1, 144
40081852:	ff7346        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
40081855:	2521b2        	l32i	a11, a1, 148
40081858:	ff71c6        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
4008185b:	2621b2        	l32i	a11, a1, 152
4008185e:	ff7046        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
40081861:	2721b2        	l32i	a11, a1, 156
40081864:	ff6ec6        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
40081867:	2821b2        	l32i	a11, a1, 160
4008186a:	ff6d46        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
4008186d:	2921b2        	l32i	a11, a1, 164
40081870:	ff6bc6        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
40081873:	2a21b2        	l32i	a11, a1, 168
40081876:	ff6a46        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
40081879:	2b21b2        	l32i	a11, a1, 172
4008187c:	ff68c6        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
4008187f:	2c21b2        	l32i	a11, a1, 176
40081882:	ff6746        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
40081885:	2d21b2        	l32i	a11, a1, 180
40081888:	ff65c6        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
4008188b:	2e21b2        	l32i	a11, a1, 184
4008188e:	ff6446        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
40081891:	2f21b2        	l32i	a11, a1, 188
40081894:	ff62c6        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
40081897:	3021b2        	l32i	a11, a1, 192
4008189a:	ff6146        	j	40081623 <esp_hal_common::interrupt::vectored::handle_interrupts+0x3b3>
4008189d:	fae381        	l32r	a8, 4008042c <_init_end+0x2c>
400818a0:	000506        	j	400818b8 <esp_hal_common::interrupt::vectored::handle_interrupts+0x648>
400818a3:	fae281        	l32r	a8, 4008042c <_init_end+0x2c>
400818a6:	000386        	j	400818b8 <esp_hal_common::interrupt::vectored::handle_interrupts+0x648>
400818a9:	fae081        	l32r	a8, 4008042c <_init_end+0x2c>
400818ac:	000206        	j	400818b8 <esp_hal_common::interrupt::vectored::handle_interrupts+0x648>
400818af:	fadf81        	l32r	a8, 4008042c <_init_end+0x2c>
400818b2:	000086        	j	400818b8 <esp_hal_common::interrupt::vectored::handle_interrupts+0x648>
400818b5:	fadd81        	l32r	a8, 4008042c <_init_end+0x2c>
400818b8:	02ad      	mov.n	a10, a2
400818ba:	0008e0        	callx8	a8
400818bd:	f01d      	retw.n
400818bf:	fb1fa1        	l32r	a10, 4008053c <_init_end+0x13c>
400818c2:	0020c0        	memw
400818c5:	0aa8      	l32i.n	a10, a10, 0
400818c7:	3361a2        	s32i	a10, a1, 204
400818ca:	4121a2        	l32i	a10, a1, 0x104
400818cd:	0519a7        	beq	a9, a10, 400818d6 <esp_hal_common::interrupt::vectored::handle_interrupts+0x666>
400818d0:	fb1ca1        	l32r	a10, 40080540 <_init_end+0x140>
400818d3:	000086        	j	400818d9 <esp_hal_common::interrupt::vectored::handle_interrupts+0x669>
400818d6:	fb1ba1        	l32r	a10, 40080544 <_init_end+0x144>
400818d9:	0020c0        	memw
400818dc:	0aa8      	l32i.n	a10, a10, 0
400818de:	3461a2        	s32i	a10, a1, 208
400818e1:	4121a2        	l32i	a10, a1, 0x104
400818e4:	0519a7        	beq	a9, a10, 400818ed <esp_hal_common::interrupt::vectored::handle_interrupts+0x67d>
400818e7:	fb1891        	l32r	a9, 40080548 <_init_end+0x148>
400818ea:	000086        	j	400818f0 <esp_hal_common::interrupt::vectored::handle_interrupts+0x680>
400818ed:	fb1791        	l32r	a9, 4008054c <_init_end+0x14c>
400818f0:	0020c0        	memw
400818f3:	0948      	l32i.n	a4, a9, 0
400818f5:	03eb50        	rsr.prid	a5
400818f8:	08a192        	movi	a9, 0x108
400818fb:	919a      	add.n	a9, a1, a9
400818fd:	00c9a2        	addi	a10, a9, 0
40081900:	70a0c2        	movi	a12, 112
40081903:	412172        	l32i	a7, a1, 0x104
40081906:	07bd      	mov.n	a11, a7
40081908:	0008e0        	callx8	a8
4008190b:	326142        	s32i	a4, a1, 200
4008190e:	332182        	l32i	a8, a1, 204
40081911:	208840        	or	a8, a8, a4
40081914:	342192        	l32i	a9, a1, 208
40081917:	208890        	or	a8, a8, a9
4008191a:	109560        	and	a9, a5, a6
4008191d:	0e1977        	beq	a9, a7, 4008192f <esp_hal_common::interrupt::vectored::handle_interrupts+0x6bf>
40081920:	fb0c91        	l32r	a9, 40080550 <_init_end+0x150>
40081923:	3a6192        	s32i	a9, a1, 232
40081926:	4021d2        	l32i	a13, a1, 0x100
40081929:	00e856        	bnez	a8, 4008193b <esp_hal_common::interrupt::vectored::handle_interrupts+0x6cb>
4008192c:	006406        	j	40081ac0 <esp_hal_common::interrupt::vectored::handle_interrupts+0x850>
4008192f:	fb0991        	l32r	a9, 40080554 <_init_end+0x154>
40081932:	3a6192        	s32i	a9, a1, 232
40081935:	4021d2        	l32i	a13, a1, 0x100
40081938:	184816        	beqz	a8, 40081ac0 <esp_hal_common::interrupt::vectored::handle_interrupts+0x850>
4008193b:	fadbb1        	l32r	a11, 400804a8 <_init_end+0xa8>
4008193e:	fadb61        	l32r	a6, 400804ac <_init_end+0xac>
40081941:	fadbc1        	l32r	a12, 400804b0 <_init_end+0xb0>
40081944:	fadcf1        	l32r	a15, 400804b4 <_init_end+0xb4>
40081947:	831c      	movi.n	a3, 24
40081949:	070c      	movi.n	a7, 0
4008194b:	332122        	l32i	a2, a1, 204
4008194e:	342152        	l32i	a5, a1, 208
40081951:	322142        	l32i	a4, a1, 200
40081954:	3961b2        	s32i	a11, a1, 228
40081957:	3861c2        	s32i	a12, a1, 224
4008195a:	3761f2        	s32i	a15, a1, 220
4008195d:	366132        	s32i	a3, a1, 216
40081960:	356172        	s32i	a7, a1, 212
40081963:	002106        	j	400819eb <esp_hal_common::interrupt::vectored::handle_interrupts+0x77b>
40081966:	3a2182        	l32i	a8, a1, 232
40081969:	a08e80        	addx4	a8, a14, a8
4008196c:	0020c0        	memw
4008196f:	0888      	l32i.n	a8, a8, 0
40081971:	3f2192        	l32i	a9, a1, 252
40081974:	a08890        	addx4	a8, a8, a9
40081977:	0838      	l32i.n	a3, a8, 0
40081979:	1a0c      	movi.n	a10, 1
4008197b:	07bd      	mov.n	a11, a7
4008197d:	07cd      	mov.n	a12, a7
4008197f:	07dd      	mov.n	a13, a7
40081981:	3e2182        	l32i	a8, a1, 248
40081984:	0008e0        	callx8	a8
40081987:	1183c0        	slli	a8, a3, 4
4008198a:	08a192        	movi	a9, 0x108
4008198d:	919a      	add.n	a9, a1, a9
4008198f:	00c992        	addi	a9, a9, 0
40081992:	898a      	add.n	a8, a9, a8
40081994:	2898      	l32i.n	a9, a8, 8
40081996:	2099c0        	or	a9, a9, a12
40081999:	2899      	s32i.n	a9, a8, 8
4008199b:	3898      	l32i.n	a9, a8, 12
4008199d:	2099d0        	or	a9, a9, a13
400819a0:	3899      	s32i.n	a9, a8, 12
400819a2:	0898      	l32i.n	a9, a8, 0
400819a4:	2099a0        	or	a9, a9, a10
400819a7:	0899      	s32i.n	a9, a8, 0
400819a9:	1898      	l32i.n	a9, a8, 4
400819ab:	2099b0        	or	a9, a9, a11
400819ae:	1899      	s32i.n	a9, a8, 4
400819b0:	402192        	l32i	a9, a1, 0x100
400819b3:	308d90        	xor	a8, a13, a9
400819b6:	09dd      	mov.n	a13, a9
400819b8:	412192        	l32i	a9, a1, 0x104
400819bb:	109980        	and	a9, a9, a8
400819be:	308bd0        	xor	a8, a11, a13
400819c1:	105580        	and	a5, a5, a8
400819c4:	416192        	s32i	a9, a1, 0x104
400819c7:	208590        	or	a8, a5, a9
400819ca:	309cd0        	xor	a9, a12, a13
400819cd:	104490        	and	a4, a4, a9
400819d0:	309ad0        	xor	a9, a10, a13
400819d3:	102290        	and	a2, a2, a9
400819d6:	209240        	or	a9, a2, a4
400819d9:	208980        	or	a8, a9, a8
400819dc:	3921b2        	l32i	a11, a1, 228
400819df:	3821c2        	l32i	a12, a1, 224
400819e2:	3721f2        	l32i	a15, a1, 220
400819e5:	362132        	l32i	a3, a1, 216
400819e8:	0d4816        	beqz	a8, 40081ac0 <esp_hal_common::interrupt::vectored::handle_interrupts+0x850>
400819eb:	3082d0        	xor	a8, a2, a13
400819ee:	920b      	addi.n	a9, a2, -1
400819f0:	108890        	and	a8, a8, a9
400819f3:	419180        	srli	a9, a8, 1
400819f6:	1099b0        	and	a9, a9, a11
400819f9:	c08890        	sub	a8, a8, a9
400819fc:	109860        	and	a9, a8, a6
400819ff:	418280        	srli	a8, a8, 2
40081a02:	108860        	and	a8, a8, a6
40081a05:	898a      	add.n	a8, a9, a8
40081a07:	419480        	srli	a9, a8, 4
40081a0a:	889a      	add.n	a8, a8, a9
40081a0c:	1088c0        	and	a8, a8, a12
40081a0f:	8288f0        	mull	a8, a8, a15
40081a12:	400300        	ssr	a3
40081a15:	91e080        	srl	a14, a8
40081a18:	3085d0        	xor	a8, a5, a13
40081a1b:	950b      	addi.n	a9, a5, -1
40081a1d:	108890        	and	a8, a8, a9
40081a20:	419180        	srli	a9, a8, 1
40081a23:	1099b0        	and	a9, a9, a11
40081a26:	c08890        	sub	a8, a8, a9
40081a29:	109860        	and	a9, a8, a6
40081a2c:	418280        	srli	a8, a8, 2
40081a2f:	108860        	and	a8, a8, a6
40081a32:	898a      	add.n	a8, a9, a8
40081a34:	419480        	srli	a9, a8, 4
40081a37:	889a      	add.n	a8, a8, a9
40081a39:	1088c0        	and	a8, a8, a12
40081a3c:	8288f0        	mull	a8, a8, a15
40081a3f:	400300        	ssr	a3
40081a42:	918080        	srl	a8, a8
40081a45:	029277        	bne	a2, a7, 40081a4b <esp_hal_common::interrupt::vectored::handle_interrupts+0x7db>
40081a48:	20c8e2        	addi	a14, a8, 32
40081a4b:	3084d0        	xor	a8, a4, a13
40081a4e:	940b      	addi.n	a9, a4, -1
40081a50:	108890        	and	a8, a8, a9
40081a53:	419180        	srli	a9, a8, 1
40081a56:	1099b0        	and	a9, a9, a11
40081a59:	c08890        	sub	a8, a8, a9
40081a5c:	109860        	and	a9, a8, a6
40081a5f:	418280        	srli	a8, a8, 2
40081a62:	108860        	and	a8, a8, a6
40081a65:	898a      	add.n	a8, a9, a8
40081a67:	419480        	srli	a9, a8, 4
40081a6a:	889a      	add.n	a8, a8, a9
40081a6c:	1088c0        	and	a8, a8, a12
40081a6f:	8288f0        	mull	a8, a8, a15
40081a72:	400300        	ssr	a3
40081a75:	918080        	srl	a8, a8
40081a78:	4121a2        	l32i	a10, a1, 0x104
40081a7b:	309ad0        	xor	a9, a10, a13
40081a7e:	aa0b      	addi.n	a10, a10, -1
40081a80:	1099a0        	and	a9, a9, a10
40081a83:	41a190        	srli	a10, a9, 1
40081a86:	10aab0        	and	a10, a10, a11
40081a89:	c099a0        	sub	a9, a9, a10
40081a8c:	10a960        	and	a10, a9, a6
40081a8f:	419290        	srli	a9, a9, 2
40081a92:	109960        	and	a9, a9, a6
40081a95:	9a9a      	add.n	a9, a10, a9
40081a97:	41a490        	srli	a10, a9, 4
40081a9a:	99aa      	add.n	a9, a9, a10
40081a9c:	1099c0        	and	a9, a9, a12
40081a9f:	8299f0        	mull	a9, a9, a15
40081aa2:	400300        	ssr	a3
40081aa5:	919090        	srl	a9, a9
40081aa8:	352172        	l32i	a7, a1, 212
40081aab:	029477        	bne	a4, a7, 40081ab1 <esp_hal_common::interrupt::vectored::handle_interrupts+0x841>
40081aae:	20c982        	addi	a8, a9, 32
40081ab1:	209250        	or	a9, a2, a5
40081ab4:	021977        	beq	a9, a7, 40081aba <esp_hal_common::interrupt::vectored::handle_interrupts+0x84a>
40081ab7:	ffaac6        	j	40081966 <esp_hal_common::interrupt::vectored::handle_interrupts+0x6f6>
40081aba:	40c8e2        	addi	a14, a8, 64
40081abd:	ffa946        	j	40081966 <esp_hal_common::interrupt::vectored::handle_interrupts+0x6f6>
40081ac0:	3c2132        	l32i	a3, a1, 240
40081ac3:	0273b6        	bltui	a3, 7, 40081ac9 <esp_hal_common::interrupt::vectored::handle_interrupts+0x859>
40081ac6:	008946        	j	40081cef <esp_hal_common::interrupt::vectored::handle_interrupts+0xa7f>
40081ac9:	1183c0        	slli	a8, a3, 4
40081acc:	08a192        	movi	a9, 0x108
40081acf:	919a      	add.n	a9, a1, a9
40081ad1:	00c992        	addi	a9, a9, 0
40081ad4:	a98a      	add.n	a10, a9, a8
40081ad6:	0a88      	l32i.n	a8, a10, 0
40081ad8:	332192        	l32i	a9, a1, 204
40081adb:	108890        	and	a8, a8, a9
40081ade:	3098d0        	xor	a9, a8, a13
40081ae1:	b80b      	addi.n	a11, a8, -1
40081ae3:	1099b0        	and	a9, a9, a11
40081ae6:	41b190        	srli	a11, a9, 1
40081ae9:	fa6fe1        	l32r	a14, 400804a8 <_init_end+0xa8>
40081aec:	10bbe0        	and	a11, a11, a14
40081aef:	c099b0        	sub	a9, a9, a11
40081af2:	fa6ec1        	l32r	a12, 400804ac <_init_end+0xac>
40081af5:	10b9c0        	and	a11, a9, a12
40081af8:	419290        	srli	a9, a9, 2
40081afb:	1099c0        	and	a9, a9, a12
40081afe:	9b9a      	add.n	a9, a11, a9
40081b00:	41b490        	srli	a11, a9, 4
40081b03:	99ba      	add.n	a9, a9, a11
40081b05:	fa6af1        	l32r	a15, 400804b0 <_init_end+0xb0>
40081b08:	1099f0        	and	a9, a9, a15
40081b0b:	fa6a71        	l32r	a7, 400804b4 <_init_end+0xb4>
40081b0e:	829970        	mull	a9, a9, a7
40081b11:	861c      	movi.n	a6, 24
40081b13:	400600        	ssr	a6
40081b16:	919090        	srl	a9, a9
40081b19:	1ab8      	l32i.n	a11, a10, 4
40081b1b:	0d5d      	mov.n	a5, a13
40081b1d:	3421d2        	l32i	a13, a1, 208
40081b20:	10dbd0        	and	a13, a11, a13
40081b23:	30bd50        	xor	a11, a13, a5
40081b26:	5d0b      	addi.n	a5, a13, -1
40081b28:	10bb50        	and	a11, a11, a5
40081b2b:	4151b0        	srli	a5, a11, 1
40081b2e:	1055e0        	and	a5, a5, a14
40081b31:	c0bb50        	sub	a11, a11, a5
40081b34:	105bc0        	and	a5, a11, a12
40081b37:	41b2b0        	srli	a11, a11, 2
40081b3a:	10bbc0        	and	a11, a11, a12
40081b3d:	b5ba      	add.n	a11, a5, a11
40081b3f:	4154b0        	srli	a5, a11, 4
40081b42:	bb5a      	add.n	a11, a11, a5
40081b44:	10bbf0        	and	a11, a11, a15
40081b47:	82bb70        	mull	a11, a11, a7
40081b4a:	400600        	ssr	a6
40081b4d:	9150b0        	srl	a5, a11
40081b50:	0b0c      	movi.n	a11, 0
40081b52:	0298b7        	bne	a8, a11, 40081b58 <esp_hal_common::interrupt::vectored::handle_interrupts+0x8e8>
40081b55:	20c592        	addi	a9, a5, 32
40081b58:	2aa8      	l32i.n	a10, a10, 8
40081b5a:	322152        	l32i	a5, a1, 200
40081b5d:	105a50        	and	a5, a10, a5
40081b60:	4021a2        	l32i	a10, a1, 0x100
40081b63:	30a5a0        	xor	a10, a5, a10
40081b66:	450b      	addi.n	a4, a5, -1
40081b68:	10aa40        	and	a10, a10, a4
40081b6b:	4141a0        	srli	a4, a10, 1
40081b6e:	10e4e0        	and	a14, a4, a14
40081b71:	c0aae0        	sub	a10, a10, a14
40081b74:	10eac0        	and	a14, a10, a12
40081b77:	41a2a0        	srli	a10, a10, 2
40081b7a:	10aac0        	and	a10, a10, a12
40081b7d:	aeaa      	add.n	a10, a14, a10
40081b7f:	41c4a0        	srli	a12, a10, 4
40081b82:	aaca      	add.n	a10, a10, a12
40081b84:	10aaf0        	and	a10, a10, a15
40081b87:	82aa70        	mull	a10, a10, a7
40081b8a:	400600        	ssr	a6
40081b8d:	91a0a0        	srl	a10, a10
40081b90:	0d15b7        	beq	a5, a11, 40081ba1 <esp_hal_common::interrupt::vectored::handle_interrupts+0x931>
40081b93:	2088d0        	or	a8, a8, a13
40081b96:	0f18b7        	beq	a8, a11, 40081ba9 <esp_hal_common::interrupt::vectored::handle_interrupts+0x939>
40081b99:	184c      	movi.n	a8, 65
40081b9b:	15b897        	bgeu	a8, a9, 40081bb4 <esp_hal_common::interrupt::vectored::handle_interrupts+0x944>
40081b9e:	ff46c6        	j	400818bd <esp_hal_common::interrupt::vectored::handle_interrupts+0x64d>
40081ba1:	0a4c      	movi.n	a10, 64
40081ba3:	2088d0        	or	a8, a8, a13
40081ba6:	ef98b7        	bne	a8, a11, 40081b99 <esp_hal_common::interrupt::vectored::handle_interrupts+0x929>
40081ba9:	40ca92        	addi	a9, a10, 64
40081bac:	184c      	movi.n	a8, 65
40081bae:	02b897        	bgeu	a8, a9, 40081bb4 <esp_hal_common::interrupt::vectored::handle_interrupts+0x944>
40081bb1:	ff4206        	j	400818bd <esp_hal_common::interrupt::vectored::handle_interrupts+0x64d>
40081bb4:	fa6aa1        	l32r	a10, 4008055c <_init_end+0x15c>
40081bb7:	a099a0        	addx4	a9, a9, a10
40081bba:	0998      	l32i.n	a9, a9, 0
40081bbc:	0009a0        	jx	a9
40081bbf:	1b0c      	movi.n	a11, 1
40081bc1:	004146        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081bc4:	2b0c      	movi.n	a11, 2
40081bc6:	004006        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081bc9:	3b0c      	movi.n	a11, 3
40081bcb:	003ec6        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081bce:	4b0c      	movi.n	a11, 4
40081bd0:	003d86        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081bd3:	5b0c      	movi.n	a11, 5
40081bd5:	003c46        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081bd8:	6b0c      	movi.n	a11, 6
40081bda:	003b06        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081bdd:	7b0c      	movi.n	a11, 7
40081bdf:	0039c6        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081be2:	8b0c      	movi.n	a11, 8
40081be4:	003886        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081be7:	9b0c      	movi.n	a11, 9
40081be9:	003746        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081bec:	cb0c      	movi.n	a11, 12
40081bee:	003606        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081bf1:	db0c      	movi.n	a11, 13
40081bf3:	0034c6        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081bf6:	eb0c      	movi.n	a11, 14
40081bf8:	003386        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081bfb:	fb0c      	movi.n	a11, 15
40081bfd:	003246        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081c00:	0b1c      	movi.n	a11, 16
40081c02:	003106        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081c05:	1b1c      	movi.n	a11, 17
40081c07:	002fc6        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081c0a:	2b1c      	movi.n	a11, 18
40081c0c:	002e86        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081c0f:	3b1c      	movi.n	a11, 19
40081c11:	002d46        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081c14:	4b1c      	movi.n	a11, 20
40081c16:	002c06        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081c19:	5b1c      	movi.n	a11, 21
40081c1b:	002ac6        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081c1e:	6b1c      	movi.n	a11, 22
40081c20:	002986        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081c23:	7b1c      	movi.n	a11, 23
40081c25:	002846        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081c28:	cb1c      	movi.n	a11, 28
40081c2a:	002706        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081c2d:	db1c      	movi.n	a11, 29
40081c2f:	0025c6        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081c32:	eb1c      	movi.n	a11, 30
40081c34:	002486        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081c37:	fb1c      	movi.n	a11, 31
40081c39:	002346        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081c3c:	0b2c      	movi.n	a11, 32
40081c3e:	002206        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081c41:	1b2c      	movi.n	a11, 33
40081c43:	0020c6        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081c46:	2b2c      	movi.n	a11, 34
40081c48:	001f86        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081c4b:	3b2c      	movi.n	a11, 35
40081c4d:	001e46        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081c50:	4b2c      	movi.n	a11, 36
40081c52:	001d06        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081c55:	7b2c      	movi.n	a11, 39
40081c57:	001bc6        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081c5a:	8b2c      	movi.n	a11, 40
40081c5c:	001a86        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081c5f:	bb2c      	movi.n	a11, 43
40081c61:	001946        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081c64:	cb2c      	movi.n	a11, 44
40081c66:	001806        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081c69:	db2c      	movi.n	a11, 45
40081c6b:	0016c6        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081c6e:	eb2c      	movi.n	a11, 46
40081c70:	001586        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081c73:	fb2c      	movi.n	a11, 47
40081c75:	001446        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081c78:	0b3c      	movi.n	a11, 48
40081c7a:	001306        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081c7d:	1b3c      	movi.n	a11, 49
40081c7f:	0011c6        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081c82:	2b3c      	movi.n	a11, 50
40081c84:	001086        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081c87:	3b3c      	movi.n	a11, 51
40081c89:	000f46        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081c8c:	4b3c      	movi.n	a11, 52
40081c8e:	000e06        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081c91:	5b3c      	movi.n	a11, 53
40081c93:	000cc6        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081c96:	6b3c      	movi.n	a11, 54
40081c98:	000b86        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081c9b:	8b3c      	movi.n	a11, 56
40081c9d:	000a46        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081ca0:	9b3c      	movi.n	a11, 57
40081ca2:	000906        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081ca5:	ab3c      	movi.n	a11, 58
40081ca7:	0007c6        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081caa:	bb3c      	movi.n	a11, 59
40081cac:	000686        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081caf:	cb3c      	movi.n	a11, 60
40081cb1:	000546        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081cb4:	db3c      	movi.n	a11, 61
40081cb6:	000406        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081cb9:	eb3c      	movi.n	a11, 62
40081cbb:	0002c6        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081cbe:	fb3c      	movi.n	a11, 63
40081cc0:	000186        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081cc3:	0b4c      	movi.n	a11, 64
40081cc5:	000046        	j	40081cca <esp_hal_common::interrupt::vectored::handle_interrupts+0xa5a>
40081cc8:	08bd      	mov.n	a11, a8
40081cca:	03ad      	mov.n	a10, a3
40081ccc:	3d21c2        	l32i	a12, a1, 244
40081ccf:	3b2182        	l32i	a8, a1, 236
40081cd2:	0008e0        	callx8	a8
40081cd5:	f01d      	retw.n
40081cd7:	8b0c      	movi.n	a11, 8
40081cd9:	f9efc1        	l32r	a12, 40080498 <_init_end+0x98>
40081cdc:	f9f081        	l32r	a8, 4008049c <_init_end+0x9c>
40081cdf:	02ad      	mov.n	a10, a2
40081ce1:	0008e0        	callx8	a8
40081ce4:	0041f0        	break	1, 15
40081ce7:	7a0c      	movi.n	a10, 7
40081ce9:	fa0ec1        	l32r	a12, 40080524 <_init_end+0x124>
40081cec:	000106        	j	40081cf4 <esp_hal_common::interrupt::vectored::handle_interrupts+0xa84>
40081cef:	7a0c      	movi.n	a10, 7
40081cf1:	fa19c1        	l32r	a12, 40080558 <_init_end+0x158>
40081cf4:	f9ea81        	l32r	a8, 4008049c <_init_end+0x9c>
40081cf7:	0abd      	mov.n	a11, a10
40081cf9:	0008e0        	callx8	a8
40081cfc:	0041f0        	break	1, 15
	...

40081d00 <esp_hal_common::interrupt::vectored::handle_interrupt>:
40081d00:	004136        	entry	a1, 32
40081d03:	fa1781        	l32r	a8, 40080560 <_init_end+0x160>
40081d06:	10b380        	and	a11, a3, a8
40081d09:	fa1681        	l32r	a8, 40080564 <_init_end+0x164>
40081d0c:	a08b80        	addx4	a8, a11, a8
40081d0f:	0888      	l32i.n	a8, a8, 0
40081d11:	fa1591        	l32r	a9, 40080568 <_init_end+0x168>
40081d14:	061897        	beq	a8, a9, 40081d1e <esp_hal_common::interrupt::vectored::handle_interrupt+0x1e>
40081d17:	04ad      	mov.n	a10, a4
40081d19:	0008e0        	callx8	a8
40081d1c:	f01d      	retw.n
40081d1e:	fa1281        	l32r	a8, 40080568 <_init_end+0x168>
40081d21:	02ad      	mov.n	a10, a2
40081d23:	0008e0        	callx8	a8
40081d26:	f01d      	retw.n
