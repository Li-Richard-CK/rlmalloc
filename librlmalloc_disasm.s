
build/librlmalloc.so:     file format elf32-littlearm


Disassembly of section .text:

00000024 <call_weak_fn>:
  24:	ldr	r3, [pc, #20]	; 40 <call_weak_fn+0x1c>
  28:	ldr	r2, [pc, #20]	; 44 <call_weak_fn+0x20>
  2c:	add	r3, pc, r3
  30:	ldr	r2, [r3, r2]
  34:	cmp	r2, #0
  38:	bxeq	lr
  3c:	b	560 <.plt+0x2c>
  40:	.word	0x00000ea0
  44:	.word	0x00000014

00000048 <deregister_tm_clones>:
  48:	ldr	r0, [pc, #24]	; (64 <deregister_tm_clones+0x1c>)
  4a:	ldr	r3, [pc, #28]	; (68 <deregister_tm_clones+0x20>)
  4c:	ldr	r2, [pc, #28]	; (6c <deregister_tm_clones+0x24>)
  4e:	add	r0, pc
  50:	add	r3, pc
  52:	add	r2, pc
  54:	cmp	r3, r0
  56:	beq.n	60 <deregister_tm_clones+0x18>
  58:	ldr	r3, [pc, #20]	; (70 <deregister_tm_clones+0x28>)
  5a:	ldr	r3, [r2, r3]
  5c:	cbz	r3, 60 <deregister_tm_clones+0x18>
  5e:	bx	r3
  60:	bx	lr
  62:	nop
  64:	.word	0x00000ed6
  68:	.word	0x00000ed4
  6c:	.word	0x00000e7e
  70:	.word	0x00000004

00000074 <register_tm_clones>:
  74:	ldr	r0, [pc, #32]	; (98 <register_tm_clones+0x24>)
  76:	ldr	r3, [pc, #36]	; (9c <register_tm_clones+0x28>)
  78:	add	r0, pc
  7a:	ldr	r2, [pc, #36]	; (a0 <register_tm_clones+0x2c>)
  7c:	add	r3, pc
  7e:	subs	r3, r3, r0
  80:	add	r2, pc
  82:	lsrs	r1, r3, #31
  84:	add.w	r1, r1, r3, asr #2
  88:	asrs	r1, r1, #1
  8a:	beq.n	94 <register_tm_clones+0x20>
  8c:	ldr	r3, [pc, #20]	; (a4 <register_tm_clones+0x30>)
  8e:	ldr	r3, [r2, r3]
  90:	cbz	r3, 94 <register_tm_clones+0x20>
  92:	bx	r3
  94:	bx	lr
  96:	nop
  98:	.word	0x00000eac
  9c:	.word	0x00000ea8
  a0:	.word	0x00000e50
  a4:	.word	0x00000018

000000a8 <__do_global_dtors_aux>:
  a8:	push	{r3, lr}
  aa:	ldr	r3, [pc, #40]	; (d4 <__do_global_dtors_aux+0x2c>)
  ac:	ldr	r2, [pc, #40]	; (d8 <__do_global_dtors_aux+0x30>)
  ae:	add	r3, pc
  b0:	add	r2, pc
  b2:	ldrb	r3, [r3, #0]
  b4:	cbnz	r3, d2 <__do_global_dtors_aux+0x2a>
  b6:	ldr	r3, [pc, #36]	; (dc <__do_global_dtors_aux+0x34>)
  b8:	ldr	r3, [r2, r3]
  ba:	cbz	r3, c6 <__do_global_dtors_aux+0x1e>
  bc:	ldr	r3, [pc, #32]	; (e0 <__do_global_dtors_aux+0x38>)
  be:	add	r3, pc
  c0:	ldr	r0, [r3, #0]
  c2:	blx	548 <.plt+0x14>
  c6:	bl	48 <deregister_tm_clones>
  ca:	ldr	r3, [pc, #24]	; (e4 <__do_global_dtors_aux+0x3c>)
  cc:	movs	r2, #1
  ce:	add	r3, pc
  d0:	strb	r2, [r3, #0]
  d2:	pop	{r3, pc}
  d4:	.word	0x00800f6e
  d8:	.word	0x00000e20
  dc:	.word	0x00000000
  e0:	.word	0x00000e66
  e4:	.word	0x00800f4e

000000e8 <frame_dummy>:
  e8:	b.n	74 <register_tm_clones>
  ea:	nop

000000ec <rl_get_error>:
  ec:	push	{r7, lr}
  ee:	add	r7, sp, #0
  f0:	ldr	r3, [pc, #16]	; (104 <rl_get_error+0x18>)
  f2:	add	r3, pc
  f4:	mov	r0, r3
  f6:	blx	56c <.plt+0x38>
  fa:	mov	r3, r0
  fc:	ldr	r3, [r3, #0]
  fe:	mov	r0, r3
 100:	pop	{r7, pc}
 102:	nop
 104:	.word	0x00000dfa

00000108 <rl_set_error>:
 108:	push	{r7, lr}
 10a:	sub	sp, #8
 10c:	add	r7, sp, #0
 10e:	str	r0, [r7, #4]
 110:	ldr	r3, [pc, #20]	; (128 <rl_set_error+0x20>)
 112:	add	r3, pc
 114:	mov	r0, r3
 116:	blx	56c <.plt+0x38>
 11a:	mov	r2, r0
 11c:	ldr	r3, [r7, #4]
 11e:	str	r3, [r2, #0]
 120:	nop
 122:	adds	r7, #8
 124:	mov	sp, r7
 126:	pop	{r7, pc}
 128:	.word	0x00000dda

0000012c <lr_malloc>:
 12c:	push	{r7}
 12e:	sub	sp, #12
 130:	add	r7, sp, #0
 132:	str	r0, [r7, #4]
 134:	movs	r3, #0
 136:	mov	r0, r3
 138:	adds	r7, #12
 13a:	mov	sp, r7
 13c:	ldr.w	r7, [sp], #4
 140:	bx	lr

00000142 <_rl_auto_init>:
 142:	push	{r7, lr}
 144:	add	r7, sp, #0
 146:	blx	554 <.plt+0x20>
 14a:	nop
 14c:	pop	{r7, pc}

0000014e <_rl_auto_deinit>:
 14e:	push	{r7}
 150:	add	r7, sp, #0
 152:	nop
 154:	mov	sp, r7
 156:	ldr.w	r7, [sp], #4
 15a:	bx	lr

0000015c <rl_get_thread_id>:
 15c:	push	{r7}
 15e:	add	r7, sp, #0
 160:	ldr	r3, [pc, #28]	; (180 <rl_get_thread_id+0x24>)
 162:	add	r3, pc
 164:	ldr	r3, [r3, #0]
 166:	adds	r2, r3, #1
 168:	ldr	r3, [pc, #24]	; (184 <rl_get_thread_id+0x28>)
 16a:	add	r3, pc
 16c:	str	r2, [r3, #0]
 16e:	ldr	r3, [pc, #24]	; (188 <rl_get_thread_id+0x2c>)
 170:	add	r3, pc
 172:	ldr	r3, [r3, #0]
 174:	mov	r0, r3
 176:	mov	sp, r7
 178:	ldr.w	r7, [sp], #4
 17c:	bx	lr
 17e:	nop
 180:	.word	0x00800f1a
 184:	.word	0x00800f12
 188:	.word	0x00800f0c

0000018c <rl_get_local_partition>:
 18c:	push	{r7, lr}
 18e:	add	r7, sp, #0
 190:	ldr	r3, [pc, #16]	; (1a4 <rl_get_local_partition+0x18>)
 192:	add	r3, pc
 194:	mov	r0, r3
 196:	blx	56c <.plt+0x38>
 19a:	mov	r3, r0
 19c:	ldr	r3, [r3, #0]
 19e:	mov	r0, r3
 1a0:	pop	{r7, pc}
 1a2:	nop
 1a4:	.word	0x00000d4a

000001a8 <rl_get_global_partition>:
 1a8:	push	{r7}
 1aa:	add	r7, sp, #0
 1ac:	ldr	r3, [pc, #12]	; (1bc <rl_get_global_partition+0x14>)
 1ae:	add	r3, pc
 1b0:	mov	r0, r3
 1b2:	mov	sp, r7
 1b4:	ldr.w	r7, [sp], #4
 1b8:	bx	lr
 1ba:	nop
 1bc:	.word	0x00800e8e

000001c0 <_rl_main_part_init>:
 1c0:	push	{r3, r4, r7, lr}
 1c2:	add	r7, sp, #0
 1c4:	ldr	r4, [pc, #48]	; (1f8 <_rl_main_part_init+0x38>)
 1c6:	add	r4, pc
 1c8:	bl	15c <rl_get_thread_id>
 1cc:	mov	r2, r0
 1ce:	ldr	r3, [pc, #44]	; (1fc <_rl_main_part_init+0x3c>)
 1d0:	add	r3, pc
 1d2:	str	r2, [r3, #0]
 1d4:	ldr	r3, [pc, #40]	; (200 <_rl_main_part_init+0x40>)
 1d6:	add	r3, pc
 1d8:	mov.w	r2, #1048576	; 0x100000
 1dc:	str	r2, [r3, #8]
 1de:	ldr	r3, [pc, #36]	; (204 <_rl_main_part_init+0x44>)
 1e0:	ldr	r3, [r4, r3]
 1e2:	mov	r2, r3
 1e4:	ldr	r3, [pc, #32]	; (208 <_rl_main_part_init+0x48>)
 1e6:	add	r3, pc
 1e8:	str	r2, [r3, #24]
 1ea:	ldr	r3, [pc, #32]	; (20c <_rl_main_part_init+0x4c>)
 1ec:	add	r3, pc
 1ee:	movs	r2, #1
 1f0:	strb	r2, [r3, #4]
 1f2:	nop
 1f4:	pop	{r3, r4, r7, pc}
 1f6:	nop
 1f8:	.word	0x00000d0a
 1fc:	.word	0x00800e6c
 200:	.word	0x00800e66
 204:	.word	0x00000008
 208:	.word	0x00800e56
 20c:	.word	0x00800e50

00000210 <rl_new_page>:
 210:	push	{r7, lr}
 212:	sub	sp, #72	; 0x48
 214:	add	r7, sp, #0
 216:	str	r0, [r7, #12]
 218:	str	r1, [r7, #8]
 21a:	str	r2, [r7, #4]
 21c:	ldr	r3, [r7, #12]
 21e:	cmp	r3, #0
 220:	bne.n	234 <rl_new_page+0x24>
 222:	ldr	r3, [pc, #616]	; (48c <rl_new_page+0x27c>)
 224:	add	r3, pc
 226:	movs	r2, #22
 228:	ldr	r1, [pc, #612]	; (490 <rl_new_page+0x280>)
 22a:	add	r1, pc
 22c:	ldr	r0, [pc, #612]	; (494 <rl_new_page+0x284>)
 22e:	add	r0, pc
 230:	blx	578 <.plt+0x44>
 234:	ldr	r3, [r7, #4]
 236:	and.w	r3, r3, #1
 23a:	cmp	r3, #0
 23c:	beq.n	250 <rl_new_page+0x40>
 23e:	ldr	r3, [pc, #600]	; (498 <rl_new_page+0x288>)
 240:	add	r3, pc
 242:	movs	r2, #23
 244:	ldr	r1, [pc, #596]	; (49c <rl_new_page+0x28c>)
 246:	add	r1, pc
 248:	ldr	r0, [pc, #596]	; (4a0 <rl_new_page+0x290>)
 24a:	add	r0, pc
 24c:	blx	578 <.plt+0x44>
 250:	ldr	r3, [r7, #8]
 252:	subs	r2, r3, #1
 254:	ldr	r3, [r7, #8]
 256:	ands	r3, r2
 258:	cmp	r3, #0
 25a:	beq.n	274 <rl_new_page+0x64>
 25c:	ldr	r3, [r7, #8]
 25e:	cmp	r3, #0
 260:	beq.n	274 <rl_new_page+0x64>
 262:	ldr	r3, [pc, #576]	; (4a4 <rl_new_page+0x294>)
 264:	add	r3, pc
 266:	movs	r2, #25
 268:	ldr	r1, [pc, #572]	; (4a8 <rl_new_page+0x298>)
 26a:	add	r1, pc
 26c:	ldr	r0, [pc, #572]	; (4ac <rl_new_page+0x29c>)
 26e:	add	r0, pc
 270:	blx	578 <.plt+0x44>
 274:	ldr	r3, [r7, #12]
 276:	ldrb	r3, [r3, #4]
 278:	cmp	r3, #0
 27a:	bne.n	28e <rl_new_page+0x7e>
 27c:	ldr	r3, [pc, #560]	; (4b0 <rl_new_page+0x2a0>)
 27e:	add	r3, pc
 280:	movs	r2, #27
 282:	ldr	r1, [pc, #560]	; (4b4 <rl_new_page+0x2a4>)
 284:	add	r1, pc
 286:	ldr	r0, [pc, #560]	; (4b8 <rl_new_page+0x2a8>)
 288:	add	r0, pc
 28a:	blx	578 <.plt+0x44>
 28e:	ldr	r3, [r7, #12]
 290:	adds	r3, #12
 292:	dmb	ish
 296:	ldr	r3, [r3, #0]
 298:	dmb	ish
 29c:	str	r3, [r7, #20]
 29e:	ldr	r2, [r7, #20]
 2a0:	ldr	r3, [r7, #8]
 2a2:	add	r2, r3
 2a4:	ldr	r3, [r7, #12]
 2a6:	ldr	r3, [r3, #8]
 2a8:	cmp	r2, r3
 2aa:	bls.n	2ba <rl_new_page+0xaa>
 2ac:	ldr	r3, [pc, #524]	; (4bc <rl_new_page+0x2ac>)
 2ae:	add	r3, pc
 2b0:	mov	r0, r3
 2b2:	bl	108 <rl_set_error>
 2b6:	movs	r3, #0
 2b8:	b.n	484 <rl_new_page+0x274>
 2ba:	ldr	r3, [r7, #12]
 2bc:	ldr	r3, [r3, #16]
 2be:	cmp	r3, #0
 2c0:	bne.n	392 <rl_new_page+0x182>
 2c2:	ldr	r3, [r7, #12]
 2c4:	ldr	r3, [r3, #24]
 2c6:	mov	r2, r3
 2c8:	ldr	r3, [r7, #12]
 2ca:	str	r2, [r3, #16]
 2cc:	ldr	r3, [r7, #12]
 2ce:	ldr	r3, [r3, #0]
 2d0:	ldr	r2, [r7, #12]
 2d2:	ldr	r1, [r2, #16]
 2d4:	str	r3, [r7, #64]	; 0x40
 2d6:	movs	r3, #0
 2d8:	str	r3, [r7, #60]	; 0x3c
 2da:	ldr	r3, [r7, #60]	; 0x3c
 2dc:	cmp	r3, #9
 2de:	bhi.n	2f2 <rl_new_page+0xe2>
 2e0:	ldr	r2, [r7, #64]	; 0x40
 2e2:	mov	r3, r2
 2e4:	lsls	r3, r3, #2
 2e6:	add	r3, r2
 2e8:	lsls	r3, r3, #1
 2ea:	mov	r2, r3
 2ec:	ldr	r3, [r7, #60]	; 0x3c
 2ee:	add	r3, r2
 2f0:	b.n	32c <rl_new_page+0x11c>
 2f2:	ldr	r3, [r7, #60]	; 0x3c
 2f4:	cmp	r3, #99	; 0x63
 2f6:	bhi.n	306 <rl_new_page+0xf6>
 2f8:	ldr	r3, [r7, #64]	; 0x40
 2fa:	movs	r2, #100	; 0x64
 2fc:	mul.w	r2, r3, r2
 300:	ldr	r3, [r7, #60]	; 0x3c
 302:	add	r3, r2
 304:	b.n	32c <rl_new_page+0x11c>
 306:	ldr	r3, [r7, #60]	; 0x3c
 308:	cmp.w	r3, #1000	; 0x3e8
 30c:	bcs.n	31e <rl_new_page+0x10e>
 30e:	ldr	r3, [r7, #64]	; 0x40
 310:	mov.w	r2, #1000	; 0x3e8
 314:	mul.w	r2, r3, r2
 318:	ldr	r3, [r7, #60]	; 0x3c
 31a:	add	r3, r2
 31c:	b.n	32c <rl_new_page+0x11c>
 31e:	ldr	r3, [r7, #64]	; 0x40
 320:	movw	r2, #10000	; 0x2710
 324:	mul.w	r2, r3, r2
 328:	ldr	r3, [r7, #60]	; 0x3c
 32a:	add	r3, r2
 32c:	str	r3, [r1, #0]
 32e:	ldr	r3, [r7, #12]
 330:	ldr	r3, [r3, #16]
 332:	mov.w	r2, #4096	; 0x1000
 336:	str	r2, [r3, #4]
 338:	ldr	r3, [r7, #12]
 33a:	ldr	r3, [r3, #16]
 33c:	movs	r2, #0
 33e:	str	r2, [r3, #8]
 340:	ldr	r3, [r7, #12]
 342:	ldr	r3, [r3, #16]
 344:	ldr	r2, [r7, #12]
 346:	ldr	r2, [r2, #16]
 348:	str	r2, [r3, #12]
 34a:	ldr	r3, [r7, #12]
 34c:	ldr	r2, [r3, #16]
 34e:	ldr	r3, [r7, #12]
 350:	ldr	r3, [r3, #16]
 352:	str	r2, [r3, #16]
 354:	ldr	r3, [r7, #12]
 356:	ldr	r3, [r3, #16]
 358:	movs	r2, #0
 35a:	str	r2, [r3, #20]
 35c:	ldr	r3, [r7, #12]
 35e:	ldr	r2, [r3, #16]
 360:	ldr	r3, [r7, #12]
 362:	str	r2, [r3, #20]
 364:	mov.w	r2, #4096	; 0x1000
 368:	mov.w	r3, #0
 36c:	strd	r2, r3, [r7, #24]
 370:	ldr	r3, [r7, #12]
 372:	adds	r3, #12
 374:	ldrd	r0, r1, [r7, #24]
 378:	mov	r1, r0
 37a:	dmb	ish
 37e:	ldrex	r2, [r3]
 382:	add	r2, r1
 384:	strex	r0, r2, [r3]
 388:	cmp	r0, #0
 38a:	bne.n	37e <rl_new_page+0x16e>
 38c:	dmb	ish
 390:	str	r2, [r7, #36]	; 0x24
 392:	ldr	r3, [r7, #12]
 394:	ldr	r3, [r3, #20]
 396:	adds	r3, #32
 398:	str	r3, [r7, #68]	; 0x44
 39a:	ldr	r3, [r7, #12]
 39c:	ldr	r2, [r3, #0]
 39e:	ldr	r3, [r7, #12]
 3a0:	ldr	r3, [r3, #20]
 3a2:	ldr	r3, [r3, #0]
 3a4:	adds	r3, #1
 3a6:	str	r2, [r7, #56]	; 0x38
 3a8:	str	r3, [r7, #52]	; 0x34
 3aa:	ldr	r3, [r7, #52]	; 0x34
 3ac:	cmp	r3, #9
 3ae:	bhi.n	3c2 <rl_new_page+0x1b2>
 3b0:	ldr	r2, [r7, #56]	; 0x38
 3b2:	mov	r3, r2
 3b4:	lsls	r3, r3, #2
 3b6:	add	r3, r2
 3b8:	lsls	r3, r3, #1
 3ba:	mov	r2, r3
 3bc:	ldr	r3, [r7, #52]	; 0x34
 3be:	add	r3, r2
 3c0:	b.n	3fc <rl_new_page+0x1ec>
 3c2:	ldr	r3, [r7, #52]	; 0x34
 3c4:	cmp	r3, #99	; 0x63
 3c6:	bhi.n	3d6 <rl_new_page+0x1c6>
 3c8:	ldr	r3, [r7, #56]	; 0x38
 3ca:	movs	r2, #100	; 0x64
 3cc:	mul.w	r2, r3, r2
 3d0:	ldr	r3, [r7, #52]	; 0x34
 3d2:	add	r3, r2
 3d4:	b.n	3fc <rl_new_page+0x1ec>
 3d6:	ldr	r3, [r7, #52]	; 0x34
 3d8:	cmp.w	r3, #1000	; 0x3e8
 3dc:	bcs.n	3ee <rl_new_page+0x1de>
 3de:	ldr	r3, [r7, #56]	; 0x38
 3e0:	mov.w	r2, #1000	; 0x3e8
 3e4:	mul.w	r2, r3, r2
 3e8:	ldr	r3, [r7, #52]	; 0x34
 3ea:	add	r3, r2
 3ec:	b.n	3fc <rl_new_page+0x1ec>
 3ee:	ldr	r3, [r7, #56]	; 0x38
 3f0:	movw	r2, #10000	; 0x2710
 3f4:	mul.w	r2, r3, r2
 3f8:	ldr	r3, [r7, #52]	; 0x34
 3fa:	add	r3, r2
 3fc:	ldr	r2, [r7, #68]	; 0x44
 3fe:	str	r3, [r2, #0]
 400:	ldr	r3, [r7, #68]	; 0x44
 402:	ldr	r2, [r7, #8]
 404:	str	r2, [r3, #4]
 406:	ldr	r3, [r7, #68]	; 0x44
 408:	ldr	r2, [r7, #4]
 40a:	str	r2, [r3, #8]
 40c:	ldr	r3, [r7, #12]
 40e:	ldr	r3, [r3, #20]
 410:	ldr	r2, [r3, #16]
 412:	ldr	r3, [r7, #12]
 414:	ldr	r3, [r3, #20]
 416:	ldr	r3, [r3, #4]
 418:	add	r2, r3
 41a:	ldr	r3, [r7, #68]	; 0x44
 41c:	str	r2, [r3, #16]
 41e:	ldr	r3, [r7, #68]	; 0x44
 420:	ldr	r3, [r3, #16]
 422:	mov	r2, r3
 424:	ldr	r3, [r7, #68]	; 0x44
 426:	str	r2, [r3, #12]
 428:	ldr	r3, [r7, #68]	; 0x44
 42a:	movs	r2, #0
 42c:	str	r2, [r3, #20]
 42e:	ldr	r3, [r7, #12]
 430:	ldr	r3, [r3, #20]
 432:	ldr	r2, [r7, #68]	; 0x44
 434:	str	r2, [r3, #20]
 436:	ldr	r3, [r7, #12]
 438:	ldr	r2, [r7, #68]	; 0x44
 43a:	str	r2, [r3, #20]
 43c:	ldr	r3, [r7, #8]
 43e:	str	r3, [r7, #40]	; 0x28
 440:	ldr	r3, [r7, #12]
 442:	adds	r3, #12
 444:	ldr	r1, [r7, #40]	; 0x28
 446:	dmb	ish
 44a:	ldrex	r2, [r3]
 44e:	add	r2, r1
 450:	strex	r0, r2, [r3]
 454:	cmp	r0, #0
 456:	bne.n	44a <rl_new_page+0x23a>
 458:	dmb	ish
 45c:	str	r2, [r7, #44]	; 0x2c
 45e:	ldr	r3, [r7, #12]
 460:	adds	r3, #12
 462:	dmb	ish
 466:	ldr	r3, [r3, #0]
 468:	dmb	ish
 46c:	str	r3, [r7, #48]	; 0x30
 46e:	ldr	r2, [r7, #48]	; 0x30
 470:	ldr	r3, [r7, #8]
 472:	add	r2, r3
 474:	ldr	r3, [r7, #12]
 476:	ldr	r3, [r3, #8]
 478:	cmp	r2, r3
 47a:	bne.n	482 <rl_new_page+0x272>
 47c:	ldr	r3, [r7, #12]
 47e:	movs	r2, #1
 480:	strb	r2, [r3, #5]
 482:	movs	r3, #1
 484:	mov	r0, r3
 486:	adds	r7, #72	; 0x48
 488:	mov	sp, r7
 48a:	pop	{r7, pc}
 48c:	.word	0x00000a74
 490:	.word	0x00000912
 494:	.word	0x00000922
 498:	.word	0x00000a58
 49c:	.word	0x000008f6
 4a0:	.word	0x0000091a
 4a4:	.word	0x00000a34
 4a8:	.word	0x000008d2
 4ac:	.word	0x0000093a
 4b0:	.word	0x00000a1a
 4b4:	.word	0x000008b8
 4b8:	.word	0x00000970
 4bc:	.word	0x00000986

000004c0 <rl_list_init>:
 4c0:	push	{r7, lr}
 4c2:	sub	sp, #8
 4c4:	add	r7, sp, #0
 4c6:	str	r0, [r7, #4]
 4c8:	str	r1, [r7, #0]
 4ca:	ldr	r3, [r7, #4]
 4cc:	cmp	r3, #0
 4ce:	bne.n	4e2 <rl_list_init+0x22>
 4d0:	ldr	r3, [pc, #52]	; (508 <rl_list_init+0x48>)
 4d2:	add	r3, pc
 4d4:	movs	r2, #72	; 0x48
 4d6:	ldr	r1, [pc, #52]	; (50c <rl_list_init+0x4c>)
 4d8:	add	r1, pc
 4da:	ldr	r0, [pc, #52]	; (510 <rl_list_init+0x50>)
 4dc:	add	r0, pc
 4de:	blx	578 <.plt+0x44>
 4e2:	ldr	r3, [r7, #0]
 4e4:	and.w	r3, r3, #1
 4e8:	cmp	r3, #0
 4ea:	beq.n	4fe <rl_list_init+0x3e>
 4ec:	ldr	r3, [pc, #36]	; (514 <rl_list_init+0x54>)
 4ee:	add	r3, pc
 4f0:	movs	r2, #73	; 0x49
 4f2:	ldr	r1, [pc, #36]	; (518 <rl_list_init+0x58>)
 4f4:	add	r1, pc
 4f6:	ldr	r0, [pc, #36]	; (51c <rl_list_init+0x5c>)
 4f8:	add	r0, pc
 4fa:	blx	578 <.plt+0x44>
 4fe:	movs	r3, #1
 500:	mov	r0, r3
 502:	adds	r7, #8
 504:	mov	sp, r7
 506:	pop	{r7, pc}
 508:	.word	0x000007d2
 50c:	.word	0x00000664
 510:	.word	0x000007a8
 514:	.word	0x000007b6
 518:	.word	0x00000648
 51c:	.word	0x0000066c

Disassembly of section .init:

00000520 <_init>:
 520:	push	{r3, lr}
 524:	bl	24 <call_weak_fn>
 528:	pop	{r3, pc}

Disassembly of section .fini:

0000052c <_fini>:
 52c:	push	{r3, lr}
 530:	pop	{r3, pc}

Disassembly of section .plt:

00000534 <.plt>:
 534:	push	{lr}		; (str lr, [sp, #-4]!)
 538:	ldr	lr, [pc, #4]	; 544 <.plt+0x10>
 53c:	add	lr, pc, lr
 540:	ldr	pc, [lr, #8]!
 544:	.word	0x000009b4
 548:	add	ip, pc, #0, 12
 54c:	add	ip, ip, #0, 20
 550:	ldr	pc, [ip, #2484]!	; 0x9b4
 554:	add	ip, pc, #0, 12
 558:	add	ip, ip, #0, 20
 55c:	ldr	pc, [ip, #2476]!	; 0x9ac
 560:	add	ip, pc, #0, 12
 564:	add	ip, ip, #0, 20
 568:	ldr	pc, [ip, #2468]!	; 0x9a4
 56c:	add	ip, pc, #0, 12
 570:	add	ip, ip, #0, 20
 574:	ldr	pc, [ip, #2460]!	; 0x99c
 578:	add	ip, pc, #0, 12
 57c:	add	ip, ip, #0, 20
 580:	ldr	pc, [ip, #2452]!	; 0x994
