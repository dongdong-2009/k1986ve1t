
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
20100044:	f000 fc80 	bl	20100948 <SystemInit>
20100048:	2334      	movs	r3, #52	; 0x34
2010004a:	18fb      	adds	r3, r7, r3
2010004c:	22c8      	movs	r2, #200	; 0xc8
2010004e:	21c8      	movs	r1, #200	; 0xc8
20100050:	0018      	movs	r0, r3
20100052:	f000 fccd 	bl	201009f0 <reg_init>
20100056:	2324      	movs	r3, #36	; 0x24
20100058:	18fb      	adds	r3, r7, r3
2010005a:	22c8      	movs	r2, #200	; 0xc8
2010005c:	21c8      	movs	r1, #200	; 0xc8
2010005e:	0018      	movs	r0, r3
20100060:	f000 fcc6 	bl	201009f0 <reg_init>
20100064:	23fa      	movs	r3, #250	; 0xfa
20100066:	009a      	lsls	r2, r3, #2
20100068:	2314      	movs	r3, #20
2010006a:	18fb      	adds	r3, r7, r3
2010006c:	2100      	movs	r1, #0
2010006e:	0018      	movs	r0, r3
20100070:	f000 fcbe 	bl	201009f0 <reg_init>
20100074:	23fa      	movs	r3, #250	; 0xfa
20100076:	009a      	lsls	r2, r3, #2
20100078:	1d3b      	adds	r3, r7, #4
2010007a:	2100      	movs	r1, #0
2010007c:	0018      	movs	r0, r3
2010007e:	f000 fcb7 	bl	201009f0 <reg_init>
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
201000c4:	f000 fc54 	bl	20100970 <timer_wait>
201000c8:	f001 f8a8 	bl	2010121c <adc_dma_start>
201000cc:	4bce      	ldr	r3, [pc, #824]	; (20100408 <main+0x408>)
201000ce:	4acf      	ldr	r2, [pc, #828]	; (2010040c <main+0x40c>)
201000d0:	609a      	str	r2, [r3, #8]
201000d2:	f001 f8b7 	bl	20101244 <adc_dma_wait>
201000d6:	4bce      	ldr	r3, [pc, #824]	; (20100410 <main+0x410>)
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
201000ee:	4bc8      	ldr	r3, [pc, #800]	; (20100410 <main+0x410>)
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
20100106:	4bc2      	ldr	r3, [pc, #776]	; (20100410 <main+0x410>)
20100108:	58e3      	ldr	r3, [r4, r3]
2010010a:	68db      	ldr	r3, [r3, #12]
2010010c:	051b      	lsls	r3, r3, #20
2010010e:	0d1a      	lsrs	r2, r3, #20
20100110:	4bc0      	ldr	r3, [pc, #768]	; (20100414 <main+0x414>)
20100112:	447b      	add	r3, pc
20100114:	681b      	ldr	r3, [r3, #0]
20100116:	18d3      	adds	r3, r2, r3
20100118:	001a      	movs	r2, r3
2010011a:	4bbf      	ldr	r3, [pc, #764]	; (20100418 <main+0x418>)
2010011c:	447b      	add	r3, pc
2010011e:	601a      	str	r2, [r3, #0]
20100120:	4bb9      	ldr	r3, [pc, #740]	; (20100408 <main+0x408>)
20100122:	689b      	ldr	r3, [r3, #8]
20100124:	051b      	lsls	r3, r3, #20
20100126:	0d1b      	lsrs	r3, r3, #20
20100128:	0018      	movs	r0, r3
2010012a:	f000 fbf5 	bl	20100918 <g2b>
2010012e:	0002      	movs	r2, r0
20100130:	4bba      	ldr	r3, [pc, #744]	; (2010041c <main+0x41c>)
20100132:	447b      	add	r3, pc
20100134:	681b      	ldr	r3, [r3, #0]
20100136:	18d3      	adds	r3, r2, r3
20100138:	001a      	movs	r2, r3
2010013a:	4bb9      	ldr	r3, [pc, #740]	; (20100420 <main+0x420>)
2010013c:	447b      	add	r3, pc
2010013e:	601a      	str	r2, [r3, #0]
20100140:	4bb3      	ldr	r3, [pc, #716]	; (20100410 <main+0x410>)
20100142:	58e3      	ldr	r3, [r4, r3]
20100144:	681b      	ldr	r3, [r3, #0]
20100146:	051b      	lsls	r3, r3, #20
20100148:	0d1a      	lsrs	r2, r3, #20
2010014a:	0013      	movs	r3, r2
2010014c:	009b      	lsls	r3, r3, #2
2010014e:	189b      	adds	r3, r3, r2
20100150:	0018      	movs	r0, r3
20100152:	f001 f911 	bl	20101378 <mfilter>
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
2010016a:	4aae      	ldr	r2, [pc, #696]	; (20100424 <main+0x424>)
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
2010018c:	4ba6      	ldr	r3, [pc, #664]	; (20100428 <main+0x428>)
2010018e:	447b      	add	r3, pc
20100190:	681b      	ldr	r3, [r3, #0]
20100192:	129a      	asrs	r2, r3, #10
20100194:	4ba5      	ldr	r3, [pc, #660]	; (2010042c <main+0x42c>)
20100196:	447b      	add	r3, pc
20100198:	601a      	str	r2, [r3, #0]
2010019a:	4ba5      	ldr	r3, [pc, #660]	; (20100430 <main+0x430>)
2010019c:	447b      	add	r3, pc
2010019e:	681a      	ldr	r2, [r3, #0]
201001a0:	4ba4      	ldr	r3, [pc, #656]	; (20100434 <main+0x434>)
201001a2:	447b      	add	r3, pc
201001a4:	601a      	str	r2, [r3, #0]
201001a6:	4ba4      	ldr	r3, [pc, #656]	; (20100438 <main+0x438>)
201001a8:	447b      	add	r3, pc
201001aa:	681b      	ldr	r3, [r3, #0]
201001ac:	129a      	asrs	r2, r3, #10
201001ae:	4ba3      	ldr	r3, [pc, #652]	; (2010043c <main+0x43c>)
201001b0:	447b      	add	r3, pc
201001b2:	601a      	str	r2, [r3, #0]
201001b4:	f000 fbdc 	bl	20100970 <timer_wait>
201001b8:	4ba1      	ldr	r3, [pc, #644]	; (20100440 <main+0x440>)
201001ba:	4aa1      	ldr	r2, [pc, #644]	; (20100440 <main+0x440>)
201001bc:	6812      	ldr	r2, [r2, #0]
201001be:	2140      	movs	r1, #64	; 0x40
201001c0:	438a      	bics	r2, r1
201001c2:	601a      	str	r2, [r3, #0]
201001c4:	f001 f82a 	bl	2010121c <adc_dma_start>
201001c8:	4b8f      	ldr	r3, [pc, #572]	; (20100408 <main+0x408>)
201001ca:	4a90      	ldr	r2, [pc, #576]	; (2010040c <main+0x40c>)
201001cc:	609a      	str	r2, [r3, #8]
201001ce:	f001 f839 	bl	20101244 <adc_dma_wait>
201001d2:	4b9b      	ldr	r3, [pc, #620]	; (20100440 <main+0x440>)
201001d4:	4a9a      	ldr	r2, [pc, #616]	; (20100440 <main+0x440>)
201001d6:	6812      	ldr	r2, [r2, #0]
201001d8:	2140      	movs	r1, #64	; 0x40
201001da:	430a      	orrs	r2, r1
201001dc:	601a      	str	r2, [r3, #0]
201001de:	4b8c      	ldr	r3, [pc, #560]	; (20100410 <main+0x410>)
201001e0:	58e3      	ldr	r3, [r4, r3]
201001e2:	681b      	ldr	r3, [r3, #0]
201001e4:	051b      	lsls	r3, r3, #20
201001e6:	0d1a      	lsrs	r2, r3, #20
201001e8:	0013      	movs	r3, r2
201001ea:	009b      	lsls	r3, r3, #2
201001ec:	189b      	adds	r3, r3, r2
201001ee:	0018      	movs	r0, r3
201001f0:	f001 f8c2 	bl	20101378 <mfilter>
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
20100214:	4b8b      	ldr	r3, [pc, #556]	; (20100444 <main+0x444>)
20100216:	447b      	add	r3, pc
20100218:	601a      	str	r2, [r3, #0]
2010021a:	4b7d      	ldr	r3, [pc, #500]	; (20100410 <main+0x410>)
2010021c:	58e3      	ldr	r3, [r4, r3]
2010021e:	685b      	ldr	r3, [r3, #4]
20100220:	051b      	lsls	r3, r3, #20
20100222:	0d1a      	lsrs	r2, r3, #20
20100224:	2390      	movs	r3, #144	; 0x90
20100226:	18fb      	adds	r3, r7, r3
20100228:	681b      	ldr	r3, [r3, #0]
2010022a:	1ad3      	subs	r3, r2, r3
2010022c:	673b      	str	r3, [r7, #112]	; 0x70
2010022e:	4b78      	ldr	r3, [pc, #480]	; (20100410 <main+0x410>)
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
2010024c:	4b70      	ldr	r3, [pc, #448]	; (20100410 <main+0x410>)
2010024e:	58e3      	ldr	r3, [r4, r3]
20100250:	68db      	ldr	r3, [r3, #12]
20100252:	051b      	lsls	r3, r3, #20
20100254:	0d1a      	lsrs	r2, r3, #20
20100256:	4b7c      	ldr	r3, [pc, #496]	; (20100448 <main+0x448>)
20100258:	447b      	add	r3, pc
2010025a:	601a      	str	r2, [r3, #0]
2010025c:	4b6a      	ldr	r3, [pc, #424]	; (20100408 <main+0x408>)
2010025e:	689b      	ldr	r3, [r3, #8]
20100260:	051b      	lsls	r3, r3, #20
20100262:	0d1b      	lsrs	r3, r3, #20
20100264:	0018      	movs	r0, r3
20100266:	f000 fb57 	bl	20100918 <g2b>
2010026a:	0003      	movs	r3, r0
2010026c:	667b      	str	r3, [r7, #100]	; 0x64
2010026e:	6e7b      	ldr	r3, [r7, #100]	; 0x64
20100270:	059b      	lsls	r3, r3, #22
20100272:	0d9b      	lsrs	r3, r3, #22
20100274:	67bb      	str	r3, [r7, #120]	; 0x78
20100276:	4b75      	ldr	r3, [pc, #468]	; (2010044c <main+0x44c>)
20100278:	6e7a      	ldr	r2, [r7, #100]	; 0x64
2010027a:	605a      	str	r2, [r3, #4]
2010027c:	2384      	movs	r3, #132	; 0x84
2010027e:	18fb      	adds	r3, r7, r3
20100280:	681b      	ldr	r3, [r3, #0]
20100282:	3301      	adds	r3, #1
20100284:	2284      	movs	r2, #132	; 0x84
20100286:	18ba      	adds	r2, r7, r2
20100288:	6013      	str	r3, [r2, #0]
2010028a:	2384      	movs	r3, #132	; 0x84
2010028c:	18fb      	adds	r3, r7, r3
2010028e:	681b      	ldr	r3, [r3, #0]
20100290:	2207      	movs	r2, #7
20100292:	4013      	ands	r3, r2
20100294:	d14a      	bne.n	2010032c <main+0x32c>
20100296:	6e7b      	ldr	r3, [r7, #100]	; 0x64
20100298:	003a      	movs	r2, r7
2010029a:	0011      	movs	r1, r2
2010029c:	0018      	movs	r0, r3
2010029e:	f000 fee5 	bl	2010106c <get_speed>
201002a2:	0003      	movs	r3, r0
201002a4:	663b      	str	r3, [r7, #96]	; 0x60
201002a6:	4b6a      	ldr	r3, [pc, #424]	; (20100450 <main+0x450>)
201002a8:	447b      	add	r3, pc
201002aa:	681a      	ldr	r2, [r3, #0]
201002ac:	683b      	ldr	r3, [r7, #0]
201002ae:	1ad1      	subs	r1, r2, r3
201002b0:	1d3b      	adds	r3, r7, #4
201002b2:	2200      	movs	r2, #0
201002b4:	0018      	movs	r0, r3
201002b6:	f000 fbb1 	bl	20100a1c <reg_update>
201002ba:	1d3b      	adds	r3, r7, #4
201002bc:	68db      	ldr	r3, [r3, #12]
201002be:	129b      	asrs	r3, r3, #10
201002c0:	677b      	str	r3, [r7, #116]	; 0x74
201002c2:	6f7a      	ldr	r2, [r7, #116]	; 0x74
201002c4:	6e3b      	ldr	r3, [r7, #96]	; 0x60
201002c6:	1ad1      	subs	r1, r2, r3
201002c8:	2314      	movs	r3, #20
201002ca:	18fb      	adds	r3, r7, r3
201002cc:	2200      	movs	r2, #0
201002ce:	0018      	movs	r0, r3
201002d0:	f000 fba4 	bl	20100a1c <reg_update>
201002d4:	2314      	movs	r3, #20
201002d6:	18fb      	adds	r3, r7, r3
201002d8:	68db      	ldr	r3, [r3, #12]
201002da:	129b      	asrs	r3, r3, #10
201002dc:	2280      	movs	r2, #128	; 0x80
201002de:	18ba      	adds	r2, r7, r2
201002e0:	6013      	str	r3, [r2, #0]
201002e2:	2380      	movs	r3, #128	; 0x80
201002e4:	18fb      	adds	r3, r7, r3
201002e6:	681a      	ldr	r2, [r3, #0]
201002e8:	23fa      	movs	r3, #250	; 0xfa
201002ea:	009b      	lsls	r3, r3, #2
201002ec:	429a      	cmp	r2, r3
201002ee:	dd04      	ble.n	201002fa <main+0x2fa>
201002f0:	23fa      	movs	r3, #250	; 0xfa
201002f2:	009b      	lsls	r3, r3, #2
201002f4:	2280      	movs	r2, #128	; 0x80
201002f6:	18ba      	adds	r2, r7, r2
201002f8:	6013      	str	r3, [r2, #0]
201002fa:	2380      	movs	r3, #128	; 0x80
201002fc:	18fb      	adds	r3, r7, r3
201002fe:	681b      	ldr	r3, [r3, #0]
20100300:	4a54      	ldr	r2, [pc, #336]	; (20100454 <main+0x454>)
20100302:	4293      	cmp	r3, r2
20100304:	da03      	bge.n	2010030e <main+0x30e>
20100306:	4b53      	ldr	r3, [pc, #332]	; (20100454 <main+0x454>)
20100308:	2280      	movs	r2, #128	; 0x80
2010030a:	18ba      	adds	r2, r7, r2
2010030c:	6013      	str	r3, [r2, #0]
2010030e:	4b52      	ldr	r3, [pc, #328]	; (20100458 <main+0x458>)
20100310:	447b      	add	r3, pc
20100312:	681a      	ldr	r2, [r3, #0]
20100314:	4b51      	ldr	r3, [pc, #324]	; (2010045c <main+0x45c>)
20100316:	447b      	add	r3, pc
20100318:	681b      	ldr	r3, [r3, #0]
2010031a:	1ad2      	subs	r2, r2, r3
2010031c:	0013      	movs	r3, r2
2010031e:	00db      	lsls	r3, r3, #3
20100320:	1a9b      	subs	r3, r3, r2
20100322:	00da      	lsls	r2, r3, #3
20100324:	1ad2      	subs	r2, r2, r3
20100326:	4b4e      	ldr	r3, [pc, #312]	; (20100460 <main+0x460>)
20100328:	447b      	add	r3, pc
2010032a:	601a      	str	r2, [r3, #0]
2010032c:	6fbb      	ldr	r3, [r7, #120]	; 0x78
2010032e:	4a4d      	ldr	r2, [pc, #308]	; (20100464 <main+0x464>)
20100330:	4694      	mov	ip, r2
20100332:	4463      	add	r3, ip
20100334:	059b      	lsls	r3, r3, #22
20100336:	0d9b      	lsrs	r3, r3, #22
20100338:	67bb      	str	r3, [r7, #120]	; 0x78
2010033a:	2344      	movs	r3, #68	; 0x44
2010033c:	18fb      	adds	r3, r7, r3
2010033e:	6f3a      	ldr	r2, [r7, #112]	; 0x70
20100340:	601a      	str	r2, [r3, #0]
20100342:	2344      	movs	r3, #68	; 0x44
20100344:	18fb      	adds	r3, r7, r3
20100346:	6eba      	ldr	r2, [r7, #104]	; 0x68
20100348:	605a      	str	r2, [r3, #4]
2010034a:	2344      	movs	r3, #68	; 0x44
2010034c:	18fb      	adds	r3, r7, r3
2010034e:	6efa      	ldr	r2, [r7, #108]	; 0x6c
20100350:	609a      	str	r2, [r3, #8]
20100352:	6fba      	ldr	r2, [r7, #120]	; 0x78
20100354:	2350      	movs	r3, #80	; 0x50
20100356:	18f9      	adds	r1, r7, r3
20100358:	2344      	movs	r3, #68	; 0x44
2010035a:	18fb      	adds	r3, r7, r3
2010035c:	0018      	movs	r0, r3
2010035e:	f000 fb8f 	bl	20100a80 <abc_to_dq>
20100362:	2350      	movs	r3, #80	; 0x50
20100364:	18fb      	adds	r3, r7, r3
20100366:	681b      	ldr	r3, [r3, #0]
20100368:	425b      	negs	r3, r3
2010036a:	65fb      	str	r3, [r7, #92]	; 0x5c
2010036c:	2350      	movs	r3, #80	; 0x50
2010036e:	18fb      	adds	r3, r7, r3
20100370:	685b      	ldr	r3, [r3, #4]
20100372:	2280      	movs	r2, #128	; 0x80
20100374:	18ba      	adds	r2, r7, r2
20100376:	6812      	ldr	r2, [r2, #0]
20100378:	1ad3      	subs	r3, r2, r3
2010037a:	65bb      	str	r3, [r7, #88]	; 0x58
2010037c:	2388      	movs	r3, #136	; 0x88
2010037e:	18fb      	adds	r3, r7, r3
20100380:	681a      	ldr	r2, [r3, #0]
20100382:	6df9      	ldr	r1, [r7, #92]	; 0x5c
20100384:	2334      	movs	r3, #52	; 0x34
20100386:	18fb      	adds	r3, r7, r3
20100388:	0018      	movs	r0, r3
2010038a:	f000 fb47 	bl	20100a1c <reg_update>
2010038e:	2388      	movs	r3, #136	; 0x88
20100390:	18fb      	adds	r3, r7, r3
20100392:	681a      	ldr	r2, [r3, #0]
20100394:	6db9      	ldr	r1, [r7, #88]	; 0x58
20100396:	2324      	movs	r3, #36	; 0x24
20100398:	18fb      	adds	r3, r7, r3
2010039a:	0018      	movs	r0, r3
2010039c:	f000 fb3e 	bl	20100a1c <reg_update>
201003a0:	2334      	movs	r3, #52	; 0x34
201003a2:	18fb      	adds	r3, r7, r3
201003a4:	68da      	ldr	r2, [r3, #12]
201003a6:	2350      	movs	r3, #80	; 0x50
201003a8:	18fb      	adds	r3, r7, r3
201003aa:	601a      	str	r2, [r3, #0]
201003ac:	2324      	movs	r3, #36	; 0x24
201003ae:	18fb      	adds	r3, r7, r3
201003b0:	68da      	ldr	r2, [r3, #12]
201003b2:	2350      	movs	r3, #80	; 0x50
201003b4:	18fb      	adds	r3, r7, r3
201003b6:	605a      	str	r2, [r3, #4]
201003b8:	6fba      	ldr	r2, [r7, #120]	; 0x78
201003ba:	2350      	movs	r3, #80	; 0x50
201003bc:	18f9      	adds	r1, r7, r3
201003be:	2344      	movs	r3, #68	; 0x44
201003c0:	18fb      	adds	r3, r7, r3
201003c2:	0018      	movs	r0, r3
201003c4:	f000 fd04 	bl	20100dd0 <svpwm>
201003c8:	0003      	movs	r3, r0
201003ca:	2288      	movs	r2, #136	; 0x88
201003cc:	18ba      	adds	r2, r7, r2
201003ce:	6013      	str	r3, [r2, #0]
201003d0:	4a25      	ldr	r2, [pc, #148]	; (20100468 <main+0x468>)
201003d2:	2344      	movs	r3, #68	; 0x44
201003d4:	18fb      	adds	r3, r7, r3
201003d6:	681b      	ldr	r3, [r3, #0]
201003d8:	2180      	movs	r1, #128	; 0x80
201003da:	0089      	lsls	r1, r1, #2
201003dc:	468c      	mov	ip, r1
201003de:	4463      	add	r3, ip
201003e0:	6113      	str	r3, [r2, #16]
201003e2:	4a21      	ldr	r2, [pc, #132]	; (20100468 <main+0x468>)
201003e4:	2344      	movs	r3, #68	; 0x44
201003e6:	18fb      	adds	r3, r7, r3
201003e8:	685b      	ldr	r3, [r3, #4]
201003ea:	2180      	movs	r1, #128	; 0x80
201003ec:	0089      	lsls	r1, r1, #2
201003ee:	468c      	mov	ip, r1
201003f0:	4463      	add	r3, ip
201003f2:	6153      	str	r3, [r2, #20]
201003f4:	4a1c      	ldr	r2, [pc, #112]	; (20100468 <main+0x468>)
201003f6:	2344      	movs	r3, #68	; 0x44
201003f8:	18fb      	adds	r3, r7, r3
201003fa:	689b      	ldr	r3, [r3, #8]
201003fc:	2180      	movs	r1, #128	; 0x80
201003fe:	0089      	lsls	r1, r1, #2
20100400:	468c      	mov	ip, r1
20100402:	4463      	add	r3, ip
20100404:	6193      	str	r3, [r2, #24]
20100406:	e6d5      	b.n	201001b4 <main+0x1b4>
20100408:	400a0000 	.word	0x400a0000
2010040c:	00000555 	.word	0x00000555
20100410:	00000004 	.word	0x00000004
20100414:	ffefff92 	.word	0xffefff92
20100418:	ffefff88 	.word	0xffefff88
2010041c:	ffefff76 	.word	0xffefff76
20100420:	ffefff6c 	.word	0xffefff6c
20100424:	000003ff 	.word	0x000003ff
20100428:	ffefff16 	.word	0xffefff16
2010042c:	ffefff0e 	.word	0xffefff0e
20100430:	ffefff08 	.word	0xffefff08
20100434:	ffeffefe 	.word	0xffeffefe
20100438:	ffefff00 	.word	0xffefff00
2010043c:	ffeffef8 	.word	0xffeffef8
20100440:	400b8000 	.word	0x400b8000
20100444:	ffeffe8a 	.word	0xffeffe8a
20100448:	ffeffe54 	.word	0xffeffe54
2010044c:	40090000 	.word	0x40090000
20100450:	ffeffdf4 	.word	0xffeffdf4
20100454:	fffffc18 	.word	0xfffffc18
20100458:	ffeffd90 	.word	0xffeffd90
2010045c:	ffeffd8e 	.word	0xffeffd8e
20100460:	ffeffd74 	.word	0xffeffd74
20100464:	000003ea 	.word	0x000003ea
20100468:	40098000 	.word	0x40098000

2010046c <sleep>:
2010046c:	b580      	push	{r7, lr}
2010046e:	b084      	sub	sp, #16
20100470:	af00      	add	r7, sp, #0
20100472:	6078      	str	r0, [r7, #4]
20100474:	2300      	movs	r3, #0
20100476:	60fb      	str	r3, [r7, #12]
20100478:	e00b      	b.n	20100492 <sleep+0x26>
2010047a:	46c0      	nop			; (mov r8, r8)
2010047c:	4b09      	ldr	r3, [pc, #36]	; (201004a4 <sleep+0x38>)
2010047e:	6d5b      	ldr	r3, [r3, #84]	; 0x54
20100480:	2202      	movs	r2, #2
20100482:	4013      	ands	r3, r2
20100484:	d0fa      	beq.n	2010047c <sleep+0x10>
20100486:	4b07      	ldr	r3, [pc, #28]	; (201004a4 <sleep+0x38>)
20100488:	2200      	movs	r2, #0
2010048a:	655a      	str	r2, [r3, #84]	; 0x54
2010048c:	68fb      	ldr	r3, [r7, #12]
2010048e:	3301      	adds	r3, #1
20100490:	60fb      	str	r3, [r7, #12]
20100492:	68fa      	ldr	r2, [r7, #12]
20100494:	687b      	ldr	r3, [r7, #4]
20100496:	429a      	cmp	r2, r3
20100498:	d3ef      	bcc.n	2010047a <sleep+0xe>
2010049a:	46c0      	nop			; (mov r8, r8)
2010049c:	0018      	movs	r0, r3
2010049e:	46bd      	mov	sp, r7
201004a0:	b004      	add	sp, #16
201004a2:	bd80      	pop	{r7, pc}
201004a4:	40098000 	.word	0x40098000

201004a8 <PortConfig>:
201004a8:	b580      	push	{r7, lr}
201004aa:	af00      	add	r7, sp, #0
201004ac:	4b42      	ldr	r3, [pc, #264]	; (201005b8 <PortConfig+0x110>)
201004ae:	4a42      	ldr	r2, [pc, #264]	; (201005b8 <PortConfig+0x110>)
201004b0:	69d2      	ldr	r2, [r2, #28]
201004b2:	2180      	movs	r1, #128	; 0x80
201004b4:	0389      	lsls	r1, r1, #14
201004b6:	430a      	orrs	r2, r1
201004b8:	61da      	str	r2, [r3, #28]
201004ba:	4b40      	ldr	r3, [pc, #256]	; (201005bc <PortConfig+0x114>)
201004bc:	4a3f      	ldr	r2, [pc, #252]	; (201005bc <PortConfig+0x114>)
201004be:	6892      	ldr	r2, [r2, #8]
201004c0:	493f      	ldr	r1, [pc, #252]	; (201005c0 <PortConfig+0x118>)
201004c2:	400a      	ands	r2, r1
201004c4:	609a      	str	r2, [r3, #8]
201004c6:	4b3d      	ldr	r3, [pc, #244]	; (201005bc <PortConfig+0x114>)
201004c8:	4a3c      	ldr	r2, [pc, #240]	; (201005bc <PortConfig+0x114>)
201004ca:	6892      	ldr	r2, [r2, #8]
201004cc:	493d      	ldr	r1, [pc, #244]	; (201005c4 <PortConfig+0x11c>)
201004ce:	430a      	orrs	r2, r1
201004d0:	609a      	str	r2, [r3, #8]
201004d2:	4b3a      	ldr	r3, [pc, #232]	; (201005bc <PortConfig+0x114>)
201004d4:	4a39      	ldr	r2, [pc, #228]	; (201005bc <PortConfig+0x114>)
201004d6:	6852      	ldr	r2, [r2, #4]
201004d8:	21fc      	movs	r1, #252	; 0xfc
201004da:	0109      	lsls	r1, r1, #4
201004dc:	430a      	orrs	r2, r1
201004de:	605a      	str	r2, [r3, #4]
201004e0:	4b36      	ldr	r3, [pc, #216]	; (201005bc <PortConfig+0x114>)
201004e2:	4a36      	ldr	r2, [pc, #216]	; (201005bc <PortConfig+0x114>)
201004e4:	68d2      	ldr	r2, [r2, #12]
201004e6:	21fc      	movs	r1, #252	; 0xfc
201004e8:	0109      	lsls	r1, r1, #4
201004ea:	430a      	orrs	r2, r1
201004ec:	60da      	str	r2, [r3, #12]
201004ee:	4b33      	ldr	r3, [pc, #204]	; (201005bc <PortConfig+0x114>)
201004f0:	4a32      	ldr	r2, [pc, #200]	; (201005bc <PortConfig+0x114>)
201004f2:	6992      	ldr	r2, [r2, #24]
201004f4:	4934      	ldr	r1, [pc, #208]	; (201005c8 <PortConfig+0x120>)
201004f6:	430a      	orrs	r2, r1
201004f8:	619a      	str	r2, [r3, #24]
201004fa:	4b2f      	ldr	r3, [pc, #188]	; (201005b8 <PortConfig+0x110>)
201004fc:	4a2e      	ldr	r2, [pc, #184]	; (201005b8 <PortConfig+0x110>)
201004fe:	69d2      	ldr	r2, [r2, #28]
20100500:	2180      	movs	r1, #128	; 0x80
20100502:	0489      	lsls	r1, r1, #18
20100504:	430a      	orrs	r2, r1
20100506:	61da      	str	r2, [r3, #28]
20100508:	4b30      	ldr	r3, [pc, #192]	; (201005cc <PortConfig+0x124>)
2010050a:	4a30      	ldr	r2, [pc, #192]	; (201005cc <PortConfig+0x124>)
2010050c:	68d2      	ldr	r2, [r2, #12]
2010050e:	2102      	movs	r1, #2
20100510:	438a      	bics	r2, r1
20100512:	60da      	str	r2, [r3, #12]
20100514:	4b28      	ldr	r3, [pc, #160]	; (201005b8 <PortConfig+0x110>)
20100516:	4a28      	ldr	r2, [pc, #160]	; (201005b8 <PortConfig+0x110>)
20100518:	69d2      	ldr	r2, [r2, #28]
2010051a:	2180      	movs	r1, #128	; 0x80
2010051c:	0449      	lsls	r1, r1, #17
2010051e:	430a      	orrs	r2, r1
20100520:	61da      	str	r2, [r3, #28]
20100522:	4b2b      	ldr	r3, [pc, #172]	; (201005d0 <PortConfig+0x128>)
20100524:	4a2a      	ldr	r2, [pc, #168]	; (201005d0 <PortConfig+0x128>)
20100526:	6892      	ldr	r2, [r2, #8]
20100528:	492a      	ldr	r1, [pc, #168]	; (201005d4 <PortConfig+0x12c>)
2010052a:	400a      	ands	r2, r1
2010052c:	609a      	str	r2, [r3, #8]
2010052e:	4b28      	ldr	r3, [pc, #160]	; (201005d0 <PortConfig+0x128>)
20100530:	4a27      	ldr	r2, [pc, #156]	; (201005d0 <PortConfig+0x128>)
20100532:	6892      	ldr	r2, [r2, #8]
20100534:	21a0      	movs	r1, #160	; 0xa0
20100536:	02c9      	lsls	r1, r1, #11
20100538:	430a      	orrs	r2, r1
2010053a:	609a      	str	r2, [r3, #8]
2010053c:	4b24      	ldr	r3, [pc, #144]	; (201005d0 <PortConfig+0x128>)
2010053e:	4a24      	ldr	r2, [pc, #144]	; (201005d0 <PortConfig+0x128>)
20100540:	68d2      	ldr	r2, [r2, #12]
20100542:	21c0      	movs	r1, #192	; 0xc0
20100544:	0089      	lsls	r1, r1, #2
20100546:	430a      	orrs	r2, r1
20100548:	60da      	str	r2, [r3, #12]
2010054a:	4b21      	ldr	r3, [pc, #132]	; (201005d0 <PortConfig+0x128>)
2010054c:	4a20      	ldr	r2, [pc, #128]	; (201005d0 <PortConfig+0x128>)
2010054e:	6992      	ldr	r2, [r2, #24]
20100550:	21c0      	movs	r1, #192	; 0xc0
20100552:	0309      	lsls	r1, r1, #12
20100554:	430a      	orrs	r2, r1
20100556:	619a      	str	r2, [r3, #24]
20100558:	4b1d      	ldr	r3, [pc, #116]	; (201005d0 <PortConfig+0x128>)
2010055a:	4a1d      	ldr	r2, [pc, #116]	; (201005d0 <PortConfig+0x128>)
2010055c:	6852      	ldr	r2, [r2, #4]
2010055e:	2180      	movs	r1, #128	; 0x80
20100560:	0089      	lsls	r1, r1, #2
20100562:	430a      	orrs	r2, r1
20100564:	605a      	str	r2, [r3, #4]
20100566:	4b1a      	ldr	r3, [pc, #104]	; (201005d0 <PortConfig+0x128>)
20100568:	4a19      	ldr	r2, [pc, #100]	; (201005d0 <PortConfig+0x128>)
2010056a:	6852      	ldr	r2, [r2, #4]
2010056c:	491a      	ldr	r1, [pc, #104]	; (201005d8 <PortConfig+0x130>)
2010056e:	400a      	ands	r2, r1
20100570:	605a      	str	r2, [r3, #4]
20100572:	4b11      	ldr	r3, [pc, #68]	; (201005b8 <PortConfig+0x110>)
20100574:	4a10      	ldr	r2, [pc, #64]	; (201005b8 <PortConfig+0x110>)
20100576:	69d2      	ldr	r2, [r2, #28]
20100578:	2180      	movs	r1, #128	; 0x80
2010057a:	0409      	lsls	r1, r1, #16
2010057c:	430a      	orrs	r2, r1
2010057e:	61da      	str	r2, [r3, #28]
20100580:	4b16      	ldr	r3, [pc, #88]	; (201005dc <PortConfig+0x134>)
20100582:	2200      	movs	r2, #0
20100584:	609a      	str	r2, [r3, #8]
20100586:	4b15      	ldr	r3, [pc, #84]	; (201005dc <PortConfig+0x134>)
20100588:	2200      	movs	r2, #0
2010058a:	601a      	str	r2, [r3, #0]
2010058c:	4b13      	ldr	r3, [pc, #76]	; (201005dc <PortConfig+0x134>)
2010058e:	4a13      	ldr	r2, [pc, #76]	; (201005dc <PortConfig+0x134>)
20100590:	6852      	ldr	r2, [r2, #4]
20100592:	2160      	movs	r1, #96	; 0x60
20100594:	430a      	orrs	r2, r1
20100596:	605a      	str	r2, [r3, #4]
20100598:	4b10      	ldr	r3, [pc, #64]	; (201005dc <PortConfig+0x134>)
2010059a:	4a10      	ldr	r2, [pc, #64]	; (201005dc <PortConfig+0x134>)
2010059c:	68d2      	ldr	r2, [r2, #12]
2010059e:	2160      	movs	r1, #96	; 0x60
201005a0:	430a      	orrs	r2, r1
201005a2:	60da      	str	r2, [r3, #12]
201005a4:	4b0d      	ldr	r3, [pc, #52]	; (201005dc <PortConfig+0x134>)
201005a6:	4a0d      	ldr	r2, [pc, #52]	; (201005dc <PortConfig+0x134>)
201005a8:	6992      	ldr	r2, [r2, #24]
201005aa:	21f0      	movs	r1, #240	; 0xf0
201005ac:	0189      	lsls	r1, r1, #6
201005ae:	430a      	orrs	r2, r1
201005b0:	619a      	str	r2, [r3, #24]
201005b2:	46c0      	nop			; (mov r8, r8)
201005b4:	46bd      	mov	sp, r7
201005b6:	bd80      	pop	{r7, pc}
201005b8:	40020000 	.word	0x40020000
201005bc:	400a8000 	.word	0x400a8000
201005c0:	ff000fff 	.word	0xff000fff
201005c4:	00aaa000 	.word	0x00aaa000
201005c8:	00fff000 	.word	0x00fff000
201005cc:	400c8000 	.word	0x400c8000
201005d0:	400c0000 	.word	0x400c0000
201005d4:	fff0ffff 	.word	0xfff0ffff
201005d8:	fffffeff 	.word	0xfffffeff
201005dc:	400b8000 	.word	0x400b8000

201005e0 <ClkConfig>:
201005e0:	b580      	push	{r7, lr}
201005e2:	af00      	add	r7, sp, #0
201005e4:	4b18      	ldr	r3, [pc, #96]	; (20100648 <ClkConfig+0x68>)
201005e6:	4a18      	ldr	r2, [pc, #96]	; (20100648 <ClkConfig+0x68>)
201005e8:	6892      	ldr	r2, [r2, #8]
201005ea:	2101      	movs	r1, #1
201005ec:	430a      	orrs	r2, r1
201005ee:	609a      	str	r2, [r3, #8]
201005f0:	46c0      	nop			; (mov r8, r8)
201005f2:	4b15      	ldr	r3, [pc, #84]	; (20100648 <ClkConfig+0x68>)
201005f4:	681b      	ldr	r3, [r3, #0]
201005f6:	2204      	movs	r2, #4
201005f8:	4013      	ands	r3, r2
201005fa:	d0fa      	beq.n	201005f2 <ClkConfig+0x12>
201005fc:	4b12      	ldr	r3, [pc, #72]	; (20100648 <ClkConfig+0x68>)
201005fe:	4a12      	ldr	r2, [pc, #72]	; (20100648 <ClkConfig+0x68>)
20100600:	68d2      	ldr	r2, [r2, #12]
20100602:	2102      	movs	r1, #2
20100604:	430a      	orrs	r2, r1
20100606:	60da      	str	r2, [r3, #12]
20100608:	4b0f      	ldr	r3, [pc, #60]	; (20100648 <ClkConfig+0x68>)
2010060a:	4a10      	ldr	r2, [pc, #64]	; (2010064c <ClkConfig+0x6c>)
2010060c:	605a      	str	r2, [r3, #4]
2010060e:	46c0      	nop			; (mov r8, r8)
20100610:	4b0d      	ldr	r3, [pc, #52]	; (20100648 <ClkConfig+0x68>)
20100612:	681b      	ldr	r3, [r3, #0]
20100614:	2202      	movs	r2, #2
20100616:	4013      	ands	r3, r2
20100618:	d0fa      	beq.n	20100610 <ClkConfig+0x30>
2010061a:	4b0d      	ldr	r3, [pc, #52]	; (20100650 <ClkConfig+0x70>)
2010061c:	4a0c      	ldr	r2, [pc, #48]	; (20100650 <ClkConfig+0x70>)
2010061e:	6812      	ldr	r2, [r2, #0]
20100620:	2120      	movs	r1, #32
20100622:	430a      	orrs	r2, r1
20100624:	601a      	str	r2, [r3, #0]
20100626:	4b08      	ldr	r3, [pc, #32]	; (20100648 <ClkConfig+0x68>)
20100628:	4a07      	ldr	r2, [pc, #28]	; (20100648 <ClkConfig+0x68>)
2010062a:	68d2      	ldr	r2, [r2, #12]
2010062c:	2180      	movs	r1, #128	; 0x80
2010062e:	0049      	lsls	r1, r1, #1
20100630:	430a      	orrs	r2, r1
20100632:	60da      	str	r2, [r3, #12]
20100634:	4b04      	ldr	r3, [pc, #16]	; (20100648 <ClkConfig+0x68>)
20100636:	4a04      	ldr	r2, [pc, #16]	; (20100648 <ClkConfig+0x68>)
20100638:	68d2      	ldr	r2, [r2, #12]
2010063a:	2104      	movs	r1, #4
2010063c:	430a      	orrs	r2, r1
2010063e:	60da      	str	r2, [r3, #12]
20100640:	46c0      	nop			; (mov r8, r8)
20100642:	46bd      	mov	sp, r7
20100644:	bd80      	pop	{r7, pc}
20100646:	46c0      	nop			; (mov r8, r8)
20100648:	40020000 	.word	0x40020000
2010064c:	00000e04 	.word	0x00000e04
20100650:	40018000 	.word	0x40018000

20100654 <TimerConfig>:
20100654:	b580      	push	{r7, lr}
20100656:	af00      	add	r7, sp, #0
20100658:	4b71      	ldr	r3, [pc, #452]	; (20100820 <TimerConfig+0x1cc>)
2010065a:	4a71      	ldr	r2, [pc, #452]	; (20100820 <TimerConfig+0x1cc>)
2010065c:	69d2      	ldr	r2, [r2, #28]
2010065e:	2180      	movs	r1, #128	; 0x80
20100660:	0309      	lsls	r1, r1, #12
20100662:	430a      	orrs	r2, r1
20100664:	61da      	str	r2, [r3, #28]
20100666:	4b6e      	ldr	r3, [pc, #440]	; (20100820 <TimerConfig+0x1cc>)
20100668:	4a6d      	ldr	r2, [pc, #436]	; (20100820 <TimerConfig+0x1cc>)
2010066a:	6a92      	ldr	r2, [r2, #40]	; 0x28
2010066c:	2180      	movs	r1, #128	; 0x80
2010066e:	04c9      	lsls	r1, r1, #19
20100670:	430a      	orrs	r2, r1
20100672:	629a      	str	r2, [r3, #40]	; 0x28
20100674:	4b6a      	ldr	r3, [pc, #424]	; (20100820 <TimerConfig+0x1cc>)
20100676:	4a6a      	ldr	r2, [pc, #424]	; (20100820 <TimerConfig+0x1cc>)
20100678:	6a92      	ldr	r2, [r2, #40]	; 0x28
2010067a:	496a      	ldr	r1, [pc, #424]	; (20100824 <TimerConfig+0x1d0>)
2010067c:	400a      	ands	r2, r1
2010067e:	629a      	str	r2, [r3, #40]	; 0x28
20100680:	4b69      	ldr	r3, [pc, #420]	; (20100828 <TimerConfig+0x1d4>)
20100682:	2200      	movs	r2, #0
20100684:	601a      	str	r2, [r3, #0]
20100686:	4b68      	ldr	r3, [pc, #416]	; (20100828 <TimerConfig+0x1d4>)
20100688:	2204      	movs	r2, #4
2010068a:	605a      	str	r2, [r3, #4]
2010068c:	4b66      	ldr	r3, [pc, #408]	; (20100828 <TimerConfig+0x1d4>)
2010068e:	4a67      	ldr	r2, [pc, #412]	; (2010082c <TimerConfig+0x1d8>)
20100690:	609a      	str	r2, [r3, #8]
20100692:	4b65      	ldr	r3, [pc, #404]	; (20100828 <TimerConfig+0x1d4>)
20100694:	2280      	movs	r2, #128	; 0x80
20100696:	0092      	lsls	r2, r2, #2
20100698:	611a      	str	r2, [r3, #16]
2010069a:	4b63      	ldr	r3, [pc, #396]	; (20100828 <TimerConfig+0x1d4>)
2010069c:	2280      	movs	r2, #128	; 0x80
2010069e:	0092      	lsls	r2, r2, #2
201006a0:	615a      	str	r2, [r3, #20]
201006a2:	4b61      	ldr	r3, [pc, #388]	; (20100828 <TimerConfig+0x1d4>)
201006a4:	2280      	movs	r2, #128	; 0x80
201006a6:	0092      	lsls	r2, r2, #2
201006a8:	619a      	str	r2, [r3, #24]
201006aa:	4b5f      	ldr	r3, [pc, #380]	; (20100828 <TimerConfig+0x1d4>)
201006ac:	4a5e      	ldr	r2, [pc, #376]	; (20100828 <TimerConfig+0x1d4>)
201006ae:	6a12      	ldr	r2, [r2, #32]
201006b0:	495f      	ldr	r1, [pc, #380]	; (20100830 <TimerConfig+0x1dc>)
201006b2:	400a      	ands	r2, r1
201006b4:	621a      	str	r2, [r3, #32]
201006b6:	4b5c      	ldr	r3, [pc, #368]	; (20100828 <TimerConfig+0x1d4>)
201006b8:	4a5b      	ldr	r2, [pc, #364]	; (20100828 <TimerConfig+0x1d4>)
201006ba:	6a12      	ldr	r2, [r2, #32]
201006bc:	21e0      	movs	r1, #224	; 0xe0
201006be:	0109      	lsls	r1, r1, #4
201006c0:	430a      	orrs	r2, r1
201006c2:	621a      	str	r2, [r3, #32]
201006c4:	4b58      	ldr	r3, [pc, #352]	; (20100828 <TimerConfig+0x1d4>)
201006c6:	4a58      	ldr	r2, [pc, #352]	; (20100828 <TimerConfig+0x1d4>)
201006c8:	6b12      	ldr	r2, [r2, #48]	; 0x30
201006ca:	210f      	movs	r1, #15
201006cc:	438a      	bics	r2, r1
201006ce:	631a      	str	r2, [r3, #48]	; 0x30
201006d0:	4b55      	ldr	r3, [pc, #340]	; (20100828 <TimerConfig+0x1d4>)
201006d2:	4a55      	ldr	r2, [pc, #340]	; (20100828 <TimerConfig+0x1d4>)
201006d4:	6b12      	ldr	r2, [r2, #48]	; 0x30
201006d6:	210c      	movs	r1, #12
201006d8:	430a      	orrs	r2, r1
201006da:	631a      	str	r2, [r3, #48]	; 0x30
201006dc:	4b52      	ldr	r3, [pc, #328]	; (20100828 <TimerConfig+0x1d4>)
201006de:	4a52      	ldr	r2, [pc, #328]	; (20100828 <TimerConfig+0x1d4>)
201006e0:	6b12      	ldr	r2, [r2, #48]	; 0x30
201006e2:	2101      	movs	r1, #1
201006e4:	430a      	orrs	r2, r1
201006e6:	631a      	str	r2, [r3, #48]	; 0x30
201006e8:	4b4f      	ldr	r3, [pc, #316]	; (20100828 <TimerConfig+0x1d4>)
201006ea:	4a4f      	ldr	r2, [pc, #316]	; (20100828 <TimerConfig+0x1d4>)
201006ec:	6b12      	ldr	r2, [r2, #48]	; 0x30
201006ee:	4951      	ldr	r1, [pc, #324]	; (20100834 <TimerConfig+0x1e0>)
201006f0:	400a      	ands	r2, r1
201006f2:	631a      	str	r2, [r3, #48]	; 0x30
201006f4:	4b4c      	ldr	r3, [pc, #304]	; (20100828 <TimerConfig+0x1d4>)
201006f6:	4a4c      	ldr	r2, [pc, #304]	; (20100828 <TimerConfig+0x1d4>)
201006f8:	6b12      	ldr	r2, [r2, #48]	; 0x30
201006fa:	21c0      	movs	r1, #192	; 0xc0
201006fc:	0109      	lsls	r1, r1, #4
201006fe:	430a      	orrs	r2, r1
20100700:	631a      	str	r2, [r3, #48]	; 0x30
20100702:	4b49      	ldr	r3, [pc, #292]	; (20100828 <TimerConfig+0x1d4>)
20100704:	4a48      	ldr	r2, [pc, #288]	; (20100828 <TimerConfig+0x1d4>)
20100706:	6b12      	ldr	r2, [r2, #48]	; 0x30
20100708:	2180      	movs	r1, #128	; 0x80
2010070a:	0049      	lsls	r1, r1, #1
2010070c:	430a      	orrs	r2, r1
2010070e:	631a      	str	r2, [r3, #48]	; 0x30
20100710:	4b45      	ldr	r3, [pc, #276]	; (20100828 <TimerConfig+0x1d4>)
20100712:	4a45      	ldr	r2, [pc, #276]	; (20100828 <TimerConfig+0x1d4>)
20100714:	6a52      	ldr	r2, [r2, #36]	; 0x24
20100716:	4946      	ldr	r1, [pc, #280]	; (20100830 <TimerConfig+0x1dc>)
20100718:	400a      	ands	r2, r1
2010071a:	625a      	str	r2, [r3, #36]	; 0x24
2010071c:	4b42      	ldr	r3, [pc, #264]	; (20100828 <TimerConfig+0x1d4>)
2010071e:	4a42      	ldr	r2, [pc, #264]	; (20100828 <TimerConfig+0x1d4>)
20100720:	6a52      	ldr	r2, [r2, #36]	; 0x24
20100722:	21e0      	movs	r1, #224	; 0xe0
20100724:	0109      	lsls	r1, r1, #4
20100726:	430a      	orrs	r2, r1
20100728:	625a      	str	r2, [r3, #36]	; 0x24
2010072a:	4b3f      	ldr	r3, [pc, #252]	; (20100828 <TimerConfig+0x1d4>)
2010072c:	4a3e      	ldr	r2, [pc, #248]	; (20100828 <TimerConfig+0x1d4>)
2010072e:	6b52      	ldr	r2, [r2, #52]	; 0x34
20100730:	210f      	movs	r1, #15
20100732:	438a      	bics	r2, r1
20100734:	635a      	str	r2, [r3, #52]	; 0x34
20100736:	4b3c      	ldr	r3, [pc, #240]	; (20100828 <TimerConfig+0x1d4>)
20100738:	4a3b      	ldr	r2, [pc, #236]	; (20100828 <TimerConfig+0x1d4>)
2010073a:	6b52      	ldr	r2, [r2, #52]	; 0x34
2010073c:	210c      	movs	r1, #12
2010073e:	430a      	orrs	r2, r1
20100740:	635a      	str	r2, [r3, #52]	; 0x34
20100742:	4b39      	ldr	r3, [pc, #228]	; (20100828 <TimerConfig+0x1d4>)
20100744:	4a38      	ldr	r2, [pc, #224]	; (20100828 <TimerConfig+0x1d4>)
20100746:	6b52      	ldr	r2, [r2, #52]	; 0x34
20100748:	2101      	movs	r1, #1
2010074a:	430a      	orrs	r2, r1
2010074c:	635a      	str	r2, [r3, #52]	; 0x34
2010074e:	4b36      	ldr	r3, [pc, #216]	; (20100828 <TimerConfig+0x1d4>)
20100750:	4a35      	ldr	r2, [pc, #212]	; (20100828 <TimerConfig+0x1d4>)
20100752:	6b52      	ldr	r2, [r2, #52]	; 0x34
20100754:	4937      	ldr	r1, [pc, #220]	; (20100834 <TimerConfig+0x1e0>)
20100756:	400a      	ands	r2, r1
20100758:	635a      	str	r2, [r3, #52]	; 0x34
2010075a:	4b33      	ldr	r3, [pc, #204]	; (20100828 <TimerConfig+0x1d4>)
2010075c:	4a32      	ldr	r2, [pc, #200]	; (20100828 <TimerConfig+0x1d4>)
2010075e:	6b52      	ldr	r2, [r2, #52]	; 0x34
20100760:	21c0      	movs	r1, #192	; 0xc0
20100762:	0109      	lsls	r1, r1, #4
20100764:	430a      	orrs	r2, r1
20100766:	635a      	str	r2, [r3, #52]	; 0x34
20100768:	4b2f      	ldr	r3, [pc, #188]	; (20100828 <TimerConfig+0x1d4>)
2010076a:	4a2f      	ldr	r2, [pc, #188]	; (20100828 <TimerConfig+0x1d4>)
2010076c:	6b52      	ldr	r2, [r2, #52]	; 0x34
2010076e:	2180      	movs	r1, #128	; 0x80
20100770:	0049      	lsls	r1, r1, #1
20100772:	430a      	orrs	r2, r1
20100774:	635a      	str	r2, [r3, #52]	; 0x34
20100776:	4b2c      	ldr	r3, [pc, #176]	; (20100828 <TimerConfig+0x1d4>)
20100778:	4a2b      	ldr	r2, [pc, #172]	; (20100828 <TimerConfig+0x1d4>)
2010077a:	6a92      	ldr	r2, [r2, #40]	; 0x28
2010077c:	492c      	ldr	r1, [pc, #176]	; (20100830 <TimerConfig+0x1dc>)
2010077e:	400a      	ands	r2, r1
20100780:	629a      	str	r2, [r3, #40]	; 0x28
20100782:	4b29      	ldr	r3, [pc, #164]	; (20100828 <TimerConfig+0x1d4>)
20100784:	4a28      	ldr	r2, [pc, #160]	; (20100828 <TimerConfig+0x1d4>)
20100786:	6a92      	ldr	r2, [r2, #40]	; 0x28
20100788:	21e0      	movs	r1, #224	; 0xe0
2010078a:	0109      	lsls	r1, r1, #4
2010078c:	430a      	orrs	r2, r1
2010078e:	629a      	str	r2, [r3, #40]	; 0x28
20100790:	4b25      	ldr	r3, [pc, #148]	; (20100828 <TimerConfig+0x1d4>)
20100792:	4a25      	ldr	r2, [pc, #148]	; (20100828 <TimerConfig+0x1d4>)
20100794:	6b92      	ldr	r2, [r2, #56]	; 0x38
20100796:	210f      	movs	r1, #15
20100798:	438a      	bics	r2, r1
2010079a:	639a      	str	r2, [r3, #56]	; 0x38
2010079c:	4b22      	ldr	r3, [pc, #136]	; (20100828 <TimerConfig+0x1d4>)
2010079e:	4a22      	ldr	r2, [pc, #136]	; (20100828 <TimerConfig+0x1d4>)
201007a0:	6b92      	ldr	r2, [r2, #56]	; 0x38
201007a2:	210c      	movs	r1, #12
201007a4:	430a      	orrs	r2, r1
201007a6:	639a      	str	r2, [r3, #56]	; 0x38
201007a8:	4b1f      	ldr	r3, [pc, #124]	; (20100828 <TimerConfig+0x1d4>)
201007aa:	4a1f      	ldr	r2, [pc, #124]	; (20100828 <TimerConfig+0x1d4>)
201007ac:	6b92      	ldr	r2, [r2, #56]	; 0x38
201007ae:	2101      	movs	r1, #1
201007b0:	430a      	orrs	r2, r1
201007b2:	639a      	str	r2, [r3, #56]	; 0x38
201007b4:	4b1c      	ldr	r3, [pc, #112]	; (20100828 <TimerConfig+0x1d4>)
201007b6:	4a1c      	ldr	r2, [pc, #112]	; (20100828 <TimerConfig+0x1d4>)
201007b8:	6b92      	ldr	r2, [r2, #56]	; 0x38
201007ba:	491e      	ldr	r1, [pc, #120]	; (20100834 <TimerConfig+0x1e0>)
201007bc:	400a      	ands	r2, r1
201007be:	639a      	str	r2, [r3, #56]	; 0x38
201007c0:	4b19      	ldr	r3, [pc, #100]	; (20100828 <TimerConfig+0x1d4>)
201007c2:	4a19      	ldr	r2, [pc, #100]	; (20100828 <TimerConfig+0x1d4>)
201007c4:	6b92      	ldr	r2, [r2, #56]	; 0x38
201007c6:	21c0      	movs	r1, #192	; 0xc0
201007c8:	0109      	lsls	r1, r1, #4
201007ca:	430a      	orrs	r2, r1
201007cc:	639a      	str	r2, [r3, #56]	; 0x38
201007ce:	4b16      	ldr	r3, [pc, #88]	; (20100828 <TimerConfig+0x1d4>)
201007d0:	4a15      	ldr	r2, [pc, #84]	; (20100828 <TimerConfig+0x1d4>)
201007d2:	6b92      	ldr	r2, [r2, #56]	; 0x38
201007d4:	2180      	movs	r1, #128	; 0x80
201007d6:	0049      	lsls	r1, r1, #1
201007d8:	430a      	orrs	r2, r1
201007da:	639a      	str	r2, [r3, #56]	; 0x38
201007dc:	4b12      	ldr	r3, [pc, #72]	; (20100828 <TimerConfig+0x1d4>)
201007de:	4a12      	ldr	r2, [pc, #72]	; (20100828 <TimerConfig+0x1d4>)
201007e0:	6c12      	ldr	r2, [r2, #64]	; 0x40
201007e2:	21c8      	movs	r1, #200	; 0xc8
201007e4:	01c9      	lsls	r1, r1, #7
201007e6:	430a      	orrs	r2, r1
201007e8:	641a      	str	r2, [r3, #64]	; 0x40
201007ea:	4b0f      	ldr	r3, [pc, #60]	; (20100828 <TimerConfig+0x1d4>)
201007ec:	4a0e      	ldr	r2, [pc, #56]	; (20100828 <TimerConfig+0x1d4>)
201007ee:	6c52      	ldr	r2, [r2, #68]	; 0x44
201007f0:	21c8      	movs	r1, #200	; 0xc8
201007f2:	01c9      	lsls	r1, r1, #7
201007f4:	430a      	orrs	r2, r1
201007f6:	645a      	str	r2, [r3, #68]	; 0x44
201007f8:	4b0b      	ldr	r3, [pc, #44]	; (20100828 <TimerConfig+0x1d4>)
201007fa:	4a0b      	ldr	r2, [pc, #44]	; (20100828 <TimerConfig+0x1d4>)
201007fc:	6c92      	ldr	r2, [r2, #72]	; 0x48
201007fe:	21c8      	movs	r1, #200	; 0xc8
20100800:	01c9      	lsls	r1, r1, #7
20100802:	430a      	orrs	r2, r1
20100804:	649a      	str	r2, [r3, #72]	; 0x48
20100806:	4b08      	ldr	r3, [pc, #32]	; (20100828 <TimerConfig+0x1d4>)
20100808:	4a07      	ldr	r2, [pc, #28]	; (20100828 <TimerConfig+0x1d4>)
2010080a:	6d92      	ldr	r2, [r2, #88]	; 0x58
2010080c:	21f0      	movs	r1, #240	; 0xf0
2010080e:	0149      	lsls	r1, r1, #5
20100810:	430a      	orrs	r2, r1
20100812:	659a      	str	r2, [r3, #88]	; 0x58
20100814:	4b04      	ldr	r3, [pc, #16]	; (20100828 <TimerConfig+0x1d4>)
20100816:	2201      	movs	r2, #1
20100818:	60da      	str	r2, [r3, #12]
2010081a:	46c0      	nop			; (mov r8, r8)
2010081c:	46bd      	mov	sp, r7
2010081e:	bd80      	pop	{r7, pc}
20100820:	40020000 	.word	0x40020000
20100824:	ff00ffff 	.word	0xff00ffff
20100828:	40098000 	.word	0x40098000
2010082c:	000003ff 	.word	0x000003ff
20100830:	fffff1ff 	.word	0xfffff1ff
20100834:	fffff0ff 	.word	0xfffff0ff

20100838 <adc_init>:
20100838:	b580      	push	{r7, lr}
2010083a:	af00      	add	r7, sp, #0
2010083c:	4b0f      	ldr	r3, [pc, #60]	; (2010087c <adc_init+0x44>)
2010083e:	4a0f      	ldr	r2, [pc, #60]	; (2010087c <adc_init+0x44>)
20100840:	69d2      	ldr	r2, [r2, #28]
20100842:	2180      	movs	r1, #128	; 0x80
20100844:	0289      	lsls	r1, r1, #10
20100846:	430a      	orrs	r2, r1
20100848:	61da      	str	r2, [r3, #28]
2010084a:	4b0c      	ldr	r3, [pc, #48]	; (2010087c <adc_init+0x44>)
2010084c:	4a0c      	ldr	r2, [pc, #48]	; (20100880 <adc_init+0x48>)
2010084e:	615a      	str	r2, [r3, #20]
20100850:	4b0c      	ldr	r3, [pc, #48]	; (20100884 <adc_init+0x4c>)
20100852:	2200      	movs	r2, #0
20100854:	601a      	str	r2, [r3, #0]
20100856:	4b0b      	ldr	r3, [pc, #44]	; (20100884 <adc_init+0x4c>)
20100858:	4a0a      	ldr	r2, [pc, #40]	; (20100884 <adc_init+0x4c>)
2010085a:	6812      	ldr	r2, [r2, #0]
2010085c:	490a      	ldr	r1, [pc, #40]	; (20100888 <adc_init+0x50>)
2010085e:	430a      	orrs	r2, r1
20100860:	601a      	str	r2, [r3, #0]
20100862:	4b08      	ldr	r3, [pc, #32]	; (20100884 <adc_init+0x4c>)
20100864:	4a07      	ldr	r2, [pc, #28]	; (20100884 <adc_init+0x4c>)
20100866:	6a92      	ldr	r2, [r2, #40]	; 0x28
20100868:	2139      	movs	r1, #57	; 0x39
2010086a:	430a      	orrs	r2, r1
2010086c:	629a      	str	r2, [r3, #40]	; 0x28
2010086e:	4b05      	ldr	r3, [pc, #20]	; (20100884 <adc_init+0x4c>)
20100870:	2210      	movs	r2, #16
20100872:	621a      	str	r2, [r3, #32]
20100874:	46c0      	nop			; (mov r8, r8)
20100876:	46bd      	mov	sp, r7
20100878:	bd80      	pop	{r7, pc}
2010087a:	46c0      	nop			; (mov r8, r8)
2010087c:	40020000 	.word	0x40020000
20100880:	00002020 	.word	0x00002020
20100884:	40088000 	.word	0x40088000
20100888:	00000205 	.word	0x00000205

2010088c <dac_init>:
2010088c:	b580      	push	{r7, lr}
2010088e:	af00      	add	r7, sp, #0
20100890:	4b07      	ldr	r3, [pc, #28]	; (201008b0 <dac_init+0x24>)
20100892:	4a07      	ldr	r2, [pc, #28]	; (201008b0 <dac_init+0x24>)
20100894:	69d2      	ldr	r2, [r2, #28]
20100896:	2180      	movs	r1, #128	; 0x80
20100898:	02c9      	lsls	r1, r1, #11
2010089a:	430a      	orrs	r2, r1
2010089c:	61da      	str	r2, [r3, #28]
2010089e:	4b05      	ldr	r3, [pc, #20]	; (201008b4 <dac_init+0x28>)
201008a0:	4a04      	ldr	r2, [pc, #16]	; (201008b4 <dac_init+0x28>)
201008a2:	6812      	ldr	r2, [r2, #0]
201008a4:	2104      	movs	r1, #4
201008a6:	430a      	orrs	r2, r1
201008a8:	601a      	str	r2, [r3, #0]
201008aa:	46c0      	nop			; (mov r8, r8)
201008ac:	46bd      	mov	sp, r7
201008ae:	bd80      	pop	{r7, pc}
201008b0:	40020000 	.word	0x40020000
201008b4:	40090000 	.word	0x40090000

201008b8 <ssi_init>:
201008b8:	b580      	push	{r7, lr}
201008ba:	af00      	add	r7, sp, #0
201008bc:	4b0c      	ldr	r3, [pc, #48]	; (201008f0 <ssi_init+0x38>)
201008be:	4a0c      	ldr	r2, [pc, #48]	; (201008f0 <ssi_init+0x38>)
201008c0:	69d2      	ldr	r2, [r2, #28]
201008c2:	2180      	movs	r1, #128	; 0x80
201008c4:	0349      	lsls	r1, r1, #13
201008c6:	430a      	orrs	r2, r1
201008c8:	61da      	str	r2, [r3, #28]
201008ca:	4b09      	ldr	r3, [pc, #36]	; (201008f0 <ssi_init+0x38>)
201008cc:	4a09      	ldr	r2, [pc, #36]	; (201008f4 <ssi_init+0x3c>)
201008ce:	62da      	str	r2, [r3, #44]	; 0x2c
201008d0:	4b09      	ldr	r3, [pc, #36]	; (201008f8 <ssi_init+0x40>)
201008d2:	2200      	movs	r2, #0
201008d4:	605a      	str	r2, [r3, #4]
201008d6:	4b08      	ldr	r3, [pc, #32]	; (201008f8 <ssi_init+0x40>)
201008d8:	220a      	movs	r2, #10
201008da:	611a      	str	r2, [r3, #16]
201008dc:	4b06      	ldr	r3, [pc, #24]	; (201008f8 <ssi_init+0x40>)
201008de:	4a07      	ldr	r2, [pc, #28]	; (201008fc <ssi_init+0x44>)
201008e0:	601a      	str	r2, [r3, #0]
201008e2:	4b05      	ldr	r3, [pc, #20]	; (201008f8 <ssi_init+0x40>)
201008e4:	2202      	movs	r2, #2
201008e6:	605a      	str	r2, [r3, #4]
201008e8:	46c0      	nop			; (mov r8, r8)
201008ea:	46bd      	mov	sp, r7
201008ec:	bd80      	pop	{r7, pc}
201008ee:	46c0      	nop			; (mov r8, r8)
201008f0:	40020000 	.word	0x40020000
201008f4:	02000200 	.word	0x02000200
201008f8:	400a0000 	.word	0x400a0000
201008fc:	0000021b 	.word	0x0000021b

20100900 <b2g>:
20100900:	b580      	push	{r7, lr}
20100902:	b082      	sub	sp, #8
20100904:	af00      	add	r7, sp, #0
20100906:	6078      	str	r0, [r7, #4]
20100908:	687b      	ldr	r3, [r7, #4]
2010090a:	085a      	lsrs	r2, r3, #1
2010090c:	687b      	ldr	r3, [r7, #4]
2010090e:	4053      	eors	r3, r2
20100910:	0018      	movs	r0, r3
20100912:	46bd      	mov	sp, r7
20100914:	b002      	add	sp, #8
20100916:	bd80      	pop	{r7, pc}

20100918 <g2b>:
20100918:	b580      	push	{r7, lr}
2010091a:	b084      	sub	sp, #16
2010091c:	af00      	add	r7, sp, #0
2010091e:	6078      	str	r0, [r7, #4]
20100920:	2300      	movs	r3, #0
20100922:	60fb      	str	r3, [r7, #12]
20100924:	2300      	movs	r3, #0
20100926:	60fb      	str	r3, [r7, #12]
20100928:	e006      	b.n	20100938 <g2b+0x20>
2010092a:	68fa      	ldr	r2, [r7, #12]
2010092c:	687b      	ldr	r3, [r7, #4]
2010092e:	4053      	eors	r3, r2
20100930:	60fb      	str	r3, [r7, #12]
20100932:	687b      	ldr	r3, [r7, #4]
20100934:	085b      	lsrs	r3, r3, #1
20100936:	607b      	str	r3, [r7, #4]
20100938:	687b      	ldr	r3, [r7, #4]
2010093a:	2b00      	cmp	r3, #0
2010093c:	d1f5      	bne.n	2010092a <g2b+0x12>
2010093e:	68fb      	ldr	r3, [r7, #12]
20100940:	0018      	movs	r0, r3
20100942:	46bd      	mov	sp, r7
20100944:	b004      	add	sp, #16
20100946:	bd80      	pop	{r7, pc}

20100948 <SystemInit>:
20100948:	b580      	push	{r7, lr}
2010094a:	af00      	add	r7, sp, #0
2010094c:	f7ff fe48 	bl	201005e0 <ClkConfig>
20100950:	f7ff fdaa 	bl	201004a8 <PortConfig>
20100954:	f7ff fe7e 	bl	20100654 <TimerConfig>
20100958:	f7ff ff6e 	bl	20100838 <adc_init>
2010095c:	f7ff ff96 	bl	2010088c <dac_init>
20100960:	f7ff ffaa 	bl	201008b8 <ssi_init>
20100964:	f000 fc0c 	bl	20101180 <adc_dma_init>
20100968:	46c0      	nop			; (mov r8, r8)
2010096a:	46bd      	mov	sp, r7
2010096c:	bd80      	pop	{r7, pc}
2010096e:	46c0      	nop			; (mov r8, r8)

20100970 <timer_wait>:
20100970:	b580      	push	{r7, lr}
20100972:	af00      	add	r7, sp, #0
20100974:	46c0      	nop			; (mov r8, r8)
20100976:	4b05      	ldr	r3, [pc, #20]	; (2010098c <timer_wait+0x1c>)
20100978:	6d5b      	ldr	r3, [r3, #84]	; 0x54
2010097a:	2202      	movs	r2, #2
2010097c:	4013      	ands	r3, r2
2010097e:	d0fa      	beq.n	20100976 <timer_wait+0x6>
20100980:	4b02      	ldr	r3, [pc, #8]	; (2010098c <timer_wait+0x1c>)
20100982:	2200      	movs	r2, #0
20100984:	655a      	str	r2, [r3, #84]	; 0x54
20100986:	46c0      	nop			; (mov r8, r8)
20100988:	46bd      	mov	sp, r7
2010098a:	bd80      	pop	{r7, pc}
2010098c:	40098000 	.word	0x40098000

20100990 <mycos>:
20100990:	b580      	push	{r7, lr}
20100992:	b082      	sub	sp, #8
20100994:	af00      	add	r7, sp, #0
20100996:	6078      	str	r0, [r7, #4]
20100998:	4906      	ldr	r1, [pc, #24]	; (201009b4 <mycos+0x24>)
2010099a:	4479      	add	r1, pc
2010099c:	687b      	ldr	r3, [r7, #4]
2010099e:	059b      	lsls	r3, r3, #22
201009a0:	0d9a      	lsrs	r2, r3, #22
201009a2:	4b05      	ldr	r3, [pc, #20]	; (201009b8 <mycos+0x28>)
201009a4:	58cb      	ldr	r3, [r1, r3]
201009a6:	0092      	lsls	r2, r2, #2
201009a8:	58d3      	ldr	r3, [r2, r3]
201009aa:	0018      	movs	r0, r3
201009ac:	46bd      	mov	sp, r7
201009ae:	b002      	add	sp, #8
201009b0:	bd80      	pop	{r7, pc}
201009b2:	46c0      	nop			; (mov r8, r8)
201009b4:	ffeff6ee 	.word	0xffeff6ee
201009b8:	00000000 	.word	0x00000000

201009bc <mysin>:
201009bc:	b580      	push	{r7, lr}
201009be:	b082      	sub	sp, #8
201009c0:	af00      	add	r7, sp, #0
201009c2:	6078      	str	r0, [r7, #4]
201009c4:	4908      	ldr	r1, [pc, #32]	; (201009e8 <mysin+0x2c>)
201009c6:	4479      	add	r1, pc
201009c8:	687b      	ldr	r3, [r7, #4]
201009ca:	22c0      	movs	r2, #192	; 0xc0
201009cc:	0092      	lsls	r2, r2, #2
201009ce:	4694      	mov	ip, r2
201009d0:	4463      	add	r3, ip
201009d2:	059b      	lsls	r3, r3, #22
201009d4:	0d9a      	lsrs	r2, r3, #22
201009d6:	4b05      	ldr	r3, [pc, #20]	; (201009ec <mysin+0x30>)
201009d8:	58cb      	ldr	r3, [r1, r3]
201009da:	0092      	lsls	r2, r2, #2
201009dc:	58d3      	ldr	r3, [r2, r3]
201009de:	0018      	movs	r0, r3
201009e0:	46bd      	mov	sp, r7
201009e2:	b002      	add	sp, #8
201009e4:	bd80      	pop	{r7, pc}
201009e6:	46c0      	nop			; (mov r8, r8)
201009e8:	ffeff6c2 	.word	0xffeff6c2
201009ec:	00000000 	.word	0x00000000

201009f0 <reg_init>:
201009f0:	b580      	push	{r7, lr}
201009f2:	b084      	sub	sp, #16
201009f4:	af00      	add	r7, sp, #0
201009f6:	60f8      	str	r0, [r7, #12]
201009f8:	60b9      	str	r1, [r7, #8]
201009fa:	607a      	str	r2, [r7, #4]
201009fc:	68ba      	ldr	r2, [r7, #8]
201009fe:	68fb      	ldr	r3, [r7, #12]
20100a00:	601a      	str	r2, [r3, #0]
20100a02:	687a      	ldr	r2, [r7, #4]
20100a04:	68fb      	ldr	r3, [r7, #12]
20100a06:	605a      	str	r2, [r3, #4]
20100a08:	68fb      	ldr	r3, [r7, #12]
20100a0a:	2200      	movs	r2, #0
20100a0c:	609a      	str	r2, [r3, #8]
20100a0e:	68fb      	ldr	r3, [r7, #12]
20100a10:	2200      	movs	r2, #0
20100a12:	60da      	str	r2, [r3, #12]
20100a14:	46c0      	nop			; (mov r8, r8)
20100a16:	46bd      	mov	sp, r7
20100a18:	b004      	add	sp, #16
20100a1a:	bd80      	pop	{r7, pc}

20100a1c <reg_update>:
20100a1c:	b580      	push	{r7, lr}
20100a1e:	b086      	sub	sp, #24
20100a20:	af00      	add	r7, sp, #0
20100a22:	60f8      	str	r0, [r7, #12]
20100a24:	60b9      	str	r1, [r7, #8]
20100a26:	607a      	str	r2, [r7, #4]
20100a28:	68fb      	ldr	r3, [r7, #12]
20100a2a:	689b      	ldr	r3, [r3, #8]
20100a2c:	613b      	str	r3, [r7, #16]
20100a2e:	68fb      	ldr	r3, [r7, #12]
20100a30:	681b      	ldr	r3, [r3, #0]
20100a32:	68ba      	ldr	r2, [r7, #8]
20100a34:	4353      	muls	r3, r2
20100a36:	617b      	str	r3, [r7, #20]
20100a38:	687b      	ldr	r3, [r7, #4]
20100a3a:	2b00      	cmp	r3, #0
20100a3c:	d00d      	beq.n	20100a5a <reg_update+0x3e>
20100a3e:	693b      	ldr	r3, [r7, #16]
20100a40:	2b00      	cmp	r3, #0
20100a42:	dd02      	ble.n	20100a4a <reg_update+0x2e>
20100a44:	697b      	ldr	r3, [r7, #20]
20100a46:	2b00      	cmp	r3, #0
20100a48:	dc05      	bgt.n	20100a56 <reg_update+0x3a>
20100a4a:	693b      	ldr	r3, [r7, #16]
20100a4c:	2b00      	cmp	r3, #0
20100a4e:	da04      	bge.n	20100a5a <reg_update+0x3e>
20100a50:	697b      	ldr	r3, [r7, #20]
20100a52:	2b00      	cmp	r3, #0
20100a54:	da01      	bge.n	20100a5a <reg_update+0x3e>
20100a56:	2300      	movs	r3, #0
20100a58:	617b      	str	r3, [r7, #20]
20100a5a:	693a      	ldr	r2, [r7, #16]
20100a5c:	697b      	ldr	r3, [r7, #20]
20100a5e:	18d3      	adds	r3, r2, r3
20100a60:	613b      	str	r3, [r7, #16]
20100a62:	68fb      	ldr	r3, [r7, #12]
20100a64:	685b      	ldr	r3, [r3, #4]
20100a66:	68ba      	ldr	r2, [r7, #8]
20100a68:	435a      	muls	r2, r3
20100a6a:	693b      	ldr	r3, [r7, #16]
20100a6c:	18d2      	adds	r2, r2, r3
20100a6e:	68fb      	ldr	r3, [r7, #12]
20100a70:	60da      	str	r2, [r3, #12]
20100a72:	68fb      	ldr	r3, [r7, #12]
20100a74:	693a      	ldr	r2, [r7, #16]
20100a76:	609a      	str	r2, [r3, #8]
20100a78:	46c0      	nop			; (mov r8, r8)
20100a7a:	46bd      	mov	sp, r7
20100a7c:	b006      	add	sp, #24
20100a7e:	bd80      	pop	{r7, pc}

20100a80 <abc_to_dq>:
20100a80:	b590      	push	{r4, r7, lr}
20100a82:	b08b      	sub	sp, #44	; 0x2c
20100a84:	af00      	add	r7, sp, #0
20100a86:	60f8      	str	r0, [r7, #12]
20100a88:	60b9      	str	r1, [r7, #8]
20100a8a:	607a      	str	r2, [r7, #4]
20100a8c:	4b33      	ldr	r3, [pc, #204]	; (20100b5c <abc_to_dq+0xdc>)
20100a8e:	447b      	add	r3, pc
20100a90:	4a33      	ldr	r2, [pc, #204]	; (20100b60 <abc_to_dq+0xe0>)
20100a92:	589a      	ldr	r2, [r3, r2]
20100a94:	6879      	ldr	r1, [r7, #4]
20100a96:	0089      	lsls	r1, r1, #2
20100a98:	5889      	ldr	r1, [r1, r2]
20100a9a:	221c      	movs	r2, #28
20100a9c:	18ba      	adds	r2, r7, r2
20100a9e:	6011      	str	r1, [r2, #0]
20100aa0:	687a      	ldr	r2, [r7, #4]
20100aa2:	4930      	ldr	r1, [pc, #192]	; (20100b64 <abc_to_dq+0xe4>)
20100aa4:	468c      	mov	ip, r1
20100aa6:	4462      	add	r2, ip
20100aa8:	0592      	lsls	r2, r2, #22
20100aaa:	0d91      	lsrs	r1, r2, #22
20100aac:	4a2c      	ldr	r2, [pc, #176]	; (20100b60 <abc_to_dq+0xe0>)
20100aae:	589a      	ldr	r2, [r3, r2]
20100ab0:	0089      	lsls	r1, r1, #2
20100ab2:	5889      	ldr	r1, [r1, r2]
20100ab4:	221c      	movs	r2, #28
20100ab6:	18ba      	adds	r2, r7, r2
20100ab8:	6051      	str	r1, [r2, #4]
20100aba:	687a      	ldr	r2, [r7, #4]
20100abc:	3256      	adds	r2, #86	; 0x56
20100abe:	32ff      	adds	r2, #255	; 0xff
20100ac0:	0592      	lsls	r2, r2, #22
20100ac2:	0d91      	lsrs	r1, r2, #22
20100ac4:	4a26      	ldr	r2, [pc, #152]	; (20100b60 <abc_to_dq+0xe0>)
20100ac6:	589a      	ldr	r2, [r3, r2]
20100ac8:	0089      	lsls	r1, r1, #2
20100aca:	5889      	ldr	r1, [r1, r2]
20100acc:	221c      	movs	r2, #28
20100ace:	18ba      	adds	r2, r7, r2
20100ad0:	6091      	str	r1, [r2, #8]
20100ad2:	687a      	ldr	r2, [r7, #4]
20100ad4:	21c0      	movs	r1, #192	; 0xc0
20100ad6:	0089      	lsls	r1, r1, #2
20100ad8:	468c      	mov	ip, r1
20100ada:	4462      	add	r2, ip
20100adc:	0592      	lsls	r2, r2, #22
20100ade:	0d91      	lsrs	r1, r2, #22
20100ae0:	4a1f      	ldr	r2, [pc, #124]	; (20100b60 <abc_to_dq+0xe0>)
20100ae2:	589a      	ldr	r2, [r3, r2]
20100ae4:	0089      	lsls	r1, r1, #2
20100ae6:	5889      	ldr	r1, [r1, r2]
20100ae8:	2210      	movs	r2, #16
20100aea:	18ba      	adds	r2, r7, r2
20100aec:	6011      	str	r1, [r2, #0]
20100aee:	687a      	ldr	r2, [r7, #4]
20100af0:	491d      	ldr	r1, [pc, #116]	; (20100b68 <abc_to_dq+0xe8>)
20100af2:	468c      	mov	ip, r1
20100af4:	4462      	add	r2, ip
20100af6:	0592      	lsls	r2, r2, #22
20100af8:	0d91      	lsrs	r1, r2, #22
20100afa:	4a19      	ldr	r2, [pc, #100]	; (20100b60 <abc_to_dq+0xe0>)
20100afc:	589a      	ldr	r2, [r3, r2]
20100afe:	0089      	lsls	r1, r1, #2
20100b00:	5889      	ldr	r1, [r1, r2]
20100b02:	2210      	movs	r2, #16
20100b04:	18ba      	adds	r2, r7, r2
20100b06:	6051      	str	r1, [r2, #4]
20100b08:	687a      	ldr	r2, [r7, #4]
20100b0a:	4918      	ldr	r1, [pc, #96]	; (20100b6c <abc_to_dq+0xec>)
20100b0c:	468c      	mov	ip, r1
20100b0e:	4462      	add	r2, ip
20100b10:	0592      	lsls	r2, r2, #22
20100b12:	0d92      	lsrs	r2, r2, #22
20100b14:	4912      	ldr	r1, [pc, #72]	; (20100b60 <abc_to_dq+0xe0>)
20100b16:	585b      	ldr	r3, [r3, r1]
20100b18:	0092      	lsls	r2, r2, #2
20100b1a:	58d2      	ldr	r2, [r2, r3]
20100b1c:	2310      	movs	r3, #16
20100b1e:	18fb      	adds	r3, r7, r3
20100b20:	609a      	str	r2, [r3, #8]
20100b22:	231c      	movs	r3, #28
20100b24:	18fa      	adds	r2, r7, r3
20100b26:	68fb      	ldr	r3, [r7, #12]
20100b28:	0011      	movs	r1, r2
20100b2a:	0018      	movs	r0, r3
20100b2c:	f000 fc36 	bl	2010139c <dot3>
20100b30:	0003      	movs	r3, r0
20100b32:	129a      	asrs	r2, r3, #10
20100b34:	68bb      	ldr	r3, [r7, #8]
20100b36:	601a      	str	r2, [r3, #0]
20100b38:	68bb      	ldr	r3, [r7, #8]
20100b3a:	1d1c      	adds	r4, r3, #4
20100b3c:	2310      	movs	r3, #16
20100b3e:	18fa      	adds	r2, r7, r3
20100b40:	68fb      	ldr	r3, [r7, #12]
20100b42:	0011      	movs	r1, r2
20100b44:	0018      	movs	r0, r3
20100b46:	f000 fc29 	bl	2010139c <dot3>
20100b4a:	0003      	movs	r3, r0
20100b4c:	425b      	negs	r3, r3
20100b4e:	129b      	asrs	r3, r3, #10
20100b50:	6023      	str	r3, [r4, #0]
20100b52:	46c0      	nop			; (mov r8, r8)
20100b54:	46bd      	mov	sp, r7
20100b56:	b00b      	add	sp, #44	; 0x2c
20100b58:	bd90      	pop	{r4, r7, pc}
20100b5a:	46c0      	nop			; (mov r8, r8)
20100b5c:	ffeff5fa 	.word	0xffeff5fa
20100b60:	00000000 	.word	0x00000000
20100b64:	000002aa 	.word	0x000002aa
20100b68:	000005aa 	.word	0x000005aa
20100b6c:	00000455 	.word	0x00000455

20100b70 <dq_to_abc>:
20100b70:	b5b0      	push	{r4, r5, r7, lr}
20100b72:	b084      	sub	sp, #16
20100b74:	af00      	add	r7, sp, #0
20100b76:	60f8      	str	r0, [r7, #12]
20100b78:	60b9      	str	r1, [r7, #8]
20100b7a:	607a      	str	r2, [r7, #4]
20100b7c:	4b2f      	ldr	r3, [pc, #188]	; (20100c3c <dq_to_abc+0xcc>)
20100b7e:	447b      	add	r3, pc
20100b80:	68ba      	ldr	r2, [r7, #8]
20100b82:	6812      	ldr	r2, [r2, #0]
20100b84:	492e      	ldr	r1, [pc, #184]	; (20100c40 <dq_to_abc+0xd0>)
20100b86:	5859      	ldr	r1, [r3, r1]
20100b88:	6878      	ldr	r0, [r7, #4]
20100b8a:	0080      	lsls	r0, r0, #2
20100b8c:	5841      	ldr	r1, [r0, r1]
20100b8e:	4351      	muls	r1, r2
20100b90:	68ba      	ldr	r2, [r7, #8]
20100b92:	3204      	adds	r2, #4
20100b94:	6812      	ldr	r2, [r2, #0]
20100b96:	6878      	ldr	r0, [r7, #4]
20100b98:	24c0      	movs	r4, #192	; 0xc0
20100b9a:	00a4      	lsls	r4, r4, #2
20100b9c:	46a4      	mov	ip, r4
20100b9e:	4460      	add	r0, ip
20100ba0:	0580      	lsls	r0, r0, #22
20100ba2:	0d84      	lsrs	r4, r0, #22
20100ba4:	4826      	ldr	r0, [pc, #152]	; (20100c40 <dq_to_abc+0xd0>)
20100ba6:	5818      	ldr	r0, [r3, r0]
20100ba8:	00a4      	lsls	r4, r4, #2
20100baa:	5820      	ldr	r0, [r4, r0]
20100bac:	4342      	muls	r2, r0
20100bae:	1a8a      	subs	r2, r1, r2
20100bb0:	1511      	asrs	r1, r2, #20
20100bb2:	68fa      	ldr	r2, [r7, #12]
20100bb4:	6011      	str	r1, [r2, #0]
20100bb6:	68fa      	ldr	r2, [r7, #12]
20100bb8:	3204      	adds	r2, #4
20100bba:	68b9      	ldr	r1, [r7, #8]
20100bbc:	6809      	ldr	r1, [r1, #0]
20100bbe:	6878      	ldr	r0, [r7, #4]
20100bc0:	4c20      	ldr	r4, [pc, #128]	; (20100c44 <dq_to_abc+0xd4>)
20100bc2:	46a4      	mov	ip, r4
20100bc4:	4460      	add	r0, ip
20100bc6:	0580      	lsls	r0, r0, #22
20100bc8:	0d84      	lsrs	r4, r0, #22
20100bca:	481d      	ldr	r0, [pc, #116]	; (20100c40 <dq_to_abc+0xd0>)
20100bcc:	5818      	ldr	r0, [r3, r0]
20100bce:	00a4      	lsls	r4, r4, #2
20100bd0:	5820      	ldr	r0, [r4, r0]
20100bd2:	4348      	muls	r0, r1
20100bd4:	68b9      	ldr	r1, [r7, #8]
20100bd6:	3104      	adds	r1, #4
20100bd8:	6809      	ldr	r1, [r1, #0]
20100bda:	687c      	ldr	r4, [r7, #4]
20100bdc:	4d1a      	ldr	r5, [pc, #104]	; (20100c48 <dq_to_abc+0xd8>)
20100bde:	46ac      	mov	ip, r5
20100be0:	4464      	add	r4, ip
20100be2:	05a4      	lsls	r4, r4, #22
20100be4:	0da5      	lsrs	r5, r4, #22
20100be6:	4c16      	ldr	r4, [pc, #88]	; (20100c40 <dq_to_abc+0xd0>)
20100be8:	591c      	ldr	r4, [r3, r4]
20100bea:	00ad      	lsls	r5, r5, #2
20100bec:	592c      	ldr	r4, [r5, r4]
20100bee:	4361      	muls	r1, r4
20100bf0:	1a41      	subs	r1, r0, r1
20100bf2:	1509      	asrs	r1, r1, #20
20100bf4:	6011      	str	r1, [r2, #0]
20100bf6:	68fa      	ldr	r2, [r7, #12]
20100bf8:	3208      	adds	r2, #8
20100bfa:	68b9      	ldr	r1, [r7, #8]
20100bfc:	6809      	ldr	r1, [r1, #0]
20100bfe:	6878      	ldr	r0, [r7, #4]
20100c00:	3056      	adds	r0, #86	; 0x56
20100c02:	30ff      	adds	r0, #255	; 0xff
20100c04:	0580      	lsls	r0, r0, #22
20100c06:	0d84      	lsrs	r4, r0, #22
20100c08:	480d      	ldr	r0, [pc, #52]	; (20100c40 <dq_to_abc+0xd0>)
20100c0a:	5818      	ldr	r0, [r3, r0]
20100c0c:	00a4      	lsls	r4, r4, #2
20100c0e:	5820      	ldr	r0, [r4, r0]
20100c10:	4348      	muls	r0, r1
20100c12:	68b9      	ldr	r1, [r7, #8]
20100c14:	3104      	adds	r1, #4
20100c16:	6809      	ldr	r1, [r1, #0]
20100c18:	687c      	ldr	r4, [r7, #4]
20100c1a:	4d0c      	ldr	r5, [pc, #48]	; (20100c4c <dq_to_abc+0xdc>)
20100c1c:	46ac      	mov	ip, r5
20100c1e:	4464      	add	r4, ip
20100c20:	05a4      	lsls	r4, r4, #22
20100c22:	0da4      	lsrs	r4, r4, #22
20100c24:	4d06      	ldr	r5, [pc, #24]	; (20100c40 <dq_to_abc+0xd0>)
20100c26:	595b      	ldr	r3, [r3, r5]
20100c28:	00a4      	lsls	r4, r4, #2
20100c2a:	58e3      	ldr	r3, [r4, r3]
20100c2c:	434b      	muls	r3, r1
20100c2e:	1ac3      	subs	r3, r0, r3
20100c30:	151b      	asrs	r3, r3, #20
20100c32:	6013      	str	r3, [r2, #0]
20100c34:	46c0      	nop			; (mov r8, r8)
20100c36:	46bd      	mov	sp, r7
20100c38:	b004      	add	sp, #16
20100c3a:	bdb0      	pop	{r4, r5, r7, pc}
20100c3c:	ffeff50a 	.word	0xffeff50a
20100c40:	00000000 	.word	0x00000000
20100c44:	000002aa 	.word	0x000002aa
20100c48:	000005aa 	.word	0x000005aa
20100c4c:	00000455 	.word	0x00000455

20100c50 <cord_atan>:
20100c50:	b590      	push	{r4, r7, lr}
20100c52:	b09d      	sub	sp, #116	; 0x74
20100c54:	af00      	add	r7, sp, #0
20100c56:	60f8      	str	r0, [r7, #12]
20100c58:	60b9      	str	r1, [r7, #8]
20100c5a:	607a      	str	r2, [r7, #4]
20100c5c:	2334      	movs	r3, #52	; 0x34
20100c5e:	18fb      	adds	r3, r7, r3
20100c60:	4a43      	ldr	r2, [pc, #268]	; (20100d70 <cord_atan+0x120>)
20100c62:	447a      	add	r2, pc
20100c64:	ca13      	ldmia	r2!, {r0, r1, r4}
20100c66:	c313      	stmia	r3!, {r0, r1, r4}
20100c68:	ca13      	ldmia	r2!, {r0, r1, r4}
20100c6a:	c313      	stmia	r3!, {r0, r1, r4}
20100c6c:	ca03      	ldmia	r2!, {r0, r1}
20100c6e:	c303      	stmia	r3!, {r0, r1}
20100c70:	2314      	movs	r3, #20
20100c72:	18fb      	adds	r3, r7, r3
20100c74:	4a3f      	ldr	r2, [pc, #252]	; (20100d74 <cord_atan+0x124>)
20100c76:	447a      	add	r2, pc
20100c78:	ca13      	ldmia	r2!, {r0, r1, r4}
20100c7a:	c313      	stmia	r3!, {r0, r1, r4}
20100c7c:	ca13      	ldmia	r2!, {r0, r1, r4}
20100c7e:	c313      	stmia	r3!, {r0, r1, r4}
20100c80:	ca03      	ldmia	r2!, {r0, r1}
20100c82:	c303      	stmia	r3!, {r0, r1}
20100c84:	2300      	movs	r3, #0
20100c86:	66fb      	str	r3, [r7, #108]	; 0x6c
20100c88:	2300      	movs	r3, #0
20100c8a:	66bb      	str	r3, [r7, #104]	; 0x68
20100c8c:	2300      	movs	r3, #0
20100c8e:	65fb      	str	r3, [r7, #92]	; 0x5c
20100c90:	68fb      	ldr	r3, [r7, #12]
20100c92:	681b      	ldr	r3, [r3, #0]
20100c94:	17da      	asrs	r2, r3, #31
20100c96:	189b      	adds	r3, r3, r2
20100c98:	4053      	eors	r3, r2
20100c9a:	667b      	str	r3, [r7, #100]	; 0x64
20100c9c:	68fb      	ldr	r3, [r7, #12]
20100c9e:	685b      	ldr	r3, [r3, #4]
20100ca0:	663b      	str	r3, [r7, #96]	; 0x60
20100ca2:	2300      	movs	r3, #0
20100ca4:	66bb      	str	r3, [r7, #104]	; 0x68
20100ca6:	e03a      	b.n	20100d1e <cord_atan+0xce>
20100ca8:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
20100caa:	3301      	adds	r3, #1
20100cac:	65fb      	str	r3, [r7, #92]	; 0x5c
20100cae:	6e7b      	ldr	r3, [r7, #100]	; 0x64
20100cb0:	65bb      	str	r3, [r7, #88]	; 0x58
20100cb2:	6e3b      	ldr	r3, [r7, #96]	; 0x60
20100cb4:	657b      	str	r3, [r7, #84]	; 0x54
20100cb6:	6e3b      	ldr	r3, [r7, #96]	; 0x60
20100cb8:	2b00      	cmp	r3, #0
20100cba:	dd15      	ble.n	20100ce8 <cord_atan+0x98>
20100cbc:	6d7a      	ldr	r2, [r7, #84]	; 0x54
20100cbe:	6ebb      	ldr	r3, [r7, #104]	; 0x68
20100cc0:	411a      	asrs	r2, r3
20100cc2:	6dbb      	ldr	r3, [r7, #88]	; 0x58
20100cc4:	18d3      	adds	r3, r2, r3
20100cc6:	667b      	str	r3, [r7, #100]	; 0x64
20100cc8:	6dba      	ldr	r2, [r7, #88]	; 0x58
20100cca:	6ebb      	ldr	r3, [r7, #104]	; 0x68
20100ccc:	411a      	asrs	r2, r3
20100cce:	0013      	movs	r3, r2
20100cd0:	6d7a      	ldr	r2, [r7, #84]	; 0x54
20100cd2:	1ad3      	subs	r3, r2, r3
20100cd4:	663b      	str	r3, [r7, #96]	; 0x60
20100cd6:	2334      	movs	r3, #52	; 0x34
20100cd8:	18fb      	adds	r3, r7, r3
20100cda:	6eba      	ldr	r2, [r7, #104]	; 0x68
20100cdc:	0092      	lsls	r2, r2, #2
20100cde:	58d3      	ldr	r3, [r2, r3]
20100ce0:	6efa      	ldr	r2, [r7, #108]	; 0x6c
20100ce2:	18d3      	adds	r3, r2, r3
20100ce4:	66fb      	str	r3, [r7, #108]	; 0x6c
20100ce6:	e014      	b.n	20100d12 <cord_atan+0xc2>
20100ce8:	6d7a      	ldr	r2, [r7, #84]	; 0x54
20100cea:	6ebb      	ldr	r3, [r7, #104]	; 0x68
20100cec:	411a      	asrs	r2, r3
20100cee:	0013      	movs	r3, r2
20100cf0:	6dba      	ldr	r2, [r7, #88]	; 0x58
20100cf2:	1ad3      	subs	r3, r2, r3
20100cf4:	667b      	str	r3, [r7, #100]	; 0x64
20100cf6:	6dba      	ldr	r2, [r7, #88]	; 0x58
20100cf8:	6ebb      	ldr	r3, [r7, #104]	; 0x68
20100cfa:	411a      	asrs	r2, r3
20100cfc:	6d7b      	ldr	r3, [r7, #84]	; 0x54
20100cfe:	18d3      	adds	r3, r2, r3
20100d00:	663b      	str	r3, [r7, #96]	; 0x60
20100d02:	2334      	movs	r3, #52	; 0x34
20100d04:	18fb      	adds	r3, r7, r3
20100d06:	6eba      	ldr	r2, [r7, #104]	; 0x68
20100d08:	0092      	lsls	r2, r2, #2
20100d0a:	58d3      	ldr	r3, [r2, r3]
20100d0c:	6efa      	ldr	r2, [r7, #108]	; 0x6c
20100d0e:	1ad3      	subs	r3, r2, r3
20100d10:	66fb      	str	r3, [r7, #108]	; 0x6c
20100d12:	6e3b      	ldr	r3, [r7, #96]	; 0x60
20100d14:	2b00      	cmp	r3, #0
20100d16:	d006      	beq.n	20100d26 <cord_atan+0xd6>
20100d18:	6ebb      	ldr	r3, [r7, #104]	; 0x68
20100d1a:	3301      	adds	r3, #1
20100d1c:	66bb      	str	r3, [r7, #104]	; 0x68
20100d1e:	6ebb      	ldr	r3, [r7, #104]	; 0x68
20100d20:	2b07      	cmp	r3, #7
20100d22:	ddc1      	ble.n	20100ca8 <cord_atan+0x58>
20100d24:	e000      	b.n	20100d28 <cord_atan+0xd8>
20100d26:	46c0      	nop			; (mov r8, r8)
20100d28:	68fb      	ldr	r3, [r7, #12]
20100d2a:	681b      	ldr	r3, [r3, #0]
20100d2c:	2b00      	cmp	r3, #0
20100d2e:	da04      	bge.n	20100d3a <cord_atan+0xea>
20100d30:	6efb      	ldr	r3, [r7, #108]	; 0x6c
20100d32:	2280      	movs	r2, #128	; 0x80
20100d34:	0092      	lsls	r2, r2, #2
20100d36:	1ad3      	subs	r3, r2, r3
20100d38:	66fb      	str	r3, [r7, #108]	; 0x6c
20100d3a:	6efb      	ldr	r3, [r7, #108]	; 0x6c
20100d3c:	2b00      	cmp	r3, #0
20100d3e:	da05      	bge.n	20100d4c <cord_atan+0xfc>
20100d40:	6efb      	ldr	r3, [r7, #108]	; 0x6c
20100d42:	2280      	movs	r2, #128	; 0x80
20100d44:	00d2      	lsls	r2, r2, #3
20100d46:	4694      	mov	ip, r2
20100d48:	4463      	add	r3, ip
20100d4a:	66fb      	str	r3, [r7, #108]	; 0x6c
20100d4c:	68bb      	ldr	r3, [r7, #8]
20100d4e:	6efa      	ldr	r2, [r7, #108]	; 0x6c
20100d50:	601a      	str	r2, [r3, #0]
20100d52:	6dfb      	ldr	r3, [r7, #92]	; 0x5c
20100d54:	1e5a      	subs	r2, r3, #1
20100d56:	2314      	movs	r3, #20
20100d58:	18fb      	adds	r3, r7, r3
20100d5a:	0092      	lsls	r2, r2, #2
20100d5c:	58d3      	ldr	r3, [r2, r3]
20100d5e:	6e7a      	ldr	r2, [r7, #100]	; 0x64
20100d60:	4353      	muls	r3, r2
20100d62:	129a      	asrs	r2, r3, #10
20100d64:	687b      	ldr	r3, [r7, #4]
20100d66:	601a      	str	r2, [r3, #0]
20100d68:	46c0      	nop			; (mov r8, r8)
20100d6a:	46bd      	mov	sp, r7
20100d6c:	b01d      	add	sp, #116	; 0x74
20100d6e:	bd90      	pop	{r4, r7, pc}
20100d70:	000019ba 	.word	0x000019ba
20100d74:	000019c6 	.word	0x000019c6

20100d78 <sinpwm>:
20100d78:	b580      	push	{r7, lr}
20100d7a:	b088      	sub	sp, #32
20100d7c:	af00      	add	r7, sp, #0
20100d7e:	60f8      	str	r0, [r7, #12]
20100d80:	60b9      	str	r1, [r7, #8]
20100d82:	607a      	str	r2, [r7, #4]
20100d84:	2300      	movs	r3, #0
20100d86:	61fb      	str	r3, [r7, #28]
20100d88:	2318      	movs	r3, #24
20100d8a:	18fa      	adds	r2, r7, r3
20100d8c:	2314      	movs	r3, #20
20100d8e:	18f9      	adds	r1, r7, r3
20100d90:	68bb      	ldr	r3, [r7, #8]
20100d92:	0018      	movs	r0, r3
20100d94:	f7ff ff5c 	bl	20100c50 <cord_atan>
20100d98:	69bb      	ldr	r3, [r7, #24]
20100d9a:	129b      	asrs	r3, r3, #10
20100d9c:	61bb      	str	r3, [r7, #24]
20100d9e:	69ba      	ldr	r2, [r7, #24]
20100da0:	23fa      	movs	r3, #250	; 0xfa
20100da2:	005b      	lsls	r3, r3, #1
20100da4:	429a      	cmp	r2, r3
20100da6:	dd05      	ble.n	20100db4 <sinpwm+0x3c>
20100da8:	23fa      	movs	r3, #250	; 0xfa
20100daa:	005b      	lsls	r3, r3, #1
20100dac:	61bb      	str	r3, [r7, #24]
20100dae:	2301      	movs	r3, #1
20100db0:	61fb      	str	r3, [r7, #28]
20100db2:	e001      	b.n	20100db8 <sinpwm+0x40>
20100db4:	2300      	movs	r3, #0
20100db6:	61fb      	str	r3, [r7, #28]
20100db8:	687a      	ldr	r2, [r7, #4]
20100dba:	68b9      	ldr	r1, [r7, #8]
20100dbc:	68fb      	ldr	r3, [r7, #12]
20100dbe:	0018      	movs	r0, r3
20100dc0:	f7ff fed6 	bl	20100b70 <dq_to_abc>
20100dc4:	69fb      	ldr	r3, [r7, #28]
20100dc6:	0018      	movs	r0, r3
20100dc8:	46bd      	mov	sp, r7
20100dca:	b008      	add	sp, #32
20100dcc:	bd80      	pop	{r7, pc}
20100dce:	46c0      	nop			; (mov r8, r8)

20100dd0 <svpwm>:
20100dd0:	b580      	push	{r7, lr}
20100dd2:	b08c      	sub	sp, #48	; 0x30
20100dd4:	af00      	add	r7, sp, #0
20100dd6:	60f8      	str	r0, [r7, #12]
20100dd8:	60b9      	str	r1, [r7, #8]
20100dda:	607a      	str	r2, [r7, #4]
20100ddc:	2300      	movs	r3, #0
20100dde:	62fb      	str	r3, [r7, #44]	; 0x2c
20100de0:	2318      	movs	r3, #24
20100de2:	18fa      	adds	r2, r7, r3
20100de4:	2314      	movs	r3, #20
20100de6:	18f9      	adds	r1, r7, r3
20100de8:	68bb      	ldr	r3, [r7, #8]
20100dea:	0018      	movs	r0, r3
20100dec:	f7ff ff30 	bl	20100c50 <cord_atan>
20100df0:	69bb      	ldr	r3, [r7, #24]
20100df2:	129b      	asrs	r3, r3, #10
20100df4:	61bb      	str	r3, [r7, #24]
20100df6:	697a      	ldr	r2, [r7, #20]
20100df8:	687b      	ldr	r3, [r7, #4]
20100dfa:	18d3      	adds	r3, r2, r3
20100dfc:	059b      	lsls	r3, r3, #22
20100dfe:	0d9b      	lsrs	r3, r3, #22
20100e00:	62bb      	str	r3, [r7, #40]	; 0x28
20100e02:	69ba      	ldr	r2, [r7, #24]
20100e04:	23fa      	movs	r3, #250	; 0xfa
20100e06:	005b      	lsls	r3, r3, #1
20100e08:	429a      	cmp	r2, r3
20100e0a:	dd05      	ble.n	20100e18 <svpwm+0x48>
20100e0c:	23fa      	movs	r3, #250	; 0xfa
20100e0e:	005b      	lsls	r3, r3, #1
20100e10:	61bb      	str	r3, [r7, #24]
20100e12:	2301      	movs	r3, #1
20100e14:	62fb      	str	r3, [r7, #44]	; 0x2c
20100e16:	e001      	b.n	20100e1c <svpwm+0x4c>
20100e18:	2300      	movs	r3, #0
20100e1a:	62fb      	str	r3, [r7, #44]	; 0x2c
20100e1c:	6aba      	ldr	r2, [r7, #40]	; 0x28
20100e1e:	0013      	movs	r3, r2
20100e20:	005b      	lsls	r3, r3, #1
20100e22:	189b      	adds	r3, r3, r2
20100e24:	005b      	lsls	r3, r3, #1
20100e26:	129b      	asrs	r3, r3, #10
20100e28:	627b      	str	r3, [r7, #36]	; 0x24
20100e2a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
20100e2c:	2b05      	cmp	r3, #5
20100e2e:	d900      	bls.n	20100e32 <svpwm+0x62>
20100e30:	e10e      	b.n	20101050 <svpwm+0x280>
20100e32:	0018      	movs	r0, r3
20100e34:	f000 fac8 	bl	201013c8 <__gnu_thumb1_case_si>
20100e38:	00000018 	.word	0x00000018
20100e3c:	00000066 	.word	0x00000066
20100e40:	000000ba 	.word	0x000000ba
20100e44:	00000110 	.word	0x00000110
20100e48:	00000168 	.word	0x00000168
20100e4c:	000001c0 	.word	0x000001c0
20100e50:	6abb      	ldr	r3, [r7, #40]	; 0x28
20100e52:	4a82      	ldr	r2, [pc, #520]	; (2010105c <svpwm+0x28c>)
20100e54:	1ad3      	subs	r3, r2, r3
20100e56:	0018      	movs	r0, r3
20100e58:	f7ff fdb0 	bl	201009bc <mysin>
20100e5c:	0002      	movs	r2, r0
20100e5e:	69bb      	ldr	r3, [r7, #24]
20100e60:	4353      	muls	r3, r2
20100e62:	129b      	asrs	r3, r3, #10
20100e64:	623b      	str	r3, [r7, #32]
20100e66:	6abb      	ldr	r3, [r7, #40]	; 0x28
20100e68:	0018      	movs	r0, r3
20100e6a:	f7ff fda7 	bl	201009bc <mysin>
20100e6e:	0002      	movs	r2, r0
20100e70:	69bb      	ldr	r3, [r7, #24]
20100e72:	4353      	muls	r3, r2
20100e74:	129b      	asrs	r3, r3, #10
20100e76:	61fb      	str	r3, [r7, #28]
20100e78:	6a3a      	ldr	r2, [r7, #32]
20100e7a:	69fb      	ldr	r3, [r7, #28]
20100e7c:	18d2      	adds	r2, r2, r3
20100e7e:	68fb      	ldr	r3, [r7, #12]
20100e80:	601a      	str	r2, [r3, #0]
20100e82:	68fb      	ldr	r3, [r7, #12]
20100e84:	3304      	adds	r3, #4
20100e86:	69f9      	ldr	r1, [r7, #28]
20100e88:	6a3a      	ldr	r2, [r7, #32]
20100e8a:	1a8a      	subs	r2, r1, r2
20100e8c:	601a      	str	r2, [r3, #0]
20100e8e:	68fb      	ldr	r3, [r7, #12]
20100e90:	3308      	adds	r3, #8
20100e92:	6a3a      	ldr	r2, [r7, #32]
20100e94:	4251      	negs	r1, r2
20100e96:	69fa      	ldr	r2, [r7, #28]
20100e98:	1a8a      	subs	r2, r1, r2
20100e9a:	601a      	str	r2, [r3, #0]
20100e9c:	e0d8      	b.n	20101050 <svpwm+0x280>
20100e9e:	6abb      	ldr	r3, [r7, #40]	; 0x28
20100ea0:	3baa      	subs	r3, #170	; 0xaa
20100ea2:	62bb      	str	r3, [r7, #40]	; 0x28
20100ea4:	6abb      	ldr	r3, [r7, #40]	; 0x28
20100ea6:	4a6d      	ldr	r2, [pc, #436]	; (2010105c <svpwm+0x28c>)
20100ea8:	1ad3      	subs	r3, r2, r3
20100eaa:	0018      	movs	r0, r3
20100eac:	f7ff fd86 	bl	201009bc <mysin>
20100eb0:	0002      	movs	r2, r0
20100eb2:	69bb      	ldr	r3, [r7, #24]
20100eb4:	4353      	muls	r3, r2
20100eb6:	129b      	asrs	r3, r3, #10
20100eb8:	623b      	str	r3, [r7, #32]
20100eba:	6abb      	ldr	r3, [r7, #40]	; 0x28
20100ebc:	0018      	movs	r0, r3
20100ebe:	f7ff fd7d 	bl	201009bc <mysin>
20100ec2:	0002      	movs	r2, r0
20100ec4:	69bb      	ldr	r3, [r7, #24]
20100ec6:	4353      	muls	r3, r2
20100ec8:	129b      	asrs	r3, r3, #10
20100eca:	61fb      	str	r3, [r7, #28]
20100ecc:	6a3a      	ldr	r2, [r7, #32]
20100ece:	69fb      	ldr	r3, [r7, #28]
20100ed0:	1ad2      	subs	r2, r2, r3
20100ed2:	68fb      	ldr	r3, [r7, #12]
20100ed4:	601a      	str	r2, [r3, #0]
20100ed6:	68fb      	ldr	r3, [r7, #12]
20100ed8:	3304      	adds	r3, #4
20100eda:	6a39      	ldr	r1, [r7, #32]
20100edc:	69fa      	ldr	r2, [r7, #28]
20100ede:	188a      	adds	r2, r1, r2
20100ee0:	601a      	str	r2, [r3, #0]
20100ee2:	68fb      	ldr	r3, [r7, #12]
20100ee4:	3308      	adds	r3, #8
20100ee6:	6a3a      	ldr	r2, [r7, #32]
20100ee8:	4251      	negs	r1, r2
20100eea:	69fa      	ldr	r2, [r7, #28]
20100eec:	1a8a      	subs	r2, r1, r2
20100eee:	601a      	str	r2, [r3, #0]
20100ef0:	e0ae      	b.n	20101050 <svpwm+0x280>
20100ef2:	6abb      	ldr	r3, [r7, #40]	; 0x28
20100ef4:	3b56      	subs	r3, #86	; 0x56
20100ef6:	3bff      	subs	r3, #255	; 0xff
20100ef8:	62bb      	str	r3, [r7, #40]	; 0x28
20100efa:	6abb      	ldr	r3, [r7, #40]	; 0x28
20100efc:	4a57      	ldr	r2, [pc, #348]	; (2010105c <svpwm+0x28c>)
20100efe:	1ad3      	subs	r3, r2, r3
20100f00:	0018      	movs	r0, r3
20100f02:	f7ff fd5b 	bl	201009bc <mysin>
20100f06:	0002      	movs	r2, r0
20100f08:	69bb      	ldr	r3, [r7, #24]
20100f0a:	4353      	muls	r3, r2
20100f0c:	129b      	asrs	r3, r3, #10
20100f0e:	623b      	str	r3, [r7, #32]
20100f10:	6abb      	ldr	r3, [r7, #40]	; 0x28
20100f12:	0018      	movs	r0, r3
20100f14:	f7ff fd52 	bl	201009bc <mysin>
20100f18:	0002      	movs	r2, r0
20100f1a:	69bb      	ldr	r3, [r7, #24]
20100f1c:	4353      	muls	r3, r2
20100f1e:	129b      	asrs	r3, r3, #10
20100f20:	61fb      	str	r3, [r7, #28]
20100f22:	6a3b      	ldr	r3, [r7, #32]
20100f24:	425a      	negs	r2, r3
20100f26:	69fb      	ldr	r3, [r7, #28]
20100f28:	1ad2      	subs	r2, r2, r3
20100f2a:	68fb      	ldr	r3, [r7, #12]
20100f2c:	601a      	str	r2, [r3, #0]
20100f2e:	68fb      	ldr	r3, [r7, #12]
20100f30:	3304      	adds	r3, #4
20100f32:	6a39      	ldr	r1, [r7, #32]
20100f34:	69fa      	ldr	r2, [r7, #28]
20100f36:	188a      	adds	r2, r1, r2
20100f38:	601a      	str	r2, [r3, #0]
20100f3a:	68fb      	ldr	r3, [r7, #12]
20100f3c:	3308      	adds	r3, #8
20100f3e:	69f9      	ldr	r1, [r7, #28]
20100f40:	6a3a      	ldr	r2, [r7, #32]
20100f42:	1a8a      	subs	r2, r1, r2
20100f44:	601a      	str	r2, [r3, #0]
20100f46:	e083      	b.n	20101050 <svpwm+0x280>
20100f48:	6abb      	ldr	r3, [r7, #40]	; 0x28
20100f4a:	4a45      	ldr	r2, [pc, #276]	; (20101060 <svpwm+0x290>)
20100f4c:	4694      	mov	ip, r2
20100f4e:	4463      	add	r3, ip
20100f50:	62bb      	str	r3, [r7, #40]	; 0x28
20100f52:	6abb      	ldr	r3, [r7, #40]	; 0x28
20100f54:	4a41      	ldr	r2, [pc, #260]	; (2010105c <svpwm+0x28c>)
20100f56:	1ad3      	subs	r3, r2, r3
20100f58:	0018      	movs	r0, r3
20100f5a:	f7ff fd2f 	bl	201009bc <mysin>
20100f5e:	0002      	movs	r2, r0
20100f60:	69bb      	ldr	r3, [r7, #24]
20100f62:	4353      	muls	r3, r2
20100f64:	129b      	asrs	r3, r3, #10
20100f66:	623b      	str	r3, [r7, #32]
20100f68:	6abb      	ldr	r3, [r7, #40]	; 0x28
20100f6a:	0018      	movs	r0, r3
20100f6c:	f7ff fd26 	bl	201009bc <mysin>
20100f70:	0002      	movs	r2, r0
20100f72:	69bb      	ldr	r3, [r7, #24]
20100f74:	4353      	muls	r3, r2
20100f76:	129b      	asrs	r3, r3, #10
20100f78:	61fb      	str	r3, [r7, #28]
20100f7a:	6a3b      	ldr	r3, [r7, #32]
20100f7c:	425a      	negs	r2, r3
20100f7e:	69fb      	ldr	r3, [r7, #28]
20100f80:	1ad2      	subs	r2, r2, r3
20100f82:	68fb      	ldr	r3, [r7, #12]
20100f84:	601a      	str	r2, [r3, #0]
20100f86:	68fb      	ldr	r3, [r7, #12]
20100f88:	3304      	adds	r3, #4
20100f8a:	6a39      	ldr	r1, [r7, #32]
20100f8c:	69fa      	ldr	r2, [r7, #28]
20100f8e:	1a8a      	subs	r2, r1, r2
20100f90:	601a      	str	r2, [r3, #0]
20100f92:	68fb      	ldr	r3, [r7, #12]
20100f94:	3308      	adds	r3, #8
20100f96:	6a39      	ldr	r1, [r7, #32]
20100f98:	69fa      	ldr	r2, [r7, #28]
20100f9a:	188a      	adds	r2, r1, r2
20100f9c:	601a      	str	r2, [r3, #0]
20100f9e:	e057      	b.n	20101050 <svpwm+0x280>
20100fa0:	6abb      	ldr	r3, [r7, #40]	; 0x28
20100fa2:	4a30      	ldr	r2, [pc, #192]	; (20101064 <svpwm+0x294>)
20100fa4:	4694      	mov	ip, r2
20100fa6:	4463      	add	r3, ip
20100fa8:	62bb      	str	r3, [r7, #40]	; 0x28
20100faa:	6abb      	ldr	r3, [r7, #40]	; 0x28
20100fac:	4a2b      	ldr	r2, [pc, #172]	; (2010105c <svpwm+0x28c>)
20100fae:	1ad3      	subs	r3, r2, r3
20100fb0:	0018      	movs	r0, r3
20100fb2:	f7ff fd03 	bl	201009bc <mysin>
20100fb6:	0002      	movs	r2, r0
20100fb8:	69bb      	ldr	r3, [r7, #24]
20100fba:	4353      	muls	r3, r2
20100fbc:	129b      	asrs	r3, r3, #10
20100fbe:	623b      	str	r3, [r7, #32]
20100fc0:	6abb      	ldr	r3, [r7, #40]	; 0x28
20100fc2:	0018      	movs	r0, r3
20100fc4:	f7ff fcfa 	bl	201009bc <mysin>
20100fc8:	0002      	movs	r2, r0
20100fca:	69bb      	ldr	r3, [r7, #24]
20100fcc:	4353      	muls	r3, r2
20100fce:	129b      	asrs	r3, r3, #10
20100fd0:	61fb      	str	r3, [r7, #28]
20100fd2:	69fa      	ldr	r2, [r7, #28]
20100fd4:	6a3b      	ldr	r3, [r7, #32]
20100fd6:	1ad2      	subs	r2, r2, r3
20100fd8:	68fb      	ldr	r3, [r7, #12]
20100fda:	601a      	str	r2, [r3, #0]
20100fdc:	68fb      	ldr	r3, [r7, #12]
20100fde:	3304      	adds	r3, #4
20100fe0:	6a3a      	ldr	r2, [r7, #32]
20100fe2:	4251      	negs	r1, r2
20100fe4:	69fa      	ldr	r2, [r7, #28]
20100fe6:	1a8a      	subs	r2, r1, r2
20100fe8:	601a      	str	r2, [r3, #0]
20100fea:	68fb      	ldr	r3, [r7, #12]
20100fec:	3308      	adds	r3, #8
20100fee:	6a39      	ldr	r1, [r7, #32]
20100ff0:	69fa      	ldr	r2, [r7, #28]
20100ff2:	188a      	adds	r2, r1, r2
20100ff4:	601a      	str	r2, [r3, #0]
20100ff6:	e02b      	b.n	20101050 <svpwm+0x280>
20100ff8:	6abb      	ldr	r3, [r7, #40]	; 0x28
20100ffa:	4a1b      	ldr	r2, [pc, #108]	; (20101068 <svpwm+0x298>)
20100ffc:	4694      	mov	ip, r2
20100ffe:	4463      	add	r3, ip
20101000:	62bb      	str	r3, [r7, #40]	; 0x28
20101002:	6abb      	ldr	r3, [r7, #40]	; 0x28
20101004:	4a15      	ldr	r2, [pc, #84]	; (2010105c <svpwm+0x28c>)
20101006:	1ad3      	subs	r3, r2, r3
20101008:	0018      	movs	r0, r3
2010100a:	f7ff fcd7 	bl	201009bc <mysin>
2010100e:	0002      	movs	r2, r0
20101010:	69bb      	ldr	r3, [r7, #24]
20101012:	4353      	muls	r3, r2
20101014:	129b      	asrs	r3, r3, #10
20101016:	623b      	str	r3, [r7, #32]
20101018:	6abb      	ldr	r3, [r7, #40]	; 0x28
2010101a:	0018      	movs	r0, r3
2010101c:	f7ff fcce 	bl	201009bc <mysin>
20101020:	0002      	movs	r2, r0
20101022:	69bb      	ldr	r3, [r7, #24]
20101024:	4353      	muls	r3, r2
20101026:	129b      	asrs	r3, r3, #10
20101028:	61fb      	str	r3, [r7, #28]
2010102a:	6a3a      	ldr	r2, [r7, #32]
2010102c:	69fb      	ldr	r3, [r7, #28]
2010102e:	18d2      	adds	r2, r2, r3
20101030:	68fb      	ldr	r3, [r7, #12]
20101032:	601a      	str	r2, [r3, #0]
20101034:	68fb      	ldr	r3, [r7, #12]
20101036:	3304      	adds	r3, #4
20101038:	6a3a      	ldr	r2, [r7, #32]
2010103a:	4251      	negs	r1, r2
2010103c:	69fa      	ldr	r2, [r7, #28]
2010103e:	1a8a      	subs	r2, r1, r2
20101040:	601a      	str	r2, [r3, #0]
20101042:	68fb      	ldr	r3, [r7, #12]
20101044:	3308      	adds	r3, #8
20101046:	6a39      	ldr	r1, [r7, #32]
20101048:	69fa      	ldr	r2, [r7, #28]
2010104a:	1a8a      	subs	r2, r1, r2
2010104c:	601a      	str	r2, [r3, #0]
2010104e:	46c0      	nop			; (mov r8, r8)
20101050:	6afb      	ldr	r3, [r7, #44]	; 0x2c
20101052:	0018      	movs	r0, r3
20101054:	46bd      	mov	sp, r7
20101056:	b00c      	add	sp, #48	; 0x30
20101058:	bd80      	pop	{r7, pc}
2010105a:	46c0      	nop			; (mov r8, r8)
2010105c:	000004aa 	.word	0x000004aa
20101060:	fffffe00 	.word	0xfffffe00
20101064:	fffffd56 	.word	0xfffffd56
20101068:	fffffcab 	.word	0xfffffcab

2010106c <get_speed>:
2010106c:	b580      	push	{r7, lr}
2010106e:	b084      	sub	sp, #16
20101070:	af00      	add	r7, sp, #0
20101072:	6078      	str	r0, [r7, #4]
20101074:	6039      	str	r1, [r7, #0]
20101076:	4b1c      	ldr	r3, [pc, #112]	; (201010e8 <get_speed+0x7c>)
20101078:	60bb      	str	r3, [r7, #8]
2010107a:	4b1c      	ldr	r3, [pc, #112]	; (201010ec <get_speed+0x80>)
2010107c:	447b      	add	r3, pc
2010107e:	681b      	ldr	r3, [r3, #0]
20101080:	687a      	ldr	r2, [r7, #4]
20101082:	1ad3      	subs	r3, r2, r3
20101084:	60fb      	str	r3, [r7, #12]
20101086:	4b1a      	ldr	r3, [pc, #104]	; (201010f0 <get_speed+0x84>)
20101088:	447b      	add	r3, pc
2010108a:	681a      	ldr	r2, [r3, #0]
2010108c:	4b19      	ldr	r3, [pc, #100]	; (201010f4 <get_speed+0x88>)
2010108e:	447b      	add	r3, pc
20101090:	601a      	str	r2, [r3, #0]
20101092:	4b19      	ldr	r3, [pc, #100]	; (201010f8 <get_speed+0x8c>)
20101094:	447b      	add	r3, pc
20101096:	687a      	ldr	r2, [r7, #4]
20101098:	601a      	str	r2, [r3, #0]
2010109a:	68fb      	ldr	r3, [r7, #12]
2010109c:	17d9      	asrs	r1, r3, #31
2010109e:	185a      	adds	r2, r3, r1
201010a0:	404a      	eors	r2, r1
201010a2:	23fa      	movs	r3, #250	; 0xfa
201010a4:	009b      	lsls	r3, r3, #2
201010a6:	429a      	cmp	r2, r3
201010a8:	dd0e      	ble.n	201010c8 <get_speed+0x5c>
201010aa:	68fb      	ldr	r3, [r7, #12]
201010ac:	2b00      	cmp	r3, #0
201010ae:	da06      	bge.n	201010be <get_speed+0x52>
201010b0:	68fb      	ldr	r3, [r7, #12]
201010b2:	2280      	movs	r2, #128	; 0x80
201010b4:	0152      	lsls	r2, r2, #5
201010b6:	4694      	mov	ip, r2
201010b8:	4463      	add	r3, ip
201010ba:	60fb      	str	r3, [r7, #12]
201010bc:	e004      	b.n	201010c8 <get_speed+0x5c>
201010be:	68fb      	ldr	r3, [r7, #12]
201010c0:	4a0e      	ldr	r2, [pc, #56]	; (201010fc <get_speed+0x90>)
201010c2:	4694      	mov	ip, r2
201010c4:	4463      	add	r3, ip
201010c6:	60fb      	str	r3, [r7, #12]
201010c8:	683b      	ldr	r3, [r7, #0]
201010ca:	681a      	ldr	r2, [r3, #0]
201010cc:	68fb      	ldr	r3, [r7, #12]
201010ce:	18d2      	adds	r2, r2, r3
201010d0:	683b      	ldr	r3, [r7, #0]
201010d2:	601a      	str	r2, [r3, #0]
201010d4:	68fb      	ldr	r3, [r7, #12]
201010d6:	105b      	asrs	r3, r3, #1
201010d8:	68ba      	ldr	r2, [r7, #8]
201010da:	4353      	muls	r3, r2
201010dc:	131b      	asrs	r3, r3, #12
201010de:	0018      	movs	r0, r3
201010e0:	46bd      	mov	sp, r7
201010e2:	b004      	add	sp, #16
201010e4:	bd80      	pop	{r7, pc}
201010e6:	46c0      	nop			; (mov r8, r8)
201010e8:	0002ae7c 	.word	0x0002ae7c
201010ec:	ffeff038 	.word	0xffeff038
201010f0:	ffeff030 	.word	0xffeff030
201010f4:	ffeff026 	.word	0xffeff026
201010f8:	ffeff024 	.word	0xffeff024
201010fc:	fffff000 	.word	0xfffff000

20101100 <c_mfilter>:
20101100:	b580      	push	{r7, lr}
20101102:	b082      	sub	sp, #8
20101104:	af00      	add	r7, sp, #0
20101106:	6078      	str	r0, [r7, #4]
20101108:	4b14      	ldr	r3, [pc, #80]	; (2010115c <c_mfilter+0x5c>)
2010110a:	447b      	add	r3, pc
2010110c:	681b      	ldr	r3, [r3, #0]
2010110e:	3301      	adds	r3, #1
20101110:	221f      	movs	r2, #31
20101112:	401a      	ands	r2, r3
20101114:	4b12      	ldr	r3, [pc, #72]	; (20101160 <c_mfilter+0x60>)
20101116:	447b      	add	r3, pc
20101118:	601a      	str	r2, [r3, #0]
2010111a:	4b12      	ldr	r3, [pc, #72]	; (20101164 <c_mfilter+0x64>)
2010111c:	447b      	add	r3, pc
2010111e:	681a      	ldr	r2, [r3, #0]
20101120:	4b11      	ldr	r3, [pc, #68]	; (20101168 <c_mfilter+0x68>)
20101122:	447b      	add	r3, pc
20101124:	6819      	ldr	r1, [r3, #0]
20101126:	4b11      	ldr	r3, [pc, #68]	; (2010116c <c_mfilter+0x6c>)
20101128:	447b      	add	r3, pc
2010112a:	0089      	lsls	r1, r1, #2
2010112c:	58cb      	ldr	r3, [r1, r3]
2010112e:	1ad2      	subs	r2, r2, r3
20101130:	687b      	ldr	r3, [r7, #4]
20101132:	18d2      	adds	r2, r2, r3
20101134:	4b0e      	ldr	r3, [pc, #56]	; (20101170 <c_mfilter+0x70>)
20101136:	447b      	add	r3, pc
20101138:	601a      	str	r2, [r3, #0]
2010113a:	4b0e      	ldr	r3, [pc, #56]	; (20101174 <c_mfilter+0x74>)
2010113c:	447b      	add	r3, pc
2010113e:	681a      	ldr	r2, [r3, #0]
20101140:	4b0d      	ldr	r3, [pc, #52]	; (20101178 <c_mfilter+0x78>)
20101142:	447b      	add	r3, pc
20101144:	0092      	lsls	r2, r2, #2
20101146:	6879      	ldr	r1, [r7, #4]
20101148:	50d1      	str	r1, [r2, r3]
2010114a:	4b0c      	ldr	r3, [pc, #48]	; (2010117c <c_mfilter+0x7c>)
2010114c:	447b      	add	r3, pc
2010114e:	681b      	ldr	r3, [r3, #0]
20101150:	115b      	asrs	r3, r3, #5
20101152:	0018      	movs	r0, r3
20101154:	46bd      	mov	sp, r7
20101156:	b002      	add	sp, #8
20101158:	bd80      	pop	{r7, pc}
2010115a:	46c0      	nop			; (mov r8, r8)
2010115c:	ffefefb2 	.word	0xffefefb2
20101160:	ffefefa6 	.word	0xffefefa6
20101164:	ffefefa4 	.word	0xffefefa4
20101168:	ffefef9a 	.word	0xffefef9a
2010116c:	ffefef9c 	.word	0xffefef9c
20101170:	ffefef8a 	.word	0xffefef8a
20101174:	ffefef80 	.word	0xffefef80
20101178:	ffefef82 	.word	0xffefef82
2010117c:	ffefef74 	.word	0xffefef74

20101180 <adc_dma_init>:
20101180:	b580      	push	{r7, lr}
20101182:	af00      	add	r7, sp, #0
20101184:	4b1c      	ldr	r3, [pc, #112]	; (201011f8 <adc_dma_init+0x78>)
20101186:	4a1c      	ldr	r2, [pc, #112]	; (201011f8 <adc_dma_init+0x78>)
20101188:	69d2      	ldr	r2, [r2, #28]
2010118a:	2120      	movs	r1, #32
2010118c:	430a      	orrs	r2, r1
2010118e:	61da      	str	r2, [r3, #28]
20101190:	4b1a      	ldr	r3, [pc, #104]	; (201011fc <adc_dma_init+0x7c>)
20101192:	4a1b      	ldr	r2, [pc, #108]	; (20101200 <adc_dma_init+0x80>)
20101194:	447a      	add	r2, pc
20101196:	609a      	str	r2, [r3, #8]
20101198:	4b18      	ldr	r3, [pc, #96]	; (201011fc <adc_dma_init+0x7c>)
2010119a:	2201      	movs	r2, #1
2010119c:	4252      	negs	r2, r2
2010119e:	62da      	str	r2, [r3, #44]	; 0x2c
201011a0:	4b16      	ldr	r3, [pc, #88]	; (201011fc <adc_dma_init+0x7c>)
201011a2:	2201      	movs	r2, #1
201011a4:	4252      	negs	r2, r2
201011a6:	621a      	str	r2, [r3, #32]
201011a8:	4b14      	ldr	r3, [pc, #80]	; (201011fc <adc_dma_init+0x7c>)
201011aa:	2201      	movs	r2, #1
201011ac:	4252      	negs	r2, r2
201011ae:	635a      	str	r2, [r3, #52]	; 0x34
201011b0:	4b12      	ldr	r3, [pc, #72]	; (201011fc <adc_dma_init+0x7c>)
201011b2:	2280      	movs	r2, #128	; 0x80
201011b4:	05d2      	lsls	r2, r2, #23
201011b6:	61da      	str	r2, [r3, #28]
201011b8:	4b10      	ldr	r3, [pc, #64]	; (201011fc <adc_dma_init+0x7c>)
201011ba:	2280      	movs	r2, #128	; 0x80
201011bc:	05d2      	lsls	r2, r2, #23
201011be:	625a      	str	r2, [r3, #36]	; 0x24
201011c0:	4b0e      	ldr	r3, [pc, #56]	; (201011fc <adc_dma_init+0x7c>)
201011c2:	2201      	movs	r2, #1
201011c4:	605a      	str	r2, [r3, #4]
201011c6:	4a0f      	ldr	r2, [pc, #60]	; (20101204 <adc_dma_init+0x84>)
201011c8:	447a      	add	r2, pc
201011ca:	23f0      	movs	r3, #240	; 0xf0
201011cc:	005b      	lsls	r3, r3, #1
201011ce:	490e      	ldr	r1, [pc, #56]	; (20101208 <adc_dma_init+0x88>)
201011d0:	50d1      	str	r1, [r2, r3]
201011d2:	4b0e      	ldr	r3, [pc, #56]	; (2010120c <adc_dma_init+0x8c>)
201011d4:	447b      	add	r3, pc
201011d6:	330c      	adds	r3, #12
201011d8:	0019      	movs	r1, r3
201011da:	4a0d      	ldr	r2, [pc, #52]	; (20101210 <adc_dma_init+0x90>)
201011dc:	447a      	add	r2, pc
201011de:	23f2      	movs	r3, #242	; 0xf2
201011e0:	005b      	lsls	r3, r3, #1
201011e2:	50d1      	str	r1, [r2, r3]
201011e4:	4a0b      	ldr	r2, [pc, #44]	; (20101214 <adc_dma_init+0x94>)
201011e6:	447a      	add	r2, pc
201011e8:	23f4      	movs	r3, #244	; 0xf4
201011ea:	005b      	lsls	r3, r3, #1
201011ec:	490a      	ldr	r1, [pc, #40]	; (20101218 <adc_dma_init+0x98>)
201011ee:	50d1      	str	r1, [r2, r3]
201011f0:	46c0      	nop			; (mov r8, r8)
201011f2:	46bd      	mov	sp, r7
201011f4:	bd80      	pop	{r7, pc}
201011f6:	46c0      	nop			; (mov r8, r8)
201011f8:	40020000 	.word	0x40020000
201011fc:	40028000 	.word	0x40028000
20101200:	00000268 	.word	0x00000268
20101204:	00000234 	.word	0x00000234
20101208:	40088018 	.word	0x40088018
2010120c:	00000428 	.word	0x00000428
20101210:	00000220 	.word	0x00000220
20101214:	00000216 	.word	0x00000216
20101218:	ae000031 	.word	0xae000031

2010121c <adc_dma_start>:
2010121c:	b580      	push	{r7, lr}
2010121e:	af00      	add	r7, sp, #0
20101220:	4b06      	ldr	r3, [pc, #24]	; (2010123c <adc_dma_start+0x20>)
20101222:	4a06      	ldr	r2, [pc, #24]	; (2010123c <adc_dma_start+0x20>)
20101224:	6812      	ldr	r2, [r2, #0]
20101226:	2108      	movs	r1, #8
20101228:	430a      	orrs	r2, r1
2010122a:	601a      	str	r2, [r3, #0]
2010122c:	4b04      	ldr	r3, [pc, #16]	; (20101240 <adc_dma_start+0x24>)
2010122e:	2280      	movs	r2, #128	; 0x80
20101230:	05d2      	lsls	r2, r2, #23
20101232:	629a      	str	r2, [r3, #40]	; 0x28
20101234:	46c0      	nop			; (mov r8, r8)
20101236:	46bd      	mov	sp, r7
20101238:	bd80      	pop	{r7, pc}
2010123a:	46c0      	nop			; (mov r8, r8)
2010123c:	40088000 	.word	0x40088000
20101240:	40028000 	.word	0x40028000

20101244 <adc_dma_wait>:
20101244:	b580      	push	{r7, lr}
20101246:	af00      	add	r7, sp, #0
20101248:	46c0      	nop			; (mov r8, r8)
2010124a:	4a0b      	ldr	r2, [pc, #44]	; (20101278 <adc_dma_wait+0x34>)
2010124c:	447a      	add	r2, pc
2010124e:	23f4      	movs	r3, #244	; 0xf4
20101250:	005b      	lsls	r3, r3, #1
20101252:	58d3      	ldr	r3, [r2, r3]
20101254:	2207      	movs	r2, #7
20101256:	4013      	ands	r3, r2
20101258:	d1f7      	bne.n	2010124a <adc_dma_wait+0x6>
2010125a:	4b08      	ldr	r3, [pc, #32]	; (2010127c <adc_dma_wait+0x38>)
2010125c:	4a07      	ldr	r2, [pc, #28]	; (2010127c <adc_dma_wait+0x38>)
2010125e:	6812      	ldr	r2, [r2, #0]
20101260:	2108      	movs	r1, #8
20101262:	438a      	bics	r2, r1
20101264:	601a      	str	r2, [r3, #0]
20101266:	4a06      	ldr	r2, [pc, #24]	; (20101280 <adc_dma_wait+0x3c>)
20101268:	447a      	add	r2, pc
2010126a:	23f4      	movs	r3, #244	; 0xf4
2010126c:	005b      	lsls	r3, r3, #1
2010126e:	4905      	ldr	r1, [pc, #20]	; (20101284 <adc_dma_wait+0x40>)
20101270:	50d1      	str	r1, [r2, r3]
20101272:	46c0      	nop			; (mov r8, r8)
20101274:	46bd      	mov	sp, r7
20101276:	bd80      	pop	{r7, pc}
20101278:	000001b0 	.word	0x000001b0
2010127c:	40088000 	.word	0x40088000
20101280:	00000194 	.word	0x00000194
20101284:	ae000031 	.word	0xae000031
	...

20101290 <asm_abc_to_dq>:
20101290:	b570      	push	{r4, r5, r6, lr}
20101292:	4b49      	ldr	r3, [pc, #292]	; (201013b8 <dot3+0x1c>)
20101294:	0092      	lsls	r2, r2, #2
20101296:	589c      	ldr	r4, [r3, r2]
20101298:	6805      	ldr	r5, [r0, #0]
2010129a:	436c      	muls	r4, r5
2010129c:	4e31      	ldr	r6, [pc, #196]	; (20101364 <P_4PI3>)
2010129e:	18b6      	adds	r6, r6, r2
201012a0:	4d34      	ldr	r5, [pc, #208]	; (20101374 <MASK1023>)
201012a2:	4035      	ands	r5, r6
201012a4:	595e      	ldr	r6, [r3, r5]
201012a6:	6845      	ldr	r5, [r0, #4]
201012a8:	4375      	muls	r5, r6
201012aa:	1964      	adds	r4, r4, r5
201012ac:	4e2e      	ldr	r6, [pc, #184]	; (20101368 <P_2PI3>)
201012ae:	18b6      	adds	r6, r6, r2
201012b0:	4d30      	ldr	r5, [pc, #192]	; (20101374 <MASK1023>)
201012b2:	4035      	ands	r5, r6
201012b4:	595e      	ldr	r6, [r3, r5]
201012b6:	6885      	ldr	r5, [r0, #8]
201012b8:	4375      	muls	r5, r6
201012ba:	1964      	adds	r4, r4, r5
201012bc:	600c      	str	r4, [r1, #0]
201012be:	4e28      	ldr	r6, [pc, #160]	; (20101360 <P_3PI2>)
201012c0:	18b6      	adds	r6, r6, r2
201012c2:	4d2c      	ldr	r5, [pc, #176]	; (20101374 <MASK1023>)
201012c4:	4035      	ands	r5, r6
201012c6:	595e      	ldr	r6, [r3, r5]
201012c8:	6804      	ldr	r4, [r0, #0]
201012ca:	4374      	muls	r4, r6
201012cc:	4e27      	ldr	r6, [pc, #156]	; (2010136c <P_4PI33PI2>)
201012ce:	18b6      	adds	r6, r6, r2
201012d0:	4d28      	ldr	r5, [pc, #160]	; (20101374 <MASK1023>)
201012d2:	4035      	ands	r5, r6
201012d4:	595e      	ldr	r6, [r3, r5]
201012d6:	6845      	ldr	r5, [r0, #4]
201012d8:	4375      	muls	r5, r6
201012da:	1964      	adds	r4, r4, r5
201012dc:	4e24      	ldr	r6, [pc, #144]	; (20101370 <P_2PI33PI2>)
201012de:	18b6      	adds	r6, r6, r2
201012e0:	4d24      	ldr	r5, [pc, #144]	; (20101374 <MASK1023>)
201012e2:	4035      	ands	r5, r6
201012e4:	595e      	ldr	r6, [r3, r5]
201012e6:	6885      	ldr	r5, [r0, #8]
201012e8:	4375      	muls	r5, r6
201012ea:	1964      	adds	r4, r4, r5
201012ec:	604c      	str	r4, [r1, #4]
201012ee:	bd70      	pop	{r4, r5, r6, pc}

201012f0 <asm_dq_to_abc>:
201012f0:	b570      	push	{r4, r5, r6, lr}
201012f2:	4b31      	ldr	r3, [pc, #196]	; (201013b8 <dot3+0x1c>)
201012f4:	0092      	lsls	r2, r2, #2
201012f6:	589c      	ldr	r4, [r3, r2]
201012f8:	680d      	ldr	r5, [r1, #0]
201012fa:	436c      	muls	r4, r5
201012fc:	4e18      	ldr	r6, [pc, #96]	; (20101360 <P_3PI2>)
201012fe:	18b6      	adds	r6, r6, r2
20101300:	4d1c      	ldr	r5, [pc, #112]	; (20101374 <MASK1023>)
20101302:	4035      	ands	r5, r6
20101304:	595e      	ldr	r6, [r3, r5]
20101306:	684d      	ldr	r5, [r1, #4]
20101308:	4375      	muls	r5, r6
2010130a:	1b64      	subs	r4, r4, r5
2010130c:	1524      	asrs	r4, r4, #20
2010130e:	6004      	str	r4, [r0, #0]
20101310:	4e14      	ldr	r6, [pc, #80]	; (20101364 <P_4PI3>)
20101312:	18b6      	adds	r6, r6, r2
20101314:	4d17      	ldr	r5, [pc, #92]	; (20101374 <MASK1023>)
20101316:	4035      	ands	r5, r6
20101318:	595c      	ldr	r4, [r3, r5]
2010131a:	680d      	ldr	r5, [r1, #0]
2010131c:	436c      	muls	r4, r5
2010131e:	4e13      	ldr	r6, [pc, #76]	; (2010136c <P_4PI33PI2>)
20101320:	18b6      	adds	r6, r6, r2
20101322:	4d14      	ldr	r5, [pc, #80]	; (20101374 <MASK1023>)
20101324:	4035      	ands	r5, r6
20101326:	595e      	ldr	r6, [r3, r5]
20101328:	684d      	ldr	r5, [r1, #4]
2010132a:	4375      	muls	r5, r6
2010132c:	1b64      	subs	r4, r4, r5
2010132e:	1524      	asrs	r4, r4, #20
20101330:	6044      	str	r4, [r0, #4]
20101332:	4e0d      	ldr	r6, [pc, #52]	; (20101368 <P_2PI3>)
20101334:	18b6      	adds	r6, r6, r2
20101336:	4d0f      	ldr	r5, [pc, #60]	; (20101374 <MASK1023>)
20101338:	4035      	ands	r5, r6
2010133a:	595c      	ldr	r4, [r3, r5]
2010133c:	680d      	ldr	r5, [r1, #0]
2010133e:	436c      	muls	r4, r5
20101340:	4e0b      	ldr	r6, [pc, #44]	; (20101370 <P_2PI33PI2>)
20101342:	18b6      	adds	r6, r6, r2
20101344:	4d0b      	ldr	r5, [pc, #44]	; (20101374 <MASK1023>)
20101346:	4035      	ands	r5, r6
20101348:	595e      	ldr	r6, [r3, r5]
2010134a:	684d      	ldr	r5, [r1, #4]
2010134c:	4375      	muls	r5, r6
2010134e:	1b64      	subs	r4, r4, r5
20101350:	1524      	asrs	r4, r4, #20
20101352:	6084      	str	r4, [r0, #8]
20101354:	bd70      	pop	{r4, r5, r6, pc}
20101356:	46c0      	nop			; (mov r8, r8)
20101358:	46c0      	nop			; (mov r8, r8)
2010135a:	46c0      	nop			; (mov r8, r8)
2010135c:	46c0      	nop			; (mov r8, r8)
2010135e:	46c0      	nop			; (mov r8, r8)

20101360 <P_3PI2>:
20101360:	00000c00 	.word	0x00000c00

20101364 <P_4PI3>:
20101364:	00000aaa 	.word	0x00000aaa

20101368 <P_2PI3>:
20101368:	00000555 	.word	0x00000555

2010136c <P_4PI33PI2>:
2010136c:	000016aa 	.word	0x000016aa

20101370 <P_2PI33PI2>:
20101370:	00001155 	.word	0x00001155

20101374 <MASK1023>:
20101374:	00000ffc 	.word	0x00000ffc

20101378 <mfilter>:
20101378:	4910      	ldr	r1, [pc, #64]	; (201013bc <dot3+0x20>)
2010137a:	680a      	ldr	r2, [r1, #0]
2010137c:	3201      	adds	r2, #1
2010137e:	231f      	movs	r3, #31
20101380:	401a      	ands	r2, r3
20101382:	600a      	str	r2, [r1, #0]
20101384:	490e      	ldr	r1, [pc, #56]	; (201013c0 <dot3+0x24>)
20101386:	0092      	lsls	r2, r2, #2
20101388:	1889      	adds	r1, r1, r2
2010138a:	680a      	ldr	r2, [r1, #0]
2010138c:	6008      	str	r0, [r1, #0]
2010138e:	1a80      	subs	r0, r0, r2
20101390:	490c      	ldr	r1, [pc, #48]	; (201013c4 <dot3+0x28>)
20101392:	680a      	ldr	r2, [r1, #0]
20101394:	1880      	adds	r0, r0, r2
20101396:	6008      	str	r0, [r1, #0]
20101398:	1140      	asrs	r0, r0, #5
2010139a:	46f7      	mov	pc, lr

2010139c <dot3>:
2010139c:	b580      	push	{r7, lr}
2010139e:	6802      	ldr	r2, [r0, #0]
201013a0:	680b      	ldr	r3, [r1, #0]
201013a2:	435a      	muls	r2, r3
201013a4:	1c17      	adds	r7, r2, #0
201013a6:	6842      	ldr	r2, [r0, #4]
201013a8:	684b      	ldr	r3, [r1, #4]
201013aa:	435a      	muls	r2, r3
201013ac:	18bf      	adds	r7, r7, r2
201013ae:	6880      	ldr	r0, [r0, #8]
201013b0:	688b      	ldr	r3, [r1, #8]
201013b2:	4358      	muls	r0, r3
201013b4:	1838      	adds	r0, r7, r0
201013b6:	bd80      	pop	{r7, pc}
201013b8:	20101620 	.word	0x20101620
201013bc:	20000008 	.word	0x20000008
201013c0:	2000000c 	.word	0x2000000c
201013c4:	20000004 	.word	0x20000004

201013c8 <__gnu_thumb1_case_si>:
201013c8:	b403      	push	{r0, r1}
201013ca:	4671      	mov	r1, lr
201013cc:	3102      	adds	r1, #2
201013ce:	0889      	lsrs	r1, r1, #2
201013d0:	0080      	lsls	r0, r0, #2
201013d2:	0089      	lsls	r1, r1, #2
201013d4:	5808      	ldr	r0, [r1, r0]
201013d6:	1840      	adds	r0, r0, r1
201013d8:	4686      	mov	lr, r0
201013da:	bc03      	pop	{r0, r1}
201013dc:	46f7      	mov	pc, lr
201013de:	46c0      	nop			; (mov r8, r8)
	...

20101400 <dma_ctr_str>:
	...

20101600 <adc_dma_buffer>:
	...
