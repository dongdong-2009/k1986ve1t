
bue_pwm.elf:     file format elf32-littlearm


Disassembly of section .text:

20100000 <main>:
20100000:	b580      	push	{r7, lr}
20100002:	b082      	sub	sp, #8
20100004:	af00      	add	r7, sp, #0
20100006:	2380      	movs	r3, #128	; 0x80
20100008:	011b      	lsls	r3, r3, #4
2010000a:	607b      	str	r3, [r7, #4]
2010000c:	f000 f9e6 	bl	201003dc <SystemInit>
20100010:	4b0c      	ldr	r3, [pc, #48]	; (20100044 <main+0x44>)
20100012:	4a0c      	ldr	r2, [pc, #48]	; (20100044 <main+0x44>)
20100014:	6812      	ldr	r2, [r2, #0]
20100016:	2102      	movs	r1, #2
20100018:	430a      	orrs	r2, r1
2010001a:	601a      	str	r2, [r3, #0]
2010001c:	46c0      	nop			; (mov r8, r8)
2010001e:	4b0a      	ldr	r3, [pc, #40]	; (20100048 <main+0x48>)
20100020:	6d5b      	ldr	r3, [r3, #84]	; 0x54
20100022:	2202      	movs	r2, #2
20100024:	4013      	ands	r3, r2
20100026:	d0fa      	beq.n	2010001e <main+0x1e>
20100028:	4b07      	ldr	r3, [pc, #28]	; (20100048 <main+0x48>)
2010002a:	2200      	movs	r2, #0
2010002c:	655a      	str	r2, [r3, #84]	; 0x54
2010002e:	4b05      	ldr	r3, [pc, #20]	; (20100044 <main+0x44>)
20100030:	6a1b      	ldr	r3, [r3, #32]
20100032:	2204      	movs	r2, #4
20100034:	4013      	ands	r3, r2
20100036:	d0eb      	beq.n	20100010 <main+0x10>
20100038:	4b04      	ldr	r3, [pc, #16]	; (2010004c <main+0x4c>)
2010003a:	4a02      	ldr	r2, [pc, #8]	; (20100044 <main+0x44>)
2010003c:	6992      	ldr	r2, [r2, #24]
2010003e:	605a      	str	r2, [r3, #4]
20100040:	e7e6      	b.n	20100010 <main+0x10>
20100042:	46c0      	nop			; (mov r8, r8)
20100044:	40088000 	.word	0x40088000
20100048:	40098000 	.word	0x40098000
2010004c:	40090000 	.word	0x40090000

20100050 <sleep>:
20100050:	b580      	push	{r7, lr}
20100052:	b084      	sub	sp, #16
20100054:	af00      	add	r7, sp, #0
20100056:	6078      	str	r0, [r7, #4]
20100058:	4b08      	ldr	r3, [pc, #32]	; (2010007c <sleep+0x2c>)
2010005a:	447b      	add	r3, pc
2010005c:	681a      	ldr	r2, [r3, #0]
2010005e:	687b      	ldr	r3, [r7, #4]
20100060:	18d3      	adds	r3, r2, r3
20100062:	60fb      	str	r3, [r7, #12]
20100064:	46c0      	nop			; (mov r8, r8)
20100066:	4b06      	ldr	r3, [pc, #24]	; (20100080 <sleep+0x30>)
20100068:	447b      	add	r3, pc
2010006a:	681a      	ldr	r2, [r3, #0]
2010006c:	68fb      	ldr	r3, [r7, #12]
2010006e:	429a      	cmp	r2, r3
20100070:	d3f9      	bcc.n	20100066 <sleep+0x16>
20100072:	46c0      	nop			; (mov r8, r8)
20100074:	0018      	movs	r0, r3
20100076:	46bd      	mov	sp, r7
20100078:	b004      	add	sp, #16
2010007a:	bd80      	pop	{r7, pc}
2010007c:	ffefffa6 	.word	0xffefffa6
20100080:	ffefff98 	.word	0xffefff98

20100084 <PortConfig>:
20100084:	b580      	push	{r7, lr}
20100086:	af00      	add	r7, sp, #0
20100088:	4b21      	ldr	r3, [pc, #132]	; (20100110 <PortConfig+0x8c>)
2010008a:	4a21      	ldr	r2, [pc, #132]	; (20100110 <PortConfig+0x8c>)
2010008c:	69d2      	ldr	r2, [r2, #28]
2010008e:	2180      	movs	r1, #128	; 0x80
20100090:	0389      	lsls	r1, r1, #14
20100092:	430a      	orrs	r2, r1
20100094:	61da      	str	r2, [r3, #28]
20100096:	4b1f      	ldr	r3, [pc, #124]	; (20100114 <PortConfig+0x90>)
20100098:	4a1e      	ldr	r2, [pc, #120]	; (20100114 <PortConfig+0x90>)
2010009a:	6892      	ldr	r2, [r2, #8]
2010009c:	491e      	ldr	r1, [pc, #120]	; (20100118 <PortConfig+0x94>)
2010009e:	400a      	ands	r2, r1
201000a0:	609a      	str	r2, [r3, #8]
201000a2:	4b1c      	ldr	r3, [pc, #112]	; (20100114 <PortConfig+0x90>)
201000a4:	4a1b      	ldr	r2, [pc, #108]	; (20100114 <PortConfig+0x90>)
201000a6:	6892      	ldr	r2, [r2, #8]
201000a8:	491c      	ldr	r1, [pc, #112]	; (2010011c <PortConfig+0x98>)
201000aa:	430a      	orrs	r2, r1
201000ac:	609a      	str	r2, [r3, #8]
201000ae:	4b19      	ldr	r3, [pc, #100]	; (20100114 <PortConfig+0x90>)
201000b0:	4a18      	ldr	r2, [pc, #96]	; (20100114 <PortConfig+0x90>)
201000b2:	6852      	ldr	r2, [r2, #4]
201000b4:	21fc      	movs	r1, #252	; 0xfc
201000b6:	0109      	lsls	r1, r1, #4
201000b8:	430a      	orrs	r2, r1
201000ba:	605a      	str	r2, [r3, #4]
201000bc:	4b15      	ldr	r3, [pc, #84]	; (20100114 <PortConfig+0x90>)
201000be:	4a15      	ldr	r2, [pc, #84]	; (20100114 <PortConfig+0x90>)
201000c0:	68d2      	ldr	r2, [r2, #12]
201000c2:	21fc      	movs	r1, #252	; 0xfc
201000c4:	0109      	lsls	r1, r1, #4
201000c6:	430a      	orrs	r2, r1
201000c8:	60da      	str	r2, [r3, #12]
201000ca:	4b12      	ldr	r3, [pc, #72]	; (20100114 <PortConfig+0x90>)
201000cc:	4a11      	ldr	r2, [pc, #68]	; (20100114 <PortConfig+0x90>)
201000ce:	6992      	ldr	r2, [r2, #24]
201000d0:	4913      	ldr	r1, [pc, #76]	; (20100120 <PortConfig+0x9c>)
201000d2:	430a      	orrs	r2, r1
201000d4:	619a      	str	r2, [r3, #24]
201000d6:	4b0e      	ldr	r3, [pc, #56]	; (20100110 <PortConfig+0x8c>)
201000d8:	4a0d      	ldr	r2, [pc, #52]	; (20100110 <PortConfig+0x8c>)
201000da:	69d2      	ldr	r2, [r2, #28]
201000dc:	2180      	movs	r1, #128	; 0x80
201000de:	0489      	lsls	r1, r1, #18
201000e0:	430a      	orrs	r2, r1
201000e2:	61da      	str	r2, [r3, #28]
201000e4:	4b0f      	ldr	r3, [pc, #60]	; (20100124 <PortConfig+0xa0>)
201000e6:	4a0f      	ldr	r2, [pc, #60]	; (20100124 <PortConfig+0xa0>)
201000e8:	68d2      	ldr	r2, [r2, #12]
201000ea:	2102      	movs	r1, #2
201000ec:	438a      	bics	r2, r1
201000ee:	60da      	str	r2, [r3, #12]
201000f0:	4b07      	ldr	r3, [pc, #28]	; (20100110 <PortConfig+0x8c>)
201000f2:	4a07      	ldr	r2, [pc, #28]	; (20100110 <PortConfig+0x8c>)
201000f4:	69d2      	ldr	r2, [r2, #28]
201000f6:	2180      	movs	r1, #128	; 0x80
201000f8:	0449      	lsls	r1, r1, #17
201000fa:	430a      	orrs	r2, r1
201000fc:	61da      	str	r2, [r3, #28]
201000fe:	4b0a      	ldr	r3, [pc, #40]	; (20100128 <PortConfig+0xa4>)
20100100:	4a09      	ldr	r2, [pc, #36]	; (20100128 <PortConfig+0xa4>)
20100102:	68d2      	ldr	r2, [r2, #12]
20100104:	4909      	ldr	r1, [pc, #36]	; (2010012c <PortConfig+0xa8>)
20100106:	400a      	ands	r2, r1
20100108:	60da      	str	r2, [r3, #12]
2010010a:	46c0      	nop			; (mov r8, r8)
2010010c:	46bd      	mov	sp, r7
2010010e:	bd80      	pop	{r7, pc}
20100110:	40020000 	.word	0x40020000
20100114:	400a8000 	.word	0x400a8000
20100118:	ff000fff 	.word	0xff000fff
2010011c:	00aaa000 	.word	0x00aaa000
20100120:	00fff000 	.word	0x00fff000
20100124:	400c8000 	.word	0x400c8000
20100128:	400c0000 	.word	0x400c0000
2010012c:	fffff1ff 	.word	0xfffff1ff

20100130 <ClkConfig>:
20100130:	b580      	push	{r7, lr}
20100132:	af00      	add	r7, sp, #0
20100134:	4b18      	ldr	r3, [pc, #96]	; (20100198 <ClkConfig+0x68>)
20100136:	4a18      	ldr	r2, [pc, #96]	; (20100198 <ClkConfig+0x68>)
20100138:	6892      	ldr	r2, [r2, #8]
2010013a:	2101      	movs	r1, #1
2010013c:	430a      	orrs	r2, r1
2010013e:	609a      	str	r2, [r3, #8]
20100140:	46c0      	nop			; (mov r8, r8)
20100142:	4b15      	ldr	r3, [pc, #84]	; (20100198 <ClkConfig+0x68>)
20100144:	681b      	ldr	r3, [r3, #0]
20100146:	2204      	movs	r2, #4
20100148:	4013      	ands	r3, r2
2010014a:	d0fa      	beq.n	20100142 <ClkConfig+0x12>
2010014c:	4b12      	ldr	r3, [pc, #72]	; (20100198 <ClkConfig+0x68>)
2010014e:	4a12      	ldr	r2, [pc, #72]	; (20100198 <ClkConfig+0x68>)
20100150:	68d2      	ldr	r2, [r2, #12]
20100152:	2102      	movs	r1, #2
20100154:	430a      	orrs	r2, r1
20100156:	60da      	str	r2, [r3, #12]
20100158:	4b0f      	ldr	r3, [pc, #60]	; (20100198 <ClkConfig+0x68>)
2010015a:	4a10      	ldr	r2, [pc, #64]	; (2010019c <ClkConfig+0x6c>)
2010015c:	605a      	str	r2, [r3, #4]
2010015e:	46c0      	nop			; (mov r8, r8)
20100160:	4b0d      	ldr	r3, [pc, #52]	; (20100198 <ClkConfig+0x68>)
20100162:	681b      	ldr	r3, [r3, #0]
20100164:	2202      	movs	r2, #2
20100166:	4013      	ands	r3, r2
20100168:	d0fa      	beq.n	20100160 <ClkConfig+0x30>
2010016a:	4b0d      	ldr	r3, [pc, #52]	; (201001a0 <ClkConfig+0x70>)
2010016c:	4a0c      	ldr	r2, [pc, #48]	; (201001a0 <ClkConfig+0x70>)
2010016e:	6812      	ldr	r2, [r2, #0]
20100170:	2120      	movs	r1, #32
20100172:	430a      	orrs	r2, r1
20100174:	601a      	str	r2, [r3, #0]
20100176:	4b08      	ldr	r3, [pc, #32]	; (20100198 <ClkConfig+0x68>)
20100178:	4a07      	ldr	r2, [pc, #28]	; (20100198 <ClkConfig+0x68>)
2010017a:	68d2      	ldr	r2, [r2, #12]
2010017c:	2180      	movs	r1, #128	; 0x80
2010017e:	0049      	lsls	r1, r1, #1
20100180:	430a      	orrs	r2, r1
20100182:	60da      	str	r2, [r3, #12]
20100184:	4b04      	ldr	r3, [pc, #16]	; (20100198 <ClkConfig+0x68>)
20100186:	4a04      	ldr	r2, [pc, #16]	; (20100198 <ClkConfig+0x68>)
20100188:	68d2      	ldr	r2, [r2, #12]
2010018a:	2104      	movs	r1, #4
2010018c:	430a      	orrs	r2, r1
2010018e:	60da      	str	r2, [r3, #12]
20100190:	46c0      	nop			; (mov r8, r8)
20100192:	46bd      	mov	sp, r7
20100194:	bd80      	pop	{r7, pc}
20100196:	46c0      	nop			; (mov r8, r8)
20100198:	40020000 	.word	0x40020000
2010019c:	00000e04 	.word	0x00000e04
201001a0:	40018000 	.word	0x40018000

201001a4 <TimerConfig>:
201001a4:	b580      	push	{r7, lr}
201001a6:	af00      	add	r7, sp, #0
201001a8:	4b70      	ldr	r3, [pc, #448]	; (2010036c <TimerConfig+0x1c8>)
201001aa:	4a70      	ldr	r2, [pc, #448]	; (2010036c <TimerConfig+0x1c8>)
201001ac:	69d2      	ldr	r2, [r2, #28]
201001ae:	2180      	movs	r1, #128	; 0x80
201001b0:	0309      	lsls	r1, r1, #12
201001b2:	430a      	orrs	r2, r1
201001b4:	61da      	str	r2, [r3, #28]
201001b6:	4b6d      	ldr	r3, [pc, #436]	; (2010036c <TimerConfig+0x1c8>)
201001b8:	4a6c      	ldr	r2, [pc, #432]	; (2010036c <TimerConfig+0x1c8>)
201001ba:	6a92      	ldr	r2, [r2, #40]	; 0x28
201001bc:	2180      	movs	r1, #128	; 0x80
201001be:	04c9      	lsls	r1, r1, #19
201001c0:	430a      	orrs	r2, r1
201001c2:	629a      	str	r2, [r3, #40]	; 0x28
201001c4:	4b69      	ldr	r3, [pc, #420]	; (2010036c <TimerConfig+0x1c8>)
201001c6:	4a69      	ldr	r2, [pc, #420]	; (2010036c <TimerConfig+0x1c8>)
201001c8:	6a92      	ldr	r2, [r2, #40]	; 0x28
201001ca:	4969      	ldr	r1, [pc, #420]	; (20100370 <TimerConfig+0x1cc>)
201001cc:	400a      	ands	r2, r1
201001ce:	629a      	str	r2, [r3, #40]	; 0x28
201001d0:	4b68      	ldr	r3, [pc, #416]	; (20100374 <TimerConfig+0x1d0>)
201001d2:	2200      	movs	r2, #0
201001d4:	601a      	str	r2, [r3, #0]
201001d6:	4b67      	ldr	r3, [pc, #412]	; (20100374 <TimerConfig+0x1d0>)
201001d8:	220b      	movs	r2, #11
201001da:	605a      	str	r2, [r3, #4]
201001dc:	4b65      	ldr	r3, [pc, #404]	; (20100374 <TimerConfig+0x1d0>)
201001de:	2290      	movs	r2, #144	; 0x90
201001e0:	32ff      	adds	r2, #255	; 0xff
201001e2:	609a      	str	r2, [r3, #8]
201001e4:	4b63      	ldr	r3, [pc, #396]	; (20100374 <TimerConfig+0x1d0>)
201001e6:	22c8      	movs	r2, #200	; 0xc8
201001e8:	611a      	str	r2, [r3, #16]
201001ea:	4b62      	ldr	r3, [pc, #392]	; (20100374 <TimerConfig+0x1d0>)
201001ec:	22c8      	movs	r2, #200	; 0xc8
201001ee:	615a      	str	r2, [r3, #20]
201001f0:	4b60      	ldr	r3, [pc, #384]	; (20100374 <TimerConfig+0x1d0>)
201001f2:	22c8      	movs	r2, #200	; 0xc8
201001f4:	619a      	str	r2, [r3, #24]
201001f6:	4b5f      	ldr	r3, [pc, #380]	; (20100374 <TimerConfig+0x1d0>)
201001f8:	4a5e      	ldr	r2, [pc, #376]	; (20100374 <TimerConfig+0x1d0>)
201001fa:	6a12      	ldr	r2, [r2, #32]
201001fc:	495e      	ldr	r1, [pc, #376]	; (20100378 <TimerConfig+0x1d4>)
201001fe:	400a      	ands	r2, r1
20100200:	621a      	str	r2, [r3, #32]
20100202:	4b5c      	ldr	r3, [pc, #368]	; (20100374 <TimerConfig+0x1d0>)
20100204:	4a5b      	ldr	r2, [pc, #364]	; (20100374 <TimerConfig+0x1d0>)
20100206:	6a12      	ldr	r2, [r2, #32]
20100208:	21e0      	movs	r1, #224	; 0xe0
2010020a:	0109      	lsls	r1, r1, #4
2010020c:	430a      	orrs	r2, r1
2010020e:	621a      	str	r2, [r3, #32]
20100210:	4b58      	ldr	r3, [pc, #352]	; (20100374 <TimerConfig+0x1d0>)
20100212:	4a58      	ldr	r2, [pc, #352]	; (20100374 <TimerConfig+0x1d0>)
20100214:	6b12      	ldr	r2, [r2, #48]	; 0x30
20100216:	210f      	movs	r1, #15
20100218:	438a      	bics	r2, r1
2010021a:	631a      	str	r2, [r3, #48]	; 0x30
2010021c:	4b55      	ldr	r3, [pc, #340]	; (20100374 <TimerConfig+0x1d0>)
2010021e:	4a55      	ldr	r2, [pc, #340]	; (20100374 <TimerConfig+0x1d0>)
20100220:	6b12      	ldr	r2, [r2, #48]	; 0x30
20100222:	210c      	movs	r1, #12
20100224:	430a      	orrs	r2, r1
20100226:	631a      	str	r2, [r3, #48]	; 0x30
20100228:	4b52      	ldr	r3, [pc, #328]	; (20100374 <TimerConfig+0x1d0>)
2010022a:	4a52      	ldr	r2, [pc, #328]	; (20100374 <TimerConfig+0x1d0>)
2010022c:	6b12      	ldr	r2, [r2, #48]	; 0x30
2010022e:	2101      	movs	r1, #1
20100230:	430a      	orrs	r2, r1
20100232:	631a      	str	r2, [r3, #48]	; 0x30
20100234:	4b4f      	ldr	r3, [pc, #316]	; (20100374 <TimerConfig+0x1d0>)
20100236:	4a4f      	ldr	r2, [pc, #316]	; (20100374 <TimerConfig+0x1d0>)
20100238:	6b12      	ldr	r2, [r2, #48]	; 0x30
2010023a:	4950      	ldr	r1, [pc, #320]	; (2010037c <TimerConfig+0x1d8>)
2010023c:	400a      	ands	r2, r1
2010023e:	631a      	str	r2, [r3, #48]	; 0x30
20100240:	4b4c      	ldr	r3, [pc, #304]	; (20100374 <TimerConfig+0x1d0>)
20100242:	4a4c      	ldr	r2, [pc, #304]	; (20100374 <TimerConfig+0x1d0>)
20100244:	6b12      	ldr	r2, [r2, #48]	; 0x30
20100246:	21c0      	movs	r1, #192	; 0xc0
20100248:	0109      	lsls	r1, r1, #4
2010024a:	430a      	orrs	r2, r1
2010024c:	631a      	str	r2, [r3, #48]	; 0x30
2010024e:	4b49      	ldr	r3, [pc, #292]	; (20100374 <TimerConfig+0x1d0>)
20100250:	4a48      	ldr	r2, [pc, #288]	; (20100374 <TimerConfig+0x1d0>)
20100252:	6b12      	ldr	r2, [r2, #48]	; 0x30
20100254:	2180      	movs	r1, #128	; 0x80
20100256:	0049      	lsls	r1, r1, #1
20100258:	430a      	orrs	r2, r1
2010025a:	631a      	str	r2, [r3, #48]	; 0x30
2010025c:	4b45      	ldr	r3, [pc, #276]	; (20100374 <TimerConfig+0x1d0>)
2010025e:	4a45      	ldr	r2, [pc, #276]	; (20100374 <TimerConfig+0x1d0>)
20100260:	6a52      	ldr	r2, [r2, #36]	; 0x24
20100262:	4945      	ldr	r1, [pc, #276]	; (20100378 <TimerConfig+0x1d4>)
20100264:	400a      	ands	r2, r1
20100266:	625a      	str	r2, [r3, #36]	; 0x24
20100268:	4b42      	ldr	r3, [pc, #264]	; (20100374 <TimerConfig+0x1d0>)
2010026a:	4a42      	ldr	r2, [pc, #264]	; (20100374 <TimerConfig+0x1d0>)
2010026c:	6a52      	ldr	r2, [r2, #36]	; 0x24
2010026e:	21e0      	movs	r1, #224	; 0xe0
20100270:	0109      	lsls	r1, r1, #4
20100272:	430a      	orrs	r2, r1
20100274:	625a      	str	r2, [r3, #36]	; 0x24
20100276:	4b3f      	ldr	r3, [pc, #252]	; (20100374 <TimerConfig+0x1d0>)
20100278:	4a3e      	ldr	r2, [pc, #248]	; (20100374 <TimerConfig+0x1d0>)
2010027a:	6b52      	ldr	r2, [r2, #52]	; 0x34
2010027c:	210f      	movs	r1, #15
2010027e:	438a      	bics	r2, r1
20100280:	635a      	str	r2, [r3, #52]	; 0x34
20100282:	4b3c      	ldr	r3, [pc, #240]	; (20100374 <TimerConfig+0x1d0>)
20100284:	4a3b      	ldr	r2, [pc, #236]	; (20100374 <TimerConfig+0x1d0>)
20100286:	6b52      	ldr	r2, [r2, #52]	; 0x34
20100288:	210c      	movs	r1, #12
2010028a:	430a      	orrs	r2, r1
2010028c:	635a      	str	r2, [r3, #52]	; 0x34
2010028e:	4b39      	ldr	r3, [pc, #228]	; (20100374 <TimerConfig+0x1d0>)
20100290:	4a38      	ldr	r2, [pc, #224]	; (20100374 <TimerConfig+0x1d0>)
20100292:	6b52      	ldr	r2, [r2, #52]	; 0x34
20100294:	2101      	movs	r1, #1
20100296:	430a      	orrs	r2, r1
20100298:	635a      	str	r2, [r3, #52]	; 0x34
2010029a:	4b36      	ldr	r3, [pc, #216]	; (20100374 <TimerConfig+0x1d0>)
2010029c:	4a35      	ldr	r2, [pc, #212]	; (20100374 <TimerConfig+0x1d0>)
2010029e:	6b52      	ldr	r2, [r2, #52]	; 0x34
201002a0:	4936      	ldr	r1, [pc, #216]	; (2010037c <TimerConfig+0x1d8>)
201002a2:	400a      	ands	r2, r1
201002a4:	635a      	str	r2, [r3, #52]	; 0x34
201002a6:	4b33      	ldr	r3, [pc, #204]	; (20100374 <TimerConfig+0x1d0>)
201002a8:	4a32      	ldr	r2, [pc, #200]	; (20100374 <TimerConfig+0x1d0>)
201002aa:	6b52      	ldr	r2, [r2, #52]	; 0x34
201002ac:	21c0      	movs	r1, #192	; 0xc0
201002ae:	0109      	lsls	r1, r1, #4
201002b0:	430a      	orrs	r2, r1
201002b2:	635a      	str	r2, [r3, #52]	; 0x34
201002b4:	4b2f      	ldr	r3, [pc, #188]	; (20100374 <TimerConfig+0x1d0>)
201002b6:	4a2f      	ldr	r2, [pc, #188]	; (20100374 <TimerConfig+0x1d0>)
201002b8:	6b52      	ldr	r2, [r2, #52]	; 0x34
201002ba:	2180      	movs	r1, #128	; 0x80
201002bc:	0049      	lsls	r1, r1, #1
201002be:	430a      	orrs	r2, r1
201002c0:	635a      	str	r2, [r3, #52]	; 0x34
201002c2:	4b2c      	ldr	r3, [pc, #176]	; (20100374 <TimerConfig+0x1d0>)
201002c4:	4a2b      	ldr	r2, [pc, #172]	; (20100374 <TimerConfig+0x1d0>)
201002c6:	6a92      	ldr	r2, [r2, #40]	; 0x28
201002c8:	492b      	ldr	r1, [pc, #172]	; (20100378 <TimerConfig+0x1d4>)
201002ca:	400a      	ands	r2, r1
201002cc:	629a      	str	r2, [r3, #40]	; 0x28
201002ce:	4b29      	ldr	r3, [pc, #164]	; (20100374 <TimerConfig+0x1d0>)
201002d0:	4a28      	ldr	r2, [pc, #160]	; (20100374 <TimerConfig+0x1d0>)
201002d2:	6a92      	ldr	r2, [r2, #40]	; 0x28
201002d4:	21e0      	movs	r1, #224	; 0xe0
201002d6:	0109      	lsls	r1, r1, #4
201002d8:	430a      	orrs	r2, r1
201002da:	629a      	str	r2, [r3, #40]	; 0x28
201002dc:	4b25      	ldr	r3, [pc, #148]	; (20100374 <TimerConfig+0x1d0>)
201002de:	4a25      	ldr	r2, [pc, #148]	; (20100374 <TimerConfig+0x1d0>)
201002e0:	6b92      	ldr	r2, [r2, #56]	; 0x38
201002e2:	210f      	movs	r1, #15
201002e4:	438a      	bics	r2, r1
201002e6:	639a      	str	r2, [r3, #56]	; 0x38
201002e8:	4b22      	ldr	r3, [pc, #136]	; (20100374 <TimerConfig+0x1d0>)
201002ea:	4a22      	ldr	r2, [pc, #136]	; (20100374 <TimerConfig+0x1d0>)
201002ec:	6b92      	ldr	r2, [r2, #56]	; 0x38
201002ee:	210c      	movs	r1, #12
201002f0:	430a      	orrs	r2, r1
201002f2:	639a      	str	r2, [r3, #56]	; 0x38
201002f4:	4b1f      	ldr	r3, [pc, #124]	; (20100374 <TimerConfig+0x1d0>)
201002f6:	4a1f      	ldr	r2, [pc, #124]	; (20100374 <TimerConfig+0x1d0>)
201002f8:	6b92      	ldr	r2, [r2, #56]	; 0x38
201002fa:	2101      	movs	r1, #1
201002fc:	430a      	orrs	r2, r1
201002fe:	639a      	str	r2, [r3, #56]	; 0x38
20100300:	4b1c      	ldr	r3, [pc, #112]	; (20100374 <TimerConfig+0x1d0>)
20100302:	4a1c      	ldr	r2, [pc, #112]	; (20100374 <TimerConfig+0x1d0>)
20100304:	6b92      	ldr	r2, [r2, #56]	; 0x38
20100306:	491d      	ldr	r1, [pc, #116]	; (2010037c <TimerConfig+0x1d8>)
20100308:	400a      	ands	r2, r1
2010030a:	639a      	str	r2, [r3, #56]	; 0x38
2010030c:	4b19      	ldr	r3, [pc, #100]	; (20100374 <TimerConfig+0x1d0>)
2010030e:	4a19      	ldr	r2, [pc, #100]	; (20100374 <TimerConfig+0x1d0>)
20100310:	6b92      	ldr	r2, [r2, #56]	; 0x38
20100312:	21c0      	movs	r1, #192	; 0xc0
20100314:	0109      	lsls	r1, r1, #4
20100316:	430a      	orrs	r2, r1
20100318:	639a      	str	r2, [r3, #56]	; 0x38
2010031a:	4b16      	ldr	r3, [pc, #88]	; (20100374 <TimerConfig+0x1d0>)
2010031c:	4a15      	ldr	r2, [pc, #84]	; (20100374 <TimerConfig+0x1d0>)
2010031e:	6b92      	ldr	r2, [r2, #56]	; 0x38
20100320:	2180      	movs	r1, #128	; 0x80
20100322:	0049      	lsls	r1, r1, #1
20100324:	430a      	orrs	r2, r1
20100326:	639a      	str	r2, [r3, #56]	; 0x38
20100328:	4b12      	ldr	r3, [pc, #72]	; (20100374 <TimerConfig+0x1d0>)
2010032a:	4a12      	ldr	r2, [pc, #72]	; (20100374 <TimerConfig+0x1d0>)
2010032c:	6c12      	ldr	r2, [r2, #64]	; 0x40
2010032e:	21c8      	movs	r1, #200	; 0xc8
20100330:	0209      	lsls	r1, r1, #8
20100332:	430a      	orrs	r2, r1
20100334:	641a      	str	r2, [r3, #64]	; 0x40
20100336:	4b0f      	ldr	r3, [pc, #60]	; (20100374 <TimerConfig+0x1d0>)
20100338:	4a0e      	ldr	r2, [pc, #56]	; (20100374 <TimerConfig+0x1d0>)
2010033a:	6c52      	ldr	r2, [r2, #68]	; 0x44
2010033c:	21c8      	movs	r1, #200	; 0xc8
2010033e:	0209      	lsls	r1, r1, #8
20100340:	430a      	orrs	r2, r1
20100342:	645a      	str	r2, [r3, #68]	; 0x44
20100344:	4b0b      	ldr	r3, [pc, #44]	; (20100374 <TimerConfig+0x1d0>)
20100346:	4a0b      	ldr	r2, [pc, #44]	; (20100374 <TimerConfig+0x1d0>)
20100348:	6c92      	ldr	r2, [r2, #72]	; 0x48
2010034a:	21c8      	movs	r1, #200	; 0xc8
2010034c:	0209      	lsls	r1, r1, #8
2010034e:	430a      	orrs	r2, r1
20100350:	649a      	str	r2, [r3, #72]	; 0x48
20100352:	4b08      	ldr	r3, [pc, #32]	; (20100374 <TimerConfig+0x1d0>)
20100354:	4a07      	ldr	r2, [pc, #28]	; (20100374 <TimerConfig+0x1d0>)
20100356:	6d92      	ldr	r2, [r2, #88]	; 0x58
20100358:	21f0      	movs	r1, #240	; 0xf0
2010035a:	0149      	lsls	r1, r1, #5
2010035c:	430a      	orrs	r2, r1
2010035e:	659a      	str	r2, [r3, #88]	; 0x58
20100360:	4b04      	ldr	r3, [pc, #16]	; (20100374 <TimerConfig+0x1d0>)
20100362:	2201      	movs	r2, #1
20100364:	60da      	str	r2, [r3, #12]
20100366:	46c0      	nop			; (mov r8, r8)
20100368:	46bd      	mov	sp, r7
2010036a:	bd80      	pop	{r7, pc}
2010036c:	40020000 	.word	0x40020000
20100370:	ff00ffff 	.word	0xff00ffff
20100374:	40098000 	.word	0x40098000
20100378:	fffff1ff 	.word	0xfffff1ff
2010037c:	fffff0ff 	.word	0xfffff0ff

20100380 <adc_init>:
20100380:	b580      	push	{r7, lr}
20100382:	af00      	add	r7, sp, #0
20100384:	4b07      	ldr	r3, [pc, #28]	; (201003a4 <adc_init+0x24>)
20100386:	4a07      	ldr	r2, [pc, #28]	; (201003a4 <adc_init+0x24>)
20100388:	69d2      	ldr	r2, [r2, #28]
2010038a:	2180      	movs	r1, #128	; 0x80
2010038c:	0289      	lsls	r1, r1, #10
2010038e:	430a      	orrs	r2, r1
20100390:	61da      	str	r2, [r3, #28]
20100392:	4b04      	ldr	r3, [pc, #16]	; (201003a4 <adc_init+0x24>)
20100394:	4a04      	ldr	r2, [pc, #16]	; (201003a8 <adc_init+0x28>)
20100396:	615a      	str	r2, [r3, #20]
20100398:	4b04      	ldr	r3, [pc, #16]	; (201003ac <adc_init+0x2c>)
2010039a:	2235      	movs	r2, #53	; 0x35
2010039c:	601a      	str	r2, [r3, #0]
2010039e:	46c0      	nop			; (mov r8, r8)
201003a0:	46bd      	mov	sp, r7
201003a2:	bd80      	pop	{r7, pc}
201003a4:	40020000 	.word	0x40020000
201003a8:	00002020 	.word	0x00002020
201003ac:	40088000 	.word	0x40088000

201003b0 <dac_init>:
201003b0:	b580      	push	{r7, lr}
201003b2:	af00      	add	r7, sp, #0
201003b4:	4b07      	ldr	r3, [pc, #28]	; (201003d4 <dac_init+0x24>)
201003b6:	4a07      	ldr	r2, [pc, #28]	; (201003d4 <dac_init+0x24>)
201003b8:	69d2      	ldr	r2, [r2, #28]
201003ba:	2180      	movs	r1, #128	; 0x80
201003bc:	02c9      	lsls	r1, r1, #11
201003be:	430a      	orrs	r2, r1
201003c0:	61da      	str	r2, [r3, #28]
201003c2:	4b05      	ldr	r3, [pc, #20]	; (201003d8 <dac_init+0x28>)
201003c4:	4a04      	ldr	r2, [pc, #16]	; (201003d8 <dac_init+0x28>)
201003c6:	6812      	ldr	r2, [r2, #0]
201003c8:	2104      	movs	r1, #4
201003ca:	430a      	orrs	r2, r1
201003cc:	601a      	str	r2, [r3, #0]
201003ce:	46c0      	nop			; (mov r8, r8)
201003d0:	46bd      	mov	sp, r7
201003d2:	bd80      	pop	{r7, pc}
201003d4:	40020000 	.word	0x40020000
201003d8:	40090000 	.word	0x40090000

201003dc <SystemInit>:
201003dc:	b580      	push	{r7, lr}
201003de:	af00      	add	r7, sp, #0
201003e0:	f7ff fea6 	bl	20100130 <ClkConfig>
201003e4:	f7ff fe4e 	bl	20100084 <PortConfig>
201003e8:	f7ff fedc 	bl	201001a4 <TimerConfig>
201003ec:	f7ff ffc8 	bl	20100380 <adc_init>
201003f0:	f7ff ffde 	bl	201003b0 <dac_init>
201003f4:	46c0      	nop			; (mov r8, r8)
201003f6:	46bd      	mov	sp, r7
201003f8:	bd80      	pop	{r7, pc}
201003fa:	46c0      	nop			; (mov r8, r8)
