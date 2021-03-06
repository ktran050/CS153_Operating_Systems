
kernel:     file format elf32-i386


Disassembly of section .text:

80100000 <multiboot_header>:
80100000:	02 b0 ad 1b 00 00    	add    0x1bad(%eax),%dh
80100006:	00 00                	add    %al,(%eax)
80100008:	fe 4f 52             	decb   0x52(%edi)
8010000b:	e4 0f                	in     $0xf,%al

8010000c <entry>:
8010000c:	0f 20 e0             	mov    %cr4,%eax
8010000f:	83 c8 10             	or     $0x10,%eax
80100012:	0f 22 e0             	mov    %eax,%cr4
80100015:	b8 00 90 10 00       	mov    $0x109000,%eax
8010001a:	0f 22 d8             	mov    %eax,%cr3
8010001d:	0f 20 c0             	mov    %cr0,%eax
80100020:	0d 00 00 01 80       	or     $0x80010000,%eax
80100025:	0f 22 c0             	mov    %eax,%cr0
80100028:	bc c0 b5 10 80       	mov    $0x8010b5c0,%esp
8010002d:	b8 e0 2d 10 80       	mov    $0x80102de0,%eax
80100032:	ff e0                	jmp    *%eax
80100034:	66 90                	xchg   %ax,%ax
80100036:	66 90                	xchg   %ax,%ax
80100038:	66 90                	xchg   %ax,%ax
8010003a:	66 90                	xchg   %ax,%ax
8010003c:	66 90                	xchg   %ax,%ax
8010003e:	66 90                	xchg   %ax,%ax

80100040 <binit>:
80100040:	55                   	push   %ebp
80100041:	89 e5                	mov    %esp,%ebp
80100043:	53                   	push   %ebx
80100044:	bb f4 b5 10 80       	mov    $0x8010b5f4,%ebx
80100049:	83 ec 14             	sub    $0x14,%esp
8010004c:	c7 44 24 04 80 6e 10 	movl   $0x80106e80,0x4(%esp)
80100053:	80 
80100054:	c7 04 24 c0 b5 10 80 	movl   $0x8010b5c0,(%esp)
8010005b:	e8 e0 3f 00 00       	call   80104040 <initlock>
80100060:	ba bc fc 10 80       	mov    $0x8010fcbc,%edx
80100065:	c7 05 0c fd 10 80 bc 	movl   $0x8010fcbc,0x8010fd0c
8010006c:	fc 10 80 
8010006f:	c7 05 10 fd 10 80 bc 	movl   $0x8010fcbc,0x8010fd10
80100076:	fc 10 80 
80100079:	eb 09                	jmp    80100084 <binit+0x44>
8010007b:	90                   	nop
8010007c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80100080:	89 da                	mov    %ebx,%edx
80100082:	89 c3                	mov    %eax,%ebx
80100084:	8d 43 0c             	lea    0xc(%ebx),%eax
80100087:	89 53 54             	mov    %edx,0x54(%ebx)
8010008a:	c7 43 50 bc fc 10 80 	movl   $0x8010fcbc,0x50(%ebx)
80100091:	89 04 24             	mov    %eax,(%esp)
80100094:	c7 44 24 04 87 6e 10 	movl   $0x80106e87,0x4(%esp)
8010009b:	80 
8010009c:	e8 8f 3e 00 00       	call   80103f30 <initsleeplock>
801000a1:	a1 10 fd 10 80       	mov    0x8010fd10,%eax
801000a6:	89 58 50             	mov    %ebx,0x50(%eax)
801000a9:	8d 83 5c 02 00 00    	lea    0x25c(%ebx),%eax
801000af:	3d bc fc 10 80       	cmp    $0x8010fcbc,%eax
801000b4:	89 1d 10 fd 10 80    	mov    %ebx,0x8010fd10
801000ba:	75 c4                	jne    80100080 <binit+0x40>
801000bc:	83 c4 14             	add    $0x14,%esp
801000bf:	5b                   	pop    %ebx
801000c0:	5d                   	pop    %ebp
801000c1:	c3                   	ret    
801000c2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801000c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

801000d0 <bread>:
801000d0:	55                   	push   %ebp
801000d1:	89 e5                	mov    %esp,%ebp
801000d3:	57                   	push   %edi
801000d4:	56                   	push   %esi
801000d5:	53                   	push   %ebx
801000d6:	83 ec 1c             	sub    $0x1c,%esp
801000d9:	8b 75 08             	mov    0x8(%ebp),%esi
801000dc:	c7 04 24 c0 b5 10 80 	movl   $0x8010b5c0,(%esp)
801000e3:	8b 7d 0c             	mov    0xc(%ebp),%edi
801000e6:	e8 45 40 00 00       	call   80104130 <acquire>
801000eb:	8b 1d 10 fd 10 80    	mov    0x8010fd10,%ebx
801000f1:	81 fb bc fc 10 80    	cmp    $0x8010fcbc,%ebx
801000f7:	75 12                	jne    8010010b <bread+0x3b>
801000f9:	eb 25                	jmp    80100120 <bread+0x50>
801000fb:	90                   	nop
801000fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80100100:	8b 5b 54             	mov    0x54(%ebx),%ebx
80100103:	81 fb bc fc 10 80    	cmp    $0x8010fcbc,%ebx
80100109:	74 15                	je     80100120 <bread+0x50>
8010010b:	3b 73 04             	cmp    0x4(%ebx),%esi
8010010e:	75 f0                	jne    80100100 <bread+0x30>
80100110:	3b 7b 08             	cmp    0x8(%ebx),%edi
80100113:	75 eb                	jne    80100100 <bread+0x30>
80100115:	83 43 4c 01          	addl   $0x1,0x4c(%ebx)
80100119:	eb 3f                	jmp    8010015a <bread+0x8a>
8010011b:	90                   	nop
8010011c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80100120:	8b 1d 0c fd 10 80    	mov    0x8010fd0c,%ebx
80100126:	81 fb bc fc 10 80    	cmp    $0x8010fcbc,%ebx
8010012c:	75 0d                	jne    8010013b <bread+0x6b>
8010012e:	eb 58                	jmp    80100188 <bread+0xb8>
80100130:	8b 5b 50             	mov    0x50(%ebx),%ebx
80100133:	81 fb bc fc 10 80    	cmp    $0x8010fcbc,%ebx
80100139:	74 4d                	je     80100188 <bread+0xb8>
8010013b:	8b 43 4c             	mov    0x4c(%ebx),%eax
8010013e:	85 c0                	test   %eax,%eax
80100140:	75 ee                	jne    80100130 <bread+0x60>
80100142:	f6 03 04             	testb  $0x4,(%ebx)
80100145:	75 e9                	jne    80100130 <bread+0x60>
80100147:	89 73 04             	mov    %esi,0x4(%ebx)
8010014a:	89 7b 08             	mov    %edi,0x8(%ebx)
8010014d:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
80100153:	c7 43 4c 01 00 00 00 	movl   $0x1,0x4c(%ebx)
8010015a:	c7 04 24 c0 b5 10 80 	movl   $0x8010b5c0,(%esp)
80100161:	e8 ba 40 00 00       	call   80104220 <release>
80100166:	8d 43 0c             	lea    0xc(%ebx),%eax
80100169:	89 04 24             	mov    %eax,(%esp)
8010016c:	e8 ff 3d 00 00       	call   80103f70 <acquiresleep>
80100171:	f6 03 02             	testb  $0x2,(%ebx)
80100174:	75 08                	jne    8010017e <bread+0xae>
80100176:	89 1c 24             	mov    %ebx,(%esp)
80100179:	e8 92 1f 00 00       	call   80102110 <iderw>
8010017e:	83 c4 1c             	add    $0x1c,%esp
80100181:	89 d8                	mov    %ebx,%eax
80100183:	5b                   	pop    %ebx
80100184:	5e                   	pop    %esi
80100185:	5f                   	pop    %edi
80100186:	5d                   	pop    %ebp
80100187:	c3                   	ret    
80100188:	c7 04 24 8e 6e 10 80 	movl   $0x80106e8e,(%esp)
8010018f:	e8 cc 01 00 00       	call   80100360 <panic>
80100194:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
8010019a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

801001a0 <bwrite>:
801001a0:	55                   	push   %ebp
801001a1:	89 e5                	mov    %esp,%ebp
801001a3:	53                   	push   %ebx
801001a4:	83 ec 14             	sub    $0x14,%esp
801001a7:	8b 5d 08             	mov    0x8(%ebp),%ebx
801001aa:	8d 43 0c             	lea    0xc(%ebx),%eax
801001ad:	89 04 24             	mov    %eax,(%esp)
801001b0:	e8 5b 3e 00 00       	call   80104010 <holdingsleep>
801001b5:	85 c0                	test   %eax,%eax
801001b7:	74 10                	je     801001c9 <bwrite+0x29>
801001b9:	83 0b 04             	orl    $0x4,(%ebx)
801001bc:	89 5d 08             	mov    %ebx,0x8(%ebp)
801001bf:	83 c4 14             	add    $0x14,%esp
801001c2:	5b                   	pop    %ebx
801001c3:	5d                   	pop    %ebp
801001c4:	e9 47 1f 00 00       	jmp    80102110 <iderw>
801001c9:	c7 04 24 9f 6e 10 80 	movl   $0x80106e9f,(%esp)
801001d0:	e8 8b 01 00 00       	call   80100360 <panic>
801001d5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
801001d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

801001e0 <brelse>:
801001e0:	55                   	push   %ebp
801001e1:	89 e5                	mov    %esp,%ebp
801001e3:	56                   	push   %esi
801001e4:	53                   	push   %ebx
801001e5:	83 ec 10             	sub    $0x10,%esp
801001e8:	8b 5d 08             	mov    0x8(%ebp),%ebx
801001eb:	8d 73 0c             	lea    0xc(%ebx),%esi
801001ee:	89 34 24             	mov    %esi,(%esp)
801001f1:	e8 1a 3e 00 00       	call   80104010 <holdingsleep>
801001f6:	85 c0                	test   %eax,%eax
801001f8:	74 5b                	je     80100255 <brelse+0x75>
801001fa:	89 34 24             	mov    %esi,(%esp)
801001fd:	e8 ce 3d 00 00       	call   80103fd0 <releasesleep>
80100202:	c7 04 24 c0 b5 10 80 	movl   $0x8010b5c0,(%esp)
80100209:	e8 22 3f 00 00       	call   80104130 <acquire>
8010020e:	83 6b 4c 01          	subl   $0x1,0x4c(%ebx)
80100212:	75 2f                	jne    80100243 <brelse+0x63>
80100214:	8b 43 54             	mov    0x54(%ebx),%eax
80100217:	8b 53 50             	mov    0x50(%ebx),%edx
8010021a:	89 50 50             	mov    %edx,0x50(%eax)
8010021d:	8b 43 50             	mov    0x50(%ebx),%eax
80100220:	8b 53 54             	mov    0x54(%ebx),%edx
80100223:	89 50 54             	mov    %edx,0x54(%eax)
80100226:	a1 10 fd 10 80       	mov    0x8010fd10,%eax
8010022b:	c7 43 50 bc fc 10 80 	movl   $0x8010fcbc,0x50(%ebx)
80100232:	89 43 54             	mov    %eax,0x54(%ebx)
80100235:	a1 10 fd 10 80       	mov    0x8010fd10,%eax
8010023a:	89 58 50             	mov    %ebx,0x50(%eax)
8010023d:	89 1d 10 fd 10 80    	mov    %ebx,0x8010fd10
80100243:	c7 45 08 c0 b5 10 80 	movl   $0x8010b5c0,0x8(%ebp)
8010024a:	83 c4 10             	add    $0x10,%esp
8010024d:	5b                   	pop    %ebx
8010024e:	5e                   	pop    %esi
8010024f:	5d                   	pop    %ebp
80100250:	e9 cb 3f 00 00       	jmp    80104220 <release>
80100255:	c7 04 24 a6 6e 10 80 	movl   $0x80106ea6,(%esp)
8010025c:	e8 ff 00 00 00       	call   80100360 <panic>
80100261:	66 90                	xchg   %ax,%ax
80100263:	66 90                	xchg   %ax,%ax
80100265:	66 90                	xchg   %ax,%ax
80100267:	66 90                	xchg   %ax,%ax
80100269:	66 90                	xchg   %ax,%ax
8010026b:	66 90                	xchg   %ax,%ax
8010026d:	66 90                	xchg   %ax,%ax
8010026f:	90                   	nop

80100270 <consoleread>:
80100270:	55                   	push   %ebp
80100271:	89 e5                	mov    %esp,%ebp
80100273:	57                   	push   %edi
80100274:	56                   	push   %esi
80100275:	53                   	push   %ebx
80100276:	83 ec 1c             	sub    $0x1c,%esp
80100279:	8b 7d 08             	mov    0x8(%ebp),%edi
8010027c:	8b 75 0c             	mov    0xc(%ebp),%esi
8010027f:	89 3c 24             	mov    %edi,(%esp)
80100282:	e8 f9 14 00 00       	call   80101780 <iunlock>
80100287:	c7 04 24 20 a5 10 80 	movl   $0x8010a520,(%esp)
8010028e:	e8 9d 3e 00 00       	call   80104130 <acquire>
80100293:	8b 55 10             	mov    0x10(%ebp),%edx
80100296:	85 d2                	test   %edx,%edx
80100298:	0f 8e bc 00 00 00    	jle    8010035a <consoleread+0xea>
8010029e:	8b 5d 10             	mov    0x10(%ebp),%ebx
801002a1:	eb 25                	jmp    801002c8 <consoleread+0x58>
801002a3:	90                   	nop
801002a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
801002a8:	e8 e3 33 00 00       	call   80103690 <myproc>
801002ad:	8b 40 24             	mov    0x24(%eax),%eax
801002b0:	85 c0                	test   %eax,%eax
801002b2:	75 74                	jne    80100328 <consoleread+0xb8>
801002b4:	c7 44 24 04 20 a5 10 	movl   $0x8010a520,0x4(%esp)
801002bb:	80 
801002bc:	c7 04 24 a0 ff 10 80 	movl   $0x8010ffa0,(%esp)
801002c3:	e8 28 39 00 00       	call   80103bf0 <sleep>
801002c8:	a1 a0 ff 10 80       	mov    0x8010ffa0,%eax
801002cd:	3b 05 a4 ff 10 80    	cmp    0x8010ffa4,%eax
801002d3:	74 d3                	je     801002a8 <consoleread+0x38>
801002d5:	8d 50 01             	lea    0x1(%eax),%edx
801002d8:	89 15 a0 ff 10 80    	mov    %edx,0x8010ffa0
801002de:	89 c2                	mov    %eax,%edx
801002e0:	83 e2 7f             	and    $0x7f,%edx
801002e3:	0f b6 8a 20 ff 10 80 	movzbl -0x7fef00e0(%edx),%ecx
801002ea:	0f be d1             	movsbl %cl,%edx
801002ed:	83 fa 04             	cmp    $0x4,%edx
801002f0:	74 57                	je     80100349 <consoleread+0xd9>
801002f2:	83 c6 01             	add    $0x1,%esi
801002f5:	83 eb 01             	sub    $0x1,%ebx
801002f8:	83 fa 0a             	cmp    $0xa,%edx
801002fb:	88 4e ff             	mov    %cl,-0x1(%esi)
801002fe:	74 53                	je     80100353 <consoleread+0xe3>
80100300:	85 db                	test   %ebx,%ebx
80100302:	75 c4                	jne    801002c8 <consoleread+0x58>
80100304:	8b 45 10             	mov    0x10(%ebp),%eax
80100307:	c7 04 24 20 a5 10 80 	movl   $0x8010a520,(%esp)
8010030e:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80100311:	e8 0a 3f 00 00       	call   80104220 <release>
80100316:	89 3c 24             	mov    %edi,(%esp)
80100319:	e8 82 13 00 00       	call   801016a0 <ilock>
8010031e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80100321:	eb 1e                	jmp    80100341 <consoleread+0xd1>
80100323:	90                   	nop
80100324:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80100328:	c7 04 24 20 a5 10 80 	movl   $0x8010a520,(%esp)
8010032f:	e8 ec 3e 00 00       	call   80104220 <release>
80100334:	89 3c 24             	mov    %edi,(%esp)
80100337:	e8 64 13 00 00       	call   801016a0 <ilock>
8010033c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80100341:	83 c4 1c             	add    $0x1c,%esp
80100344:	5b                   	pop    %ebx
80100345:	5e                   	pop    %esi
80100346:	5f                   	pop    %edi
80100347:	5d                   	pop    %ebp
80100348:	c3                   	ret    
80100349:	39 5d 10             	cmp    %ebx,0x10(%ebp)
8010034c:	76 05                	jbe    80100353 <consoleread+0xe3>
8010034e:	a3 a0 ff 10 80       	mov    %eax,0x8010ffa0
80100353:	8b 45 10             	mov    0x10(%ebp),%eax
80100356:	29 d8                	sub    %ebx,%eax
80100358:	eb ad                	jmp    80100307 <consoleread+0x97>
8010035a:	31 c0                	xor    %eax,%eax
8010035c:	eb a9                	jmp    80100307 <consoleread+0x97>
8010035e:	66 90                	xchg   %ax,%ax

80100360 <panic>:
80100360:	55                   	push   %ebp
80100361:	89 e5                	mov    %esp,%ebp
80100363:	56                   	push   %esi
80100364:	53                   	push   %ebx
80100365:	83 ec 40             	sub    $0x40,%esp
80100368:	fa                   	cli    
80100369:	c7 05 54 a5 10 80 00 	movl   $0x0,0x8010a554
80100370:	00 00 00 
80100373:	8d 5d d0             	lea    -0x30(%ebp),%ebx
80100376:	e8 d5 23 00 00       	call   80102750 <lapicid>
8010037b:	8d 75 f8             	lea    -0x8(%ebp),%esi
8010037e:	c7 04 24 ad 6e 10 80 	movl   $0x80106ead,(%esp)
80100385:	89 44 24 04          	mov    %eax,0x4(%esp)
80100389:	e8 c2 02 00 00       	call   80100650 <cprintf>
8010038e:	8b 45 08             	mov    0x8(%ebp),%eax
80100391:	89 04 24             	mov    %eax,(%esp)
80100394:	e8 b7 02 00 00       	call   80100650 <cprintf>
80100399:	c7 04 24 97 78 10 80 	movl   $0x80107897,(%esp)
801003a0:	e8 ab 02 00 00       	call   80100650 <cprintf>
801003a5:	8d 45 08             	lea    0x8(%ebp),%eax
801003a8:	89 5c 24 04          	mov    %ebx,0x4(%esp)
801003ac:	89 04 24             	mov    %eax,(%esp)
801003af:	e8 ac 3c 00 00       	call   80104060 <getcallerpcs>
801003b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
801003b8:	8b 03                	mov    (%ebx),%eax
801003ba:	83 c3 04             	add    $0x4,%ebx
801003bd:	c7 04 24 c1 6e 10 80 	movl   $0x80106ec1,(%esp)
801003c4:	89 44 24 04          	mov    %eax,0x4(%esp)
801003c8:	e8 83 02 00 00       	call   80100650 <cprintf>
801003cd:	39 f3                	cmp    %esi,%ebx
801003cf:	75 e7                	jne    801003b8 <panic+0x58>
801003d1:	c7 05 58 a5 10 80 01 	movl   $0x1,0x8010a558
801003d8:	00 00 00 
801003db:	eb fe                	jmp    801003db <panic+0x7b>
801003dd:	8d 76 00             	lea    0x0(%esi),%esi

801003e0 <consputc>:
801003e0:	8b 15 58 a5 10 80    	mov    0x8010a558,%edx
801003e6:	85 d2                	test   %edx,%edx
801003e8:	74 06                	je     801003f0 <consputc+0x10>
801003ea:	fa                   	cli    
801003eb:	eb fe                	jmp    801003eb <consputc+0xb>
801003ed:	8d 76 00             	lea    0x0(%esi),%esi
801003f0:	55                   	push   %ebp
801003f1:	89 e5                	mov    %esp,%ebp
801003f3:	57                   	push   %edi
801003f4:	56                   	push   %esi
801003f5:	53                   	push   %ebx
801003f6:	89 c3                	mov    %eax,%ebx
801003f8:	83 ec 1c             	sub    $0x1c,%esp
801003fb:	3d 00 01 00 00       	cmp    $0x100,%eax
80100400:	0f 84 ac 00 00 00    	je     801004b2 <consputc+0xd2>
80100406:	89 04 24             	mov    %eax,(%esp)
80100409:	e8 42 54 00 00       	call   80105850 <uartputc>
8010040e:	bf d4 03 00 00       	mov    $0x3d4,%edi
80100413:	b8 0e 00 00 00       	mov    $0xe,%eax
80100418:	89 fa                	mov    %edi,%edx
8010041a:	ee                   	out    %al,(%dx)
8010041b:	be d5 03 00 00       	mov    $0x3d5,%esi
80100420:	89 f2                	mov    %esi,%edx
80100422:	ec                   	in     (%dx),%al
80100423:	0f b6 c8             	movzbl %al,%ecx
80100426:	89 fa                	mov    %edi,%edx
80100428:	c1 e1 08             	shl    $0x8,%ecx
8010042b:	b8 0f 00 00 00       	mov    $0xf,%eax
80100430:	ee                   	out    %al,(%dx)
80100431:	89 f2                	mov    %esi,%edx
80100433:	ec                   	in     (%dx),%al
80100434:	0f b6 c0             	movzbl %al,%eax
80100437:	09 c1                	or     %eax,%ecx
80100439:	83 fb 0a             	cmp    $0xa,%ebx
8010043c:	0f 84 0d 01 00 00    	je     8010054f <consputc+0x16f>
80100442:	81 fb 00 01 00 00    	cmp    $0x100,%ebx
80100448:	0f 84 e8 00 00 00    	je     80100536 <consputc+0x156>
8010044e:	0f b6 db             	movzbl %bl,%ebx
80100451:	80 cf 07             	or     $0x7,%bh
80100454:	8d 79 01             	lea    0x1(%ecx),%edi
80100457:	66 89 9c 09 00 80 0b 	mov    %bx,-0x7ff48000(%ecx,%ecx,1)
8010045e:	80 
8010045f:	81 ff d0 07 00 00    	cmp    $0x7d0,%edi
80100465:	0f 87 bf 00 00 00    	ja     8010052a <consputc+0x14a>
8010046b:	81 ff 7f 07 00 00    	cmp    $0x77f,%edi
80100471:	7f 68                	jg     801004db <consputc+0xfb>
80100473:	89 f8                	mov    %edi,%eax
80100475:	89 fb                	mov    %edi,%ebx
80100477:	c1 e8 08             	shr    $0x8,%eax
8010047a:	89 c6                	mov    %eax,%esi
8010047c:	8d 8c 3f 00 80 0b 80 	lea    -0x7ff48000(%edi,%edi,1),%ecx
80100483:	bf d4 03 00 00       	mov    $0x3d4,%edi
80100488:	b8 0e 00 00 00       	mov    $0xe,%eax
8010048d:	89 fa                	mov    %edi,%edx
8010048f:	ee                   	out    %al,(%dx)
80100490:	89 f0                	mov    %esi,%eax
80100492:	b2 d5                	mov    $0xd5,%dl
80100494:	ee                   	out    %al,(%dx)
80100495:	b8 0f 00 00 00       	mov    $0xf,%eax
8010049a:	89 fa                	mov    %edi,%edx
8010049c:	ee                   	out    %al,(%dx)
8010049d:	89 d8                	mov    %ebx,%eax
8010049f:	b2 d5                	mov    $0xd5,%dl
801004a1:	ee                   	out    %al,(%dx)
801004a2:	b8 20 07 00 00       	mov    $0x720,%eax
801004a7:	66 89 01             	mov    %ax,(%ecx)
801004aa:	83 c4 1c             	add    $0x1c,%esp
801004ad:	5b                   	pop    %ebx
801004ae:	5e                   	pop    %esi
801004af:	5f                   	pop    %edi
801004b0:	5d                   	pop    %ebp
801004b1:	c3                   	ret    
801004b2:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
801004b9:	e8 92 53 00 00       	call   80105850 <uartputc>
801004be:	c7 04 24 20 00 00 00 	movl   $0x20,(%esp)
801004c5:	e8 86 53 00 00       	call   80105850 <uartputc>
801004ca:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
801004d1:	e8 7a 53 00 00       	call   80105850 <uartputc>
801004d6:	e9 33 ff ff ff       	jmp    8010040e <consputc+0x2e>
801004db:	c7 44 24 08 60 0e 00 	movl   $0xe60,0x8(%esp)
801004e2:	00 
801004e3:	8d 5f b0             	lea    -0x50(%edi),%ebx
801004e6:	c7 44 24 04 a0 80 0b 	movl   $0x800b80a0,0x4(%esp)
801004ed:	80 
801004ee:	8d b4 1b 00 80 0b 80 	lea    -0x7ff48000(%ebx,%ebx,1),%esi
801004f5:	c7 04 24 00 80 0b 80 	movl   $0x800b8000,(%esp)
801004fc:	e8 0f 3e 00 00       	call   80104310 <memmove>
80100501:	b8 d0 07 00 00       	mov    $0x7d0,%eax
80100506:	29 f8                	sub    %edi,%eax
80100508:	01 c0                	add    %eax,%eax
8010050a:	89 34 24             	mov    %esi,(%esp)
8010050d:	89 44 24 08          	mov    %eax,0x8(%esp)
80100511:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
80100518:	00 
80100519:	e8 52 3d 00 00       	call   80104270 <memset>
8010051e:	89 f1                	mov    %esi,%ecx
80100520:	be 07 00 00 00       	mov    $0x7,%esi
80100525:	e9 59 ff ff ff       	jmp    80100483 <consputc+0xa3>
8010052a:	c7 04 24 c5 6e 10 80 	movl   $0x80106ec5,(%esp)
80100531:	e8 2a fe ff ff       	call   80100360 <panic>
80100536:	85 c9                	test   %ecx,%ecx
80100538:	8d 79 ff             	lea    -0x1(%ecx),%edi
8010053b:	0f 85 1e ff ff ff    	jne    8010045f <consputc+0x7f>
80100541:	b9 00 80 0b 80       	mov    $0x800b8000,%ecx
80100546:	31 db                	xor    %ebx,%ebx
80100548:	31 f6                	xor    %esi,%esi
8010054a:	e9 34 ff ff ff       	jmp    80100483 <consputc+0xa3>
8010054f:	89 c8                	mov    %ecx,%eax
80100551:	ba 67 66 66 66       	mov    $0x66666667,%edx
80100556:	f7 ea                	imul   %edx
80100558:	c1 ea 05             	shr    $0x5,%edx
8010055b:	8d 04 92             	lea    (%edx,%edx,4),%eax
8010055e:	c1 e0 04             	shl    $0x4,%eax
80100561:	8d 78 50             	lea    0x50(%eax),%edi
80100564:	e9 f6 fe ff ff       	jmp    8010045f <consputc+0x7f>
80100569:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

80100570 <printint>:
80100570:	55                   	push   %ebp
80100571:	89 e5                	mov    %esp,%ebp
80100573:	57                   	push   %edi
80100574:	56                   	push   %esi
80100575:	89 d6                	mov    %edx,%esi
80100577:	53                   	push   %ebx
80100578:	83 ec 1c             	sub    $0x1c,%esp
8010057b:	85 c9                	test   %ecx,%ecx
8010057d:	74 61                	je     801005e0 <printint+0x70>
8010057f:	85 c0                	test   %eax,%eax
80100581:	79 5d                	jns    801005e0 <printint+0x70>
80100583:	f7 d8                	neg    %eax
80100585:	bf 01 00 00 00       	mov    $0x1,%edi
8010058a:	31 c9                	xor    %ecx,%ecx
8010058c:	eb 04                	jmp    80100592 <printint+0x22>
8010058e:	66 90                	xchg   %ax,%ax
80100590:	89 d9                	mov    %ebx,%ecx
80100592:	31 d2                	xor    %edx,%edx
80100594:	f7 f6                	div    %esi
80100596:	8d 59 01             	lea    0x1(%ecx),%ebx
80100599:	0f b6 92 f0 6e 10 80 	movzbl -0x7fef9110(%edx),%edx
801005a0:	85 c0                	test   %eax,%eax
801005a2:	88 54 1d d7          	mov    %dl,-0x29(%ebp,%ebx,1)
801005a6:	75 e8                	jne    80100590 <printint+0x20>
801005a8:	85 ff                	test   %edi,%edi
801005aa:	89 d8                	mov    %ebx,%eax
801005ac:	74 08                	je     801005b6 <printint+0x46>
801005ae:	8d 59 02             	lea    0x2(%ecx),%ebx
801005b1:	c6 44 05 d8 2d       	movb   $0x2d,-0x28(%ebp,%eax,1)
801005b6:	83 eb 01             	sub    $0x1,%ebx
801005b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801005c0:	0f be 44 1d d8       	movsbl -0x28(%ebp,%ebx,1),%eax
801005c5:	83 eb 01             	sub    $0x1,%ebx
801005c8:	e8 13 fe ff ff       	call   801003e0 <consputc>
801005cd:	83 fb ff             	cmp    $0xffffffff,%ebx
801005d0:	75 ee                	jne    801005c0 <printint+0x50>
801005d2:	83 c4 1c             	add    $0x1c,%esp
801005d5:	5b                   	pop    %ebx
801005d6:	5e                   	pop    %esi
801005d7:	5f                   	pop    %edi
801005d8:	5d                   	pop    %ebp
801005d9:	c3                   	ret    
801005da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
801005e0:	31 ff                	xor    %edi,%edi
801005e2:	eb a6                	jmp    8010058a <printint+0x1a>
801005e4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
801005ea:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

801005f0 <consolewrite>:
801005f0:	55                   	push   %ebp
801005f1:	89 e5                	mov    %esp,%ebp
801005f3:	57                   	push   %edi
801005f4:	56                   	push   %esi
801005f5:	53                   	push   %ebx
801005f6:	83 ec 1c             	sub    $0x1c,%esp
801005f9:	8b 45 08             	mov    0x8(%ebp),%eax
801005fc:	8b 75 10             	mov    0x10(%ebp),%esi
801005ff:	89 04 24             	mov    %eax,(%esp)
80100602:	e8 79 11 00 00       	call   80101780 <iunlock>
80100607:	c7 04 24 20 a5 10 80 	movl   $0x8010a520,(%esp)
8010060e:	e8 1d 3b 00 00       	call   80104130 <acquire>
80100613:	8b 7d 0c             	mov    0xc(%ebp),%edi
80100616:	85 f6                	test   %esi,%esi
80100618:	8d 1c 37             	lea    (%edi,%esi,1),%ebx
8010061b:	7e 12                	jle    8010062f <consolewrite+0x3f>
8010061d:	8d 76 00             	lea    0x0(%esi),%esi
80100620:	0f b6 07             	movzbl (%edi),%eax
80100623:	83 c7 01             	add    $0x1,%edi
80100626:	e8 b5 fd ff ff       	call   801003e0 <consputc>
8010062b:	39 df                	cmp    %ebx,%edi
8010062d:	75 f1                	jne    80100620 <consolewrite+0x30>
8010062f:	c7 04 24 20 a5 10 80 	movl   $0x8010a520,(%esp)
80100636:	e8 e5 3b 00 00       	call   80104220 <release>
8010063b:	8b 45 08             	mov    0x8(%ebp),%eax
8010063e:	89 04 24             	mov    %eax,(%esp)
80100641:	e8 5a 10 00 00       	call   801016a0 <ilock>
80100646:	83 c4 1c             	add    $0x1c,%esp
80100649:	89 f0                	mov    %esi,%eax
8010064b:	5b                   	pop    %ebx
8010064c:	5e                   	pop    %esi
8010064d:	5f                   	pop    %edi
8010064e:	5d                   	pop    %ebp
8010064f:	c3                   	ret    

80100650 <cprintf>:
80100650:	55                   	push   %ebp
80100651:	89 e5                	mov    %esp,%ebp
80100653:	57                   	push   %edi
80100654:	56                   	push   %esi
80100655:	53                   	push   %ebx
80100656:	83 ec 1c             	sub    $0x1c,%esp
80100659:	a1 54 a5 10 80       	mov    0x8010a554,%eax
8010065e:	85 c0                	test   %eax,%eax
80100660:	89 45 e0             	mov    %eax,-0x20(%ebp)
80100663:	0f 85 27 01 00 00    	jne    80100790 <cprintf+0x140>
80100669:	8b 45 08             	mov    0x8(%ebp),%eax
8010066c:	85 c0                	test   %eax,%eax
8010066e:	89 c1                	mov    %eax,%ecx
80100670:	0f 84 2b 01 00 00    	je     801007a1 <cprintf+0x151>
80100676:	0f b6 00             	movzbl (%eax),%eax
80100679:	31 db                	xor    %ebx,%ebx
8010067b:	89 cf                	mov    %ecx,%edi
8010067d:	8d 75 0c             	lea    0xc(%ebp),%esi
80100680:	85 c0                	test   %eax,%eax
80100682:	75 4c                	jne    801006d0 <cprintf+0x80>
80100684:	eb 5f                	jmp    801006e5 <cprintf+0x95>
80100686:	66 90                	xchg   %ax,%ax
80100688:	83 c3 01             	add    $0x1,%ebx
8010068b:	0f b6 14 1f          	movzbl (%edi,%ebx,1),%edx
8010068f:	85 d2                	test   %edx,%edx
80100691:	74 52                	je     801006e5 <cprintf+0x95>
80100693:	83 fa 70             	cmp    $0x70,%edx
80100696:	74 72                	je     8010070a <cprintf+0xba>
80100698:	7f 66                	jg     80100700 <cprintf+0xb0>
8010069a:	83 fa 25             	cmp    $0x25,%edx
8010069d:	8d 76 00             	lea    0x0(%esi),%esi
801006a0:	0f 84 a2 00 00 00    	je     80100748 <cprintf+0xf8>
801006a6:	83 fa 64             	cmp    $0x64,%edx
801006a9:	75 7d                	jne    80100728 <cprintf+0xd8>
801006ab:	8d 46 04             	lea    0x4(%esi),%eax
801006ae:	b9 01 00 00 00       	mov    $0x1,%ecx
801006b3:	89 45 e4             	mov    %eax,-0x1c(%ebp)
801006b6:	8b 06                	mov    (%esi),%eax
801006b8:	ba 0a 00 00 00       	mov    $0xa,%edx
801006bd:	e8 ae fe ff ff       	call   80100570 <printint>
801006c2:	8b 75 e4             	mov    -0x1c(%ebp),%esi
801006c5:	83 c3 01             	add    $0x1,%ebx
801006c8:	0f b6 04 1f          	movzbl (%edi,%ebx,1),%eax
801006cc:	85 c0                	test   %eax,%eax
801006ce:	74 15                	je     801006e5 <cprintf+0x95>
801006d0:	83 f8 25             	cmp    $0x25,%eax
801006d3:	74 b3                	je     80100688 <cprintf+0x38>
801006d5:	e8 06 fd ff ff       	call   801003e0 <consputc>
801006da:	83 c3 01             	add    $0x1,%ebx
801006dd:	0f b6 04 1f          	movzbl (%edi,%ebx,1),%eax
801006e1:	85 c0                	test   %eax,%eax
801006e3:	75 eb                	jne    801006d0 <cprintf+0x80>
801006e5:	8b 45 e0             	mov    -0x20(%ebp),%eax
801006e8:	85 c0                	test   %eax,%eax
801006ea:	74 0c                	je     801006f8 <cprintf+0xa8>
801006ec:	c7 04 24 20 a5 10 80 	movl   $0x8010a520,(%esp)
801006f3:	e8 28 3b 00 00       	call   80104220 <release>
801006f8:	83 c4 1c             	add    $0x1c,%esp
801006fb:	5b                   	pop    %ebx
801006fc:	5e                   	pop    %esi
801006fd:	5f                   	pop    %edi
801006fe:	5d                   	pop    %ebp
801006ff:	c3                   	ret    
80100700:	83 fa 73             	cmp    $0x73,%edx
80100703:	74 53                	je     80100758 <cprintf+0x108>
80100705:	83 fa 78             	cmp    $0x78,%edx
80100708:	75 1e                	jne    80100728 <cprintf+0xd8>
8010070a:	8d 46 04             	lea    0x4(%esi),%eax
8010070d:	31 c9                	xor    %ecx,%ecx
8010070f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80100712:	8b 06                	mov    (%esi),%eax
80100714:	ba 10 00 00 00       	mov    $0x10,%edx
80100719:	e8 52 fe ff ff       	call   80100570 <printint>
8010071e:	8b 75 e4             	mov    -0x1c(%ebp),%esi
80100721:	eb a2                	jmp    801006c5 <cprintf+0x75>
80100723:	90                   	nop
80100724:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80100728:	b8 25 00 00 00       	mov    $0x25,%eax
8010072d:	89 55 e4             	mov    %edx,-0x1c(%ebp)
80100730:	e8 ab fc ff ff       	call   801003e0 <consputc>
80100735:	8b 55 e4             	mov    -0x1c(%ebp),%edx
80100738:	89 d0                	mov    %edx,%eax
8010073a:	e8 a1 fc ff ff       	call   801003e0 <consputc>
8010073f:	eb 99                	jmp    801006da <cprintf+0x8a>
80100741:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80100748:	b8 25 00 00 00       	mov    $0x25,%eax
8010074d:	e8 8e fc ff ff       	call   801003e0 <consputc>
80100752:	e9 6e ff ff ff       	jmp    801006c5 <cprintf+0x75>
80100757:	90                   	nop
80100758:	8d 46 04             	lea    0x4(%esi),%eax
8010075b:	8b 36                	mov    (%esi),%esi
8010075d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80100760:	b8 d8 6e 10 80       	mov    $0x80106ed8,%eax
80100765:	85 f6                	test   %esi,%esi
80100767:	0f 44 f0             	cmove  %eax,%esi
8010076a:	0f be 06             	movsbl (%esi),%eax
8010076d:	84 c0                	test   %al,%al
8010076f:	74 16                	je     80100787 <cprintf+0x137>
80100771:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80100778:	83 c6 01             	add    $0x1,%esi
8010077b:	e8 60 fc ff ff       	call   801003e0 <consputc>
80100780:	0f be 06             	movsbl (%esi),%eax
80100783:	84 c0                	test   %al,%al
80100785:	75 f1                	jne    80100778 <cprintf+0x128>
80100787:	8b 75 e4             	mov    -0x1c(%ebp),%esi
8010078a:	e9 36 ff ff ff       	jmp    801006c5 <cprintf+0x75>
8010078f:	90                   	nop
80100790:	c7 04 24 20 a5 10 80 	movl   $0x8010a520,(%esp)
80100797:	e8 94 39 00 00       	call   80104130 <acquire>
8010079c:	e9 c8 fe ff ff       	jmp    80100669 <cprintf+0x19>
801007a1:	c7 04 24 df 6e 10 80 	movl   $0x80106edf,(%esp)
801007a8:	e8 b3 fb ff ff       	call   80100360 <panic>
801007ad:	8d 76 00             	lea    0x0(%esi),%esi

801007b0 <consoleintr>:
801007b0:	55                   	push   %ebp
801007b1:	89 e5                	mov    %esp,%ebp
801007b3:	57                   	push   %edi
801007b4:	56                   	push   %esi
801007b5:	31 f6                	xor    %esi,%esi
801007b7:	53                   	push   %ebx
801007b8:	83 ec 1c             	sub    $0x1c,%esp
801007bb:	8b 5d 08             	mov    0x8(%ebp),%ebx
801007be:	c7 04 24 20 a5 10 80 	movl   $0x8010a520,(%esp)
801007c5:	e8 66 39 00 00       	call   80104130 <acquire>
801007ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
801007d0:	ff d3                	call   *%ebx
801007d2:	85 c0                	test   %eax,%eax
801007d4:	89 c7                	mov    %eax,%edi
801007d6:	78 48                	js     80100820 <consoleintr+0x70>
801007d8:	83 ff 10             	cmp    $0x10,%edi
801007db:	0f 84 2f 01 00 00    	je     80100910 <consoleintr+0x160>
801007e1:	7e 5d                	jle    80100840 <consoleintr+0x90>
801007e3:	83 ff 15             	cmp    $0x15,%edi
801007e6:	0f 84 d4 00 00 00    	je     801008c0 <consoleintr+0x110>
801007ec:	83 ff 7f             	cmp    $0x7f,%edi
801007ef:	90                   	nop
801007f0:	75 53                	jne    80100845 <consoleintr+0x95>
801007f2:	a1 a8 ff 10 80       	mov    0x8010ffa8,%eax
801007f7:	3b 05 a4 ff 10 80    	cmp    0x8010ffa4,%eax
801007fd:	74 d1                	je     801007d0 <consoleintr+0x20>
801007ff:	83 e8 01             	sub    $0x1,%eax
80100802:	a3 a8 ff 10 80       	mov    %eax,0x8010ffa8
80100807:	b8 00 01 00 00       	mov    $0x100,%eax
8010080c:	e8 cf fb ff ff       	call   801003e0 <consputc>
80100811:	ff d3                	call   *%ebx
80100813:	85 c0                	test   %eax,%eax
80100815:	89 c7                	mov    %eax,%edi
80100817:	79 bf                	jns    801007d8 <consoleintr+0x28>
80100819:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80100820:	c7 04 24 20 a5 10 80 	movl   $0x8010a520,(%esp)
80100827:	e8 f4 39 00 00       	call   80104220 <release>
8010082c:	85 f6                	test   %esi,%esi
8010082e:	0f 85 ec 00 00 00    	jne    80100920 <consoleintr+0x170>
80100834:	83 c4 1c             	add    $0x1c,%esp
80100837:	5b                   	pop    %ebx
80100838:	5e                   	pop    %esi
80100839:	5f                   	pop    %edi
8010083a:	5d                   	pop    %ebp
8010083b:	c3                   	ret    
8010083c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80100840:	83 ff 08             	cmp    $0x8,%edi
80100843:	74 ad                	je     801007f2 <consoleintr+0x42>
80100845:	85 ff                	test   %edi,%edi
80100847:	74 87                	je     801007d0 <consoleintr+0x20>
80100849:	a1 a8 ff 10 80       	mov    0x8010ffa8,%eax
8010084e:	89 c2                	mov    %eax,%edx
80100850:	2b 15 a0 ff 10 80    	sub    0x8010ffa0,%edx
80100856:	83 fa 7f             	cmp    $0x7f,%edx
80100859:	0f 87 71 ff ff ff    	ja     801007d0 <consoleintr+0x20>
8010085f:	8d 50 01             	lea    0x1(%eax),%edx
80100862:	83 e0 7f             	and    $0x7f,%eax
80100865:	83 ff 0d             	cmp    $0xd,%edi
80100868:	89 15 a8 ff 10 80    	mov    %edx,0x8010ffa8
8010086e:	0f 84 b8 00 00 00    	je     8010092c <consoleintr+0x17c>
80100874:	89 f9                	mov    %edi,%ecx
80100876:	88 88 20 ff 10 80    	mov    %cl,-0x7fef00e0(%eax)
8010087c:	89 f8                	mov    %edi,%eax
8010087e:	e8 5d fb ff ff       	call   801003e0 <consputc>
80100883:	83 ff 04             	cmp    $0x4,%edi
80100886:	a1 a8 ff 10 80       	mov    0x8010ffa8,%eax
8010088b:	74 19                	je     801008a6 <consoleintr+0xf6>
8010088d:	83 ff 0a             	cmp    $0xa,%edi
80100890:	74 14                	je     801008a6 <consoleintr+0xf6>
80100892:	8b 0d a0 ff 10 80    	mov    0x8010ffa0,%ecx
80100898:	8d 91 80 00 00 00    	lea    0x80(%ecx),%edx
8010089e:	39 d0                	cmp    %edx,%eax
801008a0:	0f 85 2a ff ff ff    	jne    801007d0 <consoleintr+0x20>
801008a6:	c7 04 24 a0 ff 10 80 	movl   $0x8010ffa0,(%esp)
801008ad:	a3 a4 ff 10 80       	mov    %eax,0x8010ffa4
801008b2:	e8 c9 34 00 00       	call   80103d80 <wakeup>
801008b7:	e9 14 ff ff ff       	jmp    801007d0 <consoleintr+0x20>
801008bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
801008c0:	a1 a8 ff 10 80       	mov    0x8010ffa8,%eax
801008c5:	3b 05 a4 ff 10 80    	cmp    0x8010ffa4,%eax
801008cb:	75 2b                	jne    801008f8 <consoleintr+0x148>
801008cd:	e9 fe fe ff ff       	jmp    801007d0 <consoleintr+0x20>
801008d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
801008d8:	a3 a8 ff 10 80       	mov    %eax,0x8010ffa8
801008dd:	b8 00 01 00 00       	mov    $0x100,%eax
801008e2:	e8 f9 fa ff ff       	call   801003e0 <consputc>
801008e7:	a1 a8 ff 10 80       	mov    0x8010ffa8,%eax
801008ec:	3b 05 a4 ff 10 80    	cmp    0x8010ffa4,%eax
801008f2:	0f 84 d8 fe ff ff    	je     801007d0 <consoleintr+0x20>
801008f8:	83 e8 01             	sub    $0x1,%eax
801008fb:	89 c2                	mov    %eax,%edx
801008fd:	83 e2 7f             	and    $0x7f,%edx
80100900:	80 ba 20 ff 10 80 0a 	cmpb   $0xa,-0x7fef00e0(%edx)
80100907:	75 cf                	jne    801008d8 <consoleintr+0x128>
80100909:	e9 c2 fe ff ff       	jmp    801007d0 <consoleintr+0x20>
8010090e:	66 90                	xchg   %ax,%ax
80100910:	be 01 00 00 00       	mov    $0x1,%esi
80100915:	e9 b6 fe ff ff       	jmp    801007d0 <consoleintr+0x20>
8010091a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80100920:	83 c4 1c             	add    $0x1c,%esp
80100923:	5b                   	pop    %ebx
80100924:	5e                   	pop    %esi
80100925:	5f                   	pop    %edi
80100926:	5d                   	pop    %ebp
80100927:	e9 34 35 00 00       	jmp    80103e60 <procdump>
8010092c:	c6 80 20 ff 10 80 0a 	movb   $0xa,-0x7fef00e0(%eax)
80100933:	b8 0a 00 00 00       	mov    $0xa,%eax
80100938:	e8 a3 fa ff ff       	call   801003e0 <consputc>
8010093d:	a1 a8 ff 10 80       	mov    0x8010ffa8,%eax
80100942:	e9 5f ff ff ff       	jmp    801008a6 <consoleintr+0xf6>
80100947:	89 f6                	mov    %esi,%esi
80100949:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

80100950 <consoleinit>:
80100950:	55                   	push   %ebp
80100951:	89 e5                	mov    %esp,%ebp
80100953:	83 ec 18             	sub    $0x18,%esp
80100956:	c7 44 24 04 e8 6e 10 	movl   $0x80106ee8,0x4(%esp)
8010095d:	80 
8010095e:	c7 04 24 20 a5 10 80 	movl   $0x8010a520,(%esp)
80100965:	e8 d6 36 00 00       	call   80104040 <initlock>
8010096a:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
80100971:	00 
80100972:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
80100979:	c7 05 6c 09 11 80 f0 	movl   $0x801005f0,0x8011096c
80100980:	05 10 80 
80100983:	c7 05 68 09 11 80 70 	movl   $0x80100270,0x80110968
8010098a:	02 10 80 
8010098d:	c7 05 54 a5 10 80 01 	movl   $0x1,0x8010a554
80100994:	00 00 00 
80100997:	e8 04 19 00 00       	call   801022a0 <ioapicenable>
8010099c:	c9                   	leave  
8010099d:	c3                   	ret    
8010099e:	66 90                	xchg   %ax,%ax

801009a0 <exec>:
#include "x86.h"
#include "elf.h"

int
exec(char *path, char **argv)
{
801009a0:	55                   	push   %ebp
801009a1:	89 e5                	mov    %esp,%ebp
801009a3:	57                   	push   %edi
801009a4:	56                   	push   %esi
801009a5:	53                   	push   %ebx
801009a6:	81 ec 2c 01 00 00    	sub    $0x12c,%esp
  uint argc, sz, sp, ustack[3+MAXARG+1];
  struct elfhdr elf;
  struct inode *ip;
  struct proghdr ph;
  pde_t *pgdir, *oldpgdir;
  struct proc *curproc = myproc();
801009ac:	e8 df 2c 00 00       	call   80103690 <myproc>
801009b1:	89 85 f4 fe ff ff    	mov    %eax,-0x10c(%ebp)

  begin_op();
801009b7:	e8 44 21 00 00       	call   80102b00 <begin_op>

  if((ip = namei(path)) == 0){
801009bc:	8b 45 08             	mov    0x8(%ebp),%eax
801009bf:	89 04 24             	mov    %eax,(%esp)
801009c2:	e8 29 15 00 00       	call   80101ef0 <namei>
801009c7:	85 c0                	test   %eax,%eax
801009c9:	89 c3                	mov    %eax,%ebx
801009cb:	0f 84 3f 02 00 00    	je     80100c10 <exec+0x270>
    end_op();
    cprintf("exec: fail\n");
    return -1;
  }
  ilock(ip);
801009d1:	89 04 24             	mov    %eax,(%esp)
801009d4:	e8 c7 0c 00 00       	call   801016a0 <ilock>
  pgdir = 0;

  // Check ELF header
  if(readi(ip, (char*)&elf, 0, sizeof(elf)) != sizeof(elf))
801009d9:	8d 85 24 ff ff ff    	lea    -0xdc(%ebp),%eax
801009df:	c7 44 24 0c 34 00 00 	movl   $0x34,0xc(%esp)
801009e6:	00 
801009e7:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
801009ee:	00 
801009ef:	89 44 24 04          	mov    %eax,0x4(%esp)
801009f3:	89 1c 24             	mov    %ebx,(%esp)
801009f6:	e8 55 0f 00 00       	call   80101950 <readi>
801009fb:	83 f8 34             	cmp    $0x34,%eax
801009fe:	74 20                	je     80100a20 <exec+0x80>

 bad:
  if(pgdir)
    freevm(pgdir);
  if(ip){
    iunlockput(ip);
80100a00:	89 1c 24             	mov    %ebx,(%esp)
80100a03:	e8 f8 0e 00 00       	call   80101900 <iunlockput>
    end_op();
80100a08:	e8 63 21 00 00       	call   80102b70 <end_op>
  }
  return -1;
80100a0d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
80100a12:	81 c4 2c 01 00 00    	add    $0x12c,%esp
80100a18:	5b                   	pop    %ebx
80100a19:	5e                   	pop    %esi
80100a1a:	5f                   	pop    %edi
80100a1b:	5d                   	pop    %ebp
80100a1c:	c3                   	ret    
80100a1d:	8d 76 00             	lea    0x0(%esi),%esi
  pgdir = 0;

  // Check ELF header
  if(readi(ip, (char*)&elf, 0, sizeof(elf)) != sizeof(elf))
    goto bad;
  if(elf.magic != ELF_MAGIC)
80100a20:	81 bd 24 ff ff ff 7f 	cmpl   $0x464c457f,-0xdc(%ebp)
80100a27:	45 4c 46 
80100a2a:	75 d4                	jne    80100a00 <exec+0x60>
    goto bad;

  if((pgdir = setupkvm()) == 0)
80100a2c:	e8 4f 60 00 00       	call   80106a80 <setupkvm>
80100a31:	85 c0                	test   %eax,%eax
80100a33:	89 85 f0 fe ff ff    	mov    %eax,-0x110(%ebp)
80100a39:	74 c5                	je     80100a00 <exec+0x60>
    goto bad;

  // Load program into memory.
  sz = 0;
  for(i=0, off=elf.phoff; i<elf.phnum; i++, off+=sizeof(ph)){
80100a3b:	66 83 bd 50 ff ff ff 	cmpw   $0x0,-0xb0(%ebp)
80100a42:	00 
80100a43:	8b b5 40 ff ff ff    	mov    -0xc0(%ebp),%esi

  if((pgdir = setupkvm()) == 0)
    goto bad;

  // Load program into memory.
  sz = 0;
80100a49:	c7 85 ec fe ff ff 00 	movl   $0x0,-0x114(%ebp)
80100a50:	00 00 00 
  for(i=0, off=elf.phoff; i<elf.phnum; i++, off+=sizeof(ph)){
80100a53:	0f 84 da 00 00 00    	je     80100b33 <exec+0x193>
80100a59:	31 ff                	xor    %edi,%edi
80100a5b:	eb 18                	jmp    80100a75 <exec+0xd5>
80100a5d:	8d 76 00             	lea    0x0(%esi),%esi
80100a60:	0f b7 85 50 ff ff ff 	movzwl -0xb0(%ebp),%eax
80100a67:	83 c7 01             	add    $0x1,%edi
80100a6a:	83 c6 20             	add    $0x20,%esi
80100a6d:	39 f8                	cmp    %edi,%eax
80100a6f:	0f 8e be 00 00 00    	jle    80100b33 <exec+0x193>
    if(readi(ip, (char*)&ph, off, sizeof(ph)) != sizeof(ph))
80100a75:	8d 85 04 ff ff ff    	lea    -0xfc(%ebp),%eax
80100a7b:	c7 44 24 0c 20 00 00 	movl   $0x20,0xc(%esp)
80100a82:	00 
80100a83:	89 74 24 08          	mov    %esi,0x8(%esp)
80100a87:	89 44 24 04          	mov    %eax,0x4(%esp)
80100a8b:	89 1c 24             	mov    %ebx,(%esp)
80100a8e:	e8 bd 0e 00 00       	call   80101950 <readi>
80100a93:	83 f8 20             	cmp    $0x20,%eax
80100a96:	0f 85 84 00 00 00    	jne    80100b20 <exec+0x180>
      goto bad;
    if(ph.type != ELF_PROG_LOAD)
80100a9c:	83 bd 04 ff ff ff 01 	cmpl   $0x1,-0xfc(%ebp)
80100aa3:	75 bb                	jne    80100a60 <exec+0xc0>
      continue;
    if(ph.memsz < ph.filesz)
80100aa5:	8b 85 18 ff ff ff    	mov    -0xe8(%ebp),%eax
80100aab:	3b 85 14 ff ff ff    	cmp    -0xec(%ebp),%eax
80100ab1:	72 6d                	jb     80100b20 <exec+0x180>
      goto bad;
    if(ph.vaddr + ph.memsz < ph.vaddr)
80100ab3:	03 85 0c ff ff ff    	add    -0xf4(%ebp),%eax
80100ab9:	72 65                	jb     80100b20 <exec+0x180>
      goto bad;
    if((sz = allocuvm(pgdir, sz, ph.vaddr + ph.memsz)) == 0)
80100abb:	89 44 24 08          	mov    %eax,0x8(%esp)
80100abf:	8b 85 ec fe ff ff    	mov    -0x114(%ebp),%eax
80100ac5:	89 44 24 04          	mov    %eax,0x4(%esp)
80100ac9:	8b 85 f0 fe ff ff    	mov    -0x110(%ebp),%eax
80100acf:	89 04 24             	mov    %eax,(%esp)
80100ad2:	e8 e9 5d 00 00       	call   801068c0 <allocuvm>
80100ad7:	85 c0                	test   %eax,%eax
80100ad9:	89 85 ec fe ff ff    	mov    %eax,-0x114(%ebp)
80100adf:	74 3f                	je     80100b20 <exec+0x180>
      goto bad;
    if(ph.vaddr % PGSIZE != 0)
80100ae1:	8b 85 0c ff ff ff    	mov    -0xf4(%ebp),%eax
80100ae7:	a9 ff 0f 00 00       	test   $0xfff,%eax
80100aec:	75 32                	jne    80100b20 <exec+0x180>
      goto bad;
    if(loaduvm(pgdir, (char*)ph.vaddr, ip, ph.off, ph.filesz) < 0)
80100aee:	8b 95 14 ff ff ff    	mov    -0xec(%ebp),%edx
80100af4:	89 44 24 04          	mov    %eax,0x4(%esp)
80100af8:	8b 85 f0 fe ff ff    	mov    -0x110(%ebp),%eax
80100afe:	89 5c 24 08          	mov    %ebx,0x8(%esp)
80100b02:	89 54 24 10          	mov    %edx,0x10(%esp)
80100b06:	8b 95 08 ff ff ff    	mov    -0xf8(%ebp),%edx
80100b0c:	89 04 24             	mov    %eax,(%esp)
80100b0f:	89 54 24 0c          	mov    %edx,0xc(%esp)
80100b13:	e8 e8 5c 00 00       	call   80106800 <loaduvm>
80100b18:	85 c0                	test   %eax,%eax
80100b1a:	0f 89 40 ff ff ff    	jns    80100a60 <exec+0xc0>
  freevm(oldpgdir);
  return 0;

 bad:
  if(pgdir)
    freevm(pgdir);
80100b20:	8b 85 f0 fe ff ff    	mov    -0x110(%ebp),%eax
80100b26:	89 04 24             	mov    %eax,(%esp)
80100b29:	e8 d2 5e 00 00       	call   80106a00 <freevm>
80100b2e:	e9 cd fe ff ff       	jmp    80100a00 <exec+0x60>
    if(ph.vaddr % PGSIZE != 0)
      goto bad;
    if(loaduvm(pgdir, (char*)ph.vaddr, ip, ph.off, ph.filesz) < 0)
      goto bad;
  }
  iunlockput(ip);
80100b33:	89 1c 24             	mov    %ebx,(%esp)
80100b36:	e8 c5 0d 00 00       	call   80101900 <iunlockput>
80100b3b:	90                   	nop
80100b3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  end_op();
80100b40:	e8 2b 20 00 00       	call   80102b70 <end_op>
  sz = PGROUNDUP(sz);
  //if((sz = allocuvm(pgdir, sz, sz + 2*PGSIZE)) == 0)
    //goto bad;

  //Lab 2 additions
  if (allocuvm(pgdir, KERNBASE- 4 - PGSIZE, KERNBASE - 4) == 0)
80100b45:	8b 85 f0 fe ff ff    	mov    -0x110(%ebp),%eax
80100b4b:	c7 44 24 08 fc ff ff 	movl   $0x7ffffffc,0x8(%esp)
80100b52:	7f 
80100b53:	c7 44 24 04 fc ef ff 	movl   $0x7fffeffc,0x4(%esp)
80100b5a:	7f 
80100b5b:	89 04 24             	mov    %eax,(%esp)
80100b5e:	e8 5d 5d 00 00       	call   801068c0 <allocuvm>
80100b63:	85 c0                	test   %eax,%eax
80100b65:	0f 84 8d 00 00 00    	je     80100bf8 <exec+0x258>
    goto bad;
  //clearpteu(pgdir, (char*)(sz - 2*PGSIZE));
  sp = KERNBASE-4;

  // Push argument strings, prepare rest of stack in ustack.
  for(argc = 0; argv[argc]; argc++) {
80100b6b:	8b 45 0c             	mov    0xc(%ebp),%eax
80100b6e:	8b 00                	mov    (%eax),%eax
80100b70:	85 c0                	test   %eax,%eax
80100b72:	0f 84 9b 01 00 00    	je     80100d13 <exec+0x373>
80100b78:	8b 4d 0c             	mov    0xc(%ebp),%ecx
80100b7b:	31 d2                	xor    %edx,%edx
80100b7d:	bb fc ff ff 7f       	mov    $0x7ffffffc,%ebx
80100b82:	8d 71 04             	lea    0x4(%ecx),%esi
80100b85:	89 cf                	mov    %ecx,%edi
80100b87:	89 f1                	mov    %esi,%ecx
80100b89:	89 d6                	mov    %edx,%esi
80100b8b:	89 ca                	mov    %ecx,%edx
80100b8d:	eb 27                	jmp    80100bb6 <exec+0x216>
80100b8f:	90                   	nop
80100b90:	8b 95 e8 fe ff ff    	mov    -0x118(%ebp),%edx
    if(argc >= MAXARG)
      goto bad;
    sp = (sp - (strlen(argv[argc]) + 1)) & ~3;
    if(copyout(pgdir, sp, argv[argc], strlen(argv[argc]) + 1) < 0)
      goto bad;
    ustack[3+argc] = sp;
80100b96:	8d 8d 58 ff ff ff    	lea    -0xa8(%ebp),%ecx
80100b9c:	89 9c b5 64 ff ff ff 	mov    %ebx,-0x9c(%ebp,%esi,4)
    goto bad;
  //clearpteu(pgdir, (char*)(sz - 2*PGSIZE));
  sp = KERNBASE-4;

  // Push argument strings, prepare rest of stack in ustack.
  for(argc = 0; argv[argc]; argc++) {
80100ba3:	83 c6 01             	add    $0x1,%esi
80100ba6:	8b 02                	mov    (%edx),%eax
80100ba8:	89 d7                	mov    %edx,%edi
80100baa:	85 c0                	test   %eax,%eax
80100bac:	74 7d                	je     80100c2b <exec+0x28b>
80100bae:	83 c2 04             	add    $0x4,%edx
    if(argc >= MAXARG)
80100bb1:	83 fe 20             	cmp    $0x20,%esi
80100bb4:	74 42                	je     80100bf8 <exec+0x258>
      goto bad;
    sp = (sp - (strlen(argv[argc]) + 1)) & ~3;
80100bb6:	89 04 24             	mov    %eax,(%esp)
80100bb9:	89 95 e8 fe ff ff    	mov    %edx,-0x118(%ebp)
80100bbf:	e8 cc 38 00 00       	call   80104490 <strlen>
80100bc4:	f7 d0                	not    %eax
80100bc6:	01 c3                	add    %eax,%ebx
    if(copyout(pgdir, sp, argv[argc], strlen(argv[argc]) + 1) < 0)
80100bc8:	8b 07                	mov    (%edi),%eax

  // Push argument strings, prepare rest of stack in ustack.
  for(argc = 0; argv[argc]; argc++) {
    if(argc >= MAXARG)
      goto bad;
    sp = (sp - (strlen(argv[argc]) + 1)) & ~3;
80100bca:	83 e3 fc             	and    $0xfffffffc,%ebx
    if(copyout(pgdir, sp, argv[argc], strlen(argv[argc]) + 1) < 0)
80100bcd:	89 04 24             	mov    %eax,(%esp)
80100bd0:	e8 bb 38 00 00       	call   80104490 <strlen>
80100bd5:	83 c0 01             	add    $0x1,%eax
80100bd8:	89 44 24 0c          	mov    %eax,0xc(%esp)
80100bdc:	8b 07                	mov    (%edi),%eax
80100bde:	89 5c 24 04          	mov    %ebx,0x4(%esp)
80100be2:	89 44 24 08          	mov    %eax,0x8(%esp)
80100be6:	8b 85 f0 fe ff ff    	mov    -0x110(%ebp),%eax
80100bec:	89 04 24             	mov    %eax,(%esp)
80100bef:	e8 6c 61 00 00       	call   80106d60 <copyout>
80100bf4:	85 c0                	test   %eax,%eax
80100bf6:	79 98                	jns    80100b90 <exec+0x1f0>
  freevm(oldpgdir);
  return 0;

 bad:
  if(pgdir)
    freevm(pgdir);
80100bf8:	8b 85 f0 fe ff ff    	mov    -0x110(%ebp),%eax
80100bfe:	89 04 24             	mov    %eax,(%esp)
80100c01:	e8 fa 5d 00 00       	call   80106a00 <freevm>
  if(ip){
    iunlockput(ip);
    end_op();
  }
  return -1;
80100c06:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80100c0b:	e9 02 fe ff ff       	jmp    80100a12 <exec+0x72>
  struct proc *curproc = myproc();

  begin_op();

  if((ip = namei(path)) == 0){
    end_op();
80100c10:	e8 5b 1f 00 00       	call   80102b70 <end_op>
    cprintf("exec: fail\n");
80100c15:	c7 04 24 01 6f 10 80 	movl   $0x80106f01,(%esp)
80100c1c:	e8 2f fa ff ff       	call   80100650 <cprintf>
    return -1;
80100c21:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80100c26:	e9 e7 fd ff ff       	jmp    80100a12 <exec+0x72>
80100c2b:	89 f2                	mov    %esi,%edx
    sp = (sp - (strlen(argv[argc]) + 1)) & ~3;
    if(copyout(pgdir, sp, argv[argc], strlen(argv[argc]) + 1) < 0)
      goto bad;
    ustack[3+argc] = sp;
  }
  ustack[3+argc] = 0;
80100c2d:	c7 84 95 64 ff ff ff 	movl   $0x0,-0x9c(%ebp,%edx,4)
80100c34:	00 00 00 00 

  ustack[0] = 0xffffffff;  // fake return PC
  ustack[1] = argc;
  ustack[2] = sp - (argc+1)*4;  // argv pointer
80100c38:	8d 04 95 04 00 00 00 	lea    0x4(,%edx,4),%eax
    ustack[3+argc] = sp;
  }
  ustack[3+argc] = 0;

  ustack[0] = 0xffffffff;  // fake return PC
  ustack[1] = argc;
80100c3f:	89 95 5c ff ff ff    	mov    %edx,-0xa4(%ebp)
  ustack[2] = sp - (argc+1)*4;  // argv pointer
80100c45:	89 da                	mov    %ebx,%edx
80100c47:	29 c2                	sub    %eax,%edx

  sp -= (3+argc+1) * 4;
80100c49:	83 c0 0c             	add    $0xc,%eax
80100c4c:	29 c3                	sub    %eax,%ebx
  if(copyout(pgdir, sp, ustack, (3+argc+1)*4) < 0)
80100c4e:	89 44 24 0c          	mov    %eax,0xc(%esp)
80100c52:	8b 85 f0 fe ff ff    	mov    -0x110(%ebp),%eax
80100c58:	89 4c 24 08          	mov    %ecx,0x8(%esp)
80100c5c:	89 5c 24 04          	mov    %ebx,0x4(%esp)
      goto bad;
    ustack[3+argc] = sp;
  }
  ustack[3+argc] = 0;

  ustack[0] = 0xffffffff;  // fake return PC
80100c60:	c7 85 58 ff ff ff ff 	movl   $0xffffffff,-0xa8(%ebp)
80100c67:	ff ff ff 
  ustack[1] = argc;
  ustack[2] = sp - (argc+1)*4;  // argv pointer

  sp -= (3+argc+1) * 4;
  if(copyout(pgdir, sp, ustack, (3+argc+1)*4) < 0)
80100c6a:	89 04 24             	mov    %eax,(%esp)
  }
  ustack[3+argc] = 0;

  ustack[0] = 0xffffffff;  // fake return PC
  ustack[1] = argc;
  ustack[2] = sp - (argc+1)*4;  // argv pointer
80100c6d:	89 95 60 ff ff ff    	mov    %edx,-0xa0(%ebp)

  sp -= (3+argc+1) * 4;
  if(copyout(pgdir, sp, ustack, (3+argc+1)*4) < 0)
80100c73:	e8 e8 60 00 00       	call   80106d60 <copyout>
80100c78:	85 c0                	test   %eax,%eax
80100c7a:	0f 88 78 ff ff ff    	js     80100bf8 <exec+0x258>
    goto bad;

  // Save program name for debugging.
  for(last=s=path; *s; s++)
80100c80:	8b 45 08             	mov    0x8(%ebp),%eax
80100c83:	0f b6 10             	movzbl (%eax),%edx
80100c86:	84 d2                	test   %dl,%dl
80100c88:	74 19                	je     80100ca3 <exec+0x303>
80100c8a:	8b 4d 08             	mov    0x8(%ebp),%ecx
80100c8d:	83 c0 01             	add    $0x1,%eax
    if(*s == '/')
      last = s+1;
80100c90:	80 fa 2f             	cmp    $0x2f,%dl
  sp -= (3+argc+1) * 4;
  if(copyout(pgdir, sp, ustack, (3+argc+1)*4) < 0)
    goto bad;

  // Save program name for debugging.
  for(last=s=path; *s; s++)
80100c93:	0f b6 10             	movzbl (%eax),%edx
    if(*s == '/')
      last = s+1;
80100c96:	0f 44 c8             	cmove  %eax,%ecx
80100c99:	83 c0 01             	add    $0x1,%eax
  sp -= (3+argc+1) * 4;
  if(copyout(pgdir, sp, ustack, (3+argc+1)*4) < 0)
    goto bad;

  // Save program name for debugging.
  for(last=s=path; *s; s++)
80100c9c:	84 d2                	test   %dl,%dl
80100c9e:	75 f0                	jne    80100c90 <exec+0x2f0>
80100ca0:	89 4d 08             	mov    %ecx,0x8(%ebp)
    if(*s == '/')
      last = s+1;
  safestrcpy(curproc->name, last, sizeof(curproc->name));
80100ca3:	8b bd f4 fe ff ff    	mov    -0x10c(%ebp),%edi
80100ca9:	8b 45 08             	mov    0x8(%ebp),%eax
80100cac:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
80100cb3:	00 
80100cb4:	89 44 24 04          	mov    %eax,0x4(%esp)
80100cb8:	89 f8                	mov    %edi,%eax
80100cba:	83 c0 6c             	add    $0x6c,%eax
80100cbd:	89 04 24             	mov    %eax,(%esp)
80100cc0:	e8 8b 37 00 00       	call   80104450 <safestrcpy>
  end_op();
  ip = 0;

  // Allocate two pages at the next page boundary.
  // Make the first inaccessible.  Use the second as the user stack.
  sz = PGROUNDUP(sz);
80100cc5:	8b 85 ec fe ff ff    	mov    -0x114(%ebp),%eax
      last = s+1;
  safestrcpy(curproc->name, last, sizeof(curproc->name));

  // Commit to the user image.
  oldpgdir = curproc->pgdir;
  curproc->pgdir = pgdir;
80100ccb:	8b 95 f0 fe ff ff    	mov    -0x110(%ebp),%edx
    if(*s == '/')
      last = s+1;
  safestrcpy(curproc->name, last, sizeof(curproc->name));

  // Commit to the user image.
  oldpgdir = curproc->pgdir;
80100cd1:	8b 77 04             	mov    0x4(%edi),%esi
  end_op();
  ip = 0;

  // Allocate two pages at the next page boundary.
  // Make the first inaccessible.  Use the second as the user stack.
  sz = PGROUNDUP(sz);
80100cd4:	05 ff 0f 00 00       	add    $0xfff,%eax
80100cd9:	25 00 f0 ff ff       	and    $0xfffff000,%eax
80100cde:	89 07                	mov    %eax,(%edi)

  // Commit to the user image.
  oldpgdir = curproc->pgdir;
  curproc->pgdir = pgdir;
  curproc->sz = sz;
  curproc->tf->eip = elf.entry;  // main
80100ce0:	8b 47 18             	mov    0x18(%edi),%eax
      last = s+1;
  safestrcpy(curproc->name, last, sizeof(curproc->name));

  // Commit to the user image.
  oldpgdir = curproc->pgdir;
  curproc->pgdir = pgdir;
80100ce3:	89 57 04             	mov    %edx,0x4(%edi)
  curproc->sz = sz;
  curproc->tf->eip = elf.entry;  // main
80100ce6:	8b 95 3c ff ff ff    	mov    -0xc4(%ebp),%edx
80100cec:	89 50 38             	mov    %edx,0x38(%eax)
  curproc->tf->esp = sp;
80100cef:	8b 47 18             	mov    0x18(%edi),%eax
80100cf2:	89 58 44             	mov    %ebx,0x44(%eax)
  //Lab 2 additions
  curproc->stacksz = 1; //Currently set to 1 page
80100cf5:	c7 47 7c 01 00 00 00 	movl   $0x1,0x7c(%edi)
  switchuvm(curproc);
80100cfc:	89 3c 24             	mov    %edi,(%esp)
80100cff:	e8 5c 59 00 00       	call   80106660 <switchuvm>
  freevm(oldpgdir);
80100d04:	89 34 24             	mov    %esi,(%esp)
80100d07:	e8 f4 5c 00 00       	call   80106a00 <freevm>
  return 0;
80100d0c:	31 c0                	xor    %eax,%eax
80100d0e:	e9 ff fc ff ff       	jmp    80100a12 <exec+0x72>
    goto bad;
  //clearpteu(pgdir, (char*)(sz - 2*PGSIZE));
  sp = KERNBASE-4;

  // Push argument strings, prepare rest of stack in ustack.
  for(argc = 0; argv[argc]; argc++) {
80100d13:	bb fc ff ff 7f       	mov    $0x7ffffffc,%ebx
80100d18:	31 d2                	xor    %edx,%edx
80100d1a:	8d 8d 58 ff ff ff    	lea    -0xa8(%ebp),%ecx
80100d20:	e9 08 ff ff ff       	jmp    80100c2d <exec+0x28d>
80100d25:	66 90                	xchg   %ax,%ax
80100d27:	66 90                	xchg   %ax,%ax
80100d29:	66 90                	xchg   %ax,%ax
80100d2b:	66 90                	xchg   %ax,%ax
80100d2d:	66 90                	xchg   %ax,%ax
80100d2f:	90                   	nop

80100d30 <fileinit>:
80100d30:	55                   	push   %ebp
80100d31:	89 e5                	mov    %esp,%ebp
80100d33:	83 ec 18             	sub    $0x18,%esp
80100d36:	c7 44 24 04 0d 6f 10 	movl   $0x80106f0d,0x4(%esp)
80100d3d:	80 
80100d3e:	c7 04 24 c0 ff 10 80 	movl   $0x8010ffc0,(%esp)
80100d45:	e8 f6 32 00 00       	call   80104040 <initlock>
80100d4a:	c9                   	leave  
80100d4b:	c3                   	ret    
80100d4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80100d50 <filealloc>:
80100d50:	55                   	push   %ebp
80100d51:	89 e5                	mov    %esp,%ebp
80100d53:	53                   	push   %ebx
80100d54:	bb f4 ff 10 80       	mov    $0x8010fff4,%ebx
80100d59:	83 ec 14             	sub    $0x14,%esp
80100d5c:	c7 04 24 c0 ff 10 80 	movl   $0x8010ffc0,(%esp)
80100d63:	e8 c8 33 00 00       	call   80104130 <acquire>
80100d68:	eb 11                	jmp    80100d7b <filealloc+0x2b>
80100d6a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80100d70:	83 c3 18             	add    $0x18,%ebx
80100d73:	81 fb 54 09 11 80    	cmp    $0x80110954,%ebx
80100d79:	74 25                	je     80100da0 <filealloc+0x50>
80100d7b:	8b 43 04             	mov    0x4(%ebx),%eax
80100d7e:	85 c0                	test   %eax,%eax
80100d80:	75 ee                	jne    80100d70 <filealloc+0x20>
80100d82:	c7 04 24 c0 ff 10 80 	movl   $0x8010ffc0,(%esp)
80100d89:	c7 43 04 01 00 00 00 	movl   $0x1,0x4(%ebx)
80100d90:	e8 8b 34 00 00       	call   80104220 <release>
80100d95:	83 c4 14             	add    $0x14,%esp
80100d98:	89 d8                	mov    %ebx,%eax
80100d9a:	5b                   	pop    %ebx
80100d9b:	5d                   	pop    %ebp
80100d9c:	c3                   	ret    
80100d9d:	8d 76 00             	lea    0x0(%esi),%esi
80100da0:	c7 04 24 c0 ff 10 80 	movl   $0x8010ffc0,(%esp)
80100da7:	e8 74 34 00 00       	call   80104220 <release>
80100dac:	83 c4 14             	add    $0x14,%esp
80100daf:	31 c0                	xor    %eax,%eax
80100db1:	5b                   	pop    %ebx
80100db2:	5d                   	pop    %ebp
80100db3:	c3                   	ret    
80100db4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80100dba:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

80100dc0 <filedup>:
80100dc0:	55                   	push   %ebp
80100dc1:	89 e5                	mov    %esp,%ebp
80100dc3:	53                   	push   %ebx
80100dc4:	83 ec 14             	sub    $0x14,%esp
80100dc7:	8b 5d 08             	mov    0x8(%ebp),%ebx
80100dca:	c7 04 24 c0 ff 10 80 	movl   $0x8010ffc0,(%esp)
80100dd1:	e8 5a 33 00 00       	call   80104130 <acquire>
80100dd6:	8b 43 04             	mov    0x4(%ebx),%eax
80100dd9:	85 c0                	test   %eax,%eax
80100ddb:	7e 1a                	jle    80100df7 <filedup+0x37>
80100ddd:	83 c0 01             	add    $0x1,%eax
80100de0:	89 43 04             	mov    %eax,0x4(%ebx)
80100de3:	c7 04 24 c0 ff 10 80 	movl   $0x8010ffc0,(%esp)
80100dea:	e8 31 34 00 00       	call   80104220 <release>
80100def:	83 c4 14             	add    $0x14,%esp
80100df2:	89 d8                	mov    %ebx,%eax
80100df4:	5b                   	pop    %ebx
80100df5:	5d                   	pop    %ebp
80100df6:	c3                   	ret    
80100df7:	c7 04 24 14 6f 10 80 	movl   $0x80106f14,(%esp)
80100dfe:	e8 5d f5 ff ff       	call   80100360 <panic>
80100e03:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80100e09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

80100e10 <fileclose>:
80100e10:	55                   	push   %ebp
80100e11:	89 e5                	mov    %esp,%ebp
80100e13:	57                   	push   %edi
80100e14:	56                   	push   %esi
80100e15:	53                   	push   %ebx
80100e16:	83 ec 1c             	sub    $0x1c,%esp
80100e19:	8b 7d 08             	mov    0x8(%ebp),%edi
80100e1c:	c7 04 24 c0 ff 10 80 	movl   $0x8010ffc0,(%esp)
80100e23:	e8 08 33 00 00       	call   80104130 <acquire>
80100e28:	8b 57 04             	mov    0x4(%edi),%edx
80100e2b:	85 d2                	test   %edx,%edx
80100e2d:	0f 8e 89 00 00 00    	jle    80100ebc <fileclose+0xac>
80100e33:	83 ea 01             	sub    $0x1,%edx
80100e36:	85 d2                	test   %edx,%edx
80100e38:	89 57 04             	mov    %edx,0x4(%edi)
80100e3b:	74 13                	je     80100e50 <fileclose+0x40>
80100e3d:	c7 45 08 c0 ff 10 80 	movl   $0x8010ffc0,0x8(%ebp)
80100e44:	83 c4 1c             	add    $0x1c,%esp
80100e47:	5b                   	pop    %ebx
80100e48:	5e                   	pop    %esi
80100e49:	5f                   	pop    %edi
80100e4a:	5d                   	pop    %ebp
80100e4b:	e9 d0 33 00 00       	jmp    80104220 <release>
80100e50:	0f b6 47 09          	movzbl 0x9(%edi),%eax
80100e54:	8b 37                	mov    (%edi),%esi
80100e56:	8b 5f 0c             	mov    0xc(%edi),%ebx
80100e59:	c7 07 00 00 00 00    	movl   $0x0,(%edi)
80100e5f:	88 45 e7             	mov    %al,-0x19(%ebp)
80100e62:	8b 47 10             	mov    0x10(%edi),%eax
80100e65:	c7 04 24 c0 ff 10 80 	movl   $0x8010ffc0,(%esp)
80100e6c:	89 45 e0             	mov    %eax,-0x20(%ebp)
80100e6f:	e8 ac 33 00 00       	call   80104220 <release>
80100e74:	83 fe 01             	cmp    $0x1,%esi
80100e77:	74 0f                	je     80100e88 <fileclose+0x78>
80100e79:	83 fe 02             	cmp    $0x2,%esi
80100e7c:	74 22                	je     80100ea0 <fileclose+0x90>
80100e7e:	83 c4 1c             	add    $0x1c,%esp
80100e81:	5b                   	pop    %ebx
80100e82:	5e                   	pop    %esi
80100e83:	5f                   	pop    %edi
80100e84:	5d                   	pop    %ebp
80100e85:	c3                   	ret    
80100e86:	66 90                	xchg   %ax,%ax
80100e88:	0f be 75 e7          	movsbl -0x19(%ebp),%esi
80100e8c:	89 1c 24             	mov    %ebx,(%esp)
80100e8f:	89 74 24 04          	mov    %esi,0x4(%esp)
80100e93:	e8 b8 23 00 00       	call   80103250 <pipeclose>
80100e98:	eb e4                	jmp    80100e7e <fileclose+0x6e>
80100e9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80100ea0:	e8 5b 1c 00 00       	call   80102b00 <begin_op>
80100ea5:	8b 45 e0             	mov    -0x20(%ebp),%eax
80100ea8:	89 04 24             	mov    %eax,(%esp)
80100eab:	e8 10 09 00 00       	call   801017c0 <iput>
80100eb0:	83 c4 1c             	add    $0x1c,%esp
80100eb3:	5b                   	pop    %ebx
80100eb4:	5e                   	pop    %esi
80100eb5:	5f                   	pop    %edi
80100eb6:	5d                   	pop    %ebp
80100eb7:	e9 b4 1c 00 00       	jmp    80102b70 <end_op>
80100ebc:	c7 04 24 1c 6f 10 80 	movl   $0x80106f1c,(%esp)
80100ec3:	e8 98 f4 ff ff       	call   80100360 <panic>
80100ec8:	90                   	nop
80100ec9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

80100ed0 <filestat>:
80100ed0:	55                   	push   %ebp
80100ed1:	89 e5                	mov    %esp,%ebp
80100ed3:	53                   	push   %ebx
80100ed4:	83 ec 14             	sub    $0x14,%esp
80100ed7:	8b 5d 08             	mov    0x8(%ebp),%ebx
80100eda:	83 3b 02             	cmpl   $0x2,(%ebx)
80100edd:	75 31                	jne    80100f10 <filestat+0x40>
80100edf:	8b 43 10             	mov    0x10(%ebx),%eax
80100ee2:	89 04 24             	mov    %eax,(%esp)
80100ee5:	e8 b6 07 00 00       	call   801016a0 <ilock>
80100eea:	8b 45 0c             	mov    0xc(%ebp),%eax
80100eed:	89 44 24 04          	mov    %eax,0x4(%esp)
80100ef1:	8b 43 10             	mov    0x10(%ebx),%eax
80100ef4:	89 04 24             	mov    %eax,(%esp)
80100ef7:	e8 24 0a 00 00       	call   80101920 <stati>
80100efc:	8b 43 10             	mov    0x10(%ebx),%eax
80100eff:	89 04 24             	mov    %eax,(%esp)
80100f02:	e8 79 08 00 00       	call   80101780 <iunlock>
80100f07:	83 c4 14             	add    $0x14,%esp
80100f0a:	31 c0                	xor    %eax,%eax
80100f0c:	5b                   	pop    %ebx
80100f0d:	5d                   	pop    %ebp
80100f0e:	c3                   	ret    
80100f0f:	90                   	nop
80100f10:	83 c4 14             	add    $0x14,%esp
80100f13:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80100f18:	5b                   	pop    %ebx
80100f19:	5d                   	pop    %ebp
80100f1a:	c3                   	ret    
80100f1b:	90                   	nop
80100f1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80100f20 <fileread>:
80100f20:	55                   	push   %ebp
80100f21:	89 e5                	mov    %esp,%ebp
80100f23:	57                   	push   %edi
80100f24:	56                   	push   %esi
80100f25:	53                   	push   %ebx
80100f26:	83 ec 1c             	sub    $0x1c,%esp
80100f29:	8b 5d 08             	mov    0x8(%ebp),%ebx
80100f2c:	8b 75 0c             	mov    0xc(%ebp),%esi
80100f2f:	8b 7d 10             	mov    0x10(%ebp),%edi
80100f32:	80 7b 08 00          	cmpb   $0x0,0x8(%ebx)
80100f36:	74 68                	je     80100fa0 <fileread+0x80>
80100f38:	8b 03                	mov    (%ebx),%eax
80100f3a:	83 f8 01             	cmp    $0x1,%eax
80100f3d:	74 49                	je     80100f88 <fileread+0x68>
80100f3f:	83 f8 02             	cmp    $0x2,%eax
80100f42:	75 63                	jne    80100fa7 <fileread+0x87>
80100f44:	8b 43 10             	mov    0x10(%ebx),%eax
80100f47:	89 04 24             	mov    %eax,(%esp)
80100f4a:	e8 51 07 00 00       	call   801016a0 <ilock>
80100f4f:	89 7c 24 0c          	mov    %edi,0xc(%esp)
80100f53:	8b 43 14             	mov    0x14(%ebx),%eax
80100f56:	89 74 24 04          	mov    %esi,0x4(%esp)
80100f5a:	89 44 24 08          	mov    %eax,0x8(%esp)
80100f5e:	8b 43 10             	mov    0x10(%ebx),%eax
80100f61:	89 04 24             	mov    %eax,(%esp)
80100f64:	e8 e7 09 00 00       	call   80101950 <readi>
80100f69:	85 c0                	test   %eax,%eax
80100f6b:	89 c6                	mov    %eax,%esi
80100f6d:	7e 03                	jle    80100f72 <fileread+0x52>
80100f6f:	01 43 14             	add    %eax,0x14(%ebx)
80100f72:	8b 43 10             	mov    0x10(%ebx),%eax
80100f75:	89 04 24             	mov    %eax,(%esp)
80100f78:	e8 03 08 00 00       	call   80101780 <iunlock>
80100f7d:	89 f0                	mov    %esi,%eax
80100f7f:	83 c4 1c             	add    $0x1c,%esp
80100f82:	5b                   	pop    %ebx
80100f83:	5e                   	pop    %esi
80100f84:	5f                   	pop    %edi
80100f85:	5d                   	pop    %ebp
80100f86:	c3                   	ret    
80100f87:	90                   	nop
80100f88:	8b 43 0c             	mov    0xc(%ebx),%eax
80100f8b:	89 45 08             	mov    %eax,0x8(%ebp)
80100f8e:	83 c4 1c             	add    $0x1c,%esp
80100f91:	5b                   	pop    %ebx
80100f92:	5e                   	pop    %esi
80100f93:	5f                   	pop    %edi
80100f94:	5d                   	pop    %ebp
80100f95:	e9 36 24 00 00       	jmp    801033d0 <piperead>
80100f9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80100fa0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80100fa5:	eb d8                	jmp    80100f7f <fileread+0x5f>
80100fa7:	c7 04 24 26 6f 10 80 	movl   $0x80106f26,(%esp)
80100fae:	e8 ad f3 ff ff       	call   80100360 <panic>
80100fb3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80100fb9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

80100fc0 <filewrite>:
80100fc0:	55                   	push   %ebp
80100fc1:	89 e5                	mov    %esp,%ebp
80100fc3:	57                   	push   %edi
80100fc4:	56                   	push   %esi
80100fc5:	53                   	push   %ebx
80100fc6:	83 ec 2c             	sub    $0x2c,%esp
80100fc9:	8b 45 0c             	mov    0xc(%ebp),%eax
80100fcc:	8b 7d 08             	mov    0x8(%ebp),%edi
80100fcf:	89 45 dc             	mov    %eax,-0x24(%ebp)
80100fd2:	8b 45 10             	mov    0x10(%ebp),%eax
80100fd5:	80 7f 09 00          	cmpb   $0x0,0x9(%edi)
80100fd9:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80100fdc:	0f 84 ae 00 00 00    	je     80101090 <filewrite+0xd0>
80100fe2:	8b 07                	mov    (%edi),%eax
80100fe4:	83 f8 01             	cmp    $0x1,%eax
80100fe7:	0f 84 c2 00 00 00    	je     801010af <filewrite+0xef>
80100fed:	83 f8 02             	cmp    $0x2,%eax
80100ff0:	0f 85 d7 00 00 00    	jne    801010cd <filewrite+0x10d>
80100ff6:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80100ff9:	31 db                	xor    %ebx,%ebx
80100ffb:	85 c0                	test   %eax,%eax
80100ffd:	7f 31                	jg     80101030 <filewrite+0x70>
80100fff:	e9 9c 00 00 00       	jmp    801010a0 <filewrite+0xe0>
80101004:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80101008:	8b 4f 10             	mov    0x10(%edi),%ecx
8010100b:	01 47 14             	add    %eax,0x14(%edi)
8010100e:	89 45 e0             	mov    %eax,-0x20(%ebp)
80101011:	89 0c 24             	mov    %ecx,(%esp)
80101014:	e8 67 07 00 00       	call   80101780 <iunlock>
80101019:	e8 52 1b 00 00       	call   80102b70 <end_op>
8010101e:	8b 45 e0             	mov    -0x20(%ebp),%eax
80101021:	39 f0                	cmp    %esi,%eax
80101023:	0f 85 98 00 00 00    	jne    801010c1 <filewrite+0x101>
80101029:	01 c3                	add    %eax,%ebx
8010102b:	39 5d e4             	cmp    %ebx,-0x1c(%ebp)
8010102e:	7e 70                	jle    801010a0 <filewrite+0xe0>
80101030:	8b 75 e4             	mov    -0x1c(%ebp),%esi
80101033:	b8 00 1a 00 00       	mov    $0x1a00,%eax
80101038:	29 de                	sub    %ebx,%esi
8010103a:	81 fe 00 1a 00 00    	cmp    $0x1a00,%esi
80101040:	0f 4f f0             	cmovg  %eax,%esi
80101043:	e8 b8 1a 00 00       	call   80102b00 <begin_op>
80101048:	8b 47 10             	mov    0x10(%edi),%eax
8010104b:	89 04 24             	mov    %eax,(%esp)
8010104e:	e8 4d 06 00 00       	call   801016a0 <ilock>
80101053:	89 74 24 0c          	mov    %esi,0xc(%esp)
80101057:	8b 47 14             	mov    0x14(%edi),%eax
8010105a:	89 44 24 08          	mov    %eax,0x8(%esp)
8010105e:	8b 45 dc             	mov    -0x24(%ebp),%eax
80101061:	01 d8                	add    %ebx,%eax
80101063:	89 44 24 04          	mov    %eax,0x4(%esp)
80101067:	8b 47 10             	mov    0x10(%edi),%eax
8010106a:	89 04 24             	mov    %eax,(%esp)
8010106d:	e8 de 09 00 00       	call   80101a50 <writei>
80101072:	85 c0                	test   %eax,%eax
80101074:	7f 92                	jg     80101008 <filewrite+0x48>
80101076:	8b 4f 10             	mov    0x10(%edi),%ecx
80101079:	89 45 e0             	mov    %eax,-0x20(%ebp)
8010107c:	89 0c 24             	mov    %ecx,(%esp)
8010107f:	e8 fc 06 00 00       	call   80101780 <iunlock>
80101084:	e8 e7 1a 00 00       	call   80102b70 <end_op>
80101089:	8b 45 e0             	mov    -0x20(%ebp),%eax
8010108c:	85 c0                	test   %eax,%eax
8010108e:	74 91                	je     80101021 <filewrite+0x61>
80101090:	83 c4 2c             	add    $0x2c,%esp
80101093:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80101098:	5b                   	pop    %ebx
80101099:	5e                   	pop    %esi
8010109a:	5f                   	pop    %edi
8010109b:	5d                   	pop    %ebp
8010109c:	c3                   	ret    
8010109d:	8d 76 00             	lea    0x0(%esi),%esi
801010a0:	3b 5d e4             	cmp    -0x1c(%ebp),%ebx
801010a3:	89 d8                	mov    %ebx,%eax
801010a5:	75 e9                	jne    80101090 <filewrite+0xd0>
801010a7:	83 c4 2c             	add    $0x2c,%esp
801010aa:	5b                   	pop    %ebx
801010ab:	5e                   	pop    %esi
801010ac:	5f                   	pop    %edi
801010ad:	5d                   	pop    %ebp
801010ae:	c3                   	ret    
801010af:	8b 47 0c             	mov    0xc(%edi),%eax
801010b2:	89 45 08             	mov    %eax,0x8(%ebp)
801010b5:	83 c4 2c             	add    $0x2c,%esp
801010b8:	5b                   	pop    %ebx
801010b9:	5e                   	pop    %esi
801010ba:	5f                   	pop    %edi
801010bb:	5d                   	pop    %ebp
801010bc:	e9 1f 22 00 00       	jmp    801032e0 <pipewrite>
801010c1:	c7 04 24 2f 6f 10 80 	movl   $0x80106f2f,(%esp)
801010c8:	e8 93 f2 ff ff       	call   80100360 <panic>
801010cd:	c7 04 24 35 6f 10 80 	movl   $0x80106f35,(%esp)
801010d4:	e8 87 f2 ff ff       	call   80100360 <panic>
801010d9:	66 90                	xchg   %ax,%ax
801010db:	66 90                	xchg   %ax,%ax
801010dd:	66 90                	xchg   %ax,%ax
801010df:	90                   	nop

801010e0 <balloc>:
801010e0:	55                   	push   %ebp
801010e1:	89 e5                	mov    %esp,%ebp
801010e3:	57                   	push   %edi
801010e4:	56                   	push   %esi
801010e5:	53                   	push   %ebx
801010e6:	83 ec 2c             	sub    $0x2c,%esp
801010e9:	89 45 d8             	mov    %eax,-0x28(%ebp)
801010ec:	a1 c0 09 11 80       	mov    0x801109c0,%eax
801010f1:	85 c0                	test   %eax,%eax
801010f3:	0f 84 8c 00 00 00    	je     80101185 <balloc+0xa5>
801010f9:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
80101100:	8b 75 dc             	mov    -0x24(%ebp),%esi
80101103:	89 f0                	mov    %esi,%eax
80101105:	c1 f8 0c             	sar    $0xc,%eax
80101108:	03 05 d8 09 11 80    	add    0x801109d8,%eax
8010110e:	89 44 24 04          	mov    %eax,0x4(%esp)
80101112:	8b 45 d8             	mov    -0x28(%ebp),%eax
80101115:	89 04 24             	mov    %eax,(%esp)
80101118:	e8 b3 ef ff ff       	call   801000d0 <bread>
8010111d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80101120:	a1 c0 09 11 80       	mov    0x801109c0,%eax
80101125:	89 45 e0             	mov    %eax,-0x20(%ebp)
80101128:	31 c0                	xor    %eax,%eax
8010112a:	eb 33                	jmp    8010115f <balloc+0x7f>
8010112c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80101130:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
80101133:	89 c2                	mov    %eax,%edx
80101135:	89 c1                	mov    %eax,%ecx
80101137:	c1 fa 03             	sar    $0x3,%edx
8010113a:	83 e1 07             	and    $0x7,%ecx
8010113d:	bf 01 00 00 00       	mov    $0x1,%edi
80101142:	d3 e7                	shl    %cl,%edi
80101144:	0f b6 5c 13 5c       	movzbl 0x5c(%ebx,%edx,1),%ebx
80101149:	89 f9                	mov    %edi,%ecx
8010114b:	0f b6 fb             	movzbl %bl,%edi
8010114e:	85 cf                	test   %ecx,%edi
80101150:	74 46                	je     80101198 <balloc+0xb8>
80101152:	83 c0 01             	add    $0x1,%eax
80101155:	83 c6 01             	add    $0x1,%esi
80101158:	3d 00 10 00 00       	cmp    $0x1000,%eax
8010115d:	74 05                	je     80101164 <balloc+0x84>
8010115f:	3b 75 e0             	cmp    -0x20(%ebp),%esi
80101162:	72 cc                	jb     80101130 <balloc+0x50>
80101164:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80101167:	89 04 24             	mov    %eax,(%esp)
8010116a:	e8 71 f0 ff ff       	call   801001e0 <brelse>
8010116f:	81 45 dc 00 10 00 00 	addl   $0x1000,-0x24(%ebp)
80101176:	8b 45 dc             	mov    -0x24(%ebp),%eax
80101179:	3b 05 c0 09 11 80    	cmp    0x801109c0,%eax
8010117f:	0f 82 7b ff ff ff    	jb     80101100 <balloc+0x20>
80101185:	c7 04 24 3f 6f 10 80 	movl   $0x80106f3f,(%esp)
8010118c:	e8 cf f1 ff ff       	call   80100360 <panic>
80101191:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80101198:	09 d9                	or     %ebx,%ecx
8010119a:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
8010119d:	88 4c 13 5c          	mov    %cl,0x5c(%ebx,%edx,1)
801011a1:	89 1c 24             	mov    %ebx,(%esp)
801011a4:	e8 f7 1a 00 00       	call   80102ca0 <log_write>
801011a9:	89 1c 24             	mov    %ebx,(%esp)
801011ac:	e8 2f f0 ff ff       	call   801001e0 <brelse>
801011b1:	8b 45 d8             	mov    -0x28(%ebp),%eax
801011b4:	89 74 24 04          	mov    %esi,0x4(%esp)
801011b8:	89 04 24             	mov    %eax,(%esp)
801011bb:	e8 10 ef ff ff       	call   801000d0 <bread>
801011c0:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
801011c7:	00 
801011c8:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
801011cf:	00 
801011d0:	89 c3                	mov    %eax,%ebx
801011d2:	8d 40 5c             	lea    0x5c(%eax),%eax
801011d5:	89 04 24             	mov    %eax,(%esp)
801011d8:	e8 93 30 00 00       	call   80104270 <memset>
801011dd:	89 1c 24             	mov    %ebx,(%esp)
801011e0:	e8 bb 1a 00 00       	call   80102ca0 <log_write>
801011e5:	89 1c 24             	mov    %ebx,(%esp)
801011e8:	e8 f3 ef ff ff       	call   801001e0 <brelse>
801011ed:	83 c4 2c             	add    $0x2c,%esp
801011f0:	89 f0                	mov    %esi,%eax
801011f2:	5b                   	pop    %ebx
801011f3:	5e                   	pop    %esi
801011f4:	5f                   	pop    %edi
801011f5:	5d                   	pop    %ebp
801011f6:	c3                   	ret    
801011f7:	89 f6                	mov    %esi,%esi
801011f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

80101200 <iget>:
80101200:	55                   	push   %ebp
80101201:	89 e5                	mov    %esp,%ebp
80101203:	57                   	push   %edi
80101204:	89 c7                	mov    %eax,%edi
80101206:	56                   	push   %esi
80101207:	31 f6                	xor    %esi,%esi
80101209:	53                   	push   %ebx
8010120a:	bb 14 0a 11 80       	mov    $0x80110a14,%ebx
8010120f:	83 ec 1c             	sub    $0x1c,%esp
80101212:	c7 04 24 e0 09 11 80 	movl   $0x801109e0,(%esp)
80101219:	89 55 e4             	mov    %edx,-0x1c(%ebp)
8010121c:	e8 0f 2f 00 00       	call   80104130 <acquire>
80101221:	8b 55 e4             	mov    -0x1c(%ebp),%edx
80101224:	eb 14                	jmp    8010123a <iget+0x3a>
80101226:	66 90                	xchg   %ax,%ax
80101228:	85 f6                	test   %esi,%esi
8010122a:	74 3c                	je     80101268 <iget+0x68>
8010122c:	81 c3 90 00 00 00    	add    $0x90,%ebx
80101232:	81 fb 34 26 11 80    	cmp    $0x80112634,%ebx
80101238:	74 46                	je     80101280 <iget+0x80>
8010123a:	8b 4b 08             	mov    0x8(%ebx),%ecx
8010123d:	85 c9                	test   %ecx,%ecx
8010123f:	7e e7                	jle    80101228 <iget+0x28>
80101241:	39 3b                	cmp    %edi,(%ebx)
80101243:	75 e3                	jne    80101228 <iget+0x28>
80101245:	39 53 04             	cmp    %edx,0x4(%ebx)
80101248:	75 de                	jne    80101228 <iget+0x28>
8010124a:	83 c1 01             	add    $0x1,%ecx
8010124d:	89 de                	mov    %ebx,%esi
8010124f:	c7 04 24 e0 09 11 80 	movl   $0x801109e0,(%esp)
80101256:	89 4b 08             	mov    %ecx,0x8(%ebx)
80101259:	e8 c2 2f 00 00       	call   80104220 <release>
8010125e:	83 c4 1c             	add    $0x1c,%esp
80101261:	89 f0                	mov    %esi,%eax
80101263:	5b                   	pop    %ebx
80101264:	5e                   	pop    %esi
80101265:	5f                   	pop    %edi
80101266:	5d                   	pop    %ebp
80101267:	c3                   	ret    
80101268:	85 c9                	test   %ecx,%ecx
8010126a:	0f 44 f3             	cmove  %ebx,%esi
8010126d:	81 c3 90 00 00 00    	add    $0x90,%ebx
80101273:	81 fb 34 26 11 80    	cmp    $0x80112634,%ebx
80101279:	75 bf                	jne    8010123a <iget+0x3a>
8010127b:	90                   	nop
8010127c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80101280:	85 f6                	test   %esi,%esi
80101282:	74 29                	je     801012ad <iget+0xad>
80101284:	89 3e                	mov    %edi,(%esi)
80101286:	89 56 04             	mov    %edx,0x4(%esi)
80101289:	c7 46 08 01 00 00 00 	movl   $0x1,0x8(%esi)
80101290:	c7 46 4c 00 00 00 00 	movl   $0x0,0x4c(%esi)
80101297:	c7 04 24 e0 09 11 80 	movl   $0x801109e0,(%esp)
8010129e:	e8 7d 2f 00 00       	call   80104220 <release>
801012a3:	83 c4 1c             	add    $0x1c,%esp
801012a6:	89 f0                	mov    %esi,%eax
801012a8:	5b                   	pop    %ebx
801012a9:	5e                   	pop    %esi
801012aa:	5f                   	pop    %edi
801012ab:	5d                   	pop    %ebp
801012ac:	c3                   	ret    
801012ad:	c7 04 24 55 6f 10 80 	movl   $0x80106f55,(%esp)
801012b4:	e8 a7 f0 ff ff       	call   80100360 <panic>
801012b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

801012c0 <bmap>:
801012c0:	55                   	push   %ebp
801012c1:	89 e5                	mov    %esp,%ebp
801012c3:	57                   	push   %edi
801012c4:	56                   	push   %esi
801012c5:	53                   	push   %ebx
801012c6:	89 c3                	mov    %eax,%ebx
801012c8:	83 ec 1c             	sub    $0x1c,%esp
801012cb:	83 fa 0b             	cmp    $0xb,%edx
801012ce:	77 18                	ja     801012e8 <bmap+0x28>
801012d0:	8d 34 90             	lea    (%eax,%edx,4),%esi
801012d3:	8b 46 5c             	mov    0x5c(%esi),%eax
801012d6:	85 c0                	test   %eax,%eax
801012d8:	74 66                	je     80101340 <bmap+0x80>
801012da:	83 c4 1c             	add    $0x1c,%esp
801012dd:	5b                   	pop    %ebx
801012de:	5e                   	pop    %esi
801012df:	5f                   	pop    %edi
801012e0:	5d                   	pop    %ebp
801012e1:	c3                   	ret    
801012e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
801012e8:	8d 72 f4             	lea    -0xc(%edx),%esi
801012eb:	83 fe 7f             	cmp    $0x7f,%esi
801012ee:	77 77                	ja     80101367 <bmap+0xa7>
801012f0:	8b 80 8c 00 00 00    	mov    0x8c(%eax),%eax
801012f6:	85 c0                	test   %eax,%eax
801012f8:	74 5e                	je     80101358 <bmap+0x98>
801012fa:	89 44 24 04          	mov    %eax,0x4(%esp)
801012fe:	8b 03                	mov    (%ebx),%eax
80101300:	89 04 24             	mov    %eax,(%esp)
80101303:	e8 c8 ed ff ff       	call   801000d0 <bread>
80101308:	8d 54 b0 5c          	lea    0x5c(%eax,%esi,4),%edx
8010130c:	89 c7                	mov    %eax,%edi
8010130e:	8b 32                	mov    (%edx),%esi
80101310:	85 f6                	test   %esi,%esi
80101312:	75 19                	jne    8010132d <bmap+0x6d>
80101314:	8b 03                	mov    (%ebx),%eax
80101316:	89 55 e4             	mov    %edx,-0x1c(%ebp)
80101319:	e8 c2 fd ff ff       	call   801010e0 <balloc>
8010131e:	8b 55 e4             	mov    -0x1c(%ebp),%edx
80101321:	89 02                	mov    %eax,(%edx)
80101323:	89 c6                	mov    %eax,%esi
80101325:	89 3c 24             	mov    %edi,(%esp)
80101328:	e8 73 19 00 00       	call   80102ca0 <log_write>
8010132d:	89 3c 24             	mov    %edi,(%esp)
80101330:	e8 ab ee ff ff       	call   801001e0 <brelse>
80101335:	83 c4 1c             	add    $0x1c,%esp
80101338:	89 f0                	mov    %esi,%eax
8010133a:	5b                   	pop    %ebx
8010133b:	5e                   	pop    %esi
8010133c:	5f                   	pop    %edi
8010133d:	5d                   	pop    %ebp
8010133e:	c3                   	ret    
8010133f:	90                   	nop
80101340:	8b 03                	mov    (%ebx),%eax
80101342:	e8 99 fd ff ff       	call   801010e0 <balloc>
80101347:	89 46 5c             	mov    %eax,0x5c(%esi)
8010134a:	83 c4 1c             	add    $0x1c,%esp
8010134d:	5b                   	pop    %ebx
8010134e:	5e                   	pop    %esi
8010134f:	5f                   	pop    %edi
80101350:	5d                   	pop    %ebp
80101351:	c3                   	ret    
80101352:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80101358:	8b 03                	mov    (%ebx),%eax
8010135a:	e8 81 fd ff ff       	call   801010e0 <balloc>
8010135f:	89 83 8c 00 00 00    	mov    %eax,0x8c(%ebx)
80101365:	eb 93                	jmp    801012fa <bmap+0x3a>
80101367:	c7 04 24 65 6f 10 80 	movl   $0x80106f65,(%esp)
8010136e:	e8 ed ef ff ff       	call   80100360 <panic>
80101373:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80101379:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

80101380 <readsb>:
80101380:	55                   	push   %ebp
80101381:	89 e5                	mov    %esp,%ebp
80101383:	56                   	push   %esi
80101384:	53                   	push   %ebx
80101385:	83 ec 10             	sub    $0x10,%esp
80101388:	8b 45 08             	mov    0x8(%ebp),%eax
8010138b:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
80101392:	00 
80101393:	8b 75 0c             	mov    0xc(%ebp),%esi
80101396:	89 04 24             	mov    %eax,(%esp)
80101399:	e8 32 ed ff ff       	call   801000d0 <bread>
8010139e:	89 34 24             	mov    %esi,(%esp)
801013a1:	c7 44 24 08 1c 00 00 	movl   $0x1c,0x8(%esp)
801013a8:	00 
801013a9:	89 c3                	mov    %eax,%ebx
801013ab:	8d 40 5c             	lea    0x5c(%eax),%eax
801013ae:	89 44 24 04          	mov    %eax,0x4(%esp)
801013b2:	e8 59 2f 00 00       	call   80104310 <memmove>
801013b7:	89 5d 08             	mov    %ebx,0x8(%ebp)
801013ba:	83 c4 10             	add    $0x10,%esp
801013bd:	5b                   	pop    %ebx
801013be:	5e                   	pop    %esi
801013bf:	5d                   	pop    %ebp
801013c0:	e9 1b ee ff ff       	jmp    801001e0 <brelse>
801013c5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
801013c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

801013d0 <bfree>:
801013d0:	55                   	push   %ebp
801013d1:	89 e5                	mov    %esp,%ebp
801013d3:	57                   	push   %edi
801013d4:	89 d7                	mov    %edx,%edi
801013d6:	56                   	push   %esi
801013d7:	53                   	push   %ebx
801013d8:	89 c3                	mov    %eax,%ebx
801013da:	83 ec 1c             	sub    $0x1c,%esp
801013dd:	89 04 24             	mov    %eax,(%esp)
801013e0:	c7 44 24 04 c0 09 11 	movl   $0x801109c0,0x4(%esp)
801013e7:	80 
801013e8:	e8 93 ff ff ff       	call   80101380 <readsb>
801013ed:	89 fa                	mov    %edi,%edx
801013ef:	c1 ea 0c             	shr    $0xc,%edx
801013f2:	03 15 d8 09 11 80    	add    0x801109d8,%edx
801013f8:	89 1c 24             	mov    %ebx,(%esp)
801013fb:	bb 01 00 00 00       	mov    $0x1,%ebx
80101400:	89 54 24 04          	mov    %edx,0x4(%esp)
80101404:	e8 c7 ec ff ff       	call   801000d0 <bread>
80101409:	89 f9                	mov    %edi,%ecx
8010140b:	81 e7 ff 0f 00 00    	and    $0xfff,%edi
80101411:	89 fa                	mov    %edi,%edx
80101413:	83 e1 07             	and    $0x7,%ecx
80101416:	c1 fa 03             	sar    $0x3,%edx
80101419:	d3 e3                	shl    %cl,%ebx
8010141b:	89 c6                	mov    %eax,%esi
8010141d:	0f b6 44 10 5c       	movzbl 0x5c(%eax,%edx,1),%eax
80101422:	0f b6 c8             	movzbl %al,%ecx
80101425:	85 d9                	test   %ebx,%ecx
80101427:	74 20                	je     80101449 <bfree+0x79>
80101429:	f7 d3                	not    %ebx
8010142b:	21 c3                	and    %eax,%ebx
8010142d:	88 5c 16 5c          	mov    %bl,0x5c(%esi,%edx,1)
80101431:	89 34 24             	mov    %esi,(%esp)
80101434:	e8 67 18 00 00       	call   80102ca0 <log_write>
80101439:	89 34 24             	mov    %esi,(%esp)
8010143c:	e8 9f ed ff ff       	call   801001e0 <brelse>
80101441:	83 c4 1c             	add    $0x1c,%esp
80101444:	5b                   	pop    %ebx
80101445:	5e                   	pop    %esi
80101446:	5f                   	pop    %edi
80101447:	5d                   	pop    %ebp
80101448:	c3                   	ret    
80101449:	c7 04 24 78 6f 10 80 	movl   $0x80106f78,(%esp)
80101450:	e8 0b ef ff ff       	call   80100360 <panic>
80101455:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80101459:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

80101460 <iinit>:
80101460:	55                   	push   %ebp
80101461:	89 e5                	mov    %esp,%ebp
80101463:	53                   	push   %ebx
80101464:	bb 20 0a 11 80       	mov    $0x80110a20,%ebx
80101469:	83 ec 24             	sub    $0x24,%esp
8010146c:	c7 44 24 04 8b 6f 10 	movl   $0x80106f8b,0x4(%esp)
80101473:	80 
80101474:	c7 04 24 e0 09 11 80 	movl   $0x801109e0,(%esp)
8010147b:	e8 c0 2b 00 00       	call   80104040 <initlock>
80101480:	89 1c 24             	mov    %ebx,(%esp)
80101483:	81 c3 90 00 00 00    	add    $0x90,%ebx
80101489:	c7 44 24 04 92 6f 10 	movl   $0x80106f92,0x4(%esp)
80101490:	80 
80101491:	e8 9a 2a 00 00       	call   80103f30 <initsleeplock>
80101496:	81 fb 40 26 11 80    	cmp    $0x80112640,%ebx
8010149c:	75 e2                	jne    80101480 <iinit+0x20>
8010149e:	8b 45 08             	mov    0x8(%ebp),%eax
801014a1:	c7 44 24 04 c0 09 11 	movl   $0x801109c0,0x4(%esp)
801014a8:	80 
801014a9:	89 04 24             	mov    %eax,(%esp)
801014ac:	e8 cf fe ff ff       	call   80101380 <readsb>
801014b1:	a1 d8 09 11 80       	mov    0x801109d8,%eax
801014b6:	c7 04 24 f8 6f 10 80 	movl   $0x80106ff8,(%esp)
801014bd:	89 44 24 1c          	mov    %eax,0x1c(%esp)
801014c1:	a1 d4 09 11 80       	mov    0x801109d4,%eax
801014c6:	89 44 24 18          	mov    %eax,0x18(%esp)
801014ca:	a1 d0 09 11 80       	mov    0x801109d0,%eax
801014cf:	89 44 24 14          	mov    %eax,0x14(%esp)
801014d3:	a1 cc 09 11 80       	mov    0x801109cc,%eax
801014d8:	89 44 24 10          	mov    %eax,0x10(%esp)
801014dc:	a1 c8 09 11 80       	mov    0x801109c8,%eax
801014e1:	89 44 24 0c          	mov    %eax,0xc(%esp)
801014e5:	a1 c4 09 11 80       	mov    0x801109c4,%eax
801014ea:	89 44 24 08          	mov    %eax,0x8(%esp)
801014ee:	a1 c0 09 11 80       	mov    0x801109c0,%eax
801014f3:	89 44 24 04          	mov    %eax,0x4(%esp)
801014f7:	e8 54 f1 ff ff       	call   80100650 <cprintf>
801014fc:	83 c4 24             	add    $0x24,%esp
801014ff:	5b                   	pop    %ebx
80101500:	5d                   	pop    %ebp
80101501:	c3                   	ret    
80101502:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80101509:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

80101510 <ialloc>:
80101510:	55                   	push   %ebp
80101511:	89 e5                	mov    %esp,%ebp
80101513:	57                   	push   %edi
80101514:	56                   	push   %esi
80101515:	53                   	push   %ebx
80101516:	83 ec 2c             	sub    $0x2c,%esp
80101519:	8b 45 0c             	mov    0xc(%ebp),%eax
8010151c:	83 3d c8 09 11 80 01 	cmpl   $0x1,0x801109c8
80101523:	8b 7d 08             	mov    0x8(%ebp),%edi
80101526:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80101529:	0f 86 a2 00 00 00    	jbe    801015d1 <ialloc+0xc1>
8010152f:	be 01 00 00 00       	mov    $0x1,%esi
80101534:	bb 01 00 00 00       	mov    $0x1,%ebx
80101539:	eb 1a                	jmp    80101555 <ialloc+0x45>
8010153b:	90                   	nop
8010153c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80101540:	89 14 24             	mov    %edx,(%esp)
80101543:	83 c3 01             	add    $0x1,%ebx
80101546:	e8 95 ec ff ff       	call   801001e0 <brelse>
8010154b:	89 de                	mov    %ebx,%esi
8010154d:	3b 1d c8 09 11 80    	cmp    0x801109c8,%ebx
80101553:	73 7c                	jae    801015d1 <ialloc+0xc1>
80101555:	89 f0                	mov    %esi,%eax
80101557:	c1 e8 03             	shr    $0x3,%eax
8010155a:	03 05 d4 09 11 80    	add    0x801109d4,%eax
80101560:	89 3c 24             	mov    %edi,(%esp)
80101563:	89 44 24 04          	mov    %eax,0x4(%esp)
80101567:	e8 64 eb ff ff       	call   801000d0 <bread>
8010156c:	89 c2                	mov    %eax,%edx
8010156e:	89 f0                	mov    %esi,%eax
80101570:	83 e0 07             	and    $0x7,%eax
80101573:	c1 e0 06             	shl    $0x6,%eax
80101576:	8d 4c 02 5c          	lea    0x5c(%edx,%eax,1),%ecx
8010157a:	66 83 39 00          	cmpw   $0x0,(%ecx)
8010157e:	75 c0                	jne    80101540 <ialloc+0x30>
80101580:	89 0c 24             	mov    %ecx,(%esp)
80101583:	c7 44 24 08 40 00 00 	movl   $0x40,0x8(%esp)
8010158a:	00 
8010158b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
80101592:	00 
80101593:	89 55 dc             	mov    %edx,-0x24(%ebp)
80101596:	89 4d e0             	mov    %ecx,-0x20(%ebp)
80101599:	e8 d2 2c 00 00       	call   80104270 <memset>
8010159e:	0f b7 45 e4          	movzwl -0x1c(%ebp),%eax
801015a2:	8b 55 dc             	mov    -0x24(%ebp),%edx
801015a5:	8b 4d e0             	mov    -0x20(%ebp),%ecx
801015a8:	89 55 e4             	mov    %edx,-0x1c(%ebp)
801015ab:	66 89 01             	mov    %ax,(%ecx)
801015ae:	89 14 24             	mov    %edx,(%esp)
801015b1:	e8 ea 16 00 00       	call   80102ca0 <log_write>
801015b6:	8b 55 e4             	mov    -0x1c(%ebp),%edx
801015b9:	89 14 24             	mov    %edx,(%esp)
801015bc:	e8 1f ec ff ff       	call   801001e0 <brelse>
801015c1:	83 c4 2c             	add    $0x2c,%esp
801015c4:	89 f2                	mov    %esi,%edx
801015c6:	5b                   	pop    %ebx
801015c7:	89 f8                	mov    %edi,%eax
801015c9:	5e                   	pop    %esi
801015ca:	5f                   	pop    %edi
801015cb:	5d                   	pop    %ebp
801015cc:	e9 2f fc ff ff       	jmp    80101200 <iget>
801015d1:	c7 04 24 98 6f 10 80 	movl   $0x80106f98,(%esp)
801015d8:	e8 83 ed ff ff       	call   80100360 <panic>
801015dd:	8d 76 00             	lea    0x0(%esi),%esi

801015e0 <iupdate>:
801015e0:	55                   	push   %ebp
801015e1:	89 e5                	mov    %esp,%ebp
801015e3:	56                   	push   %esi
801015e4:	53                   	push   %ebx
801015e5:	83 ec 10             	sub    $0x10,%esp
801015e8:	8b 5d 08             	mov    0x8(%ebp),%ebx
801015eb:	8b 43 04             	mov    0x4(%ebx),%eax
801015ee:	83 c3 5c             	add    $0x5c,%ebx
801015f1:	c1 e8 03             	shr    $0x3,%eax
801015f4:	03 05 d4 09 11 80    	add    0x801109d4,%eax
801015fa:	89 44 24 04          	mov    %eax,0x4(%esp)
801015fe:	8b 43 a4             	mov    -0x5c(%ebx),%eax
80101601:	89 04 24             	mov    %eax,(%esp)
80101604:	e8 c7 ea ff ff       	call   801000d0 <bread>
80101609:	8b 53 a8             	mov    -0x58(%ebx),%edx
8010160c:	83 e2 07             	and    $0x7,%edx
8010160f:	c1 e2 06             	shl    $0x6,%edx
80101612:	8d 54 10 5c          	lea    0x5c(%eax,%edx,1),%edx
80101616:	89 c6                	mov    %eax,%esi
80101618:	0f b7 43 f4          	movzwl -0xc(%ebx),%eax
8010161c:	83 c2 0c             	add    $0xc,%edx
8010161f:	66 89 42 f4          	mov    %ax,-0xc(%edx)
80101623:	0f b7 43 f6          	movzwl -0xa(%ebx),%eax
80101627:	66 89 42 f6          	mov    %ax,-0xa(%edx)
8010162b:	0f b7 43 f8          	movzwl -0x8(%ebx),%eax
8010162f:	66 89 42 f8          	mov    %ax,-0x8(%edx)
80101633:	0f b7 43 fa          	movzwl -0x6(%ebx),%eax
80101637:	66 89 42 fa          	mov    %ax,-0x6(%edx)
8010163b:	8b 43 fc             	mov    -0x4(%ebx),%eax
8010163e:	89 42 fc             	mov    %eax,-0x4(%edx)
80101641:	89 5c 24 04          	mov    %ebx,0x4(%esp)
80101645:	89 14 24             	mov    %edx,(%esp)
80101648:	c7 44 24 08 34 00 00 	movl   $0x34,0x8(%esp)
8010164f:	00 
80101650:	e8 bb 2c 00 00       	call   80104310 <memmove>
80101655:	89 34 24             	mov    %esi,(%esp)
80101658:	e8 43 16 00 00       	call   80102ca0 <log_write>
8010165d:	89 75 08             	mov    %esi,0x8(%ebp)
80101660:	83 c4 10             	add    $0x10,%esp
80101663:	5b                   	pop    %ebx
80101664:	5e                   	pop    %esi
80101665:	5d                   	pop    %ebp
80101666:	e9 75 eb ff ff       	jmp    801001e0 <brelse>
8010166b:	90                   	nop
8010166c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80101670 <idup>:
80101670:	55                   	push   %ebp
80101671:	89 e5                	mov    %esp,%ebp
80101673:	53                   	push   %ebx
80101674:	83 ec 14             	sub    $0x14,%esp
80101677:	8b 5d 08             	mov    0x8(%ebp),%ebx
8010167a:	c7 04 24 e0 09 11 80 	movl   $0x801109e0,(%esp)
80101681:	e8 aa 2a 00 00       	call   80104130 <acquire>
80101686:	83 43 08 01          	addl   $0x1,0x8(%ebx)
8010168a:	c7 04 24 e0 09 11 80 	movl   $0x801109e0,(%esp)
80101691:	e8 8a 2b 00 00       	call   80104220 <release>
80101696:	83 c4 14             	add    $0x14,%esp
80101699:	89 d8                	mov    %ebx,%eax
8010169b:	5b                   	pop    %ebx
8010169c:	5d                   	pop    %ebp
8010169d:	c3                   	ret    
8010169e:	66 90                	xchg   %ax,%ax

801016a0 <ilock>:
801016a0:	55                   	push   %ebp
801016a1:	89 e5                	mov    %esp,%ebp
801016a3:	56                   	push   %esi
801016a4:	53                   	push   %ebx
801016a5:	83 ec 10             	sub    $0x10,%esp
801016a8:	8b 5d 08             	mov    0x8(%ebp),%ebx
801016ab:	85 db                	test   %ebx,%ebx
801016ad:	0f 84 b3 00 00 00    	je     80101766 <ilock+0xc6>
801016b3:	8b 53 08             	mov    0x8(%ebx),%edx
801016b6:	85 d2                	test   %edx,%edx
801016b8:	0f 8e a8 00 00 00    	jle    80101766 <ilock+0xc6>
801016be:	8d 43 0c             	lea    0xc(%ebx),%eax
801016c1:	89 04 24             	mov    %eax,(%esp)
801016c4:	e8 a7 28 00 00       	call   80103f70 <acquiresleep>
801016c9:	8b 43 4c             	mov    0x4c(%ebx),%eax
801016cc:	85 c0                	test   %eax,%eax
801016ce:	74 08                	je     801016d8 <ilock+0x38>
801016d0:	83 c4 10             	add    $0x10,%esp
801016d3:	5b                   	pop    %ebx
801016d4:	5e                   	pop    %esi
801016d5:	5d                   	pop    %ebp
801016d6:	c3                   	ret    
801016d7:	90                   	nop
801016d8:	8b 43 04             	mov    0x4(%ebx),%eax
801016db:	c1 e8 03             	shr    $0x3,%eax
801016de:	03 05 d4 09 11 80    	add    0x801109d4,%eax
801016e4:	89 44 24 04          	mov    %eax,0x4(%esp)
801016e8:	8b 03                	mov    (%ebx),%eax
801016ea:	89 04 24             	mov    %eax,(%esp)
801016ed:	e8 de e9 ff ff       	call   801000d0 <bread>
801016f2:	8b 53 04             	mov    0x4(%ebx),%edx
801016f5:	83 e2 07             	and    $0x7,%edx
801016f8:	c1 e2 06             	shl    $0x6,%edx
801016fb:	8d 54 10 5c          	lea    0x5c(%eax,%edx,1),%edx
801016ff:	89 c6                	mov    %eax,%esi
80101701:	0f b7 02             	movzwl (%edx),%eax
80101704:	83 c2 0c             	add    $0xc,%edx
80101707:	66 89 43 50          	mov    %ax,0x50(%ebx)
8010170b:	0f b7 42 f6          	movzwl -0xa(%edx),%eax
8010170f:	66 89 43 52          	mov    %ax,0x52(%ebx)
80101713:	0f b7 42 f8          	movzwl -0x8(%edx),%eax
80101717:	66 89 43 54          	mov    %ax,0x54(%ebx)
8010171b:	0f b7 42 fa          	movzwl -0x6(%edx),%eax
8010171f:	66 89 43 56          	mov    %ax,0x56(%ebx)
80101723:	8b 42 fc             	mov    -0x4(%edx),%eax
80101726:	89 43 58             	mov    %eax,0x58(%ebx)
80101729:	8d 43 5c             	lea    0x5c(%ebx),%eax
8010172c:	89 54 24 04          	mov    %edx,0x4(%esp)
80101730:	c7 44 24 08 34 00 00 	movl   $0x34,0x8(%esp)
80101737:	00 
80101738:	89 04 24             	mov    %eax,(%esp)
8010173b:	e8 d0 2b 00 00       	call   80104310 <memmove>
80101740:	89 34 24             	mov    %esi,(%esp)
80101743:	e8 98 ea ff ff       	call   801001e0 <brelse>
80101748:	66 83 7b 50 00       	cmpw   $0x0,0x50(%ebx)
8010174d:	c7 43 4c 01 00 00 00 	movl   $0x1,0x4c(%ebx)
80101754:	0f 85 76 ff ff ff    	jne    801016d0 <ilock+0x30>
8010175a:	c7 04 24 b0 6f 10 80 	movl   $0x80106fb0,(%esp)
80101761:	e8 fa eb ff ff       	call   80100360 <panic>
80101766:	c7 04 24 aa 6f 10 80 	movl   $0x80106faa,(%esp)
8010176d:	e8 ee eb ff ff       	call   80100360 <panic>
80101772:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80101779:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

80101780 <iunlock>:
80101780:	55                   	push   %ebp
80101781:	89 e5                	mov    %esp,%ebp
80101783:	56                   	push   %esi
80101784:	53                   	push   %ebx
80101785:	83 ec 10             	sub    $0x10,%esp
80101788:	8b 5d 08             	mov    0x8(%ebp),%ebx
8010178b:	85 db                	test   %ebx,%ebx
8010178d:	74 24                	je     801017b3 <iunlock+0x33>
8010178f:	8d 73 0c             	lea    0xc(%ebx),%esi
80101792:	89 34 24             	mov    %esi,(%esp)
80101795:	e8 76 28 00 00       	call   80104010 <holdingsleep>
8010179a:	85 c0                	test   %eax,%eax
8010179c:	74 15                	je     801017b3 <iunlock+0x33>
8010179e:	8b 43 08             	mov    0x8(%ebx),%eax
801017a1:	85 c0                	test   %eax,%eax
801017a3:	7e 0e                	jle    801017b3 <iunlock+0x33>
801017a5:	89 75 08             	mov    %esi,0x8(%ebp)
801017a8:	83 c4 10             	add    $0x10,%esp
801017ab:	5b                   	pop    %ebx
801017ac:	5e                   	pop    %esi
801017ad:	5d                   	pop    %ebp
801017ae:	e9 1d 28 00 00       	jmp    80103fd0 <releasesleep>
801017b3:	c7 04 24 bf 6f 10 80 	movl   $0x80106fbf,(%esp)
801017ba:	e8 a1 eb ff ff       	call   80100360 <panic>
801017bf:	90                   	nop

801017c0 <iput>:
801017c0:	55                   	push   %ebp
801017c1:	89 e5                	mov    %esp,%ebp
801017c3:	57                   	push   %edi
801017c4:	56                   	push   %esi
801017c5:	53                   	push   %ebx
801017c6:	83 ec 1c             	sub    $0x1c,%esp
801017c9:	8b 75 08             	mov    0x8(%ebp),%esi
801017cc:	8d 7e 0c             	lea    0xc(%esi),%edi
801017cf:	89 3c 24             	mov    %edi,(%esp)
801017d2:	e8 99 27 00 00       	call   80103f70 <acquiresleep>
801017d7:	8b 56 4c             	mov    0x4c(%esi),%edx
801017da:	85 d2                	test   %edx,%edx
801017dc:	74 07                	je     801017e5 <iput+0x25>
801017de:	66 83 7e 56 00       	cmpw   $0x0,0x56(%esi)
801017e3:	74 2b                	je     80101810 <iput+0x50>
801017e5:	89 3c 24             	mov    %edi,(%esp)
801017e8:	e8 e3 27 00 00       	call   80103fd0 <releasesleep>
801017ed:	c7 04 24 e0 09 11 80 	movl   $0x801109e0,(%esp)
801017f4:	e8 37 29 00 00       	call   80104130 <acquire>
801017f9:	83 6e 08 01          	subl   $0x1,0x8(%esi)
801017fd:	c7 45 08 e0 09 11 80 	movl   $0x801109e0,0x8(%ebp)
80101804:	83 c4 1c             	add    $0x1c,%esp
80101807:	5b                   	pop    %ebx
80101808:	5e                   	pop    %esi
80101809:	5f                   	pop    %edi
8010180a:	5d                   	pop    %ebp
8010180b:	e9 10 2a 00 00       	jmp    80104220 <release>
80101810:	c7 04 24 e0 09 11 80 	movl   $0x801109e0,(%esp)
80101817:	e8 14 29 00 00       	call   80104130 <acquire>
8010181c:	8b 5e 08             	mov    0x8(%esi),%ebx
8010181f:	c7 04 24 e0 09 11 80 	movl   $0x801109e0,(%esp)
80101826:	e8 f5 29 00 00       	call   80104220 <release>
8010182b:	83 fb 01             	cmp    $0x1,%ebx
8010182e:	75 b5                	jne    801017e5 <iput+0x25>
80101830:	8d 4e 30             	lea    0x30(%esi),%ecx
80101833:	89 f3                	mov    %esi,%ebx
80101835:	89 7d e4             	mov    %edi,-0x1c(%ebp)
80101838:	89 cf                	mov    %ecx,%edi
8010183a:	eb 0b                	jmp    80101847 <iput+0x87>
8010183c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80101840:	83 c3 04             	add    $0x4,%ebx
80101843:	39 fb                	cmp    %edi,%ebx
80101845:	74 19                	je     80101860 <iput+0xa0>
80101847:	8b 53 5c             	mov    0x5c(%ebx),%edx
8010184a:	85 d2                	test   %edx,%edx
8010184c:	74 f2                	je     80101840 <iput+0x80>
8010184e:	8b 06                	mov    (%esi),%eax
80101850:	e8 7b fb ff ff       	call   801013d0 <bfree>
80101855:	c7 43 5c 00 00 00 00 	movl   $0x0,0x5c(%ebx)
8010185c:	eb e2                	jmp    80101840 <iput+0x80>
8010185e:	66 90                	xchg   %ax,%ax
80101860:	8b 86 8c 00 00 00    	mov    0x8c(%esi),%eax
80101866:	8b 7d e4             	mov    -0x1c(%ebp),%edi
80101869:	85 c0                	test   %eax,%eax
8010186b:	75 2b                	jne    80101898 <iput+0xd8>
8010186d:	c7 46 58 00 00 00 00 	movl   $0x0,0x58(%esi)
80101874:	89 34 24             	mov    %esi,(%esp)
80101877:	e8 64 fd ff ff       	call   801015e0 <iupdate>
8010187c:	31 c0                	xor    %eax,%eax
8010187e:	66 89 46 50          	mov    %ax,0x50(%esi)
80101882:	89 34 24             	mov    %esi,(%esp)
80101885:	e8 56 fd ff ff       	call   801015e0 <iupdate>
8010188a:	c7 46 4c 00 00 00 00 	movl   $0x0,0x4c(%esi)
80101891:	e9 4f ff ff ff       	jmp    801017e5 <iput+0x25>
80101896:	66 90                	xchg   %ax,%ax
80101898:	89 44 24 04          	mov    %eax,0x4(%esp)
8010189c:	8b 06                	mov    (%esi),%eax
8010189e:	31 db                	xor    %ebx,%ebx
801018a0:	89 04 24             	mov    %eax,(%esp)
801018a3:	e8 28 e8 ff ff       	call   801000d0 <bread>
801018a8:	89 7d e0             	mov    %edi,-0x20(%ebp)
801018ab:	8d 48 5c             	lea    0x5c(%eax),%ecx
801018ae:	89 45 e4             	mov    %eax,-0x1c(%ebp)
801018b1:	89 cf                	mov    %ecx,%edi
801018b3:	31 c0                	xor    %eax,%eax
801018b5:	eb 0e                	jmp    801018c5 <iput+0x105>
801018b7:	90                   	nop
801018b8:	83 c3 01             	add    $0x1,%ebx
801018bb:	81 fb 80 00 00 00    	cmp    $0x80,%ebx
801018c1:	89 d8                	mov    %ebx,%eax
801018c3:	74 10                	je     801018d5 <iput+0x115>
801018c5:	8b 14 87             	mov    (%edi,%eax,4),%edx
801018c8:	85 d2                	test   %edx,%edx
801018ca:	74 ec                	je     801018b8 <iput+0xf8>
801018cc:	8b 06                	mov    (%esi),%eax
801018ce:	e8 fd fa ff ff       	call   801013d0 <bfree>
801018d3:	eb e3                	jmp    801018b8 <iput+0xf8>
801018d5:	8b 45 e4             	mov    -0x1c(%ebp),%eax
801018d8:	8b 7d e0             	mov    -0x20(%ebp),%edi
801018db:	89 04 24             	mov    %eax,(%esp)
801018de:	e8 fd e8 ff ff       	call   801001e0 <brelse>
801018e3:	8b 96 8c 00 00 00    	mov    0x8c(%esi),%edx
801018e9:	8b 06                	mov    (%esi),%eax
801018eb:	e8 e0 fa ff ff       	call   801013d0 <bfree>
801018f0:	c7 86 8c 00 00 00 00 	movl   $0x0,0x8c(%esi)
801018f7:	00 00 00 
801018fa:	e9 6e ff ff ff       	jmp    8010186d <iput+0xad>
801018ff:	90                   	nop

80101900 <iunlockput>:
80101900:	55                   	push   %ebp
80101901:	89 e5                	mov    %esp,%ebp
80101903:	53                   	push   %ebx
80101904:	83 ec 14             	sub    $0x14,%esp
80101907:	8b 5d 08             	mov    0x8(%ebp),%ebx
8010190a:	89 1c 24             	mov    %ebx,(%esp)
8010190d:	e8 6e fe ff ff       	call   80101780 <iunlock>
80101912:	89 5d 08             	mov    %ebx,0x8(%ebp)
80101915:	83 c4 14             	add    $0x14,%esp
80101918:	5b                   	pop    %ebx
80101919:	5d                   	pop    %ebp
8010191a:	e9 a1 fe ff ff       	jmp    801017c0 <iput>
8010191f:	90                   	nop

80101920 <stati>:
80101920:	55                   	push   %ebp
80101921:	89 e5                	mov    %esp,%ebp
80101923:	8b 55 08             	mov    0x8(%ebp),%edx
80101926:	8b 45 0c             	mov    0xc(%ebp),%eax
80101929:	8b 0a                	mov    (%edx),%ecx
8010192b:	89 48 04             	mov    %ecx,0x4(%eax)
8010192e:	8b 4a 04             	mov    0x4(%edx),%ecx
80101931:	89 48 08             	mov    %ecx,0x8(%eax)
80101934:	0f b7 4a 50          	movzwl 0x50(%edx),%ecx
80101938:	66 89 08             	mov    %cx,(%eax)
8010193b:	0f b7 4a 56          	movzwl 0x56(%edx),%ecx
8010193f:	66 89 48 0c          	mov    %cx,0xc(%eax)
80101943:	8b 52 58             	mov    0x58(%edx),%edx
80101946:	89 50 10             	mov    %edx,0x10(%eax)
80101949:	5d                   	pop    %ebp
8010194a:	c3                   	ret    
8010194b:	90                   	nop
8010194c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80101950 <readi>:
80101950:	55                   	push   %ebp
80101951:	89 e5                	mov    %esp,%ebp
80101953:	57                   	push   %edi
80101954:	56                   	push   %esi
80101955:	53                   	push   %ebx
80101956:	83 ec 2c             	sub    $0x2c,%esp
80101959:	8b 45 0c             	mov    0xc(%ebp),%eax
8010195c:	8b 7d 08             	mov    0x8(%ebp),%edi
8010195f:	8b 75 10             	mov    0x10(%ebp),%esi
80101962:	89 45 e0             	mov    %eax,-0x20(%ebp)
80101965:	8b 45 14             	mov    0x14(%ebp),%eax
80101968:	66 83 7f 50 03       	cmpw   $0x3,0x50(%edi)
8010196d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80101970:	0f 84 aa 00 00 00    	je     80101a20 <readi+0xd0>
80101976:	8b 47 58             	mov    0x58(%edi),%eax
80101979:	39 f0                	cmp    %esi,%eax
8010197b:	0f 82 c7 00 00 00    	jb     80101a48 <readi+0xf8>
80101981:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
80101984:	89 da                	mov    %ebx,%edx
80101986:	01 f2                	add    %esi,%edx
80101988:	0f 82 ba 00 00 00    	jb     80101a48 <readi+0xf8>
8010198e:	89 c1                	mov    %eax,%ecx
80101990:	29 f1                	sub    %esi,%ecx
80101992:	39 d0                	cmp    %edx,%eax
80101994:	0f 43 cb             	cmovae %ebx,%ecx
80101997:	31 c0                	xor    %eax,%eax
80101999:	85 c9                	test   %ecx,%ecx
8010199b:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
8010199e:	74 70                	je     80101a10 <readi+0xc0>
801019a0:	89 7d d8             	mov    %edi,-0x28(%ebp)
801019a3:	89 c7                	mov    %eax,%edi
801019a5:	8d 76 00             	lea    0x0(%esi),%esi
801019a8:	8b 5d d8             	mov    -0x28(%ebp),%ebx
801019ab:	89 f2                	mov    %esi,%edx
801019ad:	c1 ea 09             	shr    $0x9,%edx
801019b0:	89 d8                	mov    %ebx,%eax
801019b2:	e8 09 f9 ff ff       	call   801012c0 <bmap>
801019b7:	89 44 24 04          	mov    %eax,0x4(%esp)
801019bb:	8b 03                	mov    (%ebx),%eax
801019bd:	bb 00 02 00 00       	mov    $0x200,%ebx
801019c2:	89 04 24             	mov    %eax,(%esp)
801019c5:	e8 06 e7 ff ff       	call   801000d0 <bread>
801019ca:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
801019cd:	29 f9                	sub    %edi,%ecx
801019cf:	89 c2                	mov    %eax,%edx
801019d1:	89 f0                	mov    %esi,%eax
801019d3:	25 ff 01 00 00       	and    $0x1ff,%eax
801019d8:	29 c3                	sub    %eax,%ebx
801019da:	8d 44 02 5c          	lea    0x5c(%edx,%eax,1),%eax
801019de:	39 cb                	cmp    %ecx,%ebx
801019e0:	89 44 24 04          	mov    %eax,0x4(%esp)
801019e4:	8b 45 e0             	mov    -0x20(%ebp),%eax
801019e7:	0f 47 d9             	cmova  %ecx,%ebx
801019ea:	89 5c 24 08          	mov    %ebx,0x8(%esp)
801019ee:	01 df                	add    %ebx,%edi
801019f0:	01 de                	add    %ebx,%esi
801019f2:	89 55 dc             	mov    %edx,-0x24(%ebp)
801019f5:	89 04 24             	mov    %eax,(%esp)
801019f8:	e8 13 29 00 00       	call   80104310 <memmove>
801019fd:	8b 55 dc             	mov    -0x24(%ebp),%edx
80101a00:	89 14 24             	mov    %edx,(%esp)
80101a03:	e8 d8 e7 ff ff       	call   801001e0 <brelse>
80101a08:	01 5d e0             	add    %ebx,-0x20(%ebp)
80101a0b:	39 7d e4             	cmp    %edi,-0x1c(%ebp)
80101a0e:	77 98                	ja     801019a8 <readi+0x58>
80101a10:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80101a13:	83 c4 2c             	add    $0x2c,%esp
80101a16:	5b                   	pop    %ebx
80101a17:	5e                   	pop    %esi
80101a18:	5f                   	pop    %edi
80101a19:	5d                   	pop    %ebp
80101a1a:	c3                   	ret    
80101a1b:	90                   	nop
80101a1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80101a20:	0f bf 47 52          	movswl 0x52(%edi),%eax
80101a24:	66 83 f8 09          	cmp    $0x9,%ax
80101a28:	77 1e                	ja     80101a48 <readi+0xf8>
80101a2a:	8b 04 c5 60 09 11 80 	mov    -0x7feef6a0(,%eax,8),%eax
80101a31:	85 c0                	test   %eax,%eax
80101a33:	74 13                	je     80101a48 <readi+0xf8>
80101a35:	8b 75 e4             	mov    -0x1c(%ebp),%esi
80101a38:	89 75 10             	mov    %esi,0x10(%ebp)
80101a3b:	83 c4 2c             	add    $0x2c,%esp
80101a3e:	5b                   	pop    %ebx
80101a3f:	5e                   	pop    %esi
80101a40:	5f                   	pop    %edi
80101a41:	5d                   	pop    %ebp
80101a42:	ff e0                	jmp    *%eax
80101a44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80101a48:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80101a4d:	eb c4                	jmp    80101a13 <readi+0xc3>
80101a4f:	90                   	nop

80101a50 <writei>:
80101a50:	55                   	push   %ebp
80101a51:	89 e5                	mov    %esp,%ebp
80101a53:	57                   	push   %edi
80101a54:	56                   	push   %esi
80101a55:	53                   	push   %ebx
80101a56:	83 ec 2c             	sub    $0x2c,%esp
80101a59:	8b 45 08             	mov    0x8(%ebp),%eax
80101a5c:	8b 75 0c             	mov    0xc(%ebp),%esi
80101a5f:	8b 4d 14             	mov    0x14(%ebp),%ecx
80101a62:	66 83 78 50 03       	cmpw   $0x3,0x50(%eax)
80101a67:	89 75 dc             	mov    %esi,-0x24(%ebp)
80101a6a:	8b 75 10             	mov    0x10(%ebp),%esi
80101a6d:	89 45 d8             	mov    %eax,-0x28(%ebp)
80101a70:	89 4d e0             	mov    %ecx,-0x20(%ebp)
80101a73:	0f 84 b7 00 00 00    	je     80101b30 <writei+0xe0>
80101a79:	8b 45 d8             	mov    -0x28(%ebp),%eax
80101a7c:	39 70 58             	cmp    %esi,0x58(%eax)
80101a7f:	0f 82 e3 00 00 00    	jb     80101b68 <writei+0x118>
80101a85:	8b 4d e0             	mov    -0x20(%ebp),%ecx
80101a88:	89 c8                	mov    %ecx,%eax
80101a8a:	01 f0                	add    %esi,%eax
80101a8c:	0f 82 d6 00 00 00    	jb     80101b68 <writei+0x118>
80101a92:	3d 00 18 01 00       	cmp    $0x11800,%eax
80101a97:	0f 87 cb 00 00 00    	ja     80101b68 <writei+0x118>
80101a9d:	85 c9                	test   %ecx,%ecx
80101a9f:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
80101aa6:	74 77                	je     80101b1f <writei+0xcf>
80101aa8:	8b 7d d8             	mov    -0x28(%ebp),%edi
80101aab:	89 f2                	mov    %esi,%edx
80101aad:	bb 00 02 00 00       	mov    $0x200,%ebx
80101ab2:	c1 ea 09             	shr    $0x9,%edx
80101ab5:	89 f8                	mov    %edi,%eax
80101ab7:	e8 04 f8 ff ff       	call   801012c0 <bmap>
80101abc:	89 44 24 04          	mov    %eax,0x4(%esp)
80101ac0:	8b 07                	mov    (%edi),%eax
80101ac2:	89 04 24             	mov    %eax,(%esp)
80101ac5:	e8 06 e6 ff ff       	call   801000d0 <bread>
80101aca:	8b 4d e0             	mov    -0x20(%ebp),%ecx
80101acd:	2b 4d e4             	sub    -0x1c(%ebp),%ecx
80101ad0:	8b 55 dc             	mov    -0x24(%ebp),%edx
80101ad3:	89 c7                	mov    %eax,%edi
80101ad5:	89 f0                	mov    %esi,%eax
80101ad7:	25 ff 01 00 00       	and    $0x1ff,%eax
80101adc:	29 c3                	sub    %eax,%ebx
80101ade:	39 cb                	cmp    %ecx,%ebx
80101ae0:	0f 47 d9             	cmova  %ecx,%ebx
80101ae3:	8d 44 07 5c          	lea    0x5c(%edi,%eax,1),%eax
80101ae7:	01 de                	add    %ebx,%esi
80101ae9:	89 54 24 04          	mov    %edx,0x4(%esp)
80101aed:	89 5c 24 08          	mov    %ebx,0x8(%esp)
80101af1:	89 04 24             	mov    %eax,(%esp)
80101af4:	e8 17 28 00 00       	call   80104310 <memmove>
80101af9:	89 3c 24             	mov    %edi,(%esp)
80101afc:	e8 9f 11 00 00       	call   80102ca0 <log_write>
80101b01:	89 3c 24             	mov    %edi,(%esp)
80101b04:	e8 d7 e6 ff ff       	call   801001e0 <brelse>
80101b09:	01 5d e4             	add    %ebx,-0x1c(%ebp)
80101b0c:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80101b0f:	01 5d dc             	add    %ebx,-0x24(%ebp)
80101b12:	39 45 e0             	cmp    %eax,-0x20(%ebp)
80101b15:	77 91                	ja     80101aa8 <writei+0x58>
80101b17:	8b 45 d8             	mov    -0x28(%ebp),%eax
80101b1a:	39 70 58             	cmp    %esi,0x58(%eax)
80101b1d:	72 39                	jb     80101b58 <writei+0x108>
80101b1f:	8b 45 e0             	mov    -0x20(%ebp),%eax
80101b22:	83 c4 2c             	add    $0x2c,%esp
80101b25:	5b                   	pop    %ebx
80101b26:	5e                   	pop    %esi
80101b27:	5f                   	pop    %edi
80101b28:	5d                   	pop    %ebp
80101b29:	c3                   	ret    
80101b2a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80101b30:	0f bf 40 52          	movswl 0x52(%eax),%eax
80101b34:	66 83 f8 09          	cmp    $0x9,%ax
80101b38:	77 2e                	ja     80101b68 <writei+0x118>
80101b3a:	8b 04 c5 64 09 11 80 	mov    -0x7feef69c(,%eax,8),%eax
80101b41:	85 c0                	test   %eax,%eax
80101b43:	74 23                	je     80101b68 <writei+0x118>
80101b45:	89 4d 10             	mov    %ecx,0x10(%ebp)
80101b48:	83 c4 2c             	add    $0x2c,%esp
80101b4b:	5b                   	pop    %ebx
80101b4c:	5e                   	pop    %esi
80101b4d:	5f                   	pop    %edi
80101b4e:	5d                   	pop    %ebp
80101b4f:	ff e0                	jmp    *%eax
80101b51:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80101b58:	8b 45 d8             	mov    -0x28(%ebp),%eax
80101b5b:	89 70 58             	mov    %esi,0x58(%eax)
80101b5e:	89 04 24             	mov    %eax,(%esp)
80101b61:	e8 7a fa ff ff       	call   801015e0 <iupdate>
80101b66:	eb b7                	jmp    80101b1f <writei+0xcf>
80101b68:	83 c4 2c             	add    $0x2c,%esp
80101b6b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80101b70:	5b                   	pop    %ebx
80101b71:	5e                   	pop    %esi
80101b72:	5f                   	pop    %edi
80101b73:	5d                   	pop    %ebp
80101b74:	c3                   	ret    
80101b75:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80101b79:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

80101b80 <namecmp>:
80101b80:	55                   	push   %ebp
80101b81:	89 e5                	mov    %esp,%ebp
80101b83:	83 ec 18             	sub    $0x18,%esp
80101b86:	8b 45 0c             	mov    0xc(%ebp),%eax
80101b89:	c7 44 24 08 0e 00 00 	movl   $0xe,0x8(%esp)
80101b90:	00 
80101b91:	89 44 24 04          	mov    %eax,0x4(%esp)
80101b95:	8b 45 08             	mov    0x8(%ebp),%eax
80101b98:	89 04 24             	mov    %eax,(%esp)
80101b9b:	e8 f0 27 00 00       	call   80104390 <strncmp>
80101ba0:	c9                   	leave  
80101ba1:	c3                   	ret    
80101ba2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80101ba9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

80101bb0 <dirlookup>:
80101bb0:	55                   	push   %ebp
80101bb1:	89 e5                	mov    %esp,%ebp
80101bb3:	57                   	push   %edi
80101bb4:	56                   	push   %esi
80101bb5:	53                   	push   %ebx
80101bb6:	83 ec 2c             	sub    $0x2c,%esp
80101bb9:	8b 5d 08             	mov    0x8(%ebp),%ebx
80101bbc:	66 83 7b 50 01       	cmpw   $0x1,0x50(%ebx)
80101bc1:	0f 85 97 00 00 00    	jne    80101c5e <dirlookup+0xae>
80101bc7:	8b 53 58             	mov    0x58(%ebx),%edx
80101bca:	31 ff                	xor    %edi,%edi
80101bcc:	8d 75 d8             	lea    -0x28(%ebp),%esi
80101bcf:	85 d2                	test   %edx,%edx
80101bd1:	75 0d                	jne    80101be0 <dirlookup+0x30>
80101bd3:	eb 73                	jmp    80101c48 <dirlookup+0x98>
80101bd5:	8d 76 00             	lea    0x0(%esi),%esi
80101bd8:	83 c7 10             	add    $0x10,%edi
80101bdb:	39 7b 58             	cmp    %edi,0x58(%ebx)
80101bde:	76 68                	jbe    80101c48 <dirlookup+0x98>
80101be0:	c7 44 24 0c 10 00 00 	movl   $0x10,0xc(%esp)
80101be7:	00 
80101be8:	89 7c 24 08          	mov    %edi,0x8(%esp)
80101bec:	89 74 24 04          	mov    %esi,0x4(%esp)
80101bf0:	89 1c 24             	mov    %ebx,(%esp)
80101bf3:	e8 58 fd ff ff       	call   80101950 <readi>
80101bf8:	83 f8 10             	cmp    $0x10,%eax
80101bfb:	75 55                	jne    80101c52 <dirlookup+0xa2>
80101bfd:	66 83 7d d8 00       	cmpw   $0x0,-0x28(%ebp)
80101c02:	74 d4                	je     80101bd8 <dirlookup+0x28>
80101c04:	8d 45 da             	lea    -0x26(%ebp),%eax
80101c07:	89 44 24 04          	mov    %eax,0x4(%esp)
80101c0b:	8b 45 0c             	mov    0xc(%ebp),%eax
80101c0e:	c7 44 24 08 0e 00 00 	movl   $0xe,0x8(%esp)
80101c15:	00 
80101c16:	89 04 24             	mov    %eax,(%esp)
80101c19:	e8 72 27 00 00       	call   80104390 <strncmp>
80101c1e:	85 c0                	test   %eax,%eax
80101c20:	75 b6                	jne    80101bd8 <dirlookup+0x28>
80101c22:	8b 45 10             	mov    0x10(%ebp),%eax
80101c25:	85 c0                	test   %eax,%eax
80101c27:	74 05                	je     80101c2e <dirlookup+0x7e>
80101c29:	8b 45 10             	mov    0x10(%ebp),%eax
80101c2c:	89 38                	mov    %edi,(%eax)
80101c2e:	0f b7 55 d8          	movzwl -0x28(%ebp),%edx
80101c32:	8b 03                	mov    (%ebx),%eax
80101c34:	e8 c7 f5 ff ff       	call   80101200 <iget>
80101c39:	83 c4 2c             	add    $0x2c,%esp
80101c3c:	5b                   	pop    %ebx
80101c3d:	5e                   	pop    %esi
80101c3e:	5f                   	pop    %edi
80101c3f:	5d                   	pop    %ebp
80101c40:	c3                   	ret    
80101c41:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80101c48:	83 c4 2c             	add    $0x2c,%esp
80101c4b:	31 c0                	xor    %eax,%eax
80101c4d:	5b                   	pop    %ebx
80101c4e:	5e                   	pop    %esi
80101c4f:	5f                   	pop    %edi
80101c50:	5d                   	pop    %ebp
80101c51:	c3                   	ret    
80101c52:	c7 04 24 d9 6f 10 80 	movl   $0x80106fd9,(%esp)
80101c59:	e8 02 e7 ff ff       	call   80100360 <panic>
80101c5e:	c7 04 24 c7 6f 10 80 	movl   $0x80106fc7,(%esp)
80101c65:	e8 f6 e6 ff ff       	call   80100360 <panic>
80101c6a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

80101c70 <namex>:
80101c70:	55                   	push   %ebp
80101c71:	89 e5                	mov    %esp,%ebp
80101c73:	57                   	push   %edi
80101c74:	89 cf                	mov    %ecx,%edi
80101c76:	56                   	push   %esi
80101c77:	53                   	push   %ebx
80101c78:	89 c3                	mov    %eax,%ebx
80101c7a:	83 ec 2c             	sub    $0x2c,%esp
80101c7d:	80 38 2f             	cmpb   $0x2f,(%eax)
80101c80:	89 55 e0             	mov    %edx,-0x20(%ebp)
80101c83:	0f 84 51 01 00 00    	je     80101dda <namex+0x16a>
80101c89:	e8 02 1a 00 00       	call   80103690 <myproc>
80101c8e:	8b 70 68             	mov    0x68(%eax),%esi
80101c91:	c7 04 24 e0 09 11 80 	movl   $0x801109e0,(%esp)
80101c98:	e8 93 24 00 00       	call   80104130 <acquire>
80101c9d:	83 46 08 01          	addl   $0x1,0x8(%esi)
80101ca1:	c7 04 24 e0 09 11 80 	movl   $0x801109e0,(%esp)
80101ca8:	e8 73 25 00 00       	call   80104220 <release>
80101cad:	eb 04                	jmp    80101cb3 <namex+0x43>
80101caf:	90                   	nop
80101cb0:	83 c3 01             	add    $0x1,%ebx
80101cb3:	0f b6 03             	movzbl (%ebx),%eax
80101cb6:	3c 2f                	cmp    $0x2f,%al
80101cb8:	74 f6                	je     80101cb0 <namex+0x40>
80101cba:	84 c0                	test   %al,%al
80101cbc:	0f 84 ed 00 00 00    	je     80101daf <namex+0x13f>
80101cc2:	0f b6 03             	movzbl (%ebx),%eax
80101cc5:	89 da                	mov    %ebx,%edx
80101cc7:	84 c0                	test   %al,%al
80101cc9:	0f 84 b1 00 00 00    	je     80101d80 <namex+0x110>
80101ccf:	3c 2f                	cmp    $0x2f,%al
80101cd1:	75 0f                	jne    80101ce2 <namex+0x72>
80101cd3:	e9 a8 00 00 00       	jmp    80101d80 <namex+0x110>
80101cd8:	3c 2f                	cmp    $0x2f,%al
80101cda:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80101ce0:	74 0a                	je     80101cec <namex+0x7c>
80101ce2:	83 c2 01             	add    $0x1,%edx
80101ce5:	0f b6 02             	movzbl (%edx),%eax
80101ce8:	84 c0                	test   %al,%al
80101cea:	75 ec                	jne    80101cd8 <namex+0x68>
80101cec:	89 d1                	mov    %edx,%ecx
80101cee:	29 d9                	sub    %ebx,%ecx
80101cf0:	83 f9 0d             	cmp    $0xd,%ecx
80101cf3:	0f 8e 8f 00 00 00    	jle    80101d88 <namex+0x118>
80101cf9:	89 5c 24 04          	mov    %ebx,0x4(%esp)
80101cfd:	c7 44 24 08 0e 00 00 	movl   $0xe,0x8(%esp)
80101d04:	00 
80101d05:	89 3c 24             	mov    %edi,(%esp)
80101d08:	89 55 e4             	mov    %edx,-0x1c(%ebp)
80101d0b:	e8 00 26 00 00       	call   80104310 <memmove>
80101d10:	8b 55 e4             	mov    -0x1c(%ebp),%edx
80101d13:	89 d3                	mov    %edx,%ebx
80101d15:	80 3a 2f             	cmpb   $0x2f,(%edx)
80101d18:	75 0e                	jne    80101d28 <namex+0xb8>
80101d1a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80101d20:	83 c3 01             	add    $0x1,%ebx
80101d23:	80 3b 2f             	cmpb   $0x2f,(%ebx)
80101d26:	74 f8                	je     80101d20 <namex+0xb0>
80101d28:	89 34 24             	mov    %esi,(%esp)
80101d2b:	e8 70 f9 ff ff       	call   801016a0 <ilock>
80101d30:	66 83 7e 50 01       	cmpw   $0x1,0x50(%esi)
80101d35:	0f 85 85 00 00 00    	jne    80101dc0 <namex+0x150>
80101d3b:	8b 55 e0             	mov    -0x20(%ebp),%edx
80101d3e:	85 d2                	test   %edx,%edx
80101d40:	74 09                	je     80101d4b <namex+0xdb>
80101d42:	80 3b 00             	cmpb   $0x0,(%ebx)
80101d45:	0f 84 a5 00 00 00    	je     80101df0 <namex+0x180>
80101d4b:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
80101d52:	00 
80101d53:	89 7c 24 04          	mov    %edi,0x4(%esp)
80101d57:	89 34 24             	mov    %esi,(%esp)
80101d5a:	e8 51 fe ff ff       	call   80101bb0 <dirlookup>
80101d5f:	85 c0                	test   %eax,%eax
80101d61:	74 5d                	je     80101dc0 <namex+0x150>
80101d63:	89 34 24             	mov    %esi,(%esp)
80101d66:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80101d69:	e8 12 fa ff ff       	call   80101780 <iunlock>
80101d6e:	89 34 24             	mov    %esi,(%esp)
80101d71:	e8 4a fa ff ff       	call   801017c0 <iput>
80101d76:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80101d79:	89 c6                	mov    %eax,%esi
80101d7b:	e9 33 ff ff ff       	jmp    80101cb3 <namex+0x43>
80101d80:	31 c9                	xor    %ecx,%ecx
80101d82:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80101d88:	89 4c 24 08          	mov    %ecx,0x8(%esp)
80101d8c:	89 5c 24 04          	mov    %ebx,0x4(%esp)
80101d90:	89 3c 24             	mov    %edi,(%esp)
80101d93:	89 55 dc             	mov    %edx,-0x24(%ebp)
80101d96:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
80101d99:	e8 72 25 00 00       	call   80104310 <memmove>
80101d9e:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
80101da1:	8b 55 dc             	mov    -0x24(%ebp),%edx
80101da4:	c6 04 0f 00          	movb   $0x0,(%edi,%ecx,1)
80101da8:	89 d3                	mov    %edx,%ebx
80101daa:	e9 66 ff ff ff       	jmp    80101d15 <namex+0xa5>
80101daf:	8b 45 e0             	mov    -0x20(%ebp),%eax
80101db2:	85 c0                	test   %eax,%eax
80101db4:	75 4c                	jne    80101e02 <namex+0x192>
80101db6:	89 f0                	mov    %esi,%eax
80101db8:	83 c4 2c             	add    $0x2c,%esp
80101dbb:	5b                   	pop    %ebx
80101dbc:	5e                   	pop    %esi
80101dbd:	5f                   	pop    %edi
80101dbe:	5d                   	pop    %ebp
80101dbf:	c3                   	ret    
80101dc0:	89 34 24             	mov    %esi,(%esp)
80101dc3:	e8 b8 f9 ff ff       	call   80101780 <iunlock>
80101dc8:	89 34 24             	mov    %esi,(%esp)
80101dcb:	e8 f0 f9 ff ff       	call   801017c0 <iput>
80101dd0:	83 c4 2c             	add    $0x2c,%esp
80101dd3:	31 c0                	xor    %eax,%eax
80101dd5:	5b                   	pop    %ebx
80101dd6:	5e                   	pop    %esi
80101dd7:	5f                   	pop    %edi
80101dd8:	5d                   	pop    %ebp
80101dd9:	c3                   	ret    
80101dda:	ba 01 00 00 00       	mov    $0x1,%edx
80101ddf:	b8 01 00 00 00       	mov    $0x1,%eax
80101de4:	e8 17 f4 ff ff       	call   80101200 <iget>
80101de9:	89 c6                	mov    %eax,%esi
80101deb:	e9 c3 fe ff ff       	jmp    80101cb3 <namex+0x43>
80101df0:	89 34 24             	mov    %esi,(%esp)
80101df3:	e8 88 f9 ff ff       	call   80101780 <iunlock>
80101df8:	83 c4 2c             	add    $0x2c,%esp
80101dfb:	89 f0                	mov    %esi,%eax
80101dfd:	5b                   	pop    %ebx
80101dfe:	5e                   	pop    %esi
80101dff:	5f                   	pop    %edi
80101e00:	5d                   	pop    %ebp
80101e01:	c3                   	ret    
80101e02:	89 34 24             	mov    %esi,(%esp)
80101e05:	e8 b6 f9 ff ff       	call   801017c0 <iput>
80101e0a:	31 c0                	xor    %eax,%eax
80101e0c:	eb aa                	jmp    80101db8 <namex+0x148>
80101e0e:	66 90                	xchg   %ax,%ax

80101e10 <dirlink>:
80101e10:	55                   	push   %ebp
80101e11:	89 e5                	mov    %esp,%ebp
80101e13:	57                   	push   %edi
80101e14:	56                   	push   %esi
80101e15:	53                   	push   %ebx
80101e16:	83 ec 2c             	sub    $0x2c,%esp
80101e19:	8b 5d 08             	mov    0x8(%ebp),%ebx
80101e1c:	8b 45 0c             	mov    0xc(%ebp),%eax
80101e1f:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
80101e26:	00 
80101e27:	89 1c 24             	mov    %ebx,(%esp)
80101e2a:	89 44 24 04          	mov    %eax,0x4(%esp)
80101e2e:	e8 7d fd ff ff       	call   80101bb0 <dirlookup>
80101e33:	85 c0                	test   %eax,%eax
80101e35:	0f 85 8b 00 00 00    	jne    80101ec6 <dirlink+0xb6>
80101e3b:	8b 43 58             	mov    0x58(%ebx),%eax
80101e3e:	31 ff                	xor    %edi,%edi
80101e40:	8d 75 d8             	lea    -0x28(%ebp),%esi
80101e43:	85 c0                	test   %eax,%eax
80101e45:	75 13                	jne    80101e5a <dirlink+0x4a>
80101e47:	eb 35                	jmp    80101e7e <dirlink+0x6e>
80101e49:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80101e50:	8d 57 10             	lea    0x10(%edi),%edx
80101e53:	39 53 58             	cmp    %edx,0x58(%ebx)
80101e56:	89 d7                	mov    %edx,%edi
80101e58:	76 24                	jbe    80101e7e <dirlink+0x6e>
80101e5a:	c7 44 24 0c 10 00 00 	movl   $0x10,0xc(%esp)
80101e61:	00 
80101e62:	89 7c 24 08          	mov    %edi,0x8(%esp)
80101e66:	89 74 24 04          	mov    %esi,0x4(%esp)
80101e6a:	89 1c 24             	mov    %ebx,(%esp)
80101e6d:	e8 de fa ff ff       	call   80101950 <readi>
80101e72:	83 f8 10             	cmp    $0x10,%eax
80101e75:	75 5e                	jne    80101ed5 <dirlink+0xc5>
80101e77:	66 83 7d d8 00       	cmpw   $0x0,-0x28(%ebp)
80101e7c:	75 d2                	jne    80101e50 <dirlink+0x40>
80101e7e:	8b 45 0c             	mov    0xc(%ebp),%eax
80101e81:	c7 44 24 08 0e 00 00 	movl   $0xe,0x8(%esp)
80101e88:	00 
80101e89:	89 44 24 04          	mov    %eax,0x4(%esp)
80101e8d:	8d 45 da             	lea    -0x26(%ebp),%eax
80101e90:	89 04 24             	mov    %eax,(%esp)
80101e93:	e8 68 25 00 00       	call   80104400 <strncpy>
80101e98:	8b 45 10             	mov    0x10(%ebp),%eax
80101e9b:	c7 44 24 0c 10 00 00 	movl   $0x10,0xc(%esp)
80101ea2:	00 
80101ea3:	89 7c 24 08          	mov    %edi,0x8(%esp)
80101ea7:	89 74 24 04          	mov    %esi,0x4(%esp)
80101eab:	89 1c 24             	mov    %ebx,(%esp)
80101eae:	66 89 45 d8          	mov    %ax,-0x28(%ebp)
80101eb2:	e8 99 fb ff ff       	call   80101a50 <writei>
80101eb7:	83 f8 10             	cmp    $0x10,%eax
80101eba:	75 25                	jne    80101ee1 <dirlink+0xd1>
80101ebc:	31 c0                	xor    %eax,%eax
80101ebe:	83 c4 2c             	add    $0x2c,%esp
80101ec1:	5b                   	pop    %ebx
80101ec2:	5e                   	pop    %esi
80101ec3:	5f                   	pop    %edi
80101ec4:	5d                   	pop    %ebp
80101ec5:	c3                   	ret    
80101ec6:	89 04 24             	mov    %eax,(%esp)
80101ec9:	e8 f2 f8 ff ff       	call   801017c0 <iput>
80101ece:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80101ed3:	eb e9                	jmp    80101ebe <dirlink+0xae>
80101ed5:	c7 04 24 e8 6f 10 80 	movl   $0x80106fe8,(%esp)
80101edc:	e8 7f e4 ff ff       	call   80100360 <panic>
80101ee1:	c7 04 24 e6 75 10 80 	movl   $0x801075e6,(%esp)
80101ee8:	e8 73 e4 ff ff       	call   80100360 <panic>
80101eed:	8d 76 00             	lea    0x0(%esi),%esi

80101ef0 <namei>:
80101ef0:	55                   	push   %ebp
80101ef1:	31 d2                	xor    %edx,%edx
80101ef3:	89 e5                	mov    %esp,%ebp
80101ef5:	83 ec 18             	sub    $0x18,%esp
80101ef8:	8b 45 08             	mov    0x8(%ebp),%eax
80101efb:	8d 4d ea             	lea    -0x16(%ebp),%ecx
80101efe:	e8 6d fd ff ff       	call   80101c70 <namex>
80101f03:	c9                   	leave  
80101f04:	c3                   	ret    
80101f05:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80101f09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

80101f10 <nameiparent>:
80101f10:	55                   	push   %ebp
80101f11:	ba 01 00 00 00       	mov    $0x1,%edx
80101f16:	89 e5                	mov    %esp,%ebp
80101f18:	8b 4d 0c             	mov    0xc(%ebp),%ecx
80101f1b:	8b 45 08             	mov    0x8(%ebp),%eax
80101f1e:	5d                   	pop    %ebp
80101f1f:	e9 4c fd ff ff       	jmp    80101c70 <namex>
80101f24:	66 90                	xchg   %ax,%ax
80101f26:	66 90                	xchg   %ax,%ax
80101f28:	66 90                	xchg   %ax,%ax
80101f2a:	66 90                	xchg   %ax,%ax
80101f2c:	66 90                	xchg   %ax,%ax
80101f2e:	66 90                	xchg   %ax,%ax

80101f30 <idestart>:
80101f30:	55                   	push   %ebp
80101f31:	89 e5                	mov    %esp,%ebp
80101f33:	56                   	push   %esi
80101f34:	89 c6                	mov    %eax,%esi
80101f36:	53                   	push   %ebx
80101f37:	83 ec 10             	sub    $0x10,%esp
80101f3a:	85 c0                	test   %eax,%eax
80101f3c:	0f 84 99 00 00 00    	je     80101fdb <idestart+0xab>
80101f42:	8b 48 08             	mov    0x8(%eax),%ecx
80101f45:	81 f9 e7 03 00 00    	cmp    $0x3e7,%ecx
80101f4b:	0f 87 7e 00 00 00    	ja     80101fcf <idestart+0x9f>
80101f51:	ba f7 01 00 00       	mov    $0x1f7,%edx
80101f56:	66 90                	xchg   %ax,%ax
80101f58:	ec                   	in     (%dx),%al
80101f59:	83 e0 c0             	and    $0xffffffc0,%eax
80101f5c:	3c 40                	cmp    $0x40,%al
80101f5e:	75 f8                	jne    80101f58 <idestart+0x28>
80101f60:	31 db                	xor    %ebx,%ebx
80101f62:	ba f6 03 00 00       	mov    $0x3f6,%edx
80101f67:	89 d8                	mov    %ebx,%eax
80101f69:	ee                   	out    %al,(%dx)
80101f6a:	ba f2 01 00 00       	mov    $0x1f2,%edx
80101f6f:	b8 01 00 00 00       	mov    $0x1,%eax
80101f74:	ee                   	out    %al,(%dx)
80101f75:	0f b6 c1             	movzbl %cl,%eax
80101f78:	b2 f3                	mov    $0xf3,%dl
80101f7a:	ee                   	out    %al,(%dx)
80101f7b:	89 c8                	mov    %ecx,%eax
80101f7d:	b2 f4                	mov    $0xf4,%dl
80101f7f:	c1 f8 08             	sar    $0x8,%eax
80101f82:	ee                   	out    %al,(%dx)
80101f83:	b2 f5                	mov    $0xf5,%dl
80101f85:	89 d8                	mov    %ebx,%eax
80101f87:	ee                   	out    %al,(%dx)
80101f88:	0f b6 46 04          	movzbl 0x4(%esi),%eax
80101f8c:	b2 f6                	mov    $0xf6,%dl
80101f8e:	83 e0 01             	and    $0x1,%eax
80101f91:	c1 e0 04             	shl    $0x4,%eax
80101f94:	83 c8 e0             	or     $0xffffffe0,%eax
80101f97:	ee                   	out    %al,(%dx)
80101f98:	f6 06 04             	testb  $0x4,(%esi)
80101f9b:	75 13                	jne    80101fb0 <idestart+0x80>
80101f9d:	ba f7 01 00 00       	mov    $0x1f7,%edx
80101fa2:	b8 20 00 00 00       	mov    $0x20,%eax
80101fa7:	ee                   	out    %al,(%dx)
80101fa8:	83 c4 10             	add    $0x10,%esp
80101fab:	5b                   	pop    %ebx
80101fac:	5e                   	pop    %esi
80101fad:	5d                   	pop    %ebp
80101fae:	c3                   	ret    
80101faf:	90                   	nop
80101fb0:	b2 f7                	mov    $0xf7,%dl
80101fb2:	b8 30 00 00 00       	mov    $0x30,%eax
80101fb7:	ee                   	out    %al,(%dx)
80101fb8:	b9 80 00 00 00       	mov    $0x80,%ecx
80101fbd:	83 c6 5c             	add    $0x5c,%esi
80101fc0:	ba f0 01 00 00       	mov    $0x1f0,%edx
80101fc5:	fc                   	cld    
80101fc6:	f3 6f                	rep outsl %ds:(%esi),(%dx)
80101fc8:	83 c4 10             	add    $0x10,%esp
80101fcb:	5b                   	pop    %ebx
80101fcc:	5e                   	pop    %esi
80101fcd:	5d                   	pop    %ebp
80101fce:	c3                   	ret    
80101fcf:	c7 04 24 54 70 10 80 	movl   $0x80107054,(%esp)
80101fd6:	e8 85 e3 ff ff       	call   80100360 <panic>
80101fdb:	c7 04 24 4b 70 10 80 	movl   $0x8010704b,(%esp)
80101fe2:	e8 79 e3 ff ff       	call   80100360 <panic>
80101fe7:	89 f6                	mov    %esi,%esi
80101fe9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

80101ff0 <ideinit>:
80101ff0:	55                   	push   %ebp
80101ff1:	89 e5                	mov    %esp,%ebp
80101ff3:	83 ec 18             	sub    $0x18,%esp
80101ff6:	c7 44 24 04 66 70 10 	movl   $0x80107066,0x4(%esp)
80101ffd:	80 
80101ffe:	c7 04 24 80 a5 10 80 	movl   $0x8010a580,(%esp)
80102005:	e8 36 20 00 00       	call   80104040 <initlock>
8010200a:	a1 00 2d 11 80       	mov    0x80112d00,%eax
8010200f:	c7 04 24 0e 00 00 00 	movl   $0xe,(%esp)
80102016:	83 e8 01             	sub    $0x1,%eax
80102019:	89 44 24 04          	mov    %eax,0x4(%esp)
8010201d:	e8 7e 02 00 00       	call   801022a0 <ioapicenable>
80102022:	ba f7 01 00 00       	mov    $0x1f7,%edx
80102027:	90                   	nop
80102028:	ec                   	in     (%dx),%al
80102029:	83 e0 c0             	and    $0xffffffc0,%eax
8010202c:	3c 40                	cmp    $0x40,%al
8010202e:	75 f8                	jne    80102028 <ideinit+0x38>
80102030:	ba f6 01 00 00       	mov    $0x1f6,%edx
80102035:	b8 f0 ff ff ff       	mov    $0xfffffff0,%eax
8010203a:	ee                   	out    %al,(%dx)
8010203b:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
80102040:	b2 f7                	mov    $0xf7,%dl
80102042:	eb 09                	jmp    8010204d <ideinit+0x5d>
80102044:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80102048:	83 e9 01             	sub    $0x1,%ecx
8010204b:	74 0f                	je     8010205c <ideinit+0x6c>
8010204d:	ec                   	in     (%dx),%al
8010204e:	84 c0                	test   %al,%al
80102050:	74 f6                	je     80102048 <ideinit+0x58>
80102052:	c7 05 60 a5 10 80 01 	movl   $0x1,0x8010a560
80102059:	00 00 00 
8010205c:	ba f6 01 00 00       	mov    $0x1f6,%edx
80102061:	b8 e0 ff ff ff       	mov    $0xffffffe0,%eax
80102066:	ee                   	out    %al,(%dx)
80102067:	c9                   	leave  
80102068:	c3                   	ret    
80102069:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

80102070 <ideintr>:
80102070:	55                   	push   %ebp
80102071:	89 e5                	mov    %esp,%ebp
80102073:	57                   	push   %edi
80102074:	56                   	push   %esi
80102075:	53                   	push   %ebx
80102076:	83 ec 1c             	sub    $0x1c,%esp
80102079:	c7 04 24 80 a5 10 80 	movl   $0x8010a580,(%esp)
80102080:	e8 ab 20 00 00       	call   80104130 <acquire>
80102085:	8b 1d 64 a5 10 80    	mov    0x8010a564,%ebx
8010208b:	85 db                	test   %ebx,%ebx
8010208d:	74 30                	je     801020bf <ideintr+0x4f>
8010208f:	8b 43 58             	mov    0x58(%ebx),%eax
80102092:	a3 64 a5 10 80       	mov    %eax,0x8010a564
80102097:	8b 33                	mov    (%ebx),%esi
80102099:	f7 c6 04 00 00 00    	test   $0x4,%esi
8010209f:	74 37                	je     801020d8 <ideintr+0x68>
801020a1:	83 e6 fb             	and    $0xfffffffb,%esi
801020a4:	83 ce 02             	or     $0x2,%esi
801020a7:	89 33                	mov    %esi,(%ebx)
801020a9:	89 1c 24             	mov    %ebx,(%esp)
801020ac:	e8 cf 1c 00 00       	call   80103d80 <wakeup>
801020b1:	a1 64 a5 10 80       	mov    0x8010a564,%eax
801020b6:	85 c0                	test   %eax,%eax
801020b8:	74 05                	je     801020bf <ideintr+0x4f>
801020ba:	e8 71 fe ff ff       	call   80101f30 <idestart>
801020bf:	c7 04 24 80 a5 10 80 	movl   $0x8010a580,(%esp)
801020c6:	e8 55 21 00 00       	call   80104220 <release>
801020cb:	83 c4 1c             	add    $0x1c,%esp
801020ce:	5b                   	pop    %ebx
801020cf:	5e                   	pop    %esi
801020d0:	5f                   	pop    %edi
801020d1:	5d                   	pop    %ebp
801020d2:	c3                   	ret    
801020d3:	90                   	nop
801020d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
801020d8:	ba f7 01 00 00       	mov    $0x1f7,%edx
801020dd:	8d 76 00             	lea    0x0(%esi),%esi
801020e0:	ec                   	in     (%dx),%al
801020e1:	89 c1                	mov    %eax,%ecx
801020e3:	83 e1 c0             	and    $0xffffffc0,%ecx
801020e6:	80 f9 40             	cmp    $0x40,%cl
801020e9:	75 f5                	jne    801020e0 <ideintr+0x70>
801020eb:	a8 21                	test   $0x21,%al
801020ed:	75 b2                	jne    801020a1 <ideintr+0x31>
801020ef:	8d 7b 5c             	lea    0x5c(%ebx),%edi
801020f2:	b9 80 00 00 00       	mov    $0x80,%ecx
801020f7:	ba f0 01 00 00       	mov    $0x1f0,%edx
801020fc:	fc                   	cld    
801020fd:	f3 6d                	rep insl (%dx),%es:(%edi)
801020ff:	8b 33                	mov    (%ebx),%esi
80102101:	eb 9e                	jmp    801020a1 <ideintr+0x31>
80102103:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80102109:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

80102110 <iderw>:
80102110:	55                   	push   %ebp
80102111:	89 e5                	mov    %esp,%ebp
80102113:	53                   	push   %ebx
80102114:	83 ec 14             	sub    $0x14,%esp
80102117:	8b 5d 08             	mov    0x8(%ebp),%ebx
8010211a:	8d 43 0c             	lea    0xc(%ebx),%eax
8010211d:	89 04 24             	mov    %eax,(%esp)
80102120:	e8 eb 1e 00 00       	call   80104010 <holdingsleep>
80102125:	85 c0                	test   %eax,%eax
80102127:	0f 84 9e 00 00 00    	je     801021cb <iderw+0xbb>
8010212d:	8b 03                	mov    (%ebx),%eax
8010212f:	83 e0 06             	and    $0x6,%eax
80102132:	83 f8 02             	cmp    $0x2,%eax
80102135:	0f 84 a8 00 00 00    	je     801021e3 <iderw+0xd3>
8010213b:	8b 53 04             	mov    0x4(%ebx),%edx
8010213e:	85 d2                	test   %edx,%edx
80102140:	74 0d                	je     8010214f <iderw+0x3f>
80102142:	a1 60 a5 10 80       	mov    0x8010a560,%eax
80102147:	85 c0                	test   %eax,%eax
80102149:	0f 84 88 00 00 00    	je     801021d7 <iderw+0xc7>
8010214f:	c7 04 24 80 a5 10 80 	movl   $0x8010a580,(%esp)
80102156:	e8 d5 1f 00 00       	call   80104130 <acquire>
8010215b:	a1 64 a5 10 80       	mov    0x8010a564,%eax
80102160:	c7 43 58 00 00 00 00 	movl   $0x0,0x58(%ebx)
80102167:	85 c0                	test   %eax,%eax
80102169:	75 07                	jne    80102172 <iderw+0x62>
8010216b:	eb 4e                	jmp    801021bb <iderw+0xab>
8010216d:	8d 76 00             	lea    0x0(%esi),%esi
80102170:	89 d0                	mov    %edx,%eax
80102172:	8b 50 58             	mov    0x58(%eax),%edx
80102175:	85 d2                	test   %edx,%edx
80102177:	75 f7                	jne    80102170 <iderw+0x60>
80102179:	83 c0 58             	add    $0x58,%eax
8010217c:	89 18                	mov    %ebx,(%eax)
8010217e:	39 1d 64 a5 10 80    	cmp    %ebx,0x8010a564
80102184:	74 3c                	je     801021c2 <iderw+0xb2>
80102186:	8b 03                	mov    (%ebx),%eax
80102188:	83 e0 06             	and    $0x6,%eax
8010218b:	83 f8 02             	cmp    $0x2,%eax
8010218e:	74 1a                	je     801021aa <iderw+0x9a>
80102190:	c7 44 24 04 80 a5 10 	movl   $0x8010a580,0x4(%esp)
80102197:	80 
80102198:	89 1c 24             	mov    %ebx,(%esp)
8010219b:	e8 50 1a 00 00       	call   80103bf0 <sleep>
801021a0:	8b 13                	mov    (%ebx),%edx
801021a2:	83 e2 06             	and    $0x6,%edx
801021a5:	83 fa 02             	cmp    $0x2,%edx
801021a8:	75 e6                	jne    80102190 <iderw+0x80>
801021aa:	c7 45 08 80 a5 10 80 	movl   $0x8010a580,0x8(%ebp)
801021b1:	83 c4 14             	add    $0x14,%esp
801021b4:	5b                   	pop    %ebx
801021b5:	5d                   	pop    %ebp
801021b6:	e9 65 20 00 00       	jmp    80104220 <release>
801021bb:	b8 64 a5 10 80       	mov    $0x8010a564,%eax
801021c0:	eb ba                	jmp    8010217c <iderw+0x6c>
801021c2:	89 d8                	mov    %ebx,%eax
801021c4:	e8 67 fd ff ff       	call   80101f30 <idestart>
801021c9:	eb bb                	jmp    80102186 <iderw+0x76>
801021cb:	c7 04 24 6a 70 10 80 	movl   $0x8010706a,(%esp)
801021d2:	e8 89 e1 ff ff       	call   80100360 <panic>
801021d7:	c7 04 24 95 70 10 80 	movl   $0x80107095,(%esp)
801021de:	e8 7d e1 ff ff       	call   80100360 <panic>
801021e3:	c7 04 24 80 70 10 80 	movl   $0x80107080,(%esp)
801021ea:	e8 71 e1 ff ff       	call   80100360 <panic>
801021ef:	90                   	nop

801021f0 <ioapicinit>:
801021f0:	55                   	push   %ebp
801021f1:	89 e5                	mov    %esp,%ebp
801021f3:	56                   	push   %esi
801021f4:	53                   	push   %ebx
801021f5:	83 ec 10             	sub    $0x10,%esp
801021f8:	c7 05 34 26 11 80 00 	movl   $0xfec00000,0x80112634
801021ff:	00 c0 fe 
80102202:	c7 05 00 00 c0 fe 01 	movl   $0x1,0xfec00000
80102209:	00 00 00 
8010220c:	8b 15 34 26 11 80    	mov    0x80112634,%edx
80102212:	8b 42 10             	mov    0x10(%edx),%eax
80102215:	c7 02 00 00 00 00    	movl   $0x0,(%edx)
8010221b:	8b 1d 34 26 11 80    	mov    0x80112634,%ebx
80102221:	0f b6 15 60 27 11 80 	movzbl 0x80112760,%edx
80102228:	c1 e8 10             	shr    $0x10,%eax
8010222b:	0f b6 f0             	movzbl %al,%esi
8010222e:	8b 43 10             	mov    0x10(%ebx),%eax
80102231:	c1 e8 18             	shr    $0x18,%eax
80102234:	39 c2                	cmp    %eax,%edx
80102236:	74 12                	je     8010224a <ioapicinit+0x5a>
80102238:	c7 04 24 b4 70 10 80 	movl   $0x801070b4,(%esp)
8010223f:	e8 0c e4 ff ff       	call   80100650 <cprintf>
80102244:	8b 1d 34 26 11 80    	mov    0x80112634,%ebx
8010224a:	ba 10 00 00 00       	mov    $0x10,%edx
8010224f:	31 c0                	xor    %eax,%eax
80102251:	eb 07                	jmp    8010225a <ioapicinit+0x6a>
80102253:	90                   	nop
80102254:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80102258:	89 cb                	mov    %ecx,%ebx
8010225a:	89 13                	mov    %edx,(%ebx)
8010225c:	8b 1d 34 26 11 80    	mov    0x80112634,%ebx
80102262:	8d 48 20             	lea    0x20(%eax),%ecx
80102265:	81 c9 00 00 01 00    	or     $0x10000,%ecx
8010226b:	83 c0 01             	add    $0x1,%eax
8010226e:	89 4b 10             	mov    %ecx,0x10(%ebx)
80102271:	8d 4a 01             	lea    0x1(%edx),%ecx
80102274:	83 c2 02             	add    $0x2,%edx
80102277:	89 0b                	mov    %ecx,(%ebx)
80102279:	8b 0d 34 26 11 80    	mov    0x80112634,%ecx
8010227f:	39 c6                	cmp    %eax,%esi
80102281:	c7 41 10 00 00 00 00 	movl   $0x0,0x10(%ecx)
80102288:	7d ce                	jge    80102258 <ioapicinit+0x68>
8010228a:	83 c4 10             	add    $0x10,%esp
8010228d:	5b                   	pop    %ebx
8010228e:	5e                   	pop    %esi
8010228f:	5d                   	pop    %ebp
80102290:	c3                   	ret    
80102291:	eb 0d                	jmp    801022a0 <ioapicenable>
80102293:	90                   	nop
80102294:	90                   	nop
80102295:	90                   	nop
80102296:	90                   	nop
80102297:	90                   	nop
80102298:	90                   	nop
80102299:	90                   	nop
8010229a:	90                   	nop
8010229b:	90                   	nop
8010229c:	90                   	nop
8010229d:	90                   	nop
8010229e:	90                   	nop
8010229f:	90                   	nop

801022a0 <ioapicenable>:
801022a0:	55                   	push   %ebp
801022a1:	89 e5                	mov    %esp,%ebp
801022a3:	8b 55 08             	mov    0x8(%ebp),%edx
801022a6:	53                   	push   %ebx
801022a7:	8b 45 0c             	mov    0xc(%ebp),%eax
801022aa:	8d 5a 20             	lea    0x20(%edx),%ebx
801022ad:	8d 4c 12 10          	lea    0x10(%edx,%edx,1),%ecx
801022b1:	8b 15 34 26 11 80    	mov    0x80112634,%edx
801022b7:	c1 e0 18             	shl    $0x18,%eax
801022ba:	89 0a                	mov    %ecx,(%edx)
801022bc:	8b 15 34 26 11 80    	mov    0x80112634,%edx
801022c2:	83 c1 01             	add    $0x1,%ecx
801022c5:	89 5a 10             	mov    %ebx,0x10(%edx)
801022c8:	89 0a                	mov    %ecx,(%edx)
801022ca:	8b 15 34 26 11 80    	mov    0x80112634,%edx
801022d0:	89 42 10             	mov    %eax,0x10(%edx)
801022d3:	5b                   	pop    %ebx
801022d4:	5d                   	pop    %ebp
801022d5:	c3                   	ret    
801022d6:	66 90                	xchg   %ax,%ax
801022d8:	66 90                	xchg   %ax,%ax
801022da:	66 90                	xchg   %ax,%ax
801022dc:	66 90                	xchg   %ax,%ax
801022de:	66 90                	xchg   %ax,%ax

801022e0 <kfree>:
801022e0:	55                   	push   %ebp
801022e1:	89 e5                	mov    %esp,%ebp
801022e3:	53                   	push   %ebx
801022e4:	83 ec 14             	sub    $0x14,%esp
801022e7:	8b 5d 08             	mov    0x8(%ebp),%ebx
801022ea:	f7 c3 ff 0f 00 00    	test   $0xfff,%ebx
801022f0:	75 7c                	jne    8010236e <kfree+0x8e>
801022f2:	81 fb f4 58 11 80    	cmp    $0x801158f4,%ebx
801022f8:	72 74                	jb     8010236e <kfree+0x8e>
801022fa:	8d 83 00 00 00 80    	lea    -0x80000000(%ebx),%eax
80102300:	3d ff ff ff 0d       	cmp    $0xdffffff,%eax
80102305:	77 67                	ja     8010236e <kfree+0x8e>
80102307:	c7 44 24 08 00 10 00 	movl   $0x1000,0x8(%esp)
8010230e:	00 
8010230f:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
80102316:	00 
80102317:	89 1c 24             	mov    %ebx,(%esp)
8010231a:	e8 51 1f 00 00       	call   80104270 <memset>
8010231f:	8b 15 74 26 11 80    	mov    0x80112674,%edx
80102325:	85 d2                	test   %edx,%edx
80102327:	75 37                	jne    80102360 <kfree+0x80>
80102329:	a1 78 26 11 80       	mov    0x80112678,%eax
8010232e:	89 03                	mov    %eax,(%ebx)
80102330:	a1 74 26 11 80       	mov    0x80112674,%eax
80102335:	89 1d 78 26 11 80    	mov    %ebx,0x80112678
8010233b:	85 c0                	test   %eax,%eax
8010233d:	75 09                	jne    80102348 <kfree+0x68>
8010233f:	83 c4 14             	add    $0x14,%esp
80102342:	5b                   	pop    %ebx
80102343:	5d                   	pop    %ebp
80102344:	c3                   	ret    
80102345:	8d 76 00             	lea    0x0(%esi),%esi
80102348:	c7 45 08 40 26 11 80 	movl   $0x80112640,0x8(%ebp)
8010234f:	83 c4 14             	add    $0x14,%esp
80102352:	5b                   	pop    %ebx
80102353:	5d                   	pop    %ebp
80102354:	e9 c7 1e 00 00       	jmp    80104220 <release>
80102359:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80102360:	c7 04 24 40 26 11 80 	movl   $0x80112640,(%esp)
80102367:	e8 c4 1d 00 00       	call   80104130 <acquire>
8010236c:	eb bb                	jmp    80102329 <kfree+0x49>
8010236e:	c7 04 24 e6 70 10 80 	movl   $0x801070e6,(%esp)
80102375:	e8 e6 df ff ff       	call   80100360 <panic>
8010237a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

80102380 <freerange>:
80102380:	55                   	push   %ebp
80102381:	89 e5                	mov    %esp,%ebp
80102383:	56                   	push   %esi
80102384:	53                   	push   %ebx
80102385:	83 ec 10             	sub    $0x10,%esp
80102388:	8b 45 08             	mov    0x8(%ebp),%eax
8010238b:	8b 75 0c             	mov    0xc(%ebp),%esi
8010238e:	8d 90 ff 0f 00 00    	lea    0xfff(%eax),%edx
80102394:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
8010239a:	8d 9a 00 10 00 00    	lea    0x1000(%edx),%ebx
801023a0:	39 de                	cmp    %ebx,%esi
801023a2:	73 08                	jae    801023ac <freerange+0x2c>
801023a4:	eb 18                	jmp    801023be <freerange+0x3e>
801023a6:	66 90                	xchg   %ax,%ax
801023a8:	89 da                	mov    %ebx,%edx
801023aa:	89 c3                	mov    %eax,%ebx
801023ac:	89 14 24             	mov    %edx,(%esp)
801023af:	e8 2c ff ff ff       	call   801022e0 <kfree>
801023b4:	8d 83 00 10 00 00    	lea    0x1000(%ebx),%eax
801023ba:	39 f0                	cmp    %esi,%eax
801023bc:	76 ea                	jbe    801023a8 <freerange+0x28>
801023be:	83 c4 10             	add    $0x10,%esp
801023c1:	5b                   	pop    %ebx
801023c2:	5e                   	pop    %esi
801023c3:	5d                   	pop    %ebp
801023c4:	c3                   	ret    
801023c5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
801023c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

801023d0 <kinit1>:
801023d0:	55                   	push   %ebp
801023d1:	89 e5                	mov    %esp,%ebp
801023d3:	56                   	push   %esi
801023d4:	53                   	push   %ebx
801023d5:	83 ec 10             	sub    $0x10,%esp
801023d8:	8b 75 0c             	mov    0xc(%ebp),%esi
801023db:	c7 44 24 04 ec 70 10 	movl   $0x801070ec,0x4(%esp)
801023e2:	80 
801023e3:	c7 04 24 40 26 11 80 	movl   $0x80112640,(%esp)
801023ea:	e8 51 1c 00 00       	call   80104040 <initlock>
801023ef:	8b 45 08             	mov    0x8(%ebp),%eax
801023f2:	c7 05 74 26 11 80 00 	movl   $0x0,0x80112674
801023f9:	00 00 00 
801023fc:	8d 90 ff 0f 00 00    	lea    0xfff(%eax),%edx
80102402:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
80102408:	8d 9a 00 10 00 00    	lea    0x1000(%edx),%ebx
8010240e:	39 de                	cmp    %ebx,%esi
80102410:	73 0a                	jae    8010241c <kinit1+0x4c>
80102412:	eb 1a                	jmp    8010242e <kinit1+0x5e>
80102414:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80102418:	89 da                	mov    %ebx,%edx
8010241a:	89 c3                	mov    %eax,%ebx
8010241c:	89 14 24             	mov    %edx,(%esp)
8010241f:	e8 bc fe ff ff       	call   801022e0 <kfree>
80102424:	8d 83 00 10 00 00    	lea    0x1000(%ebx),%eax
8010242a:	39 c6                	cmp    %eax,%esi
8010242c:	73 ea                	jae    80102418 <kinit1+0x48>
8010242e:	83 c4 10             	add    $0x10,%esp
80102431:	5b                   	pop    %ebx
80102432:	5e                   	pop    %esi
80102433:	5d                   	pop    %ebp
80102434:	c3                   	ret    
80102435:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80102439:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

80102440 <kinit2>:
80102440:	55                   	push   %ebp
80102441:	89 e5                	mov    %esp,%ebp
80102443:	56                   	push   %esi
80102444:	53                   	push   %ebx
80102445:	83 ec 10             	sub    $0x10,%esp
80102448:	8b 45 08             	mov    0x8(%ebp),%eax
8010244b:	8b 75 0c             	mov    0xc(%ebp),%esi
8010244e:	8d 90 ff 0f 00 00    	lea    0xfff(%eax),%edx
80102454:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
8010245a:	8d 9a 00 10 00 00    	lea    0x1000(%edx),%ebx
80102460:	39 de                	cmp    %ebx,%esi
80102462:	73 08                	jae    8010246c <kinit2+0x2c>
80102464:	eb 18                	jmp    8010247e <kinit2+0x3e>
80102466:	66 90                	xchg   %ax,%ax
80102468:	89 da                	mov    %ebx,%edx
8010246a:	89 c3                	mov    %eax,%ebx
8010246c:	89 14 24             	mov    %edx,(%esp)
8010246f:	e8 6c fe ff ff       	call   801022e0 <kfree>
80102474:	8d 83 00 10 00 00    	lea    0x1000(%ebx),%eax
8010247a:	39 c6                	cmp    %eax,%esi
8010247c:	73 ea                	jae    80102468 <kinit2+0x28>
8010247e:	c7 05 74 26 11 80 01 	movl   $0x1,0x80112674
80102485:	00 00 00 
80102488:	83 c4 10             	add    $0x10,%esp
8010248b:	5b                   	pop    %ebx
8010248c:	5e                   	pop    %esi
8010248d:	5d                   	pop    %ebp
8010248e:	c3                   	ret    
8010248f:	90                   	nop

80102490 <kalloc>:
80102490:	55                   	push   %ebp
80102491:	89 e5                	mov    %esp,%ebp
80102493:	53                   	push   %ebx
80102494:	83 ec 14             	sub    $0x14,%esp
80102497:	a1 74 26 11 80       	mov    0x80112674,%eax
8010249c:	85 c0                	test   %eax,%eax
8010249e:	75 30                	jne    801024d0 <kalloc+0x40>
801024a0:	8b 1d 78 26 11 80    	mov    0x80112678,%ebx
801024a6:	85 db                	test   %ebx,%ebx
801024a8:	74 08                	je     801024b2 <kalloc+0x22>
801024aa:	8b 13                	mov    (%ebx),%edx
801024ac:	89 15 78 26 11 80    	mov    %edx,0x80112678
801024b2:	85 c0                	test   %eax,%eax
801024b4:	74 0c                	je     801024c2 <kalloc+0x32>
801024b6:	c7 04 24 40 26 11 80 	movl   $0x80112640,(%esp)
801024bd:	e8 5e 1d 00 00       	call   80104220 <release>
801024c2:	83 c4 14             	add    $0x14,%esp
801024c5:	89 d8                	mov    %ebx,%eax
801024c7:	5b                   	pop    %ebx
801024c8:	5d                   	pop    %ebp
801024c9:	c3                   	ret    
801024ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
801024d0:	c7 04 24 40 26 11 80 	movl   $0x80112640,(%esp)
801024d7:	e8 54 1c 00 00       	call   80104130 <acquire>
801024dc:	a1 74 26 11 80       	mov    0x80112674,%eax
801024e1:	eb bd                	jmp    801024a0 <kalloc+0x10>
801024e3:	66 90                	xchg   %ax,%ax
801024e5:	66 90                	xchg   %ax,%ax
801024e7:	66 90                	xchg   %ax,%ax
801024e9:	66 90                	xchg   %ax,%ax
801024eb:	66 90                	xchg   %ax,%ax
801024ed:	66 90                	xchg   %ax,%ax
801024ef:	90                   	nop

801024f0 <kbdgetc>:
801024f0:	ba 64 00 00 00       	mov    $0x64,%edx
801024f5:	ec                   	in     (%dx),%al
801024f6:	a8 01                	test   $0x1,%al
801024f8:	0f 84 ba 00 00 00    	je     801025b8 <kbdgetc+0xc8>
801024fe:	b2 60                	mov    $0x60,%dl
80102500:	ec                   	in     (%dx),%al
80102501:	0f b6 c8             	movzbl %al,%ecx
80102504:	81 f9 e0 00 00 00    	cmp    $0xe0,%ecx
8010250a:	0f 84 88 00 00 00    	je     80102598 <kbdgetc+0xa8>
80102510:	84 c0                	test   %al,%al
80102512:	79 2c                	jns    80102540 <kbdgetc+0x50>
80102514:	8b 15 b4 a5 10 80    	mov    0x8010a5b4,%edx
8010251a:	f6 c2 40             	test   $0x40,%dl
8010251d:	75 05                	jne    80102524 <kbdgetc+0x34>
8010251f:	89 c1                	mov    %eax,%ecx
80102521:	83 e1 7f             	and    $0x7f,%ecx
80102524:	0f b6 81 20 72 10 80 	movzbl -0x7fef8de0(%ecx),%eax
8010252b:	83 c8 40             	or     $0x40,%eax
8010252e:	0f b6 c0             	movzbl %al,%eax
80102531:	f7 d0                	not    %eax
80102533:	21 d0                	and    %edx,%eax
80102535:	a3 b4 a5 10 80       	mov    %eax,0x8010a5b4
8010253a:	31 c0                	xor    %eax,%eax
8010253c:	c3                   	ret    
8010253d:	8d 76 00             	lea    0x0(%esi),%esi
80102540:	55                   	push   %ebp
80102541:	89 e5                	mov    %esp,%ebp
80102543:	53                   	push   %ebx
80102544:	8b 1d b4 a5 10 80    	mov    0x8010a5b4,%ebx
8010254a:	f6 c3 40             	test   $0x40,%bl
8010254d:	74 09                	je     80102558 <kbdgetc+0x68>
8010254f:	83 c8 80             	or     $0xffffff80,%eax
80102552:	83 e3 bf             	and    $0xffffffbf,%ebx
80102555:	0f b6 c8             	movzbl %al,%ecx
80102558:	0f b6 91 20 72 10 80 	movzbl -0x7fef8de0(%ecx),%edx
8010255f:	0f b6 81 20 71 10 80 	movzbl -0x7fef8ee0(%ecx),%eax
80102566:	09 da                	or     %ebx,%edx
80102568:	31 c2                	xor    %eax,%edx
8010256a:	89 d0                	mov    %edx,%eax
8010256c:	83 e0 03             	and    $0x3,%eax
8010256f:	8b 04 85 00 71 10 80 	mov    -0x7fef8f00(,%eax,4),%eax
80102576:	89 15 b4 a5 10 80    	mov    %edx,0x8010a5b4
8010257c:	83 e2 08             	and    $0x8,%edx
8010257f:	0f b6 04 08          	movzbl (%eax,%ecx,1),%eax
80102583:	74 0b                	je     80102590 <kbdgetc+0xa0>
80102585:	8d 50 9f             	lea    -0x61(%eax),%edx
80102588:	83 fa 19             	cmp    $0x19,%edx
8010258b:	77 1b                	ja     801025a8 <kbdgetc+0xb8>
8010258d:	83 e8 20             	sub    $0x20,%eax
80102590:	5b                   	pop    %ebx
80102591:	5d                   	pop    %ebp
80102592:	c3                   	ret    
80102593:	90                   	nop
80102594:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80102598:	83 0d b4 a5 10 80 40 	orl    $0x40,0x8010a5b4
8010259f:	31 c0                	xor    %eax,%eax
801025a1:	c3                   	ret    
801025a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
801025a8:	8d 48 bf             	lea    -0x41(%eax),%ecx
801025ab:	8d 50 20             	lea    0x20(%eax),%edx
801025ae:	83 f9 19             	cmp    $0x19,%ecx
801025b1:	0f 46 c2             	cmovbe %edx,%eax
801025b4:	eb da                	jmp    80102590 <kbdgetc+0xa0>
801025b6:	66 90                	xchg   %ax,%ax
801025b8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801025bd:	c3                   	ret    
801025be:	66 90                	xchg   %ax,%ax

801025c0 <kbdintr>:
801025c0:	55                   	push   %ebp
801025c1:	89 e5                	mov    %esp,%ebp
801025c3:	83 ec 18             	sub    $0x18,%esp
801025c6:	c7 04 24 f0 24 10 80 	movl   $0x801024f0,(%esp)
801025cd:	e8 de e1 ff ff       	call   801007b0 <consoleintr>
801025d2:	c9                   	leave  
801025d3:	c3                   	ret    
801025d4:	66 90                	xchg   %ax,%ax
801025d6:	66 90                	xchg   %ax,%ax
801025d8:	66 90                	xchg   %ax,%ax
801025da:	66 90                	xchg   %ax,%ax
801025dc:	66 90                	xchg   %ax,%ax
801025de:	66 90                	xchg   %ax,%ax

801025e0 <fill_rtcdate>:
801025e0:	55                   	push   %ebp
801025e1:	89 c1                	mov    %eax,%ecx
801025e3:	89 e5                	mov    %esp,%ebp
801025e5:	ba 70 00 00 00       	mov    $0x70,%edx
801025ea:	53                   	push   %ebx
801025eb:	31 c0                	xor    %eax,%eax
801025ed:	ee                   	out    %al,(%dx)
801025ee:	bb 71 00 00 00       	mov    $0x71,%ebx
801025f3:	89 da                	mov    %ebx,%edx
801025f5:	ec                   	in     (%dx),%al
801025f6:	0f b6 c0             	movzbl %al,%eax
801025f9:	b2 70                	mov    $0x70,%dl
801025fb:	89 01                	mov    %eax,(%ecx)
801025fd:	b8 02 00 00 00       	mov    $0x2,%eax
80102602:	ee                   	out    %al,(%dx)
80102603:	89 da                	mov    %ebx,%edx
80102605:	ec                   	in     (%dx),%al
80102606:	0f b6 c0             	movzbl %al,%eax
80102609:	b2 70                	mov    $0x70,%dl
8010260b:	89 41 04             	mov    %eax,0x4(%ecx)
8010260e:	b8 04 00 00 00       	mov    $0x4,%eax
80102613:	ee                   	out    %al,(%dx)
80102614:	89 da                	mov    %ebx,%edx
80102616:	ec                   	in     (%dx),%al
80102617:	0f b6 c0             	movzbl %al,%eax
8010261a:	b2 70                	mov    $0x70,%dl
8010261c:	89 41 08             	mov    %eax,0x8(%ecx)
8010261f:	b8 07 00 00 00       	mov    $0x7,%eax
80102624:	ee                   	out    %al,(%dx)
80102625:	89 da                	mov    %ebx,%edx
80102627:	ec                   	in     (%dx),%al
80102628:	0f b6 c0             	movzbl %al,%eax
8010262b:	b2 70                	mov    $0x70,%dl
8010262d:	89 41 0c             	mov    %eax,0xc(%ecx)
80102630:	b8 08 00 00 00       	mov    $0x8,%eax
80102635:	ee                   	out    %al,(%dx)
80102636:	89 da                	mov    %ebx,%edx
80102638:	ec                   	in     (%dx),%al
80102639:	0f b6 c0             	movzbl %al,%eax
8010263c:	b2 70                	mov    $0x70,%dl
8010263e:	89 41 10             	mov    %eax,0x10(%ecx)
80102641:	b8 09 00 00 00       	mov    $0x9,%eax
80102646:	ee                   	out    %al,(%dx)
80102647:	89 da                	mov    %ebx,%edx
80102649:	ec                   	in     (%dx),%al
8010264a:	0f b6 d8             	movzbl %al,%ebx
8010264d:	89 59 14             	mov    %ebx,0x14(%ecx)
80102650:	5b                   	pop    %ebx
80102651:	5d                   	pop    %ebp
80102652:	c3                   	ret    
80102653:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80102659:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

80102660 <lapicinit>:
80102660:	a1 7c 26 11 80       	mov    0x8011267c,%eax
80102665:	55                   	push   %ebp
80102666:	89 e5                	mov    %esp,%ebp
80102668:	85 c0                	test   %eax,%eax
8010266a:	0f 84 c0 00 00 00    	je     80102730 <lapicinit+0xd0>
80102670:	c7 80 f0 00 00 00 3f 	movl   $0x13f,0xf0(%eax)
80102677:	01 00 00 
8010267a:	8b 50 20             	mov    0x20(%eax),%edx
8010267d:	c7 80 e0 03 00 00 0b 	movl   $0xb,0x3e0(%eax)
80102684:	00 00 00 
80102687:	8b 50 20             	mov    0x20(%eax),%edx
8010268a:	c7 80 20 03 00 00 20 	movl   $0x20020,0x320(%eax)
80102691:	00 02 00 
80102694:	8b 50 20             	mov    0x20(%eax),%edx
80102697:	c7 80 80 03 00 00 80 	movl   $0x989680,0x380(%eax)
8010269e:	96 98 00 
801026a1:	8b 50 20             	mov    0x20(%eax),%edx
801026a4:	c7 80 50 03 00 00 00 	movl   $0x10000,0x350(%eax)
801026ab:	00 01 00 
801026ae:	8b 50 20             	mov    0x20(%eax),%edx
801026b1:	c7 80 60 03 00 00 00 	movl   $0x10000,0x360(%eax)
801026b8:	00 01 00 
801026bb:	8b 50 20             	mov    0x20(%eax),%edx
801026be:	8b 50 30             	mov    0x30(%eax),%edx
801026c1:	c1 ea 10             	shr    $0x10,%edx
801026c4:	80 fa 03             	cmp    $0x3,%dl
801026c7:	77 6f                	ja     80102738 <lapicinit+0xd8>
801026c9:	c7 80 70 03 00 00 33 	movl   $0x33,0x370(%eax)
801026d0:	00 00 00 
801026d3:	8b 50 20             	mov    0x20(%eax),%edx
801026d6:	c7 80 80 02 00 00 00 	movl   $0x0,0x280(%eax)
801026dd:	00 00 00 
801026e0:	8b 50 20             	mov    0x20(%eax),%edx
801026e3:	c7 80 80 02 00 00 00 	movl   $0x0,0x280(%eax)
801026ea:	00 00 00 
801026ed:	8b 50 20             	mov    0x20(%eax),%edx
801026f0:	c7 80 b0 00 00 00 00 	movl   $0x0,0xb0(%eax)
801026f7:	00 00 00 
801026fa:	8b 50 20             	mov    0x20(%eax),%edx
801026fd:	c7 80 10 03 00 00 00 	movl   $0x0,0x310(%eax)
80102704:	00 00 00 
80102707:	8b 50 20             	mov    0x20(%eax),%edx
8010270a:	c7 80 00 03 00 00 00 	movl   $0x88500,0x300(%eax)
80102711:	85 08 00 
80102714:	8b 50 20             	mov    0x20(%eax),%edx
80102717:	90                   	nop
80102718:	8b 90 00 03 00 00    	mov    0x300(%eax),%edx
8010271e:	80 e6 10             	and    $0x10,%dh
80102721:	75 f5                	jne    80102718 <lapicinit+0xb8>
80102723:	c7 80 80 00 00 00 00 	movl   $0x0,0x80(%eax)
8010272a:	00 00 00 
8010272d:	8b 40 20             	mov    0x20(%eax),%eax
80102730:	5d                   	pop    %ebp
80102731:	c3                   	ret    
80102732:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80102738:	c7 80 40 03 00 00 00 	movl   $0x10000,0x340(%eax)
8010273f:	00 01 00 
80102742:	8b 50 20             	mov    0x20(%eax),%edx
80102745:	eb 82                	jmp    801026c9 <lapicinit+0x69>
80102747:	89 f6                	mov    %esi,%esi
80102749:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

80102750 <lapicid>:
80102750:	a1 7c 26 11 80       	mov    0x8011267c,%eax
80102755:	55                   	push   %ebp
80102756:	89 e5                	mov    %esp,%ebp
80102758:	85 c0                	test   %eax,%eax
8010275a:	74 0c                	je     80102768 <lapicid+0x18>
8010275c:	8b 40 20             	mov    0x20(%eax),%eax
8010275f:	5d                   	pop    %ebp
80102760:	c1 e8 18             	shr    $0x18,%eax
80102763:	c3                   	ret    
80102764:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80102768:	31 c0                	xor    %eax,%eax
8010276a:	5d                   	pop    %ebp
8010276b:	c3                   	ret    
8010276c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80102770 <lapiceoi>:
80102770:	a1 7c 26 11 80       	mov    0x8011267c,%eax
80102775:	55                   	push   %ebp
80102776:	89 e5                	mov    %esp,%ebp
80102778:	85 c0                	test   %eax,%eax
8010277a:	74 0d                	je     80102789 <lapiceoi+0x19>
8010277c:	c7 80 b0 00 00 00 00 	movl   $0x0,0xb0(%eax)
80102783:	00 00 00 
80102786:	8b 40 20             	mov    0x20(%eax),%eax
80102789:	5d                   	pop    %ebp
8010278a:	c3                   	ret    
8010278b:	90                   	nop
8010278c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80102790 <microdelay>:
80102790:	55                   	push   %ebp
80102791:	89 e5                	mov    %esp,%ebp
80102793:	5d                   	pop    %ebp
80102794:	c3                   	ret    
80102795:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80102799:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

801027a0 <lapicstartap>:
801027a0:	55                   	push   %ebp
801027a1:	ba 70 00 00 00       	mov    $0x70,%edx
801027a6:	89 e5                	mov    %esp,%ebp
801027a8:	b8 0f 00 00 00       	mov    $0xf,%eax
801027ad:	53                   	push   %ebx
801027ae:	8b 4d 08             	mov    0x8(%ebp),%ecx
801027b1:	8b 5d 0c             	mov    0xc(%ebp),%ebx
801027b4:	ee                   	out    %al,(%dx)
801027b5:	b8 0a 00 00 00       	mov    $0xa,%eax
801027ba:	b2 71                	mov    $0x71,%dl
801027bc:	ee                   	out    %al,(%dx)
801027bd:	31 c0                	xor    %eax,%eax
801027bf:	66 a3 67 04 00 80    	mov    %ax,0x80000467
801027c5:	89 d8                	mov    %ebx,%eax
801027c7:	c1 e8 04             	shr    $0x4,%eax
801027ca:	66 a3 69 04 00 80    	mov    %ax,0x80000469
801027d0:	a1 7c 26 11 80       	mov    0x8011267c,%eax
801027d5:	c1 e1 18             	shl    $0x18,%ecx
801027d8:	c1 eb 0c             	shr    $0xc,%ebx
801027db:	89 88 10 03 00 00    	mov    %ecx,0x310(%eax)
801027e1:	8b 50 20             	mov    0x20(%eax),%edx
801027e4:	c7 80 00 03 00 00 00 	movl   $0xc500,0x300(%eax)
801027eb:	c5 00 00 
801027ee:	8b 50 20             	mov    0x20(%eax),%edx
801027f1:	c7 80 00 03 00 00 00 	movl   $0x8500,0x300(%eax)
801027f8:	85 00 00 
801027fb:	8b 50 20             	mov    0x20(%eax),%edx
801027fe:	89 88 10 03 00 00    	mov    %ecx,0x310(%eax)
80102804:	8b 50 20             	mov    0x20(%eax),%edx
80102807:	89 da                	mov    %ebx,%edx
80102809:	80 ce 06             	or     $0x6,%dh
8010280c:	89 90 00 03 00 00    	mov    %edx,0x300(%eax)
80102812:	8b 58 20             	mov    0x20(%eax),%ebx
80102815:	89 88 10 03 00 00    	mov    %ecx,0x310(%eax)
8010281b:	8b 48 20             	mov    0x20(%eax),%ecx
8010281e:	89 90 00 03 00 00    	mov    %edx,0x300(%eax)
80102824:	8b 40 20             	mov    0x20(%eax),%eax
80102827:	5b                   	pop    %ebx
80102828:	5d                   	pop    %ebp
80102829:	c3                   	ret    
8010282a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

80102830 <cmostime>:
80102830:	55                   	push   %ebp
80102831:	ba 70 00 00 00       	mov    $0x70,%edx
80102836:	89 e5                	mov    %esp,%ebp
80102838:	b8 0b 00 00 00       	mov    $0xb,%eax
8010283d:	57                   	push   %edi
8010283e:	56                   	push   %esi
8010283f:	53                   	push   %ebx
80102840:	83 ec 4c             	sub    $0x4c,%esp
80102843:	ee                   	out    %al,(%dx)
80102844:	b2 71                	mov    $0x71,%dl
80102846:	ec                   	in     (%dx),%al
80102847:	88 45 b7             	mov    %al,-0x49(%ebp)
8010284a:	8d 5d b8             	lea    -0x48(%ebp),%ebx
8010284d:	80 65 b7 04          	andb   $0x4,-0x49(%ebp)
80102851:	8d 7d d0             	lea    -0x30(%ebp),%edi
80102854:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80102858:	be 70 00 00 00       	mov    $0x70,%esi
8010285d:	89 d8                	mov    %ebx,%eax
8010285f:	e8 7c fd ff ff       	call   801025e0 <fill_rtcdate>
80102864:	b8 0a 00 00 00       	mov    $0xa,%eax
80102869:	89 f2                	mov    %esi,%edx
8010286b:	ee                   	out    %al,(%dx)
8010286c:	ba 71 00 00 00       	mov    $0x71,%edx
80102871:	ec                   	in     (%dx),%al
80102872:	84 c0                	test   %al,%al
80102874:	78 e7                	js     8010285d <cmostime+0x2d>
80102876:	89 f8                	mov    %edi,%eax
80102878:	e8 63 fd ff ff       	call   801025e0 <fill_rtcdate>
8010287d:	c7 44 24 08 18 00 00 	movl   $0x18,0x8(%esp)
80102884:	00 
80102885:	89 7c 24 04          	mov    %edi,0x4(%esp)
80102889:	89 1c 24             	mov    %ebx,(%esp)
8010288c:	e8 2f 1a 00 00       	call   801042c0 <memcmp>
80102891:	85 c0                	test   %eax,%eax
80102893:	75 c3                	jne    80102858 <cmostime+0x28>
80102895:	80 7d b7 00          	cmpb   $0x0,-0x49(%ebp)
80102899:	75 78                	jne    80102913 <cmostime+0xe3>
8010289b:	8b 45 b8             	mov    -0x48(%ebp),%eax
8010289e:	89 c2                	mov    %eax,%edx
801028a0:	83 e0 0f             	and    $0xf,%eax
801028a3:	c1 ea 04             	shr    $0x4,%edx
801028a6:	8d 14 92             	lea    (%edx,%edx,4),%edx
801028a9:	8d 04 50             	lea    (%eax,%edx,2),%eax
801028ac:	89 45 b8             	mov    %eax,-0x48(%ebp)
801028af:	8b 45 bc             	mov    -0x44(%ebp),%eax
801028b2:	89 c2                	mov    %eax,%edx
801028b4:	83 e0 0f             	and    $0xf,%eax
801028b7:	c1 ea 04             	shr    $0x4,%edx
801028ba:	8d 14 92             	lea    (%edx,%edx,4),%edx
801028bd:	8d 04 50             	lea    (%eax,%edx,2),%eax
801028c0:	89 45 bc             	mov    %eax,-0x44(%ebp)
801028c3:	8b 45 c0             	mov    -0x40(%ebp),%eax
801028c6:	89 c2                	mov    %eax,%edx
801028c8:	83 e0 0f             	and    $0xf,%eax
801028cb:	c1 ea 04             	shr    $0x4,%edx
801028ce:	8d 14 92             	lea    (%edx,%edx,4),%edx
801028d1:	8d 04 50             	lea    (%eax,%edx,2),%eax
801028d4:	89 45 c0             	mov    %eax,-0x40(%ebp)
801028d7:	8b 45 c4             	mov    -0x3c(%ebp),%eax
801028da:	89 c2                	mov    %eax,%edx
801028dc:	83 e0 0f             	and    $0xf,%eax
801028df:	c1 ea 04             	shr    $0x4,%edx
801028e2:	8d 14 92             	lea    (%edx,%edx,4),%edx
801028e5:	8d 04 50             	lea    (%eax,%edx,2),%eax
801028e8:	89 45 c4             	mov    %eax,-0x3c(%ebp)
801028eb:	8b 45 c8             	mov    -0x38(%ebp),%eax
801028ee:	89 c2                	mov    %eax,%edx
801028f0:	83 e0 0f             	and    $0xf,%eax
801028f3:	c1 ea 04             	shr    $0x4,%edx
801028f6:	8d 14 92             	lea    (%edx,%edx,4),%edx
801028f9:	8d 04 50             	lea    (%eax,%edx,2),%eax
801028fc:	89 45 c8             	mov    %eax,-0x38(%ebp)
801028ff:	8b 45 cc             	mov    -0x34(%ebp),%eax
80102902:	89 c2                	mov    %eax,%edx
80102904:	83 e0 0f             	and    $0xf,%eax
80102907:	c1 ea 04             	shr    $0x4,%edx
8010290a:	8d 14 92             	lea    (%edx,%edx,4),%edx
8010290d:	8d 04 50             	lea    (%eax,%edx,2),%eax
80102910:	89 45 cc             	mov    %eax,-0x34(%ebp)
80102913:	8b 4d 08             	mov    0x8(%ebp),%ecx
80102916:	8b 45 b8             	mov    -0x48(%ebp),%eax
80102919:	89 01                	mov    %eax,(%ecx)
8010291b:	8b 45 bc             	mov    -0x44(%ebp),%eax
8010291e:	89 41 04             	mov    %eax,0x4(%ecx)
80102921:	8b 45 c0             	mov    -0x40(%ebp),%eax
80102924:	89 41 08             	mov    %eax,0x8(%ecx)
80102927:	8b 45 c4             	mov    -0x3c(%ebp),%eax
8010292a:	89 41 0c             	mov    %eax,0xc(%ecx)
8010292d:	8b 45 c8             	mov    -0x38(%ebp),%eax
80102930:	89 41 10             	mov    %eax,0x10(%ecx)
80102933:	8b 45 cc             	mov    -0x34(%ebp),%eax
80102936:	89 41 14             	mov    %eax,0x14(%ecx)
80102939:	81 41 14 d0 07 00 00 	addl   $0x7d0,0x14(%ecx)
80102940:	83 c4 4c             	add    $0x4c,%esp
80102943:	5b                   	pop    %ebx
80102944:	5e                   	pop    %esi
80102945:	5f                   	pop    %edi
80102946:	5d                   	pop    %ebp
80102947:	c3                   	ret    
80102948:	66 90                	xchg   %ax,%ax
8010294a:	66 90                	xchg   %ax,%ax
8010294c:	66 90                	xchg   %ax,%ax
8010294e:	66 90                	xchg   %ax,%ax

80102950 <install_trans>:
80102950:	55                   	push   %ebp
80102951:	89 e5                	mov    %esp,%ebp
80102953:	57                   	push   %edi
80102954:	56                   	push   %esi
80102955:	53                   	push   %ebx
80102956:	31 db                	xor    %ebx,%ebx
80102958:	83 ec 1c             	sub    $0x1c,%esp
8010295b:	a1 c8 26 11 80       	mov    0x801126c8,%eax
80102960:	85 c0                	test   %eax,%eax
80102962:	7e 78                	jle    801029dc <install_trans+0x8c>
80102964:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80102968:	a1 b4 26 11 80       	mov    0x801126b4,%eax
8010296d:	01 d8                	add    %ebx,%eax
8010296f:	83 c0 01             	add    $0x1,%eax
80102972:	89 44 24 04          	mov    %eax,0x4(%esp)
80102976:	a1 c4 26 11 80       	mov    0x801126c4,%eax
8010297b:	89 04 24             	mov    %eax,(%esp)
8010297e:	e8 4d d7 ff ff       	call   801000d0 <bread>
80102983:	89 c7                	mov    %eax,%edi
80102985:	8b 04 9d cc 26 11 80 	mov    -0x7feed934(,%ebx,4),%eax
8010298c:	83 c3 01             	add    $0x1,%ebx
8010298f:	89 44 24 04          	mov    %eax,0x4(%esp)
80102993:	a1 c4 26 11 80       	mov    0x801126c4,%eax
80102998:	89 04 24             	mov    %eax,(%esp)
8010299b:	e8 30 d7 ff ff       	call   801000d0 <bread>
801029a0:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
801029a7:	00 
801029a8:	89 c6                	mov    %eax,%esi
801029aa:	8d 47 5c             	lea    0x5c(%edi),%eax
801029ad:	89 44 24 04          	mov    %eax,0x4(%esp)
801029b1:	8d 46 5c             	lea    0x5c(%esi),%eax
801029b4:	89 04 24             	mov    %eax,(%esp)
801029b7:	e8 54 19 00 00       	call   80104310 <memmove>
801029bc:	89 34 24             	mov    %esi,(%esp)
801029bf:	e8 dc d7 ff ff       	call   801001a0 <bwrite>
801029c4:	89 3c 24             	mov    %edi,(%esp)
801029c7:	e8 14 d8 ff ff       	call   801001e0 <brelse>
801029cc:	89 34 24             	mov    %esi,(%esp)
801029cf:	e8 0c d8 ff ff       	call   801001e0 <brelse>
801029d4:	39 1d c8 26 11 80    	cmp    %ebx,0x801126c8
801029da:	7f 8c                	jg     80102968 <install_trans+0x18>
801029dc:	83 c4 1c             	add    $0x1c,%esp
801029df:	5b                   	pop    %ebx
801029e0:	5e                   	pop    %esi
801029e1:	5f                   	pop    %edi
801029e2:	5d                   	pop    %ebp
801029e3:	c3                   	ret    
801029e4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
801029ea:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

801029f0 <write_head>:
801029f0:	55                   	push   %ebp
801029f1:	89 e5                	mov    %esp,%ebp
801029f3:	57                   	push   %edi
801029f4:	56                   	push   %esi
801029f5:	53                   	push   %ebx
801029f6:	83 ec 1c             	sub    $0x1c,%esp
801029f9:	a1 b4 26 11 80       	mov    0x801126b4,%eax
801029fe:	89 44 24 04          	mov    %eax,0x4(%esp)
80102a02:	a1 c4 26 11 80       	mov    0x801126c4,%eax
80102a07:	89 04 24             	mov    %eax,(%esp)
80102a0a:	e8 c1 d6 ff ff       	call   801000d0 <bread>
80102a0f:	8b 1d c8 26 11 80    	mov    0x801126c8,%ebx
80102a15:	31 d2                	xor    %edx,%edx
80102a17:	85 db                	test   %ebx,%ebx
80102a19:	89 c7                	mov    %eax,%edi
80102a1b:	89 58 5c             	mov    %ebx,0x5c(%eax)
80102a1e:	8d 70 5c             	lea    0x5c(%eax),%esi
80102a21:	7e 17                	jle    80102a3a <write_head+0x4a>
80102a23:	90                   	nop
80102a24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80102a28:	8b 0c 95 cc 26 11 80 	mov    -0x7feed934(,%edx,4),%ecx
80102a2f:	89 4c 96 04          	mov    %ecx,0x4(%esi,%edx,4)
80102a33:	83 c2 01             	add    $0x1,%edx
80102a36:	39 da                	cmp    %ebx,%edx
80102a38:	75 ee                	jne    80102a28 <write_head+0x38>
80102a3a:	89 3c 24             	mov    %edi,(%esp)
80102a3d:	e8 5e d7 ff ff       	call   801001a0 <bwrite>
80102a42:	89 3c 24             	mov    %edi,(%esp)
80102a45:	e8 96 d7 ff ff       	call   801001e0 <brelse>
80102a4a:	83 c4 1c             	add    $0x1c,%esp
80102a4d:	5b                   	pop    %ebx
80102a4e:	5e                   	pop    %esi
80102a4f:	5f                   	pop    %edi
80102a50:	5d                   	pop    %ebp
80102a51:	c3                   	ret    
80102a52:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80102a59:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

80102a60 <initlog>:
80102a60:	55                   	push   %ebp
80102a61:	89 e5                	mov    %esp,%ebp
80102a63:	56                   	push   %esi
80102a64:	53                   	push   %ebx
80102a65:	83 ec 30             	sub    $0x30,%esp
80102a68:	8b 5d 08             	mov    0x8(%ebp),%ebx
80102a6b:	c7 44 24 04 20 73 10 	movl   $0x80107320,0x4(%esp)
80102a72:	80 
80102a73:	c7 04 24 80 26 11 80 	movl   $0x80112680,(%esp)
80102a7a:	e8 c1 15 00 00       	call   80104040 <initlock>
80102a7f:	8d 45 dc             	lea    -0x24(%ebp),%eax
80102a82:	89 44 24 04          	mov    %eax,0x4(%esp)
80102a86:	89 1c 24             	mov    %ebx,(%esp)
80102a89:	e8 f2 e8 ff ff       	call   80101380 <readsb>
80102a8e:	8b 45 ec             	mov    -0x14(%ebp),%eax
80102a91:	8b 55 e8             	mov    -0x18(%ebp),%edx
80102a94:	89 1c 24             	mov    %ebx,(%esp)
80102a97:	89 1d c4 26 11 80    	mov    %ebx,0x801126c4
80102a9d:	89 44 24 04          	mov    %eax,0x4(%esp)
80102aa1:	89 15 b8 26 11 80    	mov    %edx,0x801126b8
80102aa7:	a3 b4 26 11 80       	mov    %eax,0x801126b4
80102aac:	e8 1f d6 ff ff       	call   801000d0 <bread>
80102ab1:	31 d2                	xor    %edx,%edx
80102ab3:	8b 58 5c             	mov    0x5c(%eax),%ebx
80102ab6:	8d 70 5c             	lea    0x5c(%eax),%esi
80102ab9:	85 db                	test   %ebx,%ebx
80102abb:	89 1d c8 26 11 80    	mov    %ebx,0x801126c8
80102ac1:	7e 17                	jle    80102ada <initlog+0x7a>
80102ac3:	90                   	nop
80102ac4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80102ac8:	8b 4c 96 04          	mov    0x4(%esi,%edx,4),%ecx
80102acc:	89 0c 95 cc 26 11 80 	mov    %ecx,-0x7feed934(,%edx,4)
80102ad3:	83 c2 01             	add    $0x1,%edx
80102ad6:	39 da                	cmp    %ebx,%edx
80102ad8:	75 ee                	jne    80102ac8 <initlog+0x68>
80102ada:	89 04 24             	mov    %eax,(%esp)
80102add:	e8 fe d6 ff ff       	call   801001e0 <brelse>
80102ae2:	e8 69 fe ff ff       	call   80102950 <install_trans>
80102ae7:	c7 05 c8 26 11 80 00 	movl   $0x0,0x801126c8
80102aee:	00 00 00 
80102af1:	e8 fa fe ff ff       	call   801029f0 <write_head>
80102af6:	83 c4 30             	add    $0x30,%esp
80102af9:	5b                   	pop    %ebx
80102afa:	5e                   	pop    %esi
80102afb:	5d                   	pop    %ebp
80102afc:	c3                   	ret    
80102afd:	8d 76 00             	lea    0x0(%esi),%esi

80102b00 <begin_op>:
80102b00:	55                   	push   %ebp
80102b01:	89 e5                	mov    %esp,%ebp
80102b03:	83 ec 18             	sub    $0x18,%esp
80102b06:	c7 04 24 80 26 11 80 	movl   $0x80112680,(%esp)
80102b0d:	e8 1e 16 00 00       	call   80104130 <acquire>
80102b12:	eb 18                	jmp    80102b2c <begin_op+0x2c>
80102b14:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80102b18:	c7 44 24 04 80 26 11 	movl   $0x80112680,0x4(%esp)
80102b1f:	80 
80102b20:	c7 04 24 80 26 11 80 	movl   $0x80112680,(%esp)
80102b27:	e8 c4 10 00 00       	call   80103bf0 <sleep>
80102b2c:	a1 c0 26 11 80       	mov    0x801126c0,%eax
80102b31:	85 c0                	test   %eax,%eax
80102b33:	75 e3                	jne    80102b18 <begin_op+0x18>
80102b35:	a1 bc 26 11 80       	mov    0x801126bc,%eax
80102b3a:	8b 15 c8 26 11 80    	mov    0x801126c8,%edx
80102b40:	83 c0 01             	add    $0x1,%eax
80102b43:	8d 0c 80             	lea    (%eax,%eax,4),%ecx
80102b46:	8d 14 4a             	lea    (%edx,%ecx,2),%edx
80102b49:	83 fa 1e             	cmp    $0x1e,%edx
80102b4c:	7f ca                	jg     80102b18 <begin_op+0x18>
80102b4e:	c7 04 24 80 26 11 80 	movl   $0x80112680,(%esp)
80102b55:	a3 bc 26 11 80       	mov    %eax,0x801126bc
80102b5a:	e8 c1 16 00 00       	call   80104220 <release>
80102b5f:	c9                   	leave  
80102b60:	c3                   	ret    
80102b61:	eb 0d                	jmp    80102b70 <end_op>
80102b63:	90                   	nop
80102b64:	90                   	nop
80102b65:	90                   	nop
80102b66:	90                   	nop
80102b67:	90                   	nop
80102b68:	90                   	nop
80102b69:	90                   	nop
80102b6a:	90                   	nop
80102b6b:	90                   	nop
80102b6c:	90                   	nop
80102b6d:	90                   	nop
80102b6e:	90                   	nop
80102b6f:	90                   	nop

80102b70 <end_op>:
80102b70:	55                   	push   %ebp
80102b71:	89 e5                	mov    %esp,%ebp
80102b73:	57                   	push   %edi
80102b74:	56                   	push   %esi
80102b75:	53                   	push   %ebx
80102b76:	83 ec 1c             	sub    $0x1c,%esp
80102b79:	c7 04 24 80 26 11 80 	movl   $0x80112680,(%esp)
80102b80:	e8 ab 15 00 00       	call   80104130 <acquire>
80102b85:	a1 bc 26 11 80       	mov    0x801126bc,%eax
80102b8a:	8b 15 c0 26 11 80    	mov    0x801126c0,%edx
80102b90:	83 e8 01             	sub    $0x1,%eax
80102b93:	85 d2                	test   %edx,%edx
80102b95:	a3 bc 26 11 80       	mov    %eax,0x801126bc
80102b9a:	0f 85 f3 00 00 00    	jne    80102c93 <end_op+0x123>
80102ba0:	85 c0                	test   %eax,%eax
80102ba2:	0f 85 cb 00 00 00    	jne    80102c73 <end_op+0x103>
80102ba8:	c7 04 24 80 26 11 80 	movl   $0x80112680,(%esp)
80102baf:	31 db                	xor    %ebx,%ebx
80102bb1:	c7 05 c0 26 11 80 01 	movl   $0x1,0x801126c0
80102bb8:	00 00 00 
80102bbb:	e8 60 16 00 00       	call   80104220 <release>
80102bc0:	a1 c8 26 11 80       	mov    0x801126c8,%eax
80102bc5:	85 c0                	test   %eax,%eax
80102bc7:	0f 8e 90 00 00 00    	jle    80102c5d <end_op+0xed>
80102bcd:	8d 76 00             	lea    0x0(%esi),%esi
80102bd0:	a1 b4 26 11 80       	mov    0x801126b4,%eax
80102bd5:	01 d8                	add    %ebx,%eax
80102bd7:	83 c0 01             	add    $0x1,%eax
80102bda:	89 44 24 04          	mov    %eax,0x4(%esp)
80102bde:	a1 c4 26 11 80       	mov    0x801126c4,%eax
80102be3:	89 04 24             	mov    %eax,(%esp)
80102be6:	e8 e5 d4 ff ff       	call   801000d0 <bread>
80102beb:	89 c6                	mov    %eax,%esi
80102bed:	8b 04 9d cc 26 11 80 	mov    -0x7feed934(,%ebx,4),%eax
80102bf4:	83 c3 01             	add    $0x1,%ebx
80102bf7:	89 44 24 04          	mov    %eax,0x4(%esp)
80102bfb:	a1 c4 26 11 80       	mov    0x801126c4,%eax
80102c00:	89 04 24             	mov    %eax,(%esp)
80102c03:	e8 c8 d4 ff ff       	call   801000d0 <bread>
80102c08:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
80102c0f:	00 
80102c10:	89 c7                	mov    %eax,%edi
80102c12:	8d 40 5c             	lea    0x5c(%eax),%eax
80102c15:	89 44 24 04          	mov    %eax,0x4(%esp)
80102c19:	8d 46 5c             	lea    0x5c(%esi),%eax
80102c1c:	89 04 24             	mov    %eax,(%esp)
80102c1f:	e8 ec 16 00 00       	call   80104310 <memmove>
80102c24:	89 34 24             	mov    %esi,(%esp)
80102c27:	e8 74 d5 ff ff       	call   801001a0 <bwrite>
80102c2c:	89 3c 24             	mov    %edi,(%esp)
80102c2f:	e8 ac d5 ff ff       	call   801001e0 <brelse>
80102c34:	89 34 24             	mov    %esi,(%esp)
80102c37:	e8 a4 d5 ff ff       	call   801001e0 <brelse>
80102c3c:	3b 1d c8 26 11 80    	cmp    0x801126c8,%ebx
80102c42:	7c 8c                	jl     80102bd0 <end_op+0x60>
80102c44:	e8 a7 fd ff ff       	call   801029f0 <write_head>
80102c49:	e8 02 fd ff ff       	call   80102950 <install_trans>
80102c4e:	c7 05 c8 26 11 80 00 	movl   $0x0,0x801126c8
80102c55:	00 00 00 
80102c58:	e8 93 fd ff ff       	call   801029f0 <write_head>
80102c5d:	c7 04 24 80 26 11 80 	movl   $0x80112680,(%esp)
80102c64:	e8 c7 14 00 00       	call   80104130 <acquire>
80102c69:	c7 05 c0 26 11 80 00 	movl   $0x0,0x801126c0
80102c70:	00 00 00 
80102c73:	c7 04 24 80 26 11 80 	movl   $0x80112680,(%esp)
80102c7a:	e8 01 11 00 00       	call   80103d80 <wakeup>
80102c7f:	c7 04 24 80 26 11 80 	movl   $0x80112680,(%esp)
80102c86:	e8 95 15 00 00       	call   80104220 <release>
80102c8b:	83 c4 1c             	add    $0x1c,%esp
80102c8e:	5b                   	pop    %ebx
80102c8f:	5e                   	pop    %esi
80102c90:	5f                   	pop    %edi
80102c91:	5d                   	pop    %ebp
80102c92:	c3                   	ret    
80102c93:	c7 04 24 24 73 10 80 	movl   $0x80107324,(%esp)
80102c9a:	e8 c1 d6 ff ff       	call   80100360 <panic>
80102c9f:	90                   	nop

80102ca0 <log_write>:
80102ca0:	55                   	push   %ebp
80102ca1:	89 e5                	mov    %esp,%ebp
80102ca3:	53                   	push   %ebx
80102ca4:	83 ec 14             	sub    $0x14,%esp
80102ca7:	a1 c8 26 11 80       	mov    0x801126c8,%eax
80102cac:	8b 5d 08             	mov    0x8(%ebp),%ebx
80102caf:	83 f8 1d             	cmp    $0x1d,%eax
80102cb2:	0f 8f 98 00 00 00    	jg     80102d50 <log_write+0xb0>
80102cb8:	8b 0d b8 26 11 80    	mov    0x801126b8,%ecx
80102cbe:	8d 51 ff             	lea    -0x1(%ecx),%edx
80102cc1:	39 d0                	cmp    %edx,%eax
80102cc3:	0f 8d 87 00 00 00    	jge    80102d50 <log_write+0xb0>
80102cc9:	a1 bc 26 11 80       	mov    0x801126bc,%eax
80102cce:	85 c0                	test   %eax,%eax
80102cd0:	0f 8e 86 00 00 00    	jle    80102d5c <log_write+0xbc>
80102cd6:	c7 04 24 80 26 11 80 	movl   $0x80112680,(%esp)
80102cdd:	e8 4e 14 00 00       	call   80104130 <acquire>
80102ce2:	8b 15 c8 26 11 80    	mov    0x801126c8,%edx
80102ce8:	83 fa 00             	cmp    $0x0,%edx
80102ceb:	7e 54                	jle    80102d41 <log_write+0xa1>
80102ced:	8b 4b 08             	mov    0x8(%ebx),%ecx
80102cf0:	31 c0                	xor    %eax,%eax
80102cf2:	39 0d cc 26 11 80    	cmp    %ecx,0x801126cc
80102cf8:	75 0f                	jne    80102d09 <log_write+0x69>
80102cfa:	eb 3c                	jmp    80102d38 <log_write+0x98>
80102cfc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80102d00:	39 0c 85 cc 26 11 80 	cmp    %ecx,-0x7feed934(,%eax,4)
80102d07:	74 2f                	je     80102d38 <log_write+0x98>
80102d09:	83 c0 01             	add    $0x1,%eax
80102d0c:	39 d0                	cmp    %edx,%eax
80102d0e:	75 f0                	jne    80102d00 <log_write+0x60>
80102d10:	89 0c 95 cc 26 11 80 	mov    %ecx,-0x7feed934(,%edx,4)
80102d17:	83 c2 01             	add    $0x1,%edx
80102d1a:	89 15 c8 26 11 80    	mov    %edx,0x801126c8
80102d20:	83 0b 04             	orl    $0x4,(%ebx)
80102d23:	c7 45 08 80 26 11 80 	movl   $0x80112680,0x8(%ebp)
80102d2a:	83 c4 14             	add    $0x14,%esp
80102d2d:	5b                   	pop    %ebx
80102d2e:	5d                   	pop    %ebp
80102d2f:	e9 ec 14 00 00       	jmp    80104220 <release>
80102d34:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80102d38:	89 0c 85 cc 26 11 80 	mov    %ecx,-0x7feed934(,%eax,4)
80102d3f:	eb df                	jmp    80102d20 <log_write+0x80>
80102d41:	8b 43 08             	mov    0x8(%ebx),%eax
80102d44:	a3 cc 26 11 80       	mov    %eax,0x801126cc
80102d49:	75 d5                	jne    80102d20 <log_write+0x80>
80102d4b:	eb ca                	jmp    80102d17 <log_write+0x77>
80102d4d:	8d 76 00             	lea    0x0(%esi),%esi
80102d50:	c7 04 24 33 73 10 80 	movl   $0x80107333,(%esp)
80102d57:	e8 04 d6 ff ff       	call   80100360 <panic>
80102d5c:	c7 04 24 49 73 10 80 	movl   $0x80107349,(%esp)
80102d63:	e8 f8 d5 ff ff       	call   80100360 <panic>
80102d68:	66 90                	xchg   %ax,%ax
80102d6a:	66 90                	xchg   %ax,%ax
80102d6c:	66 90                	xchg   %ax,%ax
80102d6e:	66 90                	xchg   %ax,%ax

80102d70 <mpmain>:
80102d70:	55                   	push   %ebp
80102d71:	89 e5                	mov    %esp,%ebp
80102d73:	53                   	push   %ebx
80102d74:	83 ec 14             	sub    $0x14,%esp
80102d77:	e8 f4 08 00 00       	call   80103670 <cpuid>
80102d7c:	89 c3                	mov    %eax,%ebx
80102d7e:	e8 ed 08 00 00       	call   80103670 <cpuid>
80102d83:	89 5c 24 08          	mov    %ebx,0x8(%esp)
80102d87:	c7 04 24 64 73 10 80 	movl   $0x80107364,(%esp)
80102d8e:	89 44 24 04          	mov    %eax,0x4(%esp)
80102d92:	e8 b9 d8 ff ff       	call   80100650 <cprintf>
80102d97:	e8 f4 26 00 00       	call   80105490 <idtinit>
80102d9c:	e8 4f 08 00 00       	call   801035f0 <mycpu>
80102da1:	89 c2                	mov    %eax,%edx
80102da3:	b8 01 00 00 00       	mov    $0x1,%eax
80102da8:	f0 87 82 a0 00 00 00 	lock xchg %eax,0xa0(%edx)
80102daf:	e8 9c 0b 00 00       	call   80103950 <scheduler>
80102db4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80102dba:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

80102dc0 <mpenter>:
80102dc0:	55                   	push   %ebp
80102dc1:	89 e5                	mov    %esp,%ebp
80102dc3:	83 ec 08             	sub    $0x8,%esp
80102dc6:	e8 75 38 00 00       	call   80106640 <switchkvm>
80102dcb:	e8 30 37 00 00       	call   80106500 <seginit>
80102dd0:	e8 8b f8 ff ff       	call   80102660 <lapicinit>
80102dd5:	e8 96 ff ff ff       	call   80102d70 <mpmain>
80102dda:	66 90                	xchg   %ax,%ax
80102ddc:	66 90                	xchg   %ax,%ax
80102dde:	66 90                	xchg   %ax,%ax

80102de0 <main>:
80102de0:	55                   	push   %ebp
80102de1:	89 e5                	mov    %esp,%ebp
80102de3:	53                   	push   %ebx
80102de4:	bb 80 27 11 80       	mov    $0x80112780,%ebx
80102de9:	83 e4 f0             	and    $0xfffffff0,%esp
80102dec:	83 ec 10             	sub    $0x10,%esp
80102def:	c7 44 24 04 00 00 40 	movl   $0x80400000,0x4(%esp)
80102df6:	80 
80102df7:	c7 04 24 f4 58 11 80 	movl   $0x801158f4,(%esp)
80102dfe:	e8 cd f5 ff ff       	call   801023d0 <kinit1>
80102e03:	e8 08 3d 00 00       	call   80106b10 <kvmalloc>
80102e08:	e8 73 01 00 00       	call   80102f80 <mpinit>
80102e0d:	8d 76 00             	lea    0x0(%esi),%esi
80102e10:	e8 4b f8 ff ff       	call   80102660 <lapicinit>
80102e15:	e8 e6 36 00 00       	call   80106500 <seginit>
80102e1a:	e8 21 03 00 00       	call   80103140 <picinit>
80102e1f:	90                   	nop
80102e20:	e8 cb f3 ff ff       	call   801021f0 <ioapicinit>
80102e25:	e8 26 db ff ff       	call   80100950 <consoleinit>
80102e2a:	e8 71 2a 00 00       	call   801058a0 <uartinit>
80102e2f:	90                   	nop
80102e30:	e8 9b 07 00 00       	call   801035d0 <pinit>
80102e35:	e8 b6 3f 00 00       	call   80106df0 <shminit>
80102e3a:	e8 b1 25 00 00       	call   801053f0 <tvinit>
80102e3f:	90                   	nop
80102e40:	e8 fb d1 ff ff       	call   80100040 <binit>
80102e45:	e8 e6 de ff ff       	call   80100d30 <fileinit>
80102e4a:	e8 a1 f1 ff ff       	call   80101ff0 <ideinit>
80102e4f:	c7 44 24 08 8a 00 00 	movl   $0x8a,0x8(%esp)
80102e56:	00 
80102e57:	c7 44 24 04 8c a4 10 	movl   $0x8010a48c,0x4(%esp)
80102e5e:	80 
80102e5f:	c7 04 24 00 70 00 80 	movl   $0x80007000,(%esp)
80102e66:	e8 a5 14 00 00       	call   80104310 <memmove>
80102e6b:	69 05 00 2d 11 80 b0 	imul   $0xb0,0x80112d00,%eax
80102e72:	00 00 00 
80102e75:	05 80 27 11 80       	add    $0x80112780,%eax
80102e7a:	39 d8                	cmp    %ebx,%eax
80102e7c:	76 65                	jbe    80102ee3 <main+0x103>
80102e7e:	66 90                	xchg   %ax,%ax
80102e80:	e8 6b 07 00 00       	call   801035f0 <mycpu>
80102e85:	39 d8                	cmp    %ebx,%eax
80102e87:	74 41                	je     80102eca <main+0xea>
80102e89:	e8 02 f6 ff ff       	call   80102490 <kalloc>
80102e8e:	c7 05 f8 6f 00 80 c0 	movl   $0x80102dc0,0x80006ff8
80102e95:	2d 10 80 
80102e98:	c7 05 f4 6f 00 80 00 	movl   $0x109000,0x80006ff4
80102e9f:	90 10 00 
80102ea2:	05 00 10 00 00       	add    $0x1000,%eax
80102ea7:	a3 fc 6f 00 80       	mov    %eax,0x80006ffc
80102eac:	0f b6 03             	movzbl (%ebx),%eax
80102eaf:	c7 44 24 04 00 70 00 	movl   $0x7000,0x4(%esp)
80102eb6:	00 
80102eb7:	89 04 24             	mov    %eax,(%esp)
80102eba:	e8 e1 f8 ff ff       	call   801027a0 <lapicstartap>
80102ebf:	90                   	nop
80102ec0:	8b 83 a0 00 00 00    	mov    0xa0(%ebx),%eax
80102ec6:	85 c0                	test   %eax,%eax
80102ec8:	74 f6                	je     80102ec0 <main+0xe0>
80102eca:	69 05 00 2d 11 80 b0 	imul   $0xb0,0x80112d00,%eax
80102ed1:	00 00 00 
80102ed4:	81 c3 b0 00 00 00    	add    $0xb0,%ebx
80102eda:	05 80 27 11 80       	add    $0x80112780,%eax
80102edf:	39 c3                	cmp    %eax,%ebx
80102ee1:	72 9d                	jb     80102e80 <main+0xa0>
80102ee3:	c7 44 24 04 00 00 00 	movl   $0x8e000000,0x4(%esp)
80102eea:	8e 
80102eeb:	c7 04 24 00 00 40 80 	movl   $0x80400000,(%esp)
80102ef2:	e8 49 f5 ff ff       	call   80102440 <kinit2>
80102ef7:	e8 c4 07 00 00       	call   801036c0 <userinit>
80102efc:	e8 6f fe ff ff       	call   80102d70 <mpmain>
80102f01:	66 90                	xchg   %ax,%ax
80102f03:	66 90                	xchg   %ax,%ax
80102f05:	66 90                	xchg   %ax,%ax
80102f07:	66 90                	xchg   %ax,%ax
80102f09:	66 90                	xchg   %ax,%ax
80102f0b:	66 90                	xchg   %ax,%ax
80102f0d:	66 90                	xchg   %ax,%ax
80102f0f:	90                   	nop

80102f10 <mpsearch1>:
80102f10:	55                   	push   %ebp
80102f11:	89 e5                	mov    %esp,%ebp
80102f13:	56                   	push   %esi
80102f14:	8d b0 00 00 00 80    	lea    -0x80000000(%eax),%esi
80102f1a:	53                   	push   %ebx
80102f1b:	8d 1c 16             	lea    (%esi,%edx,1),%ebx
80102f1e:	83 ec 10             	sub    $0x10,%esp
80102f21:	39 de                	cmp    %ebx,%esi
80102f23:	73 3c                	jae    80102f61 <mpsearch1+0x51>
80102f25:	8d 76 00             	lea    0x0(%esi),%esi
80102f28:	c7 44 24 08 04 00 00 	movl   $0x4,0x8(%esp)
80102f2f:	00 
80102f30:	c7 44 24 04 78 73 10 	movl   $0x80107378,0x4(%esp)
80102f37:	80 
80102f38:	89 34 24             	mov    %esi,(%esp)
80102f3b:	e8 80 13 00 00       	call   801042c0 <memcmp>
80102f40:	85 c0                	test   %eax,%eax
80102f42:	75 16                	jne    80102f5a <mpsearch1+0x4a>
80102f44:	31 c9                	xor    %ecx,%ecx
80102f46:	31 d2                	xor    %edx,%edx
80102f48:	0f b6 04 16          	movzbl (%esi,%edx,1),%eax
80102f4c:	83 c2 01             	add    $0x1,%edx
80102f4f:	01 c1                	add    %eax,%ecx
80102f51:	83 fa 10             	cmp    $0x10,%edx
80102f54:	75 f2                	jne    80102f48 <mpsearch1+0x38>
80102f56:	84 c9                	test   %cl,%cl
80102f58:	74 10                	je     80102f6a <mpsearch1+0x5a>
80102f5a:	83 c6 10             	add    $0x10,%esi
80102f5d:	39 f3                	cmp    %esi,%ebx
80102f5f:	77 c7                	ja     80102f28 <mpsearch1+0x18>
80102f61:	83 c4 10             	add    $0x10,%esp
80102f64:	31 c0                	xor    %eax,%eax
80102f66:	5b                   	pop    %ebx
80102f67:	5e                   	pop    %esi
80102f68:	5d                   	pop    %ebp
80102f69:	c3                   	ret    
80102f6a:	83 c4 10             	add    $0x10,%esp
80102f6d:	89 f0                	mov    %esi,%eax
80102f6f:	5b                   	pop    %ebx
80102f70:	5e                   	pop    %esi
80102f71:	5d                   	pop    %ebp
80102f72:	c3                   	ret    
80102f73:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80102f79:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

80102f80 <mpinit>:
80102f80:	55                   	push   %ebp
80102f81:	89 e5                	mov    %esp,%ebp
80102f83:	57                   	push   %edi
80102f84:	56                   	push   %esi
80102f85:	53                   	push   %ebx
80102f86:	83 ec 1c             	sub    $0x1c,%esp
80102f89:	0f b6 05 0f 04 00 80 	movzbl 0x8000040f,%eax
80102f90:	0f b6 15 0e 04 00 80 	movzbl 0x8000040e,%edx
80102f97:	c1 e0 08             	shl    $0x8,%eax
80102f9a:	09 d0                	or     %edx,%eax
80102f9c:	c1 e0 04             	shl    $0x4,%eax
80102f9f:	85 c0                	test   %eax,%eax
80102fa1:	75 1b                	jne    80102fbe <mpinit+0x3e>
80102fa3:	0f b6 05 14 04 00 80 	movzbl 0x80000414,%eax
80102faa:	0f b6 15 13 04 00 80 	movzbl 0x80000413,%edx
80102fb1:	c1 e0 08             	shl    $0x8,%eax
80102fb4:	09 d0                	or     %edx,%eax
80102fb6:	c1 e0 0a             	shl    $0xa,%eax
80102fb9:	2d 00 04 00 00       	sub    $0x400,%eax
80102fbe:	ba 00 04 00 00       	mov    $0x400,%edx
80102fc3:	e8 48 ff ff ff       	call   80102f10 <mpsearch1>
80102fc8:	85 c0                	test   %eax,%eax
80102fca:	89 c7                	mov    %eax,%edi
80102fcc:	0f 84 22 01 00 00    	je     801030f4 <mpinit+0x174>
80102fd2:	8b 77 04             	mov    0x4(%edi),%esi
80102fd5:	85 f6                	test   %esi,%esi
80102fd7:	0f 84 30 01 00 00    	je     8010310d <mpinit+0x18d>
80102fdd:	8d 86 00 00 00 80    	lea    -0x80000000(%esi),%eax
80102fe3:	c7 44 24 08 04 00 00 	movl   $0x4,0x8(%esp)
80102fea:	00 
80102feb:	c7 44 24 04 7d 73 10 	movl   $0x8010737d,0x4(%esp)
80102ff2:	80 
80102ff3:	89 04 24             	mov    %eax,(%esp)
80102ff6:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80102ff9:	e8 c2 12 00 00       	call   801042c0 <memcmp>
80102ffe:	85 c0                	test   %eax,%eax
80103000:	0f 85 07 01 00 00    	jne    8010310d <mpinit+0x18d>
80103006:	0f b6 86 06 00 00 80 	movzbl -0x7ffffffa(%esi),%eax
8010300d:	3c 04                	cmp    $0x4,%al
8010300f:	0f 85 0b 01 00 00    	jne    80103120 <mpinit+0x1a0>
80103015:	0f b7 86 04 00 00 80 	movzwl -0x7ffffffc(%esi),%eax
8010301c:	85 c0                	test   %eax,%eax
8010301e:	74 21                	je     80103041 <mpinit+0xc1>
80103020:	31 c9                	xor    %ecx,%ecx
80103022:	31 d2                	xor    %edx,%edx
80103024:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80103028:	0f b6 9c 16 00 00 00 	movzbl -0x80000000(%esi,%edx,1),%ebx
8010302f:	80 
80103030:	83 c2 01             	add    $0x1,%edx
80103033:	01 d9                	add    %ebx,%ecx
80103035:	39 d0                	cmp    %edx,%eax
80103037:	7f ef                	jg     80103028 <mpinit+0xa8>
80103039:	84 c9                	test   %cl,%cl
8010303b:	0f 85 cc 00 00 00    	jne    8010310d <mpinit+0x18d>
80103041:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80103044:	85 c0                	test   %eax,%eax
80103046:	0f 84 c1 00 00 00    	je     8010310d <mpinit+0x18d>
8010304c:	8b 86 24 00 00 80    	mov    -0x7fffffdc(%esi),%eax
80103052:	bb 01 00 00 00       	mov    $0x1,%ebx
80103057:	a3 7c 26 11 80       	mov    %eax,0x8011267c
8010305c:	0f b7 96 04 00 00 80 	movzwl -0x7ffffffc(%esi),%edx
80103063:	8d 86 2c 00 00 80    	lea    -0x7fffffd4(%esi),%eax
80103069:	03 55 e4             	add    -0x1c(%ebp),%edx
8010306c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80103070:	39 c2                	cmp    %eax,%edx
80103072:	76 1b                	jbe    8010308f <mpinit+0x10f>
80103074:	0f b6 08             	movzbl (%eax),%ecx
80103077:	80 f9 04             	cmp    $0x4,%cl
8010307a:	77 74                	ja     801030f0 <mpinit+0x170>
8010307c:	ff 24 8d bc 73 10 80 	jmp    *-0x7fef8c44(,%ecx,4)
80103083:	90                   	nop
80103084:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80103088:	83 c0 08             	add    $0x8,%eax
8010308b:	39 c2                	cmp    %eax,%edx
8010308d:	77 e5                	ja     80103074 <mpinit+0xf4>
8010308f:	85 db                	test   %ebx,%ebx
80103091:	0f 84 93 00 00 00    	je     8010312a <mpinit+0x1aa>
80103097:	80 7f 0c 00          	cmpb   $0x0,0xc(%edi)
8010309b:	74 12                	je     801030af <mpinit+0x12f>
8010309d:	ba 22 00 00 00       	mov    $0x22,%edx
801030a2:	b8 70 00 00 00       	mov    $0x70,%eax
801030a7:	ee                   	out    %al,(%dx)
801030a8:	b2 23                	mov    $0x23,%dl
801030aa:	ec                   	in     (%dx),%al
801030ab:	83 c8 01             	or     $0x1,%eax
801030ae:	ee                   	out    %al,(%dx)
801030af:	83 c4 1c             	add    $0x1c,%esp
801030b2:	5b                   	pop    %ebx
801030b3:	5e                   	pop    %esi
801030b4:	5f                   	pop    %edi
801030b5:	5d                   	pop    %ebp
801030b6:	c3                   	ret    
801030b7:	90                   	nop
801030b8:	8b 35 00 2d 11 80    	mov    0x80112d00,%esi
801030be:	83 fe 07             	cmp    $0x7,%esi
801030c1:	7f 17                	jg     801030da <mpinit+0x15a>
801030c3:	0f b6 48 01          	movzbl 0x1(%eax),%ecx
801030c7:	69 f6 b0 00 00 00    	imul   $0xb0,%esi,%esi
801030cd:	83 05 00 2d 11 80 01 	addl   $0x1,0x80112d00
801030d4:	88 8e 80 27 11 80    	mov    %cl,-0x7feed880(%esi)
801030da:	83 c0 14             	add    $0x14,%eax
801030dd:	eb 91                	jmp    80103070 <mpinit+0xf0>
801030df:	90                   	nop
801030e0:	0f b6 48 01          	movzbl 0x1(%eax),%ecx
801030e4:	83 c0 08             	add    $0x8,%eax
801030e7:	88 0d 60 27 11 80    	mov    %cl,0x80112760
801030ed:	eb 81                	jmp    80103070 <mpinit+0xf0>
801030ef:	90                   	nop
801030f0:	31 db                	xor    %ebx,%ebx
801030f2:	eb 83                	jmp    80103077 <mpinit+0xf7>
801030f4:	ba 00 00 01 00       	mov    $0x10000,%edx
801030f9:	b8 00 00 0f 00       	mov    $0xf0000,%eax
801030fe:	e8 0d fe ff ff       	call   80102f10 <mpsearch1>
80103103:	85 c0                	test   %eax,%eax
80103105:	89 c7                	mov    %eax,%edi
80103107:	0f 85 c5 fe ff ff    	jne    80102fd2 <mpinit+0x52>
8010310d:	c7 04 24 82 73 10 80 	movl   $0x80107382,(%esp)
80103114:	e8 47 d2 ff ff       	call   80100360 <panic>
80103119:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80103120:	3c 01                	cmp    $0x1,%al
80103122:	0f 84 ed fe ff ff    	je     80103015 <mpinit+0x95>
80103128:	eb e3                	jmp    8010310d <mpinit+0x18d>
8010312a:	c7 04 24 9c 73 10 80 	movl   $0x8010739c,(%esp)
80103131:	e8 2a d2 ff ff       	call   80100360 <panic>
80103136:	66 90                	xchg   %ax,%ax
80103138:	66 90                	xchg   %ax,%ax
8010313a:	66 90                	xchg   %ax,%ax
8010313c:	66 90                	xchg   %ax,%ax
8010313e:	66 90                	xchg   %ax,%ax

80103140 <picinit>:
80103140:	55                   	push   %ebp
80103141:	ba 21 00 00 00       	mov    $0x21,%edx
80103146:	89 e5                	mov    %esp,%ebp
80103148:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010314d:	ee                   	out    %al,(%dx)
8010314e:	b2 a1                	mov    $0xa1,%dl
80103150:	ee                   	out    %al,(%dx)
80103151:	5d                   	pop    %ebp
80103152:	c3                   	ret    
80103153:	66 90                	xchg   %ax,%ax
80103155:	66 90                	xchg   %ax,%ax
80103157:	66 90                	xchg   %ax,%ax
80103159:	66 90                	xchg   %ax,%ax
8010315b:	66 90                	xchg   %ax,%ax
8010315d:	66 90                	xchg   %ax,%ax
8010315f:	90                   	nop

80103160 <pipealloc>:
80103160:	55                   	push   %ebp
80103161:	89 e5                	mov    %esp,%ebp
80103163:	57                   	push   %edi
80103164:	56                   	push   %esi
80103165:	53                   	push   %ebx
80103166:	83 ec 1c             	sub    $0x1c,%esp
80103169:	8b 75 08             	mov    0x8(%ebp),%esi
8010316c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
8010316f:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
80103175:	c7 06 00 00 00 00    	movl   $0x0,(%esi)
8010317b:	e8 d0 db ff ff       	call   80100d50 <filealloc>
80103180:	85 c0                	test   %eax,%eax
80103182:	89 06                	mov    %eax,(%esi)
80103184:	0f 84 a4 00 00 00    	je     8010322e <pipealloc+0xce>
8010318a:	e8 c1 db ff ff       	call   80100d50 <filealloc>
8010318f:	85 c0                	test   %eax,%eax
80103191:	89 03                	mov    %eax,(%ebx)
80103193:	0f 84 87 00 00 00    	je     80103220 <pipealloc+0xc0>
80103199:	e8 f2 f2 ff ff       	call   80102490 <kalloc>
8010319e:	85 c0                	test   %eax,%eax
801031a0:	89 c7                	mov    %eax,%edi
801031a2:	74 7c                	je     80103220 <pipealloc+0xc0>
801031a4:	c7 80 3c 02 00 00 01 	movl   $0x1,0x23c(%eax)
801031ab:	00 00 00 
801031ae:	c7 80 40 02 00 00 01 	movl   $0x1,0x240(%eax)
801031b5:	00 00 00 
801031b8:	c7 80 38 02 00 00 00 	movl   $0x0,0x238(%eax)
801031bf:	00 00 00 
801031c2:	c7 80 34 02 00 00 00 	movl   $0x0,0x234(%eax)
801031c9:	00 00 00 
801031cc:	89 04 24             	mov    %eax,(%esp)
801031cf:	c7 44 24 04 d0 73 10 	movl   $0x801073d0,0x4(%esp)
801031d6:	80 
801031d7:	e8 64 0e 00 00       	call   80104040 <initlock>
801031dc:	8b 06                	mov    (%esi),%eax
801031de:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
801031e4:	8b 06                	mov    (%esi),%eax
801031e6:	c6 40 08 01          	movb   $0x1,0x8(%eax)
801031ea:	8b 06                	mov    (%esi),%eax
801031ec:	c6 40 09 00          	movb   $0x0,0x9(%eax)
801031f0:	8b 06                	mov    (%esi),%eax
801031f2:	89 78 0c             	mov    %edi,0xc(%eax)
801031f5:	8b 03                	mov    (%ebx),%eax
801031f7:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
801031fd:	8b 03                	mov    (%ebx),%eax
801031ff:	c6 40 08 00          	movb   $0x0,0x8(%eax)
80103203:	8b 03                	mov    (%ebx),%eax
80103205:	c6 40 09 01          	movb   $0x1,0x9(%eax)
80103209:	8b 03                	mov    (%ebx),%eax
8010320b:	31 db                	xor    %ebx,%ebx
8010320d:	89 78 0c             	mov    %edi,0xc(%eax)
80103210:	83 c4 1c             	add    $0x1c,%esp
80103213:	89 d8                	mov    %ebx,%eax
80103215:	5b                   	pop    %ebx
80103216:	5e                   	pop    %esi
80103217:	5f                   	pop    %edi
80103218:	5d                   	pop    %ebp
80103219:	c3                   	ret    
8010321a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80103220:	8b 06                	mov    (%esi),%eax
80103222:	85 c0                	test   %eax,%eax
80103224:	74 08                	je     8010322e <pipealloc+0xce>
80103226:	89 04 24             	mov    %eax,(%esp)
80103229:	e8 e2 db ff ff       	call   80100e10 <fileclose>
8010322e:	8b 03                	mov    (%ebx),%eax
80103230:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
80103235:	85 c0                	test   %eax,%eax
80103237:	74 d7                	je     80103210 <pipealloc+0xb0>
80103239:	89 04 24             	mov    %eax,(%esp)
8010323c:	e8 cf db ff ff       	call   80100e10 <fileclose>
80103241:	83 c4 1c             	add    $0x1c,%esp
80103244:	89 d8                	mov    %ebx,%eax
80103246:	5b                   	pop    %ebx
80103247:	5e                   	pop    %esi
80103248:	5f                   	pop    %edi
80103249:	5d                   	pop    %ebp
8010324a:	c3                   	ret    
8010324b:	90                   	nop
8010324c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80103250 <pipeclose>:
80103250:	55                   	push   %ebp
80103251:	89 e5                	mov    %esp,%ebp
80103253:	56                   	push   %esi
80103254:	53                   	push   %ebx
80103255:	83 ec 10             	sub    $0x10,%esp
80103258:	8b 5d 08             	mov    0x8(%ebp),%ebx
8010325b:	8b 75 0c             	mov    0xc(%ebp),%esi
8010325e:	89 1c 24             	mov    %ebx,(%esp)
80103261:	e8 ca 0e 00 00       	call   80104130 <acquire>
80103266:	85 f6                	test   %esi,%esi
80103268:	74 3e                	je     801032a8 <pipeclose+0x58>
8010326a:	8d 83 34 02 00 00    	lea    0x234(%ebx),%eax
80103270:	c7 83 40 02 00 00 00 	movl   $0x0,0x240(%ebx)
80103277:	00 00 00 
8010327a:	89 04 24             	mov    %eax,(%esp)
8010327d:	e8 fe 0a 00 00       	call   80103d80 <wakeup>
80103282:	8b 93 3c 02 00 00    	mov    0x23c(%ebx),%edx
80103288:	85 d2                	test   %edx,%edx
8010328a:	75 0a                	jne    80103296 <pipeclose+0x46>
8010328c:	8b 83 40 02 00 00    	mov    0x240(%ebx),%eax
80103292:	85 c0                	test   %eax,%eax
80103294:	74 32                	je     801032c8 <pipeclose+0x78>
80103296:	89 5d 08             	mov    %ebx,0x8(%ebp)
80103299:	83 c4 10             	add    $0x10,%esp
8010329c:	5b                   	pop    %ebx
8010329d:	5e                   	pop    %esi
8010329e:	5d                   	pop    %ebp
8010329f:	e9 7c 0f 00 00       	jmp    80104220 <release>
801032a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
801032a8:	8d 83 38 02 00 00    	lea    0x238(%ebx),%eax
801032ae:	c7 83 3c 02 00 00 00 	movl   $0x0,0x23c(%ebx)
801032b5:	00 00 00 
801032b8:	89 04 24             	mov    %eax,(%esp)
801032bb:	e8 c0 0a 00 00       	call   80103d80 <wakeup>
801032c0:	eb c0                	jmp    80103282 <pipeclose+0x32>
801032c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
801032c8:	89 1c 24             	mov    %ebx,(%esp)
801032cb:	e8 50 0f 00 00       	call   80104220 <release>
801032d0:	89 5d 08             	mov    %ebx,0x8(%ebp)
801032d3:	83 c4 10             	add    $0x10,%esp
801032d6:	5b                   	pop    %ebx
801032d7:	5e                   	pop    %esi
801032d8:	5d                   	pop    %ebp
801032d9:	e9 02 f0 ff ff       	jmp    801022e0 <kfree>
801032de:	66 90                	xchg   %ax,%ax

801032e0 <pipewrite>:
801032e0:	55                   	push   %ebp
801032e1:	89 e5                	mov    %esp,%ebp
801032e3:	57                   	push   %edi
801032e4:	56                   	push   %esi
801032e5:	53                   	push   %ebx
801032e6:	83 ec 1c             	sub    $0x1c,%esp
801032e9:	8b 5d 08             	mov    0x8(%ebp),%ebx
801032ec:	89 1c 24             	mov    %ebx,(%esp)
801032ef:	e8 3c 0e 00 00       	call   80104130 <acquire>
801032f4:	8b 4d 10             	mov    0x10(%ebp),%ecx
801032f7:	85 c9                	test   %ecx,%ecx
801032f9:	0f 8e b2 00 00 00    	jle    801033b1 <pipewrite+0xd1>
801032ff:	8b 4d 0c             	mov    0xc(%ebp),%ecx
80103302:	8d bb 34 02 00 00    	lea    0x234(%ebx),%edi
80103308:	8b 83 38 02 00 00    	mov    0x238(%ebx),%eax
8010330e:	8d b3 38 02 00 00    	lea    0x238(%ebx),%esi
80103314:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
80103317:	03 4d 10             	add    0x10(%ebp),%ecx
8010331a:	89 4d e0             	mov    %ecx,-0x20(%ebp)
8010331d:	8b 8b 34 02 00 00    	mov    0x234(%ebx),%ecx
80103323:	81 c1 00 02 00 00    	add    $0x200,%ecx
80103329:	39 c8                	cmp    %ecx,%eax
8010332b:	74 38                	je     80103365 <pipewrite+0x85>
8010332d:	eb 55                	jmp    80103384 <pipewrite+0xa4>
8010332f:	90                   	nop
80103330:	e8 5b 03 00 00       	call   80103690 <myproc>
80103335:	8b 40 24             	mov    0x24(%eax),%eax
80103338:	85 c0                	test   %eax,%eax
8010333a:	75 33                	jne    8010336f <pipewrite+0x8f>
8010333c:	89 3c 24             	mov    %edi,(%esp)
8010333f:	e8 3c 0a 00 00       	call   80103d80 <wakeup>
80103344:	89 5c 24 04          	mov    %ebx,0x4(%esp)
80103348:	89 34 24             	mov    %esi,(%esp)
8010334b:	e8 a0 08 00 00       	call   80103bf0 <sleep>
80103350:	8b 83 34 02 00 00    	mov    0x234(%ebx),%eax
80103356:	8b 93 38 02 00 00    	mov    0x238(%ebx),%edx
8010335c:	05 00 02 00 00       	add    $0x200,%eax
80103361:	39 c2                	cmp    %eax,%edx
80103363:	75 23                	jne    80103388 <pipewrite+0xa8>
80103365:	8b 93 3c 02 00 00    	mov    0x23c(%ebx),%edx
8010336b:	85 d2                	test   %edx,%edx
8010336d:	75 c1                	jne    80103330 <pipewrite+0x50>
8010336f:	89 1c 24             	mov    %ebx,(%esp)
80103372:	e8 a9 0e 00 00       	call   80104220 <release>
80103377:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010337c:	83 c4 1c             	add    $0x1c,%esp
8010337f:	5b                   	pop    %ebx
80103380:	5e                   	pop    %esi
80103381:	5f                   	pop    %edi
80103382:	5d                   	pop    %ebp
80103383:	c3                   	ret    
80103384:	89 c2                	mov    %eax,%edx
80103386:	66 90                	xchg   %ax,%ax
80103388:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
8010338b:	8d 42 01             	lea    0x1(%edx),%eax
8010338e:	81 e2 ff 01 00 00    	and    $0x1ff,%edx
80103394:	89 83 38 02 00 00    	mov    %eax,0x238(%ebx)
8010339a:	83 45 e4 01          	addl   $0x1,-0x1c(%ebp)
8010339e:	0f b6 09             	movzbl (%ecx),%ecx
801033a1:	88 4c 13 34          	mov    %cl,0x34(%ebx,%edx,1)
801033a5:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
801033a8:	3b 4d e0             	cmp    -0x20(%ebp),%ecx
801033ab:	0f 85 6c ff ff ff    	jne    8010331d <pipewrite+0x3d>
801033b1:	8d 83 34 02 00 00    	lea    0x234(%ebx),%eax
801033b7:	89 04 24             	mov    %eax,(%esp)
801033ba:	e8 c1 09 00 00       	call   80103d80 <wakeup>
801033bf:	89 1c 24             	mov    %ebx,(%esp)
801033c2:	e8 59 0e 00 00       	call   80104220 <release>
801033c7:	8b 45 10             	mov    0x10(%ebp),%eax
801033ca:	eb b0                	jmp    8010337c <pipewrite+0x9c>
801033cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

801033d0 <piperead>:
801033d0:	55                   	push   %ebp
801033d1:	89 e5                	mov    %esp,%ebp
801033d3:	57                   	push   %edi
801033d4:	56                   	push   %esi
801033d5:	53                   	push   %ebx
801033d6:	83 ec 1c             	sub    $0x1c,%esp
801033d9:	8b 75 08             	mov    0x8(%ebp),%esi
801033dc:	8b 7d 0c             	mov    0xc(%ebp),%edi
801033df:	89 34 24             	mov    %esi,(%esp)
801033e2:	e8 49 0d 00 00       	call   80104130 <acquire>
801033e7:	8b 86 34 02 00 00    	mov    0x234(%esi),%eax
801033ed:	3b 86 38 02 00 00    	cmp    0x238(%esi),%eax
801033f3:	75 5b                	jne    80103450 <piperead+0x80>
801033f5:	8b 9e 40 02 00 00    	mov    0x240(%esi),%ebx
801033fb:	85 db                	test   %ebx,%ebx
801033fd:	74 51                	je     80103450 <piperead+0x80>
801033ff:	8d 9e 34 02 00 00    	lea    0x234(%esi),%ebx
80103405:	eb 25                	jmp    8010342c <piperead+0x5c>
80103407:	90                   	nop
80103408:	89 74 24 04          	mov    %esi,0x4(%esp)
8010340c:	89 1c 24             	mov    %ebx,(%esp)
8010340f:	e8 dc 07 00 00       	call   80103bf0 <sleep>
80103414:	8b 86 34 02 00 00    	mov    0x234(%esi),%eax
8010341a:	3b 86 38 02 00 00    	cmp    0x238(%esi),%eax
80103420:	75 2e                	jne    80103450 <piperead+0x80>
80103422:	8b 96 40 02 00 00    	mov    0x240(%esi),%edx
80103428:	85 d2                	test   %edx,%edx
8010342a:	74 24                	je     80103450 <piperead+0x80>
8010342c:	e8 5f 02 00 00       	call   80103690 <myproc>
80103431:	8b 48 24             	mov    0x24(%eax),%ecx
80103434:	85 c9                	test   %ecx,%ecx
80103436:	74 d0                	je     80103408 <piperead+0x38>
80103438:	89 34 24             	mov    %esi,(%esp)
8010343b:	e8 e0 0d 00 00       	call   80104220 <release>
80103440:	83 c4 1c             	add    $0x1c,%esp
80103443:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80103448:	5b                   	pop    %ebx
80103449:	5e                   	pop    %esi
8010344a:	5f                   	pop    %edi
8010344b:	5d                   	pop    %ebp
8010344c:	c3                   	ret    
8010344d:	8d 76 00             	lea    0x0(%esi),%esi
80103450:	8b 55 10             	mov    0x10(%ebp),%edx
80103453:	31 db                	xor    %ebx,%ebx
80103455:	85 d2                	test   %edx,%edx
80103457:	7f 2b                	jg     80103484 <piperead+0xb4>
80103459:	eb 31                	jmp    8010348c <piperead+0xbc>
8010345b:	90                   	nop
8010345c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80103460:	8d 48 01             	lea    0x1(%eax),%ecx
80103463:	25 ff 01 00 00       	and    $0x1ff,%eax
80103468:	89 8e 34 02 00 00    	mov    %ecx,0x234(%esi)
8010346e:	0f b6 44 06 34       	movzbl 0x34(%esi,%eax,1),%eax
80103473:	88 04 1f             	mov    %al,(%edi,%ebx,1)
80103476:	83 c3 01             	add    $0x1,%ebx
80103479:	3b 5d 10             	cmp    0x10(%ebp),%ebx
8010347c:	74 0e                	je     8010348c <piperead+0xbc>
8010347e:	8b 86 34 02 00 00    	mov    0x234(%esi),%eax
80103484:	3b 86 38 02 00 00    	cmp    0x238(%esi),%eax
8010348a:	75 d4                	jne    80103460 <piperead+0x90>
8010348c:	8d 86 38 02 00 00    	lea    0x238(%esi),%eax
80103492:	89 04 24             	mov    %eax,(%esp)
80103495:	e8 e6 08 00 00       	call   80103d80 <wakeup>
8010349a:	89 34 24             	mov    %esi,(%esp)
8010349d:	e8 7e 0d 00 00       	call   80104220 <release>
801034a2:	83 c4 1c             	add    $0x1c,%esp
801034a5:	89 d8                	mov    %ebx,%eax
801034a7:	5b                   	pop    %ebx
801034a8:	5e                   	pop    %esi
801034a9:	5f                   	pop    %edi
801034aa:	5d                   	pop    %ebp
801034ab:	c3                   	ret    
801034ac:	66 90                	xchg   %ax,%ax
801034ae:	66 90                	xchg   %ax,%ax

801034b0 <allocproc>:
// If found, change state to EMBRYO and initialize
// state required to run in the kernel.
// Otherwise return 0.
static struct proc*
allocproc(void)
{
801034b0:	55                   	push   %ebp
801034b1:	89 e5                	mov    %esp,%ebp
801034b3:	53                   	push   %ebx
  struct proc *p;
  char *sp;

  acquire(&ptable.lock);

  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++)
801034b4:	bb 54 2d 11 80       	mov    $0x80112d54,%ebx
// If found, change state to EMBRYO and initialize
// state required to run in the kernel.
// Otherwise return 0.
static struct proc*
allocproc(void)
{
801034b9:	83 ec 14             	sub    $0x14,%esp
  struct proc *p;
  char *sp;

  acquire(&ptable.lock);
801034bc:	c7 04 24 20 2d 11 80 	movl   $0x80112d20,(%esp)
801034c3:	e8 68 0c 00 00       	call   80104130 <acquire>
801034c8:	eb 11                	jmp    801034db <allocproc+0x2b>
801034ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++)
801034d0:	83 eb 80             	sub    $0xffffff80,%ebx
801034d3:	81 fb 54 4d 11 80    	cmp    $0x80114d54,%ebx
801034d9:	74 7d                	je     80103558 <allocproc+0xa8>
    if(p->state == UNUSED)
801034db:	8b 43 0c             	mov    0xc(%ebx),%eax
801034de:	85 c0                	test   %eax,%eax
801034e0:	75 ee                	jne    801034d0 <allocproc+0x20>
  release(&ptable.lock);
  return 0;

found:
  p->state = EMBRYO;
  p->pid = nextpid++;
801034e2:	a1 04 a0 10 80       	mov    0x8010a004,%eax

  release(&ptable.lock);
801034e7:	c7 04 24 20 2d 11 80 	movl   $0x80112d20,(%esp)

  release(&ptable.lock);
  return 0;

found:
  p->state = EMBRYO;
801034ee:	c7 43 0c 01 00 00 00 	movl   $0x1,0xc(%ebx)
  p->pid = nextpid++;
801034f5:	8d 50 01             	lea    0x1(%eax),%edx
801034f8:	89 15 04 a0 10 80    	mov    %edx,0x8010a004
801034fe:	89 43 10             	mov    %eax,0x10(%ebx)

  release(&ptable.lock);
80103501:	e8 1a 0d 00 00       	call   80104220 <release>

  // Allocate kernel stack.
  if((p->kstack = kalloc()) == 0){
80103506:	e8 85 ef ff ff       	call   80102490 <kalloc>
8010350b:	85 c0                	test   %eax,%eax
8010350d:	89 43 08             	mov    %eax,0x8(%ebx)
80103510:	74 5a                	je     8010356c <allocproc+0xbc>
    return 0;
  }
  sp = p->kstack + KSTACKSIZE;

  // Leave room for trap frame.
  sp -= sizeof *p->tf;
80103512:	8d 90 b4 0f 00 00    	lea    0xfb4(%eax),%edx
  // Set up new context to start executing at forkret,
  // which returns to trapret.
  sp -= 4;
  *(uint*)sp = (uint)trapret;

  sp -= sizeof *p->context;
80103518:	05 9c 0f 00 00       	add    $0xf9c,%eax
    return 0;
  }
  sp = p->kstack + KSTACKSIZE;

  // Leave room for trap frame.
  sp -= sizeof *p->tf;
8010351d:	89 53 18             	mov    %edx,0x18(%ebx)
  p->tf = (struct trapframe*)sp;

  // Set up new context to start executing at forkret,
  // which returns to trapret.
  sp -= 4;
  *(uint*)sp = (uint)trapret;
80103520:	c7 40 14 e5 53 10 80 	movl   $0x801053e5,0x14(%eax)

  sp -= sizeof *p->context;
  p->context = (struct context*)sp;
  memset(p->context, 0, sizeof *p->context);
80103527:	c7 44 24 08 14 00 00 	movl   $0x14,0x8(%esp)
8010352e:	00 
8010352f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
80103536:	00 
80103537:	89 04 24             	mov    %eax,(%esp)
  // which returns to trapret.
  sp -= 4;
  *(uint*)sp = (uint)trapret;

  sp -= sizeof *p->context;
  p->context = (struct context*)sp;
8010353a:	89 43 1c             	mov    %eax,0x1c(%ebx)
  memset(p->context, 0, sizeof *p->context);
8010353d:	e8 2e 0d 00 00       	call   80104270 <memset>
  p->context->eip = (uint)forkret;
80103542:	8b 43 1c             	mov    0x1c(%ebx),%eax
80103545:	c7 40 10 80 35 10 80 	movl   $0x80103580,0x10(%eax)

  return p;
8010354c:	89 d8                	mov    %ebx,%eax
}
8010354e:	83 c4 14             	add    $0x14,%esp
80103551:	5b                   	pop    %ebx
80103552:	5d                   	pop    %ebp
80103553:	c3                   	ret    
80103554:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++)
    if(p->state == UNUSED)
      goto found;

  release(&ptable.lock);
80103558:	c7 04 24 20 2d 11 80 	movl   $0x80112d20,(%esp)
8010355f:	e8 bc 0c 00 00       	call   80104220 <release>
  p->context = (struct context*)sp;
  memset(p->context, 0, sizeof *p->context);
  p->context->eip = (uint)forkret;

  return p;
}
80103564:	83 c4 14             	add    $0x14,%esp
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++)
    if(p->state == UNUSED)
      goto found;

  release(&ptable.lock);
  return 0;
80103567:	31 c0                	xor    %eax,%eax
  p->context = (struct context*)sp;
  memset(p->context, 0, sizeof *p->context);
  p->context->eip = (uint)forkret;

  return p;
}
80103569:	5b                   	pop    %ebx
8010356a:	5d                   	pop    %ebp
8010356b:	c3                   	ret    

  release(&ptable.lock);

  // Allocate kernel stack.
  if((p->kstack = kalloc()) == 0){
    p->state = UNUSED;
8010356c:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
    return 0;
80103573:	eb d9                	jmp    8010354e <allocproc+0x9e>
80103575:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80103579:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

80103580 <forkret>:

// A fork child's very first scheduling by scheduler()
// will swtch here.  "Return" to user space.
void
forkret(void)
{
80103580:	55                   	push   %ebp
80103581:	89 e5                	mov    %esp,%ebp
80103583:	83 ec 18             	sub    $0x18,%esp
  static int first = 1;
  // Still holding ptable.lock from scheduler.
  release(&ptable.lock);
80103586:	c7 04 24 20 2d 11 80 	movl   $0x80112d20,(%esp)
8010358d:	e8 8e 0c 00 00       	call   80104220 <release>

  if (first) {
80103592:	a1 00 a0 10 80       	mov    0x8010a000,%eax
80103597:	85 c0                	test   %eax,%eax
80103599:	75 05                	jne    801035a0 <forkret+0x20>
    iinit(ROOTDEV);
    initlog(ROOTDEV);
  }

  // Return to "caller", actually trapret (see allocproc).
}
8010359b:	c9                   	leave  
8010359c:	c3                   	ret    
8010359d:	8d 76 00             	lea    0x0(%esi),%esi
  if (first) {
    // Some initialization functions must be run in the context
    // of a regular process (e.g., they call sleep), and thus cannot
    // be run from main().
    first = 0;
    iinit(ROOTDEV);
801035a0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)

  if (first) {
    // Some initialization functions must be run in the context
    // of a regular process (e.g., they call sleep), and thus cannot
    // be run from main().
    first = 0;
801035a7:	c7 05 00 a0 10 80 00 	movl   $0x0,0x8010a000
801035ae:	00 00 00 
    iinit(ROOTDEV);
801035b1:	e8 aa de ff ff       	call   80101460 <iinit>
    initlog(ROOTDEV);
801035b6:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
801035bd:	e8 9e f4 ff ff       	call   80102a60 <initlog>
  }

  // Return to "caller", actually trapret (see allocproc).
}
801035c2:	c9                   	leave  
801035c3:	c3                   	ret    
801035c4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
801035ca:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

801035d0 <pinit>:

static void wakeup1(void *chan);

void
pinit(void)
{
801035d0:	55                   	push   %ebp
801035d1:	89 e5                	mov    %esp,%ebp
801035d3:	83 ec 18             	sub    $0x18,%esp
  initlock(&ptable.lock, "ptable");
801035d6:	c7 44 24 04 d5 73 10 	movl   $0x801073d5,0x4(%esp)
801035dd:	80 
801035de:	c7 04 24 20 2d 11 80 	movl   $0x80112d20,(%esp)
801035e5:	e8 56 0a 00 00       	call   80104040 <initlock>
}
801035ea:	c9                   	leave  
801035eb:	c3                   	ret    
801035ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

801035f0 <mycpu>:

// Must be called with interrupts disabled to avoid the caller being
// rescheduled between reading lapicid and running through the loop.
struct cpu*
mycpu(void)
{
801035f0:	55                   	push   %ebp
801035f1:	89 e5                	mov    %esp,%ebp
801035f3:	56                   	push   %esi
801035f4:	53                   	push   %ebx
801035f5:	83 ec 10             	sub    $0x10,%esp

static inline uint
readeflags(void)
{
  uint eflags;
  asm volatile("pushfl; popl %0" : "=r" (eflags));
801035f8:	9c                   	pushf  
801035f9:	58                   	pop    %eax
  int apicid, i;
  
  if(readeflags()&FL_IF)
801035fa:	f6 c4 02             	test   $0x2,%ah
801035fd:	75 57                	jne    80103656 <mycpu+0x66>
    panic("mycpu called with interrupts enabled\n");
  
  apicid = lapicid();
801035ff:	e8 4c f1 ff ff       	call   80102750 <lapicid>
  // APIC IDs are not guaranteed to be contiguous. Maybe we should have
  // a reverse map, or reserve a register to store &cpus[i].
  for (i = 0; i < ncpu; ++i) {
80103604:	8b 35 00 2d 11 80    	mov    0x80112d00,%esi
8010360a:	85 f6                	test   %esi,%esi
8010360c:	7e 3c                	jle    8010364a <mycpu+0x5a>
    if (cpus[i].apicid == apicid)
8010360e:	0f b6 15 80 27 11 80 	movzbl 0x80112780,%edx
80103615:	39 c2                	cmp    %eax,%edx
80103617:	74 2d                	je     80103646 <mycpu+0x56>
80103619:	b9 30 28 11 80       	mov    $0x80112830,%ecx
    panic("mycpu called with interrupts enabled\n");
  
  apicid = lapicid();
  // APIC IDs are not guaranteed to be contiguous. Maybe we should have
  // a reverse map, or reserve a register to store &cpus[i].
  for (i = 0; i < ncpu; ++i) {
8010361e:	31 d2                	xor    %edx,%edx
80103620:	83 c2 01             	add    $0x1,%edx
80103623:	39 f2                	cmp    %esi,%edx
80103625:	74 23                	je     8010364a <mycpu+0x5a>
    if (cpus[i].apicid == apicid)
80103627:	0f b6 19             	movzbl (%ecx),%ebx
8010362a:	81 c1 b0 00 00 00    	add    $0xb0,%ecx
80103630:	39 c3                	cmp    %eax,%ebx
80103632:	75 ec                	jne    80103620 <mycpu+0x30>
      return &cpus[i];
80103634:	69 c2 b0 00 00 00    	imul   $0xb0,%edx,%eax
  }
  panic("unknown apicid\n");
}
8010363a:	83 c4 10             	add    $0x10,%esp
8010363d:	5b                   	pop    %ebx
8010363e:	5e                   	pop    %esi
8010363f:	5d                   	pop    %ebp
  apicid = lapicid();
  // APIC IDs are not guaranteed to be contiguous. Maybe we should have
  // a reverse map, or reserve a register to store &cpus[i].
  for (i = 0; i < ncpu; ++i) {
    if (cpus[i].apicid == apicid)
      return &cpus[i];
80103640:	05 80 27 11 80       	add    $0x80112780,%eax
  }
  panic("unknown apicid\n");
}
80103645:	c3                   	ret    
    panic("mycpu called with interrupts enabled\n");
  
  apicid = lapicid();
  // APIC IDs are not guaranteed to be contiguous. Maybe we should have
  // a reverse map, or reserve a register to store &cpus[i].
  for (i = 0; i < ncpu; ++i) {
80103646:	31 d2                	xor    %edx,%edx
80103648:	eb ea                	jmp    80103634 <mycpu+0x44>
    if (cpus[i].apicid == apicid)
      return &cpus[i];
  }
  panic("unknown apicid\n");
8010364a:	c7 04 24 dc 73 10 80 	movl   $0x801073dc,(%esp)
80103651:	e8 0a cd ff ff       	call   80100360 <panic>
mycpu(void)
{
  int apicid, i;
  
  if(readeflags()&FL_IF)
    panic("mycpu called with interrupts enabled\n");
80103656:	c7 04 24 b8 74 10 80 	movl   $0x801074b8,(%esp)
8010365d:	e8 fe cc ff ff       	call   80100360 <panic>
80103662:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80103669:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

80103670 <cpuid>:
  initlock(&ptable.lock, "ptable");
}

// Must be called with interrupts disabled
int
cpuid() {
80103670:	55                   	push   %ebp
80103671:	89 e5                	mov    %esp,%ebp
80103673:	83 ec 08             	sub    $0x8,%esp
  return mycpu()-cpus;
80103676:	e8 75 ff ff ff       	call   801035f0 <mycpu>
}
8010367b:	c9                   	leave  
}

// Must be called with interrupts disabled
int
cpuid() {
  return mycpu()-cpus;
8010367c:	2d 80 27 11 80       	sub    $0x80112780,%eax
80103681:	c1 f8 04             	sar    $0x4,%eax
80103684:	69 c0 a3 8b 2e ba    	imul   $0xba2e8ba3,%eax,%eax
}
8010368a:	c3                   	ret    
8010368b:	90                   	nop
8010368c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80103690 <myproc>:
}

// Disable interrupts so that we are not rescheduled
// while reading proc from the cpu structure
struct proc*
myproc(void) {
80103690:	55                   	push   %ebp
80103691:	89 e5                	mov    %esp,%ebp
80103693:	53                   	push   %ebx
80103694:	83 ec 04             	sub    $0x4,%esp
  struct cpu *c;
  struct proc *p;
  pushcli();
80103697:	e8 54 0a 00 00       	call   801040f0 <pushcli>
  c = mycpu();
8010369c:	e8 4f ff ff ff       	call   801035f0 <mycpu>
  p = c->proc;
801036a1:	8b 98 ac 00 00 00    	mov    0xac(%eax),%ebx
  popcli();
801036a7:	e8 04 0b 00 00       	call   801041b0 <popcli>
  return p;
}
801036ac:	83 c4 04             	add    $0x4,%esp
801036af:	89 d8                	mov    %ebx,%eax
801036b1:	5b                   	pop    %ebx
801036b2:	5d                   	pop    %ebp
801036b3:	c3                   	ret    
801036b4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
801036ba:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

801036c0 <userinit>:

//PAGEBREAK: 32
// Set up first user process.
void
userinit(void)
{
801036c0:	55                   	push   %ebp
801036c1:	89 e5                	mov    %esp,%ebp
801036c3:	53                   	push   %ebx
801036c4:	83 ec 14             	sub    $0x14,%esp
  struct proc *p;
  extern char _binary_initcode_start[], _binary_initcode_size[];

  p = allocproc();
801036c7:	e8 e4 fd ff ff       	call   801034b0 <allocproc>
801036cc:	89 c3                	mov    %eax,%ebx
  
  initproc = p;
801036ce:	a3 b8 a5 10 80       	mov    %eax,0x8010a5b8
  if((p->pgdir = setupkvm()) == 0)
801036d3:	e8 a8 33 00 00       	call   80106a80 <setupkvm>
801036d8:	85 c0                	test   %eax,%eax
801036da:	89 43 04             	mov    %eax,0x4(%ebx)
801036dd:	0f 84 d4 00 00 00    	je     801037b7 <userinit+0xf7>
    panic("userinit: out of memory?");
  inituvm(p->pgdir, _binary_initcode_start, (int)_binary_initcode_size);
801036e3:	89 04 24             	mov    %eax,(%esp)
801036e6:	c7 44 24 08 2c 00 00 	movl   $0x2c,0x8(%esp)
801036ed:	00 
801036ee:	c7 44 24 04 60 a4 10 	movl   $0x8010a460,0x4(%esp)
801036f5:	80 
801036f6:	e8 75 30 00 00       	call   80106770 <inituvm>
  p->sz = PGSIZE;
801036fb:	c7 03 00 10 00 00    	movl   $0x1000,(%ebx)
  memset(p->tf, 0, sizeof(*p->tf));
80103701:	c7 44 24 08 4c 00 00 	movl   $0x4c,0x8(%esp)
80103708:	00 
80103709:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
80103710:	00 
80103711:	8b 43 18             	mov    0x18(%ebx),%eax
80103714:	89 04 24             	mov    %eax,(%esp)
80103717:	e8 54 0b 00 00       	call   80104270 <memset>
  p->tf->cs = (SEG_UCODE << 3) | DPL_USER;
8010371c:	8b 43 18             	mov    0x18(%ebx),%eax
8010371f:	ba 1b 00 00 00       	mov    $0x1b,%edx
  p->tf->ds = (SEG_UDATA << 3) | DPL_USER;
80103724:	b9 23 00 00 00       	mov    $0x23,%ecx
  if((p->pgdir = setupkvm()) == 0)
    panic("userinit: out of memory?");
  inituvm(p->pgdir, _binary_initcode_start, (int)_binary_initcode_size);
  p->sz = PGSIZE;
  memset(p->tf, 0, sizeof(*p->tf));
  p->tf->cs = (SEG_UCODE << 3) | DPL_USER;
80103729:	66 89 50 3c          	mov    %dx,0x3c(%eax)
  p->tf->ds = (SEG_UDATA << 3) | DPL_USER;
8010372d:	8b 43 18             	mov    0x18(%ebx),%eax
80103730:	66 89 48 2c          	mov    %cx,0x2c(%eax)
  p->tf->es = p->tf->ds;
80103734:	8b 43 18             	mov    0x18(%ebx),%eax
80103737:	0f b7 50 2c          	movzwl 0x2c(%eax),%edx
8010373b:	66 89 50 28          	mov    %dx,0x28(%eax)
  p->tf->ss = p->tf->ds;
8010373f:	8b 43 18             	mov    0x18(%ebx),%eax
80103742:	0f b7 50 2c          	movzwl 0x2c(%eax),%edx
80103746:	66 89 50 48          	mov    %dx,0x48(%eax)
  p->tf->eflags = FL_IF;
8010374a:	8b 43 18             	mov    0x18(%ebx),%eax
8010374d:	c7 40 40 00 02 00 00 	movl   $0x200,0x40(%eax)
  p->tf->esp = PGSIZE;
80103754:	8b 43 18             	mov    0x18(%ebx),%eax
80103757:	c7 40 44 00 10 00 00 	movl   $0x1000,0x44(%eax)
  p->tf->eip = 0;  // beginning of initcode.S
8010375e:	8b 43 18             	mov    0x18(%ebx),%eax
80103761:	c7 40 38 00 00 00 00 	movl   $0x0,0x38(%eax)

  safestrcpy(p->name, "initcode", sizeof(p->name));
80103768:	8d 43 6c             	lea    0x6c(%ebx),%eax
8010376b:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
80103772:	00 
80103773:	c7 44 24 04 05 74 10 	movl   $0x80107405,0x4(%esp)
8010377a:	80 
8010377b:	89 04 24             	mov    %eax,(%esp)
8010377e:	e8 cd 0c 00 00       	call   80104450 <safestrcpy>
  p->cwd = namei("/");
80103783:	c7 04 24 0e 74 10 80 	movl   $0x8010740e,(%esp)
8010378a:	e8 61 e7 ff ff       	call   80101ef0 <namei>
8010378f:	89 43 68             	mov    %eax,0x68(%ebx)

  // this assignment to p->state lets other cores
  // run this process. the acquire forces the above
  // writes to be visible, and the lock is also needed
  // because the assignment might not be atomic.
  acquire(&ptable.lock);
80103792:	c7 04 24 20 2d 11 80 	movl   $0x80112d20,(%esp)
80103799:	e8 92 09 00 00       	call   80104130 <acquire>

  p->state = RUNNABLE;
8010379e:	c7 43 0c 03 00 00 00 	movl   $0x3,0xc(%ebx)

  release(&ptable.lock);
801037a5:	c7 04 24 20 2d 11 80 	movl   $0x80112d20,(%esp)
801037ac:	e8 6f 0a 00 00       	call   80104220 <release>
}
801037b1:	83 c4 14             	add    $0x14,%esp
801037b4:	5b                   	pop    %ebx
801037b5:	5d                   	pop    %ebp
801037b6:	c3                   	ret    

  p = allocproc();
  
  initproc = p;
  if((p->pgdir = setupkvm()) == 0)
    panic("userinit: out of memory?");
801037b7:	c7 04 24 ec 73 10 80 	movl   $0x801073ec,(%esp)
801037be:	e8 9d cb ff ff       	call   80100360 <panic>
801037c3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
801037c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

801037d0 <growproc>:

// Grow current process's memory by n bytes.
// Return 0 on success, -1 on failure.
int
growproc(int n)
{
801037d0:	55                   	push   %ebp
801037d1:	89 e5                	mov    %esp,%ebp
801037d3:	56                   	push   %esi
801037d4:	53                   	push   %ebx
801037d5:	83 ec 10             	sub    $0x10,%esp
801037d8:	8b 75 08             	mov    0x8(%ebp),%esi
  uint sz;
  struct proc *curproc = myproc();
801037db:	e8 b0 fe ff ff       	call   80103690 <myproc>

  sz = curproc->sz;
  if(n > 0){
801037e0:	83 fe 00             	cmp    $0x0,%esi
// Return 0 on success, -1 on failure.
int
growproc(int n)
{
  uint sz;
  struct proc *curproc = myproc();
801037e3:	89 c3                	mov    %eax,%ebx

  sz = curproc->sz;
801037e5:	8b 00                	mov    (%eax),%eax
  if(n > 0){
801037e7:	7e 2f                	jle    80103818 <growproc+0x48>
    if((sz = allocuvm(curproc->pgdir, sz, sz + n)) == 0)
801037e9:	01 c6                	add    %eax,%esi
801037eb:	89 74 24 08          	mov    %esi,0x8(%esp)
801037ef:	89 44 24 04          	mov    %eax,0x4(%esp)
801037f3:	8b 43 04             	mov    0x4(%ebx),%eax
801037f6:	89 04 24             	mov    %eax,(%esp)
801037f9:	e8 c2 30 00 00       	call   801068c0 <allocuvm>
801037fe:	85 c0                	test   %eax,%eax
80103800:	74 36                	je     80103838 <growproc+0x68>
      return -1;
  } else if(n < 0){
    if((sz = deallocuvm(curproc->pgdir, sz, sz + n)) == 0)
      return -1;
  }
  curproc->sz = sz;
80103802:	89 03                	mov    %eax,(%ebx)
  switchuvm(curproc);
80103804:	89 1c 24             	mov    %ebx,(%esp)
80103807:	e8 54 2e 00 00       	call   80106660 <switchuvm>
  return 0;
8010380c:	31 c0                	xor    %eax,%eax
}
8010380e:	83 c4 10             	add    $0x10,%esp
80103811:	5b                   	pop    %ebx
80103812:	5e                   	pop    %esi
80103813:	5d                   	pop    %ebp
80103814:	c3                   	ret    
80103815:	8d 76 00             	lea    0x0(%esi),%esi

  sz = curproc->sz;
  if(n > 0){
    if((sz = allocuvm(curproc->pgdir, sz, sz + n)) == 0)
      return -1;
  } else if(n < 0){
80103818:	74 e8                	je     80103802 <growproc+0x32>
    if((sz = deallocuvm(curproc->pgdir, sz, sz + n)) == 0)
8010381a:	01 c6                	add    %eax,%esi
8010381c:	89 74 24 08          	mov    %esi,0x8(%esp)
80103820:	89 44 24 04          	mov    %eax,0x4(%esp)
80103824:	8b 43 04             	mov    0x4(%ebx),%eax
80103827:	89 04 24             	mov    %eax,(%esp)
8010382a:	e8 b1 31 00 00       	call   801069e0 <deallocuvm>
8010382f:	85 c0                	test   %eax,%eax
80103831:	75 cf                	jne    80103802 <growproc+0x32>
80103833:	90                   	nop
80103834:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  struct proc *curproc = myproc();

  sz = curproc->sz;
  if(n > 0){
    if((sz = allocuvm(curproc->pgdir, sz, sz + n)) == 0)
      return -1;
80103838:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010383d:	eb cf                	jmp    8010380e <growproc+0x3e>
8010383f:	90                   	nop

80103840 <fork>:
// Create a new process copying p as the parent.
// Sets up stack to return as if from system call.
// Caller must set state of returned proc to RUNNABLE.
int
fork(void)
{
80103840:	55                   	push   %ebp
80103841:	89 e5                	mov    %esp,%ebp
80103843:	57                   	push   %edi
80103844:	56                   	push   %esi
80103845:	53                   	push   %ebx
80103846:	83 ec 1c             	sub    $0x1c,%esp
  int i, pid;
  struct proc *np;
  struct proc *curproc = myproc();
80103849:	e8 42 fe ff ff       	call   80103690 <myproc>
8010384e:	89 c3                	mov    %eax,%ebx

  // Allocate process.
  if((np = allocproc()) == 0){
80103850:	e8 5b fc ff ff       	call   801034b0 <allocproc>
80103855:	85 c0                	test   %eax,%eax
80103857:	89 c7                	mov    %eax,%edi
80103859:	89 45 e4             	mov    %eax,-0x1c(%ebp)
8010385c:	0f 84 bc 00 00 00    	je     8010391e <fork+0xde>
    return -1;
  }

  // Copy process state from proc.
  if((np->pgdir = copyuvm(curproc->pgdir, curproc->sz)) == 0){
80103862:	8b 03                	mov    (%ebx),%eax
80103864:	89 44 24 04          	mov    %eax,0x4(%esp)
80103868:	8b 43 04             	mov    0x4(%ebx),%eax
8010386b:	89 04 24             	mov    %eax,(%esp)
8010386e:	e8 ed 32 00 00       	call   80106b60 <copyuvm>
80103873:	85 c0                	test   %eax,%eax
80103875:	89 47 04             	mov    %eax,0x4(%edi)
80103878:	0f 84 a7 00 00 00    	je     80103925 <fork+0xe5>
    kfree(np->kstack);
    np->kstack = 0;
    np->state = UNUSED;
    return -1;
  }
  np->sz = curproc->sz;
8010387e:	8b 03                	mov    (%ebx),%eax
80103880:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
80103883:	89 01                	mov    %eax,(%ecx)
  np->parent = curproc;
  *np->tf = *curproc->tf;
80103885:	8b 79 18             	mov    0x18(%ecx),%edi
80103888:	89 c8                	mov    %ecx,%eax
    np->kstack = 0;
    np->state = UNUSED;
    return -1;
  }
  np->sz = curproc->sz;
  np->parent = curproc;
8010388a:	89 59 14             	mov    %ebx,0x14(%ecx)
  *np->tf = *curproc->tf;
8010388d:	8b 73 18             	mov    0x18(%ebx),%esi
80103890:	b9 13 00 00 00       	mov    $0x13,%ecx
80103895:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)

  // Clear %eax so that fork returns 0 in the child.
  np->tf->eax = 0;

  for(i = 0; i < NOFILE; i++)
80103897:	31 f6                	xor    %esi,%esi
  np->sz = curproc->sz;
  np->parent = curproc;
  *np->tf = *curproc->tf;

  // Clear %eax so that fork returns 0 in the child.
  np->tf->eax = 0;
80103899:	8b 40 18             	mov    0x18(%eax),%eax
8010389c:	c7 40 1c 00 00 00 00 	movl   $0x0,0x1c(%eax)
801038a3:	90                   	nop
801038a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

  for(i = 0; i < NOFILE; i++)
    if(curproc->ofile[i])
801038a8:	8b 44 b3 28          	mov    0x28(%ebx,%esi,4),%eax
801038ac:	85 c0                	test   %eax,%eax
801038ae:	74 0f                	je     801038bf <fork+0x7f>
      np->ofile[i] = filedup(curproc->ofile[i]);
801038b0:	89 04 24             	mov    %eax,(%esp)
801038b3:	e8 08 d5 ff ff       	call   80100dc0 <filedup>
801038b8:	8b 55 e4             	mov    -0x1c(%ebp),%edx
801038bb:	89 44 b2 28          	mov    %eax,0x28(%edx,%esi,4)
  *np->tf = *curproc->tf;

  // Clear %eax so that fork returns 0 in the child.
  np->tf->eax = 0;

  for(i = 0; i < NOFILE; i++)
801038bf:	83 c6 01             	add    $0x1,%esi
801038c2:	83 fe 10             	cmp    $0x10,%esi
801038c5:	75 e1                	jne    801038a8 <fork+0x68>
    if(curproc->ofile[i])
      np->ofile[i] = filedup(curproc->ofile[i]);
  np->cwd = idup(curproc->cwd);
801038c7:	8b 43 68             	mov    0x68(%ebx),%eax

  safestrcpy(np->name, curproc->name, sizeof(curproc->name));
801038ca:	83 c3 6c             	add    $0x6c,%ebx
  np->tf->eax = 0;

  for(i = 0; i < NOFILE; i++)
    if(curproc->ofile[i])
      np->ofile[i] = filedup(curproc->ofile[i]);
  np->cwd = idup(curproc->cwd);
801038cd:	89 04 24             	mov    %eax,(%esp)
801038d0:	e8 9b dd ff ff       	call   80101670 <idup>
801038d5:	8b 7d e4             	mov    -0x1c(%ebp),%edi
801038d8:	89 47 68             	mov    %eax,0x68(%edi)

  safestrcpy(np->name, curproc->name, sizeof(curproc->name));
801038db:	8d 47 6c             	lea    0x6c(%edi),%eax
801038de:	89 5c 24 04          	mov    %ebx,0x4(%esp)
801038e2:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
801038e9:	00 
801038ea:	89 04 24             	mov    %eax,(%esp)
801038ed:	e8 5e 0b 00 00       	call   80104450 <safestrcpy>

  pid = np->pid;
801038f2:	8b 5f 10             	mov    0x10(%edi),%ebx

  acquire(&ptable.lock);
801038f5:	c7 04 24 20 2d 11 80 	movl   $0x80112d20,(%esp)
801038fc:	e8 2f 08 00 00       	call   80104130 <acquire>

  np->state = RUNNABLE;
80103901:	c7 47 0c 03 00 00 00 	movl   $0x3,0xc(%edi)

  release(&ptable.lock);
80103908:	c7 04 24 20 2d 11 80 	movl   $0x80112d20,(%esp)
8010390f:	e8 0c 09 00 00       	call   80104220 <release>

  return pid;
80103914:	89 d8                	mov    %ebx,%eax
}
80103916:	83 c4 1c             	add    $0x1c,%esp
80103919:	5b                   	pop    %ebx
8010391a:	5e                   	pop    %esi
8010391b:	5f                   	pop    %edi
8010391c:	5d                   	pop    %ebp
8010391d:	c3                   	ret    
  struct proc *np;
  struct proc *curproc = myproc();

  // Allocate process.
  if((np = allocproc()) == 0){
    return -1;
8010391e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80103923:	eb f1                	jmp    80103916 <fork+0xd6>
  }

  // Copy process state from proc.
  if((np->pgdir = copyuvm(curproc->pgdir, curproc->sz)) == 0){
    kfree(np->kstack);
80103925:	8b 7d e4             	mov    -0x1c(%ebp),%edi
80103928:	8b 47 08             	mov    0x8(%edi),%eax
8010392b:	89 04 24             	mov    %eax,(%esp)
8010392e:	e8 ad e9 ff ff       	call   801022e0 <kfree>
    np->kstack = 0;
    np->state = UNUSED;
    return -1;
80103933:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  }

  // Copy process state from proc.
  if((np->pgdir = copyuvm(curproc->pgdir, curproc->sz)) == 0){
    kfree(np->kstack);
    np->kstack = 0;
80103938:	c7 47 08 00 00 00 00 	movl   $0x0,0x8(%edi)
    np->state = UNUSED;
8010393f:	c7 47 0c 00 00 00 00 	movl   $0x0,0xc(%edi)
    return -1;
80103946:	eb ce                	jmp    80103916 <fork+0xd6>
80103948:	90                   	nop
80103949:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

80103950 <scheduler>:
//  - swtch to start running that process
//  - eventually that process transfers control
//      via swtch back to the scheduler.
void
scheduler(void)
{
80103950:	55                   	push   %ebp
80103951:	89 e5                	mov    %esp,%ebp
80103953:	57                   	push   %edi
80103954:	56                   	push   %esi
80103955:	53                   	push   %ebx
80103956:	83 ec 1c             	sub    $0x1c,%esp
  struct proc *p;
  struct cpu *c = mycpu();
80103959:	e8 92 fc ff ff       	call   801035f0 <mycpu>
8010395e:	89 c6                	mov    %eax,%esi
  c->proc = 0;
80103960:	c7 80 ac 00 00 00 00 	movl   $0x0,0xac(%eax)
80103967:	00 00 00 
8010396a:	8d 78 04             	lea    0x4(%eax),%edi
8010396d:	8d 76 00             	lea    0x0(%esi),%esi
}

static inline void
sti(void)
{
  asm volatile("sti");
80103970:	fb                   	sti    
  for(;;){
    // Enable interrupts on this processor.
    sti();

    // Loop over process table looking for process to run.
    acquire(&ptable.lock);
80103971:	c7 04 24 20 2d 11 80 	movl   $0x80112d20,(%esp)
    for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
80103978:	bb 54 2d 11 80       	mov    $0x80112d54,%ebx
  for(;;){
    // Enable interrupts on this processor.
    sti();

    // Loop over process table looking for process to run.
    acquire(&ptable.lock);
8010397d:	e8 ae 07 00 00       	call   80104130 <acquire>
80103982:	eb 0f                	jmp    80103993 <scheduler+0x43>
80103984:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
80103988:	83 eb 80             	sub    $0xffffff80,%ebx
8010398b:	81 fb 54 4d 11 80    	cmp    $0x80114d54,%ebx
80103991:	74 45                	je     801039d8 <scheduler+0x88>
      if(p->state != RUNNABLE)
80103993:	83 7b 0c 03          	cmpl   $0x3,0xc(%ebx)
80103997:	75 ef                	jne    80103988 <scheduler+0x38>
        continue;

      // Switch to chosen process.  It is the process's job
      // to release ptable.lock and then reacquire it
      // before jumping back to us.
      c->proc = p;
80103999:	89 9e ac 00 00 00    	mov    %ebx,0xac(%esi)
      switchuvm(p);
8010399f:	89 1c 24             	mov    %ebx,(%esp)
    // Enable interrupts on this processor.
    sti();

    // Loop over process table looking for process to run.
    acquire(&ptable.lock);
    for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
801039a2:	83 eb 80             	sub    $0xffffff80,%ebx

      // Switch to chosen process.  It is the process's job
      // to release ptable.lock and then reacquire it
      // before jumping back to us.
      c->proc = p;
      switchuvm(p);
801039a5:	e8 b6 2c 00 00       	call   80106660 <switchuvm>
      p->state = RUNNING;

      swtch(&(c->scheduler), p->context);
801039aa:	8b 43 9c             	mov    -0x64(%ebx),%eax
      // Switch to chosen process.  It is the process's job
      // to release ptable.lock and then reacquire it
      // before jumping back to us.
      c->proc = p;
      switchuvm(p);
      p->state = RUNNING;
801039ad:	c7 43 8c 04 00 00 00 	movl   $0x4,-0x74(%ebx)

      swtch(&(c->scheduler), p->context);
801039b4:	89 3c 24             	mov    %edi,(%esp)
801039b7:	89 44 24 04          	mov    %eax,0x4(%esp)
801039bb:	e8 eb 0a 00 00       	call   801044ab <swtch>
      switchkvm();
801039c0:	e8 7b 2c 00 00       	call   80106640 <switchkvm>
    // Enable interrupts on this processor.
    sti();

    // Loop over process table looking for process to run.
    acquire(&ptable.lock);
    for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
801039c5:	81 fb 54 4d 11 80    	cmp    $0x80114d54,%ebx
      swtch(&(c->scheduler), p->context);
      switchkvm();

      // Process is done running for now.
      // It should have changed its p->state before coming back.
      c->proc = 0;
801039cb:	c7 86 ac 00 00 00 00 	movl   $0x0,0xac(%esi)
801039d2:	00 00 00 
    // Enable interrupts on this processor.
    sti();

    // Loop over process table looking for process to run.
    acquire(&ptable.lock);
    for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
801039d5:	75 bc                	jne    80103993 <scheduler+0x43>
801039d7:	90                   	nop

      // Process is done running for now.
      // It should have changed its p->state before coming back.
      c->proc = 0;
    }
    release(&ptable.lock);
801039d8:	c7 04 24 20 2d 11 80 	movl   $0x80112d20,(%esp)
801039df:	e8 3c 08 00 00       	call   80104220 <release>

  }
801039e4:	eb 8a                	jmp    80103970 <scheduler+0x20>
801039e6:	8d 76 00             	lea    0x0(%esi),%esi
801039e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

801039f0 <sched>:
// be proc->intena and proc->ncli, but that would
// break in the few places where a lock is held but
// there's no process.
void
sched(void)
{
801039f0:	55                   	push   %ebp
801039f1:	89 e5                	mov    %esp,%ebp
801039f3:	56                   	push   %esi
801039f4:	53                   	push   %ebx
801039f5:	83 ec 10             	sub    $0x10,%esp
  int intena;
  struct proc *p = myproc();
801039f8:	e8 93 fc ff ff       	call   80103690 <myproc>

  if(!holding(&ptable.lock))
801039fd:	c7 04 24 20 2d 11 80 	movl   $0x80112d20,(%esp)
// there's no process.
void
sched(void)
{
  int intena;
  struct proc *p = myproc();
80103a04:	89 c3                	mov    %eax,%ebx

  if(!holding(&ptable.lock))
80103a06:	e8 b5 06 00 00       	call   801040c0 <holding>
80103a0b:	85 c0                	test   %eax,%eax
80103a0d:	74 4f                	je     80103a5e <sched+0x6e>
    panic("sched ptable.lock");
  if(mycpu()->ncli != 1)
80103a0f:	e8 dc fb ff ff       	call   801035f0 <mycpu>
80103a14:	83 b8 a4 00 00 00 01 	cmpl   $0x1,0xa4(%eax)
80103a1b:	75 65                	jne    80103a82 <sched+0x92>
    panic("sched locks");
  if(p->state == RUNNING)
80103a1d:	83 7b 0c 04          	cmpl   $0x4,0xc(%ebx)
80103a21:	74 53                	je     80103a76 <sched+0x86>

static inline uint
readeflags(void)
{
  uint eflags;
  asm volatile("pushfl; popl %0" : "=r" (eflags));
80103a23:	9c                   	pushf  
80103a24:	58                   	pop    %eax
    panic("sched running");
  if(readeflags()&FL_IF)
80103a25:	f6 c4 02             	test   $0x2,%ah
80103a28:	75 40                	jne    80103a6a <sched+0x7a>
    panic("sched interruptible");
  intena = mycpu()->intena;
80103a2a:	e8 c1 fb ff ff       	call   801035f0 <mycpu>
  swtch(&p->context, mycpu()->scheduler);
80103a2f:	83 c3 1c             	add    $0x1c,%ebx
    panic("sched locks");
  if(p->state == RUNNING)
    panic("sched running");
  if(readeflags()&FL_IF)
    panic("sched interruptible");
  intena = mycpu()->intena;
80103a32:	8b b0 a8 00 00 00    	mov    0xa8(%eax),%esi
  swtch(&p->context, mycpu()->scheduler);
80103a38:	e8 b3 fb ff ff       	call   801035f0 <mycpu>
80103a3d:	8b 40 04             	mov    0x4(%eax),%eax
80103a40:	89 1c 24             	mov    %ebx,(%esp)
80103a43:	89 44 24 04          	mov    %eax,0x4(%esp)
80103a47:	e8 5f 0a 00 00       	call   801044ab <swtch>
  mycpu()->intena = intena;
80103a4c:	e8 9f fb ff ff       	call   801035f0 <mycpu>
80103a51:	89 b0 a8 00 00 00    	mov    %esi,0xa8(%eax)
}
80103a57:	83 c4 10             	add    $0x10,%esp
80103a5a:	5b                   	pop    %ebx
80103a5b:	5e                   	pop    %esi
80103a5c:	5d                   	pop    %ebp
80103a5d:	c3                   	ret    
{
  int intena;
  struct proc *p = myproc();

  if(!holding(&ptable.lock))
    panic("sched ptable.lock");
80103a5e:	c7 04 24 10 74 10 80 	movl   $0x80107410,(%esp)
80103a65:	e8 f6 c8 ff ff       	call   80100360 <panic>
  if(mycpu()->ncli != 1)
    panic("sched locks");
  if(p->state == RUNNING)
    panic("sched running");
  if(readeflags()&FL_IF)
    panic("sched interruptible");
80103a6a:	c7 04 24 3c 74 10 80 	movl   $0x8010743c,(%esp)
80103a71:	e8 ea c8 ff ff       	call   80100360 <panic>
  if(!holding(&ptable.lock))
    panic("sched ptable.lock");
  if(mycpu()->ncli != 1)
    panic("sched locks");
  if(p->state == RUNNING)
    panic("sched running");
80103a76:	c7 04 24 2e 74 10 80 	movl   $0x8010742e,(%esp)
80103a7d:	e8 de c8 ff ff       	call   80100360 <panic>
  struct proc *p = myproc();

  if(!holding(&ptable.lock))
    panic("sched ptable.lock");
  if(mycpu()->ncli != 1)
    panic("sched locks");
80103a82:	c7 04 24 22 74 10 80 	movl   $0x80107422,(%esp)
80103a89:	e8 d2 c8 ff ff       	call   80100360 <panic>
80103a8e:	66 90                	xchg   %ax,%ax

80103a90 <exit>:
// Exit the current process.  Does not return.
// An exited process remains in the zombie state
// until its parent calls wait() to find out it exited.
void
exit(void)
{
80103a90:	55                   	push   %ebp
80103a91:	89 e5                	mov    %esp,%ebp
80103a93:	56                   	push   %esi
  struct proc *curproc = myproc();
  struct proc *p;
  int fd;

  if(curproc == initproc)
80103a94:	31 f6                	xor    %esi,%esi
// Exit the current process.  Does not return.
// An exited process remains in the zombie state
// until its parent calls wait() to find out it exited.
void
exit(void)
{
80103a96:	53                   	push   %ebx
80103a97:	83 ec 10             	sub    $0x10,%esp
  struct proc *curproc = myproc();
80103a9a:	e8 f1 fb ff ff       	call   80103690 <myproc>
  struct proc *p;
  int fd;

  if(curproc == initproc)
80103a9f:	3b 05 b8 a5 10 80    	cmp    0x8010a5b8,%eax
// An exited process remains in the zombie state
// until its parent calls wait() to find out it exited.
void
exit(void)
{
  struct proc *curproc = myproc();
80103aa5:	89 c3                	mov    %eax,%ebx
  struct proc *p;
  int fd;

  if(curproc == initproc)
80103aa7:	0f 84 ea 00 00 00    	je     80103b97 <exit+0x107>
80103aad:	8d 76 00             	lea    0x0(%esi),%esi
    panic("init exiting");

  // Close all open files.
  for(fd = 0; fd < NOFILE; fd++){
    if(curproc->ofile[fd]){
80103ab0:	8b 44 b3 28          	mov    0x28(%ebx,%esi,4),%eax
80103ab4:	85 c0                	test   %eax,%eax
80103ab6:	74 10                	je     80103ac8 <exit+0x38>
      fileclose(curproc->ofile[fd]);
80103ab8:	89 04 24             	mov    %eax,(%esp)
80103abb:	e8 50 d3 ff ff       	call   80100e10 <fileclose>
      curproc->ofile[fd] = 0;
80103ac0:	c7 44 b3 28 00 00 00 	movl   $0x0,0x28(%ebx,%esi,4)
80103ac7:	00 

  if(curproc == initproc)
    panic("init exiting");

  // Close all open files.
  for(fd = 0; fd < NOFILE; fd++){
80103ac8:	83 c6 01             	add    $0x1,%esi
80103acb:	83 fe 10             	cmp    $0x10,%esi
80103ace:	75 e0                	jne    80103ab0 <exit+0x20>
      fileclose(curproc->ofile[fd]);
      curproc->ofile[fd] = 0;
    }
  }

  begin_op();
80103ad0:	e8 2b f0 ff ff       	call   80102b00 <begin_op>
  iput(curproc->cwd);
80103ad5:	8b 43 68             	mov    0x68(%ebx),%eax
80103ad8:	89 04 24             	mov    %eax,(%esp)
80103adb:	e8 e0 dc ff ff       	call   801017c0 <iput>
  end_op();
80103ae0:	e8 8b f0 ff ff       	call   80102b70 <end_op>
  curproc->cwd = 0;
80103ae5:	c7 43 68 00 00 00 00 	movl   $0x0,0x68(%ebx)

  acquire(&ptable.lock);
80103aec:	c7 04 24 20 2d 11 80 	movl   $0x80112d20,(%esp)
80103af3:	e8 38 06 00 00       	call   80104130 <acquire>

  // Parent might be sleeping in wait().
  wakeup1(curproc->parent);
80103af8:	8b 43 14             	mov    0x14(%ebx),%eax
static void
wakeup1(void *chan)
{
  struct proc *p;

  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++)
80103afb:	ba 54 2d 11 80       	mov    $0x80112d54,%edx
80103b00:	eb 11                	jmp    80103b13 <exit+0x83>
80103b02:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80103b08:	83 ea 80             	sub    $0xffffff80,%edx
80103b0b:	81 fa 54 4d 11 80    	cmp    $0x80114d54,%edx
80103b11:	74 1d                	je     80103b30 <exit+0xa0>
    if(p->state == SLEEPING && p->chan == chan)
80103b13:	83 7a 0c 02          	cmpl   $0x2,0xc(%edx)
80103b17:	75 ef                	jne    80103b08 <exit+0x78>
80103b19:	3b 42 20             	cmp    0x20(%edx),%eax
80103b1c:	75 ea                	jne    80103b08 <exit+0x78>
      p->state = RUNNABLE;
80103b1e:	c7 42 0c 03 00 00 00 	movl   $0x3,0xc(%edx)
static void
wakeup1(void *chan)
{
  struct proc *p;

  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++)
80103b25:	83 ea 80             	sub    $0xffffff80,%edx
80103b28:	81 fa 54 4d 11 80    	cmp    $0x80114d54,%edx
80103b2e:	75 e3                	jne    80103b13 <exit+0x83>
  wakeup1(curproc->parent);

  // Pass abandoned children to init.
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
    if(p->parent == curproc){
      p->parent = initproc;
80103b30:	a1 b8 a5 10 80       	mov    0x8010a5b8,%eax
80103b35:	b9 54 2d 11 80       	mov    $0x80112d54,%ecx
80103b3a:	eb 0f                	jmp    80103b4b <exit+0xbb>
80103b3c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

  // Parent might be sleeping in wait().
  wakeup1(curproc->parent);

  // Pass abandoned children to init.
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
80103b40:	83 e9 80             	sub    $0xffffff80,%ecx
80103b43:	81 f9 54 4d 11 80    	cmp    $0x80114d54,%ecx
80103b49:	74 34                	je     80103b7f <exit+0xef>
    if(p->parent == curproc){
80103b4b:	39 59 14             	cmp    %ebx,0x14(%ecx)
80103b4e:	75 f0                	jne    80103b40 <exit+0xb0>
      p->parent = initproc;
      if(p->state == ZOMBIE)
80103b50:	83 79 0c 05          	cmpl   $0x5,0xc(%ecx)
  wakeup1(curproc->parent);

  // Pass abandoned children to init.
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
    if(p->parent == curproc){
      p->parent = initproc;
80103b54:	89 41 14             	mov    %eax,0x14(%ecx)
      if(p->state == ZOMBIE)
80103b57:	75 e7                	jne    80103b40 <exit+0xb0>
80103b59:	ba 54 2d 11 80       	mov    $0x80112d54,%edx
80103b5e:	eb 0b                	jmp    80103b6b <exit+0xdb>
static void
wakeup1(void *chan)
{
  struct proc *p;

  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++)
80103b60:	83 ea 80             	sub    $0xffffff80,%edx
80103b63:	81 fa 54 4d 11 80    	cmp    $0x80114d54,%edx
80103b69:	74 d5                	je     80103b40 <exit+0xb0>
    if(p->state == SLEEPING && p->chan == chan)
80103b6b:	83 7a 0c 02          	cmpl   $0x2,0xc(%edx)
80103b6f:	75 ef                	jne    80103b60 <exit+0xd0>
80103b71:	3b 42 20             	cmp    0x20(%edx),%eax
80103b74:	75 ea                	jne    80103b60 <exit+0xd0>
      p->state = RUNNABLE;
80103b76:	c7 42 0c 03 00 00 00 	movl   $0x3,0xc(%edx)
80103b7d:	eb e1                	jmp    80103b60 <exit+0xd0>
        wakeup1(initproc);
    }
  }

  // Jump into the scheduler, never to return.
  curproc->state = ZOMBIE;
80103b7f:	c7 43 0c 05 00 00 00 	movl   $0x5,0xc(%ebx)
  sched();
80103b86:	e8 65 fe ff ff       	call   801039f0 <sched>
  panic("zombie exit");
80103b8b:	c7 04 24 5d 74 10 80 	movl   $0x8010745d,(%esp)
80103b92:	e8 c9 c7 ff ff       	call   80100360 <panic>
  struct proc *curproc = myproc();
  struct proc *p;
  int fd;

  if(curproc == initproc)
    panic("init exiting");
80103b97:	c7 04 24 50 74 10 80 	movl   $0x80107450,(%esp)
80103b9e:	e8 bd c7 ff ff       	call   80100360 <panic>
80103ba3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80103ba9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

80103bb0 <yield>:
}

// Give up the CPU for one scheduling round.
void
yield(void)
{
80103bb0:	55                   	push   %ebp
80103bb1:	89 e5                	mov    %esp,%ebp
80103bb3:	83 ec 18             	sub    $0x18,%esp
  acquire(&ptable.lock);  //DOC: yieldlock
80103bb6:	c7 04 24 20 2d 11 80 	movl   $0x80112d20,(%esp)
80103bbd:	e8 6e 05 00 00       	call   80104130 <acquire>
  myproc()->state = RUNNABLE;
80103bc2:	e8 c9 fa ff ff       	call   80103690 <myproc>
80103bc7:	c7 40 0c 03 00 00 00 	movl   $0x3,0xc(%eax)
  sched();
80103bce:	e8 1d fe ff ff       	call   801039f0 <sched>
  release(&ptable.lock);
80103bd3:	c7 04 24 20 2d 11 80 	movl   $0x80112d20,(%esp)
80103bda:	e8 41 06 00 00       	call   80104220 <release>
}
80103bdf:	c9                   	leave  
80103be0:	c3                   	ret    
80103be1:	eb 0d                	jmp    80103bf0 <sleep>
80103be3:	90                   	nop
80103be4:	90                   	nop
80103be5:	90                   	nop
80103be6:	90                   	nop
80103be7:	90                   	nop
80103be8:	90                   	nop
80103be9:	90                   	nop
80103bea:	90                   	nop
80103beb:	90                   	nop
80103bec:	90                   	nop
80103bed:	90                   	nop
80103bee:	90                   	nop
80103bef:	90                   	nop

80103bf0 <sleep>:

// Atomically release lock and sleep on chan.
// Reacquires lock when awakened.
void
sleep(void *chan, struct spinlock *lk)
{
80103bf0:	55                   	push   %ebp
80103bf1:	89 e5                	mov    %esp,%ebp
80103bf3:	57                   	push   %edi
80103bf4:	56                   	push   %esi
80103bf5:	53                   	push   %ebx
80103bf6:	83 ec 1c             	sub    $0x1c,%esp
80103bf9:	8b 7d 08             	mov    0x8(%ebp),%edi
80103bfc:	8b 75 0c             	mov    0xc(%ebp),%esi
  struct proc *p = myproc();
80103bff:	e8 8c fa ff ff       	call   80103690 <myproc>
  
  if(p == 0)
80103c04:	85 c0                	test   %eax,%eax
// Atomically release lock and sleep on chan.
// Reacquires lock when awakened.
void
sleep(void *chan, struct spinlock *lk)
{
  struct proc *p = myproc();
80103c06:	89 c3                	mov    %eax,%ebx
  
  if(p == 0)
80103c08:	0f 84 7c 00 00 00    	je     80103c8a <sleep+0x9a>
    panic("sleep");

  if(lk == 0)
80103c0e:	85 f6                	test   %esi,%esi
80103c10:	74 6c                	je     80103c7e <sleep+0x8e>
  // change p->state and then call sched.
  // Once we hold ptable.lock, we can be
  // guaranteed that we won't miss any wakeup
  // (wakeup runs with ptable.lock locked),
  // so it's okay to release lk.
  if(lk != &ptable.lock){  //DOC: sleeplock0
80103c12:	81 fe 20 2d 11 80    	cmp    $0x80112d20,%esi
80103c18:	74 46                	je     80103c60 <sleep+0x70>
    acquire(&ptable.lock);  //DOC: sleeplock1
80103c1a:	c7 04 24 20 2d 11 80 	movl   $0x80112d20,(%esp)
80103c21:	e8 0a 05 00 00       	call   80104130 <acquire>
    release(lk);
80103c26:	89 34 24             	mov    %esi,(%esp)
80103c29:	e8 f2 05 00 00       	call   80104220 <release>
  }
  // Go to sleep.
  p->chan = chan;
80103c2e:	89 7b 20             	mov    %edi,0x20(%ebx)
  p->state = SLEEPING;
80103c31:	c7 43 0c 02 00 00 00 	movl   $0x2,0xc(%ebx)

  sched();
80103c38:	e8 b3 fd ff ff       	call   801039f0 <sched>

  // Tidy up.
  p->chan = 0;
80103c3d:	c7 43 20 00 00 00 00 	movl   $0x0,0x20(%ebx)

  // Reacquire original lock.
  if(lk != &ptable.lock){  //DOC: sleeplock2
    release(&ptable.lock);
80103c44:	c7 04 24 20 2d 11 80 	movl   $0x80112d20,(%esp)
80103c4b:	e8 d0 05 00 00       	call   80104220 <release>
    acquire(lk);
80103c50:	89 75 08             	mov    %esi,0x8(%ebp)
  }
}
80103c53:	83 c4 1c             	add    $0x1c,%esp
80103c56:	5b                   	pop    %ebx
80103c57:	5e                   	pop    %esi
80103c58:	5f                   	pop    %edi
80103c59:	5d                   	pop    %ebp
  p->chan = 0;

  // Reacquire original lock.
  if(lk != &ptable.lock){  //DOC: sleeplock2
    release(&ptable.lock);
    acquire(lk);
80103c5a:	e9 d1 04 00 00       	jmp    80104130 <acquire>
80103c5f:	90                   	nop
  if(lk != &ptable.lock){  //DOC: sleeplock0
    acquire(&ptable.lock);  //DOC: sleeplock1
    release(lk);
  }
  // Go to sleep.
  p->chan = chan;
80103c60:	89 78 20             	mov    %edi,0x20(%eax)
  p->state = SLEEPING;
80103c63:	c7 40 0c 02 00 00 00 	movl   $0x2,0xc(%eax)

  sched();
80103c6a:	e8 81 fd ff ff       	call   801039f0 <sched>

  // Tidy up.
  p->chan = 0;
80103c6f:	c7 43 20 00 00 00 00 	movl   $0x0,0x20(%ebx)
  // Reacquire original lock.
  if(lk != &ptable.lock){  //DOC: sleeplock2
    release(&ptable.lock);
    acquire(lk);
  }
}
80103c76:	83 c4 1c             	add    $0x1c,%esp
80103c79:	5b                   	pop    %ebx
80103c7a:	5e                   	pop    %esi
80103c7b:	5f                   	pop    %edi
80103c7c:	5d                   	pop    %ebp
80103c7d:	c3                   	ret    
  
  if(p == 0)
    panic("sleep");

  if(lk == 0)
    panic("sleep without lk");
80103c7e:	c7 04 24 6f 74 10 80 	movl   $0x8010746f,(%esp)
80103c85:	e8 d6 c6 ff ff       	call   80100360 <panic>
sleep(void *chan, struct spinlock *lk)
{
  struct proc *p = myproc();
  
  if(p == 0)
    panic("sleep");
80103c8a:	c7 04 24 69 74 10 80 	movl   $0x80107469,(%esp)
80103c91:	e8 ca c6 ff ff       	call   80100360 <panic>
80103c96:	8d 76 00             	lea    0x0(%esi),%esi
80103c99:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

80103ca0 <wait>:

// Wait for a child process to exit and return its pid.
// Return -1 if this process has no children.
int
wait(void)
{
80103ca0:	55                   	push   %ebp
80103ca1:	89 e5                	mov    %esp,%ebp
80103ca3:	56                   	push   %esi
80103ca4:	53                   	push   %ebx
80103ca5:	83 ec 10             	sub    $0x10,%esp
  struct proc *p;
  int havekids, pid;
  struct proc *curproc = myproc();
80103ca8:	e8 e3 f9 ff ff       	call   80103690 <myproc>
  
  acquire(&ptable.lock);
80103cad:	c7 04 24 20 2d 11 80 	movl   $0x80112d20,(%esp)
int
wait(void)
{
  struct proc *p;
  int havekids, pid;
  struct proc *curproc = myproc();
80103cb4:	89 c6                	mov    %eax,%esi
  
  acquire(&ptable.lock);
80103cb6:	e8 75 04 00 00       	call   80104130 <acquire>
  for(;;){
    // Scan through table looking for exited children.
    havekids = 0;
80103cbb:	31 c0                	xor    %eax,%eax
    for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
80103cbd:	bb 54 2d 11 80       	mov    $0x80112d54,%ebx
80103cc2:	eb 0f                	jmp    80103cd3 <wait+0x33>
80103cc4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80103cc8:	83 eb 80             	sub    $0xffffff80,%ebx
80103ccb:	81 fb 54 4d 11 80    	cmp    $0x80114d54,%ebx
80103cd1:	74 1d                	je     80103cf0 <wait+0x50>
      if(p->parent != curproc)
80103cd3:	39 73 14             	cmp    %esi,0x14(%ebx)
80103cd6:	75 f0                	jne    80103cc8 <wait+0x28>
        continue;
      havekids = 1;
      if(p->state == ZOMBIE){
80103cd8:	83 7b 0c 05          	cmpl   $0x5,0xc(%ebx)
80103cdc:	74 2f                	je     80103d0d <wait+0x6d>
  
  acquire(&ptable.lock);
  for(;;){
    // Scan through table looking for exited children.
    havekids = 0;
    for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
80103cde:	83 eb 80             	sub    $0xffffff80,%ebx
      if(p->parent != curproc)
        continue;
      havekids = 1;
80103ce1:	b8 01 00 00 00       	mov    $0x1,%eax
  
  acquire(&ptable.lock);
  for(;;){
    // Scan through table looking for exited children.
    havekids = 0;
    for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
80103ce6:	81 fb 54 4d 11 80    	cmp    $0x80114d54,%ebx
80103cec:	75 e5                	jne    80103cd3 <wait+0x33>
80103cee:	66 90                	xchg   %ax,%ax
        return pid;
      }
    }

    // No point waiting if we don't have any children.
    if(!havekids || curproc->killed){
80103cf0:	85 c0                	test   %eax,%eax
80103cf2:	74 6e                	je     80103d62 <wait+0xc2>
80103cf4:	8b 46 24             	mov    0x24(%esi),%eax
80103cf7:	85 c0                	test   %eax,%eax
80103cf9:	75 67                	jne    80103d62 <wait+0xc2>
      release(&ptable.lock);
      return -1;
    }

    // Wait for children to exit.  (See wakeup1 call in proc_exit.)
    sleep(curproc, &ptable.lock);  //DOC: wait-sleep
80103cfb:	c7 44 24 04 20 2d 11 	movl   $0x80112d20,0x4(%esp)
80103d02:	80 
80103d03:	89 34 24             	mov    %esi,(%esp)
80103d06:	e8 e5 fe ff ff       	call   80103bf0 <sleep>
  }
80103d0b:	eb ae                	jmp    80103cbb <wait+0x1b>
        continue;
      havekids = 1;
      if(p->state == ZOMBIE){
        // Found one.
        pid = p->pid;
        kfree(p->kstack);
80103d0d:	8b 43 08             	mov    0x8(%ebx),%eax
      if(p->parent != curproc)
        continue;
      havekids = 1;
      if(p->state == ZOMBIE){
        // Found one.
        pid = p->pid;
80103d10:	8b 73 10             	mov    0x10(%ebx),%esi
        kfree(p->kstack);
80103d13:	89 04 24             	mov    %eax,(%esp)
80103d16:	e8 c5 e5 ff ff       	call   801022e0 <kfree>
        p->kstack = 0;
        freevm(p->pgdir);
80103d1b:	8b 43 04             	mov    0x4(%ebx),%eax
      havekids = 1;
      if(p->state == ZOMBIE){
        // Found one.
        pid = p->pid;
        kfree(p->kstack);
        p->kstack = 0;
80103d1e:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
        freevm(p->pgdir);
80103d25:	89 04 24             	mov    %eax,(%esp)
80103d28:	e8 d3 2c 00 00       	call   80106a00 <freevm>
        p->pid = 0;
        p->parent = 0;
        p->name[0] = 0;
        p->killed = 0;
        p->state = UNUSED;
        release(&ptable.lock);
80103d2d:	c7 04 24 20 2d 11 80 	movl   $0x80112d20,(%esp)
        // Found one.
        pid = p->pid;
        kfree(p->kstack);
        p->kstack = 0;
        freevm(p->pgdir);
        p->pid = 0;
80103d34:	c7 43 10 00 00 00 00 	movl   $0x0,0x10(%ebx)
        p->parent = 0;
80103d3b:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
        p->name[0] = 0;
80103d42:	c6 43 6c 00          	movb   $0x0,0x6c(%ebx)
        p->killed = 0;
80103d46:	c7 43 24 00 00 00 00 	movl   $0x0,0x24(%ebx)
        p->state = UNUSED;
80103d4d:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
        release(&ptable.lock);
80103d54:	e8 c7 04 00 00       	call   80104220 <release>
    }

    // Wait for children to exit.  (See wakeup1 call in proc_exit.)
    sleep(curproc, &ptable.lock);  //DOC: wait-sleep
  }
}
80103d59:	83 c4 10             	add    $0x10,%esp
        p->parent = 0;
        p->name[0] = 0;
        p->killed = 0;
        p->state = UNUSED;
        release(&ptable.lock);
        return pid;
80103d5c:	89 f0                	mov    %esi,%eax
    }

    // Wait for children to exit.  (See wakeup1 call in proc_exit.)
    sleep(curproc, &ptable.lock);  //DOC: wait-sleep
  }
}
80103d5e:	5b                   	pop    %ebx
80103d5f:	5e                   	pop    %esi
80103d60:	5d                   	pop    %ebp
80103d61:	c3                   	ret    
      }
    }

    // No point waiting if we don't have any children.
    if(!havekids || curproc->killed){
      release(&ptable.lock);
80103d62:	c7 04 24 20 2d 11 80 	movl   $0x80112d20,(%esp)
80103d69:	e8 b2 04 00 00       	call   80104220 <release>
    }

    // Wait for children to exit.  (See wakeup1 call in proc_exit.)
    sleep(curproc, &ptable.lock);  //DOC: wait-sleep
  }
}
80103d6e:	83 c4 10             	add    $0x10,%esp
    }

    // No point waiting if we don't have any children.
    if(!havekids || curproc->killed){
      release(&ptable.lock);
      return -1;
80103d71:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    }

    // Wait for children to exit.  (See wakeup1 call in proc_exit.)
    sleep(curproc, &ptable.lock);  //DOC: wait-sleep
  }
}
80103d76:	5b                   	pop    %ebx
80103d77:	5e                   	pop    %esi
80103d78:	5d                   	pop    %ebp
80103d79:	c3                   	ret    
80103d7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

80103d80 <wakeup>:
}

// Wake up all processes sleeping on chan.
void
wakeup(void *chan)
{
80103d80:	55                   	push   %ebp
80103d81:	89 e5                	mov    %esp,%ebp
80103d83:	53                   	push   %ebx
80103d84:	83 ec 14             	sub    $0x14,%esp
80103d87:	8b 5d 08             	mov    0x8(%ebp),%ebx
  acquire(&ptable.lock);
80103d8a:	c7 04 24 20 2d 11 80 	movl   $0x80112d20,(%esp)
80103d91:	e8 9a 03 00 00       	call   80104130 <acquire>
static void
wakeup1(void *chan)
{
  struct proc *p;

  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++)
80103d96:	b8 54 2d 11 80       	mov    $0x80112d54,%eax
80103d9b:	eb 0d                	jmp    80103daa <wakeup+0x2a>
80103d9d:	8d 76 00             	lea    0x0(%esi),%esi
80103da0:	83 e8 80             	sub    $0xffffff80,%eax
80103da3:	3d 54 4d 11 80       	cmp    $0x80114d54,%eax
80103da8:	74 1e                	je     80103dc8 <wakeup+0x48>
    if(p->state == SLEEPING && p->chan == chan)
80103daa:	83 78 0c 02          	cmpl   $0x2,0xc(%eax)
80103dae:	75 f0                	jne    80103da0 <wakeup+0x20>
80103db0:	3b 58 20             	cmp    0x20(%eax),%ebx
80103db3:	75 eb                	jne    80103da0 <wakeup+0x20>
      p->state = RUNNABLE;
80103db5:	c7 40 0c 03 00 00 00 	movl   $0x3,0xc(%eax)
static void
wakeup1(void *chan)
{
  struct proc *p;

  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++)
80103dbc:	83 e8 80             	sub    $0xffffff80,%eax
80103dbf:	3d 54 4d 11 80       	cmp    $0x80114d54,%eax
80103dc4:	75 e4                	jne    80103daa <wakeup+0x2a>
80103dc6:	66 90                	xchg   %ax,%ax
void
wakeup(void *chan)
{
  acquire(&ptable.lock);
  wakeup1(chan);
  release(&ptable.lock);
80103dc8:	c7 45 08 20 2d 11 80 	movl   $0x80112d20,0x8(%ebp)
}
80103dcf:	83 c4 14             	add    $0x14,%esp
80103dd2:	5b                   	pop    %ebx
80103dd3:	5d                   	pop    %ebp
void
wakeup(void *chan)
{
  acquire(&ptable.lock);
  wakeup1(chan);
  release(&ptable.lock);
80103dd4:	e9 47 04 00 00       	jmp    80104220 <release>
80103dd9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

80103de0 <kill>:
// Kill the process with the given pid.
// Process won't exit until it returns
// to user space (see trap in trap.c).
int
kill(int pid)
{
80103de0:	55                   	push   %ebp
80103de1:	89 e5                	mov    %esp,%ebp
80103de3:	53                   	push   %ebx
80103de4:	83 ec 14             	sub    $0x14,%esp
80103de7:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct proc *p;

  acquire(&ptable.lock);
80103dea:	c7 04 24 20 2d 11 80 	movl   $0x80112d20,(%esp)
80103df1:	e8 3a 03 00 00       	call   80104130 <acquire>
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
80103df6:	b8 54 2d 11 80       	mov    $0x80112d54,%eax
80103dfb:	eb 0d                	jmp    80103e0a <kill+0x2a>
80103dfd:	8d 76 00             	lea    0x0(%esi),%esi
80103e00:	83 e8 80             	sub    $0xffffff80,%eax
80103e03:	3d 54 4d 11 80       	cmp    $0x80114d54,%eax
80103e08:	74 36                	je     80103e40 <kill+0x60>
    if(p->pid == pid){
80103e0a:	39 58 10             	cmp    %ebx,0x10(%eax)
80103e0d:	75 f1                	jne    80103e00 <kill+0x20>
      p->killed = 1;
      // Wake process from sleep if necessary.
      if(p->state == SLEEPING)
80103e0f:	83 78 0c 02          	cmpl   $0x2,0xc(%eax)
  struct proc *p;

  acquire(&ptable.lock);
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
    if(p->pid == pid){
      p->killed = 1;
80103e13:	c7 40 24 01 00 00 00 	movl   $0x1,0x24(%eax)
      // Wake process from sleep if necessary.
      if(p->state == SLEEPING)
80103e1a:	74 14                	je     80103e30 <kill+0x50>
        p->state = RUNNABLE;
      release(&ptable.lock);
80103e1c:	c7 04 24 20 2d 11 80 	movl   $0x80112d20,(%esp)
80103e23:	e8 f8 03 00 00       	call   80104220 <release>
      return 0;
    }
  }
  release(&ptable.lock);
  return -1;
}
80103e28:	83 c4 14             	add    $0x14,%esp
      p->killed = 1;
      // Wake process from sleep if necessary.
      if(p->state == SLEEPING)
        p->state = RUNNABLE;
      release(&ptable.lock);
      return 0;
80103e2b:	31 c0                	xor    %eax,%eax
    }
  }
  release(&ptable.lock);
  return -1;
}
80103e2d:	5b                   	pop    %ebx
80103e2e:	5d                   	pop    %ebp
80103e2f:	c3                   	ret    
  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
    if(p->pid == pid){
      p->killed = 1;
      // Wake process from sleep if necessary.
      if(p->state == SLEEPING)
        p->state = RUNNABLE;
80103e30:	c7 40 0c 03 00 00 00 	movl   $0x3,0xc(%eax)
80103e37:	eb e3                	jmp    80103e1c <kill+0x3c>
80103e39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      release(&ptable.lock);
      return 0;
    }
  }
  release(&ptable.lock);
80103e40:	c7 04 24 20 2d 11 80 	movl   $0x80112d20,(%esp)
80103e47:	e8 d4 03 00 00       	call   80104220 <release>
  return -1;
}
80103e4c:	83 c4 14             	add    $0x14,%esp
      release(&ptable.lock);
      return 0;
    }
  }
  release(&ptable.lock);
  return -1;
80103e4f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
80103e54:	5b                   	pop    %ebx
80103e55:	5d                   	pop    %ebp
80103e56:	c3                   	ret    
80103e57:	89 f6                	mov    %esi,%esi
80103e59:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

80103e60 <procdump>:
// Print a process listing to console.  For debugging.
// Runs when user types ^P on console.
// No lock to avoid wedging a stuck machine further.
void
procdump(void)
{
80103e60:	55                   	push   %ebp
80103e61:	89 e5                	mov    %esp,%ebp
80103e63:	57                   	push   %edi
80103e64:	56                   	push   %esi
80103e65:	53                   	push   %ebx
80103e66:	bb c0 2d 11 80       	mov    $0x80112dc0,%ebx
80103e6b:	83 ec 4c             	sub    $0x4c,%esp
80103e6e:	8d 75 e8             	lea    -0x18(%ebp),%esi
80103e71:	eb 20                	jmp    80103e93 <procdump+0x33>
80103e73:	90                   	nop
80103e74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p->state == SLEEPING){
      getcallerpcs((uint*)p->context->ebp+2, pc);
      for(i=0; i<10 && pc[i] != 0; i++)
        cprintf(" %p", pc[i]);
    }
    cprintf("\n");
80103e78:	c7 04 24 97 78 10 80 	movl   $0x80107897,(%esp)
80103e7f:	e8 cc c7 ff ff       	call   80100650 <cprintf>
80103e84:	83 eb 80             	sub    $0xffffff80,%ebx
  int i;
  struct proc *p;
  char *state;
  uint pc[10];

  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
80103e87:	81 fb c0 4d 11 80    	cmp    $0x80114dc0,%ebx
80103e8d:	0f 84 8d 00 00 00    	je     80103f20 <procdump+0xc0>
    if(p->state == UNUSED)
80103e93:	8b 43 a0             	mov    -0x60(%ebx),%eax
80103e96:	85 c0                	test   %eax,%eax
80103e98:	74 ea                	je     80103e84 <procdump+0x24>
      continue;
    if(p->state >= 0 && p->state < NELEM(states) && states[p->state])
80103e9a:	83 f8 05             	cmp    $0x5,%eax
      state = states[p->state];
    else
      state = "???";
80103e9d:	ba 80 74 10 80       	mov    $0x80107480,%edx
  uint pc[10];

  for(p = ptable.proc; p < &ptable.proc[NPROC]; p++){
    if(p->state == UNUSED)
      continue;
    if(p->state >= 0 && p->state < NELEM(states) && states[p->state])
80103ea2:	77 11                	ja     80103eb5 <procdump+0x55>
80103ea4:	8b 14 85 e0 74 10 80 	mov    -0x7fef8b20(,%eax,4),%edx
      state = states[p->state];
    else
      state = "???";
80103eab:	b8 80 74 10 80       	mov    $0x80107480,%eax
80103eb0:	85 d2                	test   %edx,%edx
80103eb2:	0f 44 d0             	cmove  %eax,%edx
    cprintf("%d %s %s", p->pid, state, p->name);
80103eb5:	8b 43 a4             	mov    -0x5c(%ebx),%eax
80103eb8:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
80103ebc:	89 54 24 08          	mov    %edx,0x8(%esp)
80103ec0:	c7 04 24 84 74 10 80 	movl   $0x80107484,(%esp)
80103ec7:	89 44 24 04          	mov    %eax,0x4(%esp)
80103ecb:	e8 80 c7 ff ff       	call   80100650 <cprintf>
    if(p->state == SLEEPING){
80103ed0:	83 7b a0 02          	cmpl   $0x2,-0x60(%ebx)
80103ed4:	75 a2                	jne    80103e78 <procdump+0x18>
      getcallerpcs((uint*)p->context->ebp+2, pc);
80103ed6:	8d 45 c0             	lea    -0x40(%ebp),%eax
80103ed9:	89 44 24 04          	mov    %eax,0x4(%esp)
80103edd:	8b 43 b0             	mov    -0x50(%ebx),%eax
80103ee0:	8d 7d c0             	lea    -0x40(%ebp),%edi
80103ee3:	8b 40 0c             	mov    0xc(%eax),%eax
80103ee6:	83 c0 08             	add    $0x8,%eax
80103ee9:	89 04 24             	mov    %eax,(%esp)
80103eec:	e8 6f 01 00 00       	call   80104060 <getcallerpcs>
80103ef1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      for(i=0; i<10 && pc[i] != 0; i++)
80103ef8:	8b 17                	mov    (%edi),%edx
80103efa:	85 d2                	test   %edx,%edx
80103efc:	0f 84 76 ff ff ff    	je     80103e78 <procdump+0x18>
        cprintf(" %p", pc[i]);
80103f02:	89 54 24 04          	mov    %edx,0x4(%esp)
80103f06:	83 c7 04             	add    $0x4,%edi
80103f09:	c7 04 24 c1 6e 10 80 	movl   $0x80106ec1,(%esp)
80103f10:	e8 3b c7 ff ff       	call   80100650 <cprintf>
    else
      state = "???";
    cprintf("%d %s %s", p->pid, state, p->name);
    if(p->state == SLEEPING){
      getcallerpcs((uint*)p->context->ebp+2, pc);
      for(i=0; i<10 && pc[i] != 0; i++)
80103f15:	39 f7                	cmp    %esi,%edi
80103f17:	75 df                	jne    80103ef8 <procdump+0x98>
80103f19:	e9 5a ff ff ff       	jmp    80103e78 <procdump+0x18>
80103f1e:	66 90                	xchg   %ax,%ax
        cprintf(" %p", pc[i]);
    }
    cprintf("\n");
  }
}
80103f20:	83 c4 4c             	add    $0x4c,%esp
80103f23:	5b                   	pop    %ebx
80103f24:	5e                   	pop    %esi
80103f25:	5f                   	pop    %edi
80103f26:	5d                   	pop    %ebp
80103f27:	c3                   	ret    
80103f28:	66 90                	xchg   %ax,%ax
80103f2a:	66 90                	xchg   %ax,%ax
80103f2c:	66 90                	xchg   %ax,%ax
80103f2e:	66 90                	xchg   %ax,%ax

80103f30 <initsleeplock>:
80103f30:	55                   	push   %ebp
80103f31:	89 e5                	mov    %esp,%ebp
80103f33:	53                   	push   %ebx
80103f34:	83 ec 14             	sub    $0x14,%esp
80103f37:	8b 5d 08             	mov    0x8(%ebp),%ebx
80103f3a:	c7 44 24 04 f8 74 10 	movl   $0x801074f8,0x4(%esp)
80103f41:	80 
80103f42:	8d 43 04             	lea    0x4(%ebx),%eax
80103f45:	89 04 24             	mov    %eax,(%esp)
80103f48:	e8 f3 00 00 00       	call   80104040 <initlock>
80103f4d:	8b 45 0c             	mov    0xc(%ebp),%eax
80103f50:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
80103f56:	c7 43 3c 00 00 00 00 	movl   $0x0,0x3c(%ebx)
80103f5d:	89 43 38             	mov    %eax,0x38(%ebx)
80103f60:	83 c4 14             	add    $0x14,%esp
80103f63:	5b                   	pop    %ebx
80103f64:	5d                   	pop    %ebp
80103f65:	c3                   	ret    
80103f66:	8d 76 00             	lea    0x0(%esi),%esi
80103f69:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

80103f70 <acquiresleep>:
80103f70:	55                   	push   %ebp
80103f71:	89 e5                	mov    %esp,%ebp
80103f73:	56                   	push   %esi
80103f74:	53                   	push   %ebx
80103f75:	83 ec 10             	sub    $0x10,%esp
80103f78:	8b 5d 08             	mov    0x8(%ebp),%ebx
80103f7b:	8d 73 04             	lea    0x4(%ebx),%esi
80103f7e:	89 34 24             	mov    %esi,(%esp)
80103f81:	e8 aa 01 00 00       	call   80104130 <acquire>
80103f86:	8b 13                	mov    (%ebx),%edx
80103f88:	85 d2                	test   %edx,%edx
80103f8a:	74 16                	je     80103fa2 <acquiresleep+0x32>
80103f8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80103f90:	89 74 24 04          	mov    %esi,0x4(%esp)
80103f94:	89 1c 24             	mov    %ebx,(%esp)
80103f97:	e8 54 fc ff ff       	call   80103bf0 <sleep>
80103f9c:	8b 03                	mov    (%ebx),%eax
80103f9e:	85 c0                	test   %eax,%eax
80103fa0:	75 ee                	jne    80103f90 <acquiresleep+0x20>
80103fa2:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
80103fa8:	e8 e3 f6 ff ff       	call   80103690 <myproc>
80103fad:	8b 40 10             	mov    0x10(%eax),%eax
80103fb0:	89 43 3c             	mov    %eax,0x3c(%ebx)
80103fb3:	89 75 08             	mov    %esi,0x8(%ebp)
80103fb6:	83 c4 10             	add    $0x10,%esp
80103fb9:	5b                   	pop    %ebx
80103fba:	5e                   	pop    %esi
80103fbb:	5d                   	pop    %ebp
80103fbc:	e9 5f 02 00 00       	jmp    80104220 <release>
80103fc1:	eb 0d                	jmp    80103fd0 <releasesleep>
80103fc3:	90                   	nop
80103fc4:	90                   	nop
80103fc5:	90                   	nop
80103fc6:	90                   	nop
80103fc7:	90                   	nop
80103fc8:	90                   	nop
80103fc9:	90                   	nop
80103fca:	90                   	nop
80103fcb:	90                   	nop
80103fcc:	90                   	nop
80103fcd:	90                   	nop
80103fce:	90                   	nop
80103fcf:	90                   	nop

80103fd0 <releasesleep>:
80103fd0:	55                   	push   %ebp
80103fd1:	89 e5                	mov    %esp,%ebp
80103fd3:	56                   	push   %esi
80103fd4:	53                   	push   %ebx
80103fd5:	83 ec 10             	sub    $0x10,%esp
80103fd8:	8b 5d 08             	mov    0x8(%ebp),%ebx
80103fdb:	8d 73 04             	lea    0x4(%ebx),%esi
80103fde:	89 34 24             	mov    %esi,(%esp)
80103fe1:	e8 4a 01 00 00       	call   80104130 <acquire>
80103fe6:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
80103fec:	c7 43 3c 00 00 00 00 	movl   $0x0,0x3c(%ebx)
80103ff3:	89 1c 24             	mov    %ebx,(%esp)
80103ff6:	e8 85 fd ff ff       	call   80103d80 <wakeup>
80103ffb:	89 75 08             	mov    %esi,0x8(%ebp)
80103ffe:	83 c4 10             	add    $0x10,%esp
80104001:	5b                   	pop    %ebx
80104002:	5e                   	pop    %esi
80104003:	5d                   	pop    %ebp
80104004:	e9 17 02 00 00       	jmp    80104220 <release>
80104009:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

80104010 <holdingsleep>:
80104010:	55                   	push   %ebp
80104011:	89 e5                	mov    %esp,%ebp
80104013:	56                   	push   %esi
80104014:	53                   	push   %ebx
80104015:	83 ec 10             	sub    $0x10,%esp
80104018:	8b 5d 08             	mov    0x8(%ebp),%ebx
8010401b:	8d 73 04             	lea    0x4(%ebx),%esi
8010401e:	89 34 24             	mov    %esi,(%esp)
80104021:	e8 0a 01 00 00       	call   80104130 <acquire>
80104026:	8b 1b                	mov    (%ebx),%ebx
80104028:	89 34 24             	mov    %esi,(%esp)
8010402b:	e8 f0 01 00 00       	call   80104220 <release>
80104030:	83 c4 10             	add    $0x10,%esp
80104033:	89 d8                	mov    %ebx,%eax
80104035:	5b                   	pop    %ebx
80104036:	5e                   	pop    %esi
80104037:	5d                   	pop    %ebp
80104038:	c3                   	ret    
80104039:	66 90                	xchg   %ax,%ax
8010403b:	66 90                	xchg   %ax,%ax
8010403d:	66 90                	xchg   %ax,%ax
8010403f:	90                   	nop

80104040 <initlock>:
80104040:	55                   	push   %ebp
80104041:	89 e5                	mov    %esp,%ebp
80104043:	8b 45 08             	mov    0x8(%ebp),%eax
80104046:	8b 55 0c             	mov    0xc(%ebp),%edx
80104049:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
8010404f:	89 50 04             	mov    %edx,0x4(%eax)
80104052:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
80104059:	5d                   	pop    %ebp
8010405a:	c3                   	ret    
8010405b:	90                   	nop
8010405c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80104060 <getcallerpcs>:
80104060:	55                   	push   %ebp
80104061:	89 e5                	mov    %esp,%ebp
80104063:	8b 45 08             	mov    0x8(%ebp),%eax
80104066:	8b 4d 0c             	mov    0xc(%ebp),%ecx
80104069:	53                   	push   %ebx
8010406a:	8d 50 f8             	lea    -0x8(%eax),%edx
8010406d:	31 c0                	xor    %eax,%eax
8010406f:	90                   	nop
80104070:	8d 9a 00 00 00 80    	lea    -0x80000000(%edx),%ebx
80104076:	81 fb fe ff ff 7f    	cmp    $0x7ffffffe,%ebx
8010407c:	77 1a                	ja     80104098 <getcallerpcs+0x38>
8010407e:	8b 5a 04             	mov    0x4(%edx),%ebx
80104081:	89 1c 81             	mov    %ebx,(%ecx,%eax,4)
80104084:	83 c0 01             	add    $0x1,%eax
80104087:	8b 12                	mov    (%edx),%edx
80104089:	83 f8 0a             	cmp    $0xa,%eax
8010408c:	75 e2                	jne    80104070 <getcallerpcs+0x10>
8010408e:	5b                   	pop    %ebx
8010408f:	5d                   	pop    %ebp
80104090:	c3                   	ret    
80104091:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80104098:	c7 04 81 00 00 00 00 	movl   $0x0,(%ecx,%eax,4)
8010409f:	83 c0 01             	add    $0x1,%eax
801040a2:	83 f8 0a             	cmp    $0xa,%eax
801040a5:	74 e7                	je     8010408e <getcallerpcs+0x2e>
801040a7:	c7 04 81 00 00 00 00 	movl   $0x0,(%ecx,%eax,4)
801040ae:	83 c0 01             	add    $0x1,%eax
801040b1:	83 f8 0a             	cmp    $0xa,%eax
801040b4:	75 e2                	jne    80104098 <getcallerpcs+0x38>
801040b6:	eb d6                	jmp    8010408e <getcallerpcs+0x2e>
801040b8:	90                   	nop
801040b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

801040c0 <holding>:
801040c0:	55                   	push   %ebp
801040c1:	31 c0                	xor    %eax,%eax
801040c3:	89 e5                	mov    %esp,%ebp
801040c5:	53                   	push   %ebx
801040c6:	83 ec 04             	sub    $0x4,%esp
801040c9:	8b 55 08             	mov    0x8(%ebp),%edx
801040cc:	8b 0a                	mov    (%edx),%ecx
801040ce:	85 c9                	test   %ecx,%ecx
801040d0:	74 10                	je     801040e2 <holding+0x22>
801040d2:	8b 5a 08             	mov    0x8(%edx),%ebx
801040d5:	e8 16 f5 ff ff       	call   801035f0 <mycpu>
801040da:	39 c3                	cmp    %eax,%ebx
801040dc:	0f 94 c0             	sete   %al
801040df:	0f b6 c0             	movzbl %al,%eax
801040e2:	83 c4 04             	add    $0x4,%esp
801040e5:	5b                   	pop    %ebx
801040e6:	5d                   	pop    %ebp
801040e7:	c3                   	ret    
801040e8:	90                   	nop
801040e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

801040f0 <pushcli>:
801040f0:	55                   	push   %ebp
801040f1:	89 e5                	mov    %esp,%ebp
801040f3:	53                   	push   %ebx
801040f4:	83 ec 04             	sub    $0x4,%esp
801040f7:	9c                   	pushf  
801040f8:	5b                   	pop    %ebx
801040f9:	fa                   	cli    
801040fa:	e8 f1 f4 ff ff       	call   801035f0 <mycpu>
801040ff:	8b 80 a4 00 00 00    	mov    0xa4(%eax),%eax
80104105:	85 c0                	test   %eax,%eax
80104107:	75 11                	jne    8010411a <pushcli+0x2a>
80104109:	e8 e2 f4 ff ff       	call   801035f0 <mycpu>
8010410e:	81 e3 00 02 00 00    	and    $0x200,%ebx
80104114:	89 98 a8 00 00 00    	mov    %ebx,0xa8(%eax)
8010411a:	e8 d1 f4 ff ff       	call   801035f0 <mycpu>
8010411f:	83 80 a4 00 00 00 01 	addl   $0x1,0xa4(%eax)
80104126:	83 c4 04             	add    $0x4,%esp
80104129:	5b                   	pop    %ebx
8010412a:	5d                   	pop    %ebp
8010412b:	c3                   	ret    
8010412c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80104130 <acquire>:
80104130:	55                   	push   %ebp
80104131:	89 e5                	mov    %esp,%ebp
80104133:	53                   	push   %ebx
80104134:	83 ec 14             	sub    $0x14,%esp
80104137:	e8 b4 ff ff ff       	call   801040f0 <pushcli>
8010413c:	8b 55 08             	mov    0x8(%ebp),%edx
8010413f:	8b 02                	mov    (%edx),%eax
80104141:	85 c0                	test   %eax,%eax
80104143:	75 43                	jne    80104188 <acquire+0x58>
80104145:	b9 01 00 00 00       	mov    $0x1,%ecx
8010414a:	eb 07                	jmp    80104153 <acquire+0x23>
8010414c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80104150:	8b 55 08             	mov    0x8(%ebp),%edx
80104153:	89 c8                	mov    %ecx,%eax
80104155:	f0 87 02             	lock xchg %eax,(%edx)
80104158:	85 c0                	test   %eax,%eax
8010415a:	75 f4                	jne    80104150 <acquire+0x20>
8010415c:	0f ae f0             	mfence 
8010415f:	8b 5d 08             	mov    0x8(%ebp),%ebx
80104162:	e8 89 f4 ff ff       	call   801035f0 <mycpu>
80104167:	89 43 08             	mov    %eax,0x8(%ebx)
8010416a:	8b 45 08             	mov    0x8(%ebp),%eax
8010416d:	83 c0 0c             	add    $0xc,%eax
80104170:	89 44 24 04          	mov    %eax,0x4(%esp)
80104174:	8d 45 08             	lea    0x8(%ebp),%eax
80104177:	89 04 24             	mov    %eax,(%esp)
8010417a:	e8 e1 fe ff ff       	call   80104060 <getcallerpcs>
8010417f:	83 c4 14             	add    $0x14,%esp
80104182:	5b                   	pop    %ebx
80104183:	5d                   	pop    %ebp
80104184:	c3                   	ret    
80104185:	8d 76 00             	lea    0x0(%esi),%esi
80104188:	8b 5a 08             	mov    0x8(%edx),%ebx
8010418b:	e8 60 f4 ff ff       	call   801035f0 <mycpu>
80104190:	39 c3                	cmp    %eax,%ebx
80104192:	74 05                	je     80104199 <acquire+0x69>
80104194:	8b 55 08             	mov    0x8(%ebp),%edx
80104197:	eb ac                	jmp    80104145 <acquire+0x15>
80104199:	c7 04 24 03 75 10 80 	movl   $0x80107503,(%esp)
801041a0:	e8 bb c1 ff ff       	call   80100360 <panic>
801041a5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
801041a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

801041b0 <popcli>:
801041b0:	55                   	push   %ebp
801041b1:	89 e5                	mov    %esp,%ebp
801041b3:	83 ec 18             	sub    $0x18,%esp
801041b6:	9c                   	pushf  
801041b7:	58                   	pop    %eax
801041b8:	f6 c4 02             	test   $0x2,%ah
801041bb:	75 49                	jne    80104206 <popcli+0x56>
801041bd:	e8 2e f4 ff ff       	call   801035f0 <mycpu>
801041c2:	8b 88 a4 00 00 00    	mov    0xa4(%eax),%ecx
801041c8:	8d 51 ff             	lea    -0x1(%ecx),%edx
801041cb:	85 d2                	test   %edx,%edx
801041cd:	89 90 a4 00 00 00    	mov    %edx,0xa4(%eax)
801041d3:	78 25                	js     801041fa <popcli+0x4a>
801041d5:	e8 16 f4 ff ff       	call   801035f0 <mycpu>
801041da:	8b 90 a4 00 00 00    	mov    0xa4(%eax),%edx
801041e0:	85 d2                	test   %edx,%edx
801041e2:	74 04                	je     801041e8 <popcli+0x38>
801041e4:	c9                   	leave  
801041e5:	c3                   	ret    
801041e6:	66 90                	xchg   %ax,%ax
801041e8:	e8 03 f4 ff ff       	call   801035f0 <mycpu>
801041ed:	8b 80 a8 00 00 00    	mov    0xa8(%eax),%eax
801041f3:	85 c0                	test   %eax,%eax
801041f5:	74 ed                	je     801041e4 <popcli+0x34>
801041f7:	fb                   	sti    
801041f8:	c9                   	leave  
801041f9:	c3                   	ret    
801041fa:	c7 04 24 22 75 10 80 	movl   $0x80107522,(%esp)
80104201:	e8 5a c1 ff ff       	call   80100360 <panic>
80104206:	c7 04 24 0b 75 10 80 	movl   $0x8010750b,(%esp)
8010420d:	e8 4e c1 ff ff       	call   80100360 <panic>
80104212:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80104219:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

80104220 <release>:
80104220:	55                   	push   %ebp
80104221:	89 e5                	mov    %esp,%ebp
80104223:	56                   	push   %esi
80104224:	53                   	push   %ebx
80104225:	83 ec 10             	sub    $0x10,%esp
80104228:	8b 5d 08             	mov    0x8(%ebp),%ebx
8010422b:	8b 03                	mov    (%ebx),%eax
8010422d:	85 c0                	test   %eax,%eax
8010422f:	75 0f                	jne    80104240 <release+0x20>
80104231:	c7 04 24 29 75 10 80 	movl   $0x80107529,(%esp)
80104238:	e8 23 c1 ff ff       	call   80100360 <panic>
8010423d:	8d 76 00             	lea    0x0(%esi),%esi
80104240:	8b 73 08             	mov    0x8(%ebx),%esi
80104243:	e8 a8 f3 ff ff       	call   801035f0 <mycpu>
80104248:	39 c6                	cmp    %eax,%esi
8010424a:	75 e5                	jne    80104231 <release+0x11>
8010424c:	c7 43 0c 00 00 00 00 	movl   $0x0,0xc(%ebx)
80104253:	c7 43 08 00 00 00 00 	movl   $0x0,0x8(%ebx)
8010425a:	0f ae f0             	mfence 
8010425d:	c7 03 00 00 00 00    	movl   $0x0,(%ebx)
80104263:	83 c4 10             	add    $0x10,%esp
80104266:	5b                   	pop    %ebx
80104267:	5e                   	pop    %esi
80104268:	5d                   	pop    %ebp
80104269:	e9 42 ff ff ff       	jmp    801041b0 <popcli>
8010426e:	66 90                	xchg   %ax,%ax

80104270 <memset>:
80104270:	55                   	push   %ebp
80104271:	89 e5                	mov    %esp,%ebp
80104273:	8b 55 08             	mov    0x8(%ebp),%edx
80104276:	57                   	push   %edi
80104277:	8b 4d 10             	mov    0x10(%ebp),%ecx
8010427a:	53                   	push   %ebx
8010427b:	f6 c2 03             	test   $0x3,%dl
8010427e:	75 05                	jne    80104285 <memset+0x15>
80104280:	f6 c1 03             	test   $0x3,%cl
80104283:	74 13                	je     80104298 <memset+0x28>
80104285:	89 d7                	mov    %edx,%edi
80104287:	8b 45 0c             	mov    0xc(%ebp),%eax
8010428a:	fc                   	cld    
8010428b:	f3 aa                	rep stos %al,%es:(%edi)
8010428d:	5b                   	pop    %ebx
8010428e:	89 d0                	mov    %edx,%eax
80104290:	5f                   	pop    %edi
80104291:	5d                   	pop    %ebp
80104292:	c3                   	ret    
80104293:	90                   	nop
80104294:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80104298:	0f b6 7d 0c          	movzbl 0xc(%ebp),%edi
8010429c:	c1 e9 02             	shr    $0x2,%ecx
8010429f:	89 f8                	mov    %edi,%eax
801042a1:	89 fb                	mov    %edi,%ebx
801042a3:	c1 e0 18             	shl    $0x18,%eax
801042a6:	c1 e3 10             	shl    $0x10,%ebx
801042a9:	09 d8                	or     %ebx,%eax
801042ab:	09 f8                	or     %edi,%eax
801042ad:	c1 e7 08             	shl    $0x8,%edi
801042b0:	09 f8                	or     %edi,%eax
801042b2:	89 d7                	mov    %edx,%edi
801042b4:	fc                   	cld    
801042b5:	f3 ab                	rep stos %eax,%es:(%edi)
801042b7:	5b                   	pop    %ebx
801042b8:	89 d0                	mov    %edx,%eax
801042ba:	5f                   	pop    %edi
801042bb:	5d                   	pop    %ebp
801042bc:	c3                   	ret    
801042bd:	8d 76 00             	lea    0x0(%esi),%esi

801042c0 <memcmp>:
801042c0:	55                   	push   %ebp
801042c1:	89 e5                	mov    %esp,%ebp
801042c3:	8b 45 10             	mov    0x10(%ebp),%eax
801042c6:	57                   	push   %edi
801042c7:	56                   	push   %esi
801042c8:	8b 75 0c             	mov    0xc(%ebp),%esi
801042cb:	53                   	push   %ebx
801042cc:	8b 5d 08             	mov    0x8(%ebp),%ebx
801042cf:	85 c0                	test   %eax,%eax
801042d1:	8d 78 ff             	lea    -0x1(%eax),%edi
801042d4:	74 26                	je     801042fc <memcmp+0x3c>
801042d6:	0f b6 03             	movzbl (%ebx),%eax
801042d9:	31 d2                	xor    %edx,%edx
801042db:	0f b6 0e             	movzbl (%esi),%ecx
801042de:	38 c8                	cmp    %cl,%al
801042e0:	74 16                	je     801042f8 <memcmp+0x38>
801042e2:	eb 24                	jmp    80104308 <memcmp+0x48>
801042e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
801042e8:	0f b6 44 13 01       	movzbl 0x1(%ebx,%edx,1),%eax
801042ed:	83 c2 01             	add    $0x1,%edx
801042f0:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
801042f4:	38 c8                	cmp    %cl,%al
801042f6:	75 10                	jne    80104308 <memcmp+0x48>
801042f8:	39 fa                	cmp    %edi,%edx
801042fa:	75 ec                	jne    801042e8 <memcmp+0x28>
801042fc:	5b                   	pop    %ebx
801042fd:	31 c0                	xor    %eax,%eax
801042ff:	5e                   	pop    %esi
80104300:	5f                   	pop    %edi
80104301:	5d                   	pop    %ebp
80104302:	c3                   	ret    
80104303:	90                   	nop
80104304:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80104308:	5b                   	pop    %ebx
80104309:	29 c8                	sub    %ecx,%eax
8010430b:	5e                   	pop    %esi
8010430c:	5f                   	pop    %edi
8010430d:	5d                   	pop    %ebp
8010430e:	c3                   	ret    
8010430f:	90                   	nop

80104310 <memmove>:
80104310:	55                   	push   %ebp
80104311:	89 e5                	mov    %esp,%ebp
80104313:	57                   	push   %edi
80104314:	8b 45 08             	mov    0x8(%ebp),%eax
80104317:	56                   	push   %esi
80104318:	8b 75 0c             	mov    0xc(%ebp),%esi
8010431b:	53                   	push   %ebx
8010431c:	8b 5d 10             	mov    0x10(%ebp),%ebx
8010431f:	39 c6                	cmp    %eax,%esi
80104321:	73 35                	jae    80104358 <memmove+0x48>
80104323:	8d 0c 1e             	lea    (%esi,%ebx,1),%ecx
80104326:	39 c8                	cmp    %ecx,%eax
80104328:	73 2e                	jae    80104358 <memmove+0x48>
8010432a:	85 db                	test   %ebx,%ebx
8010432c:	8d 3c 18             	lea    (%eax,%ebx,1),%edi
8010432f:	8d 53 ff             	lea    -0x1(%ebx),%edx
80104332:	74 1b                	je     8010434f <memmove+0x3f>
80104334:	f7 db                	neg    %ebx
80104336:	8d 34 19             	lea    (%ecx,%ebx,1),%esi
80104339:	01 fb                	add    %edi,%ebx
8010433b:	90                   	nop
8010433c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80104340:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
80104344:	88 0c 13             	mov    %cl,(%ebx,%edx,1)
80104347:	83 ea 01             	sub    $0x1,%edx
8010434a:	83 fa ff             	cmp    $0xffffffff,%edx
8010434d:	75 f1                	jne    80104340 <memmove+0x30>
8010434f:	5b                   	pop    %ebx
80104350:	5e                   	pop    %esi
80104351:	5f                   	pop    %edi
80104352:	5d                   	pop    %ebp
80104353:	c3                   	ret    
80104354:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80104358:	31 d2                	xor    %edx,%edx
8010435a:	85 db                	test   %ebx,%ebx
8010435c:	74 f1                	je     8010434f <memmove+0x3f>
8010435e:	66 90                	xchg   %ax,%ax
80104360:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
80104364:	88 0c 10             	mov    %cl,(%eax,%edx,1)
80104367:	83 c2 01             	add    $0x1,%edx
8010436a:	39 da                	cmp    %ebx,%edx
8010436c:	75 f2                	jne    80104360 <memmove+0x50>
8010436e:	5b                   	pop    %ebx
8010436f:	5e                   	pop    %esi
80104370:	5f                   	pop    %edi
80104371:	5d                   	pop    %ebp
80104372:	c3                   	ret    
80104373:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80104379:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

80104380 <memcpy>:
80104380:	55                   	push   %ebp
80104381:	89 e5                	mov    %esp,%ebp
80104383:	5d                   	pop    %ebp
80104384:	e9 87 ff ff ff       	jmp    80104310 <memmove>
80104389:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

80104390 <strncmp>:
80104390:	55                   	push   %ebp
80104391:	89 e5                	mov    %esp,%ebp
80104393:	56                   	push   %esi
80104394:	8b 75 10             	mov    0x10(%ebp),%esi
80104397:	53                   	push   %ebx
80104398:	8b 4d 08             	mov    0x8(%ebp),%ecx
8010439b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
8010439e:	85 f6                	test   %esi,%esi
801043a0:	74 30                	je     801043d2 <strncmp+0x42>
801043a2:	0f b6 01             	movzbl (%ecx),%eax
801043a5:	84 c0                	test   %al,%al
801043a7:	74 2f                	je     801043d8 <strncmp+0x48>
801043a9:	0f b6 13             	movzbl (%ebx),%edx
801043ac:	38 d0                	cmp    %dl,%al
801043ae:	75 46                	jne    801043f6 <strncmp+0x66>
801043b0:	8d 51 01             	lea    0x1(%ecx),%edx
801043b3:	01 ce                	add    %ecx,%esi
801043b5:	eb 14                	jmp    801043cb <strncmp+0x3b>
801043b7:	90                   	nop
801043b8:	0f b6 02             	movzbl (%edx),%eax
801043bb:	84 c0                	test   %al,%al
801043bd:	74 31                	je     801043f0 <strncmp+0x60>
801043bf:	0f b6 19             	movzbl (%ecx),%ebx
801043c2:	83 c2 01             	add    $0x1,%edx
801043c5:	38 d8                	cmp    %bl,%al
801043c7:	75 17                	jne    801043e0 <strncmp+0x50>
801043c9:	89 cb                	mov    %ecx,%ebx
801043cb:	39 f2                	cmp    %esi,%edx
801043cd:	8d 4b 01             	lea    0x1(%ebx),%ecx
801043d0:	75 e6                	jne    801043b8 <strncmp+0x28>
801043d2:	5b                   	pop    %ebx
801043d3:	31 c0                	xor    %eax,%eax
801043d5:	5e                   	pop    %esi
801043d6:	5d                   	pop    %ebp
801043d7:	c3                   	ret    
801043d8:	0f b6 1b             	movzbl (%ebx),%ebx
801043db:	31 c0                	xor    %eax,%eax
801043dd:	8d 76 00             	lea    0x0(%esi),%esi
801043e0:	0f b6 d3             	movzbl %bl,%edx
801043e3:	29 d0                	sub    %edx,%eax
801043e5:	5b                   	pop    %ebx
801043e6:	5e                   	pop    %esi
801043e7:	5d                   	pop    %ebp
801043e8:	c3                   	ret    
801043e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
801043f0:	0f b6 5b 01          	movzbl 0x1(%ebx),%ebx
801043f4:	eb ea                	jmp    801043e0 <strncmp+0x50>
801043f6:	89 d3                	mov    %edx,%ebx
801043f8:	eb e6                	jmp    801043e0 <strncmp+0x50>
801043fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

80104400 <strncpy>:
80104400:	55                   	push   %ebp
80104401:	89 e5                	mov    %esp,%ebp
80104403:	8b 45 08             	mov    0x8(%ebp),%eax
80104406:	56                   	push   %esi
80104407:	8b 4d 10             	mov    0x10(%ebp),%ecx
8010440a:	53                   	push   %ebx
8010440b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
8010440e:	89 c2                	mov    %eax,%edx
80104410:	eb 19                	jmp    8010442b <strncpy+0x2b>
80104412:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80104418:	83 c3 01             	add    $0x1,%ebx
8010441b:	0f b6 4b ff          	movzbl -0x1(%ebx),%ecx
8010441f:	83 c2 01             	add    $0x1,%edx
80104422:	84 c9                	test   %cl,%cl
80104424:	88 4a ff             	mov    %cl,-0x1(%edx)
80104427:	74 09                	je     80104432 <strncpy+0x32>
80104429:	89 f1                	mov    %esi,%ecx
8010442b:	85 c9                	test   %ecx,%ecx
8010442d:	8d 71 ff             	lea    -0x1(%ecx),%esi
80104430:	7f e6                	jg     80104418 <strncpy+0x18>
80104432:	31 c9                	xor    %ecx,%ecx
80104434:	85 f6                	test   %esi,%esi
80104436:	7e 0f                	jle    80104447 <strncpy+0x47>
80104438:	c6 04 0a 00          	movb   $0x0,(%edx,%ecx,1)
8010443c:	89 f3                	mov    %esi,%ebx
8010443e:	83 c1 01             	add    $0x1,%ecx
80104441:	29 cb                	sub    %ecx,%ebx
80104443:	85 db                	test   %ebx,%ebx
80104445:	7f f1                	jg     80104438 <strncpy+0x38>
80104447:	5b                   	pop    %ebx
80104448:	5e                   	pop    %esi
80104449:	5d                   	pop    %ebp
8010444a:	c3                   	ret    
8010444b:	90                   	nop
8010444c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80104450 <safestrcpy>:
80104450:	55                   	push   %ebp
80104451:	89 e5                	mov    %esp,%ebp
80104453:	8b 4d 10             	mov    0x10(%ebp),%ecx
80104456:	56                   	push   %esi
80104457:	8b 45 08             	mov    0x8(%ebp),%eax
8010445a:	53                   	push   %ebx
8010445b:	8b 55 0c             	mov    0xc(%ebp),%edx
8010445e:	85 c9                	test   %ecx,%ecx
80104460:	7e 26                	jle    80104488 <safestrcpy+0x38>
80104462:	8d 74 0a ff          	lea    -0x1(%edx,%ecx,1),%esi
80104466:	89 c1                	mov    %eax,%ecx
80104468:	eb 17                	jmp    80104481 <safestrcpy+0x31>
8010446a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80104470:	83 c2 01             	add    $0x1,%edx
80104473:	0f b6 5a ff          	movzbl -0x1(%edx),%ebx
80104477:	83 c1 01             	add    $0x1,%ecx
8010447a:	84 db                	test   %bl,%bl
8010447c:	88 59 ff             	mov    %bl,-0x1(%ecx)
8010447f:	74 04                	je     80104485 <safestrcpy+0x35>
80104481:	39 f2                	cmp    %esi,%edx
80104483:	75 eb                	jne    80104470 <safestrcpy+0x20>
80104485:	c6 01 00             	movb   $0x0,(%ecx)
80104488:	5b                   	pop    %ebx
80104489:	5e                   	pop    %esi
8010448a:	5d                   	pop    %ebp
8010448b:	c3                   	ret    
8010448c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80104490 <strlen>:
80104490:	55                   	push   %ebp
80104491:	31 c0                	xor    %eax,%eax
80104493:	89 e5                	mov    %esp,%ebp
80104495:	8b 55 08             	mov    0x8(%ebp),%edx
80104498:	80 3a 00             	cmpb   $0x0,(%edx)
8010449b:	74 0c                	je     801044a9 <strlen+0x19>
8010449d:	8d 76 00             	lea    0x0(%esi),%esi
801044a0:	83 c0 01             	add    $0x1,%eax
801044a3:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
801044a7:	75 f7                	jne    801044a0 <strlen+0x10>
801044a9:	5d                   	pop    %ebp
801044aa:	c3                   	ret    

801044ab <swtch>:
801044ab:	8b 44 24 04          	mov    0x4(%esp),%eax
801044af:	8b 54 24 08          	mov    0x8(%esp),%edx
801044b3:	55                   	push   %ebp
801044b4:	53                   	push   %ebx
801044b5:	56                   	push   %esi
801044b6:	57                   	push   %edi
801044b7:	89 20                	mov    %esp,(%eax)
801044b9:	89 d4                	mov    %edx,%esp
801044bb:	5f                   	pop    %edi
801044bc:	5e                   	pop    %esi
801044bd:	5b                   	pop    %ebx
801044be:	5d                   	pop    %ebp
801044bf:	c3                   	ret    

801044c0 <fetchint>:
// to a saved program counter, and then the first argument.

// Fetch the int at addr from the current process.
int
fetchint(uint addr, int *ip)
{
801044c0:	55                   	push   %ebp
801044c1:	89 e5                	mov    %esp,%ebp
  //struct proc *curproc = myproc();
  //if(addr >= curproc->sz || addr+4 > curproc->sz)
//  if (addr >= STACK_TOP || addr+4 > STACK_TOP)
//    return -1;
  *ip = *(int*)(addr);
801044c3:	8b 45 08             	mov    0x8(%ebp),%eax
801044c6:	8b 10                	mov    (%eax),%edx
801044c8:	8b 45 0c             	mov    0xc(%ebp),%eax
801044cb:	89 10                	mov    %edx,(%eax)
  return 0;
}
801044cd:	31 c0                	xor    %eax,%eax
801044cf:	5d                   	pop    %ebp
801044d0:	c3                   	ret    
801044d1:	eb 0d                	jmp    801044e0 <fetchstr>
801044d3:	90                   	nop
801044d4:	90                   	nop
801044d5:	90                   	nop
801044d6:	90                   	nop
801044d7:	90                   	nop
801044d8:	90                   	nop
801044d9:	90                   	nop
801044da:	90                   	nop
801044db:	90                   	nop
801044dc:	90                   	nop
801044dd:	90                   	nop
801044de:	90                   	nop
801044df:	90                   	nop

801044e0 <fetchstr>:
// Fetch the nul-terminated string at addr from the current process.
// Doesn't actually copy the string - just sets *pp to point at it.
// Returns length of string, not including nul.
int
fetchstr(uint addr, char **pp)
{
801044e0:	55                   	push   %ebp
801044e1:	89 e5                	mov    %esp,%ebp
801044e3:	8b 55 08             	mov    0x8(%ebp),%edx
  char *s, *ep;

  //if(addr >= curproc->sz)
//  if (addr >= KERNBASE-4)
//    return -1;
  *pp = (char*)addr;
801044e6:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  ep = (char*)KERNBASE-4;
  for(s = *pp; s < ep; s++){
801044e9:	81 fa fb ff ff 7f    	cmp    $0x7ffffffb,%edx
  char *s, *ep;

  //if(addr >= curproc->sz)
//  if (addr >= KERNBASE-4)
//    return -1;
  *pp = (char*)addr;
801044ef:	89 11                	mov    %edx,(%ecx)
  ep = (char*)KERNBASE-4;
  for(s = *pp; s < ep; s++){
801044f1:	77 1c                	ja     8010450f <fetchstr+0x2f>
    if(*s == 0)
801044f3:	80 3a 00             	cmpb   $0x0,(%edx)
801044f6:	89 d0                	mov    %edx,%eax
801044f8:	75 0b                	jne    80104505 <fetchstr+0x25>
801044fa:	eb 1c                	jmp    80104518 <fetchstr+0x38>
801044fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80104500:	80 38 00             	cmpb   $0x0,(%eax)
80104503:	74 13                	je     80104518 <fetchstr+0x38>
  //if(addr >= curproc->sz)
//  if (addr >= KERNBASE-4)
//    return -1;
  *pp = (char*)addr;
  ep = (char*)KERNBASE-4;
  for(s = *pp; s < ep; s++){
80104505:	83 c0 01             	add    $0x1,%eax
80104508:	3d fc ff ff 7f       	cmp    $0x7ffffffc,%eax
8010450d:	75 f1                	jne    80104500 <fetchstr+0x20>
//  ep = (char*)myproc()->sz;
//  for(s = *pp; s < ep; s++){
//    if(*s == 0)
//      return *pp - s;
//  }
  return -1;
8010450f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
80104514:	5d                   	pop    %ebp
80104515:	c3                   	ret    
80104516:	66 90                	xchg   %ax,%ax
//    return -1;
  *pp = (char*)addr;
  ep = (char*)KERNBASE-4;
  for(s = *pp; s < ep; s++){
    if(*s == 0)
      return s - *pp;
80104518:	29 d0                	sub    %edx,%eax
//  for(s = *pp; s < ep; s++){
//    if(*s == 0)
//      return *pp - s;
//  }
  return -1;
}
8010451a:	5d                   	pop    %ebp
8010451b:	c3                   	ret    
8010451c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80104520 <argint>:

// Fetch the nth 32-bit system call argument.
int
argint(int n, int *ip)
{
80104520:	55                   	push   %ebp
80104521:	89 e5                	mov    %esp,%ebp
80104523:	83 ec 08             	sub    $0x8,%esp
  return fetchint((myproc()->tf->esp) + 4 + 4*n, ip);
80104526:	e8 65 f1 ff ff       	call   80103690 <myproc>
{
  //struct proc *curproc = myproc();
  //if(addr >= curproc->sz || addr+4 > curproc->sz)
//  if (addr >= STACK_TOP || addr+4 > STACK_TOP)
//    return -1;
  *ip = *(int*)(addr);
8010452b:	8b 55 08             	mov    0x8(%ebp),%edx

// Fetch the nth 32-bit system call argument.
int
argint(int n, int *ip)
{
  return fetchint((myproc()->tf->esp) + 4 + 4*n, ip);
8010452e:	8b 40 18             	mov    0x18(%eax),%eax
{
  //struct proc *curproc = myproc();
  //if(addr >= curproc->sz || addr+4 > curproc->sz)
//  if (addr >= STACK_TOP || addr+4 > STACK_TOP)
//    return -1;
  *ip = *(int*)(addr);
80104531:	8b 40 44             	mov    0x44(%eax),%eax
80104534:	8b 54 90 04          	mov    0x4(%eax,%edx,4),%edx
80104538:	8b 45 0c             	mov    0xc(%ebp),%eax
8010453b:	89 10                	mov    %edx,(%eax)
// Fetch the nth 32-bit system call argument.
int
argint(int n, int *ip)
{
  return fetchint((myproc()->tf->esp) + 4 + 4*n, ip);
}
8010453d:	31 c0                	xor    %eax,%eax
8010453f:	c9                   	leave  
80104540:	c3                   	ret    
80104541:	eb 0d                	jmp    80104550 <argptr>
80104543:	90                   	nop
80104544:	90                   	nop
80104545:	90                   	nop
80104546:	90                   	nop
80104547:	90                   	nop
80104548:	90                   	nop
80104549:	90                   	nop
8010454a:	90                   	nop
8010454b:	90                   	nop
8010454c:	90                   	nop
8010454d:	90                   	nop
8010454e:	90                   	nop
8010454f:	90                   	nop

80104550 <argptr>:
// Fetch the nth word-sized system call argument as a pointer
// to a block of memory of size bytes.  Check that the pointer
// lies within the process address space.
int
argptr(int n, char **pp, int size)
{
80104550:	55                   	push   %ebp
80104551:	89 e5                	mov    %esp,%ebp
80104553:	83 ec 08             	sub    $0x8,%esp

// Fetch the nth 32-bit system call argument.
int
argint(int n, int *ip)
{
  return fetchint((myproc()->tf->esp) + 4 + 4*n, ip);
80104556:	e8 35 f1 ff ff       	call   80103690 <myproc>
  if(argint(n, &i) < 0)
    return -1;
  //if(size < 0 || (uint)i >= curproc->sz || (uint)i+size > curproc->sz)
//  if (size < 0 || (uint)i >= STACK_TOP || (uint)i+size > STACK_TOP)
//    return -1;
  *pp = (char*)i;
8010455b:	8b 55 08             	mov    0x8(%ebp),%edx

// Fetch the nth 32-bit system call argument.
int
argint(int n, int *ip)
{
  return fetchint((myproc()->tf->esp) + 4 + 4*n, ip);
8010455e:	8b 40 18             	mov    0x18(%eax),%eax
{
  //struct proc *curproc = myproc();
  //if(addr >= curproc->sz || addr+4 > curproc->sz)
//  if (addr >= STACK_TOP || addr+4 > STACK_TOP)
//    return -1;
  *ip = *(int*)(addr);
80104561:	8b 40 44             	mov    0x44(%eax),%eax
  if(argint(n, &i) < 0)
    return -1;
  //if(size < 0 || (uint)i >= curproc->sz || (uint)i+size > curproc->sz)
//  if (size < 0 || (uint)i >= STACK_TOP || (uint)i+size > STACK_TOP)
//    return -1;
  *pp = (char*)i;
80104564:	8b 54 90 04          	mov    0x4(%eax,%edx,4),%edx
80104568:	8b 45 0c             	mov    0xc(%ebp),%eax
8010456b:	89 10                	mov    %edx,(%eax)
  return 0;
}
8010456d:	31 c0                	xor    %eax,%eax
8010456f:	c9                   	leave  
80104570:	c3                   	ret    
80104571:	eb 0d                	jmp    80104580 <argstr>
80104573:	90                   	nop
80104574:	90                   	nop
80104575:	90                   	nop
80104576:	90                   	nop
80104577:	90                   	nop
80104578:	90                   	nop
80104579:	90                   	nop
8010457a:	90                   	nop
8010457b:	90                   	nop
8010457c:	90                   	nop
8010457d:	90                   	nop
8010457e:	90                   	nop
8010457f:	90                   	nop

80104580 <argstr>:
// Check that the pointer is valid and the string is nul-terminated.
// (There is no shared writable memory, so the string can't change
// between this check and being used by the kernel.)
int
argstr(int n, char **pp)
{
80104580:	55                   	push   %ebp
80104581:	89 e5                	mov    %esp,%ebp
80104583:	83 ec 08             	sub    $0x8,%esp

// Fetch the nth 32-bit system call argument.
int
argint(int n, int *ip)
{
  return fetchint((myproc()->tf->esp) + 4 + 4*n, ip);
80104586:	e8 05 f1 ff ff       	call   80103690 <myproc>
{
  //struct proc *curproc = myproc();
  //if(addr >= curproc->sz || addr+4 > curproc->sz)
//  if (addr >= STACK_TOP || addr+4 > STACK_TOP)
//    return -1;
  *ip = *(int*)(addr);
8010458b:	8b 55 08             	mov    0x8(%ebp),%edx
  char *s, *ep;

  //if(addr >= curproc->sz)
//  if (addr >= KERNBASE-4)
//    return -1;
  *pp = (char*)addr;
8010458e:	8b 4d 0c             	mov    0xc(%ebp),%ecx

// Fetch the nth 32-bit system call argument.
int
argint(int n, int *ip)
{
  return fetchint((myproc()->tf->esp) + 4 + 4*n, ip);
80104591:	8b 40 18             	mov    0x18(%eax),%eax
{
  //struct proc *curproc = myproc();
  //if(addr >= curproc->sz || addr+4 > curproc->sz)
//  if (addr >= STACK_TOP || addr+4 > STACK_TOP)
//    return -1;
  *ip = *(int*)(addr);
80104594:	8b 40 44             	mov    0x44(%eax),%eax
80104597:	8b 54 90 04          	mov    0x4(%eax,%edx,4),%edx
  //if(addr >= curproc->sz)
//  if (addr >= KERNBASE-4)
//    return -1;
  *pp = (char*)addr;
  ep = (char*)KERNBASE-4;
  for(s = *pp; s < ep; s++){
8010459b:	81 fa fb ff ff 7f    	cmp    $0x7ffffffb,%edx
  char *s, *ep;

  //if(addr >= curproc->sz)
//  if (addr >= KERNBASE-4)
//    return -1;
  *pp = (char*)addr;
801045a1:	89 11                	mov    %edx,(%ecx)
  ep = (char*)KERNBASE-4;
  for(s = *pp; s < ep; s++){
801045a3:	77 1a                	ja     801045bf <argstr+0x3f>
    if(*s == 0)
801045a5:	80 3a 00             	cmpb   $0x0,(%edx)
801045a8:	89 d0                	mov    %edx,%eax
801045aa:	75 09                	jne    801045b5 <argstr+0x35>
801045ac:	eb 1a                	jmp    801045c8 <argstr+0x48>
801045ae:	66 90                	xchg   %ax,%ax
801045b0:	80 38 00             	cmpb   $0x0,(%eax)
801045b3:	74 13                	je     801045c8 <argstr+0x48>
  //if(addr >= curproc->sz)
//  if (addr >= KERNBASE-4)
//    return -1;
  *pp = (char*)addr;
  ep = (char*)KERNBASE-4;
  for(s = *pp; s < ep; s++){
801045b5:	83 c0 01             	add    $0x1,%eax
801045b8:	3d fb ff ff 7f       	cmp    $0x7ffffffb,%eax
801045bd:	76 f1                	jbe    801045b0 <argstr+0x30>
//  ep = (char*)myproc()->sz;
//  for(s = *pp; s < ep; s++){
//    if(*s == 0)
//      return *pp - s;
//  }
  return -1;
801045bf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
{
  int addr;
  if(argint(n, &addr) < 0)
    return -1;
  return fetchstr(addr, pp);
}
801045c4:	c9                   	leave  
801045c5:	c3                   	ret    
801045c6:	66 90                	xchg   %ax,%ax
//    return -1;
  *pp = (char*)addr;
  ep = (char*)KERNBASE-4;
  for(s = *pp; s < ep; s++){
    if(*s == 0)
      return s - *pp;
801045c8:	29 d0                	sub    %edx,%eax
{
  int addr;
  if(argint(n, &addr) < 0)
    return -1;
  return fetchstr(addr, pp);
}
801045ca:	c9                   	leave  
801045cb:	c3                   	ret    
801045cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

801045d0 <syscall>:
[SYS_shm_close] sys_shm_close
};

void
syscall(void)
{
801045d0:	55                   	push   %ebp
801045d1:	89 e5                	mov    %esp,%ebp
801045d3:	56                   	push   %esi
801045d4:	53                   	push   %ebx
801045d5:	83 ec 10             	sub    $0x10,%esp
  int num;
  struct proc *curproc = myproc();
801045d8:	e8 b3 f0 ff ff       	call   80103690 <myproc>

  num = curproc->tf->eax;
801045dd:	8b 70 18             	mov    0x18(%eax),%esi

void
syscall(void)
{
  int num;
  struct proc *curproc = myproc();
801045e0:	89 c3                	mov    %eax,%ebx

  num = curproc->tf->eax;
801045e2:	8b 46 1c             	mov    0x1c(%esi),%eax
  if(num > 0 && num < NELEM(syscalls) && syscalls[num]) {
801045e5:	8d 50 ff             	lea    -0x1(%eax),%edx
801045e8:	83 fa 16             	cmp    $0x16,%edx
801045eb:	77 1b                	ja     80104608 <syscall+0x38>
801045ed:	8b 14 85 60 75 10 80 	mov    -0x7fef8aa0(,%eax,4),%edx
801045f4:	85 d2                	test   %edx,%edx
801045f6:	74 10                	je     80104608 <syscall+0x38>
    curproc->tf->eax = syscalls[num]();
801045f8:	ff d2                	call   *%edx
801045fa:	89 46 1c             	mov    %eax,0x1c(%esi)
  } else {
    cprintf("%d %s: unknown sys call %d\n",
            curproc->pid, curproc->name, num);
    curproc->tf->eax = -1;
  }
}
801045fd:	83 c4 10             	add    $0x10,%esp
80104600:	5b                   	pop    %ebx
80104601:	5e                   	pop    %esi
80104602:	5d                   	pop    %ebp
80104603:	c3                   	ret    
80104604:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

  num = curproc->tf->eax;
  if(num > 0 && num < NELEM(syscalls) && syscalls[num]) {
    curproc->tf->eax = syscalls[num]();
  } else {
    cprintf("%d %s: unknown sys call %d\n",
80104608:	89 44 24 0c          	mov    %eax,0xc(%esp)
            curproc->pid, curproc->name, num);
8010460c:	8d 43 6c             	lea    0x6c(%ebx),%eax
8010460f:	89 44 24 08          	mov    %eax,0x8(%esp)

  num = curproc->tf->eax;
  if(num > 0 && num < NELEM(syscalls) && syscalls[num]) {
    curproc->tf->eax = syscalls[num]();
  } else {
    cprintf("%d %s: unknown sys call %d\n",
80104613:	8b 43 10             	mov    0x10(%ebx),%eax
80104616:	c7 04 24 31 75 10 80 	movl   $0x80107531,(%esp)
8010461d:	89 44 24 04          	mov    %eax,0x4(%esp)
80104621:	e8 2a c0 ff ff       	call   80100650 <cprintf>
            curproc->pid, curproc->name, num);
    curproc->tf->eax = -1;
80104626:	8b 43 18             	mov    0x18(%ebx),%eax
80104629:	c7 40 1c ff ff ff ff 	movl   $0xffffffff,0x1c(%eax)
  }
}
80104630:	83 c4 10             	add    $0x10,%esp
80104633:	5b                   	pop    %ebx
80104634:	5e                   	pop    %esi
80104635:	5d                   	pop    %ebp
80104636:	c3                   	ret    
80104637:	66 90                	xchg   %ax,%ax
80104639:	66 90                	xchg   %ax,%ax
8010463b:	66 90                	xchg   %ax,%ax
8010463d:	66 90                	xchg   %ax,%ax
8010463f:	90                   	nop

80104640 <fdalloc>:
80104640:	55                   	push   %ebp
80104641:	89 e5                	mov    %esp,%ebp
80104643:	53                   	push   %ebx
80104644:	89 c3                	mov    %eax,%ebx
80104646:	83 ec 04             	sub    $0x4,%esp
80104649:	e8 42 f0 ff ff       	call   80103690 <myproc>
8010464e:	31 d2                	xor    %edx,%edx
80104650:	8b 4c 90 28          	mov    0x28(%eax,%edx,4),%ecx
80104654:	85 c9                	test   %ecx,%ecx
80104656:	74 18                	je     80104670 <fdalloc+0x30>
80104658:	83 c2 01             	add    $0x1,%edx
8010465b:	83 fa 10             	cmp    $0x10,%edx
8010465e:	75 f0                	jne    80104650 <fdalloc+0x10>
80104660:	83 c4 04             	add    $0x4,%esp
80104663:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104668:	5b                   	pop    %ebx
80104669:	5d                   	pop    %ebp
8010466a:	c3                   	ret    
8010466b:	90                   	nop
8010466c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80104670:	89 5c 90 28          	mov    %ebx,0x28(%eax,%edx,4)
80104674:	83 c4 04             	add    $0x4,%esp
80104677:	89 d0                	mov    %edx,%eax
80104679:	5b                   	pop    %ebx
8010467a:	5d                   	pop    %ebp
8010467b:	c3                   	ret    
8010467c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80104680 <create>:
80104680:	55                   	push   %ebp
80104681:	89 e5                	mov    %esp,%ebp
80104683:	57                   	push   %edi
80104684:	56                   	push   %esi
80104685:	53                   	push   %ebx
80104686:	83 ec 4c             	sub    $0x4c,%esp
80104689:	89 4d c0             	mov    %ecx,-0x40(%ebp)
8010468c:	8b 4d 08             	mov    0x8(%ebp),%ecx
8010468f:	8d 5d da             	lea    -0x26(%ebp),%ebx
80104692:	89 5c 24 04          	mov    %ebx,0x4(%esp)
80104696:	89 04 24             	mov    %eax,(%esp)
80104699:	89 55 c4             	mov    %edx,-0x3c(%ebp)
8010469c:	89 4d bc             	mov    %ecx,-0x44(%ebp)
8010469f:	e8 6c d8 ff ff       	call   80101f10 <nameiparent>
801046a4:	85 c0                	test   %eax,%eax
801046a6:	89 c7                	mov    %eax,%edi
801046a8:	0f 84 da 00 00 00    	je     80104788 <create+0x108>
801046ae:	89 04 24             	mov    %eax,(%esp)
801046b1:	e8 ea cf ff ff       	call   801016a0 <ilock>
801046b6:	8d 45 d4             	lea    -0x2c(%ebp),%eax
801046b9:	89 44 24 08          	mov    %eax,0x8(%esp)
801046bd:	89 5c 24 04          	mov    %ebx,0x4(%esp)
801046c1:	89 3c 24             	mov    %edi,(%esp)
801046c4:	e8 e7 d4 ff ff       	call   80101bb0 <dirlookup>
801046c9:	85 c0                	test   %eax,%eax
801046cb:	89 c6                	mov    %eax,%esi
801046cd:	74 41                	je     80104710 <create+0x90>
801046cf:	89 3c 24             	mov    %edi,(%esp)
801046d2:	e8 29 d2 ff ff       	call   80101900 <iunlockput>
801046d7:	89 34 24             	mov    %esi,(%esp)
801046da:	e8 c1 cf ff ff       	call   801016a0 <ilock>
801046df:	66 83 7d c4 02       	cmpw   $0x2,-0x3c(%ebp)
801046e4:	75 12                	jne    801046f8 <create+0x78>
801046e6:	66 83 7e 50 02       	cmpw   $0x2,0x50(%esi)
801046eb:	89 f0                	mov    %esi,%eax
801046ed:	75 09                	jne    801046f8 <create+0x78>
801046ef:	83 c4 4c             	add    $0x4c,%esp
801046f2:	5b                   	pop    %ebx
801046f3:	5e                   	pop    %esi
801046f4:	5f                   	pop    %edi
801046f5:	5d                   	pop    %ebp
801046f6:	c3                   	ret    
801046f7:	90                   	nop
801046f8:	89 34 24             	mov    %esi,(%esp)
801046fb:	e8 00 d2 ff ff       	call   80101900 <iunlockput>
80104700:	83 c4 4c             	add    $0x4c,%esp
80104703:	31 c0                	xor    %eax,%eax
80104705:	5b                   	pop    %ebx
80104706:	5e                   	pop    %esi
80104707:	5f                   	pop    %edi
80104708:	5d                   	pop    %ebp
80104709:	c3                   	ret    
8010470a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80104710:	0f bf 45 c4          	movswl -0x3c(%ebp),%eax
80104714:	89 44 24 04          	mov    %eax,0x4(%esp)
80104718:	8b 07                	mov    (%edi),%eax
8010471a:	89 04 24             	mov    %eax,(%esp)
8010471d:	e8 ee cd ff ff       	call   80101510 <ialloc>
80104722:	85 c0                	test   %eax,%eax
80104724:	89 c6                	mov    %eax,%esi
80104726:	0f 84 bf 00 00 00    	je     801047eb <create+0x16b>
8010472c:	89 04 24             	mov    %eax,(%esp)
8010472f:	e8 6c cf ff ff       	call   801016a0 <ilock>
80104734:	0f b7 45 c0          	movzwl -0x40(%ebp),%eax
80104738:	66 89 46 52          	mov    %ax,0x52(%esi)
8010473c:	0f b7 45 bc          	movzwl -0x44(%ebp),%eax
80104740:	66 89 46 54          	mov    %ax,0x54(%esi)
80104744:	b8 01 00 00 00       	mov    $0x1,%eax
80104749:	66 89 46 56          	mov    %ax,0x56(%esi)
8010474d:	89 34 24             	mov    %esi,(%esp)
80104750:	e8 8b ce ff ff       	call   801015e0 <iupdate>
80104755:	66 83 7d c4 01       	cmpw   $0x1,-0x3c(%ebp)
8010475a:	74 34                	je     80104790 <create+0x110>
8010475c:	8b 46 04             	mov    0x4(%esi),%eax
8010475f:	89 5c 24 04          	mov    %ebx,0x4(%esp)
80104763:	89 3c 24             	mov    %edi,(%esp)
80104766:	89 44 24 08          	mov    %eax,0x8(%esp)
8010476a:	e8 a1 d6 ff ff       	call   80101e10 <dirlink>
8010476f:	85 c0                	test   %eax,%eax
80104771:	78 6c                	js     801047df <create+0x15f>
80104773:	89 3c 24             	mov    %edi,(%esp)
80104776:	e8 85 d1 ff ff       	call   80101900 <iunlockput>
8010477b:	83 c4 4c             	add    $0x4c,%esp
8010477e:	89 f0                	mov    %esi,%eax
80104780:	5b                   	pop    %ebx
80104781:	5e                   	pop    %esi
80104782:	5f                   	pop    %edi
80104783:	5d                   	pop    %ebp
80104784:	c3                   	ret    
80104785:	8d 76 00             	lea    0x0(%esi),%esi
80104788:	31 c0                	xor    %eax,%eax
8010478a:	e9 60 ff ff ff       	jmp    801046ef <create+0x6f>
8010478f:	90                   	nop
80104790:	66 83 47 56 01       	addw   $0x1,0x56(%edi)
80104795:	89 3c 24             	mov    %edi,(%esp)
80104798:	e8 43 ce ff ff       	call   801015e0 <iupdate>
8010479d:	8b 46 04             	mov    0x4(%esi),%eax
801047a0:	c7 44 24 04 dc 75 10 	movl   $0x801075dc,0x4(%esp)
801047a7:	80 
801047a8:	89 34 24             	mov    %esi,(%esp)
801047ab:	89 44 24 08          	mov    %eax,0x8(%esp)
801047af:	e8 5c d6 ff ff       	call   80101e10 <dirlink>
801047b4:	85 c0                	test   %eax,%eax
801047b6:	78 1b                	js     801047d3 <create+0x153>
801047b8:	8b 47 04             	mov    0x4(%edi),%eax
801047bb:	c7 44 24 04 db 75 10 	movl   $0x801075db,0x4(%esp)
801047c2:	80 
801047c3:	89 34 24             	mov    %esi,(%esp)
801047c6:	89 44 24 08          	mov    %eax,0x8(%esp)
801047ca:	e8 41 d6 ff ff       	call   80101e10 <dirlink>
801047cf:	85 c0                	test   %eax,%eax
801047d1:	79 89                	jns    8010475c <create+0xdc>
801047d3:	c7 04 24 cf 75 10 80 	movl   $0x801075cf,(%esp)
801047da:	e8 81 bb ff ff       	call   80100360 <panic>
801047df:	c7 04 24 de 75 10 80 	movl   $0x801075de,(%esp)
801047e6:	e8 75 bb ff ff       	call   80100360 <panic>
801047eb:	c7 04 24 c0 75 10 80 	movl   $0x801075c0,(%esp)
801047f2:	e8 69 bb ff ff       	call   80100360 <panic>
801047f7:	89 f6                	mov    %esi,%esi
801047f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

80104800 <argfd.constprop.0>:
80104800:	55                   	push   %ebp
80104801:	89 e5                	mov    %esp,%ebp
80104803:	56                   	push   %esi
80104804:	89 c6                	mov    %eax,%esi
80104806:	53                   	push   %ebx
80104807:	89 d3                	mov    %edx,%ebx
80104809:	83 ec 20             	sub    $0x20,%esp
8010480c:	8d 45 f4             	lea    -0xc(%ebp),%eax
8010480f:	89 44 24 04          	mov    %eax,0x4(%esp)
80104813:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
8010481a:	e8 01 fd ff ff       	call   80104520 <argint>
8010481f:	85 c0                	test   %eax,%eax
80104821:	78 2d                	js     80104850 <argfd.constprop.0+0x50>
80104823:	83 7d f4 0f          	cmpl   $0xf,-0xc(%ebp)
80104827:	77 27                	ja     80104850 <argfd.constprop.0+0x50>
80104829:	e8 62 ee ff ff       	call   80103690 <myproc>
8010482e:	8b 55 f4             	mov    -0xc(%ebp),%edx
80104831:	8b 44 90 28          	mov    0x28(%eax,%edx,4),%eax
80104835:	85 c0                	test   %eax,%eax
80104837:	74 17                	je     80104850 <argfd.constprop.0+0x50>
80104839:	85 f6                	test   %esi,%esi
8010483b:	74 02                	je     8010483f <argfd.constprop.0+0x3f>
8010483d:	89 16                	mov    %edx,(%esi)
8010483f:	85 db                	test   %ebx,%ebx
80104841:	74 1d                	je     80104860 <argfd.constprop.0+0x60>
80104843:	89 03                	mov    %eax,(%ebx)
80104845:	31 c0                	xor    %eax,%eax
80104847:	83 c4 20             	add    $0x20,%esp
8010484a:	5b                   	pop    %ebx
8010484b:	5e                   	pop    %esi
8010484c:	5d                   	pop    %ebp
8010484d:	c3                   	ret    
8010484e:	66 90                	xchg   %ax,%ax
80104850:	83 c4 20             	add    $0x20,%esp
80104853:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104858:	5b                   	pop    %ebx
80104859:	5e                   	pop    %esi
8010485a:	5d                   	pop    %ebp
8010485b:	c3                   	ret    
8010485c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80104860:	31 c0                	xor    %eax,%eax
80104862:	eb e3                	jmp    80104847 <argfd.constprop.0+0x47>
80104864:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
8010486a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

80104870 <sys_dup>:
80104870:	55                   	push   %ebp
80104871:	31 c0                	xor    %eax,%eax
80104873:	89 e5                	mov    %esp,%ebp
80104875:	53                   	push   %ebx
80104876:	83 ec 24             	sub    $0x24,%esp
80104879:	8d 55 f4             	lea    -0xc(%ebp),%edx
8010487c:	e8 7f ff ff ff       	call   80104800 <argfd.constprop.0>
80104881:	85 c0                	test   %eax,%eax
80104883:	78 23                	js     801048a8 <sys_dup+0x38>
80104885:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104888:	e8 b3 fd ff ff       	call   80104640 <fdalloc>
8010488d:	85 c0                	test   %eax,%eax
8010488f:	89 c3                	mov    %eax,%ebx
80104891:	78 15                	js     801048a8 <sys_dup+0x38>
80104893:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104896:	89 04 24             	mov    %eax,(%esp)
80104899:	e8 22 c5 ff ff       	call   80100dc0 <filedup>
8010489e:	89 d8                	mov    %ebx,%eax
801048a0:	83 c4 24             	add    $0x24,%esp
801048a3:	5b                   	pop    %ebx
801048a4:	5d                   	pop    %ebp
801048a5:	c3                   	ret    
801048a6:	66 90                	xchg   %ax,%ax
801048a8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801048ad:	eb f1                	jmp    801048a0 <sys_dup+0x30>
801048af:	90                   	nop

801048b0 <sys_read>:
801048b0:	55                   	push   %ebp
801048b1:	31 c0                	xor    %eax,%eax
801048b3:	89 e5                	mov    %esp,%ebp
801048b5:	83 ec 28             	sub    $0x28,%esp
801048b8:	8d 55 ec             	lea    -0x14(%ebp),%edx
801048bb:	e8 40 ff ff ff       	call   80104800 <argfd.constprop.0>
801048c0:	85 c0                	test   %eax,%eax
801048c2:	78 54                	js     80104918 <sys_read+0x68>
801048c4:	8d 45 f0             	lea    -0x10(%ebp),%eax
801048c7:	89 44 24 04          	mov    %eax,0x4(%esp)
801048cb:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
801048d2:	e8 49 fc ff ff       	call   80104520 <argint>
801048d7:	85 c0                	test   %eax,%eax
801048d9:	78 3d                	js     80104918 <sys_read+0x68>
801048db:	8b 45 f0             	mov    -0x10(%ebp),%eax
801048de:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
801048e5:	89 44 24 08          	mov    %eax,0x8(%esp)
801048e9:	8d 45 f4             	lea    -0xc(%ebp),%eax
801048ec:	89 44 24 04          	mov    %eax,0x4(%esp)
801048f0:	e8 5b fc ff ff       	call   80104550 <argptr>
801048f5:	85 c0                	test   %eax,%eax
801048f7:	78 1f                	js     80104918 <sys_read+0x68>
801048f9:	8b 45 f0             	mov    -0x10(%ebp),%eax
801048fc:	89 44 24 08          	mov    %eax,0x8(%esp)
80104900:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104903:	89 44 24 04          	mov    %eax,0x4(%esp)
80104907:	8b 45 ec             	mov    -0x14(%ebp),%eax
8010490a:	89 04 24             	mov    %eax,(%esp)
8010490d:	e8 0e c6 ff ff       	call   80100f20 <fileread>
80104912:	c9                   	leave  
80104913:	c3                   	ret    
80104914:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80104918:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010491d:	c9                   	leave  
8010491e:	c3                   	ret    
8010491f:	90                   	nop

80104920 <sys_write>:
80104920:	55                   	push   %ebp
80104921:	31 c0                	xor    %eax,%eax
80104923:	89 e5                	mov    %esp,%ebp
80104925:	83 ec 28             	sub    $0x28,%esp
80104928:	8d 55 ec             	lea    -0x14(%ebp),%edx
8010492b:	e8 d0 fe ff ff       	call   80104800 <argfd.constprop.0>
80104930:	85 c0                	test   %eax,%eax
80104932:	78 54                	js     80104988 <sys_write+0x68>
80104934:	8d 45 f0             	lea    -0x10(%ebp),%eax
80104937:	89 44 24 04          	mov    %eax,0x4(%esp)
8010493b:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
80104942:	e8 d9 fb ff ff       	call   80104520 <argint>
80104947:	85 c0                	test   %eax,%eax
80104949:	78 3d                	js     80104988 <sys_write+0x68>
8010494b:	8b 45 f0             	mov    -0x10(%ebp),%eax
8010494e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
80104955:	89 44 24 08          	mov    %eax,0x8(%esp)
80104959:	8d 45 f4             	lea    -0xc(%ebp),%eax
8010495c:	89 44 24 04          	mov    %eax,0x4(%esp)
80104960:	e8 eb fb ff ff       	call   80104550 <argptr>
80104965:	85 c0                	test   %eax,%eax
80104967:	78 1f                	js     80104988 <sys_write+0x68>
80104969:	8b 45 f0             	mov    -0x10(%ebp),%eax
8010496c:	89 44 24 08          	mov    %eax,0x8(%esp)
80104970:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104973:	89 44 24 04          	mov    %eax,0x4(%esp)
80104977:	8b 45 ec             	mov    -0x14(%ebp),%eax
8010497a:	89 04 24             	mov    %eax,(%esp)
8010497d:	e8 3e c6 ff ff       	call   80100fc0 <filewrite>
80104982:	c9                   	leave  
80104983:	c3                   	ret    
80104984:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80104988:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010498d:	c9                   	leave  
8010498e:	c3                   	ret    
8010498f:	90                   	nop

80104990 <sys_close>:
80104990:	55                   	push   %ebp
80104991:	89 e5                	mov    %esp,%ebp
80104993:	83 ec 28             	sub    $0x28,%esp
80104996:	8d 55 f4             	lea    -0xc(%ebp),%edx
80104999:	8d 45 f0             	lea    -0x10(%ebp),%eax
8010499c:	e8 5f fe ff ff       	call   80104800 <argfd.constprop.0>
801049a1:	85 c0                	test   %eax,%eax
801049a3:	78 23                	js     801049c8 <sys_close+0x38>
801049a5:	e8 e6 ec ff ff       	call   80103690 <myproc>
801049aa:	8b 55 f0             	mov    -0x10(%ebp),%edx
801049ad:	c7 44 90 28 00 00 00 	movl   $0x0,0x28(%eax,%edx,4)
801049b4:	00 
801049b5:	8b 45 f4             	mov    -0xc(%ebp),%eax
801049b8:	89 04 24             	mov    %eax,(%esp)
801049bb:	e8 50 c4 ff ff       	call   80100e10 <fileclose>
801049c0:	31 c0                	xor    %eax,%eax
801049c2:	c9                   	leave  
801049c3:	c3                   	ret    
801049c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
801049c8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801049cd:	c9                   	leave  
801049ce:	c3                   	ret    
801049cf:	90                   	nop

801049d0 <sys_fstat>:
801049d0:	55                   	push   %ebp
801049d1:	31 c0                	xor    %eax,%eax
801049d3:	89 e5                	mov    %esp,%ebp
801049d5:	83 ec 28             	sub    $0x28,%esp
801049d8:	8d 55 f0             	lea    -0x10(%ebp),%edx
801049db:	e8 20 fe ff ff       	call   80104800 <argfd.constprop.0>
801049e0:	85 c0                	test   %eax,%eax
801049e2:	78 34                	js     80104a18 <sys_fstat+0x48>
801049e4:	8d 45 f4             	lea    -0xc(%ebp),%eax
801049e7:	c7 44 24 08 14 00 00 	movl   $0x14,0x8(%esp)
801049ee:	00 
801049ef:	89 44 24 04          	mov    %eax,0x4(%esp)
801049f3:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
801049fa:	e8 51 fb ff ff       	call   80104550 <argptr>
801049ff:	85 c0                	test   %eax,%eax
80104a01:	78 15                	js     80104a18 <sys_fstat+0x48>
80104a03:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104a06:	89 44 24 04          	mov    %eax,0x4(%esp)
80104a0a:	8b 45 f0             	mov    -0x10(%ebp),%eax
80104a0d:	89 04 24             	mov    %eax,(%esp)
80104a10:	e8 bb c4 ff ff       	call   80100ed0 <filestat>
80104a15:	c9                   	leave  
80104a16:	c3                   	ret    
80104a17:	90                   	nop
80104a18:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104a1d:	c9                   	leave  
80104a1e:	c3                   	ret    
80104a1f:	90                   	nop

80104a20 <sys_link>:
80104a20:	55                   	push   %ebp
80104a21:	89 e5                	mov    %esp,%ebp
80104a23:	57                   	push   %edi
80104a24:	56                   	push   %esi
80104a25:	53                   	push   %ebx
80104a26:	83 ec 3c             	sub    $0x3c,%esp
80104a29:	8d 45 d4             	lea    -0x2c(%ebp),%eax
80104a2c:	89 44 24 04          	mov    %eax,0x4(%esp)
80104a30:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
80104a37:	e8 44 fb ff ff       	call   80104580 <argstr>
80104a3c:	85 c0                	test   %eax,%eax
80104a3e:	0f 88 e6 00 00 00    	js     80104b2a <sys_link+0x10a>
80104a44:	8d 45 d0             	lea    -0x30(%ebp),%eax
80104a47:	89 44 24 04          	mov    %eax,0x4(%esp)
80104a4b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
80104a52:	e8 29 fb ff ff       	call   80104580 <argstr>
80104a57:	85 c0                	test   %eax,%eax
80104a59:	0f 88 cb 00 00 00    	js     80104b2a <sys_link+0x10a>
80104a5f:	e8 9c e0 ff ff       	call   80102b00 <begin_op>
80104a64:	8b 45 d4             	mov    -0x2c(%ebp),%eax
80104a67:	89 04 24             	mov    %eax,(%esp)
80104a6a:	e8 81 d4 ff ff       	call   80101ef0 <namei>
80104a6f:	85 c0                	test   %eax,%eax
80104a71:	89 c3                	mov    %eax,%ebx
80104a73:	0f 84 ac 00 00 00    	je     80104b25 <sys_link+0x105>
80104a79:	89 04 24             	mov    %eax,(%esp)
80104a7c:	e8 1f cc ff ff       	call   801016a0 <ilock>
80104a81:	66 83 7b 50 01       	cmpw   $0x1,0x50(%ebx)
80104a86:	0f 84 91 00 00 00    	je     80104b1d <sys_link+0xfd>
80104a8c:	66 83 43 56 01       	addw   $0x1,0x56(%ebx)
80104a91:	8d 7d da             	lea    -0x26(%ebp),%edi
80104a94:	89 1c 24             	mov    %ebx,(%esp)
80104a97:	e8 44 cb ff ff       	call   801015e0 <iupdate>
80104a9c:	89 1c 24             	mov    %ebx,(%esp)
80104a9f:	e8 dc cc ff ff       	call   80101780 <iunlock>
80104aa4:	8b 45 d0             	mov    -0x30(%ebp),%eax
80104aa7:	89 7c 24 04          	mov    %edi,0x4(%esp)
80104aab:	89 04 24             	mov    %eax,(%esp)
80104aae:	e8 5d d4 ff ff       	call   80101f10 <nameiparent>
80104ab3:	85 c0                	test   %eax,%eax
80104ab5:	89 c6                	mov    %eax,%esi
80104ab7:	74 4f                	je     80104b08 <sys_link+0xe8>
80104ab9:	89 04 24             	mov    %eax,(%esp)
80104abc:	e8 df cb ff ff       	call   801016a0 <ilock>
80104ac1:	8b 03                	mov    (%ebx),%eax
80104ac3:	39 06                	cmp    %eax,(%esi)
80104ac5:	75 39                	jne    80104b00 <sys_link+0xe0>
80104ac7:	8b 43 04             	mov    0x4(%ebx),%eax
80104aca:	89 7c 24 04          	mov    %edi,0x4(%esp)
80104ace:	89 34 24             	mov    %esi,(%esp)
80104ad1:	89 44 24 08          	mov    %eax,0x8(%esp)
80104ad5:	e8 36 d3 ff ff       	call   80101e10 <dirlink>
80104ada:	85 c0                	test   %eax,%eax
80104adc:	78 22                	js     80104b00 <sys_link+0xe0>
80104ade:	89 34 24             	mov    %esi,(%esp)
80104ae1:	e8 1a ce ff ff       	call   80101900 <iunlockput>
80104ae6:	89 1c 24             	mov    %ebx,(%esp)
80104ae9:	e8 d2 cc ff ff       	call   801017c0 <iput>
80104aee:	e8 7d e0 ff ff       	call   80102b70 <end_op>
80104af3:	83 c4 3c             	add    $0x3c,%esp
80104af6:	31 c0                	xor    %eax,%eax
80104af8:	5b                   	pop    %ebx
80104af9:	5e                   	pop    %esi
80104afa:	5f                   	pop    %edi
80104afb:	5d                   	pop    %ebp
80104afc:	c3                   	ret    
80104afd:	8d 76 00             	lea    0x0(%esi),%esi
80104b00:	89 34 24             	mov    %esi,(%esp)
80104b03:	e8 f8 cd ff ff       	call   80101900 <iunlockput>
80104b08:	89 1c 24             	mov    %ebx,(%esp)
80104b0b:	e8 90 cb ff ff       	call   801016a0 <ilock>
80104b10:	66 83 6b 56 01       	subw   $0x1,0x56(%ebx)
80104b15:	89 1c 24             	mov    %ebx,(%esp)
80104b18:	e8 c3 ca ff ff       	call   801015e0 <iupdate>
80104b1d:	89 1c 24             	mov    %ebx,(%esp)
80104b20:	e8 db cd ff ff       	call   80101900 <iunlockput>
80104b25:	e8 46 e0 ff ff       	call   80102b70 <end_op>
80104b2a:	83 c4 3c             	add    $0x3c,%esp
80104b2d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104b32:	5b                   	pop    %ebx
80104b33:	5e                   	pop    %esi
80104b34:	5f                   	pop    %edi
80104b35:	5d                   	pop    %ebp
80104b36:	c3                   	ret    
80104b37:	89 f6                	mov    %esi,%esi
80104b39:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

80104b40 <sys_unlink>:
80104b40:	55                   	push   %ebp
80104b41:	89 e5                	mov    %esp,%ebp
80104b43:	57                   	push   %edi
80104b44:	56                   	push   %esi
80104b45:	53                   	push   %ebx
80104b46:	83 ec 5c             	sub    $0x5c,%esp
80104b49:	8d 45 c0             	lea    -0x40(%ebp),%eax
80104b4c:	89 44 24 04          	mov    %eax,0x4(%esp)
80104b50:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
80104b57:	e8 24 fa ff ff       	call   80104580 <argstr>
80104b5c:	85 c0                	test   %eax,%eax
80104b5e:	0f 88 76 01 00 00    	js     80104cda <sys_unlink+0x19a>
80104b64:	e8 97 df ff ff       	call   80102b00 <begin_op>
80104b69:	8b 45 c0             	mov    -0x40(%ebp),%eax
80104b6c:	8d 5d ca             	lea    -0x36(%ebp),%ebx
80104b6f:	89 5c 24 04          	mov    %ebx,0x4(%esp)
80104b73:	89 04 24             	mov    %eax,(%esp)
80104b76:	e8 95 d3 ff ff       	call   80101f10 <nameiparent>
80104b7b:	85 c0                	test   %eax,%eax
80104b7d:	89 45 b4             	mov    %eax,-0x4c(%ebp)
80104b80:	0f 84 4f 01 00 00    	je     80104cd5 <sys_unlink+0x195>
80104b86:	8b 75 b4             	mov    -0x4c(%ebp),%esi
80104b89:	89 34 24             	mov    %esi,(%esp)
80104b8c:	e8 0f cb ff ff       	call   801016a0 <ilock>
80104b91:	c7 44 24 04 dc 75 10 	movl   $0x801075dc,0x4(%esp)
80104b98:	80 
80104b99:	89 1c 24             	mov    %ebx,(%esp)
80104b9c:	e8 df cf ff ff       	call   80101b80 <namecmp>
80104ba1:	85 c0                	test   %eax,%eax
80104ba3:	0f 84 21 01 00 00    	je     80104cca <sys_unlink+0x18a>
80104ba9:	c7 44 24 04 db 75 10 	movl   $0x801075db,0x4(%esp)
80104bb0:	80 
80104bb1:	89 1c 24             	mov    %ebx,(%esp)
80104bb4:	e8 c7 cf ff ff       	call   80101b80 <namecmp>
80104bb9:	85 c0                	test   %eax,%eax
80104bbb:	0f 84 09 01 00 00    	je     80104cca <sys_unlink+0x18a>
80104bc1:	8d 45 c4             	lea    -0x3c(%ebp),%eax
80104bc4:	89 5c 24 04          	mov    %ebx,0x4(%esp)
80104bc8:	89 44 24 08          	mov    %eax,0x8(%esp)
80104bcc:	89 34 24             	mov    %esi,(%esp)
80104bcf:	e8 dc cf ff ff       	call   80101bb0 <dirlookup>
80104bd4:	85 c0                	test   %eax,%eax
80104bd6:	89 c3                	mov    %eax,%ebx
80104bd8:	0f 84 ec 00 00 00    	je     80104cca <sys_unlink+0x18a>
80104bde:	89 04 24             	mov    %eax,(%esp)
80104be1:	e8 ba ca ff ff       	call   801016a0 <ilock>
80104be6:	66 83 7b 56 00       	cmpw   $0x0,0x56(%ebx)
80104beb:	0f 8e 24 01 00 00    	jle    80104d15 <sys_unlink+0x1d5>
80104bf1:	66 83 7b 50 01       	cmpw   $0x1,0x50(%ebx)
80104bf6:	8d 75 d8             	lea    -0x28(%ebp),%esi
80104bf9:	74 7d                	je     80104c78 <sys_unlink+0x138>
80104bfb:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
80104c02:	00 
80104c03:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
80104c0a:	00 
80104c0b:	89 34 24             	mov    %esi,(%esp)
80104c0e:	e8 5d f6 ff ff       	call   80104270 <memset>
80104c13:	8b 45 c4             	mov    -0x3c(%ebp),%eax
80104c16:	c7 44 24 0c 10 00 00 	movl   $0x10,0xc(%esp)
80104c1d:	00 
80104c1e:	89 74 24 04          	mov    %esi,0x4(%esp)
80104c22:	89 44 24 08          	mov    %eax,0x8(%esp)
80104c26:	8b 45 b4             	mov    -0x4c(%ebp),%eax
80104c29:	89 04 24             	mov    %eax,(%esp)
80104c2c:	e8 1f ce ff ff       	call   80101a50 <writei>
80104c31:	83 f8 10             	cmp    $0x10,%eax
80104c34:	0f 85 cf 00 00 00    	jne    80104d09 <sys_unlink+0x1c9>
80104c3a:	66 83 7b 50 01       	cmpw   $0x1,0x50(%ebx)
80104c3f:	0f 84 a3 00 00 00    	je     80104ce8 <sys_unlink+0x1a8>
80104c45:	8b 45 b4             	mov    -0x4c(%ebp),%eax
80104c48:	89 04 24             	mov    %eax,(%esp)
80104c4b:	e8 b0 cc ff ff       	call   80101900 <iunlockput>
80104c50:	66 83 6b 56 01       	subw   $0x1,0x56(%ebx)
80104c55:	89 1c 24             	mov    %ebx,(%esp)
80104c58:	e8 83 c9 ff ff       	call   801015e0 <iupdate>
80104c5d:	89 1c 24             	mov    %ebx,(%esp)
80104c60:	e8 9b cc ff ff       	call   80101900 <iunlockput>
80104c65:	e8 06 df ff ff       	call   80102b70 <end_op>
80104c6a:	83 c4 5c             	add    $0x5c,%esp
80104c6d:	31 c0                	xor    %eax,%eax
80104c6f:	5b                   	pop    %ebx
80104c70:	5e                   	pop    %esi
80104c71:	5f                   	pop    %edi
80104c72:	5d                   	pop    %ebp
80104c73:	c3                   	ret    
80104c74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80104c78:	83 7b 58 20          	cmpl   $0x20,0x58(%ebx)
80104c7c:	0f 86 79 ff ff ff    	jbe    80104bfb <sys_unlink+0xbb>
80104c82:	bf 20 00 00 00       	mov    $0x20,%edi
80104c87:	eb 15                	jmp    80104c9e <sys_unlink+0x15e>
80104c89:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80104c90:	8d 57 10             	lea    0x10(%edi),%edx
80104c93:	3b 53 58             	cmp    0x58(%ebx),%edx
80104c96:	0f 83 5f ff ff ff    	jae    80104bfb <sys_unlink+0xbb>
80104c9c:	89 d7                	mov    %edx,%edi
80104c9e:	c7 44 24 0c 10 00 00 	movl   $0x10,0xc(%esp)
80104ca5:	00 
80104ca6:	89 7c 24 08          	mov    %edi,0x8(%esp)
80104caa:	89 74 24 04          	mov    %esi,0x4(%esp)
80104cae:	89 1c 24             	mov    %ebx,(%esp)
80104cb1:	e8 9a cc ff ff       	call   80101950 <readi>
80104cb6:	83 f8 10             	cmp    $0x10,%eax
80104cb9:	75 42                	jne    80104cfd <sys_unlink+0x1bd>
80104cbb:	66 83 7d d8 00       	cmpw   $0x0,-0x28(%ebp)
80104cc0:	74 ce                	je     80104c90 <sys_unlink+0x150>
80104cc2:	89 1c 24             	mov    %ebx,(%esp)
80104cc5:	e8 36 cc ff ff       	call   80101900 <iunlockput>
80104cca:	8b 45 b4             	mov    -0x4c(%ebp),%eax
80104ccd:	89 04 24             	mov    %eax,(%esp)
80104cd0:	e8 2b cc ff ff       	call   80101900 <iunlockput>
80104cd5:	e8 96 de ff ff       	call   80102b70 <end_op>
80104cda:	83 c4 5c             	add    $0x5c,%esp
80104cdd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104ce2:	5b                   	pop    %ebx
80104ce3:	5e                   	pop    %esi
80104ce4:	5f                   	pop    %edi
80104ce5:	5d                   	pop    %ebp
80104ce6:	c3                   	ret    
80104ce7:	90                   	nop
80104ce8:	8b 45 b4             	mov    -0x4c(%ebp),%eax
80104ceb:	66 83 68 56 01       	subw   $0x1,0x56(%eax)
80104cf0:	89 04 24             	mov    %eax,(%esp)
80104cf3:	e8 e8 c8 ff ff       	call   801015e0 <iupdate>
80104cf8:	e9 48 ff ff ff       	jmp    80104c45 <sys_unlink+0x105>
80104cfd:	c7 04 24 00 76 10 80 	movl   $0x80107600,(%esp)
80104d04:	e8 57 b6 ff ff       	call   80100360 <panic>
80104d09:	c7 04 24 12 76 10 80 	movl   $0x80107612,(%esp)
80104d10:	e8 4b b6 ff ff       	call   80100360 <panic>
80104d15:	c7 04 24 ee 75 10 80 	movl   $0x801075ee,(%esp)
80104d1c:	e8 3f b6 ff ff       	call   80100360 <panic>
80104d21:	eb 0d                	jmp    80104d30 <sys_open>
80104d23:	90                   	nop
80104d24:	90                   	nop
80104d25:	90                   	nop
80104d26:	90                   	nop
80104d27:	90                   	nop
80104d28:	90                   	nop
80104d29:	90                   	nop
80104d2a:	90                   	nop
80104d2b:	90                   	nop
80104d2c:	90                   	nop
80104d2d:	90                   	nop
80104d2e:	90                   	nop
80104d2f:	90                   	nop

80104d30 <sys_open>:
80104d30:	55                   	push   %ebp
80104d31:	89 e5                	mov    %esp,%ebp
80104d33:	57                   	push   %edi
80104d34:	56                   	push   %esi
80104d35:	53                   	push   %ebx
80104d36:	83 ec 2c             	sub    $0x2c,%esp
80104d39:	8d 45 e0             	lea    -0x20(%ebp),%eax
80104d3c:	89 44 24 04          	mov    %eax,0x4(%esp)
80104d40:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
80104d47:	e8 34 f8 ff ff       	call   80104580 <argstr>
80104d4c:	85 c0                	test   %eax,%eax
80104d4e:	0f 88 d1 00 00 00    	js     80104e25 <sys_open+0xf5>
80104d54:	8d 45 e4             	lea    -0x1c(%ebp),%eax
80104d57:	89 44 24 04          	mov    %eax,0x4(%esp)
80104d5b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
80104d62:	e8 b9 f7 ff ff       	call   80104520 <argint>
80104d67:	85 c0                	test   %eax,%eax
80104d69:	0f 88 b6 00 00 00    	js     80104e25 <sys_open+0xf5>
80104d6f:	e8 8c dd ff ff       	call   80102b00 <begin_op>
80104d74:	f6 45 e5 02          	testb  $0x2,-0x1b(%ebp)
80104d78:	0f 85 82 00 00 00    	jne    80104e00 <sys_open+0xd0>
80104d7e:	8b 45 e0             	mov    -0x20(%ebp),%eax
80104d81:	89 04 24             	mov    %eax,(%esp)
80104d84:	e8 67 d1 ff ff       	call   80101ef0 <namei>
80104d89:	85 c0                	test   %eax,%eax
80104d8b:	89 c6                	mov    %eax,%esi
80104d8d:	0f 84 8d 00 00 00    	je     80104e20 <sys_open+0xf0>
80104d93:	89 04 24             	mov    %eax,(%esp)
80104d96:	e8 05 c9 ff ff       	call   801016a0 <ilock>
80104d9b:	66 83 7e 50 01       	cmpw   $0x1,0x50(%esi)
80104da0:	0f 84 92 00 00 00    	je     80104e38 <sys_open+0x108>
80104da6:	e8 a5 bf ff ff       	call   80100d50 <filealloc>
80104dab:	85 c0                	test   %eax,%eax
80104dad:	89 c3                	mov    %eax,%ebx
80104daf:	0f 84 93 00 00 00    	je     80104e48 <sys_open+0x118>
80104db5:	e8 86 f8 ff ff       	call   80104640 <fdalloc>
80104dba:	85 c0                	test   %eax,%eax
80104dbc:	89 c7                	mov    %eax,%edi
80104dbe:	0f 88 94 00 00 00    	js     80104e58 <sys_open+0x128>
80104dc4:	89 34 24             	mov    %esi,(%esp)
80104dc7:	e8 b4 c9 ff ff       	call   80101780 <iunlock>
80104dcc:	e8 9f dd ff ff       	call   80102b70 <end_op>
80104dd1:	c7 03 02 00 00 00    	movl   $0x2,(%ebx)
80104dd7:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80104dda:	89 73 10             	mov    %esi,0x10(%ebx)
80104ddd:	c7 43 14 00 00 00 00 	movl   $0x0,0x14(%ebx)
80104de4:	89 c2                	mov    %eax,%edx
80104de6:	83 e2 01             	and    $0x1,%edx
80104de9:	83 f2 01             	xor    $0x1,%edx
80104dec:	a8 03                	test   $0x3,%al
80104dee:	88 53 08             	mov    %dl,0x8(%ebx)
80104df1:	89 f8                	mov    %edi,%eax
80104df3:	0f 95 43 09          	setne  0x9(%ebx)
80104df7:	83 c4 2c             	add    $0x2c,%esp
80104dfa:	5b                   	pop    %ebx
80104dfb:	5e                   	pop    %esi
80104dfc:	5f                   	pop    %edi
80104dfd:	5d                   	pop    %ebp
80104dfe:	c3                   	ret    
80104dff:	90                   	nop
80104e00:	8b 45 e0             	mov    -0x20(%ebp),%eax
80104e03:	31 c9                	xor    %ecx,%ecx
80104e05:	ba 02 00 00 00       	mov    $0x2,%edx
80104e0a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
80104e11:	e8 6a f8 ff ff       	call   80104680 <create>
80104e16:	85 c0                	test   %eax,%eax
80104e18:	89 c6                	mov    %eax,%esi
80104e1a:	75 8a                	jne    80104da6 <sys_open+0x76>
80104e1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80104e20:	e8 4b dd ff ff       	call   80102b70 <end_op>
80104e25:	83 c4 2c             	add    $0x2c,%esp
80104e28:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104e2d:	5b                   	pop    %ebx
80104e2e:	5e                   	pop    %esi
80104e2f:	5f                   	pop    %edi
80104e30:	5d                   	pop    %ebp
80104e31:	c3                   	ret    
80104e32:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80104e38:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80104e3b:	85 c0                	test   %eax,%eax
80104e3d:	0f 84 63 ff ff ff    	je     80104da6 <sys_open+0x76>
80104e43:	90                   	nop
80104e44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80104e48:	89 34 24             	mov    %esi,(%esp)
80104e4b:	e8 b0 ca ff ff       	call   80101900 <iunlockput>
80104e50:	eb ce                	jmp    80104e20 <sys_open+0xf0>
80104e52:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80104e58:	89 1c 24             	mov    %ebx,(%esp)
80104e5b:	e8 b0 bf ff ff       	call   80100e10 <fileclose>
80104e60:	eb e6                	jmp    80104e48 <sys_open+0x118>
80104e62:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80104e69:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

80104e70 <sys_mkdir>:
80104e70:	55                   	push   %ebp
80104e71:	89 e5                	mov    %esp,%ebp
80104e73:	83 ec 28             	sub    $0x28,%esp
80104e76:	e8 85 dc ff ff       	call   80102b00 <begin_op>
80104e7b:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104e7e:	89 44 24 04          	mov    %eax,0x4(%esp)
80104e82:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
80104e89:	e8 f2 f6 ff ff       	call   80104580 <argstr>
80104e8e:	85 c0                	test   %eax,%eax
80104e90:	78 2e                	js     80104ec0 <sys_mkdir+0x50>
80104e92:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104e95:	31 c9                	xor    %ecx,%ecx
80104e97:	ba 01 00 00 00       	mov    $0x1,%edx
80104e9c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
80104ea3:	e8 d8 f7 ff ff       	call   80104680 <create>
80104ea8:	85 c0                	test   %eax,%eax
80104eaa:	74 14                	je     80104ec0 <sys_mkdir+0x50>
80104eac:	89 04 24             	mov    %eax,(%esp)
80104eaf:	e8 4c ca ff ff       	call   80101900 <iunlockput>
80104eb4:	e8 b7 dc ff ff       	call   80102b70 <end_op>
80104eb9:	31 c0                	xor    %eax,%eax
80104ebb:	c9                   	leave  
80104ebc:	c3                   	ret    
80104ebd:	8d 76 00             	lea    0x0(%esi),%esi
80104ec0:	e8 ab dc ff ff       	call   80102b70 <end_op>
80104ec5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104eca:	c9                   	leave  
80104ecb:	c3                   	ret    
80104ecc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80104ed0 <sys_mknod>:
80104ed0:	55                   	push   %ebp
80104ed1:	89 e5                	mov    %esp,%ebp
80104ed3:	83 ec 28             	sub    $0x28,%esp
80104ed6:	e8 25 dc ff ff       	call   80102b00 <begin_op>
80104edb:	8d 45 ec             	lea    -0x14(%ebp),%eax
80104ede:	89 44 24 04          	mov    %eax,0x4(%esp)
80104ee2:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
80104ee9:	e8 92 f6 ff ff       	call   80104580 <argstr>
80104eee:	85 c0                	test   %eax,%eax
80104ef0:	78 5e                	js     80104f50 <sys_mknod+0x80>
80104ef2:	8d 45 f0             	lea    -0x10(%ebp),%eax
80104ef5:	89 44 24 04          	mov    %eax,0x4(%esp)
80104ef9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
80104f00:	e8 1b f6 ff ff       	call   80104520 <argint>
80104f05:	85 c0                	test   %eax,%eax
80104f07:	78 47                	js     80104f50 <sys_mknod+0x80>
80104f09:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104f0c:	89 44 24 04          	mov    %eax,0x4(%esp)
80104f10:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
80104f17:	e8 04 f6 ff ff       	call   80104520 <argint>
80104f1c:	85 c0                	test   %eax,%eax
80104f1e:	78 30                	js     80104f50 <sys_mknod+0x80>
80104f20:	0f bf 45 f4          	movswl -0xc(%ebp),%eax
80104f24:	ba 03 00 00 00       	mov    $0x3,%edx
80104f29:	0f bf 4d f0          	movswl -0x10(%ebp),%ecx
80104f2d:	89 04 24             	mov    %eax,(%esp)
80104f30:	8b 45 ec             	mov    -0x14(%ebp),%eax
80104f33:	e8 48 f7 ff ff       	call   80104680 <create>
80104f38:	85 c0                	test   %eax,%eax
80104f3a:	74 14                	je     80104f50 <sys_mknod+0x80>
80104f3c:	89 04 24             	mov    %eax,(%esp)
80104f3f:	e8 bc c9 ff ff       	call   80101900 <iunlockput>
80104f44:	e8 27 dc ff ff       	call   80102b70 <end_op>
80104f49:	31 c0                	xor    %eax,%eax
80104f4b:	c9                   	leave  
80104f4c:	c3                   	ret    
80104f4d:	8d 76 00             	lea    0x0(%esi),%esi
80104f50:	e8 1b dc ff ff       	call   80102b70 <end_op>
80104f55:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104f5a:	c9                   	leave  
80104f5b:	c3                   	ret    
80104f5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80104f60 <sys_chdir>:
80104f60:	55                   	push   %ebp
80104f61:	89 e5                	mov    %esp,%ebp
80104f63:	56                   	push   %esi
80104f64:	53                   	push   %ebx
80104f65:	83 ec 20             	sub    $0x20,%esp
80104f68:	e8 23 e7 ff ff       	call   80103690 <myproc>
80104f6d:	89 c6                	mov    %eax,%esi
80104f6f:	e8 8c db ff ff       	call   80102b00 <begin_op>
80104f74:	8d 45 f4             	lea    -0xc(%ebp),%eax
80104f77:	89 44 24 04          	mov    %eax,0x4(%esp)
80104f7b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
80104f82:	e8 f9 f5 ff ff       	call   80104580 <argstr>
80104f87:	85 c0                	test   %eax,%eax
80104f89:	78 4a                	js     80104fd5 <sys_chdir+0x75>
80104f8b:	8b 45 f4             	mov    -0xc(%ebp),%eax
80104f8e:	89 04 24             	mov    %eax,(%esp)
80104f91:	e8 5a cf ff ff       	call   80101ef0 <namei>
80104f96:	85 c0                	test   %eax,%eax
80104f98:	89 c3                	mov    %eax,%ebx
80104f9a:	74 39                	je     80104fd5 <sys_chdir+0x75>
80104f9c:	89 04 24             	mov    %eax,(%esp)
80104f9f:	e8 fc c6 ff ff       	call   801016a0 <ilock>
80104fa4:	66 83 7b 50 01       	cmpw   $0x1,0x50(%ebx)
80104fa9:	89 1c 24             	mov    %ebx,(%esp)
80104fac:	75 22                	jne    80104fd0 <sys_chdir+0x70>
80104fae:	e8 cd c7 ff ff       	call   80101780 <iunlock>
80104fb3:	8b 46 68             	mov    0x68(%esi),%eax
80104fb6:	89 04 24             	mov    %eax,(%esp)
80104fb9:	e8 02 c8 ff ff       	call   801017c0 <iput>
80104fbe:	e8 ad db ff ff       	call   80102b70 <end_op>
80104fc3:	31 c0                	xor    %eax,%eax
80104fc5:	89 5e 68             	mov    %ebx,0x68(%esi)
80104fc8:	83 c4 20             	add    $0x20,%esp
80104fcb:	5b                   	pop    %ebx
80104fcc:	5e                   	pop    %esi
80104fcd:	5d                   	pop    %ebp
80104fce:	c3                   	ret    
80104fcf:	90                   	nop
80104fd0:	e8 2b c9 ff ff       	call   80101900 <iunlockput>
80104fd5:	e8 96 db ff ff       	call   80102b70 <end_op>
80104fda:	83 c4 20             	add    $0x20,%esp
80104fdd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80104fe2:	5b                   	pop    %ebx
80104fe3:	5e                   	pop    %esi
80104fe4:	5d                   	pop    %ebp
80104fe5:	c3                   	ret    
80104fe6:	8d 76 00             	lea    0x0(%esi),%esi
80104fe9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

80104ff0 <sys_exec>:
80104ff0:	55                   	push   %ebp
80104ff1:	89 e5                	mov    %esp,%ebp
80104ff3:	57                   	push   %edi
80104ff4:	56                   	push   %esi
80104ff5:	53                   	push   %ebx
80104ff6:	81 ec ac 00 00 00    	sub    $0xac,%esp
80104ffc:	8d 85 5c ff ff ff    	lea    -0xa4(%ebp),%eax
80105002:	89 44 24 04          	mov    %eax,0x4(%esp)
80105006:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
8010500d:	e8 6e f5 ff ff       	call   80104580 <argstr>
80105012:	85 c0                	test   %eax,%eax
80105014:	0f 88 84 00 00 00    	js     8010509e <sys_exec+0xae>
8010501a:	8d 85 60 ff ff ff    	lea    -0xa0(%ebp),%eax
80105020:	89 44 24 04          	mov    %eax,0x4(%esp)
80105024:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
8010502b:	e8 f0 f4 ff ff       	call   80104520 <argint>
80105030:	85 c0                	test   %eax,%eax
80105032:	78 6a                	js     8010509e <sys_exec+0xae>
80105034:	8d 85 68 ff ff ff    	lea    -0x98(%ebp),%eax
8010503a:	31 db                	xor    %ebx,%ebx
8010503c:	c7 44 24 08 80 00 00 	movl   $0x80,0x8(%esp)
80105043:	00 
80105044:	8d b5 68 ff ff ff    	lea    -0x98(%ebp),%esi
8010504a:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
80105051:	00 
80105052:	8d bd 64 ff ff ff    	lea    -0x9c(%ebp),%edi
80105058:	89 04 24             	mov    %eax,(%esp)
8010505b:	e8 10 f2 ff ff       	call   80104270 <memset>
80105060:	8b 85 60 ff ff ff    	mov    -0xa0(%ebp),%eax
80105066:	89 7c 24 04          	mov    %edi,0x4(%esp)
8010506a:	8d 04 98             	lea    (%eax,%ebx,4),%eax
8010506d:	89 04 24             	mov    %eax,(%esp)
80105070:	e8 4b f4 ff ff       	call   801044c0 <fetchint>
80105075:	85 c0                	test   %eax,%eax
80105077:	78 25                	js     8010509e <sys_exec+0xae>
80105079:	8b 85 64 ff ff ff    	mov    -0x9c(%ebp),%eax
8010507f:	85 c0                	test   %eax,%eax
80105081:	74 2d                	je     801050b0 <sys_exec+0xc0>
80105083:	89 74 24 04          	mov    %esi,0x4(%esp)
80105087:	89 04 24             	mov    %eax,(%esp)
8010508a:	e8 51 f4 ff ff       	call   801044e0 <fetchstr>
8010508f:	85 c0                	test   %eax,%eax
80105091:	78 0b                	js     8010509e <sys_exec+0xae>
80105093:	83 c3 01             	add    $0x1,%ebx
80105096:	83 c6 04             	add    $0x4,%esi
80105099:	83 fb 20             	cmp    $0x20,%ebx
8010509c:	75 c2                	jne    80105060 <sys_exec+0x70>
8010509e:	81 c4 ac 00 00 00    	add    $0xac,%esp
801050a4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801050a9:	5b                   	pop    %ebx
801050aa:	5e                   	pop    %esi
801050ab:	5f                   	pop    %edi
801050ac:	5d                   	pop    %ebp
801050ad:	c3                   	ret    
801050ae:	66 90                	xchg   %ax,%ax
801050b0:	8d 85 68 ff ff ff    	lea    -0x98(%ebp),%eax
801050b6:	89 44 24 04          	mov    %eax,0x4(%esp)
801050ba:	8b 85 5c ff ff ff    	mov    -0xa4(%ebp),%eax
801050c0:	c7 84 9d 68 ff ff ff 	movl   $0x0,-0x98(%ebp,%ebx,4)
801050c7:	00 00 00 00 
801050cb:	89 04 24             	mov    %eax,(%esp)
801050ce:	e8 cd b8 ff ff       	call   801009a0 <exec>
801050d3:	81 c4 ac 00 00 00    	add    $0xac,%esp
801050d9:	5b                   	pop    %ebx
801050da:	5e                   	pop    %esi
801050db:	5f                   	pop    %edi
801050dc:	5d                   	pop    %ebp
801050dd:	c3                   	ret    
801050de:	66 90                	xchg   %ax,%ax

801050e0 <sys_pipe>:
801050e0:	55                   	push   %ebp
801050e1:	89 e5                	mov    %esp,%ebp
801050e3:	53                   	push   %ebx
801050e4:	83 ec 24             	sub    $0x24,%esp
801050e7:	8d 45 ec             	lea    -0x14(%ebp),%eax
801050ea:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
801050f1:	00 
801050f2:	89 44 24 04          	mov    %eax,0x4(%esp)
801050f6:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
801050fd:	e8 4e f4 ff ff       	call   80104550 <argptr>
80105102:	85 c0                	test   %eax,%eax
80105104:	78 6d                	js     80105173 <sys_pipe+0x93>
80105106:	8d 45 f4             	lea    -0xc(%ebp),%eax
80105109:	89 44 24 04          	mov    %eax,0x4(%esp)
8010510d:	8d 45 f0             	lea    -0x10(%ebp),%eax
80105110:	89 04 24             	mov    %eax,(%esp)
80105113:	e8 48 e0 ff ff       	call   80103160 <pipealloc>
80105118:	85 c0                	test   %eax,%eax
8010511a:	78 57                	js     80105173 <sys_pipe+0x93>
8010511c:	8b 45 f0             	mov    -0x10(%ebp),%eax
8010511f:	e8 1c f5 ff ff       	call   80104640 <fdalloc>
80105124:	85 c0                	test   %eax,%eax
80105126:	89 c3                	mov    %eax,%ebx
80105128:	78 33                	js     8010515d <sys_pipe+0x7d>
8010512a:	8b 45 f4             	mov    -0xc(%ebp),%eax
8010512d:	e8 0e f5 ff ff       	call   80104640 <fdalloc>
80105132:	85 c0                	test   %eax,%eax
80105134:	78 1a                	js     80105150 <sys_pipe+0x70>
80105136:	8b 55 ec             	mov    -0x14(%ebp),%edx
80105139:	89 1a                	mov    %ebx,(%edx)
8010513b:	8b 55 ec             	mov    -0x14(%ebp),%edx
8010513e:	89 42 04             	mov    %eax,0x4(%edx)
80105141:	83 c4 24             	add    $0x24,%esp
80105144:	31 c0                	xor    %eax,%eax
80105146:	5b                   	pop    %ebx
80105147:	5d                   	pop    %ebp
80105148:	c3                   	ret    
80105149:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80105150:	e8 3b e5 ff ff       	call   80103690 <myproc>
80105155:	c7 44 98 28 00 00 00 	movl   $0x0,0x28(%eax,%ebx,4)
8010515c:	00 
8010515d:	8b 45 f0             	mov    -0x10(%ebp),%eax
80105160:	89 04 24             	mov    %eax,(%esp)
80105163:	e8 a8 bc ff ff       	call   80100e10 <fileclose>
80105168:	8b 45 f4             	mov    -0xc(%ebp),%eax
8010516b:	89 04 24             	mov    %eax,(%esp)
8010516e:	e8 9d bc ff ff       	call   80100e10 <fileclose>
80105173:	83 c4 24             	add    $0x24,%esp
80105176:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010517b:	5b                   	pop    %ebx
8010517c:	5d                   	pop    %ebp
8010517d:	c3                   	ret    
8010517e:	66 90                	xchg   %ax,%ax

80105180 <sys_shm_open>:
80105180:	55                   	push   %ebp
80105181:	89 e5                	mov    %esp,%ebp
80105183:	83 ec 28             	sub    $0x28,%esp
80105186:	8d 45 f0             	lea    -0x10(%ebp),%eax
80105189:	89 44 24 04          	mov    %eax,0x4(%esp)
8010518d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
80105194:	e8 87 f3 ff ff       	call   80104520 <argint>
80105199:	85 c0                	test   %eax,%eax
8010519b:	78 33                	js     801051d0 <sys_shm_open+0x50>
8010519d:	8d 45 f4             	lea    -0xc(%ebp),%eax
801051a0:	c7 44 24 08 04 00 00 	movl   $0x4,0x8(%esp)
801051a7:	00 
801051a8:	89 44 24 04          	mov    %eax,0x4(%esp)
801051ac:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
801051b3:	e8 98 f3 ff ff       	call   80104550 <argptr>
801051b8:	85 c0                	test   %eax,%eax
801051ba:	78 14                	js     801051d0 <sys_shm_open+0x50>
801051bc:	8b 45 f4             	mov    -0xc(%ebp),%eax
801051bf:	89 44 24 04          	mov    %eax,0x4(%esp)
801051c3:	8b 45 f0             	mov    -0x10(%ebp),%eax
801051c6:	89 04 24             	mov    %eax,(%esp)
801051c9:	e8 82 1c 00 00       	call   80106e50 <shm_open>
801051ce:	c9                   	leave  
801051cf:	c3                   	ret    
801051d0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801051d5:	c9                   	leave  
801051d6:	c3                   	ret    
801051d7:	89 f6                	mov    %esi,%esi
801051d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

801051e0 <sys_shm_close>:
801051e0:	55                   	push   %ebp
801051e1:	89 e5                	mov    %esp,%ebp
801051e3:	83 ec 28             	sub    $0x28,%esp
801051e6:	8d 45 f4             	lea    -0xc(%ebp),%eax
801051e9:	89 44 24 04          	mov    %eax,0x4(%esp)
801051ed:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
801051f4:	e8 27 f3 ff ff       	call   80104520 <argint>
801051f9:	85 c0                	test   %eax,%eax
801051fb:	78 13                	js     80105210 <sys_shm_close+0x30>
801051fd:	8b 45 f4             	mov    -0xc(%ebp),%eax
80105200:	89 04 24             	mov    %eax,(%esp)
80105203:	e8 58 1c 00 00       	call   80106e60 <shm_close>
80105208:	c9                   	leave  
80105209:	c3                   	ret    
8010520a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80105210:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80105215:	c9                   	leave  
80105216:	c3                   	ret    
80105217:	89 f6                	mov    %esi,%esi
80105219:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

80105220 <sys_fork>:
80105220:	55                   	push   %ebp
80105221:	89 e5                	mov    %esp,%ebp
80105223:	5d                   	pop    %ebp
80105224:	e9 17 e6 ff ff       	jmp    80103840 <fork>
80105229:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

80105230 <sys_exit>:
80105230:	55                   	push   %ebp
80105231:	89 e5                	mov    %esp,%ebp
80105233:	83 ec 08             	sub    $0x8,%esp
80105236:	e8 55 e8 ff ff       	call   80103a90 <exit>
8010523b:	31 c0                	xor    %eax,%eax
8010523d:	c9                   	leave  
8010523e:	c3                   	ret    
8010523f:	90                   	nop

80105240 <sys_wait>:
80105240:	55                   	push   %ebp
80105241:	89 e5                	mov    %esp,%ebp
80105243:	5d                   	pop    %ebp
80105244:	e9 57 ea ff ff       	jmp    80103ca0 <wait>
80105249:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

80105250 <sys_kill>:
80105250:	55                   	push   %ebp
80105251:	89 e5                	mov    %esp,%ebp
80105253:	83 ec 28             	sub    $0x28,%esp
80105256:	8d 45 f4             	lea    -0xc(%ebp),%eax
80105259:	89 44 24 04          	mov    %eax,0x4(%esp)
8010525d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
80105264:	e8 b7 f2 ff ff       	call   80104520 <argint>
80105269:	85 c0                	test   %eax,%eax
8010526b:	78 13                	js     80105280 <sys_kill+0x30>
8010526d:	8b 45 f4             	mov    -0xc(%ebp),%eax
80105270:	89 04 24             	mov    %eax,(%esp)
80105273:	e8 68 eb ff ff       	call   80103de0 <kill>
80105278:	c9                   	leave  
80105279:	c3                   	ret    
8010527a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80105280:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80105285:	c9                   	leave  
80105286:	c3                   	ret    
80105287:	89 f6                	mov    %esi,%esi
80105289:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

80105290 <sys_getpid>:
80105290:	55                   	push   %ebp
80105291:	89 e5                	mov    %esp,%ebp
80105293:	83 ec 08             	sub    $0x8,%esp
80105296:	e8 f5 e3 ff ff       	call   80103690 <myproc>
8010529b:	8b 40 10             	mov    0x10(%eax),%eax
8010529e:	c9                   	leave  
8010529f:	c3                   	ret    

801052a0 <sys_sbrk>:
801052a0:	55                   	push   %ebp
801052a1:	89 e5                	mov    %esp,%ebp
801052a3:	53                   	push   %ebx
801052a4:	83 ec 24             	sub    $0x24,%esp
801052a7:	8d 45 f4             	lea    -0xc(%ebp),%eax
801052aa:	89 44 24 04          	mov    %eax,0x4(%esp)
801052ae:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
801052b5:	e8 66 f2 ff ff       	call   80104520 <argint>
801052ba:	85 c0                	test   %eax,%eax
801052bc:	78 22                	js     801052e0 <sys_sbrk+0x40>
801052be:	e8 cd e3 ff ff       	call   80103690 <myproc>
801052c3:	8b 55 f4             	mov    -0xc(%ebp),%edx
801052c6:	8b 18                	mov    (%eax),%ebx
801052c8:	89 14 24             	mov    %edx,(%esp)
801052cb:	e8 00 e5 ff ff       	call   801037d0 <growproc>
801052d0:	85 c0                	test   %eax,%eax
801052d2:	78 0c                	js     801052e0 <sys_sbrk+0x40>
801052d4:	89 d8                	mov    %ebx,%eax
801052d6:	83 c4 24             	add    $0x24,%esp
801052d9:	5b                   	pop    %ebx
801052da:	5d                   	pop    %ebp
801052db:	c3                   	ret    
801052dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
801052e0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
801052e5:	eb ef                	jmp    801052d6 <sys_sbrk+0x36>
801052e7:	89 f6                	mov    %esi,%esi
801052e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

801052f0 <sys_sleep>:
801052f0:	55                   	push   %ebp
801052f1:	89 e5                	mov    %esp,%ebp
801052f3:	53                   	push   %ebx
801052f4:	83 ec 24             	sub    $0x24,%esp
801052f7:	8d 45 f4             	lea    -0xc(%ebp),%eax
801052fa:	89 44 24 04          	mov    %eax,0x4(%esp)
801052fe:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
80105305:	e8 16 f2 ff ff       	call   80104520 <argint>
8010530a:	85 c0                	test   %eax,%eax
8010530c:	78 7e                	js     8010538c <sys_sleep+0x9c>
8010530e:	c7 04 24 60 4d 11 80 	movl   $0x80114d60,(%esp)
80105315:	e8 16 ee ff ff       	call   80104130 <acquire>
8010531a:	8b 55 f4             	mov    -0xc(%ebp),%edx
8010531d:	8b 1d a0 55 11 80    	mov    0x801155a0,%ebx
80105323:	85 d2                	test   %edx,%edx
80105325:	75 29                	jne    80105350 <sys_sleep+0x60>
80105327:	eb 4f                	jmp    80105378 <sys_sleep+0x88>
80105329:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80105330:	c7 44 24 04 60 4d 11 	movl   $0x80114d60,0x4(%esp)
80105337:	80 
80105338:	c7 04 24 a0 55 11 80 	movl   $0x801155a0,(%esp)
8010533f:	e8 ac e8 ff ff       	call   80103bf0 <sleep>
80105344:	a1 a0 55 11 80       	mov    0x801155a0,%eax
80105349:	29 d8                	sub    %ebx,%eax
8010534b:	3b 45 f4             	cmp    -0xc(%ebp),%eax
8010534e:	73 28                	jae    80105378 <sys_sleep+0x88>
80105350:	e8 3b e3 ff ff       	call   80103690 <myproc>
80105355:	8b 40 24             	mov    0x24(%eax),%eax
80105358:	85 c0                	test   %eax,%eax
8010535a:	74 d4                	je     80105330 <sys_sleep+0x40>
8010535c:	c7 04 24 60 4d 11 80 	movl   $0x80114d60,(%esp)
80105363:	e8 b8 ee ff ff       	call   80104220 <release>
80105368:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
8010536d:	83 c4 24             	add    $0x24,%esp
80105370:	5b                   	pop    %ebx
80105371:	5d                   	pop    %ebp
80105372:	c3                   	ret    
80105373:	90                   	nop
80105374:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80105378:	c7 04 24 60 4d 11 80 	movl   $0x80114d60,(%esp)
8010537f:	e8 9c ee ff ff       	call   80104220 <release>
80105384:	83 c4 24             	add    $0x24,%esp
80105387:	31 c0                	xor    %eax,%eax
80105389:	5b                   	pop    %ebx
8010538a:	5d                   	pop    %ebp
8010538b:	c3                   	ret    
8010538c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80105391:	eb da                	jmp    8010536d <sys_sleep+0x7d>
80105393:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80105399:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

801053a0 <sys_uptime>:
801053a0:	55                   	push   %ebp
801053a1:	89 e5                	mov    %esp,%ebp
801053a3:	53                   	push   %ebx
801053a4:	83 ec 14             	sub    $0x14,%esp
801053a7:	c7 04 24 60 4d 11 80 	movl   $0x80114d60,(%esp)
801053ae:	e8 7d ed ff ff       	call   80104130 <acquire>
801053b3:	8b 1d a0 55 11 80    	mov    0x801155a0,%ebx
801053b9:	c7 04 24 60 4d 11 80 	movl   $0x80114d60,(%esp)
801053c0:	e8 5b ee ff ff       	call   80104220 <release>
801053c5:	83 c4 14             	add    $0x14,%esp
801053c8:	89 d8                	mov    %ebx,%eax
801053ca:	5b                   	pop    %ebx
801053cb:	5d                   	pop    %ebp
801053cc:	c3                   	ret    

801053cd <alltraps>:
801053cd:	1e                   	push   %ds
801053ce:	06                   	push   %es
801053cf:	0f a0                	push   %fs
801053d1:	0f a8                	push   %gs
801053d3:	60                   	pusha  
801053d4:	66 b8 10 00          	mov    $0x10,%ax
801053d8:	8e d8                	mov    %eax,%ds
801053da:	8e c0                	mov    %eax,%es
801053dc:	54                   	push   %esp
801053dd:	e8 de 00 00 00       	call   801054c0 <trap>
801053e2:	83 c4 04             	add    $0x4,%esp

801053e5 <trapret>:
801053e5:	61                   	popa   
801053e6:	0f a9                	pop    %gs
801053e8:	0f a1                	pop    %fs
801053ea:	07                   	pop    %es
801053eb:	1f                   	pop    %ds
801053ec:	83 c4 08             	add    $0x8,%esp
801053ef:	cf                   	iret   

801053f0 <tvinit>:
void
tvinit(void)
{
  int i;

  for(i = 0; i < 256; i++)
801053f0:	31 c0                	xor    %eax,%eax
801053f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    SETGATE(idt[i], 0, SEG_KCODE<<3, vectors[i], 0);
801053f8:	8b 14 85 08 a0 10 80 	mov    -0x7fef5ff8(,%eax,4),%edx
801053ff:	b9 08 00 00 00       	mov    $0x8,%ecx
80105404:	66 89 0c c5 a2 4d 11 	mov    %cx,-0x7feeb25e(,%eax,8)
8010540b:	80 
8010540c:	c6 04 c5 a4 4d 11 80 	movb   $0x0,-0x7feeb25c(,%eax,8)
80105413:	00 
80105414:	c6 04 c5 a5 4d 11 80 	movb   $0x8e,-0x7feeb25b(,%eax,8)
8010541b:	8e 
8010541c:	66 89 14 c5 a0 4d 11 	mov    %dx,-0x7feeb260(,%eax,8)
80105423:	80 
80105424:	c1 ea 10             	shr    $0x10,%edx
80105427:	66 89 14 c5 a6 4d 11 	mov    %dx,-0x7feeb25a(,%eax,8)
8010542e:	80 
void
tvinit(void)
{
  int i;

  for(i = 0; i < 256; i++)
8010542f:	83 c0 01             	add    $0x1,%eax
80105432:	3d 00 01 00 00       	cmp    $0x100,%eax
80105437:	75 bf                	jne    801053f8 <tvinit+0x8>
struct spinlock tickslock;
uint ticks;

void
tvinit(void)
{
80105439:	55                   	push   %ebp
  int i;

  for(i = 0; i < 256; i++)
    SETGATE(idt[i], 0, SEG_KCODE<<3, vectors[i], 0);
  SETGATE(idt[T_SYSCALL], 1, SEG_KCODE<<3, vectors[T_SYSCALL], DPL_USER);
8010543a:	ba 08 00 00 00       	mov    $0x8,%edx
struct spinlock tickslock;
uint ticks;

void
tvinit(void)
{
8010543f:	89 e5                	mov    %esp,%ebp
80105441:	83 ec 18             	sub    $0x18,%esp
  int i;

  for(i = 0; i < 256; i++)
    SETGATE(idt[i], 0, SEG_KCODE<<3, vectors[i], 0);
  SETGATE(idt[T_SYSCALL], 1, SEG_KCODE<<3, vectors[T_SYSCALL], DPL_USER);
80105444:	a1 08 a1 10 80       	mov    0x8010a108,%eax

  initlock(&tickslock, "time");
80105449:	c7 44 24 04 21 76 10 	movl   $0x80107621,0x4(%esp)
80105450:	80 
80105451:	c7 04 24 60 4d 11 80 	movl   $0x80114d60,(%esp)
{
  int i;

  for(i = 0; i < 256; i++)
    SETGATE(idt[i], 0, SEG_KCODE<<3, vectors[i], 0);
  SETGATE(idt[T_SYSCALL], 1, SEG_KCODE<<3, vectors[T_SYSCALL], DPL_USER);
80105458:	66 89 15 a2 4f 11 80 	mov    %dx,0x80114fa2
8010545f:	66 a3 a0 4f 11 80    	mov    %ax,0x80114fa0
80105465:	c1 e8 10             	shr    $0x10,%eax
80105468:	c6 05 a4 4f 11 80 00 	movb   $0x0,0x80114fa4
8010546f:	c6 05 a5 4f 11 80 ef 	movb   $0xef,0x80114fa5
80105476:	66 a3 a6 4f 11 80    	mov    %ax,0x80114fa6

  initlock(&tickslock, "time");
8010547c:	e8 bf eb ff ff       	call   80104040 <initlock>
}
80105481:	c9                   	leave  
80105482:	c3                   	ret    
80105483:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80105489:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

80105490 <idtinit>:

void
idtinit(void)
{
80105490:	55                   	push   %ebp
static inline void
lidt(struct gatedesc *p, int size)
{
  volatile ushort pd[3];

  pd[0] = size-1;
80105491:	b8 ff 07 00 00       	mov    $0x7ff,%eax
80105496:	89 e5                	mov    %esp,%ebp
80105498:	83 ec 10             	sub    $0x10,%esp
8010549b:	66 89 45 fa          	mov    %ax,-0x6(%ebp)
  pd[1] = (uint)p;
8010549f:	b8 a0 4d 11 80       	mov    $0x80114da0,%eax
801054a4:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
  pd[2] = (uint)p >> 16;
801054a8:	c1 e8 10             	shr    $0x10,%eax
801054ab:	66 89 45 fe          	mov    %ax,-0x2(%ebp)

  asm volatile("lidt (%0)" : : "r" (pd));
801054af:	8d 45 fa             	lea    -0x6(%ebp),%eax
801054b2:	0f 01 18             	lidtl  (%eax)
  lidt(idt, sizeof(idt));
}
801054b5:	c9                   	leave  
801054b6:	c3                   	ret    
801054b7:	89 f6                	mov    %esi,%esi
801054b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

801054c0 <trap>:

//PAGEBREAK: 41
void
trap(struct trapframe *tf)
{
801054c0:	55                   	push   %ebp
801054c1:	89 e5                	mov    %esp,%ebp
801054c3:	57                   	push   %edi
801054c4:	56                   	push   %esi
801054c5:	53                   	push   %ebx
801054c6:	83 ec 3c             	sub    $0x3c,%esp
801054c9:	8b 5d 08             	mov    0x8(%ebp),%ebx
//  uint stack_top=KERNBASE-4-(myproc()->stacksz*PGSIZE);
  if(tf->trapno == T_SYSCALL){
801054cc:	8b 43 30             	mov    0x30(%ebx),%eax
801054cf:	83 f8 40             	cmp    $0x40,%eax
801054d2:	0f 84 88 02 00 00    	je     80105760 <trap+0x2a0>
    if(myproc()->killed)
      exit();
    return;
  }

  switch(tf->trapno){
801054d8:	83 e8 0e             	sub    $0xe,%eax
801054db:	83 f8 31             	cmp    $0x31,%eax
801054de:	77 08                	ja     801054e8 <trap+0x28>
801054e0:	ff 24 85 08 77 10 80 	jmp    *-0x7fef88f8(,%eax,4)
801054e7:	90                   	nop
    }
    break;

  //PAGEBREAK: 13
  default:
    if(myproc() == 0 || (tf->cs&3) == 0){
801054e8:	e8 a3 e1 ff ff       	call   80103690 <myproc>
801054ed:	85 c0                	test   %eax,%eax
801054ef:	90                   	nop
801054f0:	0f 84 da 02 00 00    	je     801057d0 <trap+0x310>
801054f6:	f6 43 3c 03          	testb  $0x3,0x3c(%ebx)
801054fa:	0f 84 d0 02 00 00    	je     801057d0 <trap+0x310>

static inline uint
rcr2(void)
{
  uint val;
  asm volatile("movl %%cr2,%0" : "=r" (val));
80105500:	0f 20 d1             	mov    %cr2,%ecx
      cprintf("unexpected trap %d from cpu %d eip %x (cr2=0x%x)\n",
              tf->trapno, cpuid(), tf->eip, rcr2());
      panic("trap");
    }
    // In user space, assume process misbehaved.
    cprintf("pid %d %s: trap %d err %d on cpu %d "
80105503:	8b 53 38             	mov    0x38(%ebx),%edx
80105506:	89 4d d8             	mov    %ecx,-0x28(%ebp)
80105509:	89 55 dc             	mov    %edx,-0x24(%ebp)
8010550c:	e8 5f e1 ff ff       	call   80103670 <cpuid>
80105511:	8b 73 30             	mov    0x30(%ebx),%esi
80105514:	89 c7                	mov    %eax,%edi
80105516:	8b 43 34             	mov    0x34(%ebx),%eax
80105519:	89 45 e4             	mov    %eax,-0x1c(%ebp)
            "eip 0x%x addr 0x%x--kill proc\n",
            myproc()->pid, myproc()->name, tf->trapno,
8010551c:	e8 6f e1 ff ff       	call   80103690 <myproc>
80105521:	89 45 e0             	mov    %eax,-0x20(%ebp)
80105524:	e8 67 e1 ff ff       	call   80103690 <myproc>
      cprintf("unexpected trap %d from cpu %d eip %x (cr2=0x%x)\n",
              tf->trapno, cpuid(), tf->eip, rcr2());
      panic("trap");
    }
    // In user space, assume process misbehaved.
    cprintf("pid %d %s: trap %d err %d on cpu %d "
80105529:	8b 55 dc             	mov    -0x24(%ebp),%edx
8010552c:	89 74 24 0c          	mov    %esi,0xc(%esp)
            "eip 0x%x addr 0x%x--kill proc\n",
            myproc()->pid, myproc()->name, tf->trapno,
80105530:	8b 75 e0             	mov    -0x20(%ebp),%esi
      cprintf("unexpected trap %d from cpu %d eip %x (cr2=0x%x)\n",
              tf->trapno, cpuid(), tf->eip, rcr2());
      panic("trap");
    }
    // In user space, assume process misbehaved.
    cprintf("pid %d %s: trap %d err %d on cpu %d "
80105533:	8b 4d d8             	mov    -0x28(%ebp),%ecx
80105536:	89 7c 24 14          	mov    %edi,0x14(%esp)
8010553a:	89 54 24 18          	mov    %edx,0x18(%esp)
8010553e:	8b 55 e4             	mov    -0x1c(%ebp),%edx
            "eip 0x%x addr 0x%x--kill proc\n",
            myproc()->pid, myproc()->name, tf->trapno,
80105541:	83 c6 6c             	add    $0x6c,%esi
      cprintf("unexpected trap %d from cpu %d eip %x (cr2=0x%x)\n",
              tf->trapno, cpuid(), tf->eip, rcr2());
      panic("trap");
    }
    // In user space, assume process misbehaved.
    cprintf("pid %d %s: trap %d err %d on cpu %d "
80105544:	89 4c 24 1c          	mov    %ecx,0x1c(%esp)
            "eip 0x%x addr 0x%x--kill proc\n",
            myproc()->pid, myproc()->name, tf->trapno,
80105548:	89 74 24 08          	mov    %esi,0x8(%esp)
      cprintf("unexpected trap %d from cpu %d eip %x (cr2=0x%x)\n",
              tf->trapno, cpuid(), tf->eip, rcr2());
      panic("trap");
    }
    // In user space, assume process misbehaved.
    cprintf("pid %d %s: trap %d err %d on cpu %d "
8010554c:	89 54 24 10          	mov    %edx,0x10(%esp)
80105550:	8b 40 10             	mov    0x10(%eax),%eax
80105553:	c7 04 24 c4 76 10 80 	movl   $0x801076c4,(%esp)
8010555a:	89 44 24 04          	mov    %eax,0x4(%esp)
8010555e:	e8 ed b0 ff ff       	call   80100650 <cprintf>
            "eip 0x%x addr 0x%x--kill proc\n",
            myproc()->pid, myproc()->name, tf->trapno,
            tf->err, cpuid(), tf->eip, rcr2());
    myproc()->killed = 1;
80105563:	e8 28 e1 ff ff       	call   80103690 <myproc>
80105568:	c7 40 24 01 00 00 00 	movl   $0x1,0x24(%eax)
8010556f:	90                   	nop
  }

  // Force process exit if it has been killed and is in user space.
  // (If it is still executing in the kernel, let it keep running
  // until it gets to the regular system call return.)
  if(myproc() && myproc()->killed && (tf->cs&3) == DPL_USER)
80105570:	e8 1b e1 ff ff       	call   80103690 <myproc>
80105575:	85 c0                	test   %eax,%eax
80105577:	74 0c                	je     80105585 <trap+0xc5>
80105579:	e8 12 e1 ff ff       	call   80103690 <myproc>
8010557e:	8b 50 24             	mov    0x24(%eax),%edx
80105581:	85 d2                	test   %edx,%edx
80105583:	75 4b                	jne    801055d0 <trap+0x110>
    exit();

  // Force process to give up CPU on clock tick.
  // If interrupts were on while locks held, would need to check nlock.
  if(myproc() && myproc()->state == RUNNING &&
80105585:	e8 06 e1 ff ff       	call   80103690 <myproc>
8010558a:	85 c0                	test   %eax,%eax
8010558c:	74 11                	je     8010559f <trap+0xdf>
8010558e:	66 90                	xchg   %ax,%ax
80105590:	e8 fb e0 ff ff       	call   80103690 <myproc>
80105595:	83 78 0c 04          	cmpl   $0x4,0xc(%eax)
80105599:	0f 84 51 01 00 00    	je     801056f0 <trap+0x230>
     tf->trapno == T_IRQ0+IRQ_TIMER)
    yield();

  // Check if the process has been killed since we yielded
  if(myproc() && myproc()->killed && (tf->cs&3) == DPL_USER)
8010559f:	e8 ec e0 ff ff       	call   80103690 <myproc>
801055a4:	85 c0                	test   %eax,%eax
801055a6:	74 1d                	je     801055c5 <trap+0x105>
801055a8:	e8 e3 e0 ff ff       	call   80103690 <myproc>
801055ad:	8b 40 24             	mov    0x24(%eax),%eax
801055b0:	85 c0                	test   %eax,%eax
801055b2:	74 11                	je     801055c5 <trap+0x105>
801055b4:	0f b7 43 3c          	movzwl 0x3c(%ebx),%eax
801055b8:	83 e0 03             	and    $0x3,%eax
801055bb:	66 83 f8 03          	cmp    $0x3,%ax
801055bf:	0f 84 c4 01 00 00    	je     80105789 <trap+0x2c9>
    exit();
}
801055c5:	83 c4 3c             	add    $0x3c,%esp
801055c8:	5b                   	pop    %ebx
801055c9:	5e                   	pop    %esi
801055ca:	5f                   	pop    %edi
801055cb:	5d                   	pop    %ebp
801055cc:	c3                   	ret    
801055cd:	8d 76 00             	lea    0x0(%esi),%esi
  }

  // Force process exit if it has been killed and is in user space.
  // (If it is still executing in the kernel, let it keep running
  // until it gets to the regular system call return.)
  if(myproc() && myproc()->killed && (tf->cs&3) == DPL_USER)
801055d0:	0f b7 43 3c          	movzwl 0x3c(%ebx),%eax
801055d4:	83 e0 03             	and    $0x3,%eax
801055d7:	66 83 f8 03          	cmp    $0x3,%ax
801055db:	75 a8                	jne    80105585 <trap+0xc5>
    exit();
801055dd:	e8 ae e4 ff ff       	call   80103a90 <exit>
801055e2:	eb a1                	jmp    80105585 <trap+0xc5>
801055e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    uartintr();
    lapiceoi();
    break;
  case T_IRQ0 + 7:
  case T_IRQ0 + IRQ_SPURIOUS:
    cprintf("cpu%d: spurious interrupt at %x:%x\n",
801055e8:	8b 7b 38             	mov    0x38(%ebx),%edi
801055eb:	0f b7 73 3c          	movzwl 0x3c(%ebx),%esi
801055ef:	e8 7c e0 ff ff       	call   80103670 <cpuid>
801055f4:	c7 04 24 6c 76 10 80 	movl   $0x8010766c,(%esp)
801055fb:	89 7c 24 0c          	mov    %edi,0xc(%esp)
801055ff:	89 74 24 08          	mov    %esi,0x8(%esp)
80105603:	89 44 24 04          	mov    %eax,0x4(%esp)
80105607:	e8 44 b0 ff ff       	call   80100650 <cprintf>
            cpuid(), tf->cs, tf->eip);
    lapiceoi();
8010560c:	e8 5f d1 ff ff       	call   80102770 <lapiceoi>
80105611:	0f 20 d0             	mov    %cr2,%eax
//    cprintf("a");
//    break;
//    cprintf("b");
    // Check if the offending address is right under the stack
//    if((char*)(PGROUNDUP(rcr2())) == (char*)PGROUNDUP(KERNBASE-4-myproc()->stacksz*PGSIZE-1) ){
      cprintf("ad%x\n",rcr2());
80105614:	89 44 24 04          	mov    %eax,0x4(%esp)
      cprintf("stksz%x\n",myproc()->stacksz);

    uint stack_top=KERNBASE-4-(myproc()->stacksz*PGSIZE);
80105618:	be fc ff ff 7f       	mov    $0x7ffffffc,%esi
//    cprintf("a");
//    break;
//    cprintf("b");
    // Check if the offending address is right under the stack
//    if((char*)(PGROUNDUP(rcr2())) == (char*)PGROUNDUP(KERNBASE-4-myproc()->stacksz*PGSIZE-1) ){
      cprintf("ad%x\n",rcr2());
8010561d:	c7 04 24 26 76 10 80 	movl   $0x80107626,(%esp)
80105624:	e8 27 b0 ff ff       	call   80100650 <cprintf>
      cprintf("stksz%x\n",myproc()->stacksz);
80105629:	e8 62 e0 ff ff       	call   80103690 <myproc>
8010562e:	8b 40 7c             	mov    0x7c(%eax),%eax
80105631:	c7 04 24 2c 76 10 80 	movl   $0x8010762c,(%esp)
80105638:	89 44 24 04          	mov    %eax,0x4(%esp)
8010563c:	e8 0f b0 ff ff       	call   80100650 <cprintf>

    uint stack_top=KERNBASE-4-(myproc()->stacksz*PGSIZE);
80105641:	e8 4a e0 ff ff       	call   80103690 <myproc>
80105646:	8b 78 7c             	mov    0x7c(%eax),%edi
      cprintf("stack top%x\n",stack_top);
80105649:	c7 04 24 35 76 10 80 	movl   $0x80107635,(%esp)
    // Check if the offending address is right under the stack
//    if((char*)(PGROUNDUP(rcr2())) == (char*)PGROUNDUP(KERNBASE-4-myproc()->stacksz*PGSIZE-1) ){
      cprintf("ad%x\n",rcr2());
      cprintf("stksz%x\n",myproc()->stacksz);

    uint stack_top=KERNBASE-4-(myproc()->stacksz*PGSIZE);
80105650:	c1 e7 0c             	shl    $0xc,%edi
80105653:	29 fe                	sub    %edi,%esi
      cprintf("stack top%x\n",stack_top);
80105655:	89 74 24 04          	mov    %esi,0x4(%esp)
80105659:	e8 f2 af ff ff       	call   80100650 <cprintf>
      cprintf("stack new%x\n",stack_top-PGSIZE);
8010565e:	b8 fc ef ff 7f       	mov    $0x7fffeffc,%eax
80105663:	29 f8                	sub    %edi,%eax
80105665:	89 44 24 04          	mov    %eax,0x4(%esp)
80105669:	c7 04 24 42 76 10 80 	movl   $0x80107642,(%esp)
80105670:	89 45 e4             	mov    %eax,-0x1c(%ebp)
80105673:	e8 d8 af ff ff       	call   80100650 <cprintf>
80105678:	0f 20 d7             	mov    %cr2,%edi
8010567b:	0f 20 d2             	mov    %cr2,%edx
8010567e:	0f 20 d1             	mov    %cr2,%ecx
    uint bpage = PGROUNDDOWN(rcr2()); uint tpage=PGROUNDUP(rcr2());
    if(rcr2() < stack_top && rcr2() > stack_top-PGSIZE){
80105681:	39 ce                	cmp    %ecx,%esi
80105683:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80105686:	0f 86 e4 fe ff ff    	jbe    80105570 <trap+0xb0>
8010568c:	0f 20 d1             	mov    %cr2,%ecx
8010568f:	39 c8                	cmp    %ecx,%eax
80105691:	0f 83 d9 fe ff ff    	jae    80105570 <trap+0xb0>
      // Call allocuvm
      cprintf("12344");
80105697:	c7 04 24 4f 76 10 80 	movl   $0x8010764f,(%esp)
      cprintf("stksz%x\n",myproc()->stacksz);

    uint stack_top=KERNBASE-4-(myproc()->stacksz*PGSIZE);
      cprintf("stack top%x\n",stack_top);
      cprintf("stack new%x\n",stack_top-PGSIZE);
    uint bpage = PGROUNDDOWN(rcr2()); uint tpage=PGROUNDUP(rcr2());
8010569e:	81 e7 00 f0 ff ff    	and    $0xfffff000,%edi
801056a4:	89 55 e4             	mov    %edx,-0x1c(%ebp)
    if(rcr2() < stack_top && rcr2() > stack_top-PGSIZE){
      // Call allocuvm
      cprintf("12344");
801056a7:	e8 a4 af ff ff       	call   80100650 <cprintf>
//      if(allocuvm(myproc()->pgdir, myproc()->stacksz*PGSIZE, PGSIZE+myproc()->stacksz*PGSIZE) == 0){
      if(allocuvm(myproc()->pgdir, bpage, tpage) == 0)
801056ac:	e8 df df ff ff       	call   80103690 <myproc>
      cprintf("stksz%x\n",myproc()->stacksz);

    uint stack_top=KERNBASE-4-(myproc()->stacksz*PGSIZE);
      cprintf("stack top%x\n",stack_top);
      cprintf("stack new%x\n",stack_top-PGSIZE);
    uint bpage = PGROUNDDOWN(rcr2()); uint tpage=PGROUNDUP(rcr2());
801056b1:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    if(rcr2() < stack_top && rcr2() > stack_top-PGSIZE){
      // Call allocuvm
      cprintf("12344");
//      if(allocuvm(myproc()->pgdir, myproc()->stacksz*PGSIZE, PGSIZE+myproc()->stacksz*PGSIZE) == 0){
      if(allocuvm(myproc()->pgdir, bpage, tpage) == 0)
801056b4:	89 7c 24 04          	mov    %edi,0x4(%esp)
      cprintf("stksz%x\n",myproc()->stacksz);

    uint stack_top=KERNBASE-4-(myproc()->stacksz*PGSIZE);
      cprintf("stack top%x\n",stack_top);
      cprintf("stack new%x\n",stack_top-PGSIZE);
    uint bpage = PGROUNDDOWN(rcr2()); uint tpage=PGROUNDUP(rcr2());
801056b8:	81 c2 ff 0f 00 00    	add    $0xfff,%edx
801056be:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
    if(rcr2() < stack_top && rcr2() > stack_top-PGSIZE){
      // Call allocuvm
      cprintf("12344");
//      if(allocuvm(myproc()->pgdir, myproc()->stacksz*PGSIZE, PGSIZE+myproc()->stacksz*PGSIZE) == 0){
      if(allocuvm(myproc()->pgdir, bpage, tpage) == 0)
801056c4:	89 54 24 08          	mov    %edx,0x8(%esp)
801056c8:	8b 40 04             	mov    0x4(%eax),%eax
801056cb:	89 04 24             	mov    %eax,(%esp)
801056ce:	e8 ed 11 00 00       	call   801068c0 <allocuvm>
801056d3:	85 c0                	test   %eax,%eax
801056d5:	0f 84 2b 01 00 00    	je     80105806 <trap+0x346>
        panic("allocuvm failed");
    // Increase the stack size
      myproc()->stacksz++; 
801056db:	e8 b0 df ff ff       	call   80103690 <myproc>
801056e0:	83 40 7c 01          	addl   $0x1,0x7c(%eax)
801056e4:	e9 87 fe ff ff       	jmp    80105570 <trap+0xb0>
801056e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  if(myproc() && myproc()->killed && (tf->cs&3) == DPL_USER)
    exit();

  // Force process to give up CPU on clock tick.
  // If interrupts were on while locks held, would need to check nlock.
  if(myproc() && myproc()->state == RUNNING &&
801056f0:	83 7b 30 20          	cmpl   $0x20,0x30(%ebx)
801056f4:	0f 85 a5 fe ff ff    	jne    8010559f <trap+0xdf>
     tf->trapno == T_IRQ0+IRQ_TIMER)
    yield();
801056fa:	e8 b1 e4 ff ff       	call   80103bb0 <yield>
801056ff:	90                   	nop
80105700:	e9 9a fe ff ff       	jmp    8010559f <trap+0xdf>
80105705:	8d 76 00             	lea    0x0(%esi),%esi
80105708:	90                   	nop
80105709:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    return;
  }

  switch(tf->trapno){
  case T_IRQ0 + IRQ_TIMER:
    if(cpuid() == 0){
80105710:	e8 5b df ff ff       	call   80103670 <cpuid>
80105715:	85 c0                	test   %eax,%eax
80105717:	0f 84 83 00 00 00    	je     801057a0 <trap+0x2e0>
8010571d:	8d 76 00             	lea    0x0(%esi),%esi
    }
    lapiceoi();
    break;
  case T_IRQ0 + IRQ_IDE:
    ideintr();
    lapiceoi();
80105720:	e8 4b d0 ff ff       	call   80102770 <lapiceoi>
    break;
80105725:	e9 46 fe ff ff       	jmp    80105570 <trap+0xb0>
8010572a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      release(&tickslock);
    }
    lapiceoi();
    break;
  case T_IRQ0 + IRQ_IDE:
    ideintr();
80105730:	e8 3b c9 ff ff       	call   80102070 <ideintr>
80105735:	eb e6                	jmp    8010571d <trap+0x25d>
80105737:	90                   	nop
80105738:	90                   	nop
80105739:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    break;
  case T_IRQ0 + IRQ_IDE+1:
    // Bochs generates spurious IDE1 interrupts.
    break;
  case T_IRQ0 + IRQ_KBD:
    kbdintr();
80105740:	e8 7b ce ff ff       	call   801025c0 <kbdintr>
    lapiceoi();
80105745:	e8 26 d0 ff ff       	call   80102770 <lapiceoi>
    break;
8010574a:	e9 21 fe ff ff       	jmp    80105570 <trap+0xb0>
8010574f:	90                   	nop
  case T_IRQ0 + IRQ_COM1:
    uartintr();
80105750:	e8 eb 01 00 00       	call   80105940 <uartintr>
    lapiceoi();
80105755:	e8 16 d0 ff ff       	call   80102770 <lapiceoi>
    break;
8010575a:	e9 11 fe ff ff       	jmp    80105570 <trap+0xb0>
8010575f:	90                   	nop
void
trap(struct trapframe *tf)
{
//  uint stack_top=KERNBASE-4-(myproc()->stacksz*PGSIZE);
  if(tf->trapno == T_SYSCALL){
    if(myproc()->killed)
80105760:	e8 2b df ff ff       	call   80103690 <myproc>
80105765:	8b 70 24             	mov    0x24(%eax),%esi
80105768:	85 f6                	test   %esi,%esi
8010576a:	75 2c                	jne    80105798 <trap+0x2d8>
      exit();
    myproc()->tf = tf;
8010576c:	e8 1f df ff ff       	call   80103690 <myproc>
80105771:	89 58 18             	mov    %ebx,0x18(%eax)
    syscall();
80105774:	e8 57 ee ff ff       	call   801045d0 <syscall>
    if(myproc()->killed)
80105779:	e8 12 df ff ff       	call   80103690 <myproc>
8010577e:	8b 48 24             	mov    0x24(%eax),%ecx
80105781:	85 c9                	test   %ecx,%ecx
80105783:	0f 84 3c fe ff ff    	je     801055c5 <trap+0x105>
    yield();

  // Check if the process has been killed since we yielded
  if(myproc() && myproc()->killed && (tf->cs&3) == DPL_USER)
    exit();
}
80105789:	83 c4 3c             	add    $0x3c,%esp
8010578c:	5b                   	pop    %ebx
8010578d:	5e                   	pop    %esi
8010578e:	5f                   	pop    %edi
8010578f:	5d                   	pop    %ebp
    if(myproc()->killed)
      exit();
    myproc()->tf = tf;
    syscall();
    if(myproc()->killed)
      exit();
80105790:	e9 fb e2 ff ff       	jmp    80103a90 <exit>
80105795:	8d 76 00             	lea    0x0(%esi),%esi
trap(struct trapframe *tf)
{
//  uint stack_top=KERNBASE-4-(myproc()->stacksz*PGSIZE);
  if(tf->trapno == T_SYSCALL){
    if(myproc()->killed)
      exit();
80105798:	e8 f3 e2 ff ff       	call   80103a90 <exit>
8010579d:	eb cd                	jmp    8010576c <trap+0x2ac>
8010579f:	90                   	nop
  }

  switch(tf->trapno){
  case T_IRQ0 + IRQ_TIMER:
    if(cpuid() == 0){
      acquire(&tickslock);
801057a0:	c7 04 24 60 4d 11 80 	movl   $0x80114d60,(%esp)
801057a7:	e8 84 e9 ff ff       	call   80104130 <acquire>
      ticks++;
      wakeup(&ticks);
801057ac:	c7 04 24 a0 55 11 80 	movl   $0x801155a0,(%esp)

  switch(tf->trapno){
  case T_IRQ0 + IRQ_TIMER:
    if(cpuid() == 0){
      acquire(&tickslock);
      ticks++;
801057b3:	83 05 a0 55 11 80 01 	addl   $0x1,0x801155a0
      wakeup(&ticks);
801057ba:	e8 c1 e5 ff ff       	call   80103d80 <wakeup>
      release(&tickslock);
801057bf:	c7 04 24 60 4d 11 80 	movl   $0x80114d60,(%esp)
801057c6:	e8 55 ea ff ff       	call   80104220 <release>
801057cb:	e9 4d ff ff ff       	jmp    8010571d <trap+0x25d>
801057d0:	0f 20 d7             	mov    %cr2,%edi

  //PAGEBREAK: 13
  default:
    if(myproc() == 0 || (tf->cs&3) == 0){
      // In kernel, it must be our mistake.
      cprintf("unexpected trap %d from cpu %d eip %x (cr2=0x%x)\n",
801057d3:	8b 73 38             	mov    0x38(%ebx),%esi
801057d6:	e8 95 de ff ff       	call   80103670 <cpuid>
801057db:	89 7c 24 10          	mov    %edi,0x10(%esp)
801057df:	89 74 24 0c          	mov    %esi,0xc(%esp)
801057e3:	89 44 24 08          	mov    %eax,0x8(%esp)
801057e7:	8b 43 30             	mov    0x30(%ebx),%eax
801057ea:	c7 04 24 90 76 10 80 	movl   $0x80107690,(%esp)
801057f1:	89 44 24 04          	mov    %eax,0x4(%esp)
801057f5:	e8 56 ae ff ff       	call   80100650 <cprintf>
              tf->trapno, cpuid(), tf->eip, rcr2());
      panic("trap");
801057fa:	c7 04 24 65 76 10 80 	movl   $0x80107665,(%esp)
80105801:	e8 5a ab ff ff       	call   80100360 <panic>
    if(rcr2() < stack_top && rcr2() > stack_top-PGSIZE){
      // Call allocuvm
      cprintf("12344");
//      if(allocuvm(myproc()->pgdir, myproc()->stacksz*PGSIZE, PGSIZE+myproc()->stacksz*PGSIZE) == 0){
      if(allocuvm(myproc()->pgdir, bpage, tpage) == 0)
        panic("allocuvm failed");
80105806:	c7 04 24 55 76 10 80 	movl   $0x80107655,(%esp)
8010580d:	e8 4e ab ff ff       	call   80100360 <panic>
80105812:	66 90                	xchg   %ax,%ax
80105814:	66 90                	xchg   %ax,%ax
80105816:	66 90                	xchg   %ax,%ax
80105818:	66 90                	xchg   %ax,%ax
8010581a:	66 90                	xchg   %ax,%ax
8010581c:	66 90                	xchg   %ax,%ax
8010581e:	66 90                	xchg   %ax,%ax

80105820 <uartgetc>:
80105820:	a1 bc a5 10 80       	mov    0x8010a5bc,%eax
80105825:	55                   	push   %ebp
80105826:	89 e5                	mov    %esp,%ebp
80105828:	85 c0                	test   %eax,%eax
8010582a:	74 14                	je     80105840 <uartgetc+0x20>
8010582c:	ba fd 03 00 00       	mov    $0x3fd,%edx
80105831:	ec                   	in     (%dx),%al
80105832:	a8 01                	test   $0x1,%al
80105834:	74 0a                	je     80105840 <uartgetc+0x20>
80105836:	b2 f8                	mov    $0xf8,%dl
80105838:	ec                   	in     (%dx),%al
80105839:	0f b6 c0             	movzbl %al,%eax
8010583c:	5d                   	pop    %ebp
8010583d:	c3                   	ret    
8010583e:	66 90                	xchg   %ax,%ax
80105840:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
80105845:	5d                   	pop    %ebp
80105846:	c3                   	ret    
80105847:	89 f6                	mov    %esi,%esi
80105849:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

80105850 <uartputc>:
80105850:	a1 bc a5 10 80       	mov    0x8010a5bc,%eax
80105855:	85 c0                	test   %eax,%eax
80105857:	74 3f                	je     80105898 <uartputc+0x48>
80105859:	55                   	push   %ebp
8010585a:	89 e5                	mov    %esp,%ebp
8010585c:	56                   	push   %esi
8010585d:	be fd 03 00 00       	mov    $0x3fd,%esi
80105862:	53                   	push   %ebx
80105863:	bb 80 00 00 00       	mov    $0x80,%ebx
80105868:	83 ec 10             	sub    $0x10,%esp
8010586b:	eb 14                	jmp    80105881 <uartputc+0x31>
8010586d:	8d 76 00             	lea    0x0(%esi),%esi
80105870:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
80105877:	e8 14 cf ff ff       	call   80102790 <microdelay>
8010587c:	83 eb 01             	sub    $0x1,%ebx
8010587f:	74 07                	je     80105888 <uartputc+0x38>
80105881:	89 f2                	mov    %esi,%edx
80105883:	ec                   	in     (%dx),%al
80105884:	a8 20                	test   $0x20,%al
80105886:	74 e8                	je     80105870 <uartputc+0x20>
80105888:	0f b6 45 08          	movzbl 0x8(%ebp),%eax
8010588c:	ba f8 03 00 00       	mov    $0x3f8,%edx
80105891:	ee                   	out    %al,(%dx)
80105892:	83 c4 10             	add    $0x10,%esp
80105895:	5b                   	pop    %ebx
80105896:	5e                   	pop    %esi
80105897:	5d                   	pop    %ebp
80105898:	f3 c3                	repz ret 
8010589a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

801058a0 <uartinit>:
801058a0:	55                   	push   %ebp
801058a1:	31 c9                	xor    %ecx,%ecx
801058a3:	89 e5                	mov    %esp,%ebp
801058a5:	89 c8                	mov    %ecx,%eax
801058a7:	57                   	push   %edi
801058a8:	bf fa 03 00 00       	mov    $0x3fa,%edi
801058ad:	56                   	push   %esi
801058ae:	89 fa                	mov    %edi,%edx
801058b0:	53                   	push   %ebx
801058b1:	83 ec 1c             	sub    $0x1c,%esp
801058b4:	ee                   	out    %al,(%dx)
801058b5:	be fb 03 00 00       	mov    $0x3fb,%esi
801058ba:	b8 80 ff ff ff       	mov    $0xffffff80,%eax
801058bf:	89 f2                	mov    %esi,%edx
801058c1:	ee                   	out    %al,(%dx)
801058c2:	b8 0c 00 00 00       	mov    $0xc,%eax
801058c7:	b2 f8                	mov    $0xf8,%dl
801058c9:	ee                   	out    %al,(%dx)
801058ca:	bb f9 03 00 00       	mov    $0x3f9,%ebx
801058cf:	89 c8                	mov    %ecx,%eax
801058d1:	89 da                	mov    %ebx,%edx
801058d3:	ee                   	out    %al,(%dx)
801058d4:	b8 03 00 00 00       	mov    $0x3,%eax
801058d9:	89 f2                	mov    %esi,%edx
801058db:	ee                   	out    %al,(%dx)
801058dc:	b2 fc                	mov    $0xfc,%dl
801058de:	89 c8                	mov    %ecx,%eax
801058e0:	ee                   	out    %al,(%dx)
801058e1:	b8 01 00 00 00       	mov    $0x1,%eax
801058e6:	89 da                	mov    %ebx,%edx
801058e8:	ee                   	out    %al,(%dx)
801058e9:	b2 fd                	mov    $0xfd,%dl
801058eb:	ec                   	in     (%dx),%al
801058ec:	3c ff                	cmp    $0xff,%al
801058ee:	74 42                	je     80105932 <uartinit+0x92>
801058f0:	c7 05 bc a5 10 80 01 	movl   $0x1,0x8010a5bc
801058f7:	00 00 00 
801058fa:	89 fa                	mov    %edi,%edx
801058fc:	ec                   	in     (%dx),%al
801058fd:	b2 f8                	mov    $0xf8,%dl
801058ff:	ec                   	in     (%dx),%al
80105900:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
80105907:	00 
80105908:	bb d0 77 10 80       	mov    $0x801077d0,%ebx
8010590d:	c7 04 24 04 00 00 00 	movl   $0x4,(%esp)
80105914:	e8 87 c9 ff ff       	call   801022a0 <ioapicenable>
80105919:	b8 78 00 00 00       	mov    $0x78,%eax
8010591e:	66 90                	xchg   %ax,%ax
80105920:	89 04 24             	mov    %eax,(%esp)
80105923:	83 c3 01             	add    $0x1,%ebx
80105926:	e8 25 ff ff ff       	call   80105850 <uartputc>
8010592b:	0f be 03             	movsbl (%ebx),%eax
8010592e:	84 c0                	test   %al,%al
80105930:	75 ee                	jne    80105920 <uartinit+0x80>
80105932:	83 c4 1c             	add    $0x1c,%esp
80105935:	5b                   	pop    %ebx
80105936:	5e                   	pop    %esi
80105937:	5f                   	pop    %edi
80105938:	5d                   	pop    %ebp
80105939:	c3                   	ret    
8010593a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

80105940 <uartintr>:
80105940:	55                   	push   %ebp
80105941:	89 e5                	mov    %esp,%ebp
80105943:	83 ec 18             	sub    $0x18,%esp
80105946:	c7 04 24 20 58 10 80 	movl   $0x80105820,(%esp)
8010594d:	e8 5e ae ff ff       	call   801007b0 <consoleintr>
80105952:	c9                   	leave  
80105953:	c3                   	ret    

80105954 <vector0>:
80105954:	6a 00                	push   $0x0
80105956:	6a 00                	push   $0x0
80105958:	e9 70 fa ff ff       	jmp    801053cd <alltraps>

8010595d <vector1>:
8010595d:	6a 00                	push   $0x0
8010595f:	6a 01                	push   $0x1
80105961:	e9 67 fa ff ff       	jmp    801053cd <alltraps>

80105966 <vector2>:
80105966:	6a 00                	push   $0x0
80105968:	6a 02                	push   $0x2
8010596a:	e9 5e fa ff ff       	jmp    801053cd <alltraps>

8010596f <vector3>:
8010596f:	6a 00                	push   $0x0
80105971:	6a 03                	push   $0x3
80105973:	e9 55 fa ff ff       	jmp    801053cd <alltraps>

80105978 <vector4>:
80105978:	6a 00                	push   $0x0
8010597a:	6a 04                	push   $0x4
8010597c:	e9 4c fa ff ff       	jmp    801053cd <alltraps>

80105981 <vector5>:
80105981:	6a 00                	push   $0x0
80105983:	6a 05                	push   $0x5
80105985:	e9 43 fa ff ff       	jmp    801053cd <alltraps>

8010598a <vector6>:
8010598a:	6a 00                	push   $0x0
8010598c:	6a 06                	push   $0x6
8010598e:	e9 3a fa ff ff       	jmp    801053cd <alltraps>

80105993 <vector7>:
80105993:	6a 00                	push   $0x0
80105995:	6a 07                	push   $0x7
80105997:	e9 31 fa ff ff       	jmp    801053cd <alltraps>

8010599c <vector8>:
8010599c:	6a 08                	push   $0x8
8010599e:	e9 2a fa ff ff       	jmp    801053cd <alltraps>

801059a3 <vector9>:
801059a3:	6a 00                	push   $0x0
801059a5:	6a 09                	push   $0x9
801059a7:	e9 21 fa ff ff       	jmp    801053cd <alltraps>

801059ac <vector10>:
801059ac:	6a 0a                	push   $0xa
801059ae:	e9 1a fa ff ff       	jmp    801053cd <alltraps>

801059b3 <vector11>:
801059b3:	6a 0b                	push   $0xb
801059b5:	e9 13 fa ff ff       	jmp    801053cd <alltraps>

801059ba <vector12>:
801059ba:	6a 0c                	push   $0xc
801059bc:	e9 0c fa ff ff       	jmp    801053cd <alltraps>

801059c1 <vector13>:
801059c1:	6a 0d                	push   $0xd
801059c3:	e9 05 fa ff ff       	jmp    801053cd <alltraps>

801059c8 <vector14>:
801059c8:	6a 0e                	push   $0xe
801059ca:	e9 fe f9 ff ff       	jmp    801053cd <alltraps>

801059cf <vector15>:
801059cf:	6a 00                	push   $0x0
801059d1:	6a 0f                	push   $0xf
801059d3:	e9 f5 f9 ff ff       	jmp    801053cd <alltraps>

801059d8 <vector16>:
801059d8:	6a 00                	push   $0x0
801059da:	6a 10                	push   $0x10
801059dc:	e9 ec f9 ff ff       	jmp    801053cd <alltraps>

801059e1 <vector17>:
801059e1:	6a 11                	push   $0x11
801059e3:	e9 e5 f9 ff ff       	jmp    801053cd <alltraps>

801059e8 <vector18>:
801059e8:	6a 00                	push   $0x0
801059ea:	6a 12                	push   $0x12
801059ec:	e9 dc f9 ff ff       	jmp    801053cd <alltraps>

801059f1 <vector19>:
801059f1:	6a 00                	push   $0x0
801059f3:	6a 13                	push   $0x13
801059f5:	e9 d3 f9 ff ff       	jmp    801053cd <alltraps>

801059fa <vector20>:
801059fa:	6a 00                	push   $0x0
801059fc:	6a 14                	push   $0x14
801059fe:	e9 ca f9 ff ff       	jmp    801053cd <alltraps>

80105a03 <vector21>:
80105a03:	6a 00                	push   $0x0
80105a05:	6a 15                	push   $0x15
80105a07:	e9 c1 f9 ff ff       	jmp    801053cd <alltraps>

80105a0c <vector22>:
80105a0c:	6a 00                	push   $0x0
80105a0e:	6a 16                	push   $0x16
80105a10:	e9 b8 f9 ff ff       	jmp    801053cd <alltraps>

80105a15 <vector23>:
80105a15:	6a 00                	push   $0x0
80105a17:	6a 17                	push   $0x17
80105a19:	e9 af f9 ff ff       	jmp    801053cd <alltraps>

80105a1e <vector24>:
80105a1e:	6a 00                	push   $0x0
80105a20:	6a 18                	push   $0x18
80105a22:	e9 a6 f9 ff ff       	jmp    801053cd <alltraps>

80105a27 <vector25>:
80105a27:	6a 00                	push   $0x0
80105a29:	6a 19                	push   $0x19
80105a2b:	e9 9d f9 ff ff       	jmp    801053cd <alltraps>

80105a30 <vector26>:
80105a30:	6a 00                	push   $0x0
80105a32:	6a 1a                	push   $0x1a
80105a34:	e9 94 f9 ff ff       	jmp    801053cd <alltraps>

80105a39 <vector27>:
80105a39:	6a 00                	push   $0x0
80105a3b:	6a 1b                	push   $0x1b
80105a3d:	e9 8b f9 ff ff       	jmp    801053cd <alltraps>

80105a42 <vector28>:
80105a42:	6a 00                	push   $0x0
80105a44:	6a 1c                	push   $0x1c
80105a46:	e9 82 f9 ff ff       	jmp    801053cd <alltraps>

80105a4b <vector29>:
80105a4b:	6a 00                	push   $0x0
80105a4d:	6a 1d                	push   $0x1d
80105a4f:	e9 79 f9 ff ff       	jmp    801053cd <alltraps>

80105a54 <vector30>:
80105a54:	6a 00                	push   $0x0
80105a56:	6a 1e                	push   $0x1e
80105a58:	e9 70 f9 ff ff       	jmp    801053cd <alltraps>

80105a5d <vector31>:
80105a5d:	6a 00                	push   $0x0
80105a5f:	6a 1f                	push   $0x1f
80105a61:	e9 67 f9 ff ff       	jmp    801053cd <alltraps>

80105a66 <vector32>:
80105a66:	6a 00                	push   $0x0
80105a68:	6a 20                	push   $0x20
80105a6a:	e9 5e f9 ff ff       	jmp    801053cd <alltraps>

80105a6f <vector33>:
80105a6f:	6a 00                	push   $0x0
80105a71:	6a 21                	push   $0x21
80105a73:	e9 55 f9 ff ff       	jmp    801053cd <alltraps>

80105a78 <vector34>:
80105a78:	6a 00                	push   $0x0
80105a7a:	6a 22                	push   $0x22
80105a7c:	e9 4c f9 ff ff       	jmp    801053cd <alltraps>

80105a81 <vector35>:
80105a81:	6a 00                	push   $0x0
80105a83:	6a 23                	push   $0x23
80105a85:	e9 43 f9 ff ff       	jmp    801053cd <alltraps>

80105a8a <vector36>:
80105a8a:	6a 00                	push   $0x0
80105a8c:	6a 24                	push   $0x24
80105a8e:	e9 3a f9 ff ff       	jmp    801053cd <alltraps>

80105a93 <vector37>:
80105a93:	6a 00                	push   $0x0
80105a95:	6a 25                	push   $0x25
80105a97:	e9 31 f9 ff ff       	jmp    801053cd <alltraps>

80105a9c <vector38>:
80105a9c:	6a 00                	push   $0x0
80105a9e:	6a 26                	push   $0x26
80105aa0:	e9 28 f9 ff ff       	jmp    801053cd <alltraps>

80105aa5 <vector39>:
80105aa5:	6a 00                	push   $0x0
80105aa7:	6a 27                	push   $0x27
80105aa9:	e9 1f f9 ff ff       	jmp    801053cd <alltraps>

80105aae <vector40>:
80105aae:	6a 00                	push   $0x0
80105ab0:	6a 28                	push   $0x28
80105ab2:	e9 16 f9 ff ff       	jmp    801053cd <alltraps>

80105ab7 <vector41>:
80105ab7:	6a 00                	push   $0x0
80105ab9:	6a 29                	push   $0x29
80105abb:	e9 0d f9 ff ff       	jmp    801053cd <alltraps>

80105ac0 <vector42>:
80105ac0:	6a 00                	push   $0x0
80105ac2:	6a 2a                	push   $0x2a
80105ac4:	e9 04 f9 ff ff       	jmp    801053cd <alltraps>

80105ac9 <vector43>:
80105ac9:	6a 00                	push   $0x0
80105acb:	6a 2b                	push   $0x2b
80105acd:	e9 fb f8 ff ff       	jmp    801053cd <alltraps>

80105ad2 <vector44>:
80105ad2:	6a 00                	push   $0x0
80105ad4:	6a 2c                	push   $0x2c
80105ad6:	e9 f2 f8 ff ff       	jmp    801053cd <alltraps>

80105adb <vector45>:
80105adb:	6a 00                	push   $0x0
80105add:	6a 2d                	push   $0x2d
80105adf:	e9 e9 f8 ff ff       	jmp    801053cd <alltraps>

80105ae4 <vector46>:
80105ae4:	6a 00                	push   $0x0
80105ae6:	6a 2e                	push   $0x2e
80105ae8:	e9 e0 f8 ff ff       	jmp    801053cd <alltraps>

80105aed <vector47>:
80105aed:	6a 00                	push   $0x0
80105aef:	6a 2f                	push   $0x2f
80105af1:	e9 d7 f8 ff ff       	jmp    801053cd <alltraps>

80105af6 <vector48>:
80105af6:	6a 00                	push   $0x0
80105af8:	6a 30                	push   $0x30
80105afa:	e9 ce f8 ff ff       	jmp    801053cd <alltraps>

80105aff <vector49>:
80105aff:	6a 00                	push   $0x0
80105b01:	6a 31                	push   $0x31
80105b03:	e9 c5 f8 ff ff       	jmp    801053cd <alltraps>

80105b08 <vector50>:
80105b08:	6a 00                	push   $0x0
80105b0a:	6a 32                	push   $0x32
80105b0c:	e9 bc f8 ff ff       	jmp    801053cd <alltraps>

80105b11 <vector51>:
80105b11:	6a 00                	push   $0x0
80105b13:	6a 33                	push   $0x33
80105b15:	e9 b3 f8 ff ff       	jmp    801053cd <alltraps>

80105b1a <vector52>:
80105b1a:	6a 00                	push   $0x0
80105b1c:	6a 34                	push   $0x34
80105b1e:	e9 aa f8 ff ff       	jmp    801053cd <alltraps>

80105b23 <vector53>:
80105b23:	6a 00                	push   $0x0
80105b25:	6a 35                	push   $0x35
80105b27:	e9 a1 f8 ff ff       	jmp    801053cd <alltraps>

80105b2c <vector54>:
80105b2c:	6a 00                	push   $0x0
80105b2e:	6a 36                	push   $0x36
80105b30:	e9 98 f8 ff ff       	jmp    801053cd <alltraps>

80105b35 <vector55>:
80105b35:	6a 00                	push   $0x0
80105b37:	6a 37                	push   $0x37
80105b39:	e9 8f f8 ff ff       	jmp    801053cd <alltraps>

80105b3e <vector56>:
80105b3e:	6a 00                	push   $0x0
80105b40:	6a 38                	push   $0x38
80105b42:	e9 86 f8 ff ff       	jmp    801053cd <alltraps>

80105b47 <vector57>:
80105b47:	6a 00                	push   $0x0
80105b49:	6a 39                	push   $0x39
80105b4b:	e9 7d f8 ff ff       	jmp    801053cd <alltraps>

80105b50 <vector58>:
80105b50:	6a 00                	push   $0x0
80105b52:	6a 3a                	push   $0x3a
80105b54:	e9 74 f8 ff ff       	jmp    801053cd <alltraps>

80105b59 <vector59>:
80105b59:	6a 00                	push   $0x0
80105b5b:	6a 3b                	push   $0x3b
80105b5d:	e9 6b f8 ff ff       	jmp    801053cd <alltraps>

80105b62 <vector60>:
80105b62:	6a 00                	push   $0x0
80105b64:	6a 3c                	push   $0x3c
80105b66:	e9 62 f8 ff ff       	jmp    801053cd <alltraps>

80105b6b <vector61>:
80105b6b:	6a 00                	push   $0x0
80105b6d:	6a 3d                	push   $0x3d
80105b6f:	e9 59 f8 ff ff       	jmp    801053cd <alltraps>

80105b74 <vector62>:
80105b74:	6a 00                	push   $0x0
80105b76:	6a 3e                	push   $0x3e
80105b78:	e9 50 f8 ff ff       	jmp    801053cd <alltraps>

80105b7d <vector63>:
80105b7d:	6a 00                	push   $0x0
80105b7f:	6a 3f                	push   $0x3f
80105b81:	e9 47 f8 ff ff       	jmp    801053cd <alltraps>

80105b86 <vector64>:
80105b86:	6a 00                	push   $0x0
80105b88:	6a 40                	push   $0x40
80105b8a:	e9 3e f8 ff ff       	jmp    801053cd <alltraps>

80105b8f <vector65>:
80105b8f:	6a 00                	push   $0x0
80105b91:	6a 41                	push   $0x41
80105b93:	e9 35 f8 ff ff       	jmp    801053cd <alltraps>

80105b98 <vector66>:
80105b98:	6a 00                	push   $0x0
80105b9a:	6a 42                	push   $0x42
80105b9c:	e9 2c f8 ff ff       	jmp    801053cd <alltraps>

80105ba1 <vector67>:
80105ba1:	6a 00                	push   $0x0
80105ba3:	6a 43                	push   $0x43
80105ba5:	e9 23 f8 ff ff       	jmp    801053cd <alltraps>

80105baa <vector68>:
80105baa:	6a 00                	push   $0x0
80105bac:	6a 44                	push   $0x44
80105bae:	e9 1a f8 ff ff       	jmp    801053cd <alltraps>

80105bb3 <vector69>:
80105bb3:	6a 00                	push   $0x0
80105bb5:	6a 45                	push   $0x45
80105bb7:	e9 11 f8 ff ff       	jmp    801053cd <alltraps>

80105bbc <vector70>:
80105bbc:	6a 00                	push   $0x0
80105bbe:	6a 46                	push   $0x46
80105bc0:	e9 08 f8 ff ff       	jmp    801053cd <alltraps>

80105bc5 <vector71>:
80105bc5:	6a 00                	push   $0x0
80105bc7:	6a 47                	push   $0x47
80105bc9:	e9 ff f7 ff ff       	jmp    801053cd <alltraps>

80105bce <vector72>:
80105bce:	6a 00                	push   $0x0
80105bd0:	6a 48                	push   $0x48
80105bd2:	e9 f6 f7 ff ff       	jmp    801053cd <alltraps>

80105bd7 <vector73>:
80105bd7:	6a 00                	push   $0x0
80105bd9:	6a 49                	push   $0x49
80105bdb:	e9 ed f7 ff ff       	jmp    801053cd <alltraps>

80105be0 <vector74>:
80105be0:	6a 00                	push   $0x0
80105be2:	6a 4a                	push   $0x4a
80105be4:	e9 e4 f7 ff ff       	jmp    801053cd <alltraps>

80105be9 <vector75>:
80105be9:	6a 00                	push   $0x0
80105beb:	6a 4b                	push   $0x4b
80105bed:	e9 db f7 ff ff       	jmp    801053cd <alltraps>

80105bf2 <vector76>:
80105bf2:	6a 00                	push   $0x0
80105bf4:	6a 4c                	push   $0x4c
80105bf6:	e9 d2 f7 ff ff       	jmp    801053cd <alltraps>

80105bfb <vector77>:
80105bfb:	6a 00                	push   $0x0
80105bfd:	6a 4d                	push   $0x4d
80105bff:	e9 c9 f7 ff ff       	jmp    801053cd <alltraps>

80105c04 <vector78>:
80105c04:	6a 00                	push   $0x0
80105c06:	6a 4e                	push   $0x4e
80105c08:	e9 c0 f7 ff ff       	jmp    801053cd <alltraps>

80105c0d <vector79>:
80105c0d:	6a 00                	push   $0x0
80105c0f:	6a 4f                	push   $0x4f
80105c11:	e9 b7 f7 ff ff       	jmp    801053cd <alltraps>

80105c16 <vector80>:
80105c16:	6a 00                	push   $0x0
80105c18:	6a 50                	push   $0x50
80105c1a:	e9 ae f7 ff ff       	jmp    801053cd <alltraps>

80105c1f <vector81>:
80105c1f:	6a 00                	push   $0x0
80105c21:	6a 51                	push   $0x51
80105c23:	e9 a5 f7 ff ff       	jmp    801053cd <alltraps>

80105c28 <vector82>:
80105c28:	6a 00                	push   $0x0
80105c2a:	6a 52                	push   $0x52
80105c2c:	e9 9c f7 ff ff       	jmp    801053cd <alltraps>

80105c31 <vector83>:
80105c31:	6a 00                	push   $0x0
80105c33:	6a 53                	push   $0x53
80105c35:	e9 93 f7 ff ff       	jmp    801053cd <alltraps>

80105c3a <vector84>:
80105c3a:	6a 00                	push   $0x0
80105c3c:	6a 54                	push   $0x54
80105c3e:	e9 8a f7 ff ff       	jmp    801053cd <alltraps>

80105c43 <vector85>:
80105c43:	6a 00                	push   $0x0
80105c45:	6a 55                	push   $0x55
80105c47:	e9 81 f7 ff ff       	jmp    801053cd <alltraps>

80105c4c <vector86>:
80105c4c:	6a 00                	push   $0x0
80105c4e:	6a 56                	push   $0x56
80105c50:	e9 78 f7 ff ff       	jmp    801053cd <alltraps>

80105c55 <vector87>:
80105c55:	6a 00                	push   $0x0
80105c57:	6a 57                	push   $0x57
80105c59:	e9 6f f7 ff ff       	jmp    801053cd <alltraps>

80105c5e <vector88>:
80105c5e:	6a 00                	push   $0x0
80105c60:	6a 58                	push   $0x58
80105c62:	e9 66 f7 ff ff       	jmp    801053cd <alltraps>

80105c67 <vector89>:
80105c67:	6a 00                	push   $0x0
80105c69:	6a 59                	push   $0x59
80105c6b:	e9 5d f7 ff ff       	jmp    801053cd <alltraps>

80105c70 <vector90>:
80105c70:	6a 00                	push   $0x0
80105c72:	6a 5a                	push   $0x5a
80105c74:	e9 54 f7 ff ff       	jmp    801053cd <alltraps>

80105c79 <vector91>:
80105c79:	6a 00                	push   $0x0
80105c7b:	6a 5b                	push   $0x5b
80105c7d:	e9 4b f7 ff ff       	jmp    801053cd <alltraps>

80105c82 <vector92>:
80105c82:	6a 00                	push   $0x0
80105c84:	6a 5c                	push   $0x5c
80105c86:	e9 42 f7 ff ff       	jmp    801053cd <alltraps>

80105c8b <vector93>:
80105c8b:	6a 00                	push   $0x0
80105c8d:	6a 5d                	push   $0x5d
80105c8f:	e9 39 f7 ff ff       	jmp    801053cd <alltraps>

80105c94 <vector94>:
80105c94:	6a 00                	push   $0x0
80105c96:	6a 5e                	push   $0x5e
80105c98:	e9 30 f7 ff ff       	jmp    801053cd <alltraps>

80105c9d <vector95>:
80105c9d:	6a 00                	push   $0x0
80105c9f:	6a 5f                	push   $0x5f
80105ca1:	e9 27 f7 ff ff       	jmp    801053cd <alltraps>

80105ca6 <vector96>:
80105ca6:	6a 00                	push   $0x0
80105ca8:	6a 60                	push   $0x60
80105caa:	e9 1e f7 ff ff       	jmp    801053cd <alltraps>

80105caf <vector97>:
80105caf:	6a 00                	push   $0x0
80105cb1:	6a 61                	push   $0x61
80105cb3:	e9 15 f7 ff ff       	jmp    801053cd <alltraps>

80105cb8 <vector98>:
80105cb8:	6a 00                	push   $0x0
80105cba:	6a 62                	push   $0x62
80105cbc:	e9 0c f7 ff ff       	jmp    801053cd <alltraps>

80105cc1 <vector99>:
80105cc1:	6a 00                	push   $0x0
80105cc3:	6a 63                	push   $0x63
80105cc5:	e9 03 f7 ff ff       	jmp    801053cd <alltraps>

80105cca <vector100>:
80105cca:	6a 00                	push   $0x0
80105ccc:	6a 64                	push   $0x64
80105cce:	e9 fa f6 ff ff       	jmp    801053cd <alltraps>

80105cd3 <vector101>:
80105cd3:	6a 00                	push   $0x0
80105cd5:	6a 65                	push   $0x65
80105cd7:	e9 f1 f6 ff ff       	jmp    801053cd <alltraps>

80105cdc <vector102>:
80105cdc:	6a 00                	push   $0x0
80105cde:	6a 66                	push   $0x66
80105ce0:	e9 e8 f6 ff ff       	jmp    801053cd <alltraps>

80105ce5 <vector103>:
80105ce5:	6a 00                	push   $0x0
80105ce7:	6a 67                	push   $0x67
80105ce9:	e9 df f6 ff ff       	jmp    801053cd <alltraps>

80105cee <vector104>:
80105cee:	6a 00                	push   $0x0
80105cf0:	6a 68                	push   $0x68
80105cf2:	e9 d6 f6 ff ff       	jmp    801053cd <alltraps>

80105cf7 <vector105>:
80105cf7:	6a 00                	push   $0x0
80105cf9:	6a 69                	push   $0x69
80105cfb:	e9 cd f6 ff ff       	jmp    801053cd <alltraps>

80105d00 <vector106>:
80105d00:	6a 00                	push   $0x0
80105d02:	6a 6a                	push   $0x6a
80105d04:	e9 c4 f6 ff ff       	jmp    801053cd <alltraps>

80105d09 <vector107>:
80105d09:	6a 00                	push   $0x0
80105d0b:	6a 6b                	push   $0x6b
80105d0d:	e9 bb f6 ff ff       	jmp    801053cd <alltraps>

80105d12 <vector108>:
80105d12:	6a 00                	push   $0x0
80105d14:	6a 6c                	push   $0x6c
80105d16:	e9 b2 f6 ff ff       	jmp    801053cd <alltraps>

80105d1b <vector109>:
80105d1b:	6a 00                	push   $0x0
80105d1d:	6a 6d                	push   $0x6d
80105d1f:	e9 a9 f6 ff ff       	jmp    801053cd <alltraps>

80105d24 <vector110>:
80105d24:	6a 00                	push   $0x0
80105d26:	6a 6e                	push   $0x6e
80105d28:	e9 a0 f6 ff ff       	jmp    801053cd <alltraps>

80105d2d <vector111>:
80105d2d:	6a 00                	push   $0x0
80105d2f:	6a 6f                	push   $0x6f
80105d31:	e9 97 f6 ff ff       	jmp    801053cd <alltraps>

80105d36 <vector112>:
80105d36:	6a 00                	push   $0x0
80105d38:	6a 70                	push   $0x70
80105d3a:	e9 8e f6 ff ff       	jmp    801053cd <alltraps>

80105d3f <vector113>:
80105d3f:	6a 00                	push   $0x0
80105d41:	6a 71                	push   $0x71
80105d43:	e9 85 f6 ff ff       	jmp    801053cd <alltraps>

80105d48 <vector114>:
80105d48:	6a 00                	push   $0x0
80105d4a:	6a 72                	push   $0x72
80105d4c:	e9 7c f6 ff ff       	jmp    801053cd <alltraps>

80105d51 <vector115>:
80105d51:	6a 00                	push   $0x0
80105d53:	6a 73                	push   $0x73
80105d55:	e9 73 f6 ff ff       	jmp    801053cd <alltraps>

80105d5a <vector116>:
80105d5a:	6a 00                	push   $0x0
80105d5c:	6a 74                	push   $0x74
80105d5e:	e9 6a f6 ff ff       	jmp    801053cd <alltraps>

80105d63 <vector117>:
80105d63:	6a 00                	push   $0x0
80105d65:	6a 75                	push   $0x75
80105d67:	e9 61 f6 ff ff       	jmp    801053cd <alltraps>

80105d6c <vector118>:
80105d6c:	6a 00                	push   $0x0
80105d6e:	6a 76                	push   $0x76
80105d70:	e9 58 f6 ff ff       	jmp    801053cd <alltraps>

80105d75 <vector119>:
80105d75:	6a 00                	push   $0x0
80105d77:	6a 77                	push   $0x77
80105d79:	e9 4f f6 ff ff       	jmp    801053cd <alltraps>

80105d7e <vector120>:
80105d7e:	6a 00                	push   $0x0
80105d80:	6a 78                	push   $0x78
80105d82:	e9 46 f6 ff ff       	jmp    801053cd <alltraps>

80105d87 <vector121>:
80105d87:	6a 00                	push   $0x0
80105d89:	6a 79                	push   $0x79
80105d8b:	e9 3d f6 ff ff       	jmp    801053cd <alltraps>

80105d90 <vector122>:
80105d90:	6a 00                	push   $0x0
80105d92:	6a 7a                	push   $0x7a
80105d94:	e9 34 f6 ff ff       	jmp    801053cd <alltraps>

80105d99 <vector123>:
80105d99:	6a 00                	push   $0x0
80105d9b:	6a 7b                	push   $0x7b
80105d9d:	e9 2b f6 ff ff       	jmp    801053cd <alltraps>

80105da2 <vector124>:
80105da2:	6a 00                	push   $0x0
80105da4:	6a 7c                	push   $0x7c
80105da6:	e9 22 f6 ff ff       	jmp    801053cd <alltraps>

80105dab <vector125>:
80105dab:	6a 00                	push   $0x0
80105dad:	6a 7d                	push   $0x7d
80105daf:	e9 19 f6 ff ff       	jmp    801053cd <alltraps>

80105db4 <vector126>:
80105db4:	6a 00                	push   $0x0
80105db6:	6a 7e                	push   $0x7e
80105db8:	e9 10 f6 ff ff       	jmp    801053cd <alltraps>

80105dbd <vector127>:
80105dbd:	6a 00                	push   $0x0
80105dbf:	6a 7f                	push   $0x7f
80105dc1:	e9 07 f6 ff ff       	jmp    801053cd <alltraps>

80105dc6 <vector128>:
80105dc6:	6a 00                	push   $0x0
80105dc8:	68 80 00 00 00       	push   $0x80
80105dcd:	e9 fb f5 ff ff       	jmp    801053cd <alltraps>

80105dd2 <vector129>:
80105dd2:	6a 00                	push   $0x0
80105dd4:	68 81 00 00 00       	push   $0x81
80105dd9:	e9 ef f5 ff ff       	jmp    801053cd <alltraps>

80105dde <vector130>:
80105dde:	6a 00                	push   $0x0
80105de0:	68 82 00 00 00       	push   $0x82
80105de5:	e9 e3 f5 ff ff       	jmp    801053cd <alltraps>

80105dea <vector131>:
80105dea:	6a 00                	push   $0x0
80105dec:	68 83 00 00 00       	push   $0x83
80105df1:	e9 d7 f5 ff ff       	jmp    801053cd <alltraps>

80105df6 <vector132>:
80105df6:	6a 00                	push   $0x0
80105df8:	68 84 00 00 00       	push   $0x84
80105dfd:	e9 cb f5 ff ff       	jmp    801053cd <alltraps>

80105e02 <vector133>:
80105e02:	6a 00                	push   $0x0
80105e04:	68 85 00 00 00       	push   $0x85
80105e09:	e9 bf f5 ff ff       	jmp    801053cd <alltraps>

80105e0e <vector134>:
80105e0e:	6a 00                	push   $0x0
80105e10:	68 86 00 00 00       	push   $0x86
80105e15:	e9 b3 f5 ff ff       	jmp    801053cd <alltraps>

80105e1a <vector135>:
80105e1a:	6a 00                	push   $0x0
80105e1c:	68 87 00 00 00       	push   $0x87
80105e21:	e9 a7 f5 ff ff       	jmp    801053cd <alltraps>

80105e26 <vector136>:
80105e26:	6a 00                	push   $0x0
80105e28:	68 88 00 00 00       	push   $0x88
80105e2d:	e9 9b f5 ff ff       	jmp    801053cd <alltraps>

80105e32 <vector137>:
80105e32:	6a 00                	push   $0x0
80105e34:	68 89 00 00 00       	push   $0x89
80105e39:	e9 8f f5 ff ff       	jmp    801053cd <alltraps>

80105e3e <vector138>:
80105e3e:	6a 00                	push   $0x0
80105e40:	68 8a 00 00 00       	push   $0x8a
80105e45:	e9 83 f5 ff ff       	jmp    801053cd <alltraps>

80105e4a <vector139>:
80105e4a:	6a 00                	push   $0x0
80105e4c:	68 8b 00 00 00       	push   $0x8b
80105e51:	e9 77 f5 ff ff       	jmp    801053cd <alltraps>

80105e56 <vector140>:
80105e56:	6a 00                	push   $0x0
80105e58:	68 8c 00 00 00       	push   $0x8c
80105e5d:	e9 6b f5 ff ff       	jmp    801053cd <alltraps>

80105e62 <vector141>:
80105e62:	6a 00                	push   $0x0
80105e64:	68 8d 00 00 00       	push   $0x8d
80105e69:	e9 5f f5 ff ff       	jmp    801053cd <alltraps>

80105e6e <vector142>:
80105e6e:	6a 00                	push   $0x0
80105e70:	68 8e 00 00 00       	push   $0x8e
80105e75:	e9 53 f5 ff ff       	jmp    801053cd <alltraps>

80105e7a <vector143>:
80105e7a:	6a 00                	push   $0x0
80105e7c:	68 8f 00 00 00       	push   $0x8f
80105e81:	e9 47 f5 ff ff       	jmp    801053cd <alltraps>

80105e86 <vector144>:
80105e86:	6a 00                	push   $0x0
80105e88:	68 90 00 00 00       	push   $0x90
80105e8d:	e9 3b f5 ff ff       	jmp    801053cd <alltraps>

80105e92 <vector145>:
80105e92:	6a 00                	push   $0x0
80105e94:	68 91 00 00 00       	push   $0x91
80105e99:	e9 2f f5 ff ff       	jmp    801053cd <alltraps>

80105e9e <vector146>:
80105e9e:	6a 00                	push   $0x0
80105ea0:	68 92 00 00 00       	push   $0x92
80105ea5:	e9 23 f5 ff ff       	jmp    801053cd <alltraps>

80105eaa <vector147>:
80105eaa:	6a 00                	push   $0x0
80105eac:	68 93 00 00 00       	push   $0x93
80105eb1:	e9 17 f5 ff ff       	jmp    801053cd <alltraps>

80105eb6 <vector148>:
80105eb6:	6a 00                	push   $0x0
80105eb8:	68 94 00 00 00       	push   $0x94
80105ebd:	e9 0b f5 ff ff       	jmp    801053cd <alltraps>

80105ec2 <vector149>:
80105ec2:	6a 00                	push   $0x0
80105ec4:	68 95 00 00 00       	push   $0x95
80105ec9:	e9 ff f4 ff ff       	jmp    801053cd <alltraps>

80105ece <vector150>:
80105ece:	6a 00                	push   $0x0
80105ed0:	68 96 00 00 00       	push   $0x96
80105ed5:	e9 f3 f4 ff ff       	jmp    801053cd <alltraps>

80105eda <vector151>:
80105eda:	6a 00                	push   $0x0
80105edc:	68 97 00 00 00       	push   $0x97
80105ee1:	e9 e7 f4 ff ff       	jmp    801053cd <alltraps>

80105ee6 <vector152>:
80105ee6:	6a 00                	push   $0x0
80105ee8:	68 98 00 00 00       	push   $0x98
80105eed:	e9 db f4 ff ff       	jmp    801053cd <alltraps>

80105ef2 <vector153>:
80105ef2:	6a 00                	push   $0x0
80105ef4:	68 99 00 00 00       	push   $0x99
80105ef9:	e9 cf f4 ff ff       	jmp    801053cd <alltraps>

80105efe <vector154>:
80105efe:	6a 00                	push   $0x0
80105f00:	68 9a 00 00 00       	push   $0x9a
80105f05:	e9 c3 f4 ff ff       	jmp    801053cd <alltraps>

80105f0a <vector155>:
80105f0a:	6a 00                	push   $0x0
80105f0c:	68 9b 00 00 00       	push   $0x9b
80105f11:	e9 b7 f4 ff ff       	jmp    801053cd <alltraps>

80105f16 <vector156>:
80105f16:	6a 00                	push   $0x0
80105f18:	68 9c 00 00 00       	push   $0x9c
80105f1d:	e9 ab f4 ff ff       	jmp    801053cd <alltraps>

80105f22 <vector157>:
80105f22:	6a 00                	push   $0x0
80105f24:	68 9d 00 00 00       	push   $0x9d
80105f29:	e9 9f f4 ff ff       	jmp    801053cd <alltraps>

80105f2e <vector158>:
80105f2e:	6a 00                	push   $0x0
80105f30:	68 9e 00 00 00       	push   $0x9e
80105f35:	e9 93 f4 ff ff       	jmp    801053cd <alltraps>

80105f3a <vector159>:
80105f3a:	6a 00                	push   $0x0
80105f3c:	68 9f 00 00 00       	push   $0x9f
80105f41:	e9 87 f4 ff ff       	jmp    801053cd <alltraps>

80105f46 <vector160>:
80105f46:	6a 00                	push   $0x0
80105f48:	68 a0 00 00 00       	push   $0xa0
80105f4d:	e9 7b f4 ff ff       	jmp    801053cd <alltraps>

80105f52 <vector161>:
80105f52:	6a 00                	push   $0x0
80105f54:	68 a1 00 00 00       	push   $0xa1
80105f59:	e9 6f f4 ff ff       	jmp    801053cd <alltraps>

80105f5e <vector162>:
80105f5e:	6a 00                	push   $0x0
80105f60:	68 a2 00 00 00       	push   $0xa2
80105f65:	e9 63 f4 ff ff       	jmp    801053cd <alltraps>

80105f6a <vector163>:
80105f6a:	6a 00                	push   $0x0
80105f6c:	68 a3 00 00 00       	push   $0xa3
80105f71:	e9 57 f4 ff ff       	jmp    801053cd <alltraps>

80105f76 <vector164>:
80105f76:	6a 00                	push   $0x0
80105f78:	68 a4 00 00 00       	push   $0xa4
80105f7d:	e9 4b f4 ff ff       	jmp    801053cd <alltraps>

80105f82 <vector165>:
80105f82:	6a 00                	push   $0x0
80105f84:	68 a5 00 00 00       	push   $0xa5
80105f89:	e9 3f f4 ff ff       	jmp    801053cd <alltraps>

80105f8e <vector166>:
80105f8e:	6a 00                	push   $0x0
80105f90:	68 a6 00 00 00       	push   $0xa6
80105f95:	e9 33 f4 ff ff       	jmp    801053cd <alltraps>

80105f9a <vector167>:
80105f9a:	6a 00                	push   $0x0
80105f9c:	68 a7 00 00 00       	push   $0xa7
80105fa1:	e9 27 f4 ff ff       	jmp    801053cd <alltraps>

80105fa6 <vector168>:
80105fa6:	6a 00                	push   $0x0
80105fa8:	68 a8 00 00 00       	push   $0xa8
80105fad:	e9 1b f4 ff ff       	jmp    801053cd <alltraps>

80105fb2 <vector169>:
80105fb2:	6a 00                	push   $0x0
80105fb4:	68 a9 00 00 00       	push   $0xa9
80105fb9:	e9 0f f4 ff ff       	jmp    801053cd <alltraps>

80105fbe <vector170>:
80105fbe:	6a 00                	push   $0x0
80105fc0:	68 aa 00 00 00       	push   $0xaa
80105fc5:	e9 03 f4 ff ff       	jmp    801053cd <alltraps>

80105fca <vector171>:
80105fca:	6a 00                	push   $0x0
80105fcc:	68 ab 00 00 00       	push   $0xab
80105fd1:	e9 f7 f3 ff ff       	jmp    801053cd <alltraps>

80105fd6 <vector172>:
80105fd6:	6a 00                	push   $0x0
80105fd8:	68 ac 00 00 00       	push   $0xac
80105fdd:	e9 eb f3 ff ff       	jmp    801053cd <alltraps>

80105fe2 <vector173>:
80105fe2:	6a 00                	push   $0x0
80105fe4:	68 ad 00 00 00       	push   $0xad
80105fe9:	e9 df f3 ff ff       	jmp    801053cd <alltraps>

80105fee <vector174>:
80105fee:	6a 00                	push   $0x0
80105ff0:	68 ae 00 00 00       	push   $0xae
80105ff5:	e9 d3 f3 ff ff       	jmp    801053cd <alltraps>

80105ffa <vector175>:
80105ffa:	6a 00                	push   $0x0
80105ffc:	68 af 00 00 00       	push   $0xaf
80106001:	e9 c7 f3 ff ff       	jmp    801053cd <alltraps>

80106006 <vector176>:
80106006:	6a 00                	push   $0x0
80106008:	68 b0 00 00 00       	push   $0xb0
8010600d:	e9 bb f3 ff ff       	jmp    801053cd <alltraps>

80106012 <vector177>:
80106012:	6a 00                	push   $0x0
80106014:	68 b1 00 00 00       	push   $0xb1
80106019:	e9 af f3 ff ff       	jmp    801053cd <alltraps>

8010601e <vector178>:
8010601e:	6a 00                	push   $0x0
80106020:	68 b2 00 00 00       	push   $0xb2
80106025:	e9 a3 f3 ff ff       	jmp    801053cd <alltraps>

8010602a <vector179>:
8010602a:	6a 00                	push   $0x0
8010602c:	68 b3 00 00 00       	push   $0xb3
80106031:	e9 97 f3 ff ff       	jmp    801053cd <alltraps>

80106036 <vector180>:
80106036:	6a 00                	push   $0x0
80106038:	68 b4 00 00 00       	push   $0xb4
8010603d:	e9 8b f3 ff ff       	jmp    801053cd <alltraps>

80106042 <vector181>:
80106042:	6a 00                	push   $0x0
80106044:	68 b5 00 00 00       	push   $0xb5
80106049:	e9 7f f3 ff ff       	jmp    801053cd <alltraps>

8010604e <vector182>:
8010604e:	6a 00                	push   $0x0
80106050:	68 b6 00 00 00       	push   $0xb6
80106055:	e9 73 f3 ff ff       	jmp    801053cd <alltraps>

8010605a <vector183>:
8010605a:	6a 00                	push   $0x0
8010605c:	68 b7 00 00 00       	push   $0xb7
80106061:	e9 67 f3 ff ff       	jmp    801053cd <alltraps>

80106066 <vector184>:
80106066:	6a 00                	push   $0x0
80106068:	68 b8 00 00 00       	push   $0xb8
8010606d:	e9 5b f3 ff ff       	jmp    801053cd <alltraps>

80106072 <vector185>:
80106072:	6a 00                	push   $0x0
80106074:	68 b9 00 00 00       	push   $0xb9
80106079:	e9 4f f3 ff ff       	jmp    801053cd <alltraps>

8010607e <vector186>:
8010607e:	6a 00                	push   $0x0
80106080:	68 ba 00 00 00       	push   $0xba
80106085:	e9 43 f3 ff ff       	jmp    801053cd <alltraps>

8010608a <vector187>:
8010608a:	6a 00                	push   $0x0
8010608c:	68 bb 00 00 00       	push   $0xbb
80106091:	e9 37 f3 ff ff       	jmp    801053cd <alltraps>

80106096 <vector188>:
80106096:	6a 00                	push   $0x0
80106098:	68 bc 00 00 00       	push   $0xbc
8010609d:	e9 2b f3 ff ff       	jmp    801053cd <alltraps>

801060a2 <vector189>:
801060a2:	6a 00                	push   $0x0
801060a4:	68 bd 00 00 00       	push   $0xbd
801060a9:	e9 1f f3 ff ff       	jmp    801053cd <alltraps>

801060ae <vector190>:
801060ae:	6a 00                	push   $0x0
801060b0:	68 be 00 00 00       	push   $0xbe
801060b5:	e9 13 f3 ff ff       	jmp    801053cd <alltraps>

801060ba <vector191>:
801060ba:	6a 00                	push   $0x0
801060bc:	68 bf 00 00 00       	push   $0xbf
801060c1:	e9 07 f3 ff ff       	jmp    801053cd <alltraps>

801060c6 <vector192>:
801060c6:	6a 00                	push   $0x0
801060c8:	68 c0 00 00 00       	push   $0xc0
801060cd:	e9 fb f2 ff ff       	jmp    801053cd <alltraps>

801060d2 <vector193>:
801060d2:	6a 00                	push   $0x0
801060d4:	68 c1 00 00 00       	push   $0xc1
801060d9:	e9 ef f2 ff ff       	jmp    801053cd <alltraps>

801060de <vector194>:
801060de:	6a 00                	push   $0x0
801060e0:	68 c2 00 00 00       	push   $0xc2
801060e5:	e9 e3 f2 ff ff       	jmp    801053cd <alltraps>

801060ea <vector195>:
801060ea:	6a 00                	push   $0x0
801060ec:	68 c3 00 00 00       	push   $0xc3
801060f1:	e9 d7 f2 ff ff       	jmp    801053cd <alltraps>

801060f6 <vector196>:
801060f6:	6a 00                	push   $0x0
801060f8:	68 c4 00 00 00       	push   $0xc4
801060fd:	e9 cb f2 ff ff       	jmp    801053cd <alltraps>

80106102 <vector197>:
80106102:	6a 00                	push   $0x0
80106104:	68 c5 00 00 00       	push   $0xc5
80106109:	e9 bf f2 ff ff       	jmp    801053cd <alltraps>

8010610e <vector198>:
8010610e:	6a 00                	push   $0x0
80106110:	68 c6 00 00 00       	push   $0xc6
80106115:	e9 b3 f2 ff ff       	jmp    801053cd <alltraps>

8010611a <vector199>:
8010611a:	6a 00                	push   $0x0
8010611c:	68 c7 00 00 00       	push   $0xc7
80106121:	e9 a7 f2 ff ff       	jmp    801053cd <alltraps>

80106126 <vector200>:
80106126:	6a 00                	push   $0x0
80106128:	68 c8 00 00 00       	push   $0xc8
8010612d:	e9 9b f2 ff ff       	jmp    801053cd <alltraps>

80106132 <vector201>:
80106132:	6a 00                	push   $0x0
80106134:	68 c9 00 00 00       	push   $0xc9
80106139:	e9 8f f2 ff ff       	jmp    801053cd <alltraps>

8010613e <vector202>:
8010613e:	6a 00                	push   $0x0
80106140:	68 ca 00 00 00       	push   $0xca
80106145:	e9 83 f2 ff ff       	jmp    801053cd <alltraps>

8010614a <vector203>:
8010614a:	6a 00                	push   $0x0
8010614c:	68 cb 00 00 00       	push   $0xcb
80106151:	e9 77 f2 ff ff       	jmp    801053cd <alltraps>

80106156 <vector204>:
80106156:	6a 00                	push   $0x0
80106158:	68 cc 00 00 00       	push   $0xcc
8010615d:	e9 6b f2 ff ff       	jmp    801053cd <alltraps>

80106162 <vector205>:
80106162:	6a 00                	push   $0x0
80106164:	68 cd 00 00 00       	push   $0xcd
80106169:	e9 5f f2 ff ff       	jmp    801053cd <alltraps>

8010616e <vector206>:
8010616e:	6a 00                	push   $0x0
80106170:	68 ce 00 00 00       	push   $0xce
80106175:	e9 53 f2 ff ff       	jmp    801053cd <alltraps>

8010617a <vector207>:
8010617a:	6a 00                	push   $0x0
8010617c:	68 cf 00 00 00       	push   $0xcf
80106181:	e9 47 f2 ff ff       	jmp    801053cd <alltraps>

80106186 <vector208>:
80106186:	6a 00                	push   $0x0
80106188:	68 d0 00 00 00       	push   $0xd0
8010618d:	e9 3b f2 ff ff       	jmp    801053cd <alltraps>

80106192 <vector209>:
80106192:	6a 00                	push   $0x0
80106194:	68 d1 00 00 00       	push   $0xd1
80106199:	e9 2f f2 ff ff       	jmp    801053cd <alltraps>

8010619e <vector210>:
8010619e:	6a 00                	push   $0x0
801061a0:	68 d2 00 00 00       	push   $0xd2
801061a5:	e9 23 f2 ff ff       	jmp    801053cd <alltraps>

801061aa <vector211>:
801061aa:	6a 00                	push   $0x0
801061ac:	68 d3 00 00 00       	push   $0xd3
801061b1:	e9 17 f2 ff ff       	jmp    801053cd <alltraps>

801061b6 <vector212>:
801061b6:	6a 00                	push   $0x0
801061b8:	68 d4 00 00 00       	push   $0xd4
801061bd:	e9 0b f2 ff ff       	jmp    801053cd <alltraps>

801061c2 <vector213>:
801061c2:	6a 00                	push   $0x0
801061c4:	68 d5 00 00 00       	push   $0xd5
801061c9:	e9 ff f1 ff ff       	jmp    801053cd <alltraps>

801061ce <vector214>:
801061ce:	6a 00                	push   $0x0
801061d0:	68 d6 00 00 00       	push   $0xd6
801061d5:	e9 f3 f1 ff ff       	jmp    801053cd <alltraps>

801061da <vector215>:
801061da:	6a 00                	push   $0x0
801061dc:	68 d7 00 00 00       	push   $0xd7
801061e1:	e9 e7 f1 ff ff       	jmp    801053cd <alltraps>

801061e6 <vector216>:
801061e6:	6a 00                	push   $0x0
801061e8:	68 d8 00 00 00       	push   $0xd8
801061ed:	e9 db f1 ff ff       	jmp    801053cd <alltraps>

801061f2 <vector217>:
801061f2:	6a 00                	push   $0x0
801061f4:	68 d9 00 00 00       	push   $0xd9
801061f9:	e9 cf f1 ff ff       	jmp    801053cd <alltraps>

801061fe <vector218>:
801061fe:	6a 00                	push   $0x0
80106200:	68 da 00 00 00       	push   $0xda
80106205:	e9 c3 f1 ff ff       	jmp    801053cd <alltraps>

8010620a <vector219>:
8010620a:	6a 00                	push   $0x0
8010620c:	68 db 00 00 00       	push   $0xdb
80106211:	e9 b7 f1 ff ff       	jmp    801053cd <alltraps>

80106216 <vector220>:
80106216:	6a 00                	push   $0x0
80106218:	68 dc 00 00 00       	push   $0xdc
8010621d:	e9 ab f1 ff ff       	jmp    801053cd <alltraps>

80106222 <vector221>:
80106222:	6a 00                	push   $0x0
80106224:	68 dd 00 00 00       	push   $0xdd
80106229:	e9 9f f1 ff ff       	jmp    801053cd <alltraps>

8010622e <vector222>:
8010622e:	6a 00                	push   $0x0
80106230:	68 de 00 00 00       	push   $0xde
80106235:	e9 93 f1 ff ff       	jmp    801053cd <alltraps>

8010623a <vector223>:
8010623a:	6a 00                	push   $0x0
8010623c:	68 df 00 00 00       	push   $0xdf
80106241:	e9 87 f1 ff ff       	jmp    801053cd <alltraps>

80106246 <vector224>:
80106246:	6a 00                	push   $0x0
80106248:	68 e0 00 00 00       	push   $0xe0
8010624d:	e9 7b f1 ff ff       	jmp    801053cd <alltraps>

80106252 <vector225>:
80106252:	6a 00                	push   $0x0
80106254:	68 e1 00 00 00       	push   $0xe1
80106259:	e9 6f f1 ff ff       	jmp    801053cd <alltraps>

8010625e <vector226>:
8010625e:	6a 00                	push   $0x0
80106260:	68 e2 00 00 00       	push   $0xe2
80106265:	e9 63 f1 ff ff       	jmp    801053cd <alltraps>

8010626a <vector227>:
8010626a:	6a 00                	push   $0x0
8010626c:	68 e3 00 00 00       	push   $0xe3
80106271:	e9 57 f1 ff ff       	jmp    801053cd <alltraps>

80106276 <vector228>:
80106276:	6a 00                	push   $0x0
80106278:	68 e4 00 00 00       	push   $0xe4
8010627d:	e9 4b f1 ff ff       	jmp    801053cd <alltraps>

80106282 <vector229>:
80106282:	6a 00                	push   $0x0
80106284:	68 e5 00 00 00       	push   $0xe5
80106289:	e9 3f f1 ff ff       	jmp    801053cd <alltraps>

8010628e <vector230>:
8010628e:	6a 00                	push   $0x0
80106290:	68 e6 00 00 00       	push   $0xe6
80106295:	e9 33 f1 ff ff       	jmp    801053cd <alltraps>

8010629a <vector231>:
8010629a:	6a 00                	push   $0x0
8010629c:	68 e7 00 00 00       	push   $0xe7
801062a1:	e9 27 f1 ff ff       	jmp    801053cd <alltraps>

801062a6 <vector232>:
801062a6:	6a 00                	push   $0x0
801062a8:	68 e8 00 00 00       	push   $0xe8
801062ad:	e9 1b f1 ff ff       	jmp    801053cd <alltraps>

801062b2 <vector233>:
801062b2:	6a 00                	push   $0x0
801062b4:	68 e9 00 00 00       	push   $0xe9
801062b9:	e9 0f f1 ff ff       	jmp    801053cd <alltraps>

801062be <vector234>:
801062be:	6a 00                	push   $0x0
801062c0:	68 ea 00 00 00       	push   $0xea
801062c5:	e9 03 f1 ff ff       	jmp    801053cd <alltraps>

801062ca <vector235>:
801062ca:	6a 00                	push   $0x0
801062cc:	68 eb 00 00 00       	push   $0xeb
801062d1:	e9 f7 f0 ff ff       	jmp    801053cd <alltraps>

801062d6 <vector236>:
801062d6:	6a 00                	push   $0x0
801062d8:	68 ec 00 00 00       	push   $0xec
801062dd:	e9 eb f0 ff ff       	jmp    801053cd <alltraps>

801062e2 <vector237>:
801062e2:	6a 00                	push   $0x0
801062e4:	68 ed 00 00 00       	push   $0xed
801062e9:	e9 df f0 ff ff       	jmp    801053cd <alltraps>

801062ee <vector238>:
801062ee:	6a 00                	push   $0x0
801062f0:	68 ee 00 00 00       	push   $0xee
801062f5:	e9 d3 f0 ff ff       	jmp    801053cd <alltraps>

801062fa <vector239>:
801062fa:	6a 00                	push   $0x0
801062fc:	68 ef 00 00 00       	push   $0xef
80106301:	e9 c7 f0 ff ff       	jmp    801053cd <alltraps>

80106306 <vector240>:
80106306:	6a 00                	push   $0x0
80106308:	68 f0 00 00 00       	push   $0xf0
8010630d:	e9 bb f0 ff ff       	jmp    801053cd <alltraps>

80106312 <vector241>:
80106312:	6a 00                	push   $0x0
80106314:	68 f1 00 00 00       	push   $0xf1
80106319:	e9 af f0 ff ff       	jmp    801053cd <alltraps>

8010631e <vector242>:
8010631e:	6a 00                	push   $0x0
80106320:	68 f2 00 00 00       	push   $0xf2
80106325:	e9 a3 f0 ff ff       	jmp    801053cd <alltraps>

8010632a <vector243>:
8010632a:	6a 00                	push   $0x0
8010632c:	68 f3 00 00 00       	push   $0xf3
80106331:	e9 97 f0 ff ff       	jmp    801053cd <alltraps>

80106336 <vector244>:
80106336:	6a 00                	push   $0x0
80106338:	68 f4 00 00 00       	push   $0xf4
8010633d:	e9 8b f0 ff ff       	jmp    801053cd <alltraps>

80106342 <vector245>:
80106342:	6a 00                	push   $0x0
80106344:	68 f5 00 00 00       	push   $0xf5
80106349:	e9 7f f0 ff ff       	jmp    801053cd <alltraps>

8010634e <vector246>:
8010634e:	6a 00                	push   $0x0
80106350:	68 f6 00 00 00       	push   $0xf6
80106355:	e9 73 f0 ff ff       	jmp    801053cd <alltraps>

8010635a <vector247>:
8010635a:	6a 00                	push   $0x0
8010635c:	68 f7 00 00 00       	push   $0xf7
80106361:	e9 67 f0 ff ff       	jmp    801053cd <alltraps>

80106366 <vector248>:
80106366:	6a 00                	push   $0x0
80106368:	68 f8 00 00 00       	push   $0xf8
8010636d:	e9 5b f0 ff ff       	jmp    801053cd <alltraps>

80106372 <vector249>:
80106372:	6a 00                	push   $0x0
80106374:	68 f9 00 00 00       	push   $0xf9
80106379:	e9 4f f0 ff ff       	jmp    801053cd <alltraps>

8010637e <vector250>:
8010637e:	6a 00                	push   $0x0
80106380:	68 fa 00 00 00       	push   $0xfa
80106385:	e9 43 f0 ff ff       	jmp    801053cd <alltraps>

8010638a <vector251>:
8010638a:	6a 00                	push   $0x0
8010638c:	68 fb 00 00 00       	push   $0xfb
80106391:	e9 37 f0 ff ff       	jmp    801053cd <alltraps>

80106396 <vector252>:
80106396:	6a 00                	push   $0x0
80106398:	68 fc 00 00 00       	push   $0xfc
8010639d:	e9 2b f0 ff ff       	jmp    801053cd <alltraps>

801063a2 <vector253>:
801063a2:	6a 00                	push   $0x0
801063a4:	68 fd 00 00 00       	push   $0xfd
801063a9:	e9 1f f0 ff ff       	jmp    801053cd <alltraps>

801063ae <vector254>:
801063ae:	6a 00                	push   $0x0
801063b0:	68 fe 00 00 00       	push   $0xfe
801063b5:	e9 13 f0 ff ff       	jmp    801053cd <alltraps>

801063ba <vector255>:
801063ba:	6a 00                	push   $0x0
801063bc:	68 ff 00 00 00       	push   $0xff
801063c1:	e9 07 f0 ff ff       	jmp    801053cd <alltraps>
801063c6:	66 90                	xchg   %ax,%ax
801063c8:	66 90                	xchg   %ax,%ax
801063ca:	66 90                	xchg   %ax,%ax
801063cc:	66 90                	xchg   %ax,%ax
801063ce:	66 90                	xchg   %ax,%ax

801063d0 <walkpgdir>:
// Return the address of the PTE in page table pgdir
// that corresponds to virtual address va.  If alloc!=0,
// create any required page table pages.
static pte_t *
walkpgdir(pde_t *pgdir, const void *va, int alloc)
{
801063d0:	55                   	push   %ebp
801063d1:	89 e5                	mov    %esp,%ebp
801063d3:	57                   	push   %edi
801063d4:	56                   	push   %esi
801063d5:	89 d6                	mov    %edx,%esi
  pde_t *pde;
  pte_t *pgtab;

  pde = &pgdir[PDX(va)];
801063d7:	c1 ea 16             	shr    $0x16,%edx
// Return the address of the PTE in page table pgdir
// that corresponds to virtual address va.  If alloc!=0,
// create any required page table pages.
static pte_t *
walkpgdir(pde_t *pgdir, const void *va, int alloc)
{
801063da:	53                   	push   %ebx
  pde_t *pde;
  pte_t *pgtab;

  pde = &pgdir[PDX(va)];
801063db:	8d 3c 90             	lea    (%eax,%edx,4),%edi
// Return the address of the PTE in page table pgdir
// that corresponds to virtual address va.  If alloc!=0,
// create any required page table pages.
static pte_t *
walkpgdir(pde_t *pgdir, const void *va, int alloc)
{
801063de:	83 ec 1c             	sub    $0x1c,%esp
  pde_t *pde;
  pte_t *pgtab;

  pde = &pgdir[PDX(va)];
  if(*pde & PTE_P){
801063e1:	8b 1f                	mov    (%edi),%ebx
801063e3:	f6 c3 01             	test   $0x1,%bl
801063e6:	74 28                	je     80106410 <walkpgdir+0x40>
    pgtab = (pte_t*)P2V(PTE_ADDR(*pde));
801063e8:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
801063ee:	81 c3 00 00 00 80    	add    $0x80000000,%ebx
    // The permissions here are overly generous, but they can
    // be further restricted by the permissions in the page table
    // entries, if necessary.
    *pde = V2P(pgtab) | PTE_P | PTE_W | PTE_U;
  }
  return &pgtab[PTX(va)];
801063f4:	c1 ee 0a             	shr    $0xa,%esi
}
801063f7:	83 c4 1c             	add    $0x1c,%esp
    // The permissions here are overly generous, but they can
    // be further restricted by the permissions in the page table
    // entries, if necessary.
    *pde = V2P(pgtab) | PTE_P | PTE_W | PTE_U;
  }
  return &pgtab[PTX(va)];
801063fa:	89 f2                	mov    %esi,%edx
801063fc:	81 e2 fc 0f 00 00    	and    $0xffc,%edx
80106402:	8d 04 13             	lea    (%ebx,%edx,1),%eax
}
80106405:	5b                   	pop    %ebx
80106406:	5e                   	pop    %esi
80106407:	5f                   	pop    %edi
80106408:	5d                   	pop    %ebp
80106409:	c3                   	ret    
8010640a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

  pde = &pgdir[PDX(va)];
  if(*pde & PTE_P){
    pgtab = (pte_t*)P2V(PTE_ADDR(*pde));
  } else {
    if(!alloc || (pgtab = (pte_t*)kalloc()) == 0)
80106410:	85 c9                	test   %ecx,%ecx
80106412:	74 34                	je     80106448 <walkpgdir+0x78>
80106414:	e8 77 c0 ff ff       	call   80102490 <kalloc>
80106419:	85 c0                	test   %eax,%eax
8010641b:	89 c3                	mov    %eax,%ebx
8010641d:	74 29                	je     80106448 <walkpgdir+0x78>
      return 0;
    // Make sure all those PTE_P bits are zero.
    memset(pgtab, 0, PGSIZE);
8010641f:	c7 44 24 08 00 10 00 	movl   $0x1000,0x8(%esp)
80106426:	00 
80106427:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
8010642e:	00 
8010642f:	89 04 24             	mov    %eax,(%esp)
80106432:	e8 39 de ff ff       	call   80104270 <memset>
    // The permissions here are overly generous, but they can
    // be further restricted by the permissions in the page table
    // entries, if necessary.
    *pde = V2P(pgtab) | PTE_P | PTE_W | PTE_U;
80106437:	8d 83 00 00 00 80    	lea    -0x80000000(%ebx),%eax
8010643d:	83 c8 07             	or     $0x7,%eax
80106440:	89 07                	mov    %eax,(%edi)
80106442:	eb b0                	jmp    801063f4 <walkpgdir+0x24>
80106444:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  }
  return &pgtab[PTX(va)];
}
80106448:	83 c4 1c             	add    $0x1c,%esp
  pde = &pgdir[PDX(va)];
  if(*pde & PTE_P){
    pgtab = (pte_t*)P2V(PTE_ADDR(*pde));
  } else {
    if(!alloc || (pgtab = (pte_t*)kalloc()) == 0)
      return 0;
8010644b:	31 c0                	xor    %eax,%eax
    // be further restricted by the permissions in the page table
    // entries, if necessary.
    *pde = V2P(pgtab) | PTE_P | PTE_W | PTE_U;
  }
  return &pgtab[PTX(va)];
}
8010644d:	5b                   	pop    %ebx
8010644e:	5e                   	pop    %esi
8010644f:	5f                   	pop    %edi
80106450:	5d                   	pop    %ebp
80106451:	c3                   	ret    
80106452:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80106459:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

80106460 <deallocuvm.part.0>:
// Deallocate user pages to bring the process size from oldsz to
// newsz.  oldsz and newsz need not be page-aligned, nor does newsz
// need to be less than oldsz.  oldsz can be larger than the actual
// process size.  Returns the new process size.
int
deallocuvm(pde_t *pgdir, uint oldsz, uint newsz)
80106460:	55                   	push   %ebp
80106461:	89 e5                	mov    %esp,%ebp
80106463:	57                   	push   %edi
80106464:	89 c7                	mov    %eax,%edi
80106466:	56                   	push   %esi
80106467:	89 d6                	mov    %edx,%esi
80106469:	53                   	push   %ebx
  uint a, pa;

  if(newsz >= oldsz)
    return oldsz;

  a = PGROUNDUP(newsz);
8010646a:	8d 99 ff 0f 00 00    	lea    0xfff(%ecx),%ebx
// Deallocate user pages to bring the process size from oldsz to
// newsz.  oldsz and newsz need not be page-aligned, nor does newsz
// need to be less than oldsz.  oldsz can be larger than the actual
// process size.  Returns the new process size.
int
deallocuvm(pde_t *pgdir, uint oldsz, uint newsz)
80106470:	83 ec 1c             	sub    $0x1c,%esp
  uint a, pa;

  if(newsz >= oldsz)
    return oldsz;

  a = PGROUNDUP(newsz);
80106473:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
  for(; a  < oldsz; a += PGSIZE){
80106479:	39 d3                	cmp    %edx,%ebx
// Deallocate user pages to bring the process size from oldsz to
// newsz.  oldsz and newsz need not be page-aligned, nor does newsz
// need to be less than oldsz.  oldsz can be larger than the actual
// process size.  Returns the new process size.
int
deallocuvm(pde_t *pgdir, uint oldsz, uint newsz)
8010647b:	89 4d e0             	mov    %ecx,-0x20(%ebp)

  if(newsz >= oldsz)
    return oldsz;

  a = PGROUNDUP(newsz);
  for(; a  < oldsz; a += PGSIZE){
8010647e:	72 3b                	jb     801064bb <deallocuvm.part.0+0x5b>
80106480:	eb 5e                	jmp    801064e0 <deallocuvm.part.0+0x80>
80106482:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    pte = walkpgdir(pgdir, (char*)a, 0);
    if(!pte)
      a = PGADDR(PDX(a) + 1, 0, 0) - PGSIZE;
    else if((*pte & PTE_P) != 0){
80106488:	8b 10                	mov    (%eax),%edx
8010648a:	f6 c2 01             	test   $0x1,%dl
8010648d:	74 22                	je     801064b1 <deallocuvm.part.0+0x51>
      pa = PTE_ADDR(*pte);
      if(pa == 0)
8010648f:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
80106495:	74 54                	je     801064eb <deallocuvm.part.0+0x8b>
        panic("kfree");
      char *v = P2V(pa);
80106497:	81 c2 00 00 00 80    	add    $0x80000000,%edx
      kfree(v);
8010649d:	89 14 24             	mov    %edx,(%esp)
801064a0:	89 45 e4             	mov    %eax,-0x1c(%ebp)
801064a3:	e8 38 be ff ff       	call   801022e0 <kfree>
      *pte = 0;
801064a8:	8b 45 e4             	mov    -0x1c(%ebp),%eax
801064ab:	c7 00 00 00 00 00    	movl   $0x0,(%eax)

  if(newsz >= oldsz)
    return oldsz;

  a = PGROUNDUP(newsz);
  for(; a  < oldsz; a += PGSIZE){
801064b1:	81 c3 00 10 00 00    	add    $0x1000,%ebx
801064b7:	39 f3                	cmp    %esi,%ebx
801064b9:	73 25                	jae    801064e0 <deallocuvm.part.0+0x80>
    pte = walkpgdir(pgdir, (char*)a, 0);
801064bb:	31 c9                	xor    %ecx,%ecx
801064bd:	89 da                	mov    %ebx,%edx
801064bf:	89 f8                	mov    %edi,%eax
801064c1:	e8 0a ff ff ff       	call   801063d0 <walkpgdir>
    if(!pte)
801064c6:	85 c0                	test   %eax,%eax
801064c8:	75 be                	jne    80106488 <deallocuvm.part.0+0x28>
      a = PGADDR(PDX(a) + 1, 0, 0) - PGSIZE;
801064ca:	81 e3 00 00 c0 ff    	and    $0xffc00000,%ebx
801064d0:	81 c3 00 f0 3f 00    	add    $0x3ff000,%ebx

  if(newsz >= oldsz)
    return oldsz;

  a = PGROUNDUP(newsz);
  for(; a  < oldsz; a += PGSIZE){
801064d6:	81 c3 00 10 00 00    	add    $0x1000,%ebx
801064dc:	39 f3                	cmp    %esi,%ebx
801064de:	72 db                	jb     801064bb <deallocuvm.part.0+0x5b>
      kfree(v);
      *pte = 0;
    }
  }
  return newsz;
}
801064e0:	8b 45 e0             	mov    -0x20(%ebp),%eax
801064e3:	83 c4 1c             	add    $0x1c,%esp
801064e6:	5b                   	pop    %ebx
801064e7:	5e                   	pop    %esi
801064e8:	5f                   	pop    %edi
801064e9:	5d                   	pop    %ebp
801064ea:	c3                   	ret    
    if(!pte)
      a = PGADDR(PDX(a) + 1, 0, 0) - PGSIZE;
    else if((*pte & PTE_P) != 0){
      pa = PTE_ADDR(*pte);
      if(pa == 0)
        panic("kfree");
801064eb:	c7 04 24 e6 70 10 80 	movl   $0x801070e6,(%esp)
801064f2:	e8 69 9e ff ff       	call   80100360 <panic>
801064f7:	89 f6                	mov    %esi,%esi
801064f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

80106500 <seginit>:

// Set up CPU's kernel segment descriptors.
// Run once on entry on each CPU.
void
seginit(void)
{
80106500:	55                   	push   %ebp
80106501:	89 e5                	mov    %esp,%ebp
80106503:	83 ec 18             	sub    $0x18,%esp

  // Map "logical" addresses to virtual addresses using identity map.
  // Cannot share a CODE descriptor for both kernel and user
  // because it would have to have DPL_USR, but the CPU forbids
  // an interrupt from CPL=0 to DPL=3.
  c = &cpus[cpuid()];
80106506:	e8 65 d1 ff ff       	call   80103670 <cpuid>
  c->gdt[SEG_KCODE] = SEG(STA_X|STA_R, 0, 0xffffffff, 0);
8010650b:	31 c9                	xor    %ecx,%ecx
8010650d:	ba ff ff ff ff       	mov    $0xffffffff,%edx

  // Map "logical" addresses to virtual addresses using identity map.
  // Cannot share a CODE descriptor for both kernel and user
  // because it would have to have DPL_USR, but the CPU forbids
  // an interrupt from CPL=0 to DPL=3.
  c = &cpus[cpuid()];
80106512:	69 c0 b0 00 00 00    	imul   $0xb0,%eax,%eax
80106518:	05 80 27 11 80       	add    $0x80112780,%eax
  c->gdt[SEG_KCODE] = SEG(STA_X|STA_R, 0, 0xffffffff, 0);
8010651d:	66 89 50 78          	mov    %dx,0x78(%eax)
  c->gdt[SEG_KDATA] = SEG(STA_W, 0, 0xffffffff, 0);
80106521:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  c->gdt[SEG_UCODE] = SEG(STA_X|STA_R, 0, 0xffffffff, DPL_USER);
  c->gdt[SEG_UDATA] = SEG(STA_W, 0, 0xffffffff, DPL_USER);
  lgdt(c->gdt, sizeof(c->gdt));
80106526:	83 c0 70             	add    $0x70,%eax
  // Map "logical" addresses to virtual addresses using identity map.
  // Cannot share a CODE descriptor for both kernel and user
  // because it would have to have DPL_USR, but the CPU forbids
  // an interrupt from CPL=0 to DPL=3.
  c = &cpus[cpuid()];
  c->gdt[SEG_KCODE] = SEG(STA_X|STA_R, 0, 0xffffffff, 0);
80106529:	66 89 48 0a          	mov    %cx,0xa(%eax)
  c->gdt[SEG_KDATA] = SEG(STA_W, 0, 0xffffffff, 0);
8010652d:	31 c9                	xor    %ecx,%ecx
8010652f:	66 89 50 10          	mov    %dx,0x10(%eax)
  c->gdt[SEG_UCODE] = SEG(STA_X|STA_R, 0, 0xffffffff, DPL_USER);
80106533:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  // Cannot share a CODE descriptor for both kernel and user
  // because it would have to have DPL_USR, but the CPU forbids
  // an interrupt from CPL=0 to DPL=3.
  c = &cpus[cpuid()];
  c->gdt[SEG_KCODE] = SEG(STA_X|STA_R, 0, 0xffffffff, 0);
  c->gdt[SEG_KDATA] = SEG(STA_W, 0, 0xffffffff, 0);
80106538:	66 89 48 12          	mov    %cx,0x12(%eax)
  c->gdt[SEG_UCODE] = SEG(STA_X|STA_R, 0, 0xffffffff, DPL_USER);
8010653c:	31 c9                	xor    %ecx,%ecx
8010653e:	66 89 50 18          	mov    %dx,0x18(%eax)
  c->gdt[SEG_UDATA] = SEG(STA_W, 0, 0xffffffff, DPL_USER);
80106542:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  // because it would have to have DPL_USR, but the CPU forbids
  // an interrupt from CPL=0 to DPL=3.
  c = &cpus[cpuid()];
  c->gdt[SEG_KCODE] = SEG(STA_X|STA_R, 0, 0xffffffff, 0);
  c->gdt[SEG_KDATA] = SEG(STA_W, 0, 0xffffffff, 0);
  c->gdt[SEG_UCODE] = SEG(STA_X|STA_R, 0, 0xffffffff, DPL_USER);
80106547:	66 89 48 1a          	mov    %cx,0x1a(%eax)
  c->gdt[SEG_UDATA] = SEG(STA_W, 0, 0xffffffff, DPL_USER);
8010654b:	31 c9                	xor    %ecx,%ecx
  // Map "logical" addresses to virtual addresses using identity map.
  // Cannot share a CODE descriptor for both kernel and user
  // because it would have to have DPL_USR, but the CPU forbids
  // an interrupt from CPL=0 to DPL=3.
  c = &cpus[cpuid()];
  c->gdt[SEG_KCODE] = SEG(STA_X|STA_R, 0, 0xffffffff, 0);
8010654d:	c6 40 0d 9a          	movb   $0x9a,0xd(%eax)
80106551:	c6 40 0e cf          	movb   $0xcf,0xe(%eax)
  c->gdt[SEG_KDATA] = SEG(STA_W, 0, 0xffffffff, 0);
80106555:	c6 40 15 92          	movb   $0x92,0x15(%eax)
80106559:	c6 40 16 cf          	movb   $0xcf,0x16(%eax)
  c->gdt[SEG_UCODE] = SEG(STA_X|STA_R, 0, 0xffffffff, DPL_USER);
8010655d:	c6 40 1d fa          	movb   $0xfa,0x1d(%eax)
80106561:	c6 40 1e cf          	movb   $0xcf,0x1e(%eax)
  c->gdt[SEG_UDATA] = SEG(STA_W, 0, 0xffffffff, DPL_USER);
80106565:	c6 40 25 f2          	movb   $0xf2,0x25(%eax)
80106569:	c6 40 26 cf          	movb   $0xcf,0x26(%eax)
8010656d:	66 89 50 20          	mov    %dx,0x20(%eax)
static inline void
lgdt(struct segdesc *p, int size)
{
  volatile ushort pd[3];

  pd[0] = size-1;
80106571:	ba 2f 00 00 00       	mov    $0x2f,%edx
  // Map "logical" addresses to virtual addresses using identity map.
  // Cannot share a CODE descriptor for both kernel and user
  // because it would have to have DPL_USR, but the CPU forbids
  // an interrupt from CPL=0 to DPL=3.
  c = &cpus[cpuid()];
  c->gdt[SEG_KCODE] = SEG(STA_X|STA_R, 0, 0xffffffff, 0);
80106576:	c6 40 0c 00          	movb   $0x0,0xc(%eax)
8010657a:	c6 40 0f 00          	movb   $0x0,0xf(%eax)
  c->gdt[SEG_KDATA] = SEG(STA_W, 0, 0xffffffff, 0);
8010657e:	c6 40 14 00          	movb   $0x0,0x14(%eax)
80106582:	c6 40 17 00          	movb   $0x0,0x17(%eax)
  c->gdt[SEG_UCODE] = SEG(STA_X|STA_R, 0, 0xffffffff, DPL_USER);
80106586:	c6 40 1c 00          	movb   $0x0,0x1c(%eax)
8010658a:	c6 40 1f 00          	movb   $0x0,0x1f(%eax)
  c->gdt[SEG_UDATA] = SEG(STA_W, 0, 0xffffffff, DPL_USER);
8010658e:	66 89 48 22          	mov    %cx,0x22(%eax)
80106592:	c6 40 24 00          	movb   $0x0,0x24(%eax)
80106596:	c6 40 27 00          	movb   $0x0,0x27(%eax)
8010659a:	66 89 55 f2          	mov    %dx,-0xe(%ebp)
  pd[1] = (uint)p;
8010659e:	66 89 45 f4          	mov    %ax,-0xc(%ebp)
  pd[2] = (uint)p >> 16;
801065a2:	c1 e8 10             	shr    $0x10,%eax
801065a5:	66 89 45 f6          	mov    %ax,-0xa(%ebp)

  asm volatile("lgdt (%0)" : : "r" (pd));
801065a9:	8d 45 f2             	lea    -0xe(%ebp),%eax
801065ac:	0f 01 10             	lgdtl  (%eax)
  lgdt(c->gdt, sizeof(c->gdt));
}
801065af:	c9                   	leave  
801065b0:	c3                   	ret    
801065b1:	eb 0d                	jmp    801065c0 <mappages>
801065b3:	90                   	nop
801065b4:	90                   	nop
801065b5:	90                   	nop
801065b6:	90                   	nop
801065b7:	90                   	nop
801065b8:	90                   	nop
801065b9:	90                   	nop
801065ba:	90                   	nop
801065bb:	90                   	nop
801065bc:	90                   	nop
801065bd:	90                   	nop
801065be:	90                   	nop
801065bf:	90                   	nop

801065c0 <mappages>:
// Create PTEs for virtual addresses starting at va that refer to
// physical addresses starting at pa. va and size might not
// be page-aligned.
int
mappages(pde_t *pgdir, void *va, uint size, uint pa, int perm)
{
801065c0:	55                   	push   %ebp
801065c1:	89 e5                	mov    %esp,%ebp
801065c3:	57                   	push   %edi
801065c4:	56                   	push   %esi
801065c5:	53                   	push   %ebx
801065c6:	83 ec 1c             	sub    $0x1c,%esp
801065c9:	8b 45 0c             	mov    0xc(%ebp),%eax
  char *a, *last;
  pte_t *pte;

  a = (char*)PGROUNDDOWN((uint)va);
  last = (char*)PGROUNDDOWN(((uint)va) + size - 1);
801065cc:	8b 55 10             	mov    0x10(%ebp),%edx
// Create PTEs for virtual addresses starting at va that refer to
// physical addresses starting at pa. va and size might not
// be page-aligned.
int
mappages(pde_t *pgdir, void *va, uint size, uint pa, int perm)
{
801065cf:	8b 7d 14             	mov    0x14(%ebp),%edi
  for(;;){
    if((pte = walkpgdir(pgdir, a, 1)) == 0)
      return -1;
    if(*pte & PTE_P)
      panic("remap");
    *pte = pa | perm | PTE_P;
801065d2:	83 4d 18 01          	orl    $0x1,0x18(%ebp)
mappages(pde_t *pgdir, void *va, uint size, uint pa, int perm)
{
  char *a, *last;
  pte_t *pte;

  a = (char*)PGROUNDDOWN((uint)va);
801065d6:	89 c3                	mov    %eax,%ebx
801065d8:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
  last = (char*)PGROUNDDOWN(((uint)va) + size - 1);
801065de:	8d 44 10 ff          	lea    -0x1(%eax,%edx,1),%eax
801065e2:	29 df                	sub    %ebx,%edi
801065e4:	89 45 e4             	mov    %eax,-0x1c(%ebp)
801065e7:	81 65 e4 00 f0 ff ff 	andl   $0xfffff000,-0x1c(%ebp)
801065ee:	eb 15                	jmp    80106605 <mappages+0x45>
  for(;;){
    if((pte = walkpgdir(pgdir, a, 1)) == 0)
      return -1;
    if(*pte & PTE_P)
801065f0:	f6 00 01             	testb  $0x1,(%eax)
801065f3:	75 3d                	jne    80106632 <mappages+0x72>
      panic("remap");
    *pte = pa | perm | PTE_P;
801065f5:	0b 75 18             	or     0x18(%ebp),%esi
    if(a == last)
801065f8:	3b 5d e4             	cmp    -0x1c(%ebp),%ebx
  for(;;){
    if((pte = walkpgdir(pgdir, a, 1)) == 0)
      return -1;
    if(*pte & PTE_P)
      panic("remap");
    *pte = pa | perm | PTE_P;
801065fb:	89 30                	mov    %esi,(%eax)
    if(a == last)
801065fd:	74 29                	je     80106628 <mappages+0x68>
      break;
    a += PGSIZE;
801065ff:	81 c3 00 10 00 00    	add    $0x1000,%ebx
  pte_t *pte;

  a = (char*)PGROUNDDOWN((uint)va);
  last = (char*)PGROUNDDOWN(((uint)va) + size - 1);
  for(;;){
    if((pte = walkpgdir(pgdir, a, 1)) == 0)
80106605:	8b 45 08             	mov    0x8(%ebp),%eax
80106608:	b9 01 00 00 00       	mov    $0x1,%ecx
8010660d:	89 da                	mov    %ebx,%edx
8010660f:	8d 34 3b             	lea    (%ebx,%edi,1),%esi
80106612:	e8 b9 fd ff ff       	call   801063d0 <walkpgdir>
80106617:	85 c0                	test   %eax,%eax
80106619:	75 d5                	jne    801065f0 <mappages+0x30>
      break;
    a += PGSIZE;
    pa += PGSIZE;
  }
  return 0;
}
8010661b:	83 c4 1c             	add    $0x1c,%esp

  a = (char*)PGROUNDDOWN((uint)va);
  last = (char*)PGROUNDDOWN(((uint)va) + size - 1);
  for(;;){
    if((pte = walkpgdir(pgdir, a, 1)) == 0)
      return -1;
8010661e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
      break;
    a += PGSIZE;
    pa += PGSIZE;
  }
  return 0;
}
80106623:	5b                   	pop    %ebx
80106624:	5e                   	pop    %esi
80106625:	5f                   	pop    %edi
80106626:	5d                   	pop    %ebp
80106627:	c3                   	ret    
80106628:	83 c4 1c             	add    $0x1c,%esp
    if(a == last)
      break;
    a += PGSIZE;
    pa += PGSIZE;
  }
  return 0;
8010662b:	31 c0                	xor    %eax,%eax
}
8010662d:	5b                   	pop    %ebx
8010662e:	5e                   	pop    %esi
8010662f:	5f                   	pop    %edi
80106630:	5d                   	pop    %ebp
80106631:	c3                   	ret    
  last = (char*)PGROUNDDOWN(((uint)va) + size - 1);
  for(;;){
    if((pte = walkpgdir(pgdir, a, 1)) == 0)
      return -1;
    if(*pte & PTE_P)
      panic("remap");
80106632:	c7 04 24 d8 77 10 80 	movl   $0x801077d8,(%esp)
80106639:	e8 22 9d ff ff       	call   80100360 <panic>
8010663e:	66 90                	xchg   %ax,%ax

80106640 <switchkvm>:
// Switch h/w page table register to the kernel-only page table,
// for when no process is running.
void
switchkvm(void)
{
  lcr3(V2P(kpgdir));   // switch to the kernel page table
80106640:	a1 a4 55 11 80       	mov    0x801155a4,%eax

// Switch h/w page table register to the kernel-only page table,
// for when no process is running.
void
switchkvm(void)
{
80106645:	55                   	push   %ebp
80106646:	89 e5                	mov    %esp,%ebp
  lcr3(V2P(kpgdir));   // switch to the kernel page table
80106648:	05 00 00 00 80       	add    $0x80000000,%eax
}

static inline void
lcr3(uint val)
{
  asm volatile("movl %0,%%cr3" : : "r" (val));
8010664d:	0f 22 d8             	mov    %eax,%cr3
}
80106650:	5d                   	pop    %ebp
80106651:	c3                   	ret    
80106652:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80106659:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

80106660 <switchuvm>:

// Switch TSS and h/w page table to correspond to process p.
void
switchuvm(struct proc *p)
{
80106660:	55                   	push   %ebp
80106661:	89 e5                	mov    %esp,%ebp
80106663:	57                   	push   %edi
80106664:	56                   	push   %esi
80106665:	53                   	push   %ebx
80106666:	83 ec 1c             	sub    $0x1c,%esp
80106669:	8b 75 08             	mov    0x8(%ebp),%esi
  if(p == 0)
8010666c:	85 f6                	test   %esi,%esi
8010666e:	0f 84 cd 00 00 00    	je     80106741 <switchuvm+0xe1>
    panic("switchuvm: no process");
  if(p->kstack == 0)
80106674:	8b 46 08             	mov    0x8(%esi),%eax
80106677:	85 c0                	test   %eax,%eax
80106679:	0f 84 da 00 00 00    	je     80106759 <switchuvm+0xf9>
    panic("switchuvm: no kstack");
  if(p->pgdir == 0)
8010667f:	8b 7e 04             	mov    0x4(%esi),%edi
80106682:	85 ff                	test   %edi,%edi
80106684:	0f 84 c3 00 00 00    	je     8010674d <switchuvm+0xed>
    panic("switchuvm: no pgdir");

  pushcli();
8010668a:	e8 61 da ff ff       	call   801040f0 <pushcli>
  mycpu()->gdt[SEG_TSS] = SEG16(STS_T32A, &mycpu()->ts,
8010668f:	e8 5c cf ff ff       	call   801035f0 <mycpu>
80106694:	89 c3                	mov    %eax,%ebx
80106696:	e8 55 cf ff ff       	call   801035f0 <mycpu>
8010669b:	89 c7                	mov    %eax,%edi
8010669d:	e8 4e cf ff ff       	call   801035f0 <mycpu>
801066a2:	83 c7 08             	add    $0x8,%edi
801066a5:	89 45 e4             	mov    %eax,-0x1c(%ebp)
801066a8:	e8 43 cf ff ff       	call   801035f0 <mycpu>
801066ad:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
801066b0:	ba 67 00 00 00       	mov    $0x67,%edx
801066b5:	66 89 93 98 00 00 00 	mov    %dx,0x98(%ebx)
801066bc:	66 89 bb 9a 00 00 00 	mov    %di,0x9a(%ebx)
801066c3:	c6 83 9d 00 00 00 99 	movb   $0x99,0x9d(%ebx)
801066ca:	83 c1 08             	add    $0x8,%ecx
801066cd:	c1 e9 10             	shr    $0x10,%ecx
801066d0:	83 c0 08             	add    $0x8,%eax
801066d3:	c1 e8 18             	shr    $0x18,%eax
801066d6:	88 8b 9c 00 00 00    	mov    %cl,0x9c(%ebx)
801066dc:	c6 83 9e 00 00 00 40 	movb   $0x40,0x9e(%ebx)
801066e3:	88 83 9f 00 00 00    	mov    %al,0x9f(%ebx)
  mycpu()->gdt[SEG_TSS].s = 0;
  mycpu()->ts.ss0 = SEG_KDATA << 3;
  mycpu()->ts.esp0 = (uint)p->kstack + KSTACKSIZE;
  // setting IOPL=0 in eflags *and* iomb beyond the tss segment limit
  // forbids I/O instructions (e.g., inb and outb) from user space
  mycpu()->ts.iomb = (ushort) 0xFFFF;
801066e9:	bb ff ff ff ff       	mov    $0xffffffff,%ebx
    panic("switchuvm: no pgdir");

  pushcli();
  mycpu()->gdt[SEG_TSS] = SEG16(STS_T32A, &mycpu()->ts,
                                sizeof(mycpu()->ts)-1, 0);
  mycpu()->gdt[SEG_TSS].s = 0;
801066ee:	e8 fd ce ff ff       	call   801035f0 <mycpu>
801066f3:	80 a0 9d 00 00 00 ef 	andb   $0xef,0x9d(%eax)
  mycpu()->ts.ss0 = SEG_KDATA << 3;
801066fa:	e8 f1 ce ff ff       	call   801035f0 <mycpu>
801066ff:	b9 10 00 00 00       	mov    $0x10,%ecx
80106704:	66 89 48 10          	mov    %cx,0x10(%eax)
  mycpu()->ts.esp0 = (uint)p->kstack + KSTACKSIZE;
80106708:	e8 e3 ce ff ff       	call   801035f0 <mycpu>
8010670d:	8b 56 08             	mov    0x8(%esi),%edx
80106710:	8d 8a 00 10 00 00    	lea    0x1000(%edx),%ecx
80106716:	89 48 0c             	mov    %ecx,0xc(%eax)
  // setting IOPL=0 in eflags *and* iomb beyond the tss segment limit
  // forbids I/O instructions (e.g., inb and outb) from user space
  mycpu()->ts.iomb = (ushort) 0xFFFF;
80106719:	e8 d2 ce ff ff       	call   801035f0 <mycpu>
8010671e:	66 89 58 6e          	mov    %bx,0x6e(%eax)
}

static inline void
ltr(ushort sel)
{
  asm volatile("ltr %0" : : "r" (sel));
80106722:	b8 28 00 00 00       	mov    $0x28,%eax
80106727:	0f 00 d8             	ltr    %ax
  ltr(SEG_TSS << 3);
  lcr3(V2P(p->pgdir));  // switch to process's address space
8010672a:	8b 46 04             	mov    0x4(%esi),%eax
8010672d:	05 00 00 00 80       	add    $0x80000000,%eax
}

static inline void
lcr3(uint val)
{
  asm volatile("movl %0,%%cr3" : : "r" (val));
80106732:	0f 22 d8             	mov    %eax,%cr3
  popcli();
}
80106735:	83 c4 1c             	add    $0x1c,%esp
80106738:	5b                   	pop    %ebx
80106739:	5e                   	pop    %esi
8010673a:	5f                   	pop    %edi
8010673b:	5d                   	pop    %ebp
  // setting IOPL=0 in eflags *and* iomb beyond the tss segment limit
  // forbids I/O instructions (e.g., inb and outb) from user space
  mycpu()->ts.iomb = (ushort) 0xFFFF;
  ltr(SEG_TSS << 3);
  lcr3(V2P(p->pgdir));  // switch to process's address space
  popcli();
8010673c:	e9 6f da ff ff       	jmp    801041b0 <popcli>
// Switch TSS and h/w page table to correspond to process p.
void
switchuvm(struct proc *p)
{
  if(p == 0)
    panic("switchuvm: no process");
80106741:	c7 04 24 de 77 10 80 	movl   $0x801077de,(%esp)
80106748:	e8 13 9c ff ff       	call   80100360 <panic>
  if(p->kstack == 0)
    panic("switchuvm: no kstack");
  if(p->pgdir == 0)
    panic("switchuvm: no pgdir");
8010674d:	c7 04 24 09 78 10 80 	movl   $0x80107809,(%esp)
80106754:	e8 07 9c ff ff       	call   80100360 <panic>
switchuvm(struct proc *p)
{
  if(p == 0)
    panic("switchuvm: no process");
  if(p->kstack == 0)
    panic("switchuvm: no kstack");
80106759:	c7 04 24 f4 77 10 80 	movl   $0x801077f4,(%esp)
80106760:	e8 fb 9b ff ff       	call   80100360 <panic>
80106765:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80106769:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

80106770 <inituvm>:

// Load the initcode into address 0 of pgdir.
// sz must be less than a page.
void
inituvm(pde_t *pgdir, char *init, uint sz)
{
80106770:	55                   	push   %ebp
80106771:	89 e5                	mov    %esp,%ebp
80106773:	57                   	push   %edi
80106774:	56                   	push   %esi
80106775:	53                   	push   %ebx
80106776:	83 ec 2c             	sub    $0x2c,%esp
80106779:	8b 75 10             	mov    0x10(%ebp),%esi
8010677c:	8b 55 08             	mov    0x8(%ebp),%edx
8010677f:	8b 7d 0c             	mov    0xc(%ebp),%edi
  char *mem;

  if(sz >= PGSIZE)
80106782:	81 fe ff 0f 00 00    	cmp    $0xfff,%esi
80106788:	77 64                	ja     801067ee <inituvm+0x7e>
8010678a:	89 55 e4             	mov    %edx,-0x1c(%ebp)
    panic("inituvm: more than a page");
  mem = kalloc();
8010678d:	e8 fe bc ff ff       	call   80102490 <kalloc>
  memset(mem, 0, PGSIZE);
80106792:	c7 44 24 08 00 10 00 	movl   $0x1000,0x8(%esp)
80106799:	00 
8010679a:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
801067a1:	00 
801067a2:	89 04 24             	mov    %eax,(%esp)
{
  char *mem;

  if(sz >= PGSIZE)
    panic("inituvm: more than a page");
  mem = kalloc();
801067a5:	89 c3                	mov    %eax,%ebx
  memset(mem, 0, PGSIZE);
801067a7:	e8 c4 da ff ff       	call   80104270 <memset>
  mappages(pgdir, 0, PGSIZE, V2P(mem), PTE_W|PTE_U);
801067ac:	8b 55 e4             	mov    -0x1c(%ebp),%edx
801067af:	8d 83 00 00 00 80    	lea    -0x80000000(%ebx),%eax
801067b5:	c7 44 24 10 06 00 00 	movl   $0x6,0x10(%esp)
801067bc:	00 
801067bd:	89 44 24 0c          	mov    %eax,0xc(%esp)
801067c1:	c7 44 24 08 00 10 00 	movl   $0x1000,0x8(%esp)
801067c8:	00 
801067c9:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
801067d0:	00 
801067d1:	89 14 24             	mov    %edx,(%esp)
801067d4:	e8 e7 fd ff ff       	call   801065c0 <mappages>
  memmove(mem, init, sz);
801067d9:	89 75 10             	mov    %esi,0x10(%ebp)
801067dc:	89 7d 0c             	mov    %edi,0xc(%ebp)
801067df:	89 5d 08             	mov    %ebx,0x8(%ebp)
}
801067e2:	83 c4 2c             	add    $0x2c,%esp
801067e5:	5b                   	pop    %ebx
801067e6:	5e                   	pop    %esi
801067e7:	5f                   	pop    %edi
801067e8:	5d                   	pop    %ebp
  if(sz >= PGSIZE)
    panic("inituvm: more than a page");
  mem = kalloc();
  memset(mem, 0, PGSIZE);
  mappages(pgdir, 0, PGSIZE, V2P(mem), PTE_W|PTE_U);
  memmove(mem, init, sz);
801067e9:	e9 22 db ff ff       	jmp    80104310 <memmove>
inituvm(pde_t *pgdir, char *init, uint sz)
{
  char *mem;

  if(sz >= PGSIZE)
    panic("inituvm: more than a page");
801067ee:	c7 04 24 1d 78 10 80 	movl   $0x8010781d,(%esp)
801067f5:	e8 66 9b ff ff       	call   80100360 <panic>
801067fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

80106800 <loaduvm>:

// Load a program segment into pgdir.  addr must be page-aligned
// and the pages from addr to addr+sz must already be mapped.
int
loaduvm(pde_t *pgdir, char *addr, struct inode *ip, uint offset, uint sz)
{
80106800:	55                   	push   %ebp
80106801:	89 e5                	mov    %esp,%ebp
80106803:	57                   	push   %edi
80106804:	56                   	push   %esi
80106805:	53                   	push   %ebx
80106806:	83 ec 1c             	sub    $0x1c,%esp
  uint i, pa, n;
  pte_t *pte;

  if((uint) addr % PGSIZE != 0)
80106809:	f7 45 0c ff 0f 00 00 	testl  $0xfff,0xc(%ebp)
80106810:	0f 85 98 00 00 00    	jne    801068ae <loaduvm+0xae>
    panic("loaduvm: addr must be page aligned");
  for(i = 0; i < sz; i += PGSIZE){
80106816:	8b 75 18             	mov    0x18(%ebp),%esi
80106819:	31 db                	xor    %ebx,%ebx
8010681b:	85 f6                	test   %esi,%esi
8010681d:	75 1a                	jne    80106839 <loaduvm+0x39>
8010681f:	eb 77                	jmp    80106898 <loaduvm+0x98>
80106821:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80106828:	81 c3 00 10 00 00    	add    $0x1000,%ebx
8010682e:	81 ee 00 10 00 00    	sub    $0x1000,%esi
80106834:	39 5d 18             	cmp    %ebx,0x18(%ebp)
80106837:	76 5f                	jbe    80106898 <loaduvm+0x98>
80106839:	8b 55 0c             	mov    0xc(%ebp),%edx
    if((pte = walkpgdir(pgdir, addr+i, 0)) == 0)
8010683c:	31 c9                	xor    %ecx,%ecx
8010683e:	8b 45 08             	mov    0x8(%ebp),%eax
80106841:	01 da                	add    %ebx,%edx
80106843:	e8 88 fb ff ff       	call   801063d0 <walkpgdir>
80106848:	85 c0                	test   %eax,%eax
8010684a:	74 56                	je     801068a2 <loaduvm+0xa2>
      panic("loaduvm: address should exist");
    pa = PTE_ADDR(*pte);
8010684c:	8b 00                	mov    (%eax),%eax
    if(sz - i < PGSIZE)
      n = sz - i;
    else
      n = PGSIZE;
8010684e:	bf 00 10 00 00       	mov    $0x1000,%edi
80106853:	8b 4d 14             	mov    0x14(%ebp),%ecx
  if((uint) addr % PGSIZE != 0)
    panic("loaduvm: addr must be page aligned");
  for(i = 0; i < sz; i += PGSIZE){
    if((pte = walkpgdir(pgdir, addr+i, 0)) == 0)
      panic("loaduvm: address should exist");
    pa = PTE_ADDR(*pte);
80106856:	25 00 f0 ff ff       	and    $0xfffff000,%eax
    if(sz - i < PGSIZE)
      n = sz - i;
    else
      n = PGSIZE;
8010685b:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
80106861:	0f 42 fe             	cmovb  %esi,%edi
    if(readi(ip, P2V(pa), offset+i, n) != n)
80106864:	05 00 00 00 80       	add    $0x80000000,%eax
80106869:	89 44 24 04          	mov    %eax,0x4(%esp)
8010686d:	8b 45 10             	mov    0x10(%ebp),%eax
80106870:	01 d9                	add    %ebx,%ecx
80106872:	89 7c 24 0c          	mov    %edi,0xc(%esp)
80106876:	89 4c 24 08          	mov    %ecx,0x8(%esp)
8010687a:	89 04 24             	mov    %eax,(%esp)
8010687d:	e8 ce b0 ff ff       	call   80101950 <readi>
80106882:	39 f8                	cmp    %edi,%eax
80106884:	74 a2                	je     80106828 <loaduvm+0x28>
      return -1;
  }
  return 0;
}
80106886:	83 c4 1c             	add    $0x1c,%esp
    if(sz - i < PGSIZE)
      n = sz - i;
    else
      n = PGSIZE;
    if(readi(ip, P2V(pa), offset+i, n) != n)
      return -1;
80106889:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  }
  return 0;
}
8010688e:	5b                   	pop    %ebx
8010688f:	5e                   	pop    %esi
80106890:	5f                   	pop    %edi
80106891:	5d                   	pop    %ebp
80106892:	c3                   	ret    
80106893:	90                   	nop
80106894:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80106898:	83 c4 1c             	add    $0x1c,%esp
    else
      n = PGSIZE;
    if(readi(ip, P2V(pa), offset+i, n) != n)
      return -1;
  }
  return 0;
8010689b:	31 c0                	xor    %eax,%eax
}
8010689d:	5b                   	pop    %ebx
8010689e:	5e                   	pop    %esi
8010689f:	5f                   	pop    %edi
801068a0:	5d                   	pop    %ebp
801068a1:	c3                   	ret    

  if((uint) addr % PGSIZE != 0)
    panic("loaduvm: addr must be page aligned");
  for(i = 0; i < sz; i += PGSIZE){
    if((pte = walkpgdir(pgdir, addr+i, 0)) == 0)
      panic("loaduvm: address should exist");
801068a2:	c7 04 24 37 78 10 80 	movl   $0x80107837,(%esp)
801068a9:	e8 b2 9a ff ff       	call   80100360 <panic>
{
  uint i, pa, n;
  pte_t *pte;

  if((uint) addr % PGSIZE != 0)
    panic("loaduvm: addr must be page aligned");
801068ae:	c7 04 24 e8 78 10 80 	movl   $0x801078e8,(%esp)
801068b5:	e8 a6 9a ff ff       	call   80100360 <panic>
801068ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

801068c0 <allocuvm>:

// Allocate page tables and physical memory to grow process from oldsz to
// newsz, which need not be page aligned.  Returns new size or 0 on error.
int
allocuvm(pde_t *pgdir, uint oldsz, uint newsz)
{
801068c0:	55                   	push   %ebp
801068c1:	89 e5                	mov    %esp,%ebp
801068c3:	57                   	push   %edi
801068c4:	56                   	push   %esi
801068c5:	53                   	push   %ebx
801068c6:	83 ec 2c             	sub    $0x2c,%esp
801068c9:	8b 7d 10             	mov    0x10(%ebp),%edi
  char *mem;
  uint a;

  if(newsz >= KERNBASE)
801068cc:	85 ff                	test   %edi,%edi
801068ce:	0f 88 a7 00 00 00    	js     8010697b <allocuvm+0xbb>
    return 0;
  if(newsz < oldsz)
801068d4:	3b 7d 0c             	cmp    0xc(%ebp),%edi
    return oldsz;
801068d7:	8b 45 0c             	mov    0xc(%ebp),%eax
  char *mem;
  uint a;

  if(newsz >= KERNBASE)
    return 0;
  if(newsz < oldsz)
801068da:	0f 82 9d 00 00 00    	jb     8010697d <allocuvm+0xbd>
    return oldsz;

  a = PGROUNDUP(oldsz);
801068e0:	8d 98 ff 0f 00 00    	lea    0xfff(%eax),%ebx
801068e6:	81 e3 00 f0 ff ff    	and    $0xfffff000,%ebx
  for(; a < newsz; a += PGSIZE){
801068ec:	39 df                	cmp    %ebx,%edi
801068ee:	77 57                	ja     80106947 <allocuvm+0x87>
801068f0:	e9 93 00 00 00       	jmp    80106988 <allocuvm+0xc8>
801068f5:	8d 76 00             	lea    0x0(%esi),%esi
      cprintf("allocuvm out of memory\n");
      cprintf("Stack Size: %d\n", myproc()->stacksz);
      deallocuvm(pgdir, newsz, oldsz);
      return 0;
    }
    memset(mem, 0, PGSIZE);
801068f8:	c7 44 24 08 00 10 00 	movl   $0x1000,0x8(%esp)
801068ff:	00 
80106900:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
80106907:	00 
80106908:	89 04 24             	mov    %eax,(%esp)
8010690b:	e8 60 d9 ff ff       	call   80104270 <memset>
    if(mappages(pgdir, (char*)a, PGSIZE, V2P(mem), PTE_W|PTE_U) < 0){
80106910:	8d 86 00 00 00 80    	lea    -0x80000000(%esi),%eax
80106916:	89 44 24 0c          	mov    %eax,0xc(%esp)
8010691a:	8b 45 08             	mov    0x8(%ebp),%eax
8010691d:	c7 44 24 10 06 00 00 	movl   $0x6,0x10(%esp)
80106924:	00 
80106925:	c7 44 24 08 00 10 00 	movl   $0x1000,0x8(%esp)
8010692c:	00 
8010692d:	89 5c 24 04          	mov    %ebx,0x4(%esp)
80106931:	89 04 24             	mov    %eax,(%esp)
80106934:	e8 87 fc ff ff       	call   801065c0 <mappages>
80106939:	85 c0                	test   %eax,%eax
8010693b:	78 5b                	js     80106998 <allocuvm+0xd8>
    return 0;
  if(newsz < oldsz)
    return oldsz;

  a = PGROUNDUP(oldsz);
  for(; a < newsz; a += PGSIZE){
8010693d:	81 c3 00 10 00 00    	add    $0x1000,%ebx
80106943:	39 df                	cmp    %ebx,%edi
80106945:	76 41                	jbe    80106988 <allocuvm+0xc8>
    mem = kalloc();
80106947:	e8 44 bb ff ff       	call   80102490 <kalloc>
    if(mem == 0){
8010694c:	85 c0                	test   %eax,%eax
  if(newsz < oldsz)
    return oldsz;

  a = PGROUNDUP(oldsz);
  for(; a < newsz; a += PGSIZE){
    mem = kalloc();
8010694e:	89 c6                	mov    %eax,%esi
    if(mem == 0){
80106950:	75 a6                	jne    801068f8 <allocuvm+0x38>
      cprintf("allocuvm out of memory\n");
80106952:	c7 04 24 55 78 10 80 	movl   $0x80107855,(%esp)
80106959:	e8 f2 9c ff ff       	call   80100650 <cprintf>
      cprintf("Stack Size: %d\n", myproc()->stacksz);
8010695e:	e8 2d cd ff ff       	call   80103690 <myproc>
80106963:	8b 40 7c             	mov    0x7c(%eax),%eax
80106966:	c7 04 24 6d 78 10 80 	movl   $0x8010786d,(%esp)
8010696d:	89 44 24 04          	mov    %eax,0x4(%esp)
80106971:	e8 da 9c ff ff       	call   80100650 <cprintf>
deallocuvm(pde_t *pgdir, uint oldsz, uint newsz)
{
  pte_t *pte;
  uint a, pa;

  if(newsz >= oldsz)
80106976:	3b 7d 0c             	cmp    0xc(%ebp),%edi
80106979:	77 47                	ja     801069c2 <allocuvm+0x102>
    memset(mem, 0, PGSIZE);
    if(mappages(pgdir, (char*)a, PGSIZE, V2P(mem), PTE_W|PTE_U) < 0){
      cprintf("allocuvm out of memory (2)\n");
      deallocuvm(pgdir, newsz, oldsz);
      kfree(mem);
      return 0;
8010697b:	31 c0                	xor    %eax,%eax
    }
  }
  return newsz;
}
8010697d:	83 c4 2c             	add    $0x2c,%esp
80106980:	5b                   	pop    %ebx
80106981:	5e                   	pop    %esi
80106982:	5f                   	pop    %edi
80106983:	5d                   	pop    %ebp
80106984:	c3                   	ret    
80106985:	8d 76 00             	lea    0x0(%esi),%esi
80106988:	83 c4 2c             	add    $0x2c,%esp
8010698b:	89 f8                	mov    %edi,%eax
8010698d:	5b                   	pop    %ebx
8010698e:	5e                   	pop    %esi
8010698f:	5f                   	pop    %edi
80106990:	5d                   	pop    %ebp
80106991:	c3                   	ret    
80106992:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      deallocuvm(pgdir, newsz, oldsz);
      return 0;
    }
    memset(mem, 0, PGSIZE);
    if(mappages(pgdir, (char*)a, PGSIZE, V2P(mem), PTE_W|PTE_U) < 0){
      cprintf("allocuvm out of memory (2)\n");
80106998:	c7 04 24 7d 78 10 80 	movl   $0x8010787d,(%esp)
8010699f:	e8 ac 9c ff ff       	call   80100650 <cprintf>
deallocuvm(pde_t *pgdir, uint oldsz, uint newsz)
{
  pte_t *pte;
  uint a, pa;

  if(newsz >= oldsz)
801069a4:	3b 7d 0c             	cmp    0xc(%ebp),%edi
801069a7:	76 0d                	jbe    801069b6 <allocuvm+0xf6>
801069a9:	8b 4d 0c             	mov    0xc(%ebp),%ecx
801069ac:	89 fa                	mov    %edi,%edx
801069ae:	8b 45 08             	mov    0x8(%ebp),%eax
801069b1:	e8 aa fa ff ff       	call   80106460 <deallocuvm.part.0>
    }
    memset(mem, 0, PGSIZE);
    if(mappages(pgdir, (char*)a, PGSIZE, V2P(mem), PTE_W|PTE_U) < 0){
      cprintf("allocuvm out of memory (2)\n");
      deallocuvm(pgdir, newsz, oldsz);
      kfree(mem);
801069b6:	89 34 24             	mov    %esi,(%esp)
801069b9:	e8 22 b9 ff ff       	call   801022e0 <kfree>
      return 0;
801069be:	31 c0                	xor    %eax,%eax
801069c0:	eb bb                	jmp    8010697d <allocuvm+0xbd>
801069c2:	8b 4d 0c             	mov    0xc(%ebp),%ecx
801069c5:	89 fa                	mov    %edi,%edx
801069c7:	8b 45 08             	mov    0x8(%ebp),%eax
801069ca:	e8 91 fa ff ff       	call   80106460 <deallocuvm.part.0>
    mem = kalloc();
    if(mem == 0){
      cprintf("allocuvm out of memory\n");
      cprintf("Stack Size: %d\n", myproc()->stacksz);
      deallocuvm(pgdir, newsz, oldsz);
      return 0;
801069cf:	31 c0                	xor    %eax,%eax
801069d1:	eb aa                	jmp    8010697d <allocuvm+0xbd>
801069d3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
801069d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

801069e0 <deallocuvm>:
// newsz.  oldsz and newsz need not be page-aligned, nor does newsz
// need to be less than oldsz.  oldsz can be larger than the actual
// process size.  Returns the new process size.
int
deallocuvm(pde_t *pgdir, uint oldsz, uint newsz)
{
801069e0:	55                   	push   %ebp
801069e1:	89 e5                	mov    %esp,%ebp
801069e3:	8b 55 0c             	mov    0xc(%ebp),%edx
801069e6:	8b 4d 10             	mov    0x10(%ebp),%ecx
801069e9:	8b 45 08             	mov    0x8(%ebp),%eax
  pte_t *pte;
  uint a, pa;

  if(newsz >= oldsz)
801069ec:	39 d1                	cmp    %edx,%ecx
801069ee:	73 08                	jae    801069f8 <deallocuvm+0x18>
      kfree(v);
      *pte = 0;
    }
  }
  return newsz;
}
801069f0:	5d                   	pop    %ebp
801069f1:	e9 6a fa ff ff       	jmp    80106460 <deallocuvm.part.0>
801069f6:	66 90                	xchg   %ax,%ax
801069f8:	89 d0                	mov    %edx,%eax
801069fa:	5d                   	pop    %ebp
801069fb:	c3                   	ret    
801069fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80106a00 <freevm>:

// Free a page table and all the physical memory pages
// in the user part.
void
freevm(pde_t *pgdir)
{
80106a00:	55                   	push   %ebp
80106a01:	89 e5                	mov    %esp,%ebp
80106a03:	56                   	push   %esi
80106a04:	53                   	push   %ebx
80106a05:	83 ec 10             	sub    $0x10,%esp
80106a08:	8b 75 08             	mov    0x8(%ebp),%esi
  uint i;

  if(pgdir == 0)
80106a0b:	85 f6                	test   %esi,%esi
80106a0d:	74 59                	je     80106a68 <freevm+0x68>
80106a0f:	31 c9                	xor    %ecx,%ecx
80106a11:	ba 00 00 00 80       	mov    $0x80000000,%edx
80106a16:	89 f0                	mov    %esi,%eax
    panic("freevm: no pgdir");
  deallocuvm(pgdir, KERNBASE, 0);
  for(i = 0; i < NPDENTRIES; i++){
80106a18:	31 db                	xor    %ebx,%ebx
80106a1a:	e8 41 fa ff ff       	call   80106460 <deallocuvm.part.0>
80106a1f:	eb 12                	jmp    80106a33 <freevm+0x33>
80106a21:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
80106a28:	83 c3 01             	add    $0x1,%ebx
80106a2b:	81 fb 00 04 00 00    	cmp    $0x400,%ebx
80106a31:	74 27                	je     80106a5a <freevm+0x5a>
    if(pgdir[i] & PTE_P){
80106a33:	8b 14 9e             	mov    (%esi,%ebx,4),%edx
80106a36:	f6 c2 01             	test   $0x1,%dl
80106a39:	74 ed                	je     80106a28 <freevm+0x28>
      char * v = P2V(PTE_ADDR(pgdir[i]));
80106a3b:	81 e2 00 f0 ff ff    	and    $0xfffff000,%edx
  uint i;

  if(pgdir == 0)
    panic("freevm: no pgdir");
  deallocuvm(pgdir, KERNBASE, 0);
  for(i = 0; i < NPDENTRIES; i++){
80106a41:	83 c3 01             	add    $0x1,%ebx
    if(pgdir[i] & PTE_P){
      char * v = P2V(PTE_ADDR(pgdir[i]));
80106a44:	81 c2 00 00 00 80    	add    $0x80000000,%edx
      kfree(v);
80106a4a:	89 14 24             	mov    %edx,(%esp)
80106a4d:	e8 8e b8 ff ff       	call   801022e0 <kfree>
  uint i;

  if(pgdir == 0)
    panic("freevm: no pgdir");
  deallocuvm(pgdir, KERNBASE, 0);
  for(i = 0; i < NPDENTRIES; i++){
80106a52:	81 fb 00 04 00 00    	cmp    $0x400,%ebx
80106a58:	75 d9                	jne    80106a33 <freevm+0x33>
    if(pgdir[i] & PTE_P){
      char * v = P2V(PTE_ADDR(pgdir[i]));
      kfree(v);
    }
  }
  kfree((char*)pgdir);
80106a5a:	89 75 08             	mov    %esi,0x8(%ebp)
}
80106a5d:	83 c4 10             	add    $0x10,%esp
80106a60:	5b                   	pop    %ebx
80106a61:	5e                   	pop    %esi
80106a62:	5d                   	pop    %ebp
    if(pgdir[i] & PTE_P){
      char * v = P2V(PTE_ADDR(pgdir[i]));
      kfree(v);
    }
  }
  kfree((char*)pgdir);
80106a63:	e9 78 b8 ff ff       	jmp    801022e0 <kfree>
freevm(pde_t *pgdir)
{
  uint i;

  if(pgdir == 0)
    panic("freevm: no pgdir");
80106a68:	c7 04 24 99 78 10 80 	movl   $0x80107899,(%esp)
80106a6f:	e8 ec 98 ff ff       	call   80100360 <panic>
80106a74:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80106a7a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

80106a80 <setupkvm>:
};

// Set up kernel part of a page table.
pde_t*
setupkvm(void)
{
80106a80:	55                   	push   %ebp
80106a81:	89 e5                	mov    %esp,%ebp
80106a83:	56                   	push   %esi
80106a84:	53                   	push   %ebx
80106a85:	83 ec 20             	sub    $0x20,%esp
  pde_t *pgdir;
  struct kmap *k;

  if((pgdir = (pde_t*)kalloc()) == 0)
80106a88:	e8 03 ba ff ff       	call   80102490 <kalloc>
80106a8d:	85 c0                	test   %eax,%eax
80106a8f:	89 c6                	mov    %eax,%esi
80106a91:	74 75                	je     80106b08 <setupkvm+0x88>
    return 0;
  memset(pgdir, 0, PGSIZE);
80106a93:	c7 44 24 08 00 10 00 	movl   $0x1000,0x8(%esp)
80106a9a:	00 
  if (P2V(PHYSTOP) > (void*)DEVSPACE)
    panic("PHYSTOP too high");
  for(k = kmap; k < &kmap[NELEM(kmap)]; k++)
80106a9b:	bb 20 a4 10 80       	mov    $0x8010a420,%ebx
  pde_t *pgdir;
  struct kmap *k;

  if((pgdir = (pde_t*)kalloc()) == 0)
    return 0;
  memset(pgdir, 0, PGSIZE);
80106aa0:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
80106aa7:	00 
80106aa8:	89 04 24             	mov    %eax,(%esp)
80106aab:	e8 c0 d7 ff ff       	call   80104270 <memset>
  if (P2V(PHYSTOP) > (void*)DEVSPACE)
    panic("PHYSTOP too high");
  for(k = kmap; k < &kmap[NELEM(kmap)]; k++)
    if(mappages(pgdir, k->virt, k->phys_end - k->phys_start,
80106ab0:	8b 53 0c             	mov    0xc(%ebx),%edx
80106ab3:	8b 43 04             	mov    0x4(%ebx),%eax
80106ab6:	89 34 24             	mov    %esi,(%esp)
80106ab9:	89 54 24 10          	mov    %edx,0x10(%esp)
80106abd:	8b 53 08             	mov    0x8(%ebx),%edx
80106ac0:	89 44 24 0c          	mov    %eax,0xc(%esp)
80106ac4:	29 c2                	sub    %eax,%edx
80106ac6:	8b 03                	mov    (%ebx),%eax
80106ac8:	89 54 24 08          	mov    %edx,0x8(%esp)
80106acc:	89 44 24 04          	mov    %eax,0x4(%esp)
80106ad0:	e8 eb fa ff ff       	call   801065c0 <mappages>
80106ad5:	85 c0                	test   %eax,%eax
80106ad7:	78 17                	js     80106af0 <setupkvm+0x70>
  if((pgdir = (pde_t*)kalloc()) == 0)
    return 0;
  memset(pgdir, 0, PGSIZE);
  if (P2V(PHYSTOP) > (void*)DEVSPACE)
    panic("PHYSTOP too high");
  for(k = kmap; k < &kmap[NELEM(kmap)]; k++)
80106ad9:	83 c3 10             	add    $0x10,%ebx
80106adc:	81 fb 60 a4 10 80    	cmp    $0x8010a460,%ebx
80106ae2:	72 cc                	jb     80106ab0 <setupkvm+0x30>
80106ae4:	89 f0                	mov    %esi,%eax
                (uint)k->phys_start, k->perm) < 0) {
      freevm(pgdir);
      return 0;
    }
  return pgdir;
}
80106ae6:	83 c4 20             	add    $0x20,%esp
80106ae9:	5b                   	pop    %ebx
80106aea:	5e                   	pop    %esi
80106aeb:	5d                   	pop    %ebp
80106aec:	c3                   	ret    
80106aed:	8d 76 00             	lea    0x0(%esi),%esi
  if (P2V(PHYSTOP) > (void*)DEVSPACE)
    panic("PHYSTOP too high");
  for(k = kmap; k < &kmap[NELEM(kmap)]; k++)
    if(mappages(pgdir, k->virt, k->phys_end - k->phys_start,
                (uint)k->phys_start, k->perm) < 0) {
      freevm(pgdir);
80106af0:	89 34 24             	mov    %esi,(%esp)
80106af3:	e8 08 ff ff ff       	call   80106a00 <freevm>
      return 0;
    }
  return pgdir;
}
80106af8:	83 c4 20             	add    $0x20,%esp
    panic("PHYSTOP too high");
  for(k = kmap; k < &kmap[NELEM(kmap)]; k++)
    if(mappages(pgdir, k->virt, k->phys_end - k->phys_start,
                (uint)k->phys_start, k->perm) < 0) {
      freevm(pgdir);
      return 0;
80106afb:	31 c0                	xor    %eax,%eax
    }
  return pgdir;
}
80106afd:	5b                   	pop    %ebx
80106afe:	5e                   	pop    %esi
80106aff:	5d                   	pop    %ebp
80106b00:	c3                   	ret    
80106b01:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
{
  pde_t *pgdir;
  struct kmap *k;

  if((pgdir = (pde_t*)kalloc()) == 0)
    return 0;
80106b08:	31 c0                	xor    %eax,%eax
80106b0a:	eb da                	jmp    80106ae6 <setupkvm+0x66>
80106b0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80106b10 <kvmalloc>:

// Allocate one page table for the machine for the kernel address
// space for scheduler processes.
void
kvmalloc(void)
{
80106b10:	55                   	push   %ebp
80106b11:	89 e5                	mov    %esp,%ebp
80106b13:	83 ec 08             	sub    $0x8,%esp
  kpgdir = setupkvm();
80106b16:	e8 65 ff ff ff       	call   80106a80 <setupkvm>
80106b1b:	a3 a4 55 11 80       	mov    %eax,0x801155a4
// Switch h/w page table register to the kernel-only page table,
// for when no process is running.
void
switchkvm(void)
{
  lcr3(V2P(kpgdir));   // switch to the kernel page table
80106b20:	05 00 00 00 80       	add    $0x80000000,%eax
80106b25:	0f 22 d8             	mov    %eax,%cr3
void
kvmalloc(void)
{
  kpgdir = setupkvm();
  switchkvm();
}
80106b28:	c9                   	leave  
80106b29:	c3                   	ret    
80106b2a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

80106b30 <clearpteu>:

// Clear PTE_U on a page. Used to create an inaccessible
// page beneath the user stack.
void
clearpteu(pde_t *pgdir, char *uva)
{
80106b30:	55                   	push   %ebp
  pte_t *pte;

  pte = walkpgdir(pgdir, uva, 0);
80106b31:	31 c9                	xor    %ecx,%ecx

// Clear PTE_U on a page. Used to create an inaccessible
// page beneath the user stack.
void
clearpteu(pde_t *pgdir, char *uva)
{
80106b33:	89 e5                	mov    %esp,%ebp
80106b35:	83 ec 18             	sub    $0x18,%esp
  pte_t *pte;

  pte = walkpgdir(pgdir, uva, 0);
80106b38:	8b 55 0c             	mov    0xc(%ebp),%edx
80106b3b:	8b 45 08             	mov    0x8(%ebp),%eax
80106b3e:	e8 8d f8 ff ff       	call   801063d0 <walkpgdir>
  if(pte == 0)
80106b43:	85 c0                	test   %eax,%eax
80106b45:	74 05                	je     80106b4c <clearpteu+0x1c>
    panic("clearpteu");
  *pte &= ~PTE_U;
80106b47:	83 20 fb             	andl   $0xfffffffb,(%eax)
}
80106b4a:	c9                   	leave  
80106b4b:	c3                   	ret    
{
  pte_t *pte;

  pte = walkpgdir(pgdir, uva, 0);
  if(pte == 0)
    panic("clearpteu");
80106b4c:	c7 04 24 aa 78 10 80 	movl   $0x801078aa,(%esp)
80106b53:	e8 08 98 ff ff       	call   80100360 <panic>
80106b58:	90                   	nop
80106b59:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

80106b60 <copyuvm>:

// Given a parent process's page table, create a copy
// of it for a child.
pde_t*
copyuvm(pde_t *pgdir, uint sz)
{
80106b60:	55                   	push   %ebp
80106b61:	89 e5                	mov    %esp,%ebp
80106b63:	57                   	push   %edi
80106b64:	56                   	push   %esi
80106b65:	53                   	push   %ebx
80106b66:	83 ec 2c             	sub    $0x2c,%esp
  pde_t *d;
  pte_t *pte;
  uint pa, i, flags;
  char *mem;

  if((d = setupkvm()) == 0)
80106b69:	e8 12 ff ff ff       	call   80106a80 <setupkvm>
80106b6e:	85 c0                	test   %eax,%eax
80106b70:	89 45 e0             	mov    %eax,-0x20(%ebp)
80106b73:	0f 84 81 01 00 00    	je     80106cfa <copyuvm+0x19a>
    return 0;
  for(i = 0; i < sz; i += PGSIZE){
80106b79:	8b 45 0c             	mov    0xc(%ebp),%eax
80106b7c:	85 c0                	test   %eax,%eax
80106b7e:	0f 84 ac 00 00 00    	je     80106c30 <copyuvm+0xd0>
80106b84:	31 db                	xor    %ebx,%ebx
80106b86:	eb 51                	jmp    80106bd9 <copyuvm+0x79>
      panic("copyuvm: page not present");
    pa = PTE_ADDR(*pte);
    flags = PTE_FLAGS(*pte);
    if((mem = kalloc()) == 0)
      goto bad;
    memmove(mem, (char*)P2V(pa), PGSIZE);
80106b88:	81 c7 00 00 00 80    	add    $0x80000000,%edi
80106b8e:	c7 44 24 08 00 10 00 	movl   $0x1000,0x8(%esp)
80106b95:	00 
80106b96:	89 7c 24 04          	mov    %edi,0x4(%esp)
80106b9a:	89 04 24             	mov    %eax,(%esp)
80106b9d:	e8 6e d7 ff ff       	call   80104310 <memmove>
    if(mappages(d, (void*)i, PGSIZE, V2P(mem), flags) < 0)
80106ba2:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80106ba5:	8d 96 00 00 00 80    	lea    -0x80000000(%esi),%edx
80106bab:	89 54 24 0c          	mov    %edx,0xc(%esp)
80106baf:	c7 44 24 08 00 10 00 	movl   $0x1000,0x8(%esp)
80106bb6:	00 
80106bb7:	89 5c 24 04          	mov    %ebx,0x4(%esp)
80106bbb:	89 44 24 10          	mov    %eax,0x10(%esp)
80106bbf:	8b 45 e0             	mov    -0x20(%ebp),%eax
80106bc2:	89 04 24             	mov    %eax,(%esp)
80106bc5:	e8 f6 f9 ff ff       	call   801065c0 <mappages>
80106bca:	85 c0                	test   %eax,%eax
80106bcc:	78 4d                	js     80106c1b <copyuvm+0xbb>
  uint pa, i, flags;
  char *mem;

  if((d = setupkvm()) == 0)
    return 0;
  for(i = 0; i < sz; i += PGSIZE){
80106bce:	81 c3 00 10 00 00    	add    $0x1000,%ebx
80106bd4:	39 5d 0c             	cmp    %ebx,0xc(%ebp)
80106bd7:	76 57                	jbe    80106c30 <copyuvm+0xd0>
    if((pte = walkpgdir(pgdir, (void *) i, 0)) == 0)
80106bd9:	8b 45 08             	mov    0x8(%ebp),%eax
80106bdc:	31 c9                	xor    %ecx,%ecx
80106bde:	89 da                	mov    %ebx,%edx
80106be0:	e8 eb f7 ff ff       	call   801063d0 <walkpgdir>
80106be5:	85 c0                	test   %eax,%eax
80106be7:	0f 84 20 01 00 00    	je     80106d0d <copyuvm+0x1ad>
      panic("copyuvm: pte should exist");
    if(!(*pte & PTE_P))
80106bed:	8b 30                	mov    (%eax),%esi
80106bef:	f7 c6 01 00 00 00    	test   $0x1,%esi
80106bf5:	0f 84 06 01 00 00    	je     80106d01 <copyuvm+0x1a1>
      panic("copyuvm: page not present");
    pa = PTE_ADDR(*pte);
80106bfb:	89 f7                	mov    %esi,%edi
    flags = PTE_FLAGS(*pte);
80106bfd:	81 e6 ff 0f 00 00    	and    $0xfff,%esi
80106c03:	89 75 e4             	mov    %esi,-0x1c(%ebp)
  for(i = 0; i < sz; i += PGSIZE){
    if((pte = walkpgdir(pgdir, (void *) i, 0)) == 0)
      panic("copyuvm: pte should exist");
    if(!(*pte & PTE_P))
      panic("copyuvm: page not present");
    pa = PTE_ADDR(*pte);
80106c06:	81 e7 00 f0 ff ff    	and    $0xfffff000,%edi
    flags = PTE_FLAGS(*pte);
    if((mem = kalloc()) == 0)
80106c0c:	e8 7f b8 ff ff       	call   80102490 <kalloc>
80106c11:	85 c0                	test   %eax,%eax
80106c13:	89 c6                	mov    %eax,%esi
80106c15:	0f 85 6d ff ff ff    	jne    80106b88 <copyuvm+0x28>
      goto bad;
  }
  return d;

bad:
  freevm(d);
80106c1b:	8b 45 e0             	mov    -0x20(%ebp),%eax
80106c1e:	89 04 24             	mov    %eax,(%esp)
80106c21:	e8 da fd ff ff       	call   80106a00 <freevm>
  return 0;
80106c26:	31 c0                	xor    %eax,%eax
}
80106c28:	83 c4 2c             	add    $0x2c,%esp
80106c2b:	5b                   	pop    %ebx
80106c2c:	5e                   	pop    %esi
80106c2d:	5f                   	pop    %edi
80106c2e:	5d                   	pop    %ebp
80106c2f:	c3                   	ret    
  uint pa, i, flags;
  char *mem;

  if((d = setupkvm()) == 0)
    return 0;
  for(i = 0; i < sz; i += PGSIZE){
80106c30:	bb fc ff ff 7f       	mov    $0x7ffffffc,%ebx
80106c35:	e9 9b 00 00 00       	jmp    80106cd5 <copyuvm+0x175>
80106c3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      goto bad;
  }

  //Lab 2 addition
  for(i = KERNBASE-4; i > (KERNBASE-4-myproc()->stacksz * PGSIZE); i -= PGSIZE){
    if((pte = walkpgdir(pgdir, (void *) i, 0)) == 0)
80106c40:	8b 45 08             	mov    0x8(%ebp),%eax
80106c43:	31 c9                	xor    %ecx,%ecx
80106c45:	89 da                	mov    %ebx,%edx
80106c47:	e8 84 f7 ff ff       	call   801063d0 <walkpgdir>
80106c4c:	85 c0                	test   %eax,%eax
80106c4e:	0f 84 b9 00 00 00    	je     80106d0d <copyuvm+0x1ad>
      panic("copyuvm: pte should exist");
    if(!(*pte & PTE_P))
80106c54:	8b 30                	mov    (%eax),%esi
80106c56:	f7 c6 01 00 00 00    	test   $0x1,%esi
80106c5c:	0f 84 9f 00 00 00    	je     80106d01 <copyuvm+0x1a1>
      panic("copyuvm: page not present");
    pa = PTE_ADDR(*pte);
80106c62:	89 f7                	mov    %esi,%edi
    flags = PTE_FLAGS(*pte);
80106c64:	81 e6 ff 0f 00 00    	and    $0xfff,%esi
80106c6a:	89 75 e4             	mov    %esi,-0x1c(%ebp)
  for(i = KERNBASE-4; i > (KERNBASE-4-myproc()->stacksz * PGSIZE); i -= PGSIZE){
    if((pte = walkpgdir(pgdir, (void *) i, 0)) == 0)
      panic("copyuvm: pte should exist");
    if(!(*pte & PTE_P))
      panic("copyuvm: page not present");
    pa = PTE_ADDR(*pte);
80106c6d:	81 e7 00 f0 ff ff    	and    $0xfffff000,%edi
    flags = PTE_FLAGS(*pte);
    if((mem = kalloc()) == 0)
80106c73:	e8 18 b8 ff ff       	call   80102490 <kalloc>
80106c78:	85 c0                	test   %eax,%eax
80106c7a:	89 c6                	mov    %eax,%esi
80106c7c:	74 9d                	je     80106c1b <copyuvm+0xbb>
      goto bad;
    memmove(mem, (char*)P2V(pa), PGSIZE);
80106c7e:	81 c7 00 00 00 80    	add    $0x80000000,%edi
80106c84:	c7 44 24 08 00 10 00 	movl   $0x1000,0x8(%esp)
80106c8b:	00 
80106c8c:	89 7c 24 04          	mov    %edi,0x4(%esp)
80106c90:	89 04 24             	mov    %eax,(%esp)
80106c93:	e8 78 d6 ff ff       	call   80104310 <memmove>
    if(mappages(d, (void*)PGROUNDDOWN(i), PGSIZE, V2P(mem), flags) < 0)
80106c98:	8b 45 e4             	mov    -0x1c(%ebp),%eax
80106c9b:	8d 96 00 00 00 80    	lea    -0x80000000(%esi),%edx
80106ca1:	89 54 24 0c          	mov    %edx,0xc(%esp)
80106ca5:	c7 44 24 08 00 10 00 	movl   $0x1000,0x8(%esp)
80106cac:	00 
80106cad:	89 44 24 10          	mov    %eax,0x10(%esp)
80106cb1:	89 d8                	mov    %ebx,%eax
80106cb3:	25 00 f0 ff ff       	and    $0xfffff000,%eax
80106cb8:	89 44 24 04          	mov    %eax,0x4(%esp)
80106cbc:	8b 45 e0             	mov    -0x20(%ebp),%eax
80106cbf:	89 04 24             	mov    %eax,(%esp)
80106cc2:	e8 f9 f8 ff ff       	call   801065c0 <mappages>
80106cc7:	85 c0                	test   %eax,%eax
80106cc9:	0f 88 4c ff ff ff    	js     80106c1b <copyuvm+0xbb>
    if(mappages(d, (void*)i, PGSIZE, V2P(mem), flags) < 0)
      goto bad;
  }

  //Lab 2 addition
  for(i = KERNBASE-4; i > (KERNBASE-4-myproc()->stacksz * PGSIZE); i -= PGSIZE){
80106ccf:	81 eb 00 10 00 00    	sub    $0x1000,%ebx
80106cd5:	e8 b6 c9 ff ff       	call   80103690 <myproc>
80106cda:	b9 fc ff ff 7f       	mov    $0x7ffffffc,%ecx
80106cdf:	8b 40 7c             	mov    0x7c(%eax),%eax
80106ce2:	c1 e0 0c             	shl    $0xc,%eax
80106ce5:	29 c1                	sub    %eax,%ecx
80106ce7:	39 cb                	cmp    %ecx,%ebx
80106ce9:	0f 87 51 ff ff ff    	ja     80106c40 <copyuvm+0xe0>
80106cef:	8b 45 e0             	mov    -0x20(%ebp),%eax
  return d;

bad:
  freevm(d);
  return 0;
}
80106cf2:	83 c4 2c             	add    $0x2c,%esp
80106cf5:	5b                   	pop    %ebx
80106cf6:	5e                   	pop    %esi
80106cf7:	5f                   	pop    %edi
80106cf8:	5d                   	pop    %ebp
80106cf9:	c3                   	ret    
  pte_t *pte;
  uint pa, i, flags;
  char *mem;

  if((d = setupkvm()) == 0)
    return 0;
80106cfa:	31 c0                	xor    %eax,%eax
80106cfc:	e9 27 ff ff ff       	jmp    80106c28 <copyuvm+0xc8>
  for(i = 0; i < sz; i += PGSIZE){
    if((pte = walkpgdir(pgdir, (void *) i, 0)) == 0)
      panic("copyuvm: pte should exist");
    if(!(*pte & PTE_P))
      panic("copyuvm: page not present");
80106d01:	c7 04 24 ce 78 10 80 	movl   $0x801078ce,(%esp)
80106d08:	e8 53 96 ff ff       	call   80100360 <panic>

  if((d = setupkvm()) == 0)
    return 0;
  for(i = 0; i < sz; i += PGSIZE){
    if((pte = walkpgdir(pgdir, (void *) i, 0)) == 0)
      panic("copyuvm: pte should exist");
80106d0d:	c7 04 24 b4 78 10 80 	movl   $0x801078b4,(%esp)
80106d14:	e8 47 96 ff ff       	call   80100360 <panic>
80106d19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

80106d20 <uva2ka>:

//PAGEBREAK!
// Map user virtual address to kernel address.
char*
uva2ka(pde_t *pgdir, char *uva)
{
80106d20:	55                   	push   %ebp
  pte_t *pte;

  pte = walkpgdir(pgdir, uva, 0);
80106d21:	31 c9                	xor    %ecx,%ecx

//PAGEBREAK!
// Map user virtual address to kernel address.
char*
uva2ka(pde_t *pgdir, char *uva)
{
80106d23:	89 e5                	mov    %esp,%ebp
80106d25:	83 ec 08             	sub    $0x8,%esp
  pte_t *pte;

  pte = walkpgdir(pgdir, uva, 0);
80106d28:	8b 55 0c             	mov    0xc(%ebp),%edx
80106d2b:	8b 45 08             	mov    0x8(%ebp),%eax
80106d2e:	e8 9d f6 ff ff       	call   801063d0 <walkpgdir>
  if((*pte & PTE_P) == 0)
80106d33:	8b 00                	mov    (%eax),%eax
80106d35:	89 c2                	mov    %eax,%edx
80106d37:	83 e2 05             	and    $0x5,%edx
    return 0;
  if((*pte & PTE_U) == 0)
80106d3a:	83 fa 05             	cmp    $0x5,%edx
80106d3d:	75 11                	jne    80106d50 <uva2ka+0x30>
    return 0;
  return (char*)P2V(PTE_ADDR(*pte));
80106d3f:	25 00 f0 ff ff       	and    $0xfffff000,%eax
80106d44:	05 00 00 00 80       	add    $0x80000000,%eax
}
80106d49:	c9                   	leave  
80106d4a:	c3                   	ret    
80106d4b:	90                   	nop
80106d4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

  pte = walkpgdir(pgdir, uva, 0);
  if((*pte & PTE_P) == 0)
    return 0;
  if((*pte & PTE_U) == 0)
    return 0;
80106d50:	31 c0                	xor    %eax,%eax
  return (char*)P2V(PTE_ADDR(*pte));
}
80106d52:	c9                   	leave  
80106d53:	c3                   	ret    
80106d54:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
80106d5a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

80106d60 <copyout>:
// Copy len bytes from p to user address va in page table pgdir.
// Most useful when pgdir is not the current page table.
// uva2ka ensures this only works for PTE_U pages.
int
copyout(pde_t *pgdir, uint va, void *p, uint len)
{
80106d60:	55                   	push   %ebp
80106d61:	89 e5                	mov    %esp,%ebp
80106d63:	57                   	push   %edi
80106d64:	56                   	push   %esi
80106d65:	53                   	push   %ebx
80106d66:	83 ec 1c             	sub    $0x1c,%esp
80106d69:	8b 5d 14             	mov    0x14(%ebp),%ebx
80106d6c:	8b 4d 0c             	mov    0xc(%ebp),%ecx
80106d6f:	8b 7d 10             	mov    0x10(%ebp),%edi
  char *buf, *pa0;
  uint n, va0;

  buf = (char*)p;
  while(len > 0){
80106d72:	85 db                	test   %ebx,%ebx
80106d74:	75 3a                	jne    80106db0 <copyout+0x50>
80106d76:	eb 68                	jmp    80106de0 <copyout+0x80>
    va0 = (uint)PGROUNDDOWN(va);
    pa0 = uva2ka(pgdir, (char*)va0);
    if(pa0 == 0)
      return -1;
    n = PGSIZE - (va - va0);
80106d78:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
80106d7b:	89 f2                	mov    %esi,%edx
    if(n > len)
      n = len;
    memmove(pa0 + (va - va0), buf, n);
80106d7d:	89 7c 24 04          	mov    %edi,0x4(%esp)
  while(len > 0){
    va0 = (uint)PGROUNDDOWN(va);
    pa0 = uva2ka(pgdir, (char*)va0);
    if(pa0 == 0)
      return -1;
    n = PGSIZE - (va - va0);
80106d81:	29 ca                	sub    %ecx,%edx
80106d83:	81 c2 00 10 00 00    	add    $0x1000,%edx
80106d89:	39 da                	cmp    %ebx,%edx
80106d8b:	0f 47 d3             	cmova  %ebx,%edx
    if(n > len)
      n = len;
    memmove(pa0 + (va - va0), buf, n);
80106d8e:	29 f1                	sub    %esi,%ecx
80106d90:	01 c8                	add    %ecx,%eax
80106d92:	89 54 24 08          	mov    %edx,0x8(%esp)
80106d96:	89 04 24             	mov    %eax,(%esp)
80106d99:	89 55 e4             	mov    %edx,-0x1c(%ebp)
80106d9c:	e8 6f d5 ff ff       	call   80104310 <memmove>
    len -= n;
    buf += n;
80106da1:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    va = va0 + PGSIZE;
80106da4:	8d 8e 00 10 00 00    	lea    0x1000(%esi),%ecx
    n = PGSIZE - (va - va0);
    if(n > len)
      n = len;
    memmove(pa0 + (va - va0), buf, n);
    len -= n;
    buf += n;
80106daa:	01 d7                	add    %edx,%edi
{
  char *buf, *pa0;
  uint n, va0;

  buf = (char*)p;
  while(len > 0){
80106dac:	29 d3                	sub    %edx,%ebx
80106dae:	74 30                	je     80106de0 <copyout+0x80>
    va0 = (uint)PGROUNDDOWN(va);
    pa0 = uva2ka(pgdir, (char*)va0);
80106db0:	8b 45 08             	mov    0x8(%ebp),%eax
  char *buf, *pa0;
  uint n, va0;

  buf = (char*)p;
  while(len > 0){
    va0 = (uint)PGROUNDDOWN(va);
80106db3:	89 ce                	mov    %ecx,%esi
80106db5:	81 e6 00 f0 ff ff    	and    $0xfffff000,%esi
    pa0 = uva2ka(pgdir, (char*)va0);
80106dbb:	89 74 24 04          	mov    %esi,0x4(%esp)
  char *buf, *pa0;
  uint n, va0;

  buf = (char*)p;
  while(len > 0){
    va0 = (uint)PGROUNDDOWN(va);
80106dbf:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
    pa0 = uva2ka(pgdir, (char*)va0);
80106dc2:	89 04 24             	mov    %eax,(%esp)
80106dc5:	e8 56 ff ff ff       	call   80106d20 <uva2ka>
    if(pa0 == 0)
80106dca:	85 c0                	test   %eax,%eax
80106dcc:	75 aa                	jne    80106d78 <copyout+0x18>
    len -= n;
    buf += n;
    va = va0 + PGSIZE;
  }
  return 0;
}
80106dce:	83 c4 1c             	add    $0x1c,%esp
  buf = (char*)p;
  while(len > 0){
    va0 = (uint)PGROUNDDOWN(va);
    pa0 = uva2ka(pgdir, (char*)va0);
    if(pa0 == 0)
      return -1;
80106dd1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    len -= n;
    buf += n;
    va = va0 + PGSIZE;
  }
  return 0;
}
80106dd6:	5b                   	pop    %ebx
80106dd7:	5e                   	pop    %esi
80106dd8:	5f                   	pop    %edi
80106dd9:	5d                   	pop    %ebp
80106dda:	c3                   	ret    
80106ddb:	90                   	nop
80106ddc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80106de0:	83 c4 1c             	add    $0x1c,%esp
    memmove(pa0 + (va - va0), buf, n);
    len -= n;
    buf += n;
    va = va0 + PGSIZE;
  }
  return 0;
80106de3:	31 c0                	xor    %eax,%eax
}
80106de5:	5b                   	pop    %ebx
80106de6:	5e                   	pop    %esi
80106de7:	5f                   	pop    %edi
80106de8:	5d                   	pop    %ebp
80106de9:	c3                   	ret    
80106dea:	66 90                	xchg   %ax,%ax
80106dec:	66 90                	xchg   %ax,%ax
80106dee:	66 90                	xchg   %ax,%ax

80106df0 <shminit>:
80106df0:	55                   	push   %ebp
80106df1:	89 e5                	mov    %esp,%ebp
80106df3:	83 ec 18             	sub    $0x18,%esp
80106df6:	c7 44 24 04 0c 79 10 	movl   $0x8010790c,0x4(%esp)
80106dfd:	80 
80106dfe:	c7 04 24 c0 55 11 80 	movl   $0x801155c0,(%esp)
80106e05:	e8 36 d2 ff ff       	call   80104040 <initlock>
80106e0a:	c7 04 24 c0 55 11 80 	movl   $0x801155c0,(%esp)
80106e11:	e8 1a d3 ff ff       	call   80104130 <acquire>
80106e16:	b8 f4 55 11 80       	mov    $0x801155f4,%eax
80106e1b:	90                   	nop
80106e1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
80106e20:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
80106e26:	83 c0 0c             	add    $0xc,%eax
80106e29:	c7 40 f8 00 00 00 00 	movl   $0x0,-0x8(%eax)
80106e30:	c7 40 fc 00 00 00 00 	movl   $0x0,-0x4(%eax)
80106e37:	3d f4 58 11 80       	cmp    $0x801158f4,%eax
80106e3c:	75 e2                	jne    80106e20 <shminit+0x30>
80106e3e:	c7 04 24 c0 55 11 80 	movl   $0x801155c0,(%esp)
80106e45:	e8 d6 d3 ff ff       	call   80104220 <release>
80106e4a:	c9                   	leave  
80106e4b:	c3                   	ret    
80106e4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

80106e50 <shm_open>:
80106e50:	55                   	push   %ebp
80106e51:	31 c0                	xor    %eax,%eax
80106e53:	89 e5                	mov    %esp,%ebp
80106e55:	5d                   	pop    %ebp
80106e56:	c3                   	ret    
80106e57:	89 f6                	mov    %esi,%esi
80106e59:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

80106e60 <shm_close>:
80106e60:	55                   	push   %ebp
80106e61:	31 c0                	xor    %eax,%eax
80106e63:	89 e5                	mov    %esp,%ebp
80106e65:	5d                   	pop    %ebp
80106e66:	c3                   	ret    
