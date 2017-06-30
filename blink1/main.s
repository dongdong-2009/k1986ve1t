
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

20100000 <main>:
20100000:	b598      	push	{r3, r4, r7, lr}
20100002:	af00      	add	r7, sp, #0
20100004:	f000 f848 	bl	20100098 <PortConfig>
20100008:	4b18      	ldr	r3, [pc, #96]	; (2010006c <main+0x6c>)
2010000a:	447b      	add	r3, pc
2010000c:	2200      	movs	r2, #0
2010000e:	601a      	str	r2, [r3, #0]
20100010:	4b17      	ldr	r3, [pc, #92]	; (20100070 <main+0x70>)
20100012:	4a17      	ldr	r2, [pc, #92]	; (20100070 <main+0x70>)
20100014:	6810      	ldr	r0, [r2, #0]
20100016:	4a17      	ldr	r2, [pc, #92]	; (20100074 <main+0x74>)
20100018:	447a      	add	r2, pc
2010001a:	6812      	ldr	r2, [r2, #0]
2010001c:	1c54      	adds	r4, r2, #1
2010001e:	4916      	ldr	r1, [pc, #88]	; (20100078 <main+0x78>)
20100020:	4479      	add	r1, pc
20100022:	600c      	str	r4, [r1, #0]
20100024:	3207      	adds	r2, #7
20100026:	2101      	movs	r1, #1
20100028:	1c0c      	adds	r4, r1, #0
2010002a:	4094      	lsls	r4, r2
2010002c:	1c22      	adds	r2, r4, #0
2010002e:	4042      	eors	r2, r0
20100030:	601a      	str	r2, [r3, #0]
20100032:	4b12      	ldr	r3, [pc, #72]	; (2010007c <main+0x7c>)
20100034:	447b      	add	r3, pc
20100036:	681b      	ldr	r3, [r3, #0]
20100038:	2b07      	cmp	r3, #7
2010003a:	dd03      	ble.n	20100044 <main+0x44>
2010003c:	4b10      	ldr	r3, [pc, #64]	; (20100080 <main+0x80>)
2010003e:	447b      	add	r3, pc
20100040:	2200      	movs	r2, #0
20100042:	601a      	str	r2, [r3, #0]
20100044:	4b0f      	ldr	r3, [pc, #60]	; (20100084 <main+0x84>)
20100046:	447b      	add	r3, pc
20100048:	2200      	movs	r2, #0
2010004a:	601a      	str	r2, [r3, #0]
2010004c:	e006      	b.n	2010005c <main+0x5c>
2010004e:	4b0e      	ldr	r3, [pc, #56]	; (20100088 <main+0x88>)
20100050:	447b      	add	r3, pc
20100052:	681b      	ldr	r3, [r3, #0]
20100054:	1c5a      	adds	r2, r3, #1
20100056:	4b0d      	ldr	r3, [pc, #52]	; (2010008c <main+0x8c>)
20100058:	447b      	add	r3, pc
2010005a:	601a      	str	r2, [r3, #0]
2010005c:	4b0c      	ldr	r3, [pc, #48]	; (20100090 <main+0x90>)
2010005e:	447b      	add	r3, pc
20100060:	681a      	ldr	r2, [r3, #0]
20100062:	4b0c      	ldr	r3, [pc, #48]	; (20100094 <main+0x94>)
20100064:	429a      	cmp	r2, r3
20100066:	d9f2      	bls.n	2010004e <main+0x4e>
20100068:	e7d2      	b.n	20100010 <main+0x10>
2010006a:	46c0      	nop			; (mov r8, r8)
2010006c:	ffeffff2 	.word	0xffeffff2
20100070:	400c0000 	.word	0x400c0000
20100074:	ffefffe4 	.word	0xffefffe4
20100078:	ffefffdc 	.word	0xffefffdc
2010007c:	ffefffc8 	.word	0xffefffc8
20100080:	ffefffbe 	.word	0xffefffbe
20100084:	ffefffba 	.word	0xffefffba
20100088:	ffefffb0 	.word	0xffefffb0
2010008c:	ffefffa8 	.word	0xffefffa8
20100090:	ffefffa2 	.word	0xffefffa2
20100094:	0000270f 	.word	0x0000270f

20100098 <PortConfig>:
20100098:	b580      	push	{r7, lr}
2010009a:	af00      	add	r7, sp, #0
2010009c:	4b0c      	ldr	r3, [pc, #48]	; (201000d0 <PortConfig+0x38>)
2010009e:	4a0c      	ldr	r2, [pc, #48]	; (201000d0 <PortConfig+0x38>)
201000a0:	69d2      	ldr	r2, [r2, #28]
201000a2:	2180      	movs	r1, #128	; 0x80
201000a4:	0449      	lsls	r1, r1, #17
201000a6:	430a      	orrs	r2, r1
201000a8:	61da      	str	r2, [r3, #28]
201000aa:	4b0a      	ldr	r3, [pc, #40]	; (201000d4 <PortConfig+0x3c>)
201000ac:	2200      	movs	r2, #0
201000ae:	609a      	str	r2, [r3, #8]
201000b0:	4b08      	ldr	r3, [pc, #32]	; (201000d4 <PortConfig+0x3c>)
201000b2:	2200      	movs	r2, #0
201000b4:	601a      	str	r2, [r3, #0]
201000b6:	4b07      	ldr	r3, [pc, #28]	; (201000d4 <PortConfig+0x3c>)
201000b8:	22ff      	movs	r2, #255	; 0xff
201000ba:	01d2      	lsls	r2, r2, #7
201000bc:	605a      	str	r2, [r3, #4]
201000be:	4b05      	ldr	r3, [pc, #20]	; (201000d4 <PortConfig+0x3c>)
201000c0:	22ff      	movs	r2, #255	; 0xff
201000c2:	01d2      	lsls	r2, r2, #7
201000c4:	60da      	str	r2, [r3, #12]
201000c6:	4b03      	ldr	r3, [pc, #12]	; (201000d4 <PortConfig+0x3c>)
201000c8:	4a03      	ldr	r2, [pc, #12]	; (201000d8 <PortConfig+0x40>)
201000ca:	619a      	str	r2, [r3, #24]
201000cc:	46bd      	mov	sp, r7
201000ce:	bd80      	pop	{r7, pc}
201000d0:	40020000 	.word	0x40020000
201000d4:	400c0000 	.word	0x400c0000
201000d8:	3fffc000 	.word	0x3fffc000
