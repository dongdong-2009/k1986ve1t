
bue.elf:     file format elf32-littlearm


Disassembly of section .text:

20100000 <main>:
20100000:	b590      	push	{r4, r7, lr}
20100002:	b0a7      	sub	sp, #156	; 0x9c
20100004:	af00      	add	r7, sp, #0
20100006:	4c2b      	ldr	r4, [pc, #172]	; (201000b4 <main+0xb4>)
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
20100044:	f000 fc86 	bl	20100954 <SystemInit>
20100048:	2334      	movs	r3, #52	; 0x34
2010004a:	18fb      	adds	r3, r7, r3
2010004c:	22c8      	movs	r2, #200	; 0xc8
2010004e:	21c8      	movs	r1, #200	; 0xc8
20100050:	0018      	movs	r0, r3
20100052:	f000 fcc7 	bl	201009e4 <reg_init>
20100056:	2324      	movs	r3, #36	; 0x24
20100058:	18fb      	adds	r3, r7, r3
2010005a:	22c8      	movs	r2, #200	; 0xc8
2010005c:	21c8      	movs	r1, #200	; 0xc8
2010005e:	0018      	movs	r0, r3
20100060:	f000 fcc0 	bl	201009e4 <reg_init>
20100064:	23fa      	movs	r3, #250	; 0xfa
20100066:	009a      	lsls	r2, r3, #2
20100068:	2314      	movs	r3, #20
2010006a:	18fb      	adds	r3, r7, r3
2010006c:	2100      	movs	r1, #0
2010006e:	0018      	movs	r0, r3
20100070:	f000 fcb8 	bl	201009e4 <reg_init>
20100074:	2396      	movs	r3, #150	; 0x96
20100076:	005a      	lsls	r2, r3, #1
20100078:	1d3b      	adds	r3, r7, #4
2010007a:	2101      	movs	r1, #1
2010007c:	0018      	movs	r0, r3
2010007e:	f000 fcb1 	bl	201009e4 <reg_init>
20100082:	4b0d      	ldr	r3, [pc, #52]	; (201000b8 <main+0xb8>)
20100084:	447b      	add	r3, pc
20100086:	2200      	movs	r2, #0
20100088:	601a      	str	r2, [r3, #0]
2010008a:	2300      	movs	r3, #0
2010008c:	2290      	movs	r2, #144	; 0x90
2010008e:	18ba      	adds	r2, r7, r2
20100090:	6013      	str	r3, [r2, #0]
20100092:	2300      	movs	r3, #0
20100094:	228c      	movs	r2, #140	; 0x8c
20100096:	18ba      	adds	r2, r7, r2
20100098:	6013      	str	r3, [r2, #0]
2010009a:	4b08      	ldr	r3, [pc, #32]	; (201000bc <main+0xbc>)
2010009c:	447b      	add	r3, pc
2010009e:	2200      	movs	r2, #0
201000a0:	601a      	str	r2, [r3, #0]
201000a2:	4b07      	ldr	r3, [pc, #28]	; (201000c0 <main+0xc0>)
201000a4:	447b      	add	r3, pc
201000a6:	2200      	movs	r2, #0
201000a8:	601a      	str	r2, [r3, #0]
201000aa:	2300      	movs	r3, #0
201000ac:	2294      	movs	r2, #148	; 0x94
201000ae:	18ba      	adds	r2, r7, r2
201000b0:	6013      	str	r3, [r2, #0]
201000b2:	e057      	b.n	20100164 <main+0x164>
201000b4:	fff00080 	.word	0xfff00080
201000b8:	fff00018 	.word	0xfff00018
201000bc:	fff00008 	.word	0xfff00008
201000c0:	fff00004 	.word	0xfff00004
201000c4:	f000 fc5a 	bl	2010097c <timer_wait>
201000c8:	f001 f850 	bl	2010116c <adc_dma_start>
201000cc:	4bd1      	ldr	r3, [pc, #836]	; (20100414 <main+0x414>)
201000ce:	4ad2      	ldr	r2, [pc, #840]	; (20100418 <main+0x418>)
201000d0:	609a      	str	r2, [r3, #8]
201000d2:	f001 f85f 	bl	20101194 <adc_dma_wait>
201000d6:	4bd1      	ldr	r3, [pc, #836]	; (2010041c <main+0x41c>)
201000d8:	58e3      	ldr	r3, [r4, r3]
201000da:	685b      	ldr	r3, [r3, #4]
201000dc:	051b      	lsls	r3, r3, #20
201000de:	0d1a      	lsrs	r2, r3, #20
201000e0:	2390      	movs	r3, #144	; 0x90
201000e2:	18fb      	adds	r3, r7, r3
201000e4:	681b      	ldr	r3, [r3, #0]
201000e6:	18d3      	adds	r3, r2, r3
201000e8:	2290      	movs	r2, #144	; 0x90
201000ea:	18ba      	adds	r2, r7, r2
201000ec:	6013      	str	r3, [r2, #0]
201000ee:	4bcb      	ldr	r3, [pc, #812]	; (2010041c <main+0x41c>)
201000f0:	58e3      	ldr	r3, [r4, r3]
201000f2:	689b      	ldr	r3, [r3, #8]
201000f4:	051b      	lsls	r3, r3, #20
201000f6:	0d1a      	lsrs	r2, r3, #20
201000f8:	238c      	movs	r3, #140	; 0x8c
201000fa:	18fb      	adds	r3, r7, r3
201000fc:	681b      	ldr	r3, [r3, #0]
201000fe:	18d3      	adds	r3, r2, r3
20100100:	228c      	movs	r2, #140	; 0x8c
20100102:	18ba      	adds	r2, r7, r2
20100104:	6013      	str	r3, [r2, #0]
20100106:	4bc5      	ldr	r3, [pc, #788]	; (2010041c <main+0x41c>)
20100108:	58e3      	ldr	r3, [r4, r3]
2010010a:	68db      	ldr	r3, [r3, #12]
2010010c:	051b      	lsls	r3, r3, #20
2010010e:	0d1a      	lsrs	r2, r3, #20
20100110:	4bc3      	ldr	r3, [pc, #780]	; (20100420 <main+0x420>)
20100112:	447b      	add	r3, pc
20100114:	681b      	ldr	r3, [r3, #0]
20100116:	18d3      	adds	r3, r2, r3
20100118:	001a      	movs	r2, r3
2010011a:	4bc2      	ldr	r3, [pc, #776]	; (20100424 <main+0x424>)
2010011c:	447b      	add	r3, pc
2010011e:	601a      	str	r2, [r3, #0]
20100120:	4bbc      	ldr	r3, [pc, #752]	; (20100414 <main+0x414>)
20100122:	689b      	ldr	r3, [r3, #8]
20100124:	051b      	lsls	r3, r3, #20
20100126:	0d1b      	lsrs	r3, r3, #20
20100128:	0018      	movs	r0, r3
2010012a:	f000 fbfb 	bl	20100924 <g2b>
2010012e:	0002      	movs	r2, r0
20100130:	4bbd      	ldr	r3, [pc, #756]	; (20100428 <main+0x428>)
20100132:	447b      	add	r3, pc
20100134:	681b      	ldr	r3, [r3, #0]
20100136:	18d3      	adds	r3, r2, r3
20100138:	001a      	movs	r2, r3
2010013a:	4bbc      	ldr	r3, [pc, #752]	; (2010042c <main+0x42c>)
2010013c:	447b      	add	r3, pc
2010013e:	601a      	str	r2, [r3, #0]
20100140:	4bb6      	ldr	r3, [pc, #728]	; (2010041c <main+0x41c>)
20100142:	58e3      	ldr	r3, [r4, r3]
20100144:	681b      	ldr	r3, [r3, #0]
20100146:	051b      	lsls	r3, r3, #20
20100148:	0d1a      	lsrs	r2, r3, #20
2010014a:	0013      	movs	r3, r2
2010014c:	009b      	lsls	r3, r3, #2
2010014e:	189b      	adds	r3, r3, r2
20100150:	0018      	movs	r0, r3
20100152:	f001 f8e1 	bl	20101318 <mfilter>
20100156:	2394      	movs	r3, #148	; 0x94
20100158:	18fb      	adds	r3, r7, r3
2010015a:	681b      	ldr	r3, [r3, #0]
2010015c:	3301      	adds	r3, #1
2010015e:	2294      	movs	r2, #148	; 0x94
20100160:	18ba      	adds	r2, r7, r2
20100162:	6013      	str	r3, [r2, #0]
20100164:	2394      	movs	r3, #148	; 0x94
20100166:	18fb      	adds	r3, r7, r3
20100168:	681b      	ldr	r3, [r3, #0]
2010016a:	4ab1      	ldr	r2, [pc, #708]	; (20100430 <main+0x430>)
2010016c:	4293      	cmp	r3, r2
2010016e:	dda9      	ble.n	201000c4 <main+0xc4>
20100170:	2390      	movs	r3, #144	; 0x90
20100172:	18fb      	adds	r3, r7, r3
20100174:	681b      	ldr	r3, [r3, #0]
20100176:	129b      	asrs	r3, r3, #10
20100178:	2290      	movs	r2, #144	; 0x90
2010017a:	18ba      	adds	r2, r7, r2
2010017c:	6013      	str	r3, [r2, #0]
2010017e:	238c      	movs	r3, #140	; 0x8c
20100180:	18fb      	adds	r3, r7, r3
20100182:	681b      	ldr	r3, [r3, #0]
20100184:	129b      	asrs	r3, r3, #10
20100186:	228c      	movs	r2, #140	; 0x8c
20100188:	18ba      	adds	r2, r7, r2
2010018a:	6013      	str	r3, [r2, #0]
2010018c:	4ba9      	ldr	r3, [pc, #676]	; (20100434 <main+0x434>)
2010018e:	447b      	add	r3, pc
20100190:	681b      	ldr	r3, [r3, #0]
20100192:	129a      	asrs	r2, r3, #10
20100194:	4ba8      	ldr	r3, [pc, #672]	; (20100438 <main+0x438>)
20100196:	447b      	add	r3, pc
20100198:	601a      	str	r2, [r3, #0]
2010019a:	4ba8      	ldr	r3, [pc, #672]	; (2010043c <main+0x43c>)
2010019c:	447b      	add	r3, pc
2010019e:	681a      	ldr	r2, [r3, #0]
201001a0:	4ba7      	ldr	r3, [pc, #668]	; (20100440 <main+0x440>)
201001a2:	447b      	add	r3, pc
201001a4:	601a      	str	r2, [r3, #0]
201001a6:	4ba7      	ldr	r3, [pc, #668]	; (20100444 <main+0x444>)
201001a8:	447b      	add	r3, pc
201001aa:	681b      	ldr	r3, [r3, #0]
201001ac:	129a      	asrs	r2, r3, #10
201001ae:	4ba6      	ldr	r3, [pc, #664]	; (20100448 <main+0x448>)
201001b0:	447b      	add	r3, pc
201001b2:	601a      	str	r2, [r3, #0]
201001b4:	f000 fbe2 	bl	2010097c <timer_wait>
201001b8:	4ba4      	ldr	r3, [pc, #656]	; (2010044c <main+0x44c>)
201001ba:	4aa4      	ldr	r2, [pc, #656]	; (2010044c <main+0x44c>)
201001bc:	6812      	ldr	r2, [r2, #0]
201001be:	2140      	movs	r1, #64	; 0x40
201001c0:	438a      	bics	r2, r1
201001c2:	601a      	str	r2, [r3, #0]
201001c4:	f000 ffd2 	bl	2010116c <adc_dma_start>
201001c8:	4b92      	ldr	r3, [pc, #584]	; (20100414 <main+0x414>)
201001ca:	4a93      	ldr	r2, [pc, #588]	; (20100418 <main+0x418>)
201001cc:	609a      	str	r2, [r3, #8]
201001ce:	f000 ffe1 	bl	20101194 <adc_dma_wait>
201001d2:	4b9e      	ldr	r3, [pc, #632]	; (2010044c <main+0x44c>)
201001d4:	4a9d      	ldr	r2, [pc, #628]	; (2010044c <main+0x44c>)
201001d6:	6812      	ldr	r2, [r2, #0]
201001d8:	2140      	movs	r1, #64	; 0x40
201001da:	430a      	orrs	r2, r1
201001dc:	601a      	str	r2, [r3, #0]
201001de:	4b8f      	ldr	r3, [pc, #572]	; (2010041c <main+0x41c>)
201001e0:	58e3      	ldr	r3, [r4, r3]
201001e2:	681b      	ldr	r3, [r3, #0]
201001e4:	051b      	lsls	r3, r3, #20
201001e6:	0d1a      	lsrs	r2, r3, #20
201001e8:	0013      	movs	r3, r2
201001ea:	009b      	lsls	r3, r3, #2
201001ec:	189b      	adds	r3, r3, r2
201001ee:	0018      	movs	r0, r3
201001f0:	f001 f892 	bl	20101318 <mfilter>
201001f4:	0003      	movs	r3, r0
201001f6:	2294      	movs	r2, #148	; 0x94
201001f8:	18ba      	adds	r2, r7, r2
201001fa:	6013      	str	r3, [r2, #0]
201001fc:	2394      	movs	r3, #148	; 0x94
201001fe:	18fb      	adds	r3, r7, r3
20100200:	681b      	ldr	r3, [r3, #0]
20100202:	10da      	asrs	r2, r3, #3
20100204:	2394      	movs	r3, #148	; 0x94
20100206:	18fb      	adds	r3, r7, r3
20100208:	681b      	ldr	r3, [r3, #0]
2010020a:	18d3      	adds	r3, r2, r3
2010020c:	10db      	asrs	r3, r3, #3
2010020e:	22af      	movs	r2, #175	; 0xaf
20100210:	0092      	lsls	r2, r2, #2
20100212:	189a      	adds	r2, r3, r2
20100214:	4b8e      	ldr	r3, [pc, #568]	; (20100450 <main+0x450>)
20100216:	447b      	add	r3, pc
20100218:	601a      	str	r2, [r3, #0]
2010021a:	4b80      	ldr	r3, [pc, #512]	; (2010041c <main+0x41c>)
2010021c:	58e3      	ldr	r3, [r4, r3]
2010021e:	685b      	ldr	r3, [r3, #4]
20100220:	051b      	lsls	r3, r3, #20
20100222:	0d1a      	lsrs	r2, r3, #20
20100224:	2390      	movs	r3, #144	; 0x90
20100226:	18fb      	adds	r3, r7, r3
20100228:	681b      	ldr	r3, [r3, #0]
2010022a:	1ad3      	subs	r3, r2, r3
2010022c:	673b      	str	r3, [r7, #112]	; 0x70
2010022e:	4b7b      	ldr	r3, [pc, #492]	; (2010041c <main+0x41c>)
20100230:	58e3      	ldr	r3, [r4, r3]
20100232:	689b      	ldr	r3, [r3, #8]
20100234:	051b      	lsls	r3, r3, #20
20100236:	0d1a      	lsrs	r2, r3, #20
20100238:	238c      	movs	r3, #140	; 0x8c
2010023a:	18fb      	adds	r3, r7, r3
2010023c:	681b      	ldr	r3, [r3, #0]
2010023e:	1ad3      	subs	r3, r2, r3
20100240:	66fb      	str	r3, [r7, #108]	; 0x6c
20100242:	6f3b      	ldr	r3, [r7, #112]	; 0x70
20100244:	425a      	negs	r2, r3
20100246:	6efb      	ldr	r3, [r7, #108]	; 0x6c
20100248:	1ad3      	subs	r3, r2, r3
2010024a:	66bb      	str	r3, [r7, #104]	; 0x68
2010024c:	4b73      	ldr	r3, [pc, #460]	; (2010041c <main+0x41c>)
2010024e:	58e3      	ldr	r3, [r4, r3]
20100250:	68db      	ldr	r3, [r3, #12]
20100252:	051b      	lsls	r3, r3, #20
20100254:	0d1a      	lsrs	r2, r3, #20
20100256:	4b7f      	ldr	r3, [pc, #508]	; (20100454 <main+0x454>)
20100258:	447b      	add	r3, pc
2010025a:	601a      	str	r2, [r3, #0]
2010025c:	4b6d      	ldr	r3, [pc, #436]	; (20100414 <main+0x414>)
2010025e:	689b      	ldr	r3, [r3, #8]
20100260:	051b      	lsls	r3, r3, #20
20100262:	0d1b      	lsrs	r3, r3, #20
20100264:	0018      	movs	r0, r3
20100266:	f000 fb5d 	bl	20100924 <g2b>
2010026a:	0003      	movs	r3, r0
2010026c:	667b      	str	r3, [r7, #100]	; 0x64
2010026e:	6e7b      	ldr	r3, [r7, #100]	; 0x64
20100270:	059b      	lsls	r3, r3, #22
20100272:	0d9b      	lsrs	r3, r3, #22
20100274:	67bb      	str	r3, [r7, #120]	; 0x78
20100276:	2384      	movs	r3, #132	; 0x84
20100278:	18fb      	adds	r3, r7, r3
2010027a:	681b      	ldr	r3, [r3, #0]
2010027c:	3301      	adds	r3, #1
2010027e:	2284      	movs	r2, #132	; 0x84
20100280:	18ba      	adds	r2, r7, r2
20100282:	6013      	str	r3, [r2, #0]
20100284:	2384      	movs	r3, #132	; 0x84
20100286:	18fb      	adds	r3, r7, r3
20100288:	681b      	ldr	r3, [r3, #0]
2010028a:	2207      	movs	r2, #7
2010028c:	4013      	ands	r3, r2
2010028e:	d152      	bne.n	20100336 <main+0x336>
20100290:	6e7b      	ldr	r3, [r7, #100]	; 0x64
20100292:	003a      	movs	r2, r7
20100294:	0011      	movs	r1, r2
20100296:	0018      	movs	r0, r3
20100298:	f000 fede 	bl	20101058 <get_speed>
2010029c:	0003      	movs	r3, r0
2010029e:	663b      	str	r3, [r7, #96]	; 0x60
201002a0:	4b6d      	ldr	r3, [pc, #436]	; (20100458 <main+0x458>)
201002a2:	447b      	add	r3, pc
201002a4:	681a      	ldr	r2, [r3, #0]
201002a6:	683b      	ldr	r3, [r7, #0]
201002a8:	1ad1      	subs	r1, r2, r3
201002aa:	1d3b      	adds	r3, r7, #4
201002ac:	2200      	movs	r2, #0
201002ae:	0018      	movs	r0, r3
201002b0:	f000 fb9e 	bl	201009f0 <reg_update>
201002b4:	1d3b      	adds	r3, r7, #4
201002b6:	68db      	ldr	r3, [r3, #12]
201002b8:	129b      	asrs	r3, r3, #10
201002ba:	677b      	str	r3, [r7, #116]	; 0x74
201002bc:	6f7a      	ldr	r2, [r7, #116]	; 0x74
201002be:	6e3b      	ldr	r3, [r7, #96]	; 0x60
201002c0:	1ad1      	subs	r1, r2, r3
201002c2:	2314      	movs	r3, #20
201002c4:	18fb      	adds	r3, r7, r3
201002c6:	2200      	movs	r2, #0
201002c8:	0018      	movs	r0, r3
201002ca:	f000 fb91 	bl	201009f0 <reg_update>
201002ce:	2314      	movs	r3, #20
201002d0:	18fb      	adds	r3, r7, r3
201002d2:	68db      	ldr	r3, [r3, #12]
201002d4:	129b      	asrs	r3, r3, #10
201002d6:	2280      	movs	r2, #128	; 0x80
201002d8:	18ba      	adds	r2, r7, r2
201002da:	6013      	str	r3, [r2, #0]
201002dc:	2380      	movs	r3, #128	; 0x80
201002de:	18fb      	adds	r3, r7, r3
201002e0:	681a      	ldr	r2, [r3, #0]
201002e2:	23fa      	movs	r3, #250	; 0xfa
201002e4:	00db      	lsls	r3, r3, #3
201002e6:	429a      	cmp	r2, r3
201002e8:	dd04      	ble.n	201002f4 <main+0x2f4>
201002ea:	23fa      	movs	r3, #250	; 0xfa
201002ec:	00db      	lsls	r3, r3, #3
201002ee:	2280      	movs	r2, #128	; 0x80
201002f0:	18ba      	adds	r2, r7, r2
201002f2:	6013      	str	r3, [r2, #0]
201002f4:	2380      	movs	r3, #128	; 0x80
201002f6:	18fb      	adds	r3, r7, r3
201002f8:	681b      	ldr	r3, [r3, #0]
201002fa:	4a58      	ldr	r2, [pc, #352]	; (2010045c <main+0x45c>)
201002fc:	4293      	cmp	r3, r2
201002fe:	da03      	bge.n	20100308 <main+0x308>
20100300:	4b56      	ldr	r3, [pc, #344]	; (2010045c <main+0x45c>)
20100302:	2280      	movs	r2, #128	; 0x80
20100304:	18ba      	adds	r2, r7, r2
20100306:	6013      	str	r3, [r2, #0]
20100308:	4b55      	ldr	r3, [pc, #340]	; (20100460 <main+0x460>)
2010030a:	6f7a      	ldr	r2, [r7, #116]	; 0x74
2010030c:	1192      	asrs	r2, r2, #6
2010030e:	2180      	movs	r1, #128	; 0x80
20100310:	0109      	lsls	r1, r1, #4
20100312:	468c      	mov	ip, r1
20100314:	4462      	add	r2, ip
20100316:	605a      	str	r2, [r3, #4]
20100318:	4b52      	ldr	r3, [pc, #328]	; (20100464 <main+0x464>)
2010031a:	447b      	add	r3, pc
2010031c:	681a      	ldr	r2, [r3, #0]
2010031e:	4b52      	ldr	r3, [pc, #328]	; (20100468 <main+0x468>)
20100320:	447b      	add	r3, pc
20100322:	681b      	ldr	r3, [r3, #0]
20100324:	1ad2      	subs	r2, r2, r3
20100326:	0013      	movs	r3, r2
20100328:	00db      	lsls	r3, r3, #3
2010032a:	1a9b      	subs	r3, r3, r2
2010032c:	00da      	lsls	r2, r3, #3
2010032e:	1ad2      	subs	r2, r2, r3
20100330:	4b4e      	ldr	r3, [pc, #312]	; (2010046c <main+0x46c>)
20100332:	447b      	add	r3, pc
20100334:	601a      	str	r2, [r3, #0]
20100336:	6fbb      	ldr	r3, [r7, #120]	; 0x78
20100338:	4a4d      	ldr	r2, [pc, #308]	; (20100470 <main+0x470>)
2010033a:	4694      	mov	ip, r2
2010033c:	4463      	add	r3, ip
2010033e:	059b      	lsls	r3, r3, #22
20100340:	0d9b      	lsrs	r3, r3, #22
20100342:	67bb      	str	r3, [r7, #120]	; 0x78
20100344:	2344      	movs	r3, #68	; 0x44
20100346:	18fb      	adds	r3, r7, r3
20100348:	6f3a      	ldr	r2, [r7, #112]	; 0x70
2010034a:	601a      	str	r2, [r3, #0]
2010034c:	2344      	movs	r3, #68	; 0x44
2010034e:	18fb      	adds	r3, r7, r3
20100350:	6eba      	ldr	r2, [r7, #104]	; 0x68
20100352:	605a      	str	r2, [r3, #4]
20100354:	2344      	movs	r3, #68	; 0x44
20100356:	18fb      	adds	r3, r7, r3
20100358:	6efa      	ldr	r2, [r7, #108]	; 0x6c
2010035a:	609a      	str	r2, [r3, #8]
2010035c:	6fba      	ldr	r2, [r7, #120]	; 0x78
2010035e:	2350      	movs	r3, #80	; 0x50
20100360:	18f9      	adds	r1, r7, r3
20100362:	2344      	movs	r3, #68	; 0x44
20100364:	18fb      	adds	r3, r7, r3
20100366:	0018      	movs	r0, r3
20100368:	f000 ff5f 	bl	2010122a <abc_to_dq>
2010036c:	2350      	movs	r3, #80	; 0x50
2010036e:	18fb      	adds	r3, r7, r3
20100370:	681b      	ldr	r3, [r3, #0]
20100372:	425b      	negs	r3, r3
20100374:	65fb      	str	r3, [r7, #92]	; 0x5c
20100376:	2350      	movs	r3, #80	; 0x50
20100378:	18fb      	adds	r3, r7, r3
2010037a:	685b      	ldr	r3, [r3, #4]
2010037c:	2280      	movs	r2, #128	; 0x80
2010037e:	18ba      	adds	r2, r7, r2
20100380:	6812      	ldr	r2, [r2, #0]
20100382:	1ad3      	subs	r3, r2, r3
20100384:	65bb      	str	r3, [r7, #88]	; 0x58
20100386:	2388      	movs	r3, #136	; 0x88
20100388:	18fb      	adds	r3, r7, r3
2010038a:	681a      	ldr	r2, [r3, #0]
2010038c:	6df9      	ldr	r1, [r7, #92]	; 0x5c
2010038e:	2334      	movs	r3, #52	; 0x34
20100390:	18fb      	adds	r3, r7, r3
20100392:	0018      	movs	r0, r3
20100394:	f000 fb2c 	bl	201009f0 <reg_update>
20100398:	2388      	movs	r3, #136	; 0x88
2010039a:	18fb      	adds	r3, r7, r3
2010039c:	681a      	ldr	r2, [r3, #0]
2010039e:	6db9      	ldr	r1, [r7, #88]	; 0x58
201003a0:	2324      	movs	r3, #36	; 0x24
201003a2:	18fb      	adds	r3, r7, r3
201003a4:	0018      	movs	r0, r3
201003a6:	f000 fb23 	bl	201009f0 <reg_update>
201003aa:	2334      	movs	r3, #52	; 0x34
201003ac:	18fb      	adds	r3, r7, r3
201003ae:	68da      	ldr	r2, [r3, #12]
201003b0:	2350      	movs	r3, #80	; 0x50
201003b2:	18fb      	adds	r3, r7, r3
201003b4:	601a      	str	r2, [r3, #0]
201003b6:	2324      	movs	r3, #36	; 0x24
201003b8:	18fb      	adds	r3, r7, r3
201003ba:	68da      	ldr	r2, [r3, #12]
201003bc:	2350      	movs	r3, #80	; 0x50
201003be:	18fb      	adds	r3, r7, r3
201003c0:	605a      	str	r2, [r3, #4]
201003c2:	6fba      	ldr	r2, [r7, #120]	; 0x78
201003c4:	2350      	movs	r3, #80	; 0x50
201003c6:	18f9      	adds	r1, r7, r3
201003c8:	2344      	movs	r3, #68	; 0x44
201003ca:	18fb      	adds	r3, r7, r3
201003cc:	0018      	movs	r0, r3
201003ce:	f000 fc87 	bl	20100ce0 <svpwm>
201003d2:	0003      	movs	r3, r0
201003d4:	2288      	movs	r2, #136	; 0x88
201003d6:	18ba      	adds	r2, r7, r2
201003d8:	6013      	str	r3, [r2, #0]
201003da:	4a26      	ldr	r2, [pc, #152]	; (20100474 <main+0x474>)
201003dc:	2344      	movs	r3, #68	; 0x44
201003de:	18fb      	adds	r3, r7, r3
201003e0:	681b      	ldr	r3, [r3, #0]
201003e2:	2180      	movs	r1, #128	; 0x80
201003e4:	0089      	lsls	r1, r1, #2
201003e6:	468c      	mov	ip, r1
201003e8:	4463      	add	r3, ip
201003ea:	6113      	str	r3, [r2, #16]
201003ec:	4a21      	ldr	r2, [pc, #132]	; (20100474 <main+0x474>)
201003ee:	2344      	movs	r3, #68	; 0x44
201003f0:	18fb      	adds	r3, r7, r3
201003f2:	685b      	ldr	r3, [r3, #4]
201003f4:	2180      	movs	r1, #128	; 0x80
201003f6:	0089      	lsls	r1, r1, #2
201003f8:	468c      	mov	ip, r1
201003fa:	4463      	add	r3, ip
201003fc:	6153      	str	r3, [r2, #20]
201003fe:	4a1d      	ldr	r2, [pc, #116]	; (20100474 <main+0x474>)
20100400:	2344      	movs	r3, #68	; 0x44
20100402:	18fb      	adds	r3, r7, r3
20100404:	689b      	ldr	r3, [r3, #8]
20100406:	2180      	movs	r1, #128	; 0x80
20100408:	0089      	lsls	r1, r1, #2
2010040a:	468c      	mov	ip, r1
2010040c:	4463      	add	r3, ip
2010040e:	6193      	str	r3, [r2, #24]
20100410:	e6d0      	b.n	201001b4 <main+0x1b4>
20100412:	46c0      	nop			; (mov r8, r8)
20100414:	400a0000 	.word	0x400a0000
20100418:	00000555 	.word	0x00000555
2010041c:	00000004 	.word	0x00000004
20100420:	ffefff92 	.word	0xffefff92
20100424:	ffefff88 	.word	0xffefff88
20100428:	ffefff76 	.word	0xffefff76
2010042c:	ffefff6c 	.word	0xffefff6c
20100430:	000003ff 	.word	0x000003ff
20100434:	ffefff16 	.word	0xffefff16
20100438:	ffefff0e 	.word	0xffefff0e
2010043c:	ffefff08 	.word	0xffefff08
20100440:	ffeffefe 	.word	0xffeffefe
20100444:	ffefff00 	.word	0xffefff00
20100448:	ffeffef8 	.word	0xffeffef8
2010044c:	400b8000 	.word	0x400b8000
20100450:	ffeffe8a 	.word	0xffeffe8a
20100454:	ffeffe54 	.word	0xffeffe54
20100458:	ffeffdfa 	.word	0xffeffdfa
2010045c:	fffff830 	.word	0xfffff830
20100460:	40090000 	.word	0x40090000
20100464:	ffeffd86 	.word	0xffeffd86
20100468:	ffeffd84 	.word	0xffeffd84
2010046c:	ffeffd6a 	.word	0xffeffd6a
20100470:	0000035e 	.word	0x0000035e
20100474:	40098000 	.word	0x40098000

20100478 <sleep>:
20100478:	b580      	push	{r7, lr}
2010047a:	b084      	sub	sp, #16
2010047c:	af00      	add	r7, sp, #0
2010047e:	6078      	str	r0, [r7, #4]
20100480:	2300      	movs	r3, #0
20100482:	60fb      	str	r3, [r7, #12]
20100484:	e00b      	b.n	2010049e <sleep+0x26>
20100486:	46c0      	nop			; (mov r8, r8)
20100488:	4b09      	ldr	r3, [pc, #36]	; (201004b0 <sleep+0x38>)
2010048a:	6d5b      	ldr	r3, [r3, #84]	; 0x54
2010048c:	2202      	movs	r2, #2
2010048e:	4013      	ands	r3, r2
20100490:	d0fa      	beq.n	20100488 <sleep+0x10>
20100492:	4b07      	ldr	r3, [pc, #28]	; (201004b0 <sleep+0x38>)
20100494:	2200      	movs	r2, #0
20100496:	655a      	str	r2, [r3, #84]	; 0x54
20100498:	68fb      	ldr	r3, [r7, #12]
2010049a:	3301      	adds	r3, #1
2010049c:	60fb      	str	r3, [r7, #12]
2010049e:	68fa      	ldr	r2, [r7, #12]
201004a0:	687b      	ldr	r3, [r7, #4]
201004a2:	429a      	cmp	r2, r3
201004a4:	d3ef      	bcc.n	20100486 <sleep+0xe>
201004a6:	46c0      	nop			; (mov r8, r8)
201004a8:	0018      	movs	r0, r3
201004aa:	46bd      	mov	sp, r7
201004ac:	b004      	add	sp, #16
201004ae:	bd80      	pop	{r7, pc}
201004b0:	40098000 	.word	0x40098000

201004b4 <PortConfig>:
201004b4:	b580      	push	{r7, lr}
201004b6:	af00      	add	r7, sp, #0
201004b8:	4b42      	ldr	r3, [pc, #264]	; (201005c4 <PortConfig+0x110>)
201004ba:	4a42      	ldr	r2, [pc, #264]	; (201005c4 <PortConfig+0x110>)
201004bc:	69d2      	ldr	r2, [r2, #28]
201004be:	2180      	movs	r1, #128	; 0x80
201004c0:	0389      	lsls	r1, r1, #14
201004c2:	430a      	orrs	r2, r1
201004c4:	61da      	str	r2, [r3, #28]
201004c6:	4b40      	ldr	r3, [pc, #256]	; (201005c8 <PortConfig+0x114>)
201004c8:	4a3f      	ldr	r2, [pc, #252]	; (201005c8 <PortConfig+0x114>)
201004ca:	6892      	ldr	r2, [r2, #8]
201004cc:	493f      	ldr	r1, [pc, #252]	; (201005cc <PortConfig+0x118>)
201004ce:	400a      	ands	r2, r1
201004d0:	609a      	str	r2, [r3, #8]
201004d2:	4b3d      	ldr	r3, [pc, #244]	; (201005c8 <PortConfig+0x114>)
201004d4:	4a3c      	ldr	r2, [pc, #240]	; (201005c8 <PortConfig+0x114>)
201004d6:	6892      	ldr	r2, [r2, #8]
201004d8:	493d      	ldr	r1, [pc, #244]	; (201005d0 <PortConfig+0x11c>)
201004da:	430a      	orrs	r2, r1
201004dc:	609a      	str	r2, [r3, #8]
201004de:	4b3a      	ldr	r3, [pc, #232]	; (201005c8 <PortConfig+0x114>)
201004e0:	4a39      	ldr	r2, [pc, #228]	; (201005c8 <PortConfig+0x114>)
201004e2:	6852      	ldr	r2, [r2, #4]
201004e4:	21fc      	movs	r1, #252	; 0xfc
201004e6:	0109      	lsls	r1, r1, #4
201004e8:	430a      	orrs	r2, r1
201004ea:	605a      	str	r2, [r3, #4]
201004ec:	4b36      	ldr	r3, [pc, #216]	; (201005c8 <PortConfig+0x114>)
201004ee:	4a36      	ldr	r2, [pc, #216]	; (201005c8 <PortConfig+0x114>)
201004f0:	68d2      	ldr	r2, [r2, #12]
201004f2:	21fc      	movs	r1, #252	; 0xfc
201004f4:	0109      	lsls	r1, r1, #4
201004f6:	430a      	orrs	r2, r1
201004f8:	60da      	str	r2, [r3, #12]
201004fa:	4b33      	ldr	r3, [pc, #204]	; (201005c8 <PortConfig+0x114>)
201004fc:	4a32      	ldr	r2, [pc, #200]	; (201005c8 <PortConfig+0x114>)
201004fe:	6992      	ldr	r2, [r2, #24]
20100500:	4934      	ldr	r1, [pc, #208]	; (201005d4 <PortConfig+0x120>)
20100502:	430a      	orrs	r2, r1
20100504:	619a      	str	r2, [r3, #24]
20100506:	4b2f      	ldr	r3, [pc, #188]	; (201005c4 <PortConfig+0x110>)
20100508:	4a2e      	ldr	r2, [pc, #184]	; (201005c4 <PortConfig+0x110>)
2010050a:	69d2      	ldr	r2, [r2, #28]
2010050c:	2180      	movs	r1, #128	; 0x80
2010050e:	0489      	lsls	r1, r1, #18
20100510:	430a      	orrs	r2, r1
20100512:	61da      	str	r2, [r3, #28]
20100514:	4b30      	ldr	r3, [pc, #192]	; (201005d8 <PortConfig+0x124>)
20100516:	4a30      	ldr	r2, [pc, #192]	; (201005d8 <PortConfig+0x124>)
20100518:	68d2      	ldr	r2, [r2, #12]
2010051a:	2102      	movs	r1, #2
2010051c:	438a      	bics	r2, r1
2010051e:	60da      	str	r2, [r3, #12]
20100520:	4b28      	ldr	r3, [pc, #160]	; (201005c4 <PortConfig+0x110>)
20100522:	4a28      	ldr	r2, [pc, #160]	; (201005c4 <PortConfig+0x110>)
20100524:	69d2      	ldr	r2, [r2, #28]
20100526:	2180      	movs	r1, #128	; 0x80
20100528:	0449      	lsls	r1, r1, #17
2010052a:	430a      	orrs	r2, r1
2010052c:	61da      	str	r2, [r3, #28]
2010052e:	4b2b      	ldr	r3, [pc, #172]	; (201005dc <PortConfig+0x128>)
20100530:	4a2a      	ldr	r2, [pc, #168]	; (201005dc <PortConfig+0x128>)
20100532:	6892      	ldr	r2, [r2, #8]
20100534:	492a      	ldr	r1, [pc, #168]	; (201005e0 <PortConfig+0x12c>)
20100536:	400a      	ands	r2, r1
20100538:	609a      	str	r2, [r3, #8]
2010053a:	4b28      	ldr	r3, [pc, #160]	; (201005dc <PortConfig+0x128>)
2010053c:	4a27      	ldr	r2, [pc, #156]	; (201005dc <PortConfig+0x128>)
2010053e:	6892      	ldr	r2, [r2, #8]
20100540:	21a0      	movs	r1, #160	; 0xa0
20100542:	02c9      	lsls	r1, r1, #11
20100544:	430a      	orrs	r2, r1
20100546:	609a      	str	r2, [r3, #8]
20100548:	4b24      	ldr	r3, [pc, #144]	; (201005dc <PortConfig+0x128>)
2010054a:	4a24      	ldr	r2, [pc, #144]	; (201005dc <PortConfig+0x128>)
2010054c:	68d2      	ldr	r2, [r2, #12]
2010054e:	21c0      	movs	r1, #192	; 0xc0
20100550:	0089      	lsls	r1, r1, #2
20100552:	430a      	orrs	r2, r1
20100554:	60da      	str	r2, [r3, #12]
20100556:	4b21      	ldr	r3, [pc, #132]	; (201005dc <PortConfig+0x128>)
20100558:	4a20      	ldr	r2, [pc, #128]	; (201005dc <PortConfig+0x128>)
2010055a:	6992      	ldr	r2, [r2, #24]
2010055c:	21c0      	movs	r1, #192	; 0xc0
2010055e:	0309      	lsls	r1, r1, #12
20100560:	430a      	orrs	r2, r1
20100562:	619a      	str	r2, [r3, #24]
20100564:	4b1d      	ldr	r3, [pc, #116]	; (201005dc <PortConfig+0x128>)
20100566:	4a1d      	ldr	r2, [pc, #116]	; (201005dc <PortConfig+0x128>)
20100568:	6852      	ldr	r2, [r2, #4]
2010056a:	2180      	movs	r1, #128	; 0x80
2010056c:	0089      	lsls	r1, r1, #2
2010056e:	430a      	orrs	r2, r1
20100570:	605a      	str	r2, [r3, #4]
20100572:	4b1a      	ldr	r3, [pc, #104]	; (201005dc <PortConfig+0x128>)
20100574:	4a19      	ldr	r2, [pc, #100]	; (201005dc <PortConfig+0x128>)
20100576:	6852      	ldr	r2, [r2, #4]
20100578:	491a      	ldr	r1, [pc, #104]	; (201005e4 <PortConfig+0x130>)
2010057a:	400a      	ands	r2, r1
2010057c:	605a      	str	r2, [r3, #4]
2010057e:	4b11      	ldr	r3, [pc, #68]	; (201005c4 <PortConfig+0x110>)
20100580:	4a10      	ldr	r2, [pc, #64]	; (201005c4 <PortConfig+0x110>)
20100582:	69d2      	ldr	r2, [r2, #28]
20100584:	2180      	movs	r1, #128	; 0x80
20100586:	0409      	lsls	r1, r1, #16
20100588:	430a      	orrs	r2, r1
2010058a:	61da      	str	r2, [r3, #28]
2010058c:	4b16      	ldr	r3, [pc, #88]	; (201005e8 <PortConfig+0x134>)
2010058e:	2200      	movs	r2, #0
20100590:	609a      	str	r2, [r3, #8]
20100592:	4b15      	ldr	r3, [pc, #84]	; (201005e8 <PortConfig+0x134>)
20100594:	2200      	movs	r2, #0
20100596:	601a      	str	r2, [r3, #0]
20100598:	4b13      	ldr	r3, [pc, #76]	; (201005e8 <PortConfig+0x134>)
2010059a:	4a13      	ldr	r2, [pc, #76]	; (201005e8 <PortConfig+0x134>)
2010059c:	6852      	ldr	r2, [r2, #4]
2010059e:	2160      	movs	r1, #96	; 0x60
201005a0:	430a      	orrs	r2, r1
201005a2:	605a      	str	r2, [r3, #4]
201005a4:	4b10      	ldr	r3, [pc, #64]	; (201005e8 <PortConfig+0x134>)
201005a6:	4a10      	ldr	r2, [pc, #64]	; (201005e8 <PortConfig+0x134>)
201005a8:	68d2      	ldr	r2, [r2, #12]
201005aa:	2160      	movs	r1, #96	; 0x60
201005ac:	430a      	orrs	r2, r1
201005ae:	60da      	str	r2, [r3, #12]
201005b0:	4b0d      	ldr	r3, [pc, #52]	; (201005e8 <PortConfig+0x134>)
201005b2:	4a0d      	ldr	r2, [pc, #52]	; (201005e8 <PortConfig+0x134>)
201005b4:	6992      	ldr	r2, [r2, #24]
201005b6:	21f0      	movs	r1, #240	; 0xf0
201005b8:	0189      	lsls	r1, r1, #6
201005ba:	430a      	orrs	r2, r1
201005bc:	619a      	str	r2, [r3, #24]
201005be:	46c0      	nop			; (mov r8, r8)
201005c0:	46bd      	mov	sp, r7
201005c2:	bd80      	pop	{r7, pc}
201005c4:	40020000 	.word	0x40020000
201005c8:	400a8000 	.word	0x400a8000
201005cc:	ff000fff 	.word	0xff000fff
201005d0:	00aaa000 	.word	0x00aaa000
201005d4:	00fff000 	.word	0x00fff000
201005d8:	400c8000 	.word	0x400c8000
201005dc:	400c0000 	.word	0x400c0000
201005e0:	fff0ffff 	.word	0xfff0ffff
201005e4:	fffffeff 	.word	0xfffffeff
201005e8:	400b8000 	.word	0x400b8000

201005ec <ClkConfig>:
201005ec:	b580      	push	{r7, lr}
201005ee:	af00      	add	r7, sp, #0
201005f0:	4b18      	ldr	r3, [pc, #96]	; (20100654 <ClkConfig+0x68>)
201005f2:	4a18      	ldr	r2, [pc, #96]	; (20100654 <ClkConfig+0x68>)
201005f4:	6892      	ldr	r2, [r2, #8]
201005f6:	2101      	movs	r1, #1
201005f8:	430a      	orrs	r2, r1
201005fa:	609a      	str	r2, [r3, #8]
201005fc:	46c0      	nop			; (mov r8, r8)
201005fe:	4b15      	ldr	r3, [pc, #84]	; (20100654 <ClkConfig+0x68>)
20100600:	681b      	ldr	r3, [r3, #0]
20100602:	2204      	movs	r2, #4
20100604:	4013      	ands	r3, r2
20100606:	d0fa      	beq.n	201005fe <ClkConfig+0x12>
20100608:	4b12      	ldr	r3, [pc, #72]	; (20100654 <ClkConfig+0x68>)
2010060a:	4a12      	ldr	r2, [pc, #72]	; (20100654 <ClkConfig+0x68>)
2010060c:	68d2      	ldr	r2, [r2, #12]
2010060e:	2102      	movs	r1, #2
20100610:	430a      	orrs	r2, r1
20100612:	60da      	str	r2, [r3, #12]
20100614:	4b0f      	ldr	r3, [pc, #60]	; (20100654 <ClkConfig+0x68>)
20100616:	4a10      	ldr	r2, [pc, #64]	; (20100658 <ClkConfig+0x6c>)
20100618:	605a      	str	r2, [r3, #4]
2010061a:	46c0      	nop			; (mov r8, r8)
2010061c:	4b0d      	ldr	r3, [pc, #52]	; (20100654 <ClkConfig+0x68>)
2010061e:	681b      	ldr	r3, [r3, #0]
20100620:	2202      	movs	r2, #2
20100622:	4013      	ands	r3, r2
20100624:	d0fa      	beq.n	2010061c <ClkConfig+0x30>
20100626:	4b0d      	ldr	r3, [pc, #52]	; (2010065c <ClkConfig+0x70>)
20100628:	4a0c      	ldr	r2, [pc, #48]	; (2010065c <ClkConfig+0x70>)
2010062a:	6812      	ldr	r2, [r2, #0]
2010062c:	2120      	movs	r1, #32
2010062e:	430a      	orrs	r2, r1
20100630:	601a      	str	r2, [r3, #0]
20100632:	4b08      	ldr	r3, [pc, #32]	; (20100654 <ClkConfig+0x68>)
20100634:	4a07      	ldr	r2, [pc, #28]	; (20100654 <ClkConfig+0x68>)
20100636:	68d2      	ldr	r2, [r2, #12]
20100638:	2180      	movs	r1, #128	; 0x80
2010063a:	0049      	lsls	r1, r1, #1
2010063c:	430a      	orrs	r2, r1
2010063e:	60da      	str	r2, [r3, #12]
20100640:	4b04      	ldr	r3, [pc, #16]	; (20100654 <ClkConfig+0x68>)
20100642:	4a04      	ldr	r2, [pc, #16]	; (20100654 <ClkConfig+0x68>)
20100644:	68d2      	ldr	r2, [r2, #12]
20100646:	2104      	movs	r1, #4
20100648:	430a      	orrs	r2, r1
2010064a:	60da      	str	r2, [r3, #12]
2010064c:	46c0      	nop			; (mov r8, r8)
2010064e:	46bd      	mov	sp, r7
20100650:	bd80      	pop	{r7, pc}
20100652:	46c0      	nop			; (mov r8, r8)
20100654:	40020000 	.word	0x40020000
20100658:	00000e04 	.word	0x00000e04
2010065c:	40018000 	.word	0x40018000

20100660 <TimerConfig>:
20100660:	b580      	push	{r7, lr}
20100662:	af00      	add	r7, sp, #0
20100664:	4b71      	ldr	r3, [pc, #452]	; (2010082c <TimerConfig+0x1cc>)
20100666:	4a71      	ldr	r2, [pc, #452]	; (2010082c <TimerConfig+0x1cc>)
20100668:	69d2      	ldr	r2, [r2, #28]
2010066a:	2180      	movs	r1, #128	; 0x80
2010066c:	0309      	lsls	r1, r1, #12
2010066e:	430a      	orrs	r2, r1
20100670:	61da      	str	r2, [r3, #28]
20100672:	4b6e      	ldr	r3, [pc, #440]	; (2010082c <TimerConfig+0x1cc>)
20100674:	4a6d      	ldr	r2, [pc, #436]	; (2010082c <TimerConfig+0x1cc>)
20100676:	6a92      	ldr	r2, [r2, #40]	; 0x28
20100678:	2180      	movs	r1, #128	; 0x80
2010067a:	04c9      	lsls	r1, r1, #19
2010067c:	430a      	orrs	r2, r1
2010067e:	629a      	str	r2, [r3, #40]	; 0x28
20100680:	4b6a      	ldr	r3, [pc, #424]	; (2010082c <TimerConfig+0x1cc>)
20100682:	4a6a      	ldr	r2, [pc, #424]	; (2010082c <TimerConfig+0x1cc>)
20100684:	6a92      	ldr	r2, [r2, #40]	; 0x28
20100686:	496a      	ldr	r1, [pc, #424]	; (20100830 <TimerConfig+0x1d0>)
20100688:	400a      	ands	r2, r1
2010068a:	629a      	str	r2, [r3, #40]	; 0x28
2010068c:	4b69      	ldr	r3, [pc, #420]	; (20100834 <TimerConfig+0x1d4>)
2010068e:	2200      	movs	r2, #0
20100690:	601a      	str	r2, [r3, #0]
20100692:	4b68      	ldr	r3, [pc, #416]	; (20100834 <TimerConfig+0x1d4>)
20100694:	2204      	movs	r2, #4
20100696:	605a      	str	r2, [r3, #4]
20100698:	4b66      	ldr	r3, [pc, #408]	; (20100834 <TimerConfig+0x1d4>)
2010069a:	4a67      	ldr	r2, [pc, #412]	; (20100838 <TimerConfig+0x1d8>)
2010069c:	609a      	str	r2, [r3, #8]
2010069e:	4b65      	ldr	r3, [pc, #404]	; (20100834 <TimerConfig+0x1d4>)
201006a0:	2280      	movs	r2, #128	; 0x80
201006a2:	0092      	lsls	r2, r2, #2
201006a4:	611a      	str	r2, [r3, #16]
201006a6:	4b63      	ldr	r3, [pc, #396]	; (20100834 <TimerConfig+0x1d4>)
201006a8:	2280      	movs	r2, #128	; 0x80
201006aa:	0092      	lsls	r2, r2, #2
201006ac:	615a      	str	r2, [r3, #20]
201006ae:	4b61      	ldr	r3, [pc, #388]	; (20100834 <TimerConfig+0x1d4>)
201006b0:	2280      	movs	r2, #128	; 0x80
201006b2:	0092      	lsls	r2, r2, #2
201006b4:	619a      	str	r2, [r3, #24]
201006b6:	4b5f      	ldr	r3, [pc, #380]	; (20100834 <TimerConfig+0x1d4>)
201006b8:	4a5e      	ldr	r2, [pc, #376]	; (20100834 <TimerConfig+0x1d4>)
201006ba:	6a12      	ldr	r2, [r2, #32]
201006bc:	495f      	ldr	r1, [pc, #380]	; (2010083c <TimerConfig+0x1dc>)
201006be:	400a      	ands	r2, r1
201006c0:	621a      	str	r2, [r3, #32]
201006c2:	4b5c      	ldr	r3, [pc, #368]	; (20100834 <TimerConfig+0x1d4>)
201006c4:	4a5b      	ldr	r2, [pc, #364]	; (20100834 <TimerConfig+0x1d4>)
201006c6:	6a12      	ldr	r2, [r2, #32]
201006c8:	21e0      	movs	r1, #224	; 0xe0
201006ca:	0109      	lsls	r1, r1, #4
201006cc:	430a      	orrs	r2, r1
201006ce:	621a      	str	r2, [r3, #32]
201006d0:	4b58      	ldr	r3, [pc, #352]	; (20100834 <TimerConfig+0x1d4>)
201006d2:	4a58      	ldr	r2, [pc, #352]	; (20100834 <TimerConfig+0x1d4>)
201006d4:	6b12      	ldr	r2, [r2, #48]	; 0x30
201006d6:	210f      	movs	r1, #15
201006d8:	438a      	bics	r2, r1
201006da:	631a      	str	r2, [r3, #48]	; 0x30
201006dc:	4b55      	ldr	r3, [pc, #340]	; (20100834 <TimerConfig+0x1d4>)
201006de:	4a55      	ldr	r2, [pc, #340]	; (20100834 <TimerConfig+0x1d4>)
201006e0:	6b12      	ldr	r2, [r2, #48]	; 0x30
201006e2:	210c      	movs	r1, #12
201006e4:	430a      	orrs	r2, r1
201006e6:	631a      	str	r2, [r3, #48]	; 0x30
201006e8:	4b52      	ldr	r3, [pc, #328]	; (20100834 <TimerConfig+0x1d4>)
201006ea:	4a52      	ldr	r2, [pc, #328]	; (20100834 <TimerConfig+0x1d4>)
201006ec:	6b12      	ldr	r2, [r2, #48]	; 0x30
201006ee:	2101      	movs	r1, #1
201006f0:	430a      	orrs	r2, r1
201006f2:	631a      	str	r2, [r3, #48]	; 0x30
201006f4:	4b4f      	ldr	r3, [pc, #316]	; (20100834 <TimerConfig+0x1d4>)
201006f6:	4a4f      	ldr	r2, [pc, #316]	; (20100834 <TimerConfig+0x1d4>)
201006f8:	6b12      	ldr	r2, [r2, #48]	; 0x30
201006fa:	4951      	ldr	r1, [pc, #324]	; (20100840 <TimerConfig+0x1e0>)
201006fc:	400a      	ands	r2, r1
201006fe:	631a      	str	r2, [r3, #48]	; 0x30
20100700:	4b4c      	ldr	r3, [pc, #304]	; (20100834 <TimerConfig+0x1d4>)
20100702:	4a4c      	ldr	r2, [pc, #304]	; (20100834 <TimerConfig+0x1d4>)
20100704:	6b12      	ldr	r2, [r2, #48]	; 0x30
20100706:	21c0      	movs	r1, #192	; 0xc0
20100708:	0109      	lsls	r1, r1, #4
2010070a:	430a      	orrs	r2, r1
2010070c:	631a      	str	r2, [r3, #48]	; 0x30
2010070e:	4b49      	ldr	r3, [pc, #292]	; (20100834 <TimerConfig+0x1d4>)
20100710:	4a48      	ldr	r2, [pc, #288]	; (20100834 <TimerConfig+0x1d4>)
20100712:	6b12      	ldr	r2, [r2, #48]	; 0x30
20100714:	2180      	movs	r1, #128	; 0x80
20100716:	0049      	lsls	r1, r1, #1
20100718:	430a      	orrs	r2, r1
2010071a:	631a      	str	r2, [r3, #48]	; 0x30
2010071c:	4b45      	ldr	r3, [pc, #276]	; (20100834 <TimerConfig+0x1d4>)
2010071e:	4a45      	ldr	r2, [pc, #276]	; (20100834 <TimerConfig+0x1d4>)
20100720:	6a52      	ldr	r2, [r2, #36]	; 0x24
20100722:	4946      	ldr	r1, [pc, #280]	; (2010083c <TimerConfig+0x1dc>)
20100724:	400a      	ands	r2, r1
20100726:	625a      	str	r2, [r3, #36]	; 0x24
20100728:	4b42      	ldr	r3, [pc, #264]	; (20100834 <TimerConfig+0x1d4>)
2010072a:	4a42      	ldr	r2, [pc, #264]	; (20100834 <TimerConfig+0x1d4>)
2010072c:	6a52      	ldr	r2, [r2, #36]	; 0x24
2010072e:	21e0      	movs	r1, #224	; 0xe0
20100730:	0109      	lsls	r1, r1, #4
20100732:	430a      	orrs	r2, r1
20100734:	625a      	str	r2, [r3, #36]	; 0x24
20100736:	4b3f      	ldr	r3, [pc, #252]	; (20100834 <TimerConfig+0x1d4>)
20100738:	4a3e      	ldr	r2, [pc, #248]	; (20100834 <TimerConfig+0x1d4>)
2010073a:	6b52      	ldr	r2, [r2, #52]	; 0x34
2010073c:	210f      	movs	r1, #15
2010073e:	438a      	bics	r2, r1
20100740:	635a      	str	r2, [r3, #52]	; 0x34
20100742:	4b3c      	ldr	r3, [pc, #240]	; (20100834 <TimerConfig+0x1d4>)
20100744:	4a3b      	ldr	r2, [pc, #236]	; (20100834 <TimerConfig+0x1d4>)
20100746:	6b52      	ldr	r2, [r2, #52]	; 0x34
20100748:	210c      	movs	r1, #12
2010074a:	430a      	orrs	r2, r1
2010074c:	635a      	str	r2, [r3, #52]	; 0x34
2010074e:	4b39      	ldr	r3, [pc, #228]	; (20100834 <TimerConfig+0x1d4>)
20100750:	4a38      	ldr	r2, [pc, #224]	; (20100834 <TimerConfig+0x1d4>)
20100752:	6b52      	ldr	r2, [r2, #52]	; 0x34
20100754:	2101      	movs	r1, #1
20100756:	430a      	orrs	r2, r1
20100758:	635a      	str	r2, [r3, #52]	; 0x34
2010075a:	4b36      	ldr	r3, [pc, #216]	; (20100834 <TimerConfig+0x1d4>)
2010075c:	4a35      	ldr	r2, [pc, #212]	; (20100834 <TimerConfig+0x1d4>)
2010075e:	6b52      	ldr	r2, [r2, #52]	; 0x34
20100760:	4937      	ldr	r1, [pc, #220]	; (20100840 <TimerConfig+0x1e0>)
20100762:	400a      	ands	r2, r1
20100764:	635a      	str	r2, [r3, #52]	; 0x34
20100766:	4b33      	ldr	r3, [pc, #204]	; (20100834 <TimerConfig+0x1d4>)
20100768:	4a32      	ldr	r2, [pc, #200]	; (20100834 <TimerConfig+0x1d4>)
2010076a:	6b52      	ldr	r2, [r2, #52]	; 0x34
2010076c:	21c0      	movs	r1, #192	; 0xc0
2010076e:	0109      	lsls	r1, r1, #4
20100770:	430a      	orrs	r2, r1
20100772:	635a      	str	r2, [r3, #52]	; 0x34
20100774:	4b2f      	ldr	r3, [pc, #188]	; (20100834 <TimerConfig+0x1d4>)
20100776:	4a2f      	ldr	r2, [pc, #188]	; (20100834 <TimerConfig+0x1d4>)
20100778:	6b52      	ldr	r2, [r2, #52]	; 0x34
2010077a:	2180      	movs	r1, #128	; 0x80
2010077c:	0049      	lsls	r1, r1, #1
2010077e:	430a      	orrs	r2, r1
20100780:	635a      	str	r2, [r3, #52]	; 0x34
20100782:	4b2c      	ldr	r3, [pc, #176]	; (20100834 <TimerConfig+0x1d4>)
20100784:	4a2b      	ldr	r2, [pc, #172]	; (20100834 <TimerConfig+0x1d4>)
20100786:	6a92      	ldr	r2, [r2, #40]	; 0x28
20100788:	492c      	ldr	r1, [pc, #176]	; (2010083c <TimerConfig+0x1dc>)
2010078a:	400a      	ands	r2, r1
2010078c:	629a      	str	r2, [r3, #40]	; 0x28
2010078e:	4b29      	ldr	r3, [pc, #164]	; (20100834 <TimerConfig+0x1d4>)
20100790:	4a28      	ldr	r2, [pc, #160]	; (20100834 <TimerConfig+0x1d4>)
20100792:	6a92      	ldr	r2, [r2, #40]	; 0x28
20100794:	21e0      	movs	r1, #224	; 0xe0
20100796:	0109      	lsls	r1, r1, #4
20100798:	430a      	orrs	r2, r1
2010079a:	629a      	str	r2, [r3, #40]	; 0x28
2010079c:	4b25      	ldr	r3, [pc, #148]	; (20100834 <TimerConfig+0x1d4>)
2010079e:	4a25      	ldr	r2, [pc, #148]	; (20100834 <TimerConfig+0x1d4>)
201007a0:	6b92      	ldr	r2, [r2, #56]	; 0x38
201007a2:	210f      	movs	r1, #15
201007a4:	438a      	bics	r2, r1
201007a6:	639a      	str	r2, [r3, #56]	; 0x38
201007a8:	4b22      	ldr	r3, [pc, #136]	; (20100834 <TimerConfig+0x1d4>)
201007aa:	4a22      	ldr	r2, [pc, #136]	; (20100834 <TimerConfig+0x1d4>)
201007ac:	6b92      	ldr	r2, [r2, #56]	; 0x38
201007ae:	210c      	movs	r1, #12
201007b0:	430a      	orrs	r2, r1
201007b2:	639a      	str	r2, [r3, #56]	; 0x38
201007b4:	4b1f      	ldr	r3, [pc, #124]	; (20100834 <TimerConfig+0x1d4>)
201007b6:	4a1f      	ldr	r2, [pc, #124]	; (20100834 <TimerConfig+0x1d4>)
201007b8:	6b92      	ldr	r2, [r2, #56]	; 0x38
201007ba:	2101      	movs	r1, #1
201007bc:	430a      	orrs	r2, r1
201007be:	639a      	str	r2, [r3, #56]	; 0x38
201007c0:	4b1c      	ldr	r3, [pc, #112]	; (20100834 <TimerConfig+0x1d4>)
201007c2:	4a1c      	ldr	r2, [pc, #112]	; (20100834 <TimerConfig+0x1d4>)
201007c4:	6b92      	ldr	r2, [r2, #56]	; 0x38
201007c6:	491e      	ldr	r1, [pc, #120]	; (20100840 <TimerConfig+0x1e0>)
201007c8:	400a      	ands	r2, r1
201007ca:	639a      	str	r2, [r3, #56]	; 0x38
201007cc:	4b19      	ldr	r3, [pc, #100]	; (20100834 <TimerConfig+0x1d4>)
201007ce:	4a19      	ldr	r2, [pc, #100]	; (20100834 <TimerConfig+0x1d4>)
201007d0:	6b92      	ldr	r2, [r2, #56]	; 0x38
201007d2:	21c0      	movs	r1, #192	; 0xc0
201007d4:	0109      	lsls	r1, r1, #4
201007d6:	430a      	orrs	r2, r1
201007d8:	639a      	str	r2, [r3, #56]	; 0x38
201007da:	4b16      	ldr	r3, [pc, #88]	; (20100834 <TimerConfig+0x1d4>)
201007dc:	4a15      	ldr	r2, [pc, #84]	; (20100834 <TimerConfig+0x1d4>)
201007de:	6b92      	ldr	r2, [r2, #56]	; 0x38
201007e0:	2180      	movs	r1, #128	; 0x80
201007e2:	0049      	lsls	r1, r1, #1
201007e4:	430a      	orrs	r2, r1
201007e6:	639a      	str	r2, [r3, #56]	; 0x38
201007e8:	4b12      	ldr	r3, [pc, #72]	; (20100834 <TimerConfig+0x1d4>)
201007ea:	4a12      	ldr	r2, [pc, #72]	; (20100834 <TimerConfig+0x1d4>)
201007ec:	6c12      	ldr	r2, [r2, #64]	; 0x40
201007ee:	21c8      	movs	r1, #200	; 0xc8
201007f0:	01c9      	lsls	r1, r1, #7
201007f2:	430a      	orrs	r2, r1
201007f4:	641a      	str	r2, [r3, #64]	; 0x40
201007f6:	4b0f      	ldr	r3, [pc, #60]	; (20100834 <TimerConfig+0x1d4>)
201007f8:	4a0e      	ldr	r2, [pc, #56]	; (20100834 <TimerConfig+0x1d4>)
201007fa:	6c52      	ldr	r2, [r2, #68]	; 0x44
201007fc:	21c8      	movs	r1, #200	; 0xc8
201007fe:	01c9      	lsls	r1, r1, #7
20100800:	430a      	orrs	r2, r1
20100802:	645a      	str	r2, [r3, #68]	; 0x44
20100804:	4b0b      	ldr	r3, [pc, #44]	; (20100834 <TimerConfig+0x1d4>)
20100806:	4a0b      	ldr	r2, [pc, #44]	; (20100834 <TimerConfig+0x1d4>)
20100808:	6c92      	ldr	r2, [r2, #72]	; 0x48
2010080a:	21c8      	movs	r1, #200	; 0xc8
2010080c:	01c9      	lsls	r1, r1, #7
2010080e:	430a      	orrs	r2, r1
20100810:	649a      	str	r2, [r3, #72]	; 0x48
20100812:	4b08      	ldr	r3, [pc, #32]	; (20100834 <TimerConfig+0x1d4>)
20100814:	4a07      	ldr	r2, [pc, #28]	; (20100834 <TimerConfig+0x1d4>)
20100816:	6d92      	ldr	r2, [r2, #88]	; 0x58
20100818:	21f0      	movs	r1, #240	; 0xf0
2010081a:	0149      	lsls	r1, r1, #5
2010081c:	430a      	orrs	r2, r1
2010081e:	659a      	str	r2, [r3, #88]	; 0x58
20100820:	4b04      	ldr	r3, [pc, #16]	; (20100834 <TimerConfig+0x1d4>)
20100822:	2201      	movs	r2, #1
20100824:	60da      	str	r2, [r3, #12]
20100826:	46c0      	nop			; (mov r8, r8)
20100828:	46bd      	mov	sp, r7
2010082a:	bd80      	pop	{r7, pc}
2010082c:	40020000 	.word	0x40020000
20100830:	ff00ffff 	.word	0xff00ffff
20100834:	40098000 	.word	0x40098000
20100838:	000003ff 	.word	0x000003ff
2010083c:	fffff1ff 	.word	0xfffff1ff
20100840:	fffff0ff 	.word	0xfffff0ff

20100844 <adc_init>:
20100844:	b580      	push	{r7, lr}
20100846:	af00      	add	r7, sp, #0
20100848:	4b0f      	ldr	r3, [pc, #60]	; (20100888 <adc_init+0x44>)
2010084a:	4a0f      	ldr	r2, [pc, #60]	; (20100888 <adc_init+0x44>)
2010084c:	69d2      	ldr	r2, [r2, #28]
2010084e:	2180      	movs	r1, #128	; 0x80
20100850:	0289      	lsls	r1, r1, #10
20100852:	430a      	orrs	r2, r1
20100854:	61da      	str	r2, [r3, #28]
20100856:	4b0c      	ldr	r3, [pc, #48]	; (20100888 <adc_init+0x44>)
20100858:	4a0c      	ldr	r2, [pc, #48]	; (2010088c <adc_init+0x48>)
2010085a:	615a      	str	r2, [r3, #20]
2010085c:	4b0c      	ldr	r3, [pc, #48]	; (20100890 <adc_init+0x4c>)
2010085e:	2200      	movs	r2, #0
20100860:	601a      	str	r2, [r3, #0]
20100862:	4b0b      	ldr	r3, [pc, #44]	; (20100890 <adc_init+0x4c>)
20100864:	4a0a      	ldr	r2, [pc, #40]	; (20100890 <adc_init+0x4c>)
20100866:	6812      	ldr	r2, [r2, #0]
20100868:	490a      	ldr	r1, [pc, #40]	; (20100894 <adc_init+0x50>)
2010086a:	430a      	orrs	r2, r1
2010086c:	601a      	str	r2, [r3, #0]
2010086e:	4b08      	ldr	r3, [pc, #32]	; (20100890 <adc_init+0x4c>)
20100870:	4a07      	ldr	r2, [pc, #28]	; (20100890 <adc_init+0x4c>)
20100872:	6a92      	ldr	r2, [r2, #40]	; 0x28
20100874:	2139      	movs	r1, #57	; 0x39
20100876:	430a      	orrs	r2, r1
20100878:	629a      	str	r2, [r3, #40]	; 0x28
2010087a:	4b05      	ldr	r3, [pc, #20]	; (20100890 <adc_init+0x4c>)
2010087c:	2210      	movs	r2, #16
2010087e:	621a      	str	r2, [r3, #32]
20100880:	46c0      	nop			; (mov r8, r8)
20100882:	46bd      	mov	sp, r7
20100884:	bd80      	pop	{r7, pc}
20100886:	46c0      	nop			; (mov r8, r8)
20100888:	40020000 	.word	0x40020000
2010088c:	00002020 	.word	0x00002020
20100890:	40088000 	.word	0x40088000
20100894:	00000205 	.word	0x00000205

20100898 <dac_init>:
20100898:	b580      	push	{r7, lr}
2010089a:	af00      	add	r7, sp, #0
2010089c:	4b07      	ldr	r3, [pc, #28]	; (201008bc <dac_init+0x24>)
2010089e:	4a07      	ldr	r2, [pc, #28]	; (201008bc <dac_init+0x24>)
201008a0:	69d2      	ldr	r2, [r2, #28]
201008a2:	2180      	movs	r1, #128	; 0x80
201008a4:	02c9      	lsls	r1, r1, #11
201008a6:	430a      	orrs	r2, r1
201008a8:	61da      	str	r2, [r3, #28]
201008aa:	4b05      	ldr	r3, [pc, #20]	; (201008c0 <dac_init+0x28>)
201008ac:	4a04      	ldr	r2, [pc, #16]	; (201008c0 <dac_init+0x28>)
201008ae:	6812      	ldr	r2, [r2, #0]
201008b0:	2104      	movs	r1, #4
201008b2:	430a      	orrs	r2, r1
201008b4:	601a      	str	r2, [r3, #0]
201008b6:	46c0      	nop			; (mov r8, r8)
201008b8:	46bd      	mov	sp, r7
201008ba:	bd80      	pop	{r7, pc}
201008bc:	40020000 	.word	0x40020000
201008c0:	40090000 	.word	0x40090000

201008c4 <ssi_init>:
201008c4:	b580      	push	{r7, lr}
201008c6:	af00      	add	r7, sp, #0
201008c8:	4b0c      	ldr	r3, [pc, #48]	; (201008fc <ssi_init+0x38>)
201008ca:	4a0c      	ldr	r2, [pc, #48]	; (201008fc <ssi_init+0x38>)
201008cc:	69d2      	ldr	r2, [r2, #28]
201008ce:	2180      	movs	r1, #128	; 0x80
201008d0:	0349      	lsls	r1, r1, #13
201008d2:	430a      	orrs	r2, r1
201008d4:	61da      	str	r2, [r3, #28]
201008d6:	4b09      	ldr	r3, [pc, #36]	; (201008fc <ssi_init+0x38>)
201008d8:	4a09      	ldr	r2, [pc, #36]	; (20100900 <ssi_init+0x3c>)
201008da:	62da      	str	r2, [r3, #44]	; 0x2c
201008dc:	4b09      	ldr	r3, [pc, #36]	; (20100904 <ssi_init+0x40>)
201008de:	2200      	movs	r2, #0
201008e0:	605a      	str	r2, [r3, #4]
201008e2:	4b08      	ldr	r3, [pc, #32]	; (20100904 <ssi_init+0x40>)
201008e4:	220a      	movs	r2, #10
201008e6:	611a      	str	r2, [r3, #16]
201008e8:	4b06      	ldr	r3, [pc, #24]	; (20100904 <ssi_init+0x40>)
201008ea:	4a07      	ldr	r2, [pc, #28]	; (20100908 <ssi_init+0x44>)
201008ec:	601a      	str	r2, [r3, #0]
201008ee:	4b05      	ldr	r3, [pc, #20]	; (20100904 <ssi_init+0x40>)
201008f0:	2202      	movs	r2, #2
201008f2:	605a      	str	r2, [r3, #4]
201008f4:	46c0      	nop			; (mov r8, r8)
201008f6:	46bd      	mov	sp, r7
201008f8:	bd80      	pop	{r7, pc}
201008fa:	46c0      	nop			; (mov r8, r8)
201008fc:	40020000 	.word	0x40020000
20100900:	02000200 	.word	0x02000200
20100904:	400a0000 	.word	0x400a0000
20100908:	0000021b 	.word	0x0000021b

2010090c <b2g>:
2010090c:	b580      	push	{r7, lr}
2010090e:	b082      	sub	sp, #8
20100910:	af00      	add	r7, sp, #0
20100912:	6078      	str	r0, [r7, #4]
20100914:	687b      	ldr	r3, [r7, #4]
20100916:	085a      	lsrs	r2, r3, #1
20100918:	687b      	ldr	r3, [r7, #4]
2010091a:	4053      	eors	r3, r2
2010091c:	0018      	movs	r0, r3
2010091e:	46bd      	mov	sp, r7
20100920:	b002      	add	sp, #8
20100922:	bd80      	pop	{r7, pc}

20100924 <g2b>:
20100924:	b580      	push	{r7, lr}
20100926:	b084      	sub	sp, #16
20100928:	af00      	add	r7, sp, #0
2010092a:	6078      	str	r0, [r7, #4]
2010092c:	2300      	movs	r3, #0
2010092e:	60fb      	str	r3, [r7, #12]
20100930:	2300      	movs	r3, #0
20100932:	60fb      	str	r3, [r7, #12]
20100934:	e006      	b.n	20100944 <g2b+0x20>
20100936:	68fa      	ldr	r2, [r7, #12]
20100938:	687b      	ldr	r3, [r7, #4]
2010093a:	4053      	eors	r3, r2
2010093c:	60fb      	str	r3, [r7, #12]
2010093e:	687b      	ldr	r3, [r7, #4]
20100940:	085b      	lsrs	r3, r3, #1
20100942:	607b      	str	r3, [r7, #4]
20100944:	687b      	ldr	r3, [r7, #4]
20100946:	2b00      	cmp	r3, #0
20100948:	d1f5      	bne.n	20100936 <g2b+0x12>
2010094a:	68fb      	ldr	r3, [r7, #12]
2010094c:	0018      	movs	r0, r3
2010094e:	46bd      	mov	sp, r7
20100950:	b004      	add	sp, #16
20100952:	bd80      	pop	{r7, pc}

20100954 <SystemInit>:
20100954:	b580      	push	{r7, lr}
20100956:	af00      	add	r7, sp, #0
20100958:	f7ff fe48 	bl	201005ec <ClkConfig>
2010095c:	f7ff fdaa 	bl	201004b4 <PortConfig>
20100960:	f7ff fe7e 	bl	20100660 <TimerConfig>
20100964:	f7ff ff6e 	bl	20100844 <adc_init>
20100968:	f7ff ff96 	bl	20100898 <dac_init>
2010096c:	f7ff ffaa 	bl	201008c4 <ssi_init>
20100970:	f000 fbae 	bl	201010d0 <adc_dma_init>
20100974:	46c0      	nop			; (mov r8, r8)
20100976:	46bd      	mov	sp, r7
20100978:	bd80      	pop	{r7, pc}
2010097a:	46c0      	nop			; (mov r8, r8)

2010097c <timer_wait>:
2010097c:	b580      	push	{r7, lr}
2010097e:	af00      	add	r7, sp, #0
20100980:	46c0      	nop			; (mov r8, r8)
20100982:	4b05      	ldr	r3, [pc, #20]	; (20100998 <timer_wait+0x1c>)
20100984:	6d5b      	ldr	r3, [r3, #84]	; 0x54
20100986:	2202      	movs	r2, #2
20100988:	4013      	ands	r3, r2
2010098a:	d0fa      	beq.n	20100982 <timer_wait+0x6>
2010098c:	4b02      	ldr	r3, [pc, #8]	; (20100998 <timer_wait+0x1c>)
2010098e:	2200      	movs	r2, #0
20100990:	655a      	str	r2, [r3, #84]	; 0x54
20100992:	46c0      	nop			; (mov r8, r8)
20100994:	46bd      	mov	sp, r7
20100996:	bd80      	pop	{r7, pc}
20100998:	40098000 	.word	0x40098000

2010099c <mycos>:
2010099c:	4b05      	ldr	r3, [pc, #20]	; (201009b4 <mycos+0x18>)
2010099e:	4a06      	ldr	r2, [pc, #24]	; (201009b8 <mycos+0x1c>)
201009a0:	447b      	add	r3, pc
201009a2:	0580      	lsls	r0, r0, #22
201009a4:	589b      	ldr	r3, [r3, r2]
201009a6:	0d00      	lsrs	r0, r0, #20
201009a8:	58c0      	ldr	r0, [r0, r3]
201009aa:	b082      	sub	sp, #8
201009ac:	9301      	str	r3, [sp, #4]
201009ae:	b002      	add	sp, #8
201009b0:	4770      	bx	lr
201009b2:	46c0      	nop			; (mov r8, r8)
201009b4:	ffeff6e8 	.word	0xffeff6e8
201009b8:	00000000 	.word	0x00000000

201009bc <mysin>:
201009bc:	4b07      	ldr	r3, [pc, #28]	; (201009dc <mysin+0x20>)
201009be:	4a08      	ldr	r2, [pc, #32]	; (201009e0 <mysin+0x24>)
201009c0:	447b      	add	r3, pc
201009c2:	589b      	ldr	r3, [r3, r2]
201009c4:	b082      	sub	sp, #8
201009c6:	9301      	str	r3, [sp, #4]
201009c8:	23c0      	movs	r3, #192	; 0xc0
201009ca:	009b      	lsls	r3, r3, #2
201009cc:	469c      	mov	ip, r3
201009ce:	4460      	add	r0, ip
201009d0:	9b01      	ldr	r3, [sp, #4]
201009d2:	0580      	lsls	r0, r0, #22
201009d4:	0d00      	lsrs	r0, r0, #20
201009d6:	58c0      	ldr	r0, [r0, r3]
201009d8:	b002      	add	sp, #8
201009da:	4770      	bx	lr
201009dc:	ffeff6c8 	.word	0xffeff6c8
201009e0:	00000000 	.word	0x00000000

201009e4 <reg_init>:
201009e4:	2300      	movs	r3, #0
201009e6:	6001      	str	r1, [r0, #0]
201009e8:	6042      	str	r2, [r0, #4]
201009ea:	6083      	str	r3, [r0, #8]
201009ec:	60c3      	str	r3, [r0, #12]
201009ee:	4770      	bx	lr

201009f0 <reg_update>:
201009f0:	b510      	push	{r4, lr}
201009f2:	6804      	ldr	r4, [r0, #0]
201009f4:	6883      	ldr	r3, [r0, #8]
201009f6:	434c      	muls	r4, r1
201009f8:	2a00      	cmp	r2, #0
201009fa:	d004      	beq.n	20100a06 <reg_update+0x16>
201009fc:	2b00      	cmp	r3, #0
201009fe:	dd09      	ble.n	20100a14 <reg_update+0x24>
20100a00:	2c00      	cmp	r4, #0
20100a02:	dd00      	ble.n	20100a06 <reg_update+0x16>
20100a04:	2400      	movs	r4, #0
20100a06:	6842      	ldr	r2, [r0, #4]
20100a08:	18e3      	adds	r3, r4, r3
20100a0a:	4351      	muls	r1, r2
20100a0c:	18c9      	adds	r1, r1, r3
20100a0e:	60c1      	str	r1, [r0, #12]
20100a10:	6083      	str	r3, [r0, #8]
20100a12:	bd10      	pop	{r4, pc}
20100a14:	2b00      	cmp	r3, #0
20100a16:	d0f6      	beq.n	20100a06 <reg_update+0x16>
20100a18:	43e2      	mvns	r2, r4
20100a1a:	17d2      	asrs	r2, r2, #31
20100a1c:	4014      	ands	r4, r2
20100a1e:	e7f2      	b.n	20100a06 <reg_update+0x16>

20100a20 <cord_atan>:
20100a20:	b5f0      	push	{r4, r5, r6, r7, lr}
20100a22:	4645      	mov	r5, r8
20100a24:	4657      	mov	r7, sl
20100a26:	464e      	mov	r6, r9
20100a28:	b4e0      	push	{r5, r6, r7}
20100a2a:	4b65      	ldr	r3, [pc, #404]	; (20100bc0 <cord_atan+0x1a0>)
20100a2c:	b090      	sub	sp, #64	; 0x40
20100a2e:	447b      	add	r3, pc
20100a30:	001c      	movs	r4, r3
20100a32:	4694      	mov	ip, r2
20100a34:	466a      	mov	r2, sp
20100a36:	468a      	mov	sl, r1
20100a38:	cca2      	ldmia	r4!, {r1, r5, r7}
20100a3a:	c2a2      	stmia	r2!, {r1, r5, r7}
20100a3c:	cca2      	ldmia	r4!, {r1, r5, r7}
20100a3e:	c2a2      	stmia	r2!, {r1, r5, r7}
20100a40:	cc22      	ldmia	r4!, {r1, r5}
20100a42:	c222      	stmia	r2!, {r1, r5}
20100a44:	3320      	adds	r3, #32
20100a46:	aa08      	add	r2, sp, #32
20100a48:	4690      	mov	r8, r2
20100a4a:	cb32      	ldmia	r3!, {r1, r4, r5}
20100a4c:	c232      	stmia	r2!, {r1, r4, r5}
20100a4e:	cb32      	ldmia	r3!, {r1, r4, r5}
20100a50:	c232      	stmia	r2!, {r1, r4, r5}
20100a52:	cb12      	ldmia	r3!, {r1, r4}
20100a54:	c212      	stmia	r2!, {r1, r4}
20100a56:	6802      	ldr	r2, [r0, #0]
20100a58:	6845      	ldr	r5, [r0, #4]
20100a5a:	17d1      	asrs	r1, r2, #31
20100a5c:	1853      	adds	r3, r2, r1
20100a5e:	466e      	mov	r6, sp
20100a60:	404b      	eors	r3, r1
20100a62:	2d00      	cmp	r5, #0
20100a64:	dd6c      	ble.n	20100b40 <cord_atan+0x120>
20100a66:	195f      	adds	r7, r3, r5
20100a68:	1aeb      	subs	r3, r5, r3
20100a6a:	9d00      	ldr	r5, [sp, #0]
20100a6c:	2b00      	cmp	r3, #0
20100a6e:	d100      	bne.n	20100a72 <cord_atan+0x52>
20100a70:	e094      	b.n	20100b9c <cord_atan+0x17c>
20100a72:	105c      	asrs	r4, r3, #1
20100a74:	2b00      	cmp	r3, #0
20100a76:	dd68      	ble.n	20100b4a <cord_atan+0x12a>
20100a78:	1078      	asrs	r0, r7, #1
20100a7a:	1a1b      	subs	r3, r3, r0
20100a7c:	6870      	ldr	r0, [r6, #4]
20100a7e:	19e4      	adds	r4, r4, r7
20100a80:	4681      	mov	r9, r0
20100a82:	444d      	add	r5, r9
20100a84:	2b00      	cmp	r3, #0
20100a86:	d100      	bne.n	20100a8a <cord_atan+0x6a>
20100a88:	e08a      	b.n	20100ba0 <cord_atan+0x180>
20100a8a:	1098      	asrs	r0, r3, #2
20100a8c:	2b00      	cmp	r3, #0
20100a8e:	dd62      	ble.n	20100b56 <cord_atan+0x136>
20100a90:	1907      	adds	r7, r0, r4
20100a92:	10a4      	asrs	r4, r4, #2
20100a94:	1b18      	subs	r0, r3, r4
20100a96:	68b3      	ldr	r3, [r6, #8]
20100a98:	4699      	mov	r9, r3
20100a9a:	444d      	add	r5, r9
20100a9c:	2800      	cmp	r0, #0
20100a9e:	d100      	bne.n	20100aa2 <cord_atan+0x82>
20100aa0:	e081      	b.n	20100ba6 <cord_atan+0x186>
20100aa2:	10c3      	asrs	r3, r0, #3
20100aa4:	2800      	cmp	r0, #0
20100aa6:	dd5c      	ble.n	20100b62 <cord_atan+0x142>
20100aa8:	10fc      	asrs	r4, r7, #3
20100aaa:	1b00      	subs	r0, r0, r4
20100aac:	68f4      	ldr	r4, [r6, #12]
20100aae:	19db      	adds	r3, r3, r7
20100ab0:	46a1      	mov	r9, r4
20100ab2:	444d      	add	r5, r9
20100ab4:	2800      	cmp	r0, #0
20100ab6:	d100      	bne.n	20100aba <cord_atan+0x9a>
20100ab8:	e077      	b.n	20100baa <cord_atan+0x18a>
20100aba:	1104      	asrs	r4, r0, #4
20100abc:	2800      	cmp	r0, #0
20100abe:	dd56      	ble.n	20100b6e <cord_atan+0x14e>
20100ac0:	18e7      	adds	r7, r4, r3
20100ac2:	111b      	asrs	r3, r3, #4
20100ac4:	1ac4      	subs	r4, r0, r3
20100ac6:	6933      	ldr	r3, [r6, #16]
20100ac8:	4699      	mov	r9, r3
20100aca:	444d      	add	r5, r9
20100acc:	2c00      	cmp	r4, #0
20100ace:	d100      	bne.n	20100ad2 <cord_atan+0xb2>
20100ad0:	e06e      	b.n	20100bb0 <cord_atan+0x190>
20100ad2:	1163      	asrs	r3, r4, #5
20100ad4:	2c00      	cmp	r4, #0
20100ad6:	dd50      	ble.n	20100b7a <cord_atan+0x15a>
20100ad8:	1178      	asrs	r0, r7, #5
20100ada:	1a20      	subs	r0, r4, r0
20100adc:	6974      	ldr	r4, [r6, #20]
20100ade:	19db      	adds	r3, r3, r7
20100ae0:	46a1      	mov	r9, r4
20100ae2:	444d      	add	r5, r9
20100ae4:	2800      	cmp	r0, #0
20100ae6:	d065      	beq.n	20100bb4 <cord_atan+0x194>
20100ae8:	1184      	asrs	r4, r0, #6
20100aea:	2800      	cmp	r0, #0
20100aec:	dd4b      	ble.n	20100b86 <cord_atan+0x166>
20100aee:	18e7      	adds	r7, r4, r3
20100af0:	119b      	asrs	r3, r3, #6
20100af2:	1ac0      	subs	r0, r0, r3
20100af4:	69b3      	ldr	r3, [r6, #24]
20100af6:	4699      	mov	r9, r3
20100af8:	444d      	add	r5, r9
20100afa:	2800      	cmp	r0, #0
20100afc:	d05d      	beq.n	20100bba <cord_atan+0x19a>
20100afe:	dd48      	ble.n	20100b92 <cord_atan+0x172>
20100b00:	69f3      	ldr	r3, [r6, #28]
20100b02:	11c0      	asrs	r0, r0, #7
20100b04:	19c7      	adds	r7, r0, r7
20100b06:	18ed      	adds	r5, r5, r3
20100b08:	2307      	movs	r3, #7
20100b0a:	2a00      	cmp	r2, #0
20100b0c:	db14      	blt.n	20100b38 <cord_atan+0x118>
20100b0e:	2d00      	cmp	r5, #0
20100b10:	da03      	bge.n	20100b1a <cord_atan+0xfa>
20100b12:	2280      	movs	r2, #128	; 0x80
20100b14:	00d2      	lsls	r2, r2, #3
20100b16:	4691      	mov	r9, r2
20100b18:	444d      	add	r5, r9
20100b1a:	4652      	mov	r2, sl
20100b1c:	6015      	str	r5, [r2, #0]
20100b1e:	4642      	mov	r2, r8
20100b20:	009b      	lsls	r3, r3, #2
20100b22:	58d0      	ldr	r0, [r2, r3]
20100b24:	4663      	mov	r3, ip
20100b26:	4378      	muls	r0, r7
20100b28:	1280      	asrs	r0, r0, #10
20100b2a:	6018      	str	r0, [r3, #0]
20100b2c:	b010      	add	sp, #64	; 0x40
20100b2e:	bc1c      	pop	{r2, r3, r4}
20100b30:	4690      	mov	r8, r2
20100b32:	4699      	mov	r9, r3
20100b34:	46a2      	mov	sl, r4
20100b36:	bdf0      	pop	{r4, r5, r6, r7, pc}
20100b38:	2280      	movs	r2, #128	; 0x80
20100b3a:	0092      	lsls	r2, r2, #2
20100b3c:	1b55      	subs	r5, r2, r5
20100b3e:	e7e6      	b.n	20100b0e <cord_atan+0xee>
20100b40:	9900      	ldr	r1, [sp, #0]
20100b42:	1b5f      	subs	r7, r3, r5
20100b44:	195b      	adds	r3, r3, r5
20100b46:	424d      	negs	r5, r1
20100b48:	e790      	b.n	20100a6c <cord_atan+0x4c>
20100b4a:	6871      	ldr	r1, [r6, #4]
20100b4c:	1078      	asrs	r0, r7, #1
20100b4e:	1b3c      	subs	r4, r7, r4
20100b50:	18c3      	adds	r3, r0, r3
20100b52:	1a6d      	subs	r5, r5, r1
20100b54:	e796      	b.n	20100a84 <cord_atan+0x64>
20100b56:	1a27      	subs	r7, r4, r0
20100b58:	10a0      	asrs	r0, r4, #2
20100b5a:	18c0      	adds	r0, r0, r3
20100b5c:	68b3      	ldr	r3, [r6, #8]
20100b5e:	1aed      	subs	r5, r5, r3
20100b60:	e79c      	b.n	20100a9c <cord_atan+0x7c>
20100b62:	68f1      	ldr	r1, [r6, #12]
20100b64:	10fc      	asrs	r4, r7, #3
20100b66:	1afb      	subs	r3, r7, r3
20100b68:	1820      	adds	r0, r4, r0
20100b6a:	1a6d      	subs	r5, r5, r1
20100b6c:	e7a2      	b.n	20100ab4 <cord_atan+0x94>
20100b6e:	1b1f      	subs	r7, r3, r4
20100b70:	111c      	asrs	r4, r3, #4
20100b72:	6933      	ldr	r3, [r6, #16]
20100b74:	1824      	adds	r4, r4, r0
20100b76:	1aed      	subs	r5, r5, r3
20100b78:	e7a8      	b.n	20100acc <cord_atan+0xac>
20100b7a:	6971      	ldr	r1, [r6, #20]
20100b7c:	1178      	asrs	r0, r7, #5
20100b7e:	1afb      	subs	r3, r7, r3
20100b80:	1900      	adds	r0, r0, r4
20100b82:	1a6d      	subs	r5, r5, r1
20100b84:	e7ae      	b.n	20100ae4 <cord_atan+0xc4>
20100b86:	1b1f      	subs	r7, r3, r4
20100b88:	119b      	asrs	r3, r3, #6
20100b8a:	1818      	adds	r0, r3, r0
20100b8c:	69b3      	ldr	r3, [r6, #24]
20100b8e:	1aed      	subs	r5, r5, r3
20100b90:	e7b3      	b.n	20100afa <cord_atan+0xda>
20100b92:	69f3      	ldr	r3, [r6, #28]
20100b94:	11c4      	asrs	r4, r0, #7
20100b96:	1b3f      	subs	r7, r7, r4
20100b98:	1aed      	subs	r5, r5, r3
20100b9a:	e7b5      	b.n	20100b08 <cord_atan+0xe8>
20100b9c:	2300      	movs	r3, #0
20100b9e:	e7b4      	b.n	20100b0a <cord_atan+0xea>
20100ba0:	0027      	movs	r7, r4
20100ba2:	2301      	movs	r3, #1
20100ba4:	e7b1      	b.n	20100b0a <cord_atan+0xea>
20100ba6:	2302      	movs	r3, #2
20100ba8:	e7af      	b.n	20100b0a <cord_atan+0xea>
20100baa:	001f      	movs	r7, r3
20100bac:	2303      	movs	r3, #3
20100bae:	e7ac      	b.n	20100b0a <cord_atan+0xea>
20100bb0:	2304      	movs	r3, #4
20100bb2:	e7aa      	b.n	20100b0a <cord_atan+0xea>
20100bb4:	001f      	movs	r7, r3
20100bb6:	2305      	movs	r3, #5
20100bb8:	e7a7      	b.n	20100b0a <cord_atan+0xea>
20100bba:	2306      	movs	r3, #6
20100bbc:	e7a5      	b.n	20100b0a <cord_atan+0xea>
20100bbe:	46c0      	nop			; (mov r8, r8)
20100bc0:	00001bee 	.word	0x00001bee

20100bc4 <sinpwm>:
20100bc4:	b5f0      	push	{r4, r5, r6, r7, lr}
20100bc6:	b089      	sub	sp, #36	; 0x24
20100bc8:	466c      	mov	r4, sp
20100bca:	4b44      	ldr	r3, [pc, #272]	; (20100cdc <sinpwm+0x118>)
20100bcc:	46ec      	mov	ip, sp
20100bce:	447b      	add	r3, pc
20100bd0:	3320      	adds	r3, #32
20100bd2:	cbe0      	ldmia	r3!, {r5, r6, r7}
20100bd4:	c4e0      	stmia	r4!, {r5, r6, r7}
20100bd6:	cbe0      	ldmia	r3!, {r5, r6, r7}
20100bd8:	c4e0      	stmia	r4!, {r5, r6, r7}
20100bda:	cb60      	ldmia	r3!, {r5, r6}
20100bdc:	c460      	stmia	r4!, {r5, r6}
20100bde:	680b      	ldr	r3, [r1, #0]
20100be0:	684e      	ldr	r6, [r1, #4]
20100be2:	17dc      	asrs	r4, r3, #31
20100be4:	191b      	adds	r3, r3, r4
20100be6:	4063      	eors	r3, r4
20100be8:	2e00      	cmp	r6, #0
20100bea:	dd46      	ble.n	20100c7a <sinpwm+0xb6>
20100bec:	199f      	adds	r7, r3, r6
20100bee:	1af3      	subs	r3, r6, r3
20100bf0:	2b00      	cmp	r3, #0
20100bf2:	d060      	beq.n	20100cb6 <sinpwm+0xf2>
20100bf4:	105e      	asrs	r6, r3, #1
20100bf6:	2b00      	cmp	r3, #0
20100bf8:	dd42      	ble.n	20100c80 <sinpwm+0xbc>
20100bfa:	107c      	asrs	r4, r7, #1
20100bfc:	19f6      	adds	r6, r6, r7
20100bfe:	1b1b      	subs	r3, r3, r4
20100c00:	2b00      	cmp	r3, #0
20100c02:	d05a      	beq.n	20100cba <sinpwm+0xf6>
20100c04:	109c      	asrs	r4, r3, #2
20100c06:	2b00      	cmp	r3, #0
20100c08:	dd3e      	ble.n	20100c88 <sinpwm+0xc4>
20100c0a:	19a7      	adds	r7, r4, r6
20100c0c:	10b6      	asrs	r6, r6, #2
20100c0e:	1b9c      	subs	r4, r3, r6
20100c10:	2c00      	cmp	r4, #0
20100c12:	d055      	beq.n	20100cc0 <sinpwm+0xfc>
20100c14:	10e6      	asrs	r6, r4, #3
20100c16:	2c00      	cmp	r4, #0
20100c18:	dd3a      	ble.n	20100c90 <sinpwm+0xcc>
20100c1a:	10fd      	asrs	r5, r7, #3
20100c1c:	19f6      	adds	r6, r6, r7
20100c1e:	1b64      	subs	r4, r4, r5
20100c20:	2c00      	cmp	r4, #0
20100c22:	d04f      	beq.n	20100cc4 <sinpwm+0x100>
20100c24:	1125      	asrs	r5, r4, #4
20100c26:	2c00      	cmp	r4, #0
20100c28:	dd36      	ble.n	20100c98 <sinpwm+0xd4>
20100c2a:	19af      	adds	r7, r5, r6
20100c2c:	1136      	asrs	r6, r6, #4
20100c2e:	1ba5      	subs	r5, r4, r6
20100c30:	2d00      	cmp	r5, #0
20100c32:	d04a      	beq.n	20100cca <sinpwm+0x106>
20100c34:	116e      	asrs	r6, r5, #5
20100c36:	2d00      	cmp	r5, #0
20100c38:	dd32      	ble.n	20100ca0 <sinpwm+0xdc>
20100c3a:	117c      	asrs	r4, r7, #5
20100c3c:	19f6      	adds	r6, r6, r7
20100c3e:	1b2c      	subs	r4, r5, r4
20100c40:	2c00      	cmp	r4, #0
20100c42:	d044      	beq.n	20100cce <sinpwm+0x10a>
20100c44:	11a3      	asrs	r3, r4, #6
20100c46:	2c00      	cmp	r4, #0
20100c48:	dd2e      	ble.n	20100ca8 <sinpwm+0xe4>
20100c4a:	199b      	adds	r3, r3, r6
20100c4c:	11b6      	asrs	r6, r6, #6
20100c4e:	1ba4      	subs	r4, r4, r6
20100c50:	2c00      	cmp	r4, #0
20100c52:	d03f      	beq.n	20100cd4 <sinpwm+0x110>
20100c54:	dd2c      	ble.n	20100cb0 <sinpwm+0xec>
20100c56:	11e4      	asrs	r4, r4, #7
20100c58:	18e7      	adds	r7, r4, r3
20100c5a:	2307      	movs	r3, #7
20100c5c:	4664      	mov	r4, ip
20100c5e:	009b      	lsls	r3, r3, #2
20100c60:	58e4      	ldr	r4, [r4, r3]
20100c62:	f000 fb16 	bl	20101292 <dq_to_abc>
20100c66:	23fa      	movs	r3, #250	; 0xfa
20100c68:	437c      	muls	r4, r7
20100c6a:	2001      	movs	r0, #1
20100c6c:	1524      	asrs	r4, r4, #20
20100c6e:	005b      	lsls	r3, r3, #1
20100c70:	429c      	cmp	r4, r3
20100c72:	dc00      	bgt.n	20100c76 <sinpwm+0xb2>
20100c74:	2000      	movs	r0, #0
20100c76:	b009      	add	sp, #36	; 0x24
20100c78:	bdf0      	pop	{r4, r5, r6, r7, pc}
20100c7a:	1b9f      	subs	r7, r3, r6
20100c7c:	199b      	adds	r3, r3, r6
20100c7e:	e7b7      	b.n	20100bf0 <sinpwm+0x2c>
20100c80:	107c      	asrs	r4, r7, #1
20100c82:	1bbe      	subs	r6, r7, r6
20100c84:	18e3      	adds	r3, r4, r3
20100c86:	e7bb      	b.n	20100c00 <sinpwm+0x3c>
20100c88:	1b37      	subs	r7, r6, r4
20100c8a:	10b4      	asrs	r4, r6, #2
20100c8c:	18e4      	adds	r4, r4, r3
20100c8e:	e7bf      	b.n	20100c10 <sinpwm+0x4c>
20100c90:	10fd      	asrs	r5, r7, #3
20100c92:	1bbe      	subs	r6, r7, r6
20100c94:	192c      	adds	r4, r5, r4
20100c96:	e7c3      	b.n	20100c20 <sinpwm+0x5c>
20100c98:	1b77      	subs	r7, r6, r5
20100c9a:	1135      	asrs	r5, r6, #4
20100c9c:	192d      	adds	r5, r5, r4
20100c9e:	e7c7      	b.n	20100c30 <sinpwm+0x6c>
20100ca0:	117c      	asrs	r4, r7, #5
20100ca2:	1bbe      	subs	r6, r7, r6
20100ca4:	1964      	adds	r4, r4, r5
20100ca6:	e7cb      	b.n	20100c40 <sinpwm+0x7c>
20100ca8:	1af3      	subs	r3, r6, r3
20100caa:	11b6      	asrs	r6, r6, #6
20100cac:	1934      	adds	r4, r6, r4
20100cae:	e7cf      	b.n	20100c50 <sinpwm+0x8c>
20100cb0:	11e5      	asrs	r5, r4, #7
20100cb2:	1b5f      	subs	r7, r3, r5
20100cb4:	e7d1      	b.n	20100c5a <sinpwm+0x96>
20100cb6:	2300      	movs	r3, #0
20100cb8:	e7d0      	b.n	20100c5c <sinpwm+0x98>
20100cba:	0037      	movs	r7, r6
20100cbc:	2301      	movs	r3, #1
20100cbe:	e7cd      	b.n	20100c5c <sinpwm+0x98>
20100cc0:	2302      	movs	r3, #2
20100cc2:	e7cb      	b.n	20100c5c <sinpwm+0x98>
20100cc4:	0037      	movs	r7, r6
20100cc6:	2303      	movs	r3, #3
20100cc8:	e7c8      	b.n	20100c5c <sinpwm+0x98>
20100cca:	2304      	movs	r3, #4
20100ccc:	e7c6      	b.n	20100c5c <sinpwm+0x98>
20100cce:	0037      	movs	r7, r6
20100cd0:	2305      	movs	r3, #5
20100cd2:	e7c3      	b.n	20100c5c <sinpwm+0x98>
20100cd4:	001f      	movs	r7, r3
20100cd6:	2306      	movs	r3, #6
20100cd8:	e7c0      	b.n	20100c5c <sinpwm+0x98>
20100cda:	46c0      	nop			; (mov r8, r8)
20100cdc:	00001a4e 	.word	0x00001a4e

20100ce0 <svpwm>:
20100ce0:	b5f0      	push	{r4, r5, r6, r7, lr}
20100ce2:	465f      	mov	r7, fp
20100ce4:	4656      	mov	r6, sl
20100ce6:	4644      	mov	r4, r8
20100ce8:	464d      	mov	r5, r9
20100cea:	b4f0      	push	{r4, r5, r6, r7}
20100cec:	0005      	movs	r5, r0
20100cee:	48d0      	ldr	r0, [pc, #832]	; (20101030 <svpwm+0x350>)
20100cf0:	b091      	sub	sp, #68	; 0x44
20100cf2:	4478      	add	r0, pc
20100cf4:	0006      	movs	r6, r0
20100cf6:	466c      	mov	r4, sp
20100cf8:	4bce      	ldr	r3, [pc, #824]	; (20101034 <svpwm+0x354>)
20100cfa:	4693      	mov	fp, r2
20100cfc:	447b      	add	r3, pc
20100cfe:	469a      	mov	sl, r3
20100d00:	468c      	mov	ip, r1
20100d02:	ce0e      	ldmia	r6!, {r1, r2, r3}
20100d04:	c40e      	stmia	r4!, {r1, r2, r3}
20100d06:	ce0e      	ldmia	r6!, {r1, r2, r3}
20100d08:	c40e      	stmia	r4!, {r1, r2, r3}
20100d0a:	ce0c      	ldmia	r6!, {r2, r3}
20100d0c:	c40c      	stmia	r4!, {r2, r3}
20100d0e:	ae08      	add	r6, sp, #32
20100d10:	0034      	movs	r4, r6
20100d12:	3020      	adds	r0, #32
20100d14:	c80e      	ldmia	r0!, {r1, r2, r3}
20100d16:	c40e      	stmia	r4!, {r1, r2, r3}
20100d18:	c80e      	ldmia	r0!, {r1, r2, r3}
20100d1a:	c40e      	stmia	r4!, {r1, r2, r3}
20100d1c:	c80c      	ldmia	r0!, {r2, r3}
20100d1e:	c40c      	stmia	r4!, {r2, r3}
20100d20:	4663      	mov	r3, ip
20100d22:	681c      	ldr	r4, [r3, #0]
20100d24:	466f      	mov	r7, sp
20100d26:	17e2      	asrs	r2, r4, #31
20100d28:	18a3      	adds	r3, r4, r2
20100d2a:	4053      	eors	r3, r2
20100d2c:	4698      	mov	r8, r3
20100d2e:	4663      	mov	r3, ip
20100d30:	685b      	ldr	r3, [r3, #4]
20100d32:	2b00      	cmp	r3, #0
20100d34:	dc00      	bgt.n	20100d38 <svpwm+0x58>
20100d36:	e0b5      	b.n	20100ea4 <svpwm+0x1c4>
20100d38:	4641      	mov	r1, r8
20100d3a:	18c8      	adds	r0, r1, r3
20100d3c:	1a5b      	subs	r3, r3, r1
20100d3e:	4698      	mov	r8, r3
20100d40:	9b00      	ldr	r3, [sp, #0]
20100d42:	4641      	mov	r1, r8
20100d44:	2900      	cmp	r1, #0
20100d46:	d100      	bne.n	20100d4a <svpwm+0x6a>
20100d48:	e15f      	b.n	2010100a <svpwm+0x32a>
20100d4a:	dc00      	bgt.n	20100d4e <svpwm+0x6e>
20100d4c:	e0b0      	b.n	20100eb0 <svpwm+0x1d0>
20100d4e:	4641      	mov	r1, r8
20100d50:	1049      	asrs	r1, r1, #1
20100d52:	4689      	mov	r9, r1
20100d54:	1041      	asrs	r1, r0, #1
20100d56:	4481      	add	r9, r0
20100d58:	4640      	mov	r0, r8
20100d5a:	1a41      	subs	r1, r0, r1
20100d5c:	4688      	mov	r8, r1
20100d5e:	6879      	ldr	r1, [r7, #4]
20100d60:	468c      	mov	ip, r1
20100d62:	4463      	add	r3, ip
20100d64:	4641      	mov	r1, r8
20100d66:	2900      	cmp	r1, #0
20100d68:	d100      	bne.n	20100d6c <svpwm+0x8c>
20100d6a:	e150      	b.n	2010100e <svpwm+0x32e>
20100d6c:	dc00      	bgt.n	20100d70 <svpwm+0x90>
20100d6e:	e0a7      	b.n	20100ec0 <svpwm+0x1e0>
20100d70:	4641      	mov	r1, r8
20100d72:	1089      	asrs	r1, r1, #2
20100d74:	4449      	add	r1, r9
20100d76:	0008      	movs	r0, r1
20100d78:	4649      	mov	r1, r9
20100d7a:	4642      	mov	r2, r8
20100d7c:	1089      	asrs	r1, r1, #2
20100d7e:	1a51      	subs	r1, r2, r1
20100d80:	68ba      	ldr	r2, [r7, #8]
20100d82:	4688      	mov	r8, r1
20100d84:	4694      	mov	ip, r2
20100d86:	4463      	add	r3, ip
20100d88:	4641      	mov	r1, r8
20100d8a:	2900      	cmp	r1, #0
20100d8c:	d100      	bne.n	20100d90 <svpwm+0xb0>
20100d8e:	e141      	b.n	20101014 <svpwm+0x334>
20100d90:	4642      	mov	r2, r8
20100d92:	dc00      	bgt.n	20100d96 <svpwm+0xb6>
20100d94:	e09c      	b.n	20100ed0 <svpwm+0x1f0>
20100d96:	10c9      	asrs	r1, r1, #3
20100d98:	1809      	adds	r1, r1, r0
20100d9a:	10c0      	asrs	r0, r0, #3
20100d9c:	1a12      	subs	r2, r2, r0
20100d9e:	4690      	mov	r8, r2
20100da0:	68fa      	ldr	r2, [r7, #12]
20100da2:	4694      	mov	ip, r2
20100da4:	4463      	add	r3, ip
20100da6:	4640      	mov	r0, r8
20100da8:	2800      	cmp	r0, #0
20100daa:	d100      	bne.n	20100dae <svpwm+0xce>
20100dac:	e134      	b.n	20101018 <svpwm+0x338>
20100dae:	4642      	mov	r2, r8
20100db0:	dc00      	bgt.n	20100db4 <svpwm+0xd4>
20100db2:	e094      	b.n	20100ede <svpwm+0x1fe>
20100db4:	1100      	asrs	r0, r0, #4
20100db6:	1840      	adds	r0, r0, r1
20100db8:	1109      	asrs	r1, r1, #4
20100dba:	1a52      	subs	r2, r2, r1
20100dbc:	4690      	mov	r8, r2
20100dbe:	693a      	ldr	r2, [r7, #16]
20100dc0:	4694      	mov	ip, r2
20100dc2:	4463      	add	r3, ip
20100dc4:	4641      	mov	r1, r8
20100dc6:	2900      	cmp	r1, #0
20100dc8:	d100      	bne.n	20100dcc <svpwm+0xec>
20100dca:	e128      	b.n	2010101e <svpwm+0x33e>
20100dcc:	4642      	mov	r2, r8
20100dce:	dc00      	bgt.n	20100dd2 <svpwm+0xf2>
20100dd0:	e08c      	b.n	20100eec <svpwm+0x20c>
20100dd2:	1149      	asrs	r1, r1, #5
20100dd4:	4689      	mov	r9, r1
20100dd6:	1141      	asrs	r1, r0, #5
20100dd8:	1a51      	subs	r1, r2, r1
20100dda:	697a      	ldr	r2, [r7, #20]
20100ddc:	4481      	add	r9, r0
20100dde:	4694      	mov	ip, r2
20100de0:	4463      	add	r3, ip
20100de2:	2900      	cmp	r1, #0
20100de4:	d100      	bne.n	20100de8 <svpwm+0x108>
20100de6:	e11c      	b.n	20101022 <svpwm+0x342>
20100de8:	1188      	asrs	r0, r1, #6
20100dea:	2900      	cmp	r1, #0
20100dec:	dc00      	bgt.n	20100df0 <svpwm+0x110>
20100dee:	e086      	b.n	20100efe <svpwm+0x21e>
20100df0:	464a      	mov	r2, r9
20100df2:	4448      	add	r0, r9
20100df4:	4680      	mov	r8, r0
20100df6:	1190      	asrs	r0, r2, #6
20100df8:	69ba      	ldr	r2, [r7, #24]
20100dfa:	1a09      	subs	r1, r1, r0
20100dfc:	4694      	mov	ip, r2
20100dfe:	4463      	add	r3, ip
20100e00:	2900      	cmp	r1, #0
20100e02:	d100      	bne.n	20100e06 <svpwm+0x126>
20100e04:	e110      	b.n	20101028 <svpwm+0x348>
20100e06:	dc00      	bgt.n	20100e0a <svpwm+0x12a>
20100e08:	e0e2      	b.n	20100fd0 <svpwm+0x2f0>
20100e0a:	11c9      	asrs	r1, r1, #7
20100e0c:	4441      	add	r1, r8
20100e0e:	0008      	movs	r0, r1
20100e10:	69f9      	ldr	r1, [r7, #28]
20100e12:	185b      	adds	r3, r3, r1
20100e14:	2107      	movs	r1, #7
20100e16:	2c00      	cmp	r4, #0
20100e18:	db40      	blt.n	20100e9c <svpwm+0x1bc>
20100e1a:	2b00      	cmp	r3, #0
20100e1c:	da03      	bge.n	20100e26 <svpwm+0x146>
20100e1e:	2280      	movs	r2, #128	; 0x80
20100e20:	00d2      	lsls	r2, r2, #3
20100e22:	4694      	mov	ip, r2
20100e24:	4463      	add	r3, ip
20100e26:	22fa      	movs	r2, #250	; 0xfa
20100e28:	0089      	lsls	r1, r1, #2
20100e2a:	5871      	ldr	r1, [r6, r1]
20100e2c:	445b      	add	r3, fp
20100e2e:	4341      	muls	r1, r0
20100e30:	059b      	lsls	r3, r3, #22
20100e32:	1509      	asrs	r1, r1, #20
20100e34:	0d9b      	lsrs	r3, r3, #22
20100e36:	0052      	lsls	r2, r2, #1
20100e38:	2400      	movs	r4, #0
20100e3a:	4291      	cmp	r1, r2
20100e3c:	dd01      	ble.n	20100e42 <svpwm+0x162>
20100e3e:	0011      	movs	r1, r2
20100e40:	3401      	adds	r4, #1
20100e42:	0058      	lsls	r0, r3, #1
20100e44:	18c0      	adds	r0, r0, r3
20100e46:	1240      	asrs	r0, r0, #9
20100e48:	3801      	subs	r0, #1
20100e4a:	4a7b      	ldr	r2, [pc, #492]	; (20101038 <svpwm+0x358>)
20100e4c:	2804      	cmp	r0, #4
20100e4e:	d920      	bls.n	20100e92 <svpwm+0x1b2>
20100e50:	26c0      	movs	r6, #192	; 0xc0
20100e52:	4650      	mov	r0, sl
20100e54:	00b6      	lsls	r6, r6, #2
20100e56:	46b4      	mov	ip, r6
20100e58:	5880      	ldr	r0, [r0, r2]
20100e5a:	4a78      	ldr	r2, [pc, #480]	; (2010103c <svpwm+0x35c>)
20100e5c:	1ad2      	subs	r2, r2, r3
20100e5e:	4463      	add	r3, ip
20100e60:	0592      	lsls	r2, r2, #22
20100e62:	059b      	lsls	r3, r3, #22
20100e64:	0d12      	lsrs	r2, r2, #20
20100e66:	0d1b      	lsrs	r3, r3, #20
20100e68:	581b      	ldr	r3, [r3, r0]
20100e6a:	5812      	ldr	r2, [r2, r0]
20100e6c:	434a      	muls	r2, r1
20100e6e:	4359      	muls	r1, r3
20100e70:	1292      	asrs	r2, r2, #10
20100e72:	1289      	asrs	r1, r1, #10
20100e74:	1853      	adds	r3, r2, r1
20100e76:	602b      	str	r3, [r5, #0]
20100e78:	1a8b      	subs	r3, r1, r2
20100e7a:	4252      	negs	r2, r2
20100e7c:	1a52      	subs	r2, r2, r1
20100e7e:	606b      	str	r3, [r5, #4]
20100e80:	60aa      	str	r2, [r5, #8]
20100e82:	0020      	movs	r0, r4
20100e84:	b011      	add	sp, #68	; 0x44
20100e86:	bc3c      	pop	{r2, r3, r4, r5}
20100e88:	4690      	mov	r8, r2
20100e8a:	4699      	mov	r9, r3
20100e8c:	46a2      	mov	sl, r4
20100e8e:	46ab      	mov	fp, r5
20100e90:	bdf0      	pop	{r4, r5, r6, r7, pc}
20100e92:	f000 fa69 	bl	20101368 <__gnu_thumb1_case_uqi>
20100e96:	856c      	.short	0x856c
20100e98:	553d      	.short	0x553d
20100e9a:	a3          	.byte	0xa3
20100e9b:	00          	.byte	0x00
20100e9c:	2480      	movs	r4, #128	; 0x80
20100e9e:	00a4      	lsls	r4, r4, #2
20100ea0:	1ae3      	subs	r3, r4, r3
20100ea2:	e7ba      	b.n	20100e1a <svpwm+0x13a>
20100ea4:	4642      	mov	r2, r8
20100ea6:	4498      	add	r8, r3
20100ea8:	1ad0      	subs	r0, r2, r3
20100eaa:	9b00      	ldr	r3, [sp, #0]
20100eac:	425b      	negs	r3, r3
20100eae:	e748      	b.n	20100d42 <svpwm+0x62>
20100eb0:	1049      	asrs	r1, r1, #1
20100eb2:	1a42      	subs	r2, r0, r1
20100eb4:	4691      	mov	r9, r2
20100eb6:	687a      	ldr	r2, [r7, #4]
20100eb8:	1041      	asrs	r1, r0, #1
20100eba:	4488      	add	r8, r1
20100ebc:	1a9b      	subs	r3, r3, r2
20100ebe:	e751      	b.n	20100d64 <svpwm+0x84>
20100ec0:	464a      	mov	r2, r9
20100ec2:	1089      	asrs	r1, r1, #2
20100ec4:	1a50      	subs	r0, r2, r1
20100ec6:	1091      	asrs	r1, r2, #2
20100ec8:	68ba      	ldr	r2, [r7, #8]
20100eca:	4488      	add	r8, r1
20100ecc:	1a9b      	subs	r3, r3, r2
20100ece:	e75b      	b.n	20100d88 <svpwm+0xa8>
20100ed0:	10c9      	asrs	r1, r1, #3
20100ed2:	68fa      	ldr	r2, [r7, #12]
20100ed4:	1a41      	subs	r1, r0, r1
20100ed6:	10c0      	asrs	r0, r0, #3
20100ed8:	4480      	add	r8, r0
20100eda:	1a9b      	subs	r3, r3, r2
20100edc:	e763      	b.n	20100da6 <svpwm+0xc6>
20100ede:	1100      	asrs	r0, r0, #4
20100ee0:	693a      	ldr	r2, [r7, #16]
20100ee2:	1a08      	subs	r0, r1, r0
20100ee4:	1109      	asrs	r1, r1, #4
20100ee6:	4488      	add	r8, r1
20100ee8:	1a9b      	subs	r3, r3, r2
20100eea:	e76b      	b.n	20100dc4 <svpwm+0xe4>
20100eec:	1149      	asrs	r1, r1, #5
20100eee:	1a42      	subs	r2, r0, r1
20100ef0:	1140      	asrs	r0, r0, #5
20100ef2:	0001      	movs	r1, r0
20100ef4:	4691      	mov	r9, r2
20100ef6:	697a      	ldr	r2, [r7, #20]
20100ef8:	4441      	add	r1, r8
20100efa:	1a9b      	subs	r3, r3, r2
20100efc:	e771      	b.n	20100de2 <svpwm+0x102>
20100efe:	464a      	mov	r2, r9
20100f00:	1a12      	subs	r2, r2, r0
20100f02:	4690      	mov	r8, r2
20100f04:	464a      	mov	r2, r9
20100f06:	1190      	asrs	r0, r2, #6
20100f08:	69ba      	ldr	r2, [r7, #24]
20100f0a:	1841      	adds	r1, r0, r1
20100f0c:	1a9b      	subs	r3, r3, r2
20100f0e:	e777      	b.n	20100e00 <svpwm+0x120>
20100f10:	4650      	mov	r0, sl
20100f12:	5880      	ldr	r0, [r0, r2]
20100f14:	4a4a      	ldr	r2, [pc, #296]	; (20101040 <svpwm+0x360>)
20100f16:	1ad2      	subs	r2, r2, r3
20100f18:	3301      	adds	r3, #1
20100f1a:	0592      	lsls	r2, r2, #22
20100f1c:	33ff      	adds	r3, #255	; 0xff
20100f1e:	0d12      	lsrs	r2, r2, #20
20100f20:	059b      	lsls	r3, r3, #22
20100f22:	5812      	ldr	r2, [r2, r0]
20100f24:	0d1b      	lsrs	r3, r3, #20
20100f26:	581b      	ldr	r3, [r3, r0]
20100f28:	434a      	muls	r2, r1
20100f2a:	434b      	muls	r3, r1
20100f2c:	1292      	asrs	r2, r2, #10
20100f2e:	1299      	asrs	r1, r3, #10
20100f30:	4253      	negs	r3, r2
20100f32:	1a5b      	subs	r3, r3, r1
20100f34:	602b      	str	r3, [r5, #0]
20100f36:	1a53      	subs	r3, r2, r1
20100f38:	1851      	adds	r1, r2, r1
20100f3a:	606b      	str	r3, [r5, #4]
20100f3c:	60a9      	str	r1, [r5, #8]
20100f3e:	e7a0      	b.n	20100e82 <svpwm+0x1a2>
20100f40:	4650      	mov	r0, sl
20100f42:	5880      	ldr	r0, [r0, r2]
20100f44:	4a3f      	ldr	r2, [pc, #252]	; (20101044 <svpwm+0x364>)
20100f46:	1ad2      	subs	r2, r2, r3
20100f48:	3356      	adds	r3, #86	; 0x56
20100f4a:	0592      	lsls	r2, r2, #22
20100f4c:	059b      	lsls	r3, r3, #22
20100f4e:	0d12      	lsrs	r2, r2, #20
20100f50:	0d1b      	lsrs	r3, r3, #20
20100f52:	5816      	ldr	r6, [r2, r0]
20100f54:	581b      	ldr	r3, [r3, r0]
20100f56:	434e      	muls	r6, r1
20100f58:	434b      	muls	r3, r1
20100f5a:	12b6      	asrs	r6, r6, #10
20100f5c:	1299      	asrs	r1, r3, #10
20100f5e:	1b8b      	subs	r3, r1, r6
20100f60:	602b      	str	r3, [r5, #0]
20100f62:	4273      	negs	r3, r6
20100f64:	1a5b      	subs	r3, r3, r1
20100f66:	1871      	adds	r1, r6, r1
20100f68:	606b      	str	r3, [r5, #4]
20100f6a:	60a9      	str	r1, [r5, #8]
20100f6c:	e789      	b.n	20100e82 <svpwm+0x1a2>
20100f6e:	4650      	mov	r0, sl
20100f70:	5886      	ldr	r6, [r0, r2]
20100f72:	4a35      	ldr	r2, [pc, #212]	; (20101048 <svpwm+0x368>)
20100f74:	1ad2      	subs	r2, r2, r3
20100f76:	0592      	lsls	r2, r2, #22
20100f78:	0d12      	lsrs	r2, r2, #20
20100f7a:	5990      	ldr	r0, [r2, r6]
20100f7c:	4a33      	ldr	r2, [pc, #204]	; (2010104c <svpwm+0x36c>)
20100f7e:	4348      	muls	r0, r1
20100f80:	4694      	mov	ip, r2
20100f82:	4463      	add	r3, ip
20100f84:	059b      	lsls	r3, r3, #22
20100f86:	0d1b      	lsrs	r3, r3, #20
20100f88:	599b      	ldr	r3, [r3, r6]
20100f8a:	1280      	asrs	r0, r0, #10
20100f8c:	4359      	muls	r1, r3
20100f8e:	1289      	asrs	r1, r1, #10
20100f90:	1a43      	subs	r3, r0, r1
20100f92:	602b      	str	r3, [r5, #0]
20100f94:	1843      	adds	r3, r0, r1
20100f96:	4240      	negs	r0, r0
20100f98:	1a40      	subs	r0, r0, r1
20100f9a:	606b      	str	r3, [r5, #4]
20100f9c:	60a8      	str	r0, [r5, #8]
20100f9e:	e770      	b.n	20100e82 <svpwm+0x1a2>
20100fa0:	4650      	mov	r0, sl
20100fa2:	5880      	ldr	r0, [r0, r2]
20100fa4:	4a2a      	ldr	r2, [pc, #168]	; (20101050 <svpwm+0x370>)
20100fa6:	1ad2      	subs	r2, r2, r3
20100fa8:	33ac      	adds	r3, #172	; 0xac
20100faa:	0592      	lsls	r2, r2, #22
20100fac:	33ff      	adds	r3, #255	; 0xff
20100fae:	0d12      	lsrs	r2, r2, #20
20100fb0:	059b      	lsls	r3, r3, #22
20100fb2:	5816      	ldr	r6, [r2, r0]
20100fb4:	0d1b      	lsrs	r3, r3, #20
20100fb6:	581b      	ldr	r3, [r3, r0]
20100fb8:	434e      	muls	r6, r1
20100fba:	4359      	muls	r1, r3
20100fbc:	12b6      	asrs	r6, r6, #10
20100fbe:	1289      	asrs	r1, r1, #10
20100fc0:	4273      	negs	r3, r6
20100fc2:	1a5b      	subs	r3, r3, r1
20100fc4:	602b      	str	r3, [r5, #0]
20100fc6:	1873      	adds	r3, r6, r1
20100fc8:	1b89      	subs	r1, r1, r6
20100fca:	606b      	str	r3, [r5, #4]
20100fcc:	60a9      	str	r1, [r5, #8]
20100fce:	e758      	b.n	20100e82 <svpwm+0x1a2>
20100fd0:	4642      	mov	r2, r8
20100fd2:	11c9      	asrs	r1, r1, #7
20100fd4:	1a50      	subs	r0, r2, r1
20100fd6:	69f9      	ldr	r1, [r7, #28]
20100fd8:	1a5b      	subs	r3, r3, r1
20100fda:	e71b      	b.n	20100e14 <svpwm+0x134>
20100fdc:	4650      	mov	r0, sl
20100fde:	5882      	ldr	r2, [r0, r2]
20100fe0:	481c      	ldr	r0, [pc, #112]	; (20101054 <svpwm+0x374>)
20100fe2:	1ac0      	subs	r0, r0, r3
20100fe4:	3b55      	subs	r3, #85	; 0x55
20100fe6:	0580      	lsls	r0, r0, #22
20100fe8:	059b      	lsls	r3, r3, #22
20100fea:	0d00      	lsrs	r0, r0, #20
20100fec:	0d1b      	lsrs	r3, r3, #20
20100fee:	589b      	ldr	r3, [r3, r2]
20100ff0:	5880      	ldr	r0, [r0, r2]
20100ff2:	4348      	muls	r0, r1
20100ff4:	4359      	muls	r1, r3
20100ff6:	1280      	asrs	r0, r0, #10
20100ff8:	1289      	asrs	r1, r1, #10
20100ffa:	1843      	adds	r3, r0, r1
20100ffc:	602b      	str	r3, [r5, #0]
20100ffe:	4243      	negs	r3, r0
20101000:	1a5b      	subs	r3, r3, r1
20101002:	1a41      	subs	r1, r0, r1
20101004:	606b      	str	r3, [r5, #4]
20101006:	60a9      	str	r1, [r5, #8]
20101008:	e73b      	b.n	20100e82 <svpwm+0x1a2>
2010100a:	2100      	movs	r1, #0
2010100c:	e703      	b.n	20100e16 <svpwm+0x136>
2010100e:	4648      	mov	r0, r9
20101010:	2101      	movs	r1, #1
20101012:	e700      	b.n	20100e16 <svpwm+0x136>
20101014:	2102      	movs	r1, #2
20101016:	e6fe      	b.n	20100e16 <svpwm+0x136>
20101018:	0008      	movs	r0, r1
2010101a:	2103      	movs	r1, #3
2010101c:	e6fb      	b.n	20100e16 <svpwm+0x136>
2010101e:	2104      	movs	r1, #4
20101020:	e6f9      	b.n	20100e16 <svpwm+0x136>
20101022:	4648      	mov	r0, r9
20101024:	2105      	movs	r1, #5
20101026:	e6f6      	b.n	20100e16 <svpwm+0x136>
20101028:	4640      	mov	r0, r8
2010102a:	2106      	movs	r1, #6
2010102c:	e6f3      	b.n	20100e16 <svpwm+0x136>
2010102e:	46c0      	nop			; (mov r8, r8)
20101030:	0000192a 	.word	0x0000192a
20101034:	ffeff38c 	.word	0xffeff38c
20101038:	00000000 	.word	0x00000000
2010103c:	000007aa 	.word	0x000007aa
20101040:	000009aa 	.word	0x000009aa
20101044:	00000a54 	.word	0x00000a54
20101048:	00000854 	.word	0x00000854
2010104c:	00000256 	.word	0x00000256
20101050:	000008ff 	.word	0x000008ff
20101054:	00000aff 	.word	0x00000aff

20101058 <get_speed>:
20101058:	4a10      	ldr	r2, [pc, #64]	; (2010109c <get_speed+0x44>)
2010105a:	b510      	push	{r4, lr}
2010105c:	447a      	add	r2, pc
2010105e:	6813      	ldr	r3, [r2, #0]
20101060:	6854      	ldr	r4, [r2, #4]
20101062:	1ac3      	subs	r3, r0, r3
20101064:	6050      	str	r0, [r2, #4]
20101066:	6014      	str	r4, [r2, #0]
20101068:	17da      	asrs	r2, r3, #31
2010106a:	1898      	adds	r0, r3, r2
2010106c:	4050      	eors	r0, r2
2010106e:	22fa      	movs	r2, #250	; 0xfa
20101070:	0092      	lsls	r2, r2, #2
20101072:	4290      	cmp	r0, r2
20101074:	dd04      	ble.n	20101080 <get_speed+0x28>
20101076:	2b00      	cmp	r3, #0
20101078:	db0a      	blt.n	20101090 <get_speed+0x38>
2010107a:	4a09      	ldr	r2, [pc, #36]	; (201010a0 <get_speed+0x48>)
2010107c:	4694      	mov	ip, r2
2010107e:	4463      	add	r3, ip
20101080:	680a      	ldr	r2, [r1, #0]
20101082:	4808      	ldr	r0, [pc, #32]	; (201010a4 <get_speed+0x4c>)
20101084:	18d2      	adds	r2, r2, r3
20101086:	105b      	asrs	r3, r3, #1
20101088:	4343      	muls	r3, r0
2010108a:	600a      	str	r2, [r1, #0]
2010108c:	1318      	asrs	r0, r3, #12
2010108e:	bd10      	pop	{r4, pc}
20101090:	2280      	movs	r2, #128	; 0x80
20101092:	0152      	lsls	r2, r2, #5
20101094:	4694      	mov	ip, r2
20101096:	4463      	add	r3, ip
20101098:	e7f2      	b.n	20101080 <get_speed+0x28>
2010109a:	46c0      	nop			; (mov r8, r8)
2010109c:	ffeff058 	.word	0xffeff058
201010a0:	fffff000 	.word	0xfffff000
201010a4:	0002ae7c 	.word	0x0002ae7c

201010a8 <c_mfilter>:
201010a8:	221f      	movs	r2, #31
201010aa:	4908      	ldr	r1, [pc, #32]	; (201010cc <c_mfilter+0x24>)
201010ac:	b510      	push	{r4, lr}
201010ae:	4479      	add	r1, pc
201010b0:	688b      	ldr	r3, [r1, #8]
201010b2:	3301      	adds	r3, #1
201010b4:	4013      	ands	r3, r2
201010b6:	608b      	str	r3, [r1, #8]
201010b8:	009b      	lsls	r3, r3, #2
201010ba:	18cb      	adds	r3, r1, r3
201010bc:	68ca      	ldr	r2, [r1, #12]
201010be:	691c      	ldr	r4, [r3, #16]
201010c0:	6118      	str	r0, [r3, #16]
201010c2:	1b12      	subs	r2, r2, r4
201010c4:	1812      	adds	r2, r2, r0
201010c6:	1150      	asrs	r0, r2, #5
201010c8:	60ca      	str	r2, [r1, #12]
201010ca:	bd10      	pop	{r4, pc}
201010cc:	ffeff006 	.word	0xffeff006

201010d0 <adc_dma_init>:
201010d0:	b580      	push	{r7, lr}
201010d2:	af00      	add	r7, sp, #0
201010d4:	4b1c      	ldr	r3, [pc, #112]	; (20101148 <adc_dma_init+0x78>)
201010d6:	4a1c      	ldr	r2, [pc, #112]	; (20101148 <adc_dma_init+0x78>)
201010d8:	69d2      	ldr	r2, [r2, #28]
201010da:	2120      	movs	r1, #32
201010dc:	430a      	orrs	r2, r1
201010de:	61da      	str	r2, [r3, #28]
201010e0:	4b1a      	ldr	r3, [pc, #104]	; (2010114c <adc_dma_init+0x7c>)
201010e2:	4a1b      	ldr	r2, [pc, #108]	; (20101150 <adc_dma_init+0x80>)
201010e4:	447a      	add	r2, pc
201010e6:	609a      	str	r2, [r3, #8]
201010e8:	4b18      	ldr	r3, [pc, #96]	; (2010114c <adc_dma_init+0x7c>)
201010ea:	2201      	movs	r2, #1
201010ec:	4252      	negs	r2, r2
201010ee:	62da      	str	r2, [r3, #44]	; 0x2c
201010f0:	4b16      	ldr	r3, [pc, #88]	; (2010114c <adc_dma_init+0x7c>)
201010f2:	2201      	movs	r2, #1
201010f4:	4252      	negs	r2, r2
201010f6:	621a      	str	r2, [r3, #32]
201010f8:	4b14      	ldr	r3, [pc, #80]	; (2010114c <adc_dma_init+0x7c>)
201010fa:	2201      	movs	r2, #1
201010fc:	4252      	negs	r2, r2
201010fe:	635a      	str	r2, [r3, #52]	; 0x34
20101100:	4b12      	ldr	r3, [pc, #72]	; (2010114c <adc_dma_init+0x7c>)
20101102:	2280      	movs	r2, #128	; 0x80
20101104:	05d2      	lsls	r2, r2, #23
20101106:	61da      	str	r2, [r3, #28]
20101108:	4b10      	ldr	r3, [pc, #64]	; (2010114c <adc_dma_init+0x7c>)
2010110a:	2280      	movs	r2, #128	; 0x80
2010110c:	05d2      	lsls	r2, r2, #23
2010110e:	625a      	str	r2, [r3, #36]	; 0x24
20101110:	4b0e      	ldr	r3, [pc, #56]	; (2010114c <adc_dma_init+0x7c>)
20101112:	2201      	movs	r2, #1
20101114:	605a      	str	r2, [r3, #4]
20101116:	4a0f      	ldr	r2, [pc, #60]	; (20101154 <adc_dma_init+0x84>)
20101118:	447a      	add	r2, pc
2010111a:	23f0      	movs	r3, #240	; 0xf0
2010111c:	005b      	lsls	r3, r3, #1
2010111e:	490e      	ldr	r1, [pc, #56]	; (20101158 <adc_dma_init+0x88>)
20101120:	50d1      	str	r1, [r2, r3]
20101122:	4b0e      	ldr	r3, [pc, #56]	; (2010115c <adc_dma_init+0x8c>)
20101124:	447b      	add	r3, pc
20101126:	330c      	adds	r3, #12
20101128:	0019      	movs	r1, r3
2010112a:	4a0d      	ldr	r2, [pc, #52]	; (20101160 <adc_dma_init+0x90>)
2010112c:	447a      	add	r2, pc
2010112e:	23f2      	movs	r3, #242	; 0xf2
20101130:	005b      	lsls	r3, r3, #1
20101132:	50d1      	str	r1, [r2, r3]
20101134:	4a0b      	ldr	r2, [pc, #44]	; (20101164 <adc_dma_init+0x94>)
20101136:	447a      	add	r2, pc
20101138:	23f4      	movs	r3, #244	; 0xf4
2010113a:	005b      	lsls	r3, r3, #1
2010113c:	490a      	ldr	r1, [pc, #40]	; (20101168 <adc_dma_init+0x98>)
2010113e:	50d1      	str	r1, [r2, r3]
20101140:	46c0      	nop			; (mov r8, r8)
20101142:	46bd      	mov	sp, r7
20101144:	bd80      	pop	{r7, pc}
20101146:	46c0      	nop			; (mov r8, r8)
20101148:	40020000 	.word	0x40020000
2010114c:	40028000 	.word	0x40028000
20101150:	00000318 	.word	0x00000318
20101154:	000002e4 	.word	0x000002e4
20101158:	40088018 	.word	0x40088018
2010115c:	000004d8 	.word	0x000004d8
20101160:	000002d0 	.word	0x000002d0
20101164:	000002c6 	.word	0x000002c6
20101168:	ae000031 	.word	0xae000031

2010116c <adc_dma_start>:
2010116c:	b580      	push	{r7, lr}
2010116e:	af00      	add	r7, sp, #0
20101170:	4b06      	ldr	r3, [pc, #24]	; (2010118c <adc_dma_start+0x20>)
20101172:	4a06      	ldr	r2, [pc, #24]	; (2010118c <adc_dma_start+0x20>)
20101174:	6812      	ldr	r2, [r2, #0]
20101176:	2108      	movs	r1, #8
20101178:	430a      	orrs	r2, r1
2010117a:	601a      	str	r2, [r3, #0]
2010117c:	4b04      	ldr	r3, [pc, #16]	; (20101190 <adc_dma_start+0x24>)
2010117e:	2280      	movs	r2, #128	; 0x80
20101180:	05d2      	lsls	r2, r2, #23
20101182:	629a      	str	r2, [r3, #40]	; 0x28
20101184:	46c0      	nop			; (mov r8, r8)
20101186:	46bd      	mov	sp, r7
20101188:	bd80      	pop	{r7, pc}
2010118a:	46c0      	nop			; (mov r8, r8)
2010118c:	40088000 	.word	0x40088000
20101190:	40028000 	.word	0x40028000

20101194 <adc_dma_wait>:
20101194:	b580      	push	{r7, lr}
20101196:	af00      	add	r7, sp, #0
20101198:	46c0      	nop			; (mov r8, r8)
2010119a:	4a0b      	ldr	r2, [pc, #44]	; (201011c8 <adc_dma_wait+0x34>)
2010119c:	447a      	add	r2, pc
2010119e:	23f4      	movs	r3, #244	; 0xf4
201011a0:	005b      	lsls	r3, r3, #1
201011a2:	58d3      	ldr	r3, [r2, r3]
201011a4:	2207      	movs	r2, #7
201011a6:	4013      	ands	r3, r2
201011a8:	d1f7      	bne.n	2010119a <adc_dma_wait+0x6>
201011aa:	4b08      	ldr	r3, [pc, #32]	; (201011cc <adc_dma_wait+0x38>)
201011ac:	4a07      	ldr	r2, [pc, #28]	; (201011cc <adc_dma_wait+0x38>)
201011ae:	6812      	ldr	r2, [r2, #0]
201011b0:	2108      	movs	r1, #8
201011b2:	438a      	bics	r2, r1
201011b4:	601a      	str	r2, [r3, #0]
201011b6:	4a06      	ldr	r2, [pc, #24]	; (201011d0 <adc_dma_wait+0x3c>)
201011b8:	447a      	add	r2, pc
201011ba:	23f4      	movs	r3, #244	; 0xf4
201011bc:	005b      	lsls	r3, r3, #1
201011be:	4905      	ldr	r1, [pc, #20]	; (201011d4 <adc_dma_wait+0x40>)
201011c0:	50d1      	str	r1, [r2, r3]
201011c2:	46c0      	nop			; (mov r8, r8)
201011c4:	46bd      	mov	sp, r7
201011c6:	bd80      	pop	{r7, pc}
201011c8:	00000260 	.word	0x00000260
201011cc:	40088000 	.word	0x40088000
201011d0:	00000244 	.word	0x00000244
201011d4:	ae000031 	.word	0xae000031
	...

201011e0 <asm_test_loop>:
201011e0:	b570      	push	{r4, r5, r6, lr}
201011e2:	405b      	eors	r3, r3
201011e4:	6804      	ldr	r4, [r0, #0]
201011e6:	2c00      	cmp	r4, #0
201011e8:	bd70      	pop	{r4, r5, r6, pc}

201011ea <AngTable>:
201011ea:	0080      	.short	0x0080
201011ec:	004c0000 	.word	0x004c0000
201011f0:	00280000 	.word	0x00280000
201011f4:	00140000 	.word	0x00140000
201011f8:	000a0000 	.word	0x000a0000
201011fc:	00050000 	.word	0x00050000
20101200:	00030000 	.word	0x00030000
20101204:	00010000 	.word	0x00010000
	...

2010120a <kc>:
2010120a:	02d4      	.short	0x02d4
2010120c:	02880000 	.word	0x02880000
20101210:	02740000 	.word	0x02740000
20101214:	026f0000 	.word	0x026f0000
20101218:	026f0000 	.word	0x026f0000
2010121c:	026e0000 	.word	0x026e0000
20101220:	026e0000 	.word	0x026e0000
20101224:	026e0000 	.word	0x026e0000
	...

2010122a <abc_to_dq>:
2010122a:	b570      	push	{r4, r5, r6, lr}
2010122c:	4b4a      	ldr	r3, [pc, #296]	; (20101358 <dot3+0x1c>)
2010122e:	0092      	lsls	r2, r2, #2
20101230:	589c      	ldr	r4, [r3, r2]
20101232:	6805      	ldr	r5, [r0, #0]
20101234:	436c      	muls	r4, r5
20101236:	4e33      	ldr	r6, [pc, #204]	; (20101304 <P_4PI3>)
20101238:	18b6      	adds	r6, r6, r2
2010123a:	4d36      	ldr	r5, [pc, #216]	; (20101314 <MASK1023>)
2010123c:	4035      	ands	r5, r6
2010123e:	595e      	ldr	r6, [r3, r5]
20101240:	6845      	ldr	r5, [r0, #4]
20101242:	4375      	muls	r5, r6
20101244:	1964      	adds	r4, r4, r5
20101246:	4e30      	ldr	r6, [pc, #192]	; (20101308 <P_2PI3>)
20101248:	18b6      	adds	r6, r6, r2
2010124a:	4d32      	ldr	r5, [pc, #200]	; (20101314 <MASK1023>)
2010124c:	4035      	ands	r5, r6
2010124e:	595e      	ldr	r6, [r3, r5]
20101250:	6885      	ldr	r5, [r0, #8]
20101252:	4375      	muls	r5, r6
20101254:	1964      	adds	r4, r4, r5
20101256:	12a4      	asrs	r4, r4, #10
20101258:	600c      	str	r4, [r1, #0]
2010125a:	4e29      	ldr	r6, [pc, #164]	; (20101300 <P_3PI2>)
2010125c:	18b6      	adds	r6, r6, r2
2010125e:	4d2d      	ldr	r5, [pc, #180]	; (20101314 <MASK1023>)
20101260:	4035      	ands	r5, r6
20101262:	595e      	ldr	r6, [r3, r5]
20101264:	6804      	ldr	r4, [r0, #0]
20101266:	4374      	muls	r4, r6
20101268:	4e28      	ldr	r6, [pc, #160]	; (2010130c <P_4PI33PI2>)
2010126a:	18b6      	adds	r6, r6, r2
2010126c:	4d29      	ldr	r5, [pc, #164]	; (20101314 <MASK1023>)
2010126e:	4035      	ands	r5, r6
20101270:	595e      	ldr	r6, [r3, r5]
20101272:	6845      	ldr	r5, [r0, #4]
20101274:	4375      	muls	r5, r6
20101276:	1964      	adds	r4, r4, r5
20101278:	4e25      	ldr	r6, [pc, #148]	; (20101310 <P_2PI33PI2>)
2010127a:	18b6      	adds	r6, r6, r2
2010127c:	4d25      	ldr	r5, [pc, #148]	; (20101314 <MASK1023>)
2010127e:	4035      	ands	r5, r6
20101280:	595e      	ldr	r6, [r3, r5]
20101282:	6885      	ldr	r5, [r0, #8]
20101284:	4375      	muls	r5, r6
20101286:	1964      	adds	r4, r4, r5
20101288:	12a4      	asrs	r4, r4, #10
2010128a:	4076      	eors	r6, r6
2010128c:	1b36      	subs	r6, r6, r4
2010128e:	604e      	str	r6, [r1, #4]
20101290:	bd70      	pop	{r4, r5, r6, pc}

20101292 <dq_to_abc>:
20101292:	b570      	push	{r4, r5, r6, lr}
20101294:	4b30      	ldr	r3, [pc, #192]	; (20101358 <dot3+0x1c>)
20101296:	0092      	lsls	r2, r2, #2
20101298:	589c      	ldr	r4, [r3, r2]
2010129a:	680d      	ldr	r5, [r1, #0]
2010129c:	436c      	muls	r4, r5
2010129e:	4e18      	ldr	r6, [pc, #96]	; (20101300 <P_3PI2>)
201012a0:	18b6      	adds	r6, r6, r2
201012a2:	4d1c      	ldr	r5, [pc, #112]	; (20101314 <MASK1023>)
201012a4:	4035      	ands	r5, r6
201012a6:	595e      	ldr	r6, [r3, r5]
201012a8:	684d      	ldr	r5, [r1, #4]
201012aa:	4375      	muls	r5, r6
201012ac:	1b64      	subs	r4, r4, r5
201012ae:	1524      	asrs	r4, r4, #20
201012b0:	6004      	str	r4, [r0, #0]
201012b2:	4e14      	ldr	r6, [pc, #80]	; (20101304 <P_4PI3>)
201012b4:	18b6      	adds	r6, r6, r2
201012b6:	4d17      	ldr	r5, [pc, #92]	; (20101314 <MASK1023>)
201012b8:	4035      	ands	r5, r6
201012ba:	595c      	ldr	r4, [r3, r5]
201012bc:	680d      	ldr	r5, [r1, #0]
201012be:	436c      	muls	r4, r5
201012c0:	4e12      	ldr	r6, [pc, #72]	; (2010130c <P_4PI33PI2>)
201012c2:	18b6      	adds	r6, r6, r2
201012c4:	4d13      	ldr	r5, [pc, #76]	; (20101314 <MASK1023>)
201012c6:	4035      	ands	r5, r6
201012c8:	595e      	ldr	r6, [r3, r5]
201012ca:	684d      	ldr	r5, [r1, #4]
201012cc:	4375      	muls	r5, r6
201012ce:	1b64      	subs	r4, r4, r5
201012d0:	1524      	asrs	r4, r4, #20
201012d2:	6044      	str	r4, [r0, #4]
201012d4:	4e0c      	ldr	r6, [pc, #48]	; (20101308 <P_2PI3>)
201012d6:	18b6      	adds	r6, r6, r2
201012d8:	4d0e      	ldr	r5, [pc, #56]	; (20101314 <MASK1023>)
201012da:	4035      	ands	r5, r6
201012dc:	595c      	ldr	r4, [r3, r5]
201012de:	680d      	ldr	r5, [r1, #0]
201012e0:	436c      	muls	r4, r5
201012e2:	4e0b      	ldr	r6, [pc, #44]	; (20101310 <P_2PI33PI2>)
201012e4:	18b6      	adds	r6, r6, r2
201012e6:	4d0b      	ldr	r5, [pc, #44]	; (20101314 <MASK1023>)
201012e8:	4035      	ands	r5, r6
201012ea:	595e      	ldr	r6, [r3, r5]
201012ec:	684d      	ldr	r5, [r1, #4]
201012ee:	4375      	muls	r5, r6
201012f0:	1b64      	subs	r4, r4, r5
201012f2:	1524      	asrs	r4, r4, #20
201012f4:	6084      	str	r4, [r0, #8]
201012f6:	bd70      	pop	{r4, r5, r6, pc}
201012f8:	46c0      	nop			; (mov r8, r8)
201012fa:	46c0      	nop			; (mov r8, r8)
201012fc:	46c0      	nop			; (mov r8, r8)
201012fe:	46c0      	nop			; (mov r8, r8)

20101300 <P_3PI2>:
20101300:	00000c00 	.word	0x00000c00

20101304 <P_4PI3>:
20101304:	00000aaa 	.word	0x00000aaa

20101308 <P_2PI3>:
20101308:	00000555 	.word	0x00000555

2010130c <P_4PI33PI2>:
2010130c:	000016aa 	.word	0x000016aa

20101310 <P_2PI33PI2>:
20101310:	00001155 	.word	0x00001155

20101314 <MASK1023>:
20101314:	00000ffc 	.word	0x00000ffc

20101318 <mfilter>:
20101318:	4910      	ldr	r1, [pc, #64]	; (2010135c <dot3+0x20>)
2010131a:	680a      	ldr	r2, [r1, #0]
2010131c:	3201      	adds	r2, #1
2010131e:	231f      	movs	r3, #31
20101320:	401a      	ands	r2, r3
20101322:	600a      	str	r2, [r1, #0]
20101324:	490e      	ldr	r1, [pc, #56]	; (20101360 <dot3+0x24>)
20101326:	0092      	lsls	r2, r2, #2
20101328:	1889      	adds	r1, r1, r2
2010132a:	680a      	ldr	r2, [r1, #0]
2010132c:	6008      	str	r0, [r1, #0]
2010132e:	1a80      	subs	r0, r0, r2
20101330:	490c      	ldr	r1, [pc, #48]	; (20101364 <dot3+0x28>)
20101332:	680a      	ldr	r2, [r1, #0]
20101334:	1880      	adds	r0, r0, r2
20101336:	6008      	str	r0, [r1, #0]
20101338:	1140      	asrs	r0, r0, #5
2010133a:	46f7      	mov	pc, lr

2010133c <dot3>:
2010133c:	b580      	push	{r7, lr}
2010133e:	6802      	ldr	r2, [r0, #0]
20101340:	680b      	ldr	r3, [r1, #0]
20101342:	435a      	muls	r2, r3
20101344:	1c17      	adds	r7, r2, #0
20101346:	6842      	ldr	r2, [r0, #4]
20101348:	684b      	ldr	r3, [r1, #4]
2010134a:	435a      	muls	r2, r3
2010134c:	18bf      	adds	r7, r7, r2
2010134e:	6880      	ldr	r0, [r0, #8]
20101350:	688b      	ldr	r3, [r1, #8]
20101352:	4358      	muls	r0, r3
20101354:	1838      	adds	r0, r7, r0
20101356:	bd80      	pop	{r7, pc}
20101358:	20101620 	.word	0x20101620
2010135c:	20000008 	.word	0x20000008
20101360:	2000000c 	.word	0x2000000c
20101364:	20000004 	.word	0x20000004

20101368 <__gnu_thumb1_case_uqi>:
20101368:	b402      	push	{r1}
2010136a:	4671      	mov	r1, lr
2010136c:	0849      	lsrs	r1, r1, #1
2010136e:	0049      	lsls	r1, r1, #1
20101370:	5c09      	ldrb	r1, [r1, r0]
20101372:	0049      	lsls	r1, r1, #1
20101374:	448e      	add	lr, r1
20101376:	bc02      	pop	{r1}
20101378:	4770      	bx	lr
2010137a:	46c0      	nop			; (mov r8, r8)
	...

20101400 <dma_ctr_str>:
	...

20101600 <adc_dma_buffer>:
	...
