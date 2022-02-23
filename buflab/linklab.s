
linklab:     file format elf32-i386


Disassembly of section .init:

00001000 <_init>:
    1000:	f3 0f 1e fb          	endbr32 
    1004:	53                   	push   %ebx
    1005:	83 ec 08             	sub    $0x8,%esp
    1008:	e8 b3 00 00 00       	call   10c0 <__x86.get_pc_thunk.bx>
    100d:	81 c3 c3 2f 00 00    	add    $0x2fc3,%ebx
    1013:	8b 83 24 00 00 00    	mov    0x24(%ebx),%eax
    1019:	85 c0                	test   %eax,%eax
    101b:	74 02                	je     101f <_init+0x1f>
    101d:	ff d0                	call   *%eax
    101f:	83 c4 08             	add    $0x8,%esp
    1022:	5b                   	pop    %ebx
    1023:	c3                   	ret    

Disassembly of section .plt:

00001030 <strcmp@plt-0x10>:
    1030:	ff b3 04 00 00 00    	push   0x4(%ebx)
    1036:	ff a3 08 00 00 00    	jmp    *0x8(%ebx)
    103c:	00 00                	add    %al,(%eax)
	...

00001040 <strcmp@plt>:
    1040:	ff a3 0c 00 00 00    	jmp    *0xc(%ebx)
    1046:	68 00 00 00 00       	push   $0x0
    104b:	e9 e0 ff ff ff       	jmp    1030 <_init+0x30>

00001050 <__libc_start_main@plt>:
    1050:	ff a3 10 00 00 00    	jmp    *0x10(%ebx)
    1056:	68 08 00 00 00       	push   $0x8
    105b:	e9 d0 ff ff ff       	jmp    1030 <_init+0x30>

00001060 <puts@plt>:
    1060:	ff a3 14 00 00 00    	jmp    *0x14(%ebx)
    1066:	68 10 00 00 00       	push   $0x10
    106b:	e9 c0 ff ff ff       	jmp    1030 <_init+0x30>

00001070 <strlen@plt>:
    1070:	ff a3 18 00 00 00    	jmp    *0x18(%ebx)
    1076:	68 18 00 00 00       	push   $0x18
    107b:	e9 b0 ff ff ff       	jmp    1030 <_init+0x30>

Disassembly of section .plt.got:

00001080 <__cxa_finalize@plt>:
    1080:	ff a3 20 00 00 00    	jmp    *0x20(%ebx)
    1086:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00001090 <_start>:
    1090:	f3 0f 1e fb          	endbr32 
    1094:	31 ed                	xor    %ebp,%ebp
    1096:	5e                   	pop    %esi
    1097:	89 e1                	mov    %esp,%ecx
    1099:	83 e4 f0             	and    $0xfffffff0,%esp
    109c:	50                   	push   %eax
    109d:	54                   	push   %esp
    109e:	52                   	push   %edx
    109f:	e8 18 00 00 00       	call   10bc <_start+0x2c>
    10a4:	81 c3 2c 2f 00 00    	add    $0x2f2c,%ebx
    10aa:	6a 00                	push   $0x0
    10ac:	6a 00                	push   $0x0
    10ae:	51                   	push   %ecx
    10af:	56                   	push   %esi
    10b0:	ff b3 28 00 00 00    	push   0x28(%ebx)
    10b6:	e8 95 ff ff ff       	call   1050 <__libc_start_main@plt>
    10bb:	f4                   	hlt    
    10bc:	8b 1c 24             	mov    (%esp),%ebx
    10bf:	c3                   	ret    

000010c0 <__x86.get_pc_thunk.bx>:
    10c0:	8b 1c 24             	mov    (%esp),%ebx
    10c3:	c3                   	ret    
    10c4:	66 90                	xchg   %ax,%ax
    10c6:	66 90                	xchg   %ax,%ax
    10c8:	66 90                	xchg   %ax,%ax
    10ca:	66 90                	xchg   %ax,%ax
    10cc:	66 90                	xchg   %ax,%ax
    10ce:	66 90                	xchg   %ax,%ax

000010d0 <deregister_tm_clones>:
    10d0:	e8 e4 00 00 00       	call   11b9 <__x86.get_pc_thunk.dx>
    10d5:	81 c2 fb 2e 00 00    	add    $0x2efb,%edx
    10db:	8d 8a 40 00 00 00    	lea    0x40(%edx),%ecx
    10e1:	8d 82 40 00 00 00    	lea    0x40(%edx),%eax
    10e7:	39 c8                	cmp    %ecx,%eax
    10e9:	74 1d                	je     1108 <deregister_tm_clones+0x38>
    10eb:	8b 82 1c 00 00 00    	mov    0x1c(%edx),%eax
    10f1:	85 c0                	test   %eax,%eax
    10f3:	74 13                	je     1108 <deregister_tm_clones+0x38>
    10f5:	55                   	push   %ebp
    10f6:	89 e5                	mov    %esp,%ebp
    10f8:	83 ec 14             	sub    $0x14,%esp
    10fb:	51                   	push   %ecx
    10fc:	ff d0                	call   *%eax
    10fe:	83 c4 10             	add    $0x10,%esp
    1101:	c9                   	leave  
    1102:	c3                   	ret    
    1103:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1107:	90                   	nop
    1108:	c3                   	ret    
    1109:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001110 <register_tm_clones>:
    1110:	e8 a4 00 00 00       	call   11b9 <__x86.get_pc_thunk.dx>
    1115:	81 c2 bb 2e 00 00    	add    $0x2ebb,%edx
    111b:	55                   	push   %ebp
    111c:	89 e5                	mov    %esp,%ebp
    111e:	53                   	push   %ebx
    111f:	8d 8a 40 00 00 00    	lea    0x40(%edx),%ecx
    1125:	8d 82 40 00 00 00    	lea    0x40(%edx),%eax
    112b:	83 ec 04             	sub    $0x4,%esp
    112e:	29 c8                	sub    %ecx,%eax
    1130:	89 c3                	mov    %eax,%ebx
    1132:	c1 e8 1f             	shr    $0x1f,%eax
    1135:	c1 fb 02             	sar    $0x2,%ebx
    1138:	01 d8                	add    %ebx,%eax
    113a:	d1 f8                	sar    %eax
    113c:	74 14                	je     1152 <register_tm_clones+0x42>
    113e:	8b 92 2c 00 00 00    	mov    0x2c(%edx),%edx
    1144:	85 d2                	test   %edx,%edx
    1146:	74 0a                	je     1152 <register_tm_clones+0x42>
    1148:	83 ec 08             	sub    $0x8,%esp
    114b:	50                   	push   %eax
    114c:	51                   	push   %ecx
    114d:	ff d2                	call   *%edx
    114f:	83 c4 10             	add    $0x10,%esp
    1152:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1155:	c9                   	leave  
    1156:	c3                   	ret    
    1157:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    115e:	66 90                	xchg   %ax,%ax

00001160 <__do_global_dtors_aux>:
    1160:	f3 0f 1e fb          	endbr32 
    1164:	55                   	push   %ebp
    1165:	89 e5                	mov    %esp,%ebp
    1167:	53                   	push   %ebx
    1168:	e8 53 ff ff ff       	call   10c0 <__x86.get_pc_thunk.bx>
    116d:	81 c3 63 2e 00 00    	add    $0x2e63,%ebx
    1173:	83 ec 04             	sub    $0x4,%esp
    1176:	80 bb 40 00 00 00 00 	cmpb   $0x0,0x40(%ebx)
    117d:	75 27                	jne    11a6 <__do_global_dtors_aux+0x46>
    117f:	8b 83 20 00 00 00    	mov    0x20(%ebx),%eax
    1185:	85 c0                	test   %eax,%eax
    1187:	74 11                	je     119a <__do_global_dtors_aux+0x3a>
    1189:	83 ec 0c             	sub    $0xc,%esp
    118c:	ff b3 34 00 00 00    	push   0x34(%ebx)
    1192:	e8 e9 fe ff ff       	call   1080 <__cxa_finalize@plt>
    1197:	83 c4 10             	add    $0x10,%esp
    119a:	e8 31 ff ff ff       	call   10d0 <deregister_tm_clones>
    119f:	c6 83 40 00 00 00 01 	movb   $0x1,0x40(%ebx)
    11a6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    11a9:	c9                   	leave  
    11aa:	c3                   	ret    
    11ab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    11af:	90                   	nop

000011b0 <frame_dummy>:
    11b0:	f3 0f 1e fb          	endbr32 
    11b4:	e9 57 ff ff ff       	jmp    1110 <register_tm_clones>

000011b9 <__x86.get_pc_thunk.dx>:
    11b9:	8b 14 24             	mov    (%esp),%edx
    11bc:	c3                   	ret    

000011bd <main>:
    11bd:	8d 4c 24 04          	lea    0x4(%esp),%ecx
    11c1:	83 e4 f0             	and    $0xfffffff0,%esp
    11c4:	ff 71 fc             	push   -0x4(%ecx)
    11c7:	55                   	push   %ebp
    11c8:	89 e5                	mov    %esp,%ebp
    11ca:	51                   	push   %ecx
    11cb:	83 ec 04             	sub    $0x4,%esp
    11ce:	a1 0c 40 00 00       	mov    0x400c,%eax
    11d3:	85 c0                	test   %eax,%eax
    11d5:	74 09                	je     11e0 <main+0x23>
    11d7:	a1 0c 40 00 00       	mov    0x400c,%eax
    11dc:	ff d0                	call   *%eax
    11de:	eb 10                	jmp    11f0 <main+0x33>
    11e0:	83 ec 0c             	sub    $0xc,%esp
    11e3:	68 b4 20 00 00       	push   $0x20b4
    11e8:	e8 fc ff ff ff       	call   11e9 <main+0x2c>
    11ed:	83 c4 10             	add    $0x10,%esp
    11f0:	b8 00 00 00 00       	mov    $0x0,%eax
    11f5:	8b 4d fc             	mov    -0x4(%ebp),%ecx
    11f8:	c9                   	leave  
    11f9:	8d 61 fc             	lea    -0x4(%ecx),%esp
    11fc:	c3                   	ret    

000011fd <VDopkDStuB>:
    11fd:	55                   	push   %ebp
    11fe:	89 e5                	mov    %esp,%ebp
    1200:	83 ec 18             	sub    $0x18,%esp
    1203:	c7 45 e8 6c 4d 4e 6c 	movl   $0x6c4e4d6c,-0x18(%ebp)
    120a:	c7 45 ec 66 64 38 6f 	movl   $0x6f386466,-0x14(%ebp)
    1211:	c7 45 f0 51 50 38 00 	movl   $0x385051,-0x10(%ebp)
    1218:	83 ec 0c             	sub    $0xc,%esp
    121b:	8d 45 e8             	lea    -0x18(%ebp),%eax
    121e:	50                   	push   %eax
    121f:	e8 fc ff ff ff       	call   1220 <VDopkDStuB+0x23>
    1224:	83 c4 10             	add    $0x10,%esp
    1227:	89 45 f4             	mov    %eax,-0xc(%ebp)
    122a:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
    122e:	78 15                	js     1245 <VDopkDStuB+0x48>
    1230:	8b 45 08             	mov    0x8(%ebp),%eax
    1233:	3b 45 f4             	cmp    -0xc(%ebp),%eax
    1236:	7d 0d                	jge    1245 <VDopkDStuB+0x48>
    1238:	8d 55 e8             	lea    -0x18(%ebp),%edx
    123b:	8b 45 08             	mov    0x8(%ebp),%eax
    123e:	01 d0                	add    %edx,%eax
    1240:	0f b6 00             	movzbl (%eax),%eax
    1243:	eb 05                	jmp    124a <VDopkDStuB+0x4d>
    1245:	b8 00 00 00 00       	mov    $0x0,%eax
    124a:	c9                   	leave  
    124b:	c3                   	ret    

0000124c <KQPEJyFJ>:
    124c:	55                   	push   %ebp
    124d:	89 e5                	mov    %esp,%ebp
    124f:	83 ec 08             	sub    $0x8,%esp
    1252:	83 ec 08             	sub    $0x8,%esp
    1255:	68 2a 21 00 00       	push   $0x212a
    125a:	ff 75 08             	push   0x8(%ebp)
    125d:	e8 fc ff ff ff       	call   125e <KQPEJyFJ+0x12>
    1262:	83 c4 10             	add    $0x10,%esp
    1265:	85 c0                	test   %eax,%eax
    1267:	75 10                	jne    1279 <KQPEJyFJ+0x2d>
    1269:	83 ec 0c             	sub    $0xc,%esp
    126c:	ff 75 0c             	push   0xc(%ebp)
    126f:	e8 fc ff ff ff       	call   1270 <KQPEJyFJ+0x24>
    1274:	83 c4 10             	add    $0x10,%esp
    1277:	eb 01                	jmp    127a <KQPEJyFJ+0x2e>
    1279:	90                   	nop
    127a:	c9                   	leave  
    127b:	c3                   	ret    

0000127c <do_phase>:
    127c:	55                   	push   %ebp
    127d:	89 e5                	mov    %esp,%ebp
    127f:	90                   	nop
    1280:	90                   	nop
    1281:	90                   	nop
    1282:	90                   	nop
    1283:	90                   	nop
    1284:	90                   	nop
    1285:	90                   	nop
    1286:	90                   	nop
    1287:	90                   	nop
    1288:	90                   	nop
    1289:	90                   	nop
    128a:	90                   	nop
    128b:	90                   	nop
    128c:	90                   	nop
    128d:	90                   	nop
    128e:	90                   	nop
    128f:	90                   	nop
    1290:	90                   	nop
    1291:	90                   	nop
    1292:	90                   	nop
    1293:	90                   	nop
    1294:	90                   	nop
    1295:	90                   	nop
    1296:	90                   	nop
    1297:	90                   	nop
    1298:	90                   	nop
    1299:	90                   	nop
    129a:	90                   	nop
    129b:	90                   	nop
    129c:	90                   	nop
    129d:	90                   	nop
    129e:	90                   	nop
    129f:	90                   	nop
    12a0:	90                   	nop
    12a1:	90                   	nop
    12a2:	90                   	nop
    12a3:	90                   	nop
    12a4:	90                   	nop
    12a5:	90                   	nop
    12a6:	90                   	nop
    12a7:	90                   	nop
    12a8:	90                   	nop
    12a9:	90                   	nop
    12aa:	90                   	nop
    12ab:	90                   	nop
    12ac:	90                   	nop
    12ad:	90                   	nop
    12ae:	90                   	nop
    12af:	90                   	nop
    12b0:	90                   	nop
    12b1:	90                   	nop
    12b2:	90                   	nop
    12b3:	90                   	nop
    12b4:	90                   	nop
    12b5:	90                   	nop
    12b6:	90                   	nop
    12b7:	90                   	nop
    12b8:	90                   	nop
    12b9:	90                   	nop
    12ba:	90                   	nop
    12bb:	90                   	nop
    12bc:	90                   	nop
    12bd:	90                   	nop
    12be:	90                   	nop
    12bf:	90                   	nop
    12c0:	5d                   	pop    %ebp
    12c1:	c3                   	ret    

Disassembly of section .fini:

000012c4 <_fini>:
    12c4:	f3 0f 1e fb          	endbr32 
    12c8:	53                   	push   %ebx
    12c9:	83 ec 08             	sub    $0x8,%esp
    12cc:	e8 ef fd ff ff       	call   10c0 <__x86.get_pc_thunk.bx>
    12d1:	81 c3 ff 2c 00 00    	add    $0x2cff,%ebx
    12d7:	83 c4 08             	add    $0x8,%esp
    12da:	5b                   	pop    %ebx
    12db:	c3                   	ret    
