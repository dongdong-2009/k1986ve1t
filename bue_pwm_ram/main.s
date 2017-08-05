
bue_pwm.elf:     file format elf32-littlearm


Disassembly of section .text:

20100000 <main>:
20100000:	b590      	push	{r4, r7, lr}
20100002:	b0a7      	sub	sp, #156	; 0x9c
20100004:	af00      	add	r7, sp, #0
20100006:	4cc2      	ldr	r4, [pc, #776]	; (20100310 <main+0x310>)
20100008:	447c      	add	r4, pc
2010000a:	2300      	movs	r3, #0
2010000c:	2284      	movs	r2, #132	; 0x84
2010000e:	18ba      	adds	r2, r7, r2
20100010:	6013      	str	r3, [r2, #0]
20100012:	2300      	movs	r3, #0
20100014:	2280      	movs	r2, #128	; 0x80
20100016:	18ba      	adds	r2, r7, r2
20100018:	6013      	str	r3, [r2, #0]
2010001a:	2300      	movs	r3, #0
2010001c:	2294      	movs	r2, #148	; 0x94
2010001e:	18ba      	adds	r2, r7, r2
20100020:	6013      	str	r3, [r2, #0]
20100022:	2300      	movs	r3, #0
20100024:	2290      	movs	r2, #144	; 0x90
20100026:	18ba      	adds	r2, r7, r2
20100028:	6013      	str	r3, [r2, #0]
2010002a:	23fa      	movs	r3, #250	; 0xfa
2010002c:	009b      	lsls	r3, r3, #2
2010002e:	67fb      	str	r3, [r7, #124]	; 0x7c
20100030:	2300      	movs	r3, #0
20100032:	603b      	str	r3, [r7, #0]
20100034:	2300      	movs	r3, #0
20100036:	2288      	movs	r2, #136	; 0x88
20100038:	18ba      	adds	r2, r7, r2
2010003a:	6013      	str	r3, [r2, #0]
2010003c:	f000 fbd8 	bl	201007f0 <SystemInit>
20100040:	23fa      	movs	r3, #250	; 0xfa
20100042:	009b      	lsls	r3, r3, #2
20100044:	0018      	movs	r0, r3
20100046:	f000 fc95 	bl	20100974 <wait_timer_ticks>
2010004a:	f000 fbe3 	bl	20100814 <get_dcA>
2010004e:	0003      	movs	r3, r0
20100050:	67bb      	str	r3, [r7, #120]	; 0x78
20100052:	f000 fc09 	bl	20100868 <get_dcB>
20100056:	0003      	movs	r3, r0
20100058:	677b      	str	r3, [r7, #116]	; 0x74
2010005a:	2334      	movs	r3, #52	; 0x34
2010005c:	18fb      	adds	r3, r7, r3
2010005e:	2264      	movs	r2, #100	; 0x64
20100060:	601a      	str	r2, [r3, #0]
20100062:	2334      	movs	r3, #52	; 0x34
20100064:	18fb      	adds	r3, r7, r3
20100066:	22c8      	movs	r2, #200	; 0xc8
20100068:	605a      	str	r2, [r3, #4]
2010006a:	2334      	movs	r3, #52	; 0x34
2010006c:	18fb      	adds	r3, r7, r3
2010006e:	2200      	movs	r2, #0
20100070:	609a      	str	r2, [r3, #8]
20100072:	2334      	movs	r3, #52	; 0x34
20100074:	18fb      	adds	r3, r7, r3
20100076:	2200      	movs	r2, #0
20100078:	60da      	str	r2, [r3, #12]
2010007a:	2324      	movs	r3, #36	; 0x24
2010007c:	18fb      	adds	r3, r7, r3
2010007e:	2264      	movs	r2, #100	; 0x64
20100080:	601a      	str	r2, [r3, #0]
20100082:	2324      	movs	r3, #36	; 0x24
20100084:	18fb      	adds	r3, r7, r3
20100086:	22c8      	movs	r2, #200	; 0xc8
20100088:	605a      	str	r2, [r3, #4]
2010008a:	2324      	movs	r3, #36	; 0x24
2010008c:	18fb      	adds	r3, r7, r3
2010008e:	2200      	movs	r2, #0
20100090:	609a      	str	r2, [r3, #8]
20100092:	2324      	movs	r3, #36	; 0x24
20100094:	18fb      	adds	r3, r7, r3
20100096:	2200      	movs	r2, #0
20100098:	60da      	str	r2, [r3, #12]
2010009a:	2314      	movs	r3, #20
2010009c:	18fb      	adds	r3, r7, r3
2010009e:	2200      	movs	r2, #0
201000a0:	601a      	str	r2, [r3, #0]
201000a2:	2314      	movs	r3, #20
201000a4:	18fb      	adds	r3, r7, r3
201000a6:	22fa      	movs	r2, #250	; 0xfa
201000a8:	00d2      	lsls	r2, r2, #3
201000aa:	605a      	str	r2, [r3, #4]
201000ac:	2314      	movs	r3, #20
201000ae:	18fb      	adds	r3, r7, r3
201000b0:	2200      	movs	r2, #0
201000b2:	609a      	str	r2, [r3, #8]
201000b4:	2314      	movs	r3, #20
201000b6:	18fb      	adds	r3, r7, r3
201000b8:	2200      	movs	r2, #0
201000ba:	60da      	str	r2, [r3, #12]
201000bc:	1d3b      	adds	r3, r7, #4
201000be:	2200      	movs	r2, #0
201000c0:	601a      	str	r2, [r3, #0]
201000c2:	1d3b      	adds	r3, r7, #4
201000c4:	22c8      	movs	r2, #200	; 0xc8
201000c6:	0052      	lsls	r2, r2, #1
201000c8:	605a      	str	r2, [r3, #4]
201000ca:	1d3b      	adds	r3, r7, #4
201000cc:	2200      	movs	r2, #0
201000ce:	609a      	str	r2, [r3, #8]
201000d0:	1d3b      	adds	r3, r7, #4
201000d2:	2200      	movs	r2, #0
201000d4:	60da      	str	r2, [r3, #12]
201000d6:	4b8f      	ldr	r3, [pc, #572]	; (20100314 <main+0x314>)
201000d8:	4a8e      	ldr	r2, [pc, #568]	; (20100314 <main+0x314>)
201000da:	6812      	ldr	r2, [r2, #0]
201000dc:	2120      	movs	r1, #32
201000de:	430a      	orrs	r2, r1
201000e0:	601a      	str	r2, [r3, #0]
201000e2:	4b8d      	ldr	r3, [pc, #564]	; (20100318 <main+0x318>)
201000e4:	4a8d      	ldr	r2, [pc, #564]	; (2010031c <main+0x31c>)
201000e6:	609a      	str	r2, [r3, #8]
201000e8:	4b8d      	ldr	r3, [pc, #564]	; (20100320 <main+0x320>)
201000ea:	2237      	movs	r2, #55	; 0x37
201000ec:	601a      	str	r2, [r3, #0]
201000ee:	46c0      	nop			; (mov r8, r8)
201000f0:	4b8b      	ldr	r3, [pc, #556]	; (20100320 <main+0x320>)
201000f2:	6a1b      	ldr	r3, [r3, #32]
201000f4:	2204      	movs	r2, #4
201000f6:	4013      	ands	r3, r2
201000f8:	d0fa      	beq.n	201000f0 <main+0xf0>
201000fa:	4b89      	ldr	r3, [pc, #548]	; (20100320 <main+0x320>)
201000fc:	699b      	ldr	r3, [r3, #24]
201000fe:	051b      	lsls	r3, r3, #20
20100100:	0d1a      	lsrs	r2, r3, #20
20100102:	6fbb      	ldr	r3, [r7, #120]	; 0x78
20100104:	1ad3      	subs	r3, r2, r3
20100106:	673b      	str	r3, [r7, #112]	; 0x70
20100108:	4b85      	ldr	r3, [pc, #532]	; (20100320 <main+0x320>)
2010010a:	2247      	movs	r2, #71	; 0x47
2010010c:	601a      	str	r2, [r3, #0]
2010010e:	46c0      	nop			; (mov r8, r8)
20100110:	4b83      	ldr	r3, [pc, #524]	; (20100320 <main+0x320>)
20100112:	6a1b      	ldr	r3, [r3, #32]
20100114:	2204      	movs	r2, #4
20100116:	4013      	ands	r3, r2
20100118:	d0fa      	beq.n	20100110 <main+0x110>
2010011a:	4b81      	ldr	r3, [pc, #516]	; (20100320 <main+0x320>)
2010011c:	699b      	ldr	r3, [r3, #24]
2010011e:	051b      	lsls	r3, r3, #20
20100120:	0d1a      	lsrs	r2, r3, #20
20100122:	6f7b      	ldr	r3, [r7, #116]	; 0x74
20100124:	1ad3      	subs	r3, r2, r3
20100126:	66fb      	str	r3, [r7, #108]	; 0x6c
20100128:	6f3b      	ldr	r3, [r7, #112]	; 0x70
2010012a:	425a      	negs	r2, r3
2010012c:	6efb      	ldr	r3, [r7, #108]	; 0x6c
2010012e:	1ad3      	subs	r3, r2, r3
20100130:	66bb      	str	r3, [r7, #104]	; 0x68
20100132:	46c0      	nop			; (mov r8, r8)
20100134:	4b7b      	ldr	r3, [pc, #492]	; (20100324 <main+0x324>)
20100136:	6d5b      	ldr	r3, [r3, #84]	; 0x54
20100138:	2202      	movs	r2, #2
2010013a:	4013      	ands	r3, r2
2010013c:	d0fa      	beq.n	20100134 <main+0x134>
2010013e:	4b79      	ldr	r3, [pc, #484]	; (20100324 <main+0x324>)
20100140:	2200      	movs	r2, #0
20100142:	655a      	str	r2, [r3, #84]	; 0x54
20100144:	4b73      	ldr	r3, [pc, #460]	; (20100314 <main+0x314>)
20100146:	4a73      	ldr	r2, [pc, #460]	; (20100314 <main+0x314>)
20100148:	6812      	ldr	r2, [r2, #0]
2010014a:	2120      	movs	r1, #32
2010014c:	438a      	bics	r2, r1
2010014e:	601a      	str	r2, [r3, #0]
20100150:	4b71      	ldr	r3, [pc, #452]	; (20100318 <main+0x318>)
20100152:	689b      	ldr	r3, [r3, #8]
20100154:	051b      	lsls	r3, r3, #20
20100156:	0d1b      	lsrs	r3, r3, #20
20100158:	0018      	movs	r0, r3
2010015a:	f000 fb31 	bl	201007c0 <g2b>
2010015e:	0003      	movs	r3, r0
20100160:	667b      	str	r3, [r7, #100]	; 0x64
20100162:	2390      	movs	r3, #144	; 0x90
20100164:	18fb      	adds	r3, r7, r3
20100166:	681b      	ldr	r3, [r3, #0]
20100168:	3301      	adds	r3, #1
2010016a:	2290      	movs	r2, #144	; 0x90
2010016c:	18ba      	adds	r2, r7, r2
2010016e:	6013      	str	r3, [r2, #0]
20100170:	2390      	movs	r3, #144	; 0x90
20100172:	18fb      	adds	r3, r7, r3
20100174:	681b      	ldr	r3, [r3, #0]
20100176:	2207      	movs	r2, #7
20100178:	4013      	ands	r3, r2
2010017a:	d140      	bne.n	201001fe <main+0x1fe>
2010017c:	6e7b      	ldr	r3, [r7, #100]	; 0x64
2010017e:	003a      	movs	r2, r7
20100180:	0011      	movs	r1, r2
20100182:	0018      	movs	r0, r3
20100184:	f001 f878 	bl	20101278 <get_speed>
20100188:	0003      	movs	r3, r0
2010018a:	663b      	str	r3, [r7, #96]	; 0x60
2010018c:	683b      	ldr	r3, [r7, #0]
2010018e:	2288      	movs	r2, #136	; 0x88
20100190:	18ba      	adds	r2, r7, r2
20100192:	6812      	ldr	r2, [r2, #0]
20100194:	1ad1      	subs	r1, r2, r3
20100196:	1d3b      	adds	r3, r7, #4
20100198:	2200      	movs	r2, #0
2010019a:	0018      	movs	r0, r3
2010019c:	f000 fc2c 	bl	201009f8 <update>
201001a0:	1d3b      	adds	r3, r7, #4
201001a2:	68db      	ldr	r3, [r3, #12]
201001a4:	129b      	asrs	r3, r3, #10
201001a6:	67fb      	str	r3, [r7, #124]	; 0x7c
201001a8:	6ffa      	ldr	r2, [r7, #124]	; 0x7c
201001aa:	6e3b      	ldr	r3, [r7, #96]	; 0x60
201001ac:	1ad1      	subs	r1, r2, r3
201001ae:	2314      	movs	r3, #20
201001b0:	18fb      	adds	r3, r7, r3
201001b2:	2200      	movs	r2, #0
201001b4:	0018      	movs	r0, r3
201001b6:	f000 fc1f 	bl	201009f8 <update>
201001ba:	2314      	movs	r3, #20
201001bc:	18fb      	adds	r3, r7, r3
201001be:	68db      	ldr	r3, [r3, #12]
201001c0:	129b      	asrs	r3, r3, #10
201001c2:	228c      	movs	r2, #140	; 0x8c
201001c4:	18ba      	adds	r2, r7, r2
201001c6:	6013      	str	r3, [r2, #0]
201001c8:	238c      	movs	r3, #140	; 0x8c
201001ca:	18fb      	adds	r3, r7, r3
201001cc:	681b      	ldr	r3, [r3, #0]
201001ce:	2bc8      	cmp	r3, #200	; 0xc8
201001d0:	dd03      	ble.n	201001da <main+0x1da>
201001d2:	23c8      	movs	r3, #200	; 0xc8
201001d4:	228c      	movs	r2, #140	; 0x8c
201001d6:	18ba      	adds	r2, r7, r2
201001d8:	6013      	str	r3, [r2, #0]
201001da:	238c      	movs	r3, #140	; 0x8c
201001dc:	18fb      	adds	r3, r7, r3
201001de:	681b      	ldr	r3, [r3, #0]
201001e0:	33c8      	adds	r3, #200	; 0xc8
201001e2:	da04      	bge.n	201001ee <main+0x1ee>
201001e4:	23c8      	movs	r3, #200	; 0xc8
201001e6:	425b      	negs	r3, r3
201001e8:	228c      	movs	r2, #140	; 0x8c
201001ea:	18ba      	adds	r2, r7, r2
201001ec:	6013      	str	r3, [r2, #0]
201001ee:	4b4e      	ldr	r3, [pc, #312]	; (20100328 <main+0x328>)
201001f0:	683a      	ldr	r2, [r7, #0]
201001f2:	1152      	asrs	r2, r2, #5
201001f4:	2180      	movs	r1, #128	; 0x80
201001f6:	0109      	lsls	r1, r1, #4
201001f8:	468c      	mov	ip, r1
201001fa:	4462      	add	r2, ip
201001fc:	605a      	str	r2, [r3, #4]
201001fe:	2390      	movs	r3, #144	; 0x90
20100200:	18fb      	adds	r3, r7, r3
20100202:	681b      	ldr	r3, [r3, #0]
20100204:	095b      	lsrs	r3, r3, #5
20100206:	059b      	lsls	r3, r3, #22
20100208:	0d9a      	lsrs	r2, r3, #22
2010020a:	4b48      	ldr	r3, [pc, #288]	; (2010032c <main+0x32c>)
2010020c:	58e3      	ldr	r3, [r4, r3]
2010020e:	0092      	lsls	r2, r2, #2
20100210:	58d3      	ldr	r3, [r2, r3]
20100212:	015b      	lsls	r3, r3, #5
20100214:	2288      	movs	r2, #136	; 0x88
20100216:	18ba      	adds	r2, r7, r2
20100218:	6013      	str	r3, [r2, #0]
2010021a:	6e7b      	ldr	r3, [r7, #100]	; 0x64
2010021c:	059b      	lsls	r3, r3, #22
2010021e:	0d9b      	lsrs	r3, r3, #22
20100220:	2280      	movs	r2, #128	; 0x80
20100222:	18ba      	adds	r2, r7, r2
20100224:	6013      	str	r3, [r2, #0]
20100226:	2380      	movs	r3, #128	; 0x80
20100228:	18fb      	adds	r3, r7, r3
2010022a:	681b      	ldr	r3, [r3, #0]
2010022c:	33fa      	adds	r3, #250	; 0xfa
2010022e:	059b      	lsls	r3, r3, #22
20100230:	0d9b      	lsrs	r3, r3, #22
20100232:	2280      	movs	r2, #128	; 0x80
20100234:	18ba      	adds	r2, r7, r2
20100236:	6013      	str	r3, [r2, #0]
20100238:	2344      	movs	r3, #68	; 0x44
2010023a:	18fb      	adds	r3, r7, r3
2010023c:	6f3a      	ldr	r2, [r7, #112]	; 0x70
2010023e:	601a      	str	r2, [r3, #0]
20100240:	2344      	movs	r3, #68	; 0x44
20100242:	18fb      	adds	r3, r7, r3
20100244:	6eba      	ldr	r2, [r7, #104]	; 0x68
20100246:	605a      	str	r2, [r3, #4]
20100248:	2344      	movs	r3, #68	; 0x44
2010024a:	18fb      	adds	r3, r7, r3
2010024c:	6efa      	ldr	r2, [r7, #108]	; 0x6c
2010024e:	609a      	str	r2, [r3, #8]
20100250:	2380      	movs	r3, #128	; 0x80
20100252:	18fb      	adds	r3, r7, r3
20100254:	681a      	ldr	r2, [r3, #0]
20100256:	2350      	movs	r3, #80	; 0x50
20100258:	18f9      	adds	r1, r7, r3
2010025a:	2344      	movs	r3, #68	; 0x44
2010025c:	18fb      	adds	r3, r7, r3
2010025e:	0018      	movs	r0, r3
20100260:	f000 fbf0 	bl	20100a44 <abc_to_dq>
20100264:	2350      	movs	r3, #80	; 0x50
20100266:	18fb      	adds	r3, r7, r3
20100268:	681b      	ldr	r3, [r3, #0]
2010026a:	425b      	negs	r3, r3
2010026c:	65fb      	str	r3, [r7, #92]	; 0x5c
2010026e:	2350      	movs	r3, #80	; 0x50
20100270:	18fb      	adds	r3, r7, r3
20100272:	685b      	ldr	r3, [r3, #4]
20100274:	228c      	movs	r2, #140	; 0x8c
20100276:	18ba      	adds	r2, r7, r2
20100278:	6812      	ldr	r2, [r2, #0]
2010027a:	1ad3      	subs	r3, r2, r3
2010027c:	65bb      	str	r3, [r7, #88]	; 0x58
2010027e:	2394      	movs	r3, #148	; 0x94
20100280:	18fb      	adds	r3, r7, r3
20100282:	681a      	ldr	r2, [r3, #0]
20100284:	6df9      	ldr	r1, [r7, #92]	; 0x5c
20100286:	2334      	movs	r3, #52	; 0x34
20100288:	18fb      	adds	r3, r7, r3
2010028a:	0018      	movs	r0, r3
2010028c:	f000 fbb4 	bl	201009f8 <update>
20100290:	2394      	movs	r3, #148	; 0x94
20100292:	18fb      	adds	r3, r7, r3
20100294:	681a      	ldr	r2, [r3, #0]
20100296:	6db9      	ldr	r1, [r7, #88]	; 0x58
20100298:	2324      	movs	r3, #36	; 0x24
2010029a:	18fb      	adds	r3, r7, r3
2010029c:	0018      	movs	r0, r3
2010029e:	f000 fbab 	bl	201009f8 <update>
201002a2:	2334      	movs	r3, #52	; 0x34
201002a4:	18fb      	adds	r3, r7, r3
201002a6:	68da      	ldr	r2, [r3, #12]
201002a8:	2350      	movs	r3, #80	; 0x50
201002aa:	18fb      	adds	r3, r7, r3
201002ac:	601a      	str	r2, [r3, #0]
201002ae:	2324      	movs	r3, #36	; 0x24
201002b0:	18fb      	adds	r3, r7, r3
201002b2:	68da      	ldr	r2, [r3, #12]
201002b4:	2350      	movs	r3, #80	; 0x50
201002b6:	18fb      	adds	r3, r7, r3
201002b8:	605a      	str	r2, [r3, #4]
201002ba:	2380      	movs	r3, #128	; 0x80
201002bc:	18fb      	adds	r3, r7, r3
201002be:	681a      	ldr	r2, [r3, #0]
201002c0:	2350      	movs	r3, #80	; 0x50
201002c2:	18f9      	adds	r1, r7, r3
201002c4:	2344      	movs	r3, #68	; 0x44
201002c6:	18fb      	adds	r3, r7, r3
201002c8:	0018      	movs	r0, r3
201002ca:	f000 fe19 	bl	20100f00 <svpwm>
201002ce:	0003      	movs	r3, r0
201002d0:	2294      	movs	r2, #148	; 0x94
201002d2:	18ba      	adds	r2, r7, r2
201002d4:	6013      	str	r3, [r2, #0]
201002d6:	4a13      	ldr	r2, [pc, #76]	; (20100324 <main+0x324>)
201002d8:	2344      	movs	r3, #68	; 0x44
201002da:	18fb      	adds	r3, r7, r3
201002dc:	681b      	ldr	r3, [r3, #0]
201002de:	2180      	movs	r1, #128	; 0x80
201002e0:	0089      	lsls	r1, r1, #2
201002e2:	468c      	mov	ip, r1
201002e4:	4463      	add	r3, ip
201002e6:	6113      	str	r3, [r2, #16]
201002e8:	4a0e      	ldr	r2, [pc, #56]	; (20100324 <main+0x324>)
201002ea:	2344      	movs	r3, #68	; 0x44
201002ec:	18fb      	adds	r3, r7, r3
201002ee:	685b      	ldr	r3, [r3, #4]
201002f0:	2180      	movs	r1, #128	; 0x80
201002f2:	0089      	lsls	r1, r1, #2
201002f4:	468c      	mov	ip, r1
201002f6:	4463      	add	r3, ip
201002f8:	6153      	str	r3, [r2, #20]
201002fa:	4a0a      	ldr	r2, [pc, #40]	; (20100324 <main+0x324>)
201002fc:	2344      	movs	r3, #68	; 0x44
201002fe:	18fb      	adds	r3, r7, r3
20100300:	689b      	ldr	r3, [r3, #8]
20100302:	2180      	movs	r1, #128	; 0x80
20100304:	0089      	lsls	r1, r1, #2
20100306:	468c      	mov	ip, r1
20100308:	4463      	add	r3, ip
2010030a:	6193      	str	r3, [r2, #24]
2010030c:	e6e3      	b.n	201000d6 <main+0xd6>
2010030e:	46c0      	nop			; (mov r8, r8)
20100310:	ffeffff8 	.word	0xffeffff8
20100314:	400b8000 	.word	0x400b8000
20100318:	400a0000 	.word	0x400a0000
2010031c:	00000555 	.word	0x00000555
20100320:	40088000 	.word	0x40088000
20100324:	40098000 	.word	0x40098000
20100328:	40090000 	.word	0x40090000
2010032c:	00000000 	.word	0x00000000

20100330 <sleep>:
20100330:	b580      	push	{r7, lr}
20100332:	b084      	sub	sp, #16
20100334:	af00      	add	r7, sp, #0
20100336:	6078      	str	r0, [r7, #4]
20100338:	4b08      	ldr	r3, [pc, #32]	; (2010035c <sleep+0x2c>)
2010033a:	447b      	add	r3, pc
2010033c:	681a      	ldr	r2, [r3, #0]
2010033e:	687b      	ldr	r3, [r7, #4]
20100340:	18d3      	adds	r3, r2, r3
20100342:	60fb      	str	r3, [r7, #12]
20100344:	46c0      	nop			; (mov r8, r8)
20100346:	4b06      	ldr	r3, [pc, #24]	; (20100360 <sleep+0x30>)
20100348:	447b      	add	r3, pc
2010034a:	681a      	ldr	r2, [r3, #0]
2010034c:	68fb      	ldr	r3, [r7, #12]
2010034e:	429a      	cmp	r2, r3
20100350:	d3f9      	bcc.n	20100346 <sleep+0x16>
20100352:	46c0      	nop			; (mov r8, r8)
20100354:	0018      	movs	r0, r3
20100356:	46bd      	mov	sp, r7
20100358:	b004      	add	sp, #16
2010035a:	bd80      	pop	{r7, pc}
2010035c:	ffeffcd6 	.word	0xffeffcd6
20100360:	ffeffcc8 	.word	0xffeffcc8

20100364 <PortConfig>:
20100364:	b580      	push	{r7, lr}
20100366:	af00      	add	r7, sp, #0
20100368:	4b45      	ldr	r3, [pc, #276]	; (20100480 <PortConfig+0x11c>)
2010036a:	4a45      	ldr	r2, [pc, #276]	; (20100480 <PortConfig+0x11c>)
2010036c:	69d2      	ldr	r2, [r2, #28]
2010036e:	2180      	movs	r1, #128	; 0x80
20100370:	0389      	lsls	r1, r1, #14
20100372:	430a      	orrs	r2, r1
20100374:	61da      	str	r2, [r3, #28]
20100376:	4b43      	ldr	r3, [pc, #268]	; (20100484 <PortConfig+0x120>)
20100378:	4a42      	ldr	r2, [pc, #264]	; (20100484 <PortConfig+0x120>)
2010037a:	6892      	ldr	r2, [r2, #8]
2010037c:	4942      	ldr	r1, [pc, #264]	; (20100488 <PortConfig+0x124>)
2010037e:	400a      	ands	r2, r1
20100380:	609a      	str	r2, [r3, #8]
20100382:	4b40      	ldr	r3, [pc, #256]	; (20100484 <PortConfig+0x120>)
20100384:	4a3f      	ldr	r2, [pc, #252]	; (20100484 <PortConfig+0x120>)
20100386:	6892      	ldr	r2, [r2, #8]
20100388:	4940      	ldr	r1, [pc, #256]	; (2010048c <PortConfig+0x128>)
2010038a:	430a      	orrs	r2, r1
2010038c:	609a      	str	r2, [r3, #8]
2010038e:	4b3d      	ldr	r3, [pc, #244]	; (20100484 <PortConfig+0x120>)
20100390:	4a3c      	ldr	r2, [pc, #240]	; (20100484 <PortConfig+0x120>)
20100392:	6852      	ldr	r2, [r2, #4]
20100394:	21fc      	movs	r1, #252	; 0xfc
20100396:	0109      	lsls	r1, r1, #4
20100398:	430a      	orrs	r2, r1
2010039a:	605a      	str	r2, [r3, #4]
2010039c:	4b39      	ldr	r3, [pc, #228]	; (20100484 <PortConfig+0x120>)
2010039e:	4a39      	ldr	r2, [pc, #228]	; (20100484 <PortConfig+0x120>)
201003a0:	68d2      	ldr	r2, [r2, #12]
201003a2:	21fc      	movs	r1, #252	; 0xfc
201003a4:	0109      	lsls	r1, r1, #4
201003a6:	430a      	orrs	r2, r1
201003a8:	60da      	str	r2, [r3, #12]
201003aa:	4b36      	ldr	r3, [pc, #216]	; (20100484 <PortConfig+0x120>)
201003ac:	4a35      	ldr	r2, [pc, #212]	; (20100484 <PortConfig+0x120>)
201003ae:	6992      	ldr	r2, [r2, #24]
201003b0:	4937      	ldr	r1, [pc, #220]	; (20100490 <PortConfig+0x12c>)
201003b2:	430a      	orrs	r2, r1
201003b4:	619a      	str	r2, [r3, #24]
201003b6:	4b32      	ldr	r3, [pc, #200]	; (20100480 <PortConfig+0x11c>)
201003b8:	4a31      	ldr	r2, [pc, #196]	; (20100480 <PortConfig+0x11c>)
201003ba:	69d2      	ldr	r2, [r2, #28]
201003bc:	2180      	movs	r1, #128	; 0x80
201003be:	0489      	lsls	r1, r1, #18
201003c0:	430a      	orrs	r2, r1
201003c2:	61da      	str	r2, [r3, #28]
201003c4:	4b33      	ldr	r3, [pc, #204]	; (20100494 <PortConfig+0x130>)
201003c6:	4a33      	ldr	r2, [pc, #204]	; (20100494 <PortConfig+0x130>)
201003c8:	68d2      	ldr	r2, [r2, #12]
201003ca:	2102      	movs	r1, #2
201003cc:	438a      	bics	r2, r1
201003ce:	60da      	str	r2, [r3, #12]
201003d0:	4b2b      	ldr	r3, [pc, #172]	; (20100480 <PortConfig+0x11c>)
201003d2:	4a2b      	ldr	r2, [pc, #172]	; (20100480 <PortConfig+0x11c>)
201003d4:	69d2      	ldr	r2, [r2, #28]
201003d6:	2180      	movs	r1, #128	; 0x80
201003d8:	0449      	lsls	r1, r1, #17
201003da:	430a      	orrs	r2, r1
201003dc:	61da      	str	r2, [r3, #28]
201003de:	4b2e      	ldr	r3, [pc, #184]	; (20100498 <PortConfig+0x134>)
201003e0:	4a2d      	ldr	r2, [pc, #180]	; (20100498 <PortConfig+0x134>)
201003e2:	68d2      	ldr	r2, [r2, #12]
201003e4:	492d      	ldr	r1, [pc, #180]	; (2010049c <PortConfig+0x138>)
201003e6:	400a      	ands	r2, r1
201003e8:	60da      	str	r2, [r3, #12]
201003ea:	4b2b      	ldr	r3, [pc, #172]	; (20100498 <PortConfig+0x134>)
201003ec:	4a2a      	ldr	r2, [pc, #168]	; (20100498 <PortConfig+0x134>)
201003ee:	6892      	ldr	r2, [r2, #8]
201003f0:	492b      	ldr	r1, [pc, #172]	; (201004a0 <PortConfig+0x13c>)
201003f2:	400a      	ands	r2, r1
201003f4:	609a      	str	r2, [r3, #8]
201003f6:	4b28      	ldr	r3, [pc, #160]	; (20100498 <PortConfig+0x134>)
201003f8:	4a27      	ldr	r2, [pc, #156]	; (20100498 <PortConfig+0x134>)
201003fa:	6892      	ldr	r2, [r2, #8]
201003fc:	21a0      	movs	r1, #160	; 0xa0
201003fe:	02c9      	lsls	r1, r1, #11
20100400:	430a      	orrs	r2, r1
20100402:	609a      	str	r2, [r3, #8]
20100404:	4b24      	ldr	r3, [pc, #144]	; (20100498 <PortConfig+0x134>)
20100406:	4a24      	ldr	r2, [pc, #144]	; (20100498 <PortConfig+0x134>)
20100408:	68d2      	ldr	r2, [r2, #12]
2010040a:	21c0      	movs	r1, #192	; 0xc0
2010040c:	0089      	lsls	r1, r1, #2
2010040e:	430a      	orrs	r2, r1
20100410:	60da      	str	r2, [r3, #12]
20100412:	4b21      	ldr	r3, [pc, #132]	; (20100498 <PortConfig+0x134>)
20100414:	4a20      	ldr	r2, [pc, #128]	; (20100498 <PortConfig+0x134>)
20100416:	6992      	ldr	r2, [r2, #24]
20100418:	21c0      	movs	r1, #192	; 0xc0
2010041a:	0309      	lsls	r1, r1, #12
2010041c:	430a      	orrs	r2, r1
2010041e:	619a      	str	r2, [r3, #24]
20100420:	4b1d      	ldr	r3, [pc, #116]	; (20100498 <PortConfig+0x134>)
20100422:	4a1d      	ldr	r2, [pc, #116]	; (20100498 <PortConfig+0x134>)
20100424:	6852      	ldr	r2, [r2, #4]
20100426:	2180      	movs	r1, #128	; 0x80
20100428:	0089      	lsls	r1, r1, #2
2010042a:	430a      	orrs	r2, r1
2010042c:	605a      	str	r2, [r3, #4]
2010042e:	4b1a      	ldr	r3, [pc, #104]	; (20100498 <PortConfig+0x134>)
20100430:	4a19      	ldr	r2, [pc, #100]	; (20100498 <PortConfig+0x134>)
20100432:	6852      	ldr	r2, [r2, #4]
20100434:	491b      	ldr	r1, [pc, #108]	; (201004a4 <PortConfig+0x140>)
20100436:	400a      	ands	r2, r1
20100438:	605a      	str	r2, [r3, #4]
2010043a:	4b11      	ldr	r3, [pc, #68]	; (20100480 <PortConfig+0x11c>)
2010043c:	4a10      	ldr	r2, [pc, #64]	; (20100480 <PortConfig+0x11c>)
2010043e:	69d2      	ldr	r2, [r2, #28]
20100440:	2180      	movs	r1, #128	; 0x80
20100442:	0409      	lsls	r1, r1, #16
20100444:	430a      	orrs	r2, r1
20100446:	61da      	str	r2, [r3, #28]
20100448:	4b17      	ldr	r3, [pc, #92]	; (201004a8 <PortConfig+0x144>)
2010044a:	2200      	movs	r2, #0
2010044c:	609a      	str	r2, [r3, #8]
2010044e:	4b16      	ldr	r3, [pc, #88]	; (201004a8 <PortConfig+0x144>)
20100450:	2200      	movs	r2, #0
20100452:	601a      	str	r2, [r3, #0]
20100454:	4b14      	ldr	r3, [pc, #80]	; (201004a8 <PortConfig+0x144>)
20100456:	4a14      	ldr	r2, [pc, #80]	; (201004a8 <PortConfig+0x144>)
20100458:	6852      	ldr	r2, [r2, #4]
2010045a:	2120      	movs	r1, #32
2010045c:	430a      	orrs	r2, r1
2010045e:	605a      	str	r2, [r3, #4]
20100460:	4b11      	ldr	r3, [pc, #68]	; (201004a8 <PortConfig+0x144>)
20100462:	4a11      	ldr	r2, [pc, #68]	; (201004a8 <PortConfig+0x144>)
20100464:	68d2      	ldr	r2, [r2, #12]
20100466:	2120      	movs	r1, #32
20100468:	430a      	orrs	r2, r1
2010046a:	60da      	str	r2, [r3, #12]
2010046c:	4b0e      	ldr	r3, [pc, #56]	; (201004a8 <PortConfig+0x144>)
2010046e:	4a0e      	ldr	r2, [pc, #56]	; (201004a8 <PortConfig+0x144>)
20100470:	6992      	ldr	r2, [r2, #24]
20100472:	21c0      	movs	r1, #192	; 0xc0
20100474:	0109      	lsls	r1, r1, #4
20100476:	430a      	orrs	r2, r1
20100478:	619a      	str	r2, [r3, #24]
2010047a:	46c0      	nop			; (mov r8, r8)
2010047c:	46bd      	mov	sp, r7
2010047e:	bd80      	pop	{r7, pc}
20100480:	40020000 	.word	0x40020000
20100484:	400a8000 	.word	0x400a8000
20100488:	ff000fff 	.word	0xff000fff
2010048c:	00aaa000 	.word	0x00aaa000
20100490:	00fff000 	.word	0x00fff000
20100494:	400c8000 	.word	0x400c8000
20100498:	400c0000 	.word	0x400c0000
2010049c:	fffff3ff 	.word	0xfffff3ff
201004a0:	fff0ffff 	.word	0xfff0ffff
201004a4:	fffffeff 	.word	0xfffffeff
201004a8:	400b8000 	.word	0x400b8000

201004ac <ClkConfig>:
201004ac:	b580      	push	{r7, lr}
201004ae:	af00      	add	r7, sp, #0
201004b0:	4b18      	ldr	r3, [pc, #96]	; (20100514 <ClkConfig+0x68>)
201004b2:	4a18      	ldr	r2, [pc, #96]	; (20100514 <ClkConfig+0x68>)
201004b4:	6892      	ldr	r2, [r2, #8]
201004b6:	2101      	movs	r1, #1
201004b8:	430a      	orrs	r2, r1
201004ba:	609a      	str	r2, [r3, #8]
201004bc:	46c0      	nop			; (mov r8, r8)
201004be:	4b15      	ldr	r3, [pc, #84]	; (20100514 <ClkConfig+0x68>)
201004c0:	681b      	ldr	r3, [r3, #0]
201004c2:	2204      	movs	r2, #4
201004c4:	4013      	ands	r3, r2
201004c6:	d0fa      	beq.n	201004be <ClkConfig+0x12>
201004c8:	4b12      	ldr	r3, [pc, #72]	; (20100514 <ClkConfig+0x68>)
201004ca:	4a12      	ldr	r2, [pc, #72]	; (20100514 <ClkConfig+0x68>)
201004cc:	68d2      	ldr	r2, [r2, #12]
201004ce:	2102      	movs	r1, #2
201004d0:	430a      	orrs	r2, r1
201004d2:	60da      	str	r2, [r3, #12]
201004d4:	4b0f      	ldr	r3, [pc, #60]	; (20100514 <ClkConfig+0x68>)
201004d6:	4a10      	ldr	r2, [pc, #64]	; (20100518 <ClkConfig+0x6c>)
201004d8:	605a      	str	r2, [r3, #4]
201004da:	46c0      	nop			; (mov r8, r8)
201004dc:	4b0d      	ldr	r3, [pc, #52]	; (20100514 <ClkConfig+0x68>)
201004de:	681b      	ldr	r3, [r3, #0]
201004e0:	2202      	movs	r2, #2
201004e2:	4013      	ands	r3, r2
201004e4:	d0fa      	beq.n	201004dc <ClkConfig+0x30>
201004e6:	4b0d      	ldr	r3, [pc, #52]	; (2010051c <ClkConfig+0x70>)
201004e8:	4a0c      	ldr	r2, [pc, #48]	; (2010051c <ClkConfig+0x70>)
201004ea:	6812      	ldr	r2, [r2, #0]
201004ec:	2120      	movs	r1, #32
201004ee:	430a      	orrs	r2, r1
201004f0:	601a      	str	r2, [r3, #0]
201004f2:	4b08      	ldr	r3, [pc, #32]	; (20100514 <ClkConfig+0x68>)
201004f4:	4a07      	ldr	r2, [pc, #28]	; (20100514 <ClkConfig+0x68>)
201004f6:	68d2      	ldr	r2, [r2, #12]
201004f8:	2180      	movs	r1, #128	; 0x80
201004fa:	0049      	lsls	r1, r1, #1
201004fc:	430a      	orrs	r2, r1
201004fe:	60da      	str	r2, [r3, #12]
20100500:	4b04      	ldr	r3, [pc, #16]	; (20100514 <ClkConfig+0x68>)
20100502:	4a04      	ldr	r2, [pc, #16]	; (20100514 <ClkConfig+0x68>)
20100504:	68d2      	ldr	r2, [r2, #12]
20100506:	2104      	movs	r1, #4
20100508:	430a      	orrs	r2, r1
2010050a:	60da      	str	r2, [r3, #12]
2010050c:	46c0      	nop			; (mov r8, r8)
2010050e:	46bd      	mov	sp, r7
20100510:	bd80      	pop	{r7, pc}
20100512:	46c0      	nop			; (mov r8, r8)
20100514:	40020000 	.word	0x40020000
20100518:	00000e04 	.word	0x00000e04
2010051c:	40018000 	.word	0x40018000

20100520 <TimerConfig>:
20100520:	b580      	push	{r7, lr}
20100522:	af00      	add	r7, sp, #0
20100524:	4b71      	ldr	r3, [pc, #452]	; (201006ec <TimerConfig+0x1cc>)
20100526:	4a71      	ldr	r2, [pc, #452]	; (201006ec <TimerConfig+0x1cc>)
20100528:	69d2      	ldr	r2, [r2, #28]
2010052a:	2180      	movs	r1, #128	; 0x80
2010052c:	0309      	lsls	r1, r1, #12
2010052e:	430a      	orrs	r2, r1
20100530:	61da      	str	r2, [r3, #28]
20100532:	4b6e      	ldr	r3, [pc, #440]	; (201006ec <TimerConfig+0x1cc>)
20100534:	4a6d      	ldr	r2, [pc, #436]	; (201006ec <TimerConfig+0x1cc>)
20100536:	6a92      	ldr	r2, [r2, #40]	; 0x28
20100538:	2180      	movs	r1, #128	; 0x80
2010053a:	04c9      	lsls	r1, r1, #19
2010053c:	430a      	orrs	r2, r1
2010053e:	629a      	str	r2, [r3, #40]	; 0x28
20100540:	4b6a      	ldr	r3, [pc, #424]	; (201006ec <TimerConfig+0x1cc>)
20100542:	4a6a      	ldr	r2, [pc, #424]	; (201006ec <TimerConfig+0x1cc>)
20100544:	6a92      	ldr	r2, [r2, #40]	; 0x28
20100546:	496a      	ldr	r1, [pc, #424]	; (201006f0 <TimerConfig+0x1d0>)
20100548:	400a      	ands	r2, r1
2010054a:	629a      	str	r2, [r3, #40]	; 0x28
2010054c:	4b69      	ldr	r3, [pc, #420]	; (201006f4 <TimerConfig+0x1d4>)
2010054e:	2200      	movs	r2, #0
20100550:	601a      	str	r2, [r3, #0]
20100552:	4b68      	ldr	r3, [pc, #416]	; (201006f4 <TimerConfig+0x1d4>)
20100554:	2204      	movs	r2, #4
20100556:	605a      	str	r2, [r3, #4]
20100558:	4b66      	ldr	r3, [pc, #408]	; (201006f4 <TimerConfig+0x1d4>)
2010055a:	4a67      	ldr	r2, [pc, #412]	; (201006f8 <TimerConfig+0x1d8>)
2010055c:	609a      	str	r2, [r3, #8]
2010055e:	4b65      	ldr	r3, [pc, #404]	; (201006f4 <TimerConfig+0x1d4>)
20100560:	2280      	movs	r2, #128	; 0x80
20100562:	0092      	lsls	r2, r2, #2
20100564:	611a      	str	r2, [r3, #16]
20100566:	4b63      	ldr	r3, [pc, #396]	; (201006f4 <TimerConfig+0x1d4>)
20100568:	2280      	movs	r2, #128	; 0x80
2010056a:	0092      	lsls	r2, r2, #2
2010056c:	615a      	str	r2, [r3, #20]
2010056e:	4b61      	ldr	r3, [pc, #388]	; (201006f4 <TimerConfig+0x1d4>)
20100570:	2280      	movs	r2, #128	; 0x80
20100572:	0092      	lsls	r2, r2, #2
20100574:	619a      	str	r2, [r3, #24]
20100576:	4b5f      	ldr	r3, [pc, #380]	; (201006f4 <TimerConfig+0x1d4>)
20100578:	4a5e      	ldr	r2, [pc, #376]	; (201006f4 <TimerConfig+0x1d4>)
2010057a:	6a12      	ldr	r2, [r2, #32]
2010057c:	495f      	ldr	r1, [pc, #380]	; (201006fc <TimerConfig+0x1dc>)
2010057e:	400a      	ands	r2, r1
20100580:	621a      	str	r2, [r3, #32]
20100582:	4b5c      	ldr	r3, [pc, #368]	; (201006f4 <TimerConfig+0x1d4>)
20100584:	4a5b      	ldr	r2, [pc, #364]	; (201006f4 <TimerConfig+0x1d4>)
20100586:	6a12      	ldr	r2, [r2, #32]
20100588:	21e0      	movs	r1, #224	; 0xe0
2010058a:	0109      	lsls	r1, r1, #4
2010058c:	430a      	orrs	r2, r1
2010058e:	621a      	str	r2, [r3, #32]
20100590:	4b58      	ldr	r3, [pc, #352]	; (201006f4 <TimerConfig+0x1d4>)
20100592:	4a58      	ldr	r2, [pc, #352]	; (201006f4 <TimerConfig+0x1d4>)
20100594:	6b12      	ldr	r2, [r2, #48]	; 0x30
20100596:	210f      	movs	r1, #15
20100598:	438a      	bics	r2, r1
2010059a:	631a      	str	r2, [r3, #48]	; 0x30
2010059c:	4b55      	ldr	r3, [pc, #340]	; (201006f4 <TimerConfig+0x1d4>)
2010059e:	4a55      	ldr	r2, [pc, #340]	; (201006f4 <TimerConfig+0x1d4>)
201005a0:	6b12      	ldr	r2, [r2, #48]	; 0x30
201005a2:	210c      	movs	r1, #12
201005a4:	430a      	orrs	r2, r1
201005a6:	631a      	str	r2, [r3, #48]	; 0x30
201005a8:	4b52      	ldr	r3, [pc, #328]	; (201006f4 <TimerConfig+0x1d4>)
201005aa:	4a52      	ldr	r2, [pc, #328]	; (201006f4 <TimerConfig+0x1d4>)
201005ac:	6b12      	ldr	r2, [r2, #48]	; 0x30
201005ae:	2101      	movs	r1, #1
201005b0:	430a      	orrs	r2, r1
201005b2:	631a      	str	r2, [r3, #48]	; 0x30
201005b4:	4b4f      	ldr	r3, [pc, #316]	; (201006f4 <TimerConfig+0x1d4>)
201005b6:	4a4f      	ldr	r2, [pc, #316]	; (201006f4 <TimerConfig+0x1d4>)
201005b8:	6b12      	ldr	r2, [r2, #48]	; 0x30
201005ba:	4951      	ldr	r1, [pc, #324]	; (20100700 <TimerConfig+0x1e0>)
201005bc:	400a      	ands	r2, r1
201005be:	631a      	str	r2, [r3, #48]	; 0x30
201005c0:	4b4c      	ldr	r3, [pc, #304]	; (201006f4 <TimerConfig+0x1d4>)
201005c2:	4a4c      	ldr	r2, [pc, #304]	; (201006f4 <TimerConfig+0x1d4>)
201005c4:	6b12      	ldr	r2, [r2, #48]	; 0x30
201005c6:	21c0      	movs	r1, #192	; 0xc0
201005c8:	0109      	lsls	r1, r1, #4
201005ca:	430a      	orrs	r2, r1
201005cc:	631a      	str	r2, [r3, #48]	; 0x30
201005ce:	4b49      	ldr	r3, [pc, #292]	; (201006f4 <TimerConfig+0x1d4>)
201005d0:	4a48      	ldr	r2, [pc, #288]	; (201006f4 <TimerConfig+0x1d4>)
201005d2:	6b12      	ldr	r2, [r2, #48]	; 0x30
201005d4:	2180      	movs	r1, #128	; 0x80
201005d6:	0049      	lsls	r1, r1, #1
201005d8:	430a      	orrs	r2, r1
201005da:	631a      	str	r2, [r3, #48]	; 0x30
201005dc:	4b45      	ldr	r3, [pc, #276]	; (201006f4 <TimerConfig+0x1d4>)
201005de:	4a45      	ldr	r2, [pc, #276]	; (201006f4 <TimerConfig+0x1d4>)
201005e0:	6a52      	ldr	r2, [r2, #36]	; 0x24
201005e2:	4946      	ldr	r1, [pc, #280]	; (201006fc <TimerConfig+0x1dc>)
201005e4:	400a      	ands	r2, r1
201005e6:	625a      	str	r2, [r3, #36]	; 0x24
201005e8:	4b42      	ldr	r3, [pc, #264]	; (201006f4 <TimerConfig+0x1d4>)
201005ea:	4a42      	ldr	r2, [pc, #264]	; (201006f4 <TimerConfig+0x1d4>)
201005ec:	6a52      	ldr	r2, [r2, #36]	; 0x24
201005ee:	21e0      	movs	r1, #224	; 0xe0
201005f0:	0109      	lsls	r1, r1, #4
201005f2:	430a      	orrs	r2, r1
201005f4:	625a      	str	r2, [r3, #36]	; 0x24
201005f6:	4b3f      	ldr	r3, [pc, #252]	; (201006f4 <TimerConfig+0x1d4>)
201005f8:	4a3e      	ldr	r2, [pc, #248]	; (201006f4 <TimerConfig+0x1d4>)
201005fa:	6b52      	ldr	r2, [r2, #52]	; 0x34
201005fc:	210f      	movs	r1, #15
201005fe:	438a      	bics	r2, r1
20100600:	635a      	str	r2, [r3, #52]	; 0x34
20100602:	4b3c      	ldr	r3, [pc, #240]	; (201006f4 <TimerConfig+0x1d4>)
20100604:	4a3b      	ldr	r2, [pc, #236]	; (201006f4 <TimerConfig+0x1d4>)
20100606:	6b52      	ldr	r2, [r2, #52]	; 0x34
20100608:	210c      	movs	r1, #12
2010060a:	430a      	orrs	r2, r1
2010060c:	635a      	str	r2, [r3, #52]	; 0x34
2010060e:	4b39      	ldr	r3, [pc, #228]	; (201006f4 <TimerConfig+0x1d4>)
20100610:	4a38      	ldr	r2, [pc, #224]	; (201006f4 <TimerConfig+0x1d4>)
20100612:	6b52      	ldr	r2, [r2, #52]	; 0x34
20100614:	2101      	movs	r1, #1
20100616:	430a      	orrs	r2, r1
20100618:	635a      	str	r2, [r3, #52]	; 0x34
2010061a:	4b36      	ldr	r3, [pc, #216]	; (201006f4 <TimerConfig+0x1d4>)
2010061c:	4a35      	ldr	r2, [pc, #212]	; (201006f4 <TimerConfig+0x1d4>)
2010061e:	6b52      	ldr	r2, [r2, #52]	; 0x34
20100620:	4937      	ldr	r1, [pc, #220]	; (20100700 <TimerConfig+0x1e0>)
20100622:	400a      	ands	r2, r1
20100624:	635a      	str	r2, [r3, #52]	; 0x34
20100626:	4b33      	ldr	r3, [pc, #204]	; (201006f4 <TimerConfig+0x1d4>)
20100628:	4a32      	ldr	r2, [pc, #200]	; (201006f4 <TimerConfig+0x1d4>)
2010062a:	6b52      	ldr	r2, [r2, #52]	; 0x34
2010062c:	21c0      	movs	r1, #192	; 0xc0
2010062e:	0109      	lsls	r1, r1, #4
20100630:	430a      	orrs	r2, r1
20100632:	635a      	str	r2, [r3, #52]	; 0x34
20100634:	4b2f      	ldr	r3, [pc, #188]	; (201006f4 <TimerConfig+0x1d4>)
20100636:	4a2f      	ldr	r2, [pc, #188]	; (201006f4 <TimerConfig+0x1d4>)
20100638:	6b52      	ldr	r2, [r2, #52]	; 0x34
2010063a:	2180      	movs	r1, #128	; 0x80
2010063c:	0049      	lsls	r1, r1, #1
2010063e:	430a      	orrs	r2, r1
20100640:	635a      	str	r2, [r3, #52]	; 0x34
20100642:	4b2c      	ldr	r3, [pc, #176]	; (201006f4 <TimerConfig+0x1d4>)
20100644:	4a2b      	ldr	r2, [pc, #172]	; (201006f4 <TimerConfig+0x1d4>)
20100646:	6a92      	ldr	r2, [r2, #40]	; 0x28
20100648:	492c      	ldr	r1, [pc, #176]	; (201006fc <TimerConfig+0x1dc>)
2010064a:	400a      	ands	r2, r1
2010064c:	629a      	str	r2, [r3, #40]	; 0x28
2010064e:	4b29      	ldr	r3, [pc, #164]	; (201006f4 <TimerConfig+0x1d4>)
20100650:	4a28      	ldr	r2, [pc, #160]	; (201006f4 <TimerConfig+0x1d4>)
20100652:	6a92      	ldr	r2, [r2, #40]	; 0x28
20100654:	21e0      	movs	r1, #224	; 0xe0
20100656:	0109      	lsls	r1, r1, #4
20100658:	430a      	orrs	r2, r1
2010065a:	629a      	str	r2, [r3, #40]	; 0x28
2010065c:	4b25      	ldr	r3, [pc, #148]	; (201006f4 <TimerConfig+0x1d4>)
2010065e:	4a25      	ldr	r2, [pc, #148]	; (201006f4 <TimerConfig+0x1d4>)
20100660:	6b92      	ldr	r2, [r2, #56]	; 0x38
20100662:	210f      	movs	r1, #15
20100664:	438a      	bics	r2, r1
20100666:	639a      	str	r2, [r3, #56]	; 0x38
20100668:	4b22      	ldr	r3, [pc, #136]	; (201006f4 <TimerConfig+0x1d4>)
2010066a:	4a22      	ldr	r2, [pc, #136]	; (201006f4 <TimerConfig+0x1d4>)
2010066c:	6b92      	ldr	r2, [r2, #56]	; 0x38
2010066e:	210c      	movs	r1, #12
20100670:	430a      	orrs	r2, r1
20100672:	639a      	str	r2, [r3, #56]	; 0x38
20100674:	4b1f      	ldr	r3, [pc, #124]	; (201006f4 <TimerConfig+0x1d4>)
20100676:	4a1f      	ldr	r2, [pc, #124]	; (201006f4 <TimerConfig+0x1d4>)
20100678:	6b92      	ldr	r2, [r2, #56]	; 0x38
2010067a:	2101      	movs	r1, #1
2010067c:	430a      	orrs	r2, r1
2010067e:	639a      	str	r2, [r3, #56]	; 0x38
20100680:	4b1c      	ldr	r3, [pc, #112]	; (201006f4 <TimerConfig+0x1d4>)
20100682:	4a1c      	ldr	r2, [pc, #112]	; (201006f4 <TimerConfig+0x1d4>)
20100684:	6b92      	ldr	r2, [r2, #56]	; 0x38
20100686:	491e      	ldr	r1, [pc, #120]	; (20100700 <TimerConfig+0x1e0>)
20100688:	400a      	ands	r2, r1
2010068a:	639a      	str	r2, [r3, #56]	; 0x38
2010068c:	4b19      	ldr	r3, [pc, #100]	; (201006f4 <TimerConfig+0x1d4>)
2010068e:	4a19      	ldr	r2, [pc, #100]	; (201006f4 <TimerConfig+0x1d4>)
20100690:	6b92      	ldr	r2, [r2, #56]	; 0x38
20100692:	21c0      	movs	r1, #192	; 0xc0
20100694:	0109      	lsls	r1, r1, #4
20100696:	430a      	orrs	r2, r1
20100698:	639a      	str	r2, [r3, #56]	; 0x38
2010069a:	4b16      	ldr	r3, [pc, #88]	; (201006f4 <TimerConfig+0x1d4>)
2010069c:	4a15      	ldr	r2, [pc, #84]	; (201006f4 <TimerConfig+0x1d4>)
2010069e:	6b92      	ldr	r2, [r2, #56]	; 0x38
201006a0:	2180      	movs	r1, #128	; 0x80
201006a2:	0049      	lsls	r1, r1, #1
201006a4:	430a      	orrs	r2, r1
201006a6:	639a      	str	r2, [r3, #56]	; 0x38
201006a8:	4b12      	ldr	r3, [pc, #72]	; (201006f4 <TimerConfig+0x1d4>)
201006aa:	4a12      	ldr	r2, [pc, #72]	; (201006f4 <TimerConfig+0x1d4>)
201006ac:	6c12      	ldr	r2, [r2, #64]	; 0x40
201006ae:	21c8      	movs	r1, #200	; 0xc8
201006b0:	01c9      	lsls	r1, r1, #7
201006b2:	430a      	orrs	r2, r1
201006b4:	641a      	str	r2, [r3, #64]	; 0x40
201006b6:	4b0f      	ldr	r3, [pc, #60]	; (201006f4 <TimerConfig+0x1d4>)
201006b8:	4a0e      	ldr	r2, [pc, #56]	; (201006f4 <TimerConfig+0x1d4>)
201006ba:	6c52      	ldr	r2, [r2, #68]	; 0x44
201006bc:	21c8      	movs	r1, #200	; 0xc8
201006be:	01c9      	lsls	r1, r1, #7
201006c0:	430a      	orrs	r2, r1
201006c2:	645a      	str	r2, [r3, #68]	; 0x44
201006c4:	4b0b      	ldr	r3, [pc, #44]	; (201006f4 <TimerConfig+0x1d4>)
201006c6:	4a0b      	ldr	r2, [pc, #44]	; (201006f4 <TimerConfig+0x1d4>)
201006c8:	6c92      	ldr	r2, [r2, #72]	; 0x48
201006ca:	21c8      	movs	r1, #200	; 0xc8
201006cc:	01c9      	lsls	r1, r1, #7
201006ce:	430a      	orrs	r2, r1
201006d0:	649a      	str	r2, [r3, #72]	; 0x48
201006d2:	4b08      	ldr	r3, [pc, #32]	; (201006f4 <TimerConfig+0x1d4>)
201006d4:	4a07      	ldr	r2, [pc, #28]	; (201006f4 <TimerConfig+0x1d4>)
201006d6:	6d92      	ldr	r2, [r2, #88]	; 0x58
201006d8:	21f0      	movs	r1, #240	; 0xf0
201006da:	0149      	lsls	r1, r1, #5
201006dc:	430a      	orrs	r2, r1
201006de:	659a      	str	r2, [r3, #88]	; 0x58
201006e0:	4b04      	ldr	r3, [pc, #16]	; (201006f4 <TimerConfig+0x1d4>)
201006e2:	2201      	movs	r2, #1
201006e4:	60da      	str	r2, [r3, #12]
201006e6:	46c0      	nop			; (mov r8, r8)
201006e8:	46bd      	mov	sp, r7
201006ea:	bd80      	pop	{r7, pc}
201006ec:	40020000 	.word	0x40020000
201006f0:	ff00ffff 	.word	0xff00ffff
201006f4:	40098000 	.word	0x40098000
201006f8:	000003ff 	.word	0x000003ff
201006fc:	fffff1ff 	.word	0xfffff1ff
20100700:	fffff0ff 	.word	0xfffff0ff

20100704 <adc_init>:
20100704:	b580      	push	{r7, lr}
20100706:	af00      	add	r7, sp, #0
20100708:	4b07      	ldr	r3, [pc, #28]	; (20100728 <adc_init+0x24>)
2010070a:	4a07      	ldr	r2, [pc, #28]	; (20100728 <adc_init+0x24>)
2010070c:	69d2      	ldr	r2, [r2, #28]
2010070e:	2180      	movs	r1, #128	; 0x80
20100710:	0289      	lsls	r1, r1, #10
20100712:	430a      	orrs	r2, r1
20100714:	61da      	str	r2, [r3, #28]
20100716:	4b04      	ldr	r3, [pc, #16]	; (20100728 <adc_init+0x24>)
20100718:	4a04      	ldr	r2, [pc, #16]	; (2010072c <adc_init+0x28>)
2010071a:	615a      	str	r2, [r3, #20]
2010071c:	4b04      	ldr	r3, [pc, #16]	; (20100730 <adc_init+0x2c>)
2010071e:	2245      	movs	r2, #69	; 0x45
20100720:	601a      	str	r2, [r3, #0]
20100722:	46c0      	nop			; (mov r8, r8)
20100724:	46bd      	mov	sp, r7
20100726:	bd80      	pop	{r7, pc}
20100728:	40020000 	.word	0x40020000
2010072c:	00002020 	.word	0x00002020
20100730:	40088000 	.word	0x40088000

20100734 <dac_init>:
20100734:	b580      	push	{r7, lr}
20100736:	af00      	add	r7, sp, #0
20100738:	4b07      	ldr	r3, [pc, #28]	; (20100758 <dac_init+0x24>)
2010073a:	4a07      	ldr	r2, [pc, #28]	; (20100758 <dac_init+0x24>)
2010073c:	69d2      	ldr	r2, [r2, #28]
2010073e:	2180      	movs	r1, #128	; 0x80
20100740:	02c9      	lsls	r1, r1, #11
20100742:	430a      	orrs	r2, r1
20100744:	61da      	str	r2, [r3, #28]
20100746:	4b05      	ldr	r3, [pc, #20]	; (2010075c <dac_init+0x28>)
20100748:	4a04      	ldr	r2, [pc, #16]	; (2010075c <dac_init+0x28>)
2010074a:	6812      	ldr	r2, [r2, #0]
2010074c:	2104      	movs	r1, #4
2010074e:	430a      	orrs	r2, r1
20100750:	601a      	str	r2, [r3, #0]
20100752:	46c0      	nop			; (mov r8, r8)
20100754:	46bd      	mov	sp, r7
20100756:	bd80      	pop	{r7, pc}
20100758:	40020000 	.word	0x40020000
2010075c:	40090000 	.word	0x40090000

20100760 <ssi_init>:
20100760:	b580      	push	{r7, lr}
20100762:	af00      	add	r7, sp, #0
20100764:	4b0c      	ldr	r3, [pc, #48]	; (20100798 <ssi_init+0x38>)
20100766:	4a0c      	ldr	r2, [pc, #48]	; (20100798 <ssi_init+0x38>)
20100768:	69d2      	ldr	r2, [r2, #28]
2010076a:	2180      	movs	r1, #128	; 0x80
2010076c:	0349      	lsls	r1, r1, #13
2010076e:	430a      	orrs	r2, r1
20100770:	61da      	str	r2, [r3, #28]
20100772:	4b09      	ldr	r3, [pc, #36]	; (20100798 <ssi_init+0x38>)
20100774:	4a09      	ldr	r2, [pc, #36]	; (2010079c <ssi_init+0x3c>)
20100776:	62da      	str	r2, [r3, #44]	; 0x2c
20100778:	4b09      	ldr	r3, [pc, #36]	; (201007a0 <ssi_init+0x40>)
2010077a:	2200      	movs	r2, #0
2010077c:	605a      	str	r2, [r3, #4]
2010077e:	4b08      	ldr	r3, [pc, #32]	; (201007a0 <ssi_init+0x40>)
20100780:	2210      	movs	r2, #16
20100782:	611a      	str	r2, [r3, #16]
20100784:	4b06      	ldr	r3, [pc, #24]	; (201007a0 <ssi_init+0x40>)
20100786:	4a07      	ldr	r2, [pc, #28]	; (201007a4 <ssi_init+0x44>)
20100788:	601a      	str	r2, [r3, #0]
2010078a:	4b05      	ldr	r3, [pc, #20]	; (201007a0 <ssi_init+0x40>)
2010078c:	2202      	movs	r2, #2
2010078e:	605a      	str	r2, [r3, #4]
20100790:	46c0      	nop			; (mov r8, r8)
20100792:	46bd      	mov	sp, r7
20100794:	bd80      	pop	{r7, pc}
20100796:	46c0      	nop			; (mov r8, r8)
20100798:	40020000 	.word	0x40020000
2010079c:	02000a00 	.word	0x02000a00
201007a0:	400a0000 	.word	0x400a0000
201007a4:	0000021b 	.word	0x0000021b

201007a8 <b2g>:
201007a8:	b580      	push	{r7, lr}
201007aa:	b082      	sub	sp, #8
201007ac:	af00      	add	r7, sp, #0
201007ae:	6078      	str	r0, [r7, #4]
201007b0:	687b      	ldr	r3, [r7, #4]
201007b2:	085a      	lsrs	r2, r3, #1
201007b4:	687b      	ldr	r3, [r7, #4]
201007b6:	4053      	eors	r3, r2
201007b8:	0018      	movs	r0, r3
201007ba:	46bd      	mov	sp, r7
201007bc:	b002      	add	sp, #8
201007be:	bd80      	pop	{r7, pc}

201007c0 <g2b>:
201007c0:	b580      	push	{r7, lr}
201007c2:	b084      	sub	sp, #16
201007c4:	af00      	add	r7, sp, #0
201007c6:	6078      	str	r0, [r7, #4]
201007c8:	2300      	movs	r3, #0
201007ca:	60fb      	str	r3, [r7, #12]
201007cc:	2300      	movs	r3, #0
201007ce:	60fb      	str	r3, [r7, #12]
201007d0:	e006      	b.n	201007e0 <g2b+0x20>
201007d2:	68fa      	ldr	r2, [r7, #12]
201007d4:	687b      	ldr	r3, [r7, #4]
201007d6:	4053      	eors	r3, r2
201007d8:	60fb      	str	r3, [r7, #12]
201007da:	687b      	ldr	r3, [r7, #4]
201007dc:	085b      	lsrs	r3, r3, #1
201007de:	607b      	str	r3, [r7, #4]
201007e0:	687b      	ldr	r3, [r7, #4]
201007e2:	2b00      	cmp	r3, #0
201007e4:	d1f5      	bne.n	201007d2 <g2b+0x12>
201007e6:	68fb      	ldr	r3, [r7, #12]
201007e8:	0018      	movs	r0, r3
201007ea:	46bd      	mov	sp, r7
201007ec:	b004      	add	sp, #16
201007ee:	bd80      	pop	{r7, pc}

201007f0 <SystemInit>:
201007f0:	b580      	push	{r7, lr}
201007f2:	af00      	add	r7, sp, #0
201007f4:	f7ff fe5a 	bl	201004ac <ClkConfig>
201007f8:	f7ff fdb4 	bl	20100364 <PortConfig>
201007fc:	f7ff fe90 	bl	20100520 <TimerConfig>
20100800:	f7ff ff80 	bl	20100704 <adc_init>
20100804:	f7ff ff96 	bl	20100734 <dac_init>
20100808:	f7ff ffaa 	bl	20100760 <ssi_init>
2010080c:	46c0      	nop			; (mov r8, r8)
2010080e:	46bd      	mov	sp, r7
20100810:	bd80      	pop	{r7, pc}
20100812:	46c0      	nop			; (mov r8, r8)

20100814 <get_dcA>:
20100814:	b580      	push	{r7, lr}
20100816:	b082      	sub	sp, #8
20100818:	af00      	add	r7, sp, #0
2010081a:	2300      	movs	r3, #0
2010081c:	603b      	str	r3, [r7, #0]
2010081e:	2300      	movs	r3, #0
20100820:	607b      	str	r3, [r7, #4]
20100822:	e012      	b.n	2010084a <get_dcA+0x36>
20100824:	4b0e      	ldr	r3, [pc, #56]	; (20100860 <get_dcA+0x4c>)
20100826:	2237      	movs	r2, #55	; 0x37
20100828:	601a      	str	r2, [r3, #0]
2010082a:	46c0      	nop			; (mov r8, r8)
2010082c:	4b0c      	ldr	r3, [pc, #48]	; (20100860 <get_dcA+0x4c>)
2010082e:	6a1b      	ldr	r3, [r3, #32]
20100830:	2204      	movs	r2, #4
20100832:	4013      	ands	r3, r2
20100834:	d0fa      	beq.n	2010082c <get_dcA+0x18>
20100836:	4b0a      	ldr	r3, [pc, #40]	; (20100860 <get_dcA+0x4c>)
20100838:	699b      	ldr	r3, [r3, #24]
2010083a:	051b      	lsls	r3, r3, #20
2010083c:	0d1a      	lsrs	r2, r3, #20
2010083e:	683b      	ldr	r3, [r7, #0]
20100840:	18d3      	adds	r3, r2, r3
20100842:	603b      	str	r3, [r7, #0]
20100844:	687b      	ldr	r3, [r7, #4]
20100846:	3301      	adds	r3, #1
20100848:	607b      	str	r3, [r7, #4]
2010084a:	687b      	ldr	r3, [r7, #4]
2010084c:	4a05      	ldr	r2, [pc, #20]	; (20100864 <get_dcA+0x50>)
2010084e:	4293      	cmp	r3, r2
20100850:	dde8      	ble.n	20100824 <get_dcA+0x10>
20100852:	683b      	ldr	r3, [r7, #0]
20100854:	129b      	asrs	r3, r3, #10
20100856:	0018      	movs	r0, r3
20100858:	46bd      	mov	sp, r7
2010085a:	b002      	add	sp, #8
2010085c:	bd80      	pop	{r7, pc}
2010085e:	46c0      	nop			; (mov r8, r8)
20100860:	40088000 	.word	0x40088000
20100864:	000003ff 	.word	0x000003ff

20100868 <get_dcB>:
20100868:	b580      	push	{r7, lr}
2010086a:	b082      	sub	sp, #8
2010086c:	af00      	add	r7, sp, #0
2010086e:	2300      	movs	r3, #0
20100870:	603b      	str	r3, [r7, #0]
20100872:	2300      	movs	r3, #0
20100874:	607b      	str	r3, [r7, #4]
20100876:	e012      	b.n	2010089e <get_dcB+0x36>
20100878:	4b0e      	ldr	r3, [pc, #56]	; (201008b4 <get_dcB+0x4c>)
2010087a:	2247      	movs	r2, #71	; 0x47
2010087c:	601a      	str	r2, [r3, #0]
2010087e:	46c0      	nop			; (mov r8, r8)
20100880:	4b0c      	ldr	r3, [pc, #48]	; (201008b4 <get_dcB+0x4c>)
20100882:	6a1b      	ldr	r3, [r3, #32]
20100884:	2204      	movs	r2, #4
20100886:	4013      	ands	r3, r2
20100888:	d0fa      	beq.n	20100880 <get_dcB+0x18>
2010088a:	4b0a      	ldr	r3, [pc, #40]	; (201008b4 <get_dcB+0x4c>)
2010088c:	699b      	ldr	r3, [r3, #24]
2010088e:	051b      	lsls	r3, r3, #20
20100890:	0d1a      	lsrs	r2, r3, #20
20100892:	683b      	ldr	r3, [r7, #0]
20100894:	18d3      	adds	r3, r2, r3
20100896:	603b      	str	r3, [r7, #0]
20100898:	687b      	ldr	r3, [r7, #4]
2010089a:	3301      	adds	r3, #1
2010089c:	607b      	str	r3, [r7, #4]
2010089e:	687b      	ldr	r3, [r7, #4]
201008a0:	4a05      	ldr	r2, [pc, #20]	; (201008b8 <get_dcB+0x50>)
201008a2:	4293      	cmp	r3, r2
201008a4:	dde8      	ble.n	20100878 <get_dcB+0x10>
201008a6:	683b      	ldr	r3, [r7, #0]
201008a8:	129b      	asrs	r3, r3, #10
201008aa:	0018      	movs	r0, r3
201008ac:	46bd      	mov	sp, r7
201008ae:	b002      	add	sp, #8
201008b0:	bd80      	pop	{r7, pc}
201008b2:	46c0      	nop			; (mov r8, r8)
201008b4:	40088000 	.word	0x40088000
201008b8:	000003ff 	.word	0x000003ff

201008bc <vector_sync_motor_controller>:
201008bc:	b580      	push	{r7, lr}
201008be:	b090      	sub	sp, #64	; 0x40
201008c0:	af00      	add	r7, sp, #0
201008c2:	6078      	str	r0, [r7, #4]
201008c4:	6039      	str	r1, [r7, #0]
201008c6:	683a      	ldr	r2, [r7, #0]
201008c8:	232c      	movs	r3, #44	; 0x2c
201008ca:	18f9      	adds	r1, r7, r3
201008cc:	687b      	ldr	r3, [r7, #4]
201008ce:	0018      	movs	r0, r3
201008d0:	f000 f8b8 	bl	20100a44 <abc_to_dq>
201008d4:	232c      	movs	r3, #44	; 0x2c
201008d6:	18fb      	adds	r3, r7, r3
201008d8:	681b      	ldr	r3, [r3, #0]
201008da:	425b      	negs	r3, r3
201008dc:	63fb      	str	r3, [r7, #60]	; 0x3c
201008de:	232c      	movs	r3, #44	; 0x2c
201008e0:	18fb      	adds	r3, r7, r3
201008e2:	685b      	ldr	r3, [r3, #4]
201008e4:	22c8      	movs	r2, #200	; 0xc8
201008e6:	1ad3      	subs	r3, r2, r3
201008e8:	63bb      	str	r3, [r7, #56]	; 0x38
201008ea:	6b7a      	ldr	r2, [r7, #52]	; 0x34
201008ec:	6bf9      	ldr	r1, [r7, #60]	; 0x3c
201008ee:	231c      	movs	r3, #28
201008f0:	18fb      	adds	r3, r7, r3
201008f2:	0018      	movs	r0, r3
201008f4:	f000 f880 	bl	201009f8 <update>
201008f8:	6b7a      	ldr	r2, [r7, #52]	; 0x34
201008fa:	6bb9      	ldr	r1, [r7, #56]	; 0x38
201008fc:	230c      	movs	r3, #12
201008fe:	18fb      	adds	r3, r7, r3
20100900:	0018      	movs	r0, r3
20100902:	f000 f879 	bl	201009f8 <update>
20100906:	231c      	movs	r3, #28
20100908:	18fb      	adds	r3, r7, r3
2010090a:	68da      	ldr	r2, [r3, #12]
2010090c:	232c      	movs	r3, #44	; 0x2c
2010090e:	18fb      	adds	r3, r7, r3
20100910:	601a      	str	r2, [r3, #0]
20100912:	230c      	movs	r3, #12
20100914:	18fb      	adds	r3, r7, r3
20100916:	68da      	ldr	r2, [r3, #12]
20100918:	232c      	movs	r3, #44	; 0x2c
2010091a:	18fb      	adds	r3, r7, r3
2010091c:	605a      	str	r2, [r3, #4]
2010091e:	683b      	ldr	r3, [r7, #0]
20100920:	33fa      	adds	r3, #250	; 0xfa
20100922:	059b      	lsls	r3, r3, #22
20100924:	0d9a      	lsrs	r2, r3, #22
20100926:	232c      	movs	r3, #44	; 0x2c
20100928:	18f9      	adds	r1, r7, r3
2010092a:	687b      	ldr	r3, [r7, #4]
2010092c:	0018      	movs	r0, r3
2010092e:	f000 f8d1 	bl	20100ad4 <dq_to_abc>
20100932:	4a0f      	ldr	r2, [pc, #60]	; (20100970 <vector_sync_motor_controller+0xb4>)
20100934:	687b      	ldr	r3, [r7, #4]
20100936:	3308      	adds	r3, #8
20100938:	681b      	ldr	r3, [r3, #0]
2010093a:	2180      	movs	r1, #128	; 0x80
2010093c:	0089      	lsls	r1, r1, #2
2010093e:	468c      	mov	ip, r1
20100940:	4463      	add	r3, ip
20100942:	6113      	str	r3, [r2, #16]
20100944:	4a0a      	ldr	r2, [pc, #40]	; (20100970 <vector_sync_motor_controller+0xb4>)
20100946:	687b      	ldr	r3, [r7, #4]
20100948:	3304      	adds	r3, #4
2010094a:	681b      	ldr	r3, [r3, #0]
2010094c:	2180      	movs	r1, #128	; 0x80
2010094e:	0089      	lsls	r1, r1, #2
20100950:	468c      	mov	ip, r1
20100952:	4463      	add	r3, ip
20100954:	6153      	str	r3, [r2, #20]
20100956:	4a06      	ldr	r2, [pc, #24]	; (20100970 <vector_sync_motor_controller+0xb4>)
20100958:	687b      	ldr	r3, [r7, #4]
2010095a:	681b      	ldr	r3, [r3, #0]
2010095c:	2180      	movs	r1, #128	; 0x80
2010095e:	0089      	lsls	r1, r1, #2
20100960:	468c      	mov	ip, r1
20100962:	4463      	add	r3, ip
20100964:	6193      	str	r3, [r2, #24]
20100966:	46c0      	nop			; (mov r8, r8)
20100968:	46bd      	mov	sp, r7
2010096a:	b010      	add	sp, #64	; 0x40
2010096c:	bd80      	pop	{r7, pc}
2010096e:	46c0      	nop			; (mov r8, r8)
20100970:	40098000 	.word	0x40098000

20100974 <wait_timer_ticks>:
20100974:	b580      	push	{r7, lr}
20100976:	b084      	sub	sp, #16
20100978:	af00      	add	r7, sp, #0
2010097a:	6078      	str	r0, [r7, #4]
2010097c:	2300      	movs	r3, #0
2010097e:	60fb      	str	r3, [r7, #12]
20100980:	e00b      	b.n	2010099a <wait_timer_ticks+0x26>
20100982:	46c0      	nop			; (mov r8, r8)
20100984:	4b09      	ldr	r3, [pc, #36]	; (201009ac <wait_timer_ticks+0x38>)
20100986:	6d5b      	ldr	r3, [r3, #84]	; 0x54
20100988:	2202      	movs	r2, #2
2010098a:	4013      	ands	r3, r2
2010098c:	d0fa      	beq.n	20100984 <wait_timer_ticks+0x10>
2010098e:	4b07      	ldr	r3, [pc, #28]	; (201009ac <wait_timer_ticks+0x38>)
20100990:	2200      	movs	r2, #0
20100992:	655a      	str	r2, [r3, #84]	; 0x54
20100994:	68fb      	ldr	r3, [r7, #12]
20100996:	3301      	adds	r3, #1
20100998:	60fb      	str	r3, [r7, #12]
2010099a:	68fa      	ldr	r2, [r7, #12]
2010099c:	687b      	ldr	r3, [r7, #4]
2010099e:	429a      	cmp	r2, r3
201009a0:	dbef      	blt.n	20100982 <wait_timer_ticks+0xe>
201009a2:	46c0      	nop			; (mov r8, r8)
201009a4:	46bd      	mov	sp, r7
201009a6:	b004      	add	sp, #16
201009a8:	bd80      	pop	{r7, pc}
201009aa:	46c0      	nop			; (mov r8, r8)
201009ac:	40098000 	.word	0x40098000

201009b0 <mycos>:
201009b0:	4b05      	ldr	r3, [pc, #20]	; (201009c8 <mycos+0x18>)
201009b2:	4a06      	ldr	r2, [pc, #24]	; (201009cc <mycos+0x1c>)
201009b4:	447b      	add	r3, pc
201009b6:	0580      	lsls	r0, r0, #22
201009b8:	589b      	ldr	r3, [r3, r2]
201009ba:	0d00      	lsrs	r0, r0, #20
201009bc:	58c0      	ldr	r0, [r0, r3]
201009be:	b082      	sub	sp, #8
201009c0:	9301      	str	r3, [sp, #4]
201009c2:	b002      	add	sp, #8
201009c4:	4770      	bx	lr
201009c6:	46c0      	nop			; (mov r8, r8)
201009c8:	ffeff64c 	.word	0xffeff64c
201009cc:	00000000 	.word	0x00000000

201009d0 <mysin>:
201009d0:	4b07      	ldr	r3, [pc, #28]	; (201009f0 <mysin+0x20>)
201009d2:	4a08      	ldr	r2, [pc, #32]	; (201009f4 <mysin+0x24>)
201009d4:	447b      	add	r3, pc
201009d6:	589b      	ldr	r3, [r3, r2]
201009d8:	b082      	sub	sp, #8
201009da:	9301      	str	r3, [sp, #4]
201009dc:	23c0      	movs	r3, #192	; 0xc0
201009de:	009b      	lsls	r3, r3, #2
201009e0:	469c      	mov	ip, r3
201009e2:	4460      	add	r0, ip
201009e4:	9b01      	ldr	r3, [sp, #4]
201009e6:	0580      	lsls	r0, r0, #22
201009e8:	0d00      	lsrs	r0, r0, #20
201009ea:	58c0      	ldr	r0, [r0, r3]
201009ec:	b002      	add	sp, #8
201009ee:	4770      	bx	lr
201009f0:	ffeff62c 	.word	0xffeff62c
201009f4:	00000000 	.word	0x00000000

201009f8 <update>:
201009f8:	b510      	push	{r4, lr}
201009fa:	6804      	ldr	r4, [r0, #0]
201009fc:	6883      	ldr	r3, [r0, #8]
201009fe:	434c      	muls	r4, r1
20100a00:	2a00      	cmp	r2, #0
20100a02:	d004      	beq.n	20100a0e <update+0x16>
20100a04:	2b00      	cmp	r3, #0
20100a06:	dd09      	ble.n	20100a1c <update+0x24>
20100a08:	2c00      	cmp	r4, #0
20100a0a:	dd00      	ble.n	20100a0e <update+0x16>
20100a0c:	2400      	movs	r4, #0
20100a0e:	6842      	ldr	r2, [r0, #4]
20100a10:	18e3      	adds	r3, r4, r3
20100a12:	4351      	muls	r1, r2
20100a14:	18c9      	adds	r1, r1, r3
20100a16:	60c1      	str	r1, [r0, #12]
20100a18:	6083      	str	r3, [r0, #8]
20100a1a:	bd10      	pop	{r4, pc}
20100a1c:	2b00      	cmp	r3, #0
20100a1e:	d0f6      	beq.n	20100a0e <update+0x16>
20100a20:	43e2      	mvns	r2, r4
20100a22:	17d2      	asrs	r2, r2, #31
20100a24:	4014      	ands	r4, r2
20100a26:	e7f2      	b.n	20100a0e <update+0x16>

20100a28 <dot3>:
20100a28:	6803      	ldr	r3, [r0, #0]
20100a2a:	680a      	ldr	r2, [r1, #0]
20100a2c:	b510      	push	{r4, lr}
20100a2e:	435a      	muls	r2, r3
20100a30:	6844      	ldr	r4, [r0, #4]
20100a32:	684b      	ldr	r3, [r1, #4]
20100a34:	6880      	ldr	r0, [r0, #8]
20100a36:	4363      	muls	r3, r4
20100a38:	18d2      	adds	r2, r2, r3
20100a3a:	688b      	ldr	r3, [r1, #8]
20100a3c:	4343      	muls	r3, r0
20100a3e:	18d0      	adds	r0, r2, r3
20100a40:	bd10      	pop	{r4, pc}
20100a42:	46c0      	nop			; (mov r8, r8)

20100a44 <abc_to_dq>:
20100a44:	b5f0      	push	{r4, r5, r6, r7, lr}
20100a46:	4647      	mov	r7, r8
20100a48:	b480      	push	{r7}
20100a4a:	4b1d      	ldr	r3, [pc, #116]	; (20100ac0 <abc_to_dq+0x7c>)
20100a4c:	4c1d      	ldr	r4, [pc, #116]	; (20100ac4 <abc_to_dq+0x80>)
20100a4e:	447b      	add	r3, pc
20100a50:	591d      	ldr	r5, [r3, r4]
20100a52:	23c0      	movs	r3, #192	; 0xc0
20100a54:	009b      	lsls	r3, r3, #2
20100a56:	18d3      	adds	r3, r2, r3
20100a58:	059b      	lsls	r3, r3, #22
20100a5a:	0d1b      	lsrs	r3, r3, #20
20100a5c:	595b      	ldr	r3, [r3, r5]
20100a5e:	4698      	mov	r8, r3
20100a60:	4b19      	ldr	r3, [pc, #100]	; (20100ac8 <abc_to_dq+0x84>)
20100a62:	18d4      	adds	r4, r2, r3
20100a64:	05a4      	lsls	r4, r4, #22
20100a66:	4b19      	ldr	r3, [pc, #100]	; (20100acc <abc_to_dq+0x88>)
20100a68:	0d24      	lsrs	r4, r4, #20
20100a6a:	5967      	ldr	r7, [r4, r5]
20100a6c:	18d4      	adds	r4, r2, r3
20100a6e:	05a4      	lsls	r4, r4, #22
20100a70:	4b17      	ldr	r3, [pc, #92]	; (20100ad0 <abc_to_dq+0x8c>)
20100a72:	0d24      	lsrs	r4, r4, #20
20100a74:	5966      	ldr	r6, [r4, r5]
20100a76:	18d4      	adds	r4, r2, r3
20100a78:	05a4      	lsls	r4, r4, #22
20100a7a:	0d24      	lsrs	r4, r4, #20
20100a7c:	5964      	ldr	r4, [r4, r5]
20100a7e:	6843      	ldr	r3, [r0, #4]
20100a80:	4363      	muls	r3, r4
20100a82:	0094      	lsls	r4, r2, #2
20100a84:	469c      	mov	ip, r3
20100a86:	3256      	adds	r2, #86	; 0x56
20100a88:	32ff      	adds	r2, #255	; 0xff
20100a8a:	6803      	ldr	r3, [r0, #0]
20100a8c:	5964      	ldr	r4, [r4, r5]
20100a8e:	0592      	lsls	r2, r2, #22
20100a90:	0d12      	lsrs	r2, r2, #20
20100a92:	5955      	ldr	r5, [r2, r5]
20100a94:	435c      	muls	r4, r3
20100a96:	6883      	ldr	r3, [r0, #8]
20100a98:	4464      	add	r4, ip
20100a9a:	435d      	muls	r5, r3
20100a9c:	4643      	mov	r3, r8
20100a9e:	1964      	adds	r4, r4, r5
20100aa0:	12a4      	asrs	r4, r4, #10
20100aa2:	600c      	str	r4, [r1, #0]
20100aa4:	6802      	ldr	r2, [r0, #0]
20100aa6:	435a      	muls	r2, r3
20100aa8:	6843      	ldr	r3, [r0, #4]
20100aaa:	437b      	muls	r3, r7
20100aac:	18d3      	adds	r3, r2, r3
20100aae:	6882      	ldr	r2, [r0, #8]
20100ab0:	4372      	muls	r2, r6
20100ab2:	189b      	adds	r3, r3, r2
20100ab4:	425b      	negs	r3, r3
20100ab6:	129b      	asrs	r3, r3, #10
20100ab8:	604b      	str	r3, [r1, #4]
20100aba:	bc04      	pop	{r2}
20100abc:	4690      	mov	r8, r2
20100abe:	bdf0      	pop	{r4, r5, r6, r7, pc}
20100ac0:	ffeff5b2 	.word	0xffeff5b2
20100ac4:	00000000 	.word	0x00000000
20100ac8:	000005aa 	.word	0x000005aa
20100acc:	00000455 	.word	0x00000455
20100ad0:	000002aa 	.word	0x000002aa

20100ad4 <dq_to_abc>:
20100ad4:	b570      	push	{r4, r5, r6, lr}
20100ad6:	4b1c      	ldr	r3, [pc, #112]	; (20100b48 <dq_to_abc+0x74>)
20100ad8:	4c1c      	ldr	r4, [pc, #112]	; (20100b4c <dq_to_abc+0x78>)
20100ada:	447b      	add	r3, pc
20100adc:	591d      	ldr	r5, [r3, r4]
20100ade:	0093      	lsls	r3, r2, #2
20100ae0:	680c      	ldr	r4, [r1, #0]
20100ae2:	595b      	ldr	r3, [r3, r5]
20100ae4:	684e      	ldr	r6, [r1, #4]
20100ae6:	435c      	muls	r4, r3
20100ae8:	23c0      	movs	r3, #192	; 0xc0
20100aea:	009b      	lsls	r3, r3, #2
20100aec:	18d3      	adds	r3, r2, r3
20100aee:	059b      	lsls	r3, r3, #22
20100af0:	0d1b      	lsrs	r3, r3, #20
20100af2:	595b      	ldr	r3, [r3, r5]
20100af4:	4373      	muls	r3, r6
20100af6:	1ae3      	subs	r3, r4, r3
20100af8:	151b      	asrs	r3, r3, #20
20100afa:	6003      	str	r3, [r0, #0]
20100afc:	4b14      	ldr	r3, [pc, #80]	; (20100b50 <dq_to_abc+0x7c>)
20100afe:	680c      	ldr	r4, [r1, #0]
20100b00:	18d3      	adds	r3, r2, r3
20100b02:	059b      	lsls	r3, r3, #22
20100b04:	0d1b      	lsrs	r3, r3, #20
20100b06:	595b      	ldr	r3, [r3, r5]
20100b08:	684e      	ldr	r6, [r1, #4]
20100b0a:	435c      	muls	r4, r3
20100b0c:	4b11      	ldr	r3, [pc, #68]	; (20100b54 <dq_to_abc+0x80>)
20100b0e:	18d3      	adds	r3, r2, r3
20100b10:	059b      	lsls	r3, r3, #22
20100b12:	0d1b      	lsrs	r3, r3, #20
20100b14:	595b      	ldr	r3, [r3, r5]
20100b16:	4373      	muls	r3, r6
20100b18:	1ae3      	subs	r3, r4, r3
20100b1a:	151b      	asrs	r3, r3, #20
20100b1c:	6043      	str	r3, [r0, #4]
20100b1e:	0013      	movs	r3, r2
20100b20:	3356      	adds	r3, #86	; 0x56
20100b22:	33ff      	adds	r3, #255	; 0xff
20100b24:	059b      	lsls	r3, r3, #22
20100b26:	0d1b      	lsrs	r3, r3, #20
20100b28:	595b      	ldr	r3, [r3, r5]
20100b2a:	680c      	ldr	r4, [r1, #0]
20100b2c:	435c      	muls	r4, r3
20100b2e:	4b0a      	ldr	r3, [pc, #40]	; (20100b58 <dq_to_abc+0x84>)
20100b30:	469c      	mov	ip, r3
20100b32:	4462      	add	r2, ip
20100b34:	0592      	lsls	r2, r2, #22
20100b36:	0d12      	lsrs	r2, r2, #20
20100b38:	5952      	ldr	r2, [r2, r5]
20100b3a:	684b      	ldr	r3, [r1, #4]
20100b3c:	4353      	muls	r3, r2
20100b3e:	1ae3      	subs	r3, r4, r3
20100b40:	151b      	asrs	r3, r3, #20
20100b42:	6083      	str	r3, [r0, #8]
20100b44:	bd70      	pop	{r4, r5, r6, pc}
20100b46:	46c0      	nop			; (mov r8, r8)
20100b48:	ffeff526 	.word	0xffeff526
20100b4c:	00000000 	.word	0x00000000
20100b50:	000002aa 	.word	0x000002aa
20100b54:	000005aa 	.word	0x000005aa
20100b58:	00000455 	.word	0x00000455

20100b5c <cord_atan>:
20100b5c:	b5f0      	push	{r4, r5, r6, r7, lr}
20100b5e:	4645      	mov	r5, r8
20100b60:	4657      	mov	r7, sl
20100b62:	464e      	mov	r6, r9
20100b64:	b4e0      	push	{r5, r6, r7}
20100b66:	4b65      	ldr	r3, [pc, #404]	; (20100cfc <cord_atan+0x1a0>)
20100b68:	b090      	sub	sp, #64	; 0x40
20100b6a:	447b      	add	r3, pc
20100b6c:	001c      	movs	r4, r3
20100b6e:	4694      	mov	ip, r2
20100b70:	466a      	mov	r2, sp
20100b72:	468a      	mov	sl, r1
20100b74:	cca2      	ldmia	r4!, {r1, r5, r7}
20100b76:	c2a2      	stmia	r2!, {r1, r5, r7}
20100b78:	cca2      	ldmia	r4!, {r1, r5, r7}
20100b7a:	c2a2      	stmia	r2!, {r1, r5, r7}
20100b7c:	cc22      	ldmia	r4!, {r1, r5}
20100b7e:	c222      	stmia	r2!, {r1, r5}
20100b80:	3320      	adds	r3, #32
20100b82:	aa08      	add	r2, sp, #32
20100b84:	4690      	mov	r8, r2
20100b86:	cb32      	ldmia	r3!, {r1, r4, r5}
20100b88:	c232      	stmia	r2!, {r1, r4, r5}
20100b8a:	cb32      	ldmia	r3!, {r1, r4, r5}
20100b8c:	c232      	stmia	r2!, {r1, r4, r5}
20100b8e:	cb12      	ldmia	r3!, {r1, r4}
20100b90:	c212      	stmia	r2!, {r1, r4}
20100b92:	6802      	ldr	r2, [r0, #0]
20100b94:	6845      	ldr	r5, [r0, #4]
20100b96:	17d1      	asrs	r1, r2, #31
20100b98:	1853      	adds	r3, r2, r1
20100b9a:	466e      	mov	r6, sp
20100b9c:	404b      	eors	r3, r1
20100b9e:	2d00      	cmp	r5, #0
20100ba0:	dd6c      	ble.n	20100c7c <cord_atan+0x120>
20100ba2:	195f      	adds	r7, r3, r5
20100ba4:	1aeb      	subs	r3, r5, r3
20100ba6:	9d00      	ldr	r5, [sp, #0]
20100ba8:	2b00      	cmp	r3, #0
20100baa:	d100      	bne.n	20100bae <cord_atan+0x52>
20100bac:	e094      	b.n	20100cd8 <cord_atan+0x17c>
20100bae:	105c      	asrs	r4, r3, #1
20100bb0:	2b00      	cmp	r3, #0
20100bb2:	dd68      	ble.n	20100c86 <cord_atan+0x12a>
20100bb4:	1078      	asrs	r0, r7, #1
20100bb6:	1a1b      	subs	r3, r3, r0
20100bb8:	6870      	ldr	r0, [r6, #4]
20100bba:	19e4      	adds	r4, r4, r7
20100bbc:	4681      	mov	r9, r0
20100bbe:	444d      	add	r5, r9
20100bc0:	2b00      	cmp	r3, #0
20100bc2:	d100      	bne.n	20100bc6 <cord_atan+0x6a>
20100bc4:	e08a      	b.n	20100cdc <cord_atan+0x180>
20100bc6:	1098      	asrs	r0, r3, #2
20100bc8:	2b00      	cmp	r3, #0
20100bca:	dd62      	ble.n	20100c92 <cord_atan+0x136>
20100bcc:	1907      	adds	r7, r0, r4
20100bce:	10a4      	asrs	r4, r4, #2
20100bd0:	1b18      	subs	r0, r3, r4
20100bd2:	68b3      	ldr	r3, [r6, #8]
20100bd4:	4699      	mov	r9, r3
20100bd6:	444d      	add	r5, r9
20100bd8:	2800      	cmp	r0, #0
20100bda:	d100      	bne.n	20100bde <cord_atan+0x82>
20100bdc:	e081      	b.n	20100ce2 <cord_atan+0x186>
20100bde:	10c3      	asrs	r3, r0, #3
20100be0:	2800      	cmp	r0, #0
20100be2:	dd5c      	ble.n	20100c9e <cord_atan+0x142>
20100be4:	10fc      	asrs	r4, r7, #3
20100be6:	1b00      	subs	r0, r0, r4
20100be8:	68f4      	ldr	r4, [r6, #12]
20100bea:	19db      	adds	r3, r3, r7
20100bec:	46a1      	mov	r9, r4
20100bee:	444d      	add	r5, r9
20100bf0:	2800      	cmp	r0, #0
20100bf2:	d100      	bne.n	20100bf6 <cord_atan+0x9a>
20100bf4:	e077      	b.n	20100ce6 <cord_atan+0x18a>
20100bf6:	1104      	asrs	r4, r0, #4
20100bf8:	2800      	cmp	r0, #0
20100bfa:	dd56      	ble.n	20100caa <cord_atan+0x14e>
20100bfc:	18e7      	adds	r7, r4, r3
20100bfe:	111b      	asrs	r3, r3, #4
20100c00:	1ac4      	subs	r4, r0, r3
20100c02:	6933      	ldr	r3, [r6, #16]
20100c04:	4699      	mov	r9, r3
20100c06:	444d      	add	r5, r9
20100c08:	2c00      	cmp	r4, #0
20100c0a:	d100      	bne.n	20100c0e <cord_atan+0xb2>
20100c0c:	e06e      	b.n	20100cec <cord_atan+0x190>
20100c0e:	1163      	asrs	r3, r4, #5
20100c10:	2c00      	cmp	r4, #0
20100c12:	dd50      	ble.n	20100cb6 <cord_atan+0x15a>
20100c14:	1178      	asrs	r0, r7, #5
20100c16:	1a20      	subs	r0, r4, r0
20100c18:	6974      	ldr	r4, [r6, #20]
20100c1a:	19db      	adds	r3, r3, r7
20100c1c:	46a1      	mov	r9, r4
20100c1e:	444d      	add	r5, r9
20100c20:	2800      	cmp	r0, #0
20100c22:	d065      	beq.n	20100cf0 <cord_atan+0x194>
20100c24:	1184      	asrs	r4, r0, #6
20100c26:	2800      	cmp	r0, #0
20100c28:	dd4b      	ble.n	20100cc2 <cord_atan+0x166>
20100c2a:	18e7      	adds	r7, r4, r3
20100c2c:	119b      	asrs	r3, r3, #6
20100c2e:	1ac0      	subs	r0, r0, r3
20100c30:	69b3      	ldr	r3, [r6, #24]
20100c32:	4699      	mov	r9, r3
20100c34:	444d      	add	r5, r9
20100c36:	2800      	cmp	r0, #0
20100c38:	d05d      	beq.n	20100cf6 <cord_atan+0x19a>
20100c3a:	dd48      	ble.n	20100cce <cord_atan+0x172>
20100c3c:	69f3      	ldr	r3, [r6, #28]
20100c3e:	11c0      	asrs	r0, r0, #7
20100c40:	19c7      	adds	r7, r0, r7
20100c42:	18ed      	adds	r5, r5, r3
20100c44:	2307      	movs	r3, #7
20100c46:	2a00      	cmp	r2, #0
20100c48:	db14      	blt.n	20100c74 <cord_atan+0x118>
20100c4a:	2d00      	cmp	r5, #0
20100c4c:	da03      	bge.n	20100c56 <cord_atan+0xfa>
20100c4e:	2280      	movs	r2, #128	; 0x80
20100c50:	00d2      	lsls	r2, r2, #3
20100c52:	4691      	mov	r9, r2
20100c54:	444d      	add	r5, r9
20100c56:	4652      	mov	r2, sl
20100c58:	6015      	str	r5, [r2, #0]
20100c5a:	4642      	mov	r2, r8
20100c5c:	009b      	lsls	r3, r3, #2
20100c5e:	58d0      	ldr	r0, [r2, r3]
20100c60:	4663      	mov	r3, ip
20100c62:	4378      	muls	r0, r7
20100c64:	1280      	asrs	r0, r0, #10
20100c66:	6018      	str	r0, [r3, #0]
20100c68:	b010      	add	sp, #64	; 0x40
20100c6a:	bc1c      	pop	{r2, r3, r4}
20100c6c:	4690      	mov	r8, r2
20100c6e:	4699      	mov	r9, r3
20100c70:	46a2      	mov	sl, r4
20100c72:	bdf0      	pop	{r4, r5, r6, r7, pc}
20100c74:	2280      	movs	r2, #128	; 0x80
20100c76:	0092      	lsls	r2, r2, #2
20100c78:	1b55      	subs	r5, r2, r5
20100c7a:	e7e6      	b.n	20100c4a <cord_atan+0xee>
20100c7c:	9900      	ldr	r1, [sp, #0]
20100c7e:	1b5f      	subs	r7, r3, r5
20100c80:	195b      	adds	r3, r3, r5
20100c82:	424d      	negs	r5, r1
20100c84:	e790      	b.n	20100ba8 <cord_atan+0x4c>
20100c86:	6871      	ldr	r1, [r6, #4]
20100c88:	1078      	asrs	r0, r7, #1
20100c8a:	1b3c      	subs	r4, r7, r4
20100c8c:	18c3      	adds	r3, r0, r3
20100c8e:	1a6d      	subs	r5, r5, r1
20100c90:	e796      	b.n	20100bc0 <cord_atan+0x64>
20100c92:	1a27      	subs	r7, r4, r0
20100c94:	10a0      	asrs	r0, r4, #2
20100c96:	18c0      	adds	r0, r0, r3
20100c98:	68b3      	ldr	r3, [r6, #8]
20100c9a:	1aed      	subs	r5, r5, r3
20100c9c:	e79c      	b.n	20100bd8 <cord_atan+0x7c>
20100c9e:	68f1      	ldr	r1, [r6, #12]
20100ca0:	10fc      	asrs	r4, r7, #3
20100ca2:	1afb      	subs	r3, r7, r3
20100ca4:	1820      	adds	r0, r4, r0
20100ca6:	1a6d      	subs	r5, r5, r1
20100ca8:	e7a2      	b.n	20100bf0 <cord_atan+0x94>
20100caa:	1b1f      	subs	r7, r3, r4
20100cac:	111c      	asrs	r4, r3, #4
20100cae:	6933      	ldr	r3, [r6, #16]
20100cb0:	1824      	adds	r4, r4, r0
20100cb2:	1aed      	subs	r5, r5, r3
20100cb4:	e7a8      	b.n	20100c08 <cord_atan+0xac>
20100cb6:	6971      	ldr	r1, [r6, #20]
20100cb8:	1178      	asrs	r0, r7, #5
20100cba:	1afb      	subs	r3, r7, r3
20100cbc:	1900      	adds	r0, r0, r4
20100cbe:	1a6d      	subs	r5, r5, r1
20100cc0:	e7ae      	b.n	20100c20 <cord_atan+0xc4>
20100cc2:	1b1f      	subs	r7, r3, r4
20100cc4:	119b      	asrs	r3, r3, #6
20100cc6:	1818      	adds	r0, r3, r0
20100cc8:	69b3      	ldr	r3, [r6, #24]
20100cca:	1aed      	subs	r5, r5, r3
20100ccc:	e7b3      	b.n	20100c36 <cord_atan+0xda>
20100cce:	69f3      	ldr	r3, [r6, #28]
20100cd0:	11c4      	asrs	r4, r0, #7
20100cd2:	1b3f      	subs	r7, r7, r4
20100cd4:	1aed      	subs	r5, r5, r3
20100cd6:	e7b5      	b.n	20100c44 <cord_atan+0xe8>
20100cd8:	2300      	movs	r3, #0
20100cda:	e7b4      	b.n	20100c46 <cord_atan+0xea>
20100cdc:	0027      	movs	r7, r4
20100cde:	2301      	movs	r3, #1
20100ce0:	e7b1      	b.n	20100c46 <cord_atan+0xea>
20100ce2:	2302      	movs	r3, #2
20100ce4:	e7af      	b.n	20100c46 <cord_atan+0xea>
20100ce6:	001f      	movs	r7, r3
20100ce8:	2303      	movs	r3, #3
20100cea:	e7ac      	b.n	20100c46 <cord_atan+0xea>
20100cec:	2304      	movs	r3, #4
20100cee:	e7aa      	b.n	20100c46 <cord_atan+0xea>
20100cf0:	001f      	movs	r7, r3
20100cf2:	2305      	movs	r3, #5
20100cf4:	e7a7      	b.n	20100c46 <cord_atan+0xea>
20100cf6:	2306      	movs	r3, #6
20100cf8:	e7a5      	b.n	20100c46 <cord_atan+0xea>
20100cfa:	46c0      	nop			; (mov r8, r8)
20100cfc:	0000176e 	.word	0x0000176e

20100d00 <sinpwm>:
20100d00:	b5f0      	push	{r4, r5, r6, r7, lr}
20100d02:	465f      	mov	r7, fp
20100d04:	4656      	mov	r6, sl
20100d06:	464d      	mov	r5, r9
20100d08:	4644      	mov	r4, r8
20100d0a:	b4f0      	push	{r4, r5, r6, r7}
20100d0c:	b089      	sub	sp, #36	; 0x24
20100d0e:	466c      	mov	r4, sp
20100d10:	4b75      	ldr	r3, [pc, #468]	; (20100ee8 <sinpwm+0x1e8>)
20100d12:	46eb      	mov	fp, sp
20100d14:	447b      	add	r3, pc
20100d16:	469a      	mov	sl, r3
20100d18:	4b74      	ldr	r3, [pc, #464]	; (20100eec <sinpwm+0x1ec>)
20100d1a:	447b      	add	r3, pc
20100d1c:	3320      	adds	r3, #32
20100d1e:	cbe0      	ldmia	r3!, {r5, r6, r7}
20100d20:	c4e0      	stmia	r4!, {r5, r6, r7}
20100d22:	cbe0      	ldmia	r3!, {r5, r6, r7}
20100d24:	c4e0      	stmia	r4!, {r5, r6, r7}
20100d26:	cb60      	ldmia	r3!, {r5, r6}
20100d28:	c460      	stmia	r4!, {r5, r6}
20100d2a:	680b      	ldr	r3, [r1, #0]
20100d2c:	684f      	ldr	r7, [r1, #4]
20100d2e:	17dd      	asrs	r5, r3, #31
20100d30:	195c      	adds	r4, r3, r5
20100d32:	469c      	mov	ip, r3
20100d34:	406c      	eors	r4, r5
20100d36:	2f00      	cmp	r7, #0
20100d38:	dc00      	bgt.n	20100d3c <sinpwm+0x3c>
20100d3a:	e09c      	b.n	20100e76 <sinpwm+0x176>
20100d3c:	19e3      	adds	r3, r4, r7
20100d3e:	1b3c      	subs	r4, r7, r4
20100d40:	46a0      	mov	r8, r4
20100d42:	4644      	mov	r4, r8
20100d44:	2c00      	cmp	r4, #0
20100d46:	d100      	bne.n	20100d4a <sinpwm+0x4a>
20100d48:	e0bc      	b.n	20100ec4 <sinpwm+0x1c4>
20100d4a:	dc00      	bgt.n	20100d4e <sinpwm+0x4e>
20100d4c:	e097      	b.n	20100e7e <sinpwm+0x17e>
20100d4e:	4644      	mov	r4, r8
20100d50:	4645      	mov	r5, r8
20100d52:	1064      	asrs	r4, r4, #1
20100d54:	18e4      	adds	r4, r4, r3
20100d56:	105b      	asrs	r3, r3, #1
20100d58:	1aeb      	subs	r3, r5, r3
20100d5a:	4698      	mov	r8, r3
20100d5c:	4643      	mov	r3, r8
20100d5e:	2b00      	cmp	r3, #0
20100d60:	d100      	bne.n	20100d64 <sinpwm+0x64>
20100d62:	e0b1      	b.n	20100ec8 <sinpwm+0x1c8>
20100d64:	dc00      	bgt.n	20100d68 <sinpwm+0x68>
20100d66:	e08f      	b.n	20100e88 <sinpwm+0x188>
20100d68:	4643      	mov	r3, r8
20100d6a:	4645      	mov	r5, r8
20100d6c:	109b      	asrs	r3, r3, #2
20100d6e:	191b      	adds	r3, r3, r4
20100d70:	10a4      	asrs	r4, r4, #2
20100d72:	1b2c      	subs	r4, r5, r4
20100d74:	46a0      	mov	r8, r4
20100d76:	4644      	mov	r4, r8
20100d78:	2c00      	cmp	r4, #0
20100d7a:	d100      	bne.n	20100d7e <sinpwm+0x7e>
20100d7c:	e0a7      	b.n	20100ece <sinpwm+0x1ce>
20100d7e:	dc00      	bgt.n	20100d82 <sinpwm+0x82>
20100d80:	e087      	b.n	20100e92 <sinpwm+0x192>
20100d82:	4644      	mov	r4, r8
20100d84:	4645      	mov	r5, r8
20100d86:	10e4      	asrs	r4, r4, #3
20100d88:	18e4      	adds	r4, r4, r3
20100d8a:	10db      	asrs	r3, r3, #3
20100d8c:	1aeb      	subs	r3, r5, r3
20100d8e:	4698      	mov	r8, r3
20100d90:	4643      	mov	r3, r8
20100d92:	2b00      	cmp	r3, #0
20100d94:	d100      	bne.n	20100d98 <sinpwm+0x98>
20100d96:	e09c      	b.n	20100ed2 <sinpwm+0x1d2>
20100d98:	dc00      	bgt.n	20100d9c <sinpwm+0x9c>
20100d9a:	e07f      	b.n	20100e9c <sinpwm+0x19c>
20100d9c:	4643      	mov	r3, r8
20100d9e:	4645      	mov	r5, r8
20100da0:	111b      	asrs	r3, r3, #4
20100da2:	191b      	adds	r3, r3, r4
20100da4:	1124      	asrs	r4, r4, #4
20100da6:	1b2c      	subs	r4, r5, r4
20100da8:	2c00      	cmp	r4, #0
20100daa:	d100      	bne.n	20100dae <sinpwm+0xae>
20100dac:	e094      	b.n	20100ed8 <sinpwm+0x1d8>
20100dae:	1165      	asrs	r5, r4, #5
20100db0:	46a8      	mov	r8, r5
20100db2:	2c00      	cmp	r4, #0
20100db4:	dc00      	bgt.n	20100db8 <sinpwm+0xb8>
20100db6:	e076      	b.n	20100ea6 <sinpwm+0x1a6>
20100db8:	4498      	add	r8, r3
20100dba:	46c1      	mov	r9, r8
20100dbc:	115b      	asrs	r3, r3, #5
20100dbe:	1ae4      	subs	r4, r4, r3
20100dc0:	2c00      	cmp	r4, #0
20100dc2:	d100      	bne.n	20100dc6 <sinpwm+0xc6>
20100dc4:	e08a      	b.n	20100edc <sinpwm+0x1dc>
20100dc6:	11a3      	asrs	r3, r4, #6
20100dc8:	2c00      	cmp	r4, #0
20100dca:	dc00      	bgt.n	20100dce <sinpwm+0xce>
20100dcc:	e070      	b.n	20100eb0 <sinpwm+0x1b0>
20100dce:	444b      	add	r3, r9
20100dd0:	4698      	mov	r8, r3
20100dd2:	464b      	mov	r3, r9
20100dd4:	119b      	asrs	r3, r3, #6
20100dd6:	1ae4      	subs	r4, r4, r3
20100dd8:	2c00      	cmp	r4, #0
20100dda:	d100      	bne.n	20100dde <sinpwm+0xde>
20100ddc:	e081      	b.n	20100ee2 <sinpwm+0x1e2>
20100dde:	dd6d      	ble.n	20100ebc <sinpwm+0x1bc>
20100de0:	11e4      	asrs	r4, r4, #7
20100de2:	0023      	movs	r3, r4
20100de4:	4443      	add	r3, r8
20100de6:	2407      	movs	r4, #7
20100de8:	465d      	mov	r5, fp
20100dea:	00a4      	lsls	r4, r4, #2
20100dec:	592c      	ldr	r4, [r5, r4]
20100dee:	4655      	mov	r5, sl
20100df0:	4666      	mov	r6, ip
20100df2:	4363      	muls	r3, r4
20100df4:	4c3e      	ldr	r4, [pc, #248]	; (20100ef0 <sinpwm+0x1f0>)
20100df6:	151b      	asrs	r3, r3, #20
20100df8:	592d      	ldr	r5, [r5, r4]
20100dfa:	0094      	lsls	r4, r2, #2
20100dfc:	5964      	ldr	r4, [r4, r5]
20100dfe:	4374      	muls	r4, r6
20100e00:	26c0      	movs	r6, #192	; 0xc0
20100e02:	00b6      	lsls	r6, r6, #2
20100e04:	1996      	adds	r6, r2, r6
20100e06:	05b6      	lsls	r6, r6, #22
20100e08:	0d36      	lsrs	r6, r6, #20
20100e0a:	5976      	ldr	r6, [r6, r5]
20100e0c:	4377      	muls	r7, r6
20100e0e:	1be7      	subs	r7, r4, r7
20100e10:	4c38      	ldr	r4, [pc, #224]	; (20100ef4 <sinpwm+0x1f4>)
20100e12:	153f      	asrs	r7, r7, #20
20100e14:	1914      	adds	r4, r2, r4
20100e16:	05a4      	lsls	r4, r4, #22
20100e18:	6007      	str	r7, [r0, #0]
20100e1a:	0d24      	lsrs	r4, r4, #20
20100e1c:	5964      	ldr	r4, [r4, r5]
20100e1e:	680e      	ldr	r6, [r1, #0]
20100e20:	684f      	ldr	r7, [r1, #4]
20100e22:	4366      	muls	r6, r4
20100e24:	4c34      	ldr	r4, [pc, #208]	; (20100ef8 <sinpwm+0x1f8>)
20100e26:	1914      	adds	r4, r2, r4
20100e28:	05a4      	lsls	r4, r4, #22
20100e2a:	0d24      	lsrs	r4, r4, #20
20100e2c:	5964      	ldr	r4, [r4, r5]
20100e2e:	437c      	muls	r4, r7
20100e30:	1b34      	subs	r4, r6, r4
20100e32:	1524      	asrs	r4, r4, #20
20100e34:	6044      	str	r4, [r0, #4]
20100e36:	0014      	movs	r4, r2
20100e38:	3456      	adds	r4, #86	; 0x56
20100e3a:	34ff      	adds	r4, #255	; 0xff
20100e3c:	05a4      	lsls	r4, r4, #22
20100e3e:	0d24      	lsrs	r4, r4, #20
20100e40:	680e      	ldr	r6, [r1, #0]
20100e42:	5964      	ldr	r4, [r4, r5]
20100e44:	4374      	muls	r4, r6
20100e46:	4e2d      	ldr	r6, [pc, #180]	; (20100efc <sinpwm+0x1fc>)
20100e48:	46b4      	mov	ip, r6
20100e4a:	4462      	add	r2, ip
20100e4c:	0592      	lsls	r2, r2, #22
20100e4e:	0d12      	lsrs	r2, r2, #20
20100e50:	5955      	ldr	r5, [r2, r5]
20100e52:	684a      	ldr	r2, [r1, #4]
20100e54:	436a      	muls	r2, r5
20100e56:	1aa2      	subs	r2, r4, r2
20100e58:	1512      	asrs	r2, r2, #20
20100e5a:	6082      	str	r2, [r0, #8]
20100e5c:	22fa      	movs	r2, #250	; 0xfa
20100e5e:	2001      	movs	r0, #1
20100e60:	0052      	lsls	r2, r2, #1
20100e62:	4293      	cmp	r3, r2
20100e64:	dc00      	bgt.n	20100e68 <sinpwm+0x168>
20100e66:	2000      	movs	r0, #0
20100e68:	b009      	add	sp, #36	; 0x24
20100e6a:	bc3c      	pop	{r2, r3, r4, r5}
20100e6c:	4690      	mov	r8, r2
20100e6e:	4699      	mov	r9, r3
20100e70:	46a2      	mov	sl, r4
20100e72:	46ab      	mov	fp, r5
20100e74:	bdf0      	pop	{r4, r5, r6, r7, pc}
20100e76:	46a0      	mov	r8, r4
20100e78:	1be3      	subs	r3, r4, r7
20100e7a:	44b8      	add	r8, r7
20100e7c:	e761      	b.n	20100d42 <sinpwm+0x42>
20100e7e:	1064      	asrs	r4, r4, #1
20100e80:	1b1c      	subs	r4, r3, r4
20100e82:	105b      	asrs	r3, r3, #1
20100e84:	4498      	add	r8, r3
20100e86:	e769      	b.n	20100d5c <sinpwm+0x5c>
20100e88:	109b      	asrs	r3, r3, #2
20100e8a:	1ae3      	subs	r3, r4, r3
20100e8c:	10a4      	asrs	r4, r4, #2
20100e8e:	44a0      	add	r8, r4
20100e90:	e771      	b.n	20100d76 <sinpwm+0x76>
20100e92:	10e4      	asrs	r4, r4, #3
20100e94:	1b1c      	subs	r4, r3, r4
20100e96:	10db      	asrs	r3, r3, #3
20100e98:	4498      	add	r8, r3
20100e9a:	e779      	b.n	20100d90 <sinpwm+0x90>
20100e9c:	111b      	asrs	r3, r3, #4
20100e9e:	1ae3      	subs	r3, r4, r3
20100ea0:	1124      	asrs	r4, r4, #4
20100ea2:	4444      	add	r4, r8
20100ea4:	e780      	b.n	20100da8 <sinpwm+0xa8>
20100ea6:	1b5d      	subs	r5, r3, r5
20100ea8:	115b      	asrs	r3, r3, #5
20100eaa:	46a9      	mov	r9, r5
20100eac:	191c      	adds	r4, r3, r4
20100eae:	e787      	b.n	20100dc0 <sinpwm+0xc0>
20100eb0:	464d      	mov	r5, r9
20100eb2:	1aeb      	subs	r3, r5, r3
20100eb4:	4698      	mov	r8, r3
20100eb6:	11ab      	asrs	r3, r5, #6
20100eb8:	191c      	adds	r4, r3, r4
20100eba:	e78d      	b.n	20100dd8 <sinpwm+0xd8>
20100ebc:	4643      	mov	r3, r8
20100ebe:	11e4      	asrs	r4, r4, #7
20100ec0:	1b1b      	subs	r3, r3, r4
20100ec2:	e790      	b.n	20100de6 <sinpwm+0xe6>
20100ec4:	2400      	movs	r4, #0
20100ec6:	e78f      	b.n	20100de8 <sinpwm+0xe8>
20100ec8:	0023      	movs	r3, r4
20100eca:	2401      	movs	r4, #1
20100ecc:	e78c      	b.n	20100de8 <sinpwm+0xe8>
20100ece:	2402      	movs	r4, #2
20100ed0:	e78a      	b.n	20100de8 <sinpwm+0xe8>
20100ed2:	0023      	movs	r3, r4
20100ed4:	2403      	movs	r4, #3
20100ed6:	e787      	b.n	20100de8 <sinpwm+0xe8>
20100ed8:	2404      	movs	r4, #4
20100eda:	e785      	b.n	20100de8 <sinpwm+0xe8>
20100edc:	464b      	mov	r3, r9
20100ede:	2405      	movs	r4, #5
20100ee0:	e782      	b.n	20100de8 <sinpwm+0xe8>
20100ee2:	4643      	mov	r3, r8
20100ee4:	2406      	movs	r4, #6
20100ee6:	e77f      	b.n	20100de8 <sinpwm+0xe8>
20100ee8:	ffeff2ec 	.word	0xffeff2ec
20100eec:	000015be 	.word	0x000015be
20100ef0:	00000000 	.word	0x00000000
20100ef4:	000002aa 	.word	0x000002aa
20100ef8:	000005aa 	.word	0x000005aa
20100efc:	00000455 	.word	0x00000455

20100f00 <svpwm>:
20100f00:	b5f0      	push	{r4, r5, r6, r7, lr}
20100f02:	465f      	mov	r7, fp
20100f04:	4656      	mov	r6, sl
20100f06:	4644      	mov	r4, r8
20100f08:	464d      	mov	r5, r9
20100f0a:	b4f0      	push	{r4, r5, r6, r7}
20100f0c:	0005      	movs	r5, r0
20100f0e:	48d0      	ldr	r0, [pc, #832]	; (20101250 <svpwm+0x350>)
20100f10:	b091      	sub	sp, #68	; 0x44
20100f12:	4478      	add	r0, pc
20100f14:	0006      	movs	r6, r0
20100f16:	466c      	mov	r4, sp
20100f18:	4bce      	ldr	r3, [pc, #824]	; (20101254 <svpwm+0x354>)
20100f1a:	4693      	mov	fp, r2
20100f1c:	447b      	add	r3, pc
20100f1e:	469a      	mov	sl, r3
20100f20:	468c      	mov	ip, r1
20100f22:	ce0e      	ldmia	r6!, {r1, r2, r3}
20100f24:	c40e      	stmia	r4!, {r1, r2, r3}
20100f26:	ce0e      	ldmia	r6!, {r1, r2, r3}
20100f28:	c40e      	stmia	r4!, {r1, r2, r3}
20100f2a:	ce0c      	ldmia	r6!, {r2, r3}
20100f2c:	c40c      	stmia	r4!, {r2, r3}
20100f2e:	ae08      	add	r6, sp, #32
20100f30:	0034      	movs	r4, r6
20100f32:	3020      	adds	r0, #32
20100f34:	c80e      	ldmia	r0!, {r1, r2, r3}
20100f36:	c40e      	stmia	r4!, {r1, r2, r3}
20100f38:	c80e      	ldmia	r0!, {r1, r2, r3}
20100f3a:	c40e      	stmia	r4!, {r1, r2, r3}
20100f3c:	c80c      	ldmia	r0!, {r2, r3}
20100f3e:	c40c      	stmia	r4!, {r2, r3}
20100f40:	4663      	mov	r3, ip
20100f42:	681c      	ldr	r4, [r3, #0]
20100f44:	466f      	mov	r7, sp
20100f46:	17e2      	asrs	r2, r4, #31
20100f48:	18a3      	adds	r3, r4, r2
20100f4a:	4053      	eors	r3, r2
20100f4c:	4698      	mov	r8, r3
20100f4e:	4663      	mov	r3, ip
20100f50:	685b      	ldr	r3, [r3, #4]
20100f52:	2b00      	cmp	r3, #0
20100f54:	dc00      	bgt.n	20100f58 <svpwm+0x58>
20100f56:	e0b5      	b.n	201010c4 <svpwm+0x1c4>
20100f58:	4641      	mov	r1, r8
20100f5a:	18c8      	adds	r0, r1, r3
20100f5c:	1a5b      	subs	r3, r3, r1
20100f5e:	4698      	mov	r8, r3
20100f60:	9b00      	ldr	r3, [sp, #0]
20100f62:	4641      	mov	r1, r8
20100f64:	2900      	cmp	r1, #0
20100f66:	d100      	bne.n	20100f6a <svpwm+0x6a>
20100f68:	e15f      	b.n	2010122a <svpwm+0x32a>
20100f6a:	dc00      	bgt.n	20100f6e <svpwm+0x6e>
20100f6c:	e0b0      	b.n	201010d0 <svpwm+0x1d0>
20100f6e:	4641      	mov	r1, r8
20100f70:	1049      	asrs	r1, r1, #1
20100f72:	4689      	mov	r9, r1
20100f74:	1041      	asrs	r1, r0, #1
20100f76:	4481      	add	r9, r0
20100f78:	4640      	mov	r0, r8
20100f7a:	1a41      	subs	r1, r0, r1
20100f7c:	4688      	mov	r8, r1
20100f7e:	6879      	ldr	r1, [r7, #4]
20100f80:	468c      	mov	ip, r1
20100f82:	4463      	add	r3, ip
20100f84:	4641      	mov	r1, r8
20100f86:	2900      	cmp	r1, #0
20100f88:	d100      	bne.n	20100f8c <svpwm+0x8c>
20100f8a:	e150      	b.n	2010122e <svpwm+0x32e>
20100f8c:	dc00      	bgt.n	20100f90 <svpwm+0x90>
20100f8e:	e0a7      	b.n	201010e0 <svpwm+0x1e0>
20100f90:	4641      	mov	r1, r8
20100f92:	1089      	asrs	r1, r1, #2
20100f94:	4449      	add	r1, r9
20100f96:	0008      	movs	r0, r1
20100f98:	4649      	mov	r1, r9
20100f9a:	4642      	mov	r2, r8
20100f9c:	1089      	asrs	r1, r1, #2
20100f9e:	1a51      	subs	r1, r2, r1
20100fa0:	68ba      	ldr	r2, [r7, #8]
20100fa2:	4688      	mov	r8, r1
20100fa4:	4694      	mov	ip, r2
20100fa6:	4463      	add	r3, ip
20100fa8:	4641      	mov	r1, r8
20100faa:	2900      	cmp	r1, #0
20100fac:	d100      	bne.n	20100fb0 <svpwm+0xb0>
20100fae:	e141      	b.n	20101234 <svpwm+0x334>
20100fb0:	4642      	mov	r2, r8
20100fb2:	dc00      	bgt.n	20100fb6 <svpwm+0xb6>
20100fb4:	e09c      	b.n	201010f0 <svpwm+0x1f0>
20100fb6:	10c9      	asrs	r1, r1, #3
20100fb8:	1809      	adds	r1, r1, r0
20100fba:	10c0      	asrs	r0, r0, #3
20100fbc:	1a12      	subs	r2, r2, r0
20100fbe:	4690      	mov	r8, r2
20100fc0:	68fa      	ldr	r2, [r7, #12]
20100fc2:	4694      	mov	ip, r2
20100fc4:	4463      	add	r3, ip
20100fc6:	4640      	mov	r0, r8
20100fc8:	2800      	cmp	r0, #0
20100fca:	d100      	bne.n	20100fce <svpwm+0xce>
20100fcc:	e134      	b.n	20101238 <svpwm+0x338>
20100fce:	4642      	mov	r2, r8
20100fd0:	dc00      	bgt.n	20100fd4 <svpwm+0xd4>
20100fd2:	e094      	b.n	201010fe <svpwm+0x1fe>
20100fd4:	1100      	asrs	r0, r0, #4
20100fd6:	1840      	adds	r0, r0, r1
20100fd8:	1109      	asrs	r1, r1, #4
20100fda:	1a52      	subs	r2, r2, r1
20100fdc:	4690      	mov	r8, r2
20100fde:	693a      	ldr	r2, [r7, #16]
20100fe0:	4694      	mov	ip, r2
20100fe2:	4463      	add	r3, ip
20100fe4:	4641      	mov	r1, r8
20100fe6:	2900      	cmp	r1, #0
20100fe8:	d100      	bne.n	20100fec <svpwm+0xec>
20100fea:	e128      	b.n	2010123e <svpwm+0x33e>
20100fec:	4642      	mov	r2, r8
20100fee:	dc00      	bgt.n	20100ff2 <svpwm+0xf2>
20100ff0:	e08c      	b.n	2010110c <svpwm+0x20c>
20100ff2:	1149      	asrs	r1, r1, #5
20100ff4:	4689      	mov	r9, r1
20100ff6:	1141      	asrs	r1, r0, #5
20100ff8:	1a51      	subs	r1, r2, r1
20100ffa:	697a      	ldr	r2, [r7, #20]
20100ffc:	4481      	add	r9, r0
20100ffe:	4694      	mov	ip, r2
20101000:	4463      	add	r3, ip
20101002:	2900      	cmp	r1, #0
20101004:	d100      	bne.n	20101008 <svpwm+0x108>
20101006:	e11c      	b.n	20101242 <svpwm+0x342>
20101008:	1188      	asrs	r0, r1, #6
2010100a:	2900      	cmp	r1, #0
2010100c:	dc00      	bgt.n	20101010 <svpwm+0x110>
2010100e:	e086      	b.n	2010111e <svpwm+0x21e>
20101010:	464a      	mov	r2, r9
20101012:	4448      	add	r0, r9
20101014:	4680      	mov	r8, r0
20101016:	1190      	asrs	r0, r2, #6
20101018:	69ba      	ldr	r2, [r7, #24]
2010101a:	1a09      	subs	r1, r1, r0
2010101c:	4694      	mov	ip, r2
2010101e:	4463      	add	r3, ip
20101020:	2900      	cmp	r1, #0
20101022:	d100      	bne.n	20101026 <svpwm+0x126>
20101024:	e110      	b.n	20101248 <svpwm+0x348>
20101026:	dc00      	bgt.n	2010102a <svpwm+0x12a>
20101028:	e0e2      	b.n	201011f0 <svpwm+0x2f0>
2010102a:	11c9      	asrs	r1, r1, #7
2010102c:	4441      	add	r1, r8
2010102e:	0008      	movs	r0, r1
20101030:	69f9      	ldr	r1, [r7, #28]
20101032:	185b      	adds	r3, r3, r1
20101034:	2107      	movs	r1, #7
20101036:	2c00      	cmp	r4, #0
20101038:	db40      	blt.n	201010bc <svpwm+0x1bc>
2010103a:	2b00      	cmp	r3, #0
2010103c:	da03      	bge.n	20101046 <svpwm+0x146>
2010103e:	2280      	movs	r2, #128	; 0x80
20101040:	00d2      	lsls	r2, r2, #3
20101042:	4694      	mov	ip, r2
20101044:	4463      	add	r3, ip
20101046:	22fa      	movs	r2, #250	; 0xfa
20101048:	0089      	lsls	r1, r1, #2
2010104a:	5871      	ldr	r1, [r6, r1]
2010104c:	445b      	add	r3, fp
2010104e:	4341      	muls	r1, r0
20101050:	059b      	lsls	r3, r3, #22
20101052:	1509      	asrs	r1, r1, #20
20101054:	0d9b      	lsrs	r3, r3, #22
20101056:	0052      	lsls	r2, r2, #1
20101058:	2400      	movs	r4, #0
2010105a:	4291      	cmp	r1, r2
2010105c:	dd01      	ble.n	20101062 <svpwm+0x162>
2010105e:	0011      	movs	r1, r2
20101060:	3401      	adds	r4, #1
20101062:	0058      	lsls	r0, r3, #1
20101064:	18c0      	adds	r0, r0, r3
20101066:	1240      	asrs	r0, r0, #9
20101068:	3801      	subs	r0, #1
2010106a:	4a7b      	ldr	r2, [pc, #492]	; (20101258 <svpwm+0x358>)
2010106c:	2804      	cmp	r0, #4
2010106e:	d920      	bls.n	201010b2 <svpwm+0x1b2>
20101070:	26c0      	movs	r6, #192	; 0xc0
20101072:	4650      	mov	r0, sl
20101074:	00b6      	lsls	r6, r6, #2
20101076:	46b4      	mov	ip, r6
20101078:	5880      	ldr	r0, [r0, r2]
2010107a:	4a78      	ldr	r2, [pc, #480]	; (2010125c <svpwm+0x35c>)
2010107c:	1ad2      	subs	r2, r2, r3
2010107e:	4463      	add	r3, ip
20101080:	0592      	lsls	r2, r2, #22
20101082:	059b      	lsls	r3, r3, #22
20101084:	0d12      	lsrs	r2, r2, #20
20101086:	0d1b      	lsrs	r3, r3, #20
20101088:	581b      	ldr	r3, [r3, r0]
2010108a:	5812      	ldr	r2, [r2, r0]
2010108c:	434a      	muls	r2, r1
2010108e:	4359      	muls	r1, r3
20101090:	1292      	asrs	r2, r2, #10
20101092:	1289      	asrs	r1, r1, #10
20101094:	1853      	adds	r3, r2, r1
20101096:	602b      	str	r3, [r5, #0]
20101098:	1a8b      	subs	r3, r1, r2
2010109a:	4252      	negs	r2, r2
2010109c:	1a52      	subs	r2, r2, r1
2010109e:	606b      	str	r3, [r5, #4]
201010a0:	60aa      	str	r2, [r5, #8]
201010a2:	0020      	movs	r0, r4
201010a4:	b011      	add	sp, #68	; 0x44
201010a6:	bc3c      	pop	{r2, r3, r4, r5}
201010a8:	4690      	mov	r8, r2
201010aa:	4699      	mov	r9, r3
201010ac:	46a2      	mov	sl, r4
201010ae:	46ab      	mov	fp, r5
201010b0:	bdf0      	pop	{r4, r5, r6, r7, pc}
201010b2:	f000 f909 	bl	201012c8 <__gnu_thumb1_case_uqi>
201010b6:	856c      	.short	0x856c
201010b8:	553d      	.short	0x553d
201010ba:	a3          	.byte	0xa3
201010bb:	00          	.byte	0x00
201010bc:	2480      	movs	r4, #128	; 0x80
201010be:	00a4      	lsls	r4, r4, #2
201010c0:	1ae3      	subs	r3, r4, r3
201010c2:	e7ba      	b.n	2010103a <svpwm+0x13a>
201010c4:	4642      	mov	r2, r8
201010c6:	4498      	add	r8, r3
201010c8:	1ad0      	subs	r0, r2, r3
201010ca:	9b00      	ldr	r3, [sp, #0]
201010cc:	425b      	negs	r3, r3
201010ce:	e748      	b.n	20100f62 <svpwm+0x62>
201010d0:	1049      	asrs	r1, r1, #1
201010d2:	1a42      	subs	r2, r0, r1
201010d4:	4691      	mov	r9, r2
201010d6:	687a      	ldr	r2, [r7, #4]
201010d8:	1041      	asrs	r1, r0, #1
201010da:	4488      	add	r8, r1
201010dc:	1a9b      	subs	r3, r3, r2
201010de:	e751      	b.n	20100f84 <svpwm+0x84>
201010e0:	464a      	mov	r2, r9
201010e2:	1089      	asrs	r1, r1, #2
201010e4:	1a50      	subs	r0, r2, r1
201010e6:	1091      	asrs	r1, r2, #2
201010e8:	68ba      	ldr	r2, [r7, #8]
201010ea:	4488      	add	r8, r1
201010ec:	1a9b      	subs	r3, r3, r2
201010ee:	e75b      	b.n	20100fa8 <svpwm+0xa8>
201010f0:	10c9      	asrs	r1, r1, #3
201010f2:	68fa      	ldr	r2, [r7, #12]
201010f4:	1a41      	subs	r1, r0, r1
201010f6:	10c0      	asrs	r0, r0, #3
201010f8:	4480      	add	r8, r0
201010fa:	1a9b      	subs	r3, r3, r2
201010fc:	e763      	b.n	20100fc6 <svpwm+0xc6>
201010fe:	1100      	asrs	r0, r0, #4
20101100:	693a      	ldr	r2, [r7, #16]
20101102:	1a08      	subs	r0, r1, r0
20101104:	1109      	asrs	r1, r1, #4
20101106:	4488      	add	r8, r1
20101108:	1a9b      	subs	r3, r3, r2
2010110a:	e76b      	b.n	20100fe4 <svpwm+0xe4>
2010110c:	1149      	asrs	r1, r1, #5
2010110e:	1a42      	subs	r2, r0, r1
20101110:	1140      	asrs	r0, r0, #5
20101112:	0001      	movs	r1, r0
20101114:	4691      	mov	r9, r2
20101116:	697a      	ldr	r2, [r7, #20]
20101118:	4441      	add	r1, r8
2010111a:	1a9b      	subs	r3, r3, r2
2010111c:	e771      	b.n	20101002 <svpwm+0x102>
2010111e:	464a      	mov	r2, r9
20101120:	1a12      	subs	r2, r2, r0
20101122:	4690      	mov	r8, r2
20101124:	464a      	mov	r2, r9
20101126:	1190      	asrs	r0, r2, #6
20101128:	69ba      	ldr	r2, [r7, #24]
2010112a:	1841      	adds	r1, r0, r1
2010112c:	1a9b      	subs	r3, r3, r2
2010112e:	e777      	b.n	20101020 <svpwm+0x120>
20101130:	4650      	mov	r0, sl
20101132:	5880      	ldr	r0, [r0, r2]
20101134:	4a4a      	ldr	r2, [pc, #296]	; (20101260 <svpwm+0x360>)
20101136:	1ad2      	subs	r2, r2, r3
20101138:	3301      	adds	r3, #1
2010113a:	0592      	lsls	r2, r2, #22
2010113c:	33ff      	adds	r3, #255	; 0xff
2010113e:	0d12      	lsrs	r2, r2, #20
20101140:	059b      	lsls	r3, r3, #22
20101142:	5812      	ldr	r2, [r2, r0]
20101144:	0d1b      	lsrs	r3, r3, #20
20101146:	581b      	ldr	r3, [r3, r0]
20101148:	434a      	muls	r2, r1
2010114a:	434b      	muls	r3, r1
2010114c:	1292      	asrs	r2, r2, #10
2010114e:	1299      	asrs	r1, r3, #10
20101150:	4253      	negs	r3, r2
20101152:	1a5b      	subs	r3, r3, r1
20101154:	602b      	str	r3, [r5, #0]
20101156:	1a53      	subs	r3, r2, r1
20101158:	1851      	adds	r1, r2, r1
2010115a:	606b      	str	r3, [r5, #4]
2010115c:	60a9      	str	r1, [r5, #8]
2010115e:	e7a0      	b.n	201010a2 <svpwm+0x1a2>
20101160:	4650      	mov	r0, sl
20101162:	5880      	ldr	r0, [r0, r2]
20101164:	4a3f      	ldr	r2, [pc, #252]	; (20101264 <svpwm+0x364>)
20101166:	1ad2      	subs	r2, r2, r3
20101168:	3356      	adds	r3, #86	; 0x56
2010116a:	0592      	lsls	r2, r2, #22
2010116c:	059b      	lsls	r3, r3, #22
2010116e:	0d12      	lsrs	r2, r2, #20
20101170:	0d1b      	lsrs	r3, r3, #20
20101172:	5816      	ldr	r6, [r2, r0]
20101174:	581b      	ldr	r3, [r3, r0]
20101176:	434e      	muls	r6, r1
20101178:	434b      	muls	r3, r1
2010117a:	12b6      	asrs	r6, r6, #10
2010117c:	1299      	asrs	r1, r3, #10
2010117e:	1b8b      	subs	r3, r1, r6
20101180:	602b      	str	r3, [r5, #0]
20101182:	4273      	negs	r3, r6
20101184:	1a5b      	subs	r3, r3, r1
20101186:	1871      	adds	r1, r6, r1
20101188:	606b      	str	r3, [r5, #4]
2010118a:	60a9      	str	r1, [r5, #8]
2010118c:	e789      	b.n	201010a2 <svpwm+0x1a2>
2010118e:	4650      	mov	r0, sl
20101190:	5886      	ldr	r6, [r0, r2]
20101192:	4a35      	ldr	r2, [pc, #212]	; (20101268 <svpwm+0x368>)
20101194:	1ad2      	subs	r2, r2, r3
20101196:	0592      	lsls	r2, r2, #22
20101198:	0d12      	lsrs	r2, r2, #20
2010119a:	5990      	ldr	r0, [r2, r6]
2010119c:	4a33      	ldr	r2, [pc, #204]	; (2010126c <svpwm+0x36c>)
2010119e:	4348      	muls	r0, r1
201011a0:	4694      	mov	ip, r2
201011a2:	4463      	add	r3, ip
201011a4:	059b      	lsls	r3, r3, #22
201011a6:	0d1b      	lsrs	r3, r3, #20
201011a8:	599b      	ldr	r3, [r3, r6]
201011aa:	1280      	asrs	r0, r0, #10
201011ac:	4359      	muls	r1, r3
201011ae:	1289      	asrs	r1, r1, #10
201011b0:	1a43      	subs	r3, r0, r1
201011b2:	602b      	str	r3, [r5, #0]
201011b4:	1843      	adds	r3, r0, r1
201011b6:	4240      	negs	r0, r0
201011b8:	1a40      	subs	r0, r0, r1
201011ba:	606b      	str	r3, [r5, #4]
201011bc:	60a8      	str	r0, [r5, #8]
201011be:	e770      	b.n	201010a2 <svpwm+0x1a2>
201011c0:	4650      	mov	r0, sl
201011c2:	5880      	ldr	r0, [r0, r2]
201011c4:	4a2a      	ldr	r2, [pc, #168]	; (20101270 <svpwm+0x370>)
201011c6:	1ad2      	subs	r2, r2, r3
201011c8:	33ac      	adds	r3, #172	; 0xac
201011ca:	0592      	lsls	r2, r2, #22
201011cc:	33ff      	adds	r3, #255	; 0xff
201011ce:	0d12      	lsrs	r2, r2, #20
201011d0:	059b      	lsls	r3, r3, #22
201011d2:	5816      	ldr	r6, [r2, r0]
201011d4:	0d1b      	lsrs	r3, r3, #20
201011d6:	581b      	ldr	r3, [r3, r0]
201011d8:	434e      	muls	r6, r1
201011da:	4359      	muls	r1, r3
201011dc:	12b6      	asrs	r6, r6, #10
201011de:	1289      	asrs	r1, r1, #10
201011e0:	4273      	negs	r3, r6
201011e2:	1a5b      	subs	r3, r3, r1
201011e4:	602b      	str	r3, [r5, #0]
201011e6:	1873      	adds	r3, r6, r1
201011e8:	1b89      	subs	r1, r1, r6
201011ea:	606b      	str	r3, [r5, #4]
201011ec:	60a9      	str	r1, [r5, #8]
201011ee:	e758      	b.n	201010a2 <svpwm+0x1a2>
201011f0:	4642      	mov	r2, r8
201011f2:	11c9      	asrs	r1, r1, #7
201011f4:	1a50      	subs	r0, r2, r1
201011f6:	69f9      	ldr	r1, [r7, #28]
201011f8:	1a5b      	subs	r3, r3, r1
201011fa:	e71b      	b.n	20101034 <svpwm+0x134>
201011fc:	4650      	mov	r0, sl
201011fe:	5882      	ldr	r2, [r0, r2]
20101200:	481c      	ldr	r0, [pc, #112]	; (20101274 <svpwm+0x374>)
20101202:	1ac0      	subs	r0, r0, r3
20101204:	3b55      	subs	r3, #85	; 0x55
20101206:	0580      	lsls	r0, r0, #22
20101208:	059b      	lsls	r3, r3, #22
2010120a:	0d00      	lsrs	r0, r0, #20
2010120c:	0d1b      	lsrs	r3, r3, #20
2010120e:	589b      	ldr	r3, [r3, r2]
20101210:	5880      	ldr	r0, [r0, r2]
20101212:	4348      	muls	r0, r1
20101214:	4359      	muls	r1, r3
20101216:	1280      	asrs	r0, r0, #10
20101218:	1289      	asrs	r1, r1, #10
2010121a:	1843      	adds	r3, r0, r1
2010121c:	602b      	str	r3, [r5, #0]
2010121e:	4243      	negs	r3, r0
20101220:	1a5b      	subs	r3, r3, r1
20101222:	1a41      	subs	r1, r0, r1
20101224:	606b      	str	r3, [r5, #4]
20101226:	60a9      	str	r1, [r5, #8]
20101228:	e73b      	b.n	201010a2 <svpwm+0x1a2>
2010122a:	2100      	movs	r1, #0
2010122c:	e703      	b.n	20101036 <svpwm+0x136>
2010122e:	4648      	mov	r0, r9
20101230:	2101      	movs	r1, #1
20101232:	e700      	b.n	20101036 <svpwm+0x136>
20101234:	2102      	movs	r1, #2
20101236:	e6fe      	b.n	20101036 <svpwm+0x136>
20101238:	0008      	movs	r0, r1
2010123a:	2103      	movs	r1, #3
2010123c:	e6fb      	b.n	20101036 <svpwm+0x136>
2010123e:	2104      	movs	r1, #4
20101240:	e6f9      	b.n	20101036 <svpwm+0x136>
20101242:	4648      	mov	r0, r9
20101244:	2105      	movs	r1, #5
20101246:	e6f6      	b.n	20101036 <svpwm+0x136>
20101248:	4640      	mov	r0, r8
2010124a:	2106      	movs	r1, #6
2010124c:	e6f3      	b.n	20101036 <svpwm+0x136>
2010124e:	46c0      	nop			; (mov r8, r8)
20101250:	000013c6 	.word	0x000013c6
20101254:	ffeff0e4 	.word	0xffeff0e4
20101258:	00000000 	.word	0x00000000
2010125c:	000007aa 	.word	0x000007aa
20101260:	000009aa 	.word	0x000009aa
20101264:	00000a54 	.word	0x00000a54
20101268:	00000854 	.word	0x00000854
2010126c:	00000256 	.word	0x00000256
20101270:	000008ff 	.word	0x000008ff
20101274:	00000aff 	.word	0x00000aff

20101278 <get_speed>:
20101278:	4a10      	ldr	r2, [pc, #64]	; (201012bc <get_speed+0x44>)
2010127a:	b510      	push	{r4, lr}
2010127c:	447a      	add	r2, pc
2010127e:	6813      	ldr	r3, [r2, #0]
20101280:	6854      	ldr	r4, [r2, #4]
20101282:	1ac3      	subs	r3, r0, r3
20101284:	6050      	str	r0, [r2, #4]
20101286:	6014      	str	r4, [r2, #0]
20101288:	17da      	asrs	r2, r3, #31
2010128a:	1898      	adds	r0, r3, r2
2010128c:	4050      	eors	r0, r2
2010128e:	22fa      	movs	r2, #250	; 0xfa
20101290:	0092      	lsls	r2, r2, #2
20101292:	4290      	cmp	r0, r2
20101294:	dd04      	ble.n	201012a0 <get_speed+0x28>
20101296:	2b00      	cmp	r3, #0
20101298:	db0a      	blt.n	201012b0 <get_speed+0x38>
2010129a:	4a09      	ldr	r2, [pc, #36]	; (201012c0 <get_speed+0x48>)
2010129c:	4694      	mov	ip, r2
2010129e:	4463      	add	r3, ip
201012a0:	680a      	ldr	r2, [r1, #0]
201012a2:	4808      	ldr	r0, [pc, #32]	; (201012c4 <get_speed+0x4c>)
201012a4:	18d2      	adds	r2, r2, r3
201012a6:	105b      	asrs	r3, r3, #1
201012a8:	4343      	muls	r3, r0
201012aa:	600a      	str	r2, [r1, #0]
201012ac:	1318      	asrs	r0, r3, #12
201012ae:	bd10      	pop	{r4, pc}
201012b0:	2280      	movs	r2, #128	; 0x80
201012b2:	0152      	lsls	r2, r2, #5
201012b4:	4694      	mov	ip, r2
201012b6:	4463      	add	r3, ip
201012b8:	e7f2      	b.n	201012a0 <get_speed+0x28>
201012ba:	46c0      	nop			; (mov r8, r8)
201012bc:	ffefed98 	.word	0xffefed98
201012c0:	fffff000 	.word	0xfffff000
201012c4:	0002ae7c 	.word	0x0002ae7c

201012c8 <__gnu_thumb1_case_uqi>:
201012c8:	b402      	push	{r1}
201012ca:	4671      	mov	r1, lr
201012cc:	0849      	lsrs	r1, r1, #1
201012ce:	0049      	lsls	r1, r1, #1
201012d0:	5c09      	ldrb	r1, [r1, r0]
201012d2:	0049      	lsls	r1, r1, #1
201012d4:	448e      	add	lr, r1
201012d6:	bc02      	pop	{r1}
201012d8:	4770      	bx	lr
201012da:	46c0      	nop			; (mov r8, r8)
