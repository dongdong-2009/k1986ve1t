
bue_pwm.elf:     file format elf32-littlearm


Disassembly of section .text:

20100000 <main>:
20100000:	b580      	push	{r7, lr}
20100002:	b098      	sub	sp, #96	; 0x60
20100004:	af00      	add	r7, sp, #0
20100006:	2300      	movs	r3, #0
20100008:	65bb      	str	r3, [r7, #88]	; 0x58
2010000a:	2300      	movs	r3, #0
2010000c:	657b      	str	r3, [r7, #84]	; 0x54
2010000e:	2300      	movs	r3, #0
20100010:	65fb      	str	r3, [r7, #92]	; 0x5c
20100012:	f000 fb4b 	bl	201006ac <SystemInit>
20100016:	23fa      	movs	r3, #250	; 0xfa
20100018:	009b      	lsls	r3, r3, #2
2010001a:	0018      	movs	r0, r3
2010001c:	f000 fc12 	bl	20100844 <wait_timer_ticks>
20100020:	f000 fb56 	bl	201006d0 <get_dcA>
20100024:	0003      	movs	r3, r0
20100026:	653b      	str	r3, [r7, #80]	; 0x50
20100028:	f000 fb7c 	bl	20100724 <get_dcB>
2010002c:	0003      	movs	r3, r0
2010002e:	64fb      	str	r3, [r7, #76]	; 0x4c
20100030:	2310      	movs	r3, #16
20100032:	18fb      	adds	r3, r7, r3
20100034:	2264      	movs	r2, #100	; 0x64
20100036:	601a      	str	r2, [r3, #0]
20100038:	2310      	movs	r3, #16
2010003a:	18fb      	adds	r3, r7, r3
2010003c:	22c8      	movs	r2, #200	; 0xc8
2010003e:	605a      	str	r2, [r3, #4]
20100040:	2310      	movs	r3, #16
20100042:	18fb      	adds	r3, r7, r3
20100044:	2200      	movs	r2, #0
20100046:	609a      	str	r2, [r3, #8]
20100048:	2310      	movs	r3, #16
2010004a:	18fb      	adds	r3, r7, r3
2010004c:	2200      	movs	r2, #0
2010004e:	60da      	str	r2, [r3, #12]
20100050:	003b      	movs	r3, r7
20100052:	2264      	movs	r2, #100	; 0x64
20100054:	601a      	str	r2, [r3, #0]
20100056:	003b      	movs	r3, r7
20100058:	22c8      	movs	r2, #200	; 0xc8
2010005a:	605a      	str	r2, [r3, #4]
2010005c:	003b      	movs	r3, r7
2010005e:	2200      	movs	r2, #0
20100060:	609a      	str	r2, [r3, #8]
20100062:	003b      	movs	r3, r7
20100064:	2200      	movs	r2, #0
20100066:	60da      	str	r2, [r3, #12]
20100068:	4b5a      	ldr	r3, [pc, #360]	; (201001d4 <main+0x1d4>)
2010006a:	4a5a      	ldr	r2, [pc, #360]	; (201001d4 <main+0x1d4>)
2010006c:	6812      	ldr	r2, [r2, #0]
2010006e:	2120      	movs	r1, #32
20100070:	430a      	orrs	r2, r1
20100072:	601a      	str	r2, [r3, #0]
20100074:	4b58      	ldr	r3, [pc, #352]	; (201001d8 <main+0x1d8>)
20100076:	4a59      	ldr	r2, [pc, #356]	; (201001dc <main+0x1dc>)
20100078:	609a      	str	r2, [r3, #8]
2010007a:	4b59      	ldr	r3, [pc, #356]	; (201001e0 <main+0x1e0>)
2010007c:	2237      	movs	r2, #55	; 0x37
2010007e:	601a      	str	r2, [r3, #0]
20100080:	46c0      	nop			; (mov r8, r8)
20100082:	4b57      	ldr	r3, [pc, #348]	; (201001e0 <main+0x1e0>)
20100084:	6a1b      	ldr	r3, [r3, #32]
20100086:	2204      	movs	r2, #4
20100088:	4013      	ands	r3, r2
2010008a:	d0fa      	beq.n	20100082 <main+0x82>
2010008c:	4b54      	ldr	r3, [pc, #336]	; (201001e0 <main+0x1e0>)
2010008e:	699b      	ldr	r3, [r3, #24]
20100090:	051b      	lsls	r3, r3, #20
20100092:	0d1a      	lsrs	r2, r3, #20
20100094:	6d3b      	ldr	r3, [r7, #80]	; 0x50
20100096:	1ad3      	subs	r3, r2, r3
20100098:	64bb      	str	r3, [r7, #72]	; 0x48
2010009a:	4b51      	ldr	r3, [pc, #324]	; (201001e0 <main+0x1e0>)
2010009c:	2247      	movs	r2, #71	; 0x47
2010009e:	601a      	str	r2, [r3, #0]
201000a0:	46c0      	nop			; (mov r8, r8)
201000a2:	4b4f      	ldr	r3, [pc, #316]	; (201001e0 <main+0x1e0>)
201000a4:	6a1b      	ldr	r3, [r3, #32]
201000a6:	2204      	movs	r2, #4
201000a8:	4013      	ands	r3, r2
201000aa:	d0fa      	beq.n	201000a2 <main+0xa2>
201000ac:	4b4c      	ldr	r3, [pc, #304]	; (201001e0 <main+0x1e0>)
201000ae:	699b      	ldr	r3, [r3, #24]
201000b0:	051b      	lsls	r3, r3, #20
201000b2:	0d1a      	lsrs	r2, r3, #20
201000b4:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
201000b6:	1ad3      	subs	r3, r2, r3
201000b8:	647b      	str	r3, [r7, #68]	; 0x44
201000ba:	6cbb      	ldr	r3, [r7, #72]	; 0x48
201000bc:	425a      	negs	r2, r3
201000be:	6c7b      	ldr	r3, [r7, #68]	; 0x44
201000c0:	1ad3      	subs	r3, r2, r3
201000c2:	643b      	str	r3, [r7, #64]	; 0x40
201000c4:	4b43      	ldr	r3, [pc, #268]	; (201001d4 <main+0x1d4>)
201000c6:	4a43      	ldr	r2, [pc, #268]	; (201001d4 <main+0x1d4>)
201000c8:	6812      	ldr	r2, [r2, #0]
201000ca:	2120      	movs	r1, #32
201000cc:	438a      	bics	r2, r1
201000ce:	601a      	str	r2, [r3, #0]
201000d0:	46c0      	nop			; (mov r8, r8)
201000d2:	4b44      	ldr	r3, [pc, #272]	; (201001e4 <main+0x1e4>)
201000d4:	6d5b      	ldr	r3, [r3, #84]	; 0x54
201000d6:	2202      	movs	r2, #2
201000d8:	4013      	ands	r3, r2
201000da:	d0fa      	beq.n	201000d2 <main+0xd2>
201000dc:	4b41      	ldr	r3, [pc, #260]	; (201001e4 <main+0x1e4>)
201000de:	2200      	movs	r2, #0
201000e0:	655a      	str	r2, [r3, #84]	; 0x54
201000e2:	4b3d      	ldr	r3, [pc, #244]	; (201001d8 <main+0x1d8>)
201000e4:	689b      	ldr	r3, [r3, #8]
201000e6:	051b      	lsls	r3, r3, #20
201000e8:	0d1b      	lsrs	r3, r3, #20
201000ea:	0018      	movs	r0, r3
201000ec:	f000 fac6 	bl	2010067c <g2b>
201000f0:	0003      	movs	r3, r0
201000f2:	63fb      	str	r3, [r7, #60]	; 0x3c
201000f4:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
201000f6:	059b      	lsls	r3, r3, #22
201000f8:	0d9b      	lsrs	r3, r3, #22
201000fa:	657b      	str	r3, [r7, #84]	; 0x54
201000fc:	6d7b      	ldr	r3, [r7, #84]	; 0x54
201000fe:	33fa      	adds	r3, #250	; 0xfa
20100100:	059b      	lsls	r3, r3, #22
20100102:	0d9b      	lsrs	r3, r3, #22
20100104:	657b      	str	r3, [r7, #84]	; 0x54
20100106:	2320      	movs	r3, #32
20100108:	18fb      	adds	r3, r7, r3
2010010a:	6cba      	ldr	r2, [r7, #72]	; 0x48
2010010c:	601a      	str	r2, [r3, #0]
2010010e:	2320      	movs	r3, #32
20100110:	18fb      	adds	r3, r7, r3
20100112:	6c3a      	ldr	r2, [r7, #64]	; 0x40
20100114:	605a      	str	r2, [r3, #4]
20100116:	2320      	movs	r3, #32
20100118:	18fb      	adds	r3, r7, r3
2010011a:	6c7a      	ldr	r2, [r7, #68]	; 0x44
2010011c:	609a      	str	r2, [r3, #8]
2010011e:	6d7a      	ldr	r2, [r7, #84]	; 0x54
20100120:	232c      	movs	r3, #44	; 0x2c
20100122:	18f9      	adds	r1, r7, r3
20100124:	2320      	movs	r3, #32
20100126:	18fb      	adds	r3, r7, r3
20100128:	0018      	movs	r0, r3
2010012a:	f000 fbf3 	bl	20100914 <abc_to_dq>
2010012e:	232c      	movs	r3, #44	; 0x2c
20100130:	18fb      	adds	r3, r7, r3
20100132:	681b      	ldr	r3, [r3, #0]
20100134:	425b      	negs	r3, r3
20100136:	63bb      	str	r3, [r7, #56]	; 0x38
20100138:	232c      	movs	r3, #44	; 0x2c
2010013a:	18fb      	adds	r3, r7, r3
2010013c:	685b      	ldr	r3, [r3, #4]
2010013e:	22c8      	movs	r2, #200	; 0xc8
20100140:	1ad3      	subs	r3, r2, r3
20100142:	637b      	str	r3, [r7, #52]	; 0x34
20100144:	6dfa      	ldr	r2, [r7, #92]	; 0x5c
20100146:	6bb9      	ldr	r1, [r7, #56]	; 0x38
20100148:	2310      	movs	r3, #16
2010014a:	18fb      	adds	r3, r7, r3
2010014c:	0018      	movs	r0, r3
2010014e:	f000 fbbb 	bl	201008c8 <update>
20100152:	6dfa      	ldr	r2, [r7, #92]	; 0x5c
20100154:	6b79      	ldr	r1, [r7, #52]	; 0x34
20100156:	003b      	movs	r3, r7
20100158:	0018      	movs	r0, r3
2010015a:	f000 fbb5 	bl	201008c8 <update>
2010015e:	2310      	movs	r3, #16
20100160:	18fb      	adds	r3, r7, r3
20100162:	68da      	ldr	r2, [r3, #12]
20100164:	232c      	movs	r3, #44	; 0x2c
20100166:	18fb      	adds	r3, r7, r3
20100168:	601a      	str	r2, [r3, #0]
2010016a:	003b      	movs	r3, r7
2010016c:	68da      	ldr	r2, [r3, #12]
2010016e:	232c      	movs	r3, #44	; 0x2c
20100170:	18fb      	adds	r3, r7, r3
20100172:	605a      	str	r2, [r3, #4]
20100174:	6d7a      	ldr	r2, [r7, #84]	; 0x54
20100176:	232c      	movs	r3, #44	; 0x2c
20100178:	18f9      	adds	r1, r7, r3
2010017a:	2320      	movs	r3, #32
2010017c:	18fb      	adds	r3, r7, r3
2010017e:	0018      	movs	r0, r3
20100180:	f000 fe26 	bl	20100dd0 <svpwm>
20100184:	0003      	movs	r3, r0
20100186:	65fb      	str	r3, [r7, #92]	; 0x5c
20100188:	4a16      	ldr	r2, [pc, #88]	; (201001e4 <main+0x1e4>)
2010018a:	2320      	movs	r3, #32
2010018c:	18fb      	adds	r3, r7, r3
2010018e:	681b      	ldr	r3, [r3, #0]
20100190:	2180      	movs	r1, #128	; 0x80
20100192:	0089      	lsls	r1, r1, #2
20100194:	468c      	mov	ip, r1
20100196:	4463      	add	r3, ip
20100198:	6113      	str	r3, [r2, #16]
2010019a:	4a12      	ldr	r2, [pc, #72]	; (201001e4 <main+0x1e4>)
2010019c:	2320      	movs	r3, #32
2010019e:	18fb      	adds	r3, r7, r3
201001a0:	685b      	ldr	r3, [r3, #4]
201001a2:	2180      	movs	r1, #128	; 0x80
201001a4:	0089      	lsls	r1, r1, #2
201001a6:	468c      	mov	ip, r1
201001a8:	4463      	add	r3, ip
201001aa:	6153      	str	r3, [r2, #20]
201001ac:	4a0d      	ldr	r2, [pc, #52]	; (201001e4 <main+0x1e4>)
201001ae:	2320      	movs	r3, #32
201001b0:	18fb      	adds	r3, r7, r3
201001b2:	689b      	ldr	r3, [r3, #8]
201001b4:	2180      	movs	r1, #128	; 0x80
201001b6:	0089      	lsls	r1, r1, #2
201001b8:	468c      	mov	ip, r1
201001ba:	4463      	add	r3, ip
201001bc:	6193      	str	r3, [r2, #24]
201001be:	4a0a      	ldr	r2, [pc, #40]	; (201001e8 <main+0x1e8>)
201001c0:	2320      	movs	r3, #32
201001c2:	18fb      	adds	r3, r7, r3
201001c4:	681b      	ldr	r3, [r3, #0]
201001c6:	2180      	movs	r1, #128	; 0x80
201001c8:	0109      	lsls	r1, r1, #4
201001ca:	468c      	mov	ip, r1
201001cc:	4463      	add	r3, ip
201001ce:	6053      	str	r3, [r2, #4]
201001d0:	e74a      	b.n	20100068 <main+0x68>
201001d2:	46c0      	nop			; (mov r8, r8)
201001d4:	400b8000 	.word	0x400b8000
201001d8:	400a0000 	.word	0x400a0000
201001dc:	00000555 	.word	0x00000555
201001e0:	40088000 	.word	0x40088000
201001e4:	40098000 	.word	0x40098000
201001e8:	40090000 	.word	0x40090000

201001ec <sleep>:
201001ec:	b580      	push	{r7, lr}
201001ee:	b084      	sub	sp, #16
201001f0:	af00      	add	r7, sp, #0
201001f2:	6078      	str	r0, [r7, #4]
201001f4:	4b08      	ldr	r3, [pc, #32]	; (20100218 <sleep+0x2c>)
201001f6:	447b      	add	r3, pc
201001f8:	681a      	ldr	r2, [r3, #0]
201001fa:	687b      	ldr	r3, [r7, #4]
201001fc:	18d3      	adds	r3, r2, r3
201001fe:	60fb      	str	r3, [r7, #12]
20100200:	46c0      	nop			; (mov r8, r8)
20100202:	4b06      	ldr	r3, [pc, #24]	; (2010021c <sleep+0x30>)
20100204:	447b      	add	r3, pc
20100206:	681a      	ldr	r2, [r3, #0]
20100208:	68fb      	ldr	r3, [r7, #12]
2010020a:	429a      	cmp	r2, r3
2010020c:	d3f9      	bcc.n	20100202 <sleep+0x16>
2010020e:	46c0      	nop			; (mov r8, r8)
20100210:	0018      	movs	r0, r3
20100212:	46bd      	mov	sp, r7
20100214:	b004      	add	sp, #16
20100216:	bd80      	pop	{r7, pc}
20100218:	ffeffe1a 	.word	0xffeffe1a
2010021c:	ffeffe0c 	.word	0xffeffe0c

20100220 <PortConfig>:
20100220:	b580      	push	{r7, lr}
20100222:	af00      	add	r7, sp, #0
20100224:	4b45      	ldr	r3, [pc, #276]	; (2010033c <PortConfig+0x11c>)
20100226:	4a45      	ldr	r2, [pc, #276]	; (2010033c <PortConfig+0x11c>)
20100228:	69d2      	ldr	r2, [r2, #28]
2010022a:	2180      	movs	r1, #128	; 0x80
2010022c:	0389      	lsls	r1, r1, #14
2010022e:	430a      	orrs	r2, r1
20100230:	61da      	str	r2, [r3, #28]
20100232:	4b43      	ldr	r3, [pc, #268]	; (20100340 <PortConfig+0x120>)
20100234:	4a42      	ldr	r2, [pc, #264]	; (20100340 <PortConfig+0x120>)
20100236:	6892      	ldr	r2, [r2, #8]
20100238:	4942      	ldr	r1, [pc, #264]	; (20100344 <PortConfig+0x124>)
2010023a:	400a      	ands	r2, r1
2010023c:	609a      	str	r2, [r3, #8]
2010023e:	4b40      	ldr	r3, [pc, #256]	; (20100340 <PortConfig+0x120>)
20100240:	4a3f      	ldr	r2, [pc, #252]	; (20100340 <PortConfig+0x120>)
20100242:	6892      	ldr	r2, [r2, #8]
20100244:	4940      	ldr	r1, [pc, #256]	; (20100348 <PortConfig+0x128>)
20100246:	430a      	orrs	r2, r1
20100248:	609a      	str	r2, [r3, #8]
2010024a:	4b3d      	ldr	r3, [pc, #244]	; (20100340 <PortConfig+0x120>)
2010024c:	4a3c      	ldr	r2, [pc, #240]	; (20100340 <PortConfig+0x120>)
2010024e:	6852      	ldr	r2, [r2, #4]
20100250:	21fc      	movs	r1, #252	; 0xfc
20100252:	0109      	lsls	r1, r1, #4
20100254:	430a      	orrs	r2, r1
20100256:	605a      	str	r2, [r3, #4]
20100258:	4b39      	ldr	r3, [pc, #228]	; (20100340 <PortConfig+0x120>)
2010025a:	4a39      	ldr	r2, [pc, #228]	; (20100340 <PortConfig+0x120>)
2010025c:	68d2      	ldr	r2, [r2, #12]
2010025e:	21fc      	movs	r1, #252	; 0xfc
20100260:	0109      	lsls	r1, r1, #4
20100262:	430a      	orrs	r2, r1
20100264:	60da      	str	r2, [r3, #12]
20100266:	4b36      	ldr	r3, [pc, #216]	; (20100340 <PortConfig+0x120>)
20100268:	4a35      	ldr	r2, [pc, #212]	; (20100340 <PortConfig+0x120>)
2010026a:	6992      	ldr	r2, [r2, #24]
2010026c:	4937      	ldr	r1, [pc, #220]	; (2010034c <PortConfig+0x12c>)
2010026e:	430a      	orrs	r2, r1
20100270:	619a      	str	r2, [r3, #24]
20100272:	4b32      	ldr	r3, [pc, #200]	; (2010033c <PortConfig+0x11c>)
20100274:	4a31      	ldr	r2, [pc, #196]	; (2010033c <PortConfig+0x11c>)
20100276:	69d2      	ldr	r2, [r2, #28]
20100278:	2180      	movs	r1, #128	; 0x80
2010027a:	0489      	lsls	r1, r1, #18
2010027c:	430a      	orrs	r2, r1
2010027e:	61da      	str	r2, [r3, #28]
20100280:	4b33      	ldr	r3, [pc, #204]	; (20100350 <PortConfig+0x130>)
20100282:	4a33      	ldr	r2, [pc, #204]	; (20100350 <PortConfig+0x130>)
20100284:	68d2      	ldr	r2, [r2, #12]
20100286:	2102      	movs	r1, #2
20100288:	438a      	bics	r2, r1
2010028a:	60da      	str	r2, [r3, #12]
2010028c:	4b2b      	ldr	r3, [pc, #172]	; (2010033c <PortConfig+0x11c>)
2010028e:	4a2b      	ldr	r2, [pc, #172]	; (2010033c <PortConfig+0x11c>)
20100290:	69d2      	ldr	r2, [r2, #28]
20100292:	2180      	movs	r1, #128	; 0x80
20100294:	0449      	lsls	r1, r1, #17
20100296:	430a      	orrs	r2, r1
20100298:	61da      	str	r2, [r3, #28]
2010029a:	4b2e      	ldr	r3, [pc, #184]	; (20100354 <PortConfig+0x134>)
2010029c:	4a2d      	ldr	r2, [pc, #180]	; (20100354 <PortConfig+0x134>)
2010029e:	68d2      	ldr	r2, [r2, #12]
201002a0:	492d      	ldr	r1, [pc, #180]	; (20100358 <PortConfig+0x138>)
201002a2:	400a      	ands	r2, r1
201002a4:	60da      	str	r2, [r3, #12]
201002a6:	4b2b      	ldr	r3, [pc, #172]	; (20100354 <PortConfig+0x134>)
201002a8:	4a2a      	ldr	r2, [pc, #168]	; (20100354 <PortConfig+0x134>)
201002aa:	6892      	ldr	r2, [r2, #8]
201002ac:	492b      	ldr	r1, [pc, #172]	; (2010035c <PortConfig+0x13c>)
201002ae:	400a      	ands	r2, r1
201002b0:	609a      	str	r2, [r3, #8]
201002b2:	4b28      	ldr	r3, [pc, #160]	; (20100354 <PortConfig+0x134>)
201002b4:	4a27      	ldr	r2, [pc, #156]	; (20100354 <PortConfig+0x134>)
201002b6:	6892      	ldr	r2, [r2, #8]
201002b8:	21a0      	movs	r1, #160	; 0xa0
201002ba:	02c9      	lsls	r1, r1, #11
201002bc:	430a      	orrs	r2, r1
201002be:	609a      	str	r2, [r3, #8]
201002c0:	4b24      	ldr	r3, [pc, #144]	; (20100354 <PortConfig+0x134>)
201002c2:	4a24      	ldr	r2, [pc, #144]	; (20100354 <PortConfig+0x134>)
201002c4:	68d2      	ldr	r2, [r2, #12]
201002c6:	21c0      	movs	r1, #192	; 0xc0
201002c8:	0089      	lsls	r1, r1, #2
201002ca:	430a      	orrs	r2, r1
201002cc:	60da      	str	r2, [r3, #12]
201002ce:	4b21      	ldr	r3, [pc, #132]	; (20100354 <PortConfig+0x134>)
201002d0:	4a20      	ldr	r2, [pc, #128]	; (20100354 <PortConfig+0x134>)
201002d2:	6992      	ldr	r2, [r2, #24]
201002d4:	21c0      	movs	r1, #192	; 0xc0
201002d6:	0309      	lsls	r1, r1, #12
201002d8:	430a      	orrs	r2, r1
201002da:	619a      	str	r2, [r3, #24]
201002dc:	4b1d      	ldr	r3, [pc, #116]	; (20100354 <PortConfig+0x134>)
201002de:	4a1d      	ldr	r2, [pc, #116]	; (20100354 <PortConfig+0x134>)
201002e0:	6852      	ldr	r2, [r2, #4]
201002e2:	2180      	movs	r1, #128	; 0x80
201002e4:	0089      	lsls	r1, r1, #2
201002e6:	430a      	orrs	r2, r1
201002e8:	605a      	str	r2, [r3, #4]
201002ea:	4b1a      	ldr	r3, [pc, #104]	; (20100354 <PortConfig+0x134>)
201002ec:	4a19      	ldr	r2, [pc, #100]	; (20100354 <PortConfig+0x134>)
201002ee:	6852      	ldr	r2, [r2, #4]
201002f0:	491b      	ldr	r1, [pc, #108]	; (20100360 <PortConfig+0x140>)
201002f2:	400a      	ands	r2, r1
201002f4:	605a      	str	r2, [r3, #4]
201002f6:	4b11      	ldr	r3, [pc, #68]	; (2010033c <PortConfig+0x11c>)
201002f8:	4a10      	ldr	r2, [pc, #64]	; (2010033c <PortConfig+0x11c>)
201002fa:	69d2      	ldr	r2, [r2, #28]
201002fc:	2180      	movs	r1, #128	; 0x80
201002fe:	0409      	lsls	r1, r1, #16
20100300:	430a      	orrs	r2, r1
20100302:	61da      	str	r2, [r3, #28]
20100304:	4b17      	ldr	r3, [pc, #92]	; (20100364 <PortConfig+0x144>)
20100306:	2200      	movs	r2, #0
20100308:	609a      	str	r2, [r3, #8]
2010030a:	4b16      	ldr	r3, [pc, #88]	; (20100364 <PortConfig+0x144>)
2010030c:	2200      	movs	r2, #0
2010030e:	601a      	str	r2, [r3, #0]
20100310:	4b14      	ldr	r3, [pc, #80]	; (20100364 <PortConfig+0x144>)
20100312:	4a14      	ldr	r2, [pc, #80]	; (20100364 <PortConfig+0x144>)
20100314:	6852      	ldr	r2, [r2, #4]
20100316:	2120      	movs	r1, #32
20100318:	430a      	orrs	r2, r1
2010031a:	605a      	str	r2, [r3, #4]
2010031c:	4b11      	ldr	r3, [pc, #68]	; (20100364 <PortConfig+0x144>)
2010031e:	4a11      	ldr	r2, [pc, #68]	; (20100364 <PortConfig+0x144>)
20100320:	68d2      	ldr	r2, [r2, #12]
20100322:	2120      	movs	r1, #32
20100324:	430a      	orrs	r2, r1
20100326:	60da      	str	r2, [r3, #12]
20100328:	4b0e      	ldr	r3, [pc, #56]	; (20100364 <PortConfig+0x144>)
2010032a:	4a0e      	ldr	r2, [pc, #56]	; (20100364 <PortConfig+0x144>)
2010032c:	6992      	ldr	r2, [r2, #24]
2010032e:	21c0      	movs	r1, #192	; 0xc0
20100330:	0109      	lsls	r1, r1, #4
20100332:	430a      	orrs	r2, r1
20100334:	619a      	str	r2, [r3, #24]
20100336:	46c0      	nop			; (mov r8, r8)
20100338:	46bd      	mov	sp, r7
2010033a:	bd80      	pop	{r7, pc}
2010033c:	40020000 	.word	0x40020000
20100340:	400a8000 	.word	0x400a8000
20100344:	ff000fff 	.word	0xff000fff
20100348:	00aaa000 	.word	0x00aaa000
2010034c:	00fff000 	.word	0x00fff000
20100350:	400c8000 	.word	0x400c8000
20100354:	400c0000 	.word	0x400c0000
20100358:	fffff3ff 	.word	0xfffff3ff
2010035c:	fff0ffff 	.word	0xfff0ffff
20100360:	fffffeff 	.word	0xfffffeff
20100364:	400b8000 	.word	0x400b8000

20100368 <ClkConfig>:
20100368:	b580      	push	{r7, lr}
2010036a:	af00      	add	r7, sp, #0
2010036c:	4b18      	ldr	r3, [pc, #96]	; (201003d0 <ClkConfig+0x68>)
2010036e:	4a18      	ldr	r2, [pc, #96]	; (201003d0 <ClkConfig+0x68>)
20100370:	6892      	ldr	r2, [r2, #8]
20100372:	2101      	movs	r1, #1
20100374:	430a      	orrs	r2, r1
20100376:	609a      	str	r2, [r3, #8]
20100378:	46c0      	nop			; (mov r8, r8)
2010037a:	4b15      	ldr	r3, [pc, #84]	; (201003d0 <ClkConfig+0x68>)
2010037c:	681b      	ldr	r3, [r3, #0]
2010037e:	2204      	movs	r2, #4
20100380:	4013      	ands	r3, r2
20100382:	d0fa      	beq.n	2010037a <ClkConfig+0x12>
20100384:	4b12      	ldr	r3, [pc, #72]	; (201003d0 <ClkConfig+0x68>)
20100386:	4a12      	ldr	r2, [pc, #72]	; (201003d0 <ClkConfig+0x68>)
20100388:	68d2      	ldr	r2, [r2, #12]
2010038a:	2102      	movs	r1, #2
2010038c:	430a      	orrs	r2, r1
2010038e:	60da      	str	r2, [r3, #12]
20100390:	4b0f      	ldr	r3, [pc, #60]	; (201003d0 <ClkConfig+0x68>)
20100392:	4a10      	ldr	r2, [pc, #64]	; (201003d4 <ClkConfig+0x6c>)
20100394:	605a      	str	r2, [r3, #4]
20100396:	46c0      	nop			; (mov r8, r8)
20100398:	4b0d      	ldr	r3, [pc, #52]	; (201003d0 <ClkConfig+0x68>)
2010039a:	681b      	ldr	r3, [r3, #0]
2010039c:	2202      	movs	r2, #2
2010039e:	4013      	ands	r3, r2
201003a0:	d0fa      	beq.n	20100398 <ClkConfig+0x30>
201003a2:	4b0d      	ldr	r3, [pc, #52]	; (201003d8 <ClkConfig+0x70>)
201003a4:	4a0c      	ldr	r2, [pc, #48]	; (201003d8 <ClkConfig+0x70>)
201003a6:	6812      	ldr	r2, [r2, #0]
201003a8:	2120      	movs	r1, #32
201003aa:	430a      	orrs	r2, r1
201003ac:	601a      	str	r2, [r3, #0]
201003ae:	4b08      	ldr	r3, [pc, #32]	; (201003d0 <ClkConfig+0x68>)
201003b0:	4a07      	ldr	r2, [pc, #28]	; (201003d0 <ClkConfig+0x68>)
201003b2:	68d2      	ldr	r2, [r2, #12]
201003b4:	2180      	movs	r1, #128	; 0x80
201003b6:	0049      	lsls	r1, r1, #1
201003b8:	430a      	orrs	r2, r1
201003ba:	60da      	str	r2, [r3, #12]
201003bc:	4b04      	ldr	r3, [pc, #16]	; (201003d0 <ClkConfig+0x68>)
201003be:	4a04      	ldr	r2, [pc, #16]	; (201003d0 <ClkConfig+0x68>)
201003c0:	68d2      	ldr	r2, [r2, #12]
201003c2:	2104      	movs	r1, #4
201003c4:	430a      	orrs	r2, r1
201003c6:	60da      	str	r2, [r3, #12]
201003c8:	46c0      	nop			; (mov r8, r8)
201003ca:	46bd      	mov	sp, r7
201003cc:	bd80      	pop	{r7, pc}
201003ce:	46c0      	nop			; (mov r8, r8)
201003d0:	40020000 	.word	0x40020000
201003d4:	00000e04 	.word	0x00000e04
201003d8:	40018000 	.word	0x40018000

201003dc <TimerConfig>:
201003dc:	b580      	push	{r7, lr}
201003de:	af00      	add	r7, sp, #0
201003e0:	4b71      	ldr	r3, [pc, #452]	; (201005a8 <TimerConfig+0x1cc>)
201003e2:	4a71      	ldr	r2, [pc, #452]	; (201005a8 <TimerConfig+0x1cc>)
201003e4:	69d2      	ldr	r2, [r2, #28]
201003e6:	2180      	movs	r1, #128	; 0x80
201003e8:	0309      	lsls	r1, r1, #12
201003ea:	430a      	orrs	r2, r1
201003ec:	61da      	str	r2, [r3, #28]
201003ee:	4b6e      	ldr	r3, [pc, #440]	; (201005a8 <TimerConfig+0x1cc>)
201003f0:	4a6d      	ldr	r2, [pc, #436]	; (201005a8 <TimerConfig+0x1cc>)
201003f2:	6a92      	ldr	r2, [r2, #40]	; 0x28
201003f4:	2180      	movs	r1, #128	; 0x80
201003f6:	04c9      	lsls	r1, r1, #19
201003f8:	430a      	orrs	r2, r1
201003fa:	629a      	str	r2, [r3, #40]	; 0x28
201003fc:	4b6a      	ldr	r3, [pc, #424]	; (201005a8 <TimerConfig+0x1cc>)
201003fe:	4a6a      	ldr	r2, [pc, #424]	; (201005a8 <TimerConfig+0x1cc>)
20100400:	6a92      	ldr	r2, [r2, #40]	; 0x28
20100402:	496a      	ldr	r1, [pc, #424]	; (201005ac <TimerConfig+0x1d0>)
20100404:	400a      	ands	r2, r1
20100406:	629a      	str	r2, [r3, #40]	; 0x28
20100408:	4b69      	ldr	r3, [pc, #420]	; (201005b0 <TimerConfig+0x1d4>)
2010040a:	2200      	movs	r2, #0
2010040c:	601a      	str	r2, [r3, #0]
2010040e:	4b68      	ldr	r3, [pc, #416]	; (201005b0 <TimerConfig+0x1d4>)
20100410:	2204      	movs	r2, #4
20100412:	605a      	str	r2, [r3, #4]
20100414:	4b66      	ldr	r3, [pc, #408]	; (201005b0 <TimerConfig+0x1d4>)
20100416:	4a67      	ldr	r2, [pc, #412]	; (201005b4 <TimerConfig+0x1d8>)
20100418:	609a      	str	r2, [r3, #8]
2010041a:	4b65      	ldr	r3, [pc, #404]	; (201005b0 <TimerConfig+0x1d4>)
2010041c:	2280      	movs	r2, #128	; 0x80
2010041e:	0092      	lsls	r2, r2, #2
20100420:	611a      	str	r2, [r3, #16]
20100422:	4b63      	ldr	r3, [pc, #396]	; (201005b0 <TimerConfig+0x1d4>)
20100424:	2280      	movs	r2, #128	; 0x80
20100426:	0092      	lsls	r2, r2, #2
20100428:	615a      	str	r2, [r3, #20]
2010042a:	4b61      	ldr	r3, [pc, #388]	; (201005b0 <TimerConfig+0x1d4>)
2010042c:	2280      	movs	r2, #128	; 0x80
2010042e:	0092      	lsls	r2, r2, #2
20100430:	619a      	str	r2, [r3, #24]
20100432:	4b5f      	ldr	r3, [pc, #380]	; (201005b0 <TimerConfig+0x1d4>)
20100434:	4a5e      	ldr	r2, [pc, #376]	; (201005b0 <TimerConfig+0x1d4>)
20100436:	6a12      	ldr	r2, [r2, #32]
20100438:	495f      	ldr	r1, [pc, #380]	; (201005b8 <TimerConfig+0x1dc>)
2010043a:	400a      	ands	r2, r1
2010043c:	621a      	str	r2, [r3, #32]
2010043e:	4b5c      	ldr	r3, [pc, #368]	; (201005b0 <TimerConfig+0x1d4>)
20100440:	4a5b      	ldr	r2, [pc, #364]	; (201005b0 <TimerConfig+0x1d4>)
20100442:	6a12      	ldr	r2, [r2, #32]
20100444:	21e0      	movs	r1, #224	; 0xe0
20100446:	0109      	lsls	r1, r1, #4
20100448:	430a      	orrs	r2, r1
2010044a:	621a      	str	r2, [r3, #32]
2010044c:	4b58      	ldr	r3, [pc, #352]	; (201005b0 <TimerConfig+0x1d4>)
2010044e:	4a58      	ldr	r2, [pc, #352]	; (201005b0 <TimerConfig+0x1d4>)
20100450:	6b12      	ldr	r2, [r2, #48]	; 0x30
20100452:	210f      	movs	r1, #15
20100454:	438a      	bics	r2, r1
20100456:	631a      	str	r2, [r3, #48]	; 0x30
20100458:	4b55      	ldr	r3, [pc, #340]	; (201005b0 <TimerConfig+0x1d4>)
2010045a:	4a55      	ldr	r2, [pc, #340]	; (201005b0 <TimerConfig+0x1d4>)
2010045c:	6b12      	ldr	r2, [r2, #48]	; 0x30
2010045e:	210c      	movs	r1, #12
20100460:	430a      	orrs	r2, r1
20100462:	631a      	str	r2, [r3, #48]	; 0x30
20100464:	4b52      	ldr	r3, [pc, #328]	; (201005b0 <TimerConfig+0x1d4>)
20100466:	4a52      	ldr	r2, [pc, #328]	; (201005b0 <TimerConfig+0x1d4>)
20100468:	6b12      	ldr	r2, [r2, #48]	; 0x30
2010046a:	2101      	movs	r1, #1
2010046c:	430a      	orrs	r2, r1
2010046e:	631a      	str	r2, [r3, #48]	; 0x30
20100470:	4b4f      	ldr	r3, [pc, #316]	; (201005b0 <TimerConfig+0x1d4>)
20100472:	4a4f      	ldr	r2, [pc, #316]	; (201005b0 <TimerConfig+0x1d4>)
20100474:	6b12      	ldr	r2, [r2, #48]	; 0x30
20100476:	4951      	ldr	r1, [pc, #324]	; (201005bc <TimerConfig+0x1e0>)
20100478:	400a      	ands	r2, r1
2010047a:	631a      	str	r2, [r3, #48]	; 0x30
2010047c:	4b4c      	ldr	r3, [pc, #304]	; (201005b0 <TimerConfig+0x1d4>)
2010047e:	4a4c      	ldr	r2, [pc, #304]	; (201005b0 <TimerConfig+0x1d4>)
20100480:	6b12      	ldr	r2, [r2, #48]	; 0x30
20100482:	21c0      	movs	r1, #192	; 0xc0
20100484:	0109      	lsls	r1, r1, #4
20100486:	430a      	orrs	r2, r1
20100488:	631a      	str	r2, [r3, #48]	; 0x30
2010048a:	4b49      	ldr	r3, [pc, #292]	; (201005b0 <TimerConfig+0x1d4>)
2010048c:	4a48      	ldr	r2, [pc, #288]	; (201005b0 <TimerConfig+0x1d4>)
2010048e:	6b12      	ldr	r2, [r2, #48]	; 0x30
20100490:	2180      	movs	r1, #128	; 0x80
20100492:	0049      	lsls	r1, r1, #1
20100494:	430a      	orrs	r2, r1
20100496:	631a      	str	r2, [r3, #48]	; 0x30
20100498:	4b45      	ldr	r3, [pc, #276]	; (201005b0 <TimerConfig+0x1d4>)
2010049a:	4a45      	ldr	r2, [pc, #276]	; (201005b0 <TimerConfig+0x1d4>)
2010049c:	6a52      	ldr	r2, [r2, #36]	; 0x24
2010049e:	4946      	ldr	r1, [pc, #280]	; (201005b8 <TimerConfig+0x1dc>)
201004a0:	400a      	ands	r2, r1
201004a2:	625a      	str	r2, [r3, #36]	; 0x24
201004a4:	4b42      	ldr	r3, [pc, #264]	; (201005b0 <TimerConfig+0x1d4>)
201004a6:	4a42      	ldr	r2, [pc, #264]	; (201005b0 <TimerConfig+0x1d4>)
201004a8:	6a52      	ldr	r2, [r2, #36]	; 0x24
201004aa:	21e0      	movs	r1, #224	; 0xe0
201004ac:	0109      	lsls	r1, r1, #4
201004ae:	430a      	orrs	r2, r1
201004b0:	625a      	str	r2, [r3, #36]	; 0x24
201004b2:	4b3f      	ldr	r3, [pc, #252]	; (201005b0 <TimerConfig+0x1d4>)
201004b4:	4a3e      	ldr	r2, [pc, #248]	; (201005b0 <TimerConfig+0x1d4>)
201004b6:	6b52      	ldr	r2, [r2, #52]	; 0x34
201004b8:	210f      	movs	r1, #15
201004ba:	438a      	bics	r2, r1
201004bc:	635a      	str	r2, [r3, #52]	; 0x34
201004be:	4b3c      	ldr	r3, [pc, #240]	; (201005b0 <TimerConfig+0x1d4>)
201004c0:	4a3b      	ldr	r2, [pc, #236]	; (201005b0 <TimerConfig+0x1d4>)
201004c2:	6b52      	ldr	r2, [r2, #52]	; 0x34
201004c4:	210c      	movs	r1, #12
201004c6:	430a      	orrs	r2, r1
201004c8:	635a      	str	r2, [r3, #52]	; 0x34
201004ca:	4b39      	ldr	r3, [pc, #228]	; (201005b0 <TimerConfig+0x1d4>)
201004cc:	4a38      	ldr	r2, [pc, #224]	; (201005b0 <TimerConfig+0x1d4>)
201004ce:	6b52      	ldr	r2, [r2, #52]	; 0x34
201004d0:	2101      	movs	r1, #1
201004d2:	430a      	orrs	r2, r1
201004d4:	635a      	str	r2, [r3, #52]	; 0x34
201004d6:	4b36      	ldr	r3, [pc, #216]	; (201005b0 <TimerConfig+0x1d4>)
201004d8:	4a35      	ldr	r2, [pc, #212]	; (201005b0 <TimerConfig+0x1d4>)
201004da:	6b52      	ldr	r2, [r2, #52]	; 0x34
201004dc:	4937      	ldr	r1, [pc, #220]	; (201005bc <TimerConfig+0x1e0>)
201004de:	400a      	ands	r2, r1
201004e0:	635a      	str	r2, [r3, #52]	; 0x34
201004e2:	4b33      	ldr	r3, [pc, #204]	; (201005b0 <TimerConfig+0x1d4>)
201004e4:	4a32      	ldr	r2, [pc, #200]	; (201005b0 <TimerConfig+0x1d4>)
201004e6:	6b52      	ldr	r2, [r2, #52]	; 0x34
201004e8:	21c0      	movs	r1, #192	; 0xc0
201004ea:	0109      	lsls	r1, r1, #4
201004ec:	430a      	orrs	r2, r1
201004ee:	635a      	str	r2, [r3, #52]	; 0x34
201004f0:	4b2f      	ldr	r3, [pc, #188]	; (201005b0 <TimerConfig+0x1d4>)
201004f2:	4a2f      	ldr	r2, [pc, #188]	; (201005b0 <TimerConfig+0x1d4>)
201004f4:	6b52      	ldr	r2, [r2, #52]	; 0x34
201004f6:	2180      	movs	r1, #128	; 0x80
201004f8:	0049      	lsls	r1, r1, #1
201004fa:	430a      	orrs	r2, r1
201004fc:	635a      	str	r2, [r3, #52]	; 0x34
201004fe:	4b2c      	ldr	r3, [pc, #176]	; (201005b0 <TimerConfig+0x1d4>)
20100500:	4a2b      	ldr	r2, [pc, #172]	; (201005b0 <TimerConfig+0x1d4>)
20100502:	6a92      	ldr	r2, [r2, #40]	; 0x28
20100504:	492c      	ldr	r1, [pc, #176]	; (201005b8 <TimerConfig+0x1dc>)
20100506:	400a      	ands	r2, r1
20100508:	629a      	str	r2, [r3, #40]	; 0x28
2010050a:	4b29      	ldr	r3, [pc, #164]	; (201005b0 <TimerConfig+0x1d4>)
2010050c:	4a28      	ldr	r2, [pc, #160]	; (201005b0 <TimerConfig+0x1d4>)
2010050e:	6a92      	ldr	r2, [r2, #40]	; 0x28
20100510:	21e0      	movs	r1, #224	; 0xe0
20100512:	0109      	lsls	r1, r1, #4
20100514:	430a      	orrs	r2, r1
20100516:	629a      	str	r2, [r3, #40]	; 0x28
20100518:	4b25      	ldr	r3, [pc, #148]	; (201005b0 <TimerConfig+0x1d4>)
2010051a:	4a25      	ldr	r2, [pc, #148]	; (201005b0 <TimerConfig+0x1d4>)
2010051c:	6b92      	ldr	r2, [r2, #56]	; 0x38
2010051e:	210f      	movs	r1, #15
20100520:	438a      	bics	r2, r1
20100522:	639a      	str	r2, [r3, #56]	; 0x38
20100524:	4b22      	ldr	r3, [pc, #136]	; (201005b0 <TimerConfig+0x1d4>)
20100526:	4a22      	ldr	r2, [pc, #136]	; (201005b0 <TimerConfig+0x1d4>)
20100528:	6b92      	ldr	r2, [r2, #56]	; 0x38
2010052a:	210c      	movs	r1, #12
2010052c:	430a      	orrs	r2, r1
2010052e:	639a      	str	r2, [r3, #56]	; 0x38
20100530:	4b1f      	ldr	r3, [pc, #124]	; (201005b0 <TimerConfig+0x1d4>)
20100532:	4a1f      	ldr	r2, [pc, #124]	; (201005b0 <TimerConfig+0x1d4>)
20100534:	6b92      	ldr	r2, [r2, #56]	; 0x38
20100536:	2101      	movs	r1, #1
20100538:	430a      	orrs	r2, r1
2010053a:	639a      	str	r2, [r3, #56]	; 0x38
2010053c:	4b1c      	ldr	r3, [pc, #112]	; (201005b0 <TimerConfig+0x1d4>)
2010053e:	4a1c      	ldr	r2, [pc, #112]	; (201005b0 <TimerConfig+0x1d4>)
20100540:	6b92      	ldr	r2, [r2, #56]	; 0x38
20100542:	491e      	ldr	r1, [pc, #120]	; (201005bc <TimerConfig+0x1e0>)
20100544:	400a      	ands	r2, r1
20100546:	639a      	str	r2, [r3, #56]	; 0x38
20100548:	4b19      	ldr	r3, [pc, #100]	; (201005b0 <TimerConfig+0x1d4>)
2010054a:	4a19      	ldr	r2, [pc, #100]	; (201005b0 <TimerConfig+0x1d4>)
2010054c:	6b92      	ldr	r2, [r2, #56]	; 0x38
2010054e:	21c0      	movs	r1, #192	; 0xc0
20100550:	0109      	lsls	r1, r1, #4
20100552:	430a      	orrs	r2, r1
20100554:	639a      	str	r2, [r3, #56]	; 0x38
20100556:	4b16      	ldr	r3, [pc, #88]	; (201005b0 <TimerConfig+0x1d4>)
20100558:	4a15      	ldr	r2, [pc, #84]	; (201005b0 <TimerConfig+0x1d4>)
2010055a:	6b92      	ldr	r2, [r2, #56]	; 0x38
2010055c:	2180      	movs	r1, #128	; 0x80
2010055e:	0049      	lsls	r1, r1, #1
20100560:	430a      	orrs	r2, r1
20100562:	639a      	str	r2, [r3, #56]	; 0x38
20100564:	4b12      	ldr	r3, [pc, #72]	; (201005b0 <TimerConfig+0x1d4>)
20100566:	4a12      	ldr	r2, [pc, #72]	; (201005b0 <TimerConfig+0x1d4>)
20100568:	6c12      	ldr	r2, [r2, #64]	; 0x40
2010056a:	21c8      	movs	r1, #200	; 0xc8
2010056c:	01c9      	lsls	r1, r1, #7
2010056e:	430a      	orrs	r2, r1
20100570:	641a      	str	r2, [r3, #64]	; 0x40
20100572:	4b0f      	ldr	r3, [pc, #60]	; (201005b0 <TimerConfig+0x1d4>)
20100574:	4a0e      	ldr	r2, [pc, #56]	; (201005b0 <TimerConfig+0x1d4>)
20100576:	6c52      	ldr	r2, [r2, #68]	; 0x44
20100578:	21c8      	movs	r1, #200	; 0xc8
2010057a:	01c9      	lsls	r1, r1, #7
2010057c:	430a      	orrs	r2, r1
2010057e:	645a      	str	r2, [r3, #68]	; 0x44
20100580:	4b0b      	ldr	r3, [pc, #44]	; (201005b0 <TimerConfig+0x1d4>)
20100582:	4a0b      	ldr	r2, [pc, #44]	; (201005b0 <TimerConfig+0x1d4>)
20100584:	6c92      	ldr	r2, [r2, #72]	; 0x48
20100586:	21c8      	movs	r1, #200	; 0xc8
20100588:	01c9      	lsls	r1, r1, #7
2010058a:	430a      	orrs	r2, r1
2010058c:	649a      	str	r2, [r3, #72]	; 0x48
2010058e:	4b08      	ldr	r3, [pc, #32]	; (201005b0 <TimerConfig+0x1d4>)
20100590:	4a07      	ldr	r2, [pc, #28]	; (201005b0 <TimerConfig+0x1d4>)
20100592:	6d92      	ldr	r2, [r2, #88]	; 0x58
20100594:	21f0      	movs	r1, #240	; 0xf0
20100596:	0149      	lsls	r1, r1, #5
20100598:	430a      	orrs	r2, r1
2010059a:	659a      	str	r2, [r3, #88]	; 0x58
2010059c:	4b04      	ldr	r3, [pc, #16]	; (201005b0 <TimerConfig+0x1d4>)
2010059e:	2201      	movs	r2, #1
201005a0:	60da      	str	r2, [r3, #12]
201005a2:	46c0      	nop			; (mov r8, r8)
201005a4:	46bd      	mov	sp, r7
201005a6:	bd80      	pop	{r7, pc}
201005a8:	40020000 	.word	0x40020000
201005ac:	ff00ffff 	.word	0xff00ffff
201005b0:	40098000 	.word	0x40098000
201005b4:	000003ff 	.word	0x000003ff
201005b8:	fffff1ff 	.word	0xfffff1ff
201005bc:	fffff0ff 	.word	0xfffff0ff

201005c0 <adc_init>:
201005c0:	b580      	push	{r7, lr}
201005c2:	af00      	add	r7, sp, #0
201005c4:	4b07      	ldr	r3, [pc, #28]	; (201005e4 <adc_init+0x24>)
201005c6:	4a07      	ldr	r2, [pc, #28]	; (201005e4 <adc_init+0x24>)
201005c8:	69d2      	ldr	r2, [r2, #28]
201005ca:	2180      	movs	r1, #128	; 0x80
201005cc:	0289      	lsls	r1, r1, #10
201005ce:	430a      	orrs	r2, r1
201005d0:	61da      	str	r2, [r3, #28]
201005d2:	4b04      	ldr	r3, [pc, #16]	; (201005e4 <adc_init+0x24>)
201005d4:	4a04      	ldr	r2, [pc, #16]	; (201005e8 <adc_init+0x28>)
201005d6:	615a      	str	r2, [r3, #20]
201005d8:	4b04      	ldr	r3, [pc, #16]	; (201005ec <adc_init+0x2c>)
201005da:	2245      	movs	r2, #69	; 0x45
201005dc:	601a      	str	r2, [r3, #0]
201005de:	46c0      	nop			; (mov r8, r8)
201005e0:	46bd      	mov	sp, r7
201005e2:	bd80      	pop	{r7, pc}
201005e4:	40020000 	.word	0x40020000
201005e8:	00002020 	.word	0x00002020
201005ec:	40088000 	.word	0x40088000

201005f0 <dac_init>:
201005f0:	b580      	push	{r7, lr}
201005f2:	af00      	add	r7, sp, #0
201005f4:	4b07      	ldr	r3, [pc, #28]	; (20100614 <dac_init+0x24>)
201005f6:	4a07      	ldr	r2, [pc, #28]	; (20100614 <dac_init+0x24>)
201005f8:	69d2      	ldr	r2, [r2, #28]
201005fa:	2180      	movs	r1, #128	; 0x80
201005fc:	02c9      	lsls	r1, r1, #11
201005fe:	430a      	orrs	r2, r1
20100600:	61da      	str	r2, [r3, #28]
20100602:	4b05      	ldr	r3, [pc, #20]	; (20100618 <dac_init+0x28>)
20100604:	4a04      	ldr	r2, [pc, #16]	; (20100618 <dac_init+0x28>)
20100606:	6812      	ldr	r2, [r2, #0]
20100608:	2104      	movs	r1, #4
2010060a:	430a      	orrs	r2, r1
2010060c:	601a      	str	r2, [r3, #0]
2010060e:	46c0      	nop			; (mov r8, r8)
20100610:	46bd      	mov	sp, r7
20100612:	bd80      	pop	{r7, pc}
20100614:	40020000 	.word	0x40020000
20100618:	40090000 	.word	0x40090000

2010061c <ssi_init>:
2010061c:	b580      	push	{r7, lr}
2010061e:	af00      	add	r7, sp, #0
20100620:	4b0c      	ldr	r3, [pc, #48]	; (20100654 <ssi_init+0x38>)
20100622:	4a0c      	ldr	r2, [pc, #48]	; (20100654 <ssi_init+0x38>)
20100624:	69d2      	ldr	r2, [r2, #28]
20100626:	2180      	movs	r1, #128	; 0x80
20100628:	0349      	lsls	r1, r1, #13
2010062a:	430a      	orrs	r2, r1
2010062c:	61da      	str	r2, [r3, #28]
2010062e:	4b09      	ldr	r3, [pc, #36]	; (20100654 <ssi_init+0x38>)
20100630:	4a09      	ldr	r2, [pc, #36]	; (20100658 <ssi_init+0x3c>)
20100632:	62da      	str	r2, [r3, #44]	; 0x2c
20100634:	4b09      	ldr	r3, [pc, #36]	; (2010065c <ssi_init+0x40>)
20100636:	2200      	movs	r2, #0
20100638:	605a      	str	r2, [r3, #4]
2010063a:	4b08      	ldr	r3, [pc, #32]	; (2010065c <ssi_init+0x40>)
2010063c:	2210      	movs	r2, #16
2010063e:	611a      	str	r2, [r3, #16]
20100640:	4b06      	ldr	r3, [pc, #24]	; (2010065c <ssi_init+0x40>)
20100642:	4a07      	ldr	r2, [pc, #28]	; (20100660 <ssi_init+0x44>)
20100644:	601a      	str	r2, [r3, #0]
20100646:	4b05      	ldr	r3, [pc, #20]	; (2010065c <ssi_init+0x40>)
20100648:	2202      	movs	r2, #2
2010064a:	605a      	str	r2, [r3, #4]
2010064c:	46c0      	nop			; (mov r8, r8)
2010064e:	46bd      	mov	sp, r7
20100650:	bd80      	pop	{r7, pc}
20100652:	46c0      	nop			; (mov r8, r8)
20100654:	40020000 	.word	0x40020000
20100658:	02000a00 	.word	0x02000a00
2010065c:	400a0000 	.word	0x400a0000
20100660:	0000021b 	.word	0x0000021b

20100664 <b2g>:
20100664:	b580      	push	{r7, lr}
20100666:	b082      	sub	sp, #8
20100668:	af00      	add	r7, sp, #0
2010066a:	6078      	str	r0, [r7, #4]
2010066c:	687b      	ldr	r3, [r7, #4]
2010066e:	085a      	lsrs	r2, r3, #1
20100670:	687b      	ldr	r3, [r7, #4]
20100672:	4053      	eors	r3, r2
20100674:	0018      	movs	r0, r3
20100676:	46bd      	mov	sp, r7
20100678:	b002      	add	sp, #8
2010067a:	bd80      	pop	{r7, pc}

2010067c <g2b>:
2010067c:	b580      	push	{r7, lr}
2010067e:	b084      	sub	sp, #16
20100680:	af00      	add	r7, sp, #0
20100682:	6078      	str	r0, [r7, #4]
20100684:	2300      	movs	r3, #0
20100686:	60fb      	str	r3, [r7, #12]
20100688:	2300      	movs	r3, #0
2010068a:	60fb      	str	r3, [r7, #12]
2010068c:	e006      	b.n	2010069c <g2b+0x20>
2010068e:	68fa      	ldr	r2, [r7, #12]
20100690:	687b      	ldr	r3, [r7, #4]
20100692:	4053      	eors	r3, r2
20100694:	60fb      	str	r3, [r7, #12]
20100696:	687b      	ldr	r3, [r7, #4]
20100698:	085b      	lsrs	r3, r3, #1
2010069a:	607b      	str	r3, [r7, #4]
2010069c:	687b      	ldr	r3, [r7, #4]
2010069e:	2b00      	cmp	r3, #0
201006a0:	d1f5      	bne.n	2010068e <g2b+0x12>
201006a2:	68fb      	ldr	r3, [r7, #12]
201006a4:	0018      	movs	r0, r3
201006a6:	46bd      	mov	sp, r7
201006a8:	b004      	add	sp, #16
201006aa:	bd80      	pop	{r7, pc}

201006ac <SystemInit>:
201006ac:	b580      	push	{r7, lr}
201006ae:	af00      	add	r7, sp, #0
201006b0:	f7ff fe5a 	bl	20100368 <ClkConfig>
201006b4:	f7ff fdb4 	bl	20100220 <PortConfig>
201006b8:	f7ff fe90 	bl	201003dc <TimerConfig>
201006bc:	f7ff ff80 	bl	201005c0 <adc_init>
201006c0:	f7ff ff96 	bl	201005f0 <dac_init>
201006c4:	f7ff ffaa 	bl	2010061c <ssi_init>
201006c8:	46c0      	nop			; (mov r8, r8)
201006ca:	46bd      	mov	sp, r7
201006cc:	bd80      	pop	{r7, pc}
201006ce:	46c0      	nop			; (mov r8, r8)

201006d0 <get_dcA>:
201006d0:	b580      	push	{r7, lr}
201006d2:	b082      	sub	sp, #8
201006d4:	af00      	add	r7, sp, #0
201006d6:	2300      	movs	r3, #0
201006d8:	603b      	str	r3, [r7, #0]
201006da:	2300      	movs	r3, #0
201006dc:	607b      	str	r3, [r7, #4]
201006de:	e012      	b.n	20100706 <get_dcA+0x36>
201006e0:	4b0e      	ldr	r3, [pc, #56]	; (2010071c <get_dcA+0x4c>)
201006e2:	2237      	movs	r2, #55	; 0x37
201006e4:	601a      	str	r2, [r3, #0]
201006e6:	46c0      	nop			; (mov r8, r8)
201006e8:	4b0c      	ldr	r3, [pc, #48]	; (2010071c <get_dcA+0x4c>)
201006ea:	6a1b      	ldr	r3, [r3, #32]
201006ec:	2204      	movs	r2, #4
201006ee:	4013      	ands	r3, r2
201006f0:	d0fa      	beq.n	201006e8 <get_dcA+0x18>
201006f2:	4b0a      	ldr	r3, [pc, #40]	; (2010071c <get_dcA+0x4c>)
201006f4:	699b      	ldr	r3, [r3, #24]
201006f6:	051b      	lsls	r3, r3, #20
201006f8:	0d1a      	lsrs	r2, r3, #20
201006fa:	683b      	ldr	r3, [r7, #0]
201006fc:	18d3      	adds	r3, r2, r3
201006fe:	603b      	str	r3, [r7, #0]
20100700:	687b      	ldr	r3, [r7, #4]
20100702:	3301      	adds	r3, #1
20100704:	607b      	str	r3, [r7, #4]
20100706:	687b      	ldr	r3, [r7, #4]
20100708:	4a05      	ldr	r2, [pc, #20]	; (20100720 <get_dcA+0x50>)
2010070a:	4293      	cmp	r3, r2
2010070c:	dde8      	ble.n	201006e0 <get_dcA+0x10>
2010070e:	683b      	ldr	r3, [r7, #0]
20100710:	129b      	asrs	r3, r3, #10
20100712:	0018      	movs	r0, r3
20100714:	46bd      	mov	sp, r7
20100716:	b002      	add	sp, #8
20100718:	bd80      	pop	{r7, pc}
2010071a:	46c0      	nop			; (mov r8, r8)
2010071c:	40088000 	.word	0x40088000
20100720:	000003ff 	.word	0x000003ff

20100724 <get_dcB>:
20100724:	b580      	push	{r7, lr}
20100726:	b082      	sub	sp, #8
20100728:	af00      	add	r7, sp, #0
2010072a:	2300      	movs	r3, #0
2010072c:	603b      	str	r3, [r7, #0]
2010072e:	2300      	movs	r3, #0
20100730:	607b      	str	r3, [r7, #4]
20100732:	e012      	b.n	2010075a <get_dcB+0x36>
20100734:	4b0e      	ldr	r3, [pc, #56]	; (20100770 <get_dcB+0x4c>)
20100736:	2247      	movs	r2, #71	; 0x47
20100738:	601a      	str	r2, [r3, #0]
2010073a:	46c0      	nop			; (mov r8, r8)
2010073c:	4b0c      	ldr	r3, [pc, #48]	; (20100770 <get_dcB+0x4c>)
2010073e:	6a1b      	ldr	r3, [r3, #32]
20100740:	2204      	movs	r2, #4
20100742:	4013      	ands	r3, r2
20100744:	d0fa      	beq.n	2010073c <get_dcB+0x18>
20100746:	4b0a      	ldr	r3, [pc, #40]	; (20100770 <get_dcB+0x4c>)
20100748:	699b      	ldr	r3, [r3, #24]
2010074a:	051b      	lsls	r3, r3, #20
2010074c:	0d1a      	lsrs	r2, r3, #20
2010074e:	683b      	ldr	r3, [r7, #0]
20100750:	18d3      	adds	r3, r2, r3
20100752:	603b      	str	r3, [r7, #0]
20100754:	687b      	ldr	r3, [r7, #4]
20100756:	3301      	adds	r3, #1
20100758:	607b      	str	r3, [r7, #4]
2010075a:	687b      	ldr	r3, [r7, #4]
2010075c:	4a05      	ldr	r2, [pc, #20]	; (20100774 <get_dcB+0x50>)
2010075e:	4293      	cmp	r3, r2
20100760:	dde8      	ble.n	20100734 <get_dcB+0x10>
20100762:	683b      	ldr	r3, [r7, #0]
20100764:	129b      	asrs	r3, r3, #10
20100766:	0018      	movs	r0, r3
20100768:	46bd      	mov	sp, r7
2010076a:	b002      	add	sp, #8
2010076c:	bd80      	pop	{r7, pc}
2010076e:	46c0      	nop			; (mov r8, r8)
20100770:	40088000 	.word	0x40088000
20100774:	000003ff 	.word	0x000003ff

20100778 <vector_sync_motor_controller>:
20100778:	b580      	push	{r7, lr}
2010077a:	b090      	sub	sp, #64	; 0x40
2010077c:	af00      	add	r7, sp, #0
2010077e:	6078      	str	r0, [r7, #4]
20100780:	6039      	str	r1, [r7, #0]
20100782:	683a      	ldr	r2, [r7, #0]
20100784:	232c      	movs	r3, #44	; 0x2c
20100786:	18f9      	adds	r1, r7, r3
20100788:	687b      	ldr	r3, [r7, #4]
2010078a:	0018      	movs	r0, r3
2010078c:	f000 f8c2 	bl	20100914 <abc_to_dq>
20100790:	232c      	movs	r3, #44	; 0x2c
20100792:	18fb      	adds	r3, r7, r3
20100794:	681b      	ldr	r3, [r3, #0]
20100796:	425b      	negs	r3, r3
20100798:	63fb      	str	r3, [r7, #60]	; 0x3c
2010079a:	232c      	movs	r3, #44	; 0x2c
2010079c:	18fb      	adds	r3, r7, r3
2010079e:	685b      	ldr	r3, [r3, #4]
201007a0:	22c8      	movs	r2, #200	; 0xc8
201007a2:	1ad3      	subs	r3, r2, r3
201007a4:	63bb      	str	r3, [r7, #56]	; 0x38
201007a6:	6b7a      	ldr	r2, [r7, #52]	; 0x34
201007a8:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
201007aa:	231c      	movs	r3, #28
201007ac:	18fb      	adds	r3, r7, r3
201007ae:	0018      	movs	r0, r3
201007b0:	f000 f88a 	bl	201008c8 <update>
201007b4:	6b7a      	ldr	r2, [r7, #52]	; 0x34
201007b6:	6bb9      	ldr	r1, [r7, #56]	; 0x38
201007b8:	230c      	movs	r3, #12
201007ba:	18fb      	adds	r3, r7, r3
201007bc:	0018      	movs	r0, r3
201007be:	f000 f883 	bl	201008c8 <update>
201007c2:	231c      	movs	r3, #28
201007c4:	18fb      	adds	r3, r7, r3
201007c6:	68da      	ldr	r2, [r3, #12]
201007c8:	232c      	movs	r3, #44	; 0x2c
201007ca:	18fb      	adds	r3, r7, r3
201007cc:	601a      	str	r2, [r3, #0]
201007ce:	230c      	movs	r3, #12
201007d0:	18fb      	adds	r3, r7, r3
201007d2:	68da      	ldr	r2, [r3, #12]
201007d4:	232c      	movs	r3, #44	; 0x2c
201007d6:	18fb      	adds	r3, r7, r3
201007d8:	605a      	str	r2, [r3, #4]
201007da:	683b      	ldr	r3, [r7, #0]
201007dc:	33fa      	adds	r3, #250	; 0xfa
201007de:	059b      	lsls	r3, r3, #22
201007e0:	0d9a      	lsrs	r2, r3, #22
201007e2:	232c      	movs	r3, #44	; 0x2c
201007e4:	18f9      	adds	r1, r7, r3
201007e6:	687b      	ldr	r3, [r7, #4]
201007e8:	0018      	movs	r0, r3
201007ea:	f000 f8db 	bl	201009a4 <dq_to_abc>
201007ee:	4a13      	ldr	r2, [pc, #76]	; (2010083c <vector_sync_motor_controller+0xc4>)
201007f0:	687b      	ldr	r3, [r7, #4]
201007f2:	3308      	adds	r3, #8
201007f4:	681b      	ldr	r3, [r3, #0]
201007f6:	2180      	movs	r1, #128	; 0x80
201007f8:	0089      	lsls	r1, r1, #2
201007fa:	468c      	mov	ip, r1
201007fc:	4463      	add	r3, ip
201007fe:	6113      	str	r3, [r2, #16]
20100800:	4a0e      	ldr	r2, [pc, #56]	; (2010083c <vector_sync_motor_controller+0xc4>)
20100802:	687b      	ldr	r3, [r7, #4]
20100804:	3304      	adds	r3, #4
20100806:	681b      	ldr	r3, [r3, #0]
20100808:	2180      	movs	r1, #128	; 0x80
2010080a:	0089      	lsls	r1, r1, #2
2010080c:	468c      	mov	ip, r1
2010080e:	4463      	add	r3, ip
20100810:	6153      	str	r3, [r2, #20]
20100812:	4a0a      	ldr	r2, [pc, #40]	; (2010083c <vector_sync_motor_controller+0xc4>)
20100814:	687b      	ldr	r3, [r7, #4]
20100816:	681b      	ldr	r3, [r3, #0]
20100818:	2180      	movs	r1, #128	; 0x80
2010081a:	0089      	lsls	r1, r1, #2
2010081c:	468c      	mov	ip, r1
2010081e:	4463      	add	r3, ip
20100820:	6193      	str	r3, [r2, #24]
20100822:	4a07      	ldr	r2, [pc, #28]	; (20100840 <vector_sync_motor_controller+0xc8>)
20100824:	687b      	ldr	r3, [r7, #4]
20100826:	681b      	ldr	r3, [r3, #0]
20100828:	2180      	movs	r1, #128	; 0x80
2010082a:	0109      	lsls	r1, r1, #4
2010082c:	468c      	mov	ip, r1
2010082e:	4463      	add	r3, ip
20100830:	6053      	str	r3, [r2, #4]
20100832:	46c0      	nop			; (mov r8, r8)
20100834:	46bd      	mov	sp, r7
20100836:	b010      	add	sp, #64	; 0x40
20100838:	bd80      	pop	{r7, pc}
2010083a:	46c0      	nop			; (mov r8, r8)
2010083c:	40098000 	.word	0x40098000
20100840:	40090000 	.word	0x40090000

20100844 <wait_timer_ticks>:
20100844:	b580      	push	{r7, lr}
20100846:	b084      	sub	sp, #16
20100848:	af00      	add	r7, sp, #0
2010084a:	6078      	str	r0, [r7, #4]
2010084c:	2300      	movs	r3, #0
2010084e:	60fb      	str	r3, [r7, #12]
20100850:	e00b      	b.n	2010086a <wait_timer_ticks+0x26>
20100852:	46c0      	nop			; (mov r8, r8)
20100854:	4b09      	ldr	r3, [pc, #36]	; (2010087c <wait_timer_ticks+0x38>)
20100856:	6d5b      	ldr	r3, [r3, #84]	; 0x54
20100858:	2202      	movs	r2, #2
2010085a:	4013      	ands	r3, r2
2010085c:	d0fa      	beq.n	20100854 <wait_timer_ticks+0x10>
2010085e:	4b07      	ldr	r3, [pc, #28]	; (2010087c <wait_timer_ticks+0x38>)
20100860:	2200      	movs	r2, #0
20100862:	655a      	str	r2, [r3, #84]	; 0x54
20100864:	68fb      	ldr	r3, [r7, #12]
20100866:	3301      	adds	r3, #1
20100868:	60fb      	str	r3, [r7, #12]
2010086a:	68fa      	ldr	r2, [r7, #12]
2010086c:	687b      	ldr	r3, [r7, #4]
2010086e:	429a      	cmp	r2, r3
20100870:	dbef      	blt.n	20100852 <wait_timer_ticks+0xe>
20100872:	46c0      	nop			; (mov r8, r8)
20100874:	46bd      	mov	sp, r7
20100876:	b004      	add	sp, #16
20100878:	bd80      	pop	{r7, pc}
2010087a:	46c0      	nop			; (mov r8, r8)
2010087c:	40098000 	.word	0x40098000

20100880 <mycos>:
20100880:	4b05      	ldr	r3, [pc, #20]	; (20100898 <mycos+0x18>)
20100882:	4a06      	ldr	r2, [pc, #24]	; (2010089c <mycos+0x1c>)
20100884:	447b      	add	r3, pc
20100886:	0580      	lsls	r0, r0, #22
20100888:	589b      	ldr	r3, [r3, r2]
2010088a:	0d00      	lsrs	r0, r0, #20
2010088c:	58c0      	ldr	r0, [r0, r3]
2010088e:	b082      	sub	sp, #8
20100890:	9301      	str	r3, [sp, #4]
20100892:	b002      	add	sp, #8
20100894:	4770      	bx	lr
20100896:	46c0      	nop			; (mov r8, r8)
20100898:	ffeff77c 	.word	0xffeff77c
2010089c:	00000000 	.word	0x00000000

201008a0 <mysin>:
201008a0:	4b07      	ldr	r3, [pc, #28]	; (201008c0 <mysin+0x20>)
201008a2:	4a08      	ldr	r2, [pc, #32]	; (201008c4 <mysin+0x24>)
201008a4:	447b      	add	r3, pc
201008a6:	589b      	ldr	r3, [r3, r2]
201008a8:	b082      	sub	sp, #8
201008aa:	9301      	str	r3, [sp, #4]
201008ac:	23c0      	movs	r3, #192	; 0xc0
201008ae:	009b      	lsls	r3, r3, #2
201008b0:	469c      	mov	ip, r3
201008b2:	4460      	add	r0, ip
201008b4:	9b01      	ldr	r3, [sp, #4]
201008b6:	0580      	lsls	r0, r0, #22
201008b8:	0d00      	lsrs	r0, r0, #20
201008ba:	58c0      	ldr	r0, [r0, r3]
201008bc:	b002      	add	sp, #8
201008be:	4770      	bx	lr
201008c0:	ffeff75c 	.word	0xffeff75c
201008c4:	00000000 	.word	0x00000000

201008c8 <update>:
201008c8:	b510      	push	{r4, lr}
201008ca:	6804      	ldr	r4, [r0, #0]
201008cc:	6883      	ldr	r3, [r0, #8]
201008ce:	434c      	muls	r4, r1
201008d0:	2a00      	cmp	r2, #0
201008d2:	d004      	beq.n	201008de <update+0x16>
201008d4:	2b00      	cmp	r3, #0
201008d6:	dd09      	ble.n	201008ec <update+0x24>
201008d8:	2c00      	cmp	r4, #0
201008da:	dd00      	ble.n	201008de <update+0x16>
201008dc:	2400      	movs	r4, #0
201008de:	6842      	ldr	r2, [r0, #4]
201008e0:	18e3      	adds	r3, r4, r3
201008e2:	4351      	muls	r1, r2
201008e4:	18c9      	adds	r1, r1, r3
201008e6:	60c1      	str	r1, [r0, #12]
201008e8:	6083      	str	r3, [r0, #8]
201008ea:	bd10      	pop	{r4, pc}
201008ec:	2b00      	cmp	r3, #0
201008ee:	d0f6      	beq.n	201008de <update+0x16>
201008f0:	43e2      	mvns	r2, r4
201008f2:	17d2      	asrs	r2, r2, #31
201008f4:	4014      	ands	r4, r2
201008f6:	e7f2      	b.n	201008de <update+0x16>

201008f8 <dot3>:
201008f8:	6803      	ldr	r3, [r0, #0]
201008fa:	680a      	ldr	r2, [r1, #0]
201008fc:	b510      	push	{r4, lr}
201008fe:	435a      	muls	r2, r3
20100900:	6844      	ldr	r4, [r0, #4]
20100902:	684b      	ldr	r3, [r1, #4]
20100904:	6880      	ldr	r0, [r0, #8]
20100906:	4363      	muls	r3, r4
20100908:	18d2      	adds	r2, r2, r3
2010090a:	688b      	ldr	r3, [r1, #8]
2010090c:	4343      	muls	r3, r0
2010090e:	18d0      	adds	r0, r2, r3
20100910:	bd10      	pop	{r4, pc}
20100912:	46c0      	nop			; (mov r8, r8)

20100914 <abc_to_dq>:
20100914:	b5f0      	push	{r4, r5, r6, r7, lr}
20100916:	4647      	mov	r7, r8
20100918:	b480      	push	{r7}
2010091a:	4b1d      	ldr	r3, [pc, #116]	; (20100990 <abc_to_dq+0x7c>)
2010091c:	4c1d      	ldr	r4, [pc, #116]	; (20100994 <abc_to_dq+0x80>)
2010091e:	447b      	add	r3, pc
20100920:	591d      	ldr	r5, [r3, r4]
20100922:	23c0      	movs	r3, #192	; 0xc0
20100924:	009b      	lsls	r3, r3, #2
20100926:	18d3      	adds	r3, r2, r3
20100928:	059b      	lsls	r3, r3, #22
2010092a:	0d1b      	lsrs	r3, r3, #20
2010092c:	595b      	ldr	r3, [r3, r5]
2010092e:	4698      	mov	r8, r3
20100930:	4b19      	ldr	r3, [pc, #100]	; (20100998 <abc_to_dq+0x84>)
20100932:	18d4      	adds	r4, r2, r3
20100934:	05a4      	lsls	r4, r4, #22
20100936:	4b19      	ldr	r3, [pc, #100]	; (2010099c <abc_to_dq+0x88>)
20100938:	0d24      	lsrs	r4, r4, #20
2010093a:	5967      	ldr	r7, [r4, r5]
2010093c:	18d4      	adds	r4, r2, r3
2010093e:	05a4      	lsls	r4, r4, #22
20100940:	4b17      	ldr	r3, [pc, #92]	; (201009a0 <abc_to_dq+0x8c>)
20100942:	0d24      	lsrs	r4, r4, #20
20100944:	5966      	ldr	r6, [r4, r5]
20100946:	18d4      	adds	r4, r2, r3
20100948:	05a4      	lsls	r4, r4, #22
2010094a:	0d24      	lsrs	r4, r4, #20
2010094c:	5964      	ldr	r4, [r4, r5]
2010094e:	6843      	ldr	r3, [r0, #4]
20100950:	4363      	muls	r3, r4
20100952:	0094      	lsls	r4, r2, #2
20100954:	469c      	mov	ip, r3
20100956:	3256      	adds	r2, #86	; 0x56
20100958:	32ff      	adds	r2, #255	; 0xff
2010095a:	6803      	ldr	r3, [r0, #0]
2010095c:	5964      	ldr	r4, [r4, r5]
2010095e:	0592      	lsls	r2, r2, #22
20100960:	0d12      	lsrs	r2, r2, #20
20100962:	5955      	ldr	r5, [r2, r5]
20100964:	435c      	muls	r4, r3
20100966:	6883      	ldr	r3, [r0, #8]
20100968:	4464      	add	r4, ip
2010096a:	435d      	muls	r5, r3
2010096c:	4643      	mov	r3, r8
2010096e:	1964      	adds	r4, r4, r5
20100970:	12a4      	asrs	r4, r4, #10
20100972:	600c      	str	r4, [r1, #0]
20100974:	6802      	ldr	r2, [r0, #0]
20100976:	435a      	muls	r2, r3
20100978:	6843      	ldr	r3, [r0, #4]
2010097a:	437b      	muls	r3, r7
2010097c:	18d3      	adds	r3, r2, r3
2010097e:	6882      	ldr	r2, [r0, #8]
20100980:	4372      	muls	r2, r6
20100982:	189b      	adds	r3, r3, r2
20100984:	425b      	negs	r3, r3
20100986:	129b      	asrs	r3, r3, #10
20100988:	604b      	str	r3, [r1, #4]
2010098a:	bc04      	pop	{r2}
2010098c:	4690      	mov	r8, r2
2010098e:	bdf0      	pop	{r4, r5, r6, r7, pc}
20100990:	ffeff6e2 	.word	0xffeff6e2
20100994:	00000000 	.word	0x00000000
20100998:	000005aa 	.word	0x000005aa
2010099c:	00000455 	.word	0x00000455
201009a0:	000002aa 	.word	0x000002aa

201009a4 <dq_to_abc>:
201009a4:	b570      	push	{r4, r5, r6, lr}
201009a6:	4b1c      	ldr	r3, [pc, #112]	; (20100a18 <dq_to_abc+0x74>)
201009a8:	4c1c      	ldr	r4, [pc, #112]	; (20100a1c <dq_to_abc+0x78>)
201009aa:	447b      	add	r3, pc
201009ac:	591d      	ldr	r5, [r3, r4]
201009ae:	0093      	lsls	r3, r2, #2
201009b0:	680c      	ldr	r4, [r1, #0]
201009b2:	595b      	ldr	r3, [r3, r5]
201009b4:	684e      	ldr	r6, [r1, #4]
201009b6:	435c      	muls	r4, r3
201009b8:	23c0      	movs	r3, #192	; 0xc0
201009ba:	009b      	lsls	r3, r3, #2
201009bc:	18d3      	adds	r3, r2, r3
201009be:	059b      	lsls	r3, r3, #22
201009c0:	0d1b      	lsrs	r3, r3, #20
201009c2:	595b      	ldr	r3, [r3, r5]
201009c4:	4373      	muls	r3, r6
201009c6:	1ae3      	subs	r3, r4, r3
201009c8:	151b      	asrs	r3, r3, #20
201009ca:	6003      	str	r3, [r0, #0]
201009cc:	4b14      	ldr	r3, [pc, #80]	; (20100a20 <dq_to_abc+0x7c>)
201009ce:	680c      	ldr	r4, [r1, #0]
201009d0:	18d3      	adds	r3, r2, r3
201009d2:	059b      	lsls	r3, r3, #22
201009d4:	0d1b      	lsrs	r3, r3, #20
201009d6:	595b      	ldr	r3, [r3, r5]
201009d8:	684e      	ldr	r6, [r1, #4]
201009da:	435c      	muls	r4, r3
201009dc:	4b11      	ldr	r3, [pc, #68]	; (20100a24 <dq_to_abc+0x80>)
201009de:	18d3      	adds	r3, r2, r3
201009e0:	059b      	lsls	r3, r3, #22
201009e2:	0d1b      	lsrs	r3, r3, #20
201009e4:	595b      	ldr	r3, [r3, r5]
201009e6:	4373      	muls	r3, r6
201009e8:	1ae3      	subs	r3, r4, r3
201009ea:	151b      	asrs	r3, r3, #20
201009ec:	6043      	str	r3, [r0, #4]
201009ee:	0013      	movs	r3, r2
201009f0:	3356      	adds	r3, #86	; 0x56
201009f2:	33ff      	adds	r3, #255	; 0xff
201009f4:	059b      	lsls	r3, r3, #22
201009f6:	0d1b      	lsrs	r3, r3, #20
201009f8:	595b      	ldr	r3, [r3, r5]
201009fa:	680c      	ldr	r4, [r1, #0]
201009fc:	435c      	muls	r4, r3
201009fe:	4b0a      	ldr	r3, [pc, #40]	; (20100a28 <dq_to_abc+0x84>)
20100a00:	469c      	mov	ip, r3
20100a02:	4462      	add	r2, ip
20100a04:	0592      	lsls	r2, r2, #22
20100a06:	0d12      	lsrs	r2, r2, #20
20100a08:	5952      	ldr	r2, [r2, r5]
20100a0a:	684b      	ldr	r3, [r1, #4]
20100a0c:	4353      	muls	r3, r2
20100a0e:	1ae3      	subs	r3, r4, r3
20100a10:	151b      	asrs	r3, r3, #20
20100a12:	6083      	str	r3, [r0, #8]
20100a14:	bd70      	pop	{r4, r5, r6, pc}
20100a16:	46c0      	nop			; (mov r8, r8)
20100a18:	ffeff656 	.word	0xffeff656
20100a1c:	00000000 	.word	0x00000000
20100a20:	000002aa 	.word	0x000002aa
20100a24:	000005aa 	.word	0x000005aa
20100a28:	00000455 	.word	0x00000455

20100a2c <cord_atan>:
20100a2c:	b5f0      	push	{r4, r5, r6, r7, lr}
20100a2e:	4645      	mov	r5, r8
20100a30:	4657      	mov	r7, sl
20100a32:	464e      	mov	r6, r9
20100a34:	b4e0      	push	{r5, r6, r7}
20100a36:	4b65      	ldr	r3, [pc, #404]	; (20100bcc <cord_atan+0x1a0>)
20100a38:	b090      	sub	sp, #64	; 0x40
20100a3a:	447b      	add	r3, pc
20100a3c:	001c      	movs	r4, r3
20100a3e:	4694      	mov	ip, r2
20100a40:	466a      	mov	r2, sp
20100a42:	468a      	mov	sl, r1
20100a44:	cca2      	ldmia	r4!, {r1, r5, r7}
20100a46:	c2a2      	stmia	r2!, {r1, r5, r7}
20100a48:	cca2      	ldmia	r4!, {r1, r5, r7}
20100a4a:	c2a2      	stmia	r2!, {r1, r5, r7}
20100a4c:	cc22      	ldmia	r4!, {r1, r5}
20100a4e:	c222      	stmia	r2!, {r1, r5}
20100a50:	3320      	adds	r3, #32
20100a52:	aa08      	add	r2, sp, #32
20100a54:	4690      	mov	r8, r2
20100a56:	cb32      	ldmia	r3!, {r1, r4, r5}
20100a58:	c232      	stmia	r2!, {r1, r4, r5}
20100a5a:	cb32      	ldmia	r3!, {r1, r4, r5}
20100a5c:	c232      	stmia	r2!, {r1, r4, r5}
20100a5e:	cb12      	ldmia	r3!, {r1, r4}
20100a60:	c212      	stmia	r2!, {r1, r4}
20100a62:	6802      	ldr	r2, [r0, #0]
20100a64:	6845      	ldr	r5, [r0, #4]
20100a66:	17d1      	asrs	r1, r2, #31
20100a68:	1853      	adds	r3, r2, r1
20100a6a:	466e      	mov	r6, sp
20100a6c:	404b      	eors	r3, r1
20100a6e:	2d00      	cmp	r5, #0
20100a70:	dd6c      	ble.n	20100b4c <cord_atan+0x120>
20100a72:	195f      	adds	r7, r3, r5
20100a74:	1aeb      	subs	r3, r5, r3
20100a76:	9d00      	ldr	r5, [sp, #0]
20100a78:	2b00      	cmp	r3, #0
20100a7a:	d100      	bne.n	20100a7e <cord_atan+0x52>
20100a7c:	e094      	b.n	20100ba8 <cord_atan+0x17c>
20100a7e:	105c      	asrs	r4, r3, #1
20100a80:	2b00      	cmp	r3, #0
20100a82:	dd68      	ble.n	20100b56 <cord_atan+0x12a>
20100a84:	1078      	asrs	r0, r7, #1
20100a86:	1a1b      	subs	r3, r3, r0
20100a88:	6870      	ldr	r0, [r6, #4]
20100a8a:	19e4      	adds	r4, r4, r7
20100a8c:	4681      	mov	r9, r0
20100a8e:	444d      	add	r5, r9
20100a90:	2b00      	cmp	r3, #0
20100a92:	d100      	bne.n	20100a96 <cord_atan+0x6a>
20100a94:	e08a      	b.n	20100bac <cord_atan+0x180>
20100a96:	1098      	asrs	r0, r3, #2
20100a98:	2b00      	cmp	r3, #0
20100a9a:	dd62      	ble.n	20100b62 <cord_atan+0x136>
20100a9c:	1907      	adds	r7, r0, r4
20100a9e:	10a4      	asrs	r4, r4, #2
20100aa0:	1b18      	subs	r0, r3, r4
20100aa2:	68b3      	ldr	r3, [r6, #8]
20100aa4:	4699      	mov	r9, r3
20100aa6:	444d      	add	r5, r9
20100aa8:	2800      	cmp	r0, #0
20100aaa:	d100      	bne.n	20100aae <cord_atan+0x82>
20100aac:	e081      	b.n	20100bb2 <cord_atan+0x186>
20100aae:	10c3      	asrs	r3, r0, #3
20100ab0:	2800      	cmp	r0, #0
20100ab2:	dd5c      	ble.n	20100b6e <cord_atan+0x142>
20100ab4:	10fc      	asrs	r4, r7, #3
20100ab6:	1b00      	subs	r0, r0, r4
20100ab8:	68f4      	ldr	r4, [r6, #12]
20100aba:	19db      	adds	r3, r3, r7
20100abc:	46a1      	mov	r9, r4
20100abe:	444d      	add	r5, r9
20100ac0:	2800      	cmp	r0, #0
20100ac2:	d100      	bne.n	20100ac6 <cord_atan+0x9a>
20100ac4:	e077      	b.n	20100bb6 <cord_atan+0x18a>
20100ac6:	1104      	asrs	r4, r0, #4
20100ac8:	2800      	cmp	r0, #0
20100aca:	dd56      	ble.n	20100b7a <cord_atan+0x14e>
20100acc:	18e7      	adds	r7, r4, r3
20100ace:	111b      	asrs	r3, r3, #4
20100ad0:	1ac4      	subs	r4, r0, r3
20100ad2:	6933      	ldr	r3, [r6, #16]
20100ad4:	4699      	mov	r9, r3
20100ad6:	444d      	add	r5, r9
20100ad8:	2c00      	cmp	r4, #0
20100ada:	d100      	bne.n	20100ade <cord_atan+0xb2>
20100adc:	e06e      	b.n	20100bbc <cord_atan+0x190>
20100ade:	1163      	asrs	r3, r4, #5
20100ae0:	2c00      	cmp	r4, #0
20100ae2:	dd50      	ble.n	20100b86 <cord_atan+0x15a>
20100ae4:	1178      	asrs	r0, r7, #5
20100ae6:	1a20      	subs	r0, r4, r0
20100ae8:	6974      	ldr	r4, [r6, #20]
20100aea:	19db      	adds	r3, r3, r7
20100aec:	46a1      	mov	r9, r4
20100aee:	444d      	add	r5, r9
20100af0:	2800      	cmp	r0, #0
20100af2:	d065      	beq.n	20100bc0 <cord_atan+0x194>
20100af4:	1184      	asrs	r4, r0, #6
20100af6:	2800      	cmp	r0, #0
20100af8:	dd4b      	ble.n	20100b92 <cord_atan+0x166>
20100afa:	18e7      	adds	r7, r4, r3
20100afc:	119b      	asrs	r3, r3, #6
20100afe:	1ac0      	subs	r0, r0, r3
20100b00:	69b3      	ldr	r3, [r6, #24]
20100b02:	4699      	mov	r9, r3
20100b04:	444d      	add	r5, r9
20100b06:	2800      	cmp	r0, #0
20100b08:	d05d      	beq.n	20100bc6 <cord_atan+0x19a>
20100b0a:	dd48      	ble.n	20100b9e <cord_atan+0x172>
20100b0c:	69f3      	ldr	r3, [r6, #28]
20100b0e:	11c0      	asrs	r0, r0, #7
20100b10:	19c7      	adds	r7, r0, r7
20100b12:	18ed      	adds	r5, r5, r3
20100b14:	2307      	movs	r3, #7
20100b16:	2a00      	cmp	r2, #0
20100b18:	db14      	blt.n	20100b44 <cord_atan+0x118>
20100b1a:	2d00      	cmp	r5, #0
20100b1c:	da03      	bge.n	20100b26 <cord_atan+0xfa>
20100b1e:	2280      	movs	r2, #128	; 0x80
20100b20:	00d2      	lsls	r2, r2, #3
20100b22:	4691      	mov	r9, r2
20100b24:	444d      	add	r5, r9
20100b26:	4652      	mov	r2, sl
20100b28:	6015      	str	r5, [r2, #0]
20100b2a:	4642      	mov	r2, r8
20100b2c:	009b      	lsls	r3, r3, #2
20100b2e:	58d0      	ldr	r0, [r2, r3]
20100b30:	4663      	mov	r3, ip
20100b32:	4378      	muls	r0, r7
20100b34:	1280      	asrs	r0, r0, #10
20100b36:	6018      	str	r0, [r3, #0]
20100b38:	b010      	add	sp, #64	; 0x40
20100b3a:	bc1c      	pop	{r2, r3, r4}
20100b3c:	4690      	mov	r8, r2
20100b3e:	4699      	mov	r9, r3
20100b40:	46a2      	mov	sl, r4
20100b42:	bdf0      	pop	{r4, r5, r6, r7, pc}
20100b44:	2280      	movs	r2, #128	; 0x80
20100b46:	0092      	lsls	r2, r2, #2
20100b48:	1b55      	subs	r5, r2, r5
20100b4a:	e7e6      	b.n	20100b1a <cord_atan+0xee>
20100b4c:	9900      	ldr	r1, [sp, #0]
20100b4e:	1b5f      	subs	r7, r3, r5
20100b50:	195b      	adds	r3, r3, r5
20100b52:	424d      	negs	r5, r1
20100b54:	e790      	b.n	20100a78 <cord_atan+0x4c>
20100b56:	6871      	ldr	r1, [r6, #4]
20100b58:	1078      	asrs	r0, r7, #1
20100b5a:	1b3c      	subs	r4, r7, r4
20100b5c:	18c3      	adds	r3, r0, r3
20100b5e:	1a6d      	subs	r5, r5, r1
20100b60:	e796      	b.n	20100a90 <cord_atan+0x64>
20100b62:	1a27      	subs	r7, r4, r0
20100b64:	10a0      	asrs	r0, r4, #2
20100b66:	18c0      	adds	r0, r0, r3
20100b68:	68b3      	ldr	r3, [r6, #8]
20100b6a:	1aed      	subs	r5, r5, r3
20100b6c:	e79c      	b.n	20100aa8 <cord_atan+0x7c>
20100b6e:	68f1      	ldr	r1, [r6, #12]
20100b70:	10fc      	asrs	r4, r7, #3
20100b72:	1afb      	subs	r3, r7, r3
20100b74:	1820      	adds	r0, r4, r0
20100b76:	1a6d      	subs	r5, r5, r1
20100b78:	e7a2      	b.n	20100ac0 <cord_atan+0x94>
20100b7a:	1b1f      	subs	r7, r3, r4
20100b7c:	111c      	asrs	r4, r3, #4
20100b7e:	6933      	ldr	r3, [r6, #16]
20100b80:	1824      	adds	r4, r4, r0
20100b82:	1aed      	subs	r5, r5, r3
20100b84:	e7a8      	b.n	20100ad8 <cord_atan+0xac>
20100b86:	6971      	ldr	r1, [r6, #20]
20100b88:	1178      	asrs	r0, r7, #5
20100b8a:	1afb      	subs	r3, r7, r3
20100b8c:	1900      	adds	r0, r0, r4
20100b8e:	1a6d      	subs	r5, r5, r1
20100b90:	e7ae      	b.n	20100af0 <cord_atan+0xc4>
20100b92:	1b1f      	subs	r7, r3, r4
20100b94:	119b      	asrs	r3, r3, #6
20100b96:	1818      	adds	r0, r3, r0
20100b98:	69b3      	ldr	r3, [r6, #24]
20100b9a:	1aed      	subs	r5, r5, r3
20100b9c:	e7b3      	b.n	20100b06 <cord_atan+0xda>
20100b9e:	69f3      	ldr	r3, [r6, #28]
20100ba0:	11c4      	asrs	r4, r0, #7
20100ba2:	1b3f      	subs	r7, r7, r4
20100ba4:	1aed      	subs	r5, r5, r3
20100ba6:	e7b5      	b.n	20100b14 <cord_atan+0xe8>
20100ba8:	2300      	movs	r3, #0
20100baa:	e7b4      	b.n	20100b16 <cord_atan+0xea>
20100bac:	0027      	movs	r7, r4
20100bae:	2301      	movs	r3, #1
20100bb0:	e7b1      	b.n	20100b16 <cord_atan+0xea>
20100bb2:	2302      	movs	r3, #2
20100bb4:	e7af      	b.n	20100b16 <cord_atan+0xea>
20100bb6:	001f      	movs	r7, r3
20100bb8:	2303      	movs	r3, #3
20100bba:	e7ac      	b.n	20100b16 <cord_atan+0xea>
20100bbc:	2304      	movs	r3, #4
20100bbe:	e7aa      	b.n	20100b16 <cord_atan+0xea>
20100bc0:	001f      	movs	r7, r3
20100bc2:	2305      	movs	r3, #5
20100bc4:	e7a7      	b.n	20100b16 <cord_atan+0xea>
20100bc6:	2306      	movs	r3, #6
20100bc8:	e7a5      	b.n	20100b16 <cord_atan+0xea>
20100bca:	46c0      	nop			; (mov r8, r8)
20100bcc:	00001786 	.word	0x00001786

20100bd0 <sinpwm>:
20100bd0:	b5f0      	push	{r4, r5, r6, r7, lr}
20100bd2:	465f      	mov	r7, fp
20100bd4:	4656      	mov	r6, sl
20100bd6:	464d      	mov	r5, r9
20100bd8:	4644      	mov	r4, r8
20100bda:	b4f0      	push	{r4, r5, r6, r7}
20100bdc:	b089      	sub	sp, #36	; 0x24
20100bde:	466c      	mov	r4, sp
20100be0:	4b75      	ldr	r3, [pc, #468]	; (20100db8 <sinpwm+0x1e8>)
20100be2:	46eb      	mov	fp, sp
20100be4:	447b      	add	r3, pc
20100be6:	469a      	mov	sl, r3
20100be8:	4b74      	ldr	r3, [pc, #464]	; (20100dbc <sinpwm+0x1ec>)
20100bea:	447b      	add	r3, pc
20100bec:	3320      	adds	r3, #32
20100bee:	cbe0      	ldmia	r3!, {r5, r6, r7}
20100bf0:	c4e0      	stmia	r4!, {r5, r6, r7}
20100bf2:	cbe0      	ldmia	r3!, {r5, r6, r7}
20100bf4:	c4e0      	stmia	r4!, {r5, r6, r7}
20100bf6:	cb60      	ldmia	r3!, {r5, r6}
20100bf8:	c460      	stmia	r4!, {r5, r6}
20100bfa:	680b      	ldr	r3, [r1, #0]
20100bfc:	684f      	ldr	r7, [r1, #4]
20100bfe:	17dd      	asrs	r5, r3, #31
20100c00:	195c      	adds	r4, r3, r5
20100c02:	469c      	mov	ip, r3
20100c04:	406c      	eors	r4, r5
20100c06:	2f00      	cmp	r7, #0
20100c08:	dc00      	bgt.n	20100c0c <sinpwm+0x3c>
20100c0a:	e09c      	b.n	20100d46 <sinpwm+0x176>
20100c0c:	19e3      	adds	r3, r4, r7
20100c0e:	1b3c      	subs	r4, r7, r4
20100c10:	46a0      	mov	r8, r4
20100c12:	4644      	mov	r4, r8
20100c14:	2c00      	cmp	r4, #0
20100c16:	d100      	bne.n	20100c1a <sinpwm+0x4a>
20100c18:	e0bc      	b.n	20100d94 <sinpwm+0x1c4>
20100c1a:	dc00      	bgt.n	20100c1e <sinpwm+0x4e>
20100c1c:	e097      	b.n	20100d4e <sinpwm+0x17e>
20100c1e:	4644      	mov	r4, r8
20100c20:	4645      	mov	r5, r8
20100c22:	1064      	asrs	r4, r4, #1
20100c24:	18e4      	adds	r4, r4, r3
20100c26:	105b      	asrs	r3, r3, #1
20100c28:	1aeb      	subs	r3, r5, r3
20100c2a:	4698      	mov	r8, r3
20100c2c:	4643      	mov	r3, r8
20100c2e:	2b00      	cmp	r3, #0
20100c30:	d100      	bne.n	20100c34 <sinpwm+0x64>
20100c32:	e0b1      	b.n	20100d98 <sinpwm+0x1c8>
20100c34:	dc00      	bgt.n	20100c38 <sinpwm+0x68>
20100c36:	e08f      	b.n	20100d58 <sinpwm+0x188>
20100c38:	4643      	mov	r3, r8
20100c3a:	4645      	mov	r5, r8
20100c3c:	109b      	asrs	r3, r3, #2
20100c3e:	191b      	adds	r3, r3, r4
20100c40:	10a4      	asrs	r4, r4, #2
20100c42:	1b2c      	subs	r4, r5, r4
20100c44:	46a0      	mov	r8, r4
20100c46:	4644      	mov	r4, r8
20100c48:	2c00      	cmp	r4, #0
20100c4a:	d100      	bne.n	20100c4e <sinpwm+0x7e>
20100c4c:	e0a7      	b.n	20100d9e <sinpwm+0x1ce>
20100c4e:	dc00      	bgt.n	20100c52 <sinpwm+0x82>
20100c50:	e087      	b.n	20100d62 <sinpwm+0x192>
20100c52:	4644      	mov	r4, r8
20100c54:	4645      	mov	r5, r8
20100c56:	10e4      	asrs	r4, r4, #3
20100c58:	18e4      	adds	r4, r4, r3
20100c5a:	10db      	asrs	r3, r3, #3
20100c5c:	1aeb      	subs	r3, r5, r3
20100c5e:	4698      	mov	r8, r3
20100c60:	4643      	mov	r3, r8
20100c62:	2b00      	cmp	r3, #0
20100c64:	d100      	bne.n	20100c68 <sinpwm+0x98>
20100c66:	e09c      	b.n	20100da2 <sinpwm+0x1d2>
20100c68:	dc00      	bgt.n	20100c6c <sinpwm+0x9c>
20100c6a:	e07f      	b.n	20100d6c <sinpwm+0x19c>
20100c6c:	4643      	mov	r3, r8
20100c6e:	4645      	mov	r5, r8
20100c70:	111b      	asrs	r3, r3, #4
20100c72:	191b      	adds	r3, r3, r4
20100c74:	1124      	asrs	r4, r4, #4
20100c76:	1b2c      	subs	r4, r5, r4
20100c78:	2c00      	cmp	r4, #0
20100c7a:	d100      	bne.n	20100c7e <sinpwm+0xae>
20100c7c:	e094      	b.n	20100da8 <sinpwm+0x1d8>
20100c7e:	1165      	asrs	r5, r4, #5
20100c80:	46a8      	mov	r8, r5
20100c82:	2c00      	cmp	r4, #0
20100c84:	dc00      	bgt.n	20100c88 <sinpwm+0xb8>
20100c86:	e076      	b.n	20100d76 <sinpwm+0x1a6>
20100c88:	4498      	add	r8, r3
20100c8a:	46c1      	mov	r9, r8
20100c8c:	115b      	asrs	r3, r3, #5
20100c8e:	1ae4      	subs	r4, r4, r3
20100c90:	2c00      	cmp	r4, #0
20100c92:	d100      	bne.n	20100c96 <sinpwm+0xc6>
20100c94:	e08a      	b.n	20100dac <sinpwm+0x1dc>
20100c96:	11a3      	asrs	r3, r4, #6
20100c98:	2c00      	cmp	r4, #0
20100c9a:	dc00      	bgt.n	20100c9e <sinpwm+0xce>
20100c9c:	e070      	b.n	20100d80 <sinpwm+0x1b0>
20100c9e:	444b      	add	r3, r9
20100ca0:	4698      	mov	r8, r3
20100ca2:	464b      	mov	r3, r9
20100ca4:	119b      	asrs	r3, r3, #6
20100ca6:	1ae4      	subs	r4, r4, r3
20100ca8:	2c00      	cmp	r4, #0
20100caa:	d100      	bne.n	20100cae <sinpwm+0xde>
20100cac:	e081      	b.n	20100db2 <sinpwm+0x1e2>
20100cae:	dd6d      	ble.n	20100d8c <sinpwm+0x1bc>
20100cb0:	11e4      	asrs	r4, r4, #7
20100cb2:	0023      	movs	r3, r4
20100cb4:	4443      	add	r3, r8
20100cb6:	2407      	movs	r4, #7
20100cb8:	465d      	mov	r5, fp
20100cba:	00a4      	lsls	r4, r4, #2
20100cbc:	592c      	ldr	r4, [r5, r4]
20100cbe:	4655      	mov	r5, sl
20100cc0:	4666      	mov	r6, ip
20100cc2:	4363      	muls	r3, r4
20100cc4:	4c3e      	ldr	r4, [pc, #248]	; (20100dc0 <sinpwm+0x1f0>)
20100cc6:	151b      	asrs	r3, r3, #20
20100cc8:	592d      	ldr	r5, [r5, r4]
20100cca:	0094      	lsls	r4, r2, #2
20100ccc:	5964      	ldr	r4, [r4, r5]
20100cce:	4374      	muls	r4, r6
20100cd0:	26c0      	movs	r6, #192	; 0xc0
20100cd2:	00b6      	lsls	r6, r6, #2
20100cd4:	1996      	adds	r6, r2, r6
20100cd6:	05b6      	lsls	r6, r6, #22
20100cd8:	0d36      	lsrs	r6, r6, #20
20100cda:	5976      	ldr	r6, [r6, r5]
20100cdc:	4377      	muls	r7, r6
20100cde:	1be7      	subs	r7, r4, r7
20100ce0:	4c38      	ldr	r4, [pc, #224]	; (20100dc4 <sinpwm+0x1f4>)
20100ce2:	153f      	asrs	r7, r7, #20
20100ce4:	1914      	adds	r4, r2, r4
20100ce6:	05a4      	lsls	r4, r4, #22
20100ce8:	6007      	str	r7, [r0, #0]
20100cea:	0d24      	lsrs	r4, r4, #20
20100cec:	5964      	ldr	r4, [r4, r5]
20100cee:	680e      	ldr	r6, [r1, #0]
20100cf0:	684f      	ldr	r7, [r1, #4]
20100cf2:	4366      	muls	r6, r4
20100cf4:	4c34      	ldr	r4, [pc, #208]	; (20100dc8 <sinpwm+0x1f8>)
20100cf6:	1914      	adds	r4, r2, r4
20100cf8:	05a4      	lsls	r4, r4, #22
20100cfa:	0d24      	lsrs	r4, r4, #20
20100cfc:	5964      	ldr	r4, [r4, r5]
20100cfe:	437c      	muls	r4, r7
20100d00:	1b34      	subs	r4, r6, r4
20100d02:	1524      	asrs	r4, r4, #20
20100d04:	6044      	str	r4, [r0, #4]
20100d06:	0014      	movs	r4, r2
20100d08:	3456      	adds	r4, #86	; 0x56
20100d0a:	34ff      	adds	r4, #255	; 0xff
20100d0c:	05a4      	lsls	r4, r4, #22
20100d0e:	0d24      	lsrs	r4, r4, #20
20100d10:	680e      	ldr	r6, [r1, #0]
20100d12:	5964      	ldr	r4, [r4, r5]
20100d14:	4374      	muls	r4, r6
20100d16:	4e2d      	ldr	r6, [pc, #180]	; (20100dcc <sinpwm+0x1fc>)
20100d18:	46b4      	mov	ip, r6
20100d1a:	4462      	add	r2, ip
20100d1c:	0592      	lsls	r2, r2, #22
20100d1e:	0d12      	lsrs	r2, r2, #20
20100d20:	5955      	ldr	r5, [r2, r5]
20100d22:	684a      	ldr	r2, [r1, #4]
20100d24:	436a      	muls	r2, r5
20100d26:	1aa2      	subs	r2, r4, r2
20100d28:	1512      	asrs	r2, r2, #20
20100d2a:	6082      	str	r2, [r0, #8]
20100d2c:	22fa      	movs	r2, #250	; 0xfa
20100d2e:	2001      	movs	r0, #1
20100d30:	0052      	lsls	r2, r2, #1
20100d32:	4293      	cmp	r3, r2
20100d34:	dc00      	bgt.n	20100d38 <sinpwm+0x168>
20100d36:	2000      	movs	r0, #0
20100d38:	b009      	add	sp, #36	; 0x24
20100d3a:	bc3c      	pop	{r2, r3, r4, r5}
20100d3c:	4690      	mov	r8, r2
20100d3e:	4699      	mov	r9, r3
20100d40:	46a2      	mov	sl, r4
20100d42:	46ab      	mov	fp, r5
20100d44:	bdf0      	pop	{r4, r5, r6, r7, pc}
20100d46:	46a0      	mov	r8, r4
20100d48:	1be3      	subs	r3, r4, r7
20100d4a:	44b8      	add	r8, r7
20100d4c:	e761      	b.n	20100c12 <sinpwm+0x42>
20100d4e:	1064      	asrs	r4, r4, #1
20100d50:	1b1c      	subs	r4, r3, r4
20100d52:	105b      	asrs	r3, r3, #1
20100d54:	4498      	add	r8, r3
20100d56:	e769      	b.n	20100c2c <sinpwm+0x5c>
20100d58:	109b      	asrs	r3, r3, #2
20100d5a:	1ae3      	subs	r3, r4, r3
20100d5c:	10a4      	asrs	r4, r4, #2
20100d5e:	44a0      	add	r8, r4
20100d60:	e771      	b.n	20100c46 <sinpwm+0x76>
20100d62:	10e4      	asrs	r4, r4, #3
20100d64:	1b1c      	subs	r4, r3, r4
20100d66:	10db      	asrs	r3, r3, #3
20100d68:	4498      	add	r8, r3
20100d6a:	e779      	b.n	20100c60 <sinpwm+0x90>
20100d6c:	111b      	asrs	r3, r3, #4
20100d6e:	1ae3      	subs	r3, r4, r3
20100d70:	1124      	asrs	r4, r4, #4
20100d72:	4444      	add	r4, r8
20100d74:	e780      	b.n	20100c78 <sinpwm+0xa8>
20100d76:	1b5d      	subs	r5, r3, r5
20100d78:	115b      	asrs	r3, r3, #5
20100d7a:	46a9      	mov	r9, r5
20100d7c:	191c      	adds	r4, r3, r4
20100d7e:	e787      	b.n	20100c90 <sinpwm+0xc0>
20100d80:	464d      	mov	r5, r9
20100d82:	1aeb      	subs	r3, r5, r3
20100d84:	4698      	mov	r8, r3
20100d86:	11ab      	asrs	r3, r5, #6
20100d88:	191c      	adds	r4, r3, r4
20100d8a:	e78d      	b.n	20100ca8 <sinpwm+0xd8>
20100d8c:	4643      	mov	r3, r8
20100d8e:	11e4      	asrs	r4, r4, #7
20100d90:	1b1b      	subs	r3, r3, r4
20100d92:	e790      	b.n	20100cb6 <sinpwm+0xe6>
20100d94:	2400      	movs	r4, #0
20100d96:	e78f      	b.n	20100cb8 <sinpwm+0xe8>
20100d98:	0023      	movs	r3, r4
20100d9a:	2401      	movs	r4, #1
20100d9c:	e78c      	b.n	20100cb8 <sinpwm+0xe8>
20100d9e:	2402      	movs	r4, #2
20100da0:	e78a      	b.n	20100cb8 <sinpwm+0xe8>
20100da2:	0023      	movs	r3, r4
20100da4:	2403      	movs	r4, #3
20100da6:	e787      	b.n	20100cb8 <sinpwm+0xe8>
20100da8:	2404      	movs	r4, #4
20100daa:	e785      	b.n	20100cb8 <sinpwm+0xe8>
20100dac:	464b      	mov	r3, r9
20100dae:	2405      	movs	r4, #5
20100db0:	e782      	b.n	20100cb8 <sinpwm+0xe8>
20100db2:	4643      	mov	r3, r8
20100db4:	2406      	movs	r4, #6
20100db6:	e77f      	b.n	20100cb8 <sinpwm+0xe8>
20100db8:	ffeff41c 	.word	0xffeff41c
20100dbc:	000015d6 	.word	0x000015d6
20100dc0:	00000000 	.word	0x00000000
20100dc4:	000002aa 	.word	0x000002aa
20100dc8:	000005aa 	.word	0x000005aa
20100dcc:	00000455 	.word	0x00000455

20100dd0 <svpwm>:
20100dd0:	b5f0      	push	{r4, r5, r6, r7, lr}
20100dd2:	465f      	mov	r7, fp
20100dd4:	4656      	mov	r6, sl
20100dd6:	4644      	mov	r4, r8
20100dd8:	464d      	mov	r5, r9
20100dda:	b4f0      	push	{r4, r5, r6, r7}
20100ddc:	0005      	movs	r5, r0
20100dde:	48d0      	ldr	r0, [pc, #832]	; (20101120 <svpwm+0x350>)
20100de0:	b091      	sub	sp, #68	; 0x44
20100de2:	4478      	add	r0, pc
20100de4:	0006      	movs	r6, r0
20100de6:	466c      	mov	r4, sp
20100de8:	4bce      	ldr	r3, [pc, #824]	; (20101124 <svpwm+0x354>)
20100dea:	4693      	mov	fp, r2
20100dec:	447b      	add	r3, pc
20100dee:	469a      	mov	sl, r3
20100df0:	468c      	mov	ip, r1
20100df2:	ce0e      	ldmia	r6!, {r1, r2, r3}
20100df4:	c40e      	stmia	r4!, {r1, r2, r3}
20100df6:	ce0e      	ldmia	r6!, {r1, r2, r3}
20100df8:	c40e      	stmia	r4!, {r1, r2, r3}
20100dfa:	ce0c      	ldmia	r6!, {r2, r3}
20100dfc:	c40c      	stmia	r4!, {r2, r3}
20100dfe:	ae08      	add	r6, sp, #32
20100e00:	0034      	movs	r4, r6
20100e02:	3020      	adds	r0, #32
20100e04:	c80e      	ldmia	r0!, {r1, r2, r3}
20100e06:	c40e      	stmia	r4!, {r1, r2, r3}
20100e08:	c80e      	ldmia	r0!, {r1, r2, r3}
20100e0a:	c40e      	stmia	r4!, {r1, r2, r3}
20100e0c:	c80c      	ldmia	r0!, {r2, r3}
20100e0e:	c40c      	stmia	r4!, {r2, r3}
20100e10:	4663      	mov	r3, ip
20100e12:	681c      	ldr	r4, [r3, #0]
20100e14:	466f      	mov	r7, sp
20100e16:	17e2      	asrs	r2, r4, #31
20100e18:	18a3      	adds	r3, r4, r2
20100e1a:	4053      	eors	r3, r2
20100e1c:	4698      	mov	r8, r3
20100e1e:	4663      	mov	r3, ip
20100e20:	685b      	ldr	r3, [r3, #4]
20100e22:	2b00      	cmp	r3, #0
20100e24:	dc00      	bgt.n	20100e28 <svpwm+0x58>
20100e26:	e0b5      	b.n	20100f94 <svpwm+0x1c4>
20100e28:	4641      	mov	r1, r8
20100e2a:	18c8      	adds	r0, r1, r3
20100e2c:	1a5b      	subs	r3, r3, r1
20100e2e:	4698      	mov	r8, r3
20100e30:	9b00      	ldr	r3, [sp, #0]
20100e32:	4641      	mov	r1, r8
20100e34:	2900      	cmp	r1, #0
20100e36:	d100      	bne.n	20100e3a <svpwm+0x6a>
20100e38:	e15f      	b.n	201010fa <svpwm+0x32a>
20100e3a:	dc00      	bgt.n	20100e3e <svpwm+0x6e>
20100e3c:	e0b0      	b.n	20100fa0 <svpwm+0x1d0>
20100e3e:	4641      	mov	r1, r8
20100e40:	1049      	asrs	r1, r1, #1
20100e42:	4689      	mov	r9, r1
20100e44:	1041      	asrs	r1, r0, #1
20100e46:	4481      	add	r9, r0
20100e48:	4640      	mov	r0, r8
20100e4a:	1a41      	subs	r1, r0, r1
20100e4c:	4688      	mov	r8, r1
20100e4e:	6879      	ldr	r1, [r7, #4]
20100e50:	468c      	mov	ip, r1
20100e52:	4463      	add	r3, ip
20100e54:	4641      	mov	r1, r8
20100e56:	2900      	cmp	r1, #0
20100e58:	d100      	bne.n	20100e5c <svpwm+0x8c>
20100e5a:	e150      	b.n	201010fe <svpwm+0x32e>
20100e5c:	dc00      	bgt.n	20100e60 <svpwm+0x90>
20100e5e:	e0a7      	b.n	20100fb0 <svpwm+0x1e0>
20100e60:	4641      	mov	r1, r8
20100e62:	1089      	asrs	r1, r1, #2
20100e64:	4449      	add	r1, r9
20100e66:	0008      	movs	r0, r1
20100e68:	4649      	mov	r1, r9
20100e6a:	4642      	mov	r2, r8
20100e6c:	1089      	asrs	r1, r1, #2
20100e6e:	1a51      	subs	r1, r2, r1
20100e70:	68ba      	ldr	r2, [r7, #8]
20100e72:	4688      	mov	r8, r1
20100e74:	4694      	mov	ip, r2
20100e76:	4463      	add	r3, ip
20100e78:	4641      	mov	r1, r8
20100e7a:	2900      	cmp	r1, #0
20100e7c:	d100      	bne.n	20100e80 <svpwm+0xb0>
20100e7e:	e141      	b.n	20101104 <svpwm+0x334>
20100e80:	4642      	mov	r2, r8
20100e82:	dc00      	bgt.n	20100e86 <svpwm+0xb6>
20100e84:	e09c      	b.n	20100fc0 <svpwm+0x1f0>
20100e86:	10c9      	asrs	r1, r1, #3
20100e88:	1809      	adds	r1, r1, r0
20100e8a:	10c0      	asrs	r0, r0, #3
20100e8c:	1a12      	subs	r2, r2, r0
20100e8e:	4690      	mov	r8, r2
20100e90:	68fa      	ldr	r2, [r7, #12]
20100e92:	4694      	mov	ip, r2
20100e94:	4463      	add	r3, ip
20100e96:	4640      	mov	r0, r8
20100e98:	2800      	cmp	r0, #0
20100e9a:	d100      	bne.n	20100e9e <svpwm+0xce>
20100e9c:	e134      	b.n	20101108 <svpwm+0x338>
20100e9e:	4642      	mov	r2, r8
20100ea0:	dc00      	bgt.n	20100ea4 <svpwm+0xd4>
20100ea2:	e094      	b.n	20100fce <svpwm+0x1fe>
20100ea4:	1100      	asrs	r0, r0, #4
20100ea6:	1840      	adds	r0, r0, r1
20100ea8:	1109      	asrs	r1, r1, #4
20100eaa:	1a52      	subs	r2, r2, r1
20100eac:	4690      	mov	r8, r2
20100eae:	693a      	ldr	r2, [r7, #16]
20100eb0:	4694      	mov	ip, r2
20100eb2:	4463      	add	r3, ip
20100eb4:	4641      	mov	r1, r8
20100eb6:	2900      	cmp	r1, #0
20100eb8:	d100      	bne.n	20100ebc <svpwm+0xec>
20100eba:	e128      	b.n	2010110e <svpwm+0x33e>
20100ebc:	4642      	mov	r2, r8
20100ebe:	dc00      	bgt.n	20100ec2 <svpwm+0xf2>
20100ec0:	e08c      	b.n	20100fdc <svpwm+0x20c>
20100ec2:	1149      	asrs	r1, r1, #5
20100ec4:	4689      	mov	r9, r1
20100ec6:	1141      	asrs	r1, r0, #5
20100ec8:	1a51      	subs	r1, r2, r1
20100eca:	697a      	ldr	r2, [r7, #20]
20100ecc:	4481      	add	r9, r0
20100ece:	4694      	mov	ip, r2
20100ed0:	4463      	add	r3, ip
20100ed2:	2900      	cmp	r1, #0
20100ed4:	d100      	bne.n	20100ed8 <svpwm+0x108>
20100ed6:	e11c      	b.n	20101112 <svpwm+0x342>
20100ed8:	1188      	asrs	r0, r1, #6
20100eda:	2900      	cmp	r1, #0
20100edc:	dc00      	bgt.n	20100ee0 <svpwm+0x110>
20100ede:	e086      	b.n	20100fee <svpwm+0x21e>
20100ee0:	464a      	mov	r2, r9
20100ee2:	4448      	add	r0, r9
20100ee4:	4680      	mov	r8, r0
20100ee6:	1190      	asrs	r0, r2, #6
20100ee8:	69ba      	ldr	r2, [r7, #24]
20100eea:	1a09      	subs	r1, r1, r0
20100eec:	4694      	mov	ip, r2
20100eee:	4463      	add	r3, ip
20100ef0:	2900      	cmp	r1, #0
20100ef2:	d100      	bne.n	20100ef6 <svpwm+0x126>
20100ef4:	e110      	b.n	20101118 <svpwm+0x348>
20100ef6:	dc00      	bgt.n	20100efa <svpwm+0x12a>
20100ef8:	e0e2      	b.n	201010c0 <svpwm+0x2f0>
20100efa:	11c9      	asrs	r1, r1, #7
20100efc:	4441      	add	r1, r8
20100efe:	0008      	movs	r0, r1
20100f00:	69f9      	ldr	r1, [r7, #28]
20100f02:	185b      	adds	r3, r3, r1
20100f04:	2107      	movs	r1, #7
20100f06:	2c00      	cmp	r4, #0
20100f08:	db40      	blt.n	20100f8c <svpwm+0x1bc>
20100f0a:	2b00      	cmp	r3, #0
20100f0c:	da03      	bge.n	20100f16 <svpwm+0x146>
20100f0e:	2280      	movs	r2, #128	; 0x80
20100f10:	00d2      	lsls	r2, r2, #3
20100f12:	4694      	mov	ip, r2
20100f14:	4463      	add	r3, ip
20100f16:	22fa      	movs	r2, #250	; 0xfa
20100f18:	0089      	lsls	r1, r1, #2
20100f1a:	5871      	ldr	r1, [r6, r1]
20100f1c:	445b      	add	r3, fp
20100f1e:	4341      	muls	r1, r0
20100f20:	059b      	lsls	r3, r3, #22
20100f22:	1509      	asrs	r1, r1, #20
20100f24:	0d9b      	lsrs	r3, r3, #22
20100f26:	0052      	lsls	r2, r2, #1
20100f28:	2400      	movs	r4, #0
20100f2a:	4291      	cmp	r1, r2
20100f2c:	dd01      	ble.n	20100f32 <svpwm+0x162>
20100f2e:	0011      	movs	r1, r2
20100f30:	3401      	adds	r4, #1
20100f32:	0058      	lsls	r0, r3, #1
20100f34:	18c0      	adds	r0, r0, r3
20100f36:	1240      	asrs	r0, r0, #9
20100f38:	3801      	subs	r0, #1
20100f3a:	4a7b      	ldr	r2, [pc, #492]	; (20101128 <svpwm+0x358>)
20100f3c:	2804      	cmp	r0, #4
20100f3e:	d920      	bls.n	20100f82 <svpwm+0x1b2>
20100f40:	26c0      	movs	r6, #192	; 0xc0
20100f42:	4650      	mov	r0, sl
20100f44:	00b6      	lsls	r6, r6, #2
20100f46:	46b4      	mov	ip, r6
20100f48:	5880      	ldr	r0, [r0, r2]
20100f4a:	4a78      	ldr	r2, [pc, #480]	; (2010112c <svpwm+0x35c>)
20100f4c:	1ad2      	subs	r2, r2, r3
20100f4e:	4463      	add	r3, ip
20100f50:	0592      	lsls	r2, r2, #22
20100f52:	059b      	lsls	r3, r3, #22
20100f54:	0d12      	lsrs	r2, r2, #20
20100f56:	0d1b      	lsrs	r3, r3, #20
20100f58:	581b      	ldr	r3, [r3, r0]
20100f5a:	5812      	ldr	r2, [r2, r0]
20100f5c:	434a      	muls	r2, r1
20100f5e:	4359      	muls	r1, r3
20100f60:	1292      	asrs	r2, r2, #10
20100f62:	1289      	asrs	r1, r1, #10
20100f64:	1853      	adds	r3, r2, r1
20100f66:	602b      	str	r3, [r5, #0]
20100f68:	1a8b      	subs	r3, r1, r2
20100f6a:	4252      	negs	r2, r2
20100f6c:	1a52      	subs	r2, r2, r1
20100f6e:	606b      	str	r3, [r5, #4]
20100f70:	60aa      	str	r2, [r5, #8]
20100f72:	0020      	movs	r0, r4
20100f74:	b011      	add	sp, #68	; 0x44
20100f76:	bc3c      	pop	{r2, r3, r4, r5}
20100f78:	4690      	mov	r8, r2
20100f7a:	4699      	mov	r9, r3
20100f7c:	46a2      	mov	sl, r4
20100f7e:	46ab      	mov	fp, r5
20100f80:	bdf0      	pop	{r4, r5, r6, r7, pc}
20100f82:	f000 f915 	bl	201011b0 <__gnu_thumb1_case_uqi>
20100f86:	856c      	.short	0x856c
20100f88:	553d      	.short	0x553d
20100f8a:	a3          	.byte	0xa3
20100f8b:	00          	.byte	0x00
20100f8c:	2480      	movs	r4, #128	; 0x80
20100f8e:	00a4      	lsls	r4, r4, #2
20100f90:	1ae3      	subs	r3, r4, r3
20100f92:	e7ba      	b.n	20100f0a <svpwm+0x13a>
20100f94:	4642      	mov	r2, r8
20100f96:	4498      	add	r8, r3
20100f98:	1ad0      	subs	r0, r2, r3
20100f9a:	9b00      	ldr	r3, [sp, #0]
20100f9c:	425b      	negs	r3, r3
20100f9e:	e748      	b.n	20100e32 <svpwm+0x62>
20100fa0:	1049      	asrs	r1, r1, #1
20100fa2:	1a42      	subs	r2, r0, r1
20100fa4:	4691      	mov	r9, r2
20100fa6:	687a      	ldr	r2, [r7, #4]
20100fa8:	1041      	asrs	r1, r0, #1
20100faa:	4488      	add	r8, r1
20100fac:	1a9b      	subs	r3, r3, r2
20100fae:	e751      	b.n	20100e54 <svpwm+0x84>
20100fb0:	464a      	mov	r2, r9
20100fb2:	1089      	asrs	r1, r1, #2
20100fb4:	1a50      	subs	r0, r2, r1
20100fb6:	1091      	asrs	r1, r2, #2
20100fb8:	68ba      	ldr	r2, [r7, #8]
20100fba:	4488      	add	r8, r1
20100fbc:	1a9b      	subs	r3, r3, r2
20100fbe:	e75b      	b.n	20100e78 <svpwm+0xa8>
20100fc0:	10c9      	asrs	r1, r1, #3
20100fc2:	68fa      	ldr	r2, [r7, #12]
20100fc4:	1a41      	subs	r1, r0, r1
20100fc6:	10c0      	asrs	r0, r0, #3
20100fc8:	4480      	add	r8, r0
20100fca:	1a9b      	subs	r3, r3, r2
20100fcc:	e763      	b.n	20100e96 <svpwm+0xc6>
20100fce:	1100      	asrs	r0, r0, #4
20100fd0:	693a      	ldr	r2, [r7, #16]
20100fd2:	1a08      	subs	r0, r1, r0
20100fd4:	1109      	asrs	r1, r1, #4
20100fd6:	4488      	add	r8, r1
20100fd8:	1a9b      	subs	r3, r3, r2
20100fda:	e76b      	b.n	20100eb4 <svpwm+0xe4>
20100fdc:	1149      	asrs	r1, r1, #5
20100fde:	1a42      	subs	r2, r0, r1
20100fe0:	1140      	asrs	r0, r0, #5
20100fe2:	0001      	movs	r1, r0
20100fe4:	4691      	mov	r9, r2
20100fe6:	697a      	ldr	r2, [r7, #20]
20100fe8:	4441      	add	r1, r8
20100fea:	1a9b      	subs	r3, r3, r2
20100fec:	e771      	b.n	20100ed2 <svpwm+0x102>
20100fee:	464a      	mov	r2, r9
20100ff0:	1a12      	subs	r2, r2, r0
20100ff2:	4690      	mov	r8, r2
20100ff4:	464a      	mov	r2, r9
20100ff6:	1190      	asrs	r0, r2, #6
20100ff8:	69ba      	ldr	r2, [r7, #24]
20100ffa:	1841      	adds	r1, r0, r1
20100ffc:	1a9b      	subs	r3, r3, r2
20100ffe:	e777      	b.n	20100ef0 <svpwm+0x120>
20101000:	4650      	mov	r0, sl
20101002:	5880      	ldr	r0, [r0, r2]
20101004:	4a4a      	ldr	r2, [pc, #296]	; (20101130 <svpwm+0x360>)
20101006:	1ad2      	subs	r2, r2, r3
20101008:	3301      	adds	r3, #1
2010100a:	0592      	lsls	r2, r2, #22
2010100c:	33ff      	adds	r3, #255	; 0xff
2010100e:	0d12      	lsrs	r2, r2, #20
20101010:	059b      	lsls	r3, r3, #22
20101012:	5812      	ldr	r2, [r2, r0]
20101014:	0d1b      	lsrs	r3, r3, #20
20101016:	581b      	ldr	r3, [r3, r0]
20101018:	434a      	muls	r2, r1
2010101a:	434b      	muls	r3, r1
2010101c:	1292      	asrs	r2, r2, #10
2010101e:	1299      	asrs	r1, r3, #10
20101020:	4253      	negs	r3, r2
20101022:	1a5b      	subs	r3, r3, r1
20101024:	602b      	str	r3, [r5, #0]
20101026:	1a53      	subs	r3, r2, r1
20101028:	1851      	adds	r1, r2, r1
2010102a:	606b      	str	r3, [r5, #4]
2010102c:	60a9      	str	r1, [r5, #8]
2010102e:	e7a0      	b.n	20100f72 <svpwm+0x1a2>
20101030:	4650      	mov	r0, sl
20101032:	5880      	ldr	r0, [r0, r2]
20101034:	4a3f      	ldr	r2, [pc, #252]	; (20101134 <svpwm+0x364>)
20101036:	1ad2      	subs	r2, r2, r3
20101038:	3356      	adds	r3, #86	; 0x56
2010103a:	0592      	lsls	r2, r2, #22
2010103c:	059b      	lsls	r3, r3, #22
2010103e:	0d12      	lsrs	r2, r2, #20
20101040:	0d1b      	lsrs	r3, r3, #20
20101042:	5816      	ldr	r6, [r2, r0]
20101044:	581b      	ldr	r3, [r3, r0]
20101046:	434e      	muls	r6, r1
20101048:	434b      	muls	r3, r1
2010104a:	12b6      	asrs	r6, r6, #10
2010104c:	1299      	asrs	r1, r3, #10
2010104e:	1b8b      	subs	r3, r1, r6
20101050:	602b      	str	r3, [r5, #0]
20101052:	4273      	negs	r3, r6
20101054:	1a5b      	subs	r3, r3, r1
20101056:	1871      	adds	r1, r6, r1
20101058:	606b      	str	r3, [r5, #4]
2010105a:	60a9      	str	r1, [r5, #8]
2010105c:	e789      	b.n	20100f72 <svpwm+0x1a2>
2010105e:	4650      	mov	r0, sl
20101060:	5886      	ldr	r6, [r0, r2]
20101062:	4a35      	ldr	r2, [pc, #212]	; (20101138 <svpwm+0x368>)
20101064:	1ad2      	subs	r2, r2, r3
20101066:	0592      	lsls	r2, r2, #22
20101068:	0d12      	lsrs	r2, r2, #20
2010106a:	5990      	ldr	r0, [r2, r6]
2010106c:	4a33      	ldr	r2, [pc, #204]	; (2010113c <svpwm+0x36c>)
2010106e:	4348      	muls	r0, r1
20101070:	4694      	mov	ip, r2
20101072:	4463      	add	r3, ip
20101074:	059b      	lsls	r3, r3, #22
20101076:	0d1b      	lsrs	r3, r3, #20
20101078:	599b      	ldr	r3, [r3, r6]
2010107a:	1280      	asrs	r0, r0, #10
2010107c:	4359      	muls	r1, r3
2010107e:	1289      	asrs	r1, r1, #10
20101080:	1a43      	subs	r3, r0, r1
20101082:	602b      	str	r3, [r5, #0]
20101084:	1843      	adds	r3, r0, r1
20101086:	4240      	negs	r0, r0
20101088:	1a40      	subs	r0, r0, r1
2010108a:	606b      	str	r3, [r5, #4]
2010108c:	60a8      	str	r0, [r5, #8]
2010108e:	e770      	b.n	20100f72 <svpwm+0x1a2>
20101090:	4650      	mov	r0, sl
20101092:	5880      	ldr	r0, [r0, r2]
20101094:	4a2a      	ldr	r2, [pc, #168]	; (20101140 <svpwm+0x370>)
20101096:	1ad2      	subs	r2, r2, r3
20101098:	33ac      	adds	r3, #172	; 0xac
2010109a:	0592      	lsls	r2, r2, #22
2010109c:	33ff      	adds	r3, #255	; 0xff
2010109e:	0d12      	lsrs	r2, r2, #20
201010a0:	059b      	lsls	r3, r3, #22
201010a2:	5816      	ldr	r6, [r2, r0]
201010a4:	0d1b      	lsrs	r3, r3, #20
201010a6:	581b      	ldr	r3, [r3, r0]
201010a8:	434e      	muls	r6, r1
201010aa:	4359      	muls	r1, r3
201010ac:	12b6      	asrs	r6, r6, #10
201010ae:	1289      	asrs	r1, r1, #10
201010b0:	4273      	negs	r3, r6
201010b2:	1a5b      	subs	r3, r3, r1
201010b4:	602b      	str	r3, [r5, #0]
201010b6:	1873      	adds	r3, r6, r1
201010b8:	1b89      	subs	r1, r1, r6
201010ba:	606b      	str	r3, [r5, #4]
201010bc:	60a9      	str	r1, [r5, #8]
201010be:	e758      	b.n	20100f72 <svpwm+0x1a2>
201010c0:	4642      	mov	r2, r8
201010c2:	11c9      	asrs	r1, r1, #7
201010c4:	1a50      	subs	r0, r2, r1
201010c6:	69f9      	ldr	r1, [r7, #28]
201010c8:	1a5b      	subs	r3, r3, r1
201010ca:	e71b      	b.n	20100f04 <svpwm+0x134>
201010cc:	4650      	mov	r0, sl
201010ce:	5882      	ldr	r2, [r0, r2]
201010d0:	481c      	ldr	r0, [pc, #112]	; (20101144 <svpwm+0x374>)
201010d2:	1ac0      	subs	r0, r0, r3
201010d4:	3b55      	subs	r3, #85	; 0x55
201010d6:	0580      	lsls	r0, r0, #22
201010d8:	059b      	lsls	r3, r3, #22
201010da:	0d00      	lsrs	r0, r0, #20
201010dc:	0d1b      	lsrs	r3, r3, #20
201010de:	589b      	ldr	r3, [r3, r2]
201010e0:	5880      	ldr	r0, [r0, r2]
201010e2:	4348      	muls	r0, r1
201010e4:	4359      	muls	r1, r3
201010e6:	1280      	asrs	r0, r0, #10
201010e8:	1289      	asrs	r1, r1, #10
201010ea:	1843      	adds	r3, r0, r1
201010ec:	602b      	str	r3, [r5, #0]
201010ee:	4243      	negs	r3, r0
201010f0:	1a5b      	subs	r3, r3, r1
201010f2:	1a41      	subs	r1, r0, r1
201010f4:	606b      	str	r3, [r5, #4]
201010f6:	60a9      	str	r1, [r5, #8]
201010f8:	e73b      	b.n	20100f72 <svpwm+0x1a2>
201010fa:	2100      	movs	r1, #0
201010fc:	e703      	b.n	20100f06 <svpwm+0x136>
201010fe:	4648      	mov	r0, r9
20101100:	2101      	movs	r1, #1
20101102:	e700      	b.n	20100f06 <svpwm+0x136>
20101104:	2102      	movs	r1, #2
20101106:	e6fe      	b.n	20100f06 <svpwm+0x136>
20101108:	0008      	movs	r0, r1
2010110a:	2103      	movs	r1, #3
2010110c:	e6fb      	b.n	20100f06 <svpwm+0x136>
2010110e:	2104      	movs	r1, #4
20101110:	e6f9      	b.n	20100f06 <svpwm+0x136>
20101112:	4648      	mov	r0, r9
20101114:	2105      	movs	r1, #5
20101116:	e6f6      	b.n	20100f06 <svpwm+0x136>
20101118:	4640      	mov	r0, r8
2010111a:	2106      	movs	r1, #6
2010111c:	e6f3      	b.n	20100f06 <svpwm+0x136>
2010111e:	46c0      	nop			; (mov r8, r8)
20101120:	000013de 	.word	0x000013de
20101124:	ffeff214 	.word	0xffeff214
20101128:	00000000 	.word	0x00000000
2010112c:	000007aa 	.word	0x000007aa
20101130:	000009aa 	.word	0x000009aa
20101134:	00000a54 	.word	0x00000a54
20101138:	00000854 	.word	0x00000854
2010113c:	00000256 	.word	0x00000256
20101140:	000008ff 	.word	0x000008ff
20101144:	00000aff 	.word	0x00000aff

20101148 <pi_reg_cur>:
20101148:	b510      	push	{r4, lr}
2010114a:	b086      	sub	sp, #24
2010114c:	2802      	cmp	r0, #2
2010114e:	d01a      	beq.n	20101186 <pi_reg_cur+0x3e>
20101150:	2804      	cmp	r0, #4
20101152:	d010      	beq.n	20101176 <pi_reg_cur+0x2e>
20101154:	2801      	cmp	r0, #1
20101156:	d001      	beq.n	2010115c <pi_reg_cur+0x14>
20101158:	b006      	add	sp, #24
2010115a:	bd10      	pop	{r4, pc}
2010115c:	4c11      	ldr	r4, [pc, #68]	; (201011a4 <pi_reg_cur+0x5c>)
2010115e:	a901      	add	r1, sp, #4
20101160:	447c      	add	r4, pc
20101162:	68e3      	ldr	r3, [r4, #12]
20101164:	6a22      	ldr	r2, [r4, #32]
20101166:	9301      	str	r3, [sp, #4]
20101168:	69e3      	ldr	r3, [r4, #28]
2010116a:	a803      	add	r0, sp, #12
2010116c:	604b      	str	r3, [r1, #4]
2010116e:	f7ff fe2f 	bl	20100dd0 <svpwm>
20101172:	6260      	str	r0, [r4, #36]	; 0x24
20101174:	e7f0      	b.n	20101158 <pi_reg_cur+0x10>
20101176:	2200      	movs	r2, #0
20101178:	4b0b      	ldr	r3, [pc, #44]	; (201011a8 <pi_reg_cur+0x60>)
2010117a:	447b      	add	r3, pc
2010117c:	609a      	str	r2, [r3, #8]
2010117e:	60da      	str	r2, [r3, #12]
20101180:	619a      	str	r2, [r3, #24]
20101182:	61da      	str	r2, [r3, #28]
20101184:	e7e8      	b.n	20101158 <pi_reg_cur+0x10>
20101186:	2201      	movs	r2, #1
20101188:	4b08      	ldr	r3, [pc, #32]	; (201011ac <pi_reg_cur+0x64>)
2010118a:	210a      	movs	r1, #10
2010118c:	447b      	add	r3, pc
2010118e:	605a      	str	r2, [r3, #4]
20101190:	615a      	str	r2, [r3, #20]
20101192:	2200      	movs	r2, #0
20101194:	621a      	str	r2, [r3, #32]
20101196:	689a      	ldr	r2, [r3, #8]
20101198:	6019      	str	r1, [r3, #0]
2010119a:	60da      	str	r2, [r3, #12]
2010119c:	699a      	ldr	r2, [r3, #24]
2010119e:	6119      	str	r1, [r3, #16]
201011a0:	61da      	str	r2, [r3, #28]
201011a2:	e7d9      	b.n	20101158 <pi_reg_cur+0x10>
201011a4:	ffefeeb4 	.word	0xffefeeb4
201011a8:	ffefee9a 	.word	0xffefee9a
201011ac:	ffefee88 	.word	0xffefee88

201011b0 <__gnu_thumb1_case_uqi>:
201011b0:	b402      	push	{r1}
201011b2:	4671      	mov	r1, lr
201011b4:	0849      	lsrs	r1, r1, #1
201011b6:	0049      	lsls	r1, r1, #1
201011b8:	5c09      	ldrb	r1, [r1, r0]
201011ba:	0049      	lsls	r1, r1, #1
201011bc:	448e      	add	lr, r1
201011be:	bc02      	pop	{r1}
201011c0:	4770      	bx	lr
201011c2:	46c0      	nop			; (mov r8, r8)
