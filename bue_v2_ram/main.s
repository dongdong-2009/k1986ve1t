
bue.elf:     file format elf32-littlearm


Disassembly of section .text:

20100000 <main>:
20100000:	b5b0      	push	{r4, r5, r7, lr}
20100002:	b09e      	sub	sp, #120	; 0x78
20100004:	af00      	add	r7, sp, #0
20100006:	4c6a      	ldr	r4, [pc, #424]	; (201001b0 <main+0x1b0>)
20100008:	447c      	add	r4, pc
2010000a:	2300      	movs	r3, #0
2010000c:	677b      	str	r3, [r7, #116]	; 0x74
2010000e:	2300      	movs	r3, #0
20100010:	667b      	str	r3, [r7, #100]	; 0x64
20100012:	2300      	movs	r3, #0
20100014:	663b      	str	r3, [r7, #96]	; 0x60
20100016:	2300      	movs	r3, #0
20100018:	673b      	str	r3, [r7, #112]	; 0x70
2010001a:	2300      	movs	r3, #0
2010001c:	66fb      	str	r3, [r7, #108]	; 0x6c
2010001e:	2300      	movs	r3, #0
20100020:	65fb      	str	r3, [r7, #92]	; 0x5c
20100022:	2300      	movs	r3, #0
20100024:	66bb      	str	r3, [r7, #104]	; 0x68
20100026:	23fa      	movs	r3, #250	; 0xfa
20100028:	009b      	lsls	r3, r3, #2
2010002a:	65bb      	str	r3, [r7, #88]	; 0x58
2010002c:	2300      	movs	r3, #0
2010002e:	603b      	str	r3, [r7, #0]
20100030:	f000 fb8a 	bl	20100748 <SystemInit>
20100034:	2396      	movs	r3, #150	; 0x96
20100036:	009a      	lsls	r2, r3, #2
20100038:	2334      	movs	r3, #52	; 0x34
2010003a:	18fb      	adds	r3, r7, r3
2010003c:	21c8      	movs	r1, #200	; 0xc8
2010003e:	0018      	movs	r0, r3
20100040:	f000 fbca 	bl	201007d8 <reg_init>
20100044:	2396      	movs	r3, #150	; 0x96
20100046:	009a      	lsls	r2, r3, #2
20100048:	2324      	movs	r3, #36	; 0x24
2010004a:	18fb      	adds	r3, r7, r3
2010004c:	21c8      	movs	r1, #200	; 0xc8
2010004e:	0018      	movs	r0, r3
20100050:	f000 fbc2 	bl	201007d8 <reg_init>
20100054:	23fa      	movs	r3, #250	; 0xfa
20100056:	011a      	lsls	r2, r3, #4
20100058:	2314      	movs	r3, #20
2010005a:	18fb      	adds	r3, r7, r3
2010005c:	2100      	movs	r1, #0
2010005e:	0018      	movs	r0, r3
20100060:	f000 fbba 	bl	201007d8 <reg_init>
20100064:	4a53      	ldr	r2, [pc, #332]	; (201001b4 <main+0x1b4>)
20100066:	1d3b      	adds	r3, r7, #4
20100068:	2100      	movs	r1, #0
2010006a:	0018      	movs	r0, r3
2010006c:	f000 fbb4 	bl	201007d8 <reg_init>
20100070:	4b51      	ldr	r3, [pc, #324]	; (201001b8 <main+0x1b8>)
20100072:	447b      	add	r3, pc
20100074:	2200      	movs	r2, #0
20100076:	601a      	str	r2, [r3, #0]
20100078:	4b50      	ldr	r3, [pc, #320]	; (201001bc <main+0x1bc>)
2010007a:	447b      	add	r3, pc
2010007c:	2200      	movs	r2, #0
2010007e:	601a      	str	r2, [r3, #0]
20100080:	2300      	movs	r3, #0
20100082:	673b      	str	r3, [r7, #112]	; 0x70
20100084:	2300      	movs	r3, #0
20100086:	66fb      	str	r3, [r7, #108]	; 0x6c
20100088:	4b4d      	ldr	r3, [pc, #308]	; (201001c0 <main+0x1c0>)
2010008a:	447b      	add	r3, pc
2010008c:	2200      	movs	r2, #0
2010008e:	601a      	str	r2, [r3, #0]
20100090:	4b4c      	ldr	r3, [pc, #304]	; (201001c4 <main+0x1c4>)
20100092:	447b      	add	r3, pc
20100094:	2200      	movs	r2, #0
20100096:	601a      	str	r2, [r3, #0]
20100098:	2300      	movs	r3, #0
2010009a:	677b      	str	r3, [r7, #116]	; 0x74
2010009c:	e043      	b.n	20100126 <main+0x126>
2010009e:	f000 fb67 	bl	20100770 <timer_wait>
201000a2:	f001 f84d 	bl	20101140 <adc_dma_start>
201000a6:	4b48      	ldr	r3, [pc, #288]	; (201001c8 <main+0x1c8>)
201000a8:	4a48      	ldr	r2, [pc, #288]	; (201001cc <main+0x1cc>)
201000aa:	609a      	str	r2, [r3, #8]
201000ac:	f001 f85c 	bl	20101168 <adc_dma_wait>
201000b0:	4b47      	ldr	r3, [pc, #284]	; (201001d0 <main+0x1d0>)
201000b2:	58e3      	ldr	r3, [r4, r3]
201000b4:	685b      	ldr	r3, [r3, #4]
201000b6:	051b      	lsls	r3, r3, #20
201000b8:	0d1a      	lsrs	r2, r3, #20
201000ba:	6f3b      	ldr	r3, [r7, #112]	; 0x70
201000bc:	18d3      	adds	r3, r2, r3
201000be:	673b      	str	r3, [r7, #112]	; 0x70
201000c0:	4b43      	ldr	r3, [pc, #268]	; (201001d0 <main+0x1d0>)
201000c2:	58e3      	ldr	r3, [r4, r3]
201000c4:	689b      	ldr	r3, [r3, #8]
201000c6:	051b      	lsls	r3, r3, #20
201000c8:	0d1a      	lsrs	r2, r3, #20
201000ca:	6efb      	ldr	r3, [r7, #108]	; 0x6c
201000cc:	18d3      	adds	r3, r2, r3
201000ce:	66fb      	str	r3, [r7, #108]	; 0x6c
201000d0:	4b3f      	ldr	r3, [pc, #252]	; (201001d0 <main+0x1d0>)
201000d2:	58e3      	ldr	r3, [r4, r3]
201000d4:	68db      	ldr	r3, [r3, #12]
201000d6:	051b      	lsls	r3, r3, #20
201000d8:	0d1a      	lsrs	r2, r3, #20
201000da:	4b3e      	ldr	r3, [pc, #248]	; (201001d4 <main+0x1d4>)
201000dc:	447b      	add	r3, pc
201000de:	681b      	ldr	r3, [r3, #0]
201000e0:	18d3      	adds	r3, r2, r3
201000e2:	001a      	movs	r2, r3
201000e4:	4b3c      	ldr	r3, [pc, #240]	; (201001d8 <main+0x1d8>)
201000e6:	447b      	add	r3, pc
201000e8:	601a      	str	r2, [r3, #0]
201000ea:	4b37      	ldr	r3, [pc, #220]	; (201001c8 <main+0x1c8>)
201000ec:	689b      	ldr	r3, [r3, #8]
201000ee:	051b      	lsls	r3, r3, #20
201000f0:	0d1b      	lsrs	r3, r3, #20
201000f2:	0018      	movs	r0, r3
201000f4:	f000 fb10 	bl	20100718 <g2b>
201000f8:	0002      	movs	r2, r0
201000fa:	4b38      	ldr	r3, [pc, #224]	; (201001dc <main+0x1dc>)
201000fc:	447b      	add	r3, pc
201000fe:	681b      	ldr	r3, [r3, #0]
20100100:	18d3      	adds	r3, r2, r3
20100102:	001a      	movs	r2, r3
20100104:	4b36      	ldr	r3, [pc, #216]	; (201001e0 <main+0x1e0>)
20100106:	447b      	add	r3, pc
20100108:	601a      	str	r2, [r3, #0]
2010010a:	4b31      	ldr	r3, [pc, #196]	; (201001d0 <main+0x1d0>)
2010010c:	58e3      	ldr	r3, [r4, r3]
2010010e:	681b      	ldr	r3, [r3, #0]
20100110:	051b      	lsls	r3, r3, #20
20100112:	0d1a      	lsrs	r2, r3, #20
20100114:	0013      	movs	r3, r2
20100116:	009b      	lsls	r3, r3, #2
20100118:	189b      	adds	r3, r3, r2
2010011a:	0018      	movs	r0, r3
2010011c:	f001 f8ec 	bl	201012f8 <mfilter>
20100120:	6f7b      	ldr	r3, [r7, #116]	; 0x74
20100122:	3301      	adds	r3, #1
20100124:	677b      	str	r3, [r7, #116]	; 0x74
20100126:	6f7b      	ldr	r3, [r7, #116]	; 0x74
20100128:	4a2e      	ldr	r2, [pc, #184]	; (201001e4 <main+0x1e4>)
2010012a:	4293      	cmp	r3, r2
2010012c:	ddb7      	ble.n	2010009e <main+0x9e>
2010012e:	6f3b      	ldr	r3, [r7, #112]	; 0x70
20100130:	129b      	asrs	r3, r3, #10
20100132:	673b      	str	r3, [r7, #112]	; 0x70
20100134:	6efb      	ldr	r3, [r7, #108]	; 0x6c
20100136:	129b      	asrs	r3, r3, #10
20100138:	66fb      	str	r3, [r7, #108]	; 0x6c
2010013a:	4b2b      	ldr	r3, [pc, #172]	; (201001e8 <main+0x1e8>)
2010013c:	447b      	add	r3, pc
2010013e:	681b      	ldr	r3, [r3, #0]
20100140:	129a      	asrs	r2, r3, #10
20100142:	4b2a      	ldr	r3, [pc, #168]	; (201001ec <main+0x1ec>)
20100144:	447b      	add	r3, pc
20100146:	601a      	str	r2, [r3, #0]
20100148:	4b29      	ldr	r3, [pc, #164]	; (201001f0 <main+0x1f0>)
2010014a:	447b      	add	r3, pc
2010014c:	681a      	ldr	r2, [r3, #0]
2010014e:	4b29      	ldr	r3, [pc, #164]	; (201001f4 <main+0x1f4>)
20100150:	447b      	add	r3, pc
20100152:	601a      	str	r2, [r3, #0]
20100154:	4b28      	ldr	r3, [pc, #160]	; (201001f8 <main+0x1f8>)
20100156:	447b      	add	r3, pc
20100158:	681b      	ldr	r3, [r3, #0]
2010015a:	129a      	asrs	r2, r3, #10
2010015c:	4b27      	ldr	r3, [pc, #156]	; (201001fc <main+0x1fc>)
2010015e:	447b      	add	r3, pc
20100160:	601a      	str	r2, [r3, #0]
20100162:	f000 fb05 	bl	20100770 <timer_wait>
20100166:	f000 ffeb 	bl	20101140 <adc_dma_start>
2010016a:	f000 fffd 	bl	20101168 <adc_dma_wait>
2010016e:	4b18      	ldr	r3, [pc, #96]	; (201001d0 <main+0x1d0>)
20100170:	58e3      	ldr	r3, [r4, r3]
20100172:	681b      	ldr	r3, [r3, #0]
20100174:	051b      	lsls	r3, r3, #20
20100176:	0d1b      	lsrs	r3, r3, #20
20100178:	2280      	movs	r2, #128	; 0x80
2010017a:	0112      	lsls	r2, r2, #4
2010017c:	1ad3      	subs	r3, r2, r3
2010017e:	001a      	movs	r2, r3
20100180:	4b1f      	ldr	r3, [pc, #124]	; (20100200 <main+0x200>)
20100182:	447b      	add	r3, pc
20100184:	601a      	str	r2, [r3, #0]
20100186:	6ebb      	ldr	r3, [r7, #104]	; 0x68
20100188:	3301      	adds	r3, #1
2010018a:	66bb      	str	r3, [r7, #104]	; 0x68
2010018c:	6ebb      	ldr	r3, [r7, #104]	; 0x68
2010018e:	2207      	movs	r2, #7
20100190:	4013      	ands	r3, r2
20100192:	d1e6      	bne.n	20100162 <main+0x162>
20100194:	4d1b      	ldr	r5, [pc, #108]	; (20100204 <main+0x204>)
20100196:	4b1c      	ldr	r3, [pc, #112]	; (20100208 <main+0x208>)
20100198:	447b      	add	r3, pc
2010019a:	681b      	ldr	r3, [r3, #0]
2010019c:	0018      	movs	r0, r3
2010019e:	f000 ff2d 	bl	20100ffc <rfilter1>
201001a2:	0003      	movs	r3, r0
201001a4:	2280      	movs	r2, #128	; 0x80
201001a6:	0112      	lsls	r2, r2, #4
201001a8:	4694      	mov	ip, r2
201001aa:	4463      	add	r3, ip
201001ac:	606b      	str	r3, [r5, #4]
201001ae:	e7d8      	b.n	20100162 <main+0x162>
201001b0:	fff00080 	.word	0xfff00080
201001b4:	00001770 	.word	0x00001770
201001b8:	fff0002a 	.word	0xfff0002a
201001bc:	fff00036 	.word	0xfff00036
201001c0:	fff0001a 	.word	0xfff0001a
201001c4:	fff00016 	.word	0xfff00016
201001c8:	400a0000 	.word	0x400a0000
201001cc:	00000555 	.word	0x00000555
201001d0:	00000004 	.word	0x00000004
201001d4:	ffefffc8 	.word	0xffefffc8
201001d8:	ffefffbe 	.word	0xffefffbe
201001dc:	ffefffac 	.word	0xffefffac
201001e0:	ffefffa2 	.word	0xffefffa2
201001e4:	000003ff 	.word	0x000003ff
201001e8:	ffefff68 	.word	0xffefff68
201001ec:	ffefff60 	.word	0xffefff60
201001f0:	ffefff5a 	.word	0xffefff5a
201001f4:	ffefff50 	.word	0xffefff50
201001f8:	ffefff52 	.word	0xffefff52
201001fc:	ffefff4a 	.word	0xffefff4a
20100200:	ffefff1e 	.word	0xffefff1e
20100204:	40090000 	.word	0x40090000
20100208:	ffefff08 	.word	0xffefff08

2010020c <sleep>:
2010020c:	b580      	push	{r7, lr}
2010020e:	b084      	sub	sp, #16
20100210:	af00      	add	r7, sp, #0
20100212:	6078      	str	r0, [r7, #4]
20100214:	2300      	movs	r3, #0
20100216:	60fb      	str	r3, [r7, #12]
20100218:	e00b      	b.n	20100232 <sleep+0x26>
2010021a:	46c0      	nop			; (mov r8, r8)
2010021c:	4b09      	ldr	r3, [pc, #36]	; (20100244 <sleep+0x38>)
2010021e:	6d5b      	ldr	r3, [r3, #84]	; 0x54
20100220:	2202      	movs	r2, #2
20100222:	4013      	ands	r3, r2
20100224:	d0fa      	beq.n	2010021c <sleep+0x10>
20100226:	4b07      	ldr	r3, [pc, #28]	; (20100244 <sleep+0x38>)
20100228:	2200      	movs	r2, #0
2010022a:	655a      	str	r2, [r3, #84]	; 0x54
2010022c:	68fb      	ldr	r3, [r7, #12]
2010022e:	3301      	adds	r3, #1
20100230:	60fb      	str	r3, [r7, #12]
20100232:	68fa      	ldr	r2, [r7, #12]
20100234:	687b      	ldr	r3, [r7, #4]
20100236:	429a      	cmp	r2, r3
20100238:	d3ef      	bcc.n	2010021a <sleep+0xe>
2010023a:	46c0      	nop			; (mov r8, r8)
2010023c:	0018      	movs	r0, r3
2010023e:	46bd      	mov	sp, r7
20100240:	b004      	add	sp, #16
20100242:	bd80      	pop	{r7, pc}
20100244:	40098000 	.word	0x40098000

20100248 <PortConfig>:
20100248:	b580      	push	{r7, lr}
2010024a:	af00      	add	r7, sp, #0
2010024c:	4b50      	ldr	r3, [pc, #320]	; (20100390 <PortConfig+0x148>)
2010024e:	4a50      	ldr	r2, [pc, #320]	; (20100390 <PortConfig+0x148>)
20100250:	69d2      	ldr	r2, [r2, #28]
20100252:	2180      	movs	r1, #128	; 0x80
20100254:	0389      	lsls	r1, r1, #14
20100256:	430a      	orrs	r2, r1
20100258:	61da      	str	r2, [r3, #28]
2010025a:	4b4e      	ldr	r3, [pc, #312]	; (20100394 <PortConfig+0x14c>)
2010025c:	4a4d      	ldr	r2, [pc, #308]	; (20100394 <PortConfig+0x14c>)
2010025e:	6892      	ldr	r2, [r2, #8]
20100260:	494d      	ldr	r1, [pc, #308]	; (20100398 <PortConfig+0x150>)
20100262:	400a      	ands	r2, r1
20100264:	609a      	str	r2, [r3, #8]
20100266:	4b4b      	ldr	r3, [pc, #300]	; (20100394 <PortConfig+0x14c>)
20100268:	4a4a      	ldr	r2, [pc, #296]	; (20100394 <PortConfig+0x14c>)
2010026a:	6812      	ldr	r2, [r2, #0]
2010026c:	494b      	ldr	r1, [pc, #300]	; (2010039c <PortConfig+0x154>)
2010026e:	400a      	ands	r2, r1
20100270:	601a      	str	r2, [r3, #0]
20100272:	4b48      	ldr	r3, [pc, #288]	; (20100394 <PortConfig+0x14c>)
20100274:	4a47      	ldr	r2, [pc, #284]	; (20100394 <PortConfig+0x14c>)
20100276:	6852      	ldr	r2, [r2, #4]
20100278:	2180      	movs	r1, #128	; 0x80
2010027a:	0209      	lsls	r1, r1, #8
2010027c:	430a      	orrs	r2, r1
2010027e:	605a      	str	r2, [r3, #4]
20100280:	4b44      	ldr	r3, [pc, #272]	; (20100394 <PortConfig+0x14c>)
20100282:	4a44      	ldr	r2, [pc, #272]	; (20100394 <PortConfig+0x14c>)
20100284:	68d2      	ldr	r2, [r2, #12]
20100286:	2180      	movs	r1, #128	; 0x80
20100288:	0209      	lsls	r1, r1, #8
2010028a:	430a      	orrs	r2, r1
2010028c:	60da      	str	r2, [r3, #12]
2010028e:	4b41      	ldr	r3, [pc, #260]	; (20100394 <PortConfig+0x14c>)
20100290:	4a40      	ldr	r2, [pc, #256]	; (20100394 <PortConfig+0x14c>)
20100292:	6992      	ldr	r2, [r2, #24]
20100294:	21c0      	movs	r1, #192	; 0xc0
20100296:	0609      	lsls	r1, r1, #24
20100298:	430a      	orrs	r2, r1
2010029a:	619a      	str	r2, [r3, #24]
2010029c:	4b3d      	ldr	r3, [pc, #244]	; (20100394 <PortConfig+0x14c>)
2010029e:	4a3d      	ldr	r2, [pc, #244]	; (20100394 <PortConfig+0x14c>)
201002a0:	6892      	ldr	r2, [r2, #8]
201002a2:	493f      	ldr	r1, [pc, #252]	; (201003a0 <PortConfig+0x158>)
201002a4:	430a      	orrs	r2, r1
201002a6:	609a      	str	r2, [r3, #8]
201002a8:	4b3a      	ldr	r3, [pc, #232]	; (20100394 <PortConfig+0x14c>)
201002aa:	4a3a      	ldr	r2, [pc, #232]	; (20100394 <PortConfig+0x14c>)
201002ac:	6852      	ldr	r2, [r2, #4]
201002ae:	21fc      	movs	r1, #252	; 0xfc
201002b0:	0109      	lsls	r1, r1, #4
201002b2:	430a      	orrs	r2, r1
201002b4:	605a      	str	r2, [r3, #4]
201002b6:	4b37      	ldr	r3, [pc, #220]	; (20100394 <PortConfig+0x14c>)
201002b8:	4a36      	ldr	r2, [pc, #216]	; (20100394 <PortConfig+0x14c>)
201002ba:	68d2      	ldr	r2, [r2, #12]
201002bc:	21fc      	movs	r1, #252	; 0xfc
201002be:	0109      	lsls	r1, r1, #4
201002c0:	430a      	orrs	r2, r1
201002c2:	60da      	str	r2, [r3, #12]
201002c4:	4b33      	ldr	r3, [pc, #204]	; (20100394 <PortConfig+0x14c>)
201002c6:	4a33      	ldr	r2, [pc, #204]	; (20100394 <PortConfig+0x14c>)
201002c8:	6992      	ldr	r2, [r2, #24]
201002ca:	4936      	ldr	r1, [pc, #216]	; (201003a4 <PortConfig+0x15c>)
201002cc:	430a      	orrs	r2, r1
201002ce:	619a      	str	r2, [r3, #24]
201002d0:	4b2f      	ldr	r3, [pc, #188]	; (20100390 <PortConfig+0x148>)
201002d2:	4a2f      	ldr	r2, [pc, #188]	; (20100390 <PortConfig+0x148>)
201002d4:	69d2      	ldr	r2, [r2, #28]
201002d6:	2180      	movs	r1, #128	; 0x80
201002d8:	0489      	lsls	r1, r1, #18
201002da:	430a      	orrs	r2, r1
201002dc:	61da      	str	r2, [r3, #28]
201002de:	4b32      	ldr	r3, [pc, #200]	; (201003a8 <PortConfig+0x160>)
201002e0:	4a31      	ldr	r2, [pc, #196]	; (201003a8 <PortConfig+0x160>)
201002e2:	68d2      	ldr	r2, [r2, #12]
201002e4:	2102      	movs	r1, #2
201002e6:	438a      	bics	r2, r1
201002e8:	60da      	str	r2, [r3, #12]
201002ea:	4b29      	ldr	r3, [pc, #164]	; (20100390 <PortConfig+0x148>)
201002ec:	4a28      	ldr	r2, [pc, #160]	; (20100390 <PortConfig+0x148>)
201002ee:	69d2      	ldr	r2, [r2, #28]
201002f0:	2180      	movs	r1, #128	; 0x80
201002f2:	0449      	lsls	r1, r1, #17
201002f4:	430a      	orrs	r2, r1
201002f6:	61da      	str	r2, [r3, #28]
201002f8:	4b2c      	ldr	r3, [pc, #176]	; (201003ac <PortConfig+0x164>)
201002fa:	4a2c      	ldr	r2, [pc, #176]	; (201003ac <PortConfig+0x164>)
201002fc:	6892      	ldr	r2, [r2, #8]
201002fe:	492c      	ldr	r1, [pc, #176]	; (201003b0 <PortConfig+0x168>)
20100300:	400a      	ands	r2, r1
20100302:	609a      	str	r2, [r3, #8]
20100304:	4b29      	ldr	r3, [pc, #164]	; (201003ac <PortConfig+0x164>)
20100306:	4a29      	ldr	r2, [pc, #164]	; (201003ac <PortConfig+0x164>)
20100308:	6892      	ldr	r2, [r2, #8]
2010030a:	21a0      	movs	r1, #160	; 0xa0
2010030c:	02c9      	lsls	r1, r1, #11
2010030e:	430a      	orrs	r2, r1
20100310:	609a      	str	r2, [r3, #8]
20100312:	4b26      	ldr	r3, [pc, #152]	; (201003ac <PortConfig+0x164>)
20100314:	4a25      	ldr	r2, [pc, #148]	; (201003ac <PortConfig+0x164>)
20100316:	68d2      	ldr	r2, [r2, #12]
20100318:	21c0      	movs	r1, #192	; 0xc0
2010031a:	0089      	lsls	r1, r1, #2
2010031c:	430a      	orrs	r2, r1
2010031e:	60da      	str	r2, [r3, #12]
20100320:	4b22      	ldr	r3, [pc, #136]	; (201003ac <PortConfig+0x164>)
20100322:	4a22      	ldr	r2, [pc, #136]	; (201003ac <PortConfig+0x164>)
20100324:	6992      	ldr	r2, [r2, #24]
20100326:	21c0      	movs	r1, #192	; 0xc0
20100328:	0309      	lsls	r1, r1, #12
2010032a:	430a      	orrs	r2, r1
2010032c:	619a      	str	r2, [r3, #24]
2010032e:	4b1f      	ldr	r3, [pc, #124]	; (201003ac <PortConfig+0x164>)
20100330:	4a1e      	ldr	r2, [pc, #120]	; (201003ac <PortConfig+0x164>)
20100332:	6852      	ldr	r2, [r2, #4]
20100334:	2180      	movs	r1, #128	; 0x80
20100336:	0089      	lsls	r1, r1, #2
20100338:	430a      	orrs	r2, r1
2010033a:	605a      	str	r2, [r3, #4]
2010033c:	4b1b      	ldr	r3, [pc, #108]	; (201003ac <PortConfig+0x164>)
2010033e:	4a1b      	ldr	r2, [pc, #108]	; (201003ac <PortConfig+0x164>)
20100340:	6852      	ldr	r2, [r2, #4]
20100342:	491c      	ldr	r1, [pc, #112]	; (201003b4 <PortConfig+0x16c>)
20100344:	400a      	ands	r2, r1
20100346:	605a      	str	r2, [r3, #4]
20100348:	4b11      	ldr	r3, [pc, #68]	; (20100390 <PortConfig+0x148>)
2010034a:	4a11      	ldr	r2, [pc, #68]	; (20100390 <PortConfig+0x148>)
2010034c:	69d2      	ldr	r2, [r2, #28]
2010034e:	2180      	movs	r1, #128	; 0x80
20100350:	0409      	lsls	r1, r1, #16
20100352:	430a      	orrs	r2, r1
20100354:	61da      	str	r2, [r3, #28]
20100356:	4b18      	ldr	r3, [pc, #96]	; (201003b8 <PortConfig+0x170>)
20100358:	2200      	movs	r2, #0
2010035a:	609a      	str	r2, [r3, #8]
2010035c:	4b16      	ldr	r3, [pc, #88]	; (201003b8 <PortConfig+0x170>)
2010035e:	2200      	movs	r2, #0
20100360:	601a      	str	r2, [r3, #0]
20100362:	4b15      	ldr	r3, [pc, #84]	; (201003b8 <PortConfig+0x170>)
20100364:	4a14      	ldr	r2, [pc, #80]	; (201003b8 <PortConfig+0x170>)
20100366:	6852      	ldr	r2, [r2, #4]
20100368:	2160      	movs	r1, #96	; 0x60
2010036a:	430a      	orrs	r2, r1
2010036c:	605a      	str	r2, [r3, #4]
2010036e:	4b12      	ldr	r3, [pc, #72]	; (201003b8 <PortConfig+0x170>)
20100370:	4a11      	ldr	r2, [pc, #68]	; (201003b8 <PortConfig+0x170>)
20100372:	68d2      	ldr	r2, [r2, #12]
20100374:	2160      	movs	r1, #96	; 0x60
20100376:	430a      	orrs	r2, r1
20100378:	60da      	str	r2, [r3, #12]
2010037a:	4b0f      	ldr	r3, [pc, #60]	; (201003b8 <PortConfig+0x170>)
2010037c:	4a0e      	ldr	r2, [pc, #56]	; (201003b8 <PortConfig+0x170>)
2010037e:	6992      	ldr	r2, [r2, #24]
20100380:	21f0      	movs	r1, #240	; 0xf0
20100382:	0189      	lsls	r1, r1, #6
20100384:	430a      	orrs	r2, r1
20100386:	619a      	str	r2, [r3, #24]
20100388:	46c0      	nop			; (mov r8, r8)
2010038a:	46bd      	mov	sp, r7
2010038c:	bd80      	pop	{r7, pc}
2010038e:	46c0      	nop			; (mov r8, r8)
20100390:	40020000 	.word	0x40020000
20100394:	400a8000 	.word	0x400a8000
20100398:	ff000fff 	.word	0xff000fff
2010039c:	ffff7fff 	.word	0xffff7fff
201003a0:	00aaa000 	.word	0x00aaa000
201003a4:	00fff000 	.word	0x00fff000
201003a8:	400c8000 	.word	0x400c8000
201003ac:	400c0000 	.word	0x400c0000
201003b0:	fff0ffff 	.word	0xfff0ffff
201003b4:	fffffeff 	.word	0xfffffeff
201003b8:	400b8000 	.word	0x400b8000

201003bc <ClkConfig>:
201003bc:	b580      	push	{r7, lr}
201003be:	af00      	add	r7, sp, #0
201003c0:	4b18      	ldr	r3, [pc, #96]	; (20100424 <ClkConfig+0x68>)
201003c2:	4a18      	ldr	r2, [pc, #96]	; (20100424 <ClkConfig+0x68>)
201003c4:	6892      	ldr	r2, [r2, #8]
201003c6:	2101      	movs	r1, #1
201003c8:	430a      	orrs	r2, r1
201003ca:	609a      	str	r2, [r3, #8]
201003cc:	46c0      	nop			; (mov r8, r8)
201003ce:	4b15      	ldr	r3, [pc, #84]	; (20100424 <ClkConfig+0x68>)
201003d0:	681b      	ldr	r3, [r3, #0]
201003d2:	2204      	movs	r2, #4
201003d4:	4013      	ands	r3, r2
201003d6:	d0fa      	beq.n	201003ce <ClkConfig+0x12>
201003d8:	4b12      	ldr	r3, [pc, #72]	; (20100424 <ClkConfig+0x68>)
201003da:	4a12      	ldr	r2, [pc, #72]	; (20100424 <ClkConfig+0x68>)
201003dc:	68d2      	ldr	r2, [r2, #12]
201003de:	2102      	movs	r1, #2
201003e0:	430a      	orrs	r2, r1
201003e2:	60da      	str	r2, [r3, #12]
201003e4:	4b0f      	ldr	r3, [pc, #60]	; (20100424 <ClkConfig+0x68>)
201003e6:	4a10      	ldr	r2, [pc, #64]	; (20100428 <ClkConfig+0x6c>)
201003e8:	605a      	str	r2, [r3, #4]
201003ea:	46c0      	nop			; (mov r8, r8)
201003ec:	4b0d      	ldr	r3, [pc, #52]	; (20100424 <ClkConfig+0x68>)
201003ee:	681b      	ldr	r3, [r3, #0]
201003f0:	2202      	movs	r2, #2
201003f2:	4013      	ands	r3, r2
201003f4:	d0fa      	beq.n	201003ec <ClkConfig+0x30>
201003f6:	4b0d      	ldr	r3, [pc, #52]	; (2010042c <ClkConfig+0x70>)
201003f8:	4a0c      	ldr	r2, [pc, #48]	; (2010042c <ClkConfig+0x70>)
201003fa:	6812      	ldr	r2, [r2, #0]
201003fc:	2120      	movs	r1, #32
201003fe:	430a      	orrs	r2, r1
20100400:	601a      	str	r2, [r3, #0]
20100402:	4b08      	ldr	r3, [pc, #32]	; (20100424 <ClkConfig+0x68>)
20100404:	4a07      	ldr	r2, [pc, #28]	; (20100424 <ClkConfig+0x68>)
20100406:	68d2      	ldr	r2, [r2, #12]
20100408:	2180      	movs	r1, #128	; 0x80
2010040a:	0049      	lsls	r1, r1, #1
2010040c:	430a      	orrs	r2, r1
2010040e:	60da      	str	r2, [r3, #12]
20100410:	4b04      	ldr	r3, [pc, #16]	; (20100424 <ClkConfig+0x68>)
20100412:	4a04      	ldr	r2, [pc, #16]	; (20100424 <ClkConfig+0x68>)
20100414:	68d2      	ldr	r2, [r2, #12]
20100416:	2104      	movs	r1, #4
20100418:	430a      	orrs	r2, r1
2010041a:	60da      	str	r2, [r3, #12]
2010041c:	46c0      	nop			; (mov r8, r8)
2010041e:	46bd      	mov	sp, r7
20100420:	bd80      	pop	{r7, pc}
20100422:	46c0      	nop			; (mov r8, r8)
20100424:	40020000 	.word	0x40020000
20100428:	00000e04 	.word	0x00000e04
2010042c:	40018000 	.word	0x40018000

20100430 <TimerConfig>:
20100430:	b580      	push	{r7, lr}
20100432:	af00      	add	r7, sp, #0
20100434:	4b7a      	ldr	r3, [pc, #488]	; (20100620 <TimerConfig+0x1f0>)
20100436:	4a7a      	ldr	r2, [pc, #488]	; (20100620 <TimerConfig+0x1f0>)
20100438:	69d2      	ldr	r2, [r2, #28]
2010043a:	2180      	movs	r1, #128	; 0x80
2010043c:	0309      	lsls	r1, r1, #12
2010043e:	430a      	orrs	r2, r1
20100440:	61da      	str	r2, [r3, #28]
20100442:	4b77      	ldr	r3, [pc, #476]	; (20100620 <TimerConfig+0x1f0>)
20100444:	4a76      	ldr	r2, [pc, #472]	; (20100620 <TimerConfig+0x1f0>)
20100446:	6a92      	ldr	r2, [r2, #40]	; 0x28
20100448:	2180      	movs	r1, #128	; 0x80
2010044a:	04c9      	lsls	r1, r1, #19
2010044c:	430a      	orrs	r2, r1
2010044e:	629a      	str	r2, [r3, #40]	; 0x28
20100450:	4b73      	ldr	r3, [pc, #460]	; (20100620 <TimerConfig+0x1f0>)
20100452:	4a73      	ldr	r2, [pc, #460]	; (20100620 <TimerConfig+0x1f0>)
20100454:	6a92      	ldr	r2, [r2, #40]	; 0x28
20100456:	4973      	ldr	r1, [pc, #460]	; (20100624 <TimerConfig+0x1f4>)
20100458:	400a      	ands	r2, r1
2010045a:	629a      	str	r2, [r3, #40]	; 0x28
2010045c:	4b72      	ldr	r3, [pc, #456]	; (20100628 <TimerConfig+0x1f8>)
2010045e:	2200      	movs	r2, #0
20100460:	601a      	str	r2, [r3, #0]
20100462:	4b71      	ldr	r3, [pc, #452]	; (20100628 <TimerConfig+0x1f8>)
20100464:	2204      	movs	r2, #4
20100466:	605a      	str	r2, [r3, #4]
20100468:	4b6f      	ldr	r3, [pc, #444]	; (20100628 <TimerConfig+0x1f8>)
2010046a:	4a70      	ldr	r2, [pc, #448]	; (2010062c <TimerConfig+0x1fc>)
2010046c:	609a      	str	r2, [r3, #8]
2010046e:	4b6e      	ldr	r3, [pc, #440]	; (20100628 <TimerConfig+0x1f8>)
20100470:	2280      	movs	r2, #128	; 0x80
20100472:	0092      	lsls	r2, r2, #2
20100474:	611a      	str	r2, [r3, #16]
20100476:	4b6c      	ldr	r3, [pc, #432]	; (20100628 <TimerConfig+0x1f8>)
20100478:	2280      	movs	r2, #128	; 0x80
2010047a:	0092      	lsls	r2, r2, #2
2010047c:	615a      	str	r2, [r3, #20]
2010047e:	4b6a      	ldr	r3, [pc, #424]	; (20100628 <TimerConfig+0x1f8>)
20100480:	2280      	movs	r2, #128	; 0x80
20100482:	0092      	lsls	r2, r2, #2
20100484:	619a      	str	r2, [r3, #24]
20100486:	4b68      	ldr	r3, [pc, #416]	; (20100628 <TimerConfig+0x1f8>)
20100488:	4a67      	ldr	r2, [pc, #412]	; (20100628 <TimerConfig+0x1f8>)
2010048a:	6a12      	ldr	r2, [r2, #32]
2010048c:	4968      	ldr	r1, [pc, #416]	; (20100630 <TimerConfig+0x200>)
2010048e:	400a      	ands	r2, r1
20100490:	621a      	str	r2, [r3, #32]
20100492:	4b65      	ldr	r3, [pc, #404]	; (20100628 <TimerConfig+0x1f8>)
20100494:	4a64      	ldr	r2, [pc, #400]	; (20100628 <TimerConfig+0x1f8>)
20100496:	6a12      	ldr	r2, [r2, #32]
20100498:	21e0      	movs	r1, #224	; 0xe0
2010049a:	0109      	lsls	r1, r1, #4
2010049c:	430a      	orrs	r2, r1
2010049e:	621a      	str	r2, [r3, #32]
201004a0:	4b61      	ldr	r3, [pc, #388]	; (20100628 <TimerConfig+0x1f8>)
201004a2:	4a61      	ldr	r2, [pc, #388]	; (20100628 <TimerConfig+0x1f8>)
201004a4:	6b12      	ldr	r2, [r2, #48]	; 0x30
201004a6:	210f      	movs	r1, #15
201004a8:	438a      	bics	r2, r1
201004aa:	631a      	str	r2, [r3, #48]	; 0x30
201004ac:	4b5e      	ldr	r3, [pc, #376]	; (20100628 <TimerConfig+0x1f8>)
201004ae:	4a5e      	ldr	r2, [pc, #376]	; (20100628 <TimerConfig+0x1f8>)
201004b0:	6b12      	ldr	r2, [r2, #48]	; 0x30
201004b2:	210c      	movs	r1, #12
201004b4:	430a      	orrs	r2, r1
201004b6:	631a      	str	r2, [r3, #48]	; 0x30
201004b8:	4b5b      	ldr	r3, [pc, #364]	; (20100628 <TimerConfig+0x1f8>)
201004ba:	4a5b      	ldr	r2, [pc, #364]	; (20100628 <TimerConfig+0x1f8>)
201004bc:	6b12      	ldr	r2, [r2, #48]	; 0x30
201004be:	2101      	movs	r1, #1
201004c0:	430a      	orrs	r2, r1
201004c2:	631a      	str	r2, [r3, #48]	; 0x30
201004c4:	4b58      	ldr	r3, [pc, #352]	; (20100628 <TimerConfig+0x1f8>)
201004c6:	4a58      	ldr	r2, [pc, #352]	; (20100628 <TimerConfig+0x1f8>)
201004c8:	6b12      	ldr	r2, [r2, #48]	; 0x30
201004ca:	495a      	ldr	r1, [pc, #360]	; (20100634 <TimerConfig+0x204>)
201004cc:	400a      	ands	r2, r1
201004ce:	631a      	str	r2, [r3, #48]	; 0x30
201004d0:	4b55      	ldr	r3, [pc, #340]	; (20100628 <TimerConfig+0x1f8>)
201004d2:	4a55      	ldr	r2, [pc, #340]	; (20100628 <TimerConfig+0x1f8>)
201004d4:	6b12      	ldr	r2, [r2, #48]	; 0x30
201004d6:	21c0      	movs	r1, #192	; 0xc0
201004d8:	0109      	lsls	r1, r1, #4
201004da:	430a      	orrs	r2, r1
201004dc:	631a      	str	r2, [r3, #48]	; 0x30
201004de:	4b52      	ldr	r3, [pc, #328]	; (20100628 <TimerConfig+0x1f8>)
201004e0:	4a51      	ldr	r2, [pc, #324]	; (20100628 <TimerConfig+0x1f8>)
201004e2:	6b12      	ldr	r2, [r2, #48]	; 0x30
201004e4:	2180      	movs	r1, #128	; 0x80
201004e6:	0049      	lsls	r1, r1, #1
201004e8:	430a      	orrs	r2, r1
201004ea:	631a      	str	r2, [r3, #48]	; 0x30
201004ec:	4b4e      	ldr	r3, [pc, #312]	; (20100628 <TimerConfig+0x1f8>)
201004ee:	4a4e      	ldr	r2, [pc, #312]	; (20100628 <TimerConfig+0x1f8>)
201004f0:	6e12      	ldr	r2, [r2, #96]	; 0x60
201004f2:	2108      	movs	r1, #8
201004f4:	430a      	orrs	r2, r1
201004f6:	661a      	str	r2, [r3, #96]	; 0x60
201004f8:	4b4b      	ldr	r3, [pc, #300]	; (20100628 <TimerConfig+0x1f8>)
201004fa:	4a4b      	ldr	r2, [pc, #300]	; (20100628 <TimerConfig+0x1f8>)
201004fc:	6a52      	ldr	r2, [r2, #36]	; 0x24
201004fe:	494c      	ldr	r1, [pc, #304]	; (20100630 <TimerConfig+0x200>)
20100500:	400a      	ands	r2, r1
20100502:	625a      	str	r2, [r3, #36]	; 0x24
20100504:	4b48      	ldr	r3, [pc, #288]	; (20100628 <TimerConfig+0x1f8>)
20100506:	4a48      	ldr	r2, [pc, #288]	; (20100628 <TimerConfig+0x1f8>)
20100508:	6a52      	ldr	r2, [r2, #36]	; 0x24
2010050a:	21e0      	movs	r1, #224	; 0xe0
2010050c:	0109      	lsls	r1, r1, #4
2010050e:	430a      	orrs	r2, r1
20100510:	625a      	str	r2, [r3, #36]	; 0x24
20100512:	4b45      	ldr	r3, [pc, #276]	; (20100628 <TimerConfig+0x1f8>)
20100514:	4a44      	ldr	r2, [pc, #272]	; (20100628 <TimerConfig+0x1f8>)
20100516:	6b52      	ldr	r2, [r2, #52]	; 0x34
20100518:	210f      	movs	r1, #15
2010051a:	438a      	bics	r2, r1
2010051c:	635a      	str	r2, [r3, #52]	; 0x34
2010051e:	4b42      	ldr	r3, [pc, #264]	; (20100628 <TimerConfig+0x1f8>)
20100520:	4a41      	ldr	r2, [pc, #260]	; (20100628 <TimerConfig+0x1f8>)
20100522:	6b52      	ldr	r2, [r2, #52]	; 0x34
20100524:	210c      	movs	r1, #12
20100526:	430a      	orrs	r2, r1
20100528:	635a      	str	r2, [r3, #52]	; 0x34
2010052a:	4b3f      	ldr	r3, [pc, #252]	; (20100628 <TimerConfig+0x1f8>)
2010052c:	4a3e      	ldr	r2, [pc, #248]	; (20100628 <TimerConfig+0x1f8>)
2010052e:	6b52      	ldr	r2, [r2, #52]	; 0x34
20100530:	2101      	movs	r1, #1
20100532:	430a      	orrs	r2, r1
20100534:	635a      	str	r2, [r3, #52]	; 0x34
20100536:	4b3c      	ldr	r3, [pc, #240]	; (20100628 <TimerConfig+0x1f8>)
20100538:	4a3b      	ldr	r2, [pc, #236]	; (20100628 <TimerConfig+0x1f8>)
2010053a:	6b52      	ldr	r2, [r2, #52]	; 0x34
2010053c:	493d      	ldr	r1, [pc, #244]	; (20100634 <TimerConfig+0x204>)
2010053e:	400a      	ands	r2, r1
20100540:	635a      	str	r2, [r3, #52]	; 0x34
20100542:	4b39      	ldr	r3, [pc, #228]	; (20100628 <TimerConfig+0x1f8>)
20100544:	4a38      	ldr	r2, [pc, #224]	; (20100628 <TimerConfig+0x1f8>)
20100546:	6b52      	ldr	r2, [r2, #52]	; 0x34
20100548:	21c0      	movs	r1, #192	; 0xc0
2010054a:	0109      	lsls	r1, r1, #4
2010054c:	430a      	orrs	r2, r1
2010054e:	635a      	str	r2, [r3, #52]	; 0x34
20100550:	4b35      	ldr	r3, [pc, #212]	; (20100628 <TimerConfig+0x1f8>)
20100552:	4a35      	ldr	r2, [pc, #212]	; (20100628 <TimerConfig+0x1f8>)
20100554:	6b52      	ldr	r2, [r2, #52]	; 0x34
20100556:	2180      	movs	r1, #128	; 0x80
20100558:	0049      	lsls	r1, r1, #1
2010055a:	430a      	orrs	r2, r1
2010055c:	635a      	str	r2, [r3, #52]	; 0x34
2010055e:	4b32      	ldr	r3, [pc, #200]	; (20100628 <TimerConfig+0x1f8>)
20100560:	4a31      	ldr	r2, [pc, #196]	; (20100628 <TimerConfig+0x1f8>)
20100562:	6e52      	ldr	r2, [r2, #100]	; 0x64
20100564:	2108      	movs	r1, #8
20100566:	430a      	orrs	r2, r1
20100568:	665a      	str	r2, [r3, #100]	; 0x64
2010056a:	4b2f      	ldr	r3, [pc, #188]	; (20100628 <TimerConfig+0x1f8>)
2010056c:	4a2e      	ldr	r2, [pc, #184]	; (20100628 <TimerConfig+0x1f8>)
2010056e:	6a92      	ldr	r2, [r2, #40]	; 0x28
20100570:	492f      	ldr	r1, [pc, #188]	; (20100630 <TimerConfig+0x200>)
20100572:	400a      	ands	r2, r1
20100574:	629a      	str	r2, [r3, #40]	; 0x28
20100576:	4b2c      	ldr	r3, [pc, #176]	; (20100628 <TimerConfig+0x1f8>)
20100578:	4a2b      	ldr	r2, [pc, #172]	; (20100628 <TimerConfig+0x1f8>)
2010057a:	6a92      	ldr	r2, [r2, #40]	; 0x28
2010057c:	21e0      	movs	r1, #224	; 0xe0
2010057e:	0109      	lsls	r1, r1, #4
20100580:	430a      	orrs	r2, r1
20100582:	629a      	str	r2, [r3, #40]	; 0x28
20100584:	4b28      	ldr	r3, [pc, #160]	; (20100628 <TimerConfig+0x1f8>)
20100586:	4a28      	ldr	r2, [pc, #160]	; (20100628 <TimerConfig+0x1f8>)
20100588:	6b92      	ldr	r2, [r2, #56]	; 0x38
2010058a:	210f      	movs	r1, #15
2010058c:	438a      	bics	r2, r1
2010058e:	639a      	str	r2, [r3, #56]	; 0x38
20100590:	4b25      	ldr	r3, [pc, #148]	; (20100628 <TimerConfig+0x1f8>)
20100592:	4a25      	ldr	r2, [pc, #148]	; (20100628 <TimerConfig+0x1f8>)
20100594:	6b92      	ldr	r2, [r2, #56]	; 0x38
20100596:	210c      	movs	r1, #12
20100598:	430a      	orrs	r2, r1
2010059a:	639a      	str	r2, [r3, #56]	; 0x38
2010059c:	4b22      	ldr	r3, [pc, #136]	; (20100628 <TimerConfig+0x1f8>)
2010059e:	4a22      	ldr	r2, [pc, #136]	; (20100628 <TimerConfig+0x1f8>)
201005a0:	6b92      	ldr	r2, [r2, #56]	; 0x38
201005a2:	2101      	movs	r1, #1
201005a4:	430a      	orrs	r2, r1
201005a6:	639a      	str	r2, [r3, #56]	; 0x38
201005a8:	4b1f      	ldr	r3, [pc, #124]	; (20100628 <TimerConfig+0x1f8>)
201005aa:	4a1f      	ldr	r2, [pc, #124]	; (20100628 <TimerConfig+0x1f8>)
201005ac:	6b92      	ldr	r2, [r2, #56]	; 0x38
201005ae:	4921      	ldr	r1, [pc, #132]	; (20100634 <TimerConfig+0x204>)
201005b0:	400a      	ands	r2, r1
201005b2:	639a      	str	r2, [r3, #56]	; 0x38
201005b4:	4b1c      	ldr	r3, [pc, #112]	; (20100628 <TimerConfig+0x1f8>)
201005b6:	4a1c      	ldr	r2, [pc, #112]	; (20100628 <TimerConfig+0x1f8>)
201005b8:	6b92      	ldr	r2, [r2, #56]	; 0x38
201005ba:	21c0      	movs	r1, #192	; 0xc0
201005bc:	0109      	lsls	r1, r1, #4
201005be:	430a      	orrs	r2, r1
201005c0:	639a      	str	r2, [r3, #56]	; 0x38
201005c2:	4b19      	ldr	r3, [pc, #100]	; (20100628 <TimerConfig+0x1f8>)
201005c4:	4a18      	ldr	r2, [pc, #96]	; (20100628 <TimerConfig+0x1f8>)
201005c6:	6b92      	ldr	r2, [r2, #56]	; 0x38
201005c8:	2180      	movs	r1, #128	; 0x80
201005ca:	0049      	lsls	r1, r1, #1
201005cc:	430a      	orrs	r2, r1
201005ce:	639a      	str	r2, [r3, #56]	; 0x38
201005d0:	4b15      	ldr	r3, [pc, #84]	; (20100628 <TimerConfig+0x1f8>)
201005d2:	4a15      	ldr	r2, [pc, #84]	; (20100628 <TimerConfig+0x1f8>)
201005d4:	6e92      	ldr	r2, [r2, #104]	; 0x68
201005d6:	2108      	movs	r1, #8
201005d8:	430a      	orrs	r2, r1
201005da:	669a      	str	r2, [r3, #104]	; 0x68
201005dc:	4b12      	ldr	r3, [pc, #72]	; (20100628 <TimerConfig+0x1f8>)
201005de:	4a12      	ldr	r2, [pc, #72]	; (20100628 <TimerConfig+0x1f8>)
201005e0:	6c12      	ldr	r2, [r2, #64]	; 0x40
201005e2:	2196      	movs	r1, #150	; 0x96
201005e4:	0189      	lsls	r1, r1, #6
201005e6:	430a      	orrs	r2, r1
201005e8:	641a      	str	r2, [r3, #64]	; 0x40
201005ea:	4b0f      	ldr	r3, [pc, #60]	; (20100628 <TimerConfig+0x1f8>)
201005ec:	4a0e      	ldr	r2, [pc, #56]	; (20100628 <TimerConfig+0x1f8>)
201005ee:	6c52      	ldr	r2, [r2, #68]	; 0x44
201005f0:	2196      	movs	r1, #150	; 0x96
201005f2:	0189      	lsls	r1, r1, #6
201005f4:	430a      	orrs	r2, r1
201005f6:	645a      	str	r2, [r3, #68]	; 0x44
201005f8:	4b0b      	ldr	r3, [pc, #44]	; (20100628 <TimerConfig+0x1f8>)
201005fa:	4a0b      	ldr	r2, [pc, #44]	; (20100628 <TimerConfig+0x1f8>)
201005fc:	6c92      	ldr	r2, [r2, #72]	; 0x48
201005fe:	2196      	movs	r1, #150	; 0x96
20100600:	0189      	lsls	r1, r1, #6
20100602:	430a      	orrs	r2, r1
20100604:	649a      	str	r2, [r3, #72]	; 0x48
20100606:	4b08      	ldr	r3, [pc, #32]	; (20100628 <TimerConfig+0x1f8>)
20100608:	4a07      	ldr	r2, [pc, #28]	; (20100628 <TimerConfig+0x1f8>)
2010060a:	6d92      	ldr	r2, [r2, #88]	; 0x58
2010060c:	21f0      	movs	r1, #240	; 0xf0
2010060e:	0149      	lsls	r1, r1, #5
20100610:	430a      	orrs	r2, r1
20100612:	659a      	str	r2, [r3, #88]	; 0x58
20100614:	4b04      	ldr	r3, [pc, #16]	; (20100628 <TimerConfig+0x1f8>)
20100616:	2201      	movs	r2, #1
20100618:	60da      	str	r2, [r3, #12]
2010061a:	46c0      	nop			; (mov r8, r8)
2010061c:	46bd      	mov	sp, r7
2010061e:	bd80      	pop	{r7, pc}
20100620:	40020000 	.word	0x40020000
20100624:	ff00ffff 	.word	0xff00ffff
20100628:	40098000 	.word	0x40098000
2010062c:	000003ff 	.word	0x000003ff
20100630:	fffff1ff 	.word	0xfffff1ff
20100634:	fffff0ff 	.word	0xfffff0ff

20100638 <adc_init>:
20100638:	b580      	push	{r7, lr}
2010063a:	af00      	add	r7, sp, #0
2010063c:	4b0f      	ldr	r3, [pc, #60]	; (2010067c <adc_init+0x44>)
2010063e:	4a0f      	ldr	r2, [pc, #60]	; (2010067c <adc_init+0x44>)
20100640:	69d2      	ldr	r2, [r2, #28]
20100642:	2180      	movs	r1, #128	; 0x80
20100644:	0289      	lsls	r1, r1, #10
20100646:	430a      	orrs	r2, r1
20100648:	61da      	str	r2, [r3, #28]
2010064a:	4b0c      	ldr	r3, [pc, #48]	; (2010067c <adc_init+0x44>)
2010064c:	4a0c      	ldr	r2, [pc, #48]	; (20100680 <adc_init+0x48>)
2010064e:	615a      	str	r2, [r3, #20]
20100650:	4b0c      	ldr	r3, [pc, #48]	; (20100684 <adc_init+0x4c>)
20100652:	2200      	movs	r2, #0
20100654:	601a      	str	r2, [r3, #0]
20100656:	4b0b      	ldr	r3, [pc, #44]	; (20100684 <adc_init+0x4c>)
20100658:	4a0a      	ldr	r2, [pc, #40]	; (20100684 <adc_init+0x4c>)
2010065a:	6812      	ldr	r2, [r2, #0]
2010065c:	490a      	ldr	r1, [pc, #40]	; (20100688 <adc_init+0x50>)
2010065e:	430a      	orrs	r2, r1
20100660:	601a      	str	r2, [r3, #0]
20100662:	4b08      	ldr	r3, [pc, #32]	; (20100684 <adc_init+0x4c>)
20100664:	4a07      	ldr	r2, [pc, #28]	; (20100684 <adc_init+0x4c>)
20100666:	6a92      	ldr	r2, [r2, #40]	; 0x28
20100668:	2139      	movs	r1, #57	; 0x39
2010066a:	430a      	orrs	r2, r1
2010066c:	629a      	str	r2, [r3, #40]	; 0x28
2010066e:	4b05      	ldr	r3, [pc, #20]	; (20100684 <adc_init+0x4c>)
20100670:	2210      	movs	r2, #16
20100672:	621a      	str	r2, [r3, #32]
20100674:	46c0      	nop			; (mov r8, r8)
20100676:	46bd      	mov	sp, r7
20100678:	bd80      	pop	{r7, pc}
2010067a:	46c0      	nop			; (mov r8, r8)
2010067c:	40020000 	.word	0x40020000
20100680:	00002020 	.word	0x00002020
20100684:	40088000 	.word	0x40088000
20100688:	00000205 	.word	0x00000205

2010068c <dac_init>:
2010068c:	b580      	push	{r7, lr}
2010068e:	af00      	add	r7, sp, #0
20100690:	4b07      	ldr	r3, [pc, #28]	; (201006b0 <dac_init+0x24>)
20100692:	4a07      	ldr	r2, [pc, #28]	; (201006b0 <dac_init+0x24>)
20100694:	69d2      	ldr	r2, [r2, #28]
20100696:	2180      	movs	r1, #128	; 0x80
20100698:	02c9      	lsls	r1, r1, #11
2010069a:	430a      	orrs	r2, r1
2010069c:	61da      	str	r2, [r3, #28]
2010069e:	4b05      	ldr	r3, [pc, #20]	; (201006b4 <dac_init+0x28>)
201006a0:	4a04      	ldr	r2, [pc, #16]	; (201006b4 <dac_init+0x28>)
201006a2:	6812      	ldr	r2, [r2, #0]
201006a4:	2104      	movs	r1, #4
201006a6:	430a      	orrs	r2, r1
201006a8:	601a      	str	r2, [r3, #0]
201006aa:	46c0      	nop			; (mov r8, r8)
201006ac:	46bd      	mov	sp, r7
201006ae:	bd80      	pop	{r7, pc}
201006b0:	40020000 	.word	0x40020000
201006b4:	40090000 	.word	0x40090000

201006b8 <ssi_init>:
201006b8:	b580      	push	{r7, lr}
201006ba:	af00      	add	r7, sp, #0
201006bc:	4b0c      	ldr	r3, [pc, #48]	; (201006f0 <ssi_init+0x38>)
201006be:	4a0c      	ldr	r2, [pc, #48]	; (201006f0 <ssi_init+0x38>)
201006c0:	69d2      	ldr	r2, [r2, #28]
201006c2:	2180      	movs	r1, #128	; 0x80
201006c4:	0349      	lsls	r1, r1, #13
201006c6:	430a      	orrs	r2, r1
201006c8:	61da      	str	r2, [r3, #28]
201006ca:	4b09      	ldr	r3, [pc, #36]	; (201006f0 <ssi_init+0x38>)
201006cc:	4a09      	ldr	r2, [pc, #36]	; (201006f4 <ssi_init+0x3c>)
201006ce:	62da      	str	r2, [r3, #44]	; 0x2c
201006d0:	4b09      	ldr	r3, [pc, #36]	; (201006f8 <ssi_init+0x40>)
201006d2:	2200      	movs	r2, #0
201006d4:	605a      	str	r2, [r3, #4]
201006d6:	4b08      	ldr	r3, [pc, #32]	; (201006f8 <ssi_init+0x40>)
201006d8:	220a      	movs	r2, #10
201006da:	611a      	str	r2, [r3, #16]
201006dc:	4b06      	ldr	r3, [pc, #24]	; (201006f8 <ssi_init+0x40>)
201006de:	4a07      	ldr	r2, [pc, #28]	; (201006fc <ssi_init+0x44>)
201006e0:	601a      	str	r2, [r3, #0]
201006e2:	4b05      	ldr	r3, [pc, #20]	; (201006f8 <ssi_init+0x40>)
201006e4:	2202      	movs	r2, #2
201006e6:	605a      	str	r2, [r3, #4]
201006e8:	46c0      	nop			; (mov r8, r8)
201006ea:	46bd      	mov	sp, r7
201006ec:	bd80      	pop	{r7, pc}
201006ee:	46c0      	nop			; (mov r8, r8)
201006f0:	40020000 	.word	0x40020000
201006f4:	02000200 	.word	0x02000200
201006f8:	400a0000 	.word	0x400a0000
201006fc:	0000021b 	.word	0x0000021b

20100700 <b2g>:
20100700:	b580      	push	{r7, lr}
20100702:	b082      	sub	sp, #8
20100704:	af00      	add	r7, sp, #0
20100706:	6078      	str	r0, [r7, #4]
20100708:	687b      	ldr	r3, [r7, #4]
2010070a:	085a      	lsrs	r2, r3, #1
2010070c:	687b      	ldr	r3, [r7, #4]
2010070e:	4053      	eors	r3, r2
20100710:	0018      	movs	r0, r3
20100712:	46bd      	mov	sp, r7
20100714:	b002      	add	sp, #8
20100716:	bd80      	pop	{r7, pc}

20100718 <g2b>:
20100718:	b580      	push	{r7, lr}
2010071a:	b084      	sub	sp, #16
2010071c:	af00      	add	r7, sp, #0
2010071e:	6078      	str	r0, [r7, #4]
20100720:	2300      	movs	r3, #0
20100722:	60fb      	str	r3, [r7, #12]
20100724:	2300      	movs	r3, #0
20100726:	60fb      	str	r3, [r7, #12]
20100728:	e006      	b.n	20100738 <g2b+0x20>
2010072a:	68fa      	ldr	r2, [r7, #12]
2010072c:	687b      	ldr	r3, [r7, #4]
2010072e:	4053      	eors	r3, r2
20100730:	60fb      	str	r3, [r7, #12]
20100732:	687b      	ldr	r3, [r7, #4]
20100734:	085b      	lsrs	r3, r3, #1
20100736:	607b      	str	r3, [r7, #4]
20100738:	687b      	ldr	r3, [r7, #4]
2010073a:	2b00      	cmp	r3, #0
2010073c:	d1f5      	bne.n	2010072a <g2b+0x12>
2010073e:	68fb      	ldr	r3, [r7, #12]
20100740:	0018      	movs	r0, r3
20100742:	46bd      	mov	sp, r7
20100744:	b004      	add	sp, #16
20100746:	bd80      	pop	{r7, pc}

20100748 <SystemInit>:
20100748:	b580      	push	{r7, lr}
2010074a:	af00      	add	r7, sp, #0
2010074c:	f7ff fe36 	bl	201003bc <ClkConfig>
20100750:	f7ff fd7a 	bl	20100248 <PortConfig>
20100754:	f7ff fe6c 	bl	20100430 <TimerConfig>
20100758:	f7ff ff6e 	bl	20100638 <adc_init>
2010075c:	f7ff ff96 	bl	2010068c <dac_init>
20100760:	f7ff ffaa 	bl	201006b8 <ssi_init>
20100764:	f000 fc9e 	bl	201010a4 <adc_dma_init>
20100768:	46c0      	nop			; (mov r8, r8)
2010076a:	46bd      	mov	sp, r7
2010076c:	bd80      	pop	{r7, pc}
2010076e:	46c0      	nop			; (mov r8, r8)

20100770 <timer_wait>:
20100770:	b580      	push	{r7, lr}
20100772:	af00      	add	r7, sp, #0
20100774:	46c0      	nop			; (mov r8, r8)
20100776:	4b05      	ldr	r3, [pc, #20]	; (2010078c <timer_wait+0x1c>)
20100778:	6d5b      	ldr	r3, [r3, #84]	; 0x54
2010077a:	2202      	movs	r2, #2
2010077c:	4013      	ands	r3, r2
2010077e:	d0fa      	beq.n	20100776 <timer_wait+0x6>
20100780:	4b02      	ldr	r3, [pc, #8]	; (2010078c <timer_wait+0x1c>)
20100782:	2200      	movs	r2, #0
20100784:	655a      	str	r2, [r3, #84]	; 0x54
20100786:	46c0      	nop			; (mov r8, r8)
20100788:	46bd      	mov	sp, r7
2010078a:	bd80      	pop	{r7, pc}
2010078c:	40098000 	.word	0x40098000

20100790 <mycos>:
20100790:	4b05      	ldr	r3, [pc, #20]	; (201007a8 <mycos+0x18>)
20100792:	4a06      	ldr	r2, [pc, #24]	; (201007ac <mycos+0x1c>)
20100794:	447b      	add	r3, pc
20100796:	0580      	lsls	r0, r0, #22
20100798:	589b      	ldr	r3, [r3, r2]
2010079a:	0d00      	lsrs	r0, r0, #20
2010079c:	58c0      	ldr	r0, [r0, r3]
2010079e:	b082      	sub	sp, #8
201007a0:	9301      	str	r3, [sp, #4]
201007a2:	b002      	add	sp, #8
201007a4:	4770      	bx	lr
201007a6:	46c0      	nop			; (mov r8, r8)
201007a8:	ffeff8f4 	.word	0xffeff8f4
201007ac:	00000000 	.word	0x00000000

201007b0 <mysin>:
201007b0:	4b07      	ldr	r3, [pc, #28]	; (201007d0 <mysin+0x20>)
201007b2:	4a08      	ldr	r2, [pc, #32]	; (201007d4 <mysin+0x24>)
201007b4:	447b      	add	r3, pc
201007b6:	589b      	ldr	r3, [r3, r2]
201007b8:	b082      	sub	sp, #8
201007ba:	9301      	str	r3, [sp, #4]
201007bc:	23c0      	movs	r3, #192	; 0xc0
201007be:	009b      	lsls	r3, r3, #2
201007c0:	469c      	mov	ip, r3
201007c2:	4460      	add	r0, ip
201007c4:	9b01      	ldr	r3, [sp, #4]
201007c6:	0580      	lsls	r0, r0, #22
201007c8:	0d00      	lsrs	r0, r0, #20
201007ca:	58c0      	ldr	r0, [r0, r3]
201007cc:	b002      	add	sp, #8
201007ce:	4770      	bx	lr
201007d0:	ffeff8d4 	.word	0xffeff8d4
201007d4:	00000000 	.word	0x00000000

201007d8 <reg_init>:
201007d8:	2300      	movs	r3, #0
201007da:	6001      	str	r1, [r0, #0]
201007dc:	6042      	str	r2, [r0, #4]
201007de:	6083      	str	r3, [r0, #8]
201007e0:	60c3      	str	r3, [r0, #12]
201007e2:	4770      	bx	lr

201007e4 <reg_update>:
201007e4:	b510      	push	{r4, lr}
201007e6:	6804      	ldr	r4, [r0, #0]
201007e8:	6883      	ldr	r3, [r0, #8]
201007ea:	434c      	muls	r4, r1
201007ec:	2a00      	cmp	r2, #0
201007ee:	d004      	beq.n	201007fa <reg_update+0x16>
201007f0:	2b00      	cmp	r3, #0
201007f2:	dd09      	ble.n	20100808 <reg_update+0x24>
201007f4:	2c00      	cmp	r4, #0
201007f6:	dd00      	ble.n	201007fa <reg_update+0x16>
201007f8:	2400      	movs	r4, #0
201007fa:	6842      	ldr	r2, [r0, #4]
201007fc:	18e3      	adds	r3, r4, r3
201007fe:	4351      	muls	r1, r2
20100800:	18c9      	adds	r1, r1, r3
20100802:	60c1      	str	r1, [r0, #12]
20100804:	6083      	str	r3, [r0, #8]
20100806:	bd10      	pop	{r4, pc}
20100808:	2b00      	cmp	r3, #0
2010080a:	d0f6      	beq.n	201007fa <reg_update+0x16>
2010080c:	43e2      	mvns	r2, r4
2010080e:	17d2      	asrs	r2, r2, #31
20100810:	4014      	ands	r4, r2
20100812:	e7f2      	b.n	201007fa <reg_update+0x16>

20100814 <cord_atan>:
20100814:	b5f0      	push	{r4, r5, r6, r7, lr}
20100816:	4645      	mov	r5, r8
20100818:	4657      	mov	r7, sl
2010081a:	464e      	mov	r6, r9
2010081c:	b4e0      	push	{r5, r6, r7}
2010081e:	4b65      	ldr	r3, [pc, #404]	; (201009b4 <cord_atan+0x1a0>)
20100820:	b090      	sub	sp, #64	; 0x40
20100822:	447b      	add	r3, pc
20100824:	001c      	movs	r4, r3
20100826:	4694      	mov	ip, r2
20100828:	466a      	mov	r2, sp
2010082a:	468a      	mov	sl, r1
2010082c:	cca2      	ldmia	r4!, {r1, r5, r7}
2010082e:	c2a2      	stmia	r2!, {r1, r5, r7}
20100830:	cca2      	ldmia	r4!, {r1, r5, r7}
20100832:	c2a2      	stmia	r2!, {r1, r5, r7}
20100834:	cc22      	ldmia	r4!, {r1, r5}
20100836:	c222      	stmia	r2!, {r1, r5}
20100838:	3320      	adds	r3, #32
2010083a:	aa08      	add	r2, sp, #32
2010083c:	4690      	mov	r8, r2
2010083e:	cb32      	ldmia	r3!, {r1, r4, r5}
20100840:	c232      	stmia	r2!, {r1, r4, r5}
20100842:	cb32      	ldmia	r3!, {r1, r4, r5}
20100844:	c232      	stmia	r2!, {r1, r4, r5}
20100846:	cb12      	ldmia	r3!, {r1, r4}
20100848:	c212      	stmia	r2!, {r1, r4}
2010084a:	6802      	ldr	r2, [r0, #0]
2010084c:	6845      	ldr	r5, [r0, #4]
2010084e:	17d1      	asrs	r1, r2, #31
20100850:	1853      	adds	r3, r2, r1
20100852:	466e      	mov	r6, sp
20100854:	404b      	eors	r3, r1
20100856:	2d00      	cmp	r5, #0
20100858:	dd6c      	ble.n	20100934 <cord_atan+0x120>
2010085a:	195f      	adds	r7, r3, r5
2010085c:	1aeb      	subs	r3, r5, r3
2010085e:	9d00      	ldr	r5, [sp, #0]
20100860:	2b00      	cmp	r3, #0
20100862:	d100      	bne.n	20100866 <cord_atan+0x52>
20100864:	e094      	b.n	20100990 <cord_atan+0x17c>
20100866:	105c      	asrs	r4, r3, #1
20100868:	2b00      	cmp	r3, #0
2010086a:	dd68      	ble.n	2010093e <cord_atan+0x12a>
2010086c:	1078      	asrs	r0, r7, #1
2010086e:	1a1b      	subs	r3, r3, r0
20100870:	6870      	ldr	r0, [r6, #4]
20100872:	19e4      	adds	r4, r4, r7
20100874:	4681      	mov	r9, r0
20100876:	444d      	add	r5, r9
20100878:	2b00      	cmp	r3, #0
2010087a:	d100      	bne.n	2010087e <cord_atan+0x6a>
2010087c:	e08a      	b.n	20100994 <cord_atan+0x180>
2010087e:	1098      	asrs	r0, r3, #2
20100880:	2b00      	cmp	r3, #0
20100882:	dd62      	ble.n	2010094a <cord_atan+0x136>
20100884:	1907      	adds	r7, r0, r4
20100886:	10a4      	asrs	r4, r4, #2
20100888:	1b18      	subs	r0, r3, r4
2010088a:	68b3      	ldr	r3, [r6, #8]
2010088c:	4699      	mov	r9, r3
2010088e:	444d      	add	r5, r9
20100890:	2800      	cmp	r0, #0
20100892:	d100      	bne.n	20100896 <cord_atan+0x82>
20100894:	e081      	b.n	2010099a <cord_atan+0x186>
20100896:	10c3      	asrs	r3, r0, #3
20100898:	2800      	cmp	r0, #0
2010089a:	dd5c      	ble.n	20100956 <cord_atan+0x142>
2010089c:	10fc      	asrs	r4, r7, #3
2010089e:	1b00      	subs	r0, r0, r4
201008a0:	68f4      	ldr	r4, [r6, #12]
201008a2:	19db      	adds	r3, r3, r7
201008a4:	46a1      	mov	r9, r4
201008a6:	444d      	add	r5, r9
201008a8:	2800      	cmp	r0, #0
201008aa:	d100      	bne.n	201008ae <cord_atan+0x9a>
201008ac:	e077      	b.n	2010099e <cord_atan+0x18a>
201008ae:	1104      	asrs	r4, r0, #4
201008b0:	2800      	cmp	r0, #0
201008b2:	dd56      	ble.n	20100962 <cord_atan+0x14e>
201008b4:	18e7      	adds	r7, r4, r3
201008b6:	111b      	asrs	r3, r3, #4
201008b8:	1ac4      	subs	r4, r0, r3
201008ba:	6933      	ldr	r3, [r6, #16]
201008bc:	4699      	mov	r9, r3
201008be:	444d      	add	r5, r9
201008c0:	2c00      	cmp	r4, #0
201008c2:	d100      	bne.n	201008c6 <cord_atan+0xb2>
201008c4:	e06e      	b.n	201009a4 <cord_atan+0x190>
201008c6:	1163      	asrs	r3, r4, #5
201008c8:	2c00      	cmp	r4, #0
201008ca:	dd50      	ble.n	2010096e <cord_atan+0x15a>
201008cc:	1178      	asrs	r0, r7, #5
201008ce:	1a20      	subs	r0, r4, r0
201008d0:	6974      	ldr	r4, [r6, #20]
201008d2:	19db      	adds	r3, r3, r7
201008d4:	46a1      	mov	r9, r4
201008d6:	444d      	add	r5, r9
201008d8:	2800      	cmp	r0, #0
201008da:	d065      	beq.n	201009a8 <cord_atan+0x194>
201008dc:	1184      	asrs	r4, r0, #6
201008de:	2800      	cmp	r0, #0
201008e0:	dd4b      	ble.n	2010097a <cord_atan+0x166>
201008e2:	18e7      	adds	r7, r4, r3
201008e4:	119b      	asrs	r3, r3, #6
201008e6:	1ac0      	subs	r0, r0, r3
201008e8:	69b3      	ldr	r3, [r6, #24]
201008ea:	4699      	mov	r9, r3
201008ec:	444d      	add	r5, r9
201008ee:	2800      	cmp	r0, #0
201008f0:	d05d      	beq.n	201009ae <cord_atan+0x19a>
201008f2:	dd48      	ble.n	20100986 <cord_atan+0x172>
201008f4:	69f3      	ldr	r3, [r6, #28]
201008f6:	11c0      	asrs	r0, r0, #7
201008f8:	19c7      	adds	r7, r0, r7
201008fa:	18ed      	adds	r5, r5, r3
201008fc:	2307      	movs	r3, #7
201008fe:	2a00      	cmp	r2, #0
20100900:	db14      	blt.n	2010092c <cord_atan+0x118>
20100902:	2d00      	cmp	r5, #0
20100904:	da03      	bge.n	2010090e <cord_atan+0xfa>
20100906:	2280      	movs	r2, #128	; 0x80
20100908:	00d2      	lsls	r2, r2, #3
2010090a:	4691      	mov	r9, r2
2010090c:	444d      	add	r5, r9
2010090e:	4652      	mov	r2, sl
20100910:	6015      	str	r5, [r2, #0]
20100912:	4642      	mov	r2, r8
20100914:	009b      	lsls	r3, r3, #2
20100916:	58d0      	ldr	r0, [r2, r3]
20100918:	4663      	mov	r3, ip
2010091a:	4378      	muls	r0, r7
2010091c:	1280      	asrs	r0, r0, #10
2010091e:	6018      	str	r0, [r3, #0]
20100920:	b010      	add	sp, #64	; 0x40
20100922:	bc1c      	pop	{r2, r3, r4}
20100924:	4690      	mov	r8, r2
20100926:	4699      	mov	r9, r3
20100928:	46a2      	mov	sl, r4
2010092a:	bdf0      	pop	{r4, r5, r6, r7, pc}
2010092c:	2280      	movs	r2, #128	; 0x80
2010092e:	0092      	lsls	r2, r2, #2
20100930:	1b55      	subs	r5, r2, r5
20100932:	e7e6      	b.n	20100902 <cord_atan+0xee>
20100934:	9900      	ldr	r1, [sp, #0]
20100936:	1b5f      	subs	r7, r3, r5
20100938:	195b      	adds	r3, r3, r5
2010093a:	424d      	negs	r5, r1
2010093c:	e790      	b.n	20100860 <cord_atan+0x4c>
2010093e:	6871      	ldr	r1, [r6, #4]
20100940:	1078      	asrs	r0, r7, #1
20100942:	1b3c      	subs	r4, r7, r4
20100944:	18c3      	adds	r3, r0, r3
20100946:	1a6d      	subs	r5, r5, r1
20100948:	e796      	b.n	20100878 <cord_atan+0x64>
2010094a:	1a27      	subs	r7, r4, r0
2010094c:	10a0      	asrs	r0, r4, #2
2010094e:	18c0      	adds	r0, r0, r3
20100950:	68b3      	ldr	r3, [r6, #8]
20100952:	1aed      	subs	r5, r5, r3
20100954:	e79c      	b.n	20100890 <cord_atan+0x7c>
20100956:	68f1      	ldr	r1, [r6, #12]
20100958:	10fc      	asrs	r4, r7, #3
2010095a:	1afb      	subs	r3, r7, r3
2010095c:	1820      	adds	r0, r4, r0
2010095e:	1a6d      	subs	r5, r5, r1
20100960:	e7a2      	b.n	201008a8 <cord_atan+0x94>
20100962:	1b1f      	subs	r7, r3, r4
20100964:	111c      	asrs	r4, r3, #4
20100966:	6933      	ldr	r3, [r6, #16]
20100968:	1824      	adds	r4, r4, r0
2010096a:	1aed      	subs	r5, r5, r3
2010096c:	e7a8      	b.n	201008c0 <cord_atan+0xac>
2010096e:	6971      	ldr	r1, [r6, #20]
20100970:	1178      	asrs	r0, r7, #5
20100972:	1afb      	subs	r3, r7, r3
20100974:	1900      	adds	r0, r0, r4
20100976:	1a6d      	subs	r5, r5, r1
20100978:	e7ae      	b.n	201008d8 <cord_atan+0xc4>
2010097a:	1b1f      	subs	r7, r3, r4
2010097c:	119b      	asrs	r3, r3, #6
2010097e:	1818      	adds	r0, r3, r0
20100980:	69b3      	ldr	r3, [r6, #24]
20100982:	1aed      	subs	r5, r5, r3
20100984:	e7b3      	b.n	201008ee <cord_atan+0xda>
20100986:	69f3      	ldr	r3, [r6, #28]
20100988:	11c4      	asrs	r4, r0, #7
2010098a:	1b3f      	subs	r7, r7, r4
2010098c:	1aed      	subs	r5, r5, r3
2010098e:	e7b5      	b.n	201008fc <cord_atan+0xe8>
20100990:	2300      	movs	r3, #0
20100992:	e7b4      	b.n	201008fe <cord_atan+0xea>
20100994:	0027      	movs	r7, r4
20100996:	2301      	movs	r3, #1
20100998:	e7b1      	b.n	201008fe <cord_atan+0xea>
2010099a:	2302      	movs	r3, #2
2010099c:	e7af      	b.n	201008fe <cord_atan+0xea>
2010099e:	001f      	movs	r7, r3
201009a0:	2303      	movs	r3, #3
201009a2:	e7ac      	b.n	201008fe <cord_atan+0xea>
201009a4:	2304      	movs	r3, #4
201009a6:	e7aa      	b.n	201008fe <cord_atan+0xea>
201009a8:	001f      	movs	r7, r3
201009aa:	2305      	movs	r3, #5
201009ac:	e7a7      	b.n	201008fe <cord_atan+0xea>
201009ae:	2306      	movs	r3, #6
201009b0:	e7a5      	b.n	201008fe <cord_atan+0xea>
201009b2:	46c0      	nop			; (mov r8, r8)
201009b4:	00001dfa 	.word	0x00001dfa

201009b8 <sinpwm>:
201009b8:	b5f0      	push	{r4, r5, r6, r7, lr}
201009ba:	465f      	mov	r7, fp
201009bc:	4656      	mov	r6, sl
201009be:	4644      	mov	r4, r8
201009c0:	464d      	mov	r5, r9
201009c2:	b4f0      	push	{r4, r5, r6, r7}
201009c4:	4b8c      	ldr	r3, [pc, #560]	; (20100bf8 <sinpwm+0x240>)
201009c6:	b091      	sub	sp, #68	; 0x44
201009c8:	447b      	add	r3, pc
201009ca:	001d      	movs	r5, r3
201009cc:	466c      	mov	r4, sp
201009ce:	4688      	mov	r8, r1
201009d0:	4693      	mov	fp, r2
201009d2:	469c      	mov	ip, r3
201009d4:	cd0e      	ldmia	r5!, {r1, r2, r3}
201009d6:	c40e      	stmia	r4!, {r1, r2, r3}
201009d8:	cd0e      	ldmia	r5!, {r1, r2, r3}
201009da:	c40e      	stmia	r4!, {r1, r2, r3}
201009dc:	cd0c      	ldmia	r5!, {r2, r3}
201009de:	c40c      	stmia	r4!, {r2, r3}
201009e0:	ab08      	add	r3, sp, #32
201009e2:	469a      	mov	sl, r3
201009e4:	4663      	mov	r3, ip
201009e6:	4654      	mov	r4, sl
201009e8:	3320      	adds	r3, #32
201009ea:	cb26      	ldmia	r3!, {r1, r2, r5}
201009ec:	c426      	stmia	r4!, {r1, r2, r5}
201009ee:	cb26      	ldmia	r3!, {r1, r2, r5}
201009f0:	c426      	stmia	r4!, {r1, r2, r5}
201009f2:	cb06      	ldmia	r3!, {r1, r2}
201009f4:	c406      	stmia	r4!, {r1, r2}
201009f6:	4643      	mov	r3, r8
201009f8:	681b      	ldr	r3, [r3, #0]
201009fa:	4e80      	ldr	r6, [pc, #512]	; (20100bfc <sinpwm+0x244>)
201009fc:	17da      	asrs	r2, r3, #31
201009fe:	189c      	adds	r4, r3, r2
20100a00:	469c      	mov	ip, r3
20100a02:	4643      	mov	r3, r8
20100a04:	6859      	ldr	r1, [r3, #4]
20100a06:	447e      	add	r6, pc
20100a08:	466f      	mov	r7, sp
20100a0a:	4054      	eors	r4, r2
20100a0c:	2900      	cmp	r1, #0
20100a0e:	dc00      	bgt.n	20100a12 <sinpwm+0x5a>
20100a10:	e0a9      	b.n	20100b66 <sinpwm+0x1ae>
20100a12:	1863      	adds	r3, r4, r1
20100a14:	1b09      	subs	r1, r1, r4
20100a16:	4688      	mov	r8, r1
20100a18:	9c00      	ldr	r4, [sp, #0]
20100a1a:	4641      	mov	r1, r8
20100a1c:	2900      	cmp	r1, #0
20100a1e:	d100      	bne.n	20100a22 <sinpwm+0x6a>
20100a20:	e0d8      	b.n	20100bd4 <sinpwm+0x21c>
20100a22:	dc00      	bgt.n	20100a26 <sinpwm+0x6e>
20100a24:	e0a5      	b.n	20100b72 <sinpwm+0x1ba>
20100a26:	4641      	mov	r1, r8
20100a28:	4642      	mov	r2, r8
20100a2a:	1049      	asrs	r1, r1, #1
20100a2c:	18c9      	adds	r1, r1, r3
20100a2e:	105b      	asrs	r3, r3, #1
20100a30:	1ad3      	subs	r3, r2, r3
20100a32:	4698      	mov	r8, r3
20100a34:	687b      	ldr	r3, [r7, #4]
20100a36:	4699      	mov	r9, r3
20100a38:	444c      	add	r4, r9
20100a3a:	4643      	mov	r3, r8
20100a3c:	2b00      	cmp	r3, #0
20100a3e:	d100      	bne.n	20100a42 <sinpwm+0x8a>
20100a40:	e0ca      	b.n	20100bd8 <sinpwm+0x220>
20100a42:	dc00      	bgt.n	20100a46 <sinpwm+0x8e>
20100a44:	e09c      	b.n	20100b80 <sinpwm+0x1c8>
20100a46:	4643      	mov	r3, r8
20100a48:	4642      	mov	r2, r8
20100a4a:	109b      	asrs	r3, r3, #2
20100a4c:	185b      	adds	r3, r3, r1
20100a4e:	1089      	asrs	r1, r1, #2
20100a50:	1a52      	subs	r2, r2, r1
20100a52:	4690      	mov	r8, r2
20100a54:	68ba      	ldr	r2, [r7, #8]
20100a56:	4691      	mov	r9, r2
20100a58:	444c      	add	r4, r9
20100a5a:	4641      	mov	r1, r8
20100a5c:	2900      	cmp	r1, #0
20100a5e:	d100      	bne.n	20100a62 <sinpwm+0xaa>
20100a60:	e0bd      	b.n	20100bde <sinpwm+0x226>
20100a62:	4642      	mov	r2, r8
20100a64:	dc00      	bgt.n	20100a68 <sinpwm+0xb0>
20100a66:	e092      	b.n	20100b8e <sinpwm+0x1d6>
20100a68:	10c9      	asrs	r1, r1, #3
20100a6a:	18c9      	adds	r1, r1, r3
20100a6c:	10db      	asrs	r3, r3, #3
20100a6e:	1ad3      	subs	r3, r2, r3
20100a70:	4698      	mov	r8, r3
20100a72:	68fb      	ldr	r3, [r7, #12]
20100a74:	4699      	mov	r9, r3
20100a76:	444c      	add	r4, r9
20100a78:	4643      	mov	r3, r8
20100a7a:	2b00      	cmp	r3, #0
20100a7c:	d100      	bne.n	20100a80 <sinpwm+0xc8>
20100a7e:	e0b0      	b.n	20100be2 <sinpwm+0x22a>
20100a80:	dc00      	bgt.n	20100a84 <sinpwm+0xcc>
20100a82:	e08b      	b.n	20100b9c <sinpwm+0x1e4>
20100a84:	4643      	mov	r3, r8
20100a86:	4642      	mov	r2, r8
20100a88:	111b      	asrs	r3, r3, #4
20100a8a:	185b      	adds	r3, r3, r1
20100a8c:	1109      	asrs	r1, r1, #4
20100a8e:	1a51      	subs	r1, r2, r1
20100a90:	693a      	ldr	r2, [r7, #16]
20100a92:	4690      	mov	r8, r2
20100a94:	4444      	add	r4, r8
20100a96:	2900      	cmp	r1, #0
20100a98:	d100      	bne.n	20100a9c <sinpwm+0xe4>
20100a9a:	e0a5      	b.n	20100be8 <sinpwm+0x230>
20100a9c:	114a      	asrs	r2, r1, #5
20100a9e:	4690      	mov	r8, r2
20100aa0:	2900      	cmp	r1, #0
20100aa2:	dc00      	bgt.n	20100aa6 <sinpwm+0xee>
20100aa4:	e081      	b.n	20100baa <sinpwm+0x1f2>
20100aa6:	4498      	add	r8, r3
20100aa8:	115b      	asrs	r3, r3, #5
20100aaa:	1ac9      	subs	r1, r1, r3
20100aac:	697b      	ldr	r3, [r7, #20]
20100aae:	46c1      	mov	r9, r8
20100ab0:	4698      	mov	r8, r3
20100ab2:	4444      	add	r4, r8
20100ab4:	2900      	cmp	r1, #0
20100ab6:	d100      	bne.n	20100aba <sinpwm+0x102>
20100ab8:	e098      	b.n	20100bec <sinpwm+0x234>
20100aba:	118b      	asrs	r3, r1, #6
20100abc:	2900      	cmp	r1, #0
20100abe:	dc00      	bgt.n	20100ac2 <sinpwm+0x10a>
20100ac0:	e07a      	b.n	20100bb8 <sinpwm+0x200>
20100ac2:	444b      	add	r3, r9
20100ac4:	4698      	mov	r8, r3
20100ac6:	464b      	mov	r3, r9
20100ac8:	119b      	asrs	r3, r3, #6
20100aca:	1ac9      	subs	r1, r1, r3
20100acc:	69bb      	ldr	r3, [r7, #24]
20100ace:	4699      	mov	r9, r3
20100ad0:	444c      	add	r4, r9
20100ad2:	2900      	cmp	r1, #0
20100ad4:	d100      	bne.n	20100ad8 <sinpwm+0x120>
20100ad6:	e08c      	b.n	20100bf2 <sinpwm+0x23a>
20100ad8:	dc00      	bgt.n	20100adc <sinpwm+0x124>
20100ada:	e075      	b.n	20100bc8 <sinpwm+0x210>
20100adc:	11c9      	asrs	r1, r1, #7
20100ade:	000b      	movs	r3, r1
20100ae0:	69f9      	ldr	r1, [r7, #28]
20100ae2:	4443      	add	r3, r8
20100ae4:	1864      	adds	r4, r4, r1
20100ae6:	2107      	movs	r1, #7
20100ae8:	4667      	mov	r7, ip
20100aea:	2f00      	cmp	r7, #0
20100aec:	db37      	blt.n	20100b5e <sinpwm+0x1a6>
20100aee:	2c00      	cmp	r4, #0
20100af0:	da03      	bge.n	20100afa <sinpwm+0x142>
20100af2:	2280      	movs	r2, #128	; 0x80
20100af4:	00d2      	lsls	r2, r2, #3
20100af6:	4694      	mov	ip, r2
20100af8:	4464      	add	r4, ip
20100afa:	4652      	mov	r2, sl
20100afc:	0089      	lsls	r1, r1, #2
20100afe:	5851      	ldr	r1, [r2, r1]
20100b00:	0022      	movs	r2, r4
20100b02:	434b      	muls	r3, r1
20100b04:	21fa      	movs	r1, #250	; 0xfa
20100b06:	445a      	add	r2, fp
20100b08:	0592      	lsls	r2, r2, #22
20100b0a:	151b      	asrs	r3, r3, #20
20100b0c:	0d92      	lsrs	r2, r2, #22
20100b0e:	0049      	lsls	r1, r1, #1
20100b10:	428b      	cmp	r3, r1
20100b12:	dd21      	ble.n	20100b58 <sinpwm+0x1a0>
20100b14:	000b      	movs	r3, r1
20100b16:	2501      	movs	r5, #1
20100b18:	4f39      	ldr	r7, [pc, #228]	; (20100c00 <sinpwm+0x248>)
20100b1a:	493a      	ldr	r1, [pc, #232]	; (20100c04 <sinpwm+0x24c>)
20100b1c:	5874      	ldr	r4, [r6, r1]
20100b1e:	0091      	lsls	r1, r2, #2
20100b20:	5909      	ldr	r1, [r1, r4]
20100b22:	434b      	muls	r3, r1
20100b24:	129b      	asrs	r3, r3, #10
20100b26:	6003      	str	r3, [r0, #0]
20100b28:	0013      	movs	r3, r2
20100b2a:	33aa      	adds	r3, #170	; 0xaa
20100b2c:	059b      	lsls	r3, r3, #22
20100b2e:	0d1b      	lsrs	r3, r3, #20
20100b30:	5919      	ldr	r1, [r3, r4]
20100b32:	4b35      	ldr	r3, [pc, #212]	; (20100c08 <sinpwm+0x250>)
20100b34:	4379      	muls	r1, r7
20100b36:	1a9a      	subs	r2, r3, r2
20100b38:	0592      	lsls	r2, r2, #22
20100b3a:	0d12      	lsrs	r2, r2, #20
20100b3c:	5913      	ldr	r3, [r2, r4]
20100b3e:	1289      	asrs	r1, r1, #10
20100b40:	437b      	muls	r3, r7
20100b42:	129b      	asrs	r3, r3, #10
20100b44:	6041      	str	r1, [r0, #4]
20100b46:	6083      	str	r3, [r0, #8]
20100b48:	0028      	movs	r0, r5
20100b4a:	b011      	add	sp, #68	; 0x44
20100b4c:	bc3c      	pop	{r2, r3, r4, r5}
20100b4e:	4690      	mov	r8, r2
20100b50:	4699      	mov	r9, r3
20100b52:	46a2      	mov	sl, r4
20100b54:	46ab      	mov	fp, r5
20100b56:	bdf0      	pop	{r4, r5, r6, r7, pc}
20100b58:	425f      	negs	r7, r3
20100b5a:	2500      	movs	r5, #0
20100b5c:	e7dd      	b.n	20100b1a <sinpwm+0x162>
20100b5e:	2780      	movs	r7, #128	; 0x80
20100b60:	00bf      	lsls	r7, r7, #2
20100b62:	1b3c      	subs	r4, r7, r4
20100b64:	e7c3      	b.n	20100aee <sinpwm+0x136>
20100b66:	46a0      	mov	r8, r4
20100b68:	9a00      	ldr	r2, [sp, #0]
20100b6a:	1a63      	subs	r3, r4, r1
20100b6c:	4488      	add	r8, r1
20100b6e:	4254      	negs	r4, r2
20100b70:	e753      	b.n	20100a1a <sinpwm+0x62>
20100b72:	1049      	asrs	r1, r1, #1
20100b74:	1a59      	subs	r1, r3, r1
20100b76:	105b      	asrs	r3, r3, #1
20100b78:	4498      	add	r8, r3
20100b7a:	687b      	ldr	r3, [r7, #4]
20100b7c:	1ae4      	subs	r4, r4, r3
20100b7e:	e75c      	b.n	20100a3a <sinpwm+0x82>
20100b80:	109b      	asrs	r3, r3, #2
20100b82:	68ba      	ldr	r2, [r7, #8]
20100b84:	1acb      	subs	r3, r1, r3
20100b86:	1089      	asrs	r1, r1, #2
20100b88:	4488      	add	r8, r1
20100b8a:	1aa4      	subs	r4, r4, r2
20100b8c:	e765      	b.n	20100a5a <sinpwm+0xa2>
20100b8e:	10c9      	asrs	r1, r1, #3
20100b90:	1a59      	subs	r1, r3, r1
20100b92:	10db      	asrs	r3, r3, #3
20100b94:	4498      	add	r8, r3
20100b96:	68fb      	ldr	r3, [r7, #12]
20100b98:	1ae4      	subs	r4, r4, r3
20100b9a:	e76d      	b.n	20100a78 <sinpwm+0xc0>
20100b9c:	111b      	asrs	r3, r3, #4
20100b9e:	693a      	ldr	r2, [r7, #16]
20100ba0:	1acb      	subs	r3, r1, r3
20100ba2:	1109      	asrs	r1, r1, #4
20100ba4:	4441      	add	r1, r8
20100ba6:	1aa4      	subs	r4, r4, r2
20100ba8:	e775      	b.n	20100a96 <sinpwm+0xde>
20100baa:	1a9a      	subs	r2, r3, r2
20100bac:	115b      	asrs	r3, r3, #5
20100bae:	1859      	adds	r1, r3, r1
20100bb0:	697b      	ldr	r3, [r7, #20]
20100bb2:	4691      	mov	r9, r2
20100bb4:	1ae4      	subs	r4, r4, r3
20100bb6:	e77d      	b.n	20100ab4 <sinpwm+0xfc>
20100bb8:	464a      	mov	r2, r9
20100bba:	1ad3      	subs	r3, r2, r3
20100bbc:	4698      	mov	r8, r3
20100bbe:	1193      	asrs	r3, r2, #6
20100bc0:	1859      	adds	r1, r3, r1
20100bc2:	69bb      	ldr	r3, [r7, #24]
20100bc4:	1ae4      	subs	r4, r4, r3
20100bc6:	e784      	b.n	20100ad2 <sinpwm+0x11a>
20100bc8:	4643      	mov	r3, r8
20100bca:	11c9      	asrs	r1, r1, #7
20100bcc:	1a5b      	subs	r3, r3, r1
20100bce:	69f9      	ldr	r1, [r7, #28]
20100bd0:	1a64      	subs	r4, r4, r1
20100bd2:	e788      	b.n	20100ae6 <sinpwm+0x12e>
20100bd4:	2100      	movs	r1, #0
20100bd6:	e787      	b.n	20100ae8 <sinpwm+0x130>
20100bd8:	000b      	movs	r3, r1
20100bda:	2101      	movs	r1, #1
20100bdc:	e784      	b.n	20100ae8 <sinpwm+0x130>
20100bde:	2102      	movs	r1, #2
20100be0:	e782      	b.n	20100ae8 <sinpwm+0x130>
20100be2:	000b      	movs	r3, r1
20100be4:	2103      	movs	r1, #3
20100be6:	e77f      	b.n	20100ae8 <sinpwm+0x130>
20100be8:	2104      	movs	r1, #4
20100bea:	e77d      	b.n	20100ae8 <sinpwm+0x130>
20100bec:	464b      	mov	r3, r9
20100bee:	2105      	movs	r1, #5
20100bf0:	e77a      	b.n	20100ae8 <sinpwm+0x130>
20100bf2:	4643      	mov	r3, r8
20100bf4:	2106      	movs	r1, #6
20100bf6:	e777      	b.n	20100ae8 <sinpwm+0x130>
20100bf8:	00001c54 	.word	0x00001c54
20100bfc:	ffeff682 	.word	0xffeff682
20100c00:	fffffe0c 	.word	0xfffffe0c
20100c04:	00000000 	.word	0x00000000
20100c08:	000004aa 	.word	0x000004aa

20100c0c <svpwm>:
20100c0c:	b5f0      	push	{r4, r5, r6, r7, lr}
20100c0e:	465f      	mov	r7, fp
20100c10:	4656      	mov	r6, sl
20100c12:	4644      	mov	r4, r8
20100c14:	464d      	mov	r5, r9
20100c16:	b4f0      	push	{r4, r5, r6, r7}
20100c18:	0005      	movs	r5, r0
20100c1a:	48d0      	ldr	r0, [pc, #832]	; (20100f5c <svpwm+0x350>)
20100c1c:	b091      	sub	sp, #68	; 0x44
20100c1e:	4478      	add	r0, pc
20100c20:	0006      	movs	r6, r0
20100c22:	466c      	mov	r4, sp
20100c24:	4bce      	ldr	r3, [pc, #824]	; (20100f60 <svpwm+0x354>)
20100c26:	4693      	mov	fp, r2
20100c28:	447b      	add	r3, pc
20100c2a:	469a      	mov	sl, r3
20100c2c:	468c      	mov	ip, r1
20100c2e:	ce0e      	ldmia	r6!, {r1, r2, r3}
20100c30:	c40e      	stmia	r4!, {r1, r2, r3}
20100c32:	ce0e      	ldmia	r6!, {r1, r2, r3}
20100c34:	c40e      	stmia	r4!, {r1, r2, r3}
20100c36:	ce0c      	ldmia	r6!, {r2, r3}
20100c38:	c40c      	stmia	r4!, {r2, r3}
20100c3a:	ae08      	add	r6, sp, #32
20100c3c:	0034      	movs	r4, r6
20100c3e:	3020      	adds	r0, #32
20100c40:	c80e      	ldmia	r0!, {r1, r2, r3}
20100c42:	c40e      	stmia	r4!, {r1, r2, r3}
20100c44:	c80e      	ldmia	r0!, {r1, r2, r3}
20100c46:	c40e      	stmia	r4!, {r1, r2, r3}
20100c48:	c80c      	ldmia	r0!, {r2, r3}
20100c4a:	c40c      	stmia	r4!, {r2, r3}
20100c4c:	4663      	mov	r3, ip
20100c4e:	681c      	ldr	r4, [r3, #0]
20100c50:	466f      	mov	r7, sp
20100c52:	17e2      	asrs	r2, r4, #31
20100c54:	18a3      	adds	r3, r4, r2
20100c56:	4053      	eors	r3, r2
20100c58:	4698      	mov	r8, r3
20100c5a:	4663      	mov	r3, ip
20100c5c:	685b      	ldr	r3, [r3, #4]
20100c5e:	2b00      	cmp	r3, #0
20100c60:	dc00      	bgt.n	20100c64 <svpwm+0x58>
20100c62:	e0b5      	b.n	20100dd0 <svpwm+0x1c4>
20100c64:	4641      	mov	r1, r8
20100c66:	18c8      	adds	r0, r1, r3
20100c68:	1a5b      	subs	r3, r3, r1
20100c6a:	4698      	mov	r8, r3
20100c6c:	9b00      	ldr	r3, [sp, #0]
20100c6e:	4641      	mov	r1, r8
20100c70:	2900      	cmp	r1, #0
20100c72:	d100      	bne.n	20100c76 <svpwm+0x6a>
20100c74:	e15f      	b.n	20100f36 <svpwm+0x32a>
20100c76:	dc00      	bgt.n	20100c7a <svpwm+0x6e>
20100c78:	e0b0      	b.n	20100ddc <svpwm+0x1d0>
20100c7a:	4641      	mov	r1, r8
20100c7c:	1049      	asrs	r1, r1, #1
20100c7e:	4689      	mov	r9, r1
20100c80:	1041      	asrs	r1, r0, #1
20100c82:	4481      	add	r9, r0
20100c84:	4640      	mov	r0, r8
20100c86:	1a41      	subs	r1, r0, r1
20100c88:	4688      	mov	r8, r1
20100c8a:	6879      	ldr	r1, [r7, #4]
20100c8c:	468c      	mov	ip, r1
20100c8e:	4463      	add	r3, ip
20100c90:	4641      	mov	r1, r8
20100c92:	2900      	cmp	r1, #0
20100c94:	d100      	bne.n	20100c98 <svpwm+0x8c>
20100c96:	e150      	b.n	20100f3a <svpwm+0x32e>
20100c98:	dc00      	bgt.n	20100c9c <svpwm+0x90>
20100c9a:	e0a7      	b.n	20100dec <svpwm+0x1e0>
20100c9c:	4641      	mov	r1, r8
20100c9e:	1089      	asrs	r1, r1, #2
20100ca0:	4449      	add	r1, r9
20100ca2:	0008      	movs	r0, r1
20100ca4:	4649      	mov	r1, r9
20100ca6:	4642      	mov	r2, r8
20100ca8:	1089      	asrs	r1, r1, #2
20100caa:	1a51      	subs	r1, r2, r1
20100cac:	68ba      	ldr	r2, [r7, #8]
20100cae:	4688      	mov	r8, r1
20100cb0:	4694      	mov	ip, r2
20100cb2:	4463      	add	r3, ip
20100cb4:	4641      	mov	r1, r8
20100cb6:	2900      	cmp	r1, #0
20100cb8:	d100      	bne.n	20100cbc <svpwm+0xb0>
20100cba:	e141      	b.n	20100f40 <svpwm+0x334>
20100cbc:	4642      	mov	r2, r8
20100cbe:	dc00      	bgt.n	20100cc2 <svpwm+0xb6>
20100cc0:	e09c      	b.n	20100dfc <svpwm+0x1f0>
20100cc2:	10c9      	asrs	r1, r1, #3
20100cc4:	1809      	adds	r1, r1, r0
20100cc6:	10c0      	asrs	r0, r0, #3
20100cc8:	1a12      	subs	r2, r2, r0
20100cca:	4690      	mov	r8, r2
20100ccc:	68fa      	ldr	r2, [r7, #12]
20100cce:	4694      	mov	ip, r2
20100cd0:	4463      	add	r3, ip
20100cd2:	4640      	mov	r0, r8
20100cd4:	2800      	cmp	r0, #0
20100cd6:	d100      	bne.n	20100cda <svpwm+0xce>
20100cd8:	e134      	b.n	20100f44 <svpwm+0x338>
20100cda:	4642      	mov	r2, r8
20100cdc:	dc00      	bgt.n	20100ce0 <svpwm+0xd4>
20100cde:	e094      	b.n	20100e0a <svpwm+0x1fe>
20100ce0:	1100      	asrs	r0, r0, #4
20100ce2:	1840      	adds	r0, r0, r1
20100ce4:	1109      	asrs	r1, r1, #4
20100ce6:	1a52      	subs	r2, r2, r1
20100ce8:	4690      	mov	r8, r2
20100cea:	693a      	ldr	r2, [r7, #16]
20100cec:	4694      	mov	ip, r2
20100cee:	4463      	add	r3, ip
20100cf0:	4641      	mov	r1, r8
20100cf2:	2900      	cmp	r1, #0
20100cf4:	d100      	bne.n	20100cf8 <svpwm+0xec>
20100cf6:	e128      	b.n	20100f4a <svpwm+0x33e>
20100cf8:	4642      	mov	r2, r8
20100cfa:	dc00      	bgt.n	20100cfe <svpwm+0xf2>
20100cfc:	e08c      	b.n	20100e18 <svpwm+0x20c>
20100cfe:	1149      	asrs	r1, r1, #5
20100d00:	4689      	mov	r9, r1
20100d02:	1141      	asrs	r1, r0, #5
20100d04:	1a51      	subs	r1, r2, r1
20100d06:	697a      	ldr	r2, [r7, #20]
20100d08:	4481      	add	r9, r0
20100d0a:	4694      	mov	ip, r2
20100d0c:	4463      	add	r3, ip
20100d0e:	2900      	cmp	r1, #0
20100d10:	d100      	bne.n	20100d14 <svpwm+0x108>
20100d12:	e11c      	b.n	20100f4e <svpwm+0x342>
20100d14:	1188      	asrs	r0, r1, #6
20100d16:	2900      	cmp	r1, #0
20100d18:	dc00      	bgt.n	20100d1c <svpwm+0x110>
20100d1a:	e086      	b.n	20100e2a <svpwm+0x21e>
20100d1c:	464a      	mov	r2, r9
20100d1e:	4448      	add	r0, r9
20100d20:	4680      	mov	r8, r0
20100d22:	1190      	asrs	r0, r2, #6
20100d24:	69ba      	ldr	r2, [r7, #24]
20100d26:	1a09      	subs	r1, r1, r0
20100d28:	4694      	mov	ip, r2
20100d2a:	4463      	add	r3, ip
20100d2c:	2900      	cmp	r1, #0
20100d2e:	d100      	bne.n	20100d32 <svpwm+0x126>
20100d30:	e110      	b.n	20100f54 <svpwm+0x348>
20100d32:	dc00      	bgt.n	20100d36 <svpwm+0x12a>
20100d34:	e0e2      	b.n	20100efc <svpwm+0x2f0>
20100d36:	11c9      	asrs	r1, r1, #7
20100d38:	4441      	add	r1, r8
20100d3a:	0008      	movs	r0, r1
20100d3c:	69f9      	ldr	r1, [r7, #28]
20100d3e:	185b      	adds	r3, r3, r1
20100d40:	2107      	movs	r1, #7
20100d42:	2c00      	cmp	r4, #0
20100d44:	db40      	blt.n	20100dc8 <svpwm+0x1bc>
20100d46:	2b00      	cmp	r3, #0
20100d48:	da03      	bge.n	20100d52 <svpwm+0x146>
20100d4a:	2280      	movs	r2, #128	; 0x80
20100d4c:	00d2      	lsls	r2, r2, #3
20100d4e:	4694      	mov	ip, r2
20100d50:	4463      	add	r3, ip
20100d52:	22fa      	movs	r2, #250	; 0xfa
20100d54:	0089      	lsls	r1, r1, #2
20100d56:	5871      	ldr	r1, [r6, r1]
20100d58:	445b      	add	r3, fp
20100d5a:	4341      	muls	r1, r0
20100d5c:	059b      	lsls	r3, r3, #22
20100d5e:	1509      	asrs	r1, r1, #20
20100d60:	0d9b      	lsrs	r3, r3, #22
20100d62:	0052      	lsls	r2, r2, #1
20100d64:	2400      	movs	r4, #0
20100d66:	4291      	cmp	r1, r2
20100d68:	dd01      	ble.n	20100d6e <svpwm+0x162>
20100d6a:	0011      	movs	r1, r2
20100d6c:	3401      	adds	r4, #1
20100d6e:	0058      	lsls	r0, r3, #1
20100d70:	18c0      	adds	r0, r0, r3
20100d72:	1240      	asrs	r0, r0, #9
20100d74:	3801      	subs	r0, #1
20100d76:	4a7b      	ldr	r2, [pc, #492]	; (20100f64 <svpwm+0x358>)
20100d78:	2804      	cmp	r0, #4
20100d7a:	d920      	bls.n	20100dbe <svpwm+0x1b2>
20100d7c:	26c0      	movs	r6, #192	; 0xc0
20100d7e:	4650      	mov	r0, sl
20100d80:	00b6      	lsls	r6, r6, #2
20100d82:	46b4      	mov	ip, r6
20100d84:	5880      	ldr	r0, [r0, r2]
20100d86:	4a78      	ldr	r2, [pc, #480]	; (20100f68 <svpwm+0x35c>)
20100d88:	1ad2      	subs	r2, r2, r3
20100d8a:	4463      	add	r3, ip
20100d8c:	0592      	lsls	r2, r2, #22
20100d8e:	059b      	lsls	r3, r3, #22
20100d90:	0d12      	lsrs	r2, r2, #20
20100d92:	0d1b      	lsrs	r3, r3, #20
20100d94:	581b      	ldr	r3, [r3, r0]
20100d96:	5812      	ldr	r2, [r2, r0]
20100d98:	434a      	muls	r2, r1
20100d9a:	4359      	muls	r1, r3
20100d9c:	1292      	asrs	r2, r2, #10
20100d9e:	1289      	asrs	r1, r1, #10
20100da0:	1853      	adds	r3, r2, r1
20100da2:	602b      	str	r3, [r5, #0]
20100da4:	1a8b      	subs	r3, r1, r2
20100da6:	4252      	negs	r2, r2
20100da8:	1a52      	subs	r2, r2, r1
20100daa:	606b      	str	r3, [r5, #4]
20100dac:	60aa      	str	r2, [r5, #8]
20100dae:	0020      	movs	r0, r4
20100db0:	b011      	add	sp, #68	; 0x44
20100db2:	bc3c      	pop	{r2, r3, r4, r5}
20100db4:	4690      	mov	r8, r2
20100db6:	4699      	mov	r9, r3
20100db8:	46a2      	mov	sl, r4
20100dba:	46ab      	mov	fp, r5
20100dbc:	bdf0      	pop	{r4, r5, r6, r7, pc}
20100dbe:	f000 fac3 	bl	20101348 <__gnu_thumb1_case_uqi>
20100dc2:	856c      	.short	0x856c
20100dc4:	553d      	.short	0x553d
20100dc6:	a3          	.byte	0xa3
20100dc7:	00          	.byte	0x00
20100dc8:	2480      	movs	r4, #128	; 0x80
20100dca:	00a4      	lsls	r4, r4, #2
20100dcc:	1ae3      	subs	r3, r4, r3
20100dce:	e7ba      	b.n	20100d46 <svpwm+0x13a>
20100dd0:	4642      	mov	r2, r8
20100dd2:	4498      	add	r8, r3
20100dd4:	1ad0      	subs	r0, r2, r3
20100dd6:	9b00      	ldr	r3, [sp, #0]
20100dd8:	425b      	negs	r3, r3
20100dda:	e748      	b.n	20100c6e <svpwm+0x62>
20100ddc:	1049      	asrs	r1, r1, #1
20100dde:	1a42      	subs	r2, r0, r1
20100de0:	4691      	mov	r9, r2
20100de2:	687a      	ldr	r2, [r7, #4]
20100de4:	1041      	asrs	r1, r0, #1
20100de6:	4488      	add	r8, r1
20100de8:	1a9b      	subs	r3, r3, r2
20100dea:	e751      	b.n	20100c90 <svpwm+0x84>
20100dec:	464a      	mov	r2, r9
20100dee:	1089      	asrs	r1, r1, #2
20100df0:	1a50      	subs	r0, r2, r1
20100df2:	1091      	asrs	r1, r2, #2
20100df4:	68ba      	ldr	r2, [r7, #8]
20100df6:	4488      	add	r8, r1
20100df8:	1a9b      	subs	r3, r3, r2
20100dfa:	e75b      	b.n	20100cb4 <svpwm+0xa8>
20100dfc:	10c9      	asrs	r1, r1, #3
20100dfe:	68fa      	ldr	r2, [r7, #12]
20100e00:	1a41      	subs	r1, r0, r1
20100e02:	10c0      	asrs	r0, r0, #3
20100e04:	4480      	add	r8, r0
20100e06:	1a9b      	subs	r3, r3, r2
20100e08:	e763      	b.n	20100cd2 <svpwm+0xc6>
20100e0a:	1100      	asrs	r0, r0, #4
20100e0c:	693a      	ldr	r2, [r7, #16]
20100e0e:	1a08      	subs	r0, r1, r0
20100e10:	1109      	asrs	r1, r1, #4
20100e12:	4488      	add	r8, r1
20100e14:	1a9b      	subs	r3, r3, r2
20100e16:	e76b      	b.n	20100cf0 <svpwm+0xe4>
20100e18:	1149      	asrs	r1, r1, #5
20100e1a:	1a42      	subs	r2, r0, r1
20100e1c:	1140      	asrs	r0, r0, #5
20100e1e:	0001      	movs	r1, r0
20100e20:	4691      	mov	r9, r2
20100e22:	697a      	ldr	r2, [r7, #20]
20100e24:	4441      	add	r1, r8
20100e26:	1a9b      	subs	r3, r3, r2
20100e28:	e771      	b.n	20100d0e <svpwm+0x102>
20100e2a:	464a      	mov	r2, r9
20100e2c:	1a12      	subs	r2, r2, r0
20100e2e:	4690      	mov	r8, r2
20100e30:	464a      	mov	r2, r9
20100e32:	1190      	asrs	r0, r2, #6
20100e34:	69ba      	ldr	r2, [r7, #24]
20100e36:	1841      	adds	r1, r0, r1
20100e38:	1a9b      	subs	r3, r3, r2
20100e3a:	e777      	b.n	20100d2c <svpwm+0x120>
20100e3c:	4650      	mov	r0, sl
20100e3e:	5880      	ldr	r0, [r0, r2]
20100e40:	4a4a      	ldr	r2, [pc, #296]	; (20100f6c <svpwm+0x360>)
20100e42:	1ad2      	subs	r2, r2, r3
20100e44:	3301      	adds	r3, #1
20100e46:	0592      	lsls	r2, r2, #22
20100e48:	33ff      	adds	r3, #255	; 0xff
20100e4a:	0d12      	lsrs	r2, r2, #20
20100e4c:	059b      	lsls	r3, r3, #22
20100e4e:	5812      	ldr	r2, [r2, r0]
20100e50:	0d1b      	lsrs	r3, r3, #20
20100e52:	581b      	ldr	r3, [r3, r0]
20100e54:	434a      	muls	r2, r1
20100e56:	434b      	muls	r3, r1
20100e58:	1292      	asrs	r2, r2, #10
20100e5a:	1299      	asrs	r1, r3, #10
20100e5c:	4253      	negs	r3, r2
20100e5e:	1a5b      	subs	r3, r3, r1
20100e60:	602b      	str	r3, [r5, #0]
20100e62:	1a53      	subs	r3, r2, r1
20100e64:	1851      	adds	r1, r2, r1
20100e66:	606b      	str	r3, [r5, #4]
20100e68:	60a9      	str	r1, [r5, #8]
20100e6a:	e7a0      	b.n	20100dae <svpwm+0x1a2>
20100e6c:	4650      	mov	r0, sl
20100e6e:	5880      	ldr	r0, [r0, r2]
20100e70:	4a3f      	ldr	r2, [pc, #252]	; (20100f70 <svpwm+0x364>)
20100e72:	1ad2      	subs	r2, r2, r3
20100e74:	3356      	adds	r3, #86	; 0x56
20100e76:	0592      	lsls	r2, r2, #22
20100e78:	059b      	lsls	r3, r3, #22
20100e7a:	0d12      	lsrs	r2, r2, #20
20100e7c:	0d1b      	lsrs	r3, r3, #20
20100e7e:	5816      	ldr	r6, [r2, r0]
20100e80:	581b      	ldr	r3, [r3, r0]
20100e82:	434e      	muls	r6, r1
20100e84:	434b      	muls	r3, r1
20100e86:	12b6      	asrs	r6, r6, #10
20100e88:	1299      	asrs	r1, r3, #10
20100e8a:	1b8b      	subs	r3, r1, r6
20100e8c:	602b      	str	r3, [r5, #0]
20100e8e:	4273      	negs	r3, r6
20100e90:	1a5b      	subs	r3, r3, r1
20100e92:	1871      	adds	r1, r6, r1
20100e94:	606b      	str	r3, [r5, #4]
20100e96:	60a9      	str	r1, [r5, #8]
20100e98:	e789      	b.n	20100dae <svpwm+0x1a2>
20100e9a:	4650      	mov	r0, sl
20100e9c:	5886      	ldr	r6, [r0, r2]
20100e9e:	4a35      	ldr	r2, [pc, #212]	; (20100f74 <svpwm+0x368>)
20100ea0:	1ad2      	subs	r2, r2, r3
20100ea2:	0592      	lsls	r2, r2, #22
20100ea4:	0d12      	lsrs	r2, r2, #20
20100ea6:	5990      	ldr	r0, [r2, r6]
20100ea8:	4a33      	ldr	r2, [pc, #204]	; (20100f78 <svpwm+0x36c>)
20100eaa:	4348      	muls	r0, r1
20100eac:	4694      	mov	ip, r2
20100eae:	4463      	add	r3, ip
20100eb0:	059b      	lsls	r3, r3, #22
20100eb2:	0d1b      	lsrs	r3, r3, #20
20100eb4:	599b      	ldr	r3, [r3, r6]
20100eb6:	1280      	asrs	r0, r0, #10
20100eb8:	4359      	muls	r1, r3
20100eba:	1289      	asrs	r1, r1, #10
20100ebc:	1a43      	subs	r3, r0, r1
20100ebe:	602b      	str	r3, [r5, #0]
20100ec0:	1843      	adds	r3, r0, r1
20100ec2:	4240      	negs	r0, r0
20100ec4:	1a40      	subs	r0, r0, r1
20100ec6:	606b      	str	r3, [r5, #4]
20100ec8:	60a8      	str	r0, [r5, #8]
20100eca:	e770      	b.n	20100dae <svpwm+0x1a2>
20100ecc:	4650      	mov	r0, sl
20100ece:	5880      	ldr	r0, [r0, r2]
20100ed0:	4a2a      	ldr	r2, [pc, #168]	; (20100f7c <svpwm+0x370>)
20100ed2:	1ad2      	subs	r2, r2, r3
20100ed4:	33ac      	adds	r3, #172	; 0xac
20100ed6:	0592      	lsls	r2, r2, #22
20100ed8:	33ff      	adds	r3, #255	; 0xff
20100eda:	0d12      	lsrs	r2, r2, #20
20100edc:	059b      	lsls	r3, r3, #22
20100ede:	5816      	ldr	r6, [r2, r0]
20100ee0:	0d1b      	lsrs	r3, r3, #20
20100ee2:	581b      	ldr	r3, [r3, r0]
20100ee4:	434e      	muls	r6, r1
20100ee6:	4359      	muls	r1, r3
20100ee8:	12b6      	asrs	r6, r6, #10
20100eea:	1289      	asrs	r1, r1, #10
20100eec:	4273      	negs	r3, r6
20100eee:	1a5b      	subs	r3, r3, r1
20100ef0:	602b      	str	r3, [r5, #0]
20100ef2:	1873      	adds	r3, r6, r1
20100ef4:	1b89      	subs	r1, r1, r6
20100ef6:	606b      	str	r3, [r5, #4]
20100ef8:	60a9      	str	r1, [r5, #8]
20100efa:	e758      	b.n	20100dae <svpwm+0x1a2>
20100efc:	4642      	mov	r2, r8
20100efe:	11c9      	asrs	r1, r1, #7
20100f00:	1a50      	subs	r0, r2, r1
20100f02:	69f9      	ldr	r1, [r7, #28]
20100f04:	1a5b      	subs	r3, r3, r1
20100f06:	e71b      	b.n	20100d40 <svpwm+0x134>
20100f08:	4650      	mov	r0, sl
20100f0a:	5882      	ldr	r2, [r0, r2]
20100f0c:	481c      	ldr	r0, [pc, #112]	; (20100f80 <svpwm+0x374>)
20100f0e:	1ac0      	subs	r0, r0, r3
20100f10:	3b55      	subs	r3, #85	; 0x55
20100f12:	0580      	lsls	r0, r0, #22
20100f14:	059b      	lsls	r3, r3, #22
20100f16:	0d00      	lsrs	r0, r0, #20
20100f18:	0d1b      	lsrs	r3, r3, #20
20100f1a:	589b      	ldr	r3, [r3, r2]
20100f1c:	5880      	ldr	r0, [r0, r2]
20100f1e:	4348      	muls	r0, r1
20100f20:	4359      	muls	r1, r3
20100f22:	1280      	asrs	r0, r0, #10
20100f24:	1289      	asrs	r1, r1, #10
20100f26:	1843      	adds	r3, r0, r1
20100f28:	602b      	str	r3, [r5, #0]
20100f2a:	4243      	negs	r3, r0
20100f2c:	1a5b      	subs	r3, r3, r1
20100f2e:	1a41      	subs	r1, r0, r1
20100f30:	606b      	str	r3, [r5, #4]
20100f32:	60a9      	str	r1, [r5, #8]
20100f34:	e73b      	b.n	20100dae <svpwm+0x1a2>
20100f36:	2100      	movs	r1, #0
20100f38:	e703      	b.n	20100d42 <svpwm+0x136>
20100f3a:	4648      	mov	r0, r9
20100f3c:	2101      	movs	r1, #1
20100f3e:	e700      	b.n	20100d42 <svpwm+0x136>
20100f40:	2102      	movs	r1, #2
20100f42:	e6fe      	b.n	20100d42 <svpwm+0x136>
20100f44:	0008      	movs	r0, r1
20100f46:	2103      	movs	r1, #3
20100f48:	e6fb      	b.n	20100d42 <svpwm+0x136>
20100f4a:	2104      	movs	r1, #4
20100f4c:	e6f9      	b.n	20100d42 <svpwm+0x136>
20100f4e:	4648      	mov	r0, r9
20100f50:	2105      	movs	r1, #5
20100f52:	e6f6      	b.n	20100d42 <svpwm+0x136>
20100f54:	4640      	mov	r0, r8
20100f56:	2106      	movs	r1, #6
20100f58:	e6f3      	b.n	20100d42 <svpwm+0x136>
20100f5a:	46c0      	nop			; (mov r8, r8)
20100f5c:	000019fe 	.word	0x000019fe
20100f60:	ffeff460 	.word	0xffeff460
20100f64:	00000000 	.word	0x00000000
20100f68:	000007aa 	.word	0x000007aa
20100f6c:	000009aa 	.word	0x000009aa
20100f70:	00000a54 	.word	0x00000a54
20100f74:	00000854 	.word	0x00000854
20100f78:	00000256 	.word	0x00000256
20100f7c:	000008ff 	.word	0x000008ff
20100f80:	00000aff 	.word	0x00000aff

20100f84 <get_speed>:
20100f84:	4a10      	ldr	r2, [pc, #64]	; (20100fc8 <get_speed+0x44>)
20100f86:	b510      	push	{r4, lr}
20100f88:	447a      	add	r2, pc
20100f8a:	6813      	ldr	r3, [r2, #0]
20100f8c:	6854      	ldr	r4, [r2, #4]
20100f8e:	1ac3      	subs	r3, r0, r3
20100f90:	6050      	str	r0, [r2, #4]
20100f92:	6014      	str	r4, [r2, #0]
20100f94:	17da      	asrs	r2, r3, #31
20100f96:	1898      	adds	r0, r3, r2
20100f98:	4050      	eors	r0, r2
20100f9a:	22fa      	movs	r2, #250	; 0xfa
20100f9c:	0092      	lsls	r2, r2, #2
20100f9e:	4290      	cmp	r0, r2
20100fa0:	dd04      	ble.n	20100fac <get_speed+0x28>
20100fa2:	2b00      	cmp	r3, #0
20100fa4:	db0a      	blt.n	20100fbc <get_speed+0x38>
20100fa6:	4a09      	ldr	r2, [pc, #36]	; (20100fcc <get_speed+0x48>)
20100fa8:	4694      	mov	ip, r2
20100faa:	4463      	add	r3, ip
20100fac:	680a      	ldr	r2, [r1, #0]
20100fae:	4808      	ldr	r0, [pc, #32]	; (20100fd0 <get_speed+0x4c>)
20100fb0:	18d2      	adds	r2, r2, r3
20100fb2:	105b      	asrs	r3, r3, #1
20100fb4:	4343      	muls	r3, r0
20100fb6:	600a      	str	r2, [r1, #0]
20100fb8:	1318      	asrs	r0, r3, #12
20100fba:	bd10      	pop	{r4, pc}
20100fbc:	2280      	movs	r2, #128	; 0x80
20100fbe:	0152      	lsls	r2, r2, #5
20100fc0:	4694      	mov	ip, r2
20100fc2:	4463      	add	r3, ip
20100fc4:	e7f2      	b.n	20100fac <get_speed+0x28>
20100fc6:	46c0      	nop			; (mov r8, r8)
20100fc8:	ffeff134 	.word	0xffeff134
20100fcc:	fffff000 	.word	0xfffff000
20100fd0:	0002ae7c 	.word	0x0002ae7c

20100fd4 <c_mfilter>:
20100fd4:	221f      	movs	r2, #31
20100fd6:	4908      	ldr	r1, [pc, #32]	; (20100ff8 <c_mfilter+0x24>)
20100fd8:	b510      	push	{r4, lr}
20100fda:	4479      	add	r1, pc
20100fdc:	688b      	ldr	r3, [r1, #8]
20100fde:	3301      	adds	r3, #1
20100fe0:	4013      	ands	r3, r2
20100fe2:	608b      	str	r3, [r1, #8]
20100fe4:	009b      	lsls	r3, r3, #2
20100fe6:	18cb      	adds	r3, r1, r3
20100fe8:	68ca      	ldr	r2, [r1, #12]
20100fea:	691c      	ldr	r4, [r3, #16]
20100fec:	6118      	str	r0, [r3, #16]
20100fee:	1b12      	subs	r2, r2, r4
20100ff0:	1812      	adds	r2, r2, r0
20100ff2:	1150      	asrs	r0, r2, #5
20100ff4:	60ca      	str	r2, [r1, #12]
20100ff6:	bd10      	pop	{r4, pc}
20100ff8:	ffeff0e2 	.word	0xffeff0e2

20100ffc <rfilter1>:
20100ffc:	490e      	ldr	r1, [pc, #56]	; (20101038 <rfilter1+0x3c>)
20100ffe:	b570      	push	{r4, r5, r6, lr}
20101000:	4479      	add	r1, pc
20101002:	0006      	movs	r6, r0
20101004:	4b0d      	ldr	r3, [pc, #52]	; (2010103c <rfilter1+0x40>)
20101006:	6988      	ldr	r0, [r1, #24]
20101008:	4a0d      	ldr	r2, [pc, #52]	; (20101040 <rfilter1+0x44>)
2010100a:	4358      	muls	r0, r3
2010100c:	0013      	movs	r3, r2
2010100e:	690c      	ldr	r4, [r1, #16]
20101010:	4a0c      	ldr	r2, [pc, #48]	; (20101044 <rfilter1+0x48>)
20101012:	4363      	muls	r3, r4
20101014:	4372      	muls	r2, r6
20101016:	18c3      	adds	r3, r0, r3
20101018:	694d      	ldr	r5, [r1, #20]
2010101a:	189b      	adds	r3, r3, r2
2010101c:	4a0a      	ldr	r2, [pc, #40]	; (20101048 <rfilter1+0x4c>)
2010101e:	69c8      	ldr	r0, [r1, #28]
20101020:	436a      	muls	r2, r5
20101022:	189b      	adds	r3, r3, r2
20101024:	4a09      	ldr	r2, [pc, #36]	; (2010104c <rfilter1+0x50>)
20101026:	61cd      	str	r5, [r1, #28]
20101028:	4342      	muls	r2, r0
2010102a:	189b      	adds	r3, r3, r2
2010102c:	1358      	asrs	r0, r3, #13
2010102e:	614e      	str	r6, [r1, #20]
20101030:	618c      	str	r4, [r1, #24]
20101032:	6108      	str	r0, [r1, #16]
20101034:	bd70      	pop	{r4, r5, r6, pc}
20101036:	46c0      	nop			; (mov r8, r8)
20101038:	ffeff13c 	.word	0xffeff13c
2010103c:	ffffe189 	.word	0xffffe189
20101040:	00003e41 	.word	0x00003e41
20101044:	00001fab 	.word	0x00001fab
20101048:	ffffc1bf 	.word	0xffffc1bf
2010104c:	00001ecb 	.word	0x00001ecb

20101050 <rfilter2>:
20101050:	490e      	ldr	r1, [pc, #56]	; (2010108c <rfilter2+0x3c>)
20101052:	b570      	push	{r4, r5, r6, lr}
20101054:	4479      	add	r1, pc
20101056:	0006      	movs	r6, r0
20101058:	4b0d      	ldr	r3, [pc, #52]	; (20101090 <rfilter2+0x40>)
2010105a:	6a88      	ldr	r0, [r1, #40]	; 0x28
2010105c:	4a0d      	ldr	r2, [pc, #52]	; (20101094 <rfilter2+0x44>)
2010105e:	4358      	muls	r0, r3
20101060:	0013      	movs	r3, r2
20101062:	6a0c      	ldr	r4, [r1, #32]
20101064:	4a0c      	ldr	r2, [pc, #48]	; (20101098 <rfilter2+0x48>)
20101066:	4363      	muls	r3, r4
20101068:	4372      	muls	r2, r6
2010106a:	18c3      	adds	r3, r0, r3
2010106c:	6a4d      	ldr	r5, [r1, #36]	; 0x24
2010106e:	189b      	adds	r3, r3, r2
20101070:	4a0a      	ldr	r2, [pc, #40]	; (2010109c <rfilter2+0x4c>)
20101072:	6ac8      	ldr	r0, [r1, #44]	; 0x2c
20101074:	436a      	muls	r2, r5
20101076:	189b      	adds	r3, r3, r2
20101078:	4a09      	ldr	r2, [pc, #36]	; (201010a0 <rfilter2+0x50>)
2010107a:	62cd      	str	r5, [r1, #44]	; 0x2c
2010107c:	4342      	muls	r2, r0
2010107e:	189b      	adds	r3, r3, r2
20101080:	1358      	asrs	r0, r3, #13
20101082:	624e      	str	r6, [r1, #36]	; 0x24
20101084:	628c      	str	r4, [r1, #40]	; 0x28
20101086:	6208      	str	r0, [r1, #32]
20101088:	bd70      	pop	{r4, r5, r6, pc}
2010108a:	46c0      	nop			; (mov r8, r8)
2010108c:	ffeff0e8 	.word	0xffeff0e8
20101090:	ffffe702 	.word	0xffffe702
20101094:	0000388b 	.word	0x0000388b
20101098:	00001e13 	.word	0x00001e13
2010109c:	ffffc775 	.word	0xffffc775
201010a0:	00001aeb 	.word	0x00001aeb

201010a4 <adc_dma_init>:
201010a4:	b580      	push	{r7, lr}
201010a6:	af00      	add	r7, sp, #0
201010a8:	4b1c      	ldr	r3, [pc, #112]	; (2010111c <adc_dma_init+0x78>)
201010aa:	4a1c      	ldr	r2, [pc, #112]	; (2010111c <adc_dma_init+0x78>)
201010ac:	69d2      	ldr	r2, [r2, #28]
201010ae:	2120      	movs	r1, #32
201010b0:	430a      	orrs	r2, r1
201010b2:	61da      	str	r2, [r3, #28]
201010b4:	4b1a      	ldr	r3, [pc, #104]	; (20101120 <adc_dma_init+0x7c>)
201010b6:	4a1b      	ldr	r2, [pc, #108]	; (20101124 <adc_dma_init+0x80>)
201010b8:	447a      	add	r2, pc
201010ba:	609a      	str	r2, [r3, #8]
201010bc:	4b18      	ldr	r3, [pc, #96]	; (20101120 <adc_dma_init+0x7c>)
201010be:	2201      	movs	r2, #1
201010c0:	4252      	negs	r2, r2
201010c2:	62da      	str	r2, [r3, #44]	; 0x2c
201010c4:	4b16      	ldr	r3, [pc, #88]	; (20101120 <adc_dma_init+0x7c>)
201010c6:	2201      	movs	r2, #1
201010c8:	4252      	negs	r2, r2
201010ca:	621a      	str	r2, [r3, #32]
201010cc:	4b14      	ldr	r3, [pc, #80]	; (20101120 <adc_dma_init+0x7c>)
201010ce:	2201      	movs	r2, #1
201010d0:	4252      	negs	r2, r2
201010d2:	635a      	str	r2, [r3, #52]	; 0x34
201010d4:	4b12      	ldr	r3, [pc, #72]	; (20101120 <adc_dma_init+0x7c>)
201010d6:	2280      	movs	r2, #128	; 0x80
201010d8:	05d2      	lsls	r2, r2, #23
201010da:	61da      	str	r2, [r3, #28]
201010dc:	4b10      	ldr	r3, [pc, #64]	; (20101120 <adc_dma_init+0x7c>)
201010de:	2280      	movs	r2, #128	; 0x80
201010e0:	05d2      	lsls	r2, r2, #23
201010e2:	625a      	str	r2, [r3, #36]	; 0x24
201010e4:	4b0e      	ldr	r3, [pc, #56]	; (20101120 <adc_dma_init+0x7c>)
201010e6:	2201      	movs	r2, #1
201010e8:	605a      	str	r2, [r3, #4]
201010ea:	4a0f      	ldr	r2, [pc, #60]	; (20101128 <adc_dma_init+0x84>)
201010ec:	447a      	add	r2, pc
201010ee:	23f0      	movs	r3, #240	; 0xf0
201010f0:	005b      	lsls	r3, r3, #1
201010f2:	490e      	ldr	r1, [pc, #56]	; (2010112c <adc_dma_init+0x88>)
201010f4:	50d1      	str	r1, [r2, r3]
201010f6:	4b0e      	ldr	r3, [pc, #56]	; (20101130 <adc_dma_init+0x8c>)
201010f8:	447b      	add	r3, pc
201010fa:	330c      	adds	r3, #12
201010fc:	0019      	movs	r1, r3
201010fe:	4a0d      	ldr	r2, [pc, #52]	; (20101134 <adc_dma_init+0x90>)
20101100:	447a      	add	r2, pc
20101102:	23f2      	movs	r3, #242	; 0xf2
20101104:	005b      	lsls	r3, r3, #1
20101106:	50d1      	str	r1, [r2, r3]
20101108:	4a0b      	ldr	r2, [pc, #44]	; (20101138 <adc_dma_init+0x94>)
2010110a:	447a      	add	r2, pc
2010110c:	23f4      	movs	r3, #244	; 0xf4
2010110e:	005b      	lsls	r3, r3, #1
20101110:	490a      	ldr	r1, [pc, #40]	; (2010113c <adc_dma_init+0x98>)
20101112:	50d1      	str	r1, [r2, r3]
20101114:	46c0      	nop			; (mov r8, r8)
20101116:	46bd      	mov	sp, r7
20101118:	bd80      	pop	{r7, pc}
2010111a:	46c0      	nop			; (mov r8, r8)
2010111c:	40020000 	.word	0x40020000
20101120:	40028000 	.word	0x40028000
20101124:	00000344 	.word	0x00000344
20101128:	00000310 	.word	0x00000310
2010112c:	40088018 	.word	0x40088018
20101130:	00000504 	.word	0x00000504
20101134:	000002fc 	.word	0x000002fc
20101138:	000002f2 	.word	0x000002f2
2010113c:	ae000031 	.word	0xae000031

20101140 <adc_dma_start>:
20101140:	b580      	push	{r7, lr}
20101142:	af00      	add	r7, sp, #0
20101144:	4b06      	ldr	r3, [pc, #24]	; (20101160 <adc_dma_start+0x20>)
20101146:	4a06      	ldr	r2, [pc, #24]	; (20101160 <adc_dma_start+0x20>)
20101148:	6812      	ldr	r2, [r2, #0]
2010114a:	2108      	movs	r1, #8
2010114c:	430a      	orrs	r2, r1
2010114e:	601a      	str	r2, [r3, #0]
20101150:	4b04      	ldr	r3, [pc, #16]	; (20101164 <adc_dma_start+0x24>)
20101152:	2280      	movs	r2, #128	; 0x80
20101154:	05d2      	lsls	r2, r2, #23
20101156:	629a      	str	r2, [r3, #40]	; 0x28
20101158:	46c0      	nop			; (mov r8, r8)
2010115a:	46bd      	mov	sp, r7
2010115c:	bd80      	pop	{r7, pc}
2010115e:	46c0      	nop			; (mov r8, r8)
20101160:	40088000 	.word	0x40088000
20101164:	40028000 	.word	0x40028000

20101168 <adc_dma_wait>:
20101168:	b580      	push	{r7, lr}
2010116a:	af00      	add	r7, sp, #0
2010116c:	46c0      	nop			; (mov r8, r8)
2010116e:	4a0b      	ldr	r2, [pc, #44]	; (2010119c <adc_dma_wait+0x34>)
20101170:	447a      	add	r2, pc
20101172:	23f4      	movs	r3, #244	; 0xf4
20101174:	005b      	lsls	r3, r3, #1
20101176:	58d3      	ldr	r3, [r2, r3]
20101178:	2207      	movs	r2, #7
2010117a:	4013      	ands	r3, r2
2010117c:	d1f7      	bne.n	2010116e <adc_dma_wait+0x6>
2010117e:	4b08      	ldr	r3, [pc, #32]	; (201011a0 <adc_dma_wait+0x38>)
20101180:	4a07      	ldr	r2, [pc, #28]	; (201011a0 <adc_dma_wait+0x38>)
20101182:	6812      	ldr	r2, [r2, #0]
20101184:	2108      	movs	r1, #8
20101186:	438a      	bics	r2, r1
20101188:	601a      	str	r2, [r3, #0]
2010118a:	4a06      	ldr	r2, [pc, #24]	; (201011a4 <adc_dma_wait+0x3c>)
2010118c:	447a      	add	r2, pc
2010118e:	23f4      	movs	r3, #244	; 0xf4
20101190:	005b      	lsls	r3, r3, #1
20101192:	4905      	ldr	r1, [pc, #20]	; (201011a8 <adc_dma_wait+0x40>)
20101194:	50d1      	str	r1, [r2, r3]
20101196:	46c0      	nop			; (mov r8, r8)
20101198:	46bd      	mov	sp, r7
2010119a:	bd80      	pop	{r7, pc}
2010119c:	0000028c 	.word	0x0000028c
201011a0:	40088000 	.word	0x40088000
201011a4:	00000270 	.word	0x00000270
201011a8:	ae000031 	.word	0xae000031
201011ac:	00000000 	.word	0x00000000

201011b0 <asm_test_loop>:
201011b0:	b5f0      	push	{r4, r5, r6, r7, lr}
201011b2:	6803      	ldr	r3, [r0, #0]
201011b4:	17dc      	asrs	r4, r3, #31
201011b6:	191b      	adds	r3, r3, r4
201011b8:	4063      	eors	r3, r4
201011ba:	6844      	ldr	r4, [r0, #4]
201011bc:	4040      	eors	r0, r0
201011be:	407f      	eors	r7, r7
201011c0:	1c1d      	adds	r5, r3, #0
201011c2:	1c24      	adds	r4, r4, #0
201011c4:	dd01      	ble.n	201011ca <ylesseq>
201011c6:	191b      	adds	r3, r3, r4
201011c8:	1b64      	subs	r4, r4, r5

201011ca <ylesseq>:
201011ca:	1b1b      	subs	r3, r3, r4
201011cc:	1964      	adds	r4, r4, r5
201011ce:	bdf0      	pop	{r4, r5, r6, r7, pc}

201011d0 <AngTable>:
201011d0:	00000080 	.word	0x00000080
201011d4:	0000004c 	.word	0x0000004c
201011d8:	00000028 	.word	0x00000028
201011dc:	00000014 	.word	0x00000014
201011e0:	0000000a 	.word	0x0000000a
201011e4:	00000005 	.word	0x00000005
201011e8:	00000003 	.word	0x00000003
201011ec:	00000001 	.word	0x00000001

201011f0 <kc>:
201011f0:	000002d4 	.word	0x000002d4
201011f4:	00000288 	.word	0x00000288
201011f8:	00000274 	.word	0x00000274
201011fc:	0000026f 	.word	0x0000026f
20101200:	0000026f 	.word	0x0000026f
20101204:	0000026e 	.word	0x0000026e
20101208:	0000026e 	.word	0x0000026e
2010120c:	0000026e 	.word	0x0000026e

20101210 <abc_to_dq>:
20101210:	b570      	push	{r4, r5, r6, lr}
20101212:	4b49      	ldr	r3, [pc, #292]	; (20101338 <dot3+0x1c>)
20101214:	0092      	lsls	r2, r2, #2
20101216:	589c      	ldr	r4, [r3, r2]
20101218:	6805      	ldr	r5, [r0, #0]
2010121a:	436c      	muls	r4, r5
2010121c:	4e31      	ldr	r6, [pc, #196]	; (201012e4 <P_4PI3>)
2010121e:	18b6      	adds	r6, r6, r2
20101220:	4d34      	ldr	r5, [pc, #208]	; (201012f4 <MASK1023>)
20101222:	4035      	ands	r5, r6
20101224:	595e      	ldr	r6, [r3, r5]
20101226:	6845      	ldr	r5, [r0, #4]
20101228:	4375      	muls	r5, r6
2010122a:	1964      	adds	r4, r4, r5
2010122c:	4e2e      	ldr	r6, [pc, #184]	; (201012e8 <P_2PI3>)
2010122e:	18b6      	adds	r6, r6, r2
20101230:	4d30      	ldr	r5, [pc, #192]	; (201012f4 <MASK1023>)
20101232:	4035      	ands	r5, r6
20101234:	595e      	ldr	r6, [r3, r5]
20101236:	6885      	ldr	r5, [r0, #8]
20101238:	4375      	muls	r5, r6
2010123a:	1964      	adds	r4, r4, r5
2010123c:	12a4      	asrs	r4, r4, #10
2010123e:	600c      	str	r4, [r1, #0]
20101240:	4e27      	ldr	r6, [pc, #156]	; (201012e0 <P_3PI2>)
20101242:	18b6      	adds	r6, r6, r2
20101244:	4d2b      	ldr	r5, [pc, #172]	; (201012f4 <MASK1023>)
20101246:	4035      	ands	r5, r6
20101248:	595e      	ldr	r6, [r3, r5]
2010124a:	6804      	ldr	r4, [r0, #0]
2010124c:	4374      	muls	r4, r6
2010124e:	4e27      	ldr	r6, [pc, #156]	; (201012ec <P_4PI33PI2>)
20101250:	18b6      	adds	r6, r6, r2
20101252:	4d28      	ldr	r5, [pc, #160]	; (201012f4 <MASK1023>)
20101254:	4035      	ands	r5, r6
20101256:	595e      	ldr	r6, [r3, r5]
20101258:	6845      	ldr	r5, [r0, #4]
2010125a:	4375      	muls	r5, r6
2010125c:	1964      	adds	r4, r4, r5
2010125e:	4e24      	ldr	r6, [pc, #144]	; (201012f0 <P_2PI33PI2>)
20101260:	18b6      	adds	r6, r6, r2
20101262:	4d24      	ldr	r5, [pc, #144]	; (201012f4 <MASK1023>)
20101264:	4035      	ands	r5, r6
20101266:	595e      	ldr	r6, [r3, r5]
20101268:	6885      	ldr	r5, [r0, #8]
2010126a:	4375      	muls	r5, r6
2010126c:	1964      	adds	r4, r4, r5
2010126e:	12a4      	asrs	r4, r4, #10
20101270:	4076      	eors	r6, r6
20101272:	1b36      	subs	r6, r6, r4
20101274:	604e      	str	r6, [r1, #4]
20101276:	bd70      	pop	{r4, r5, r6, pc}

20101278 <dq_to_abc>:
20101278:	b570      	push	{r4, r5, r6, lr}
2010127a:	4b2f      	ldr	r3, [pc, #188]	; (20101338 <dot3+0x1c>)
2010127c:	0092      	lsls	r2, r2, #2
2010127e:	589c      	ldr	r4, [r3, r2]
20101280:	680d      	ldr	r5, [r1, #0]
20101282:	436c      	muls	r4, r5
20101284:	4e16      	ldr	r6, [pc, #88]	; (201012e0 <P_3PI2>)
20101286:	18b6      	adds	r6, r6, r2
20101288:	4d1a      	ldr	r5, [pc, #104]	; (201012f4 <MASK1023>)
2010128a:	4035      	ands	r5, r6
2010128c:	595e      	ldr	r6, [r3, r5]
2010128e:	684d      	ldr	r5, [r1, #4]
20101290:	4375      	muls	r5, r6
20101292:	1b64      	subs	r4, r4, r5
20101294:	1524      	asrs	r4, r4, #20
20101296:	6004      	str	r4, [r0, #0]
20101298:	4e12      	ldr	r6, [pc, #72]	; (201012e4 <P_4PI3>)
2010129a:	18b6      	adds	r6, r6, r2
2010129c:	4d15      	ldr	r5, [pc, #84]	; (201012f4 <MASK1023>)
2010129e:	4035      	ands	r5, r6
201012a0:	595c      	ldr	r4, [r3, r5]
201012a2:	680d      	ldr	r5, [r1, #0]
201012a4:	436c      	muls	r4, r5
201012a6:	4e11      	ldr	r6, [pc, #68]	; (201012ec <P_4PI33PI2>)
201012a8:	18b6      	adds	r6, r6, r2
201012aa:	4d12      	ldr	r5, [pc, #72]	; (201012f4 <MASK1023>)
201012ac:	4035      	ands	r5, r6
201012ae:	595e      	ldr	r6, [r3, r5]
201012b0:	684d      	ldr	r5, [r1, #4]
201012b2:	4375      	muls	r5, r6
201012b4:	1b64      	subs	r4, r4, r5
201012b6:	1524      	asrs	r4, r4, #20
201012b8:	6044      	str	r4, [r0, #4]
201012ba:	4e0b      	ldr	r6, [pc, #44]	; (201012e8 <P_2PI3>)
201012bc:	18b6      	adds	r6, r6, r2
201012be:	4d0d      	ldr	r5, [pc, #52]	; (201012f4 <MASK1023>)
201012c0:	4035      	ands	r5, r6
201012c2:	595c      	ldr	r4, [r3, r5]
201012c4:	680d      	ldr	r5, [r1, #0]
201012c6:	436c      	muls	r4, r5
201012c8:	4e09      	ldr	r6, [pc, #36]	; (201012f0 <P_2PI33PI2>)
201012ca:	18b6      	adds	r6, r6, r2
201012cc:	4d09      	ldr	r5, [pc, #36]	; (201012f4 <MASK1023>)
201012ce:	4035      	ands	r5, r6
201012d0:	595e      	ldr	r6, [r3, r5]
201012d2:	684d      	ldr	r5, [r1, #4]
201012d4:	4375      	muls	r5, r6
201012d6:	1b64      	subs	r4, r4, r5
201012d8:	1524      	asrs	r4, r4, #20
201012da:	6084      	str	r4, [r0, #8]
201012dc:	bd70      	pop	{r4, r5, r6, pc}
201012de:	46c0      	nop			; (mov r8, r8)

201012e0 <P_3PI2>:
201012e0:	00000c00 	.word	0x00000c00

201012e4 <P_4PI3>:
201012e4:	00000aaa 	.word	0x00000aaa

201012e8 <P_2PI3>:
201012e8:	00000555 	.word	0x00000555

201012ec <P_4PI33PI2>:
201012ec:	000016aa 	.word	0x000016aa

201012f0 <P_2PI33PI2>:
201012f0:	00001155 	.word	0x00001155

201012f4 <MASK1023>:
201012f4:	00000ffc 	.word	0x00000ffc

201012f8 <mfilter>:
201012f8:	4910      	ldr	r1, [pc, #64]	; (2010133c <dot3+0x20>)
201012fa:	680a      	ldr	r2, [r1, #0]
201012fc:	3201      	adds	r2, #1
201012fe:	231f      	movs	r3, #31
20101300:	401a      	ands	r2, r3
20101302:	600a      	str	r2, [r1, #0]
20101304:	490e      	ldr	r1, [pc, #56]	; (20101340 <dot3+0x24>)
20101306:	0092      	lsls	r2, r2, #2
20101308:	1889      	adds	r1, r1, r2
2010130a:	680a      	ldr	r2, [r1, #0]
2010130c:	6008      	str	r0, [r1, #0]
2010130e:	1a80      	subs	r0, r0, r2
20101310:	490c      	ldr	r1, [pc, #48]	; (20101344 <dot3+0x28>)
20101312:	680a      	ldr	r2, [r1, #0]
20101314:	1880      	adds	r0, r0, r2
20101316:	6008      	str	r0, [r1, #0]
20101318:	1140      	asrs	r0, r0, #5
2010131a:	46f7      	mov	pc, lr

2010131c <dot3>:
2010131c:	b580      	push	{r7, lr}
2010131e:	6802      	ldr	r2, [r0, #0]
20101320:	680b      	ldr	r3, [r1, #0]
20101322:	435a      	muls	r2, r3
20101324:	1c17      	adds	r7, r2, #0
20101326:	6842      	ldr	r2, [r0, #4]
20101328:	684b      	ldr	r3, [r1, #4]
2010132a:	435a      	muls	r2, r3
2010132c:	18bf      	adds	r7, r7, r2
2010132e:	6880      	ldr	r0, [r0, #8]
20101330:	688b      	ldr	r3, [r1, #8]
20101332:	4358      	muls	r0, r3
20101334:	1838      	adds	r0, r7, r0
20101336:	bd80      	pop	{r7, pc}
20101338:	20101620 	.word	0x20101620
2010133c:	20000008 	.word	0x20000008
20101340:	2000000c 	.word	0x2000000c
20101344:	20000004 	.word	0x20000004

20101348 <__gnu_thumb1_case_uqi>:
20101348:	b402      	push	{r1}
2010134a:	4671      	mov	r1, lr
2010134c:	0849      	lsrs	r1, r1, #1
2010134e:	0049      	lsls	r1, r1, #1
20101350:	5c09      	ldrb	r1, [r1, r0]
20101352:	0049      	lsls	r1, r1, #1
20101354:	448e      	add	lr, r1
20101356:	bc02      	pop	{r1}
20101358:	4770      	bx	lr
2010135a:	46c0      	nop			; (mov r8, r8)
	...

20101400 <dma_ctr_str>:
	...

20101600 <adc_dma_buffer>:
	...
