
bue_pwm.elf:     file format elf32-littlearm


Disassembly of section .text:

20100000 <main>:
20100000:	b580      	push	{r7, lr}
20100002:	b098      	sub	sp, #96	; 0x60
20100004:	af00      	add	r7, sp, #0
20100006:	2300      	movs	r3, #0
20100008:	657b      	str	r3, [r7, #84]	; 0x54
2010000a:	2300      	movs	r3, #0
2010000c:	653b      	str	r3, [r7, #80]	; 0x50
2010000e:	2300      	movs	r3, #0
20100010:	65bb      	str	r3, [r7, #88]	; 0x58
20100012:	f000 faff 	bl	20100614 <SystemInit>
20100016:	f000 fb0f 	bl	20100638 <get_dcA>
2010001a:	0003      	movs	r3, r0
2010001c:	64fb      	str	r3, [r7, #76]	; 0x4c
2010001e:	f000 fb35 	bl	2010068c <get_dcB>
20100022:	0003      	movs	r3, r0
20100024:	64bb      	str	r3, [r7, #72]	; 0x48
20100026:	2310      	movs	r3, #16
20100028:	18fb      	adds	r3, r7, r3
2010002a:	2214      	movs	r2, #20
2010002c:	601a      	str	r2, [r3, #0]
2010002e:	2310      	movs	r3, #16
20100030:	18fb      	adds	r3, r7, r3
20100032:	22c8      	movs	r2, #200	; 0xc8
20100034:	605a      	str	r2, [r3, #4]
20100036:	2310      	movs	r3, #16
20100038:	18fb      	adds	r3, r7, r3
2010003a:	2200      	movs	r2, #0
2010003c:	609a      	str	r2, [r3, #8]
2010003e:	2310      	movs	r3, #16
20100040:	18fb      	adds	r3, r7, r3
20100042:	2200      	movs	r2, #0
20100044:	60da      	str	r2, [r3, #12]
20100046:	003b      	movs	r3, r7
20100048:	2214      	movs	r2, #20
2010004a:	601a      	str	r2, [r3, #0]
2010004c:	003b      	movs	r3, r7
2010004e:	22c8      	movs	r2, #200	; 0xc8
20100050:	605a      	str	r2, [r3, #4]
20100052:	003b      	movs	r3, r7
20100054:	2200      	movs	r2, #0
20100056:	609a      	str	r2, [r3, #8]
20100058:	003b      	movs	r3, r7
2010005a:	2200      	movs	r2, #0
2010005c:	60da      	str	r2, [r3, #12]
2010005e:	4b38      	ldr	r3, [pc, #224]	; (20100140 <main+0x140>)
20100060:	4a37      	ldr	r2, [pc, #220]	; (20100140 <main+0x140>)
20100062:	6812      	ldr	r2, [r2, #0]
20100064:	2120      	movs	r1, #32
20100066:	430a      	orrs	r2, r1
20100068:	601a      	str	r2, [r3, #0]
2010006a:	4b36      	ldr	r3, [pc, #216]	; (20100144 <main+0x144>)
2010006c:	4a36      	ldr	r2, [pc, #216]	; (20100148 <main+0x148>)
2010006e:	609a      	str	r2, [r3, #8]
20100070:	4b36      	ldr	r3, [pc, #216]	; (2010014c <main+0x14c>)
20100072:	2237      	movs	r2, #55	; 0x37
20100074:	601a      	str	r2, [r3, #0]
20100076:	46c0      	nop			; (mov r8, r8)
20100078:	4b34      	ldr	r3, [pc, #208]	; (2010014c <main+0x14c>)
2010007a:	6a1b      	ldr	r3, [r3, #32]
2010007c:	2204      	movs	r2, #4
2010007e:	4013      	ands	r3, r2
20100080:	d0fa      	beq.n	20100078 <main+0x78>
20100082:	4b32      	ldr	r3, [pc, #200]	; (2010014c <main+0x14c>)
20100084:	699a      	ldr	r2, [r3, #24]
20100086:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
20100088:	1ad3      	subs	r3, r2, r3
2010008a:	051b      	lsls	r3, r3, #20
2010008c:	0d1b      	lsrs	r3, r3, #20
2010008e:	647b      	str	r3, [r7, #68]	; 0x44
20100090:	4b2e      	ldr	r3, [pc, #184]	; (2010014c <main+0x14c>)
20100092:	2247      	movs	r2, #71	; 0x47
20100094:	601a      	str	r2, [r3, #0]
20100096:	46c0      	nop			; (mov r8, r8)
20100098:	4b2c      	ldr	r3, [pc, #176]	; (2010014c <main+0x14c>)
2010009a:	6a1b      	ldr	r3, [r3, #32]
2010009c:	2204      	movs	r2, #4
2010009e:	4013      	ands	r3, r2
201000a0:	d0fa      	beq.n	20100098 <main+0x98>
201000a2:	4b2a      	ldr	r3, [pc, #168]	; (2010014c <main+0x14c>)
201000a4:	699a      	ldr	r2, [r3, #24]
201000a6:	6cbb      	ldr	r3, [r7, #72]	; 0x48
201000a8:	1ad3      	subs	r3, r2, r3
201000aa:	051b      	lsls	r3, r3, #20
201000ac:	0d1b      	lsrs	r3, r3, #20
201000ae:	643b      	str	r3, [r7, #64]	; 0x40
201000b0:	6c7b      	ldr	r3, [r7, #68]	; 0x44
201000b2:	425a      	negs	r2, r3
201000b4:	6c3b      	ldr	r3, [r7, #64]	; 0x40
201000b6:	1ad3      	subs	r3, r2, r3
201000b8:	63fb      	str	r3, [r7, #60]	; 0x3c
201000ba:	4b21      	ldr	r3, [pc, #132]	; (20100140 <main+0x140>)
201000bc:	4a20      	ldr	r2, [pc, #128]	; (20100140 <main+0x140>)
201000be:	6812      	ldr	r2, [r2, #0]
201000c0:	2120      	movs	r1, #32
201000c2:	438a      	bics	r2, r1
201000c4:	601a      	str	r2, [r3, #0]
201000c6:	46c0      	nop			; (mov r8, r8)
201000c8:	4b21      	ldr	r3, [pc, #132]	; (20100150 <main+0x150>)
201000ca:	6d5b      	ldr	r3, [r3, #84]	; 0x54
201000cc:	2202      	movs	r2, #2
201000ce:	4013      	ands	r3, r2
201000d0:	d0fa      	beq.n	201000c8 <main+0xc8>
201000d2:	4b1f      	ldr	r3, [pc, #124]	; (20100150 <main+0x150>)
201000d4:	2200      	movs	r2, #0
201000d6:	655a      	str	r2, [r3, #84]	; 0x54
201000d8:	4b1a      	ldr	r3, [pc, #104]	; (20100144 <main+0x144>)
201000da:	689b      	ldr	r3, [r3, #8]
201000dc:	051b      	lsls	r3, r3, #20
201000de:	0d1b      	lsrs	r3, r3, #20
201000e0:	0018      	movs	r0, r3
201000e2:	f000 fa7f 	bl	201005e4 <g2b>
201000e6:	0003      	movs	r3, r0
201000e8:	63bb      	str	r3, [r7, #56]	; 0x38
201000ea:	6bbb      	ldr	r3, [r7, #56]	; 0x38
201000ec:	059b      	lsls	r3, r3, #22
201000ee:	0d9b      	lsrs	r3, r3, #22
201000f0:	653b      	str	r3, [r7, #80]	; 0x50
201000f2:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
201000f4:	2232      	movs	r2, #50	; 0x32
201000f6:	1ad3      	subs	r3, r2, r3
201000f8:	637b      	str	r3, [r7, #52]	; 0x34
201000fa:	6dba      	ldr	r2, [r7, #88]	; 0x58
201000fc:	6b79      	ldr	r1, [r7, #52]	; 0x34
201000fe:	2310      	movs	r3, #16
20100100:	18fb      	adds	r3, r7, r3
20100102:	0018      	movs	r0, r3
20100104:	f000 fb76 	bl	201007f4 <update>
20100108:	2310      	movs	r3, #16
2010010a:	18fb      	adds	r3, r7, r3
2010010c:	68db      	ldr	r3, [r3, #12]
2010010e:	129b      	asrs	r3, r3, #10
20100110:	65fb      	str	r3, [r7, #92]	; 0x5c
20100112:	2300      	movs	r3, #0
20100114:	65bb      	str	r3, [r7, #88]	; 0x58
20100116:	6dfa      	ldr	r2, [r7, #92]	; 0x5c
20100118:	2380      	movs	r3, #128	; 0x80
2010011a:	00db      	lsls	r3, r3, #3
2010011c:	429a      	cmp	r2, r3
2010011e:	dd04      	ble.n	2010012a <main+0x12a>
20100120:	2301      	movs	r3, #1
20100122:	65bb      	str	r3, [r7, #88]	; 0x58
20100124:	2380      	movs	r3, #128	; 0x80
20100126:	00db      	lsls	r3, r3, #3
20100128:	65fb      	str	r3, [r7, #92]	; 0x5c
2010012a:	4b09      	ldr	r3, [pc, #36]	; (20100150 <main+0x150>)
2010012c:	6dfa      	ldr	r2, [r7, #92]	; 0x5c
2010012e:	615a      	str	r2, [r3, #20]
20100130:	4b08      	ldr	r3, [pc, #32]	; (20100154 <main+0x154>)
20100132:	6b7a      	ldr	r2, [r7, #52]	; 0x34
20100134:	2180      	movs	r1, #128	; 0x80
20100136:	0109      	lsls	r1, r1, #4
20100138:	468c      	mov	ip, r1
2010013a:	4462      	add	r2, ip
2010013c:	605a      	str	r2, [r3, #4]
2010013e:	e78e      	b.n	2010005e <main+0x5e>
20100140:	400b8000 	.word	0x400b8000
20100144:	400a0000 	.word	0x400a0000
20100148:	00000555 	.word	0x00000555
2010014c:	40088000 	.word	0x40088000
20100150:	40098000 	.word	0x40098000
20100154:	40090000 	.word	0x40090000

20100158 <sleep>:
20100158:	b580      	push	{r7, lr}
2010015a:	b084      	sub	sp, #16
2010015c:	af00      	add	r7, sp, #0
2010015e:	6078      	str	r0, [r7, #4]
20100160:	4b08      	ldr	r3, [pc, #32]	; (20100184 <sleep+0x2c>)
20100162:	447b      	add	r3, pc
20100164:	681a      	ldr	r2, [r3, #0]
20100166:	687b      	ldr	r3, [r7, #4]
20100168:	18d3      	adds	r3, r2, r3
2010016a:	60fb      	str	r3, [r7, #12]
2010016c:	46c0      	nop			; (mov r8, r8)
2010016e:	4b06      	ldr	r3, [pc, #24]	; (20100188 <sleep+0x30>)
20100170:	447b      	add	r3, pc
20100172:	681a      	ldr	r2, [r3, #0]
20100174:	68fb      	ldr	r3, [r7, #12]
20100176:	429a      	cmp	r2, r3
20100178:	d3f9      	bcc.n	2010016e <sleep+0x16>
2010017a:	46c0      	nop			; (mov r8, r8)
2010017c:	0018      	movs	r0, r3
2010017e:	46bd      	mov	sp, r7
20100180:	b004      	add	sp, #16
20100182:	bd80      	pop	{r7, pc}
20100184:	ffeffeae 	.word	0xffeffeae
20100188:	ffeffea0 	.word	0xffeffea0

2010018c <PortConfig>:
2010018c:	b580      	push	{r7, lr}
2010018e:	af00      	add	r7, sp, #0
20100190:	4b45      	ldr	r3, [pc, #276]	; (201002a8 <PortConfig+0x11c>)
20100192:	4a45      	ldr	r2, [pc, #276]	; (201002a8 <PortConfig+0x11c>)
20100194:	69d2      	ldr	r2, [r2, #28]
20100196:	2180      	movs	r1, #128	; 0x80
20100198:	0389      	lsls	r1, r1, #14
2010019a:	430a      	orrs	r2, r1
2010019c:	61da      	str	r2, [r3, #28]
2010019e:	4b43      	ldr	r3, [pc, #268]	; (201002ac <PortConfig+0x120>)
201001a0:	4a42      	ldr	r2, [pc, #264]	; (201002ac <PortConfig+0x120>)
201001a2:	6892      	ldr	r2, [r2, #8]
201001a4:	4942      	ldr	r1, [pc, #264]	; (201002b0 <PortConfig+0x124>)
201001a6:	400a      	ands	r2, r1
201001a8:	609a      	str	r2, [r3, #8]
201001aa:	4b40      	ldr	r3, [pc, #256]	; (201002ac <PortConfig+0x120>)
201001ac:	4a3f      	ldr	r2, [pc, #252]	; (201002ac <PortConfig+0x120>)
201001ae:	6892      	ldr	r2, [r2, #8]
201001b0:	4940      	ldr	r1, [pc, #256]	; (201002b4 <PortConfig+0x128>)
201001b2:	430a      	orrs	r2, r1
201001b4:	609a      	str	r2, [r3, #8]
201001b6:	4b3d      	ldr	r3, [pc, #244]	; (201002ac <PortConfig+0x120>)
201001b8:	4a3c      	ldr	r2, [pc, #240]	; (201002ac <PortConfig+0x120>)
201001ba:	6852      	ldr	r2, [r2, #4]
201001bc:	21fc      	movs	r1, #252	; 0xfc
201001be:	0109      	lsls	r1, r1, #4
201001c0:	430a      	orrs	r2, r1
201001c2:	605a      	str	r2, [r3, #4]
201001c4:	4b39      	ldr	r3, [pc, #228]	; (201002ac <PortConfig+0x120>)
201001c6:	4a39      	ldr	r2, [pc, #228]	; (201002ac <PortConfig+0x120>)
201001c8:	68d2      	ldr	r2, [r2, #12]
201001ca:	21fc      	movs	r1, #252	; 0xfc
201001cc:	0109      	lsls	r1, r1, #4
201001ce:	430a      	orrs	r2, r1
201001d0:	60da      	str	r2, [r3, #12]
201001d2:	4b36      	ldr	r3, [pc, #216]	; (201002ac <PortConfig+0x120>)
201001d4:	4a35      	ldr	r2, [pc, #212]	; (201002ac <PortConfig+0x120>)
201001d6:	6992      	ldr	r2, [r2, #24]
201001d8:	4937      	ldr	r1, [pc, #220]	; (201002b8 <PortConfig+0x12c>)
201001da:	430a      	orrs	r2, r1
201001dc:	619a      	str	r2, [r3, #24]
201001de:	4b32      	ldr	r3, [pc, #200]	; (201002a8 <PortConfig+0x11c>)
201001e0:	4a31      	ldr	r2, [pc, #196]	; (201002a8 <PortConfig+0x11c>)
201001e2:	69d2      	ldr	r2, [r2, #28]
201001e4:	2180      	movs	r1, #128	; 0x80
201001e6:	0489      	lsls	r1, r1, #18
201001e8:	430a      	orrs	r2, r1
201001ea:	61da      	str	r2, [r3, #28]
201001ec:	4b33      	ldr	r3, [pc, #204]	; (201002bc <PortConfig+0x130>)
201001ee:	4a33      	ldr	r2, [pc, #204]	; (201002bc <PortConfig+0x130>)
201001f0:	68d2      	ldr	r2, [r2, #12]
201001f2:	2102      	movs	r1, #2
201001f4:	438a      	bics	r2, r1
201001f6:	60da      	str	r2, [r3, #12]
201001f8:	4b2b      	ldr	r3, [pc, #172]	; (201002a8 <PortConfig+0x11c>)
201001fa:	4a2b      	ldr	r2, [pc, #172]	; (201002a8 <PortConfig+0x11c>)
201001fc:	69d2      	ldr	r2, [r2, #28]
201001fe:	2180      	movs	r1, #128	; 0x80
20100200:	0449      	lsls	r1, r1, #17
20100202:	430a      	orrs	r2, r1
20100204:	61da      	str	r2, [r3, #28]
20100206:	4b2e      	ldr	r3, [pc, #184]	; (201002c0 <PortConfig+0x134>)
20100208:	4a2d      	ldr	r2, [pc, #180]	; (201002c0 <PortConfig+0x134>)
2010020a:	68d2      	ldr	r2, [r2, #12]
2010020c:	492d      	ldr	r1, [pc, #180]	; (201002c4 <PortConfig+0x138>)
2010020e:	400a      	ands	r2, r1
20100210:	60da      	str	r2, [r3, #12]
20100212:	4b2b      	ldr	r3, [pc, #172]	; (201002c0 <PortConfig+0x134>)
20100214:	4a2a      	ldr	r2, [pc, #168]	; (201002c0 <PortConfig+0x134>)
20100216:	6892      	ldr	r2, [r2, #8]
20100218:	492b      	ldr	r1, [pc, #172]	; (201002c8 <PortConfig+0x13c>)
2010021a:	400a      	ands	r2, r1
2010021c:	609a      	str	r2, [r3, #8]
2010021e:	4b28      	ldr	r3, [pc, #160]	; (201002c0 <PortConfig+0x134>)
20100220:	4a27      	ldr	r2, [pc, #156]	; (201002c0 <PortConfig+0x134>)
20100222:	6892      	ldr	r2, [r2, #8]
20100224:	21a0      	movs	r1, #160	; 0xa0
20100226:	02c9      	lsls	r1, r1, #11
20100228:	430a      	orrs	r2, r1
2010022a:	609a      	str	r2, [r3, #8]
2010022c:	4b24      	ldr	r3, [pc, #144]	; (201002c0 <PortConfig+0x134>)
2010022e:	4a24      	ldr	r2, [pc, #144]	; (201002c0 <PortConfig+0x134>)
20100230:	68d2      	ldr	r2, [r2, #12]
20100232:	21c0      	movs	r1, #192	; 0xc0
20100234:	0089      	lsls	r1, r1, #2
20100236:	430a      	orrs	r2, r1
20100238:	60da      	str	r2, [r3, #12]
2010023a:	4b21      	ldr	r3, [pc, #132]	; (201002c0 <PortConfig+0x134>)
2010023c:	4a20      	ldr	r2, [pc, #128]	; (201002c0 <PortConfig+0x134>)
2010023e:	6992      	ldr	r2, [r2, #24]
20100240:	21c0      	movs	r1, #192	; 0xc0
20100242:	0309      	lsls	r1, r1, #12
20100244:	430a      	orrs	r2, r1
20100246:	619a      	str	r2, [r3, #24]
20100248:	4b1d      	ldr	r3, [pc, #116]	; (201002c0 <PortConfig+0x134>)
2010024a:	4a1d      	ldr	r2, [pc, #116]	; (201002c0 <PortConfig+0x134>)
2010024c:	6852      	ldr	r2, [r2, #4]
2010024e:	2180      	movs	r1, #128	; 0x80
20100250:	0089      	lsls	r1, r1, #2
20100252:	430a      	orrs	r2, r1
20100254:	605a      	str	r2, [r3, #4]
20100256:	4b1a      	ldr	r3, [pc, #104]	; (201002c0 <PortConfig+0x134>)
20100258:	4a19      	ldr	r2, [pc, #100]	; (201002c0 <PortConfig+0x134>)
2010025a:	6852      	ldr	r2, [r2, #4]
2010025c:	491b      	ldr	r1, [pc, #108]	; (201002cc <PortConfig+0x140>)
2010025e:	400a      	ands	r2, r1
20100260:	605a      	str	r2, [r3, #4]
20100262:	4b11      	ldr	r3, [pc, #68]	; (201002a8 <PortConfig+0x11c>)
20100264:	4a10      	ldr	r2, [pc, #64]	; (201002a8 <PortConfig+0x11c>)
20100266:	69d2      	ldr	r2, [r2, #28]
20100268:	2180      	movs	r1, #128	; 0x80
2010026a:	0409      	lsls	r1, r1, #16
2010026c:	430a      	orrs	r2, r1
2010026e:	61da      	str	r2, [r3, #28]
20100270:	4b17      	ldr	r3, [pc, #92]	; (201002d0 <PortConfig+0x144>)
20100272:	2200      	movs	r2, #0
20100274:	609a      	str	r2, [r3, #8]
20100276:	4b16      	ldr	r3, [pc, #88]	; (201002d0 <PortConfig+0x144>)
20100278:	2200      	movs	r2, #0
2010027a:	601a      	str	r2, [r3, #0]
2010027c:	4b14      	ldr	r3, [pc, #80]	; (201002d0 <PortConfig+0x144>)
2010027e:	4a14      	ldr	r2, [pc, #80]	; (201002d0 <PortConfig+0x144>)
20100280:	6852      	ldr	r2, [r2, #4]
20100282:	2120      	movs	r1, #32
20100284:	430a      	orrs	r2, r1
20100286:	605a      	str	r2, [r3, #4]
20100288:	4b11      	ldr	r3, [pc, #68]	; (201002d0 <PortConfig+0x144>)
2010028a:	4a11      	ldr	r2, [pc, #68]	; (201002d0 <PortConfig+0x144>)
2010028c:	68d2      	ldr	r2, [r2, #12]
2010028e:	2120      	movs	r1, #32
20100290:	430a      	orrs	r2, r1
20100292:	60da      	str	r2, [r3, #12]
20100294:	4b0e      	ldr	r3, [pc, #56]	; (201002d0 <PortConfig+0x144>)
20100296:	4a0e      	ldr	r2, [pc, #56]	; (201002d0 <PortConfig+0x144>)
20100298:	6992      	ldr	r2, [r2, #24]
2010029a:	21c0      	movs	r1, #192	; 0xc0
2010029c:	0109      	lsls	r1, r1, #4
2010029e:	430a      	orrs	r2, r1
201002a0:	619a      	str	r2, [r3, #24]
201002a2:	46c0      	nop			; (mov r8, r8)
201002a4:	46bd      	mov	sp, r7
201002a6:	bd80      	pop	{r7, pc}
201002a8:	40020000 	.word	0x40020000
201002ac:	400a8000 	.word	0x400a8000
201002b0:	ff000fff 	.word	0xff000fff
201002b4:	00aaa000 	.word	0x00aaa000
201002b8:	00fff000 	.word	0x00fff000
201002bc:	400c8000 	.word	0x400c8000
201002c0:	400c0000 	.word	0x400c0000
201002c4:	fffff3ff 	.word	0xfffff3ff
201002c8:	fff0ffff 	.word	0xfff0ffff
201002cc:	fffffeff 	.word	0xfffffeff
201002d0:	400b8000 	.word	0x400b8000

201002d4 <ClkConfig>:
201002d4:	b580      	push	{r7, lr}
201002d6:	af00      	add	r7, sp, #0
201002d8:	4b18      	ldr	r3, [pc, #96]	; (2010033c <ClkConfig+0x68>)
201002da:	4a18      	ldr	r2, [pc, #96]	; (2010033c <ClkConfig+0x68>)
201002dc:	6892      	ldr	r2, [r2, #8]
201002de:	2101      	movs	r1, #1
201002e0:	430a      	orrs	r2, r1
201002e2:	609a      	str	r2, [r3, #8]
201002e4:	46c0      	nop			; (mov r8, r8)
201002e6:	4b15      	ldr	r3, [pc, #84]	; (2010033c <ClkConfig+0x68>)
201002e8:	681b      	ldr	r3, [r3, #0]
201002ea:	2204      	movs	r2, #4
201002ec:	4013      	ands	r3, r2
201002ee:	d0fa      	beq.n	201002e6 <ClkConfig+0x12>
201002f0:	4b12      	ldr	r3, [pc, #72]	; (2010033c <ClkConfig+0x68>)
201002f2:	4a12      	ldr	r2, [pc, #72]	; (2010033c <ClkConfig+0x68>)
201002f4:	68d2      	ldr	r2, [r2, #12]
201002f6:	2102      	movs	r1, #2
201002f8:	430a      	orrs	r2, r1
201002fa:	60da      	str	r2, [r3, #12]
201002fc:	4b0f      	ldr	r3, [pc, #60]	; (2010033c <ClkConfig+0x68>)
201002fe:	4a10      	ldr	r2, [pc, #64]	; (20100340 <ClkConfig+0x6c>)
20100300:	605a      	str	r2, [r3, #4]
20100302:	46c0      	nop			; (mov r8, r8)
20100304:	4b0d      	ldr	r3, [pc, #52]	; (2010033c <ClkConfig+0x68>)
20100306:	681b      	ldr	r3, [r3, #0]
20100308:	2202      	movs	r2, #2
2010030a:	4013      	ands	r3, r2
2010030c:	d0fa      	beq.n	20100304 <ClkConfig+0x30>
2010030e:	4b0d      	ldr	r3, [pc, #52]	; (20100344 <ClkConfig+0x70>)
20100310:	4a0c      	ldr	r2, [pc, #48]	; (20100344 <ClkConfig+0x70>)
20100312:	6812      	ldr	r2, [r2, #0]
20100314:	2120      	movs	r1, #32
20100316:	430a      	orrs	r2, r1
20100318:	601a      	str	r2, [r3, #0]
2010031a:	4b08      	ldr	r3, [pc, #32]	; (2010033c <ClkConfig+0x68>)
2010031c:	4a07      	ldr	r2, [pc, #28]	; (2010033c <ClkConfig+0x68>)
2010031e:	68d2      	ldr	r2, [r2, #12]
20100320:	2180      	movs	r1, #128	; 0x80
20100322:	0049      	lsls	r1, r1, #1
20100324:	430a      	orrs	r2, r1
20100326:	60da      	str	r2, [r3, #12]
20100328:	4b04      	ldr	r3, [pc, #16]	; (2010033c <ClkConfig+0x68>)
2010032a:	4a04      	ldr	r2, [pc, #16]	; (2010033c <ClkConfig+0x68>)
2010032c:	68d2      	ldr	r2, [r2, #12]
2010032e:	2104      	movs	r1, #4
20100330:	430a      	orrs	r2, r1
20100332:	60da      	str	r2, [r3, #12]
20100334:	46c0      	nop			; (mov r8, r8)
20100336:	46bd      	mov	sp, r7
20100338:	bd80      	pop	{r7, pc}
2010033a:	46c0      	nop			; (mov r8, r8)
2010033c:	40020000 	.word	0x40020000
20100340:	00000e04 	.word	0x00000e04
20100344:	40018000 	.word	0x40018000

20100348 <TimerConfig>:
20100348:	b580      	push	{r7, lr}
2010034a:	af00      	add	r7, sp, #0
2010034c:	4b70      	ldr	r3, [pc, #448]	; (20100510 <TimerConfig+0x1c8>)
2010034e:	4a70      	ldr	r2, [pc, #448]	; (20100510 <TimerConfig+0x1c8>)
20100350:	69d2      	ldr	r2, [r2, #28]
20100352:	2180      	movs	r1, #128	; 0x80
20100354:	0309      	lsls	r1, r1, #12
20100356:	430a      	orrs	r2, r1
20100358:	61da      	str	r2, [r3, #28]
2010035a:	4b6d      	ldr	r3, [pc, #436]	; (20100510 <TimerConfig+0x1c8>)
2010035c:	4a6c      	ldr	r2, [pc, #432]	; (20100510 <TimerConfig+0x1c8>)
2010035e:	6a92      	ldr	r2, [r2, #40]	; 0x28
20100360:	2180      	movs	r1, #128	; 0x80
20100362:	04c9      	lsls	r1, r1, #19
20100364:	430a      	orrs	r2, r1
20100366:	629a      	str	r2, [r3, #40]	; 0x28
20100368:	4b69      	ldr	r3, [pc, #420]	; (20100510 <TimerConfig+0x1c8>)
2010036a:	4a69      	ldr	r2, [pc, #420]	; (20100510 <TimerConfig+0x1c8>)
2010036c:	6a92      	ldr	r2, [r2, #40]	; 0x28
2010036e:	4969      	ldr	r1, [pc, #420]	; (20100514 <TimerConfig+0x1cc>)
20100370:	400a      	ands	r2, r1
20100372:	629a      	str	r2, [r3, #40]	; 0x28
20100374:	4b68      	ldr	r3, [pc, #416]	; (20100518 <TimerConfig+0x1d0>)
20100376:	2200      	movs	r2, #0
20100378:	601a      	str	r2, [r3, #0]
2010037a:	4b67      	ldr	r3, [pc, #412]	; (20100518 <TimerConfig+0x1d0>)
2010037c:	2204      	movs	r2, #4
2010037e:	605a      	str	r2, [r3, #4]
20100380:	4b65      	ldr	r3, [pc, #404]	; (20100518 <TimerConfig+0x1d0>)
20100382:	4a66      	ldr	r2, [pc, #408]	; (2010051c <TimerConfig+0x1d4>)
20100384:	609a      	str	r2, [r3, #8]
20100386:	4b64      	ldr	r3, [pc, #400]	; (20100518 <TimerConfig+0x1d0>)
20100388:	2201      	movs	r2, #1
2010038a:	611a      	str	r2, [r3, #16]
2010038c:	4b62      	ldr	r3, [pc, #392]	; (20100518 <TimerConfig+0x1d0>)
2010038e:	2201      	movs	r2, #1
20100390:	615a      	str	r2, [r3, #20]
20100392:	4b61      	ldr	r3, [pc, #388]	; (20100518 <TimerConfig+0x1d0>)
20100394:	2201      	movs	r2, #1
20100396:	619a      	str	r2, [r3, #24]
20100398:	4b5f      	ldr	r3, [pc, #380]	; (20100518 <TimerConfig+0x1d0>)
2010039a:	4a5f      	ldr	r2, [pc, #380]	; (20100518 <TimerConfig+0x1d0>)
2010039c:	6a12      	ldr	r2, [r2, #32]
2010039e:	4960      	ldr	r1, [pc, #384]	; (20100520 <TimerConfig+0x1d8>)
201003a0:	400a      	ands	r2, r1
201003a2:	621a      	str	r2, [r3, #32]
201003a4:	4b5c      	ldr	r3, [pc, #368]	; (20100518 <TimerConfig+0x1d0>)
201003a6:	4a5c      	ldr	r2, [pc, #368]	; (20100518 <TimerConfig+0x1d0>)
201003a8:	6a12      	ldr	r2, [r2, #32]
201003aa:	21e0      	movs	r1, #224	; 0xe0
201003ac:	0109      	lsls	r1, r1, #4
201003ae:	430a      	orrs	r2, r1
201003b0:	621a      	str	r2, [r3, #32]
201003b2:	4b59      	ldr	r3, [pc, #356]	; (20100518 <TimerConfig+0x1d0>)
201003b4:	4a58      	ldr	r2, [pc, #352]	; (20100518 <TimerConfig+0x1d0>)
201003b6:	6b12      	ldr	r2, [r2, #48]	; 0x30
201003b8:	210f      	movs	r1, #15
201003ba:	438a      	bics	r2, r1
201003bc:	631a      	str	r2, [r3, #48]	; 0x30
201003be:	4b56      	ldr	r3, [pc, #344]	; (20100518 <TimerConfig+0x1d0>)
201003c0:	4a55      	ldr	r2, [pc, #340]	; (20100518 <TimerConfig+0x1d0>)
201003c2:	6b12      	ldr	r2, [r2, #48]	; 0x30
201003c4:	210c      	movs	r1, #12
201003c6:	430a      	orrs	r2, r1
201003c8:	631a      	str	r2, [r3, #48]	; 0x30
201003ca:	4b53      	ldr	r3, [pc, #332]	; (20100518 <TimerConfig+0x1d0>)
201003cc:	4a52      	ldr	r2, [pc, #328]	; (20100518 <TimerConfig+0x1d0>)
201003ce:	6b12      	ldr	r2, [r2, #48]	; 0x30
201003d0:	2101      	movs	r1, #1
201003d2:	430a      	orrs	r2, r1
201003d4:	631a      	str	r2, [r3, #48]	; 0x30
201003d6:	4b50      	ldr	r3, [pc, #320]	; (20100518 <TimerConfig+0x1d0>)
201003d8:	4a4f      	ldr	r2, [pc, #316]	; (20100518 <TimerConfig+0x1d0>)
201003da:	6b12      	ldr	r2, [r2, #48]	; 0x30
201003dc:	4951      	ldr	r1, [pc, #324]	; (20100524 <TimerConfig+0x1dc>)
201003de:	400a      	ands	r2, r1
201003e0:	631a      	str	r2, [r3, #48]	; 0x30
201003e2:	4b4d      	ldr	r3, [pc, #308]	; (20100518 <TimerConfig+0x1d0>)
201003e4:	4a4c      	ldr	r2, [pc, #304]	; (20100518 <TimerConfig+0x1d0>)
201003e6:	6b12      	ldr	r2, [r2, #48]	; 0x30
201003e8:	21c0      	movs	r1, #192	; 0xc0
201003ea:	0109      	lsls	r1, r1, #4
201003ec:	430a      	orrs	r2, r1
201003ee:	631a      	str	r2, [r3, #48]	; 0x30
201003f0:	4b49      	ldr	r3, [pc, #292]	; (20100518 <TimerConfig+0x1d0>)
201003f2:	4a49      	ldr	r2, [pc, #292]	; (20100518 <TimerConfig+0x1d0>)
201003f4:	6b12      	ldr	r2, [r2, #48]	; 0x30
201003f6:	2180      	movs	r1, #128	; 0x80
201003f8:	0049      	lsls	r1, r1, #1
201003fa:	430a      	orrs	r2, r1
201003fc:	631a      	str	r2, [r3, #48]	; 0x30
201003fe:	4b46      	ldr	r3, [pc, #280]	; (20100518 <TimerConfig+0x1d0>)
20100400:	4a45      	ldr	r2, [pc, #276]	; (20100518 <TimerConfig+0x1d0>)
20100402:	6a52      	ldr	r2, [r2, #36]	; 0x24
20100404:	4946      	ldr	r1, [pc, #280]	; (20100520 <TimerConfig+0x1d8>)
20100406:	400a      	ands	r2, r1
20100408:	625a      	str	r2, [r3, #36]	; 0x24
2010040a:	4b43      	ldr	r3, [pc, #268]	; (20100518 <TimerConfig+0x1d0>)
2010040c:	4a42      	ldr	r2, [pc, #264]	; (20100518 <TimerConfig+0x1d0>)
2010040e:	6a52      	ldr	r2, [r2, #36]	; 0x24
20100410:	21e0      	movs	r1, #224	; 0xe0
20100412:	0109      	lsls	r1, r1, #4
20100414:	430a      	orrs	r2, r1
20100416:	625a      	str	r2, [r3, #36]	; 0x24
20100418:	4b3f      	ldr	r3, [pc, #252]	; (20100518 <TimerConfig+0x1d0>)
2010041a:	4a3f      	ldr	r2, [pc, #252]	; (20100518 <TimerConfig+0x1d0>)
2010041c:	6b52      	ldr	r2, [r2, #52]	; 0x34
2010041e:	210f      	movs	r1, #15
20100420:	438a      	bics	r2, r1
20100422:	635a      	str	r2, [r3, #52]	; 0x34
20100424:	4b3c      	ldr	r3, [pc, #240]	; (20100518 <TimerConfig+0x1d0>)
20100426:	4a3c      	ldr	r2, [pc, #240]	; (20100518 <TimerConfig+0x1d0>)
20100428:	6b52      	ldr	r2, [r2, #52]	; 0x34
2010042a:	210c      	movs	r1, #12
2010042c:	430a      	orrs	r2, r1
2010042e:	635a      	str	r2, [r3, #52]	; 0x34
20100430:	4b39      	ldr	r3, [pc, #228]	; (20100518 <TimerConfig+0x1d0>)
20100432:	4a39      	ldr	r2, [pc, #228]	; (20100518 <TimerConfig+0x1d0>)
20100434:	6b52      	ldr	r2, [r2, #52]	; 0x34
20100436:	2101      	movs	r1, #1
20100438:	430a      	orrs	r2, r1
2010043a:	635a      	str	r2, [r3, #52]	; 0x34
2010043c:	4b36      	ldr	r3, [pc, #216]	; (20100518 <TimerConfig+0x1d0>)
2010043e:	4a36      	ldr	r2, [pc, #216]	; (20100518 <TimerConfig+0x1d0>)
20100440:	6b52      	ldr	r2, [r2, #52]	; 0x34
20100442:	4938      	ldr	r1, [pc, #224]	; (20100524 <TimerConfig+0x1dc>)
20100444:	400a      	ands	r2, r1
20100446:	635a      	str	r2, [r3, #52]	; 0x34
20100448:	4b33      	ldr	r3, [pc, #204]	; (20100518 <TimerConfig+0x1d0>)
2010044a:	4a33      	ldr	r2, [pc, #204]	; (20100518 <TimerConfig+0x1d0>)
2010044c:	6b52      	ldr	r2, [r2, #52]	; 0x34
2010044e:	21c0      	movs	r1, #192	; 0xc0
20100450:	0109      	lsls	r1, r1, #4
20100452:	430a      	orrs	r2, r1
20100454:	635a      	str	r2, [r3, #52]	; 0x34
20100456:	4b30      	ldr	r3, [pc, #192]	; (20100518 <TimerConfig+0x1d0>)
20100458:	4a2f      	ldr	r2, [pc, #188]	; (20100518 <TimerConfig+0x1d0>)
2010045a:	6b52      	ldr	r2, [r2, #52]	; 0x34
2010045c:	2180      	movs	r1, #128	; 0x80
2010045e:	0049      	lsls	r1, r1, #1
20100460:	430a      	orrs	r2, r1
20100462:	635a      	str	r2, [r3, #52]	; 0x34
20100464:	4b2c      	ldr	r3, [pc, #176]	; (20100518 <TimerConfig+0x1d0>)
20100466:	4a2c      	ldr	r2, [pc, #176]	; (20100518 <TimerConfig+0x1d0>)
20100468:	6a92      	ldr	r2, [r2, #40]	; 0x28
2010046a:	492d      	ldr	r1, [pc, #180]	; (20100520 <TimerConfig+0x1d8>)
2010046c:	400a      	ands	r2, r1
2010046e:	629a      	str	r2, [r3, #40]	; 0x28
20100470:	4b29      	ldr	r3, [pc, #164]	; (20100518 <TimerConfig+0x1d0>)
20100472:	4a29      	ldr	r2, [pc, #164]	; (20100518 <TimerConfig+0x1d0>)
20100474:	6a92      	ldr	r2, [r2, #40]	; 0x28
20100476:	21e0      	movs	r1, #224	; 0xe0
20100478:	0109      	lsls	r1, r1, #4
2010047a:	430a      	orrs	r2, r1
2010047c:	629a      	str	r2, [r3, #40]	; 0x28
2010047e:	4b26      	ldr	r3, [pc, #152]	; (20100518 <TimerConfig+0x1d0>)
20100480:	4a25      	ldr	r2, [pc, #148]	; (20100518 <TimerConfig+0x1d0>)
20100482:	6b92      	ldr	r2, [r2, #56]	; 0x38
20100484:	210f      	movs	r1, #15
20100486:	438a      	bics	r2, r1
20100488:	639a      	str	r2, [r3, #56]	; 0x38
2010048a:	4b23      	ldr	r3, [pc, #140]	; (20100518 <TimerConfig+0x1d0>)
2010048c:	4a22      	ldr	r2, [pc, #136]	; (20100518 <TimerConfig+0x1d0>)
2010048e:	6b92      	ldr	r2, [r2, #56]	; 0x38
20100490:	210c      	movs	r1, #12
20100492:	430a      	orrs	r2, r1
20100494:	639a      	str	r2, [r3, #56]	; 0x38
20100496:	4b20      	ldr	r3, [pc, #128]	; (20100518 <TimerConfig+0x1d0>)
20100498:	4a1f      	ldr	r2, [pc, #124]	; (20100518 <TimerConfig+0x1d0>)
2010049a:	6b92      	ldr	r2, [r2, #56]	; 0x38
2010049c:	2101      	movs	r1, #1
2010049e:	430a      	orrs	r2, r1
201004a0:	639a      	str	r2, [r3, #56]	; 0x38
201004a2:	4b1d      	ldr	r3, [pc, #116]	; (20100518 <TimerConfig+0x1d0>)
201004a4:	4a1c      	ldr	r2, [pc, #112]	; (20100518 <TimerConfig+0x1d0>)
201004a6:	6b92      	ldr	r2, [r2, #56]	; 0x38
201004a8:	491e      	ldr	r1, [pc, #120]	; (20100524 <TimerConfig+0x1dc>)
201004aa:	400a      	ands	r2, r1
201004ac:	639a      	str	r2, [r3, #56]	; 0x38
201004ae:	4b1a      	ldr	r3, [pc, #104]	; (20100518 <TimerConfig+0x1d0>)
201004b0:	4a19      	ldr	r2, [pc, #100]	; (20100518 <TimerConfig+0x1d0>)
201004b2:	6b92      	ldr	r2, [r2, #56]	; 0x38
201004b4:	21c0      	movs	r1, #192	; 0xc0
201004b6:	0109      	lsls	r1, r1, #4
201004b8:	430a      	orrs	r2, r1
201004ba:	639a      	str	r2, [r3, #56]	; 0x38
201004bc:	4b16      	ldr	r3, [pc, #88]	; (20100518 <TimerConfig+0x1d0>)
201004be:	4a16      	ldr	r2, [pc, #88]	; (20100518 <TimerConfig+0x1d0>)
201004c0:	6b92      	ldr	r2, [r2, #56]	; 0x38
201004c2:	2180      	movs	r1, #128	; 0x80
201004c4:	0049      	lsls	r1, r1, #1
201004c6:	430a      	orrs	r2, r1
201004c8:	639a      	str	r2, [r3, #56]	; 0x38
201004ca:	4b13      	ldr	r3, [pc, #76]	; (20100518 <TimerConfig+0x1d0>)
201004cc:	4a12      	ldr	r2, [pc, #72]	; (20100518 <TimerConfig+0x1d0>)
201004ce:	6c12      	ldr	r2, [r2, #64]	; 0x40
201004d0:	21c8      	movs	r1, #200	; 0xc8
201004d2:	01c9      	lsls	r1, r1, #7
201004d4:	430a      	orrs	r2, r1
201004d6:	641a      	str	r2, [r3, #64]	; 0x40
201004d8:	4b0f      	ldr	r3, [pc, #60]	; (20100518 <TimerConfig+0x1d0>)
201004da:	4a0f      	ldr	r2, [pc, #60]	; (20100518 <TimerConfig+0x1d0>)
201004dc:	6c52      	ldr	r2, [r2, #68]	; 0x44
201004de:	21c8      	movs	r1, #200	; 0xc8
201004e0:	01c9      	lsls	r1, r1, #7
201004e2:	430a      	orrs	r2, r1
201004e4:	645a      	str	r2, [r3, #68]	; 0x44
201004e6:	4b0c      	ldr	r3, [pc, #48]	; (20100518 <TimerConfig+0x1d0>)
201004e8:	4a0b      	ldr	r2, [pc, #44]	; (20100518 <TimerConfig+0x1d0>)
201004ea:	6c92      	ldr	r2, [r2, #72]	; 0x48
201004ec:	21c8      	movs	r1, #200	; 0xc8
201004ee:	01c9      	lsls	r1, r1, #7
201004f0:	430a      	orrs	r2, r1
201004f2:	649a      	str	r2, [r3, #72]	; 0x48
201004f4:	4b08      	ldr	r3, [pc, #32]	; (20100518 <TimerConfig+0x1d0>)
201004f6:	4a08      	ldr	r2, [pc, #32]	; (20100518 <TimerConfig+0x1d0>)
201004f8:	6d92      	ldr	r2, [r2, #88]	; 0x58
201004fa:	21f0      	movs	r1, #240	; 0xf0
201004fc:	0149      	lsls	r1, r1, #5
201004fe:	430a      	orrs	r2, r1
20100500:	659a      	str	r2, [r3, #88]	; 0x58
20100502:	4b05      	ldr	r3, [pc, #20]	; (20100518 <TimerConfig+0x1d0>)
20100504:	2201      	movs	r2, #1
20100506:	60da      	str	r2, [r3, #12]
20100508:	46c0      	nop			; (mov r8, r8)
2010050a:	46bd      	mov	sp, r7
2010050c:	bd80      	pop	{r7, pc}
2010050e:	46c0      	nop			; (mov r8, r8)
20100510:	40020000 	.word	0x40020000
20100514:	ff00ffff 	.word	0xff00ffff
20100518:	40098000 	.word	0x40098000
2010051c:	000003ff 	.word	0x000003ff
20100520:	fffff1ff 	.word	0xfffff1ff
20100524:	fffff0ff 	.word	0xfffff0ff

20100528 <adc_init>:
20100528:	b580      	push	{r7, lr}
2010052a:	af00      	add	r7, sp, #0
2010052c:	4b07      	ldr	r3, [pc, #28]	; (2010054c <adc_init+0x24>)
2010052e:	4a07      	ldr	r2, [pc, #28]	; (2010054c <adc_init+0x24>)
20100530:	69d2      	ldr	r2, [r2, #28]
20100532:	2180      	movs	r1, #128	; 0x80
20100534:	0289      	lsls	r1, r1, #10
20100536:	430a      	orrs	r2, r1
20100538:	61da      	str	r2, [r3, #28]
2010053a:	4b04      	ldr	r3, [pc, #16]	; (2010054c <adc_init+0x24>)
2010053c:	4a04      	ldr	r2, [pc, #16]	; (20100550 <adc_init+0x28>)
2010053e:	615a      	str	r2, [r3, #20]
20100540:	4b04      	ldr	r3, [pc, #16]	; (20100554 <adc_init+0x2c>)
20100542:	2245      	movs	r2, #69	; 0x45
20100544:	601a      	str	r2, [r3, #0]
20100546:	46c0      	nop			; (mov r8, r8)
20100548:	46bd      	mov	sp, r7
2010054a:	bd80      	pop	{r7, pc}
2010054c:	40020000 	.word	0x40020000
20100550:	00002020 	.word	0x00002020
20100554:	40088000 	.word	0x40088000

20100558 <dac_init>:
20100558:	b580      	push	{r7, lr}
2010055a:	af00      	add	r7, sp, #0
2010055c:	4b07      	ldr	r3, [pc, #28]	; (2010057c <dac_init+0x24>)
2010055e:	4a07      	ldr	r2, [pc, #28]	; (2010057c <dac_init+0x24>)
20100560:	69d2      	ldr	r2, [r2, #28]
20100562:	2180      	movs	r1, #128	; 0x80
20100564:	02c9      	lsls	r1, r1, #11
20100566:	430a      	orrs	r2, r1
20100568:	61da      	str	r2, [r3, #28]
2010056a:	4b05      	ldr	r3, [pc, #20]	; (20100580 <dac_init+0x28>)
2010056c:	4a04      	ldr	r2, [pc, #16]	; (20100580 <dac_init+0x28>)
2010056e:	6812      	ldr	r2, [r2, #0]
20100570:	2104      	movs	r1, #4
20100572:	430a      	orrs	r2, r1
20100574:	601a      	str	r2, [r3, #0]
20100576:	46c0      	nop			; (mov r8, r8)
20100578:	46bd      	mov	sp, r7
2010057a:	bd80      	pop	{r7, pc}
2010057c:	40020000 	.word	0x40020000
20100580:	40090000 	.word	0x40090000

20100584 <ssi_init>:
20100584:	b580      	push	{r7, lr}
20100586:	af00      	add	r7, sp, #0
20100588:	4b0c      	ldr	r3, [pc, #48]	; (201005bc <ssi_init+0x38>)
2010058a:	4a0c      	ldr	r2, [pc, #48]	; (201005bc <ssi_init+0x38>)
2010058c:	69d2      	ldr	r2, [r2, #28]
2010058e:	2180      	movs	r1, #128	; 0x80
20100590:	0349      	lsls	r1, r1, #13
20100592:	430a      	orrs	r2, r1
20100594:	61da      	str	r2, [r3, #28]
20100596:	4b09      	ldr	r3, [pc, #36]	; (201005bc <ssi_init+0x38>)
20100598:	4a09      	ldr	r2, [pc, #36]	; (201005c0 <ssi_init+0x3c>)
2010059a:	62da      	str	r2, [r3, #44]	; 0x2c
2010059c:	4b09      	ldr	r3, [pc, #36]	; (201005c4 <ssi_init+0x40>)
2010059e:	2200      	movs	r2, #0
201005a0:	605a      	str	r2, [r3, #4]
201005a2:	4b08      	ldr	r3, [pc, #32]	; (201005c4 <ssi_init+0x40>)
201005a4:	2210      	movs	r2, #16
201005a6:	611a      	str	r2, [r3, #16]
201005a8:	4b06      	ldr	r3, [pc, #24]	; (201005c4 <ssi_init+0x40>)
201005aa:	4a07      	ldr	r2, [pc, #28]	; (201005c8 <ssi_init+0x44>)
201005ac:	601a      	str	r2, [r3, #0]
201005ae:	4b05      	ldr	r3, [pc, #20]	; (201005c4 <ssi_init+0x40>)
201005b0:	2202      	movs	r2, #2
201005b2:	605a      	str	r2, [r3, #4]
201005b4:	46c0      	nop			; (mov r8, r8)
201005b6:	46bd      	mov	sp, r7
201005b8:	bd80      	pop	{r7, pc}
201005ba:	46c0      	nop			; (mov r8, r8)
201005bc:	40020000 	.word	0x40020000
201005c0:	02000a00 	.word	0x02000a00
201005c4:	400a0000 	.word	0x400a0000
201005c8:	0000021b 	.word	0x0000021b

201005cc <b2g>:
201005cc:	b580      	push	{r7, lr}
201005ce:	b082      	sub	sp, #8
201005d0:	af00      	add	r7, sp, #0
201005d2:	6078      	str	r0, [r7, #4]
201005d4:	687b      	ldr	r3, [r7, #4]
201005d6:	085a      	lsrs	r2, r3, #1
201005d8:	687b      	ldr	r3, [r7, #4]
201005da:	4053      	eors	r3, r2
201005dc:	0018      	movs	r0, r3
201005de:	46bd      	mov	sp, r7
201005e0:	b002      	add	sp, #8
201005e2:	bd80      	pop	{r7, pc}

201005e4 <g2b>:
201005e4:	b580      	push	{r7, lr}
201005e6:	b084      	sub	sp, #16
201005e8:	af00      	add	r7, sp, #0
201005ea:	6078      	str	r0, [r7, #4]
201005ec:	2300      	movs	r3, #0
201005ee:	60fb      	str	r3, [r7, #12]
201005f0:	2300      	movs	r3, #0
201005f2:	60fb      	str	r3, [r7, #12]
201005f4:	e006      	b.n	20100604 <g2b+0x20>
201005f6:	68fa      	ldr	r2, [r7, #12]
201005f8:	687b      	ldr	r3, [r7, #4]
201005fa:	4053      	eors	r3, r2
201005fc:	60fb      	str	r3, [r7, #12]
201005fe:	687b      	ldr	r3, [r7, #4]
20100600:	085b      	lsrs	r3, r3, #1
20100602:	607b      	str	r3, [r7, #4]
20100604:	687b      	ldr	r3, [r7, #4]
20100606:	2b00      	cmp	r3, #0
20100608:	d1f5      	bne.n	201005f6 <g2b+0x12>
2010060a:	68fb      	ldr	r3, [r7, #12]
2010060c:	0018      	movs	r0, r3
2010060e:	46bd      	mov	sp, r7
20100610:	b004      	add	sp, #16
20100612:	bd80      	pop	{r7, pc}

20100614 <SystemInit>:
20100614:	b580      	push	{r7, lr}
20100616:	af00      	add	r7, sp, #0
20100618:	f7ff fe5c 	bl	201002d4 <ClkConfig>
2010061c:	f7ff fdb6 	bl	2010018c <PortConfig>
20100620:	f7ff fe92 	bl	20100348 <TimerConfig>
20100624:	f7ff ff80 	bl	20100528 <adc_init>
20100628:	f7ff ff96 	bl	20100558 <dac_init>
2010062c:	f7ff ffaa 	bl	20100584 <ssi_init>
20100630:	46c0      	nop			; (mov r8, r8)
20100632:	46bd      	mov	sp, r7
20100634:	bd80      	pop	{r7, pc}
20100636:	46c0      	nop			; (mov r8, r8)

20100638 <get_dcA>:
20100638:	b580      	push	{r7, lr}
2010063a:	b082      	sub	sp, #8
2010063c:	af00      	add	r7, sp, #0
2010063e:	2300      	movs	r3, #0
20100640:	603b      	str	r3, [r7, #0]
20100642:	2300      	movs	r3, #0
20100644:	607b      	str	r3, [r7, #4]
20100646:	e012      	b.n	2010066e <get_dcA+0x36>
20100648:	4b0e      	ldr	r3, [pc, #56]	; (20100684 <get_dcA+0x4c>)
2010064a:	2237      	movs	r2, #55	; 0x37
2010064c:	601a      	str	r2, [r3, #0]
2010064e:	46c0      	nop			; (mov r8, r8)
20100650:	4b0c      	ldr	r3, [pc, #48]	; (20100684 <get_dcA+0x4c>)
20100652:	6a1b      	ldr	r3, [r3, #32]
20100654:	2204      	movs	r2, #4
20100656:	4013      	ands	r3, r2
20100658:	d0fa      	beq.n	20100650 <get_dcA+0x18>
2010065a:	4b0a      	ldr	r3, [pc, #40]	; (20100684 <get_dcA+0x4c>)
2010065c:	699b      	ldr	r3, [r3, #24]
2010065e:	051b      	lsls	r3, r3, #20
20100660:	0d1a      	lsrs	r2, r3, #20
20100662:	683b      	ldr	r3, [r7, #0]
20100664:	18d3      	adds	r3, r2, r3
20100666:	603b      	str	r3, [r7, #0]
20100668:	687b      	ldr	r3, [r7, #4]
2010066a:	3301      	adds	r3, #1
2010066c:	607b      	str	r3, [r7, #4]
2010066e:	687b      	ldr	r3, [r7, #4]
20100670:	4a05      	ldr	r2, [pc, #20]	; (20100688 <get_dcA+0x50>)
20100672:	4293      	cmp	r3, r2
20100674:	dde8      	ble.n	20100648 <get_dcA+0x10>
20100676:	683b      	ldr	r3, [r7, #0]
20100678:	129b      	asrs	r3, r3, #10
2010067a:	0018      	movs	r0, r3
2010067c:	46bd      	mov	sp, r7
2010067e:	b002      	add	sp, #8
20100680:	bd80      	pop	{r7, pc}
20100682:	46c0      	nop			; (mov r8, r8)
20100684:	40088000 	.word	0x40088000
20100688:	000003ff 	.word	0x000003ff

2010068c <get_dcB>:
2010068c:	b580      	push	{r7, lr}
2010068e:	b082      	sub	sp, #8
20100690:	af00      	add	r7, sp, #0
20100692:	2300      	movs	r3, #0
20100694:	603b      	str	r3, [r7, #0]
20100696:	2300      	movs	r3, #0
20100698:	607b      	str	r3, [r7, #4]
2010069a:	e012      	b.n	201006c2 <get_dcB+0x36>
2010069c:	4b0e      	ldr	r3, [pc, #56]	; (201006d8 <get_dcB+0x4c>)
2010069e:	2247      	movs	r2, #71	; 0x47
201006a0:	601a      	str	r2, [r3, #0]
201006a2:	46c0      	nop			; (mov r8, r8)
201006a4:	4b0c      	ldr	r3, [pc, #48]	; (201006d8 <get_dcB+0x4c>)
201006a6:	6a1b      	ldr	r3, [r3, #32]
201006a8:	2204      	movs	r2, #4
201006aa:	4013      	ands	r3, r2
201006ac:	d0fa      	beq.n	201006a4 <get_dcB+0x18>
201006ae:	4b0a      	ldr	r3, [pc, #40]	; (201006d8 <get_dcB+0x4c>)
201006b0:	699b      	ldr	r3, [r3, #24]
201006b2:	051b      	lsls	r3, r3, #20
201006b4:	0d1a      	lsrs	r2, r3, #20
201006b6:	683b      	ldr	r3, [r7, #0]
201006b8:	18d3      	adds	r3, r2, r3
201006ba:	603b      	str	r3, [r7, #0]
201006bc:	687b      	ldr	r3, [r7, #4]
201006be:	3301      	adds	r3, #1
201006c0:	607b      	str	r3, [r7, #4]
201006c2:	687b      	ldr	r3, [r7, #4]
201006c4:	4a05      	ldr	r2, [pc, #20]	; (201006dc <get_dcB+0x50>)
201006c6:	4293      	cmp	r3, r2
201006c8:	dde8      	ble.n	2010069c <get_dcB+0x10>
201006ca:	683b      	ldr	r3, [r7, #0]
201006cc:	129b      	asrs	r3, r3, #10
201006ce:	0018      	movs	r0, r3
201006d0:	46bd      	mov	sp, r7
201006d2:	b002      	add	sp, #8
201006d4:	bd80      	pop	{r7, pc}
201006d6:	46c0      	nop			; (mov r8, r8)
201006d8:	40088000 	.word	0x40088000
201006dc:	000003ff 	.word	0x000003ff

201006e0 <vector_sync_motor_controller>:
201006e0:	b580      	push	{r7, lr}
201006e2:	b090      	sub	sp, #64	; 0x40
201006e4:	af00      	add	r7, sp, #0
201006e6:	6078      	str	r0, [r7, #4]
201006e8:	6039      	str	r1, [r7, #0]
201006ea:	683a      	ldr	r2, [r7, #0]
201006ec:	232c      	movs	r3, #44	; 0x2c
201006ee:	18f9      	adds	r1, r7, r3
201006f0:	687b      	ldr	r3, [r7, #4]
201006f2:	0018      	movs	r0, r3
201006f4:	f000 f8a4 	bl	20100840 <abc_to_dq>
201006f8:	232c      	movs	r3, #44	; 0x2c
201006fa:	18fb      	adds	r3, r7, r3
201006fc:	681b      	ldr	r3, [r3, #0]
201006fe:	425b      	negs	r3, r3
20100700:	63fb      	str	r3, [r7, #60]	; 0x3c
20100702:	232c      	movs	r3, #44	; 0x2c
20100704:	18fb      	adds	r3, r7, r3
20100706:	685b      	ldr	r3, [r3, #4]
20100708:	22c8      	movs	r2, #200	; 0xc8
2010070a:	1ad3      	subs	r3, r2, r3
2010070c:	63bb      	str	r3, [r7, #56]	; 0x38
2010070e:	6b7a      	ldr	r2, [r7, #52]	; 0x34
20100710:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
20100712:	231c      	movs	r3, #28
20100714:	18fb      	adds	r3, r7, r3
20100716:	0018      	movs	r0, r3
20100718:	f000 f86c 	bl	201007f4 <update>
2010071c:	6b7a      	ldr	r2, [r7, #52]	; 0x34
2010071e:	6bb9      	ldr	r1, [r7, #56]	; 0x38
20100720:	230c      	movs	r3, #12
20100722:	18fb      	adds	r3, r7, r3
20100724:	0018      	movs	r0, r3
20100726:	f000 f865 	bl	201007f4 <update>
2010072a:	231c      	movs	r3, #28
2010072c:	18fb      	adds	r3, r7, r3
2010072e:	68da      	ldr	r2, [r3, #12]
20100730:	232c      	movs	r3, #44	; 0x2c
20100732:	18fb      	adds	r3, r7, r3
20100734:	601a      	str	r2, [r3, #0]
20100736:	230c      	movs	r3, #12
20100738:	18fb      	adds	r3, r7, r3
2010073a:	68da      	ldr	r2, [r3, #12]
2010073c:	232c      	movs	r3, #44	; 0x2c
2010073e:	18fb      	adds	r3, r7, r3
20100740:	605a      	str	r2, [r3, #4]
20100742:	683b      	ldr	r3, [r7, #0]
20100744:	33fa      	adds	r3, #250	; 0xfa
20100746:	059b      	lsls	r3, r3, #22
20100748:	0d9a      	lsrs	r2, r3, #22
2010074a:	232c      	movs	r3, #44	; 0x2c
2010074c:	18f9      	adds	r1, r7, r3
2010074e:	687b      	ldr	r3, [r7, #4]
20100750:	0018      	movs	r0, r3
20100752:	f000 f8bd 	bl	201008d0 <dq_to_abc>
20100756:	4a13      	ldr	r2, [pc, #76]	; (201007a4 <vector_sync_motor_controller+0xc4>)
20100758:	687b      	ldr	r3, [r7, #4]
2010075a:	3308      	adds	r3, #8
2010075c:	681b      	ldr	r3, [r3, #0]
2010075e:	2180      	movs	r1, #128	; 0x80
20100760:	0089      	lsls	r1, r1, #2
20100762:	468c      	mov	ip, r1
20100764:	4463      	add	r3, ip
20100766:	6113      	str	r3, [r2, #16]
20100768:	4a0e      	ldr	r2, [pc, #56]	; (201007a4 <vector_sync_motor_controller+0xc4>)
2010076a:	687b      	ldr	r3, [r7, #4]
2010076c:	3304      	adds	r3, #4
2010076e:	681b      	ldr	r3, [r3, #0]
20100770:	2180      	movs	r1, #128	; 0x80
20100772:	0089      	lsls	r1, r1, #2
20100774:	468c      	mov	ip, r1
20100776:	4463      	add	r3, ip
20100778:	6153      	str	r3, [r2, #20]
2010077a:	4a0a      	ldr	r2, [pc, #40]	; (201007a4 <vector_sync_motor_controller+0xc4>)
2010077c:	687b      	ldr	r3, [r7, #4]
2010077e:	681b      	ldr	r3, [r3, #0]
20100780:	2180      	movs	r1, #128	; 0x80
20100782:	0089      	lsls	r1, r1, #2
20100784:	468c      	mov	ip, r1
20100786:	4463      	add	r3, ip
20100788:	6193      	str	r3, [r2, #24]
2010078a:	4a07      	ldr	r2, [pc, #28]	; (201007a8 <vector_sync_motor_controller+0xc8>)
2010078c:	687b      	ldr	r3, [r7, #4]
2010078e:	681b      	ldr	r3, [r3, #0]
20100790:	2180      	movs	r1, #128	; 0x80
20100792:	0109      	lsls	r1, r1, #4
20100794:	468c      	mov	ip, r1
20100796:	4463      	add	r3, ip
20100798:	6053      	str	r3, [r2, #4]
2010079a:	46c0      	nop			; (mov r8, r8)
2010079c:	46bd      	mov	sp, r7
2010079e:	b010      	add	sp, #64	; 0x40
201007a0:	bd80      	pop	{r7, pc}
201007a2:	46c0      	nop			; (mov r8, r8)
201007a4:	40098000 	.word	0x40098000
201007a8:	40090000 	.word	0x40090000

201007ac <mycos>:
201007ac:	4b05      	ldr	r3, [pc, #20]	; (201007c4 <mycos+0x18>)
201007ae:	4a06      	ldr	r2, [pc, #24]	; (201007c8 <mycos+0x1c>)
201007b0:	447b      	add	r3, pc
201007b2:	0580      	lsls	r0, r0, #22
201007b4:	589b      	ldr	r3, [r3, r2]
201007b6:	0d00      	lsrs	r0, r0, #20
201007b8:	58c0      	ldr	r0, [r0, r3]
201007ba:	b082      	sub	sp, #8
201007bc:	9301      	str	r3, [sp, #4]
201007be:	b002      	add	sp, #8
201007c0:	4770      	bx	lr
201007c2:	46c0      	nop			; (mov r8, r8)
201007c4:	ffeff850 	.word	0xffeff850
201007c8:	00000000 	.word	0x00000000

201007cc <mysin>:
201007cc:	4b07      	ldr	r3, [pc, #28]	; (201007ec <mysin+0x20>)
201007ce:	4a08      	ldr	r2, [pc, #32]	; (201007f0 <mysin+0x24>)
201007d0:	447b      	add	r3, pc
201007d2:	589b      	ldr	r3, [r3, r2]
201007d4:	b082      	sub	sp, #8
201007d6:	9301      	str	r3, [sp, #4]
201007d8:	23c0      	movs	r3, #192	; 0xc0
201007da:	009b      	lsls	r3, r3, #2
201007dc:	469c      	mov	ip, r3
201007de:	4460      	add	r0, ip
201007e0:	9b01      	ldr	r3, [sp, #4]
201007e2:	0580      	lsls	r0, r0, #22
201007e4:	0d00      	lsrs	r0, r0, #20
201007e6:	58c0      	ldr	r0, [r0, r3]
201007e8:	b002      	add	sp, #8
201007ea:	4770      	bx	lr
201007ec:	ffeff830 	.word	0xffeff830
201007f0:	00000000 	.word	0x00000000

201007f4 <update>:
201007f4:	b510      	push	{r4, lr}
201007f6:	6804      	ldr	r4, [r0, #0]
201007f8:	6883      	ldr	r3, [r0, #8]
201007fa:	434c      	muls	r4, r1
201007fc:	2a00      	cmp	r2, #0
201007fe:	d004      	beq.n	2010080a <update+0x16>
20100800:	2b00      	cmp	r3, #0
20100802:	dd09      	ble.n	20100818 <update+0x24>
20100804:	2c00      	cmp	r4, #0
20100806:	dd00      	ble.n	2010080a <update+0x16>
20100808:	2400      	movs	r4, #0
2010080a:	6842      	ldr	r2, [r0, #4]
2010080c:	18e3      	adds	r3, r4, r3
2010080e:	4351      	muls	r1, r2
20100810:	18c9      	adds	r1, r1, r3
20100812:	60c1      	str	r1, [r0, #12]
20100814:	6083      	str	r3, [r0, #8]
20100816:	bd10      	pop	{r4, pc}
20100818:	2b00      	cmp	r3, #0
2010081a:	d0f6      	beq.n	2010080a <update+0x16>
2010081c:	43e2      	mvns	r2, r4
2010081e:	17d2      	asrs	r2, r2, #31
20100820:	4014      	ands	r4, r2
20100822:	e7f2      	b.n	2010080a <update+0x16>

20100824 <dot3>:
20100824:	6803      	ldr	r3, [r0, #0]
20100826:	680a      	ldr	r2, [r1, #0]
20100828:	b510      	push	{r4, lr}
2010082a:	435a      	muls	r2, r3
2010082c:	6844      	ldr	r4, [r0, #4]
2010082e:	684b      	ldr	r3, [r1, #4]
20100830:	6880      	ldr	r0, [r0, #8]
20100832:	4363      	muls	r3, r4
20100834:	18d2      	adds	r2, r2, r3
20100836:	688b      	ldr	r3, [r1, #8]
20100838:	4343      	muls	r3, r0
2010083a:	18d0      	adds	r0, r2, r3
2010083c:	bd10      	pop	{r4, pc}
2010083e:	46c0      	nop			; (mov r8, r8)

20100840 <abc_to_dq>:
20100840:	b5f0      	push	{r4, r5, r6, r7, lr}
20100842:	4647      	mov	r7, r8
20100844:	b480      	push	{r7}
20100846:	4b1d      	ldr	r3, [pc, #116]	; (201008bc <abc_to_dq+0x7c>)
20100848:	4c1d      	ldr	r4, [pc, #116]	; (201008c0 <abc_to_dq+0x80>)
2010084a:	447b      	add	r3, pc
2010084c:	591d      	ldr	r5, [r3, r4]
2010084e:	23c0      	movs	r3, #192	; 0xc0
20100850:	009b      	lsls	r3, r3, #2
20100852:	18d3      	adds	r3, r2, r3
20100854:	059b      	lsls	r3, r3, #22
20100856:	0d1b      	lsrs	r3, r3, #20
20100858:	595b      	ldr	r3, [r3, r5]
2010085a:	4698      	mov	r8, r3
2010085c:	4b19      	ldr	r3, [pc, #100]	; (201008c4 <abc_to_dq+0x84>)
2010085e:	18d4      	adds	r4, r2, r3
20100860:	05a4      	lsls	r4, r4, #22
20100862:	4b19      	ldr	r3, [pc, #100]	; (201008c8 <abc_to_dq+0x88>)
20100864:	0d24      	lsrs	r4, r4, #20
20100866:	5967      	ldr	r7, [r4, r5]
20100868:	18d4      	adds	r4, r2, r3
2010086a:	05a4      	lsls	r4, r4, #22
2010086c:	4b17      	ldr	r3, [pc, #92]	; (201008cc <abc_to_dq+0x8c>)
2010086e:	0d24      	lsrs	r4, r4, #20
20100870:	5966      	ldr	r6, [r4, r5]
20100872:	18d4      	adds	r4, r2, r3
20100874:	05a4      	lsls	r4, r4, #22
20100876:	0d24      	lsrs	r4, r4, #20
20100878:	5964      	ldr	r4, [r4, r5]
2010087a:	6843      	ldr	r3, [r0, #4]
2010087c:	4363      	muls	r3, r4
2010087e:	0094      	lsls	r4, r2, #2
20100880:	469c      	mov	ip, r3
20100882:	3256      	adds	r2, #86	; 0x56
20100884:	32ff      	adds	r2, #255	; 0xff
20100886:	6803      	ldr	r3, [r0, #0]
20100888:	5964      	ldr	r4, [r4, r5]
2010088a:	0592      	lsls	r2, r2, #22
2010088c:	0d12      	lsrs	r2, r2, #20
2010088e:	5955      	ldr	r5, [r2, r5]
20100890:	435c      	muls	r4, r3
20100892:	6883      	ldr	r3, [r0, #8]
20100894:	4464      	add	r4, ip
20100896:	435d      	muls	r5, r3
20100898:	4643      	mov	r3, r8
2010089a:	1964      	adds	r4, r4, r5
2010089c:	12a4      	asrs	r4, r4, #10
2010089e:	600c      	str	r4, [r1, #0]
201008a0:	6802      	ldr	r2, [r0, #0]
201008a2:	435a      	muls	r2, r3
201008a4:	6843      	ldr	r3, [r0, #4]
201008a6:	437b      	muls	r3, r7
201008a8:	18d3      	adds	r3, r2, r3
201008aa:	6882      	ldr	r2, [r0, #8]
201008ac:	4372      	muls	r2, r6
201008ae:	189b      	adds	r3, r3, r2
201008b0:	425b      	negs	r3, r3
201008b2:	129b      	asrs	r3, r3, #10
201008b4:	604b      	str	r3, [r1, #4]
201008b6:	bc04      	pop	{r2}
201008b8:	4690      	mov	r8, r2
201008ba:	bdf0      	pop	{r4, r5, r6, r7, pc}
201008bc:	ffeff7b6 	.word	0xffeff7b6
201008c0:	00000000 	.word	0x00000000
201008c4:	000005aa 	.word	0x000005aa
201008c8:	00000455 	.word	0x00000455
201008cc:	000002aa 	.word	0x000002aa

201008d0 <dq_to_abc>:
201008d0:	b570      	push	{r4, r5, r6, lr}
201008d2:	4b1c      	ldr	r3, [pc, #112]	; (20100944 <dq_to_abc+0x74>)
201008d4:	4c1c      	ldr	r4, [pc, #112]	; (20100948 <dq_to_abc+0x78>)
201008d6:	447b      	add	r3, pc
201008d8:	591d      	ldr	r5, [r3, r4]
201008da:	0093      	lsls	r3, r2, #2
201008dc:	680c      	ldr	r4, [r1, #0]
201008de:	595b      	ldr	r3, [r3, r5]
201008e0:	684e      	ldr	r6, [r1, #4]
201008e2:	435c      	muls	r4, r3
201008e4:	23c0      	movs	r3, #192	; 0xc0
201008e6:	009b      	lsls	r3, r3, #2
201008e8:	18d3      	adds	r3, r2, r3
201008ea:	059b      	lsls	r3, r3, #22
201008ec:	0d1b      	lsrs	r3, r3, #20
201008ee:	595b      	ldr	r3, [r3, r5]
201008f0:	4373      	muls	r3, r6
201008f2:	1ae3      	subs	r3, r4, r3
201008f4:	151b      	asrs	r3, r3, #20
201008f6:	6003      	str	r3, [r0, #0]
201008f8:	4b14      	ldr	r3, [pc, #80]	; (2010094c <dq_to_abc+0x7c>)
201008fa:	680c      	ldr	r4, [r1, #0]
201008fc:	18d3      	adds	r3, r2, r3
201008fe:	059b      	lsls	r3, r3, #22
20100900:	0d1b      	lsrs	r3, r3, #20
20100902:	595b      	ldr	r3, [r3, r5]
20100904:	684e      	ldr	r6, [r1, #4]
20100906:	435c      	muls	r4, r3
20100908:	4b11      	ldr	r3, [pc, #68]	; (20100950 <dq_to_abc+0x80>)
2010090a:	18d3      	adds	r3, r2, r3
2010090c:	059b      	lsls	r3, r3, #22
2010090e:	0d1b      	lsrs	r3, r3, #20
20100910:	595b      	ldr	r3, [r3, r5]
20100912:	4373      	muls	r3, r6
20100914:	1ae3      	subs	r3, r4, r3
20100916:	151b      	asrs	r3, r3, #20
20100918:	6043      	str	r3, [r0, #4]
2010091a:	0013      	movs	r3, r2
2010091c:	3356      	adds	r3, #86	; 0x56
2010091e:	33ff      	adds	r3, #255	; 0xff
20100920:	059b      	lsls	r3, r3, #22
20100922:	0d1b      	lsrs	r3, r3, #20
20100924:	595b      	ldr	r3, [r3, r5]
20100926:	680c      	ldr	r4, [r1, #0]
20100928:	435c      	muls	r4, r3
2010092a:	4b0a      	ldr	r3, [pc, #40]	; (20100954 <dq_to_abc+0x84>)
2010092c:	469c      	mov	ip, r3
2010092e:	4462      	add	r2, ip
20100930:	0592      	lsls	r2, r2, #22
20100932:	0d12      	lsrs	r2, r2, #20
20100934:	5952      	ldr	r2, [r2, r5]
20100936:	684b      	ldr	r3, [r1, #4]
20100938:	4353      	muls	r3, r2
2010093a:	1ae3      	subs	r3, r4, r3
2010093c:	151b      	asrs	r3, r3, #20
2010093e:	6083      	str	r3, [r0, #8]
20100940:	bd70      	pop	{r4, r5, r6, pc}
20100942:	46c0      	nop			; (mov r8, r8)
20100944:	ffeff72a 	.word	0xffeff72a
20100948:	00000000 	.word	0x00000000
2010094c:	000002aa 	.word	0x000002aa
20100950:	000005aa 	.word	0x000005aa
20100954:	00000455 	.word	0x00000455

20100958 <cord_atan>:
20100958:	b5f0      	push	{r4, r5, r6, r7, lr}
2010095a:	4645      	mov	r5, r8
2010095c:	4657      	mov	r7, sl
2010095e:	464e      	mov	r6, r9
20100960:	b4e0      	push	{r5, r6, r7}
20100962:	4b65      	ldr	r3, [pc, #404]	; (20100af8 <cord_atan+0x1a0>)
20100964:	b090      	sub	sp, #64	; 0x40
20100966:	447b      	add	r3, pc
20100968:	001c      	movs	r4, r3
2010096a:	4694      	mov	ip, r2
2010096c:	466a      	mov	r2, sp
2010096e:	468a      	mov	sl, r1
20100970:	cca2      	ldmia	r4!, {r1, r5, r7}
20100972:	c2a2      	stmia	r2!, {r1, r5, r7}
20100974:	cca2      	ldmia	r4!, {r1, r5, r7}
20100976:	c2a2      	stmia	r2!, {r1, r5, r7}
20100978:	cc22      	ldmia	r4!, {r1, r5}
2010097a:	c222      	stmia	r2!, {r1, r5}
2010097c:	3320      	adds	r3, #32
2010097e:	aa08      	add	r2, sp, #32
20100980:	4690      	mov	r8, r2
20100982:	cb32      	ldmia	r3!, {r1, r4, r5}
20100984:	c232      	stmia	r2!, {r1, r4, r5}
20100986:	cb32      	ldmia	r3!, {r1, r4, r5}
20100988:	c232      	stmia	r2!, {r1, r4, r5}
2010098a:	cb12      	ldmia	r3!, {r1, r4}
2010098c:	c212      	stmia	r2!, {r1, r4}
2010098e:	6802      	ldr	r2, [r0, #0]
20100990:	6845      	ldr	r5, [r0, #4]
20100992:	17d1      	asrs	r1, r2, #31
20100994:	1853      	adds	r3, r2, r1
20100996:	466e      	mov	r6, sp
20100998:	404b      	eors	r3, r1
2010099a:	2d00      	cmp	r5, #0
2010099c:	dd6c      	ble.n	20100a78 <cord_atan+0x120>
2010099e:	195f      	adds	r7, r3, r5
201009a0:	1aeb      	subs	r3, r5, r3
201009a2:	9d00      	ldr	r5, [sp, #0]
201009a4:	2b00      	cmp	r3, #0
201009a6:	d100      	bne.n	201009aa <cord_atan+0x52>
201009a8:	e094      	b.n	20100ad4 <cord_atan+0x17c>
201009aa:	105c      	asrs	r4, r3, #1
201009ac:	2b00      	cmp	r3, #0
201009ae:	dd68      	ble.n	20100a82 <cord_atan+0x12a>
201009b0:	1078      	asrs	r0, r7, #1
201009b2:	1a1b      	subs	r3, r3, r0
201009b4:	6870      	ldr	r0, [r6, #4]
201009b6:	19e4      	adds	r4, r4, r7
201009b8:	4681      	mov	r9, r0
201009ba:	444d      	add	r5, r9
201009bc:	2b00      	cmp	r3, #0
201009be:	d100      	bne.n	201009c2 <cord_atan+0x6a>
201009c0:	e08a      	b.n	20100ad8 <cord_atan+0x180>
201009c2:	1098      	asrs	r0, r3, #2
201009c4:	2b00      	cmp	r3, #0
201009c6:	dd62      	ble.n	20100a8e <cord_atan+0x136>
201009c8:	1907      	adds	r7, r0, r4
201009ca:	10a4      	asrs	r4, r4, #2
201009cc:	1b18      	subs	r0, r3, r4
201009ce:	68b3      	ldr	r3, [r6, #8]
201009d0:	4699      	mov	r9, r3
201009d2:	444d      	add	r5, r9
201009d4:	2800      	cmp	r0, #0
201009d6:	d100      	bne.n	201009da <cord_atan+0x82>
201009d8:	e081      	b.n	20100ade <cord_atan+0x186>
201009da:	10c3      	asrs	r3, r0, #3
201009dc:	2800      	cmp	r0, #0
201009de:	dd5c      	ble.n	20100a9a <cord_atan+0x142>
201009e0:	10fc      	asrs	r4, r7, #3
201009e2:	1b00      	subs	r0, r0, r4
201009e4:	68f4      	ldr	r4, [r6, #12]
201009e6:	19db      	adds	r3, r3, r7
201009e8:	46a1      	mov	r9, r4
201009ea:	444d      	add	r5, r9
201009ec:	2800      	cmp	r0, #0
201009ee:	d100      	bne.n	201009f2 <cord_atan+0x9a>
201009f0:	e077      	b.n	20100ae2 <cord_atan+0x18a>
201009f2:	1104      	asrs	r4, r0, #4
201009f4:	2800      	cmp	r0, #0
201009f6:	dd56      	ble.n	20100aa6 <cord_atan+0x14e>
201009f8:	18e7      	adds	r7, r4, r3
201009fa:	111b      	asrs	r3, r3, #4
201009fc:	1ac4      	subs	r4, r0, r3
201009fe:	6933      	ldr	r3, [r6, #16]
20100a00:	4699      	mov	r9, r3
20100a02:	444d      	add	r5, r9
20100a04:	2c00      	cmp	r4, #0
20100a06:	d100      	bne.n	20100a0a <cord_atan+0xb2>
20100a08:	e06e      	b.n	20100ae8 <cord_atan+0x190>
20100a0a:	1163      	asrs	r3, r4, #5
20100a0c:	2c00      	cmp	r4, #0
20100a0e:	dd50      	ble.n	20100ab2 <cord_atan+0x15a>
20100a10:	1178      	asrs	r0, r7, #5
20100a12:	1a20      	subs	r0, r4, r0
20100a14:	6974      	ldr	r4, [r6, #20]
20100a16:	19db      	adds	r3, r3, r7
20100a18:	46a1      	mov	r9, r4
20100a1a:	444d      	add	r5, r9
20100a1c:	2800      	cmp	r0, #0
20100a1e:	d065      	beq.n	20100aec <cord_atan+0x194>
20100a20:	1184      	asrs	r4, r0, #6
20100a22:	2800      	cmp	r0, #0
20100a24:	dd4b      	ble.n	20100abe <cord_atan+0x166>
20100a26:	18e7      	adds	r7, r4, r3
20100a28:	119b      	asrs	r3, r3, #6
20100a2a:	1ac0      	subs	r0, r0, r3
20100a2c:	69b3      	ldr	r3, [r6, #24]
20100a2e:	4699      	mov	r9, r3
20100a30:	444d      	add	r5, r9
20100a32:	2800      	cmp	r0, #0
20100a34:	d05d      	beq.n	20100af2 <cord_atan+0x19a>
20100a36:	dd48      	ble.n	20100aca <cord_atan+0x172>
20100a38:	69f3      	ldr	r3, [r6, #28]
20100a3a:	11c0      	asrs	r0, r0, #7
20100a3c:	19c7      	adds	r7, r0, r7
20100a3e:	18ed      	adds	r5, r5, r3
20100a40:	2307      	movs	r3, #7
20100a42:	2a00      	cmp	r2, #0
20100a44:	db14      	blt.n	20100a70 <cord_atan+0x118>
20100a46:	2d00      	cmp	r5, #0
20100a48:	da03      	bge.n	20100a52 <cord_atan+0xfa>
20100a4a:	2280      	movs	r2, #128	; 0x80
20100a4c:	00d2      	lsls	r2, r2, #3
20100a4e:	4691      	mov	r9, r2
20100a50:	444d      	add	r5, r9
20100a52:	4652      	mov	r2, sl
20100a54:	6015      	str	r5, [r2, #0]
20100a56:	4642      	mov	r2, r8
20100a58:	009b      	lsls	r3, r3, #2
20100a5a:	58d0      	ldr	r0, [r2, r3]
20100a5c:	4663      	mov	r3, ip
20100a5e:	4378      	muls	r0, r7
20100a60:	1280      	asrs	r0, r0, #10
20100a62:	6018      	str	r0, [r3, #0]
20100a64:	b010      	add	sp, #64	; 0x40
20100a66:	bc1c      	pop	{r2, r3, r4}
20100a68:	4690      	mov	r8, r2
20100a6a:	4699      	mov	r9, r3
20100a6c:	46a2      	mov	sl, r4
20100a6e:	bdf0      	pop	{r4, r5, r6, r7, pc}
20100a70:	2280      	movs	r2, #128	; 0x80
20100a72:	0092      	lsls	r2, r2, #2
20100a74:	1b55      	subs	r5, r2, r5
20100a76:	e7e6      	b.n	20100a46 <cord_atan+0xee>
20100a78:	9900      	ldr	r1, [sp, #0]
20100a7a:	1b5f      	subs	r7, r3, r5
20100a7c:	195b      	adds	r3, r3, r5
20100a7e:	424d      	negs	r5, r1
20100a80:	e790      	b.n	201009a4 <cord_atan+0x4c>
20100a82:	6871      	ldr	r1, [r6, #4]
20100a84:	1078      	asrs	r0, r7, #1
20100a86:	1b3c      	subs	r4, r7, r4
20100a88:	18c3      	adds	r3, r0, r3
20100a8a:	1a6d      	subs	r5, r5, r1
20100a8c:	e796      	b.n	201009bc <cord_atan+0x64>
20100a8e:	1a27      	subs	r7, r4, r0
20100a90:	10a0      	asrs	r0, r4, #2
20100a92:	18c0      	adds	r0, r0, r3
20100a94:	68b3      	ldr	r3, [r6, #8]
20100a96:	1aed      	subs	r5, r5, r3
20100a98:	e79c      	b.n	201009d4 <cord_atan+0x7c>
20100a9a:	68f1      	ldr	r1, [r6, #12]
20100a9c:	10fc      	asrs	r4, r7, #3
20100a9e:	1afb      	subs	r3, r7, r3
20100aa0:	1820      	adds	r0, r4, r0
20100aa2:	1a6d      	subs	r5, r5, r1
20100aa4:	e7a2      	b.n	201009ec <cord_atan+0x94>
20100aa6:	1b1f      	subs	r7, r3, r4
20100aa8:	111c      	asrs	r4, r3, #4
20100aaa:	6933      	ldr	r3, [r6, #16]
20100aac:	1824      	adds	r4, r4, r0
20100aae:	1aed      	subs	r5, r5, r3
20100ab0:	e7a8      	b.n	20100a04 <cord_atan+0xac>
20100ab2:	6971      	ldr	r1, [r6, #20]
20100ab4:	1178      	asrs	r0, r7, #5
20100ab6:	1afb      	subs	r3, r7, r3
20100ab8:	1900      	adds	r0, r0, r4
20100aba:	1a6d      	subs	r5, r5, r1
20100abc:	e7ae      	b.n	20100a1c <cord_atan+0xc4>
20100abe:	1b1f      	subs	r7, r3, r4
20100ac0:	119b      	asrs	r3, r3, #6
20100ac2:	1818      	adds	r0, r3, r0
20100ac4:	69b3      	ldr	r3, [r6, #24]
20100ac6:	1aed      	subs	r5, r5, r3
20100ac8:	e7b3      	b.n	20100a32 <cord_atan+0xda>
20100aca:	69f3      	ldr	r3, [r6, #28]
20100acc:	11c4      	asrs	r4, r0, #7
20100ace:	1b3f      	subs	r7, r7, r4
20100ad0:	1aed      	subs	r5, r5, r3
20100ad2:	e7b5      	b.n	20100a40 <cord_atan+0xe8>
20100ad4:	2300      	movs	r3, #0
20100ad6:	e7b4      	b.n	20100a42 <cord_atan+0xea>
20100ad8:	0027      	movs	r7, r4
20100ada:	2301      	movs	r3, #1
20100adc:	e7b1      	b.n	20100a42 <cord_atan+0xea>
20100ade:	2302      	movs	r3, #2
20100ae0:	e7af      	b.n	20100a42 <cord_atan+0xea>
20100ae2:	001f      	movs	r7, r3
20100ae4:	2303      	movs	r3, #3
20100ae6:	e7ac      	b.n	20100a42 <cord_atan+0xea>
20100ae8:	2304      	movs	r3, #4
20100aea:	e7aa      	b.n	20100a42 <cord_atan+0xea>
20100aec:	001f      	movs	r7, r3
20100aee:	2305      	movs	r3, #5
20100af0:	e7a7      	b.n	20100a42 <cord_atan+0xea>
20100af2:	2306      	movs	r3, #6
20100af4:	e7a5      	b.n	20100a42 <cord_atan+0xea>
20100af6:	46c0      	nop			; (mov r8, r8)
20100af8:	00001586 	.word	0x00001586

20100afc <svpwm>:
20100afc:	b5f0      	push	{r4, r5, r6, r7, lr}
20100afe:	465f      	mov	r7, fp
20100b00:	4656      	mov	r6, sl
20100b02:	4644      	mov	r4, r8
20100b04:	464d      	mov	r5, r9
20100b06:	b4f0      	push	{r4, r5, r6, r7}
20100b08:	0005      	movs	r5, r0
20100b0a:	48d0      	ldr	r0, [pc, #832]	; (20100e4c <svpwm+0x350>)
20100b0c:	b091      	sub	sp, #68	; 0x44
20100b0e:	4478      	add	r0, pc
20100b10:	0006      	movs	r6, r0
20100b12:	466c      	mov	r4, sp
20100b14:	4bce      	ldr	r3, [pc, #824]	; (20100e50 <svpwm+0x354>)
20100b16:	4693      	mov	fp, r2
20100b18:	447b      	add	r3, pc
20100b1a:	469a      	mov	sl, r3
20100b1c:	468c      	mov	ip, r1
20100b1e:	ce0e      	ldmia	r6!, {r1, r2, r3}
20100b20:	c40e      	stmia	r4!, {r1, r2, r3}
20100b22:	ce0e      	ldmia	r6!, {r1, r2, r3}
20100b24:	c40e      	stmia	r4!, {r1, r2, r3}
20100b26:	ce0c      	ldmia	r6!, {r2, r3}
20100b28:	c40c      	stmia	r4!, {r2, r3}
20100b2a:	ae08      	add	r6, sp, #32
20100b2c:	0034      	movs	r4, r6
20100b2e:	3020      	adds	r0, #32
20100b30:	c80e      	ldmia	r0!, {r1, r2, r3}
20100b32:	c40e      	stmia	r4!, {r1, r2, r3}
20100b34:	c80e      	ldmia	r0!, {r1, r2, r3}
20100b36:	c40e      	stmia	r4!, {r1, r2, r3}
20100b38:	c80c      	ldmia	r0!, {r2, r3}
20100b3a:	c40c      	stmia	r4!, {r2, r3}
20100b3c:	4663      	mov	r3, ip
20100b3e:	681c      	ldr	r4, [r3, #0]
20100b40:	466f      	mov	r7, sp
20100b42:	17e2      	asrs	r2, r4, #31
20100b44:	18a3      	adds	r3, r4, r2
20100b46:	4053      	eors	r3, r2
20100b48:	4698      	mov	r8, r3
20100b4a:	4663      	mov	r3, ip
20100b4c:	685b      	ldr	r3, [r3, #4]
20100b4e:	2b00      	cmp	r3, #0
20100b50:	dc00      	bgt.n	20100b54 <svpwm+0x58>
20100b52:	e0b5      	b.n	20100cc0 <svpwm+0x1c4>
20100b54:	4641      	mov	r1, r8
20100b56:	18c8      	adds	r0, r1, r3
20100b58:	1a5b      	subs	r3, r3, r1
20100b5a:	4698      	mov	r8, r3
20100b5c:	9b00      	ldr	r3, [sp, #0]
20100b5e:	4641      	mov	r1, r8
20100b60:	2900      	cmp	r1, #0
20100b62:	d100      	bne.n	20100b66 <svpwm+0x6a>
20100b64:	e15f      	b.n	20100e26 <svpwm+0x32a>
20100b66:	dc00      	bgt.n	20100b6a <svpwm+0x6e>
20100b68:	e0b0      	b.n	20100ccc <svpwm+0x1d0>
20100b6a:	4641      	mov	r1, r8
20100b6c:	1049      	asrs	r1, r1, #1
20100b6e:	4689      	mov	r9, r1
20100b70:	1041      	asrs	r1, r0, #1
20100b72:	4481      	add	r9, r0
20100b74:	4640      	mov	r0, r8
20100b76:	1a41      	subs	r1, r0, r1
20100b78:	4688      	mov	r8, r1
20100b7a:	6879      	ldr	r1, [r7, #4]
20100b7c:	468c      	mov	ip, r1
20100b7e:	4463      	add	r3, ip
20100b80:	4641      	mov	r1, r8
20100b82:	2900      	cmp	r1, #0
20100b84:	d100      	bne.n	20100b88 <svpwm+0x8c>
20100b86:	e150      	b.n	20100e2a <svpwm+0x32e>
20100b88:	dc00      	bgt.n	20100b8c <svpwm+0x90>
20100b8a:	e0a7      	b.n	20100cdc <svpwm+0x1e0>
20100b8c:	4641      	mov	r1, r8
20100b8e:	1089      	asrs	r1, r1, #2
20100b90:	4449      	add	r1, r9
20100b92:	0008      	movs	r0, r1
20100b94:	4649      	mov	r1, r9
20100b96:	4642      	mov	r2, r8
20100b98:	1089      	asrs	r1, r1, #2
20100b9a:	1a51      	subs	r1, r2, r1
20100b9c:	68ba      	ldr	r2, [r7, #8]
20100b9e:	4688      	mov	r8, r1
20100ba0:	4694      	mov	ip, r2
20100ba2:	4463      	add	r3, ip
20100ba4:	4641      	mov	r1, r8
20100ba6:	2900      	cmp	r1, #0
20100ba8:	d100      	bne.n	20100bac <svpwm+0xb0>
20100baa:	e141      	b.n	20100e30 <svpwm+0x334>
20100bac:	4642      	mov	r2, r8
20100bae:	dc00      	bgt.n	20100bb2 <svpwm+0xb6>
20100bb0:	e09c      	b.n	20100cec <svpwm+0x1f0>
20100bb2:	10c9      	asrs	r1, r1, #3
20100bb4:	1809      	adds	r1, r1, r0
20100bb6:	10c0      	asrs	r0, r0, #3
20100bb8:	1a12      	subs	r2, r2, r0
20100bba:	4690      	mov	r8, r2
20100bbc:	68fa      	ldr	r2, [r7, #12]
20100bbe:	4694      	mov	ip, r2
20100bc0:	4463      	add	r3, ip
20100bc2:	4640      	mov	r0, r8
20100bc4:	2800      	cmp	r0, #0
20100bc6:	d100      	bne.n	20100bca <svpwm+0xce>
20100bc8:	e134      	b.n	20100e34 <svpwm+0x338>
20100bca:	4642      	mov	r2, r8
20100bcc:	dc00      	bgt.n	20100bd0 <svpwm+0xd4>
20100bce:	e094      	b.n	20100cfa <svpwm+0x1fe>
20100bd0:	1100      	asrs	r0, r0, #4
20100bd2:	1840      	adds	r0, r0, r1
20100bd4:	1109      	asrs	r1, r1, #4
20100bd6:	1a52      	subs	r2, r2, r1
20100bd8:	4690      	mov	r8, r2
20100bda:	693a      	ldr	r2, [r7, #16]
20100bdc:	4694      	mov	ip, r2
20100bde:	4463      	add	r3, ip
20100be0:	4641      	mov	r1, r8
20100be2:	2900      	cmp	r1, #0
20100be4:	d100      	bne.n	20100be8 <svpwm+0xec>
20100be6:	e128      	b.n	20100e3a <svpwm+0x33e>
20100be8:	4642      	mov	r2, r8
20100bea:	dc00      	bgt.n	20100bee <svpwm+0xf2>
20100bec:	e08c      	b.n	20100d08 <svpwm+0x20c>
20100bee:	1149      	asrs	r1, r1, #5
20100bf0:	4689      	mov	r9, r1
20100bf2:	1141      	asrs	r1, r0, #5
20100bf4:	1a51      	subs	r1, r2, r1
20100bf6:	697a      	ldr	r2, [r7, #20]
20100bf8:	4481      	add	r9, r0
20100bfa:	4694      	mov	ip, r2
20100bfc:	4463      	add	r3, ip
20100bfe:	2900      	cmp	r1, #0
20100c00:	d100      	bne.n	20100c04 <svpwm+0x108>
20100c02:	e11c      	b.n	20100e3e <svpwm+0x342>
20100c04:	1188      	asrs	r0, r1, #6
20100c06:	2900      	cmp	r1, #0
20100c08:	dc00      	bgt.n	20100c0c <svpwm+0x110>
20100c0a:	e086      	b.n	20100d1a <svpwm+0x21e>
20100c0c:	464a      	mov	r2, r9
20100c0e:	4448      	add	r0, r9
20100c10:	4680      	mov	r8, r0
20100c12:	1190      	asrs	r0, r2, #6
20100c14:	69ba      	ldr	r2, [r7, #24]
20100c16:	1a09      	subs	r1, r1, r0
20100c18:	4694      	mov	ip, r2
20100c1a:	4463      	add	r3, ip
20100c1c:	2900      	cmp	r1, #0
20100c1e:	d100      	bne.n	20100c22 <svpwm+0x126>
20100c20:	e110      	b.n	20100e44 <svpwm+0x348>
20100c22:	dc00      	bgt.n	20100c26 <svpwm+0x12a>
20100c24:	e0e2      	b.n	20100dec <svpwm+0x2f0>
20100c26:	11c9      	asrs	r1, r1, #7
20100c28:	4441      	add	r1, r8
20100c2a:	0008      	movs	r0, r1
20100c2c:	69f9      	ldr	r1, [r7, #28]
20100c2e:	185b      	adds	r3, r3, r1
20100c30:	2107      	movs	r1, #7
20100c32:	2c00      	cmp	r4, #0
20100c34:	db40      	blt.n	20100cb8 <svpwm+0x1bc>
20100c36:	2b00      	cmp	r3, #0
20100c38:	da03      	bge.n	20100c42 <svpwm+0x146>
20100c3a:	2280      	movs	r2, #128	; 0x80
20100c3c:	00d2      	lsls	r2, r2, #3
20100c3e:	4694      	mov	ip, r2
20100c40:	4463      	add	r3, ip
20100c42:	22fa      	movs	r2, #250	; 0xfa
20100c44:	0089      	lsls	r1, r1, #2
20100c46:	5871      	ldr	r1, [r6, r1]
20100c48:	445b      	add	r3, fp
20100c4a:	4341      	muls	r1, r0
20100c4c:	059b      	lsls	r3, r3, #22
20100c4e:	1509      	asrs	r1, r1, #20
20100c50:	0d9b      	lsrs	r3, r3, #22
20100c52:	0052      	lsls	r2, r2, #1
20100c54:	2400      	movs	r4, #0
20100c56:	4291      	cmp	r1, r2
20100c58:	dd01      	ble.n	20100c5e <svpwm+0x162>
20100c5a:	0011      	movs	r1, r2
20100c5c:	3401      	adds	r4, #1
20100c5e:	0058      	lsls	r0, r3, #1
20100c60:	18c0      	adds	r0, r0, r3
20100c62:	1240      	asrs	r0, r0, #9
20100c64:	3801      	subs	r0, #1
20100c66:	4a7b      	ldr	r2, [pc, #492]	; (20100e54 <svpwm+0x358>)
20100c68:	2804      	cmp	r0, #4
20100c6a:	d920      	bls.n	20100cae <svpwm+0x1b2>
20100c6c:	26c0      	movs	r6, #192	; 0xc0
20100c6e:	4650      	mov	r0, sl
20100c70:	00b6      	lsls	r6, r6, #2
20100c72:	46b4      	mov	ip, r6
20100c74:	5880      	ldr	r0, [r0, r2]
20100c76:	4a78      	ldr	r2, [pc, #480]	; (20100e58 <svpwm+0x35c>)
20100c78:	1ad2      	subs	r2, r2, r3
20100c7a:	4463      	add	r3, ip
20100c7c:	0592      	lsls	r2, r2, #22
20100c7e:	059b      	lsls	r3, r3, #22
20100c80:	0d12      	lsrs	r2, r2, #20
20100c82:	0d1b      	lsrs	r3, r3, #20
20100c84:	581b      	ldr	r3, [r3, r0]
20100c86:	5812      	ldr	r2, [r2, r0]
20100c88:	434a      	muls	r2, r1
20100c8a:	4359      	muls	r1, r3
20100c8c:	1292      	asrs	r2, r2, #10
20100c8e:	1289      	asrs	r1, r1, #10
20100c90:	1853      	adds	r3, r2, r1
20100c92:	602b      	str	r3, [r5, #0]
20100c94:	1a8b      	subs	r3, r1, r2
20100c96:	4252      	negs	r2, r2
20100c98:	1a52      	subs	r2, r2, r1
20100c9a:	606b      	str	r3, [r5, #4]
20100c9c:	60aa      	str	r2, [r5, #8]
20100c9e:	0020      	movs	r0, r4
20100ca0:	b011      	add	sp, #68	; 0x44
20100ca2:	bc3c      	pop	{r2, r3, r4, r5}
20100ca4:	4690      	mov	r8, r2
20100ca6:	4699      	mov	r9, r3
20100ca8:	46a2      	mov	sl, r4
20100caa:	46ab      	mov	fp, r5
20100cac:	bdf0      	pop	{r4, r5, r6, r7, pc}
20100cae:	f000 f915 	bl	20100edc <__gnu_thumb1_case_uqi>
20100cb2:	856c      	.short	0x856c
20100cb4:	553d      	.short	0x553d
20100cb6:	a3          	.byte	0xa3
20100cb7:	00          	.byte	0x00
20100cb8:	2480      	movs	r4, #128	; 0x80
20100cba:	00a4      	lsls	r4, r4, #2
20100cbc:	1ae3      	subs	r3, r4, r3
20100cbe:	e7ba      	b.n	20100c36 <svpwm+0x13a>
20100cc0:	4642      	mov	r2, r8
20100cc2:	4498      	add	r8, r3
20100cc4:	1ad0      	subs	r0, r2, r3
20100cc6:	9b00      	ldr	r3, [sp, #0]
20100cc8:	425b      	negs	r3, r3
20100cca:	e748      	b.n	20100b5e <svpwm+0x62>
20100ccc:	1049      	asrs	r1, r1, #1
20100cce:	1a42      	subs	r2, r0, r1
20100cd0:	4691      	mov	r9, r2
20100cd2:	687a      	ldr	r2, [r7, #4]
20100cd4:	1041      	asrs	r1, r0, #1
20100cd6:	4488      	add	r8, r1
20100cd8:	1a9b      	subs	r3, r3, r2
20100cda:	e751      	b.n	20100b80 <svpwm+0x84>
20100cdc:	464a      	mov	r2, r9
20100cde:	1089      	asrs	r1, r1, #2
20100ce0:	1a50      	subs	r0, r2, r1
20100ce2:	1091      	asrs	r1, r2, #2
20100ce4:	68ba      	ldr	r2, [r7, #8]
20100ce6:	4488      	add	r8, r1
20100ce8:	1a9b      	subs	r3, r3, r2
20100cea:	e75b      	b.n	20100ba4 <svpwm+0xa8>
20100cec:	10c9      	asrs	r1, r1, #3
20100cee:	68fa      	ldr	r2, [r7, #12]
20100cf0:	1a41      	subs	r1, r0, r1
20100cf2:	10c0      	asrs	r0, r0, #3
20100cf4:	4480      	add	r8, r0
20100cf6:	1a9b      	subs	r3, r3, r2
20100cf8:	e763      	b.n	20100bc2 <svpwm+0xc6>
20100cfa:	1100      	asrs	r0, r0, #4
20100cfc:	693a      	ldr	r2, [r7, #16]
20100cfe:	1a08      	subs	r0, r1, r0
20100d00:	1109      	asrs	r1, r1, #4
20100d02:	4488      	add	r8, r1
20100d04:	1a9b      	subs	r3, r3, r2
20100d06:	e76b      	b.n	20100be0 <svpwm+0xe4>
20100d08:	1149      	asrs	r1, r1, #5
20100d0a:	1a42      	subs	r2, r0, r1
20100d0c:	1140      	asrs	r0, r0, #5
20100d0e:	0001      	movs	r1, r0
20100d10:	4691      	mov	r9, r2
20100d12:	697a      	ldr	r2, [r7, #20]
20100d14:	4441      	add	r1, r8
20100d16:	1a9b      	subs	r3, r3, r2
20100d18:	e771      	b.n	20100bfe <svpwm+0x102>
20100d1a:	464a      	mov	r2, r9
20100d1c:	1a12      	subs	r2, r2, r0
20100d1e:	4690      	mov	r8, r2
20100d20:	464a      	mov	r2, r9
20100d22:	1190      	asrs	r0, r2, #6
20100d24:	69ba      	ldr	r2, [r7, #24]
20100d26:	1841      	adds	r1, r0, r1
20100d28:	1a9b      	subs	r3, r3, r2
20100d2a:	e777      	b.n	20100c1c <svpwm+0x120>
20100d2c:	4650      	mov	r0, sl
20100d2e:	5880      	ldr	r0, [r0, r2]
20100d30:	4a4a      	ldr	r2, [pc, #296]	; (20100e5c <svpwm+0x360>)
20100d32:	1ad2      	subs	r2, r2, r3
20100d34:	3301      	adds	r3, #1
20100d36:	0592      	lsls	r2, r2, #22
20100d38:	33ff      	adds	r3, #255	; 0xff
20100d3a:	0d12      	lsrs	r2, r2, #20
20100d3c:	059b      	lsls	r3, r3, #22
20100d3e:	5812      	ldr	r2, [r2, r0]
20100d40:	0d1b      	lsrs	r3, r3, #20
20100d42:	581b      	ldr	r3, [r3, r0]
20100d44:	434a      	muls	r2, r1
20100d46:	434b      	muls	r3, r1
20100d48:	1292      	asrs	r2, r2, #10
20100d4a:	1299      	asrs	r1, r3, #10
20100d4c:	4253      	negs	r3, r2
20100d4e:	1a5b      	subs	r3, r3, r1
20100d50:	602b      	str	r3, [r5, #0]
20100d52:	1a53      	subs	r3, r2, r1
20100d54:	1851      	adds	r1, r2, r1
20100d56:	606b      	str	r3, [r5, #4]
20100d58:	60a9      	str	r1, [r5, #8]
20100d5a:	e7a0      	b.n	20100c9e <svpwm+0x1a2>
20100d5c:	4650      	mov	r0, sl
20100d5e:	5880      	ldr	r0, [r0, r2]
20100d60:	4a3f      	ldr	r2, [pc, #252]	; (20100e60 <svpwm+0x364>)
20100d62:	1ad2      	subs	r2, r2, r3
20100d64:	3356      	adds	r3, #86	; 0x56
20100d66:	0592      	lsls	r2, r2, #22
20100d68:	059b      	lsls	r3, r3, #22
20100d6a:	0d12      	lsrs	r2, r2, #20
20100d6c:	0d1b      	lsrs	r3, r3, #20
20100d6e:	5816      	ldr	r6, [r2, r0]
20100d70:	581b      	ldr	r3, [r3, r0]
20100d72:	434e      	muls	r6, r1
20100d74:	434b      	muls	r3, r1
20100d76:	12b6      	asrs	r6, r6, #10
20100d78:	1299      	asrs	r1, r3, #10
20100d7a:	1b8b      	subs	r3, r1, r6
20100d7c:	602b      	str	r3, [r5, #0]
20100d7e:	4273      	negs	r3, r6
20100d80:	1a5b      	subs	r3, r3, r1
20100d82:	1871      	adds	r1, r6, r1
20100d84:	606b      	str	r3, [r5, #4]
20100d86:	60a9      	str	r1, [r5, #8]
20100d88:	e789      	b.n	20100c9e <svpwm+0x1a2>
20100d8a:	4650      	mov	r0, sl
20100d8c:	5886      	ldr	r6, [r0, r2]
20100d8e:	4a35      	ldr	r2, [pc, #212]	; (20100e64 <svpwm+0x368>)
20100d90:	1ad2      	subs	r2, r2, r3
20100d92:	0592      	lsls	r2, r2, #22
20100d94:	0d12      	lsrs	r2, r2, #20
20100d96:	5990      	ldr	r0, [r2, r6]
20100d98:	4a33      	ldr	r2, [pc, #204]	; (20100e68 <svpwm+0x36c>)
20100d9a:	4348      	muls	r0, r1
20100d9c:	4694      	mov	ip, r2
20100d9e:	4463      	add	r3, ip
20100da0:	059b      	lsls	r3, r3, #22
20100da2:	0d1b      	lsrs	r3, r3, #20
20100da4:	599b      	ldr	r3, [r3, r6]
20100da6:	1280      	asrs	r0, r0, #10
20100da8:	4359      	muls	r1, r3
20100daa:	1289      	asrs	r1, r1, #10
20100dac:	1a43      	subs	r3, r0, r1
20100dae:	602b      	str	r3, [r5, #0]
20100db0:	1843      	adds	r3, r0, r1
20100db2:	4240      	negs	r0, r0
20100db4:	1a40      	subs	r0, r0, r1
20100db6:	606b      	str	r3, [r5, #4]
20100db8:	60a8      	str	r0, [r5, #8]
20100dba:	e770      	b.n	20100c9e <svpwm+0x1a2>
20100dbc:	4650      	mov	r0, sl
20100dbe:	5880      	ldr	r0, [r0, r2]
20100dc0:	4a2a      	ldr	r2, [pc, #168]	; (20100e6c <svpwm+0x370>)
20100dc2:	1ad2      	subs	r2, r2, r3
20100dc4:	33ac      	adds	r3, #172	; 0xac
20100dc6:	0592      	lsls	r2, r2, #22
20100dc8:	33ff      	adds	r3, #255	; 0xff
20100dca:	0d12      	lsrs	r2, r2, #20
20100dcc:	059b      	lsls	r3, r3, #22
20100dce:	5816      	ldr	r6, [r2, r0]
20100dd0:	0d1b      	lsrs	r3, r3, #20
20100dd2:	581b      	ldr	r3, [r3, r0]
20100dd4:	434e      	muls	r6, r1
20100dd6:	4359      	muls	r1, r3
20100dd8:	12b6      	asrs	r6, r6, #10
20100dda:	1289      	asrs	r1, r1, #10
20100ddc:	4273      	negs	r3, r6
20100dde:	1a5b      	subs	r3, r3, r1
20100de0:	602b      	str	r3, [r5, #0]
20100de2:	1873      	adds	r3, r6, r1
20100de4:	1b89      	subs	r1, r1, r6
20100de6:	606b      	str	r3, [r5, #4]
20100de8:	60a9      	str	r1, [r5, #8]
20100dea:	e758      	b.n	20100c9e <svpwm+0x1a2>
20100dec:	4642      	mov	r2, r8
20100dee:	11c9      	asrs	r1, r1, #7
20100df0:	1a50      	subs	r0, r2, r1
20100df2:	69f9      	ldr	r1, [r7, #28]
20100df4:	1a5b      	subs	r3, r3, r1
20100df6:	e71b      	b.n	20100c30 <svpwm+0x134>
20100df8:	4650      	mov	r0, sl
20100dfa:	5882      	ldr	r2, [r0, r2]
20100dfc:	481c      	ldr	r0, [pc, #112]	; (20100e70 <svpwm+0x374>)
20100dfe:	1ac0      	subs	r0, r0, r3
20100e00:	3b55      	subs	r3, #85	; 0x55
20100e02:	0580      	lsls	r0, r0, #22
20100e04:	059b      	lsls	r3, r3, #22
20100e06:	0d00      	lsrs	r0, r0, #20
20100e08:	0d1b      	lsrs	r3, r3, #20
20100e0a:	589b      	ldr	r3, [r3, r2]
20100e0c:	5880      	ldr	r0, [r0, r2]
20100e0e:	4348      	muls	r0, r1
20100e10:	4359      	muls	r1, r3
20100e12:	1280      	asrs	r0, r0, #10
20100e14:	1289      	asrs	r1, r1, #10
20100e16:	1843      	adds	r3, r0, r1
20100e18:	602b      	str	r3, [r5, #0]
20100e1a:	4243      	negs	r3, r0
20100e1c:	1a5b      	subs	r3, r3, r1
20100e1e:	1a41      	subs	r1, r0, r1
20100e20:	606b      	str	r3, [r5, #4]
20100e22:	60a9      	str	r1, [r5, #8]
20100e24:	e73b      	b.n	20100c9e <svpwm+0x1a2>
20100e26:	2100      	movs	r1, #0
20100e28:	e703      	b.n	20100c32 <svpwm+0x136>
20100e2a:	4648      	mov	r0, r9
20100e2c:	2101      	movs	r1, #1
20100e2e:	e700      	b.n	20100c32 <svpwm+0x136>
20100e30:	2102      	movs	r1, #2
20100e32:	e6fe      	b.n	20100c32 <svpwm+0x136>
20100e34:	0008      	movs	r0, r1
20100e36:	2103      	movs	r1, #3
20100e38:	e6fb      	b.n	20100c32 <svpwm+0x136>
20100e3a:	2104      	movs	r1, #4
20100e3c:	e6f9      	b.n	20100c32 <svpwm+0x136>
20100e3e:	4648      	mov	r0, r9
20100e40:	2105      	movs	r1, #5
20100e42:	e6f6      	b.n	20100c32 <svpwm+0x136>
20100e44:	4640      	mov	r0, r8
20100e46:	2106      	movs	r1, #6
20100e48:	e6f3      	b.n	20100c32 <svpwm+0x136>
20100e4a:	46c0      	nop			; (mov r8, r8)
20100e4c:	000013de 	.word	0x000013de
20100e50:	ffeff4e8 	.word	0xffeff4e8
20100e54:	00000000 	.word	0x00000000
20100e58:	000007aa 	.word	0x000007aa
20100e5c:	000009aa 	.word	0x000009aa
20100e60:	00000a54 	.word	0x00000a54
20100e64:	00000854 	.word	0x00000854
20100e68:	00000256 	.word	0x00000256
20100e6c:	000008ff 	.word	0x000008ff
20100e70:	00000aff 	.word	0x00000aff

20100e74 <pi_reg_cur>:
20100e74:	b510      	push	{r4, lr}
20100e76:	b086      	sub	sp, #24
20100e78:	2802      	cmp	r0, #2
20100e7a:	d01a      	beq.n	20100eb2 <pi_reg_cur+0x3e>
20100e7c:	2804      	cmp	r0, #4
20100e7e:	d010      	beq.n	20100ea2 <pi_reg_cur+0x2e>
20100e80:	2801      	cmp	r0, #1
20100e82:	d001      	beq.n	20100e88 <pi_reg_cur+0x14>
20100e84:	b006      	add	sp, #24
20100e86:	bd10      	pop	{r4, pc}
20100e88:	4c11      	ldr	r4, [pc, #68]	; (20100ed0 <pi_reg_cur+0x5c>)
20100e8a:	a901      	add	r1, sp, #4
20100e8c:	447c      	add	r4, pc
20100e8e:	68e3      	ldr	r3, [r4, #12]
20100e90:	6a22      	ldr	r2, [r4, #32]
20100e92:	9301      	str	r3, [sp, #4]
20100e94:	69e3      	ldr	r3, [r4, #28]
20100e96:	a803      	add	r0, sp, #12
20100e98:	604b      	str	r3, [r1, #4]
20100e9a:	f7ff fe2f 	bl	20100afc <svpwm>
20100e9e:	6260      	str	r0, [r4, #36]	; 0x24
20100ea0:	e7f0      	b.n	20100e84 <pi_reg_cur+0x10>
20100ea2:	2200      	movs	r2, #0
20100ea4:	4b0b      	ldr	r3, [pc, #44]	; (20100ed4 <pi_reg_cur+0x60>)
20100ea6:	447b      	add	r3, pc
20100ea8:	609a      	str	r2, [r3, #8]
20100eaa:	60da      	str	r2, [r3, #12]
20100eac:	619a      	str	r2, [r3, #24]
20100eae:	61da      	str	r2, [r3, #28]
20100eb0:	e7e8      	b.n	20100e84 <pi_reg_cur+0x10>
20100eb2:	2201      	movs	r2, #1
20100eb4:	4b08      	ldr	r3, [pc, #32]	; (20100ed8 <pi_reg_cur+0x64>)
20100eb6:	210a      	movs	r1, #10
20100eb8:	447b      	add	r3, pc
20100eba:	605a      	str	r2, [r3, #4]
20100ebc:	615a      	str	r2, [r3, #20]
20100ebe:	2200      	movs	r2, #0
20100ec0:	621a      	str	r2, [r3, #32]
20100ec2:	689a      	ldr	r2, [r3, #8]
20100ec4:	6019      	str	r1, [r3, #0]
20100ec6:	60da      	str	r2, [r3, #12]
20100ec8:	699a      	ldr	r2, [r3, #24]
20100eca:	6119      	str	r1, [r3, #16]
20100ecc:	61da      	str	r2, [r3, #28]
20100ece:	e7d9      	b.n	20100e84 <pi_reg_cur+0x10>
20100ed0:	ffeff188 	.word	0xffeff188
20100ed4:	ffeff16e 	.word	0xffeff16e
20100ed8:	ffeff15c 	.word	0xffeff15c

20100edc <__gnu_thumb1_case_uqi>:
20100edc:	b402      	push	{r1}
20100ede:	4671      	mov	r1, lr
20100ee0:	0849      	lsrs	r1, r1, #1
20100ee2:	0049      	lsls	r1, r1, #1
20100ee4:	5c09      	ldrb	r1, [r1, r0]
20100ee6:	0049      	lsls	r1, r1, #1
20100ee8:	448e      	add	lr, r1
20100eea:	bc02      	pop	{r1}
20100eec:	4770      	bx	lr
20100eee:	46c0      	nop			; (mov r8, r8)
