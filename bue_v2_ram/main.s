
bue.elf:     file format elf32-littlearm


Disassembly of section .text:

20100000 <main>:
20100000:	b590      	push	{r4, r7, lr}
20100002:	b0a7      	sub	sp, #156	; 0x9c
20100004:	af00      	add	r7, sp, #0
20100006:	4c2d      	ldr	r4, [pc, #180]	; (201000bc <main+0xbc>)
20100008:	447c      	add	r4, pc
2010000a:	2300      	movs	r3, #0
2010000c:	2294      	movs	r2, #148	; 0x94
2010000e:	18ba      	adds	r2, r7, r2
20100010:	6013      	str	r3, [r2, #0]
20100012:	2300      	movs	r3, #0
20100014:	67fb      	str	r3, [r7, #124]	; 0x7c
20100016:	2300      	movs	r3, #0
20100018:	67bb      	str	r3, [r7, #120]	; 0x78
2010001a:	2300      	movs	r3, #0
2010001c:	2290      	movs	r2, #144	; 0x90
2010001e:	18ba      	adds	r2, r7, r2
20100020:	6013      	str	r3, [r2, #0]
20100022:	2300      	movs	r3, #0
20100024:	228c      	movs	r2, #140	; 0x8c
20100026:	18ba      	adds	r2, r7, r2
20100028:	6013      	str	r3, [r2, #0]
2010002a:	2300      	movs	r3, #0
2010002c:	2288      	movs	r2, #136	; 0x88
2010002e:	18ba      	adds	r2, r7, r2
20100030:	6013      	str	r3, [r2, #0]
20100032:	2300      	movs	r3, #0
20100034:	2284      	movs	r2, #132	; 0x84
20100036:	18ba      	adds	r2, r7, r2
20100038:	6013      	str	r3, [r2, #0]
2010003a:	23fa      	movs	r3, #250	; 0xfa
2010003c:	009b      	lsls	r3, r3, #2
2010003e:	677b      	str	r3, [r7, #116]	; 0x74
20100040:	2300      	movs	r3, #0
20100042:	603b      	str	r3, [r7, #0]
20100044:	f000 fcbe 	bl	201009c4 <SystemInit>
20100048:	2396      	movs	r3, #150	; 0x96
2010004a:	009a      	lsls	r2, r3, #2
2010004c:	2396      	movs	r3, #150	; 0x96
2010004e:	0099      	lsls	r1, r3, #2
20100050:	2334      	movs	r3, #52	; 0x34
20100052:	18fb      	adds	r3, r7, r3
20100054:	0018      	movs	r0, r3
20100056:	f000 fcfd 	bl	20100a54 <reg_init>
2010005a:	2396      	movs	r3, #150	; 0x96
2010005c:	009a      	lsls	r2, r3, #2
2010005e:	2396      	movs	r3, #150	; 0x96
20100060:	0099      	lsls	r1, r3, #2
20100062:	2324      	movs	r3, #36	; 0x24
20100064:	18fb      	adds	r3, r7, r3
20100066:	0018      	movs	r0, r3
20100068:	f000 fcf4 	bl	20100a54 <reg_init>
2010006c:	23fa      	movs	r3, #250	; 0xfa
2010006e:	011a      	lsls	r2, r3, #4
20100070:	2314      	movs	r3, #20
20100072:	18fb      	adds	r3, r7, r3
20100074:	2100      	movs	r1, #0
20100076:	0018      	movs	r0, r3
20100078:	f000 fcec 	bl	20100a54 <reg_init>
2010007c:	4a10      	ldr	r2, [pc, #64]	; (201000c0 <main+0xc0>)
2010007e:	1d3b      	adds	r3, r7, #4
20100080:	2101      	movs	r1, #1
20100082:	0018      	movs	r0, r3
20100084:	f000 fce6 	bl	20100a54 <reg_init>
20100088:	4b0e      	ldr	r3, [pc, #56]	; (201000c4 <main+0xc4>)
2010008a:	447b      	add	r3, pc
2010008c:	2200      	movs	r2, #0
2010008e:	601a      	str	r2, [r3, #0]
20100090:	2300      	movs	r3, #0
20100092:	2290      	movs	r2, #144	; 0x90
20100094:	18ba      	adds	r2, r7, r2
20100096:	6013      	str	r3, [r2, #0]
20100098:	2300      	movs	r3, #0
2010009a:	228c      	movs	r2, #140	; 0x8c
2010009c:	18ba      	adds	r2, r7, r2
2010009e:	6013      	str	r3, [r2, #0]
201000a0:	4b09      	ldr	r3, [pc, #36]	; (201000c8 <main+0xc8>)
201000a2:	447b      	add	r3, pc
201000a4:	2200      	movs	r2, #0
201000a6:	601a      	str	r2, [r3, #0]
201000a8:	4b08      	ldr	r3, [pc, #32]	; (201000cc <main+0xcc>)
201000aa:	447b      	add	r3, pc
201000ac:	2200      	movs	r2, #0
201000ae:	601a      	str	r2, [r3, #0]
201000b0:	2300      	movs	r3, #0
201000b2:	2294      	movs	r2, #148	; 0x94
201000b4:	18ba      	adds	r2, r7, r2
201000b6:	6013      	str	r3, [r2, #0]
201000b8:	e05a      	b.n	20100170 <main+0x170>
201000ba:	46c0      	nop			; (mov r8, r8)
201000bc:	fff00080 	.word	0xfff00080
201000c0:	00003a98 	.word	0x00003a98
201000c4:	fff00012 	.word	0xfff00012
201000c8:	fff00002 	.word	0xfff00002
201000cc:	ffeffffe 	.word	0xffeffffe
201000d0:	f000 fc8c 	bl	201009ec <timer_wait>
201000d4:	f001 f882 	bl	201011dc <adc_dma_start>
201000d8:	4bd2      	ldr	r3, [pc, #840]	; (20100424 <main+0x424>)
201000da:	4ad3      	ldr	r2, [pc, #844]	; (20100428 <main+0x428>)
201000dc:	609a      	str	r2, [r3, #8]
201000de:	f001 f891 	bl	20101204 <adc_dma_wait>
201000e2:	4bd2      	ldr	r3, [pc, #840]	; (2010042c <main+0x42c>)
201000e4:	58e3      	ldr	r3, [r4, r3]
201000e6:	685b      	ldr	r3, [r3, #4]
201000e8:	051b      	lsls	r3, r3, #20
201000ea:	0d1a      	lsrs	r2, r3, #20
201000ec:	2390      	movs	r3, #144	; 0x90
201000ee:	18fb      	adds	r3, r7, r3
201000f0:	681b      	ldr	r3, [r3, #0]
201000f2:	18d3      	adds	r3, r2, r3
201000f4:	2290      	movs	r2, #144	; 0x90
201000f6:	18ba      	adds	r2, r7, r2
201000f8:	6013      	str	r3, [r2, #0]
201000fa:	4bcc      	ldr	r3, [pc, #816]	; (2010042c <main+0x42c>)
201000fc:	58e3      	ldr	r3, [r4, r3]
201000fe:	689b      	ldr	r3, [r3, #8]
20100100:	051b      	lsls	r3, r3, #20
20100102:	0d1a      	lsrs	r2, r3, #20
20100104:	238c      	movs	r3, #140	; 0x8c
20100106:	18fb      	adds	r3, r7, r3
20100108:	681b      	ldr	r3, [r3, #0]
2010010a:	18d3      	adds	r3, r2, r3
2010010c:	228c      	movs	r2, #140	; 0x8c
2010010e:	18ba      	adds	r2, r7, r2
20100110:	6013      	str	r3, [r2, #0]
20100112:	4bc6      	ldr	r3, [pc, #792]	; (2010042c <main+0x42c>)
20100114:	58e3      	ldr	r3, [r4, r3]
20100116:	68db      	ldr	r3, [r3, #12]
20100118:	051b      	lsls	r3, r3, #20
2010011a:	0d1a      	lsrs	r2, r3, #20
2010011c:	4bc4      	ldr	r3, [pc, #784]	; (20100430 <main+0x430>)
2010011e:	447b      	add	r3, pc
20100120:	681b      	ldr	r3, [r3, #0]
20100122:	18d3      	adds	r3, r2, r3
20100124:	001a      	movs	r2, r3
20100126:	4bc3      	ldr	r3, [pc, #780]	; (20100434 <main+0x434>)
20100128:	447b      	add	r3, pc
2010012a:	601a      	str	r2, [r3, #0]
2010012c:	4bbd      	ldr	r3, [pc, #756]	; (20100424 <main+0x424>)
2010012e:	689b      	ldr	r3, [r3, #8]
20100130:	051b      	lsls	r3, r3, #20
20100132:	0d1b      	lsrs	r3, r3, #20
20100134:	0018      	movs	r0, r3
20100136:	f000 fc2d 	bl	20100994 <g2b>
2010013a:	0002      	movs	r2, r0
2010013c:	4bbe      	ldr	r3, [pc, #760]	; (20100438 <main+0x438>)
2010013e:	447b      	add	r3, pc
20100140:	681b      	ldr	r3, [r3, #0]
20100142:	18d3      	adds	r3, r2, r3
20100144:	001a      	movs	r2, r3
20100146:	4bbd      	ldr	r3, [pc, #756]	; (2010043c <main+0x43c>)
20100148:	447b      	add	r3, pc
2010014a:	601a      	str	r2, [r3, #0]
2010014c:	4bb7      	ldr	r3, [pc, #732]	; (2010042c <main+0x42c>)
2010014e:	58e3      	ldr	r3, [r4, r3]
20100150:	681b      	ldr	r3, [r3, #0]
20100152:	051b      	lsls	r3, r3, #20
20100154:	0d1a      	lsrs	r2, r3, #20
20100156:	0013      	movs	r3, r2
20100158:	009b      	lsls	r3, r3, #2
2010015a:	189b      	adds	r3, r3, r2
2010015c:	0018      	movs	r0, r3
2010015e:	f001 f913 	bl	20101388 <mfilter>
20100162:	2394      	movs	r3, #148	; 0x94
20100164:	18fb      	adds	r3, r7, r3
20100166:	681b      	ldr	r3, [r3, #0]
20100168:	3301      	adds	r3, #1
2010016a:	2294      	movs	r2, #148	; 0x94
2010016c:	18ba      	adds	r2, r7, r2
2010016e:	6013      	str	r3, [r2, #0]
20100170:	2394      	movs	r3, #148	; 0x94
20100172:	18fb      	adds	r3, r7, r3
20100174:	681b      	ldr	r3, [r3, #0]
20100176:	4ab2      	ldr	r2, [pc, #712]	; (20100440 <main+0x440>)
20100178:	4293      	cmp	r3, r2
2010017a:	dda9      	ble.n	201000d0 <main+0xd0>
2010017c:	2390      	movs	r3, #144	; 0x90
2010017e:	18fb      	adds	r3, r7, r3
20100180:	681b      	ldr	r3, [r3, #0]
20100182:	129b      	asrs	r3, r3, #10
20100184:	2290      	movs	r2, #144	; 0x90
20100186:	18ba      	adds	r2, r7, r2
20100188:	6013      	str	r3, [r2, #0]
2010018a:	238c      	movs	r3, #140	; 0x8c
2010018c:	18fb      	adds	r3, r7, r3
2010018e:	681b      	ldr	r3, [r3, #0]
20100190:	129b      	asrs	r3, r3, #10
20100192:	228c      	movs	r2, #140	; 0x8c
20100194:	18ba      	adds	r2, r7, r2
20100196:	6013      	str	r3, [r2, #0]
20100198:	4baa      	ldr	r3, [pc, #680]	; (20100444 <main+0x444>)
2010019a:	447b      	add	r3, pc
2010019c:	681b      	ldr	r3, [r3, #0]
2010019e:	129a      	asrs	r2, r3, #10
201001a0:	4ba9      	ldr	r3, [pc, #676]	; (20100448 <main+0x448>)
201001a2:	447b      	add	r3, pc
201001a4:	601a      	str	r2, [r3, #0]
201001a6:	4ba9      	ldr	r3, [pc, #676]	; (2010044c <main+0x44c>)
201001a8:	447b      	add	r3, pc
201001aa:	681a      	ldr	r2, [r3, #0]
201001ac:	4ba8      	ldr	r3, [pc, #672]	; (20100450 <main+0x450>)
201001ae:	447b      	add	r3, pc
201001b0:	601a      	str	r2, [r3, #0]
201001b2:	4ba8      	ldr	r3, [pc, #672]	; (20100454 <main+0x454>)
201001b4:	447b      	add	r3, pc
201001b6:	681b      	ldr	r3, [r3, #0]
201001b8:	129a      	asrs	r2, r3, #10
201001ba:	4ba7      	ldr	r3, [pc, #668]	; (20100458 <main+0x458>)
201001bc:	447b      	add	r3, pc
201001be:	601a      	str	r2, [r3, #0]
201001c0:	f000 fc14 	bl	201009ec <timer_wait>
201001c4:	4ba5      	ldr	r3, [pc, #660]	; (2010045c <main+0x45c>)
201001c6:	4aa5      	ldr	r2, [pc, #660]	; (2010045c <main+0x45c>)
201001c8:	6812      	ldr	r2, [r2, #0]
201001ca:	2140      	movs	r1, #64	; 0x40
201001cc:	438a      	bics	r2, r1
201001ce:	601a      	str	r2, [r3, #0]
201001d0:	f001 f804 	bl	201011dc <adc_dma_start>
201001d4:	4b93      	ldr	r3, [pc, #588]	; (20100424 <main+0x424>)
201001d6:	4a94      	ldr	r2, [pc, #592]	; (20100428 <main+0x428>)
201001d8:	609a      	str	r2, [r3, #8]
201001da:	f001 f813 	bl	20101204 <adc_dma_wait>
201001de:	4b9f      	ldr	r3, [pc, #636]	; (2010045c <main+0x45c>)
201001e0:	4a9e      	ldr	r2, [pc, #632]	; (2010045c <main+0x45c>)
201001e2:	6812      	ldr	r2, [r2, #0]
201001e4:	2140      	movs	r1, #64	; 0x40
201001e6:	430a      	orrs	r2, r1
201001e8:	601a      	str	r2, [r3, #0]
201001ea:	4b90      	ldr	r3, [pc, #576]	; (2010042c <main+0x42c>)
201001ec:	58e3      	ldr	r3, [r4, r3]
201001ee:	681b      	ldr	r3, [r3, #0]
201001f0:	051b      	lsls	r3, r3, #20
201001f2:	0d1a      	lsrs	r2, r3, #20
201001f4:	0013      	movs	r3, r2
201001f6:	009b      	lsls	r3, r3, #2
201001f8:	189b      	adds	r3, r3, r2
201001fa:	0018      	movs	r0, r3
201001fc:	f001 f8c4 	bl	20101388 <mfilter>
20100200:	0003      	movs	r3, r0
20100202:	2294      	movs	r2, #148	; 0x94
20100204:	18ba      	adds	r2, r7, r2
20100206:	6013      	str	r3, [r2, #0]
20100208:	2394      	movs	r3, #148	; 0x94
2010020a:	18fb      	adds	r3, r7, r3
2010020c:	681b      	ldr	r3, [r3, #0]
2010020e:	10da      	asrs	r2, r3, #3
20100210:	2394      	movs	r3, #148	; 0x94
20100212:	18fb      	adds	r3, r7, r3
20100214:	681b      	ldr	r3, [r3, #0]
20100216:	18d3      	adds	r3, r2, r3
20100218:	10db      	asrs	r3, r3, #3
2010021a:	2291      	movs	r2, #145	; 0x91
2010021c:	0092      	lsls	r2, r2, #2
2010021e:	189a      	adds	r2, r3, r2
20100220:	4b8f      	ldr	r3, [pc, #572]	; (20100460 <main+0x460>)
20100222:	447b      	add	r3, pc
20100224:	601a      	str	r2, [r3, #0]
20100226:	4b81      	ldr	r3, [pc, #516]	; (2010042c <main+0x42c>)
20100228:	58e3      	ldr	r3, [r4, r3]
2010022a:	685b      	ldr	r3, [r3, #4]
2010022c:	051b      	lsls	r3, r3, #20
2010022e:	0d1a      	lsrs	r2, r3, #20
20100230:	2390      	movs	r3, #144	; 0x90
20100232:	18fb      	adds	r3, r7, r3
20100234:	681b      	ldr	r3, [r3, #0]
20100236:	1ad3      	subs	r3, r2, r3
20100238:	673b      	str	r3, [r7, #112]	; 0x70
2010023a:	4b7c      	ldr	r3, [pc, #496]	; (2010042c <main+0x42c>)
2010023c:	58e3      	ldr	r3, [r4, r3]
2010023e:	689b      	ldr	r3, [r3, #8]
20100240:	051b      	lsls	r3, r3, #20
20100242:	0d1a      	lsrs	r2, r3, #20
20100244:	238c      	movs	r3, #140	; 0x8c
20100246:	18fb      	adds	r3, r7, r3
20100248:	681b      	ldr	r3, [r3, #0]
2010024a:	1ad3      	subs	r3, r2, r3
2010024c:	66fb      	str	r3, [r7, #108]	; 0x6c
2010024e:	6f3b      	ldr	r3, [r7, #112]	; 0x70
20100250:	425a      	negs	r2, r3
20100252:	6efb      	ldr	r3, [r7, #108]	; 0x6c
20100254:	1ad3      	subs	r3, r2, r3
20100256:	66bb      	str	r3, [r7, #104]	; 0x68
20100258:	4b74      	ldr	r3, [pc, #464]	; (2010042c <main+0x42c>)
2010025a:	58e3      	ldr	r3, [r4, r3]
2010025c:	68db      	ldr	r3, [r3, #12]
2010025e:	051b      	lsls	r3, r3, #20
20100260:	0d1a      	lsrs	r2, r3, #20
20100262:	4b80      	ldr	r3, [pc, #512]	; (20100464 <main+0x464>)
20100264:	447b      	add	r3, pc
20100266:	601a      	str	r2, [r3, #0]
20100268:	4b6e      	ldr	r3, [pc, #440]	; (20100424 <main+0x424>)
2010026a:	689b      	ldr	r3, [r3, #8]
2010026c:	051b      	lsls	r3, r3, #20
2010026e:	0d1b      	lsrs	r3, r3, #20
20100270:	0018      	movs	r0, r3
20100272:	f000 fb8f 	bl	20100994 <g2b>
20100276:	0003      	movs	r3, r0
20100278:	667b      	str	r3, [r7, #100]	; 0x64
2010027a:	6e7b      	ldr	r3, [r7, #100]	; 0x64
2010027c:	059b      	lsls	r3, r3, #22
2010027e:	0d9b      	lsrs	r3, r3, #22
20100280:	67bb      	str	r3, [r7, #120]	; 0x78
20100282:	2384      	movs	r3, #132	; 0x84
20100284:	18fb      	adds	r3, r7, r3
20100286:	681b      	ldr	r3, [r3, #0]
20100288:	3301      	adds	r3, #1
2010028a:	2284      	movs	r2, #132	; 0x84
2010028c:	18ba      	adds	r2, r7, r2
2010028e:	6013      	str	r3, [r2, #0]
20100290:	2384      	movs	r3, #132	; 0x84
20100292:	18fb      	adds	r3, r7, r3
20100294:	681b      	ldr	r3, [r3, #0]
20100296:	2207      	movs	r2, #7
20100298:	4013      	ands	r3, r2
2010029a:	d152      	bne.n	20100342 <main+0x342>
2010029c:	6e7b      	ldr	r3, [r7, #100]	; 0x64
2010029e:	003a      	movs	r2, r7
201002a0:	0011      	movs	r1, r2
201002a2:	0018      	movs	r0, r3
201002a4:	f000 ff10 	bl	201010c8 <get_speed>
201002a8:	0003      	movs	r3, r0
201002aa:	663b      	str	r3, [r7, #96]	; 0x60
201002ac:	4b6e      	ldr	r3, [pc, #440]	; (20100468 <main+0x468>)
201002ae:	447b      	add	r3, pc
201002b0:	681a      	ldr	r2, [r3, #0]
201002b2:	683b      	ldr	r3, [r7, #0]
201002b4:	1ad1      	subs	r1, r2, r3
201002b6:	1d3b      	adds	r3, r7, #4
201002b8:	2200      	movs	r2, #0
201002ba:	0018      	movs	r0, r3
201002bc:	f000 fbd0 	bl	20100a60 <reg_update>
201002c0:	1d3b      	adds	r3, r7, #4
201002c2:	68db      	ldr	r3, [r3, #12]
201002c4:	131b      	asrs	r3, r3, #12
201002c6:	677b      	str	r3, [r7, #116]	; 0x74
201002c8:	6f7a      	ldr	r2, [r7, #116]	; 0x74
201002ca:	6e3b      	ldr	r3, [r7, #96]	; 0x60
201002cc:	1ad1      	subs	r1, r2, r3
201002ce:	2314      	movs	r3, #20
201002d0:	18fb      	adds	r3, r7, r3
201002d2:	2200      	movs	r2, #0
201002d4:	0018      	movs	r0, r3
201002d6:	f000 fbc3 	bl	20100a60 <reg_update>
201002da:	2314      	movs	r3, #20
201002dc:	18fb      	adds	r3, r7, r3
201002de:	68db      	ldr	r3, [r3, #12]
201002e0:	131b      	asrs	r3, r3, #12
201002e2:	2280      	movs	r2, #128	; 0x80
201002e4:	18ba      	adds	r2, r7, r2
201002e6:	6013      	str	r3, [r2, #0]
201002e8:	2380      	movs	r3, #128	; 0x80
201002ea:	18fb      	adds	r3, r7, r3
201002ec:	681a      	ldr	r2, [r3, #0]
201002ee:	23fa      	movs	r3, #250	; 0xfa
201002f0:	00db      	lsls	r3, r3, #3
201002f2:	429a      	cmp	r2, r3
201002f4:	dd04      	ble.n	20100300 <main+0x300>
201002f6:	23fa      	movs	r3, #250	; 0xfa
201002f8:	00db      	lsls	r3, r3, #3
201002fa:	2280      	movs	r2, #128	; 0x80
201002fc:	18ba      	adds	r2, r7, r2
201002fe:	6013      	str	r3, [r2, #0]
20100300:	2380      	movs	r3, #128	; 0x80
20100302:	18fb      	adds	r3, r7, r3
20100304:	681b      	ldr	r3, [r3, #0]
20100306:	4a59      	ldr	r2, [pc, #356]	; (2010046c <main+0x46c>)
20100308:	4293      	cmp	r3, r2
2010030a:	da03      	bge.n	20100314 <main+0x314>
2010030c:	4b57      	ldr	r3, [pc, #348]	; (2010046c <main+0x46c>)
2010030e:	2280      	movs	r2, #128	; 0x80
20100310:	18ba      	adds	r2, r7, r2
20100312:	6013      	str	r3, [r2, #0]
20100314:	4b56      	ldr	r3, [pc, #344]	; (20100470 <main+0x470>)
20100316:	6f7a      	ldr	r2, [r7, #116]	; 0x74
20100318:	1192      	asrs	r2, r2, #6
2010031a:	2180      	movs	r1, #128	; 0x80
2010031c:	0109      	lsls	r1, r1, #4
2010031e:	468c      	mov	ip, r1
20100320:	4462      	add	r2, ip
20100322:	605a      	str	r2, [r3, #4]
20100324:	4b53      	ldr	r3, [pc, #332]	; (20100474 <main+0x474>)
20100326:	447b      	add	r3, pc
20100328:	681a      	ldr	r2, [r3, #0]
2010032a:	4b53      	ldr	r3, [pc, #332]	; (20100478 <main+0x478>)
2010032c:	447b      	add	r3, pc
2010032e:	681b      	ldr	r3, [r3, #0]
20100330:	1ad2      	subs	r2, r2, r3
20100332:	0013      	movs	r3, r2
20100334:	00db      	lsls	r3, r3, #3
20100336:	1a9b      	subs	r3, r3, r2
20100338:	00da      	lsls	r2, r3, #3
2010033a:	1ad2      	subs	r2, r2, r3
2010033c:	4b4f      	ldr	r3, [pc, #316]	; (2010047c <main+0x47c>)
2010033e:	447b      	add	r3, pc
20100340:	601a      	str	r2, [r3, #0]
20100342:	6fbb      	ldr	r3, [r7, #120]	; 0x78
20100344:	4a4e      	ldr	r2, [pc, #312]	; (20100480 <main+0x480>)
20100346:	4694      	mov	ip, r2
20100348:	4463      	add	r3, ip
2010034a:	059b      	lsls	r3, r3, #22
2010034c:	0d9b      	lsrs	r3, r3, #22
2010034e:	67bb      	str	r3, [r7, #120]	; 0x78
20100350:	2344      	movs	r3, #68	; 0x44
20100352:	18fb      	adds	r3, r7, r3
20100354:	6f3a      	ldr	r2, [r7, #112]	; 0x70
20100356:	601a      	str	r2, [r3, #0]
20100358:	2344      	movs	r3, #68	; 0x44
2010035a:	18fb      	adds	r3, r7, r3
2010035c:	6eba      	ldr	r2, [r7, #104]	; 0x68
2010035e:	605a      	str	r2, [r3, #4]
20100360:	2344      	movs	r3, #68	; 0x44
20100362:	18fb      	adds	r3, r7, r3
20100364:	6efa      	ldr	r2, [r7, #108]	; 0x6c
20100366:	609a      	str	r2, [r3, #8]
20100368:	6fba      	ldr	r2, [r7, #120]	; 0x78
2010036a:	2350      	movs	r3, #80	; 0x50
2010036c:	18f9      	adds	r1, r7, r3
2010036e:	2344      	movs	r3, #68	; 0x44
20100370:	18fb      	adds	r3, r7, r3
20100372:	0018      	movs	r0, r3
20100374:	f000 ff95 	bl	201012a2 <abc_to_dq>
20100378:	2350      	movs	r3, #80	; 0x50
2010037a:	18fb      	adds	r3, r7, r3
2010037c:	681b      	ldr	r3, [r3, #0]
2010037e:	425b      	negs	r3, r3
20100380:	65fb      	str	r3, [r7, #92]	; 0x5c
20100382:	2350      	movs	r3, #80	; 0x50
20100384:	18fb      	adds	r3, r7, r3
20100386:	685b      	ldr	r3, [r3, #4]
20100388:	2280      	movs	r2, #128	; 0x80
2010038a:	18ba      	adds	r2, r7, r2
2010038c:	6812      	ldr	r2, [r2, #0]
2010038e:	1ad3      	subs	r3, r2, r3
20100390:	65bb      	str	r3, [r7, #88]	; 0x58
20100392:	2388      	movs	r3, #136	; 0x88
20100394:	18fb      	adds	r3, r7, r3
20100396:	681a      	ldr	r2, [r3, #0]
20100398:	6df9      	ldr	r1, [r7, #92]	; 0x5c
2010039a:	2334      	movs	r3, #52	; 0x34
2010039c:	18fb      	adds	r3, r7, r3
2010039e:	0018      	movs	r0, r3
201003a0:	f000 fb5e 	bl	20100a60 <reg_update>
201003a4:	2388      	movs	r3, #136	; 0x88
201003a6:	18fb      	adds	r3, r7, r3
201003a8:	681a      	ldr	r2, [r3, #0]
201003aa:	6db9      	ldr	r1, [r7, #88]	; 0x58
201003ac:	2324      	movs	r3, #36	; 0x24
201003ae:	18fb      	adds	r3, r7, r3
201003b0:	0018      	movs	r0, r3
201003b2:	f000 fb55 	bl	20100a60 <reg_update>
201003b6:	2334      	movs	r3, #52	; 0x34
201003b8:	18fb      	adds	r3, r7, r3
201003ba:	68db      	ldr	r3, [r3, #12]
201003bc:	109a      	asrs	r2, r3, #2
201003be:	2350      	movs	r3, #80	; 0x50
201003c0:	18fb      	adds	r3, r7, r3
201003c2:	601a      	str	r2, [r3, #0]
201003c4:	2324      	movs	r3, #36	; 0x24
201003c6:	18fb      	adds	r3, r7, r3
201003c8:	68db      	ldr	r3, [r3, #12]
201003ca:	109a      	asrs	r2, r3, #2
201003cc:	2350      	movs	r3, #80	; 0x50
201003ce:	18fb      	adds	r3, r7, r3
201003d0:	605a      	str	r2, [r3, #4]
201003d2:	6fba      	ldr	r2, [r7, #120]	; 0x78
201003d4:	2350      	movs	r3, #80	; 0x50
201003d6:	18f9      	adds	r1, r7, r3
201003d8:	2344      	movs	r3, #68	; 0x44
201003da:	18fb      	adds	r3, r7, r3
201003dc:	0018      	movs	r0, r3
201003de:	f000 fcb7 	bl	20100d50 <svpwm>
201003e2:	0003      	movs	r3, r0
201003e4:	2288      	movs	r2, #136	; 0x88
201003e6:	18ba      	adds	r2, r7, r2
201003e8:	6013      	str	r3, [r2, #0]
201003ea:	4a26      	ldr	r2, [pc, #152]	; (20100484 <main+0x484>)
201003ec:	2344      	movs	r3, #68	; 0x44
201003ee:	18fb      	adds	r3, r7, r3
201003f0:	681b      	ldr	r3, [r3, #0]
201003f2:	2180      	movs	r1, #128	; 0x80
201003f4:	0089      	lsls	r1, r1, #2
201003f6:	468c      	mov	ip, r1
201003f8:	4463      	add	r3, ip
201003fa:	6113      	str	r3, [r2, #16]
201003fc:	4a21      	ldr	r2, [pc, #132]	; (20100484 <main+0x484>)
201003fe:	2344      	movs	r3, #68	; 0x44
20100400:	18fb      	adds	r3, r7, r3
20100402:	685b      	ldr	r3, [r3, #4]
20100404:	2180      	movs	r1, #128	; 0x80
20100406:	0089      	lsls	r1, r1, #2
20100408:	468c      	mov	ip, r1
2010040a:	4463      	add	r3, ip
2010040c:	6153      	str	r3, [r2, #20]
2010040e:	4a1d      	ldr	r2, [pc, #116]	; (20100484 <main+0x484>)
20100410:	2344      	movs	r3, #68	; 0x44
20100412:	18fb      	adds	r3, r7, r3
20100414:	689b      	ldr	r3, [r3, #8]
20100416:	2180      	movs	r1, #128	; 0x80
20100418:	0089      	lsls	r1, r1, #2
2010041a:	468c      	mov	ip, r1
2010041c:	4463      	add	r3, ip
2010041e:	6193      	str	r3, [r2, #24]
20100420:	e6ce      	b.n	201001c0 <main+0x1c0>
20100422:	46c0      	nop			; (mov r8, r8)
20100424:	400a0000 	.word	0x400a0000
20100428:	00000555 	.word	0x00000555
2010042c:	00000004 	.word	0x00000004
20100430:	ffefff86 	.word	0xffefff86
20100434:	ffefff7c 	.word	0xffefff7c
20100438:	ffefff6a 	.word	0xffefff6a
2010043c:	ffefff60 	.word	0xffefff60
20100440:	000003ff 	.word	0x000003ff
20100444:	ffefff0a 	.word	0xffefff0a
20100448:	ffefff02 	.word	0xffefff02
2010044c:	ffeffefc 	.word	0xffeffefc
20100450:	ffeffef2 	.word	0xffeffef2
20100454:	ffeffef4 	.word	0xffeffef4
20100458:	ffeffeec 	.word	0xffeffeec
2010045c:	400b8000 	.word	0x400b8000
20100460:	ffeffe7e 	.word	0xffeffe7e
20100464:	ffeffe48 	.word	0xffeffe48
20100468:	ffeffdee 	.word	0xffeffdee
2010046c:	fffff830 	.word	0xfffff830
20100470:	40090000 	.word	0x40090000
20100474:	ffeffd7a 	.word	0xffeffd7a
20100478:	ffeffd78 	.word	0xffeffd78
2010047c:	ffeffd5e 	.word	0xffeffd5e
20100480:	0000035e 	.word	0x0000035e
20100484:	40098000 	.word	0x40098000

20100488 <sleep>:
20100488:	b580      	push	{r7, lr}
2010048a:	b084      	sub	sp, #16
2010048c:	af00      	add	r7, sp, #0
2010048e:	6078      	str	r0, [r7, #4]
20100490:	2300      	movs	r3, #0
20100492:	60fb      	str	r3, [r7, #12]
20100494:	e00b      	b.n	201004ae <sleep+0x26>
20100496:	46c0      	nop			; (mov r8, r8)
20100498:	4b09      	ldr	r3, [pc, #36]	; (201004c0 <sleep+0x38>)
2010049a:	6d5b      	ldr	r3, [r3, #84]	; 0x54
2010049c:	2202      	movs	r2, #2
2010049e:	4013      	ands	r3, r2
201004a0:	d0fa      	beq.n	20100498 <sleep+0x10>
201004a2:	4b07      	ldr	r3, [pc, #28]	; (201004c0 <sleep+0x38>)
201004a4:	2200      	movs	r2, #0
201004a6:	655a      	str	r2, [r3, #84]	; 0x54
201004a8:	68fb      	ldr	r3, [r7, #12]
201004aa:	3301      	adds	r3, #1
201004ac:	60fb      	str	r3, [r7, #12]
201004ae:	68fa      	ldr	r2, [r7, #12]
201004b0:	687b      	ldr	r3, [r7, #4]
201004b2:	429a      	cmp	r2, r3
201004b4:	d3ef      	bcc.n	20100496 <sleep+0xe>
201004b6:	46c0      	nop			; (mov r8, r8)
201004b8:	0018      	movs	r0, r3
201004ba:	46bd      	mov	sp, r7
201004bc:	b004      	add	sp, #16
201004be:	bd80      	pop	{r7, pc}
201004c0:	40098000 	.word	0x40098000

201004c4 <PortConfig>:
201004c4:	b580      	push	{r7, lr}
201004c6:	af00      	add	r7, sp, #0
201004c8:	4b50      	ldr	r3, [pc, #320]	; (2010060c <PortConfig+0x148>)
201004ca:	4a50      	ldr	r2, [pc, #320]	; (2010060c <PortConfig+0x148>)
201004cc:	69d2      	ldr	r2, [r2, #28]
201004ce:	2180      	movs	r1, #128	; 0x80
201004d0:	0389      	lsls	r1, r1, #14
201004d2:	430a      	orrs	r2, r1
201004d4:	61da      	str	r2, [r3, #28]
201004d6:	4b4e      	ldr	r3, [pc, #312]	; (20100610 <PortConfig+0x14c>)
201004d8:	4a4d      	ldr	r2, [pc, #308]	; (20100610 <PortConfig+0x14c>)
201004da:	6892      	ldr	r2, [r2, #8]
201004dc:	494d      	ldr	r1, [pc, #308]	; (20100614 <PortConfig+0x150>)
201004de:	400a      	ands	r2, r1
201004e0:	609a      	str	r2, [r3, #8]
201004e2:	4b4b      	ldr	r3, [pc, #300]	; (20100610 <PortConfig+0x14c>)
201004e4:	4a4a      	ldr	r2, [pc, #296]	; (20100610 <PortConfig+0x14c>)
201004e6:	6812      	ldr	r2, [r2, #0]
201004e8:	494b      	ldr	r1, [pc, #300]	; (20100618 <PortConfig+0x154>)
201004ea:	400a      	ands	r2, r1
201004ec:	601a      	str	r2, [r3, #0]
201004ee:	4b48      	ldr	r3, [pc, #288]	; (20100610 <PortConfig+0x14c>)
201004f0:	4a47      	ldr	r2, [pc, #284]	; (20100610 <PortConfig+0x14c>)
201004f2:	6852      	ldr	r2, [r2, #4]
201004f4:	2180      	movs	r1, #128	; 0x80
201004f6:	0209      	lsls	r1, r1, #8
201004f8:	430a      	orrs	r2, r1
201004fa:	605a      	str	r2, [r3, #4]
201004fc:	4b44      	ldr	r3, [pc, #272]	; (20100610 <PortConfig+0x14c>)
201004fe:	4a44      	ldr	r2, [pc, #272]	; (20100610 <PortConfig+0x14c>)
20100500:	68d2      	ldr	r2, [r2, #12]
20100502:	2180      	movs	r1, #128	; 0x80
20100504:	0209      	lsls	r1, r1, #8
20100506:	430a      	orrs	r2, r1
20100508:	60da      	str	r2, [r3, #12]
2010050a:	4b41      	ldr	r3, [pc, #260]	; (20100610 <PortConfig+0x14c>)
2010050c:	4a40      	ldr	r2, [pc, #256]	; (20100610 <PortConfig+0x14c>)
2010050e:	6992      	ldr	r2, [r2, #24]
20100510:	21c0      	movs	r1, #192	; 0xc0
20100512:	0609      	lsls	r1, r1, #24
20100514:	430a      	orrs	r2, r1
20100516:	619a      	str	r2, [r3, #24]
20100518:	4b3d      	ldr	r3, [pc, #244]	; (20100610 <PortConfig+0x14c>)
2010051a:	4a3d      	ldr	r2, [pc, #244]	; (20100610 <PortConfig+0x14c>)
2010051c:	6892      	ldr	r2, [r2, #8]
2010051e:	493f      	ldr	r1, [pc, #252]	; (2010061c <PortConfig+0x158>)
20100520:	430a      	orrs	r2, r1
20100522:	609a      	str	r2, [r3, #8]
20100524:	4b3a      	ldr	r3, [pc, #232]	; (20100610 <PortConfig+0x14c>)
20100526:	4a3a      	ldr	r2, [pc, #232]	; (20100610 <PortConfig+0x14c>)
20100528:	6852      	ldr	r2, [r2, #4]
2010052a:	21fc      	movs	r1, #252	; 0xfc
2010052c:	0109      	lsls	r1, r1, #4
2010052e:	430a      	orrs	r2, r1
20100530:	605a      	str	r2, [r3, #4]
20100532:	4b37      	ldr	r3, [pc, #220]	; (20100610 <PortConfig+0x14c>)
20100534:	4a36      	ldr	r2, [pc, #216]	; (20100610 <PortConfig+0x14c>)
20100536:	68d2      	ldr	r2, [r2, #12]
20100538:	21fc      	movs	r1, #252	; 0xfc
2010053a:	0109      	lsls	r1, r1, #4
2010053c:	430a      	orrs	r2, r1
2010053e:	60da      	str	r2, [r3, #12]
20100540:	4b33      	ldr	r3, [pc, #204]	; (20100610 <PortConfig+0x14c>)
20100542:	4a33      	ldr	r2, [pc, #204]	; (20100610 <PortConfig+0x14c>)
20100544:	6992      	ldr	r2, [r2, #24]
20100546:	4936      	ldr	r1, [pc, #216]	; (20100620 <PortConfig+0x15c>)
20100548:	430a      	orrs	r2, r1
2010054a:	619a      	str	r2, [r3, #24]
2010054c:	4b2f      	ldr	r3, [pc, #188]	; (2010060c <PortConfig+0x148>)
2010054e:	4a2f      	ldr	r2, [pc, #188]	; (2010060c <PortConfig+0x148>)
20100550:	69d2      	ldr	r2, [r2, #28]
20100552:	2180      	movs	r1, #128	; 0x80
20100554:	0489      	lsls	r1, r1, #18
20100556:	430a      	orrs	r2, r1
20100558:	61da      	str	r2, [r3, #28]
2010055a:	4b32      	ldr	r3, [pc, #200]	; (20100624 <PortConfig+0x160>)
2010055c:	4a31      	ldr	r2, [pc, #196]	; (20100624 <PortConfig+0x160>)
2010055e:	68d2      	ldr	r2, [r2, #12]
20100560:	2102      	movs	r1, #2
20100562:	438a      	bics	r2, r1
20100564:	60da      	str	r2, [r3, #12]
20100566:	4b29      	ldr	r3, [pc, #164]	; (2010060c <PortConfig+0x148>)
20100568:	4a28      	ldr	r2, [pc, #160]	; (2010060c <PortConfig+0x148>)
2010056a:	69d2      	ldr	r2, [r2, #28]
2010056c:	2180      	movs	r1, #128	; 0x80
2010056e:	0449      	lsls	r1, r1, #17
20100570:	430a      	orrs	r2, r1
20100572:	61da      	str	r2, [r3, #28]
20100574:	4b2c      	ldr	r3, [pc, #176]	; (20100628 <PortConfig+0x164>)
20100576:	4a2c      	ldr	r2, [pc, #176]	; (20100628 <PortConfig+0x164>)
20100578:	6892      	ldr	r2, [r2, #8]
2010057a:	492c      	ldr	r1, [pc, #176]	; (2010062c <PortConfig+0x168>)
2010057c:	400a      	ands	r2, r1
2010057e:	609a      	str	r2, [r3, #8]
20100580:	4b29      	ldr	r3, [pc, #164]	; (20100628 <PortConfig+0x164>)
20100582:	4a29      	ldr	r2, [pc, #164]	; (20100628 <PortConfig+0x164>)
20100584:	6892      	ldr	r2, [r2, #8]
20100586:	21a0      	movs	r1, #160	; 0xa0
20100588:	02c9      	lsls	r1, r1, #11
2010058a:	430a      	orrs	r2, r1
2010058c:	609a      	str	r2, [r3, #8]
2010058e:	4b26      	ldr	r3, [pc, #152]	; (20100628 <PortConfig+0x164>)
20100590:	4a25      	ldr	r2, [pc, #148]	; (20100628 <PortConfig+0x164>)
20100592:	68d2      	ldr	r2, [r2, #12]
20100594:	21c0      	movs	r1, #192	; 0xc0
20100596:	0089      	lsls	r1, r1, #2
20100598:	430a      	orrs	r2, r1
2010059a:	60da      	str	r2, [r3, #12]
2010059c:	4b22      	ldr	r3, [pc, #136]	; (20100628 <PortConfig+0x164>)
2010059e:	4a22      	ldr	r2, [pc, #136]	; (20100628 <PortConfig+0x164>)
201005a0:	6992      	ldr	r2, [r2, #24]
201005a2:	21c0      	movs	r1, #192	; 0xc0
201005a4:	0309      	lsls	r1, r1, #12
201005a6:	430a      	orrs	r2, r1
201005a8:	619a      	str	r2, [r3, #24]
201005aa:	4b1f      	ldr	r3, [pc, #124]	; (20100628 <PortConfig+0x164>)
201005ac:	4a1e      	ldr	r2, [pc, #120]	; (20100628 <PortConfig+0x164>)
201005ae:	6852      	ldr	r2, [r2, #4]
201005b0:	2180      	movs	r1, #128	; 0x80
201005b2:	0089      	lsls	r1, r1, #2
201005b4:	430a      	orrs	r2, r1
201005b6:	605a      	str	r2, [r3, #4]
201005b8:	4b1b      	ldr	r3, [pc, #108]	; (20100628 <PortConfig+0x164>)
201005ba:	4a1b      	ldr	r2, [pc, #108]	; (20100628 <PortConfig+0x164>)
201005bc:	6852      	ldr	r2, [r2, #4]
201005be:	491c      	ldr	r1, [pc, #112]	; (20100630 <PortConfig+0x16c>)
201005c0:	400a      	ands	r2, r1
201005c2:	605a      	str	r2, [r3, #4]
201005c4:	4b11      	ldr	r3, [pc, #68]	; (2010060c <PortConfig+0x148>)
201005c6:	4a11      	ldr	r2, [pc, #68]	; (2010060c <PortConfig+0x148>)
201005c8:	69d2      	ldr	r2, [r2, #28]
201005ca:	2180      	movs	r1, #128	; 0x80
201005cc:	0409      	lsls	r1, r1, #16
201005ce:	430a      	orrs	r2, r1
201005d0:	61da      	str	r2, [r3, #28]
201005d2:	4b18      	ldr	r3, [pc, #96]	; (20100634 <PortConfig+0x170>)
201005d4:	2200      	movs	r2, #0
201005d6:	609a      	str	r2, [r3, #8]
201005d8:	4b16      	ldr	r3, [pc, #88]	; (20100634 <PortConfig+0x170>)
201005da:	2200      	movs	r2, #0
201005dc:	601a      	str	r2, [r3, #0]
201005de:	4b15      	ldr	r3, [pc, #84]	; (20100634 <PortConfig+0x170>)
201005e0:	4a14      	ldr	r2, [pc, #80]	; (20100634 <PortConfig+0x170>)
201005e2:	6852      	ldr	r2, [r2, #4]
201005e4:	2160      	movs	r1, #96	; 0x60
201005e6:	430a      	orrs	r2, r1
201005e8:	605a      	str	r2, [r3, #4]
201005ea:	4b12      	ldr	r3, [pc, #72]	; (20100634 <PortConfig+0x170>)
201005ec:	4a11      	ldr	r2, [pc, #68]	; (20100634 <PortConfig+0x170>)
201005ee:	68d2      	ldr	r2, [r2, #12]
201005f0:	2160      	movs	r1, #96	; 0x60
201005f2:	430a      	orrs	r2, r1
201005f4:	60da      	str	r2, [r3, #12]
201005f6:	4b0f      	ldr	r3, [pc, #60]	; (20100634 <PortConfig+0x170>)
201005f8:	4a0e      	ldr	r2, [pc, #56]	; (20100634 <PortConfig+0x170>)
201005fa:	6992      	ldr	r2, [r2, #24]
201005fc:	21f0      	movs	r1, #240	; 0xf0
201005fe:	0189      	lsls	r1, r1, #6
20100600:	430a      	orrs	r2, r1
20100602:	619a      	str	r2, [r3, #24]
20100604:	46c0      	nop			; (mov r8, r8)
20100606:	46bd      	mov	sp, r7
20100608:	bd80      	pop	{r7, pc}
2010060a:	46c0      	nop			; (mov r8, r8)
2010060c:	40020000 	.word	0x40020000
20100610:	400a8000 	.word	0x400a8000
20100614:	ff000fff 	.word	0xff000fff
20100618:	ffff7fff 	.word	0xffff7fff
2010061c:	00aaa000 	.word	0x00aaa000
20100620:	00fff000 	.word	0x00fff000
20100624:	400c8000 	.word	0x400c8000
20100628:	400c0000 	.word	0x400c0000
2010062c:	fff0ffff 	.word	0xfff0ffff
20100630:	fffffeff 	.word	0xfffffeff
20100634:	400b8000 	.word	0x400b8000

20100638 <ClkConfig>:
20100638:	b580      	push	{r7, lr}
2010063a:	af00      	add	r7, sp, #0
2010063c:	4b18      	ldr	r3, [pc, #96]	; (201006a0 <ClkConfig+0x68>)
2010063e:	4a18      	ldr	r2, [pc, #96]	; (201006a0 <ClkConfig+0x68>)
20100640:	6892      	ldr	r2, [r2, #8]
20100642:	2101      	movs	r1, #1
20100644:	430a      	orrs	r2, r1
20100646:	609a      	str	r2, [r3, #8]
20100648:	46c0      	nop			; (mov r8, r8)
2010064a:	4b15      	ldr	r3, [pc, #84]	; (201006a0 <ClkConfig+0x68>)
2010064c:	681b      	ldr	r3, [r3, #0]
2010064e:	2204      	movs	r2, #4
20100650:	4013      	ands	r3, r2
20100652:	d0fa      	beq.n	2010064a <ClkConfig+0x12>
20100654:	4b12      	ldr	r3, [pc, #72]	; (201006a0 <ClkConfig+0x68>)
20100656:	4a12      	ldr	r2, [pc, #72]	; (201006a0 <ClkConfig+0x68>)
20100658:	68d2      	ldr	r2, [r2, #12]
2010065a:	2102      	movs	r1, #2
2010065c:	430a      	orrs	r2, r1
2010065e:	60da      	str	r2, [r3, #12]
20100660:	4b0f      	ldr	r3, [pc, #60]	; (201006a0 <ClkConfig+0x68>)
20100662:	4a10      	ldr	r2, [pc, #64]	; (201006a4 <ClkConfig+0x6c>)
20100664:	605a      	str	r2, [r3, #4]
20100666:	46c0      	nop			; (mov r8, r8)
20100668:	4b0d      	ldr	r3, [pc, #52]	; (201006a0 <ClkConfig+0x68>)
2010066a:	681b      	ldr	r3, [r3, #0]
2010066c:	2202      	movs	r2, #2
2010066e:	4013      	ands	r3, r2
20100670:	d0fa      	beq.n	20100668 <ClkConfig+0x30>
20100672:	4b0d      	ldr	r3, [pc, #52]	; (201006a8 <ClkConfig+0x70>)
20100674:	4a0c      	ldr	r2, [pc, #48]	; (201006a8 <ClkConfig+0x70>)
20100676:	6812      	ldr	r2, [r2, #0]
20100678:	2120      	movs	r1, #32
2010067a:	430a      	orrs	r2, r1
2010067c:	601a      	str	r2, [r3, #0]
2010067e:	4b08      	ldr	r3, [pc, #32]	; (201006a0 <ClkConfig+0x68>)
20100680:	4a07      	ldr	r2, [pc, #28]	; (201006a0 <ClkConfig+0x68>)
20100682:	68d2      	ldr	r2, [r2, #12]
20100684:	2180      	movs	r1, #128	; 0x80
20100686:	0049      	lsls	r1, r1, #1
20100688:	430a      	orrs	r2, r1
2010068a:	60da      	str	r2, [r3, #12]
2010068c:	4b04      	ldr	r3, [pc, #16]	; (201006a0 <ClkConfig+0x68>)
2010068e:	4a04      	ldr	r2, [pc, #16]	; (201006a0 <ClkConfig+0x68>)
20100690:	68d2      	ldr	r2, [r2, #12]
20100692:	2104      	movs	r1, #4
20100694:	430a      	orrs	r2, r1
20100696:	60da      	str	r2, [r3, #12]
20100698:	46c0      	nop			; (mov r8, r8)
2010069a:	46bd      	mov	sp, r7
2010069c:	bd80      	pop	{r7, pc}
2010069e:	46c0      	nop			; (mov r8, r8)
201006a0:	40020000 	.word	0x40020000
201006a4:	00000e04 	.word	0x00000e04
201006a8:	40018000 	.word	0x40018000

201006ac <TimerConfig>:
201006ac:	b580      	push	{r7, lr}
201006ae:	af00      	add	r7, sp, #0
201006b0:	4b7a      	ldr	r3, [pc, #488]	; (2010089c <TimerConfig+0x1f0>)
201006b2:	4a7a      	ldr	r2, [pc, #488]	; (2010089c <TimerConfig+0x1f0>)
201006b4:	69d2      	ldr	r2, [r2, #28]
201006b6:	2180      	movs	r1, #128	; 0x80
201006b8:	0309      	lsls	r1, r1, #12
201006ba:	430a      	orrs	r2, r1
201006bc:	61da      	str	r2, [r3, #28]
201006be:	4b77      	ldr	r3, [pc, #476]	; (2010089c <TimerConfig+0x1f0>)
201006c0:	4a76      	ldr	r2, [pc, #472]	; (2010089c <TimerConfig+0x1f0>)
201006c2:	6a92      	ldr	r2, [r2, #40]	; 0x28
201006c4:	2180      	movs	r1, #128	; 0x80
201006c6:	04c9      	lsls	r1, r1, #19
201006c8:	430a      	orrs	r2, r1
201006ca:	629a      	str	r2, [r3, #40]	; 0x28
201006cc:	4b73      	ldr	r3, [pc, #460]	; (2010089c <TimerConfig+0x1f0>)
201006ce:	4a73      	ldr	r2, [pc, #460]	; (2010089c <TimerConfig+0x1f0>)
201006d0:	6a92      	ldr	r2, [r2, #40]	; 0x28
201006d2:	4973      	ldr	r1, [pc, #460]	; (201008a0 <TimerConfig+0x1f4>)
201006d4:	400a      	ands	r2, r1
201006d6:	629a      	str	r2, [r3, #40]	; 0x28
201006d8:	4b72      	ldr	r3, [pc, #456]	; (201008a4 <TimerConfig+0x1f8>)
201006da:	2200      	movs	r2, #0
201006dc:	601a      	str	r2, [r3, #0]
201006de:	4b71      	ldr	r3, [pc, #452]	; (201008a4 <TimerConfig+0x1f8>)
201006e0:	2204      	movs	r2, #4
201006e2:	605a      	str	r2, [r3, #4]
201006e4:	4b6f      	ldr	r3, [pc, #444]	; (201008a4 <TimerConfig+0x1f8>)
201006e6:	4a70      	ldr	r2, [pc, #448]	; (201008a8 <TimerConfig+0x1fc>)
201006e8:	609a      	str	r2, [r3, #8]
201006ea:	4b6e      	ldr	r3, [pc, #440]	; (201008a4 <TimerConfig+0x1f8>)
201006ec:	2280      	movs	r2, #128	; 0x80
201006ee:	0092      	lsls	r2, r2, #2
201006f0:	611a      	str	r2, [r3, #16]
201006f2:	4b6c      	ldr	r3, [pc, #432]	; (201008a4 <TimerConfig+0x1f8>)
201006f4:	2280      	movs	r2, #128	; 0x80
201006f6:	0092      	lsls	r2, r2, #2
201006f8:	615a      	str	r2, [r3, #20]
201006fa:	4b6a      	ldr	r3, [pc, #424]	; (201008a4 <TimerConfig+0x1f8>)
201006fc:	2280      	movs	r2, #128	; 0x80
201006fe:	0092      	lsls	r2, r2, #2
20100700:	619a      	str	r2, [r3, #24]
20100702:	4b68      	ldr	r3, [pc, #416]	; (201008a4 <TimerConfig+0x1f8>)
20100704:	4a67      	ldr	r2, [pc, #412]	; (201008a4 <TimerConfig+0x1f8>)
20100706:	6a12      	ldr	r2, [r2, #32]
20100708:	4968      	ldr	r1, [pc, #416]	; (201008ac <TimerConfig+0x200>)
2010070a:	400a      	ands	r2, r1
2010070c:	621a      	str	r2, [r3, #32]
2010070e:	4b65      	ldr	r3, [pc, #404]	; (201008a4 <TimerConfig+0x1f8>)
20100710:	4a64      	ldr	r2, [pc, #400]	; (201008a4 <TimerConfig+0x1f8>)
20100712:	6a12      	ldr	r2, [r2, #32]
20100714:	21e0      	movs	r1, #224	; 0xe0
20100716:	0109      	lsls	r1, r1, #4
20100718:	430a      	orrs	r2, r1
2010071a:	621a      	str	r2, [r3, #32]
2010071c:	4b61      	ldr	r3, [pc, #388]	; (201008a4 <TimerConfig+0x1f8>)
2010071e:	4a61      	ldr	r2, [pc, #388]	; (201008a4 <TimerConfig+0x1f8>)
20100720:	6b12      	ldr	r2, [r2, #48]	; 0x30
20100722:	210f      	movs	r1, #15
20100724:	438a      	bics	r2, r1
20100726:	631a      	str	r2, [r3, #48]	; 0x30
20100728:	4b5e      	ldr	r3, [pc, #376]	; (201008a4 <TimerConfig+0x1f8>)
2010072a:	4a5e      	ldr	r2, [pc, #376]	; (201008a4 <TimerConfig+0x1f8>)
2010072c:	6b12      	ldr	r2, [r2, #48]	; 0x30
2010072e:	210c      	movs	r1, #12
20100730:	430a      	orrs	r2, r1
20100732:	631a      	str	r2, [r3, #48]	; 0x30
20100734:	4b5b      	ldr	r3, [pc, #364]	; (201008a4 <TimerConfig+0x1f8>)
20100736:	4a5b      	ldr	r2, [pc, #364]	; (201008a4 <TimerConfig+0x1f8>)
20100738:	6b12      	ldr	r2, [r2, #48]	; 0x30
2010073a:	2101      	movs	r1, #1
2010073c:	430a      	orrs	r2, r1
2010073e:	631a      	str	r2, [r3, #48]	; 0x30
20100740:	4b58      	ldr	r3, [pc, #352]	; (201008a4 <TimerConfig+0x1f8>)
20100742:	4a58      	ldr	r2, [pc, #352]	; (201008a4 <TimerConfig+0x1f8>)
20100744:	6b12      	ldr	r2, [r2, #48]	; 0x30
20100746:	495a      	ldr	r1, [pc, #360]	; (201008b0 <TimerConfig+0x204>)
20100748:	400a      	ands	r2, r1
2010074a:	631a      	str	r2, [r3, #48]	; 0x30
2010074c:	4b55      	ldr	r3, [pc, #340]	; (201008a4 <TimerConfig+0x1f8>)
2010074e:	4a55      	ldr	r2, [pc, #340]	; (201008a4 <TimerConfig+0x1f8>)
20100750:	6b12      	ldr	r2, [r2, #48]	; 0x30
20100752:	21c0      	movs	r1, #192	; 0xc0
20100754:	0109      	lsls	r1, r1, #4
20100756:	430a      	orrs	r2, r1
20100758:	631a      	str	r2, [r3, #48]	; 0x30
2010075a:	4b52      	ldr	r3, [pc, #328]	; (201008a4 <TimerConfig+0x1f8>)
2010075c:	4a51      	ldr	r2, [pc, #324]	; (201008a4 <TimerConfig+0x1f8>)
2010075e:	6b12      	ldr	r2, [r2, #48]	; 0x30
20100760:	2180      	movs	r1, #128	; 0x80
20100762:	0049      	lsls	r1, r1, #1
20100764:	430a      	orrs	r2, r1
20100766:	631a      	str	r2, [r3, #48]	; 0x30
20100768:	4b4e      	ldr	r3, [pc, #312]	; (201008a4 <TimerConfig+0x1f8>)
2010076a:	4a4e      	ldr	r2, [pc, #312]	; (201008a4 <TimerConfig+0x1f8>)
2010076c:	6e12      	ldr	r2, [r2, #96]	; 0x60
2010076e:	2108      	movs	r1, #8
20100770:	430a      	orrs	r2, r1
20100772:	661a      	str	r2, [r3, #96]	; 0x60
20100774:	4b4b      	ldr	r3, [pc, #300]	; (201008a4 <TimerConfig+0x1f8>)
20100776:	4a4b      	ldr	r2, [pc, #300]	; (201008a4 <TimerConfig+0x1f8>)
20100778:	6a52      	ldr	r2, [r2, #36]	; 0x24
2010077a:	494c      	ldr	r1, [pc, #304]	; (201008ac <TimerConfig+0x200>)
2010077c:	400a      	ands	r2, r1
2010077e:	625a      	str	r2, [r3, #36]	; 0x24
20100780:	4b48      	ldr	r3, [pc, #288]	; (201008a4 <TimerConfig+0x1f8>)
20100782:	4a48      	ldr	r2, [pc, #288]	; (201008a4 <TimerConfig+0x1f8>)
20100784:	6a52      	ldr	r2, [r2, #36]	; 0x24
20100786:	21e0      	movs	r1, #224	; 0xe0
20100788:	0109      	lsls	r1, r1, #4
2010078a:	430a      	orrs	r2, r1
2010078c:	625a      	str	r2, [r3, #36]	; 0x24
2010078e:	4b45      	ldr	r3, [pc, #276]	; (201008a4 <TimerConfig+0x1f8>)
20100790:	4a44      	ldr	r2, [pc, #272]	; (201008a4 <TimerConfig+0x1f8>)
20100792:	6b52      	ldr	r2, [r2, #52]	; 0x34
20100794:	210f      	movs	r1, #15
20100796:	438a      	bics	r2, r1
20100798:	635a      	str	r2, [r3, #52]	; 0x34
2010079a:	4b42      	ldr	r3, [pc, #264]	; (201008a4 <TimerConfig+0x1f8>)
2010079c:	4a41      	ldr	r2, [pc, #260]	; (201008a4 <TimerConfig+0x1f8>)
2010079e:	6b52      	ldr	r2, [r2, #52]	; 0x34
201007a0:	210c      	movs	r1, #12
201007a2:	430a      	orrs	r2, r1
201007a4:	635a      	str	r2, [r3, #52]	; 0x34
201007a6:	4b3f      	ldr	r3, [pc, #252]	; (201008a4 <TimerConfig+0x1f8>)
201007a8:	4a3e      	ldr	r2, [pc, #248]	; (201008a4 <TimerConfig+0x1f8>)
201007aa:	6b52      	ldr	r2, [r2, #52]	; 0x34
201007ac:	2101      	movs	r1, #1
201007ae:	430a      	orrs	r2, r1
201007b0:	635a      	str	r2, [r3, #52]	; 0x34
201007b2:	4b3c      	ldr	r3, [pc, #240]	; (201008a4 <TimerConfig+0x1f8>)
201007b4:	4a3b      	ldr	r2, [pc, #236]	; (201008a4 <TimerConfig+0x1f8>)
201007b6:	6b52      	ldr	r2, [r2, #52]	; 0x34
201007b8:	493d      	ldr	r1, [pc, #244]	; (201008b0 <TimerConfig+0x204>)
201007ba:	400a      	ands	r2, r1
201007bc:	635a      	str	r2, [r3, #52]	; 0x34
201007be:	4b39      	ldr	r3, [pc, #228]	; (201008a4 <TimerConfig+0x1f8>)
201007c0:	4a38      	ldr	r2, [pc, #224]	; (201008a4 <TimerConfig+0x1f8>)
201007c2:	6b52      	ldr	r2, [r2, #52]	; 0x34
201007c4:	21c0      	movs	r1, #192	; 0xc0
201007c6:	0109      	lsls	r1, r1, #4
201007c8:	430a      	orrs	r2, r1
201007ca:	635a      	str	r2, [r3, #52]	; 0x34
201007cc:	4b35      	ldr	r3, [pc, #212]	; (201008a4 <TimerConfig+0x1f8>)
201007ce:	4a35      	ldr	r2, [pc, #212]	; (201008a4 <TimerConfig+0x1f8>)
201007d0:	6b52      	ldr	r2, [r2, #52]	; 0x34
201007d2:	2180      	movs	r1, #128	; 0x80
201007d4:	0049      	lsls	r1, r1, #1
201007d6:	430a      	orrs	r2, r1
201007d8:	635a      	str	r2, [r3, #52]	; 0x34
201007da:	4b32      	ldr	r3, [pc, #200]	; (201008a4 <TimerConfig+0x1f8>)
201007dc:	4a31      	ldr	r2, [pc, #196]	; (201008a4 <TimerConfig+0x1f8>)
201007de:	6e52      	ldr	r2, [r2, #100]	; 0x64
201007e0:	2108      	movs	r1, #8
201007e2:	430a      	orrs	r2, r1
201007e4:	665a      	str	r2, [r3, #100]	; 0x64
201007e6:	4b2f      	ldr	r3, [pc, #188]	; (201008a4 <TimerConfig+0x1f8>)
201007e8:	4a2e      	ldr	r2, [pc, #184]	; (201008a4 <TimerConfig+0x1f8>)
201007ea:	6a92      	ldr	r2, [r2, #40]	; 0x28
201007ec:	492f      	ldr	r1, [pc, #188]	; (201008ac <TimerConfig+0x200>)
201007ee:	400a      	ands	r2, r1
201007f0:	629a      	str	r2, [r3, #40]	; 0x28
201007f2:	4b2c      	ldr	r3, [pc, #176]	; (201008a4 <TimerConfig+0x1f8>)
201007f4:	4a2b      	ldr	r2, [pc, #172]	; (201008a4 <TimerConfig+0x1f8>)
201007f6:	6a92      	ldr	r2, [r2, #40]	; 0x28
201007f8:	21e0      	movs	r1, #224	; 0xe0
201007fa:	0109      	lsls	r1, r1, #4
201007fc:	430a      	orrs	r2, r1
201007fe:	629a      	str	r2, [r3, #40]	; 0x28
20100800:	4b28      	ldr	r3, [pc, #160]	; (201008a4 <TimerConfig+0x1f8>)
20100802:	4a28      	ldr	r2, [pc, #160]	; (201008a4 <TimerConfig+0x1f8>)
20100804:	6b92      	ldr	r2, [r2, #56]	; 0x38
20100806:	210f      	movs	r1, #15
20100808:	438a      	bics	r2, r1
2010080a:	639a      	str	r2, [r3, #56]	; 0x38
2010080c:	4b25      	ldr	r3, [pc, #148]	; (201008a4 <TimerConfig+0x1f8>)
2010080e:	4a25      	ldr	r2, [pc, #148]	; (201008a4 <TimerConfig+0x1f8>)
20100810:	6b92      	ldr	r2, [r2, #56]	; 0x38
20100812:	210c      	movs	r1, #12
20100814:	430a      	orrs	r2, r1
20100816:	639a      	str	r2, [r3, #56]	; 0x38
20100818:	4b22      	ldr	r3, [pc, #136]	; (201008a4 <TimerConfig+0x1f8>)
2010081a:	4a22      	ldr	r2, [pc, #136]	; (201008a4 <TimerConfig+0x1f8>)
2010081c:	6b92      	ldr	r2, [r2, #56]	; 0x38
2010081e:	2101      	movs	r1, #1
20100820:	430a      	orrs	r2, r1
20100822:	639a      	str	r2, [r3, #56]	; 0x38
20100824:	4b1f      	ldr	r3, [pc, #124]	; (201008a4 <TimerConfig+0x1f8>)
20100826:	4a1f      	ldr	r2, [pc, #124]	; (201008a4 <TimerConfig+0x1f8>)
20100828:	6b92      	ldr	r2, [r2, #56]	; 0x38
2010082a:	4921      	ldr	r1, [pc, #132]	; (201008b0 <TimerConfig+0x204>)
2010082c:	400a      	ands	r2, r1
2010082e:	639a      	str	r2, [r3, #56]	; 0x38
20100830:	4b1c      	ldr	r3, [pc, #112]	; (201008a4 <TimerConfig+0x1f8>)
20100832:	4a1c      	ldr	r2, [pc, #112]	; (201008a4 <TimerConfig+0x1f8>)
20100834:	6b92      	ldr	r2, [r2, #56]	; 0x38
20100836:	21c0      	movs	r1, #192	; 0xc0
20100838:	0109      	lsls	r1, r1, #4
2010083a:	430a      	orrs	r2, r1
2010083c:	639a      	str	r2, [r3, #56]	; 0x38
2010083e:	4b19      	ldr	r3, [pc, #100]	; (201008a4 <TimerConfig+0x1f8>)
20100840:	4a18      	ldr	r2, [pc, #96]	; (201008a4 <TimerConfig+0x1f8>)
20100842:	6b92      	ldr	r2, [r2, #56]	; 0x38
20100844:	2180      	movs	r1, #128	; 0x80
20100846:	0049      	lsls	r1, r1, #1
20100848:	430a      	orrs	r2, r1
2010084a:	639a      	str	r2, [r3, #56]	; 0x38
2010084c:	4b15      	ldr	r3, [pc, #84]	; (201008a4 <TimerConfig+0x1f8>)
2010084e:	4a15      	ldr	r2, [pc, #84]	; (201008a4 <TimerConfig+0x1f8>)
20100850:	6e92      	ldr	r2, [r2, #104]	; 0x68
20100852:	2108      	movs	r1, #8
20100854:	430a      	orrs	r2, r1
20100856:	669a      	str	r2, [r3, #104]	; 0x68
20100858:	4b12      	ldr	r3, [pc, #72]	; (201008a4 <TimerConfig+0x1f8>)
2010085a:	4a12      	ldr	r2, [pc, #72]	; (201008a4 <TimerConfig+0x1f8>)
2010085c:	6c12      	ldr	r2, [r2, #64]	; 0x40
2010085e:	2196      	movs	r1, #150	; 0x96
20100860:	0189      	lsls	r1, r1, #6
20100862:	430a      	orrs	r2, r1
20100864:	641a      	str	r2, [r3, #64]	; 0x40
20100866:	4b0f      	ldr	r3, [pc, #60]	; (201008a4 <TimerConfig+0x1f8>)
20100868:	4a0e      	ldr	r2, [pc, #56]	; (201008a4 <TimerConfig+0x1f8>)
2010086a:	6c52      	ldr	r2, [r2, #68]	; 0x44
2010086c:	2196      	movs	r1, #150	; 0x96
2010086e:	0189      	lsls	r1, r1, #6
20100870:	430a      	orrs	r2, r1
20100872:	645a      	str	r2, [r3, #68]	; 0x44
20100874:	4b0b      	ldr	r3, [pc, #44]	; (201008a4 <TimerConfig+0x1f8>)
20100876:	4a0b      	ldr	r2, [pc, #44]	; (201008a4 <TimerConfig+0x1f8>)
20100878:	6c92      	ldr	r2, [r2, #72]	; 0x48
2010087a:	2196      	movs	r1, #150	; 0x96
2010087c:	0189      	lsls	r1, r1, #6
2010087e:	430a      	orrs	r2, r1
20100880:	649a      	str	r2, [r3, #72]	; 0x48
20100882:	4b08      	ldr	r3, [pc, #32]	; (201008a4 <TimerConfig+0x1f8>)
20100884:	4a07      	ldr	r2, [pc, #28]	; (201008a4 <TimerConfig+0x1f8>)
20100886:	6d92      	ldr	r2, [r2, #88]	; 0x58
20100888:	21f0      	movs	r1, #240	; 0xf0
2010088a:	0149      	lsls	r1, r1, #5
2010088c:	430a      	orrs	r2, r1
2010088e:	659a      	str	r2, [r3, #88]	; 0x58
20100890:	4b04      	ldr	r3, [pc, #16]	; (201008a4 <TimerConfig+0x1f8>)
20100892:	2201      	movs	r2, #1
20100894:	60da      	str	r2, [r3, #12]
20100896:	46c0      	nop			; (mov r8, r8)
20100898:	46bd      	mov	sp, r7
2010089a:	bd80      	pop	{r7, pc}
2010089c:	40020000 	.word	0x40020000
201008a0:	ff00ffff 	.word	0xff00ffff
201008a4:	40098000 	.word	0x40098000
201008a8:	000003ff 	.word	0x000003ff
201008ac:	fffff1ff 	.word	0xfffff1ff
201008b0:	fffff0ff 	.word	0xfffff0ff

201008b4 <adc_init>:
201008b4:	b580      	push	{r7, lr}
201008b6:	af00      	add	r7, sp, #0
201008b8:	4b0f      	ldr	r3, [pc, #60]	; (201008f8 <adc_init+0x44>)
201008ba:	4a0f      	ldr	r2, [pc, #60]	; (201008f8 <adc_init+0x44>)
201008bc:	69d2      	ldr	r2, [r2, #28]
201008be:	2180      	movs	r1, #128	; 0x80
201008c0:	0289      	lsls	r1, r1, #10
201008c2:	430a      	orrs	r2, r1
201008c4:	61da      	str	r2, [r3, #28]
201008c6:	4b0c      	ldr	r3, [pc, #48]	; (201008f8 <adc_init+0x44>)
201008c8:	4a0c      	ldr	r2, [pc, #48]	; (201008fc <adc_init+0x48>)
201008ca:	615a      	str	r2, [r3, #20]
201008cc:	4b0c      	ldr	r3, [pc, #48]	; (20100900 <adc_init+0x4c>)
201008ce:	2200      	movs	r2, #0
201008d0:	601a      	str	r2, [r3, #0]
201008d2:	4b0b      	ldr	r3, [pc, #44]	; (20100900 <adc_init+0x4c>)
201008d4:	4a0a      	ldr	r2, [pc, #40]	; (20100900 <adc_init+0x4c>)
201008d6:	6812      	ldr	r2, [r2, #0]
201008d8:	490a      	ldr	r1, [pc, #40]	; (20100904 <adc_init+0x50>)
201008da:	430a      	orrs	r2, r1
201008dc:	601a      	str	r2, [r3, #0]
201008de:	4b08      	ldr	r3, [pc, #32]	; (20100900 <adc_init+0x4c>)
201008e0:	4a07      	ldr	r2, [pc, #28]	; (20100900 <adc_init+0x4c>)
201008e2:	6a92      	ldr	r2, [r2, #40]	; 0x28
201008e4:	2139      	movs	r1, #57	; 0x39
201008e6:	430a      	orrs	r2, r1
201008e8:	629a      	str	r2, [r3, #40]	; 0x28
201008ea:	4b05      	ldr	r3, [pc, #20]	; (20100900 <adc_init+0x4c>)
201008ec:	2210      	movs	r2, #16
201008ee:	621a      	str	r2, [r3, #32]
201008f0:	46c0      	nop			; (mov r8, r8)
201008f2:	46bd      	mov	sp, r7
201008f4:	bd80      	pop	{r7, pc}
201008f6:	46c0      	nop			; (mov r8, r8)
201008f8:	40020000 	.word	0x40020000
201008fc:	00002020 	.word	0x00002020
20100900:	40088000 	.word	0x40088000
20100904:	00000205 	.word	0x00000205

20100908 <dac_init>:
20100908:	b580      	push	{r7, lr}
2010090a:	af00      	add	r7, sp, #0
2010090c:	4b07      	ldr	r3, [pc, #28]	; (2010092c <dac_init+0x24>)
2010090e:	4a07      	ldr	r2, [pc, #28]	; (2010092c <dac_init+0x24>)
20100910:	69d2      	ldr	r2, [r2, #28]
20100912:	2180      	movs	r1, #128	; 0x80
20100914:	02c9      	lsls	r1, r1, #11
20100916:	430a      	orrs	r2, r1
20100918:	61da      	str	r2, [r3, #28]
2010091a:	4b05      	ldr	r3, [pc, #20]	; (20100930 <dac_init+0x28>)
2010091c:	4a04      	ldr	r2, [pc, #16]	; (20100930 <dac_init+0x28>)
2010091e:	6812      	ldr	r2, [r2, #0]
20100920:	2104      	movs	r1, #4
20100922:	430a      	orrs	r2, r1
20100924:	601a      	str	r2, [r3, #0]
20100926:	46c0      	nop			; (mov r8, r8)
20100928:	46bd      	mov	sp, r7
2010092a:	bd80      	pop	{r7, pc}
2010092c:	40020000 	.word	0x40020000
20100930:	40090000 	.word	0x40090000

20100934 <ssi_init>:
20100934:	b580      	push	{r7, lr}
20100936:	af00      	add	r7, sp, #0
20100938:	4b0c      	ldr	r3, [pc, #48]	; (2010096c <ssi_init+0x38>)
2010093a:	4a0c      	ldr	r2, [pc, #48]	; (2010096c <ssi_init+0x38>)
2010093c:	69d2      	ldr	r2, [r2, #28]
2010093e:	2180      	movs	r1, #128	; 0x80
20100940:	0349      	lsls	r1, r1, #13
20100942:	430a      	orrs	r2, r1
20100944:	61da      	str	r2, [r3, #28]
20100946:	4b09      	ldr	r3, [pc, #36]	; (2010096c <ssi_init+0x38>)
20100948:	4a09      	ldr	r2, [pc, #36]	; (20100970 <ssi_init+0x3c>)
2010094a:	62da      	str	r2, [r3, #44]	; 0x2c
2010094c:	4b09      	ldr	r3, [pc, #36]	; (20100974 <ssi_init+0x40>)
2010094e:	2200      	movs	r2, #0
20100950:	605a      	str	r2, [r3, #4]
20100952:	4b08      	ldr	r3, [pc, #32]	; (20100974 <ssi_init+0x40>)
20100954:	220a      	movs	r2, #10
20100956:	611a      	str	r2, [r3, #16]
20100958:	4b06      	ldr	r3, [pc, #24]	; (20100974 <ssi_init+0x40>)
2010095a:	4a07      	ldr	r2, [pc, #28]	; (20100978 <ssi_init+0x44>)
2010095c:	601a      	str	r2, [r3, #0]
2010095e:	4b05      	ldr	r3, [pc, #20]	; (20100974 <ssi_init+0x40>)
20100960:	2202      	movs	r2, #2
20100962:	605a      	str	r2, [r3, #4]
20100964:	46c0      	nop			; (mov r8, r8)
20100966:	46bd      	mov	sp, r7
20100968:	bd80      	pop	{r7, pc}
2010096a:	46c0      	nop			; (mov r8, r8)
2010096c:	40020000 	.word	0x40020000
20100970:	02000200 	.word	0x02000200
20100974:	400a0000 	.word	0x400a0000
20100978:	0000021b 	.word	0x0000021b

2010097c <b2g>:
2010097c:	b580      	push	{r7, lr}
2010097e:	b082      	sub	sp, #8
20100980:	af00      	add	r7, sp, #0
20100982:	6078      	str	r0, [r7, #4]
20100984:	687b      	ldr	r3, [r7, #4]
20100986:	085a      	lsrs	r2, r3, #1
20100988:	687b      	ldr	r3, [r7, #4]
2010098a:	4053      	eors	r3, r2
2010098c:	0018      	movs	r0, r3
2010098e:	46bd      	mov	sp, r7
20100990:	b002      	add	sp, #8
20100992:	bd80      	pop	{r7, pc}

20100994 <g2b>:
20100994:	b580      	push	{r7, lr}
20100996:	b084      	sub	sp, #16
20100998:	af00      	add	r7, sp, #0
2010099a:	6078      	str	r0, [r7, #4]
2010099c:	2300      	movs	r3, #0
2010099e:	60fb      	str	r3, [r7, #12]
201009a0:	2300      	movs	r3, #0
201009a2:	60fb      	str	r3, [r7, #12]
201009a4:	e006      	b.n	201009b4 <g2b+0x20>
201009a6:	68fa      	ldr	r2, [r7, #12]
201009a8:	687b      	ldr	r3, [r7, #4]
201009aa:	4053      	eors	r3, r2
201009ac:	60fb      	str	r3, [r7, #12]
201009ae:	687b      	ldr	r3, [r7, #4]
201009b0:	085b      	lsrs	r3, r3, #1
201009b2:	607b      	str	r3, [r7, #4]
201009b4:	687b      	ldr	r3, [r7, #4]
201009b6:	2b00      	cmp	r3, #0
201009b8:	d1f5      	bne.n	201009a6 <g2b+0x12>
201009ba:	68fb      	ldr	r3, [r7, #12]
201009bc:	0018      	movs	r0, r3
201009be:	46bd      	mov	sp, r7
201009c0:	b004      	add	sp, #16
201009c2:	bd80      	pop	{r7, pc}

201009c4 <SystemInit>:
201009c4:	b580      	push	{r7, lr}
201009c6:	af00      	add	r7, sp, #0
201009c8:	f7ff fe36 	bl	20100638 <ClkConfig>
201009cc:	f7ff fd7a 	bl	201004c4 <PortConfig>
201009d0:	f7ff fe6c 	bl	201006ac <TimerConfig>
201009d4:	f7ff ff6e 	bl	201008b4 <adc_init>
201009d8:	f7ff ff96 	bl	20100908 <dac_init>
201009dc:	f7ff ffaa 	bl	20100934 <ssi_init>
201009e0:	f000 fbae 	bl	20101140 <adc_dma_init>
201009e4:	46c0      	nop			; (mov r8, r8)
201009e6:	46bd      	mov	sp, r7
201009e8:	bd80      	pop	{r7, pc}
201009ea:	46c0      	nop			; (mov r8, r8)

201009ec <timer_wait>:
201009ec:	b580      	push	{r7, lr}
201009ee:	af00      	add	r7, sp, #0
201009f0:	46c0      	nop			; (mov r8, r8)
201009f2:	4b05      	ldr	r3, [pc, #20]	; (20100a08 <timer_wait+0x1c>)
201009f4:	6d5b      	ldr	r3, [r3, #84]	; 0x54
201009f6:	2202      	movs	r2, #2
201009f8:	4013      	ands	r3, r2
201009fa:	d0fa      	beq.n	201009f2 <timer_wait+0x6>
201009fc:	4b02      	ldr	r3, [pc, #8]	; (20100a08 <timer_wait+0x1c>)
201009fe:	2200      	movs	r2, #0
20100a00:	655a      	str	r2, [r3, #84]	; 0x54
20100a02:	46c0      	nop			; (mov r8, r8)
20100a04:	46bd      	mov	sp, r7
20100a06:	bd80      	pop	{r7, pc}
20100a08:	40098000 	.word	0x40098000

20100a0c <mycos>:
20100a0c:	4b05      	ldr	r3, [pc, #20]	; (20100a24 <mycos+0x18>)
20100a0e:	4a06      	ldr	r2, [pc, #24]	; (20100a28 <mycos+0x1c>)
20100a10:	447b      	add	r3, pc
20100a12:	0580      	lsls	r0, r0, #22
20100a14:	589b      	ldr	r3, [r3, r2]
20100a16:	0d00      	lsrs	r0, r0, #20
20100a18:	58c0      	ldr	r0, [r0, r3]
20100a1a:	b082      	sub	sp, #8
20100a1c:	9301      	str	r3, [sp, #4]
20100a1e:	b002      	add	sp, #8
20100a20:	4770      	bx	lr
20100a22:	46c0      	nop			; (mov r8, r8)
20100a24:	ffeff678 	.word	0xffeff678
20100a28:	00000000 	.word	0x00000000

20100a2c <mysin>:
20100a2c:	4b07      	ldr	r3, [pc, #28]	; (20100a4c <mysin+0x20>)
20100a2e:	4a08      	ldr	r2, [pc, #32]	; (20100a50 <mysin+0x24>)
20100a30:	447b      	add	r3, pc
20100a32:	589b      	ldr	r3, [r3, r2]
20100a34:	b082      	sub	sp, #8
20100a36:	9301      	str	r3, [sp, #4]
20100a38:	23c0      	movs	r3, #192	; 0xc0
20100a3a:	009b      	lsls	r3, r3, #2
20100a3c:	469c      	mov	ip, r3
20100a3e:	4460      	add	r0, ip
20100a40:	9b01      	ldr	r3, [sp, #4]
20100a42:	0580      	lsls	r0, r0, #22
20100a44:	0d00      	lsrs	r0, r0, #20
20100a46:	58c0      	ldr	r0, [r0, r3]
20100a48:	b002      	add	sp, #8
20100a4a:	4770      	bx	lr
20100a4c:	ffeff658 	.word	0xffeff658
20100a50:	00000000 	.word	0x00000000

20100a54 <reg_init>:
20100a54:	2300      	movs	r3, #0
20100a56:	6001      	str	r1, [r0, #0]
20100a58:	6042      	str	r2, [r0, #4]
20100a5a:	6083      	str	r3, [r0, #8]
20100a5c:	60c3      	str	r3, [r0, #12]
20100a5e:	4770      	bx	lr

20100a60 <reg_update>:
20100a60:	b510      	push	{r4, lr}
20100a62:	6804      	ldr	r4, [r0, #0]
20100a64:	6883      	ldr	r3, [r0, #8]
20100a66:	434c      	muls	r4, r1
20100a68:	2a00      	cmp	r2, #0
20100a6a:	d004      	beq.n	20100a76 <reg_update+0x16>
20100a6c:	2b00      	cmp	r3, #0
20100a6e:	dd09      	ble.n	20100a84 <reg_update+0x24>
20100a70:	2c00      	cmp	r4, #0
20100a72:	dd00      	ble.n	20100a76 <reg_update+0x16>
20100a74:	2400      	movs	r4, #0
20100a76:	6842      	ldr	r2, [r0, #4]
20100a78:	18e3      	adds	r3, r4, r3
20100a7a:	4351      	muls	r1, r2
20100a7c:	18c9      	adds	r1, r1, r3
20100a7e:	60c1      	str	r1, [r0, #12]
20100a80:	6083      	str	r3, [r0, #8]
20100a82:	bd10      	pop	{r4, pc}
20100a84:	2b00      	cmp	r3, #0
20100a86:	d0f6      	beq.n	20100a76 <reg_update+0x16>
20100a88:	43e2      	mvns	r2, r4
20100a8a:	17d2      	asrs	r2, r2, #31
20100a8c:	4014      	ands	r4, r2
20100a8e:	e7f2      	b.n	20100a76 <reg_update+0x16>

20100a90 <cord_atan>:
20100a90:	b5f0      	push	{r4, r5, r6, r7, lr}
20100a92:	4645      	mov	r5, r8
20100a94:	4657      	mov	r7, sl
20100a96:	464e      	mov	r6, r9
20100a98:	b4e0      	push	{r5, r6, r7}
20100a9a:	4b65      	ldr	r3, [pc, #404]	; (20100c30 <cord_atan+0x1a0>)
20100a9c:	b090      	sub	sp, #64	; 0x40
20100a9e:	447b      	add	r3, pc
20100aa0:	001c      	movs	r4, r3
20100aa2:	4694      	mov	ip, r2
20100aa4:	466a      	mov	r2, sp
20100aa6:	468a      	mov	sl, r1
20100aa8:	cca2      	ldmia	r4!, {r1, r5, r7}
20100aaa:	c2a2      	stmia	r2!, {r1, r5, r7}
20100aac:	cca2      	ldmia	r4!, {r1, r5, r7}
20100aae:	c2a2      	stmia	r2!, {r1, r5, r7}
20100ab0:	cc22      	ldmia	r4!, {r1, r5}
20100ab2:	c222      	stmia	r2!, {r1, r5}
20100ab4:	3320      	adds	r3, #32
20100ab6:	aa08      	add	r2, sp, #32
20100ab8:	4690      	mov	r8, r2
20100aba:	cb32      	ldmia	r3!, {r1, r4, r5}
20100abc:	c232      	stmia	r2!, {r1, r4, r5}
20100abe:	cb32      	ldmia	r3!, {r1, r4, r5}
20100ac0:	c232      	stmia	r2!, {r1, r4, r5}
20100ac2:	cb12      	ldmia	r3!, {r1, r4}
20100ac4:	c212      	stmia	r2!, {r1, r4}
20100ac6:	6802      	ldr	r2, [r0, #0]
20100ac8:	6845      	ldr	r5, [r0, #4]
20100aca:	17d1      	asrs	r1, r2, #31
20100acc:	1853      	adds	r3, r2, r1
20100ace:	466e      	mov	r6, sp
20100ad0:	404b      	eors	r3, r1
20100ad2:	2d00      	cmp	r5, #0
20100ad4:	dd6c      	ble.n	20100bb0 <cord_atan+0x120>
20100ad6:	195f      	adds	r7, r3, r5
20100ad8:	1aeb      	subs	r3, r5, r3
20100ada:	9d00      	ldr	r5, [sp, #0]
20100adc:	2b00      	cmp	r3, #0
20100ade:	d100      	bne.n	20100ae2 <cord_atan+0x52>
20100ae0:	e094      	b.n	20100c0c <cord_atan+0x17c>
20100ae2:	105c      	asrs	r4, r3, #1
20100ae4:	2b00      	cmp	r3, #0
20100ae6:	dd68      	ble.n	20100bba <cord_atan+0x12a>
20100ae8:	1078      	asrs	r0, r7, #1
20100aea:	1a1b      	subs	r3, r3, r0
20100aec:	6870      	ldr	r0, [r6, #4]
20100aee:	19e4      	adds	r4, r4, r7
20100af0:	4681      	mov	r9, r0
20100af2:	444d      	add	r5, r9
20100af4:	2b00      	cmp	r3, #0
20100af6:	d100      	bne.n	20100afa <cord_atan+0x6a>
20100af8:	e08a      	b.n	20100c10 <cord_atan+0x180>
20100afa:	1098      	asrs	r0, r3, #2
20100afc:	2b00      	cmp	r3, #0
20100afe:	dd62      	ble.n	20100bc6 <cord_atan+0x136>
20100b00:	1907      	adds	r7, r0, r4
20100b02:	10a4      	asrs	r4, r4, #2
20100b04:	1b18      	subs	r0, r3, r4
20100b06:	68b3      	ldr	r3, [r6, #8]
20100b08:	4699      	mov	r9, r3
20100b0a:	444d      	add	r5, r9
20100b0c:	2800      	cmp	r0, #0
20100b0e:	d100      	bne.n	20100b12 <cord_atan+0x82>
20100b10:	e081      	b.n	20100c16 <cord_atan+0x186>
20100b12:	10c3      	asrs	r3, r0, #3
20100b14:	2800      	cmp	r0, #0
20100b16:	dd5c      	ble.n	20100bd2 <cord_atan+0x142>
20100b18:	10fc      	asrs	r4, r7, #3
20100b1a:	1b00      	subs	r0, r0, r4
20100b1c:	68f4      	ldr	r4, [r6, #12]
20100b1e:	19db      	adds	r3, r3, r7
20100b20:	46a1      	mov	r9, r4
20100b22:	444d      	add	r5, r9
20100b24:	2800      	cmp	r0, #0
20100b26:	d100      	bne.n	20100b2a <cord_atan+0x9a>
20100b28:	e077      	b.n	20100c1a <cord_atan+0x18a>
20100b2a:	1104      	asrs	r4, r0, #4
20100b2c:	2800      	cmp	r0, #0
20100b2e:	dd56      	ble.n	20100bde <cord_atan+0x14e>
20100b30:	18e7      	adds	r7, r4, r3
20100b32:	111b      	asrs	r3, r3, #4
20100b34:	1ac4      	subs	r4, r0, r3
20100b36:	6933      	ldr	r3, [r6, #16]
20100b38:	4699      	mov	r9, r3
20100b3a:	444d      	add	r5, r9
20100b3c:	2c00      	cmp	r4, #0
20100b3e:	d100      	bne.n	20100b42 <cord_atan+0xb2>
20100b40:	e06e      	b.n	20100c20 <cord_atan+0x190>
20100b42:	1163      	asrs	r3, r4, #5
20100b44:	2c00      	cmp	r4, #0
20100b46:	dd50      	ble.n	20100bea <cord_atan+0x15a>
20100b48:	1178      	asrs	r0, r7, #5
20100b4a:	1a20      	subs	r0, r4, r0
20100b4c:	6974      	ldr	r4, [r6, #20]
20100b4e:	19db      	adds	r3, r3, r7
20100b50:	46a1      	mov	r9, r4
20100b52:	444d      	add	r5, r9
20100b54:	2800      	cmp	r0, #0
20100b56:	d065      	beq.n	20100c24 <cord_atan+0x194>
20100b58:	1184      	asrs	r4, r0, #6
20100b5a:	2800      	cmp	r0, #0
20100b5c:	dd4b      	ble.n	20100bf6 <cord_atan+0x166>
20100b5e:	18e7      	adds	r7, r4, r3
20100b60:	119b      	asrs	r3, r3, #6
20100b62:	1ac0      	subs	r0, r0, r3
20100b64:	69b3      	ldr	r3, [r6, #24]
20100b66:	4699      	mov	r9, r3
20100b68:	444d      	add	r5, r9
20100b6a:	2800      	cmp	r0, #0
20100b6c:	d05d      	beq.n	20100c2a <cord_atan+0x19a>
20100b6e:	dd48      	ble.n	20100c02 <cord_atan+0x172>
20100b70:	69f3      	ldr	r3, [r6, #28]
20100b72:	11c0      	asrs	r0, r0, #7
20100b74:	19c7      	adds	r7, r0, r7
20100b76:	18ed      	adds	r5, r5, r3
20100b78:	2307      	movs	r3, #7
20100b7a:	2a00      	cmp	r2, #0
20100b7c:	db14      	blt.n	20100ba8 <cord_atan+0x118>
20100b7e:	2d00      	cmp	r5, #0
20100b80:	da03      	bge.n	20100b8a <cord_atan+0xfa>
20100b82:	2280      	movs	r2, #128	; 0x80
20100b84:	00d2      	lsls	r2, r2, #3
20100b86:	4691      	mov	r9, r2
20100b88:	444d      	add	r5, r9
20100b8a:	4652      	mov	r2, sl
20100b8c:	6015      	str	r5, [r2, #0]
20100b8e:	4642      	mov	r2, r8
20100b90:	009b      	lsls	r3, r3, #2
20100b92:	58d0      	ldr	r0, [r2, r3]
20100b94:	4663      	mov	r3, ip
20100b96:	4378      	muls	r0, r7
20100b98:	1280      	asrs	r0, r0, #10
20100b9a:	6018      	str	r0, [r3, #0]
20100b9c:	b010      	add	sp, #64	; 0x40
20100b9e:	bc1c      	pop	{r2, r3, r4}
20100ba0:	4690      	mov	r8, r2
20100ba2:	4699      	mov	r9, r3
20100ba4:	46a2      	mov	sl, r4
20100ba6:	bdf0      	pop	{r4, r5, r6, r7, pc}
20100ba8:	2280      	movs	r2, #128	; 0x80
20100baa:	0092      	lsls	r2, r2, #2
20100bac:	1b55      	subs	r5, r2, r5
20100bae:	e7e6      	b.n	20100b7e <cord_atan+0xee>
20100bb0:	9900      	ldr	r1, [sp, #0]
20100bb2:	1b5f      	subs	r7, r3, r5
20100bb4:	195b      	adds	r3, r3, r5
20100bb6:	424d      	negs	r5, r1
20100bb8:	e790      	b.n	20100adc <cord_atan+0x4c>
20100bba:	6871      	ldr	r1, [r6, #4]
20100bbc:	1078      	asrs	r0, r7, #1
20100bbe:	1b3c      	subs	r4, r7, r4
20100bc0:	18c3      	adds	r3, r0, r3
20100bc2:	1a6d      	subs	r5, r5, r1
20100bc4:	e796      	b.n	20100af4 <cord_atan+0x64>
20100bc6:	1a27      	subs	r7, r4, r0
20100bc8:	10a0      	asrs	r0, r4, #2
20100bca:	18c0      	adds	r0, r0, r3
20100bcc:	68b3      	ldr	r3, [r6, #8]
20100bce:	1aed      	subs	r5, r5, r3
20100bd0:	e79c      	b.n	20100b0c <cord_atan+0x7c>
20100bd2:	68f1      	ldr	r1, [r6, #12]
20100bd4:	10fc      	asrs	r4, r7, #3
20100bd6:	1afb      	subs	r3, r7, r3
20100bd8:	1820      	adds	r0, r4, r0
20100bda:	1a6d      	subs	r5, r5, r1
20100bdc:	e7a2      	b.n	20100b24 <cord_atan+0x94>
20100bde:	1b1f      	subs	r7, r3, r4
20100be0:	111c      	asrs	r4, r3, #4
20100be2:	6933      	ldr	r3, [r6, #16]
20100be4:	1824      	adds	r4, r4, r0
20100be6:	1aed      	subs	r5, r5, r3
20100be8:	e7a8      	b.n	20100b3c <cord_atan+0xac>
20100bea:	6971      	ldr	r1, [r6, #20]
20100bec:	1178      	asrs	r0, r7, #5
20100bee:	1afb      	subs	r3, r7, r3
20100bf0:	1900      	adds	r0, r0, r4
20100bf2:	1a6d      	subs	r5, r5, r1
20100bf4:	e7ae      	b.n	20100b54 <cord_atan+0xc4>
20100bf6:	1b1f      	subs	r7, r3, r4
20100bf8:	119b      	asrs	r3, r3, #6
20100bfa:	1818      	adds	r0, r3, r0
20100bfc:	69b3      	ldr	r3, [r6, #24]
20100bfe:	1aed      	subs	r5, r5, r3
20100c00:	e7b3      	b.n	20100b6a <cord_atan+0xda>
20100c02:	69f3      	ldr	r3, [r6, #28]
20100c04:	11c4      	asrs	r4, r0, #7
20100c06:	1b3f      	subs	r7, r7, r4
20100c08:	1aed      	subs	r5, r5, r3
20100c0a:	e7b5      	b.n	20100b78 <cord_atan+0xe8>
20100c0c:	2300      	movs	r3, #0
20100c0e:	e7b4      	b.n	20100b7a <cord_atan+0xea>
20100c10:	0027      	movs	r7, r4
20100c12:	2301      	movs	r3, #1
20100c14:	e7b1      	b.n	20100b7a <cord_atan+0xea>
20100c16:	2302      	movs	r3, #2
20100c18:	e7af      	b.n	20100b7a <cord_atan+0xea>
20100c1a:	001f      	movs	r7, r3
20100c1c:	2303      	movs	r3, #3
20100c1e:	e7ac      	b.n	20100b7a <cord_atan+0xea>
20100c20:	2304      	movs	r3, #4
20100c22:	e7aa      	b.n	20100b7a <cord_atan+0xea>
20100c24:	001f      	movs	r7, r3
20100c26:	2305      	movs	r3, #5
20100c28:	e7a7      	b.n	20100b7a <cord_atan+0xea>
20100c2a:	2306      	movs	r3, #6
20100c2c:	e7a5      	b.n	20100b7a <cord_atan+0xea>
20100c2e:	46c0      	nop			; (mov r8, r8)
20100c30:	00001b7e 	.word	0x00001b7e

20100c34 <sinpwm>:
20100c34:	b5f0      	push	{r4, r5, r6, r7, lr}
20100c36:	b089      	sub	sp, #36	; 0x24
20100c38:	466c      	mov	r4, sp
20100c3a:	4b44      	ldr	r3, [pc, #272]	; (20100d4c <sinpwm+0x118>)
20100c3c:	46ec      	mov	ip, sp
20100c3e:	447b      	add	r3, pc
20100c40:	3320      	adds	r3, #32
20100c42:	cbe0      	ldmia	r3!, {r5, r6, r7}
20100c44:	c4e0      	stmia	r4!, {r5, r6, r7}
20100c46:	cbe0      	ldmia	r3!, {r5, r6, r7}
20100c48:	c4e0      	stmia	r4!, {r5, r6, r7}
20100c4a:	cb60      	ldmia	r3!, {r5, r6}
20100c4c:	c460      	stmia	r4!, {r5, r6}
20100c4e:	680b      	ldr	r3, [r1, #0]
20100c50:	684e      	ldr	r6, [r1, #4]
20100c52:	17dc      	asrs	r4, r3, #31
20100c54:	191b      	adds	r3, r3, r4
20100c56:	4063      	eors	r3, r4
20100c58:	2e00      	cmp	r6, #0
20100c5a:	dd46      	ble.n	20100cea <sinpwm+0xb6>
20100c5c:	199f      	adds	r7, r3, r6
20100c5e:	1af3      	subs	r3, r6, r3
20100c60:	2b00      	cmp	r3, #0
20100c62:	d060      	beq.n	20100d26 <sinpwm+0xf2>
20100c64:	105e      	asrs	r6, r3, #1
20100c66:	2b00      	cmp	r3, #0
20100c68:	dd42      	ble.n	20100cf0 <sinpwm+0xbc>
20100c6a:	107c      	asrs	r4, r7, #1
20100c6c:	19f6      	adds	r6, r6, r7
20100c6e:	1b1b      	subs	r3, r3, r4
20100c70:	2b00      	cmp	r3, #0
20100c72:	d05a      	beq.n	20100d2a <sinpwm+0xf6>
20100c74:	109c      	asrs	r4, r3, #2
20100c76:	2b00      	cmp	r3, #0
20100c78:	dd3e      	ble.n	20100cf8 <sinpwm+0xc4>
20100c7a:	19a7      	adds	r7, r4, r6
20100c7c:	10b6      	asrs	r6, r6, #2
20100c7e:	1b9c      	subs	r4, r3, r6
20100c80:	2c00      	cmp	r4, #0
20100c82:	d055      	beq.n	20100d30 <sinpwm+0xfc>
20100c84:	10e6      	asrs	r6, r4, #3
20100c86:	2c00      	cmp	r4, #0
20100c88:	dd3a      	ble.n	20100d00 <sinpwm+0xcc>
20100c8a:	10fd      	asrs	r5, r7, #3
20100c8c:	19f6      	adds	r6, r6, r7
20100c8e:	1b64      	subs	r4, r4, r5
20100c90:	2c00      	cmp	r4, #0
20100c92:	d04f      	beq.n	20100d34 <sinpwm+0x100>
20100c94:	1125      	asrs	r5, r4, #4
20100c96:	2c00      	cmp	r4, #0
20100c98:	dd36      	ble.n	20100d08 <sinpwm+0xd4>
20100c9a:	19af      	adds	r7, r5, r6
20100c9c:	1136      	asrs	r6, r6, #4
20100c9e:	1ba5      	subs	r5, r4, r6
20100ca0:	2d00      	cmp	r5, #0
20100ca2:	d04a      	beq.n	20100d3a <sinpwm+0x106>
20100ca4:	116e      	asrs	r6, r5, #5
20100ca6:	2d00      	cmp	r5, #0
20100ca8:	dd32      	ble.n	20100d10 <sinpwm+0xdc>
20100caa:	117c      	asrs	r4, r7, #5
20100cac:	19f6      	adds	r6, r6, r7
20100cae:	1b2c      	subs	r4, r5, r4
20100cb0:	2c00      	cmp	r4, #0
20100cb2:	d044      	beq.n	20100d3e <sinpwm+0x10a>
20100cb4:	11a3      	asrs	r3, r4, #6
20100cb6:	2c00      	cmp	r4, #0
20100cb8:	dd2e      	ble.n	20100d18 <sinpwm+0xe4>
20100cba:	199b      	adds	r3, r3, r6
20100cbc:	11b6      	asrs	r6, r6, #6
20100cbe:	1ba4      	subs	r4, r4, r6
20100cc0:	2c00      	cmp	r4, #0
20100cc2:	d03f      	beq.n	20100d44 <sinpwm+0x110>
20100cc4:	dd2c      	ble.n	20100d20 <sinpwm+0xec>
20100cc6:	11e4      	asrs	r4, r4, #7
20100cc8:	18e7      	adds	r7, r4, r3
20100cca:	2307      	movs	r3, #7
20100ccc:	4664      	mov	r4, ip
20100cce:	009b      	lsls	r3, r3, #2
20100cd0:	58e4      	ldr	r4, [r4, r3]
20100cd2:	f000 fb1a 	bl	2010130a <dq_to_abc>
20100cd6:	23fa      	movs	r3, #250	; 0xfa
20100cd8:	437c      	muls	r4, r7
20100cda:	2001      	movs	r0, #1
20100cdc:	1524      	asrs	r4, r4, #20
20100cde:	005b      	lsls	r3, r3, #1
20100ce0:	429c      	cmp	r4, r3
20100ce2:	dc00      	bgt.n	20100ce6 <sinpwm+0xb2>
20100ce4:	2000      	movs	r0, #0
20100ce6:	b009      	add	sp, #36	; 0x24
20100ce8:	bdf0      	pop	{r4, r5, r6, r7, pc}
20100cea:	1b9f      	subs	r7, r3, r6
20100cec:	199b      	adds	r3, r3, r6
20100cee:	e7b7      	b.n	20100c60 <sinpwm+0x2c>
20100cf0:	107c      	asrs	r4, r7, #1
20100cf2:	1bbe      	subs	r6, r7, r6
20100cf4:	18e3      	adds	r3, r4, r3
20100cf6:	e7bb      	b.n	20100c70 <sinpwm+0x3c>
20100cf8:	1b37      	subs	r7, r6, r4
20100cfa:	10b4      	asrs	r4, r6, #2
20100cfc:	18e4      	adds	r4, r4, r3
20100cfe:	e7bf      	b.n	20100c80 <sinpwm+0x4c>
20100d00:	10fd      	asrs	r5, r7, #3
20100d02:	1bbe      	subs	r6, r7, r6
20100d04:	192c      	adds	r4, r5, r4
20100d06:	e7c3      	b.n	20100c90 <sinpwm+0x5c>
20100d08:	1b77      	subs	r7, r6, r5
20100d0a:	1135      	asrs	r5, r6, #4
20100d0c:	192d      	adds	r5, r5, r4
20100d0e:	e7c7      	b.n	20100ca0 <sinpwm+0x6c>
20100d10:	117c      	asrs	r4, r7, #5
20100d12:	1bbe      	subs	r6, r7, r6
20100d14:	1964      	adds	r4, r4, r5
20100d16:	e7cb      	b.n	20100cb0 <sinpwm+0x7c>
20100d18:	1af3      	subs	r3, r6, r3
20100d1a:	11b6      	asrs	r6, r6, #6
20100d1c:	1934      	adds	r4, r6, r4
20100d1e:	e7cf      	b.n	20100cc0 <sinpwm+0x8c>
20100d20:	11e5      	asrs	r5, r4, #7
20100d22:	1b5f      	subs	r7, r3, r5
20100d24:	e7d1      	b.n	20100cca <sinpwm+0x96>
20100d26:	2300      	movs	r3, #0
20100d28:	e7d0      	b.n	20100ccc <sinpwm+0x98>
20100d2a:	0037      	movs	r7, r6
20100d2c:	2301      	movs	r3, #1
20100d2e:	e7cd      	b.n	20100ccc <sinpwm+0x98>
20100d30:	2302      	movs	r3, #2
20100d32:	e7cb      	b.n	20100ccc <sinpwm+0x98>
20100d34:	0037      	movs	r7, r6
20100d36:	2303      	movs	r3, #3
20100d38:	e7c8      	b.n	20100ccc <sinpwm+0x98>
20100d3a:	2304      	movs	r3, #4
20100d3c:	e7c6      	b.n	20100ccc <sinpwm+0x98>
20100d3e:	0037      	movs	r7, r6
20100d40:	2305      	movs	r3, #5
20100d42:	e7c3      	b.n	20100ccc <sinpwm+0x98>
20100d44:	001f      	movs	r7, r3
20100d46:	2306      	movs	r3, #6
20100d48:	e7c0      	b.n	20100ccc <sinpwm+0x98>
20100d4a:	46c0      	nop			; (mov r8, r8)
20100d4c:	000019de 	.word	0x000019de

20100d50 <svpwm>:
20100d50:	b5f0      	push	{r4, r5, r6, r7, lr}
20100d52:	465f      	mov	r7, fp
20100d54:	4656      	mov	r6, sl
20100d56:	4644      	mov	r4, r8
20100d58:	464d      	mov	r5, r9
20100d5a:	b4f0      	push	{r4, r5, r6, r7}
20100d5c:	0005      	movs	r5, r0
20100d5e:	48d0      	ldr	r0, [pc, #832]	; (201010a0 <svpwm+0x350>)
20100d60:	b091      	sub	sp, #68	; 0x44
20100d62:	4478      	add	r0, pc
20100d64:	0006      	movs	r6, r0
20100d66:	466c      	mov	r4, sp
20100d68:	4bce      	ldr	r3, [pc, #824]	; (201010a4 <svpwm+0x354>)
20100d6a:	4693      	mov	fp, r2
20100d6c:	447b      	add	r3, pc
20100d6e:	469a      	mov	sl, r3
20100d70:	468c      	mov	ip, r1
20100d72:	ce0e      	ldmia	r6!, {r1, r2, r3}
20100d74:	c40e      	stmia	r4!, {r1, r2, r3}
20100d76:	ce0e      	ldmia	r6!, {r1, r2, r3}
20100d78:	c40e      	stmia	r4!, {r1, r2, r3}
20100d7a:	ce0c      	ldmia	r6!, {r2, r3}
20100d7c:	c40c      	stmia	r4!, {r2, r3}
20100d7e:	ae08      	add	r6, sp, #32
20100d80:	0034      	movs	r4, r6
20100d82:	3020      	adds	r0, #32
20100d84:	c80e      	ldmia	r0!, {r1, r2, r3}
20100d86:	c40e      	stmia	r4!, {r1, r2, r3}
20100d88:	c80e      	ldmia	r0!, {r1, r2, r3}
20100d8a:	c40e      	stmia	r4!, {r1, r2, r3}
20100d8c:	c80c      	ldmia	r0!, {r2, r3}
20100d8e:	c40c      	stmia	r4!, {r2, r3}
20100d90:	4663      	mov	r3, ip
20100d92:	681c      	ldr	r4, [r3, #0]
20100d94:	466f      	mov	r7, sp
20100d96:	17e2      	asrs	r2, r4, #31
20100d98:	18a3      	adds	r3, r4, r2
20100d9a:	4053      	eors	r3, r2
20100d9c:	4698      	mov	r8, r3
20100d9e:	4663      	mov	r3, ip
20100da0:	685b      	ldr	r3, [r3, #4]
20100da2:	2b00      	cmp	r3, #0
20100da4:	dc00      	bgt.n	20100da8 <svpwm+0x58>
20100da6:	e0b5      	b.n	20100f14 <svpwm+0x1c4>
20100da8:	4641      	mov	r1, r8
20100daa:	18c8      	adds	r0, r1, r3
20100dac:	1a5b      	subs	r3, r3, r1
20100dae:	4698      	mov	r8, r3
20100db0:	9b00      	ldr	r3, [sp, #0]
20100db2:	4641      	mov	r1, r8
20100db4:	2900      	cmp	r1, #0
20100db6:	d100      	bne.n	20100dba <svpwm+0x6a>
20100db8:	e15f      	b.n	2010107a <svpwm+0x32a>
20100dba:	dc00      	bgt.n	20100dbe <svpwm+0x6e>
20100dbc:	e0b0      	b.n	20100f20 <svpwm+0x1d0>
20100dbe:	4641      	mov	r1, r8
20100dc0:	1049      	asrs	r1, r1, #1
20100dc2:	4689      	mov	r9, r1
20100dc4:	1041      	asrs	r1, r0, #1
20100dc6:	4481      	add	r9, r0
20100dc8:	4640      	mov	r0, r8
20100dca:	1a41      	subs	r1, r0, r1
20100dcc:	4688      	mov	r8, r1
20100dce:	6879      	ldr	r1, [r7, #4]
20100dd0:	468c      	mov	ip, r1
20100dd2:	4463      	add	r3, ip
20100dd4:	4641      	mov	r1, r8
20100dd6:	2900      	cmp	r1, #0
20100dd8:	d100      	bne.n	20100ddc <svpwm+0x8c>
20100dda:	e150      	b.n	2010107e <svpwm+0x32e>
20100ddc:	dc00      	bgt.n	20100de0 <svpwm+0x90>
20100dde:	e0a7      	b.n	20100f30 <svpwm+0x1e0>
20100de0:	4641      	mov	r1, r8
20100de2:	1089      	asrs	r1, r1, #2
20100de4:	4449      	add	r1, r9
20100de6:	0008      	movs	r0, r1
20100de8:	4649      	mov	r1, r9
20100dea:	4642      	mov	r2, r8
20100dec:	1089      	asrs	r1, r1, #2
20100dee:	1a51      	subs	r1, r2, r1
20100df0:	68ba      	ldr	r2, [r7, #8]
20100df2:	4688      	mov	r8, r1
20100df4:	4694      	mov	ip, r2
20100df6:	4463      	add	r3, ip
20100df8:	4641      	mov	r1, r8
20100dfa:	2900      	cmp	r1, #0
20100dfc:	d100      	bne.n	20100e00 <svpwm+0xb0>
20100dfe:	e141      	b.n	20101084 <svpwm+0x334>
20100e00:	4642      	mov	r2, r8
20100e02:	dc00      	bgt.n	20100e06 <svpwm+0xb6>
20100e04:	e09c      	b.n	20100f40 <svpwm+0x1f0>
20100e06:	10c9      	asrs	r1, r1, #3
20100e08:	1809      	adds	r1, r1, r0
20100e0a:	10c0      	asrs	r0, r0, #3
20100e0c:	1a12      	subs	r2, r2, r0
20100e0e:	4690      	mov	r8, r2
20100e10:	68fa      	ldr	r2, [r7, #12]
20100e12:	4694      	mov	ip, r2
20100e14:	4463      	add	r3, ip
20100e16:	4640      	mov	r0, r8
20100e18:	2800      	cmp	r0, #0
20100e1a:	d100      	bne.n	20100e1e <svpwm+0xce>
20100e1c:	e134      	b.n	20101088 <svpwm+0x338>
20100e1e:	4642      	mov	r2, r8
20100e20:	dc00      	bgt.n	20100e24 <svpwm+0xd4>
20100e22:	e094      	b.n	20100f4e <svpwm+0x1fe>
20100e24:	1100      	asrs	r0, r0, #4
20100e26:	1840      	adds	r0, r0, r1
20100e28:	1109      	asrs	r1, r1, #4
20100e2a:	1a52      	subs	r2, r2, r1
20100e2c:	4690      	mov	r8, r2
20100e2e:	693a      	ldr	r2, [r7, #16]
20100e30:	4694      	mov	ip, r2
20100e32:	4463      	add	r3, ip
20100e34:	4641      	mov	r1, r8
20100e36:	2900      	cmp	r1, #0
20100e38:	d100      	bne.n	20100e3c <svpwm+0xec>
20100e3a:	e128      	b.n	2010108e <svpwm+0x33e>
20100e3c:	4642      	mov	r2, r8
20100e3e:	dc00      	bgt.n	20100e42 <svpwm+0xf2>
20100e40:	e08c      	b.n	20100f5c <svpwm+0x20c>
20100e42:	1149      	asrs	r1, r1, #5
20100e44:	4689      	mov	r9, r1
20100e46:	1141      	asrs	r1, r0, #5
20100e48:	1a51      	subs	r1, r2, r1
20100e4a:	697a      	ldr	r2, [r7, #20]
20100e4c:	4481      	add	r9, r0
20100e4e:	4694      	mov	ip, r2
20100e50:	4463      	add	r3, ip
20100e52:	2900      	cmp	r1, #0
20100e54:	d100      	bne.n	20100e58 <svpwm+0x108>
20100e56:	e11c      	b.n	20101092 <svpwm+0x342>
20100e58:	1188      	asrs	r0, r1, #6
20100e5a:	2900      	cmp	r1, #0
20100e5c:	dc00      	bgt.n	20100e60 <svpwm+0x110>
20100e5e:	e086      	b.n	20100f6e <svpwm+0x21e>
20100e60:	464a      	mov	r2, r9
20100e62:	4448      	add	r0, r9
20100e64:	4680      	mov	r8, r0
20100e66:	1190      	asrs	r0, r2, #6
20100e68:	69ba      	ldr	r2, [r7, #24]
20100e6a:	1a09      	subs	r1, r1, r0
20100e6c:	4694      	mov	ip, r2
20100e6e:	4463      	add	r3, ip
20100e70:	2900      	cmp	r1, #0
20100e72:	d100      	bne.n	20100e76 <svpwm+0x126>
20100e74:	e110      	b.n	20101098 <svpwm+0x348>
20100e76:	dc00      	bgt.n	20100e7a <svpwm+0x12a>
20100e78:	e0e2      	b.n	20101040 <svpwm+0x2f0>
20100e7a:	11c9      	asrs	r1, r1, #7
20100e7c:	4441      	add	r1, r8
20100e7e:	0008      	movs	r0, r1
20100e80:	69f9      	ldr	r1, [r7, #28]
20100e82:	185b      	adds	r3, r3, r1
20100e84:	2107      	movs	r1, #7
20100e86:	2c00      	cmp	r4, #0
20100e88:	db40      	blt.n	20100f0c <svpwm+0x1bc>
20100e8a:	2b00      	cmp	r3, #0
20100e8c:	da03      	bge.n	20100e96 <svpwm+0x146>
20100e8e:	2280      	movs	r2, #128	; 0x80
20100e90:	00d2      	lsls	r2, r2, #3
20100e92:	4694      	mov	ip, r2
20100e94:	4463      	add	r3, ip
20100e96:	22fa      	movs	r2, #250	; 0xfa
20100e98:	0089      	lsls	r1, r1, #2
20100e9a:	5871      	ldr	r1, [r6, r1]
20100e9c:	445b      	add	r3, fp
20100e9e:	4341      	muls	r1, r0
20100ea0:	059b      	lsls	r3, r3, #22
20100ea2:	1509      	asrs	r1, r1, #20
20100ea4:	0d9b      	lsrs	r3, r3, #22
20100ea6:	0052      	lsls	r2, r2, #1
20100ea8:	2400      	movs	r4, #0
20100eaa:	4291      	cmp	r1, r2
20100eac:	dd01      	ble.n	20100eb2 <svpwm+0x162>
20100eae:	0011      	movs	r1, r2
20100eb0:	3401      	adds	r4, #1
20100eb2:	0058      	lsls	r0, r3, #1
20100eb4:	18c0      	adds	r0, r0, r3
20100eb6:	1240      	asrs	r0, r0, #9
20100eb8:	3801      	subs	r0, #1
20100eba:	4a7b      	ldr	r2, [pc, #492]	; (201010a8 <svpwm+0x358>)
20100ebc:	2804      	cmp	r0, #4
20100ebe:	d920      	bls.n	20100f02 <svpwm+0x1b2>
20100ec0:	26c0      	movs	r6, #192	; 0xc0
20100ec2:	4650      	mov	r0, sl
20100ec4:	00b6      	lsls	r6, r6, #2
20100ec6:	46b4      	mov	ip, r6
20100ec8:	5880      	ldr	r0, [r0, r2]
20100eca:	4a78      	ldr	r2, [pc, #480]	; (201010ac <svpwm+0x35c>)
20100ecc:	1ad2      	subs	r2, r2, r3
20100ece:	4463      	add	r3, ip
20100ed0:	0592      	lsls	r2, r2, #22
20100ed2:	059b      	lsls	r3, r3, #22
20100ed4:	0d12      	lsrs	r2, r2, #20
20100ed6:	0d1b      	lsrs	r3, r3, #20
20100ed8:	581b      	ldr	r3, [r3, r0]
20100eda:	5812      	ldr	r2, [r2, r0]
20100edc:	434a      	muls	r2, r1
20100ede:	4359      	muls	r1, r3
20100ee0:	1292      	asrs	r2, r2, #10
20100ee2:	1289      	asrs	r1, r1, #10
20100ee4:	1853      	adds	r3, r2, r1
20100ee6:	602b      	str	r3, [r5, #0]
20100ee8:	1a8b      	subs	r3, r1, r2
20100eea:	4252      	negs	r2, r2
20100eec:	1a52      	subs	r2, r2, r1
20100eee:	606b      	str	r3, [r5, #4]
20100ef0:	60aa      	str	r2, [r5, #8]
20100ef2:	0020      	movs	r0, r4
20100ef4:	b011      	add	sp, #68	; 0x44
20100ef6:	bc3c      	pop	{r2, r3, r4, r5}
20100ef8:	4690      	mov	r8, r2
20100efa:	4699      	mov	r9, r3
20100efc:	46a2      	mov	sl, r4
20100efe:	46ab      	mov	fp, r5
20100f00:	bdf0      	pop	{r4, r5, r6, r7, pc}
20100f02:	f000 fa69 	bl	201013d8 <__gnu_thumb1_case_uqi>
20100f06:	856c      	.short	0x856c
20100f08:	553d      	.short	0x553d
20100f0a:	a3          	.byte	0xa3
20100f0b:	00          	.byte	0x00
20100f0c:	2480      	movs	r4, #128	; 0x80
20100f0e:	00a4      	lsls	r4, r4, #2
20100f10:	1ae3      	subs	r3, r4, r3
20100f12:	e7ba      	b.n	20100e8a <svpwm+0x13a>
20100f14:	4642      	mov	r2, r8
20100f16:	4498      	add	r8, r3
20100f18:	1ad0      	subs	r0, r2, r3
20100f1a:	9b00      	ldr	r3, [sp, #0]
20100f1c:	425b      	negs	r3, r3
20100f1e:	e748      	b.n	20100db2 <svpwm+0x62>
20100f20:	1049      	asrs	r1, r1, #1
20100f22:	1a42      	subs	r2, r0, r1
20100f24:	4691      	mov	r9, r2
20100f26:	687a      	ldr	r2, [r7, #4]
20100f28:	1041      	asrs	r1, r0, #1
20100f2a:	4488      	add	r8, r1
20100f2c:	1a9b      	subs	r3, r3, r2
20100f2e:	e751      	b.n	20100dd4 <svpwm+0x84>
20100f30:	464a      	mov	r2, r9
20100f32:	1089      	asrs	r1, r1, #2
20100f34:	1a50      	subs	r0, r2, r1
20100f36:	1091      	asrs	r1, r2, #2
20100f38:	68ba      	ldr	r2, [r7, #8]
20100f3a:	4488      	add	r8, r1
20100f3c:	1a9b      	subs	r3, r3, r2
20100f3e:	e75b      	b.n	20100df8 <svpwm+0xa8>
20100f40:	10c9      	asrs	r1, r1, #3
20100f42:	68fa      	ldr	r2, [r7, #12]
20100f44:	1a41      	subs	r1, r0, r1
20100f46:	10c0      	asrs	r0, r0, #3
20100f48:	4480      	add	r8, r0
20100f4a:	1a9b      	subs	r3, r3, r2
20100f4c:	e763      	b.n	20100e16 <svpwm+0xc6>
20100f4e:	1100      	asrs	r0, r0, #4
20100f50:	693a      	ldr	r2, [r7, #16]
20100f52:	1a08      	subs	r0, r1, r0
20100f54:	1109      	asrs	r1, r1, #4
20100f56:	4488      	add	r8, r1
20100f58:	1a9b      	subs	r3, r3, r2
20100f5a:	e76b      	b.n	20100e34 <svpwm+0xe4>
20100f5c:	1149      	asrs	r1, r1, #5
20100f5e:	1a42      	subs	r2, r0, r1
20100f60:	1140      	asrs	r0, r0, #5
20100f62:	0001      	movs	r1, r0
20100f64:	4691      	mov	r9, r2
20100f66:	697a      	ldr	r2, [r7, #20]
20100f68:	4441      	add	r1, r8
20100f6a:	1a9b      	subs	r3, r3, r2
20100f6c:	e771      	b.n	20100e52 <svpwm+0x102>
20100f6e:	464a      	mov	r2, r9
20100f70:	1a12      	subs	r2, r2, r0
20100f72:	4690      	mov	r8, r2
20100f74:	464a      	mov	r2, r9
20100f76:	1190      	asrs	r0, r2, #6
20100f78:	69ba      	ldr	r2, [r7, #24]
20100f7a:	1841      	adds	r1, r0, r1
20100f7c:	1a9b      	subs	r3, r3, r2
20100f7e:	e777      	b.n	20100e70 <svpwm+0x120>
20100f80:	4650      	mov	r0, sl
20100f82:	5880      	ldr	r0, [r0, r2]
20100f84:	4a4a      	ldr	r2, [pc, #296]	; (201010b0 <svpwm+0x360>)
20100f86:	1ad2      	subs	r2, r2, r3
20100f88:	3301      	adds	r3, #1
20100f8a:	0592      	lsls	r2, r2, #22
20100f8c:	33ff      	adds	r3, #255	; 0xff
20100f8e:	0d12      	lsrs	r2, r2, #20
20100f90:	059b      	lsls	r3, r3, #22
20100f92:	5812      	ldr	r2, [r2, r0]
20100f94:	0d1b      	lsrs	r3, r3, #20
20100f96:	581b      	ldr	r3, [r3, r0]
20100f98:	434a      	muls	r2, r1
20100f9a:	434b      	muls	r3, r1
20100f9c:	1292      	asrs	r2, r2, #10
20100f9e:	1299      	asrs	r1, r3, #10
20100fa0:	4253      	negs	r3, r2
20100fa2:	1a5b      	subs	r3, r3, r1
20100fa4:	602b      	str	r3, [r5, #0]
20100fa6:	1a53      	subs	r3, r2, r1
20100fa8:	1851      	adds	r1, r2, r1
20100faa:	606b      	str	r3, [r5, #4]
20100fac:	60a9      	str	r1, [r5, #8]
20100fae:	e7a0      	b.n	20100ef2 <svpwm+0x1a2>
20100fb0:	4650      	mov	r0, sl
20100fb2:	5880      	ldr	r0, [r0, r2]
20100fb4:	4a3f      	ldr	r2, [pc, #252]	; (201010b4 <svpwm+0x364>)
20100fb6:	1ad2      	subs	r2, r2, r3
20100fb8:	3356      	adds	r3, #86	; 0x56
20100fba:	0592      	lsls	r2, r2, #22
20100fbc:	059b      	lsls	r3, r3, #22
20100fbe:	0d12      	lsrs	r2, r2, #20
20100fc0:	0d1b      	lsrs	r3, r3, #20
20100fc2:	5816      	ldr	r6, [r2, r0]
20100fc4:	581b      	ldr	r3, [r3, r0]
20100fc6:	434e      	muls	r6, r1
20100fc8:	434b      	muls	r3, r1
20100fca:	12b6      	asrs	r6, r6, #10
20100fcc:	1299      	asrs	r1, r3, #10
20100fce:	1b8b      	subs	r3, r1, r6
20100fd0:	602b      	str	r3, [r5, #0]
20100fd2:	4273      	negs	r3, r6
20100fd4:	1a5b      	subs	r3, r3, r1
20100fd6:	1871      	adds	r1, r6, r1
20100fd8:	606b      	str	r3, [r5, #4]
20100fda:	60a9      	str	r1, [r5, #8]
20100fdc:	e789      	b.n	20100ef2 <svpwm+0x1a2>
20100fde:	4650      	mov	r0, sl
20100fe0:	5886      	ldr	r6, [r0, r2]
20100fe2:	4a35      	ldr	r2, [pc, #212]	; (201010b8 <svpwm+0x368>)
20100fe4:	1ad2      	subs	r2, r2, r3
20100fe6:	0592      	lsls	r2, r2, #22
20100fe8:	0d12      	lsrs	r2, r2, #20
20100fea:	5990      	ldr	r0, [r2, r6]
20100fec:	4a33      	ldr	r2, [pc, #204]	; (201010bc <svpwm+0x36c>)
20100fee:	4348      	muls	r0, r1
20100ff0:	4694      	mov	ip, r2
20100ff2:	4463      	add	r3, ip
20100ff4:	059b      	lsls	r3, r3, #22
20100ff6:	0d1b      	lsrs	r3, r3, #20
20100ff8:	599b      	ldr	r3, [r3, r6]
20100ffa:	1280      	asrs	r0, r0, #10
20100ffc:	4359      	muls	r1, r3
20100ffe:	1289      	asrs	r1, r1, #10
20101000:	1a43      	subs	r3, r0, r1
20101002:	602b      	str	r3, [r5, #0]
20101004:	1843      	adds	r3, r0, r1
20101006:	4240      	negs	r0, r0
20101008:	1a40      	subs	r0, r0, r1
2010100a:	606b      	str	r3, [r5, #4]
2010100c:	60a8      	str	r0, [r5, #8]
2010100e:	e770      	b.n	20100ef2 <svpwm+0x1a2>
20101010:	4650      	mov	r0, sl
20101012:	5880      	ldr	r0, [r0, r2]
20101014:	4a2a      	ldr	r2, [pc, #168]	; (201010c0 <svpwm+0x370>)
20101016:	1ad2      	subs	r2, r2, r3
20101018:	33ac      	adds	r3, #172	; 0xac
2010101a:	0592      	lsls	r2, r2, #22
2010101c:	33ff      	adds	r3, #255	; 0xff
2010101e:	0d12      	lsrs	r2, r2, #20
20101020:	059b      	lsls	r3, r3, #22
20101022:	5816      	ldr	r6, [r2, r0]
20101024:	0d1b      	lsrs	r3, r3, #20
20101026:	581b      	ldr	r3, [r3, r0]
20101028:	434e      	muls	r6, r1
2010102a:	4359      	muls	r1, r3
2010102c:	12b6      	asrs	r6, r6, #10
2010102e:	1289      	asrs	r1, r1, #10
20101030:	4273      	negs	r3, r6
20101032:	1a5b      	subs	r3, r3, r1
20101034:	602b      	str	r3, [r5, #0]
20101036:	1873      	adds	r3, r6, r1
20101038:	1b89      	subs	r1, r1, r6
2010103a:	606b      	str	r3, [r5, #4]
2010103c:	60a9      	str	r1, [r5, #8]
2010103e:	e758      	b.n	20100ef2 <svpwm+0x1a2>
20101040:	4642      	mov	r2, r8
20101042:	11c9      	asrs	r1, r1, #7
20101044:	1a50      	subs	r0, r2, r1
20101046:	69f9      	ldr	r1, [r7, #28]
20101048:	1a5b      	subs	r3, r3, r1
2010104a:	e71b      	b.n	20100e84 <svpwm+0x134>
2010104c:	4650      	mov	r0, sl
2010104e:	5882      	ldr	r2, [r0, r2]
20101050:	481c      	ldr	r0, [pc, #112]	; (201010c4 <svpwm+0x374>)
20101052:	1ac0      	subs	r0, r0, r3
20101054:	3b55      	subs	r3, #85	; 0x55
20101056:	0580      	lsls	r0, r0, #22
20101058:	059b      	lsls	r3, r3, #22
2010105a:	0d00      	lsrs	r0, r0, #20
2010105c:	0d1b      	lsrs	r3, r3, #20
2010105e:	589b      	ldr	r3, [r3, r2]
20101060:	5880      	ldr	r0, [r0, r2]
20101062:	4348      	muls	r0, r1
20101064:	4359      	muls	r1, r3
20101066:	1280      	asrs	r0, r0, #10
20101068:	1289      	asrs	r1, r1, #10
2010106a:	1843      	adds	r3, r0, r1
2010106c:	602b      	str	r3, [r5, #0]
2010106e:	4243      	negs	r3, r0
20101070:	1a5b      	subs	r3, r3, r1
20101072:	1a41      	subs	r1, r0, r1
20101074:	606b      	str	r3, [r5, #4]
20101076:	60a9      	str	r1, [r5, #8]
20101078:	e73b      	b.n	20100ef2 <svpwm+0x1a2>
2010107a:	2100      	movs	r1, #0
2010107c:	e703      	b.n	20100e86 <svpwm+0x136>
2010107e:	4648      	mov	r0, r9
20101080:	2101      	movs	r1, #1
20101082:	e700      	b.n	20100e86 <svpwm+0x136>
20101084:	2102      	movs	r1, #2
20101086:	e6fe      	b.n	20100e86 <svpwm+0x136>
20101088:	0008      	movs	r0, r1
2010108a:	2103      	movs	r1, #3
2010108c:	e6fb      	b.n	20100e86 <svpwm+0x136>
2010108e:	2104      	movs	r1, #4
20101090:	e6f9      	b.n	20100e86 <svpwm+0x136>
20101092:	4648      	mov	r0, r9
20101094:	2105      	movs	r1, #5
20101096:	e6f6      	b.n	20100e86 <svpwm+0x136>
20101098:	4640      	mov	r0, r8
2010109a:	2106      	movs	r1, #6
2010109c:	e6f3      	b.n	20100e86 <svpwm+0x136>
2010109e:	46c0      	nop			; (mov r8, r8)
201010a0:	000018ba 	.word	0x000018ba
201010a4:	ffeff31c 	.word	0xffeff31c
201010a8:	00000000 	.word	0x00000000
201010ac:	000007aa 	.word	0x000007aa
201010b0:	000009aa 	.word	0x000009aa
201010b4:	00000a54 	.word	0x00000a54
201010b8:	00000854 	.word	0x00000854
201010bc:	00000256 	.word	0x00000256
201010c0:	000008ff 	.word	0x000008ff
201010c4:	00000aff 	.word	0x00000aff

201010c8 <get_speed>:
201010c8:	4a10      	ldr	r2, [pc, #64]	; (2010110c <get_speed+0x44>)
201010ca:	b510      	push	{r4, lr}
201010cc:	447a      	add	r2, pc
201010ce:	6813      	ldr	r3, [r2, #0]
201010d0:	6854      	ldr	r4, [r2, #4]
201010d2:	1ac3      	subs	r3, r0, r3
201010d4:	6050      	str	r0, [r2, #4]
201010d6:	6014      	str	r4, [r2, #0]
201010d8:	17da      	asrs	r2, r3, #31
201010da:	1898      	adds	r0, r3, r2
201010dc:	4050      	eors	r0, r2
201010de:	22fa      	movs	r2, #250	; 0xfa
201010e0:	0092      	lsls	r2, r2, #2
201010e2:	4290      	cmp	r0, r2
201010e4:	dd04      	ble.n	201010f0 <get_speed+0x28>
201010e6:	2b00      	cmp	r3, #0
201010e8:	db0a      	blt.n	20101100 <get_speed+0x38>
201010ea:	4a09      	ldr	r2, [pc, #36]	; (20101110 <get_speed+0x48>)
201010ec:	4694      	mov	ip, r2
201010ee:	4463      	add	r3, ip
201010f0:	680a      	ldr	r2, [r1, #0]
201010f2:	4808      	ldr	r0, [pc, #32]	; (20101114 <get_speed+0x4c>)
201010f4:	18d2      	adds	r2, r2, r3
201010f6:	105b      	asrs	r3, r3, #1
201010f8:	4343      	muls	r3, r0
201010fa:	600a      	str	r2, [r1, #0]
201010fc:	1318      	asrs	r0, r3, #12
201010fe:	bd10      	pop	{r4, pc}
20101100:	2280      	movs	r2, #128	; 0x80
20101102:	0152      	lsls	r2, r2, #5
20101104:	4694      	mov	ip, r2
20101106:	4463      	add	r3, ip
20101108:	e7f2      	b.n	201010f0 <get_speed+0x28>
2010110a:	46c0      	nop			; (mov r8, r8)
2010110c:	ffefefe8 	.word	0xffefefe8
20101110:	fffff000 	.word	0xfffff000
20101114:	0002ae7c 	.word	0x0002ae7c

20101118 <c_mfilter>:
20101118:	221f      	movs	r2, #31
2010111a:	4908      	ldr	r1, [pc, #32]	; (2010113c <c_mfilter+0x24>)
2010111c:	b510      	push	{r4, lr}
2010111e:	4479      	add	r1, pc
20101120:	688b      	ldr	r3, [r1, #8]
20101122:	3301      	adds	r3, #1
20101124:	4013      	ands	r3, r2
20101126:	608b      	str	r3, [r1, #8]
20101128:	009b      	lsls	r3, r3, #2
2010112a:	18cb      	adds	r3, r1, r3
2010112c:	68ca      	ldr	r2, [r1, #12]
2010112e:	691c      	ldr	r4, [r3, #16]
20101130:	6118      	str	r0, [r3, #16]
20101132:	1b12      	subs	r2, r2, r4
20101134:	1812      	adds	r2, r2, r0
20101136:	1150      	asrs	r0, r2, #5
20101138:	60ca      	str	r2, [r1, #12]
2010113a:	bd10      	pop	{r4, pc}
2010113c:	ffefef96 	.word	0xffefef96

20101140 <adc_dma_init>:
20101140:	b580      	push	{r7, lr}
20101142:	af00      	add	r7, sp, #0
20101144:	4b1c      	ldr	r3, [pc, #112]	; (201011b8 <adc_dma_init+0x78>)
20101146:	4a1c      	ldr	r2, [pc, #112]	; (201011b8 <adc_dma_init+0x78>)
20101148:	69d2      	ldr	r2, [r2, #28]
2010114a:	2120      	movs	r1, #32
2010114c:	430a      	orrs	r2, r1
2010114e:	61da      	str	r2, [r3, #28]
20101150:	4b1a      	ldr	r3, [pc, #104]	; (201011bc <adc_dma_init+0x7c>)
20101152:	4a1b      	ldr	r2, [pc, #108]	; (201011c0 <adc_dma_init+0x80>)
20101154:	447a      	add	r2, pc
20101156:	609a      	str	r2, [r3, #8]
20101158:	4b18      	ldr	r3, [pc, #96]	; (201011bc <adc_dma_init+0x7c>)
2010115a:	2201      	movs	r2, #1
2010115c:	4252      	negs	r2, r2
2010115e:	62da      	str	r2, [r3, #44]	; 0x2c
20101160:	4b16      	ldr	r3, [pc, #88]	; (201011bc <adc_dma_init+0x7c>)
20101162:	2201      	movs	r2, #1
20101164:	4252      	negs	r2, r2
20101166:	621a      	str	r2, [r3, #32]
20101168:	4b14      	ldr	r3, [pc, #80]	; (201011bc <adc_dma_init+0x7c>)
2010116a:	2201      	movs	r2, #1
2010116c:	4252      	negs	r2, r2
2010116e:	635a      	str	r2, [r3, #52]	; 0x34
20101170:	4b12      	ldr	r3, [pc, #72]	; (201011bc <adc_dma_init+0x7c>)
20101172:	2280      	movs	r2, #128	; 0x80
20101174:	05d2      	lsls	r2, r2, #23
20101176:	61da      	str	r2, [r3, #28]
20101178:	4b10      	ldr	r3, [pc, #64]	; (201011bc <adc_dma_init+0x7c>)
2010117a:	2280      	movs	r2, #128	; 0x80
2010117c:	05d2      	lsls	r2, r2, #23
2010117e:	625a      	str	r2, [r3, #36]	; 0x24
20101180:	4b0e      	ldr	r3, [pc, #56]	; (201011bc <adc_dma_init+0x7c>)
20101182:	2201      	movs	r2, #1
20101184:	605a      	str	r2, [r3, #4]
20101186:	4a0f      	ldr	r2, [pc, #60]	; (201011c4 <adc_dma_init+0x84>)
20101188:	447a      	add	r2, pc
2010118a:	23f0      	movs	r3, #240	; 0xf0
2010118c:	005b      	lsls	r3, r3, #1
2010118e:	490e      	ldr	r1, [pc, #56]	; (201011c8 <adc_dma_init+0x88>)
20101190:	50d1      	str	r1, [r2, r3]
20101192:	4b0e      	ldr	r3, [pc, #56]	; (201011cc <adc_dma_init+0x8c>)
20101194:	447b      	add	r3, pc
20101196:	330c      	adds	r3, #12
20101198:	0019      	movs	r1, r3
2010119a:	4a0d      	ldr	r2, [pc, #52]	; (201011d0 <adc_dma_init+0x90>)
2010119c:	447a      	add	r2, pc
2010119e:	23f2      	movs	r3, #242	; 0xf2
201011a0:	005b      	lsls	r3, r3, #1
201011a2:	50d1      	str	r1, [r2, r3]
201011a4:	4a0b      	ldr	r2, [pc, #44]	; (201011d4 <adc_dma_init+0x94>)
201011a6:	447a      	add	r2, pc
201011a8:	23f4      	movs	r3, #244	; 0xf4
201011aa:	005b      	lsls	r3, r3, #1
201011ac:	490a      	ldr	r1, [pc, #40]	; (201011d8 <adc_dma_init+0x98>)
201011ae:	50d1      	str	r1, [r2, r3]
201011b0:	46c0      	nop			; (mov r8, r8)
201011b2:	46bd      	mov	sp, r7
201011b4:	bd80      	pop	{r7, pc}
201011b6:	46c0      	nop			; (mov r8, r8)
201011b8:	40020000 	.word	0x40020000
201011bc:	40028000 	.word	0x40028000
201011c0:	000002a8 	.word	0x000002a8
201011c4:	00000274 	.word	0x00000274
201011c8:	40088018 	.word	0x40088018
201011cc:	00000468 	.word	0x00000468
201011d0:	00000260 	.word	0x00000260
201011d4:	00000256 	.word	0x00000256
201011d8:	ae000031 	.word	0xae000031

201011dc <adc_dma_start>:
201011dc:	b580      	push	{r7, lr}
201011de:	af00      	add	r7, sp, #0
201011e0:	4b06      	ldr	r3, [pc, #24]	; (201011fc <adc_dma_start+0x20>)
201011e2:	4a06      	ldr	r2, [pc, #24]	; (201011fc <adc_dma_start+0x20>)
201011e4:	6812      	ldr	r2, [r2, #0]
201011e6:	2108      	movs	r1, #8
201011e8:	430a      	orrs	r2, r1
201011ea:	601a      	str	r2, [r3, #0]
201011ec:	4b04      	ldr	r3, [pc, #16]	; (20101200 <adc_dma_start+0x24>)
201011ee:	2280      	movs	r2, #128	; 0x80
201011f0:	05d2      	lsls	r2, r2, #23
201011f2:	629a      	str	r2, [r3, #40]	; 0x28
201011f4:	46c0      	nop			; (mov r8, r8)
201011f6:	46bd      	mov	sp, r7
201011f8:	bd80      	pop	{r7, pc}
201011fa:	46c0      	nop			; (mov r8, r8)
201011fc:	40088000 	.word	0x40088000
20101200:	40028000 	.word	0x40028000

20101204 <adc_dma_wait>:
20101204:	b580      	push	{r7, lr}
20101206:	af00      	add	r7, sp, #0
20101208:	46c0      	nop			; (mov r8, r8)
2010120a:	4a0b      	ldr	r2, [pc, #44]	; (20101238 <adc_dma_wait+0x34>)
2010120c:	447a      	add	r2, pc
2010120e:	23f4      	movs	r3, #244	; 0xf4
20101210:	005b      	lsls	r3, r3, #1
20101212:	58d3      	ldr	r3, [r2, r3]
20101214:	2207      	movs	r2, #7
20101216:	4013      	ands	r3, r2
20101218:	d1f7      	bne.n	2010120a <adc_dma_wait+0x6>
2010121a:	4b08      	ldr	r3, [pc, #32]	; (2010123c <adc_dma_wait+0x38>)
2010121c:	4a07      	ldr	r2, [pc, #28]	; (2010123c <adc_dma_wait+0x38>)
2010121e:	6812      	ldr	r2, [r2, #0]
20101220:	2108      	movs	r1, #8
20101222:	438a      	bics	r2, r1
20101224:	601a      	str	r2, [r3, #0]
20101226:	4a06      	ldr	r2, [pc, #24]	; (20101240 <adc_dma_wait+0x3c>)
20101228:	447a      	add	r2, pc
2010122a:	23f4      	movs	r3, #244	; 0xf4
2010122c:	005b      	lsls	r3, r3, #1
2010122e:	4905      	ldr	r1, [pc, #20]	; (20101244 <adc_dma_wait+0x40>)
20101230:	50d1      	str	r1, [r2, r3]
20101232:	46c0      	nop			; (mov r8, r8)
20101234:	46bd      	mov	sp, r7
20101236:	bd80      	pop	{r7, pc}
20101238:	000001f0 	.word	0x000001f0
2010123c:	40088000 	.word	0x40088000
20101240:	000001d4 	.word	0x000001d4
20101244:	ae000031 	.word	0xae000031
	...

20101250 <asm_test_loop>:
20101250:	b5f0      	push	{r4, r5, r6, r7, lr}
20101252:	6803      	ldr	r3, [r0, #0]
20101254:	17dc      	asrs	r4, r3, #31
20101256:	191b      	adds	r3, r3, r4
20101258:	4063      	eors	r3, r4
2010125a:	6844      	ldr	r4, [r0, #4]
2010125c:	406d      	eors	r5, r5
2010125e:	4076      	eors	r6, r6
20101260:	bdf0      	pop	{r4, r5, r6, r7, pc}

20101262 <AngTable>:
20101262:	0080      	.short	0x0080
20101264:	004c0000 	.word	0x004c0000
20101268:	00280000 	.word	0x00280000
2010126c:	00140000 	.word	0x00140000
20101270:	000a0000 	.word	0x000a0000
20101274:	00050000 	.word	0x00050000
20101278:	00030000 	.word	0x00030000
2010127c:	00010000 	.word	0x00010000
	...

20101282 <kc>:
20101282:	02d4      	.short	0x02d4
20101284:	02880000 	.word	0x02880000
20101288:	02740000 	.word	0x02740000
2010128c:	026f0000 	.word	0x026f0000
20101290:	026f0000 	.word	0x026f0000
20101294:	026e0000 	.word	0x026e0000
20101298:	026e0000 	.word	0x026e0000
2010129c:	026e0000 	.word	0x026e0000
	...

201012a2 <abc_to_dq>:
201012a2:	b570      	push	{r4, r5, r6, lr}
201012a4:	4b48      	ldr	r3, [pc, #288]	; (201013c8 <dot3+0x1c>)
201012a6:	0092      	lsls	r2, r2, #2
201012a8:	589c      	ldr	r4, [r3, r2]
201012aa:	6805      	ldr	r5, [r0, #0]
201012ac:	436c      	muls	r4, r5
201012ae:	4e31      	ldr	r6, [pc, #196]	; (20101374 <P_4PI3>)
201012b0:	18b6      	adds	r6, r6, r2
201012b2:	4d34      	ldr	r5, [pc, #208]	; (20101384 <MASK1023>)
201012b4:	4035      	ands	r5, r6
201012b6:	595e      	ldr	r6, [r3, r5]
201012b8:	6845      	ldr	r5, [r0, #4]
201012ba:	4375      	muls	r5, r6
201012bc:	1964      	adds	r4, r4, r5
201012be:	4e2e      	ldr	r6, [pc, #184]	; (20101378 <P_2PI3>)
201012c0:	18b6      	adds	r6, r6, r2
201012c2:	4d30      	ldr	r5, [pc, #192]	; (20101384 <MASK1023>)
201012c4:	4035      	ands	r5, r6
201012c6:	595e      	ldr	r6, [r3, r5]
201012c8:	6885      	ldr	r5, [r0, #8]
201012ca:	4375      	muls	r5, r6
201012cc:	1964      	adds	r4, r4, r5
201012ce:	12a4      	asrs	r4, r4, #10
201012d0:	600c      	str	r4, [r1, #0]
201012d2:	4e27      	ldr	r6, [pc, #156]	; (20101370 <P_3PI2>)
201012d4:	18b6      	adds	r6, r6, r2
201012d6:	4d2b      	ldr	r5, [pc, #172]	; (20101384 <MASK1023>)
201012d8:	4035      	ands	r5, r6
201012da:	595e      	ldr	r6, [r3, r5]
201012dc:	6804      	ldr	r4, [r0, #0]
201012de:	4374      	muls	r4, r6
201012e0:	4e26      	ldr	r6, [pc, #152]	; (2010137c <P_4PI33PI2>)
201012e2:	18b6      	adds	r6, r6, r2
201012e4:	4d27      	ldr	r5, [pc, #156]	; (20101384 <MASK1023>)
201012e6:	4035      	ands	r5, r6
201012e8:	595e      	ldr	r6, [r3, r5]
201012ea:	6845      	ldr	r5, [r0, #4]
201012ec:	4375      	muls	r5, r6
201012ee:	1964      	adds	r4, r4, r5
201012f0:	4e23      	ldr	r6, [pc, #140]	; (20101380 <P_2PI33PI2>)
201012f2:	18b6      	adds	r6, r6, r2
201012f4:	4d23      	ldr	r5, [pc, #140]	; (20101384 <MASK1023>)
201012f6:	4035      	ands	r5, r6
201012f8:	595e      	ldr	r6, [r3, r5]
201012fa:	6885      	ldr	r5, [r0, #8]
201012fc:	4375      	muls	r5, r6
201012fe:	1964      	adds	r4, r4, r5
20101300:	12a4      	asrs	r4, r4, #10
20101302:	4076      	eors	r6, r6
20101304:	1b36      	subs	r6, r6, r4
20101306:	604e      	str	r6, [r1, #4]
20101308:	bd70      	pop	{r4, r5, r6, pc}

2010130a <dq_to_abc>:
2010130a:	b570      	push	{r4, r5, r6, lr}
2010130c:	4b2e      	ldr	r3, [pc, #184]	; (201013c8 <dot3+0x1c>)
2010130e:	0092      	lsls	r2, r2, #2
20101310:	589c      	ldr	r4, [r3, r2]
20101312:	680d      	ldr	r5, [r1, #0]
20101314:	436c      	muls	r4, r5
20101316:	4e16      	ldr	r6, [pc, #88]	; (20101370 <P_3PI2>)
20101318:	18b6      	adds	r6, r6, r2
2010131a:	4d1a      	ldr	r5, [pc, #104]	; (20101384 <MASK1023>)
2010131c:	4035      	ands	r5, r6
2010131e:	595e      	ldr	r6, [r3, r5]
20101320:	684d      	ldr	r5, [r1, #4]
20101322:	4375      	muls	r5, r6
20101324:	1b64      	subs	r4, r4, r5
20101326:	1524      	asrs	r4, r4, #20
20101328:	6004      	str	r4, [r0, #0]
2010132a:	4e12      	ldr	r6, [pc, #72]	; (20101374 <P_4PI3>)
2010132c:	18b6      	adds	r6, r6, r2
2010132e:	4d15      	ldr	r5, [pc, #84]	; (20101384 <MASK1023>)
20101330:	4035      	ands	r5, r6
20101332:	595c      	ldr	r4, [r3, r5]
20101334:	680d      	ldr	r5, [r1, #0]
20101336:	436c      	muls	r4, r5
20101338:	4e10      	ldr	r6, [pc, #64]	; (2010137c <P_4PI33PI2>)
2010133a:	18b6      	adds	r6, r6, r2
2010133c:	4d11      	ldr	r5, [pc, #68]	; (20101384 <MASK1023>)
2010133e:	4035      	ands	r5, r6
20101340:	595e      	ldr	r6, [r3, r5]
20101342:	684d      	ldr	r5, [r1, #4]
20101344:	4375      	muls	r5, r6
20101346:	1b64      	subs	r4, r4, r5
20101348:	1524      	asrs	r4, r4, #20
2010134a:	6044      	str	r4, [r0, #4]
2010134c:	4e0a      	ldr	r6, [pc, #40]	; (20101378 <P_2PI3>)
2010134e:	18b6      	adds	r6, r6, r2
20101350:	4d0c      	ldr	r5, [pc, #48]	; (20101384 <MASK1023>)
20101352:	4035      	ands	r5, r6
20101354:	595c      	ldr	r4, [r3, r5]
20101356:	680d      	ldr	r5, [r1, #0]
20101358:	436c      	muls	r4, r5
2010135a:	4e09      	ldr	r6, [pc, #36]	; (20101380 <P_2PI33PI2>)
2010135c:	18b6      	adds	r6, r6, r2
2010135e:	4d09      	ldr	r5, [pc, #36]	; (20101384 <MASK1023>)
20101360:	4035      	ands	r5, r6
20101362:	595e      	ldr	r6, [r3, r5]
20101364:	684d      	ldr	r5, [r1, #4]
20101366:	4375      	muls	r5, r6
20101368:	1b64      	subs	r4, r4, r5
2010136a:	1524      	asrs	r4, r4, #20
2010136c:	6084      	str	r4, [r0, #8]
2010136e:	bd70      	pop	{r4, r5, r6, pc}

20101370 <P_3PI2>:
20101370:	00000c00 	.word	0x00000c00

20101374 <P_4PI3>:
20101374:	00000aaa 	.word	0x00000aaa

20101378 <P_2PI3>:
20101378:	00000555 	.word	0x00000555

2010137c <P_4PI33PI2>:
2010137c:	000016aa 	.word	0x000016aa

20101380 <P_2PI33PI2>:
20101380:	00001155 	.word	0x00001155

20101384 <MASK1023>:
20101384:	00000ffc 	.word	0x00000ffc

20101388 <mfilter>:
20101388:	4910      	ldr	r1, [pc, #64]	; (201013cc <dot3+0x20>)
2010138a:	680a      	ldr	r2, [r1, #0]
2010138c:	3201      	adds	r2, #1
2010138e:	231f      	movs	r3, #31
20101390:	401a      	ands	r2, r3
20101392:	600a      	str	r2, [r1, #0]
20101394:	490e      	ldr	r1, [pc, #56]	; (201013d0 <dot3+0x24>)
20101396:	0092      	lsls	r2, r2, #2
20101398:	1889      	adds	r1, r1, r2
2010139a:	680a      	ldr	r2, [r1, #0]
2010139c:	6008      	str	r0, [r1, #0]
2010139e:	1a80      	subs	r0, r0, r2
201013a0:	490c      	ldr	r1, [pc, #48]	; (201013d4 <dot3+0x28>)
201013a2:	680a      	ldr	r2, [r1, #0]
201013a4:	1880      	adds	r0, r0, r2
201013a6:	6008      	str	r0, [r1, #0]
201013a8:	1140      	asrs	r0, r0, #5
201013aa:	46f7      	mov	pc, lr

201013ac <dot3>:
201013ac:	b580      	push	{r7, lr}
201013ae:	6802      	ldr	r2, [r0, #0]
201013b0:	680b      	ldr	r3, [r1, #0]
201013b2:	435a      	muls	r2, r3
201013b4:	1c17      	adds	r7, r2, #0
201013b6:	6842      	ldr	r2, [r0, #4]
201013b8:	684b      	ldr	r3, [r1, #4]
201013ba:	435a      	muls	r2, r3
201013bc:	18bf      	adds	r7, r7, r2
201013be:	6880      	ldr	r0, [r0, #8]
201013c0:	688b      	ldr	r3, [r1, #8]
201013c2:	4358      	muls	r0, r3
201013c4:	1838      	adds	r0, r7, r0
201013c6:	bd80      	pop	{r7, pc}
201013c8:	20101620 	.word	0x20101620
201013cc:	20000008 	.word	0x20000008
201013d0:	2000000c 	.word	0x2000000c
201013d4:	20000004 	.word	0x20000004

201013d8 <__gnu_thumb1_case_uqi>:
201013d8:	b402      	push	{r1}
201013da:	4671      	mov	r1, lr
201013dc:	0849      	lsrs	r1, r1, #1
201013de:	0049      	lsls	r1, r1, #1
201013e0:	5c09      	ldrb	r1, [r1, r0]
201013e2:	0049      	lsls	r1, r1, #1
201013e4:	448e      	add	lr, r1
201013e6:	bc02      	pop	{r1}
201013e8:	4770      	bx	lr
201013ea:	46c0      	nop			; (mov r8, r8)
	...

20101400 <dma_ctr_str>:
	...

20101600 <adc_dma_buffer>:
	...
