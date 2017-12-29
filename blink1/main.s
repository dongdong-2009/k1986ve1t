
blink.elf:     file format elf32-littlearm


Disassembly of section .text:

20100000 <main>:
20100000:	b580      	push	{r7, lr}
20100002:	af00      	add	r7, sp, #0
20100004:	f000 f828 	bl	20100058 <PortConfig>
20100008:	4b0d      	ldr	r3, [pc, #52]	; (20100040 <main+0x40>)
2010000a:	447b      	add	r3, pc
2010000c:	2200      	movs	r2, #0
2010000e:	601a      	str	r2, [r3, #0]
20100010:	4b0c      	ldr	r3, [pc, #48]	; (20100044 <main+0x44>)
20100012:	4a0c      	ldr	r2, [pc, #48]	; (20100044 <main+0x44>)
20100014:	6812      	ldr	r2, [r2, #0]
20100016:	210f      	movs	r1, #15
20100018:	404a      	eors	r2, r1
2010001a:	601a      	str	r2, [r3, #0]
2010001c:	4b0a      	ldr	r3, [pc, #40]	; (20100048 <main+0x48>)
2010001e:	447b      	add	r3, pc
20100020:	2200      	movs	r2, #0
20100022:	601a      	str	r2, [r3, #0]
20100024:	e006      	b.n	20100034 <main+0x34>
20100026:	4b09      	ldr	r3, [pc, #36]	; (2010004c <main+0x4c>)
20100028:	447b      	add	r3, pc
2010002a:	681b      	ldr	r3, [r3, #0]
2010002c:	1c5a      	adds	r2, r3, #1
2010002e:	4b08      	ldr	r3, [pc, #32]	; (20100050 <main+0x50>)
20100030:	447b      	add	r3, pc
20100032:	601a      	str	r2, [r3, #0]
20100034:	4b07      	ldr	r3, [pc, #28]	; (20100054 <main+0x54>)
20100036:	447b      	add	r3, pc
20100038:	681b      	ldr	r3, [r3, #0]
2010003a:	2b02      	cmp	r3, #2
2010003c:	d9f3      	bls.n	20100026 <main+0x26>
2010003e:	e7e7      	b.n	20100010 <main+0x10>
20100040:	ffeffff2 	.word	0xffeffff2
20100044:	400c0000 	.word	0x400c0000
20100048:	ffefffe2 	.word	0xffefffe2
2010004c:	ffefffd8 	.word	0xffefffd8
20100050:	ffefffd0 	.word	0xffefffd0
20100054:	ffefffca 	.word	0xffefffca

20100058 <PortConfig>:
20100058:	b580      	push	{r7, lr}
2010005a:	af00      	add	r7, sp, #0
2010005c:	4b0c      	ldr	r3, [pc, #48]	; (20100090 <PortConfig+0x38>)
2010005e:	4a0c      	ldr	r2, [pc, #48]	; (20100090 <PortConfig+0x38>)
20100060:	69d2      	ldr	r2, [r2, #28]
20100062:	2180      	movs	r1, #128	; 0x80
20100064:	0449      	lsls	r1, r1, #17
20100066:	430a      	orrs	r2, r1
20100068:	61da      	str	r2, [r3, #28]
2010006a:	4b0a      	ldr	r3, [pc, #40]	; (20100094 <PortConfig+0x3c>)
2010006c:	2200      	movs	r2, #0
2010006e:	609a      	str	r2, [r3, #8]
20100070:	4b08      	ldr	r3, [pc, #32]	; (20100094 <PortConfig+0x3c>)
20100072:	2200      	movs	r2, #0
20100074:	601a      	str	r2, [r3, #0]
20100076:	4b07      	ldr	r3, [pc, #28]	; (20100094 <PortConfig+0x3c>)
20100078:	22ff      	movs	r2, #255	; 0xff
2010007a:	605a      	str	r2, [r3, #4]
2010007c:	4b05      	ldr	r3, [pc, #20]	; (20100094 <PortConfig+0x3c>)
2010007e:	22ff      	movs	r2, #255	; 0xff
20100080:	60da      	str	r2, [r3, #12]
20100082:	4b04      	ldr	r3, [pc, #16]	; (20100094 <PortConfig+0x3c>)
20100084:	4a04      	ldr	r2, [pc, #16]	; (20100098 <PortConfig+0x40>)
20100086:	619a      	str	r2, [r3, #24]
20100088:	46c0      	nop			; (mov r8, r8)
2010008a:	46bd      	mov	sp, r7
2010008c:	bd80      	pop	{r7, pc}
2010008e:	46c0      	nop			; (mov r8, r8)
20100090:	40020000 	.word	0x40020000
20100094:	400c0000 	.word	0x400c0000
20100098:	3fffcfff 	.word	0x3fffcfff
