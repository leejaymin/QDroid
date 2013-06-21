.class Lorg/mozilla/javascript/CodeGenerator;
.super Lorg/mozilla/javascript/Icode;
.source "CodeGenerator.java"


# static fields
.field private static final ECF_TAIL:I = 0x1

.field private static final MIN_FIXUP_TABLE_SIZE:I = 0x28

.field private static final MIN_LABEL_TABLE_SIZE:I = 0x20


# instance fields
.field private compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

.field private doubleTableTop:I

.field private exceptionTableTop:I

.field private fixupTable:[J

.field private fixupTableTop:I

.field private iCodeTop:I

.field private itsData:Lorg/mozilla/javascript/InterpreterData;

.field private itsInFunctionFlag:Z

.field private itsInTryFlag:Z

.field private labelTable:[I

.field private labelTableTop:I

.field private lineNumber:I

.field private literalIds:Lorg/mozilla/javascript/ObjArray;

.field private localTop:I

.field private scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

.field private stackDepth:I

.field private strings:Lorg/mozilla/javascript/ObjToIntMap;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/mozilla/javascript/Icode;-><init>()V

    .line 76
    new-instance v0, Lorg/mozilla/javascript/ObjToIntMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/ObjToIntMap;-><init>(I)V

    iput-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->strings:Lorg/mozilla/javascript/ObjToIntMap;

    .line 84
    new-instance v0, Lorg/mozilla/javascript/ObjArray;

    invoke-direct {v0}, Lorg/mozilla/javascript/ObjArray;-><init>()V

    iput-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->literalIds:Lorg/mozilla/javascript/ObjArray;

    return-void
.end method

.method private addBackwardGoto(II)V
    .locals 2
    .parameter "gotoOp"
    .parameter "jumpPC"

    .prologue
    .line 1240
    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    .line 1242
    .local v0, fromPC:I
    if-gt v0, p2, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1243
    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addGotoOp(I)V

    .line 1244
    invoke-direct {p0, v0, p2}, Lorg/mozilla/javascript/CodeGenerator;->resolveGoto(II)V

    .line 1245
    return-void
.end method

.method private addExceptionHandler(IIIZII)V
    .locals 4
    .parameter "icodeStart"
    .parameter "icodeEnd"
    .parameter "handlerStart"
    .parameter "isFinally"
    .parameter "exceptionObjectLocal"
    .parameter "scopeLocal"

    .prologue
    const/4 v3, 0x0

    .line 1439
    iget v1, p0, Lorg/mozilla/javascript/CodeGenerator;->exceptionTableTop:I

    .line 1440
    .local v1, top:I
    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v2, Lorg/mozilla/javascript/InterpreterData;->itsExceptionTable:[I

    .line 1441
    .local v0, table:[I
    if-nez v0, :cond_3

    .line 1442
    if-eqz v1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 1443
    :cond_0
    const/16 v2, 0xc

    new-array v0, v2, [I

    .line 1444
    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v0, v2, Lorg/mozilla/javascript/InterpreterData;->itsExceptionTable:[I

    .line 1450
    :cond_1
    :goto_0
    add-int/lit8 v2, v1, 0x0

    aput p1, v0, v2

    .line 1451
    add-int/lit8 v2, v1, 0x1

    aput p2, v0, v2

    .line 1452
    add-int/lit8 v2, v1, 0x2

    aput p3, v0, v2

    .line 1453
    add-int/lit8 v2, v1, 0x3

    if-eqz p4, :cond_2

    const/4 v3, 0x1

    :cond_2
    aput v3, v0, v2

    .line 1454
    add-int/lit8 v2, v1, 0x4

    aput p5, v0, v2

    .line 1455
    add-int/lit8 v2, v1, 0x5

    aput p6, v0, v2

    .line 1457
    add-int/lit8 v2, v1, 0x6

    iput v2, p0, Lorg/mozilla/javascript/CodeGenerator;->exceptionTableTop:I

    .line 1458
    return-void

    .line 1445
    :cond_3
    array-length v2, v0

    if-ne v2, v1, :cond_1

    .line 1446
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [I

    .line 1447
    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v2, v2, Lorg/mozilla/javascript/InterpreterData;->itsExceptionTable:[I

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1448
    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v0, v2, Lorg/mozilla/javascript/InterpreterData;->itsExceptionTable:[I

    goto :goto_0
.end method

.method private addGoto(Lorg/mozilla/javascript/Node;I)V
    .locals 10
    .parameter "target"
    .parameter "gotoOp"

    .prologue
    const/4 v6, 0x0

    .line 1198
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->getTargetLabel(Lorg/mozilla/javascript/Node;)I

    move-result v1

    .line 1199
    .local v1, label:I
    iget v5, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTableTop:I

    if-lt v1, v5, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 1200
    :cond_0
    iget-object v5, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    aget v2, v5, v1

    .line 1202
    .local v2, targetPC:I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    .line 1203
    invoke-direct {p0, p2, v2}, Lorg/mozilla/javascript/CodeGenerator;->addBackwardGoto(II)V

    .line 1220
    :goto_0
    return-void

    .line 1205
    :cond_1
    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    .line 1206
    .local v0, gotoPC:I
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/CodeGenerator;->addGotoOp(I)V

    .line 1207
    iget v4, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTableTop:I

    .line 1208
    .local v4, top:I
    iget-object v5, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTable:[J

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTable:[J

    array-length v5, v5

    if-ne v4, v5, :cond_3

    .line 1209
    :cond_2
    iget-object v5, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTable:[J

    if-nez v5, :cond_4

    .line 1210
    const/16 v5, 0x28

    new-array v5, v5, [J

    iput-object v5, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTable:[J

    .line 1217
    :cond_3
    :goto_1
    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTableTop:I

    .line 1218
    iget-object v5, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTable:[J

    int-to-long v6, v1

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    int-to-long v8, v0

    or-long/2addr v6, v8

    aput-wide v6, v5, v4

    goto :goto_0

    .line 1212
    :cond_4
    iget-object v5, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTable:[J

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    new-array v3, v5, [J

    .line 1213
    .local v3, tmp:[J
    iget-object v5, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTable:[J

    invoke-static {v5, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1214
    iput-object v3, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTable:[J

    goto :goto_1
.end method

.method private addGotoOp(I)V
    .locals 4
    .parameter "gotoOp"

    .prologue
    .line 1341
    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v2, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    .line 1342
    .local v0, array:[B
    iget v1, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    .line 1343
    .local v1, top:I
    add-int/lit8 v2, v1, 0x3

    array-length v3, v0

    if-le v2, v3, :cond_0

    .line 1344
    const/4 v2, 0x3

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->increaseICodeCapacity(I)[B

    move-result-object v0

    .line 1346
    :cond_0
    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 1348
    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    .line 1349
    return-void
.end method

.method private addIcode(I)V
    .locals 1
    .parameter "icode"

    .prologue
    .line 1280
    invoke-static {p1}, Lorg/mozilla/javascript/Icode;->validIcode(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1282
    :cond_0
    and-int/lit16 v0, p1, 0xff

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    .line 1283
    return-void
.end method

.method private addIndexOp(II)V
    .locals 1
    .parameter "op"
    .parameter "index"

    .prologue
    .line 1389
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/CodeGenerator;->addIndexPrefix(I)V

    .line 1390
    invoke-static {p1}, Lorg/mozilla/javascript/Icode;->validIcode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1391
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1395
    :goto_0
    return-void

    .line 1393
    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    goto :goto_0
.end method

.method private addIndexPrefix(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 1420
    if-gez p1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 1421
    :cond_0
    const/4 v0, 0x6

    if-ge p1, v0, :cond_1

    .line 1422
    const/16 v0, -0x20

    sub-int/2addr v0, p1

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1433
    :goto_0
    return-void

    .line 1423
    :cond_1
    const/16 v0, 0xff

    if-gt p1, v0, :cond_2

    .line 1424
    const/16 v0, -0x26

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1425
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    goto :goto_0

    .line 1426
    :cond_2
    const v0, 0xffff

    if-gt p1, v0, :cond_3

    .line 1427
    const/16 v0, -0x27

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1428
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    goto :goto_0

    .line 1430
    :cond_3
    const/16 v0, -0x28

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1431
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addInt(I)V

    goto :goto_0
.end method

.method private addInt(I)V
    .locals 4
    .parameter "i"

    .prologue
    .line 1312
    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v2, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    .line 1313
    .local v0, array:[B
    iget v1, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    .line 1314
    .local v1, top:I
    add-int/lit8 v2, v1, 0x4

    array-length v3, v0

    if-le v2, v3, :cond_0

    .line 1315
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->increaseICodeCapacity(I)[B

    move-result-object v0

    .line 1317
    :cond_0
    ushr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1318
    add-int/lit8 v2, v1, 0x1

    ushr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1319
    add-int/lit8 v2, v1, 0x2

    ushr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1320
    add-int/lit8 v2, v1, 0x3

    int-to-byte v3, p1

    aput-byte v3, v0, v2

    .line 1321
    add-int/lit8 v2, v1, 0x4

    iput v2, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    .line 1322
    return-void
.end method

.method private addStringOp(ILjava/lang/String;)V
    .locals 1
    .parameter "op"
    .parameter "str"

    .prologue
    .line 1379
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/CodeGenerator;->addStringPrefix(Ljava/lang/String;)V

    .line 1380
    invoke-static {p1}, Lorg/mozilla/javascript/Icode;->validIcode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1381
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1385
    :goto_0
    return-void

    .line 1383
    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    goto :goto_0
.end method

.method private addStringPrefix(Ljava/lang/String;)V
    .locals 3
    .parameter "str"

    .prologue
    const/4 v2, -0x1

    .line 1399
    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->strings:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v1, p1, v2}, Lorg/mozilla/javascript/ObjToIntMap;->get(Ljava/lang/Object;I)I

    move-result v0

    .line 1400
    .local v0, index:I
    if-ne v0, v2, :cond_0

    .line 1401
    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->strings:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v1}, Lorg/mozilla/javascript/ObjToIntMap;->size()I

    move-result v0

    .line 1402
    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->strings:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v1, p1, v0}, Lorg/mozilla/javascript/ObjToIntMap;->put(Ljava/lang/Object;I)V

    .line 1404
    :cond_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 1405
    const/16 v1, -0x29

    sub-int/2addr v1, v0

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1416
    :goto_0
    return-void

    .line 1406
    :cond_1
    const/16 v1, 0xff

    if-gt v0, v1, :cond_2

    .line 1407
    const/16 v1, -0x2d

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1408
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    goto :goto_0

    .line 1409
    :cond_2
    const v1, 0xffff

    if-gt v0, v1, :cond_3

    .line 1410
    const/16 v1, -0x2e

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1411
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    goto :goto_0

    .line 1413
    :cond_3
    const/16 v1, -0x2f

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1414
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addInt(I)V

    goto :goto_0
.end method

.method private addToken(I)V
    .locals 1
    .parameter "token"

    .prologue
    .line 1274
    invoke-static {p1}, Lorg/mozilla/javascript/Icode;->validTokenCode(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1275
    :cond_0
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    .line 1276
    return-void
.end method

.method private addUint16(I)V
    .locals 4
    .parameter "value"

    .prologue
    .line 1299
    const/high16 v2, -0x1

    and-int/2addr v2, p1

    if-eqz v2, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1300
    :cond_0
    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v2, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    .line 1301
    .local v0, array:[B
    iget v1, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    .line 1302
    .local v1, top:I
    add-int/lit8 v2, v1, 0x2

    array-length v3, v0

    if-le v2, v3, :cond_1

    .line 1303
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->increaseICodeCapacity(I)[B

    move-result-object v0

    .line 1305
    :cond_1
    ushr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1306
    add-int/lit8 v2, v1, 0x1

    int-to-byte v3, p1

    aput-byte v3, v0, v2

    .line 1307
    add-int/lit8 v2, v1, 0x2

    iput v2, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    .line 1308
    return-void
.end method

.method private addUint8(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 1287
    and-int/lit16 v2, p1, -0x100

    if-eqz v2, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1288
    :cond_0
    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v2, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    .line 1289
    .local v0, array:[B
    iget v1, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    .line 1290
    .local v1, top:I
    array-length v2, v0

    if-ne v1, v2, :cond_1

    .line 1291
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->increaseICodeCapacity(I)[B

    move-result-object v0

    .line 1293
    :cond_1
    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 1294
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    .line 1295
    return-void
.end method

.method private addVarOp(II)V
    .locals 1
    .parameter "op"
    .parameter "varIndex"

    .prologue
    const/16 v0, 0x80

    .line 1353
    sparse-switch p1, :sswitch_data_0

    .line 1374
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1355
    :sswitch_0
    if-ge p2, v0, :cond_0

    .line 1356
    const/16 v0, -0x3d

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1357
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    .line 1372
    :goto_0
    return-void

    .line 1360
    :cond_0
    const/16 v0, -0x3c

    invoke-direct {p0, v0, p2}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    goto :goto_0

    .line 1364
    :sswitch_1
    if-ge p2, v0, :cond_2

    .line 1365
    const/16 v0, 0x37

    if-ne p1, v0, :cond_1

    const/16 v0, -0x30

    :goto_1
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1366
    invoke-direct {p0, p2}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    goto :goto_0

    .line 1365
    :cond_1
    const/16 v0, -0x31

    goto :goto_1

    .line 1371
    :cond_2
    :sswitch_2
    invoke-direct {p0, p1, p2}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    goto :goto_0

    .line 1353
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7 -> :sswitch_2
        0x37 -> :sswitch_1
        0x38 -> :sswitch_1
        0x9c -> :sswitch_0
    .end sparse-switch
.end method

.method private allocLocal()I
    .locals 3

    .prologue
    .line 1490
    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->localTop:I

    .line 1491
    .local v0, localSlot:I
    iget v1, p0, Lorg/mozilla/javascript/CodeGenerator;->localTop:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/javascript/CodeGenerator;->localTop:I

    .line 1492
    iget v1, p0, Lorg/mozilla/javascript/CodeGenerator;->localTop:I

    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget v2, v2, Lorg/mozilla/javascript/InterpreterData;->itsMaxLocals:I

    if-le v1, v2, :cond_0

    .line 1493
    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget v2, p0, Lorg/mozilla/javascript/CodeGenerator;->localTop:I

    iput v2, v1, Lorg/mozilla/javascript/InterpreterData;->itsMaxLocals:I

    .line 1495
    :cond_0
    return v0
.end method

.method private badTree(Lorg/mozilla/javascript/Node;)Ljava/lang/RuntimeException;
    .locals 2
    .parameter "node"

    .prologue
    .line 272
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fixLabelGotos()V
    .locals 8

    .prologue
    .line 1224
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v6, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTableTop:I

    if-ge v2, v6, :cond_1

    .line 1225
    iget-object v6, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTable:[J

    aget-wide v0, v6, v2

    .line 1226
    .local v0, fixup:J
    const/16 v6, 0x20

    shr-long v6, v0, v6

    long-to-int v4, v6

    .line 1227
    .local v4, label:I
    long-to-int v3, v0

    .line 1228
    .local v3, jumpSource:I
    iget-object v6, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    aget v5, v6, v4

    .line 1229
    .local v5, pc:I
    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    .line 1231
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    .line 1233
    :cond_0
    invoke-direct {p0, v3, v5}, Lorg/mozilla/javascript/CodeGenerator;->resolveGoto(II)V

    .line 1224
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1235
    .end local v0           #fixup:J
    .end local v3           #jumpSource:I
    .end local v4           #label:I
    .end local v5           #pc:I
    :cond_1
    const/4 v6, 0x0

    iput v6, p0, Lorg/mozilla/javascript/CodeGenerator;->fixupTableTop:I

    .line 1236
    return-void
.end method

.method private generateCallFunAndThis(Lorg/mozilla/javascript/Node;)V
    .locals 8
    .parameter "left"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1008
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v4

    .line 1009
    .local v4, type:I
    sparse-switch v4, :sswitch_data_0

    .line 1036
    invoke-direct {p0, p1, v6}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 1038
    const/16 v5, -0x12

    invoke-direct {p0, v5}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1039
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 1042
    :goto_0
    return-void

    .line 1011
    :sswitch_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v1

    .line 1013
    .local v1, name:Ljava/lang/String;
    const/16 v5, -0xf

    invoke-direct {p0, v5, v1}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    .line 1014
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_0

    .line 1019
    .end local v1           #name:Ljava/lang/String;
    :sswitch_1
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v3

    .line 1020
    .local v3, target:Lorg/mozilla/javascript/Node;
    invoke-direct {p0, v3, v6}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 1021
    invoke-virtual {v3}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v0

    .line 1022
    .local v0, id:Lorg/mozilla/javascript/Node;
    const/16 v5, 0x21

    if-ne v4, v5, :cond_0

    .line 1023
    invoke-virtual {v0}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v2

    .line 1025
    .local v2, property:Ljava/lang/String;
    const/16 v5, -0x10

    invoke-direct {p0, v5, v2}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    .line 1026
    invoke-direct {p0, v7}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_0

    .line 1028
    .end local v2           #property:Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v0, v6}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 1030
    const/16 v5, -0x11

    invoke-direct {p0, v5}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto :goto_0

    .line 1009
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_1
        0x24 -> :sswitch_1
        0x27 -> :sswitch_0
    .end sparse-switch
.end method

.method private generateFunctionICode()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 131
    iput-boolean v3, p0, Lorg/mozilla/javascript/CodeGenerator;->itsInFunctionFlag:Z

    .line 133
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    check-cast v0, Lorg/mozilla/javascript/ast/FunctionNode;

    .line 135
    .local v0, theFunction:Lorg/mozilla/javascript/ast/FunctionNode;
    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    move-result v2

    iput v2, v1, Lorg/mozilla/javascript/InterpreterData;->itsFunctionType:I

    .line 136
    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->requiresActivation()Z

    move-result v2

    iput-boolean v2, v1, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    .line 137
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionName()Lorg/mozilla/javascript/ast/Name;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/mozilla/javascript/InterpreterData;->itsName:Ljava/lang/String;

    .line 140
    :cond_0
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->getIgnoreDynamicScope()Z

    move-result v1

    if-nez v1, :cond_1

    .line 141
    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v1}, Lorg/mozilla/javascript/CompilerEnvirons;->isUseDynamicScope()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-boolean v3, v1, Lorg/mozilla/javascript/InterpreterData;->useDynamicScope:Z

    .line 145
    :cond_1
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->isGenerator()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 146
    const/16 v1, -0x3e

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 147
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->getBaseLineno()I

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    .line 150
    :cond_2
    invoke-virtual {v0}, Lorg/mozilla/javascript/ast/FunctionNode;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/CodeGenerator;->generateICodeFromTree(Lorg/mozilla/javascript/Node;)V

    .line 151
    return-void
.end method

.method private generateICodeFromTree(Lorg/mozilla/javascript/Node;)V
    .locals 8
    .parameter "tree"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 155
    invoke-direct {p0}, Lorg/mozilla/javascript/CodeGenerator;->generateNestedFunctions()V

    .line 157
    invoke-direct {p0}, Lorg/mozilla/javascript/CodeGenerator;->generateRegExpLiterals()V

    .line 159
    invoke-direct {p0, p1, v6}, Lorg/mozilla/javascript/CodeGenerator;->visitStatement(Lorg/mozilla/javascript/Node;I)V

    .line 160
    invoke-direct {p0}, Lorg/mozilla/javascript/CodeGenerator;->fixLabelGotos()V

    .line 162
    iget-object v4, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget v4, v4, Lorg/mozilla/javascript/InterpreterData;->itsFunctionType:I

    if-nez v4, :cond_0

    .line 163
    const/16 v4, 0x40

    invoke-direct {p0, v4}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 166
    :cond_0
    iget-object v4, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v4, v4, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    array-length v4, v4

    iget v5, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    if-eq v4, v5, :cond_1

    .line 169
    iget v4, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    new-array v3, v4, [B

    .line 170
    .local v3, tmp:[B
    iget-object v4, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v4, v4, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    iget v5, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    iget-object v4, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v3, v4, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    .line 173
    .end local v3           #tmp:[B
    :cond_1
    iget-object v4, p0, Lorg/mozilla/javascript/CodeGenerator;->strings:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v4}, Lorg/mozilla/javascript/ObjToIntMap;->size()I

    move-result v4

    if-nez v4, :cond_6

    .line 174
    iget-object v4, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v7, v4, Lorg/mozilla/javascript/InterpreterData;->itsStringTable:[Ljava/lang/String;

    .line 185
    :cond_2
    iget v4, p0, Lorg/mozilla/javascript/CodeGenerator;->doubleTableTop:I

    if-nez v4, :cond_8

    .line 186
    iget-object v4, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v7, v4, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    .line 193
    :cond_3
    :goto_0
    iget v4, p0, Lorg/mozilla/javascript/CodeGenerator;->exceptionTableTop:I

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v4, v4, Lorg/mozilla/javascript/InterpreterData;->itsExceptionTable:[I

    array-length v4, v4

    iget v5, p0, Lorg/mozilla/javascript/CodeGenerator;->exceptionTableTop:I

    if-eq v4, v5, :cond_4

    .line 196
    iget v4, p0, Lorg/mozilla/javascript/CodeGenerator;->exceptionTableTop:I

    new-array v3, v4, [I

    .line 197
    .local v3, tmp:[I
    iget-object v4, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v4, v4, Lorg/mozilla/javascript/InterpreterData;->itsExceptionTable:[I

    iget v5, p0, Lorg/mozilla/javascript/CodeGenerator;->exceptionTableTop:I

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    iget-object v4, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v3, v4, Lorg/mozilla/javascript/InterpreterData;->itsExceptionTable:[I

    .line 202
    .end local v3           #tmp:[I
    :cond_4
    iget-object v4, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v5, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamAndVarCount()I

    move-result v5

    iput v5, v4, Lorg/mozilla/javascript/InterpreterData;->itsMaxVars:I

    .line 205
    iget-object v4, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v5, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget v5, v5, Lorg/mozilla/javascript/InterpreterData;->itsMaxVars:I

    iget-object v6, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget v6, v6, Lorg/mozilla/javascript/InterpreterData;->itsMaxLocals:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget v6, v6, Lorg/mozilla/javascript/InterpreterData;->itsMaxStack:I

    add-int/2addr v5, v6

    iput v5, v4, Lorg/mozilla/javascript/InterpreterData;->itsMaxFrameArray:I

    .line 209
    iget-object v4, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v5, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamAndVarNames()[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/mozilla/javascript/InterpreterData;->argNames:[Ljava/lang/String;

    .line 210
    iget-object v4, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v5, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamAndVarConst()[Z

    move-result-object v5

    iput-object v5, v4, Lorg/mozilla/javascript/InterpreterData;->argIsConst:[Z

    .line 211
    iget-object v4, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v5, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/ScriptNode;->getParamCount()I

    move-result v5

    iput v5, v4, Lorg/mozilla/javascript/InterpreterData;->argCount:I

    .line 213
    iget-object v4, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v5, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/ScriptNode;->getEncodedSourceStart()I

    move-result v5

    iput v5, v4, Lorg/mozilla/javascript/InterpreterData;->encodedSourceStart:I

    .line 214
    iget-object v4, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v5, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/ScriptNode;->getEncodedSourceEnd()I

    move-result v5

    iput v5, v4, Lorg/mozilla/javascript/InterpreterData;->encodedSourceEnd:I

    .line 216
    iget-object v4, p0, Lorg/mozilla/javascript/CodeGenerator;->literalIds:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v4}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v4

    if-eqz v4, :cond_5

    .line 217
    iget-object v4, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v5, p0, Lorg/mozilla/javascript/CodeGenerator;->literalIds:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v5}, Lorg/mozilla/javascript/ObjArray;->toArray()[Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v4, Lorg/mozilla/javascript/InterpreterData;->literalIds:[Ljava/lang/Object;

    .line 221
    :cond_5
    return-void

    .line 176
    :cond_6
    iget-object v4, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v5, p0, Lorg/mozilla/javascript/CodeGenerator;->strings:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v5}, Lorg/mozilla/javascript/ObjToIntMap;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, v4, Lorg/mozilla/javascript/InterpreterData;->itsStringTable:[Ljava/lang/String;

    .line 177
    iget-object v4, p0, Lorg/mozilla/javascript/CodeGenerator;->strings:Lorg/mozilla/javascript/ObjToIntMap;

    invoke-virtual {v4}, Lorg/mozilla/javascript/ObjToIntMap;->newIterator()Lorg/mozilla/javascript/ObjToIntMap$Iterator;

    move-result-object v1

    .line 178
    .local v1, iter:Lorg/mozilla/javascript/ObjToIntMap$Iterator;
    invoke-virtual {v1}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->start()V

    :goto_1
    invoke-virtual {v1}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->done()Z

    move-result v4

    if-nez v4, :cond_2

    .line 179
    invoke-virtual {v1}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 180
    .local v2, str:Ljava/lang/String;
    invoke-virtual {v1}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->getValue()I

    move-result v0

    .line 181
    .local v0, index:I
    iget-object v4, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v4, v4, Lorg/mozilla/javascript/InterpreterData;->itsStringTable:[Ljava/lang/String;

    aget-object v4, v4, v0

    if-eqz v4, :cond_7

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 182
    :cond_7
    iget-object v4, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v4, v4, Lorg/mozilla/javascript/InterpreterData;->itsStringTable:[Ljava/lang/String;

    aput-object v2, v4, v0

    .line 178
    invoke-virtual {v1}, Lorg/mozilla/javascript/ObjToIntMap$Iterator;->next()V

    goto :goto_1

    .line 187
    .end local v0           #index:I
    .end local v1           #iter:Lorg/mozilla/javascript/ObjToIntMap$Iterator;
    .end local v2           #str:Ljava/lang/String;
    :cond_8
    iget-object v4, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v4, v4, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    array-length v4, v4

    iget v5, p0, Lorg/mozilla/javascript/CodeGenerator;->doubleTableTop:I

    if-eq v4, v5, :cond_3

    .line 188
    iget v4, p0, Lorg/mozilla/javascript/CodeGenerator;->doubleTableTop:I

    new-array v3, v4, [D

    .line 189
    .local v3, tmp:[D
    iget-object v4, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v4, v4, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    iget v5, p0, Lorg/mozilla/javascript/CodeGenerator;->doubleTableTop:I

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    iget-object v4, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v3, v4, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    goto/16 :goto_0
.end method

.method private generateNestedFunctions()V
    .locals 7

    .prologue
    .line 225
    iget-object v5, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v5}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionCount()I

    move-result v2

    .line 226
    .local v2, functionCount:I
    if-nez v2, :cond_0

    .line 239
    :goto_0
    return-void

    .line 228
    :cond_0
    new-array v0, v2, [Lorg/mozilla/javascript/InterpreterData;

    .line 229
    .local v0, array:[Lorg/mozilla/javascript/InterpreterData;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-eq v4, v2, :cond_1

    .line 230
    iget-object v5, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v5, v4}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionNode(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v1

    .line 231
    .local v1, fn:Lorg/mozilla/javascript/ast/FunctionNode;
    new-instance v3, Lorg/mozilla/javascript/CodeGenerator;

    invoke-direct {v3}, Lorg/mozilla/javascript/CodeGenerator;-><init>()V

    .line 232
    .local v3, gen:Lorg/mozilla/javascript/CodeGenerator;
    iget-object v5, p0, Lorg/mozilla/javascript/CodeGenerator;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    iput-object v5, v3, Lorg/mozilla/javascript/CodeGenerator;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 233
    iput-object v1, v3, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 234
    new-instance v5, Lorg/mozilla/javascript/InterpreterData;

    iget-object v6, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    invoke-direct {v5, v6}, Lorg/mozilla/javascript/InterpreterData;-><init>(Lorg/mozilla/javascript/InterpreterData;)V

    iput-object v5, v3, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    .line 235
    invoke-direct {v3}, Lorg/mozilla/javascript/CodeGenerator;->generateFunctionICode()V

    .line 236
    iget-object v5, v3, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    aput-object v5, v0, v4

    .line 229
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 238
    .end local v1           #fn:Lorg/mozilla/javascript/ast/FunctionNode;
    .end local v3           #gen:Lorg/mozilla/javascript/CodeGenerator;
    :cond_1
    iget-object v5, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v0, v5, Lorg/mozilla/javascript/InterpreterData;->itsNestedFunctions:[Lorg/mozilla/javascript/InterpreterData;

    goto :goto_0
.end method

.method private generateRegExpLiterals()V
    .locals 8

    .prologue
    .line 243
    iget-object v7, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v7}, Lorg/mozilla/javascript/ast/ScriptNode;->getRegexpCount()I

    move-result v0

    .line 244
    .local v0, N:I
    if-nez v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Context;->getContext()Lorg/mozilla/javascript/Context;

    move-result-object v2

    .line 247
    .local v2, cx:Lorg/mozilla/javascript/Context;
    invoke-static {v2}, Lorg/mozilla/javascript/ScriptRuntime;->checkRegExpProxy(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/RegExpProxy;

    move-result-object v5

    .line 248
    .local v5, rep:Lorg/mozilla/javascript/RegExpProxy;
    new-array v1, v0, [Ljava/lang/Object;

    .line 249
    .local v1, array:[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-eq v4, v0, :cond_1

    .line 250
    iget-object v7, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v7, v4}, Lorg/mozilla/javascript/ast/ScriptNode;->getRegexpString(I)Ljava/lang/String;

    move-result-object v6

    .line 251
    .local v6, string:Ljava/lang/String;
    iget-object v7, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v7, v4}, Lorg/mozilla/javascript/ast/ScriptNode;->getRegexpFlags(I)Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, flags:Ljava/lang/String;
    invoke-interface {v5, v2, v6, v3}, Lorg/mozilla/javascript/RegExpProxy;->compileRegExp(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v1, v4

    .line 249
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 254
    .end local v3           #flags:Ljava/lang/String;
    .end local v6           #string:Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v1, v7, Lorg/mozilla/javascript/InterpreterData;->itsRegExpLiterals:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private getDoubleIndex(D)I
    .locals 4
    .parameter "num"

    .prologue
    const/4 v3, 0x0

    .line 1326
    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->doubleTableTop:I

    .line 1327
    .local v0, index:I
    if-nez v0, :cond_1

    .line 1328
    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    const/16 v3, 0x40

    new-array v3, v3, [D

    iput-object v3, v2, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    .line 1334
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v2, v2, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    aput-wide p1, v2, v0

    .line 1335
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/mozilla/javascript/CodeGenerator;->doubleTableTop:I

    .line 1336
    return v0

    .line 1329
    :cond_1
    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v2, v2, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    array-length v2, v2

    if-ne v2, v0, :cond_0

    .line 1330
    mul-int/lit8 v2, v0, 0x2

    new-array v1, v2, [D

    .line 1331
    .local v1, na:[D
    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v2, v2, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1332
    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v1, v2, Lorg/mozilla/javascript/InterpreterData;->itsDoubleTable:[D

    goto :goto_0
.end method

.method private getLocalBlockRef(Lorg/mozilla/javascript/Node;)I
    .locals 2
    .parameter "node"

    .prologue
    .line 1159
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/javascript/Node;

    .line 1160
    .local v0, localBlock:Lorg/mozilla/javascript/Node;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    move-result v1

    return v1
.end method

.method private getTargetLabel(Lorg/mozilla/javascript/Node;)I
    .locals 6
    .parameter "target"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 1165
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->labelId()I

    move-result v0

    .line 1166
    .local v0, label:I
    if-eq v0, v4, :cond_0

    move v1, v0

    .line 1183
    .end local v0           #label:I
    .local v1, label:I
    :goto_0
    return v1

    .line 1169
    .end local v1           #label:I
    .restart local v0       #label:I
    :cond_0
    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTableTop:I

    .line 1170
    iget-object v3, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    array-length v3, v3

    if-ne v0, v3, :cond_2

    .line 1171
    :cond_1
    iget-object v3, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    if-nez v3, :cond_3

    .line 1172
    const/16 v3, 0x20

    new-array v3, v3, [I

    iput-object v3, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    .line 1179
    :cond_2
    :goto_1
    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTableTop:I

    .line 1180
    iget-object v3, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    aput v4, v3, v0

    .line 1182
    invoke-virtual {p1, v0}, Lorg/mozilla/javascript/Node;->labelId(I)V

    move v1, v0

    .line 1183
    .end local v0           #label:I
    .restart local v1       #label:I
    goto :goto_0

    .line 1174
    .end local v1           #label:I
    .restart local v0       #label:I
    :cond_3
    iget-object v3, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    new-array v2, v3, [I

    .line 1175
    .local v2, tmp:[I
    iget-object v3, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    invoke-static {v3, v5, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1176
    iput-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    goto :goto_1
.end method

.method private increaseICodeCapacity(I)[B
    .locals 5
    .parameter "extraSize"

    .prologue
    const/4 v4, 0x0

    .line 1462
    iget-object v3, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v3, v3, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    array-length v1, v3

    .line 1463
    .local v1, capacity:I
    iget v2, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    .line 1464
    .local v2, top:I
    add-int v3, v2, p1

    if-gt v3, v1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 1465
    :cond_0
    mul-int/lit8 v1, v1, 0x2

    .line 1466
    add-int v3, v2, p1

    if-le v3, v1, :cond_1

    .line 1467
    add-int v1, v2, p1

    .line 1469
    :cond_1
    new-array v0, v1, [B

    .line 1470
    .local v0, array:[B
    iget-object v3, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v3, v3, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    invoke-static {v3, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1471
    iget-object v3, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput-object v0, v3, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    .line 1472
    return-object v0
.end method

.method private markTargetLabel(Lorg/mozilla/javascript/Node;)V
    .locals 3
    .parameter "target"

    .prologue
    .line 1188
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->getTargetLabel(Lorg/mozilla/javascript/Node;)I

    move-result v0

    .line 1189
    .local v0, label:I
    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    aget v1, v1, v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1191
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 1193
    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    iget v2, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    aput v2, v1, v0

    .line 1194
    return-void
.end method

.method private releaseLocal(I)V
    .locals 2
    .parameter "localSlot"

    .prologue
    .line 1500
    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->localTop:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/javascript/CodeGenerator;->localTop:I

    .line 1501
    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->localTop:I

    if-eq p1, v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 1502
    :cond_0
    return-void
.end method

.method private resolveForwardGoto(I)V
    .locals 2
    .parameter "fromPC"

    .prologue
    .line 1250
    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    add-int/lit8 v1, p1, 0x3

    if-ge v0, v1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1251
    :cond_0
    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    invoke-direct {p0, p1, v0}, Lorg/mozilla/javascript/CodeGenerator;->resolveGoto(II)V

    .line 1252
    return-void
.end method

.method private resolveGoto(II)V
    .locals 5
    .parameter "fromPC"
    .parameter "jumpPC"

    .prologue
    .line 1256
    sub-int v1, p2, p1

    .line 1258
    .local v1, offset:I
    if-ltz v1, :cond_0

    const/4 v3, 0x2

    if-gt v1, v3, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 1259
    :cond_0
    add-int/lit8 v2, p1, 0x1

    .line 1260
    .local v2, offsetSite:I
    int-to-short v3, v1

    if-eq v1, v3, :cond_2

    .line 1261
    iget-object v3, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v3, v3, Lorg/mozilla/javascript/InterpreterData;->longJumps:Lorg/mozilla/javascript/UintMap;

    if-nez v3, :cond_1

    .line 1262
    iget-object v3, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    new-instance v4, Lorg/mozilla/javascript/UintMap;

    invoke-direct {v4}, Lorg/mozilla/javascript/UintMap;-><init>()V

    iput-object v4, v3, Lorg/mozilla/javascript/InterpreterData;->longJumps:Lorg/mozilla/javascript/UintMap;

    .line 1264
    :cond_1
    iget-object v3, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v3, v3, Lorg/mozilla/javascript/InterpreterData;->longJumps:Lorg/mozilla/javascript/UintMap;

    invoke-virtual {v3, v2, p2}, Lorg/mozilla/javascript/UintMap;->put(II)V

    .line 1265
    const/4 v1, 0x0

    .line 1267
    :cond_2
    iget-object v3, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-object v0, v3, Lorg/mozilla/javascript/InterpreterData;->itsICode:[B

    .line 1268
    .local v0, array:[B
    shr-int/lit8 v3, v1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 1269
    add-int/lit8 v3, v2, 0x1

    int-to-byte v4, v1

    aput-byte v4, v0, v3

    .line 1270
    return-void
.end method

.method private stackChange(I)V
    .locals 2
    .parameter "change"

    .prologue
    .line 1477
    if-gtz p1, :cond_0

    .line 1478
    iget v1, p0, Lorg/mozilla/javascript/CodeGenerator;->stackDepth:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/mozilla/javascript/CodeGenerator;->stackDepth:I

    .line 1486
    :goto_0
    return-void

    .line 1480
    :cond_0
    iget v1, p0, Lorg/mozilla/javascript/CodeGenerator;->stackDepth:I

    add-int v0, v1, p1

    .line 1481
    .local v0, newDepth:I
    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget v1, v1, Lorg/mozilla/javascript/InterpreterData;->itsMaxStack:I

    if-le v0, v1, :cond_1

    .line 1482
    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput v0, v1, Lorg/mozilla/javascript/InterpreterData;->itsMaxStack:I

    .line 1484
    :cond_1
    iput v0, p0, Lorg/mozilla/javascript/CodeGenerator;->stackDepth:I

    goto :goto_0
.end method

.method private updateLineNumber(Lorg/mozilla/javascript/Node;)V
    .locals 2
    .parameter "node"

    .prologue
    .line 259
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getLineno()I

    move-result v0

    .line 260
    .local v0, lineno:I
    iget v1, p0, Lorg/mozilla/javascript/CodeGenerator;->lineNumber:I

    if-eq v0, v1, :cond_1

    if-ltz v0, :cond_1

    .line 261
    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget v1, v1, Lorg/mozilla/javascript/InterpreterData;->firstLinePC:I

    if-gez v1, :cond_0

    .line 262
    iget-object v1, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iput v0, v1, Lorg/mozilla/javascript/InterpreterData;->firstLinePC:I

    .line 264
    :cond_0
    iput v0, p0, Lorg/mozilla/javascript/CodeGenerator;->lineNumber:I

    .line 265
    const/16 v1, -0x1a

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 266
    const v1, 0xffff

    and-int/2addr v1, v0

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    .line 268
    :cond_1
    return-void
.end method

.method private visitArrayComprehension(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 1
    .parameter "node"
    .parameter "initStmt"
    .parameter "expr"

    .prologue
    .line 1153
    iget v0, p0, Lorg/mozilla/javascript/CodeGenerator;->stackDepth:I

    invoke-direct {p0, p2, v0}, Lorg/mozilla/javascript/CodeGenerator;->visitStatement(Lorg/mozilla/javascript/Node;I)V

    .line 1154
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 1155
    return-void
.end method

.method private visitExpression(Lorg/mozilla/javascript/Node;I)V
    .locals 34
    .parameter "node"
    .parameter "contextFlags"

    .prologue
    .line 543
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v28

    .line 544
    .local v28, type:I
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v8

    .line 545
    .local v8, child:Lorg/mozilla/javascript/Node;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/CodeGenerator;->stackDepth:I

    move/from16 v27, v0

    .line 546
    .local v27, savedStackDepth:I
    packed-switch v28, :pswitch_data_0

    .line 998
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/CodeGenerator;->badTree(Lorg/mozilla/javascript/Node;)Ljava/lang/RuntimeException;

    move-result-object v30

    throw v30

    .line 550
    :pswitch_1
    const/16 v30, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    move-result v13

    .line 551
    .local v13, fnIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move v1, v13

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionNode(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v12

    .line 553
    .local v12, fn:Lorg/mozilla/javascript/ast/FunctionNode;
    invoke-virtual {v12}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    move-result v30

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_0

    .line 554
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v30

    throw v30

    .line 556
    :cond_0
    const/16 v30, -0x13

    move-object/from16 v0, p0

    move/from16 v1, v30

    move v2, v13

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    .line 557
    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 1000
    .end local v12           #fn:Lorg/mozilla/javascript/ast/FunctionNode;
    .end local v13           #fnIndex:I
    .end local p1
    :cond_1
    :goto_0
    add-int/lit8 v30, v27, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/CodeGenerator;->stackDepth:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_2

    .line 1001
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 1003
    :cond_2
    return-void

    .line 563
    .restart local p1
    :pswitch_2
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/CodeGenerator;->getLocalBlockRef(Lorg/mozilla/javascript/Node;)I

    move-result v20

    .line 564
    .local v20, localIndex:I
    const/16 v30, 0x36

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    .line 565
    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_0

    .line 571
    .end local v20           #localIndex:I
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getLastChild()Lorg/mozilla/javascript/Node;

    move-result-object v19

    .line 572
    .local v19, lastChild:Lorg/mozilla/javascript/Node;
    :goto_1
    move-object v0, v8

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_3

    .line 573
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 574
    const/16 v30, -0x4

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 575
    const/16 v30, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 576
    invoke-virtual {v8}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v8

    goto :goto_1

    .line 579
    :cond_3
    and-int/lit8 v30, p2, 0x1

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    goto :goto_0

    .line 586
    .end local v19           #lastChild:Lorg/mozilla/javascript/Node;
    :pswitch_4
    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_0

    .line 593
    :pswitch_5
    const/16 v30, 0x1e

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_4

    .line 594
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 598
    :goto_2
    const/4 v6, 0x0

    .line 599
    .local v6, argCount:I
    :goto_3
    invoke-virtual {v8}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 600
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 601
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 596
    .end local v6           #argCount:I
    :cond_4
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->generateCallFunAndThis(Lorg/mozilla/javascript/Node;)V

    goto :goto_2

    .line 603
    .restart local v6       #argCount:I
    :cond_5
    const/16 v30, 0xa

    const/16 v31, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v7

    .line 605
    .local v7, callType:I
    if-eqz v7, :cond_7

    .line 607
    const/16 v30, -0x15

    move-object/from16 v0, p0

    move/from16 v1, v30

    move v2, v6

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    .line 608
    move-object/from16 v0, p0

    move v1, v7

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    .line 609
    const/16 v30, 0x1e

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_6

    const/16 v30, 0x1

    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    .line 610
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/CodeGenerator;->lineNumber:I

    move/from16 v30, v0

    const v31, 0xffff

    and-int v30, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    .line 623
    :goto_5
    const/16 v30, 0x1e

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_9

    .line 625
    move v0, v6

    neg-int v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 631
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsMaxCalleeArgs:I

    move/from16 v30, v0

    move v0, v6

    move/from16 v1, v30

    if-le v0, v1, :cond_1

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    move-object/from16 v30, v0

    move v0, v6

    move-object/from16 v1, v30

    iput v0, v1, Lorg/mozilla/javascript/InterpreterData;->itsMaxCalleeArgs:I

    goto/16 :goto_0

    .line 609
    :cond_6
    const/16 v30, 0x0

    goto :goto_4

    .line 615
    :cond_7
    const/16 v30, 0x26

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_8

    and-int/lit8 v30, p2, 0x1

    if-eqz v30, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/CodeGenerator;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lorg/mozilla/javascript/CompilerEnvirons;->isGenerateDebugInfo()Z

    move-result v30

    if-nez v30, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mozilla/javascript/CodeGenerator;->itsInTryFlag:Z

    move/from16 v30, v0

    if-nez v30, :cond_8

    .line 618
    const/16 v28, -0x37

    .line 620
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v28

    move v2, v6

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    goto :goto_5

    .line 629
    :cond_9
    const/16 v30, -0x1

    sub-int v30, v30, v6

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_6

    .line 640
    .end local v6           #argCount:I
    .end local v7           #callType:I
    :pswitch_6
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 641
    const/16 v30, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 642
    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 643
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    move v5, v0

    .line 644
    .local v5, afterSecondJumpStart:I
    const/16 v30, 0x69

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_a

    const/16 v30, 0x7

    move/from16 v18, v30

    .line 645
    .local v18, jump:I
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addGotoOp(I)V

    .line 646
    const/16 v30, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 647
    const/16 v30, -0x4

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 648
    const/16 v30, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 649
    invoke-virtual {v8}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v8

    .line 651
    and-int/lit8 v30, p2, 0x1

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 652
    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->resolveForwardGoto(I)V

    goto/16 :goto_0

    .line 644
    .end local v18           #jump:I
    :cond_a
    const/16 v30, 0x6

    move/from16 v18, v30

    goto :goto_7

    .line 658
    .end local v5           #afterSecondJumpStart:I
    :pswitch_7
    invoke-virtual {v8}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v15

    .line 659
    .local v15, ifThen:Lorg/mozilla/javascript/Node;
    invoke-virtual {v15}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v14

    .line 660
    .local v14, ifElse:Lorg/mozilla/javascript/Node;
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 661
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    move v10, v0

    .line 662
    .local v10, elseJumpStart:I
    const/16 v30, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addGotoOp(I)V

    .line 663
    const/16 v30, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 665
    and-int/lit8 v30, p2, 0x1

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 666
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    move v4, v0

    .line 667
    .local v4, afterElseJumpStart:I
    const/16 v30, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addGotoOp(I)V

    .line 668
    move-object/from16 v0, p0

    move v1, v10

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->resolveForwardGoto(I)V

    .line 669
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/javascript/CodeGenerator;->stackDepth:I

    .line 671
    and-int/lit8 v30, p2, 0x1

    move-object/from16 v0, p0

    move-object v1, v14

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 672
    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->resolveForwardGoto(I)V

    goto/16 :goto_0

    .line 678
    .end local v4           #afterElseJumpStart:I
    .end local v10           #elseJumpStart:I
    .end local v14           #ifElse:Lorg/mozilla/javascript/Node;
    .end local v15           #ifThen:Lorg/mozilla/javascript/Node;
    :pswitch_8
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 679
    invoke-virtual {v8}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v8

    .line 680
    invoke-virtual {v8}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 706
    :pswitch_9
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 707
    invoke-virtual {v8}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v8

    .line 708
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 709
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 710
    const/16 v30, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_0

    .line 719
    :pswitch_a
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 720
    const/16 v30, 0x7e

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_b

    .line 721
    const/16 v30, -0x4

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 722
    const/16 v30, -0x32

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto/16 :goto_0

    .line 724
    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    goto/16 :goto_0

    .line 730
    :pswitch_b
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 731
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    goto/16 :goto_0

    .line 737
    :pswitch_c
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 738
    invoke-virtual {v8}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v8

    .line 739
    invoke-virtual {v8}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v25

    .line 740
    .local v25, property:Ljava/lang/String;
    invoke-virtual {v8}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v8

    .line 741
    const/16 v30, 0x8b

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_c

    .line 742
    const/16 v30, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 743
    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 744
    const/16 v30, 0x21

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    .line 746
    const/16 v30, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 748
    :cond_c
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 749
    const/16 v30, 0x23

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    .line 750
    const/16 v30, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_0

    .line 756
    .end local v25           #property:Ljava/lang/String;
    :pswitch_d
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 757
    invoke-virtual {v8}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v8

    .line 758
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 759
    invoke-virtual {v8}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v8

    .line 760
    const/16 v30, 0x8c

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_d

    .line 761
    const/16 v30, -0x2

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 762
    const/16 v30, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 763
    const/16 v30, 0x24

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 764
    const/16 v30, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 766
    const/16 v30, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 768
    :cond_d
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 769
    const/16 v30, 0x25

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 770
    const/16 v30, -0x2

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_0

    .line 775
    :pswitch_e
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 776
    invoke-virtual {v8}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v8

    .line 777
    const/16 v30, 0x8e

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_e

    .line 778
    const/16 v30, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 779
    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 780
    const/16 v30, 0x43

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 782
    const/16 v30, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 784
    :cond_e
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 785
    const/16 v30, 0x44

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 786
    const/16 v30, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_0

    .line 792
    :pswitch_f
    invoke-virtual {v8}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v22

    .line 793
    .local v22, name:Ljava/lang/String;
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 794
    invoke-virtual {v8}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v8

    .line 795
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 796
    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    .line 797
    const/16 v30, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_0

    .line 803
    .end local v22           #name:Ljava/lang/String;
    :pswitch_10
    invoke-virtual {v8}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v22

    .line 804
    .restart local v22       #name:Ljava/lang/String;
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 805
    invoke-virtual {v8}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v8

    .line 806
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 807
    const/16 v30, -0x3b

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    .line 808
    const/16 v30, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_0

    .line 814
    .end local v22           #name:Ljava/lang/String;
    :pswitch_11
    const/16 v16, -0x1

    .line 817
    .local v16, index:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mozilla/javascript/CodeGenerator;->itsInFunctionFlag:Z

    move/from16 v30, v0

    if-eqz v30, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    move/from16 v30, v0

    if-nez v30, :cond_f

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getIndexForNameNode(Lorg/mozilla/javascript/Node;)I

    move-result v16

    .line 819
    :cond_f
    const/16 v30, -0x1

    move/from16 v0, v16

    move/from16 v1, v30

    if-ne v0, v1, :cond_10

    .line 820
    const/16 v30, -0xe

    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    .line 821
    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_0

    .line 823
    :cond_10
    const/16 v30, 0x37

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addVarOp(II)V

    .line 824
    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 825
    const/16 v30, 0x20

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    goto/16 :goto_0

    .line 833
    .end local v16           #index:I
    :pswitch_12
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    .line 834
    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_0

    .line 839
    :pswitch_13
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitIncDec(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_0

    .line 844
    :pswitch_14
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getDouble()D

    move-result-wide v23

    .line 845
    .local v23, num:D
    move-wide/from16 v0, v23

    double-to-int v0, v0

    move/from16 v17, v0

    .line 846
    .local v17, inum:I
    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v30, v0

    cmpl-double v30, v30, v23

    if-nez v30, :cond_15

    .line 847
    if-nez v17, :cond_12

    .line 848
    const/16 v30, -0x33

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 850
    const-wide/high16 v30, 0x3ff0

    div-double v30, v30, v23

    const-wide/16 v32, 0x0

    cmpg-double v30, v30, v32

    if-gez v30, :cond_11

    .line 851
    const/16 v30, 0x1d

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 867
    :cond_11
    :goto_8
    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_0

    .line 853
    :cond_12
    const/16 v30, 0x1

    move/from16 v0, v17

    move/from16 v1, v30

    if-ne v0, v1, :cond_13

    .line 854
    const/16 v30, -0x34

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto :goto_8

    .line 855
    :cond_13
    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    move/from16 v1, v17

    if-ne v0, v1, :cond_14

    .line 856
    const/16 v30, -0x1b

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 858
    const v30, 0xffff

    and-int v30, v30, v17

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    goto :goto_8

    .line 860
    :cond_14
    const/16 v30, -0x1c

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 861
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addInt(I)V

    goto :goto_8

    .line 864
    :cond_15
    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->getDoubleIndex(D)I

    move-result v16

    .line 865
    .restart local v16       #index:I
    const/16 v30, 0x28

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    goto :goto_8

    .line 873
    .end local v16           #index:I
    .end local v17           #inum:I
    .end local v23           #num:D
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    move/from16 v30, v0

    if-eqz v30, :cond_16

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 874
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getIndexForNameNode(Lorg/mozilla/javascript/Node;)I

    move-result v16

    .line 875
    .restart local v16       #index:I
    const/16 v30, 0x37

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addVarOp(II)V

    .line 876
    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_0

    .line 882
    .end local v16           #index:I
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    move/from16 v30, v0

    if-eqz v30, :cond_17

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 883
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object v1, v8

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getIndexForNameNode(Lorg/mozilla/javascript/Node;)I

    move-result v16

    .line 884
    .restart local v16       #index:I
    invoke-virtual {v8}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v8

    .line 885
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 886
    const/16 v30, 0x38

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addVarOp(II)V

    goto/16 :goto_0

    .line 892
    .end local v16           #index:I
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    move/from16 v30, v0

    if-eqz v30, :cond_18

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 893
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object v1, v8

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getIndexForNameNode(Lorg/mozilla/javascript/Node;)I

    move-result v16

    .line 894
    .restart local v16       #index:I
    invoke-virtual {v8}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v8

    .line 895
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 896
    const/16 v30, 0x9c

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addVarOp(II)V

    goto/16 :goto_0

    .line 905
    .end local v16           #index:I
    :pswitch_18
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 906
    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_0

    .line 911
    :pswitch_19
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/CodeGenerator;->getLocalBlockRef(Lorg/mozilla/javascript/Node;)I

    move-result v30

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    .line 912
    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_0

    .line 917
    :pswitch_1a
    const/16 v30, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    move-result v16

    .line 918
    .restart local v16       #index:I
    const/16 v30, 0x30

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    .line 919
    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_0

    .line 925
    .end local v16           #index:I
    :pswitch_1b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitLiteral(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_0

    .line 929
    :pswitch_1c
    invoke-virtual {v8}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v8

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/CodeGenerator;->visitArrayComprehension(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_0

    .line 933
    :pswitch_1d
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 934
    const/16 v30, 0x11

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 942
    .restart local p1
    :pswitch_1e
    const/16 v30, 0x10

    const/16 v31, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v21

    .line 944
    .local v21, memberTypeFlags:I
    const/4 v9, 0x0

    .line 946
    .local v9, childCount:I
    :cond_19
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 947
    add-int/lit8 v9, v9, 0x1

    .line 948
    invoke-virtual {v8}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v8

    .line 949
    if-nez v8, :cond_19

    .line 950
    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    .line 951
    const/16 v30, 0x1

    sub-int v30, v30, v9

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_0

    .line 958
    .end local v9           #childCount:I
    .end local v21           #memberTypeFlags:I
    :pswitch_1f
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/CodeGenerator;->updateLineNumber(Lorg/mozilla/javascript/Node;)V

    .line 959
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 960
    const/16 v30, -0x35

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 961
    const/16 v30, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 962
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    move/from16 v26, v0

    .line 963
    .local v26, queryPC:I
    invoke-virtual {v8}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v30

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 964
    const/16 v30, -0x36

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addBackwardGoto(II)V

    goto/16 :goto_0

    .line 971
    .end local v26           #queryPC:I
    :pswitch_20
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 972
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    goto/16 :goto_0

    .line 976
    :pswitch_21
    if-eqz v8, :cond_1a

    .line 977
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 982
    :goto_9
    const/16 v30, 0x48

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 983
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getLineno()I

    move-result v30

    const v31, 0xffff

    and-int v30, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    goto/16 :goto_0

    .line 979
    :cond_1a
    const/16 v30, -0x32

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 980
    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_9

    .line 987
    :pswitch_22
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v11

    .line 988
    .local v11, enterWith:Lorg/mozilla/javascript/Node;
    invoke-virtual {v11}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v29

    .line 989
    .local v29, with:Lorg/mozilla/javascript/Node;
    invoke-virtual {v11}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v30

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 990
    const/16 v30, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 991
    const/16 v30, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 992
    invoke-virtual/range {v29 .. v29}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v30

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 993
    const/16 v30, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    goto/16 :goto_0

    .line 546
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_f
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_5
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_8
        :pswitch_c
        :pswitch_9
        :pswitch_d
        :pswitch_5
        :pswitch_12
        :pswitch_14
        :pswitch_12
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_9
        :pswitch_9
        :pswitch_1a
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_9
        :pswitch_2
        :pswitch_15
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_19
        :pswitch_19
        :pswitch_18
        :pswitch_0
        :pswitch_1b
        :pswitch_1b
        :pswitch_b
        :pswitch_e
        :pswitch_b
        :pswitch_5
        :pswitch_1d
        :pswitch_21
        :pswitch_f
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_13
        :pswitch_13
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_4
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_17
        :pswitch_1c
        :pswitch_0
        :pswitch_22
    .end packed-switch
.end method

.method private visitIncDec(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 11
    .parameter "node"
    .parameter "child"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1047
    const/16 v8, 0xd

    invoke-virtual {p1, v8}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    move-result v2

    .line 1048
    .local v2, incrDecrMask:I
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v0

    .line 1049
    .local v0, childType:I
    sparse-switch v0, :sswitch_data_0

    .line 1091
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->badTree(Lorg/mozilla/javascript/Node;)Ljava/lang/RuntimeException;

    move-result-object v8

    throw v8

    .line 1051
    :sswitch_0
    iget-object v8, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    iget-boolean v8, v8, Lorg/mozilla/javascript/InterpreterData;->itsNeedsActivation:Z

    if-eqz v8, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 1052
    :cond_0
    iget-object v8, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v8, p2}, Lorg/mozilla/javascript/ast/ScriptNode;->getIndexForNameNode(Lorg/mozilla/javascript/Node;)I

    move-result v1

    .line 1053
    .local v1, i:I
    const/4 v8, -0x7

    invoke-direct {p0, v8, v1}, Lorg/mozilla/javascript/CodeGenerator;->addVarOp(II)V

    .line 1054
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    .line 1055
    invoke-direct {p0, v10}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 1094
    .end local v1           #i:I
    :goto_0
    return-void

    .line 1059
    :sswitch_1
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v4

    .line 1060
    .local v4, name:Ljava/lang/String;
    const/4 v8, -0x8

    invoke-direct {p0, v8, v4}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    .line 1061
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    .line 1062
    invoke-direct {p0, v10}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_0

    .line 1066
    .end local v4           #name:Ljava/lang/String;
    :sswitch_2
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v5

    .line 1067
    .local v5, object:Lorg/mozilla/javascript/Node;
    invoke-direct {p0, v5, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 1068
    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v8

    invoke-virtual {v8}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v6

    .line 1069
    .local v6, property:Ljava/lang/String;
    const/16 v8, -0x9

    invoke-direct {p0, v8, v6}, Lorg/mozilla/javascript/CodeGenerator;->addStringOp(ILjava/lang/String;)V

    .line 1070
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    goto :goto_0

    .line 1074
    .end local v5           #object:Lorg/mozilla/javascript/Node;
    .end local v6           #property:Ljava/lang/String;
    :sswitch_3
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v5

    .line 1075
    .restart local v5       #object:Lorg/mozilla/javascript/Node;
    invoke-direct {p0, v5, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 1076
    invoke-virtual {v5}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v3

    .line 1077
    .local v3, index:Lorg/mozilla/javascript/Node;
    invoke-direct {p0, v3, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 1078
    const/16 v8, -0xa

    invoke-direct {p0, v8}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1079
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    .line 1080
    const/4 v8, -0x1

    invoke-direct {p0, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_0

    .line 1084
    .end local v3           #index:Lorg/mozilla/javascript/Node;
    .end local v5           #object:Lorg/mozilla/javascript/Node;
    :sswitch_4
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v7

    .line 1085
    .local v7, ref:Lorg/mozilla/javascript/Node;
    invoke-direct {p0, v7, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 1086
    const/16 v8, -0xb

    invoke-direct {p0, v8}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1087
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    goto :goto_0

    .line 1049
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_2
        0x24 -> :sswitch_3
        0x27 -> :sswitch_1
        0x37 -> :sswitch_0
        0x43 -> :sswitch_4
    .end sparse-switch
.end method

.method private visitLiteral(Lorg/mozilla/javascript/Node;Lorg/mozilla/javascript/Node;)V
    .locals 13
    .parameter "node"
    .parameter "child"

    .prologue
    const/16 v12, 0x42

    const/4 v11, -0x1

    const/16 v10, 0x41

    const/4 v9, 0x0

    .line 1098
    invoke-virtual {p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v7

    .line 1100
    .local v7, type:I
    const/4 v5, 0x0

    .line 1101
    .local v5, propertyIds:[Ljava/lang/Object;
    if-ne v7, v10, :cond_0

    .line 1102
    const/4 v2, 0x0

    .line 1103
    .local v2, count:I
    move-object v4, p2

    .local v4, n:Lorg/mozilla/javascript/Node;
    :goto_0
    if-eqz v4, :cond_1

    .line 1104
    add-int/lit8 v2, v2, 0x1

    .line 1103
    invoke-virtual {v4}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v4

    goto :goto_0

    .line 1106
    .end local v2           #count:I
    .end local v4           #n:Lorg/mozilla/javascript/Node;
    :cond_0
    if-ne v7, v12, :cond_2

    .line 1107
    const/16 v8, 0xc

    invoke-virtual {p1, v8}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    move-object v0, v8

    check-cast v0, [Ljava/lang/Object;

    move-object v5, v0

    .line 1108
    array-length v2, v5

    .line 1112
    .restart local v2       #count:I
    :cond_1
    const/16 v8, -0x1d

    invoke-direct {p0, v8, v2}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    .line 1113
    const/4 v8, 0x2

    invoke-direct {p0, v8}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 1114
    :goto_1
    if-eqz p2, :cond_5

    .line 1115
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v1

    .line 1116
    .local v1, childType:I
    const/16 v8, 0x97

    if-ne v1, v8, :cond_3

    .line 1117
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v8

    invoke-direct {p0, v8, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 1118
    const/16 v8, -0x39

    invoke-direct {p0, v8}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 1126
    :goto_2
    invoke-direct {p0, v11}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 1127
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object p2

    .line 1128
    goto :goto_1

    .line 1110
    .end local v1           #childType:I
    .end local v2           #count:I
    :cond_2
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/CodeGenerator;->badTree(Lorg/mozilla/javascript/Node;)Ljava/lang/RuntimeException;

    move-result-object v8

    throw v8

    .line 1119
    .restart local v1       #childType:I
    .restart local v2       #count:I
    :cond_3
    const/16 v8, 0x98

    if-ne v1, v8, :cond_4

    .line 1120
    invoke-virtual {p2}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v8

    invoke-direct {p0, v8, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 1121
    const/16 v8, -0x3a

    invoke-direct {p0, v8}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto :goto_2

    .line 1123
    :cond_4
    invoke-direct {p0, p2, v9}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 1124
    const/16 v8, -0x1e

    invoke-direct {p0, v8}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto :goto_2

    .line 1129
    .end local v1           #childType:I
    :cond_5
    if-ne v7, v10, :cond_7

    .line 1130
    const/16 v8, 0xb

    invoke-virtual {p1, v8}, Lorg/mozilla/javascript/Node;->getProp(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    move-object v0, v8

    check-cast v0, [I

    move-object v6, v0

    .line 1131
    .local v6, skipIndexes:[I
    if-nez v6, :cond_6

    .line 1132
    invoke-direct {p0, v10}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 1143
    .end local v6           #skipIndexes:[I
    :goto_3
    invoke-direct {p0, v11}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 1144
    return-void

    .line 1134
    .restart local v6       #skipIndexes:[I
    :cond_6
    iget-object v8, p0, Lorg/mozilla/javascript/CodeGenerator;->literalIds:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v8}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v3

    .line 1135
    .local v3, index:I
    iget-object v8, p0, Lorg/mozilla/javascript/CodeGenerator;->literalIds:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v8, v6}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    .line 1136
    const/16 v8, -0x1f

    invoke-direct {p0, v8, v3}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    goto :goto_3

    .line 1139
    .end local v3           #index:I
    .end local v6           #skipIndexes:[I
    :cond_7
    iget-object v8, p0, Lorg/mozilla/javascript/CodeGenerator;->literalIds:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v8}, Lorg/mozilla/javascript/ObjArray;->size()I

    move-result v3

    .line 1140
    .restart local v3       #index:I
    iget-object v8, p0, Lorg/mozilla/javascript/CodeGenerator;->literalIds:Lorg/mozilla/javascript/ObjArray;

    invoke-virtual {v8, v5}, Lorg/mozilla/javascript/ObjArray;->add(Ljava/lang/Object;)V

    .line 1141
    invoke-direct {p0, v12, v3}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    goto :goto_3
.end method

.method private visitStatement(Lorg/mozilla/javascript/Node;I)V
    .locals 33
    .parameter "node"
    .parameter "initialStackDepth"

    .prologue
    .line 277
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getType()I

    move-result v32

    .line 278
    .local v32, type:I
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Node;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v19

    .line 279
    .local v19, child:Lorg/mozilla/javascript/Node;
    sparse-switch v32, :sswitch_data_0

    .line 533
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/CodeGenerator;->badTree(Lorg/mozilla/javascript/Node;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 283
    :sswitch_0
    const/4 v3, 0x1

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    move-result v22

    .line 284
    .local v22, fnIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionNode(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mozilla/javascript/ast/FunctionNode;->getFunctionType()I

    move-result v23

    .line 292
    .local v23, fnType:I
    const/4 v3, 0x3

    move/from16 v0, v23

    move v1, v3

    if-ne v0, v1, :cond_2

    .line 293
    const/16 v3, -0x14

    move-object/from16 v0, p0

    move v1, v3

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    .line 304
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mozilla/javascript/CodeGenerator;->itsInFunctionFlag:Z

    move v3, v0

    if-nez v3, :cond_1

    .line 305
    const/16 v3, -0x13

    move-object/from16 v0, p0

    move v1, v3

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    .line 306
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 307
    const/4 v3, -0x5

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 308
    const/4 v3, -0x1

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 536
    .end local v22           #fnIndex:I
    .end local v23           #fnType:I
    .end local p1
    :cond_1
    :goto_0
    :sswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/CodeGenerator;->stackDepth:I

    move v3, v0

    move v0, v3

    move/from16 v1, p2

    if-eq v0, v1, :cond_e

    .line 537
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 295
    .restart local v22       #fnIndex:I
    .restart local v23       #fnType:I
    .restart local p1
    :cond_2
    const/4 v3, 0x1

    move/from16 v0, v23

    move v1, v3

    if-eq v0, v1, :cond_0

    .line 296
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 318
    .end local v22           #fnIndex:I
    .end local v23           #fnType:I
    :sswitch_2
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/CodeGenerator;->updateLineNumber(Lorg/mozilla/javascript/Node;)V

    .line 321
    :goto_1
    :sswitch_3
    if-eqz v19, :cond_1

    .line 322
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitStatement(Lorg/mozilla/javascript/Node;I)V

    .line 323
    invoke-virtual/range {v19 .. v19}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v19

    goto :goto_1

    .line 328
    :sswitch_4
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move v2, v3

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 329
    const/4 v3, 0x2

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 330
    const/4 v3, -0x1

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto :goto_0

    .line 334
    :sswitch_5
    const/4 v3, 0x3

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    goto :goto_0

    .line 339
    :sswitch_6
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/CodeGenerator;->allocLocal()I

    move-result v24

    .line 340
    .local v24, local:I
    const/4 v3, 0x2

    move-object/from16 v0, p1

    move v1, v3

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->putIntProp(II)V

    .line 341
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/CodeGenerator;->updateLineNumber(Lorg/mozilla/javascript/Node;)V

    .line 342
    :goto_2
    if-eqz v19, :cond_3

    .line 343
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitStatement(Lorg/mozilla/javascript/Node;I)V

    .line 344
    invoke-virtual/range {v19 .. v19}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v19

    goto :goto_2

    .line 346
    :cond_3
    const/16 v3, -0x38

    move-object/from16 v0, p0

    move v1, v3

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    .line 347
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->releaseLocal(I)V

    goto :goto_0

    .line 352
    .end local v24           #local:I
    :sswitch_7
    const/16 v3, -0x40

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto/16 :goto_0

    .line 356
    :sswitch_8
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/CodeGenerator;->updateLineNumber(Lorg/mozilla/javascript/Node;)V

    .line 360
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move v2, v3

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 361
    invoke-virtual/range {v19 .. v19}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v17

    check-cast v17, Lorg/mozilla/javascript/ast/Jump;

    .line 362
    .local v17, caseNode:Lorg/mozilla/javascript/ast/Jump;
    :goto_3
    if-eqz v17, :cond_5

    .line 365
    invoke-virtual/range {v17 .. v17}, Lorg/mozilla/javascript/ast/Jump;->getType()I

    move-result v3

    const/16 v4, 0x73

    if-eq v3, v4, :cond_4

    .line 366
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->badTree(Lorg/mozilla/javascript/Node;)Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 367
    :cond_4
    invoke-virtual/range {v17 .. v17}, Lorg/mozilla/javascript/ast/Jump;->getFirstChild()Lorg/mozilla/javascript/Node;

    move-result-object v30

    .line 368
    .local v30, test:Lorg/mozilla/javascript/Node;
    const/4 v3, -0x1

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 369
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 370
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move v2, v3

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 371
    const/16 v3, 0x2e

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 372
    const/4 v3, -0x1

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 375
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    move-object v3, v0

    const/4 v4, -0x6

    move-object/from16 v0, p0

    move-object v1, v3

    move v2, v4

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addGoto(Lorg/mozilla/javascript/Node;I)V

    .line 376
    const/4 v3, -0x1

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 363
    invoke-virtual/range {v17 .. v17}, Lorg/mozilla/javascript/ast/Jump;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v17

    .end local v17           #caseNode:Lorg/mozilla/javascript/ast/Jump;
    check-cast v17, Lorg/mozilla/javascript/ast/Jump;

    .restart local v17       #caseNode:Lorg/mozilla/javascript/ast/Jump;
    goto :goto_3

    .line 378
    .end local v30           #test:Lorg/mozilla/javascript/Node;
    :cond_5
    const/4 v3, -0x4

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 379
    const/4 v3, -0x1

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_0

    .line 384
    .end local v17           #caseNode:Lorg/mozilla/javascript/ast/Jump;
    :sswitch_9
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/CodeGenerator;->markTargetLabel(Lorg/mozilla/javascript/Node;)V

    goto/16 :goto_0

    .line 390
    :sswitch_a
    check-cast p1, Lorg/mozilla/javascript/ast/Jump;

    .end local p1
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    move-object/from16 v29, v0

    .line 391
    .local v29, target:Lorg/mozilla/javascript/Node;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move v2, v3

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 392
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addGoto(Lorg/mozilla/javascript/Node;I)V

    .line 393
    const/4 v3, -0x1

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_0

    .line 399
    .end local v29           #target:Lorg/mozilla/javascript/Node;
    .restart local p1
    :sswitch_b
    check-cast p1, Lorg/mozilla/javascript/ast/Jump;

    .end local p1
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    move-object/from16 v29, v0

    .line 400
    .restart local v29       #target:Lorg/mozilla/javascript/Node;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addGoto(Lorg/mozilla/javascript/Node;I)V

    goto/16 :goto_0

    .line 406
    .end local v29           #target:Lorg/mozilla/javascript/Node;
    .restart local p1
    :sswitch_c
    check-cast p1, Lorg/mozilla/javascript/ast/Jump;

    .end local p1
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    move-object/from16 v29, v0

    .line 407
    .restart local v29       #target:Lorg/mozilla/javascript/Node;
    const/16 v3, -0x17

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move v2, v3

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addGoto(Lorg/mozilla/javascript/Node;I)V

    goto/16 :goto_0

    .line 414
    .end local v29           #target:Lorg/mozilla/javascript/Node;
    .restart local p1
    :sswitch_d
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 415
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/CodeGenerator;->getLocalBlockRef(Lorg/mozilla/javascript/Node;)I

    move-result v20

    .line 416
    .local v20, finallyRegister:I
    const/16 v3, -0x18

    move-object/from16 v0, p0

    move v1, v3

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    .line 417
    const/4 v3, -0x1

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    .line 418
    :goto_4
    if-eqz v19, :cond_6

    .line 419
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitStatement(Lorg/mozilla/javascript/Node;I)V

    .line 420
    invoke-virtual/range {v19 .. v19}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v19

    goto :goto_4

    .line 422
    :cond_6
    const/16 v3, -0x19

    move-object/from16 v0, p0

    move v1, v3

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    goto/16 :goto_0

    .line 428
    .end local v20           #finallyRegister:I
    :sswitch_e
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/CodeGenerator;->updateLineNumber(Lorg/mozilla/javascript/Node;)V

    .line 429
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move v2, v3

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 430
    const/16 v3, 0x85

    move/from16 v0, v32

    move v1, v3

    if-ne v0, v1, :cond_7

    const/4 v3, -0x4

    :goto_5
    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 431
    const/4 v3, -0x1

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_0

    .line 430
    :cond_7
    const/4 v3, -0x5

    goto :goto_5

    .line 436
    :sswitch_f
    move-object/from16 v0, p1

    check-cast v0, Lorg/mozilla/javascript/ast/Jump;

    move-object/from16 v31, v0

    .line 437
    .local v31, tryNode:Lorg/mozilla/javascript/ast/Jump;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->getLocalBlockRef(Lorg/mozilla/javascript/Node;)I

    move-result v8

    .line 438
    .local v8, exceptionObjectLocal:I
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/CodeGenerator;->allocLocal()I

    move-result v9

    .line 440
    .local v9, scopeLocal:I
    const/16 v3, -0xd

    move-object/from16 v0, p0

    move v1, v3

    move v2, v9

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    .line 442
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/CodeGenerator;->iCodeTop:I

    move v4, v0

    .line 443
    .local v4, tryStart:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mozilla/javascript/CodeGenerator;->itsInTryFlag:Z

    move/from16 v27, v0

    .line 444
    .local v27, savedFlag:Z
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mozilla/javascript/CodeGenerator;->itsInTryFlag:Z

    .line 445
    :goto_6
    if-eqz v19, :cond_8

    .line 446
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitStatement(Lorg/mozilla/javascript/Node;I)V

    .line 447
    invoke-virtual/range {v19 .. v19}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v19

    goto :goto_6

    .line 449
    :cond_8
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mozilla/javascript/CodeGenerator;->itsInTryFlag:Z

    .line 451
    move-object/from16 v0, v31

    iget-object v0, v0, Lorg/mozilla/javascript/ast/Jump;->target:Lorg/mozilla/javascript/Node;

    move-object/from16 v18, v0

    .line 452
    .local v18, catchTarget:Lorg/mozilla/javascript/Node;
    if-eqz v18, :cond_9

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    move-object v3, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->getTargetLabel(Lorg/mozilla/javascript/Node;)I

    move-result v5

    aget v5, v3, v5

    .line 455
    .local v5, catchStartPC:I
    const/4 v7, 0x0

    move-object/from16 v3, p0

    move v6, v5

    invoke-direct/range {v3 .. v9}, Lorg/mozilla/javascript/CodeGenerator;->addExceptionHandler(IIIZII)V

    .line 459
    .end local v5           #catchStartPC:I
    :cond_9
    invoke-virtual/range {v31 .. v31}, Lorg/mozilla/javascript/ast/Jump;->getFinally()Lorg/mozilla/javascript/Node;

    move-result-object v21

    .line 460
    .local v21, finallyTarget:Lorg/mozilla/javascript/Node;
    if-eqz v21, :cond_a

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/CodeGenerator;->labelTable:[I

    move-object v3, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->getTargetLabel(Lorg/mozilla/javascript/Node;)I

    move-result v5

    aget v12, v3, v5

    .line 463
    .local v12, finallyStartPC:I
    const/4 v14, 0x1

    move-object/from16 v10, p0

    move v11, v4

    move v13, v12

    move v15, v8

    move/from16 v16, v9

    invoke-direct/range {v10 .. v16}, Lorg/mozilla/javascript/CodeGenerator;->addExceptionHandler(IIIZII)V

    .line 468
    .end local v12           #finallyStartPC:I
    :cond_a
    const/16 v3, -0x38

    move-object/from16 v0, p0

    move v1, v3

    move v2, v9

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    .line 469
    move-object/from16 v0, p0

    move v1, v9

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->releaseLocal(I)V

    goto/16 :goto_0

    .line 475
    .end local v4           #tryStart:I
    .end local v8           #exceptionObjectLocal:I
    .end local v9           #scopeLocal:I
    .end local v18           #catchTarget:Lorg/mozilla/javascript/Node;
    .end local v21           #finallyTarget:Lorg/mozilla/javascript/Node;
    .end local v27           #savedFlag:Z
    .end local v31           #tryNode:Lorg/mozilla/javascript/ast/Jump;
    :sswitch_10
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/CodeGenerator;->getLocalBlockRef(Lorg/mozilla/javascript/Node;)I

    move-result v25

    .line 476
    .local v25, localIndex:I
    const/16 v3, 0xe

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/Node;->getExistingIntProp(I)I

    move-result v28

    .line 477
    .local v28, scopeIndex:I
    invoke-virtual/range {v19 .. v19}, Lorg/mozilla/javascript/Node;->getString()Ljava/lang/String;

    move-result-object v26

    .line 478
    .local v26, name:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lorg/mozilla/javascript/Node;->getNext()Lorg/mozilla/javascript/Node;

    move-result-object v19

    .line 479
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move v2, v3

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 480
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addStringPrefix(Ljava/lang/String;)V

    .line 481
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addIndexPrefix(I)V

    .line 482
    const/16 v3, 0x39

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 483
    if-eqz v28, :cond_b

    const/4 v3, 0x1

    :goto_7
    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addUint8(I)V

    .line 484
    const/4 v3, -0x1

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_0

    .line 483
    :cond_b
    const/4 v3, 0x0

    goto :goto_7

    .line 489
    .end local v25           #localIndex:I
    .end local v26           #name:Ljava/lang/String;
    .end local v28           #scopeIndex:I
    :sswitch_11
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/CodeGenerator;->updateLineNumber(Lorg/mozilla/javascript/Node;)V

    .line 490
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move v2, v3

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 491
    const/16 v3, 0x32

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 492
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/CodeGenerator;->lineNumber:I

    move v3, v0

    const v4, 0xffff

    and-int/2addr v3, v4

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    .line 493
    const/4 v3, -0x1

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_0

    .line 497
    :sswitch_12
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/CodeGenerator;->updateLineNumber(Lorg/mozilla/javascript/Node;)V

    .line 498
    const/16 v3, 0x33

    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/CodeGenerator;->getLocalBlockRef(Lorg/mozilla/javascript/Node;)I

    move-result v4

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    goto/16 :goto_0

    .line 502
    :sswitch_13
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/CodeGenerator;->updateLineNumber(Lorg/mozilla/javascript/Node;)V

    .line 503
    const/16 v3, 0x14

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/mozilla/javascript/Node;->getIntProp(II)I

    move-result v3

    if-eqz v3, :cond_c

    .line 505
    const/16 v3, -0x3f

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    .line 506
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/CodeGenerator;->lineNumber:I

    move v3, v0

    const v4, 0xffff

    and-int/2addr v3, v4

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addUint16(I)V

    goto/16 :goto_0

    .line 507
    :cond_c
    if-eqz v19, :cond_d

    .line 508
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move v2, v3

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 509
    const/4 v3, 0x4

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    .line 510
    const/4 v3, -0x1

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_0

    .line 512
    :cond_d
    const/16 v3, -0x16

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addIcode(I)V

    goto/16 :goto_0

    .line 517
    :sswitch_14
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/CodeGenerator;->updateLineNumber(Lorg/mozilla/javascript/Node;)V

    .line 518
    const/16 v3, 0x40

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->addToken(I)V

    goto/16 :goto_0

    .line 524
    :sswitch_15
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move v2, v3

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->visitExpression(Lorg/mozilla/javascript/Node;I)V

    .line 525
    invoke-direct/range {p0 .. p1}, Lorg/mozilla/javascript/CodeGenerator;->getLocalBlockRef(Lorg/mozilla/javascript/Node;)I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, v32

    move v2, v3

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/CodeGenerator;->addIndexOp(II)V

    .line 526
    const/4 v3, -0x1

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/CodeGenerator;->stackChange(I)V

    goto/16 :goto_0

    .line 539
    .end local p1
    :cond_e
    return-void

    .line 279
    :sswitch_data_0
    .sparse-switch
        -0x3e -> :sswitch_1
        0x2 -> :sswitch_4
        0x3 -> :sswitch_5
        0x4 -> :sswitch_13
        0x5 -> :sswitch_b
        0x6 -> :sswitch_a
        0x7 -> :sswitch_a
        0x32 -> :sswitch_11
        0x33 -> :sswitch_12
        0x39 -> :sswitch_10
        0x3a -> :sswitch_15
        0x3b -> :sswitch_15
        0x3c -> :sswitch_15
        0x40 -> :sswitch_14
        0x51 -> :sswitch_f
        0x6d -> :sswitch_0
        0x72 -> :sswitch_8
        0x7b -> :sswitch_2
        0x7d -> :sswitch_d
        0x80 -> :sswitch_2
        0x81 -> :sswitch_2
        0x82 -> :sswitch_2
        0x83 -> :sswitch_9
        0x84 -> :sswitch_2
        0x85 -> :sswitch_e
        0x86 -> :sswitch_e
        0x87 -> :sswitch_c
        0x88 -> :sswitch_3
        0x8d -> :sswitch_6
        0xa0 -> :sswitch_7
    .end sparse-switch
.end method


# virtual methods
.method public compile(Lorg/mozilla/javascript/CompilerEnvirons;Lorg/mozilla/javascript/ast/ScriptNode;Ljava/lang/String;Z)Lorg/mozilla/javascript/InterpreterData;
    .locals 4
    .parameter "compilerEnv"
    .parameter "tree"
    .parameter "encodedSource"
    .parameter "returnFunction"

    .prologue
    .line 96
    iput-object p1, p0, Lorg/mozilla/javascript/CodeGenerator;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    .line 103
    new-instance v0, Lorg/mozilla/javascript/NodeTransformer;

    invoke-direct {v0}, Lorg/mozilla/javascript/NodeTransformer;-><init>()V

    invoke-virtual {v0, p2}, Lorg/mozilla/javascript/NodeTransformer;->transform(Lorg/mozilla/javascript/ast/ScriptNode;)V

    .line 110
    if-eqz p4, :cond_0

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/mozilla/javascript/ast/ScriptNode;->getFunctionNode(I)Lorg/mozilla/javascript/ast/FunctionNode;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    .line 115
    :goto_0
    new-instance v0, Lorg/mozilla/javascript/InterpreterData;

    invoke-virtual {p1}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v1

    iget-object v2, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-virtual {v2}, Lorg/mozilla/javascript/ast/ScriptNode;->getSourceName()Ljava/lang/String;

    move-result-object v2

    check-cast p2, Lorg/mozilla/javascript/ast/AstRoot;

    .end local p2
    invoke-virtual {p2}, Lorg/mozilla/javascript/ast/AstRoot;->isInStrictMode()Z

    move-result v3

    invoke-direct {v0, v1, v2, p3, v3}, Lorg/mozilla/javascript/InterpreterData;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    iput-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    .line 119
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/mozilla/javascript/InterpreterData;->topLevel:Z

    .line 121
    if-eqz p4, :cond_1

    .line 122
    invoke-direct {p0}, Lorg/mozilla/javascript/CodeGenerator;->generateFunctionICode()V

    .line 126
    :goto_1
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->itsData:Lorg/mozilla/javascript/InterpreterData;

    return-object v0

    .line 113
    .restart local p2
    :cond_0
    iput-object p2, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    goto :goto_0

    .line 124
    .end local p2
    :cond_1
    iget-object v0, p0, Lorg/mozilla/javascript/CodeGenerator;->scriptOrFn:Lorg/mozilla/javascript/ast/ScriptNode;

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/CodeGenerator;->generateICodeFromTree(Lorg/mozilla/javascript/Node;)V

    goto :goto_1
.end method
