
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
20100044:	f000 fcc2 	bl	201009cc <SystemInit>
20100048:	2396      	movs	r3, #150	; 0x96
2010004a:	009a      	lsls	r2, r3, #2
2010004c:	2396      	movs	r3, #150	; 0x96
2010004e:	0099      	lsls	r1, r3, #2
20100050:	2334      	movs	r3, #52	; 0x34
20100052:	18fb      	adds	r3, r7, r3
20100054:	0018      	movs	r0, r3
20100056:	f000 fd01 	bl	20100a5c <reg_init>
2010005a:	2396      	movs	r3, #150	; 0x96
2010005c:	009a      	lsls	r2, r3, #2
2010005e:	2396      	movs	r3, #150	; 0x96
20100060:	0099      	lsls	r1, r3, #2
20100062:	2324      	movs	r3, #36	; 0x24
20100064:	18fb      	adds	r3, r7, r3
20100066:	0018      	movs	r0, r3
20100068:	f000 fcf8 	bl	20100a5c <reg_init>
2010006c:	23fa      	movs	r3, #250	; 0xfa
2010006e:	011a      	lsls	r2, r3, #4
20100070:	2314      	movs	r3, #20
20100072:	18fb      	adds	r3, r7, r3
20100074:	2100      	movs	r1, #0
20100076:	0018      	movs	r0, r3
20100078:	f000 fcf0 	bl	20100a5c <reg_init>
2010007c:	4a10      	ldr	r2, [pc, #64]	; (201000c0 <main+0xc0>)
2010007e:	1d3b      	adds	r3, r7, #4
20100080:	2100      	movs	r1, #0
20100082:	0018      	movs	r0, r3
20100084:	f000 fcea 	bl	20100a5c <reg_init>
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
201000c0:	00002710 	.word	0x00002710
201000c4:	fff00012 	.word	0xfff00012
201000c8:	fff00002 	.word	0xfff00002
201000cc:	ffeffffe 	.word	0xffeffffe
201000d0:	f000 fc90 	bl	201009f4 <timer_wait>
201000d4:	f001 f886 	bl	201011e4 <adc_dma_start>
201000d8:	4bd4      	ldr	r3, [pc, #848]	; (2010042c <main+0x42c>)
201000da:	4ad5      	ldr	r2, [pc, #852]	; (20100430 <main+0x430>)
201000dc:	609a      	str	r2, [r3, #8]
201000de:	f001 f895 	bl	2010120c <adc_dma_wait>
201000e2:	4bd4      	ldr	r3, [pc, #848]	; (20100434 <main+0x434>)
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
201000fa:	4bce      	ldr	r3, [pc, #824]	; (20100434 <main+0x434>)
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
20100112:	4bc8      	ldr	r3, [pc, #800]	; (20100434 <main+0x434>)
20100114:	58e3      	ldr	r3, [r4, r3]
20100116:	68db      	ldr	r3, [r3, #12]
20100118:	051b      	lsls	r3, r3, #20
2010011a:	0d1a      	lsrs	r2, r3, #20
2010011c:	4bc6      	ldr	r3, [pc, #792]	; (20100438 <main+0x438>)
2010011e:	447b      	add	r3, pc
20100120:	681b      	ldr	r3, [r3, #0]
20100122:	18d3      	adds	r3, r2, r3
20100124:	001a      	movs	r2, r3
20100126:	4bc5      	ldr	r3, [pc, #788]	; (2010043c <main+0x43c>)
20100128:	447b      	add	r3, pc
2010012a:	601a      	str	r2, [r3, #0]
2010012c:	4bbf      	ldr	r3, [pc, #764]	; (2010042c <main+0x42c>)
2010012e:	689b      	ldr	r3, [r3, #8]
20100130:	051b      	lsls	r3, r3, #20
20100132:	0d1b      	lsrs	r3, r3, #20
20100134:	0018      	movs	r0, r3
20100136:	f000 fc31 	bl	2010099c <g2b>
2010013a:	0002      	movs	r2, r0
2010013c:	4bc0      	ldr	r3, [pc, #768]	; (20100440 <main+0x440>)
2010013e:	447b      	add	r3, pc
20100140:	681b      	ldr	r3, [r3, #0]
20100142:	18d3      	adds	r3, r2, r3
20100144:	001a      	movs	r2, r3
20100146:	4bbf      	ldr	r3, [pc, #764]	; (20100444 <main+0x444>)
20100148:	447b      	add	r3, pc
2010014a:	601a      	str	r2, [r3, #0]
2010014c:	4bb9      	ldr	r3, [pc, #740]	; (20100434 <main+0x434>)
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
20100176:	4ab4      	ldr	r2, [pc, #720]	; (20100448 <main+0x448>)
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
20100198:	4bac      	ldr	r3, [pc, #688]	; (2010044c <main+0x44c>)
2010019a:	447b      	add	r3, pc
2010019c:	681b      	ldr	r3, [r3, #0]
2010019e:	129a      	asrs	r2, r3, #10
201001a0:	4bab      	ldr	r3, [pc, #684]	; (20100450 <main+0x450>)
201001a2:	447b      	add	r3, pc
201001a4:	601a      	str	r2, [r3, #0]
201001a6:	4bab      	ldr	r3, [pc, #684]	; (20100454 <main+0x454>)
201001a8:	447b      	add	r3, pc
201001aa:	681a      	ldr	r2, [r3, #0]
201001ac:	4baa      	ldr	r3, [pc, #680]	; (20100458 <main+0x458>)
201001ae:	447b      	add	r3, pc
201001b0:	601a      	str	r2, [r3, #0]
201001b2:	4baa      	ldr	r3, [pc, #680]	; (2010045c <main+0x45c>)
201001b4:	447b      	add	r3, pc
201001b6:	681b      	ldr	r3, [r3, #0]
201001b8:	129a      	asrs	r2, r3, #10
201001ba:	4ba9      	ldr	r3, [pc, #676]	; (20100460 <main+0x460>)
201001bc:	447b      	add	r3, pc
201001be:	601a      	str	r2, [r3, #0]
201001c0:	f000 fc18 	bl	201009f4 <timer_wait>
201001c4:	4ba7      	ldr	r3, [pc, #668]	; (20100464 <main+0x464>)
201001c6:	4aa7      	ldr	r2, [pc, #668]	; (20100464 <main+0x464>)
201001c8:	6812      	ldr	r2, [r2, #0]
201001ca:	2140      	movs	r1, #64	; 0x40
201001cc:	438a      	bics	r2, r1
201001ce:	601a      	str	r2, [r3, #0]
201001d0:	f001 f808 	bl	201011e4 <adc_dma_start>
201001d4:	4b95      	ldr	r3, [pc, #596]	; (2010042c <main+0x42c>)
201001d6:	4a96      	ldr	r2, [pc, #600]	; (20100430 <main+0x430>)
201001d8:	609a      	str	r2, [r3, #8]
201001da:	f001 f817 	bl	2010120c <adc_dma_wait>
201001de:	4ba1      	ldr	r3, [pc, #644]	; (20100464 <main+0x464>)
201001e0:	4aa0      	ldr	r2, [pc, #640]	; (20100464 <main+0x464>)
201001e2:	6812      	ldr	r2, [r2, #0]
201001e4:	2140      	movs	r1, #64	; 0x40
201001e6:	430a      	orrs	r2, r1
201001e8:	601a      	str	r2, [r3, #0]
201001ea:	4b92      	ldr	r3, [pc, #584]	; (20100434 <main+0x434>)
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
20100220:	4b91      	ldr	r3, [pc, #580]	; (20100468 <main+0x468>)
20100222:	447b      	add	r3, pc
20100224:	601a      	str	r2, [r3, #0]
20100226:	4b83      	ldr	r3, [pc, #524]	; (20100434 <main+0x434>)
20100228:	58e3      	ldr	r3, [r4, r3]
2010022a:	685b      	ldr	r3, [r3, #4]
2010022c:	051b      	lsls	r3, r3, #20
2010022e:	0d1a      	lsrs	r2, r3, #20
20100230:	2390      	movs	r3, #144	; 0x90
20100232:	18fb      	adds	r3, r7, r3
20100234:	681b      	ldr	r3, [r3, #0]
20100236:	1ad3      	subs	r3, r2, r3
20100238:	673b      	str	r3, [r7, #112]	; 0x70
2010023a:	4b7e      	ldr	r3, [pc, #504]	; (20100434 <main+0x434>)
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
20100258:	4b76      	ldr	r3, [pc, #472]	; (20100434 <main+0x434>)
2010025a:	58e3      	ldr	r3, [r4, r3]
2010025c:	68db      	ldr	r3, [r3, #12]
2010025e:	051b      	lsls	r3, r3, #20
20100260:	0d1a      	lsrs	r2, r3, #20
20100262:	4b82      	ldr	r3, [pc, #520]	; (2010046c <main+0x46c>)
20100264:	447b      	add	r3, pc
20100266:	601a      	str	r2, [r3, #0]
20100268:	4b70      	ldr	r3, [pc, #448]	; (2010042c <main+0x42c>)
2010026a:	689b      	ldr	r3, [r3, #8]
2010026c:	051b      	lsls	r3, r3, #20
2010026e:	0d1b      	lsrs	r3, r3, #20
20100270:	0018      	movs	r0, r3
20100272:	f000 fb93 	bl	2010099c <g2b>
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
2010029a:	d156      	bne.n	2010034a <main+0x34a>
2010029c:	6e7b      	ldr	r3, [r7, #100]	; 0x64
2010029e:	003a      	movs	r2, r7
201002a0:	0011      	movs	r1, r2
201002a2:	0018      	movs	r0, r3
201002a4:	f000 ff14 	bl	201010d0 <get_speed>
201002a8:	0003      	movs	r3, r0
201002aa:	663b      	str	r3, [r7, #96]	; 0x60
201002ac:	4b70      	ldr	r3, [pc, #448]	; (20100470 <main+0x470>)
201002ae:	447b      	add	r3, pc
201002b0:	681a      	ldr	r2, [r3, #0]
201002b2:	683b      	ldr	r3, [r7, #0]
201002b4:	1ad1      	subs	r1, r2, r3
201002b6:	1d3b      	adds	r3, r7, #4
201002b8:	2200      	movs	r2, #0
201002ba:	0018      	movs	r0, r3
201002bc:	f000 fbd4 	bl	20100a68 <reg_update>
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
201002d6:	f000 fbc7 	bl	20100a68 <reg_update>
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
201002f0:	009b      	lsls	r3, r3, #2
201002f2:	429a      	cmp	r2, r3
201002f4:	dd04      	ble.n	20100300 <main+0x300>
201002f6:	23fa      	movs	r3, #250	; 0xfa
201002f8:	009b      	lsls	r3, r3, #2
201002fa:	2280      	movs	r2, #128	; 0x80
201002fc:	18ba      	adds	r2, r7, r2
201002fe:	6013      	str	r3, [r2, #0]
20100300:	2380      	movs	r3, #128	; 0x80
20100302:	18fb      	adds	r3, r7, r3
20100304:	681b      	ldr	r3, [r3, #0]
20100306:	4a5b      	ldr	r2, [pc, #364]	; (20100474 <main+0x474>)
20100308:	4293      	cmp	r3, r2
2010030a:	da03      	bge.n	20100314 <main+0x314>
2010030c:	4b59      	ldr	r3, [pc, #356]	; (20100474 <main+0x474>)
2010030e:	2280      	movs	r2, #128	; 0x80
20100310:	18ba      	adds	r2, r7, r2
20100312:	6013      	str	r3, [r2, #0]
20100314:	4a58      	ldr	r2, [pc, #352]	; (20100478 <main+0x478>)
20100316:	4b59      	ldr	r3, [pc, #356]	; (2010047c <main+0x47c>)
20100318:	447b      	add	r3, pc
2010031a:	6819      	ldr	r1, [r3, #0]
2010031c:	683b      	ldr	r3, [r7, #0]
2010031e:	1acb      	subs	r3, r1, r3
20100320:	119b      	asrs	r3, r3, #6
20100322:	2180      	movs	r1, #128	; 0x80
20100324:	0109      	lsls	r1, r1, #4
20100326:	468c      	mov	ip, r1
20100328:	4463      	add	r3, ip
2010032a:	6053      	str	r3, [r2, #4]
2010032c:	4b54      	ldr	r3, [pc, #336]	; (20100480 <main+0x480>)
2010032e:	447b      	add	r3, pc
20100330:	681a      	ldr	r2, [r3, #0]
20100332:	4b54      	ldr	r3, [pc, #336]	; (20100484 <main+0x484>)
20100334:	447b      	add	r3, pc
20100336:	681b      	ldr	r3, [r3, #0]
20100338:	1ad2      	subs	r2, r2, r3
2010033a:	0013      	movs	r3, r2
2010033c:	00db      	lsls	r3, r3, #3
2010033e:	1a9b      	subs	r3, r3, r2
20100340:	00da      	lsls	r2, r3, #3
20100342:	1ad2      	subs	r2, r2, r3
20100344:	4b50      	ldr	r3, [pc, #320]	; (20100488 <main+0x488>)
20100346:	447b      	add	r3, pc
20100348:	601a      	str	r2, [r3, #0]
2010034a:	6fbb      	ldr	r3, [r7, #120]	; 0x78
2010034c:	22bc      	movs	r2, #188	; 0xbc
2010034e:	0092      	lsls	r2, r2, #2
20100350:	4694      	mov	ip, r2
20100352:	4463      	add	r3, ip
20100354:	059b      	lsls	r3, r3, #22
20100356:	0d9b      	lsrs	r3, r3, #22
20100358:	67bb      	str	r3, [r7, #120]	; 0x78
2010035a:	2344      	movs	r3, #68	; 0x44
2010035c:	18fb      	adds	r3, r7, r3
2010035e:	6f3a      	ldr	r2, [r7, #112]	; 0x70
20100360:	601a      	str	r2, [r3, #0]
20100362:	2344      	movs	r3, #68	; 0x44
20100364:	18fb      	adds	r3, r7, r3
20100366:	6eba      	ldr	r2, [r7, #104]	; 0x68
20100368:	605a      	str	r2, [r3, #4]
2010036a:	2344      	movs	r3, #68	; 0x44
2010036c:	18fb      	adds	r3, r7, r3
2010036e:	6efa      	ldr	r2, [r7, #108]	; 0x6c
20100370:	609a      	str	r2, [r3, #8]
20100372:	6fba      	ldr	r2, [r7, #120]	; 0x78
20100374:	2350      	movs	r3, #80	; 0x50
20100376:	18f9      	adds	r1, r7, r3
20100378:	2344      	movs	r3, #68	; 0x44
2010037a:	18fb      	adds	r3, r7, r3
2010037c:	0018      	movs	r0, r3
2010037e:	f000 ff90 	bl	201012a2 <abc_to_dq>
20100382:	2350      	movs	r3, #80	; 0x50
20100384:	18fb      	adds	r3, r7, r3
20100386:	681b      	ldr	r3, [r3, #0]
20100388:	425b      	negs	r3, r3
2010038a:	65fb      	str	r3, [r7, #92]	; 0x5c
2010038c:	2350      	movs	r3, #80	; 0x50
2010038e:	18fb      	adds	r3, r7, r3
20100390:	685b      	ldr	r3, [r3, #4]
20100392:	2280      	movs	r2, #128	; 0x80
20100394:	18ba      	adds	r2, r7, r2
20100396:	6812      	ldr	r2, [r2, #0]
20100398:	1ad3      	subs	r3, r2, r3
2010039a:	65bb      	str	r3, [r7, #88]	; 0x58
2010039c:	2388      	movs	r3, #136	; 0x88
2010039e:	18fb      	adds	r3, r7, r3
201003a0:	681a      	ldr	r2, [r3, #0]
201003a2:	6df9      	ldr	r1, [r7, #92]	; 0x5c
201003a4:	2334      	movs	r3, #52	; 0x34
201003a6:	18fb      	adds	r3, r7, r3
201003a8:	0018      	movs	r0, r3
201003aa:	f000 fb5d 	bl	20100a68 <reg_update>
201003ae:	2388      	movs	r3, #136	; 0x88
201003b0:	18fb      	adds	r3, r7, r3
201003b2:	681a      	ldr	r2, [r3, #0]
201003b4:	6db9      	ldr	r1, [r7, #88]	; 0x58
201003b6:	2324      	movs	r3, #36	; 0x24
201003b8:	18fb      	adds	r3, r7, r3
201003ba:	0018      	movs	r0, r3
201003bc:	f000 fb54 	bl	20100a68 <reg_update>
201003c0:	2334      	movs	r3, #52	; 0x34
201003c2:	18fb      	adds	r3, r7, r3
201003c4:	68db      	ldr	r3, [r3, #12]
201003c6:	109a      	asrs	r2, r3, #2
201003c8:	2350      	movs	r3, #80	; 0x50
201003ca:	18fb      	adds	r3, r7, r3
201003cc:	601a      	str	r2, [r3, #0]
201003ce:	2324      	movs	r3, #36	; 0x24
201003d0:	18fb      	adds	r3, r7, r3
201003d2:	68db      	ldr	r3, [r3, #12]
201003d4:	109a      	asrs	r2, r3, #2
201003d6:	2350      	movs	r3, #80	; 0x50
201003d8:	18fb      	adds	r3, r7, r3
201003da:	605a      	str	r2, [r3, #4]
201003dc:	6fba      	ldr	r2, [r7, #120]	; 0x78
201003de:	2350      	movs	r3, #80	; 0x50
201003e0:	18f9      	adds	r1, r7, r3
201003e2:	2344      	movs	r3, #68	; 0x44
201003e4:	18fb      	adds	r3, r7, r3
201003e6:	0018      	movs	r0, r3
201003e8:	f000 fcb6 	bl	20100d58 <svpwm>
201003ec:	0003      	movs	r3, r0
201003ee:	2288      	movs	r2, #136	; 0x88
201003f0:	18ba      	adds	r2, r7, r2
201003f2:	6013      	str	r3, [r2, #0]
201003f4:	4a25      	ldr	r2, [pc, #148]	; (2010048c <main+0x48c>)
201003f6:	2344      	movs	r3, #68	; 0x44
201003f8:	18fb      	adds	r3, r7, r3
201003fa:	681b      	ldr	r3, [r3, #0]
201003fc:	2180      	movs	r1, #128	; 0x80
201003fe:	0089      	lsls	r1, r1, #2
20100400:	468c      	mov	ip, r1
20100402:	4463      	add	r3, ip
20100404:	6113      	str	r3, [r2, #16]
20100406:	4a21      	ldr	r2, [pc, #132]	; (2010048c <main+0x48c>)
20100408:	2344      	movs	r3, #68	; 0x44
2010040a:	18fb      	adds	r3, r7, r3
2010040c:	685b      	ldr	r3, [r3, #4]
2010040e:	2180      	movs	r1, #128	; 0x80
20100410:	0089      	lsls	r1, r1, #2
20100412:	468c      	mov	ip, r1
20100414:	4463      	add	r3, ip
20100416:	6153      	str	r3, [r2, #20]
20100418:	4a1c      	ldr	r2, [pc, #112]	; (2010048c <main+0x48c>)
2010041a:	2344      	movs	r3, #68	; 0x44
2010041c:	18fb      	adds	r3, r7, r3
2010041e:	689b      	ldr	r3, [r3, #8]
20100420:	2180      	movs	r1, #128	; 0x80
20100422:	0089      	lsls	r1, r1, #2
20100424:	468c      	mov	ip, r1
20100426:	4463      	add	r3, ip
20100428:	6193      	str	r3, [r2, #24]
2010042a:	e6c9      	b.n	201001c0 <main+0x1c0>
2010042c:	400a0000 	.word	0x400a0000
20100430:	00000555 	.word	0x00000555
20100434:	00000004 	.word	0x00000004
20100438:	ffefff86 	.word	0xffefff86
2010043c:	ffefff7c 	.word	0xffefff7c
20100440:	ffefff6a 	.word	0xffefff6a
20100444:	ffefff60 	.word	0xffefff60
20100448:	000003ff 	.word	0x000003ff
2010044c:	ffefff0a 	.word	0xffefff0a
20100450:	ffefff02 	.word	0xffefff02
20100454:	ffeffefc 	.word	0xffeffefc
20100458:	ffeffef2 	.word	0xffeffef2
2010045c:	ffeffef4 	.word	0xffeffef4
20100460:	ffeffeec 	.word	0xffeffeec
20100464:	400b8000 	.word	0x400b8000
20100468:	ffeffe7e 	.word	0xffeffe7e
2010046c:	ffeffe48 	.word	0xffeffe48
20100470:	ffeffdee 	.word	0xffeffdee
20100474:	fffffc18 	.word	0xfffffc18
20100478:	40090000 	.word	0x40090000
2010047c:	ffeffd90 	.word	0xffeffd90
20100480:	ffeffd72 	.word	0xffeffd72
20100484:	ffeffd70 	.word	0xffeffd70
20100488:	ffeffd56 	.word	0xffeffd56
2010048c:	40098000 	.word	0x40098000

20100490 <sleep>:
20100490:	b580      	push	{r7, lr}
20100492:	b084      	sub	sp, #16
20100494:	af00      	add	r7, sp, #0
20100496:	6078      	str	r0, [r7, #4]
20100498:	2300      	movs	r3, #0
2010049a:	60fb      	str	r3, [r7, #12]
2010049c:	e00b      	b.n	201004b6 <sleep+0x26>
2010049e:	46c0      	nop			; (mov r8, r8)
201004a0:	4b09      	ldr	r3, [pc, #36]	; (201004c8 <sleep+0x38>)
201004a2:	6d5b      	ldr	r3, [r3, #84]	; 0x54
201004a4:	2202      	movs	r2, #2
201004a6:	4013      	ands	r3, r2
201004a8:	d0fa      	beq.n	201004a0 <sleep+0x10>
201004aa:	4b07      	ldr	r3, [pc, #28]	; (201004c8 <sleep+0x38>)
201004ac:	2200      	movs	r2, #0
201004ae:	655a      	str	r2, [r3, #84]	; 0x54
201004b0:	68fb      	ldr	r3, [r7, #12]
201004b2:	3301      	adds	r3, #1
201004b4:	60fb      	str	r3, [r7, #12]
201004b6:	68fa      	ldr	r2, [r7, #12]
201004b8:	687b      	ldr	r3, [r7, #4]
201004ba:	429a      	cmp	r2, r3
201004bc:	d3ef      	bcc.n	2010049e <sleep+0xe>
201004be:	46c0      	nop			; (mov r8, r8)
201004c0:	0018      	movs	r0, r3
201004c2:	46bd      	mov	sp, r7
201004c4:	b004      	add	sp, #16
201004c6:	bd80      	pop	{r7, pc}
201004c8:	40098000 	.word	0x40098000

201004cc <PortConfig>:
201004cc:	b580      	push	{r7, lr}
201004ce:	af00      	add	r7, sp, #0
201004d0:	4b50      	ldr	r3, [pc, #320]	; (20100614 <PortConfig+0x148>)
201004d2:	4a50      	ldr	r2, [pc, #320]	; (20100614 <PortConfig+0x148>)
201004d4:	69d2      	ldr	r2, [r2, #28]
201004d6:	2180      	movs	r1, #128	; 0x80
201004d8:	0389      	lsls	r1, r1, #14
201004da:	430a      	orrs	r2, r1
201004dc:	61da      	str	r2, [r3, #28]
201004de:	4b4e      	ldr	r3, [pc, #312]	; (20100618 <PortConfig+0x14c>)
201004e0:	4a4d      	ldr	r2, [pc, #308]	; (20100618 <PortConfig+0x14c>)
201004e2:	6892      	ldr	r2, [r2, #8]
201004e4:	494d      	ldr	r1, [pc, #308]	; (2010061c <PortConfig+0x150>)
201004e6:	400a      	ands	r2, r1
201004e8:	609a      	str	r2, [r3, #8]
201004ea:	4b4b      	ldr	r3, [pc, #300]	; (20100618 <PortConfig+0x14c>)
201004ec:	4a4a      	ldr	r2, [pc, #296]	; (20100618 <PortConfig+0x14c>)
201004ee:	6812      	ldr	r2, [r2, #0]
201004f0:	494b      	ldr	r1, [pc, #300]	; (20100620 <PortConfig+0x154>)
201004f2:	400a      	ands	r2, r1
201004f4:	601a      	str	r2, [r3, #0]
201004f6:	4b48      	ldr	r3, [pc, #288]	; (20100618 <PortConfig+0x14c>)
201004f8:	4a47      	ldr	r2, [pc, #284]	; (20100618 <PortConfig+0x14c>)
201004fa:	6852      	ldr	r2, [r2, #4]
201004fc:	2180      	movs	r1, #128	; 0x80
201004fe:	0209      	lsls	r1, r1, #8
20100500:	430a      	orrs	r2, r1
20100502:	605a      	str	r2, [r3, #4]
20100504:	4b44      	ldr	r3, [pc, #272]	; (20100618 <PortConfig+0x14c>)
20100506:	4a44      	ldr	r2, [pc, #272]	; (20100618 <PortConfig+0x14c>)
20100508:	68d2      	ldr	r2, [r2, #12]
2010050a:	2180      	movs	r1, #128	; 0x80
2010050c:	0209      	lsls	r1, r1, #8
2010050e:	430a      	orrs	r2, r1
20100510:	60da      	str	r2, [r3, #12]
20100512:	4b41      	ldr	r3, [pc, #260]	; (20100618 <PortConfig+0x14c>)
20100514:	4a40      	ldr	r2, [pc, #256]	; (20100618 <PortConfig+0x14c>)
20100516:	6992      	ldr	r2, [r2, #24]
20100518:	21c0      	movs	r1, #192	; 0xc0
2010051a:	0609      	lsls	r1, r1, #24
2010051c:	430a      	orrs	r2, r1
2010051e:	619a      	str	r2, [r3, #24]
20100520:	4b3d      	ldr	r3, [pc, #244]	; (20100618 <PortConfig+0x14c>)
20100522:	4a3d      	ldr	r2, [pc, #244]	; (20100618 <PortConfig+0x14c>)
20100524:	6892      	ldr	r2, [r2, #8]
20100526:	493f      	ldr	r1, [pc, #252]	; (20100624 <PortConfig+0x158>)
20100528:	430a      	orrs	r2, r1
2010052a:	609a      	str	r2, [r3, #8]
2010052c:	4b3a      	ldr	r3, [pc, #232]	; (20100618 <PortConfig+0x14c>)
2010052e:	4a3a      	ldr	r2, [pc, #232]	; (20100618 <PortConfig+0x14c>)
20100530:	6852      	ldr	r2, [r2, #4]
20100532:	21fc      	movs	r1, #252	; 0xfc
20100534:	0109      	lsls	r1, r1, #4
20100536:	430a      	orrs	r2, r1
20100538:	605a      	str	r2, [r3, #4]
2010053a:	4b37      	ldr	r3, [pc, #220]	; (20100618 <PortConfig+0x14c>)
2010053c:	4a36      	ldr	r2, [pc, #216]	; (20100618 <PortConfig+0x14c>)
2010053e:	68d2      	ldr	r2, [r2, #12]
20100540:	21fc      	movs	r1, #252	; 0xfc
20100542:	0109      	lsls	r1, r1, #4
20100544:	430a      	orrs	r2, r1
20100546:	60da      	str	r2, [r3, #12]
20100548:	4b33      	ldr	r3, [pc, #204]	; (20100618 <PortConfig+0x14c>)
2010054a:	4a33      	ldr	r2, [pc, #204]	; (20100618 <PortConfig+0x14c>)
2010054c:	6992      	ldr	r2, [r2, #24]
2010054e:	4936      	ldr	r1, [pc, #216]	; (20100628 <PortConfig+0x15c>)
20100550:	430a      	orrs	r2, r1
20100552:	619a      	str	r2, [r3, #24]
20100554:	4b2f      	ldr	r3, [pc, #188]	; (20100614 <PortConfig+0x148>)
20100556:	4a2f      	ldr	r2, [pc, #188]	; (20100614 <PortConfig+0x148>)
20100558:	69d2      	ldr	r2, [r2, #28]
2010055a:	2180      	movs	r1, #128	; 0x80
2010055c:	0489      	lsls	r1, r1, #18
2010055e:	430a      	orrs	r2, r1
20100560:	61da      	str	r2, [r3, #28]
20100562:	4b32      	ldr	r3, [pc, #200]	; (2010062c <PortConfig+0x160>)
20100564:	4a31      	ldr	r2, [pc, #196]	; (2010062c <PortConfig+0x160>)
20100566:	68d2      	ldr	r2, [r2, #12]
20100568:	2102      	movs	r1, #2
2010056a:	438a      	bics	r2, r1
2010056c:	60da      	str	r2, [r3, #12]
2010056e:	4b29      	ldr	r3, [pc, #164]	; (20100614 <PortConfig+0x148>)
20100570:	4a28      	ldr	r2, [pc, #160]	; (20100614 <PortConfig+0x148>)
20100572:	69d2      	ldr	r2, [r2, #28]
20100574:	2180      	movs	r1, #128	; 0x80
20100576:	0449      	lsls	r1, r1, #17
20100578:	430a      	orrs	r2, r1
2010057a:	61da      	str	r2, [r3, #28]
2010057c:	4b2c      	ldr	r3, [pc, #176]	; (20100630 <PortConfig+0x164>)
2010057e:	4a2c      	ldr	r2, [pc, #176]	; (20100630 <PortConfig+0x164>)
20100580:	6892      	ldr	r2, [r2, #8]
20100582:	492c      	ldr	r1, [pc, #176]	; (20100634 <PortConfig+0x168>)
20100584:	400a      	ands	r2, r1
20100586:	609a      	str	r2, [r3, #8]
20100588:	4b29      	ldr	r3, [pc, #164]	; (20100630 <PortConfig+0x164>)
2010058a:	4a29      	ldr	r2, [pc, #164]	; (20100630 <PortConfig+0x164>)
2010058c:	6892      	ldr	r2, [r2, #8]
2010058e:	21a0      	movs	r1, #160	; 0xa0
20100590:	02c9      	lsls	r1, r1, #11
20100592:	430a      	orrs	r2, r1
20100594:	609a      	str	r2, [r3, #8]
20100596:	4b26      	ldr	r3, [pc, #152]	; (20100630 <PortConfig+0x164>)
20100598:	4a25      	ldr	r2, [pc, #148]	; (20100630 <PortConfig+0x164>)
2010059a:	68d2      	ldr	r2, [r2, #12]
2010059c:	21c0      	movs	r1, #192	; 0xc0
2010059e:	0089      	lsls	r1, r1, #2
201005a0:	430a      	orrs	r2, r1
201005a2:	60da      	str	r2, [r3, #12]
201005a4:	4b22      	ldr	r3, [pc, #136]	; (20100630 <PortConfig+0x164>)
201005a6:	4a22      	ldr	r2, [pc, #136]	; (20100630 <PortConfig+0x164>)
201005a8:	6992      	ldr	r2, [r2, #24]
201005aa:	21c0      	movs	r1, #192	; 0xc0
201005ac:	0309      	lsls	r1, r1, #12
201005ae:	430a      	orrs	r2, r1
201005b0:	619a      	str	r2, [r3, #24]
201005b2:	4b1f      	ldr	r3, [pc, #124]	; (20100630 <PortConfig+0x164>)
201005b4:	4a1e      	ldr	r2, [pc, #120]	; (20100630 <PortConfig+0x164>)
201005b6:	6852      	ldr	r2, [r2, #4]
201005b8:	2180      	movs	r1, #128	; 0x80
201005ba:	0089      	lsls	r1, r1, #2
201005bc:	430a      	orrs	r2, r1
201005be:	605a      	str	r2, [r3, #4]
201005c0:	4b1b      	ldr	r3, [pc, #108]	; (20100630 <PortConfig+0x164>)
201005c2:	4a1b      	ldr	r2, [pc, #108]	; (20100630 <PortConfig+0x164>)
201005c4:	6852      	ldr	r2, [r2, #4]
201005c6:	491c      	ldr	r1, [pc, #112]	; (20100638 <PortConfig+0x16c>)
201005c8:	400a      	ands	r2, r1
201005ca:	605a      	str	r2, [r3, #4]
201005cc:	4b11      	ldr	r3, [pc, #68]	; (20100614 <PortConfig+0x148>)
201005ce:	4a11      	ldr	r2, [pc, #68]	; (20100614 <PortConfig+0x148>)
201005d0:	69d2      	ldr	r2, [r2, #28]
201005d2:	2180      	movs	r1, #128	; 0x80
201005d4:	0409      	lsls	r1, r1, #16
201005d6:	430a      	orrs	r2, r1
201005d8:	61da      	str	r2, [r3, #28]
201005da:	4b18      	ldr	r3, [pc, #96]	; (2010063c <PortConfig+0x170>)
201005dc:	2200      	movs	r2, #0
201005de:	609a      	str	r2, [r3, #8]
201005e0:	4b16      	ldr	r3, [pc, #88]	; (2010063c <PortConfig+0x170>)
201005e2:	2200      	movs	r2, #0
201005e4:	601a      	str	r2, [r3, #0]
201005e6:	4b15      	ldr	r3, [pc, #84]	; (2010063c <PortConfig+0x170>)
201005e8:	4a14      	ldr	r2, [pc, #80]	; (2010063c <PortConfig+0x170>)
201005ea:	6852      	ldr	r2, [r2, #4]
201005ec:	2160      	movs	r1, #96	; 0x60
201005ee:	430a      	orrs	r2, r1
201005f0:	605a      	str	r2, [r3, #4]
201005f2:	4b12      	ldr	r3, [pc, #72]	; (2010063c <PortConfig+0x170>)
201005f4:	4a11      	ldr	r2, [pc, #68]	; (2010063c <PortConfig+0x170>)
201005f6:	68d2      	ldr	r2, [r2, #12]
201005f8:	2160      	movs	r1, #96	; 0x60
201005fa:	430a      	orrs	r2, r1
201005fc:	60da      	str	r2, [r3, #12]
201005fe:	4b0f      	ldr	r3, [pc, #60]	; (2010063c <PortConfig+0x170>)
20100600:	4a0e      	ldr	r2, [pc, #56]	; (2010063c <PortConfig+0x170>)
20100602:	6992      	ldr	r2, [r2, #24]
20100604:	21f0      	movs	r1, #240	; 0xf0
20100606:	0189      	lsls	r1, r1, #6
20100608:	430a      	orrs	r2, r1
2010060a:	619a      	str	r2, [r3, #24]
2010060c:	46c0      	nop			; (mov r8, r8)
2010060e:	46bd      	mov	sp, r7
20100610:	bd80      	pop	{r7, pc}
20100612:	46c0      	nop			; (mov r8, r8)
20100614:	40020000 	.word	0x40020000
20100618:	400a8000 	.word	0x400a8000
2010061c:	ff000fff 	.word	0xff000fff
20100620:	ffff7fff 	.word	0xffff7fff
20100624:	00aaa000 	.word	0x00aaa000
20100628:	00fff000 	.word	0x00fff000
2010062c:	400c8000 	.word	0x400c8000
20100630:	400c0000 	.word	0x400c0000
20100634:	fff0ffff 	.word	0xfff0ffff
20100638:	fffffeff 	.word	0xfffffeff
2010063c:	400b8000 	.word	0x400b8000

20100640 <ClkConfig>:
20100640:	b580      	push	{r7, lr}
20100642:	af00      	add	r7, sp, #0
20100644:	4b18      	ldr	r3, [pc, #96]	; (201006a8 <ClkConfig+0x68>)
20100646:	4a18      	ldr	r2, [pc, #96]	; (201006a8 <ClkConfig+0x68>)
20100648:	6892      	ldr	r2, [r2, #8]
2010064a:	2101      	movs	r1, #1
2010064c:	430a      	orrs	r2, r1
2010064e:	609a      	str	r2, [r3, #8]
20100650:	46c0      	nop			; (mov r8, r8)
20100652:	4b15      	ldr	r3, [pc, #84]	; (201006a8 <ClkConfig+0x68>)
20100654:	681b      	ldr	r3, [r3, #0]
20100656:	2204      	movs	r2, #4
20100658:	4013      	ands	r3, r2
2010065a:	d0fa      	beq.n	20100652 <ClkConfig+0x12>
2010065c:	4b12      	ldr	r3, [pc, #72]	; (201006a8 <ClkConfig+0x68>)
2010065e:	4a12      	ldr	r2, [pc, #72]	; (201006a8 <ClkConfig+0x68>)
20100660:	68d2      	ldr	r2, [r2, #12]
20100662:	2102      	movs	r1, #2
20100664:	430a      	orrs	r2, r1
20100666:	60da      	str	r2, [r3, #12]
20100668:	4b0f      	ldr	r3, [pc, #60]	; (201006a8 <ClkConfig+0x68>)
2010066a:	4a10      	ldr	r2, [pc, #64]	; (201006ac <ClkConfig+0x6c>)
2010066c:	605a      	str	r2, [r3, #4]
2010066e:	46c0      	nop			; (mov r8, r8)
20100670:	4b0d      	ldr	r3, [pc, #52]	; (201006a8 <ClkConfig+0x68>)
20100672:	681b      	ldr	r3, [r3, #0]
20100674:	2202      	movs	r2, #2
20100676:	4013      	ands	r3, r2
20100678:	d0fa      	beq.n	20100670 <ClkConfig+0x30>
2010067a:	4b0d      	ldr	r3, [pc, #52]	; (201006b0 <ClkConfig+0x70>)
2010067c:	4a0c      	ldr	r2, [pc, #48]	; (201006b0 <ClkConfig+0x70>)
2010067e:	6812      	ldr	r2, [r2, #0]
20100680:	2120      	movs	r1, #32
20100682:	430a      	orrs	r2, r1
20100684:	601a      	str	r2, [r3, #0]
20100686:	4b08      	ldr	r3, [pc, #32]	; (201006a8 <ClkConfig+0x68>)
20100688:	4a07      	ldr	r2, [pc, #28]	; (201006a8 <ClkConfig+0x68>)
2010068a:	68d2      	ldr	r2, [r2, #12]
2010068c:	2180      	movs	r1, #128	; 0x80
2010068e:	0049      	lsls	r1, r1, #1
20100690:	430a      	orrs	r2, r1
20100692:	60da      	str	r2, [r3, #12]
20100694:	4b04      	ldr	r3, [pc, #16]	; (201006a8 <ClkConfig+0x68>)
20100696:	4a04      	ldr	r2, [pc, #16]	; (201006a8 <ClkConfig+0x68>)
20100698:	68d2      	ldr	r2, [r2, #12]
2010069a:	2104      	movs	r1, #4
2010069c:	430a      	orrs	r2, r1
2010069e:	60da      	str	r2, [r3, #12]
201006a0:	46c0      	nop			; (mov r8, r8)
201006a2:	46bd      	mov	sp, r7
201006a4:	bd80      	pop	{r7, pc}
201006a6:	46c0      	nop			; (mov r8, r8)
201006a8:	40020000 	.word	0x40020000
201006ac:	00000e04 	.word	0x00000e04
201006b0:	40018000 	.word	0x40018000

201006b4 <TimerConfig>:
201006b4:	b580      	push	{r7, lr}
201006b6:	af00      	add	r7, sp, #0
201006b8:	4b7a      	ldr	r3, [pc, #488]	; (201008a4 <TimerConfig+0x1f0>)
201006ba:	4a7a      	ldr	r2, [pc, #488]	; (201008a4 <TimerConfig+0x1f0>)
201006bc:	69d2      	ldr	r2, [r2, #28]
201006be:	2180      	movs	r1, #128	; 0x80
201006c0:	0309      	lsls	r1, r1, #12
201006c2:	430a      	orrs	r2, r1
201006c4:	61da      	str	r2, [r3, #28]
201006c6:	4b77      	ldr	r3, [pc, #476]	; (201008a4 <TimerConfig+0x1f0>)
201006c8:	4a76      	ldr	r2, [pc, #472]	; (201008a4 <TimerConfig+0x1f0>)
201006ca:	6a92      	ldr	r2, [r2, #40]	; 0x28
201006cc:	2180      	movs	r1, #128	; 0x80
201006ce:	04c9      	lsls	r1, r1, #19
201006d0:	430a      	orrs	r2, r1
201006d2:	629a      	str	r2, [r3, #40]	; 0x28
201006d4:	4b73      	ldr	r3, [pc, #460]	; (201008a4 <TimerConfig+0x1f0>)
201006d6:	4a73      	ldr	r2, [pc, #460]	; (201008a4 <TimerConfig+0x1f0>)
201006d8:	6a92      	ldr	r2, [r2, #40]	; 0x28
201006da:	4973      	ldr	r1, [pc, #460]	; (201008a8 <TimerConfig+0x1f4>)
201006dc:	400a      	ands	r2, r1
201006de:	629a      	str	r2, [r3, #40]	; 0x28
201006e0:	4b72      	ldr	r3, [pc, #456]	; (201008ac <TimerConfig+0x1f8>)
201006e2:	2200      	movs	r2, #0
201006e4:	601a      	str	r2, [r3, #0]
201006e6:	4b71      	ldr	r3, [pc, #452]	; (201008ac <TimerConfig+0x1f8>)
201006e8:	2204      	movs	r2, #4
201006ea:	605a      	str	r2, [r3, #4]
201006ec:	4b6f      	ldr	r3, [pc, #444]	; (201008ac <TimerConfig+0x1f8>)
201006ee:	4a70      	ldr	r2, [pc, #448]	; (201008b0 <TimerConfig+0x1fc>)
201006f0:	609a      	str	r2, [r3, #8]
201006f2:	4b6e      	ldr	r3, [pc, #440]	; (201008ac <TimerConfig+0x1f8>)
201006f4:	2280      	movs	r2, #128	; 0x80
201006f6:	0092      	lsls	r2, r2, #2
201006f8:	611a      	str	r2, [r3, #16]
201006fa:	4b6c      	ldr	r3, [pc, #432]	; (201008ac <TimerConfig+0x1f8>)
201006fc:	2280      	movs	r2, #128	; 0x80
201006fe:	0092      	lsls	r2, r2, #2
20100700:	615a      	str	r2, [r3, #20]
20100702:	4b6a      	ldr	r3, [pc, #424]	; (201008ac <TimerConfig+0x1f8>)
20100704:	2280      	movs	r2, #128	; 0x80
20100706:	0092      	lsls	r2, r2, #2
20100708:	619a      	str	r2, [r3, #24]
2010070a:	4b68      	ldr	r3, [pc, #416]	; (201008ac <TimerConfig+0x1f8>)
2010070c:	4a67      	ldr	r2, [pc, #412]	; (201008ac <TimerConfig+0x1f8>)
2010070e:	6a12      	ldr	r2, [r2, #32]
20100710:	4968      	ldr	r1, [pc, #416]	; (201008b4 <TimerConfig+0x200>)
20100712:	400a      	ands	r2, r1
20100714:	621a      	str	r2, [r3, #32]
20100716:	4b65      	ldr	r3, [pc, #404]	; (201008ac <TimerConfig+0x1f8>)
20100718:	4a64      	ldr	r2, [pc, #400]	; (201008ac <TimerConfig+0x1f8>)
2010071a:	6a12      	ldr	r2, [r2, #32]
2010071c:	21e0      	movs	r1, #224	; 0xe0
2010071e:	0109      	lsls	r1, r1, #4
20100720:	430a      	orrs	r2, r1
20100722:	621a      	str	r2, [r3, #32]
20100724:	4b61      	ldr	r3, [pc, #388]	; (201008ac <TimerConfig+0x1f8>)
20100726:	4a61      	ldr	r2, [pc, #388]	; (201008ac <TimerConfig+0x1f8>)
20100728:	6b12      	ldr	r2, [r2, #48]	; 0x30
2010072a:	210f      	movs	r1, #15
2010072c:	438a      	bics	r2, r1
2010072e:	631a      	str	r2, [r3, #48]	; 0x30
20100730:	4b5e      	ldr	r3, [pc, #376]	; (201008ac <TimerConfig+0x1f8>)
20100732:	4a5e      	ldr	r2, [pc, #376]	; (201008ac <TimerConfig+0x1f8>)
20100734:	6b12      	ldr	r2, [r2, #48]	; 0x30
20100736:	210c      	movs	r1, #12
20100738:	430a      	orrs	r2, r1
2010073a:	631a      	str	r2, [r3, #48]	; 0x30
2010073c:	4b5b      	ldr	r3, [pc, #364]	; (201008ac <TimerConfig+0x1f8>)
2010073e:	4a5b      	ldr	r2, [pc, #364]	; (201008ac <TimerConfig+0x1f8>)
20100740:	6b12      	ldr	r2, [r2, #48]	; 0x30
20100742:	2101      	movs	r1, #1
20100744:	430a      	orrs	r2, r1
20100746:	631a      	str	r2, [r3, #48]	; 0x30
20100748:	4b58      	ldr	r3, [pc, #352]	; (201008ac <TimerConfig+0x1f8>)
2010074a:	4a58      	ldr	r2, [pc, #352]	; (201008ac <TimerConfig+0x1f8>)
2010074c:	6b12      	ldr	r2, [r2, #48]	; 0x30
2010074e:	495a      	ldr	r1, [pc, #360]	; (201008b8 <TimerConfig+0x204>)
20100750:	400a      	ands	r2, r1
20100752:	631a      	str	r2, [r3, #48]	; 0x30
20100754:	4b55      	ldr	r3, [pc, #340]	; (201008ac <TimerConfig+0x1f8>)
20100756:	4a55      	ldr	r2, [pc, #340]	; (201008ac <TimerConfig+0x1f8>)
20100758:	6b12      	ldr	r2, [r2, #48]	; 0x30
2010075a:	21c0      	movs	r1, #192	; 0xc0
2010075c:	0109      	lsls	r1, r1, #4
2010075e:	430a      	orrs	r2, r1
20100760:	631a      	str	r2, [r3, #48]	; 0x30
20100762:	4b52      	ldr	r3, [pc, #328]	; (201008ac <TimerConfig+0x1f8>)
20100764:	4a51      	ldr	r2, [pc, #324]	; (201008ac <TimerConfig+0x1f8>)
20100766:	6b12      	ldr	r2, [r2, #48]	; 0x30
20100768:	2180      	movs	r1, #128	; 0x80
2010076a:	0049      	lsls	r1, r1, #1
2010076c:	430a      	orrs	r2, r1
2010076e:	631a      	str	r2, [r3, #48]	; 0x30
20100770:	4b4e      	ldr	r3, [pc, #312]	; (201008ac <TimerConfig+0x1f8>)
20100772:	4a4e      	ldr	r2, [pc, #312]	; (201008ac <TimerConfig+0x1f8>)
20100774:	6e12      	ldr	r2, [r2, #96]	; 0x60
20100776:	2108      	movs	r1, #8
20100778:	430a      	orrs	r2, r1
2010077a:	661a      	str	r2, [r3, #96]	; 0x60
2010077c:	4b4b      	ldr	r3, [pc, #300]	; (201008ac <TimerConfig+0x1f8>)
2010077e:	4a4b      	ldr	r2, [pc, #300]	; (201008ac <TimerConfig+0x1f8>)
20100780:	6a52      	ldr	r2, [r2, #36]	; 0x24
20100782:	494c      	ldr	r1, [pc, #304]	; (201008b4 <TimerConfig+0x200>)
20100784:	400a      	ands	r2, r1
20100786:	625a      	str	r2, [r3, #36]	; 0x24
20100788:	4b48      	ldr	r3, [pc, #288]	; (201008ac <TimerConfig+0x1f8>)
2010078a:	4a48      	ldr	r2, [pc, #288]	; (201008ac <TimerConfig+0x1f8>)
2010078c:	6a52      	ldr	r2, [r2, #36]	; 0x24
2010078e:	21e0      	movs	r1, #224	; 0xe0
20100790:	0109      	lsls	r1, r1, #4
20100792:	430a      	orrs	r2, r1
20100794:	625a      	str	r2, [r3, #36]	; 0x24
20100796:	4b45      	ldr	r3, [pc, #276]	; (201008ac <TimerConfig+0x1f8>)
20100798:	4a44      	ldr	r2, [pc, #272]	; (201008ac <TimerConfig+0x1f8>)
2010079a:	6b52      	ldr	r2, [r2, #52]	; 0x34
2010079c:	210f      	movs	r1, #15
2010079e:	438a      	bics	r2, r1
201007a0:	635a      	str	r2, [r3, #52]	; 0x34
201007a2:	4b42      	ldr	r3, [pc, #264]	; (201008ac <TimerConfig+0x1f8>)
201007a4:	4a41      	ldr	r2, [pc, #260]	; (201008ac <TimerConfig+0x1f8>)
201007a6:	6b52      	ldr	r2, [r2, #52]	; 0x34
201007a8:	210c      	movs	r1, #12
201007aa:	430a      	orrs	r2, r1
201007ac:	635a      	str	r2, [r3, #52]	; 0x34
201007ae:	4b3f      	ldr	r3, [pc, #252]	; (201008ac <TimerConfig+0x1f8>)
201007b0:	4a3e      	ldr	r2, [pc, #248]	; (201008ac <TimerConfig+0x1f8>)
201007b2:	6b52      	ldr	r2, [r2, #52]	; 0x34
201007b4:	2101      	movs	r1, #1
201007b6:	430a      	orrs	r2, r1
201007b8:	635a      	str	r2, [r3, #52]	; 0x34
201007ba:	4b3c      	ldr	r3, [pc, #240]	; (201008ac <TimerConfig+0x1f8>)
201007bc:	4a3b      	ldr	r2, [pc, #236]	; (201008ac <TimerConfig+0x1f8>)
201007be:	6b52      	ldr	r2, [r2, #52]	; 0x34
201007c0:	493d      	ldr	r1, [pc, #244]	; (201008b8 <TimerConfig+0x204>)
201007c2:	400a      	ands	r2, r1
201007c4:	635a      	str	r2, [r3, #52]	; 0x34
201007c6:	4b39      	ldr	r3, [pc, #228]	; (201008ac <TimerConfig+0x1f8>)
201007c8:	4a38      	ldr	r2, [pc, #224]	; (201008ac <TimerConfig+0x1f8>)
201007ca:	6b52      	ldr	r2, [r2, #52]	; 0x34
201007cc:	21c0      	movs	r1, #192	; 0xc0
201007ce:	0109      	lsls	r1, r1, #4
201007d0:	430a      	orrs	r2, r1
201007d2:	635a      	str	r2, [r3, #52]	; 0x34
201007d4:	4b35      	ldr	r3, [pc, #212]	; (201008ac <TimerConfig+0x1f8>)
201007d6:	4a35      	ldr	r2, [pc, #212]	; (201008ac <TimerConfig+0x1f8>)
201007d8:	6b52      	ldr	r2, [r2, #52]	; 0x34
201007da:	2180      	movs	r1, #128	; 0x80
201007dc:	0049      	lsls	r1, r1, #1
201007de:	430a      	orrs	r2, r1
201007e0:	635a      	str	r2, [r3, #52]	; 0x34
201007e2:	4b32      	ldr	r3, [pc, #200]	; (201008ac <TimerConfig+0x1f8>)
201007e4:	4a31      	ldr	r2, [pc, #196]	; (201008ac <TimerConfig+0x1f8>)
201007e6:	6e52      	ldr	r2, [r2, #100]	; 0x64
201007e8:	2108      	movs	r1, #8
201007ea:	430a      	orrs	r2, r1
201007ec:	665a      	str	r2, [r3, #100]	; 0x64
201007ee:	4b2f      	ldr	r3, [pc, #188]	; (201008ac <TimerConfig+0x1f8>)
201007f0:	4a2e      	ldr	r2, [pc, #184]	; (201008ac <TimerConfig+0x1f8>)
201007f2:	6a92      	ldr	r2, [r2, #40]	; 0x28
201007f4:	492f      	ldr	r1, [pc, #188]	; (201008b4 <TimerConfig+0x200>)
201007f6:	400a      	ands	r2, r1
201007f8:	629a      	str	r2, [r3, #40]	; 0x28
201007fa:	4b2c      	ldr	r3, [pc, #176]	; (201008ac <TimerConfig+0x1f8>)
201007fc:	4a2b      	ldr	r2, [pc, #172]	; (201008ac <TimerConfig+0x1f8>)
201007fe:	6a92      	ldr	r2, [r2, #40]	; 0x28
20100800:	21e0      	movs	r1, #224	; 0xe0
20100802:	0109      	lsls	r1, r1, #4
20100804:	430a      	orrs	r2, r1
20100806:	629a      	str	r2, [r3, #40]	; 0x28
20100808:	4b28      	ldr	r3, [pc, #160]	; (201008ac <TimerConfig+0x1f8>)
2010080a:	4a28      	ldr	r2, [pc, #160]	; (201008ac <TimerConfig+0x1f8>)
2010080c:	6b92      	ldr	r2, [r2, #56]	; 0x38
2010080e:	210f      	movs	r1, #15
20100810:	438a      	bics	r2, r1
20100812:	639a      	str	r2, [r3, #56]	; 0x38
20100814:	4b25      	ldr	r3, [pc, #148]	; (201008ac <TimerConfig+0x1f8>)
20100816:	4a25      	ldr	r2, [pc, #148]	; (201008ac <TimerConfig+0x1f8>)
20100818:	6b92      	ldr	r2, [r2, #56]	; 0x38
2010081a:	210c      	movs	r1, #12
2010081c:	430a      	orrs	r2, r1
2010081e:	639a      	str	r2, [r3, #56]	; 0x38
20100820:	4b22      	ldr	r3, [pc, #136]	; (201008ac <TimerConfig+0x1f8>)
20100822:	4a22      	ldr	r2, [pc, #136]	; (201008ac <TimerConfig+0x1f8>)
20100824:	6b92      	ldr	r2, [r2, #56]	; 0x38
20100826:	2101      	movs	r1, #1
20100828:	430a      	orrs	r2, r1
2010082a:	639a      	str	r2, [r3, #56]	; 0x38
2010082c:	4b1f      	ldr	r3, [pc, #124]	; (201008ac <TimerConfig+0x1f8>)
2010082e:	4a1f      	ldr	r2, [pc, #124]	; (201008ac <TimerConfig+0x1f8>)
20100830:	6b92      	ldr	r2, [r2, #56]	; 0x38
20100832:	4921      	ldr	r1, [pc, #132]	; (201008b8 <TimerConfig+0x204>)
20100834:	400a      	ands	r2, r1
20100836:	639a      	str	r2, [r3, #56]	; 0x38
20100838:	4b1c      	ldr	r3, [pc, #112]	; (201008ac <TimerConfig+0x1f8>)
2010083a:	4a1c      	ldr	r2, [pc, #112]	; (201008ac <TimerConfig+0x1f8>)
2010083c:	6b92      	ldr	r2, [r2, #56]	; 0x38
2010083e:	21c0      	movs	r1, #192	; 0xc0
20100840:	0109      	lsls	r1, r1, #4
20100842:	430a      	orrs	r2, r1
20100844:	639a      	str	r2, [r3, #56]	; 0x38
20100846:	4b19      	ldr	r3, [pc, #100]	; (201008ac <TimerConfig+0x1f8>)
20100848:	4a18      	ldr	r2, [pc, #96]	; (201008ac <TimerConfig+0x1f8>)
2010084a:	6b92      	ldr	r2, [r2, #56]	; 0x38
2010084c:	2180      	movs	r1, #128	; 0x80
2010084e:	0049      	lsls	r1, r1, #1
20100850:	430a      	orrs	r2, r1
20100852:	639a      	str	r2, [r3, #56]	; 0x38
20100854:	4b15      	ldr	r3, [pc, #84]	; (201008ac <TimerConfig+0x1f8>)
20100856:	4a15      	ldr	r2, [pc, #84]	; (201008ac <TimerConfig+0x1f8>)
20100858:	6e92      	ldr	r2, [r2, #104]	; 0x68
2010085a:	2108      	movs	r1, #8
2010085c:	430a      	orrs	r2, r1
2010085e:	669a      	str	r2, [r3, #104]	; 0x68
20100860:	4b12      	ldr	r3, [pc, #72]	; (201008ac <TimerConfig+0x1f8>)
20100862:	4a12      	ldr	r2, [pc, #72]	; (201008ac <TimerConfig+0x1f8>)
20100864:	6c12      	ldr	r2, [r2, #64]	; 0x40
20100866:	2196      	movs	r1, #150	; 0x96
20100868:	0189      	lsls	r1, r1, #6
2010086a:	430a      	orrs	r2, r1
2010086c:	641a      	str	r2, [r3, #64]	; 0x40
2010086e:	4b0f      	ldr	r3, [pc, #60]	; (201008ac <TimerConfig+0x1f8>)
20100870:	4a0e      	ldr	r2, [pc, #56]	; (201008ac <TimerConfig+0x1f8>)
20100872:	6c52      	ldr	r2, [r2, #68]	; 0x44
20100874:	2196      	movs	r1, #150	; 0x96
20100876:	0189      	lsls	r1, r1, #6
20100878:	430a      	orrs	r2, r1
2010087a:	645a      	str	r2, [r3, #68]	; 0x44
2010087c:	4b0b      	ldr	r3, [pc, #44]	; (201008ac <TimerConfig+0x1f8>)
2010087e:	4a0b      	ldr	r2, [pc, #44]	; (201008ac <TimerConfig+0x1f8>)
20100880:	6c92      	ldr	r2, [r2, #72]	; 0x48
20100882:	2196      	movs	r1, #150	; 0x96
20100884:	0189      	lsls	r1, r1, #6
20100886:	430a      	orrs	r2, r1
20100888:	649a      	str	r2, [r3, #72]	; 0x48
2010088a:	4b08      	ldr	r3, [pc, #32]	; (201008ac <TimerConfig+0x1f8>)
2010088c:	4a07      	ldr	r2, [pc, #28]	; (201008ac <TimerConfig+0x1f8>)
2010088e:	6d92      	ldr	r2, [r2, #88]	; 0x58
20100890:	21f0      	movs	r1, #240	; 0xf0
20100892:	0149      	lsls	r1, r1, #5
20100894:	430a      	orrs	r2, r1
20100896:	659a      	str	r2, [r3, #88]	; 0x58
20100898:	4b04      	ldr	r3, [pc, #16]	; (201008ac <TimerConfig+0x1f8>)
2010089a:	2201      	movs	r2, #1
2010089c:	60da      	str	r2, [r3, #12]
2010089e:	46c0      	nop			; (mov r8, r8)
201008a0:	46bd      	mov	sp, r7
201008a2:	bd80      	pop	{r7, pc}
201008a4:	40020000 	.word	0x40020000
201008a8:	ff00ffff 	.word	0xff00ffff
201008ac:	40098000 	.word	0x40098000
201008b0:	000003ff 	.word	0x000003ff
201008b4:	fffff1ff 	.word	0xfffff1ff
201008b8:	fffff0ff 	.word	0xfffff0ff

201008bc <adc_init>:
201008bc:	b580      	push	{r7, lr}
201008be:	af00      	add	r7, sp, #0
201008c0:	4b0f      	ldr	r3, [pc, #60]	; (20100900 <adc_init+0x44>)
201008c2:	4a0f      	ldr	r2, [pc, #60]	; (20100900 <adc_init+0x44>)
201008c4:	69d2      	ldr	r2, [r2, #28]
201008c6:	2180      	movs	r1, #128	; 0x80
201008c8:	0289      	lsls	r1, r1, #10
201008ca:	430a      	orrs	r2, r1
201008cc:	61da      	str	r2, [r3, #28]
201008ce:	4b0c      	ldr	r3, [pc, #48]	; (20100900 <adc_init+0x44>)
201008d0:	4a0c      	ldr	r2, [pc, #48]	; (20100904 <adc_init+0x48>)
201008d2:	615a      	str	r2, [r3, #20]
201008d4:	4b0c      	ldr	r3, [pc, #48]	; (20100908 <adc_init+0x4c>)
201008d6:	2200      	movs	r2, #0
201008d8:	601a      	str	r2, [r3, #0]
201008da:	4b0b      	ldr	r3, [pc, #44]	; (20100908 <adc_init+0x4c>)
201008dc:	4a0a      	ldr	r2, [pc, #40]	; (20100908 <adc_init+0x4c>)
201008de:	6812      	ldr	r2, [r2, #0]
201008e0:	490a      	ldr	r1, [pc, #40]	; (2010090c <adc_init+0x50>)
201008e2:	430a      	orrs	r2, r1
201008e4:	601a      	str	r2, [r3, #0]
201008e6:	4b08      	ldr	r3, [pc, #32]	; (20100908 <adc_init+0x4c>)
201008e8:	4a07      	ldr	r2, [pc, #28]	; (20100908 <adc_init+0x4c>)
201008ea:	6a92      	ldr	r2, [r2, #40]	; 0x28
201008ec:	2139      	movs	r1, #57	; 0x39
201008ee:	430a      	orrs	r2, r1
201008f0:	629a      	str	r2, [r3, #40]	; 0x28
201008f2:	4b05      	ldr	r3, [pc, #20]	; (20100908 <adc_init+0x4c>)
201008f4:	2210      	movs	r2, #16
201008f6:	621a      	str	r2, [r3, #32]
201008f8:	46c0      	nop			; (mov r8, r8)
201008fa:	46bd      	mov	sp, r7
201008fc:	bd80      	pop	{r7, pc}
201008fe:	46c0      	nop			; (mov r8, r8)
20100900:	40020000 	.word	0x40020000
20100904:	00002020 	.word	0x00002020
20100908:	40088000 	.word	0x40088000
2010090c:	00000205 	.word	0x00000205

20100910 <dac_init>:
20100910:	b580      	push	{r7, lr}
20100912:	af00      	add	r7, sp, #0
20100914:	4b07      	ldr	r3, [pc, #28]	; (20100934 <dac_init+0x24>)
20100916:	4a07      	ldr	r2, [pc, #28]	; (20100934 <dac_init+0x24>)
20100918:	69d2      	ldr	r2, [r2, #28]
2010091a:	2180      	movs	r1, #128	; 0x80
2010091c:	02c9      	lsls	r1, r1, #11
2010091e:	430a      	orrs	r2, r1
20100920:	61da      	str	r2, [r3, #28]
20100922:	4b05      	ldr	r3, [pc, #20]	; (20100938 <dac_init+0x28>)
20100924:	4a04      	ldr	r2, [pc, #16]	; (20100938 <dac_init+0x28>)
20100926:	6812      	ldr	r2, [r2, #0]
20100928:	2104      	movs	r1, #4
2010092a:	430a      	orrs	r2, r1
2010092c:	601a      	str	r2, [r3, #0]
2010092e:	46c0      	nop			; (mov r8, r8)
20100930:	46bd      	mov	sp, r7
20100932:	bd80      	pop	{r7, pc}
20100934:	40020000 	.word	0x40020000
20100938:	40090000 	.word	0x40090000

2010093c <ssi_init>:
2010093c:	b580      	push	{r7, lr}
2010093e:	af00      	add	r7, sp, #0
20100940:	4b0c      	ldr	r3, [pc, #48]	; (20100974 <ssi_init+0x38>)
20100942:	4a0c      	ldr	r2, [pc, #48]	; (20100974 <ssi_init+0x38>)
20100944:	69d2      	ldr	r2, [r2, #28]
20100946:	2180      	movs	r1, #128	; 0x80
20100948:	0349      	lsls	r1, r1, #13
2010094a:	430a      	orrs	r2, r1
2010094c:	61da      	str	r2, [r3, #28]
2010094e:	4b09      	ldr	r3, [pc, #36]	; (20100974 <ssi_init+0x38>)
20100950:	4a09      	ldr	r2, [pc, #36]	; (20100978 <ssi_init+0x3c>)
20100952:	62da      	str	r2, [r3, #44]	; 0x2c
20100954:	4b09      	ldr	r3, [pc, #36]	; (2010097c <ssi_init+0x40>)
20100956:	2200      	movs	r2, #0
20100958:	605a      	str	r2, [r3, #4]
2010095a:	4b08      	ldr	r3, [pc, #32]	; (2010097c <ssi_init+0x40>)
2010095c:	220a      	movs	r2, #10
2010095e:	611a      	str	r2, [r3, #16]
20100960:	4b06      	ldr	r3, [pc, #24]	; (2010097c <ssi_init+0x40>)
20100962:	4a07      	ldr	r2, [pc, #28]	; (20100980 <ssi_init+0x44>)
20100964:	601a      	str	r2, [r3, #0]
20100966:	4b05      	ldr	r3, [pc, #20]	; (2010097c <ssi_init+0x40>)
20100968:	2202      	movs	r2, #2
2010096a:	605a      	str	r2, [r3, #4]
2010096c:	46c0      	nop			; (mov r8, r8)
2010096e:	46bd      	mov	sp, r7
20100970:	bd80      	pop	{r7, pc}
20100972:	46c0      	nop			; (mov r8, r8)
20100974:	40020000 	.word	0x40020000
20100978:	02000200 	.word	0x02000200
2010097c:	400a0000 	.word	0x400a0000
20100980:	0000021b 	.word	0x0000021b

20100984 <b2g>:
20100984:	b580      	push	{r7, lr}
20100986:	b082      	sub	sp, #8
20100988:	af00      	add	r7, sp, #0
2010098a:	6078      	str	r0, [r7, #4]
2010098c:	687b      	ldr	r3, [r7, #4]
2010098e:	085a      	lsrs	r2, r3, #1
20100990:	687b      	ldr	r3, [r7, #4]
20100992:	4053      	eors	r3, r2
20100994:	0018      	movs	r0, r3
20100996:	46bd      	mov	sp, r7
20100998:	b002      	add	sp, #8
2010099a:	bd80      	pop	{r7, pc}

2010099c <g2b>:
2010099c:	b580      	push	{r7, lr}
2010099e:	b084      	sub	sp, #16
201009a0:	af00      	add	r7, sp, #0
201009a2:	6078      	str	r0, [r7, #4]
201009a4:	2300      	movs	r3, #0
201009a6:	60fb      	str	r3, [r7, #12]
201009a8:	2300      	movs	r3, #0
201009aa:	60fb      	str	r3, [r7, #12]
201009ac:	e006      	b.n	201009bc <g2b+0x20>
201009ae:	68fa      	ldr	r2, [r7, #12]
201009b0:	687b      	ldr	r3, [r7, #4]
201009b2:	4053      	eors	r3, r2
201009b4:	60fb      	str	r3, [r7, #12]
201009b6:	687b      	ldr	r3, [r7, #4]
201009b8:	085b      	lsrs	r3, r3, #1
201009ba:	607b      	str	r3, [r7, #4]
201009bc:	687b      	ldr	r3, [r7, #4]
201009be:	2b00      	cmp	r3, #0
201009c0:	d1f5      	bne.n	201009ae <g2b+0x12>
201009c2:	68fb      	ldr	r3, [r7, #12]
201009c4:	0018      	movs	r0, r3
201009c6:	46bd      	mov	sp, r7
201009c8:	b004      	add	sp, #16
201009ca:	bd80      	pop	{r7, pc}

201009cc <SystemInit>:
201009cc:	b580      	push	{r7, lr}
201009ce:	af00      	add	r7, sp, #0
201009d0:	f7ff fe36 	bl	20100640 <ClkConfig>
201009d4:	f7ff fd7a 	bl	201004cc <PortConfig>
201009d8:	f7ff fe6c 	bl	201006b4 <TimerConfig>
201009dc:	f7ff ff6e 	bl	201008bc <adc_init>
201009e0:	f7ff ff96 	bl	20100910 <dac_init>
201009e4:	f7ff ffaa 	bl	2010093c <ssi_init>
201009e8:	f000 fbae 	bl	20101148 <adc_dma_init>
201009ec:	46c0      	nop			; (mov r8, r8)
201009ee:	46bd      	mov	sp, r7
201009f0:	bd80      	pop	{r7, pc}
201009f2:	46c0      	nop			; (mov r8, r8)

201009f4 <timer_wait>:
201009f4:	b580      	push	{r7, lr}
201009f6:	af00      	add	r7, sp, #0
201009f8:	46c0      	nop			; (mov r8, r8)
201009fa:	4b05      	ldr	r3, [pc, #20]	; (20100a10 <timer_wait+0x1c>)
201009fc:	6d5b      	ldr	r3, [r3, #84]	; 0x54
201009fe:	2202      	movs	r2, #2
20100a00:	4013      	ands	r3, r2
20100a02:	d0fa      	beq.n	201009fa <timer_wait+0x6>
20100a04:	4b02      	ldr	r3, [pc, #8]	; (20100a10 <timer_wait+0x1c>)
20100a06:	2200      	movs	r2, #0
20100a08:	655a      	str	r2, [r3, #84]	; 0x54
20100a0a:	46c0      	nop			; (mov r8, r8)
20100a0c:	46bd      	mov	sp, r7
20100a0e:	bd80      	pop	{r7, pc}
20100a10:	40098000 	.word	0x40098000

20100a14 <mycos>:
20100a14:	4b05      	ldr	r3, [pc, #20]	; (20100a2c <mycos+0x18>)
20100a16:	4a06      	ldr	r2, [pc, #24]	; (20100a30 <mycos+0x1c>)
20100a18:	447b      	add	r3, pc
20100a1a:	0580      	lsls	r0, r0, #22
20100a1c:	589b      	ldr	r3, [r3, r2]
20100a1e:	0d00      	lsrs	r0, r0, #20
20100a20:	58c0      	ldr	r0, [r0, r3]
20100a22:	b082      	sub	sp, #8
20100a24:	9301      	str	r3, [sp, #4]
20100a26:	b002      	add	sp, #8
20100a28:	4770      	bx	lr
20100a2a:	46c0      	nop			; (mov r8, r8)
20100a2c:	ffeff670 	.word	0xffeff670
20100a30:	00000000 	.word	0x00000000

20100a34 <mysin>:
20100a34:	4b07      	ldr	r3, [pc, #28]	; (20100a54 <mysin+0x20>)
20100a36:	4a08      	ldr	r2, [pc, #32]	; (20100a58 <mysin+0x24>)
20100a38:	447b      	add	r3, pc
20100a3a:	589b      	ldr	r3, [r3, r2]
20100a3c:	b082      	sub	sp, #8
20100a3e:	9301      	str	r3, [sp, #4]
20100a40:	23c0      	movs	r3, #192	; 0xc0
20100a42:	009b      	lsls	r3, r3, #2
20100a44:	469c      	mov	ip, r3
20100a46:	4460      	add	r0, ip
20100a48:	9b01      	ldr	r3, [sp, #4]
20100a4a:	0580      	lsls	r0, r0, #22
20100a4c:	0d00      	lsrs	r0, r0, #20
20100a4e:	58c0      	ldr	r0, [r0, r3]
20100a50:	b002      	add	sp, #8
20100a52:	4770      	bx	lr
20100a54:	ffeff650 	.word	0xffeff650
20100a58:	00000000 	.word	0x00000000

20100a5c <reg_init>:
20100a5c:	2300      	movs	r3, #0
20100a5e:	6001      	str	r1, [r0, #0]
20100a60:	6042      	str	r2, [r0, #4]
20100a62:	6083      	str	r3, [r0, #8]
20100a64:	60c3      	str	r3, [r0, #12]
20100a66:	4770      	bx	lr

20100a68 <reg_update>:
20100a68:	b510      	push	{r4, lr}
20100a6a:	6804      	ldr	r4, [r0, #0]
20100a6c:	6883      	ldr	r3, [r0, #8]
20100a6e:	434c      	muls	r4, r1
20100a70:	2a00      	cmp	r2, #0
20100a72:	d004      	beq.n	20100a7e <reg_update+0x16>
20100a74:	2b00      	cmp	r3, #0
20100a76:	dd09      	ble.n	20100a8c <reg_update+0x24>
20100a78:	2c00      	cmp	r4, #0
20100a7a:	dd00      	ble.n	20100a7e <reg_update+0x16>
20100a7c:	2400      	movs	r4, #0
20100a7e:	6842      	ldr	r2, [r0, #4]
20100a80:	18e3      	adds	r3, r4, r3
20100a82:	4351      	muls	r1, r2
20100a84:	18c9      	adds	r1, r1, r3
20100a86:	60c1      	str	r1, [r0, #12]
20100a88:	6083      	str	r3, [r0, #8]
20100a8a:	bd10      	pop	{r4, pc}
20100a8c:	2b00      	cmp	r3, #0
20100a8e:	d0f6      	beq.n	20100a7e <reg_update+0x16>
20100a90:	43e2      	mvns	r2, r4
20100a92:	17d2      	asrs	r2, r2, #31
20100a94:	4014      	ands	r4, r2
20100a96:	e7f2      	b.n	20100a7e <reg_update+0x16>

20100a98 <cord_atan>:
20100a98:	b5f0      	push	{r4, r5, r6, r7, lr}
20100a9a:	4645      	mov	r5, r8
20100a9c:	4657      	mov	r7, sl
20100a9e:	464e      	mov	r6, r9
20100aa0:	b4e0      	push	{r5, r6, r7}
20100aa2:	4b65      	ldr	r3, [pc, #404]	; (20100c38 <cord_atan+0x1a0>)
20100aa4:	b090      	sub	sp, #64	; 0x40
20100aa6:	447b      	add	r3, pc
20100aa8:	001c      	movs	r4, r3
20100aaa:	4694      	mov	ip, r2
20100aac:	466a      	mov	r2, sp
20100aae:	468a      	mov	sl, r1
20100ab0:	cca2      	ldmia	r4!, {r1, r5, r7}
20100ab2:	c2a2      	stmia	r2!, {r1, r5, r7}
20100ab4:	cca2      	ldmia	r4!, {r1, r5, r7}
20100ab6:	c2a2      	stmia	r2!, {r1, r5, r7}
20100ab8:	cc22      	ldmia	r4!, {r1, r5}
20100aba:	c222      	stmia	r2!, {r1, r5}
20100abc:	3320      	adds	r3, #32
20100abe:	aa08      	add	r2, sp, #32
20100ac0:	4690      	mov	r8, r2
20100ac2:	cb32      	ldmia	r3!, {r1, r4, r5}
20100ac4:	c232      	stmia	r2!, {r1, r4, r5}
20100ac6:	cb32      	ldmia	r3!, {r1, r4, r5}
20100ac8:	c232      	stmia	r2!, {r1, r4, r5}
20100aca:	cb12      	ldmia	r3!, {r1, r4}
20100acc:	c212      	stmia	r2!, {r1, r4}
20100ace:	6802      	ldr	r2, [r0, #0]
20100ad0:	6845      	ldr	r5, [r0, #4]
20100ad2:	17d1      	asrs	r1, r2, #31
20100ad4:	1853      	adds	r3, r2, r1
20100ad6:	466e      	mov	r6, sp
20100ad8:	404b      	eors	r3, r1
20100ada:	2d00      	cmp	r5, #0
20100adc:	dd6c      	ble.n	20100bb8 <cord_atan+0x120>
20100ade:	195f      	adds	r7, r3, r5
20100ae0:	1aeb      	subs	r3, r5, r3
20100ae2:	9d00      	ldr	r5, [sp, #0]
20100ae4:	2b00      	cmp	r3, #0
20100ae6:	d100      	bne.n	20100aea <cord_atan+0x52>
20100ae8:	e094      	b.n	20100c14 <cord_atan+0x17c>
20100aea:	105c      	asrs	r4, r3, #1
20100aec:	2b00      	cmp	r3, #0
20100aee:	dd68      	ble.n	20100bc2 <cord_atan+0x12a>
20100af0:	1078      	asrs	r0, r7, #1
20100af2:	1a1b      	subs	r3, r3, r0
20100af4:	6870      	ldr	r0, [r6, #4]
20100af6:	19e4      	adds	r4, r4, r7
20100af8:	4681      	mov	r9, r0
20100afa:	444d      	add	r5, r9
20100afc:	2b00      	cmp	r3, #0
20100afe:	d100      	bne.n	20100b02 <cord_atan+0x6a>
20100b00:	e08a      	b.n	20100c18 <cord_atan+0x180>
20100b02:	1098      	asrs	r0, r3, #2
20100b04:	2b00      	cmp	r3, #0
20100b06:	dd62      	ble.n	20100bce <cord_atan+0x136>
20100b08:	1907      	adds	r7, r0, r4
20100b0a:	10a4      	asrs	r4, r4, #2
20100b0c:	1b18      	subs	r0, r3, r4
20100b0e:	68b3      	ldr	r3, [r6, #8]
20100b10:	4699      	mov	r9, r3
20100b12:	444d      	add	r5, r9
20100b14:	2800      	cmp	r0, #0
20100b16:	d100      	bne.n	20100b1a <cord_atan+0x82>
20100b18:	e081      	b.n	20100c1e <cord_atan+0x186>
20100b1a:	10c3      	asrs	r3, r0, #3
20100b1c:	2800      	cmp	r0, #0
20100b1e:	dd5c      	ble.n	20100bda <cord_atan+0x142>
20100b20:	10fc      	asrs	r4, r7, #3
20100b22:	1b00      	subs	r0, r0, r4
20100b24:	68f4      	ldr	r4, [r6, #12]
20100b26:	19db      	adds	r3, r3, r7
20100b28:	46a1      	mov	r9, r4
20100b2a:	444d      	add	r5, r9
20100b2c:	2800      	cmp	r0, #0
20100b2e:	d100      	bne.n	20100b32 <cord_atan+0x9a>
20100b30:	e077      	b.n	20100c22 <cord_atan+0x18a>
20100b32:	1104      	asrs	r4, r0, #4
20100b34:	2800      	cmp	r0, #0
20100b36:	dd56      	ble.n	20100be6 <cord_atan+0x14e>
20100b38:	18e7      	adds	r7, r4, r3
20100b3a:	111b      	asrs	r3, r3, #4
20100b3c:	1ac4      	subs	r4, r0, r3
20100b3e:	6933      	ldr	r3, [r6, #16]
20100b40:	4699      	mov	r9, r3
20100b42:	444d      	add	r5, r9
20100b44:	2c00      	cmp	r4, #0
20100b46:	d100      	bne.n	20100b4a <cord_atan+0xb2>
20100b48:	e06e      	b.n	20100c28 <cord_atan+0x190>
20100b4a:	1163      	asrs	r3, r4, #5
20100b4c:	2c00      	cmp	r4, #0
20100b4e:	dd50      	ble.n	20100bf2 <cord_atan+0x15a>
20100b50:	1178      	asrs	r0, r7, #5
20100b52:	1a20      	subs	r0, r4, r0
20100b54:	6974      	ldr	r4, [r6, #20]
20100b56:	19db      	adds	r3, r3, r7
20100b58:	46a1      	mov	r9, r4
20100b5a:	444d      	add	r5, r9
20100b5c:	2800      	cmp	r0, #0
20100b5e:	d065      	beq.n	20100c2c <cord_atan+0x194>
20100b60:	1184      	asrs	r4, r0, #6
20100b62:	2800      	cmp	r0, #0
20100b64:	dd4b      	ble.n	20100bfe <cord_atan+0x166>
20100b66:	18e7      	adds	r7, r4, r3
20100b68:	119b      	asrs	r3, r3, #6
20100b6a:	1ac0      	subs	r0, r0, r3
20100b6c:	69b3      	ldr	r3, [r6, #24]
20100b6e:	4699      	mov	r9, r3
20100b70:	444d      	add	r5, r9
20100b72:	2800      	cmp	r0, #0
20100b74:	d05d      	beq.n	20100c32 <cord_atan+0x19a>
20100b76:	dd48      	ble.n	20100c0a <cord_atan+0x172>
20100b78:	69f3      	ldr	r3, [r6, #28]
20100b7a:	11c0      	asrs	r0, r0, #7
20100b7c:	19c7      	adds	r7, r0, r7
20100b7e:	18ed      	adds	r5, r5, r3
20100b80:	2307      	movs	r3, #7
20100b82:	2a00      	cmp	r2, #0
20100b84:	db14      	blt.n	20100bb0 <cord_atan+0x118>
20100b86:	2d00      	cmp	r5, #0
20100b88:	da03      	bge.n	20100b92 <cord_atan+0xfa>
20100b8a:	2280      	movs	r2, #128	; 0x80
20100b8c:	00d2      	lsls	r2, r2, #3
20100b8e:	4691      	mov	r9, r2
20100b90:	444d      	add	r5, r9
20100b92:	4652      	mov	r2, sl
20100b94:	6015      	str	r5, [r2, #0]
20100b96:	4642      	mov	r2, r8
20100b98:	009b      	lsls	r3, r3, #2
20100b9a:	58d0      	ldr	r0, [r2, r3]
20100b9c:	4663      	mov	r3, ip
20100b9e:	4378      	muls	r0, r7
20100ba0:	1280      	asrs	r0, r0, #10
20100ba2:	6018      	str	r0, [r3, #0]
20100ba4:	b010      	add	sp, #64	; 0x40
20100ba6:	bc1c      	pop	{r2, r3, r4}
20100ba8:	4690      	mov	r8, r2
20100baa:	4699      	mov	r9, r3
20100bac:	46a2      	mov	sl, r4
20100bae:	bdf0      	pop	{r4, r5, r6, r7, pc}
20100bb0:	2280      	movs	r2, #128	; 0x80
20100bb2:	0092      	lsls	r2, r2, #2
20100bb4:	1b55      	subs	r5, r2, r5
20100bb6:	e7e6      	b.n	20100b86 <cord_atan+0xee>
20100bb8:	9900      	ldr	r1, [sp, #0]
20100bba:	1b5f      	subs	r7, r3, r5
20100bbc:	195b      	adds	r3, r3, r5
20100bbe:	424d      	negs	r5, r1
20100bc0:	e790      	b.n	20100ae4 <cord_atan+0x4c>
20100bc2:	6871      	ldr	r1, [r6, #4]
20100bc4:	1078      	asrs	r0, r7, #1
20100bc6:	1b3c      	subs	r4, r7, r4
20100bc8:	18c3      	adds	r3, r0, r3
20100bca:	1a6d      	subs	r5, r5, r1
20100bcc:	e796      	b.n	20100afc <cord_atan+0x64>
20100bce:	1a27      	subs	r7, r4, r0
20100bd0:	10a0      	asrs	r0, r4, #2
20100bd2:	18c0      	adds	r0, r0, r3
20100bd4:	68b3      	ldr	r3, [r6, #8]
20100bd6:	1aed      	subs	r5, r5, r3
20100bd8:	e79c      	b.n	20100b14 <cord_atan+0x7c>
20100bda:	68f1      	ldr	r1, [r6, #12]
20100bdc:	10fc      	asrs	r4, r7, #3
20100bde:	1afb      	subs	r3, r7, r3
20100be0:	1820      	adds	r0, r4, r0
20100be2:	1a6d      	subs	r5, r5, r1
20100be4:	e7a2      	b.n	20100b2c <cord_atan+0x94>
20100be6:	1b1f      	subs	r7, r3, r4
20100be8:	111c      	asrs	r4, r3, #4
20100bea:	6933      	ldr	r3, [r6, #16]
20100bec:	1824      	adds	r4, r4, r0
20100bee:	1aed      	subs	r5, r5, r3
20100bf0:	e7a8      	b.n	20100b44 <cord_atan+0xac>
20100bf2:	6971      	ldr	r1, [r6, #20]
20100bf4:	1178      	asrs	r0, r7, #5
20100bf6:	1afb      	subs	r3, r7, r3
20100bf8:	1900      	adds	r0, r0, r4
20100bfa:	1a6d      	subs	r5, r5, r1
20100bfc:	e7ae      	b.n	20100b5c <cord_atan+0xc4>
20100bfe:	1b1f      	subs	r7, r3, r4
20100c00:	119b      	asrs	r3, r3, #6
20100c02:	1818      	adds	r0, r3, r0
20100c04:	69b3      	ldr	r3, [r6, #24]
20100c06:	1aed      	subs	r5, r5, r3
20100c08:	e7b3      	b.n	20100b72 <cord_atan+0xda>
20100c0a:	69f3      	ldr	r3, [r6, #28]
20100c0c:	11c4      	asrs	r4, r0, #7
20100c0e:	1b3f      	subs	r7, r7, r4
20100c10:	1aed      	subs	r5, r5, r3
20100c12:	e7b5      	b.n	20100b80 <cord_atan+0xe8>
20100c14:	2300      	movs	r3, #0
20100c16:	e7b4      	b.n	20100b82 <cord_atan+0xea>
20100c18:	0027      	movs	r7, r4
20100c1a:	2301      	movs	r3, #1
20100c1c:	e7b1      	b.n	20100b82 <cord_atan+0xea>
20100c1e:	2302      	movs	r3, #2
20100c20:	e7af      	b.n	20100b82 <cord_atan+0xea>
20100c22:	001f      	movs	r7, r3
20100c24:	2303      	movs	r3, #3
20100c26:	e7ac      	b.n	20100b82 <cord_atan+0xea>
20100c28:	2304      	movs	r3, #4
20100c2a:	e7aa      	b.n	20100b82 <cord_atan+0xea>
20100c2c:	001f      	movs	r7, r3
20100c2e:	2305      	movs	r3, #5
20100c30:	e7a7      	b.n	20100b82 <cord_atan+0xea>
20100c32:	2306      	movs	r3, #6
20100c34:	e7a5      	b.n	20100b82 <cord_atan+0xea>
20100c36:	46c0      	nop			; (mov r8, r8)
20100c38:	00001b76 	.word	0x00001b76

20100c3c <sinpwm>:
20100c3c:	b5f0      	push	{r4, r5, r6, r7, lr}
20100c3e:	b089      	sub	sp, #36	; 0x24
20100c40:	466c      	mov	r4, sp
20100c42:	4b44      	ldr	r3, [pc, #272]	; (20100d54 <sinpwm+0x118>)
20100c44:	46ec      	mov	ip, sp
20100c46:	447b      	add	r3, pc
20100c48:	3320      	adds	r3, #32
20100c4a:	cbe0      	ldmia	r3!, {r5, r6, r7}
20100c4c:	c4e0      	stmia	r4!, {r5, r6, r7}
20100c4e:	cbe0      	ldmia	r3!, {r5, r6, r7}
20100c50:	c4e0      	stmia	r4!, {r5, r6, r7}
20100c52:	cb60      	ldmia	r3!, {r5, r6}
20100c54:	c460      	stmia	r4!, {r5, r6}
20100c56:	680b      	ldr	r3, [r1, #0]
20100c58:	684e      	ldr	r6, [r1, #4]
20100c5a:	17dc      	asrs	r4, r3, #31
20100c5c:	191b      	adds	r3, r3, r4
20100c5e:	4063      	eors	r3, r4
20100c60:	2e00      	cmp	r6, #0
20100c62:	dd46      	ble.n	20100cf2 <sinpwm+0xb6>
20100c64:	199f      	adds	r7, r3, r6
20100c66:	1af3      	subs	r3, r6, r3
20100c68:	2b00      	cmp	r3, #0
20100c6a:	d060      	beq.n	20100d2e <sinpwm+0xf2>
20100c6c:	105e      	asrs	r6, r3, #1
20100c6e:	2b00      	cmp	r3, #0
20100c70:	dd42      	ble.n	20100cf8 <sinpwm+0xbc>
20100c72:	107c      	asrs	r4, r7, #1
20100c74:	19f6      	adds	r6, r6, r7
20100c76:	1b1b      	subs	r3, r3, r4
20100c78:	2b00      	cmp	r3, #0
20100c7a:	d05a      	beq.n	20100d32 <sinpwm+0xf6>
20100c7c:	109c      	asrs	r4, r3, #2
20100c7e:	2b00      	cmp	r3, #0
20100c80:	dd3e      	ble.n	20100d00 <sinpwm+0xc4>
20100c82:	19a7      	adds	r7, r4, r6
20100c84:	10b6      	asrs	r6, r6, #2
20100c86:	1b9c      	subs	r4, r3, r6
20100c88:	2c00      	cmp	r4, #0
20100c8a:	d055      	beq.n	20100d38 <sinpwm+0xfc>
20100c8c:	10e6      	asrs	r6, r4, #3
20100c8e:	2c00      	cmp	r4, #0
20100c90:	dd3a      	ble.n	20100d08 <sinpwm+0xcc>
20100c92:	10fd      	asrs	r5, r7, #3
20100c94:	19f6      	adds	r6, r6, r7
20100c96:	1b64      	subs	r4, r4, r5
20100c98:	2c00      	cmp	r4, #0
20100c9a:	d04f      	beq.n	20100d3c <sinpwm+0x100>
20100c9c:	1125      	asrs	r5, r4, #4
20100c9e:	2c00      	cmp	r4, #0
20100ca0:	dd36      	ble.n	20100d10 <sinpwm+0xd4>
20100ca2:	19af      	adds	r7, r5, r6
20100ca4:	1136      	asrs	r6, r6, #4
20100ca6:	1ba5      	subs	r5, r4, r6
20100ca8:	2d00      	cmp	r5, #0
20100caa:	d04a      	beq.n	20100d42 <sinpwm+0x106>
20100cac:	116e      	asrs	r6, r5, #5
20100cae:	2d00      	cmp	r5, #0
20100cb0:	dd32      	ble.n	20100d18 <sinpwm+0xdc>
20100cb2:	117c      	asrs	r4, r7, #5
20100cb4:	19f6      	adds	r6, r6, r7
20100cb6:	1b2c      	subs	r4, r5, r4
20100cb8:	2c00      	cmp	r4, #0
20100cba:	d044      	beq.n	20100d46 <sinpwm+0x10a>
20100cbc:	11a3      	asrs	r3, r4, #6
20100cbe:	2c00      	cmp	r4, #0
20100cc0:	dd2e      	ble.n	20100d20 <sinpwm+0xe4>
20100cc2:	199b      	adds	r3, r3, r6
20100cc4:	11b6      	asrs	r6, r6, #6
20100cc6:	1ba4      	subs	r4, r4, r6
20100cc8:	2c00      	cmp	r4, #0
20100cca:	d03f      	beq.n	20100d4c <sinpwm+0x110>
20100ccc:	dd2c      	ble.n	20100d28 <sinpwm+0xec>
20100cce:	11e4      	asrs	r4, r4, #7
20100cd0:	18e7      	adds	r7, r4, r3
20100cd2:	2307      	movs	r3, #7
20100cd4:	4664      	mov	r4, ip
20100cd6:	009b      	lsls	r3, r3, #2
20100cd8:	58e4      	ldr	r4, [r4, r3]
20100cda:	f000 fb16 	bl	2010130a <dq_to_abc>
20100cde:	23fa      	movs	r3, #250	; 0xfa
20100ce0:	437c      	muls	r4, r7
20100ce2:	2001      	movs	r0, #1
20100ce4:	1524      	asrs	r4, r4, #20
20100ce6:	005b      	lsls	r3, r3, #1
20100ce8:	429c      	cmp	r4, r3
20100cea:	dc00      	bgt.n	20100cee <sinpwm+0xb2>
20100cec:	2000      	movs	r0, #0
20100cee:	b009      	add	sp, #36	; 0x24
20100cf0:	bdf0      	pop	{r4, r5, r6, r7, pc}
20100cf2:	1b9f      	subs	r7, r3, r6
20100cf4:	199b      	adds	r3, r3, r6
20100cf6:	e7b7      	b.n	20100c68 <sinpwm+0x2c>
20100cf8:	107c      	asrs	r4, r7, #1
20100cfa:	1bbe      	subs	r6, r7, r6
20100cfc:	18e3      	adds	r3, r4, r3
20100cfe:	e7bb      	b.n	20100c78 <sinpwm+0x3c>
20100d00:	1b37      	subs	r7, r6, r4
20100d02:	10b4      	asrs	r4, r6, #2
20100d04:	18e4      	adds	r4, r4, r3
20100d06:	e7bf      	b.n	20100c88 <sinpwm+0x4c>
20100d08:	10fd      	asrs	r5, r7, #3
20100d0a:	1bbe      	subs	r6, r7, r6
20100d0c:	192c      	adds	r4, r5, r4
20100d0e:	e7c3      	b.n	20100c98 <sinpwm+0x5c>
20100d10:	1b77      	subs	r7, r6, r5
20100d12:	1135      	asrs	r5, r6, #4
20100d14:	192d      	adds	r5, r5, r4
20100d16:	e7c7      	b.n	20100ca8 <sinpwm+0x6c>
20100d18:	117c      	asrs	r4, r7, #5
20100d1a:	1bbe      	subs	r6, r7, r6
20100d1c:	1964      	adds	r4, r4, r5
20100d1e:	e7cb      	b.n	20100cb8 <sinpwm+0x7c>
20100d20:	1af3      	subs	r3, r6, r3
20100d22:	11b6      	asrs	r6, r6, #6
20100d24:	1934      	adds	r4, r6, r4
20100d26:	e7cf      	b.n	20100cc8 <sinpwm+0x8c>
20100d28:	11e5      	asrs	r5, r4, #7
20100d2a:	1b5f      	subs	r7, r3, r5
20100d2c:	e7d1      	b.n	20100cd2 <sinpwm+0x96>
20100d2e:	2300      	movs	r3, #0
20100d30:	e7d0      	b.n	20100cd4 <sinpwm+0x98>
20100d32:	0037      	movs	r7, r6
20100d34:	2301      	movs	r3, #1
20100d36:	e7cd      	b.n	20100cd4 <sinpwm+0x98>
20100d38:	2302      	movs	r3, #2
20100d3a:	e7cb      	b.n	20100cd4 <sinpwm+0x98>
20100d3c:	0037      	movs	r7, r6
20100d3e:	2303      	movs	r3, #3
20100d40:	e7c8      	b.n	20100cd4 <sinpwm+0x98>
20100d42:	2304      	movs	r3, #4
20100d44:	e7c6      	b.n	20100cd4 <sinpwm+0x98>
20100d46:	0037      	movs	r7, r6
20100d48:	2305      	movs	r3, #5
20100d4a:	e7c3      	b.n	20100cd4 <sinpwm+0x98>
20100d4c:	001f      	movs	r7, r3
20100d4e:	2306      	movs	r3, #6
20100d50:	e7c0      	b.n	20100cd4 <sinpwm+0x98>
20100d52:	46c0      	nop			; (mov r8, r8)
20100d54:	000019d6 	.word	0x000019d6

20100d58 <svpwm>:
20100d58:	b5f0      	push	{r4, r5, r6, r7, lr}
20100d5a:	465f      	mov	r7, fp
20100d5c:	4656      	mov	r6, sl
20100d5e:	4644      	mov	r4, r8
20100d60:	464d      	mov	r5, r9
20100d62:	b4f0      	push	{r4, r5, r6, r7}
20100d64:	0005      	movs	r5, r0
20100d66:	48d0      	ldr	r0, [pc, #832]	; (201010a8 <svpwm+0x350>)
20100d68:	b091      	sub	sp, #68	; 0x44
20100d6a:	4478      	add	r0, pc
20100d6c:	0006      	movs	r6, r0
20100d6e:	466c      	mov	r4, sp
20100d70:	4bce      	ldr	r3, [pc, #824]	; (201010ac <svpwm+0x354>)
20100d72:	4693      	mov	fp, r2
20100d74:	447b      	add	r3, pc
20100d76:	469a      	mov	sl, r3
20100d78:	468c      	mov	ip, r1
20100d7a:	ce0e      	ldmia	r6!, {r1, r2, r3}
20100d7c:	c40e      	stmia	r4!, {r1, r2, r3}
20100d7e:	ce0e      	ldmia	r6!, {r1, r2, r3}
20100d80:	c40e      	stmia	r4!, {r1, r2, r3}
20100d82:	ce0c      	ldmia	r6!, {r2, r3}
20100d84:	c40c      	stmia	r4!, {r2, r3}
20100d86:	ae08      	add	r6, sp, #32
20100d88:	0034      	movs	r4, r6
20100d8a:	3020      	adds	r0, #32
20100d8c:	c80e      	ldmia	r0!, {r1, r2, r3}
20100d8e:	c40e      	stmia	r4!, {r1, r2, r3}
20100d90:	c80e      	ldmia	r0!, {r1, r2, r3}
20100d92:	c40e      	stmia	r4!, {r1, r2, r3}
20100d94:	c80c      	ldmia	r0!, {r2, r3}
20100d96:	c40c      	stmia	r4!, {r2, r3}
20100d98:	4663      	mov	r3, ip
20100d9a:	681c      	ldr	r4, [r3, #0]
20100d9c:	466f      	mov	r7, sp
20100d9e:	17e2      	asrs	r2, r4, #31
20100da0:	18a3      	adds	r3, r4, r2
20100da2:	4053      	eors	r3, r2
20100da4:	4698      	mov	r8, r3
20100da6:	4663      	mov	r3, ip
20100da8:	685b      	ldr	r3, [r3, #4]
20100daa:	2b00      	cmp	r3, #0
20100dac:	dc00      	bgt.n	20100db0 <svpwm+0x58>
20100dae:	e0b5      	b.n	20100f1c <svpwm+0x1c4>
20100db0:	4641      	mov	r1, r8
20100db2:	18c8      	adds	r0, r1, r3
20100db4:	1a5b      	subs	r3, r3, r1
20100db6:	4698      	mov	r8, r3
20100db8:	9b00      	ldr	r3, [sp, #0]
20100dba:	4641      	mov	r1, r8
20100dbc:	2900      	cmp	r1, #0
20100dbe:	d100      	bne.n	20100dc2 <svpwm+0x6a>
20100dc0:	e15f      	b.n	20101082 <svpwm+0x32a>
20100dc2:	dc00      	bgt.n	20100dc6 <svpwm+0x6e>
20100dc4:	e0b0      	b.n	20100f28 <svpwm+0x1d0>
20100dc6:	4641      	mov	r1, r8
20100dc8:	1049      	asrs	r1, r1, #1
20100dca:	4689      	mov	r9, r1
20100dcc:	1041      	asrs	r1, r0, #1
20100dce:	4481      	add	r9, r0
20100dd0:	4640      	mov	r0, r8
20100dd2:	1a41      	subs	r1, r0, r1
20100dd4:	4688      	mov	r8, r1
20100dd6:	6879      	ldr	r1, [r7, #4]
20100dd8:	468c      	mov	ip, r1
20100dda:	4463      	add	r3, ip
20100ddc:	4641      	mov	r1, r8
20100dde:	2900      	cmp	r1, #0
20100de0:	d100      	bne.n	20100de4 <svpwm+0x8c>
20100de2:	e150      	b.n	20101086 <svpwm+0x32e>
20100de4:	dc00      	bgt.n	20100de8 <svpwm+0x90>
20100de6:	e0a7      	b.n	20100f38 <svpwm+0x1e0>
20100de8:	4641      	mov	r1, r8
20100dea:	1089      	asrs	r1, r1, #2
20100dec:	4449      	add	r1, r9
20100dee:	0008      	movs	r0, r1
20100df0:	4649      	mov	r1, r9
20100df2:	4642      	mov	r2, r8
20100df4:	1089      	asrs	r1, r1, #2
20100df6:	1a51      	subs	r1, r2, r1
20100df8:	68ba      	ldr	r2, [r7, #8]
20100dfa:	4688      	mov	r8, r1
20100dfc:	4694      	mov	ip, r2
20100dfe:	4463      	add	r3, ip
20100e00:	4641      	mov	r1, r8
20100e02:	2900      	cmp	r1, #0
20100e04:	d100      	bne.n	20100e08 <svpwm+0xb0>
20100e06:	e141      	b.n	2010108c <svpwm+0x334>
20100e08:	4642      	mov	r2, r8
20100e0a:	dc00      	bgt.n	20100e0e <svpwm+0xb6>
20100e0c:	e09c      	b.n	20100f48 <svpwm+0x1f0>
20100e0e:	10c9      	asrs	r1, r1, #3
20100e10:	1809      	adds	r1, r1, r0
20100e12:	10c0      	asrs	r0, r0, #3
20100e14:	1a12      	subs	r2, r2, r0
20100e16:	4690      	mov	r8, r2
20100e18:	68fa      	ldr	r2, [r7, #12]
20100e1a:	4694      	mov	ip, r2
20100e1c:	4463      	add	r3, ip
20100e1e:	4640      	mov	r0, r8
20100e20:	2800      	cmp	r0, #0
20100e22:	d100      	bne.n	20100e26 <svpwm+0xce>
20100e24:	e134      	b.n	20101090 <svpwm+0x338>
20100e26:	4642      	mov	r2, r8
20100e28:	dc00      	bgt.n	20100e2c <svpwm+0xd4>
20100e2a:	e094      	b.n	20100f56 <svpwm+0x1fe>
20100e2c:	1100      	asrs	r0, r0, #4
20100e2e:	1840      	adds	r0, r0, r1
20100e30:	1109      	asrs	r1, r1, #4
20100e32:	1a52      	subs	r2, r2, r1
20100e34:	4690      	mov	r8, r2
20100e36:	693a      	ldr	r2, [r7, #16]
20100e38:	4694      	mov	ip, r2
20100e3a:	4463      	add	r3, ip
20100e3c:	4641      	mov	r1, r8
20100e3e:	2900      	cmp	r1, #0
20100e40:	d100      	bne.n	20100e44 <svpwm+0xec>
20100e42:	e128      	b.n	20101096 <svpwm+0x33e>
20100e44:	4642      	mov	r2, r8
20100e46:	dc00      	bgt.n	20100e4a <svpwm+0xf2>
20100e48:	e08c      	b.n	20100f64 <svpwm+0x20c>
20100e4a:	1149      	asrs	r1, r1, #5
20100e4c:	4689      	mov	r9, r1
20100e4e:	1141      	asrs	r1, r0, #5
20100e50:	1a51      	subs	r1, r2, r1
20100e52:	697a      	ldr	r2, [r7, #20]
20100e54:	4481      	add	r9, r0
20100e56:	4694      	mov	ip, r2
20100e58:	4463      	add	r3, ip
20100e5a:	2900      	cmp	r1, #0
20100e5c:	d100      	bne.n	20100e60 <svpwm+0x108>
20100e5e:	e11c      	b.n	2010109a <svpwm+0x342>
20100e60:	1188      	asrs	r0, r1, #6
20100e62:	2900      	cmp	r1, #0
20100e64:	dc00      	bgt.n	20100e68 <svpwm+0x110>
20100e66:	e086      	b.n	20100f76 <svpwm+0x21e>
20100e68:	464a      	mov	r2, r9
20100e6a:	4448      	add	r0, r9
20100e6c:	4680      	mov	r8, r0
20100e6e:	1190      	asrs	r0, r2, #6
20100e70:	69ba      	ldr	r2, [r7, #24]
20100e72:	1a09      	subs	r1, r1, r0
20100e74:	4694      	mov	ip, r2
20100e76:	4463      	add	r3, ip
20100e78:	2900      	cmp	r1, #0
20100e7a:	d100      	bne.n	20100e7e <svpwm+0x126>
20100e7c:	e110      	b.n	201010a0 <svpwm+0x348>
20100e7e:	dc00      	bgt.n	20100e82 <svpwm+0x12a>
20100e80:	e0e2      	b.n	20101048 <svpwm+0x2f0>
20100e82:	11c9      	asrs	r1, r1, #7
20100e84:	4441      	add	r1, r8
20100e86:	0008      	movs	r0, r1
20100e88:	69f9      	ldr	r1, [r7, #28]
20100e8a:	185b      	adds	r3, r3, r1
20100e8c:	2107      	movs	r1, #7
20100e8e:	2c00      	cmp	r4, #0
20100e90:	db40      	blt.n	20100f14 <svpwm+0x1bc>
20100e92:	2b00      	cmp	r3, #0
20100e94:	da03      	bge.n	20100e9e <svpwm+0x146>
20100e96:	2280      	movs	r2, #128	; 0x80
20100e98:	00d2      	lsls	r2, r2, #3
20100e9a:	4694      	mov	ip, r2
20100e9c:	4463      	add	r3, ip
20100e9e:	22fa      	movs	r2, #250	; 0xfa
20100ea0:	0089      	lsls	r1, r1, #2
20100ea2:	5871      	ldr	r1, [r6, r1]
20100ea4:	445b      	add	r3, fp
20100ea6:	4341      	muls	r1, r0
20100ea8:	059b      	lsls	r3, r3, #22
20100eaa:	1509      	asrs	r1, r1, #20
20100eac:	0d9b      	lsrs	r3, r3, #22
20100eae:	0052      	lsls	r2, r2, #1
20100eb0:	2400      	movs	r4, #0
20100eb2:	4291      	cmp	r1, r2
20100eb4:	dd01      	ble.n	20100eba <svpwm+0x162>
20100eb6:	0011      	movs	r1, r2
20100eb8:	3401      	adds	r4, #1
20100eba:	0058      	lsls	r0, r3, #1
20100ebc:	18c0      	adds	r0, r0, r3
20100ebe:	1240      	asrs	r0, r0, #9
20100ec0:	3801      	subs	r0, #1
20100ec2:	4a7b      	ldr	r2, [pc, #492]	; (201010b0 <svpwm+0x358>)
20100ec4:	2804      	cmp	r0, #4
20100ec6:	d920      	bls.n	20100f0a <svpwm+0x1b2>
20100ec8:	26c0      	movs	r6, #192	; 0xc0
20100eca:	4650      	mov	r0, sl
20100ecc:	00b6      	lsls	r6, r6, #2
20100ece:	46b4      	mov	ip, r6
20100ed0:	5880      	ldr	r0, [r0, r2]
20100ed2:	4a78      	ldr	r2, [pc, #480]	; (201010b4 <svpwm+0x35c>)
20100ed4:	1ad2      	subs	r2, r2, r3
20100ed6:	4463      	add	r3, ip
20100ed8:	0592      	lsls	r2, r2, #22
20100eda:	059b      	lsls	r3, r3, #22
20100edc:	0d12      	lsrs	r2, r2, #20
20100ede:	0d1b      	lsrs	r3, r3, #20
20100ee0:	581b      	ldr	r3, [r3, r0]
20100ee2:	5812      	ldr	r2, [r2, r0]
20100ee4:	434a      	muls	r2, r1
20100ee6:	4359      	muls	r1, r3
20100ee8:	1292      	asrs	r2, r2, #10
20100eea:	1289      	asrs	r1, r1, #10
20100eec:	1853      	adds	r3, r2, r1
20100eee:	602b      	str	r3, [r5, #0]
20100ef0:	1a8b      	subs	r3, r1, r2
20100ef2:	4252      	negs	r2, r2
20100ef4:	1a52      	subs	r2, r2, r1
20100ef6:	606b      	str	r3, [r5, #4]
20100ef8:	60aa      	str	r2, [r5, #8]
20100efa:	0020      	movs	r0, r4
20100efc:	b011      	add	sp, #68	; 0x44
20100efe:	bc3c      	pop	{r2, r3, r4, r5}
20100f00:	4690      	mov	r8, r2
20100f02:	4699      	mov	r9, r3
20100f04:	46a2      	mov	sl, r4
20100f06:	46ab      	mov	fp, r5
20100f08:	bdf0      	pop	{r4, r5, r6, r7, pc}
20100f0a:	f000 fa65 	bl	201013d8 <__gnu_thumb1_case_uqi>
20100f0e:	856c      	.short	0x856c
20100f10:	553d      	.short	0x553d
20100f12:	a3          	.byte	0xa3
20100f13:	00          	.byte	0x00
20100f14:	2480      	movs	r4, #128	; 0x80
20100f16:	00a4      	lsls	r4, r4, #2
20100f18:	1ae3      	subs	r3, r4, r3
20100f1a:	e7ba      	b.n	20100e92 <svpwm+0x13a>
20100f1c:	4642      	mov	r2, r8
20100f1e:	4498      	add	r8, r3
20100f20:	1ad0      	subs	r0, r2, r3
20100f22:	9b00      	ldr	r3, [sp, #0]
20100f24:	425b      	negs	r3, r3
20100f26:	e748      	b.n	20100dba <svpwm+0x62>
20100f28:	1049      	asrs	r1, r1, #1
20100f2a:	1a42      	subs	r2, r0, r1
20100f2c:	4691      	mov	r9, r2
20100f2e:	687a      	ldr	r2, [r7, #4]
20100f30:	1041      	asrs	r1, r0, #1
20100f32:	4488      	add	r8, r1
20100f34:	1a9b      	subs	r3, r3, r2
20100f36:	e751      	b.n	20100ddc <svpwm+0x84>
20100f38:	464a      	mov	r2, r9
20100f3a:	1089      	asrs	r1, r1, #2
20100f3c:	1a50      	subs	r0, r2, r1
20100f3e:	1091      	asrs	r1, r2, #2
20100f40:	68ba      	ldr	r2, [r7, #8]
20100f42:	4488      	add	r8, r1
20100f44:	1a9b      	subs	r3, r3, r2
20100f46:	e75b      	b.n	20100e00 <svpwm+0xa8>
20100f48:	10c9      	asrs	r1, r1, #3
20100f4a:	68fa      	ldr	r2, [r7, #12]
20100f4c:	1a41      	subs	r1, r0, r1
20100f4e:	10c0      	asrs	r0, r0, #3
20100f50:	4480      	add	r8, r0
20100f52:	1a9b      	subs	r3, r3, r2
20100f54:	e763      	b.n	20100e1e <svpwm+0xc6>
20100f56:	1100      	asrs	r0, r0, #4
20100f58:	693a      	ldr	r2, [r7, #16]
20100f5a:	1a08      	subs	r0, r1, r0
20100f5c:	1109      	asrs	r1, r1, #4
20100f5e:	4488      	add	r8, r1
20100f60:	1a9b      	subs	r3, r3, r2
20100f62:	e76b      	b.n	20100e3c <svpwm+0xe4>
20100f64:	1149      	asrs	r1, r1, #5
20100f66:	1a42      	subs	r2, r0, r1
20100f68:	1140      	asrs	r0, r0, #5
20100f6a:	0001      	movs	r1, r0
20100f6c:	4691      	mov	r9, r2
20100f6e:	697a      	ldr	r2, [r7, #20]
20100f70:	4441      	add	r1, r8
20100f72:	1a9b      	subs	r3, r3, r2
20100f74:	e771      	b.n	20100e5a <svpwm+0x102>
20100f76:	464a      	mov	r2, r9
20100f78:	1a12      	subs	r2, r2, r0
20100f7a:	4690      	mov	r8, r2
20100f7c:	464a      	mov	r2, r9
20100f7e:	1190      	asrs	r0, r2, #6
20100f80:	69ba      	ldr	r2, [r7, #24]
20100f82:	1841      	adds	r1, r0, r1
20100f84:	1a9b      	subs	r3, r3, r2
20100f86:	e777      	b.n	20100e78 <svpwm+0x120>
20100f88:	4650      	mov	r0, sl
20100f8a:	5880      	ldr	r0, [r0, r2]
20100f8c:	4a4a      	ldr	r2, [pc, #296]	; (201010b8 <svpwm+0x360>)
20100f8e:	1ad2      	subs	r2, r2, r3
20100f90:	3301      	adds	r3, #1
20100f92:	0592      	lsls	r2, r2, #22
20100f94:	33ff      	adds	r3, #255	; 0xff
20100f96:	0d12      	lsrs	r2, r2, #20
20100f98:	059b      	lsls	r3, r3, #22
20100f9a:	5812      	ldr	r2, [r2, r0]
20100f9c:	0d1b      	lsrs	r3, r3, #20
20100f9e:	581b      	ldr	r3, [r3, r0]
20100fa0:	434a      	muls	r2, r1
20100fa2:	434b      	muls	r3, r1
20100fa4:	1292      	asrs	r2, r2, #10
20100fa6:	1299      	asrs	r1, r3, #10
20100fa8:	4253      	negs	r3, r2
20100faa:	1a5b      	subs	r3, r3, r1
20100fac:	602b      	str	r3, [r5, #0]
20100fae:	1a53      	subs	r3, r2, r1
20100fb0:	1851      	adds	r1, r2, r1
20100fb2:	606b      	str	r3, [r5, #4]
20100fb4:	60a9      	str	r1, [r5, #8]
20100fb6:	e7a0      	b.n	20100efa <svpwm+0x1a2>
20100fb8:	4650      	mov	r0, sl
20100fba:	5880      	ldr	r0, [r0, r2]
20100fbc:	4a3f      	ldr	r2, [pc, #252]	; (201010bc <svpwm+0x364>)
20100fbe:	1ad2      	subs	r2, r2, r3
20100fc0:	3356      	adds	r3, #86	; 0x56
20100fc2:	0592      	lsls	r2, r2, #22
20100fc4:	059b      	lsls	r3, r3, #22
20100fc6:	0d12      	lsrs	r2, r2, #20
20100fc8:	0d1b      	lsrs	r3, r3, #20
20100fca:	5816      	ldr	r6, [r2, r0]
20100fcc:	581b      	ldr	r3, [r3, r0]
20100fce:	434e      	muls	r6, r1
20100fd0:	434b      	muls	r3, r1
20100fd2:	12b6      	asrs	r6, r6, #10
20100fd4:	1299      	asrs	r1, r3, #10
20100fd6:	1b8b      	subs	r3, r1, r6
20100fd8:	602b      	str	r3, [r5, #0]
20100fda:	4273      	negs	r3, r6
20100fdc:	1a5b      	subs	r3, r3, r1
20100fde:	1871      	adds	r1, r6, r1
20100fe0:	606b      	str	r3, [r5, #4]
20100fe2:	60a9      	str	r1, [r5, #8]
20100fe4:	e789      	b.n	20100efa <svpwm+0x1a2>
20100fe6:	4650      	mov	r0, sl
20100fe8:	5886      	ldr	r6, [r0, r2]
20100fea:	4a35      	ldr	r2, [pc, #212]	; (201010c0 <svpwm+0x368>)
20100fec:	1ad2      	subs	r2, r2, r3
20100fee:	0592      	lsls	r2, r2, #22
20100ff0:	0d12      	lsrs	r2, r2, #20
20100ff2:	5990      	ldr	r0, [r2, r6]
20100ff4:	4a33      	ldr	r2, [pc, #204]	; (201010c4 <svpwm+0x36c>)
20100ff6:	4348      	muls	r0, r1
20100ff8:	4694      	mov	ip, r2
20100ffa:	4463      	add	r3, ip
20100ffc:	059b      	lsls	r3, r3, #22
20100ffe:	0d1b      	lsrs	r3, r3, #20
20101000:	599b      	ldr	r3, [r3, r6]
20101002:	1280      	asrs	r0, r0, #10
20101004:	4359      	muls	r1, r3
20101006:	1289      	asrs	r1, r1, #10
20101008:	1a43      	subs	r3, r0, r1
2010100a:	602b      	str	r3, [r5, #0]
2010100c:	1843      	adds	r3, r0, r1
2010100e:	4240      	negs	r0, r0
20101010:	1a40      	subs	r0, r0, r1
20101012:	606b      	str	r3, [r5, #4]
20101014:	60a8      	str	r0, [r5, #8]
20101016:	e770      	b.n	20100efa <svpwm+0x1a2>
20101018:	4650      	mov	r0, sl
2010101a:	5880      	ldr	r0, [r0, r2]
2010101c:	4a2a      	ldr	r2, [pc, #168]	; (201010c8 <svpwm+0x370>)
2010101e:	1ad2      	subs	r2, r2, r3
20101020:	33ac      	adds	r3, #172	; 0xac
20101022:	0592      	lsls	r2, r2, #22
20101024:	33ff      	adds	r3, #255	; 0xff
20101026:	0d12      	lsrs	r2, r2, #20
20101028:	059b      	lsls	r3, r3, #22
2010102a:	5816      	ldr	r6, [r2, r0]
2010102c:	0d1b      	lsrs	r3, r3, #20
2010102e:	581b      	ldr	r3, [r3, r0]
20101030:	434e      	muls	r6, r1
20101032:	4359      	muls	r1, r3
20101034:	12b6      	asrs	r6, r6, #10
20101036:	1289      	asrs	r1, r1, #10
20101038:	4273      	negs	r3, r6
2010103a:	1a5b      	subs	r3, r3, r1
2010103c:	602b      	str	r3, [r5, #0]
2010103e:	1873      	adds	r3, r6, r1
20101040:	1b89      	subs	r1, r1, r6
20101042:	606b      	str	r3, [r5, #4]
20101044:	60a9      	str	r1, [r5, #8]
20101046:	e758      	b.n	20100efa <svpwm+0x1a2>
20101048:	4642      	mov	r2, r8
2010104a:	11c9      	asrs	r1, r1, #7
2010104c:	1a50      	subs	r0, r2, r1
2010104e:	69f9      	ldr	r1, [r7, #28]
20101050:	1a5b      	subs	r3, r3, r1
20101052:	e71b      	b.n	20100e8c <svpwm+0x134>
20101054:	4650      	mov	r0, sl
20101056:	5882      	ldr	r2, [r0, r2]
20101058:	481c      	ldr	r0, [pc, #112]	; (201010cc <svpwm+0x374>)
2010105a:	1ac0      	subs	r0, r0, r3
2010105c:	3b55      	subs	r3, #85	; 0x55
2010105e:	0580      	lsls	r0, r0, #22
20101060:	059b      	lsls	r3, r3, #22
20101062:	0d00      	lsrs	r0, r0, #20
20101064:	0d1b      	lsrs	r3, r3, #20
20101066:	589b      	ldr	r3, [r3, r2]
20101068:	5880      	ldr	r0, [r0, r2]
2010106a:	4348      	muls	r0, r1
2010106c:	4359      	muls	r1, r3
2010106e:	1280      	asrs	r0, r0, #10
20101070:	1289      	asrs	r1, r1, #10
20101072:	1843      	adds	r3, r0, r1
20101074:	602b      	str	r3, [r5, #0]
20101076:	4243      	negs	r3, r0
20101078:	1a5b      	subs	r3, r3, r1
2010107a:	1a41      	subs	r1, r0, r1
2010107c:	606b      	str	r3, [r5, #4]
2010107e:	60a9      	str	r1, [r5, #8]
20101080:	e73b      	b.n	20100efa <svpwm+0x1a2>
20101082:	2100      	movs	r1, #0
20101084:	e703      	b.n	20100e8e <svpwm+0x136>
20101086:	4648      	mov	r0, r9
20101088:	2101      	movs	r1, #1
2010108a:	e700      	b.n	20100e8e <svpwm+0x136>
2010108c:	2102      	movs	r1, #2
2010108e:	e6fe      	b.n	20100e8e <svpwm+0x136>
20101090:	0008      	movs	r0, r1
20101092:	2103      	movs	r1, #3
20101094:	e6fb      	b.n	20100e8e <svpwm+0x136>
20101096:	2104      	movs	r1, #4
20101098:	e6f9      	b.n	20100e8e <svpwm+0x136>
2010109a:	4648      	mov	r0, r9
2010109c:	2105      	movs	r1, #5
2010109e:	e6f6      	b.n	20100e8e <svpwm+0x136>
201010a0:	4640      	mov	r0, r8
201010a2:	2106      	movs	r1, #6
201010a4:	e6f3      	b.n	20100e8e <svpwm+0x136>
201010a6:	46c0      	nop			; (mov r8, r8)
201010a8:	000018b2 	.word	0x000018b2
201010ac:	ffeff314 	.word	0xffeff314
201010b0:	00000000 	.word	0x00000000
201010b4:	000007aa 	.word	0x000007aa
201010b8:	000009aa 	.word	0x000009aa
201010bc:	00000a54 	.word	0x00000a54
201010c0:	00000854 	.word	0x00000854
201010c4:	00000256 	.word	0x00000256
201010c8:	000008ff 	.word	0x000008ff
201010cc:	00000aff 	.word	0x00000aff

201010d0 <get_speed>:
201010d0:	4a10      	ldr	r2, [pc, #64]	; (20101114 <get_speed+0x44>)
201010d2:	b510      	push	{r4, lr}
201010d4:	447a      	add	r2, pc
201010d6:	6813      	ldr	r3, [r2, #0]
201010d8:	6854      	ldr	r4, [r2, #4]
201010da:	1ac3      	subs	r3, r0, r3
201010dc:	6050      	str	r0, [r2, #4]
201010de:	6014      	str	r4, [r2, #0]
201010e0:	17da      	asrs	r2, r3, #31
201010e2:	1898      	adds	r0, r3, r2
201010e4:	4050      	eors	r0, r2
201010e6:	22fa      	movs	r2, #250	; 0xfa
201010e8:	0092      	lsls	r2, r2, #2
201010ea:	4290      	cmp	r0, r2
201010ec:	dd04      	ble.n	201010f8 <get_speed+0x28>
201010ee:	2b00      	cmp	r3, #0
201010f0:	db0a      	blt.n	20101108 <get_speed+0x38>
201010f2:	4a09      	ldr	r2, [pc, #36]	; (20101118 <get_speed+0x48>)
201010f4:	4694      	mov	ip, r2
201010f6:	4463      	add	r3, ip
201010f8:	680a      	ldr	r2, [r1, #0]
201010fa:	4808      	ldr	r0, [pc, #32]	; (2010111c <get_speed+0x4c>)
201010fc:	18d2      	adds	r2, r2, r3
201010fe:	105b      	asrs	r3, r3, #1
20101100:	4343      	muls	r3, r0
20101102:	600a      	str	r2, [r1, #0]
20101104:	1318      	asrs	r0, r3, #12
20101106:	bd10      	pop	{r4, pc}
20101108:	2280      	movs	r2, #128	; 0x80
2010110a:	0152      	lsls	r2, r2, #5
2010110c:	4694      	mov	ip, r2
2010110e:	4463      	add	r3, ip
20101110:	e7f2      	b.n	201010f8 <get_speed+0x28>
20101112:	46c0      	nop			; (mov r8, r8)
20101114:	ffefefe0 	.word	0xffefefe0
20101118:	fffff000 	.word	0xfffff000
2010111c:	0002ae7c 	.word	0x0002ae7c

20101120 <c_mfilter>:
20101120:	221f      	movs	r2, #31
20101122:	4908      	ldr	r1, [pc, #32]	; (20101144 <c_mfilter+0x24>)
20101124:	b510      	push	{r4, lr}
20101126:	4479      	add	r1, pc
20101128:	688b      	ldr	r3, [r1, #8]
2010112a:	3301      	adds	r3, #1
2010112c:	4013      	ands	r3, r2
2010112e:	608b      	str	r3, [r1, #8]
20101130:	009b      	lsls	r3, r3, #2
20101132:	18cb      	adds	r3, r1, r3
20101134:	68ca      	ldr	r2, [r1, #12]
20101136:	691c      	ldr	r4, [r3, #16]
20101138:	6118      	str	r0, [r3, #16]
2010113a:	1b12      	subs	r2, r2, r4
2010113c:	1812      	adds	r2, r2, r0
2010113e:	1150      	asrs	r0, r2, #5
20101140:	60ca      	str	r2, [r1, #12]
20101142:	bd10      	pop	{r4, pc}
20101144:	ffefef8e 	.word	0xffefef8e

20101148 <adc_dma_init>:
20101148:	b580      	push	{r7, lr}
2010114a:	af00      	add	r7, sp, #0
2010114c:	4b1c      	ldr	r3, [pc, #112]	; (201011c0 <adc_dma_init+0x78>)
2010114e:	4a1c      	ldr	r2, [pc, #112]	; (201011c0 <adc_dma_init+0x78>)
20101150:	69d2      	ldr	r2, [r2, #28]
20101152:	2120      	movs	r1, #32
20101154:	430a      	orrs	r2, r1
20101156:	61da      	str	r2, [r3, #28]
20101158:	4b1a      	ldr	r3, [pc, #104]	; (201011c4 <adc_dma_init+0x7c>)
2010115a:	4a1b      	ldr	r2, [pc, #108]	; (201011c8 <adc_dma_init+0x80>)
2010115c:	447a      	add	r2, pc
2010115e:	609a      	str	r2, [r3, #8]
20101160:	4b18      	ldr	r3, [pc, #96]	; (201011c4 <adc_dma_init+0x7c>)
20101162:	2201      	movs	r2, #1
20101164:	4252      	negs	r2, r2
20101166:	62da      	str	r2, [r3, #44]	; 0x2c
20101168:	4b16      	ldr	r3, [pc, #88]	; (201011c4 <adc_dma_init+0x7c>)
2010116a:	2201      	movs	r2, #1
2010116c:	4252      	negs	r2, r2
2010116e:	621a      	str	r2, [r3, #32]
20101170:	4b14      	ldr	r3, [pc, #80]	; (201011c4 <adc_dma_init+0x7c>)
20101172:	2201      	movs	r2, #1
20101174:	4252      	negs	r2, r2
20101176:	635a      	str	r2, [r3, #52]	; 0x34
20101178:	4b12      	ldr	r3, [pc, #72]	; (201011c4 <adc_dma_init+0x7c>)
2010117a:	2280      	movs	r2, #128	; 0x80
2010117c:	05d2      	lsls	r2, r2, #23
2010117e:	61da      	str	r2, [r3, #28]
20101180:	4b10      	ldr	r3, [pc, #64]	; (201011c4 <adc_dma_init+0x7c>)
20101182:	2280      	movs	r2, #128	; 0x80
20101184:	05d2      	lsls	r2, r2, #23
20101186:	625a      	str	r2, [r3, #36]	; 0x24
20101188:	4b0e      	ldr	r3, [pc, #56]	; (201011c4 <adc_dma_init+0x7c>)
2010118a:	2201      	movs	r2, #1
2010118c:	605a      	str	r2, [r3, #4]
2010118e:	4a0f      	ldr	r2, [pc, #60]	; (201011cc <adc_dma_init+0x84>)
20101190:	447a      	add	r2, pc
20101192:	23f0      	movs	r3, #240	; 0xf0
20101194:	005b      	lsls	r3, r3, #1
20101196:	490e      	ldr	r1, [pc, #56]	; (201011d0 <adc_dma_init+0x88>)
20101198:	50d1      	str	r1, [r2, r3]
2010119a:	4b0e      	ldr	r3, [pc, #56]	; (201011d4 <adc_dma_init+0x8c>)
2010119c:	447b      	add	r3, pc
2010119e:	330c      	adds	r3, #12
201011a0:	0019      	movs	r1, r3
201011a2:	4a0d      	ldr	r2, [pc, #52]	; (201011d8 <adc_dma_init+0x90>)
201011a4:	447a      	add	r2, pc
201011a6:	23f2      	movs	r3, #242	; 0xf2
201011a8:	005b      	lsls	r3, r3, #1
201011aa:	50d1      	str	r1, [r2, r3]
201011ac:	4a0b      	ldr	r2, [pc, #44]	; (201011dc <adc_dma_init+0x94>)
201011ae:	447a      	add	r2, pc
201011b0:	23f4      	movs	r3, #244	; 0xf4
201011b2:	005b      	lsls	r3, r3, #1
201011b4:	490a      	ldr	r1, [pc, #40]	; (201011e0 <adc_dma_init+0x98>)
201011b6:	50d1      	str	r1, [r2, r3]
201011b8:	46c0      	nop			; (mov r8, r8)
201011ba:	46bd      	mov	sp, r7
201011bc:	bd80      	pop	{r7, pc}
201011be:	46c0      	nop			; (mov r8, r8)
201011c0:	40020000 	.word	0x40020000
201011c4:	40028000 	.word	0x40028000
201011c8:	000002a0 	.word	0x000002a0
201011cc:	0000026c 	.word	0x0000026c
201011d0:	40088018 	.word	0x40088018
201011d4:	00000460 	.word	0x00000460
201011d8:	00000258 	.word	0x00000258
201011dc:	0000024e 	.word	0x0000024e
201011e0:	ae000031 	.word	0xae000031

201011e4 <adc_dma_start>:
201011e4:	b580      	push	{r7, lr}
201011e6:	af00      	add	r7, sp, #0
201011e8:	4b06      	ldr	r3, [pc, #24]	; (20101204 <adc_dma_start+0x20>)
201011ea:	4a06      	ldr	r2, [pc, #24]	; (20101204 <adc_dma_start+0x20>)
201011ec:	6812      	ldr	r2, [r2, #0]
201011ee:	2108      	movs	r1, #8
201011f0:	430a      	orrs	r2, r1
201011f2:	601a      	str	r2, [r3, #0]
201011f4:	4b04      	ldr	r3, [pc, #16]	; (20101208 <adc_dma_start+0x24>)
201011f6:	2280      	movs	r2, #128	; 0x80
201011f8:	05d2      	lsls	r2, r2, #23
201011fa:	629a      	str	r2, [r3, #40]	; 0x28
201011fc:	46c0      	nop			; (mov r8, r8)
201011fe:	46bd      	mov	sp, r7
20101200:	bd80      	pop	{r7, pc}
20101202:	46c0      	nop			; (mov r8, r8)
20101204:	40088000 	.word	0x40088000
20101208:	40028000 	.word	0x40028000

2010120c <adc_dma_wait>:
2010120c:	b580      	push	{r7, lr}
2010120e:	af00      	add	r7, sp, #0
20101210:	46c0      	nop			; (mov r8, r8)
20101212:	4a0b      	ldr	r2, [pc, #44]	; (20101240 <adc_dma_wait+0x34>)
20101214:	447a      	add	r2, pc
20101216:	23f4      	movs	r3, #244	; 0xf4
20101218:	005b      	lsls	r3, r3, #1
2010121a:	58d3      	ldr	r3, [r2, r3]
2010121c:	2207      	movs	r2, #7
2010121e:	4013      	ands	r3, r2
20101220:	d1f7      	bne.n	20101212 <adc_dma_wait+0x6>
20101222:	4b08      	ldr	r3, [pc, #32]	; (20101244 <adc_dma_wait+0x38>)
20101224:	4a07      	ldr	r2, [pc, #28]	; (20101244 <adc_dma_wait+0x38>)
20101226:	6812      	ldr	r2, [r2, #0]
20101228:	2108      	movs	r1, #8
2010122a:	438a      	bics	r2, r1
2010122c:	601a      	str	r2, [r3, #0]
2010122e:	4a06      	ldr	r2, [pc, #24]	; (20101248 <adc_dma_wait+0x3c>)
20101230:	447a      	add	r2, pc
20101232:	23f4      	movs	r3, #244	; 0xf4
20101234:	005b      	lsls	r3, r3, #1
20101236:	4905      	ldr	r1, [pc, #20]	; (2010124c <adc_dma_wait+0x40>)
20101238:	50d1      	str	r1, [r2, r3]
2010123a:	46c0      	nop			; (mov r8, r8)
2010123c:	46bd      	mov	sp, r7
2010123e:	bd80      	pop	{r7, pc}
20101240:	000001e8 	.word	0x000001e8
20101244:	40088000 	.word	0x40088000
20101248:	000001cc 	.word	0x000001cc
2010124c:	ae000031 	.word	0xae000031

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
