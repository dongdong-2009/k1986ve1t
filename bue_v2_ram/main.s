
bue.elf:     file format elf32-littlearm


Disassembly of section .text:

20100000 <main>:
20100000:	b590      	push	{r4, r7, lr}
20100002:	b09f      	sub	sp, #124	; 0x7c
20100004:	af00      	add	r7, sp, #0
20100006:	4c3e      	ldr	r4, [pc, #248]	; (20100100 <main+0x100>)
20100008:	447c      	add	r4, pc
2010000a:	2300      	movs	r3, #0
2010000c:	677b      	str	r3, [r7, #116]	; 0x74
2010000e:	2300      	movs	r3, #0
20100010:	673b      	str	r3, [r7, #112]	; 0x70
20100012:	2300      	movs	r3, #0
20100014:	66fb      	str	r3, [r7, #108]	; 0x6c
20100016:	2300      	movs	r3, #0
20100018:	66bb      	str	r3, [r7, #104]	; 0x68
2010001a:	2300      	movs	r3, #0
2010001c:	667b      	str	r3, [r7, #100]	; 0x64
2010001e:	2300      	movs	r3, #0
20100020:	663b      	str	r3, [r7, #96]	; 0x60
20100022:	2300      	movs	r3, #0
20100024:	65fb      	str	r3, [r7, #92]	; 0x5c
20100026:	23fa      	movs	r3, #250	; 0xfa
20100028:	009b      	lsls	r3, r3, #2
2010002a:	65bb      	str	r3, [r7, #88]	; 0x58
2010002c:	2300      	movs	r3, #0
2010002e:	603b      	str	r3, [r7, #0]
20100030:	f000 fade 	bl	201005f0 <SystemInit>
20100034:	2334      	movs	r3, #52	; 0x34
20100036:	18fb      	adds	r3, r7, r3
20100038:	22c8      	movs	r2, #200	; 0xc8
2010003a:	21c8      	movs	r1, #200	; 0xc8
2010003c:	0018      	movs	r0, r3
2010003e:	f000 fb2b 	bl	20100698 <reg_init>
20100042:	2324      	movs	r3, #36	; 0x24
20100044:	18fb      	adds	r3, r7, r3
20100046:	22c8      	movs	r2, #200	; 0xc8
20100048:	21c8      	movs	r1, #200	; 0xc8
2010004a:	0018      	movs	r0, r3
2010004c:	f000 fb24 	bl	20100698 <reg_init>
20100050:	23fa      	movs	r3, #250	; 0xfa
20100052:	009a      	lsls	r2, r3, #2
20100054:	2314      	movs	r3, #20
20100056:	18fb      	adds	r3, r7, r3
20100058:	2100      	movs	r1, #0
2010005a:	0018      	movs	r0, r3
2010005c:	f000 fb1c 	bl	20100698 <reg_init>
20100060:	23fa      	movs	r3, #250	; 0xfa
20100062:	009a      	lsls	r2, r3, #2
20100064:	1d3b      	adds	r3, r7, #4
20100066:	2100      	movs	r1, #0
20100068:	0018      	movs	r0, r3
2010006a:	f000 fb15 	bl	20100698 <reg_init>
2010006e:	4b25      	ldr	r3, [pc, #148]	; (20100104 <main+0x104>)
20100070:	447b      	add	r3, pc
20100072:	2200      	movs	r2, #0
20100074:	601a      	str	r2, [r3, #0]
20100076:	f000 facf 	bl	20100618 <timer_wait>
2010007a:	f000 ff23 	bl	20100ec4 <adc_dma_start>
2010007e:	f000 ff35 	bl	20100eec <adc_dma_wait>
20100082:	4a21      	ldr	r2, [pc, #132]	; (20100108 <main+0x108>)
20100084:	4b21      	ldr	r3, [pc, #132]	; (2010010c <main+0x10c>)
20100086:	58e3      	ldr	r3, [r4, r3]
20100088:	68db      	ldr	r3, [r3, #12]
2010008a:	051b      	lsls	r3, r3, #20
2010008c:	0d1b      	lsrs	r3, r3, #20
2010008e:	6053      	str	r3, [r2, #4]
20100090:	4b1f      	ldr	r3, [pc, #124]	; (20100110 <main+0x110>)
20100092:	4a1f      	ldr	r2, [pc, #124]	; (20100110 <main+0x110>)
20100094:	6812      	ldr	r2, [r2, #0]
20100096:	2140      	movs	r1, #64	; 0x40
20100098:	430a      	orrs	r2, r1
2010009a:	601a      	str	r2, [r3, #0]
2010009c:	2005      	movs	r0, #5
2010009e:	f000 fe83 	bl	20100da8 <c_mfilter>
201000a2:	4b1b      	ldr	r3, [pc, #108]	; (20100110 <main+0x110>)
201000a4:	4a1a      	ldr	r2, [pc, #104]	; (20100110 <main+0x110>)
201000a6:	6812      	ldr	r2, [r2, #0]
201000a8:	2140      	movs	r1, #64	; 0x40
201000aa:	438a      	bics	r2, r1
201000ac:	601a      	str	r2, [r3, #0]
201000ae:	2350      	movs	r3, #80	; 0x50
201000b0:	18fb      	adds	r3, r7, r3
201000b2:	228c      	movs	r2, #140	; 0x8c
201000b4:	02d2      	lsls	r2, r2, #11
201000b6:	601a      	str	r2, [r3, #0]
201000b8:	2350      	movs	r3, #80	; 0x50
201000ba:	18fb      	adds	r3, r7, r3
201000bc:	22f0      	movs	r2, #240	; 0xf0
201000be:	0252      	lsls	r2, r2, #9
201000c0:	605a      	str	r2, [r3, #4]
201000c2:	23c8      	movs	r3, #200	; 0xc8
201000c4:	005a      	lsls	r2, r3, #1
201000c6:	2350      	movs	r3, #80	; 0x50
201000c8:	18f9      	adds	r1, r7, r3
201000ca:	2344      	movs	r3, #68	; 0x44
201000cc:	18fb      	adds	r3, r7, r3
201000ce:	0018      	movs	r0, r3
201000d0:	f000 ff2e 	bl	20100f30 <asm_dq_to_abc>
201000d4:	2350      	movs	r3, #80	; 0x50
201000d6:	18fb      	adds	r3, r7, r3
201000d8:	228c      	movs	r2, #140	; 0x8c
201000da:	02d2      	lsls	r2, r2, #11
201000dc:	601a      	str	r2, [r3, #0]
201000de:	2350      	movs	r3, #80	; 0x50
201000e0:	18fb      	adds	r3, r7, r3
201000e2:	22f0      	movs	r2, #240	; 0xf0
201000e4:	0252      	lsls	r2, r2, #9
201000e6:	605a      	str	r2, [r3, #4]
201000e8:	23c8      	movs	r3, #200	; 0xc8
201000ea:	005a      	lsls	r2, r3, #1
201000ec:	2350      	movs	r3, #80	; 0x50
201000ee:	18f9      	adds	r1, r7, r3
201000f0:	2344      	movs	r3, #68	; 0x44
201000f2:	18fb      	adds	r3, r7, r3
201000f4:	0018      	movs	r0, r3
201000f6:	f000 fb8f 	bl	20100818 <dq_to_abc>
201000fa:	2300      	movs	r3, #0
201000fc:	677b      	str	r3, [r7, #116]	; 0x74
201000fe:	e7ba      	b.n	20100076 <main+0x76>
20100100:	fff00080 	.word	0xfff00080
20100104:	fff0002c 	.word	0xfff0002c
20100108:	40090000 	.word	0x40090000
2010010c:	00000004 	.word	0x00000004
20100110:	400b8000 	.word	0x400b8000

20100114 <sleep>:
20100114:	b580      	push	{r7, lr}
20100116:	b084      	sub	sp, #16
20100118:	af00      	add	r7, sp, #0
2010011a:	6078      	str	r0, [r7, #4]
2010011c:	2300      	movs	r3, #0
2010011e:	60fb      	str	r3, [r7, #12]
20100120:	e00b      	b.n	2010013a <sleep+0x26>
20100122:	46c0      	nop			; (mov r8, r8)
20100124:	4b09      	ldr	r3, [pc, #36]	; (2010014c <sleep+0x38>)
20100126:	6d5b      	ldr	r3, [r3, #84]	; 0x54
20100128:	2202      	movs	r2, #2
2010012a:	4013      	ands	r3, r2
2010012c:	d0fa      	beq.n	20100124 <sleep+0x10>
2010012e:	4b07      	ldr	r3, [pc, #28]	; (2010014c <sleep+0x38>)
20100130:	2200      	movs	r2, #0
20100132:	655a      	str	r2, [r3, #84]	; 0x54
20100134:	68fb      	ldr	r3, [r7, #12]
20100136:	3301      	adds	r3, #1
20100138:	60fb      	str	r3, [r7, #12]
2010013a:	68fa      	ldr	r2, [r7, #12]
2010013c:	687b      	ldr	r3, [r7, #4]
2010013e:	429a      	cmp	r2, r3
20100140:	d3ef      	bcc.n	20100122 <sleep+0xe>
20100142:	46c0      	nop			; (mov r8, r8)
20100144:	0018      	movs	r0, r3
20100146:	46bd      	mov	sp, r7
20100148:	b004      	add	sp, #16
2010014a:	bd80      	pop	{r7, pc}
2010014c:	40098000 	.word	0x40098000

20100150 <PortConfig>:
20100150:	b580      	push	{r7, lr}
20100152:	af00      	add	r7, sp, #0
20100154:	4b42      	ldr	r3, [pc, #264]	; (20100260 <PortConfig+0x110>)
20100156:	4a42      	ldr	r2, [pc, #264]	; (20100260 <PortConfig+0x110>)
20100158:	69d2      	ldr	r2, [r2, #28]
2010015a:	2180      	movs	r1, #128	; 0x80
2010015c:	0389      	lsls	r1, r1, #14
2010015e:	430a      	orrs	r2, r1
20100160:	61da      	str	r2, [r3, #28]
20100162:	4b40      	ldr	r3, [pc, #256]	; (20100264 <PortConfig+0x114>)
20100164:	4a3f      	ldr	r2, [pc, #252]	; (20100264 <PortConfig+0x114>)
20100166:	6892      	ldr	r2, [r2, #8]
20100168:	493f      	ldr	r1, [pc, #252]	; (20100268 <PortConfig+0x118>)
2010016a:	400a      	ands	r2, r1
2010016c:	609a      	str	r2, [r3, #8]
2010016e:	4b3d      	ldr	r3, [pc, #244]	; (20100264 <PortConfig+0x114>)
20100170:	4a3c      	ldr	r2, [pc, #240]	; (20100264 <PortConfig+0x114>)
20100172:	6892      	ldr	r2, [r2, #8]
20100174:	493d      	ldr	r1, [pc, #244]	; (2010026c <PortConfig+0x11c>)
20100176:	430a      	orrs	r2, r1
20100178:	609a      	str	r2, [r3, #8]
2010017a:	4b3a      	ldr	r3, [pc, #232]	; (20100264 <PortConfig+0x114>)
2010017c:	4a39      	ldr	r2, [pc, #228]	; (20100264 <PortConfig+0x114>)
2010017e:	6852      	ldr	r2, [r2, #4]
20100180:	21fc      	movs	r1, #252	; 0xfc
20100182:	0109      	lsls	r1, r1, #4
20100184:	430a      	orrs	r2, r1
20100186:	605a      	str	r2, [r3, #4]
20100188:	4b36      	ldr	r3, [pc, #216]	; (20100264 <PortConfig+0x114>)
2010018a:	4a36      	ldr	r2, [pc, #216]	; (20100264 <PortConfig+0x114>)
2010018c:	68d2      	ldr	r2, [r2, #12]
2010018e:	21fc      	movs	r1, #252	; 0xfc
20100190:	0109      	lsls	r1, r1, #4
20100192:	430a      	orrs	r2, r1
20100194:	60da      	str	r2, [r3, #12]
20100196:	4b33      	ldr	r3, [pc, #204]	; (20100264 <PortConfig+0x114>)
20100198:	4a32      	ldr	r2, [pc, #200]	; (20100264 <PortConfig+0x114>)
2010019a:	6992      	ldr	r2, [r2, #24]
2010019c:	4934      	ldr	r1, [pc, #208]	; (20100270 <PortConfig+0x120>)
2010019e:	430a      	orrs	r2, r1
201001a0:	619a      	str	r2, [r3, #24]
201001a2:	4b2f      	ldr	r3, [pc, #188]	; (20100260 <PortConfig+0x110>)
201001a4:	4a2e      	ldr	r2, [pc, #184]	; (20100260 <PortConfig+0x110>)
201001a6:	69d2      	ldr	r2, [r2, #28]
201001a8:	2180      	movs	r1, #128	; 0x80
201001aa:	0489      	lsls	r1, r1, #18
201001ac:	430a      	orrs	r2, r1
201001ae:	61da      	str	r2, [r3, #28]
201001b0:	4b30      	ldr	r3, [pc, #192]	; (20100274 <PortConfig+0x124>)
201001b2:	4a30      	ldr	r2, [pc, #192]	; (20100274 <PortConfig+0x124>)
201001b4:	68d2      	ldr	r2, [r2, #12]
201001b6:	2102      	movs	r1, #2
201001b8:	438a      	bics	r2, r1
201001ba:	60da      	str	r2, [r3, #12]
201001bc:	4b28      	ldr	r3, [pc, #160]	; (20100260 <PortConfig+0x110>)
201001be:	4a28      	ldr	r2, [pc, #160]	; (20100260 <PortConfig+0x110>)
201001c0:	69d2      	ldr	r2, [r2, #28]
201001c2:	2180      	movs	r1, #128	; 0x80
201001c4:	0449      	lsls	r1, r1, #17
201001c6:	430a      	orrs	r2, r1
201001c8:	61da      	str	r2, [r3, #28]
201001ca:	4b2b      	ldr	r3, [pc, #172]	; (20100278 <PortConfig+0x128>)
201001cc:	4a2a      	ldr	r2, [pc, #168]	; (20100278 <PortConfig+0x128>)
201001ce:	6892      	ldr	r2, [r2, #8]
201001d0:	492a      	ldr	r1, [pc, #168]	; (2010027c <PortConfig+0x12c>)
201001d2:	400a      	ands	r2, r1
201001d4:	609a      	str	r2, [r3, #8]
201001d6:	4b28      	ldr	r3, [pc, #160]	; (20100278 <PortConfig+0x128>)
201001d8:	4a27      	ldr	r2, [pc, #156]	; (20100278 <PortConfig+0x128>)
201001da:	6892      	ldr	r2, [r2, #8]
201001dc:	21a0      	movs	r1, #160	; 0xa0
201001de:	02c9      	lsls	r1, r1, #11
201001e0:	430a      	orrs	r2, r1
201001e2:	609a      	str	r2, [r3, #8]
201001e4:	4b24      	ldr	r3, [pc, #144]	; (20100278 <PortConfig+0x128>)
201001e6:	4a24      	ldr	r2, [pc, #144]	; (20100278 <PortConfig+0x128>)
201001e8:	68d2      	ldr	r2, [r2, #12]
201001ea:	21c0      	movs	r1, #192	; 0xc0
201001ec:	0089      	lsls	r1, r1, #2
201001ee:	430a      	orrs	r2, r1
201001f0:	60da      	str	r2, [r3, #12]
201001f2:	4b21      	ldr	r3, [pc, #132]	; (20100278 <PortConfig+0x128>)
201001f4:	4a20      	ldr	r2, [pc, #128]	; (20100278 <PortConfig+0x128>)
201001f6:	6992      	ldr	r2, [r2, #24]
201001f8:	21c0      	movs	r1, #192	; 0xc0
201001fa:	0309      	lsls	r1, r1, #12
201001fc:	430a      	orrs	r2, r1
201001fe:	619a      	str	r2, [r3, #24]
20100200:	4b1d      	ldr	r3, [pc, #116]	; (20100278 <PortConfig+0x128>)
20100202:	4a1d      	ldr	r2, [pc, #116]	; (20100278 <PortConfig+0x128>)
20100204:	6852      	ldr	r2, [r2, #4]
20100206:	2180      	movs	r1, #128	; 0x80
20100208:	0089      	lsls	r1, r1, #2
2010020a:	430a      	orrs	r2, r1
2010020c:	605a      	str	r2, [r3, #4]
2010020e:	4b1a      	ldr	r3, [pc, #104]	; (20100278 <PortConfig+0x128>)
20100210:	4a19      	ldr	r2, [pc, #100]	; (20100278 <PortConfig+0x128>)
20100212:	6852      	ldr	r2, [r2, #4]
20100214:	491a      	ldr	r1, [pc, #104]	; (20100280 <PortConfig+0x130>)
20100216:	400a      	ands	r2, r1
20100218:	605a      	str	r2, [r3, #4]
2010021a:	4b11      	ldr	r3, [pc, #68]	; (20100260 <PortConfig+0x110>)
2010021c:	4a10      	ldr	r2, [pc, #64]	; (20100260 <PortConfig+0x110>)
2010021e:	69d2      	ldr	r2, [r2, #28]
20100220:	2180      	movs	r1, #128	; 0x80
20100222:	0409      	lsls	r1, r1, #16
20100224:	430a      	orrs	r2, r1
20100226:	61da      	str	r2, [r3, #28]
20100228:	4b16      	ldr	r3, [pc, #88]	; (20100284 <PortConfig+0x134>)
2010022a:	2200      	movs	r2, #0
2010022c:	609a      	str	r2, [r3, #8]
2010022e:	4b15      	ldr	r3, [pc, #84]	; (20100284 <PortConfig+0x134>)
20100230:	2200      	movs	r2, #0
20100232:	601a      	str	r2, [r3, #0]
20100234:	4b13      	ldr	r3, [pc, #76]	; (20100284 <PortConfig+0x134>)
20100236:	4a13      	ldr	r2, [pc, #76]	; (20100284 <PortConfig+0x134>)
20100238:	6852      	ldr	r2, [r2, #4]
2010023a:	2160      	movs	r1, #96	; 0x60
2010023c:	430a      	orrs	r2, r1
2010023e:	605a      	str	r2, [r3, #4]
20100240:	4b10      	ldr	r3, [pc, #64]	; (20100284 <PortConfig+0x134>)
20100242:	4a10      	ldr	r2, [pc, #64]	; (20100284 <PortConfig+0x134>)
20100244:	68d2      	ldr	r2, [r2, #12]
20100246:	2160      	movs	r1, #96	; 0x60
20100248:	430a      	orrs	r2, r1
2010024a:	60da      	str	r2, [r3, #12]
2010024c:	4b0d      	ldr	r3, [pc, #52]	; (20100284 <PortConfig+0x134>)
2010024e:	4a0d      	ldr	r2, [pc, #52]	; (20100284 <PortConfig+0x134>)
20100250:	6992      	ldr	r2, [r2, #24]
20100252:	21f0      	movs	r1, #240	; 0xf0
20100254:	0189      	lsls	r1, r1, #6
20100256:	430a      	orrs	r2, r1
20100258:	619a      	str	r2, [r3, #24]
2010025a:	46c0      	nop			; (mov r8, r8)
2010025c:	46bd      	mov	sp, r7
2010025e:	bd80      	pop	{r7, pc}
20100260:	40020000 	.word	0x40020000
20100264:	400a8000 	.word	0x400a8000
20100268:	ff000fff 	.word	0xff000fff
2010026c:	00aaa000 	.word	0x00aaa000
20100270:	00fff000 	.word	0x00fff000
20100274:	400c8000 	.word	0x400c8000
20100278:	400c0000 	.word	0x400c0000
2010027c:	fff0ffff 	.word	0xfff0ffff
20100280:	fffffeff 	.word	0xfffffeff
20100284:	400b8000 	.word	0x400b8000

20100288 <ClkConfig>:
20100288:	b580      	push	{r7, lr}
2010028a:	af00      	add	r7, sp, #0
2010028c:	4b18      	ldr	r3, [pc, #96]	; (201002f0 <ClkConfig+0x68>)
2010028e:	4a18      	ldr	r2, [pc, #96]	; (201002f0 <ClkConfig+0x68>)
20100290:	6892      	ldr	r2, [r2, #8]
20100292:	2101      	movs	r1, #1
20100294:	430a      	orrs	r2, r1
20100296:	609a      	str	r2, [r3, #8]
20100298:	46c0      	nop			; (mov r8, r8)
2010029a:	4b15      	ldr	r3, [pc, #84]	; (201002f0 <ClkConfig+0x68>)
2010029c:	681b      	ldr	r3, [r3, #0]
2010029e:	2204      	movs	r2, #4
201002a0:	4013      	ands	r3, r2
201002a2:	d0fa      	beq.n	2010029a <ClkConfig+0x12>
201002a4:	4b12      	ldr	r3, [pc, #72]	; (201002f0 <ClkConfig+0x68>)
201002a6:	4a12      	ldr	r2, [pc, #72]	; (201002f0 <ClkConfig+0x68>)
201002a8:	68d2      	ldr	r2, [r2, #12]
201002aa:	2102      	movs	r1, #2
201002ac:	430a      	orrs	r2, r1
201002ae:	60da      	str	r2, [r3, #12]
201002b0:	4b0f      	ldr	r3, [pc, #60]	; (201002f0 <ClkConfig+0x68>)
201002b2:	4a10      	ldr	r2, [pc, #64]	; (201002f4 <ClkConfig+0x6c>)
201002b4:	605a      	str	r2, [r3, #4]
201002b6:	46c0      	nop			; (mov r8, r8)
201002b8:	4b0d      	ldr	r3, [pc, #52]	; (201002f0 <ClkConfig+0x68>)
201002ba:	681b      	ldr	r3, [r3, #0]
201002bc:	2202      	movs	r2, #2
201002be:	4013      	ands	r3, r2
201002c0:	d0fa      	beq.n	201002b8 <ClkConfig+0x30>
201002c2:	4b0d      	ldr	r3, [pc, #52]	; (201002f8 <ClkConfig+0x70>)
201002c4:	4a0c      	ldr	r2, [pc, #48]	; (201002f8 <ClkConfig+0x70>)
201002c6:	6812      	ldr	r2, [r2, #0]
201002c8:	2120      	movs	r1, #32
201002ca:	430a      	orrs	r2, r1
201002cc:	601a      	str	r2, [r3, #0]
201002ce:	4b08      	ldr	r3, [pc, #32]	; (201002f0 <ClkConfig+0x68>)
201002d0:	4a07      	ldr	r2, [pc, #28]	; (201002f0 <ClkConfig+0x68>)
201002d2:	68d2      	ldr	r2, [r2, #12]
201002d4:	2180      	movs	r1, #128	; 0x80
201002d6:	0049      	lsls	r1, r1, #1
201002d8:	430a      	orrs	r2, r1
201002da:	60da      	str	r2, [r3, #12]
201002dc:	4b04      	ldr	r3, [pc, #16]	; (201002f0 <ClkConfig+0x68>)
201002de:	4a04      	ldr	r2, [pc, #16]	; (201002f0 <ClkConfig+0x68>)
201002e0:	68d2      	ldr	r2, [r2, #12]
201002e2:	2104      	movs	r1, #4
201002e4:	430a      	orrs	r2, r1
201002e6:	60da      	str	r2, [r3, #12]
201002e8:	46c0      	nop			; (mov r8, r8)
201002ea:	46bd      	mov	sp, r7
201002ec:	bd80      	pop	{r7, pc}
201002ee:	46c0      	nop			; (mov r8, r8)
201002f0:	40020000 	.word	0x40020000
201002f4:	00000e04 	.word	0x00000e04
201002f8:	40018000 	.word	0x40018000

201002fc <TimerConfig>:
201002fc:	b580      	push	{r7, lr}
201002fe:	af00      	add	r7, sp, #0
20100300:	4b71      	ldr	r3, [pc, #452]	; (201004c8 <TimerConfig+0x1cc>)
20100302:	4a71      	ldr	r2, [pc, #452]	; (201004c8 <TimerConfig+0x1cc>)
20100304:	69d2      	ldr	r2, [r2, #28]
20100306:	2180      	movs	r1, #128	; 0x80
20100308:	0309      	lsls	r1, r1, #12
2010030a:	430a      	orrs	r2, r1
2010030c:	61da      	str	r2, [r3, #28]
2010030e:	4b6e      	ldr	r3, [pc, #440]	; (201004c8 <TimerConfig+0x1cc>)
20100310:	4a6d      	ldr	r2, [pc, #436]	; (201004c8 <TimerConfig+0x1cc>)
20100312:	6a92      	ldr	r2, [r2, #40]	; 0x28
20100314:	2180      	movs	r1, #128	; 0x80
20100316:	04c9      	lsls	r1, r1, #19
20100318:	430a      	orrs	r2, r1
2010031a:	629a      	str	r2, [r3, #40]	; 0x28
2010031c:	4b6a      	ldr	r3, [pc, #424]	; (201004c8 <TimerConfig+0x1cc>)
2010031e:	4a6a      	ldr	r2, [pc, #424]	; (201004c8 <TimerConfig+0x1cc>)
20100320:	6a92      	ldr	r2, [r2, #40]	; 0x28
20100322:	496a      	ldr	r1, [pc, #424]	; (201004cc <TimerConfig+0x1d0>)
20100324:	400a      	ands	r2, r1
20100326:	629a      	str	r2, [r3, #40]	; 0x28
20100328:	4b69      	ldr	r3, [pc, #420]	; (201004d0 <TimerConfig+0x1d4>)
2010032a:	2200      	movs	r2, #0
2010032c:	601a      	str	r2, [r3, #0]
2010032e:	4b68      	ldr	r3, [pc, #416]	; (201004d0 <TimerConfig+0x1d4>)
20100330:	2204      	movs	r2, #4
20100332:	605a      	str	r2, [r3, #4]
20100334:	4b66      	ldr	r3, [pc, #408]	; (201004d0 <TimerConfig+0x1d4>)
20100336:	4a67      	ldr	r2, [pc, #412]	; (201004d4 <TimerConfig+0x1d8>)
20100338:	609a      	str	r2, [r3, #8]
2010033a:	4b65      	ldr	r3, [pc, #404]	; (201004d0 <TimerConfig+0x1d4>)
2010033c:	2280      	movs	r2, #128	; 0x80
2010033e:	0092      	lsls	r2, r2, #2
20100340:	611a      	str	r2, [r3, #16]
20100342:	4b63      	ldr	r3, [pc, #396]	; (201004d0 <TimerConfig+0x1d4>)
20100344:	2280      	movs	r2, #128	; 0x80
20100346:	0092      	lsls	r2, r2, #2
20100348:	615a      	str	r2, [r3, #20]
2010034a:	4b61      	ldr	r3, [pc, #388]	; (201004d0 <TimerConfig+0x1d4>)
2010034c:	2280      	movs	r2, #128	; 0x80
2010034e:	0092      	lsls	r2, r2, #2
20100350:	619a      	str	r2, [r3, #24]
20100352:	4b5f      	ldr	r3, [pc, #380]	; (201004d0 <TimerConfig+0x1d4>)
20100354:	4a5e      	ldr	r2, [pc, #376]	; (201004d0 <TimerConfig+0x1d4>)
20100356:	6a12      	ldr	r2, [r2, #32]
20100358:	495f      	ldr	r1, [pc, #380]	; (201004d8 <TimerConfig+0x1dc>)
2010035a:	400a      	ands	r2, r1
2010035c:	621a      	str	r2, [r3, #32]
2010035e:	4b5c      	ldr	r3, [pc, #368]	; (201004d0 <TimerConfig+0x1d4>)
20100360:	4a5b      	ldr	r2, [pc, #364]	; (201004d0 <TimerConfig+0x1d4>)
20100362:	6a12      	ldr	r2, [r2, #32]
20100364:	21e0      	movs	r1, #224	; 0xe0
20100366:	0109      	lsls	r1, r1, #4
20100368:	430a      	orrs	r2, r1
2010036a:	621a      	str	r2, [r3, #32]
2010036c:	4b58      	ldr	r3, [pc, #352]	; (201004d0 <TimerConfig+0x1d4>)
2010036e:	4a58      	ldr	r2, [pc, #352]	; (201004d0 <TimerConfig+0x1d4>)
20100370:	6b12      	ldr	r2, [r2, #48]	; 0x30
20100372:	210f      	movs	r1, #15
20100374:	438a      	bics	r2, r1
20100376:	631a      	str	r2, [r3, #48]	; 0x30
20100378:	4b55      	ldr	r3, [pc, #340]	; (201004d0 <TimerConfig+0x1d4>)
2010037a:	4a55      	ldr	r2, [pc, #340]	; (201004d0 <TimerConfig+0x1d4>)
2010037c:	6b12      	ldr	r2, [r2, #48]	; 0x30
2010037e:	210c      	movs	r1, #12
20100380:	430a      	orrs	r2, r1
20100382:	631a      	str	r2, [r3, #48]	; 0x30
20100384:	4b52      	ldr	r3, [pc, #328]	; (201004d0 <TimerConfig+0x1d4>)
20100386:	4a52      	ldr	r2, [pc, #328]	; (201004d0 <TimerConfig+0x1d4>)
20100388:	6b12      	ldr	r2, [r2, #48]	; 0x30
2010038a:	2101      	movs	r1, #1
2010038c:	430a      	orrs	r2, r1
2010038e:	631a      	str	r2, [r3, #48]	; 0x30
20100390:	4b4f      	ldr	r3, [pc, #316]	; (201004d0 <TimerConfig+0x1d4>)
20100392:	4a4f      	ldr	r2, [pc, #316]	; (201004d0 <TimerConfig+0x1d4>)
20100394:	6b12      	ldr	r2, [r2, #48]	; 0x30
20100396:	4951      	ldr	r1, [pc, #324]	; (201004dc <TimerConfig+0x1e0>)
20100398:	400a      	ands	r2, r1
2010039a:	631a      	str	r2, [r3, #48]	; 0x30
2010039c:	4b4c      	ldr	r3, [pc, #304]	; (201004d0 <TimerConfig+0x1d4>)
2010039e:	4a4c      	ldr	r2, [pc, #304]	; (201004d0 <TimerConfig+0x1d4>)
201003a0:	6b12      	ldr	r2, [r2, #48]	; 0x30
201003a2:	21c0      	movs	r1, #192	; 0xc0
201003a4:	0109      	lsls	r1, r1, #4
201003a6:	430a      	orrs	r2, r1
201003a8:	631a      	str	r2, [r3, #48]	; 0x30
201003aa:	4b49      	ldr	r3, [pc, #292]	; (201004d0 <TimerConfig+0x1d4>)
201003ac:	4a48      	ldr	r2, [pc, #288]	; (201004d0 <TimerConfig+0x1d4>)
201003ae:	6b12      	ldr	r2, [r2, #48]	; 0x30
201003b0:	2180      	movs	r1, #128	; 0x80
201003b2:	0049      	lsls	r1, r1, #1
201003b4:	430a      	orrs	r2, r1
201003b6:	631a      	str	r2, [r3, #48]	; 0x30
201003b8:	4b45      	ldr	r3, [pc, #276]	; (201004d0 <TimerConfig+0x1d4>)
201003ba:	4a45      	ldr	r2, [pc, #276]	; (201004d0 <TimerConfig+0x1d4>)
201003bc:	6a52      	ldr	r2, [r2, #36]	; 0x24
201003be:	4946      	ldr	r1, [pc, #280]	; (201004d8 <TimerConfig+0x1dc>)
201003c0:	400a      	ands	r2, r1
201003c2:	625a      	str	r2, [r3, #36]	; 0x24
201003c4:	4b42      	ldr	r3, [pc, #264]	; (201004d0 <TimerConfig+0x1d4>)
201003c6:	4a42      	ldr	r2, [pc, #264]	; (201004d0 <TimerConfig+0x1d4>)
201003c8:	6a52      	ldr	r2, [r2, #36]	; 0x24
201003ca:	21e0      	movs	r1, #224	; 0xe0
201003cc:	0109      	lsls	r1, r1, #4
201003ce:	430a      	orrs	r2, r1
201003d0:	625a      	str	r2, [r3, #36]	; 0x24
201003d2:	4b3f      	ldr	r3, [pc, #252]	; (201004d0 <TimerConfig+0x1d4>)
201003d4:	4a3e      	ldr	r2, [pc, #248]	; (201004d0 <TimerConfig+0x1d4>)
201003d6:	6b52      	ldr	r2, [r2, #52]	; 0x34
201003d8:	210f      	movs	r1, #15
201003da:	438a      	bics	r2, r1
201003dc:	635a      	str	r2, [r3, #52]	; 0x34
201003de:	4b3c      	ldr	r3, [pc, #240]	; (201004d0 <TimerConfig+0x1d4>)
201003e0:	4a3b      	ldr	r2, [pc, #236]	; (201004d0 <TimerConfig+0x1d4>)
201003e2:	6b52      	ldr	r2, [r2, #52]	; 0x34
201003e4:	210c      	movs	r1, #12
201003e6:	430a      	orrs	r2, r1
201003e8:	635a      	str	r2, [r3, #52]	; 0x34
201003ea:	4b39      	ldr	r3, [pc, #228]	; (201004d0 <TimerConfig+0x1d4>)
201003ec:	4a38      	ldr	r2, [pc, #224]	; (201004d0 <TimerConfig+0x1d4>)
201003ee:	6b52      	ldr	r2, [r2, #52]	; 0x34
201003f0:	2101      	movs	r1, #1
201003f2:	430a      	orrs	r2, r1
201003f4:	635a      	str	r2, [r3, #52]	; 0x34
201003f6:	4b36      	ldr	r3, [pc, #216]	; (201004d0 <TimerConfig+0x1d4>)
201003f8:	4a35      	ldr	r2, [pc, #212]	; (201004d0 <TimerConfig+0x1d4>)
201003fa:	6b52      	ldr	r2, [r2, #52]	; 0x34
201003fc:	4937      	ldr	r1, [pc, #220]	; (201004dc <TimerConfig+0x1e0>)
201003fe:	400a      	ands	r2, r1
20100400:	635a      	str	r2, [r3, #52]	; 0x34
20100402:	4b33      	ldr	r3, [pc, #204]	; (201004d0 <TimerConfig+0x1d4>)
20100404:	4a32      	ldr	r2, [pc, #200]	; (201004d0 <TimerConfig+0x1d4>)
20100406:	6b52      	ldr	r2, [r2, #52]	; 0x34
20100408:	21c0      	movs	r1, #192	; 0xc0
2010040a:	0109      	lsls	r1, r1, #4
2010040c:	430a      	orrs	r2, r1
2010040e:	635a      	str	r2, [r3, #52]	; 0x34
20100410:	4b2f      	ldr	r3, [pc, #188]	; (201004d0 <TimerConfig+0x1d4>)
20100412:	4a2f      	ldr	r2, [pc, #188]	; (201004d0 <TimerConfig+0x1d4>)
20100414:	6b52      	ldr	r2, [r2, #52]	; 0x34
20100416:	2180      	movs	r1, #128	; 0x80
20100418:	0049      	lsls	r1, r1, #1
2010041a:	430a      	orrs	r2, r1
2010041c:	635a      	str	r2, [r3, #52]	; 0x34
2010041e:	4b2c      	ldr	r3, [pc, #176]	; (201004d0 <TimerConfig+0x1d4>)
20100420:	4a2b      	ldr	r2, [pc, #172]	; (201004d0 <TimerConfig+0x1d4>)
20100422:	6a92      	ldr	r2, [r2, #40]	; 0x28
20100424:	492c      	ldr	r1, [pc, #176]	; (201004d8 <TimerConfig+0x1dc>)
20100426:	400a      	ands	r2, r1
20100428:	629a      	str	r2, [r3, #40]	; 0x28
2010042a:	4b29      	ldr	r3, [pc, #164]	; (201004d0 <TimerConfig+0x1d4>)
2010042c:	4a28      	ldr	r2, [pc, #160]	; (201004d0 <TimerConfig+0x1d4>)
2010042e:	6a92      	ldr	r2, [r2, #40]	; 0x28
20100430:	21e0      	movs	r1, #224	; 0xe0
20100432:	0109      	lsls	r1, r1, #4
20100434:	430a      	orrs	r2, r1
20100436:	629a      	str	r2, [r3, #40]	; 0x28
20100438:	4b25      	ldr	r3, [pc, #148]	; (201004d0 <TimerConfig+0x1d4>)
2010043a:	4a25      	ldr	r2, [pc, #148]	; (201004d0 <TimerConfig+0x1d4>)
2010043c:	6b92      	ldr	r2, [r2, #56]	; 0x38
2010043e:	210f      	movs	r1, #15
20100440:	438a      	bics	r2, r1
20100442:	639a      	str	r2, [r3, #56]	; 0x38
20100444:	4b22      	ldr	r3, [pc, #136]	; (201004d0 <TimerConfig+0x1d4>)
20100446:	4a22      	ldr	r2, [pc, #136]	; (201004d0 <TimerConfig+0x1d4>)
20100448:	6b92      	ldr	r2, [r2, #56]	; 0x38
2010044a:	210c      	movs	r1, #12
2010044c:	430a      	orrs	r2, r1
2010044e:	639a      	str	r2, [r3, #56]	; 0x38
20100450:	4b1f      	ldr	r3, [pc, #124]	; (201004d0 <TimerConfig+0x1d4>)
20100452:	4a1f      	ldr	r2, [pc, #124]	; (201004d0 <TimerConfig+0x1d4>)
20100454:	6b92      	ldr	r2, [r2, #56]	; 0x38
20100456:	2101      	movs	r1, #1
20100458:	430a      	orrs	r2, r1
2010045a:	639a      	str	r2, [r3, #56]	; 0x38
2010045c:	4b1c      	ldr	r3, [pc, #112]	; (201004d0 <TimerConfig+0x1d4>)
2010045e:	4a1c      	ldr	r2, [pc, #112]	; (201004d0 <TimerConfig+0x1d4>)
20100460:	6b92      	ldr	r2, [r2, #56]	; 0x38
20100462:	491e      	ldr	r1, [pc, #120]	; (201004dc <TimerConfig+0x1e0>)
20100464:	400a      	ands	r2, r1
20100466:	639a      	str	r2, [r3, #56]	; 0x38
20100468:	4b19      	ldr	r3, [pc, #100]	; (201004d0 <TimerConfig+0x1d4>)
2010046a:	4a19      	ldr	r2, [pc, #100]	; (201004d0 <TimerConfig+0x1d4>)
2010046c:	6b92      	ldr	r2, [r2, #56]	; 0x38
2010046e:	21c0      	movs	r1, #192	; 0xc0
20100470:	0109      	lsls	r1, r1, #4
20100472:	430a      	orrs	r2, r1
20100474:	639a      	str	r2, [r3, #56]	; 0x38
20100476:	4b16      	ldr	r3, [pc, #88]	; (201004d0 <TimerConfig+0x1d4>)
20100478:	4a15      	ldr	r2, [pc, #84]	; (201004d0 <TimerConfig+0x1d4>)
2010047a:	6b92      	ldr	r2, [r2, #56]	; 0x38
2010047c:	2180      	movs	r1, #128	; 0x80
2010047e:	0049      	lsls	r1, r1, #1
20100480:	430a      	orrs	r2, r1
20100482:	639a      	str	r2, [r3, #56]	; 0x38
20100484:	4b12      	ldr	r3, [pc, #72]	; (201004d0 <TimerConfig+0x1d4>)
20100486:	4a12      	ldr	r2, [pc, #72]	; (201004d0 <TimerConfig+0x1d4>)
20100488:	6c12      	ldr	r2, [r2, #64]	; 0x40
2010048a:	21c8      	movs	r1, #200	; 0xc8
2010048c:	01c9      	lsls	r1, r1, #7
2010048e:	430a      	orrs	r2, r1
20100490:	641a      	str	r2, [r3, #64]	; 0x40
20100492:	4b0f      	ldr	r3, [pc, #60]	; (201004d0 <TimerConfig+0x1d4>)
20100494:	4a0e      	ldr	r2, [pc, #56]	; (201004d0 <TimerConfig+0x1d4>)
20100496:	6c52      	ldr	r2, [r2, #68]	; 0x44
20100498:	21c8      	movs	r1, #200	; 0xc8
2010049a:	01c9      	lsls	r1, r1, #7
2010049c:	430a      	orrs	r2, r1
2010049e:	645a      	str	r2, [r3, #68]	; 0x44
201004a0:	4b0b      	ldr	r3, [pc, #44]	; (201004d0 <TimerConfig+0x1d4>)
201004a2:	4a0b      	ldr	r2, [pc, #44]	; (201004d0 <TimerConfig+0x1d4>)
201004a4:	6c92      	ldr	r2, [r2, #72]	; 0x48
201004a6:	21c8      	movs	r1, #200	; 0xc8
201004a8:	01c9      	lsls	r1, r1, #7
201004aa:	430a      	orrs	r2, r1
201004ac:	649a      	str	r2, [r3, #72]	; 0x48
201004ae:	4b08      	ldr	r3, [pc, #32]	; (201004d0 <TimerConfig+0x1d4>)
201004b0:	4a07      	ldr	r2, [pc, #28]	; (201004d0 <TimerConfig+0x1d4>)
201004b2:	6d92      	ldr	r2, [r2, #88]	; 0x58
201004b4:	21f0      	movs	r1, #240	; 0xf0
201004b6:	0149      	lsls	r1, r1, #5
201004b8:	430a      	orrs	r2, r1
201004ba:	659a      	str	r2, [r3, #88]	; 0x58
201004bc:	4b04      	ldr	r3, [pc, #16]	; (201004d0 <TimerConfig+0x1d4>)
201004be:	2201      	movs	r2, #1
201004c0:	60da      	str	r2, [r3, #12]
201004c2:	46c0      	nop			; (mov r8, r8)
201004c4:	46bd      	mov	sp, r7
201004c6:	bd80      	pop	{r7, pc}
201004c8:	40020000 	.word	0x40020000
201004cc:	ff00ffff 	.word	0xff00ffff
201004d0:	40098000 	.word	0x40098000
201004d4:	000003ff 	.word	0x000003ff
201004d8:	fffff1ff 	.word	0xfffff1ff
201004dc:	fffff0ff 	.word	0xfffff0ff

201004e0 <adc_init>:
201004e0:	b580      	push	{r7, lr}
201004e2:	af00      	add	r7, sp, #0
201004e4:	4b0f      	ldr	r3, [pc, #60]	; (20100524 <adc_init+0x44>)
201004e6:	4a0f      	ldr	r2, [pc, #60]	; (20100524 <adc_init+0x44>)
201004e8:	69d2      	ldr	r2, [r2, #28]
201004ea:	2180      	movs	r1, #128	; 0x80
201004ec:	0289      	lsls	r1, r1, #10
201004ee:	430a      	orrs	r2, r1
201004f0:	61da      	str	r2, [r3, #28]
201004f2:	4b0c      	ldr	r3, [pc, #48]	; (20100524 <adc_init+0x44>)
201004f4:	4a0c      	ldr	r2, [pc, #48]	; (20100528 <adc_init+0x48>)
201004f6:	615a      	str	r2, [r3, #20]
201004f8:	4b0c      	ldr	r3, [pc, #48]	; (2010052c <adc_init+0x4c>)
201004fa:	2200      	movs	r2, #0
201004fc:	601a      	str	r2, [r3, #0]
201004fe:	4b0b      	ldr	r3, [pc, #44]	; (2010052c <adc_init+0x4c>)
20100500:	4a0a      	ldr	r2, [pc, #40]	; (2010052c <adc_init+0x4c>)
20100502:	6812      	ldr	r2, [r2, #0]
20100504:	490a      	ldr	r1, [pc, #40]	; (20100530 <adc_init+0x50>)
20100506:	430a      	orrs	r2, r1
20100508:	601a      	str	r2, [r3, #0]
2010050a:	4b08      	ldr	r3, [pc, #32]	; (2010052c <adc_init+0x4c>)
2010050c:	4a07      	ldr	r2, [pc, #28]	; (2010052c <adc_init+0x4c>)
2010050e:	6a92      	ldr	r2, [r2, #40]	; 0x28
20100510:	2139      	movs	r1, #57	; 0x39
20100512:	430a      	orrs	r2, r1
20100514:	629a      	str	r2, [r3, #40]	; 0x28
20100516:	4b05      	ldr	r3, [pc, #20]	; (2010052c <adc_init+0x4c>)
20100518:	2210      	movs	r2, #16
2010051a:	621a      	str	r2, [r3, #32]
2010051c:	46c0      	nop			; (mov r8, r8)
2010051e:	46bd      	mov	sp, r7
20100520:	bd80      	pop	{r7, pc}
20100522:	46c0      	nop			; (mov r8, r8)
20100524:	40020000 	.word	0x40020000
20100528:	00002020 	.word	0x00002020
2010052c:	40088000 	.word	0x40088000
20100530:	00000205 	.word	0x00000205

20100534 <dac_init>:
20100534:	b580      	push	{r7, lr}
20100536:	af00      	add	r7, sp, #0
20100538:	4b07      	ldr	r3, [pc, #28]	; (20100558 <dac_init+0x24>)
2010053a:	4a07      	ldr	r2, [pc, #28]	; (20100558 <dac_init+0x24>)
2010053c:	69d2      	ldr	r2, [r2, #28]
2010053e:	2180      	movs	r1, #128	; 0x80
20100540:	02c9      	lsls	r1, r1, #11
20100542:	430a      	orrs	r2, r1
20100544:	61da      	str	r2, [r3, #28]
20100546:	4b05      	ldr	r3, [pc, #20]	; (2010055c <dac_init+0x28>)
20100548:	4a04      	ldr	r2, [pc, #16]	; (2010055c <dac_init+0x28>)
2010054a:	6812      	ldr	r2, [r2, #0]
2010054c:	2104      	movs	r1, #4
2010054e:	430a      	orrs	r2, r1
20100550:	601a      	str	r2, [r3, #0]
20100552:	46c0      	nop			; (mov r8, r8)
20100554:	46bd      	mov	sp, r7
20100556:	bd80      	pop	{r7, pc}
20100558:	40020000 	.word	0x40020000
2010055c:	40090000 	.word	0x40090000

20100560 <ssi_init>:
20100560:	b580      	push	{r7, lr}
20100562:	af00      	add	r7, sp, #0
20100564:	4b0c      	ldr	r3, [pc, #48]	; (20100598 <ssi_init+0x38>)
20100566:	4a0c      	ldr	r2, [pc, #48]	; (20100598 <ssi_init+0x38>)
20100568:	69d2      	ldr	r2, [r2, #28]
2010056a:	2180      	movs	r1, #128	; 0x80
2010056c:	0349      	lsls	r1, r1, #13
2010056e:	430a      	orrs	r2, r1
20100570:	61da      	str	r2, [r3, #28]
20100572:	4b09      	ldr	r3, [pc, #36]	; (20100598 <ssi_init+0x38>)
20100574:	4a09      	ldr	r2, [pc, #36]	; (2010059c <ssi_init+0x3c>)
20100576:	62da      	str	r2, [r3, #44]	; 0x2c
20100578:	4b09      	ldr	r3, [pc, #36]	; (201005a0 <ssi_init+0x40>)
2010057a:	2200      	movs	r2, #0
2010057c:	605a      	str	r2, [r3, #4]
2010057e:	4b08      	ldr	r3, [pc, #32]	; (201005a0 <ssi_init+0x40>)
20100580:	220a      	movs	r2, #10
20100582:	611a      	str	r2, [r3, #16]
20100584:	4b06      	ldr	r3, [pc, #24]	; (201005a0 <ssi_init+0x40>)
20100586:	4a07      	ldr	r2, [pc, #28]	; (201005a4 <ssi_init+0x44>)
20100588:	601a      	str	r2, [r3, #0]
2010058a:	4b05      	ldr	r3, [pc, #20]	; (201005a0 <ssi_init+0x40>)
2010058c:	2202      	movs	r2, #2
2010058e:	605a      	str	r2, [r3, #4]
20100590:	46c0      	nop			; (mov r8, r8)
20100592:	46bd      	mov	sp, r7
20100594:	bd80      	pop	{r7, pc}
20100596:	46c0      	nop			; (mov r8, r8)
20100598:	40020000 	.word	0x40020000
2010059c:	02000200 	.word	0x02000200
201005a0:	400a0000 	.word	0x400a0000
201005a4:	0000021b 	.word	0x0000021b

201005a8 <b2g>:
201005a8:	b580      	push	{r7, lr}
201005aa:	b082      	sub	sp, #8
201005ac:	af00      	add	r7, sp, #0
201005ae:	6078      	str	r0, [r7, #4]
201005b0:	687b      	ldr	r3, [r7, #4]
201005b2:	085a      	lsrs	r2, r3, #1
201005b4:	687b      	ldr	r3, [r7, #4]
201005b6:	4053      	eors	r3, r2
201005b8:	0018      	movs	r0, r3
201005ba:	46bd      	mov	sp, r7
201005bc:	b002      	add	sp, #8
201005be:	bd80      	pop	{r7, pc}

201005c0 <g2b>:
201005c0:	b580      	push	{r7, lr}
201005c2:	b084      	sub	sp, #16
201005c4:	af00      	add	r7, sp, #0
201005c6:	6078      	str	r0, [r7, #4]
201005c8:	2300      	movs	r3, #0
201005ca:	60fb      	str	r3, [r7, #12]
201005cc:	2300      	movs	r3, #0
201005ce:	60fb      	str	r3, [r7, #12]
201005d0:	e006      	b.n	201005e0 <g2b+0x20>
201005d2:	68fa      	ldr	r2, [r7, #12]
201005d4:	687b      	ldr	r3, [r7, #4]
201005d6:	4053      	eors	r3, r2
201005d8:	60fb      	str	r3, [r7, #12]
201005da:	687b      	ldr	r3, [r7, #4]
201005dc:	085b      	lsrs	r3, r3, #1
201005de:	607b      	str	r3, [r7, #4]
201005e0:	687b      	ldr	r3, [r7, #4]
201005e2:	2b00      	cmp	r3, #0
201005e4:	d1f5      	bne.n	201005d2 <g2b+0x12>
201005e6:	68fb      	ldr	r3, [r7, #12]
201005e8:	0018      	movs	r0, r3
201005ea:	46bd      	mov	sp, r7
201005ec:	b004      	add	sp, #16
201005ee:	bd80      	pop	{r7, pc}

201005f0 <SystemInit>:
201005f0:	b580      	push	{r7, lr}
201005f2:	af00      	add	r7, sp, #0
201005f4:	f7ff fe48 	bl	20100288 <ClkConfig>
201005f8:	f7ff fdaa 	bl	20100150 <PortConfig>
201005fc:	f7ff fe7e 	bl	201002fc <TimerConfig>
20100600:	f7ff ff6e 	bl	201004e0 <adc_init>
20100604:	f7ff ff96 	bl	20100534 <dac_init>
20100608:	f7ff ffaa 	bl	20100560 <ssi_init>
2010060c:	f000 fc0c 	bl	20100e28 <adc_dma_init>
20100610:	46c0      	nop			; (mov r8, r8)
20100612:	46bd      	mov	sp, r7
20100614:	bd80      	pop	{r7, pc}
20100616:	46c0      	nop			; (mov r8, r8)

20100618 <timer_wait>:
20100618:	b580      	push	{r7, lr}
2010061a:	af00      	add	r7, sp, #0
2010061c:	46c0      	nop			; (mov r8, r8)
2010061e:	4b05      	ldr	r3, [pc, #20]	; (20100634 <timer_wait+0x1c>)
20100620:	6d5b      	ldr	r3, [r3, #84]	; 0x54
20100622:	2202      	movs	r2, #2
20100624:	4013      	ands	r3, r2
20100626:	d0fa      	beq.n	2010061e <timer_wait+0x6>
20100628:	4b02      	ldr	r3, [pc, #8]	; (20100634 <timer_wait+0x1c>)
2010062a:	2200      	movs	r2, #0
2010062c:	655a      	str	r2, [r3, #84]	; 0x54
2010062e:	46c0      	nop			; (mov r8, r8)
20100630:	46bd      	mov	sp, r7
20100632:	bd80      	pop	{r7, pc}
20100634:	40098000 	.word	0x40098000

20100638 <mycos>:
20100638:	b580      	push	{r7, lr}
2010063a:	b082      	sub	sp, #8
2010063c:	af00      	add	r7, sp, #0
2010063e:	6078      	str	r0, [r7, #4]
20100640:	4906      	ldr	r1, [pc, #24]	; (2010065c <mycos+0x24>)
20100642:	4479      	add	r1, pc
20100644:	687b      	ldr	r3, [r7, #4]
20100646:	059b      	lsls	r3, r3, #22
20100648:	0d9a      	lsrs	r2, r3, #22
2010064a:	4b05      	ldr	r3, [pc, #20]	; (20100660 <mycos+0x28>)
2010064c:	58cb      	ldr	r3, [r1, r3]
2010064e:	0092      	lsls	r2, r2, #2
20100650:	58d3      	ldr	r3, [r2, r3]
20100652:	0018      	movs	r0, r3
20100654:	46bd      	mov	sp, r7
20100656:	b002      	add	sp, #8
20100658:	bd80      	pop	{r7, pc}
2010065a:	46c0      	nop			; (mov r8, r8)
2010065c:	ffeffa46 	.word	0xffeffa46
20100660:	00000000 	.word	0x00000000

20100664 <mysin>:
20100664:	b580      	push	{r7, lr}
20100666:	b082      	sub	sp, #8
20100668:	af00      	add	r7, sp, #0
2010066a:	6078      	str	r0, [r7, #4]
2010066c:	4908      	ldr	r1, [pc, #32]	; (20100690 <mysin+0x2c>)
2010066e:	4479      	add	r1, pc
20100670:	687b      	ldr	r3, [r7, #4]
20100672:	22c0      	movs	r2, #192	; 0xc0
20100674:	0092      	lsls	r2, r2, #2
20100676:	4694      	mov	ip, r2
20100678:	4463      	add	r3, ip
2010067a:	059b      	lsls	r3, r3, #22
2010067c:	0d9a      	lsrs	r2, r3, #22
2010067e:	4b05      	ldr	r3, [pc, #20]	; (20100694 <mysin+0x30>)
20100680:	58cb      	ldr	r3, [r1, r3]
20100682:	0092      	lsls	r2, r2, #2
20100684:	58d3      	ldr	r3, [r2, r3]
20100686:	0018      	movs	r0, r3
20100688:	46bd      	mov	sp, r7
2010068a:	b002      	add	sp, #8
2010068c:	bd80      	pop	{r7, pc}
2010068e:	46c0      	nop			; (mov r8, r8)
20100690:	ffeffa1a 	.word	0xffeffa1a
20100694:	00000000 	.word	0x00000000

20100698 <reg_init>:
20100698:	b580      	push	{r7, lr}
2010069a:	b084      	sub	sp, #16
2010069c:	af00      	add	r7, sp, #0
2010069e:	60f8      	str	r0, [r7, #12]
201006a0:	60b9      	str	r1, [r7, #8]
201006a2:	607a      	str	r2, [r7, #4]
201006a4:	68ba      	ldr	r2, [r7, #8]
201006a6:	68fb      	ldr	r3, [r7, #12]
201006a8:	601a      	str	r2, [r3, #0]
201006aa:	687a      	ldr	r2, [r7, #4]
201006ac:	68fb      	ldr	r3, [r7, #12]
201006ae:	605a      	str	r2, [r3, #4]
201006b0:	68fb      	ldr	r3, [r7, #12]
201006b2:	2200      	movs	r2, #0
201006b4:	609a      	str	r2, [r3, #8]
201006b6:	68fb      	ldr	r3, [r7, #12]
201006b8:	2200      	movs	r2, #0
201006ba:	60da      	str	r2, [r3, #12]
201006bc:	46c0      	nop			; (mov r8, r8)
201006be:	46bd      	mov	sp, r7
201006c0:	b004      	add	sp, #16
201006c2:	bd80      	pop	{r7, pc}

201006c4 <reg_update>:
201006c4:	b580      	push	{r7, lr}
201006c6:	b086      	sub	sp, #24
201006c8:	af00      	add	r7, sp, #0
201006ca:	60f8      	str	r0, [r7, #12]
201006cc:	60b9      	str	r1, [r7, #8]
201006ce:	607a      	str	r2, [r7, #4]
201006d0:	68fb      	ldr	r3, [r7, #12]
201006d2:	689b      	ldr	r3, [r3, #8]
201006d4:	613b      	str	r3, [r7, #16]
201006d6:	68fb      	ldr	r3, [r7, #12]
201006d8:	681b      	ldr	r3, [r3, #0]
201006da:	68ba      	ldr	r2, [r7, #8]
201006dc:	4353      	muls	r3, r2
201006de:	617b      	str	r3, [r7, #20]
201006e0:	687b      	ldr	r3, [r7, #4]
201006e2:	2b00      	cmp	r3, #0
201006e4:	d00d      	beq.n	20100702 <reg_update+0x3e>
201006e6:	693b      	ldr	r3, [r7, #16]
201006e8:	2b00      	cmp	r3, #0
201006ea:	dd02      	ble.n	201006f2 <reg_update+0x2e>
201006ec:	697b      	ldr	r3, [r7, #20]
201006ee:	2b00      	cmp	r3, #0
201006f0:	dc05      	bgt.n	201006fe <reg_update+0x3a>
201006f2:	693b      	ldr	r3, [r7, #16]
201006f4:	2b00      	cmp	r3, #0
201006f6:	da04      	bge.n	20100702 <reg_update+0x3e>
201006f8:	697b      	ldr	r3, [r7, #20]
201006fa:	2b00      	cmp	r3, #0
201006fc:	da01      	bge.n	20100702 <reg_update+0x3e>
201006fe:	2300      	movs	r3, #0
20100700:	617b      	str	r3, [r7, #20]
20100702:	693a      	ldr	r2, [r7, #16]
20100704:	697b      	ldr	r3, [r7, #20]
20100706:	18d3      	adds	r3, r2, r3
20100708:	613b      	str	r3, [r7, #16]
2010070a:	68fb      	ldr	r3, [r7, #12]
2010070c:	685b      	ldr	r3, [r3, #4]
2010070e:	68ba      	ldr	r2, [r7, #8]
20100710:	435a      	muls	r2, r3
20100712:	693b      	ldr	r3, [r7, #16]
20100714:	18d2      	adds	r2, r2, r3
20100716:	68fb      	ldr	r3, [r7, #12]
20100718:	60da      	str	r2, [r3, #12]
2010071a:	68fb      	ldr	r3, [r7, #12]
2010071c:	693a      	ldr	r2, [r7, #16]
2010071e:	609a      	str	r2, [r3, #8]
20100720:	46c0      	nop			; (mov r8, r8)
20100722:	46bd      	mov	sp, r7
20100724:	b006      	add	sp, #24
20100726:	bd80      	pop	{r7, pc}

20100728 <abc_to_dq>:
20100728:	b590      	push	{r4, r7, lr}
2010072a:	b08b      	sub	sp, #44	; 0x2c
2010072c:	af00      	add	r7, sp, #0
2010072e:	60f8      	str	r0, [r7, #12]
20100730:	60b9      	str	r1, [r7, #8]
20100732:	607a      	str	r2, [r7, #4]
20100734:	4b33      	ldr	r3, [pc, #204]	; (20100804 <abc_to_dq+0xdc>)
20100736:	447b      	add	r3, pc
20100738:	4a33      	ldr	r2, [pc, #204]	; (20100808 <abc_to_dq+0xe0>)
2010073a:	589a      	ldr	r2, [r3, r2]
2010073c:	6879      	ldr	r1, [r7, #4]
2010073e:	0089      	lsls	r1, r1, #2
20100740:	5889      	ldr	r1, [r1, r2]
20100742:	221c      	movs	r2, #28
20100744:	18ba      	adds	r2, r7, r2
20100746:	6011      	str	r1, [r2, #0]
20100748:	687a      	ldr	r2, [r7, #4]
2010074a:	4930      	ldr	r1, [pc, #192]	; (2010080c <abc_to_dq+0xe4>)
2010074c:	468c      	mov	ip, r1
2010074e:	4462      	add	r2, ip
20100750:	0592      	lsls	r2, r2, #22
20100752:	0d91      	lsrs	r1, r2, #22
20100754:	4a2c      	ldr	r2, [pc, #176]	; (20100808 <abc_to_dq+0xe0>)
20100756:	589a      	ldr	r2, [r3, r2]
20100758:	0089      	lsls	r1, r1, #2
2010075a:	5889      	ldr	r1, [r1, r2]
2010075c:	221c      	movs	r2, #28
2010075e:	18ba      	adds	r2, r7, r2
20100760:	6051      	str	r1, [r2, #4]
20100762:	687a      	ldr	r2, [r7, #4]
20100764:	3256      	adds	r2, #86	; 0x56
20100766:	32ff      	adds	r2, #255	; 0xff
20100768:	0592      	lsls	r2, r2, #22
2010076a:	0d91      	lsrs	r1, r2, #22
2010076c:	4a26      	ldr	r2, [pc, #152]	; (20100808 <abc_to_dq+0xe0>)
2010076e:	589a      	ldr	r2, [r3, r2]
20100770:	0089      	lsls	r1, r1, #2
20100772:	5889      	ldr	r1, [r1, r2]
20100774:	221c      	movs	r2, #28
20100776:	18ba      	adds	r2, r7, r2
20100778:	6091      	str	r1, [r2, #8]
2010077a:	687a      	ldr	r2, [r7, #4]
2010077c:	21c0      	movs	r1, #192	; 0xc0
2010077e:	0089      	lsls	r1, r1, #2
20100780:	468c      	mov	ip, r1
20100782:	4462      	add	r2, ip
20100784:	0592      	lsls	r2, r2, #22
20100786:	0d91      	lsrs	r1, r2, #22
20100788:	4a1f      	ldr	r2, [pc, #124]	; (20100808 <abc_to_dq+0xe0>)
2010078a:	589a      	ldr	r2, [r3, r2]
2010078c:	0089      	lsls	r1, r1, #2
2010078e:	5889      	ldr	r1, [r1, r2]
20100790:	2210      	movs	r2, #16
20100792:	18ba      	adds	r2, r7, r2
20100794:	6011      	str	r1, [r2, #0]
20100796:	687a      	ldr	r2, [r7, #4]
20100798:	491d      	ldr	r1, [pc, #116]	; (20100810 <abc_to_dq+0xe8>)
2010079a:	468c      	mov	ip, r1
2010079c:	4462      	add	r2, ip
2010079e:	0592      	lsls	r2, r2, #22
201007a0:	0d91      	lsrs	r1, r2, #22
201007a2:	4a19      	ldr	r2, [pc, #100]	; (20100808 <abc_to_dq+0xe0>)
201007a4:	589a      	ldr	r2, [r3, r2]
201007a6:	0089      	lsls	r1, r1, #2
201007a8:	5889      	ldr	r1, [r1, r2]
201007aa:	2210      	movs	r2, #16
201007ac:	18ba      	adds	r2, r7, r2
201007ae:	6051      	str	r1, [r2, #4]
201007b0:	687a      	ldr	r2, [r7, #4]
201007b2:	4918      	ldr	r1, [pc, #96]	; (20100814 <abc_to_dq+0xec>)
201007b4:	468c      	mov	ip, r1
201007b6:	4462      	add	r2, ip
201007b8:	0592      	lsls	r2, r2, #22
201007ba:	0d92      	lsrs	r2, r2, #22
201007bc:	4912      	ldr	r1, [pc, #72]	; (20100808 <abc_to_dq+0xe0>)
201007be:	585b      	ldr	r3, [r3, r1]
201007c0:	0092      	lsls	r2, r2, #2
201007c2:	58d2      	ldr	r2, [r2, r3]
201007c4:	2310      	movs	r3, #16
201007c6:	18fb      	adds	r3, r7, r3
201007c8:	609a      	str	r2, [r3, #8]
201007ca:	231c      	movs	r3, #28
201007cc:	18fa      	adds	r2, r7, r3
201007ce:	68fb      	ldr	r3, [r7, #12]
201007d0:	0011      	movs	r1, r2
201007d2:	0018      	movs	r0, r3
201007d4:	f000 fc02 	bl	20100fdc <dot3>
201007d8:	0003      	movs	r3, r0
201007da:	129a      	asrs	r2, r3, #10
201007dc:	68bb      	ldr	r3, [r7, #8]
201007de:	601a      	str	r2, [r3, #0]
201007e0:	68bb      	ldr	r3, [r7, #8]
201007e2:	1d1c      	adds	r4, r3, #4
201007e4:	2310      	movs	r3, #16
201007e6:	18fa      	adds	r2, r7, r3
201007e8:	68fb      	ldr	r3, [r7, #12]
201007ea:	0011      	movs	r1, r2
201007ec:	0018      	movs	r0, r3
201007ee:	f000 fbf5 	bl	20100fdc <dot3>
201007f2:	0003      	movs	r3, r0
201007f4:	425b      	negs	r3, r3
201007f6:	129b      	asrs	r3, r3, #10
201007f8:	6023      	str	r3, [r4, #0]
201007fa:	46c0      	nop			; (mov r8, r8)
201007fc:	46bd      	mov	sp, r7
201007fe:	b00b      	add	sp, #44	; 0x2c
20100800:	bd90      	pop	{r4, r7, pc}
20100802:	46c0      	nop			; (mov r8, r8)
20100804:	ffeff952 	.word	0xffeff952
20100808:	00000000 	.word	0x00000000
2010080c:	000002aa 	.word	0x000002aa
20100810:	000005aa 	.word	0x000005aa
20100814:	00000455 	.word	0x00000455

20100818 <dq_to_abc>:
20100818:	b5b0      	push	{r4, r5, r7, lr}
2010081a:	b084      	sub	sp, #16
2010081c:	af00      	add	r7, sp, #0
2010081e:	60f8      	str	r0, [r7, #12]
20100820:	60b9      	str	r1, [r7, #8]
20100822:	607a      	str	r2, [r7, #4]
20100824:	4b2f      	ldr	r3, [pc, #188]	; (201008e4 <dq_to_abc+0xcc>)
20100826:	447b      	add	r3, pc
20100828:	68ba      	ldr	r2, [r7, #8]
2010082a:	6812      	ldr	r2, [r2, #0]
2010082c:	492e      	ldr	r1, [pc, #184]	; (201008e8 <dq_to_abc+0xd0>)
2010082e:	5859      	ldr	r1, [r3, r1]
20100830:	6878      	ldr	r0, [r7, #4]
20100832:	0080      	lsls	r0, r0, #2
20100834:	5841      	ldr	r1, [r0, r1]
20100836:	4351      	muls	r1, r2
20100838:	68ba      	ldr	r2, [r7, #8]
2010083a:	3204      	adds	r2, #4
2010083c:	6812      	ldr	r2, [r2, #0]
2010083e:	6878      	ldr	r0, [r7, #4]
20100840:	24c0      	movs	r4, #192	; 0xc0
20100842:	00a4      	lsls	r4, r4, #2
20100844:	46a4      	mov	ip, r4
20100846:	4460      	add	r0, ip
20100848:	0580      	lsls	r0, r0, #22
2010084a:	0d84      	lsrs	r4, r0, #22
2010084c:	4826      	ldr	r0, [pc, #152]	; (201008e8 <dq_to_abc+0xd0>)
2010084e:	5818      	ldr	r0, [r3, r0]
20100850:	00a4      	lsls	r4, r4, #2
20100852:	5820      	ldr	r0, [r4, r0]
20100854:	4342      	muls	r2, r0
20100856:	1a8a      	subs	r2, r1, r2
20100858:	1511      	asrs	r1, r2, #20
2010085a:	68fa      	ldr	r2, [r7, #12]
2010085c:	6011      	str	r1, [r2, #0]
2010085e:	68fa      	ldr	r2, [r7, #12]
20100860:	3204      	adds	r2, #4
20100862:	68b9      	ldr	r1, [r7, #8]
20100864:	6809      	ldr	r1, [r1, #0]
20100866:	6878      	ldr	r0, [r7, #4]
20100868:	4c20      	ldr	r4, [pc, #128]	; (201008ec <dq_to_abc+0xd4>)
2010086a:	46a4      	mov	ip, r4
2010086c:	4460      	add	r0, ip
2010086e:	0580      	lsls	r0, r0, #22
20100870:	0d84      	lsrs	r4, r0, #22
20100872:	481d      	ldr	r0, [pc, #116]	; (201008e8 <dq_to_abc+0xd0>)
20100874:	5818      	ldr	r0, [r3, r0]
20100876:	00a4      	lsls	r4, r4, #2
20100878:	5820      	ldr	r0, [r4, r0]
2010087a:	4348      	muls	r0, r1
2010087c:	68b9      	ldr	r1, [r7, #8]
2010087e:	3104      	adds	r1, #4
20100880:	6809      	ldr	r1, [r1, #0]
20100882:	687c      	ldr	r4, [r7, #4]
20100884:	4d1a      	ldr	r5, [pc, #104]	; (201008f0 <dq_to_abc+0xd8>)
20100886:	46ac      	mov	ip, r5
20100888:	4464      	add	r4, ip
2010088a:	05a4      	lsls	r4, r4, #22
2010088c:	0da5      	lsrs	r5, r4, #22
2010088e:	4c16      	ldr	r4, [pc, #88]	; (201008e8 <dq_to_abc+0xd0>)
20100890:	591c      	ldr	r4, [r3, r4]
20100892:	00ad      	lsls	r5, r5, #2
20100894:	592c      	ldr	r4, [r5, r4]
20100896:	4361      	muls	r1, r4
20100898:	1a41      	subs	r1, r0, r1
2010089a:	1509      	asrs	r1, r1, #20
2010089c:	6011      	str	r1, [r2, #0]
2010089e:	68fa      	ldr	r2, [r7, #12]
201008a0:	3208      	adds	r2, #8
201008a2:	68b9      	ldr	r1, [r7, #8]
201008a4:	6809      	ldr	r1, [r1, #0]
201008a6:	6878      	ldr	r0, [r7, #4]
201008a8:	3056      	adds	r0, #86	; 0x56
201008aa:	30ff      	adds	r0, #255	; 0xff
201008ac:	0580      	lsls	r0, r0, #22
201008ae:	0d84      	lsrs	r4, r0, #22
201008b0:	480d      	ldr	r0, [pc, #52]	; (201008e8 <dq_to_abc+0xd0>)
201008b2:	5818      	ldr	r0, [r3, r0]
201008b4:	00a4      	lsls	r4, r4, #2
201008b6:	5820      	ldr	r0, [r4, r0]
201008b8:	4348      	muls	r0, r1
201008ba:	68b9      	ldr	r1, [r7, #8]
201008bc:	3104      	adds	r1, #4
201008be:	6809      	ldr	r1, [r1, #0]
201008c0:	687c      	ldr	r4, [r7, #4]
201008c2:	4d0c      	ldr	r5, [pc, #48]	; (201008f4 <dq_to_abc+0xdc>)
201008c4:	46ac      	mov	ip, r5
201008c6:	4464      	add	r4, ip
201008c8:	05a4      	lsls	r4, r4, #22
201008ca:	0da4      	lsrs	r4, r4, #22
201008cc:	4d06      	ldr	r5, [pc, #24]	; (201008e8 <dq_to_abc+0xd0>)
201008ce:	595b      	ldr	r3, [r3, r5]
201008d0:	00a4      	lsls	r4, r4, #2
201008d2:	58e3      	ldr	r3, [r4, r3]
201008d4:	434b      	muls	r3, r1
201008d6:	1ac3      	subs	r3, r0, r3
201008d8:	151b      	asrs	r3, r3, #20
201008da:	6013      	str	r3, [r2, #0]
201008dc:	46c0      	nop			; (mov r8, r8)
201008de:	46bd      	mov	sp, r7
201008e0:	b004      	add	sp, #16
201008e2:	bdb0      	pop	{r4, r5, r7, pc}
201008e4:	ffeff862 	.word	0xffeff862
201008e8:	00000000 	.word	0x00000000
201008ec:	000002aa 	.word	0x000002aa
201008f0:	000005aa 	.word	0x000005aa
201008f4:	00000455 	.word	0x00000455

201008f8 <cord_atan>:
201008f8:	b590      	push	{r4, r7, lr}
201008fa:	b09d      	sub	sp, #116	; 0x74
201008fc:	af00      	add	r7, sp, #0
201008fe:	60f8      	str	r0, [r7, #12]
20100900:	60b9      	str	r1, [r7, #8]
20100902:	607a      	str	r2, [r7, #4]
20100904:	2334      	movs	r3, #52	; 0x34
20100906:	18fb      	adds	r3, r7, r3
20100908:	4a43      	ldr	r2, [pc, #268]	; (20100a18 <cord_atan+0x120>)
2010090a:	447a      	add	r2, pc
2010090c:	ca13      	ldmia	r2!, {r0, r1, r4}
2010090e:	c313      	stmia	r3!, {r0, r1, r4}
20100910:	ca13      	ldmia	r2!, {r0, r1, r4}
20100912:	c313      	stmia	r3!, {r0, r1, r4}
20100914:	ca03      	ldmia	r2!, {r0, r1}
20100916:	c303      	stmia	r3!, {r0, r1}
20100918:	2314      	movs	r3, #20
2010091a:	18fb      	adds	r3, r7, r3
2010091c:	4a3f      	ldr	r2, [pc, #252]	; (20100a1c <cord_atan+0x124>)
2010091e:	447a      	add	r2, pc
20100920:	ca13      	ldmia	r2!, {r0, r1, r4}
20100922:	c313      	stmia	r3!, {r0, r1, r4}
20100924:	ca13      	ldmia	r2!, {r0, r1, r4}
20100926:	c313      	stmia	r3!, {r0, r1, r4}
20100928:	ca03      	ldmia	r2!, {r0, r1}
2010092a:	c303      	stmia	r3!, {r0, r1}
2010092c:	2300      	movs	r3, #0
2010092e:	66fb      	str	r3, [r7, #108]	; 0x6c
20100930:	2300      	movs	r3, #0
20100932:	66bb      	str	r3, [r7, #104]	; 0x68
20100934:	2300      	movs	r3, #0
20100936:	65fb      	str	r3, [r7, #92]	; 0x5c
20100938:	68fb      	ldr	r3, [r7, #12]
2010093a:	681b      	ldr	r3, [r3, #0]
2010093c:	17da      	asrs	r2, r3, #31
2010093e:	189b      	adds	r3, r3, r2
20100940:	4053      	eors	r3, r2
20100942:	667b      	str	r3, [r7, #100]	; 0x64
20100944:	68fb      	ldr	r3, [r7, #12]
20100946:	685b      	ldr	r3, [r3, #4]
20100948:	663b      	str	r3, [r7, #96]	; 0x60
2010094a:	2300      	movs	r3, #0
2010094c:	66bb      	str	r3, [r7, #104]	; 0x68
2010094e:	e03a      	b.n	201009c6 <cord_atan+0xce>
20100950:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
20100952:	3301      	adds	r3, #1
20100954:	65fb      	str	r3, [r7, #92]	; 0x5c
20100956:	6e7b      	ldr	r3, [r7, #100]	; 0x64
20100958:	65bb      	str	r3, [r7, #88]	; 0x58
2010095a:	6e3b      	ldr	r3, [r7, #96]	; 0x60
2010095c:	657b      	str	r3, [r7, #84]	; 0x54
2010095e:	6e3b      	ldr	r3, [r7, #96]	; 0x60
20100960:	2b00      	cmp	r3, #0
20100962:	dd15      	ble.n	20100990 <cord_atan+0x98>
20100964:	6d7a      	ldr	r2, [r7, #84]	; 0x54
20100966:	6ebb      	ldr	r3, [r7, #104]	; 0x68
20100968:	411a      	asrs	r2, r3
2010096a:	6dbb      	ldr	r3, [r7, #88]	; 0x58
2010096c:	18d3      	adds	r3, r2, r3
2010096e:	667b      	str	r3, [r7, #100]	; 0x64
20100970:	6dba      	ldr	r2, [r7, #88]	; 0x58
20100972:	6ebb      	ldr	r3, [r7, #104]	; 0x68
20100974:	411a      	asrs	r2, r3
20100976:	0013      	movs	r3, r2
20100978:	6d7a      	ldr	r2, [r7, #84]	; 0x54
2010097a:	1ad3      	subs	r3, r2, r3
2010097c:	663b      	str	r3, [r7, #96]	; 0x60
2010097e:	2334      	movs	r3, #52	; 0x34
20100980:	18fb      	adds	r3, r7, r3
20100982:	6eba      	ldr	r2, [r7, #104]	; 0x68
20100984:	0092      	lsls	r2, r2, #2
20100986:	58d3      	ldr	r3, [r2, r3]
20100988:	6efa      	ldr	r2, [r7, #108]	; 0x6c
2010098a:	18d3      	adds	r3, r2, r3
2010098c:	66fb      	str	r3, [r7, #108]	; 0x6c
2010098e:	e014      	b.n	201009ba <cord_atan+0xc2>
20100990:	6d7a      	ldr	r2, [r7, #84]	; 0x54
20100992:	6ebb      	ldr	r3, [r7, #104]	; 0x68
20100994:	411a      	asrs	r2, r3
20100996:	0013      	movs	r3, r2
20100998:	6dba      	ldr	r2, [r7, #88]	; 0x58
2010099a:	1ad3      	subs	r3, r2, r3
2010099c:	667b      	str	r3, [r7, #100]	; 0x64
2010099e:	6dba      	ldr	r2, [r7, #88]	; 0x58
201009a0:	6ebb      	ldr	r3, [r7, #104]	; 0x68
201009a2:	411a      	asrs	r2, r3
201009a4:	6d7b      	ldr	r3, [r7, #84]	; 0x54
201009a6:	18d3      	adds	r3, r2, r3
201009a8:	663b      	str	r3, [r7, #96]	; 0x60
201009aa:	2334      	movs	r3, #52	; 0x34
201009ac:	18fb      	adds	r3, r7, r3
201009ae:	6eba      	ldr	r2, [r7, #104]	; 0x68
201009b0:	0092      	lsls	r2, r2, #2
201009b2:	58d3      	ldr	r3, [r2, r3]
201009b4:	6efa      	ldr	r2, [r7, #108]	; 0x6c
201009b6:	1ad3      	subs	r3, r2, r3
201009b8:	66fb      	str	r3, [r7, #108]	; 0x6c
201009ba:	6e3b      	ldr	r3, [r7, #96]	; 0x60
201009bc:	2b00      	cmp	r3, #0
201009be:	d006      	beq.n	201009ce <cord_atan+0xd6>
201009c0:	6ebb      	ldr	r3, [r7, #104]	; 0x68
201009c2:	3301      	adds	r3, #1
201009c4:	66bb      	str	r3, [r7, #104]	; 0x68
201009c6:	6ebb      	ldr	r3, [r7, #104]	; 0x68
201009c8:	2b07      	cmp	r3, #7
201009ca:	ddc1      	ble.n	20100950 <cord_atan+0x58>
201009cc:	e000      	b.n	201009d0 <cord_atan+0xd8>
201009ce:	46c0      	nop			; (mov r8, r8)
201009d0:	68fb      	ldr	r3, [r7, #12]
201009d2:	681b      	ldr	r3, [r3, #0]
201009d4:	2b00      	cmp	r3, #0
201009d6:	da04      	bge.n	201009e2 <cord_atan+0xea>
201009d8:	6efb      	ldr	r3, [r7, #108]	; 0x6c
201009da:	2280      	movs	r2, #128	; 0x80
201009dc:	0092      	lsls	r2, r2, #2
201009de:	1ad3      	subs	r3, r2, r3
201009e0:	66fb      	str	r3, [r7, #108]	; 0x6c
201009e2:	6efb      	ldr	r3, [r7, #108]	; 0x6c
201009e4:	2b00      	cmp	r3, #0
201009e6:	da05      	bge.n	201009f4 <cord_atan+0xfc>
201009e8:	6efb      	ldr	r3, [r7, #108]	; 0x6c
201009ea:	2280      	movs	r2, #128	; 0x80
201009ec:	00d2      	lsls	r2, r2, #3
201009ee:	4694      	mov	ip, r2
201009f0:	4463      	add	r3, ip
201009f2:	66fb      	str	r3, [r7, #108]	; 0x6c
201009f4:	68bb      	ldr	r3, [r7, #8]
201009f6:	6efa      	ldr	r2, [r7, #108]	; 0x6c
201009f8:	601a      	str	r2, [r3, #0]
201009fa:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
201009fc:	1e5a      	subs	r2, r3, #1
201009fe:	2314      	movs	r3, #20
20100a00:	18fb      	adds	r3, r7, r3
20100a02:	0092      	lsls	r2, r2, #2
20100a04:	58d3      	ldr	r3, [r2, r3]
20100a06:	6e7a      	ldr	r2, [r7, #100]	; 0x64
20100a08:	4353      	muls	r3, r2
20100a0a:	129a      	asrs	r2, r3, #10
20100a0c:	687b      	ldr	r3, [r7, #4]
20100a0e:	601a      	str	r2, [r3, #0]
20100a10:	46c0      	nop			; (mov r8, r8)
20100a12:	46bd      	mov	sp, r7
20100a14:	b01d      	add	sp, #116	; 0x74
20100a16:	bd90      	pop	{r4, r7, pc}
20100a18:	00001d12 	.word	0x00001d12
20100a1c:	00001d1e 	.word	0x00001d1e

20100a20 <sinpwm>:
20100a20:	b580      	push	{r7, lr}
20100a22:	b088      	sub	sp, #32
20100a24:	af00      	add	r7, sp, #0
20100a26:	60f8      	str	r0, [r7, #12]
20100a28:	60b9      	str	r1, [r7, #8]
20100a2a:	607a      	str	r2, [r7, #4]
20100a2c:	2300      	movs	r3, #0
20100a2e:	61fb      	str	r3, [r7, #28]
20100a30:	2318      	movs	r3, #24
20100a32:	18fa      	adds	r2, r7, r3
20100a34:	2314      	movs	r3, #20
20100a36:	18f9      	adds	r1, r7, r3
20100a38:	68bb      	ldr	r3, [r7, #8]
20100a3a:	0018      	movs	r0, r3
20100a3c:	f7ff ff5c 	bl	201008f8 <cord_atan>
20100a40:	69bb      	ldr	r3, [r7, #24]
20100a42:	129b      	asrs	r3, r3, #10
20100a44:	61bb      	str	r3, [r7, #24]
20100a46:	69ba      	ldr	r2, [r7, #24]
20100a48:	23fa      	movs	r3, #250	; 0xfa
20100a4a:	005b      	lsls	r3, r3, #1
20100a4c:	429a      	cmp	r2, r3
20100a4e:	dd05      	ble.n	20100a5c <sinpwm+0x3c>
20100a50:	23fa      	movs	r3, #250	; 0xfa
20100a52:	005b      	lsls	r3, r3, #1
20100a54:	61bb      	str	r3, [r7, #24]
20100a56:	2301      	movs	r3, #1
20100a58:	61fb      	str	r3, [r7, #28]
20100a5a:	e001      	b.n	20100a60 <sinpwm+0x40>
20100a5c:	2300      	movs	r3, #0
20100a5e:	61fb      	str	r3, [r7, #28]
20100a60:	687a      	ldr	r2, [r7, #4]
20100a62:	68b9      	ldr	r1, [r7, #8]
20100a64:	68fb      	ldr	r3, [r7, #12]
20100a66:	0018      	movs	r0, r3
20100a68:	f7ff fed6 	bl	20100818 <dq_to_abc>
20100a6c:	69fb      	ldr	r3, [r7, #28]
20100a6e:	0018      	movs	r0, r3
20100a70:	46bd      	mov	sp, r7
20100a72:	b008      	add	sp, #32
20100a74:	bd80      	pop	{r7, pc}
20100a76:	46c0      	nop			; (mov r8, r8)

20100a78 <svpwm>:
20100a78:	b580      	push	{r7, lr}
20100a7a:	b08c      	sub	sp, #48	; 0x30
20100a7c:	af00      	add	r7, sp, #0
20100a7e:	60f8      	str	r0, [r7, #12]
20100a80:	60b9      	str	r1, [r7, #8]
20100a82:	607a      	str	r2, [r7, #4]
20100a84:	2300      	movs	r3, #0
20100a86:	62fb      	str	r3, [r7, #44]	; 0x2c
20100a88:	2318      	movs	r3, #24
20100a8a:	18fa      	adds	r2, r7, r3
20100a8c:	2314      	movs	r3, #20
20100a8e:	18f9      	adds	r1, r7, r3
20100a90:	68bb      	ldr	r3, [r7, #8]
20100a92:	0018      	movs	r0, r3
20100a94:	f7ff ff30 	bl	201008f8 <cord_atan>
20100a98:	69bb      	ldr	r3, [r7, #24]
20100a9a:	129b      	asrs	r3, r3, #10
20100a9c:	61bb      	str	r3, [r7, #24]
20100a9e:	697a      	ldr	r2, [r7, #20]
20100aa0:	687b      	ldr	r3, [r7, #4]
20100aa2:	18d3      	adds	r3, r2, r3
20100aa4:	059b      	lsls	r3, r3, #22
20100aa6:	0d9b      	lsrs	r3, r3, #22
20100aa8:	62bb      	str	r3, [r7, #40]	; 0x28
20100aaa:	69ba      	ldr	r2, [r7, #24]
20100aac:	23fa      	movs	r3, #250	; 0xfa
20100aae:	005b      	lsls	r3, r3, #1
20100ab0:	429a      	cmp	r2, r3
20100ab2:	dd05      	ble.n	20100ac0 <svpwm+0x48>
20100ab4:	23fa      	movs	r3, #250	; 0xfa
20100ab6:	005b      	lsls	r3, r3, #1
20100ab8:	61bb      	str	r3, [r7, #24]
20100aba:	2301      	movs	r3, #1
20100abc:	62fb      	str	r3, [r7, #44]	; 0x2c
20100abe:	e001      	b.n	20100ac4 <svpwm+0x4c>
20100ac0:	2300      	movs	r3, #0
20100ac2:	62fb      	str	r3, [r7, #44]	; 0x2c
20100ac4:	6aba      	ldr	r2, [r7, #40]	; 0x28
20100ac6:	0013      	movs	r3, r2
20100ac8:	005b      	lsls	r3, r3, #1
20100aca:	189b      	adds	r3, r3, r2
20100acc:	005b      	lsls	r3, r3, #1
20100ace:	129b      	asrs	r3, r3, #10
20100ad0:	627b      	str	r3, [r7, #36]	; 0x24
20100ad2:	6a7b      	ldr	r3, [r7, #36]	; 0x24
20100ad4:	2b05      	cmp	r3, #5
20100ad6:	d900      	bls.n	20100ada <svpwm+0x62>
20100ad8:	e10e      	b.n	20100cf8 <svpwm+0x280>
20100ada:	0018      	movs	r0, r3
20100adc:	f000 fa94 	bl	20101008 <__gnu_thumb1_case_si>
20100ae0:	00000018 	.word	0x00000018
20100ae4:	00000066 	.word	0x00000066
20100ae8:	000000ba 	.word	0x000000ba
20100aec:	00000110 	.word	0x00000110
20100af0:	00000168 	.word	0x00000168
20100af4:	000001c0 	.word	0x000001c0
20100af8:	6abb      	ldr	r3, [r7, #40]	; 0x28
20100afa:	4a82      	ldr	r2, [pc, #520]	; (20100d04 <svpwm+0x28c>)
20100afc:	1ad3      	subs	r3, r2, r3
20100afe:	0018      	movs	r0, r3
20100b00:	f7ff fdb0 	bl	20100664 <mysin>
20100b04:	0002      	movs	r2, r0
20100b06:	69bb      	ldr	r3, [r7, #24]
20100b08:	4353      	muls	r3, r2
20100b0a:	129b      	asrs	r3, r3, #10
20100b0c:	623b      	str	r3, [r7, #32]
20100b0e:	6abb      	ldr	r3, [r7, #40]	; 0x28
20100b10:	0018      	movs	r0, r3
20100b12:	f7ff fda7 	bl	20100664 <mysin>
20100b16:	0002      	movs	r2, r0
20100b18:	69bb      	ldr	r3, [r7, #24]
20100b1a:	4353      	muls	r3, r2
20100b1c:	129b      	asrs	r3, r3, #10
20100b1e:	61fb      	str	r3, [r7, #28]
20100b20:	6a3a      	ldr	r2, [r7, #32]
20100b22:	69fb      	ldr	r3, [r7, #28]
20100b24:	18d2      	adds	r2, r2, r3
20100b26:	68fb      	ldr	r3, [r7, #12]
20100b28:	601a      	str	r2, [r3, #0]
20100b2a:	68fb      	ldr	r3, [r7, #12]
20100b2c:	3304      	adds	r3, #4
20100b2e:	69f9      	ldr	r1, [r7, #28]
20100b30:	6a3a      	ldr	r2, [r7, #32]
20100b32:	1a8a      	subs	r2, r1, r2
20100b34:	601a      	str	r2, [r3, #0]
20100b36:	68fb      	ldr	r3, [r7, #12]
20100b38:	3308      	adds	r3, #8
20100b3a:	6a3a      	ldr	r2, [r7, #32]
20100b3c:	4251      	negs	r1, r2
20100b3e:	69fa      	ldr	r2, [r7, #28]
20100b40:	1a8a      	subs	r2, r1, r2
20100b42:	601a      	str	r2, [r3, #0]
20100b44:	e0d8      	b.n	20100cf8 <svpwm+0x280>
20100b46:	6abb      	ldr	r3, [r7, #40]	; 0x28
20100b48:	3baa      	subs	r3, #170	; 0xaa
20100b4a:	62bb      	str	r3, [r7, #40]	; 0x28
20100b4c:	6abb      	ldr	r3, [r7, #40]	; 0x28
20100b4e:	4a6d      	ldr	r2, [pc, #436]	; (20100d04 <svpwm+0x28c>)
20100b50:	1ad3      	subs	r3, r2, r3
20100b52:	0018      	movs	r0, r3
20100b54:	f7ff fd86 	bl	20100664 <mysin>
20100b58:	0002      	movs	r2, r0
20100b5a:	69bb      	ldr	r3, [r7, #24]
20100b5c:	4353      	muls	r3, r2
20100b5e:	129b      	asrs	r3, r3, #10
20100b60:	623b      	str	r3, [r7, #32]
20100b62:	6abb      	ldr	r3, [r7, #40]	; 0x28
20100b64:	0018      	movs	r0, r3
20100b66:	f7ff fd7d 	bl	20100664 <mysin>
20100b6a:	0002      	movs	r2, r0
20100b6c:	69bb      	ldr	r3, [r7, #24]
20100b6e:	4353      	muls	r3, r2
20100b70:	129b      	asrs	r3, r3, #10
20100b72:	61fb      	str	r3, [r7, #28]
20100b74:	6a3a      	ldr	r2, [r7, #32]
20100b76:	69fb      	ldr	r3, [r7, #28]
20100b78:	1ad2      	subs	r2, r2, r3
20100b7a:	68fb      	ldr	r3, [r7, #12]
20100b7c:	601a      	str	r2, [r3, #0]
20100b7e:	68fb      	ldr	r3, [r7, #12]
20100b80:	3304      	adds	r3, #4
20100b82:	6a39      	ldr	r1, [r7, #32]
20100b84:	69fa      	ldr	r2, [r7, #28]
20100b86:	188a      	adds	r2, r1, r2
20100b88:	601a      	str	r2, [r3, #0]
20100b8a:	68fb      	ldr	r3, [r7, #12]
20100b8c:	3308      	adds	r3, #8
20100b8e:	6a3a      	ldr	r2, [r7, #32]
20100b90:	4251      	negs	r1, r2
20100b92:	69fa      	ldr	r2, [r7, #28]
20100b94:	1a8a      	subs	r2, r1, r2
20100b96:	601a      	str	r2, [r3, #0]
20100b98:	e0ae      	b.n	20100cf8 <svpwm+0x280>
20100b9a:	6abb      	ldr	r3, [r7, #40]	; 0x28
20100b9c:	3b56      	subs	r3, #86	; 0x56
20100b9e:	3bff      	subs	r3, #255	; 0xff
20100ba0:	62bb      	str	r3, [r7, #40]	; 0x28
20100ba2:	6abb      	ldr	r3, [r7, #40]	; 0x28
20100ba4:	4a57      	ldr	r2, [pc, #348]	; (20100d04 <svpwm+0x28c>)
20100ba6:	1ad3      	subs	r3, r2, r3
20100ba8:	0018      	movs	r0, r3
20100baa:	f7ff fd5b 	bl	20100664 <mysin>
20100bae:	0002      	movs	r2, r0
20100bb0:	69bb      	ldr	r3, [r7, #24]
20100bb2:	4353      	muls	r3, r2
20100bb4:	129b      	asrs	r3, r3, #10
20100bb6:	623b      	str	r3, [r7, #32]
20100bb8:	6abb      	ldr	r3, [r7, #40]	; 0x28
20100bba:	0018      	movs	r0, r3
20100bbc:	f7ff fd52 	bl	20100664 <mysin>
20100bc0:	0002      	movs	r2, r0
20100bc2:	69bb      	ldr	r3, [r7, #24]
20100bc4:	4353      	muls	r3, r2
20100bc6:	129b      	asrs	r3, r3, #10
20100bc8:	61fb      	str	r3, [r7, #28]
20100bca:	6a3b      	ldr	r3, [r7, #32]
20100bcc:	425a      	negs	r2, r3
20100bce:	69fb      	ldr	r3, [r7, #28]
20100bd0:	1ad2      	subs	r2, r2, r3
20100bd2:	68fb      	ldr	r3, [r7, #12]
20100bd4:	601a      	str	r2, [r3, #0]
20100bd6:	68fb      	ldr	r3, [r7, #12]
20100bd8:	3304      	adds	r3, #4
20100bda:	6a39      	ldr	r1, [r7, #32]
20100bdc:	69fa      	ldr	r2, [r7, #28]
20100bde:	188a      	adds	r2, r1, r2
20100be0:	601a      	str	r2, [r3, #0]
20100be2:	68fb      	ldr	r3, [r7, #12]
20100be4:	3308      	adds	r3, #8
20100be6:	69f9      	ldr	r1, [r7, #28]
20100be8:	6a3a      	ldr	r2, [r7, #32]
20100bea:	1a8a      	subs	r2, r1, r2
20100bec:	601a      	str	r2, [r3, #0]
20100bee:	e083      	b.n	20100cf8 <svpwm+0x280>
20100bf0:	6abb      	ldr	r3, [r7, #40]	; 0x28
20100bf2:	4a45      	ldr	r2, [pc, #276]	; (20100d08 <svpwm+0x290>)
20100bf4:	4694      	mov	ip, r2
20100bf6:	4463      	add	r3, ip
20100bf8:	62bb      	str	r3, [r7, #40]	; 0x28
20100bfa:	6abb      	ldr	r3, [r7, #40]	; 0x28
20100bfc:	4a41      	ldr	r2, [pc, #260]	; (20100d04 <svpwm+0x28c>)
20100bfe:	1ad3      	subs	r3, r2, r3
20100c00:	0018      	movs	r0, r3
20100c02:	f7ff fd2f 	bl	20100664 <mysin>
20100c06:	0002      	movs	r2, r0
20100c08:	69bb      	ldr	r3, [r7, #24]
20100c0a:	4353      	muls	r3, r2
20100c0c:	129b      	asrs	r3, r3, #10
20100c0e:	623b      	str	r3, [r7, #32]
20100c10:	6abb      	ldr	r3, [r7, #40]	; 0x28
20100c12:	0018      	movs	r0, r3
20100c14:	f7ff fd26 	bl	20100664 <mysin>
20100c18:	0002      	movs	r2, r0
20100c1a:	69bb      	ldr	r3, [r7, #24]
20100c1c:	4353      	muls	r3, r2
20100c1e:	129b      	asrs	r3, r3, #10
20100c20:	61fb      	str	r3, [r7, #28]
20100c22:	6a3b      	ldr	r3, [r7, #32]
20100c24:	425a      	negs	r2, r3
20100c26:	69fb      	ldr	r3, [r7, #28]
20100c28:	1ad2      	subs	r2, r2, r3
20100c2a:	68fb      	ldr	r3, [r7, #12]
20100c2c:	601a      	str	r2, [r3, #0]
20100c2e:	68fb      	ldr	r3, [r7, #12]
20100c30:	3304      	adds	r3, #4
20100c32:	6a39      	ldr	r1, [r7, #32]
20100c34:	69fa      	ldr	r2, [r7, #28]
20100c36:	1a8a      	subs	r2, r1, r2
20100c38:	601a      	str	r2, [r3, #0]
20100c3a:	68fb      	ldr	r3, [r7, #12]
20100c3c:	3308      	adds	r3, #8
20100c3e:	6a39      	ldr	r1, [r7, #32]
20100c40:	69fa      	ldr	r2, [r7, #28]
20100c42:	188a      	adds	r2, r1, r2
20100c44:	601a      	str	r2, [r3, #0]
20100c46:	e057      	b.n	20100cf8 <svpwm+0x280>
20100c48:	6abb      	ldr	r3, [r7, #40]	; 0x28
20100c4a:	4a30      	ldr	r2, [pc, #192]	; (20100d0c <svpwm+0x294>)
20100c4c:	4694      	mov	ip, r2
20100c4e:	4463      	add	r3, ip
20100c50:	62bb      	str	r3, [r7, #40]	; 0x28
20100c52:	6abb      	ldr	r3, [r7, #40]	; 0x28
20100c54:	4a2b      	ldr	r2, [pc, #172]	; (20100d04 <svpwm+0x28c>)
20100c56:	1ad3      	subs	r3, r2, r3
20100c58:	0018      	movs	r0, r3
20100c5a:	f7ff fd03 	bl	20100664 <mysin>
20100c5e:	0002      	movs	r2, r0
20100c60:	69bb      	ldr	r3, [r7, #24]
20100c62:	4353      	muls	r3, r2
20100c64:	129b      	asrs	r3, r3, #10
20100c66:	623b      	str	r3, [r7, #32]
20100c68:	6abb      	ldr	r3, [r7, #40]	; 0x28
20100c6a:	0018      	movs	r0, r3
20100c6c:	f7ff fcfa 	bl	20100664 <mysin>
20100c70:	0002      	movs	r2, r0
20100c72:	69bb      	ldr	r3, [r7, #24]
20100c74:	4353      	muls	r3, r2
20100c76:	129b      	asrs	r3, r3, #10
20100c78:	61fb      	str	r3, [r7, #28]
20100c7a:	69fa      	ldr	r2, [r7, #28]
20100c7c:	6a3b      	ldr	r3, [r7, #32]
20100c7e:	1ad2      	subs	r2, r2, r3
20100c80:	68fb      	ldr	r3, [r7, #12]
20100c82:	601a      	str	r2, [r3, #0]
20100c84:	68fb      	ldr	r3, [r7, #12]
20100c86:	3304      	adds	r3, #4
20100c88:	6a3a      	ldr	r2, [r7, #32]
20100c8a:	4251      	negs	r1, r2
20100c8c:	69fa      	ldr	r2, [r7, #28]
20100c8e:	1a8a      	subs	r2, r1, r2
20100c90:	601a      	str	r2, [r3, #0]
20100c92:	68fb      	ldr	r3, [r7, #12]
20100c94:	3308      	adds	r3, #8
20100c96:	6a39      	ldr	r1, [r7, #32]
20100c98:	69fa      	ldr	r2, [r7, #28]
20100c9a:	188a      	adds	r2, r1, r2
20100c9c:	601a      	str	r2, [r3, #0]
20100c9e:	e02b      	b.n	20100cf8 <svpwm+0x280>
20100ca0:	6abb      	ldr	r3, [r7, #40]	; 0x28
20100ca2:	4a1b      	ldr	r2, [pc, #108]	; (20100d10 <svpwm+0x298>)
20100ca4:	4694      	mov	ip, r2
20100ca6:	4463      	add	r3, ip
20100ca8:	62bb      	str	r3, [r7, #40]	; 0x28
20100caa:	6abb      	ldr	r3, [r7, #40]	; 0x28
20100cac:	4a15      	ldr	r2, [pc, #84]	; (20100d04 <svpwm+0x28c>)
20100cae:	1ad3      	subs	r3, r2, r3
20100cb0:	0018      	movs	r0, r3
20100cb2:	f7ff fcd7 	bl	20100664 <mysin>
20100cb6:	0002      	movs	r2, r0
20100cb8:	69bb      	ldr	r3, [r7, #24]
20100cba:	4353      	muls	r3, r2
20100cbc:	129b      	asrs	r3, r3, #10
20100cbe:	623b      	str	r3, [r7, #32]
20100cc0:	6abb      	ldr	r3, [r7, #40]	; 0x28
20100cc2:	0018      	movs	r0, r3
20100cc4:	f7ff fcce 	bl	20100664 <mysin>
20100cc8:	0002      	movs	r2, r0
20100cca:	69bb      	ldr	r3, [r7, #24]
20100ccc:	4353      	muls	r3, r2
20100cce:	129b      	asrs	r3, r3, #10
20100cd0:	61fb      	str	r3, [r7, #28]
20100cd2:	6a3a      	ldr	r2, [r7, #32]
20100cd4:	69fb      	ldr	r3, [r7, #28]
20100cd6:	18d2      	adds	r2, r2, r3
20100cd8:	68fb      	ldr	r3, [r7, #12]
20100cda:	601a      	str	r2, [r3, #0]
20100cdc:	68fb      	ldr	r3, [r7, #12]
20100cde:	3304      	adds	r3, #4
20100ce0:	6a3a      	ldr	r2, [r7, #32]
20100ce2:	4251      	negs	r1, r2
20100ce4:	69fa      	ldr	r2, [r7, #28]
20100ce6:	1a8a      	subs	r2, r1, r2
20100ce8:	601a      	str	r2, [r3, #0]
20100cea:	68fb      	ldr	r3, [r7, #12]
20100cec:	3308      	adds	r3, #8
20100cee:	6a39      	ldr	r1, [r7, #32]
20100cf0:	69fa      	ldr	r2, [r7, #28]
20100cf2:	1a8a      	subs	r2, r1, r2
20100cf4:	601a      	str	r2, [r3, #0]
20100cf6:	46c0      	nop			; (mov r8, r8)
20100cf8:	6afb      	ldr	r3, [r7, #44]	; 0x2c
20100cfa:	0018      	movs	r0, r3
20100cfc:	46bd      	mov	sp, r7
20100cfe:	b00c      	add	sp, #48	; 0x30
20100d00:	bd80      	pop	{r7, pc}
20100d02:	46c0      	nop			; (mov r8, r8)
20100d04:	000004aa 	.word	0x000004aa
20100d08:	fffffe00 	.word	0xfffffe00
20100d0c:	fffffd56 	.word	0xfffffd56
20100d10:	fffffcab 	.word	0xfffffcab

20100d14 <get_speed>:
20100d14:	b580      	push	{r7, lr}
20100d16:	b084      	sub	sp, #16
20100d18:	af00      	add	r7, sp, #0
20100d1a:	6078      	str	r0, [r7, #4]
20100d1c:	6039      	str	r1, [r7, #0]
20100d1e:	4b1c      	ldr	r3, [pc, #112]	; (20100d90 <get_speed+0x7c>)
20100d20:	60bb      	str	r3, [r7, #8]
20100d22:	4b1c      	ldr	r3, [pc, #112]	; (20100d94 <get_speed+0x80>)
20100d24:	447b      	add	r3, pc
20100d26:	681b      	ldr	r3, [r3, #0]
20100d28:	687a      	ldr	r2, [r7, #4]
20100d2a:	1ad3      	subs	r3, r2, r3
20100d2c:	60fb      	str	r3, [r7, #12]
20100d2e:	4b1a      	ldr	r3, [pc, #104]	; (20100d98 <get_speed+0x84>)
20100d30:	447b      	add	r3, pc
20100d32:	681a      	ldr	r2, [r3, #0]
20100d34:	4b19      	ldr	r3, [pc, #100]	; (20100d9c <get_speed+0x88>)
20100d36:	447b      	add	r3, pc
20100d38:	601a      	str	r2, [r3, #0]
20100d3a:	4b19      	ldr	r3, [pc, #100]	; (20100da0 <get_speed+0x8c>)
20100d3c:	447b      	add	r3, pc
20100d3e:	687a      	ldr	r2, [r7, #4]
20100d40:	601a      	str	r2, [r3, #0]
20100d42:	68fb      	ldr	r3, [r7, #12]
20100d44:	17d9      	asrs	r1, r3, #31
20100d46:	185a      	adds	r2, r3, r1
20100d48:	404a      	eors	r2, r1
20100d4a:	23fa      	movs	r3, #250	; 0xfa
20100d4c:	009b      	lsls	r3, r3, #2
20100d4e:	429a      	cmp	r2, r3
20100d50:	dd0e      	ble.n	20100d70 <get_speed+0x5c>
20100d52:	68fb      	ldr	r3, [r7, #12]
20100d54:	2b00      	cmp	r3, #0
20100d56:	da06      	bge.n	20100d66 <get_speed+0x52>
20100d58:	68fb      	ldr	r3, [r7, #12]
20100d5a:	2280      	movs	r2, #128	; 0x80
20100d5c:	0152      	lsls	r2, r2, #5
20100d5e:	4694      	mov	ip, r2
20100d60:	4463      	add	r3, ip
20100d62:	60fb      	str	r3, [r7, #12]
20100d64:	e004      	b.n	20100d70 <get_speed+0x5c>
20100d66:	68fb      	ldr	r3, [r7, #12]
20100d68:	4a0e      	ldr	r2, [pc, #56]	; (20100da4 <get_speed+0x90>)
20100d6a:	4694      	mov	ip, r2
20100d6c:	4463      	add	r3, ip
20100d6e:	60fb      	str	r3, [r7, #12]
20100d70:	683b      	ldr	r3, [r7, #0]
20100d72:	681a      	ldr	r2, [r3, #0]
20100d74:	68fb      	ldr	r3, [r7, #12]
20100d76:	18d2      	adds	r2, r2, r3
20100d78:	683b      	ldr	r3, [r7, #0]
20100d7a:	601a      	str	r2, [r3, #0]
20100d7c:	68fb      	ldr	r3, [r7, #12]
20100d7e:	105b      	asrs	r3, r3, #1
20100d80:	68ba      	ldr	r2, [r7, #8]
20100d82:	4353      	muls	r3, r2
20100d84:	131b      	asrs	r3, r3, #12
20100d86:	0018      	movs	r0, r3
20100d88:	46bd      	mov	sp, r7
20100d8a:	b004      	add	sp, #16
20100d8c:	bd80      	pop	{r7, pc}
20100d8e:	46c0      	nop			; (mov r8, r8)
20100d90:	0002ae7c 	.word	0x0002ae7c
20100d94:	ffeff390 	.word	0xffeff390
20100d98:	ffeff388 	.word	0xffeff388
20100d9c:	ffeff37e 	.word	0xffeff37e
20100da0:	ffeff37c 	.word	0xffeff37c
20100da4:	fffff000 	.word	0xfffff000

20100da8 <c_mfilter>:
20100da8:	b580      	push	{r7, lr}
20100daa:	b082      	sub	sp, #8
20100dac:	af00      	add	r7, sp, #0
20100dae:	6078      	str	r0, [r7, #4]
20100db0:	4b14      	ldr	r3, [pc, #80]	; (20100e04 <c_mfilter+0x5c>)
20100db2:	447b      	add	r3, pc
20100db4:	681b      	ldr	r3, [r3, #0]
20100db6:	3301      	adds	r3, #1
20100db8:	221f      	movs	r2, #31
20100dba:	401a      	ands	r2, r3
20100dbc:	4b12      	ldr	r3, [pc, #72]	; (20100e08 <c_mfilter+0x60>)
20100dbe:	447b      	add	r3, pc
20100dc0:	601a      	str	r2, [r3, #0]
20100dc2:	4b12      	ldr	r3, [pc, #72]	; (20100e0c <c_mfilter+0x64>)
20100dc4:	447b      	add	r3, pc
20100dc6:	681a      	ldr	r2, [r3, #0]
20100dc8:	4b11      	ldr	r3, [pc, #68]	; (20100e10 <c_mfilter+0x68>)
20100dca:	447b      	add	r3, pc
20100dcc:	6819      	ldr	r1, [r3, #0]
20100dce:	4b11      	ldr	r3, [pc, #68]	; (20100e14 <c_mfilter+0x6c>)
20100dd0:	447b      	add	r3, pc
20100dd2:	0089      	lsls	r1, r1, #2
20100dd4:	58cb      	ldr	r3, [r1, r3]
20100dd6:	1ad2      	subs	r2, r2, r3
20100dd8:	687b      	ldr	r3, [r7, #4]
20100dda:	18d2      	adds	r2, r2, r3
20100ddc:	4b0e      	ldr	r3, [pc, #56]	; (20100e18 <c_mfilter+0x70>)
20100dde:	447b      	add	r3, pc
20100de0:	601a      	str	r2, [r3, #0]
20100de2:	4b0e      	ldr	r3, [pc, #56]	; (20100e1c <c_mfilter+0x74>)
20100de4:	447b      	add	r3, pc
20100de6:	681a      	ldr	r2, [r3, #0]
20100de8:	4b0d      	ldr	r3, [pc, #52]	; (20100e20 <c_mfilter+0x78>)
20100dea:	447b      	add	r3, pc
20100dec:	0092      	lsls	r2, r2, #2
20100dee:	6879      	ldr	r1, [r7, #4]
20100df0:	50d1      	str	r1, [r2, r3]
20100df2:	4b0c      	ldr	r3, [pc, #48]	; (20100e24 <c_mfilter+0x7c>)
20100df4:	447b      	add	r3, pc
20100df6:	681b      	ldr	r3, [r3, #0]
20100df8:	115b      	asrs	r3, r3, #5
20100dfa:	0018      	movs	r0, r3
20100dfc:	46bd      	mov	sp, r7
20100dfe:	b002      	add	sp, #8
20100e00:	bd80      	pop	{r7, pc}
20100e02:	46c0      	nop			; (mov r8, r8)
20100e04:	ffeff30a 	.word	0xffeff30a
20100e08:	ffeff2fe 	.word	0xffeff2fe
20100e0c:	ffeff2fc 	.word	0xffeff2fc
20100e10:	ffeff2f2 	.word	0xffeff2f2
20100e14:	ffeff2f4 	.word	0xffeff2f4
20100e18:	ffeff2e2 	.word	0xffeff2e2
20100e1c:	ffeff2d8 	.word	0xffeff2d8
20100e20:	ffeff2da 	.word	0xffeff2da
20100e24:	ffeff2cc 	.word	0xffeff2cc

20100e28 <adc_dma_init>:
20100e28:	b580      	push	{r7, lr}
20100e2a:	af00      	add	r7, sp, #0
20100e2c:	4b1c      	ldr	r3, [pc, #112]	; (20100ea0 <adc_dma_init+0x78>)
20100e2e:	4a1c      	ldr	r2, [pc, #112]	; (20100ea0 <adc_dma_init+0x78>)
20100e30:	69d2      	ldr	r2, [r2, #28]
20100e32:	2120      	movs	r1, #32
20100e34:	430a      	orrs	r2, r1
20100e36:	61da      	str	r2, [r3, #28]
20100e38:	4b1a      	ldr	r3, [pc, #104]	; (20100ea4 <adc_dma_init+0x7c>)
20100e3a:	4a1b      	ldr	r2, [pc, #108]	; (20100ea8 <adc_dma_init+0x80>)
20100e3c:	447a      	add	r2, pc
20100e3e:	609a      	str	r2, [r3, #8]
20100e40:	4b18      	ldr	r3, [pc, #96]	; (20100ea4 <adc_dma_init+0x7c>)
20100e42:	2201      	movs	r2, #1
20100e44:	4252      	negs	r2, r2
20100e46:	62da      	str	r2, [r3, #44]	; 0x2c
20100e48:	4b16      	ldr	r3, [pc, #88]	; (20100ea4 <adc_dma_init+0x7c>)
20100e4a:	2201      	movs	r2, #1
20100e4c:	4252      	negs	r2, r2
20100e4e:	621a      	str	r2, [r3, #32]
20100e50:	4b14      	ldr	r3, [pc, #80]	; (20100ea4 <adc_dma_init+0x7c>)
20100e52:	2201      	movs	r2, #1
20100e54:	4252      	negs	r2, r2
20100e56:	635a      	str	r2, [r3, #52]	; 0x34
20100e58:	4b12      	ldr	r3, [pc, #72]	; (20100ea4 <adc_dma_init+0x7c>)
20100e5a:	2280      	movs	r2, #128	; 0x80
20100e5c:	05d2      	lsls	r2, r2, #23
20100e5e:	61da      	str	r2, [r3, #28]
20100e60:	4b10      	ldr	r3, [pc, #64]	; (20100ea4 <adc_dma_init+0x7c>)
20100e62:	2280      	movs	r2, #128	; 0x80
20100e64:	05d2      	lsls	r2, r2, #23
20100e66:	625a      	str	r2, [r3, #36]	; 0x24
20100e68:	4b0e      	ldr	r3, [pc, #56]	; (20100ea4 <adc_dma_init+0x7c>)
20100e6a:	2201      	movs	r2, #1
20100e6c:	605a      	str	r2, [r3, #4]
20100e6e:	4a0f      	ldr	r2, [pc, #60]	; (20100eac <adc_dma_init+0x84>)
20100e70:	447a      	add	r2, pc
20100e72:	23f0      	movs	r3, #240	; 0xf0
20100e74:	005b      	lsls	r3, r3, #1
20100e76:	490e      	ldr	r1, [pc, #56]	; (20100eb0 <adc_dma_init+0x88>)
20100e78:	50d1      	str	r1, [r2, r3]
20100e7a:	4b0e      	ldr	r3, [pc, #56]	; (20100eb4 <adc_dma_init+0x8c>)
20100e7c:	447b      	add	r3, pc
20100e7e:	330c      	adds	r3, #12
20100e80:	0019      	movs	r1, r3
20100e82:	4a0d      	ldr	r2, [pc, #52]	; (20100eb8 <adc_dma_init+0x90>)
20100e84:	447a      	add	r2, pc
20100e86:	23f2      	movs	r3, #242	; 0xf2
20100e88:	005b      	lsls	r3, r3, #1
20100e8a:	50d1      	str	r1, [r2, r3]
20100e8c:	4a0b      	ldr	r2, [pc, #44]	; (20100ebc <adc_dma_init+0x94>)
20100e8e:	447a      	add	r2, pc
20100e90:	23f4      	movs	r3, #244	; 0xf4
20100e92:	005b      	lsls	r3, r3, #1
20100e94:	490a      	ldr	r1, [pc, #40]	; (20100ec0 <adc_dma_init+0x98>)
20100e96:	50d1      	str	r1, [r2, r3]
20100e98:	46c0      	nop			; (mov r8, r8)
20100e9a:	46bd      	mov	sp, r7
20100e9c:	bd80      	pop	{r7, pc}
20100e9e:	46c0      	nop			; (mov r8, r8)
20100ea0:	40020000 	.word	0x40020000
20100ea4:	40028000 	.word	0x40028000
20100ea8:	000005c0 	.word	0x000005c0
20100eac:	0000058c 	.word	0x0000058c
20100eb0:	40088018 	.word	0x40088018
20100eb4:	00000780 	.word	0x00000780
20100eb8:	00000578 	.word	0x00000578
20100ebc:	0000056e 	.word	0x0000056e
20100ec0:	ae000031 	.word	0xae000031

20100ec4 <adc_dma_start>:
20100ec4:	b580      	push	{r7, lr}
20100ec6:	af00      	add	r7, sp, #0
20100ec8:	4b06      	ldr	r3, [pc, #24]	; (20100ee4 <adc_dma_start+0x20>)
20100eca:	4a06      	ldr	r2, [pc, #24]	; (20100ee4 <adc_dma_start+0x20>)
20100ecc:	6812      	ldr	r2, [r2, #0]
20100ece:	2108      	movs	r1, #8
20100ed0:	430a      	orrs	r2, r1
20100ed2:	601a      	str	r2, [r3, #0]
20100ed4:	4b04      	ldr	r3, [pc, #16]	; (20100ee8 <adc_dma_start+0x24>)
20100ed6:	2280      	movs	r2, #128	; 0x80
20100ed8:	05d2      	lsls	r2, r2, #23
20100eda:	629a      	str	r2, [r3, #40]	; 0x28
20100edc:	46c0      	nop			; (mov r8, r8)
20100ede:	46bd      	mov	sp, r7
20100ee0:	bd80      	pop	{r7, pc}
20100ee2:	46c0      	nop			; (mov r8, r8)
20100ee4:	40088000 	.word	0x40088000
20100ee8:	40028000 	.word	0x40028000

20100eec <adc_dma_wait>:
20100eec:	b580      	push	{r7, lr}
20100eee:	af00      	add	r7, sp, #0
20100ef0:	46c0      	nop			; (mov r8, r8)
20100ef2:	4a0b      	ldr	r2, [pc, #44]	; (20100f20 <adc_dma_wait+0x34>)
20100ef4:	447a      	add	r2, pc
20100ef6:	23f4      	movs	r3, #244	; 0xf4
20100ef8:	005b      	lsls	r3, r3, #1
20100efa:	58d3      	ldr	r3, [r2, r3]
20100efc:	2207      	movs	r2, #7
20100efe:	4013      	ands	r3, r2
20100f00:	d1f7      	bne.n	20100ef2 <adc_dma_wait+0x6>
20100f02:	4b08      	ldr	r3, [pc, #32]	; (20100f24 <adc_dma_wait+0x38>)
20100f04:	4a07      	ldr	r2, [pc, #28]	; (20100f24 <adc_dma_wait+0x38>)
20100f06:	6812      	ldr	r2, [r2, #0]
20100f08:	2108      	movs	r1, #8
20100f0a:	438a      	bics	r2, r1
20100f0c:	601a      	str	r2, [r3, #0]
20100f0e:	4a06      	ldr	r2, [pc, #24]	; (20100f28 <adc_dma_wait+0x3c>)
20100f10:	447a      	add	r2, pc
20100f12:	23f4      	movs	r3, #244	; 0xf4
20100f14:	005b      	lsls	r3, r3, #1
20100f16:	4905      	ldr	r1, [pc, #20]	; (20100f2c <adc_dma_wait+0x40>)
20100f18:	50d1      	str	r1, [r2, r3]
20100f1a:	46c0      	nop			; (mov r8, r8)
20100f1c:	46bd      	mov	sp, r7
20100f1e:	bd80      	pop	{r7, pc}
20100f20:	00000508 	.word	0x00000508
20100f24:	40088000 	.word	0x40088000
20100f28:	000004ec 	.word	0x000004ec
20100f2c:	ae000031 	.word	0xae000031

20100f30 <asm_dq_to_abc>:
20100f30:	b570      	push	{r4, r5, r6, lr}
20100f32:	4b31      	ldr	r3, [pc, #196]	; (20100ff8 <dot3+0x1c>)
20100f34:	0092      	lsls	r2, r2, #2
20100f36:	589c      	ldr	r4, [r3, r2]
20100f38:	680d      	ldr	r5, [r1, #0]
20100f3a:	436c      	muls	r4, r5
20100f3c:	4e18      	ldr	r6, [pc, #96]	; (20100fa0 <P_3PI2>)
20100f3e:	18b6      	adds	r6, r6, r2
20100f40:	4d1c      	ldr	r5, [pc, #112]	; (20100fb4 <MASK1023>)
20100f42:	4035      	ands	r5, r6
20100f44:	595e      	ldr	r6, [r3, r5]
20100f46:	684d      	ldr	r5, [r1, #4]
20100f48:	4375      	muls	r5, r6
20100f4a:	1b64      	subs	r4, r4, r5
20100f4c:	1524      	asrs	r4, r4, #20
20100f4e:	6004      	str	r4, [r0, #0]
20100f50:	4e14      	ldr	r6, [pc, #80]	; (20100fa4 <P_4PI3>)
20100f52:	18b6      	adds	r6, r6, r2
20100f54:	4d17      	ldr	r5, [pc, #92]	; (20100fb4 <MASK1023>)
20100f56:	4035      	ands	r5, r6
20100f58:	595c      	ldr	r4, [r3, r5]
20100f5a:	680d      	ldr	r5, [r1, #0]
20100f5c:	436c      	muls	r4, r5
20100f5e:	4e13      	ldr	r6, [pc, #76]	; (20100fac <P_4PI33PI2>)
20100f60:	18b6      	adds	r6, r6, r2
20100f62:	4d14      	ldr	r5, [pc, #80]	; (20100fb4 <MASK1023>)
20100f64:	4035      	ands	r5, r6
20100f66:	595e      	ldr	r6, [r3, r5]
20100f68:	684d      	ldr	r5, [r1, #4]
20100f6a:	4375      	muls	r5, r6
20100f6c:	1b64      	subs	r4, r4, r5
20100f6e:	1524      	asrs	r4, r4, #20
20100f70:	6044      	str	r4, [r0, #4]
20100f72:	4e0d      	ldr	r6, [pc, #52]	; (20100fa8 <P_2PI3>)
20100f74:	18b6      	adds	r6, r6, r2
20100f76:	4d0f      	ldr	r5, [pc, #60]	; (20100fb4 <MASK1023>)
20100f78:	4035      	ands	r5, r6
20100f7a:	595c      	ldr	r4, [r3, r5]
20100f7c:	680d      	ldr	r5, [r1, #0]
20100f7e:	436c      	muls	r4, r5
20100f80:	4e0b      	ldr	r6, [pc, #44]	; (20100fb0 <P_2PI33PI2>)
20100f82:	18b6      	adds	r6, r6, r2
20100f84:	4d0b      	ldr	r5, [pc, #44]	; (20100fb4 <MASK1023>)
20100f86:	4035      	ands	r5, r6
20100f88:	595e      	ldr	r6, [r3, r5]
20100f8a:	684d      	ldr	r5, [r1, #4]
20100f8c:	4375      	muls	r5, r6
20100f8e:	1b64      	subs	r4, r4, r5
20100f90:	1524      	asrs	r4, r4, #20
20100f92:	6084      	str	r4, [r0, #8]
20100f94:	bd70      	pop	{r4, r5, r6, pc}
20100f96:	46c0      	nop			; (mov r8, r8)
20100f98:	46c0      	nop			; (mov r8, r8)
20100f9a:	46c0      	nop			; (mov r8, r8)
20100f9c:	46c0      	nop			; (mov r8, r8)
20100f9e:	46c0      	nop			; (mov r8, r8)

20100fa0 <P_3PI2>:
20100fa0:	00000c00 	.word	0x00000c00

20100fa4 <P_4PI3>:
20100fa4:	00000aaa 	.word	0x00000aaa

20100fa8 <P_2PI3>:
20100fa8:	00000555 	.word	0x00000555

20100fac <P_4PI33PI2>:
20100fac:	000016aa 	.word	0x000016aa

20100fb0 <P_2PI33PI2>:
20100fb0:	00001155 	.word	0x00001155

20100fb4 <MASK1023>:
20100fb4:	00000ffc 	.word	0x00000ffc

20100fb8 <mfilter>:
20100fb8:	4910      	ldr	r1, [pc, #64]	; (20100ffc <dot3+0x20>)
20100fba:	680a      	ldr	r2, [r1, #0]
20100fbc:	3201      	adds	r2, #1
20100fbe:	231f      	movs	r3, #31
20100fc0:	401a      	ands	r2, r3
20100fc2:	600a      	str	r2, [r1, #0]
20100fc4:	490e      	ldr	r1, [pc, #56]	; (20101000 <dot3+0x24>)
20100fc6:	0092      	lsls	r2, r2, #2
20100fc8:	1889      	adds	r1, r1, r2
20100fca:	680a      	ldr	r2, [r1, #0]
20100fcc:	6008      	str	r0, [r1, #0]
20100fce:	1a80      	subs	r0, r0, r2
20100fd0:	490c      	ldr	r1, [pc, #48]	; (20101004 <dot3+0x28>)
20100fd2:	680a      	ldr	r2, [r1, #0]
20100fd4:	1880      	adds	r0, r0, r2
20100fd6:	6008      	str	r0, [r1, #0]
20100fd8:	1140      	asrs	r0, r0, #5
20100fda:	46f7      	mov	pc, lr

20100fdc <dot3>:
20100fdc:	b580      	push	{r7, lr}
20100fde:	6802      	ldr	r2, [r0, #0]
20100fe0:	680b      	ldr	r3, [r1, #0]
20100fe2:	435a      	muls	r2, r3
20100fe4:	1c17      	adds	r7, r2, #0
20100fe6:	6842      	ldr	r2, [r0, #4]
20100fe8:	684b      	ldr	r3, [r1, #4]
20100fea:	435a      	muls	r2, r3
20100fec:	18bf      	adds	r7, r7, r2
20100fee:	6880      	ldr	r0, [r0, #8]
20100ff0:	688b      	ldr	r3, [r1, #8]
20100ff2:	4358      	muls	r0, r3
20100ff4:	1838      	adds	r0, r7, r0
20100ff6:	bd80      	pop	{r7, pc}
20100ff8:	20101620 	.word	0x20101620
20100ffc:	20000008 	.word	0x20000008
20101000:	2000000c 	.word	0x2000000c
20101004:	20000004 	.word	0x20000004

20101008 <__gnu_thumb1_case_si>:
20101008:	b403      	push	{r0, r1}
2010100a:	4671      	mov	r1, lr
2010100c:	3102      	adds	r1, #2
2010100e:	0889      	lsrs	r1, r1, #2
20101010:	0080      	lsls	r0, r0, #2
20101012:	0089      	lsls	r1, r1, #2
20101014:	5808      	ldr	r0, [r1, r0]
20101016:	1840      	adds	r0, r0, r1
20101018:	4686      	mov	lr, r0
2010101a:	bc03      	pop	{r0, r1}
2010101c:	46f7      	mov	pc, lr
2010101e:	46c0      	nop			; (mov r8, r8)
	...

20101400 <dma_ctr_str>:
	...

20101600 <adc_dma_buffer>:
	...
