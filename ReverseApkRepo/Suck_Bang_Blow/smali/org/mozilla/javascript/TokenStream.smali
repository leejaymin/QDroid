.class Lorg/mozilla/javascript/TokenStream;
.super Ljava/lang/Object;
.source "TokenStream.java"


# static fields
.field private static final BYTE_ORDER_MARK:C = '\ufeff'

.field private static final EOF_CHAR:I = -0x1


# instance fields
.field private allStrings:Lorg/mozilla/javascript/ObjToIntMap;

.field private commentCursor:I

.field private commentPrefix:Ljava/lang/String;

.field commentType:Lorg/mozilla/javascript/Token$CommentType;

.field cursor:I

.field private dirtyLine:Z

.field private hitEOF:Z

.field private isOctal:Z

.field private lineEndChar:I

.field private lineStart:I

.field lineno:I

.field private number:D

.field private parser:Lorg/mozilla/javascript/Parser;

.field private quoteChar:I

.field regExpFlags:Ljava/lang/String;

.field private sourceBuffer:[C

.field sourceCursor:I

.field private sourceEnd:I

.field private sourceReader:Ljava/io/Reader;

.field private sourceString:Ljava/lang/String;

.field private string:Ljava/lang/String;

.field private stringBuffer:[C

.field private stringBufferTop:I

.field tokenBeg:I

.field tokenEnd:I

.field private final ungetBuffer:[I

.field private ungetCursor:I

.field private xmlIsAttribute:Z

.field private xmlIsTagContent:Z

.field private xmlOpenTagsCount:I


# direct methods
.method constructor <init>(Lorg/mozilla/javascript/Parser;Ljava/io/Reader;Ljava/lang/String;I)V
    .locals 5
    .parameter "parser"
    .parameter "sourceReader"
    .parameter "sourceString"
    .parameter "lineno"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const-string v4, ""

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1572
    const-string v0, ""

    iput-object v4, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 1579
    const/16 v0, 0x80

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    .line 1581
    new-instance v0, Lorg/mozilla/javascript/ObjToIntMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/ObjToIntMap;-><init>(I)V

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->allStrings:Lorg/mozilla/javascript/ObjToIntMap;

    .line 1584
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetBuffer:[I

    .line 1587
    iput-boolean v2, p0, Lorg/mozilla/javascript/TokenStream;->hitEOF:Z

    .line 1589
    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    .line 1590
    iput v3, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    .line 1621
    const-string v0, ""

    iput-object v4, p0, Lorg/mozilla/javascript/TokenStream;->commentPrefix:Ljava/lang/String;

    .line 1622
    iput v3, p0, Lorg/mozilla/javascript/TokenStream;->commentCursor:I

    .line 77
    iput-object p1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    .line 78
    iput p4, p0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 79
    if-eqz p2, :cond_1

    .line 80
    if-eqz p3, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 81
    :cond_0
    iput-object p2, p0, Lorg/mozilla/javascript/TokenStream;->sourceReader:Ljava/io/Reader;

    .line 82
    const/16 v0, 0x200

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    .line 83
    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    .line 89
    :goto_0
    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    .line 90
    return-void

    .line 85
    :cond_1
    if-nez p3, :cond_2

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 86
    :cond_2
    iput-object p3, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    .line 87
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    goto :goto_0
.end method

.method private addToString(I)V
    .locals 4
    .parameter "c"

    .prologue
    const/4 v3, 0x0

    .line 1258
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 1259
    .local v0, N:I
    iget-object v2, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    array-length v2, v2

    if-ne v0, v2, :cond_0

    .line 1260
    iget-object v2, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v1, v2, [C

    .line 1261
    .local v1, tmp:[C
    iget-object v2, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1262
    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    .line 1264
    .end local v1           #tmp:[C
    :cond_0
    iget-object v2, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    int-to-char v3, p1

    aput-char v3, v2, v0

    .line 1265
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 1266
    return-void
.end method

.method private canUngetChar()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1269
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetBuffer:[I

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    sub-int/2addr v1, v2

    aget v0, v0, v1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private fillSourceBuffer()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1475
    iget-object v2, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 1476
    :cond_0
    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    iget-object v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    array-length v3, v3

    if-ne v2, v3, :cond_1

    .line 1477
    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->isMarkingComment()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1478
    iget-object v2, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    iget-object v4, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    iget v5, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    iget v6, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    sub-int/2addr v5, v6

    invoke-static {v2, v3, v4, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1480
    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    .line 1481
    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    sub-int/2addr v2, v3

    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    .line 1482
    iput v7, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    .line 1489
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/mozilla/javascript/TokenStream;->sourceReader:Ljava/io/Reader;

    iget-object v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    iget v4, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    iget-object v5, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    array-length v5, v5

    iget v6, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    sub-int/2addr v5, v6

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/Reader;->read([CII)I

    move-result v0

    .line 1491
    .local v0, n:I
    if-gez v0, :cond_3

    move v2, v7

    .line 1495
    :goto_1
    return v2

    .line 1484
    .end local v0           #n:I
    :cond_2
    iget-object v2, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    new-array v1, v2, [C

    .line 1485
    .local v1, tmp:[C
    iget-object v2, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    invoke-static {v2, v7, v1, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1486
    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    goto :goto_0

    .line 1494
    .end local v1           #tmp:[C
    .restart local v0       #n:I
    :cond_3
    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    .line 1495
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private getChar()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0xa

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 1302
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    if-eqz v1, :cond_1

    .line 1303
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 1304
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->ungetBuffer:[I

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    sub-int/2addr v2, v4

    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    aget v1, v1, v2

    .line 1352
    :goto_0
    return v1

    .line 1314
    :cond_0
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 1315
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1327
    .local v0, c:I
    :goto_1
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    if-ltz v1, :cond_5

    .line 1328
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    if-ne v1, v7, :cond_4

    if-ne v0, v6, :cond_4

    .line 1329
    iput v6, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    .line 1309
    .end local v0           #c:I
    :cond_1
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1310
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    if-ne v1, v2, :cond_0

    .line 1311
    iput-boolean v4, p0, Lorg/mozilla/javascript/TokenStream;->hitEOF:Z

    move v1, v5

    .line 1312
    goto :goto_0

    .line 1317
    :cond_2
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    if-ne v1, v2, :cond_3

    .line 1318
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->fillSourceBuffer()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1319
    iput-boolean v4, p0, Lorg/mozilla/javascript/TokenStream;->hitEOF:Z

    move v1, v5

    .line 1320
    goto :goto_0

    .line 1323
    :cond_3
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 1324
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    aget-char v0, v1, v2

    .restart local v0       #c:I
    goto :goto_1

    .line 1332
    :cond_4
    iput v5, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    .line 1333
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    sub-int/2addr v1, v4

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    .line 1334
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    .line 1337
    :cond_5
    const/16 v1, 0x7f

    if-gt v0, v1, :cond_8

    .line 1338
    if-eq v0, v6, :cond_6

    if-ne v0, v7, :cond_7

    .line 1339
    :cond_6
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    .line 1340
    const/16 v0, 0xa

    :cond_7
    :goto_2
    move v1, v0

    .line 1352
    goto :goto_0

    .line 1343
    :cond_8
    const v1, 0xfeff

    if-ne v0, v1, :cond_9

    move v1, v0

    goto :goto_0

    .line 1344
    :cond_9
    invoke-static {v0}, Lorg/mozilla/javascript/TokenStream;->isJSFormatChar(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1347
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1348
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    .line 1349
    const/16 v0, 0xa

    goto :goto_2
.end method

.method private getCharIgnoreLineEnd()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 1358
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    if-eqz v1, :cond_1

    .line 1359
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 1360
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->ungetBuffer:[I

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    sub-int/2addr v2, v4

    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    aget v1, v1, v2

    .line 1398
    :goto_0
    return v1

    .line 1390
    .local v0, c:I
    :cond_0
    invoke-static {v0}, Lorg/mozilla/javascript/TokenStream;->isJSFormatChar(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1365
    .end local v0           #c:I
    :cond_1
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 1366
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    if-ne v1, v2, :cond_2

    .line 1367
    iput-boolean v4, p0, Lorg/mozilla/javascript/TokenStream;->hitEOF:Z

    move v1, v5

    .line 1368
    goto :goto_0

    .line 1370
    :cond_2
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 1371
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1383
    .restart local v0       #c:I
    :goto_1
    const/16 v1, 0x7f

    if-gt v0, v1, :cond_7

    .line 1384
    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    if-ne v0, v1, :cond_4

    .line 1385
    :cond_3
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    .line 1386
    const/16 v0, 0xa

    :cond_4
    :goto_2
    move v1, v0

    .line 1398
    goto :goto_0

    .line 1373
    .end local v0           #c:I
    :cond_5
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    if-ne v1, v2, :cond_6

    .line 1374
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->fillSourceBuffer()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1375
    iput-boolean v4, p0, Lorg/mozilla/javascript/TokenStream;->hitEOF:Z

    move v1, v5

    .line 1376
    goto :goto_0

    .line 1379
    :cond_6
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 1380
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    aget-char v0, v1, v2

    .restart local v0       #c:I
    goto :goto_1

    .line 1389
    :cond_7
    const v1, 0xfeff

    if-ne v0, v1, :cond_0

    move v1, v0

    goto :goto_0

    .line 1393
    :cond_8
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1394
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    .line 1395
    const/16 v0, 0xa

    goto :goto_2
.end method

.method private getStringFromBuffer()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1252
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 1253
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    const/4 v2, 0x0

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method private static isAlpha(I)Z
    .locals 3
    .parameter "c"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 870
    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    .line 871
    const/16 v0, 0x41

    if-gt v0, p0, :cond_0

    move v0, v2

    .line 873
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 871
    goto :goto_0

    .line 873
    :cond_1
    const/16 v0, 0x61

    if-gt v0, p0, :cond_2

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static isDigit(I)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 879
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isJSFormatChar(I)Z
    .locals 2
    .parameter "c"

    .prologue
    .line 898
    const/16 v0, 0x7f

    if-le p0, v0, :cond_0

    int-to-char v0, p0

    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isJSSpace(I)Z
    .locals 4
    .parameter "c"

    .prologue
    const/16 v3, 0xc

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 888
    const/16 v0, 0x7f

    if-gt p0, v0, :cond_2

    .line 889
    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    if-eq p0, v3, :cond_0

    const/16 v0, 0xb

    if-ne p0, v0, :cond_1

    :cond_0
    move v0, v2

    .line 891
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 889
    goto :goto_0

    .line 891
    :cond_2
    const/16 v0, 0xa0

    if-eq p0, v0, :cond_3

    const v0, 0xfeff

    if-eq p0, v0, :cond_3

    int-to-char v0, p0

    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    if-ne v0, v3, :cond_4

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method static isKeyword(Ljava/lang/String;)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 118
    invoke-static {p0}, Lorg/mozilla/javascript/TokenStream;->stringToKeyword(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMarkingComment()Z
    .locals 2

    .prologue
    .line 1546
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->commentCursor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private markCommentStart()V
    .locals 1

    .prologue
    .line 1535
    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->markCommentStart(Ljava/lang/String;)V

    .line 1536
    return-void
.end method

.method private markCommentStart(Ljava/lang/String;)V
    .locals 2
    .parameter "prefix"

    .prologue
    .line 1539
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    invoke-virtual {v0}, Lorg/mozilla/javascript/CompilerEnvirons;->isRecordingComments()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceReader:Ljava/io/Reader;

    if-eqz v0, :cond_0

    .line 1540
    iput-object p1, p0, Lorg/mozilla/javascript/TokenStream;->commentPrefix:Ljava/lang/String;

    .line 1541
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->commentCursor:I

    .line 1543
    :cond_0
    return-void
.end method

.method private matchChar(I)Z
    .locals 2
    .parameter "test"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1283
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getCharIgnoreLineEnd()I

    move-result v0

    .line 1284
    .local v0, c:I
    if-ne v0, p1, :cond_0

    .line 1285
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 1286
    const/4 v1, 0x1

    .line 1289
    :goto_0
    return v1

    .line 1288
    :cond_0
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->ungetCharIgnoreLineEnd(I)V

    .line 1289
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private peekChar()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1295
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    .line 1296
    .local v0, c:I
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    .line 1297
    return v0
.end method

.method private readCDATA()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x5d

    const/4 v3, 0x0

    .line 1183
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    .local v0, c:I
    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 1184
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1185
    if-ne v0, v4, :cond_1

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 1186
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    .line 1187
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1188
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v1

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_0

    .line 1189
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    .line 1190
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1191
    const/4 v1, 0x1

    .line 1202
    :goto_1
    return v1

    .line 1196
    :cond_1
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    goto :goto_0

    .line 1199
    :cond_2
    iput v3, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 1200
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 1201
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v2, "msg.XML.bad.form"

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    move v1, v3

    .line 1202
    goto :goto_1
.end method

.method private readEntity()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1210
    const/4 v1, 0x1

    .line 1211
    .local v1, declTags:I
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    .local v0, c:I
    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 1212
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1213
    packed-switch v0, :pswitch_data_0

    .line 1211
    :cond_0
    :goto_1
    :pswitch_0
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    goto :goto_0

    .line 1215
    :pswitch_1
    add-int/lit8 v1, v1, 0x1

    .line 1216
    goto :goto_1

    .line 1218
    :pswitch_2
    add-int/lit8 v1, v1, -0x1

    .line 1219
    if-nez v1, :cond_0

    const/4 v2, 0x1

    .line 1227
    :goto_2
    return v2

    .line 1224
    :cond_1
    iput v4, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 1225
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 1226
    iget-object v2, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v3, "msg.XML.bad.form"

    invoke-virtual {v2, v3}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    move v2, v4

    .line 1227
    goto :goto_2

    .line 1213
    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private readPI()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1235
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    .local v0, c:I
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1236
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1237
    const/16 v1, 0x3f

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v1

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_0

    .line 1238
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    .line 1239
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1240
    const/4 v1, 0x1

    .line 1247
    :goto_1
    return v1

    .line 1235
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    goto :goto_0

    .line 1244
    :cond_1
    iput v3, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 1245
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 1246
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v2, "msg.XML.bad.form"

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    move v1, v3

    .line 1247
    goto :goto_1
.end method

.method private readQuotedString(I)Z
    .locals 4
    .parameter "quote"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1140
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    .local v0, c:I
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1141
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1142
    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    .line 1148
    :goto_1
    return v1

    .line 1140
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    goto :goto_0

    .line 1145
    :cond_1
    iput v3, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 1146
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 1147
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v2, "msg.XML.bad.form"

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    move v1, v3

    .line 1148
    goto :goto_1
.end method

.method private readXmlComment()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x2d

    const/4 v3, 0x0

    .line 1156
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    .local v0, c:I
    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 1157
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1158
    if-ne v0, v4, :cond_1

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 1159
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    .line 1160
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1161
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v1

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_0

    .line 1162
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    .line 1163
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1164
    const/4 v1, 0x1

    .line 1175
    :goto_1
    return v1

    .line 1169
    :cond_1
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    goto :goto_0

    .line 1172
    :cond_2
    iput v3, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 1173
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 1174
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v2, "msg.XML.bad.form"

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    move v1, v3

    .line 1175
    goto :goto_1
.end method

.method private skipLine()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1412
    :cond_0
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    .local v0, c:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 1413
    :cond_1
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    .line 1414
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 1415
    return-void
.end method

.method private static stringToKeyword(Ljava/lang/String;)I
    .locals 4
    .parameter "name"

    .prologue
    .line 126
    const/16 v0, 0x78

    .line 127
    .local v0, Id_break:I
    const/16 v0, 0x73

    .line 128
    .local v0, Id_case:I
    const/16 v0, 0x79

    .line 129
    .local v0, Id_continue:I
    const/16 v0, 0x74

    .line 130
    .local v0, Id_default:I
    const/16 v0, 0x1f

    .line 131
    .local v0, Id_delete:I
    const/16 v0, 0x76

    .line 132
    .local v0, Id_do:I
    const/16 v0, 0x71

    .line 133
    .local v0, Id_else:I
    const/16 v0, 0x7f

    .line 134
    .local v0, Id_export:I
    const/16 v0, 0x2c

    .line 135
    .local v0, Id_false:I
    const/16 v0, 0x77

    .line 136
    .local v0, Id_for:I
    const/16 v0, 0x6d

    .line 137
    .local v0, Id_function:I
    const/16 v0, 0x70

    .line 138
    .local v0, Id_if:I
    const/16 v0, 0x34

    .line 139
    .local v0, Id_in:I
    const/16 v0, 0x99

    .line 140
    .local v0, Id_let:I
    const/16 v0, 0x1e

    .line 141
    .local v0, Id_new:I
    const/16 v0, 0x2a

    .line 142
    .local v0, Id_null:I
    const/4 v0, 0x4

    .line 143
    .local v0, Id_return:I
    const/16 v0, 0x72

    .line 144
    .local v0, Id_switch:I
    const/16 v0, 0x2b

    .line 145
    .local v0, Id_this:I
    const/16 v0, 0x2d

    .line 146
    .local v0, Id_true:I
    const/16 v0, 0x20

    .line 147
    .local v0, Id_typeof:I
    const/16 v0, 0x7a

    .line 148
    .local v0, Id_var:I
    const/16 v0, 0x7e

    .line 149
    .local v0, Id_void:I
    const/16 v0, 0x75

    .line 150
    .local v0, Id_while:I
    const/16 v0, 0x7b

    .line 151
    .local v0, Id_with:I
    const/16 v0, 0x48

    .line 154
    .local v0, Id_yield:I
    const/16 v0, 0x7f

    .line 155
    .local v0, Id_abstract:I
    const/16 v0, 0x7f

    .line 156
    .local v0, Id_boolean:I
    const/16 v0, 0x7f

    .line 157
    .local v0, Id_byte:I
    const/16 v0, 0x7c

    .line 158
    .local v0, Id_catch:I
    const/16 v0, 0x7f

    .line 159
    .local v0, Id_char:I
    const/16 v0, 0x7f

    .line 160
    .local v0, Id_class:I
    const/16 v0, 0x9a

    .line 161
    .local v0, Id_const:I
    const/16 v0, 0xa0

    .line 162
    .local v0, Id_debugger:I
    const/16 v0, 0x7f

    .line 163
    .local v0, Id_double:I
    const/16 v0, 0x7f

    .line 164
    .local v0, Id_enum:I
    const/16 v0, 0x7f

    .line 165
    .local v0, Id_extends:I
    const/16 v0, 0x7f

    .line 166
    .local v0, Id_final:I
    const/16 v0, 0x7d

    .line 167
    .local v0, Id_finally:I
    const/16 v0, 0x7f

    .line 168
    .local v0, Id_float:I
    const/16 v0, 0x7f

    .line 169
    .local v0, Id_goto:I
    const/16 v0, 0x7f

    .line 170
    .local v0, Id_implements:I
    const/16 v0, 0x7f

    .line 171
    .local v0, Id_import:I
    const/16 v0, 0x35

    .line 172
    .local v0, Id_instanceof:I
    const/16 v0, 0x7f

    .line 173
    .local v0, Id_int:I
    const/16 v0, 0x7f

    .line 174
    .local v0, Id_interface:I
    const/16 v0, 0x7f

    .line 175
    .local v0, Id_long:I
    const/16 v0, 0x7f

    .line 176
    .local v0, Id_native:I
    const/16 v0, 0x7f

    .line 177
    .local v0, Id_package:I
    const/16 v0, 0x7f

    .line 178
    .local v0, Id_private:I
    const/16 v0, 0x7f

    .line 179
    .local v0, Id_protected:I
    const/16 v0, 0x7f

    .line 180
    .local v0, Id_public:I
    const/16 v0, 0x7f

    .line 181
    .local v0, Id_short:I
    const/16 v0, 0x7f

    .line 182
    .local v0, Id_static:I
    const/16 v0, 0x7f

    .line 183
    .local v0, Id_super:I
    const/16 v0, 0x7f

    .line 184
    .local v0, Id_synchronized:I
    const/16 v0, 0x32

    .line 185
    .local v0, Id_throw:I
    const/16 v0, 0x7f

    .line 186
    .local v0, Id_throws:I
    const/16 v0, 0x7f

    .line 187
    .local v0, Id_transient:I
    const/16 v0, 0x51

    .line 188
    .local v0, Id_try:I
    const/16 v0, 0x7f

    .line 191
    .local v0, Id_volatile:I
    move-object v2, p0

    .line 193
    .local v2, s:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, id:I
    const/4 p0, 0x0

    .line 194
    .local p0, X:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .end local v0           #Id_volatile:I
    packed-switch v0, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v0, v1

    .line 289
    .end local v1           #id:I
    .local v0, id:I
    :goto_0
    if-eqz p0, :cond_1

    if-eq p0, v2, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 293
    :cond_1
    :goto_1
    if-nez v0, :cond_e

    const/4 p0, 0x0

    .line 294
    .end local p0           #X:Ljava/lang/String;
    :goto_2
    return p0

    .line 195
    .end local v0           #id:I
    .restart local v1       #id:I
    .restart local p0       #X:Ljava/lang/String;
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 196
    .local v0, c:I
    const/16 v3, 0x66

    if-ne v0, v3, :cond_2

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    .end local v0           #c:I
    move-result v0

    const/16 v3, 0x69

    if-ne v0, v3, :cond_0

    const/16 v0, 0x70

    .end local v1           #id:I
    .local v0, id:I
    goto :goto_1

    .line 197
    .local v0, c:I
    .restart local v1       #id:I
    :cond_2
    const/16 v3, 0x6e

    if-ne v0, v3, :cond_3

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    .end local v0           #c:I
    move-result v0

    const/16 v3, 0x69

    if-ne v0, v3, :cond_0

    const/16 v0, 0x34

    .end local v1           #id:I
    .local v0, id:I
    goto :goto_1

    .line 198
    .local v0, c:I
    .restart local v1       #id:I
    :cond_3
    const/16 v3, 0x6f

    if-ne v0, v3, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    .end local v0           #c:I
    move-result v0

    const/16 v3, 0x64

    if-ne v0, v3, :cond_0

    const/16 v0, 0x76

    .end local v1           #id:I
    .local v0, id:I
    goto :goto_1

    .line 200
    .end local v0           #id:I
    .restart local v1       #id:I
    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    move v0, v1

    .line 207
    .end local v1           #id:I
    .restart local v0       #id:I
    goto :goto_0

    .line 201
    .end local v0           #id:I
    .restart local v1       #id:I
    :sswitch_0
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x72

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x6f

    if-ne v0, v3, :cond_0

    const/16 v0, 0x77

    .end local v1           #id:I
    .restart local v0       #id:I
    goto :goto_1

    .line 202
    .end local v0           #id:I
    .restart local v1       #id:I
    :sswitch_1
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x74

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x6e

    if-ne v0, v3, :cond_0

    const/16 v0, 0x7f

    .end local v1           #id:I
    .restart local v0       #id:I
    goto :goto_1

    .line 203
    .end local v0           #id:I
    .restart local v1       #id:I
    :sswitch_2
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x74

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x65

    if-ne v0, v3, :cond_0

    const/16 v0, 0x99

    .end local v1           #id:I
    .restart local v0       #id:I
    goto/16 :goto_1

    .line 204
    .end local v0           #id:I
    .restart local v1       #id:I
    :sswitch_3
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x77

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x65

    if-ne v0, v3, :cond_0

    const/16 v0, 0x1e

    .end local v1           #id:I
    .restart local v0       #id:I
    goto/16 :goto_1

    .line 205
    .end local v0           #id:I
    .restart local v1       #id:I
    :sswitch_4
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x79

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x72

    if-ne v0, v3, :cond_0

    const/16 v0, 0x51

    .end local v1           #id:I
    .restart local v0       #id:I
    goto/16 :goto_1

    .line 206
    .end local v0           #id:I
    .restart local v1       #id:I
    :sswitch_5
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x72

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x61

    if-ne v0, v3, :cond_0

    const/16 v0, 0x7a

    .end local v1           #id:I
    .restart local v0       #id:I
    goto/16 :goto_1

    .line 208
    .end local v0           #id:I
    .restart local v1       #id:I
    :pswitch_3
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_1

    move v0, v1

    .line 227
    .end local v1           #id:I
    .restart local v0       #id:I
    goto/16 :goto_0

    .line 209
    .end local v0           #id:I
    .restart local v1       #id:I
    :sswitch_6
    const-string p0, "byte"

    const/16 v0, 0x7f

    .end local v1           #id:I
    .restart local v0       #id:I
    goto/16 :goto_0

    .line 210
    .end local v0           #id:I
    .restart local v1       #id:I
    :sswitch_7
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 211
    .local v0, c:I
    const/16 v3, 0x65

    if-ne v0, v3, :cond_4

    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    .end local v0           #c:I
    move-result v0

    const/16 v3, 0x73

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x61

    if-ne v0, v3, :cond_0

    const/16 v0, 0x73

    .end local v1           #id:I
    .local v0, id:I
    goto/16 :goto_1

    .line 212
    .local v0, c:I
    .restart local v1       #id:I
    :cond_4
    const/16 v3, 0x72

    if-ne v0, v3, :cond_0

    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    .end local v0           #c:I
    move-result v0

    const/16 v3, 0x61

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x68

    if-ne v0, v3, :cond_0

    const/16 v0, 0x7f

    .end local v1           #id:I
    .local v0, id:I
    goto/16 :goto_1

    .line 214
    .end local v0           #id:I
    .restart local v1       #id:I
    :sswitch_8
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 215
    .local v0, c:I
    const/16 v3, 0x65

    if-ne v0, v3, :cond_5

    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    .end local v0           #c:I
    move-result v0

    const/16 v3, 0x73

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x6c

    if-ne v0, v3, :cond_0

    const/16 v0, 0x71

    .end local v1           #id:I
    .local v0, id:I
    goto/16 :goto_1

    .line 216
    .local v0, c:I
    .restart local v1       #id:I
    :cond_5
    const/16 v3, 0x6d

    if-ne v0, v3, :cond_0

    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    .end local v0           #c:I
    move-result v0

    const/16 v3, 0x75

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x6e

    if-ne v0, v3, :cond_0

    const/16 v0, 0x7f

    .end local v1           #id:I
    .local v0, id:I
    goto/16 :goto_1

    .line 218
    .end local v0           #id:I
    .restart local v1       #id:I
    :sswitch_9
    const-string p0, "goto"

    const/16 v0, 0x7f

    .end local v1           #id:I
    .restart local v0       #id:I
    goto/16 :goto_0

    .line 219
    .end local v0           #id:I
    .restart local v1       #id:I
    :sswitch_a
    const-string p0, "long"

    const/16 v0, 0x7f

    .end local v1           #id:I
    .restart local v0       #id:I
    goto/16 :goto_0

    .line 220
    .end local v0           #id:I
    .restart local v1       #id:I
    :sswitch_b
    const-string p0, "null"

    const/16 v0, 0x2a

    .end local v1           #id:I
    .restart local v0       #id:I
    goto/16 :goto_0

    .line 221
    .end local v0           #id:I
    .restart local v1       #id:I
    :sswitch_c
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 222
    .local v0, c:I
    const/16 v3, 0x65

    if-ne v0, v3, :cond_6

    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    .end local v0           #c:I
    move-result v0

    const/16 v3, 0x75

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x72

    if-ne v0, v3, :cond_0

    const/16 v0, 0x2d

    .end local v1           #id:I
    .local v0, id:I
    goto/16 :goto_1

    .line 223
    .local v0, c:I
    .restart local v1       #id:I
    :cond_6
    const/16 v3, 0x73

    if-ne v0, v3, :cond_0

    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    .end local v0           #c:I
    move-result v0

    const/16 v3, 0x69

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x68

    if-ne v0, v3, :cond_0

    const/16 v0, 0x2b

    .end local v1           #id:I
    .local v0, id:I
    goto/16 :goto_1

    .line 225
    .end local v0           #id:I
    .restart local v1       #id:I
    :sswitch_d
    const-string p0, "void"

    const/16 v0, 0x7e

    .end local v1           #id:I
    .restart local v0       #id:I
    goto/16 :goto_0

    .line 226
    .end local v0           #id:I
    .restart local v1       #id:I
    :sswitch_e
    const-string p0, "with"

    const/16 v0, 0x7b

    .end local v1           #id:I
    .restart local v0       #id:I
    goto/16 :goto_0

    .line 228
    .end local v0           #id:I
    .restart local v1       #id:I
    :pswitch_4
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_1

    :pswitch_5
    move v0, v1

    .line 247
    .end local v1           #id:I
    .restart local v0       #id:I
    goto/16 :goto_0

    .line 229
    .end local v0           #id:I
    .restart local v1       #id:I
    :pswitch_6
    const-string p0, "class"

    const/16 v0, 0x7f

    .end local v1           #id:I
    .restart local v0       #id:I
    goto/16 :goto_0

    .line 230
    .end local v0           #id:I
    .restart local v1       #id:I
    :pswitch_7
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 231
    .local v0, c:I
    const/16 v3, 0x62

    if-ne v0, v3, :cond_7

    const-string p0, "break"

    const/16 v0, 0x78

    .end local v1           #id:I
    .local v0, id:I
    goto/16 :goto_0

    .line 232
    .local v0, c:I
    .restart local v1       #id:I
    :cond_7
    const/16 v3, 0x79

    if-ne v0, v3, :cond_0

    const-string p0, "yield"

    const/16 v0, 0x48

    .end local v1           #id:I
    .local v0, id:I
    goto/16 :goto_0

    .line 234
    .end local v0           #id:I
    .restart local v1       #id:I
    :pswitch_8
    const-string p0, "while"

    const/16 v0, 0x75

    .end local v1           #id:I
    .restart local v0       #id:I
    goto/16 :goto_0

    .line 235
    .end local v0           #id:I
    .restart local v1       #id:I
    :pswitch_9
    const-string p0, "false"

    const/16 v0, 0x2c

    .end local v1           #id:I
    .restart local v0       #id:I
    goto/16 :goto_0

    .line 236
    .end local v0           #id:I
    .restart local v1       #id:I
    :pswitch_a
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 237
    .local v0, c:I
    const/16 v3, 0x63

    if-ne v0, v3, :cond_8

    const-string p0, "const"

    const/16 v0, 0x9a

    .end local v1           #id:I
    .local v0, id:I
    goto/16 :goto_0

    .line 238
    .local v0, c:I
    .restart local v1       #id:I
    :cond_8
    const/16 v3, 0x66

    if-ne v0, v3, :cond_0

    const-string p0, "final"

    const/16 v0, 0x7f

    .end local v1           #id:I
    .local v0, id:I
    goto/16 :goto_0

    .line 240
    .end local v0           #id:I
    .restart local v1       #id:I
    :pswitch_b
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 241
    .local v0, c:I
    const/16 v3, 0x66

    if-ne v0, v3, :cond_9

    const-string p0, "float"

    const/16 v0, 0x7f

    .end local v1           #id:I
    .local v0, id:I
    goto/16 :goto_0

    .line 242
    .local v0, c:I
    .restart local v1       #id:I
    :cond_9
    const/16 v3, 0x73

    if-ne v0, v3, :cond_0

    const-string p0, "short"

    const/16 v0, 0x7f

    .end local v1           #id:I
    .local v0, id:I
    goto/16 :goto_0

    .line 244
    .end local v0           #id:I
    .restart local v1       #id:I
    :pswitch_c
    const-string p0, "super"

    const/16 v0, 0x7f

    .end local v1           #id:I
    .restart local v0       #id:I
    goto/16 :goto_0

    .line 245
    .end local v0           #id:I
    .restart local v1       #id:I
    :pswitch_d
    const-string p0, "throw"

    const/16 v0, 0x32

    .end local v1           #id:I
    .restart local v0       #id:I
    goto/16 :goto_0

    .line 246
    .end local v0           #id:I
    .restart local v1       #id:I
    :pswitch_e
    const-string p0, "catch"

    const/16 v0, 0x7c

    .end local v1           #id:I
    .restart local v0       #id:I
    goto/16 :goto_0

    .line 248
    .end local v0           #id:I
    .restart local v1       #id:I
    :pswitch_f
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_2

    move v0, v1

    .line 262
    .end local v1           #id:I
    .restart local v0       #id:I
    goto/16 :goto_0

    .line 249
    .end local v0           #id:I
    .restart local v1       #id:I
    :sswitch_f
    const-string p0, "native"

    const/16 v0, 0x7f

    .end local v1           #id:I
    .restart local v0       #id:I
    goto/16 :goto_0

    .line 250
    .end local v0           #id:I
    .restart local v1       #id:I
    :sswitch_10
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 251
    .local v0, c:I
    const/16 v3, 0x64

    if-ne v0, v3, :cond_a

    const-string p0, "delete"

    const/16 v0, 0x1f

    .end local v1           #id:I
    .local v0, id:I
    goto/16 :goto_0

    .line 252
    .local v0, c:I
    .restart local v1       #id:I
    :cond_a
    const/16 v3, 0x72

    if-ne v0, v3, :cond_0

    const-string p0, "return"

    const/4 v0, 0x4

    .end local v1           #id:I
    .local v0, id:I
    goto/16 :goto_0

    .line 254
    .end local v0           #id:I
    .restart local v1       #id:I
    :sswitch_11
    const-string p0, "throws"

    const/16 v0, 0x7f

    .end local v1           #id:I
    .restart local v0       #id:I
    goto/16 :goto_0

    .line 255
    .end local v0           #id:I
    .restart local v1       #id:I
    :sswitch_12
    const-string p0, "import"

    const/16 v0, 0x7f

    .end local v1           #id:I
    .restart local v0       #id:I
    goto/16 :goto_0

    .line 256
    .end local v0           #id:I
    .restart local v1       #id:I
    :sswitch_13
    const-string p0, "double"

    const/16 v0, 0x7f

    .end local v1           #id:I
    .restart local v0       #id:I
    goto/16 :goto_0

    .line 257
    .end local v0           #id:I
    .restart local v1       #id:I
    :sswitch_14
    const-string p0, "static"

    const/16 v0, 0x7f

    .end local v1           #id:I
    .restart local v0       #id:I
    goto/16 :goto_0

    .line 258
    .end local v0           #id:I
    .restart local v1       #id:I
    :sswitch_15
    const-string p0, "public"

    const/16 v0, 0x7f

    .end local v1           #id:I
    .restart local v0       #id:I
    goto/16 :goto_0

    .line 259
    .end local v0           #id:I
    .restart local v1       #id:I
    :sswitch_16
    const-string p0, "switch"

    const/16 v0, 0x72

    .end local v1           #id:I
    .restart local v0       #id:I
    goto/16 :goto_0

    .line 260
    .end local v0           #id:I
    .restart local v1       #id:I
    :sswitch_17
    const-string p0, "export"

    const/16 v0, 0x7f

    .end local v1           #id:I
    .restart local v0       #id:I
    goto/16 :goto_0

    .line 261
    .end local v0           #id:I
    .restart local v1       #id:I
    :sswitch_18
    const-string p0, "typeof"

    const/16 v0, 0x20

    .end local v1           #id:I
    .restart local v0       #id:I
    goto/16 :goto_0

    .line 263
    .end local v0           #id:I
    .restart local v1       #id:I
    :pswitch_10
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_3

    move v0, v1

    .line 270
    .end local v1           #id:I
    .restart local v0       #id:I
    goto/16 :goto_0

    .line 264
    .end local v0           #id:I
    .restart local v1       #id:I
    :sswitch_19
    const-string p0, "package"

    const/16 v0, 0x7f

    .end local v1           #id:I
    .restart local v0       #id:I
    goto/16 :goto_0

    .line 265
    .end local v0           #id:I
    .restart local v1       #id:I
    :sswitch_1a
    const-string p0, "default"

    const/16 v0, 0x74

    .end local v1           #id:I
    .restart local v0       #id:I
    goto/16 :goto_0

    .line 266
    .end local v0           #id:I
    .restart local v1       #id:I
    :sswitch_1b
    const-string p0, "finally"

    const/16 v0, 0x7d

    .end local v1           #id:I
    .restart local v0       #id:I
    goto/16 :goto_0

    .line 267
    .end local v0           #id:I
    .restart local v1       #id:I
    :sswitch_1c
    const-string p0, "boolean"

    const/16 v0, 0x7f

    .end local v1           #id:I
    .restart local v0       #id:I
    goto/16 :goto_0

    .line 268
    .end local v0           #id:I
    .restart local v1       #id:I
    :sswitch_1d
    const-string p0, "private"

    const/16 v0, 0x7f

    .end local v1           #id:I
    .restart local v0       #id:I
    goto/16 :goto_0

    .line 269
    .end local v0           #id:I
    .restart local v1       #id:I
    :sswitch_1e
    const-string p0, "extends"

    const/16 v0, 0x7f

    .end local v1           #id:I
    .restart local v0       #id:I
    goto/16 :goto_0

    .line 271
    .end local v0           #id:I
    .restart local v1       #id:I
    :pswitch_11
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_4

    move v0, v1

    .line 277
    .end local v1           #id:I
    .restart local v0       #id:I
    goto/16 :goto_0

    .line 272
    .end local v0           #id:I
    .restart local v1       #id:I
    :sswitch_1f
    const-string p0, "abstract"

    const/16 v0, 0x7f

    .end local v1           #id:I
    .restart local v0       #id:I
    goto/16 :goto_0

    .line 273
    .end local v0           #id:I
    .restart local v1       #id:I
    :sswitch_20
    const-string p0, "continue"

    const/16 v0, 0x79

    .end local v1           #id:I
    .restart local v0       #id:I
    goto/16 :goto_0

    .line 274
    .end local v0           #id:I
    .restart local v1       #id:I
    :sswitch_21
    const-string p0, "debugger"

    const/16 v0, 0xa0

    .end local v1           #id:I
    .restart local v0       #id:I
    goto/16 :goto_0

    .line 275
    .end local v0           #id:I
    .restart local v1       #id:I
    :sswitch_22
    const-string p0, "function"

    const/16 v0, 0x6d

    .end local v1           #id:I
    .restart local v0       #id:I
    goto/16 :goto_0

    .line 276
    .end local v0           #id:I
    .restart local v1       #id:I
    :sswitch_23
    const-string p0, "volatile"

    const/16 v0, 0x7f

    .end local v1           #id:I
    .restart local v0       #id:I
    goto/16 :goto_0

    .line 278
    .end local v0           #id:I
    .restart local v1       #id:I
    :pswitch_12
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 279
    .local v0, c:I
    const/16 v3, 0x69

    if-ne v0, v3, :cond_b

    const-string p0, "interface"

    const/16 v0, 0x7f

    .end local v1           #id:I
    .local v0, id:I
    goto/16 :goto_0

    .line 280
    .local v0, c:I
    .restart local v1       #id:I
    :cond_b
    const/16 v3, 0x70

    if-ne v0, v3, :cond_c

    const-string p0, "protected"

    const/16 v0, 0x7f

    .end local v1           #id:I
    .local v0, id:I
    goto/16 :goto_0

    .line 281
    .local v0, c:I
    .restart local v1       #id:I
    :cond_c
    const/16 v3, 0x74

    if-ne v0, v3, :cond_0

    const-string p0, "transient"

    const/16 v0, 0x7f

    .end local v1           #id:I
    .local v0, id:I
    goto/16 :goto_0

    .line 283
    .end local v0           #id:I
    .restart local v1       #id:I
    :pswitch_13
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 284
    .local v0, c:I
    const/16 v3, 0x6d

    if-ne v0, v3, :cond_d

    const-string p0, "implements"

    const/16 v0, 0x7f

    .end local v1           #id:I
    .local v0, id:I
    goto/16 :goto_0

    .line 285
    .local v0, c:I
    .restart local v1       #id:I
    :cond_d
    const/16 v3, 0x6e

    if-ne v0, v3, :cond_0

    const-string p0, "instanceof"

    const/16 v0, 0x35

    .end local v1           #id:I
    .local v0, id:I
    goto/16 :goto_0

    .line 287
    .end local v0           #id:I
    .restart local v1       #id:I
    :pswitch_14
    const-string p0, "synchronized"

    const/16 v0, 0x7f

    .end local v1           #id:I
    .restart local v0       #id:I
    goto/16 :goto_0

    .line 294
    :cond_e
    and-int/lit16 p0, v0, 0xff

    goto/16 :goto_2

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_14
    .end packed-switch

    .line 200
    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_0
        0x69 -> :sswitch_1
        0x6c -> :sswitch_2
        0x6e -> :sswitch_3
        0x74 -> :sswitch_4
        0x76 -> :sswitch_5
    .end sparse-switch

    .line 208
    :sswitch_data_1
    .sparse-switch
        0x62 -> :sswitch_6
        0x63 -> :sswitch_7
        0x65 -> :sswitch_8
        0x67 -> :sswitch_9
        0x6c -> :sswitch_a
        0x6e -> :sswitch_b
        0x74 -> :sswitch_c
        0x76 -> :sswitch_d
        0x77 -> :sswitch_e
    .end sparse-switch

    .line 228
    :pswitch_data_1
    .packed-switch 0x61
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_8
        :pswitch_5
        :pswitch_5
        :pswitch_9
        :pswitch_5
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_5
        :pswitch_d
        :pswitch_5
        :pswitch_e
    .end packed-switch

    .line 248
    :sswitch_data_2
    .sparse-switch
        0x61 -> :sswitch_f
        0x65 -> :sswitch_10
        0x68 -> :sswitch_11
        0x6d -> :sswitch_12
        0x6f -> :sswitch_13
        0x74 -> :sswitch_14
        0x75 -> :sswitch_15
        0x77 -> :sswitch_16
        0x78 -> :sswitch_17
        0x79 -> :sswitch_18
    .end sparse-switch

    .line 263
    :sswitch_data_3
    .sparse-switch
        0x61 -> :sswitch_19
        0x65 -> :sswitch_1a
        0x69 -> :sswitch_1b
        0x6f -> :sswitch_1c
        0x72 -> :sswitch_1d
        0x78 -> :sswitch_1e
    .end sparse-switch

    .line 271
    :sswitch_data_4
    .sparse-switch
        0x61 -> :sswitch_1f
        0x63 -> :sswitch_20
        0x64 -> :sswitch_21
        0x66 -> :sswitch_22
        0x76 -> :sswitch_23
    .end sparse-switch
.end method

.method private ungetChar(I)V
    .locals 4
    .parameter "c"

    .prologue
    const/4 v3, 0x1

    .line 1275
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetBuffer:[I

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    sub-int/2addr v1, v3

    aget v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 1276
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 1277
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetBuffer:[I

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    aput p1, v0, v1

    .line 1278
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    sub-int/2addr v0, v3

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 1279
    return-void
.end method

.method private ungetCharIgnoreLineEnd(I)V
    .locals 3
    .parameter "c"

    .prologue
    .line 1404
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->ungetBuffer:[I

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/javascript/TokenStream;->ungetCursor:I

    aput p1, v0, v1

    .line 1405
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    .line 1406
    return-void
.end method


# virtual methods
.method final eof()Z
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->hitEOF:Z

    return v0
.end method

.method final getAndResetCurrentComment()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1550
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1551
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->isMarkingComment()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 1552
    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1559
    :goto_0
    return-object v1

    .line 1554
    :cond_1
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->isMarkingComment()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 1555
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->commentPrefix:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1556
    .local v0, comment:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->commentCursor:I

    invoke-virtual {p0}, Lorg/mozilla/javascript/TokenStream;->getTokenLength()I

    move-result v3

    iget-object v4, p0, Lorg/mozilla/javascript/TokenStream;->commentPrefix:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1558
    const/4 v1, -0x1

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->commentCursor:I

    .line 1559
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getCommentType()Lorg/mozilla/javascript/Token$CommentType;
    .locals 1

    .prologue
    .line 1531
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    return-object v0
.end method

.method public getCursor()I
    .locals 1

    .prologue
    .line 1502
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    return v0
.end method

.method getFirstXMLToken()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 974
    iput v0, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    .line 975
    iput-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsAttribute:Z

    .line 976
    iput-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsTagContent:Z

    .line 977
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->canUngetChar()Z

    move-result v0

    if-nez v0, :cond_0

    .line 978
    const/4 v0, -0x1

    .line 980
    :goto_0
    return v0

    .line 979
    :cond_0
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    .line 980
    invoke-virtual {p0}, Lorg/mozilla/javascript/TokenStream;->getNextXMLToken()I

    move-result v0

    goto :goto_0
.end method

.method final getLine()Ljava/lang/String;
    .locals 8

    .prologue
    .line 1429
    iget-object v5, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 1431
    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    .line 1432
    .local v3, lineEnd:I
    iget v5, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    if-ltz v5, :cond_2

    .line 1433
    add-int/lit8 v3, v3, -0x1

    .line 1442
    :cond_0
    :goto_0
    iget-object v5, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    iget v6, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1469
    .end local v3           #lineEnd:I
    :goto_1
    return-object v5

    .line 1435
    .local v0, c:I
    .restart local v3       #lineEnd:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .end local v0           #c:I
    :cond_2
    iget v5, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    if-eq v3, v5, :cond_0

    .line 1436
    iget-object v5, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1437
    .restart local v0       #c:I
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 1445
    .end local v0           #c:I
    .end local v3           #lineEnd:I
    :cond_3
    iget v5, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    iget v6, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    sub-int v4, v5, v6

    .line 1446
    .local v4, lineLength:I
    iget v5, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    if-ltz v5, :cond_6

    .line 1447
    add-int/lit8 v4, v4, -0x1

    .line 1469
    :cond_4
    :goto_2
    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    iget v7, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    invoke-direct {v5, v6, v7, v4}, Ljava/lang/String;-><init>([CII)V

    goto :goto_1

    .line 1450
    .restart local v0       #c:I
    .local v1, i:I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 1451
    .end local v0           #c:I
    .end local v1           #i:I
    :cond_6
    iget v5, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    add-int v1, v5, v4

    .line 1452
    .restart local v1       #i:I
    iget v5, p0, Lorg/mozilla/javascript/TokenStream;->sourceEnd:I

    if-ne v1, v5, :cond_7

    .line 1454
    :try_start_0
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->fillSourceBuffer()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_4

    .line 1461
    iget v5, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    add-int v1, v5, v4

    .line 1463
    :cond_7
    iget-object v5, p0, Lorg/mozilla/javascript/TokenStream;->sourceBuffer:[C

    aget-char v0, v5, v1

    .line 1464
    .restart local v0       #c:I
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    .line 1455
    .end local v0           #c:I
    :catch_0
    move-exception v2

    .line 1457
    .local v2, ioe:Ljava/io/IOException;
    goto :goto_2
.end method

.method final getLineno()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->lineno:I

    return v0
.end method

.method getNextXMLToken()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x41

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 985
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 986
    iput v4, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 988
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    .local v0, c:I
    :goto_0
    if-eq v0, v3, :cond_6

    .line 989
    iget-boolean v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsTagContent:Z

    if-eqz v1, :cond_1

    .line 990
    sparse-switch v0, :sswitch_data_0

    .line 1025
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1026
    iput-boolean v4, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsAttribute:Z

    .line 1030
    :cond_0
    :goto_1
    iget-boolean v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsTagContent:Z

    if-nez v1, :cond_2

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    if-nez v1, :cond_2

    .line 1031
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 1032
    const/16 v1, 0x94

    .line 1132
    :goto_2
    return v1

    .line 992
    :sswitch_0
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 993
    iput-boolean v4, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsTagContent:Z

    .line 994
    iput-boolean v4, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsAttribute:Z

    goto :goto_1

    .line 997
    :sswitch_1
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 998
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v1

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_0

    .line 999
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    .line 1000
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1001
    iput-boolean v4, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsTagContent:Z

    .line 1002
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    sub-int/2addr v1, v5

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    goto :goto_1

    .line 1006
    :sswitch_2
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    .line 1007
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 1008
    const/16 v1, 0x91

    goto :goto_2

    .line 1011
    :sswitch_3
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1012
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->readQuotedString(I)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_2

    .line 1015
    :sswitch_4
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1016
    iput-boolean v5, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsAttribute:Z

    goto :goto_1

    .line 1022
    :sswitch_5
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto :goto_1

    .line 1035
    :cond_1
    sparse-switch v0, :sswitch_data_1

    .line 1122
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 988
    :cond_2
    :goto_3
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    goto :goto_0

    .line 1037
    :sswitch_6
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1038
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v0

    .line 1039
    sparse-switch v0, :sswitch_data_2

    .line 1112
    iput-boolean v5, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsTagContent:Z

    .line 1113
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    goto :goto_3

    .line 1041
    :sswitch_7
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    .line 1042
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1043
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v0

    .line 1044
    sparse-switch v0, :sswitch_data_3

    .line 1087
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->readEntity()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v3

    goto :goto_2

    .line 1046
    :sswitch_8
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    .line 1047
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1048
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    .line 1049
    const/16 v1, 0x2d

    if-ne v0, v1, :cond_3

    .line 1050
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1051
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->readXmlComment()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v3

    goto/16 :goto_2

    .line 1054
    :cond_3
    iput v4, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 1055
    iput-object v7, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 1056
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v2, "msg.XML.bad.form"

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    move v1, v3

    .line 1057
    goto/16 :goto_2

    .line 1061
    :sswitch_9
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    .line 1062
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1063
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    const/16 v2, 0x43

    if-ne v1, v2, :cond_4

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    const/16 v2, 0x44

    if-ne v1, v2, :cond_4

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    if-ne v1, v6, :cond_4

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    const/16 v2, 0x54

    if-ne v1, v2, :cond_4

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    if-ne v1, v6, :cond_4

    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_4

    .line 1070
    const/16 v1, 0x43

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1071
    const/16 v1, 0x44

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1072
    invoke-direct {p0, v6}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1073
    const/16 v1, 0x54

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1074
    invoke-direct {p0, v6}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1075
    const/16 v1, 0x5b

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1076
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->readCDATA()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v3

    goto/16 :goto_2

    .line 1080
    :cond_4
    iput v4, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 1081
    iput-object v7, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 1082
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v2, "msg.XML.bad.form"

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    move v1, v3

    .line 1083
    goto/16 :goto_2

    .line 1092
    :sswitch_a
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    .line 1093
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1094
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->readPI()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v3

    goto/16 :goto_2

    .line 1098
    :sswitch_b
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    .line 1099
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 1100
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    if-nez v1, :cond_5

    .line 1102
    iput v4, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 1103
    iput-object v7, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 1104
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v2, "msg.XML.bad.form"

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    move v1, v3

    .line 1105
    goto/16 :goto_2

    .line 1107
    :cond_5
    iput-boolean v5, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsTagContent:Z

    .line 1108
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    sub-int/2addr v1, v5

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->xmlOpenTagsCount:I

    goto/16 :goto_3

    .line 1118
    :sswitch_c
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    .line 1119
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 1120
    const/16 v1, 0x91

    goto/16 :goto_2

    .line 1128
    :cond_6
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    iput v1, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 1129
    iput v4, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 1130
    iput-object v7, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 1131
    iget-object v1, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v2, "msg.XML.bad.form"

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    move v1, v3

    .line 1132
    goto/16 :goto_2

    .line 990
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_5
        0xa -> :sswitch_5
        0xd -> :sswitch_5
        0x20 -> :sswitch_5
        0x22 -> :sswitch_3
        0x27 -> :sswitch_3
        0x2f -> :sswitch_1
        0x3d -> :sswitch_4
        0x3e -> :sswitch_0
        0x7b -> :sswitch_2
    .end sparse-switch

    .line 1035
    :sswitch_data_1
    .sparse-switch
        0x3c -> :sswitch_6
        0x7b -> :sswitch_c
    .end sparse-switch

    .line 1039
    :sswitch_data_2
    .sparse-switch
        0x21 -> :sswitch_7
        0x2f -> :sswitch_b
        0x3f -> :sswitch_a
    .end sparse-switch

    .line 1044
    :sswitch_data_3
    .sparse-switch
        0x2d -> :sswitch_8
        0x5b -> :sswitch_9
    .end sparse-switch
.end method

.method final getNumber()D
    .locals 2

    .prologue
    .line 307
    iget-wide v0, p0, Lorg/mozilla/javascript/TokenStream;->number:D

    return-wide v0
.end method

.method final getOffset()I
    .locals 3

    .prologue
    .line 1422
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->sourceCursor:I

    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->lineStart:I

    sub-int v0, v1, v2

    .line 1423
    .local v0, n:I
    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->lineEndChar:I

    if-ltz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 1424
    :cond_0
    return v0
.end method

.method final getQuoteChar()C
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->quoteChar:I

    int-to-char v0, v0

    return v0
.end method

.method final getSourceString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->sourceString:Ljava/lang/String;

    return-object v0
.end method

.method final getString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    return-object v0
.end method

.method final getToken()I
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v4

    .line 321
    .local v4, c:I
    const/16 v21, -0x1

    move v0, v4

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 322
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    move/from16 v21, v0

    const/16 v22, 0x1

    sub-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 323
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 324
    const/16 v21, 0x0

    .line 862
    :goto_0
    return v21

    .line 325
    :cond_1
    const/16 v21, 0xa

    move v0, v4

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 326
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mozilla/javascript/TokenStream;->dirtyLine:Z

    .line 327
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    move/from16 v21, v0

    const/16 v22, 0x1

    sub-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 328
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 329
    const/16 v21, 0x1

    goto :goto_0

    .line 330
    :cond_2
    invoke-static {v4}, Lorg/mozilla/javascript/TokenStream;->isJSSpace(I)Z

    move-result v21

    if-nez v21, :cond_0

    .line 331
    const/16 v21, 0x2d

    move v0, v4

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    .line 332
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mozilla/javascript/TokenStream;->dirtyLine:Z

    .line 339
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    move/from16 v21, v0

    const/16 v22, 0x1

    sub-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 340
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 342
    const/16 v21, 0x40

    move v0, v4

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    const/16 v21, 0x93

    goto :goto_0

    .line 347
    :cond_4
    const/4 v15, 0x0

    .line 348
    .local v15, isUnicodeEscapeStart:Z
    const/16 v21, 0x5c

    move v0, v4

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 349
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v4

    .line 350
    const/16 v21, 0x75

    move v0, v4

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 351
    const/4 v13, 0x1

    .line 352
    .local v13, identifierStart:Z
    const/4 v15, 0x1

    .line 353
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 367
    :cond_5
    :goto_1
    if-eqz v13, :cond_15

    .line 368
    move v6, v15

    .line 370
    .local v6, containsEscape:Z
    :goto_2
    if-eqz v15, :cond_b

    .line 377
    const/4 v10, 0x0

    .line 378
    .local v10, escapeVal:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_3
    const/16 v21, 0x4

    move v0, v12

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    .line 379
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v4

    .line 380
    invoke-static {v4, v10}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v10

    .line 382
    if-gez v10, :cond_9

    .line 384
    :cond_6
    if-gez v10, :cond_a

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    move-object/from16 v21, v0

    const-string v22, "msg.invalid.escape"

    invoke-virtual/range {v21 .. v22}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    .line 386
    const/16 v21, -0x1

    goto/16 :goto_0

    .line 355
    .end local v6           #containsEscape:Z
    .end local v10           #escapeVal:I
    .end local v12           #i:I
    .end local v13           #identifierStart:Z
    :cond_7
    const/4 v13, 0x0

    .line 356
    .restart local v13       #identifierStart:Z
    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    .line 357
    const/16 v4, 0x5c

    goto :goto_1

    .line 360
    .end local v13           #identifierStart:Z
    :cond_8
    move v0, v4

    int-to-char v0, v0

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v13

    .line 361
    .restart local v13       #identifierStart:Z
    if-eqz v13, :cond_5

    .line 362
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 363
    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto :goto_1

    .line 378
    .restart local v6       #containsEscape:Z
    .restart local v10       #escapeVal:I
    .restart local v12       #i:I
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 388
    :cond_a
    move-object/from16 v0, p0

    move v1, v10

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 389
    const/4 v15, 0x0

    .line 390
    goto :goto_2

    .line 391
    .end local v10           #escapeVal:I
    .end local v12           #i:I
    :cond_b
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v4

    .line 392
    const/16 v21, 0x5c

    move v0, v4

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    .line 393
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v4

    .line 394
    const/16 v21, 0x75

    move v0, v4

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    .line 395
    const/4 v15, 0x1

    .line 396
    const/4 v6, 0x1

    goto :goto_2

    .line 398
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    move-object/from16 v21, v0

    const-string v22, "msg.illegal.character"

    invoke-virtual/range {v21 .. v22}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    .line 399
    const/16 v21, -0x1

    goto/16 :goto_0

    .line 402
    :cond_d
    const/16 v21, -0x1

    move v0, v4

    move/from16 v1, v21

    if-eq v0, v1, :cond_e

    const v21, 0xfeff

    move v0, v4

    move/from16 v1, v21

    if-eq v0, v1, :cond_e

    move v0, v4

    int-to-char v0, v0

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v21

    if-nez v21, :cond_11

    .line 411
    :cond_e
    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    .line 413
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    move-result-object v19

    .line 414
    .local v19, str:Ljava/lang/String;
    if-nez v6, :cond_14

    .line 419
    invoke-static/range {v19 .. v19}, Lorg/mozilla/javascript/TokenStream;->stringToKeyword(Ljava/lang/String;)I

    move-result v18

    .line 420
    .local v18, result:I
    if-eqz v18, :cond_14

    .line 421
    const/16 v21, 0x99

    move/from16 v0, v18

    move/from16 v1, v21

    if-eq v0, v1, :cond_f

    const/16 v21, 0x48

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_10

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/mozilla/javascript/CompilerEnvirons;->getLanguageVersion()I

    move-result v21

    const/16 v22, 0xaa

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_10

    .line 426
    const/16 v21, 0x99

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    const-string v21, "let"

    :goto_4
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 427
    const/16 v18, 0x27

    .line 429
    :cond_10
    const/16 v21, 0x7f

    move/from16 v0, v18

    move/from16 v1, v21

    if-eq v0, v1, :cond_13

    move/from16 v21, v18

    .line 430
    goto/16 :goto_0

    .line 407
    .end local v18           #result:I
    .end local v19           #str:Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto/16 :goto_2

    .line 426
    .restart local v18       #result:I
    .restart local v19       #str:Ljava/lang/String;
    :cond_12
    const-string v21, "yield"

    goto :goto_4

    .line 431
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/mozilla/javascript/Parser;->compilerEnv:Lorg/mozilla/javascript/CompilerEnvirons;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lorg/mozilla/javascript/CompilerEnvirons;->isReservedKeywordAsIdentifier()Z

    move-result v21

    if-nez v21, :cond_14

    move/from16 v21, v18

    .line 434
    goto/16 :goto_0

    .line 438
    .end local v18           #result:I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/TokenStream;->allStrings:Lorg/mozilla/javascript/ObjToIntMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ObjToIntMap;->intern(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 439
    const/16 v21, 0x27

    goto/16 :goto_0

    .line 443
    .end local v6           #containsEscape:Z
    .end local v19           #str:Ljava/lang/String;
    :cond_15
    invoke-static {v4}, Lorg/mozilla/javascript/TokenStream;->isDigit(I)Z

    move-result v21

    if-nez v21, :cond_16

    const/16 v21, 0x2e

    move v0, v4

    move/from16 v1, v21

    if-ne v0, v1, :cond_28

    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v21

    invoke-static/range {v21 .. v21}, Lorg/mozilla/javascript/TokenStream;->isDigit(I)Z

    move-result v21

    if-eqz v21, :cond_28

    .line 444
    :cond_16
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mozilla/javascript/TokenStream;->isOctal:Z

    .line 445
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 446
    const/16 v3, 0xa

    .line 448
    .local v3, base:I
    const/16 v21, 0x30

    move v0, v4

    move/from16 v1, v21

    if-ne v0, v1, :cond_18

    .line 449
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v4

    .line 450
    const/16 v21, 0x78

    move v0, v4

    move/from16 v1, v21

    if-eq v0, v1, :cond_17

    const/16 v21, 0x58

    move v0, v4

    move/from16 v1, v21

    if-ne v0, v1, :cond_19

    .line 451
    :cond_17
    const/16 v3, 0x10

    .line 452
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v4

    .line 461
    :cond_18
    :goto_5
    const/16 v21, 0x10

    move v0, v3

    move/from16 v1, v21

    if-ne v0, v1, :cond_1b

    .line 462
    :goto_6
    const/16 v21, 0x0

    move v0, v4

    move/from16 v1, v21

    invoke-static {v0, v1}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v21

    if-ltz v21, :cond_1e

    .line 463
    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 464
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v4

    goto :goto_6

    .line 453
    :cond_19
    invoke-static {v4}, Lorg/mozilla/javascript/TokenStream;->isDigit(I)Z

    move-result v21

    if-eqz v21, :cond_1a

    .line 454
    const/16 v3, 0x8

    .line 455
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mozilla/javascript/TokenStream;->isOctal:Z

    goto :goto_5

    .line 457
    :cond_1a
    const/16 v21, 0x30

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto :goto_5

    .line 467
    :cond_1b
    :goto_7
    const/16 v21, 0x30

    move/from16 v0, v21

    move v1, v4

    if-gt v0, v1, :cond_1e

    const/16 v21, 0x39

    move v0, v4

    move/from16 v1, v21

    if-gt v0, v1, :cond_1e

    .line 474
    const/16 v21, 0x8

    move v0, v3

    move/from16 v1, v21

    if-ne v0, v1, :cond_1c

    const/16 v21, 0x38

    move v0, v4

    move/from16 v1, v21

    if-lt v0, v1, :cond_1c

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    move-object/from16 v21, v0

    const-string v22, "msg.bad.octal.literal"

    const/16 v23, 0x38

    move v0, v4

    move/from16 v1, v23

    if-ne v0, v1, :cond_1d

    const-string v23, "8"

    :goto_8
    invoke-virtual/range {v21 .. v23}, Lorg/mozilla/javascript/Parser;->addWarning(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const/16 v3, 0xa

    .line 479
    :cond_1c
    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 480
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v4

    goto :goto_7

    .line 475
    :cond_1d
    const-string v23, "9"

    goto :goto_8

    .line 484
    :cond_1e
    const/4 v14, 0x1

    .line 486
    .local v14, isInteger:Z
    const/16 v21, 0xa

    move v0, v3

    move/from16 v1, v21

    if-ne v0, v1, :cond_26

    const/16 v21, 0x2e

    move v0, v4

    move/from16 v1, v21

    if-eq v0, v1, :cond_1f

    const/16 v21, 0x65

    move v0, v4

    move/from16 v1, v21

    if-eq v0, v1, :cond_1f

    const/16 v21, 0x45

    move v0, v4

    move/from16 v1, v21

    if-ne v0, v1, :cond_26

    .line 487
    :cond_1f
    const/4 v14, 0x0

    .line 488
    const/16 v21, 0x2e

    move v0, v4

    move/from16 v1, v21

    if-ne v0, v1, :cond_21

    .line 490
    :cond_20
    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 491
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v4

    .line 492
    invoke-static {v4}, Lorg/mozilla/javascript/TokenStream;->isDigit(I)Z

    move-result v21

    if-nez v21, :cond_20

    .line 494
    :cond_21
    const/16 v21, 0x65

    move v0, v4

    move/from16 v1, v21

    if-eq v0, v1, :cond_22

    const/16 v21, 0x45

    move v0, v4

    move/from16 v1, v21

    if-ne v0, v1, :cond_26

    .line 495
    :cond_22
    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 496
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v4

    .line 497
    const/16 v21, 0x2b

    move v0, v4

    move/from16 v1, v21

    if-eq v0, v1, :cond_23

    const/16 v21, 0x2d

    move v0, v4

    move/from16 v1, v21

    if-ne v0, v1, :cond_24

    .line 498
    :cond_23
    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 499
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v4

    .line 501
    :cond_24
    invoke-static {v4}, Lorg/mozilla/javascript/TokenStream;->isDigit(I)Z

    move-result v21

    if-nez v21, :cond_25

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    move-object/from16 v21, v0

    const-string v22, "msg.missing.exponent"

    invoke-virtual/range {v21 .. v22}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    .line 503
    const/16 v21, -0x1

    goto/16 :goto_0

    .line 506
    :cond_25
    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 507
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v4

    .line 508
    invoke-static {v4}, Lorg/mozilla/javascript/TokenStream;->isDigit(I)Z

    move-result v21

    if-nez v21, :cond_25

    .line 511
    :cond_26
    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    .line 512
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    move-result-object v17

    .line 513
    .local v17, numString:Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 516
    const/16 v21, 0xa

    move v0, v3

    move/from16 v1, v21

    if-ne v0, v1, :cond_27

    if-nez v14, :cond_27

    .line 519
    :try_start_0
    invoke-static/range {v17 .. v17}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v7

    .line 529
    .local v7, dval:D
    :goto_9
    move-wide v0, v7

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/mozilla/javascript/TokenStream;->number:D

    .line 530
    const/16 v21, 0x28

    goto/16 :goto_0

    .line 521
    .end local v7           #dval:D
    :catch_0
    move-exception v21

    move-object/from16 v11, v21

    .line 522
    .local v11, ex:Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    move-object/from16 v21, v0

    const-string v22, "msg.caught.nfe"

    invoke-virtual/range {v21 .. v22}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    .line 523
    const/16 v21, -0x1

    goto/16 :goto_0

    .line 526
    .end local v11           #ex:Ljava/lang/NumberFormatException;
    :cond_27
    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    move v2, v3

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->stringToNumber(Ljava/lang/String;II)D

    move-result-wide v7

    .restart local v7       #dval:D
    goto :goto_9

    .line 534
    .end local v3           #base:I
    .end local v7           #dval:D
    .end local v14           #isInteger:Z
    .end local v17           #numString:Ljava/lang/String;
    :cond_28
    const/16 v21, 0x22

    move v0, v4

    move/from16 v1, v21

    if-eq v0, v1, :cond_29

    const/16 v21, 0x27

    move v0, v4

    move/from16 v1, v21

    if-ne v0, v1, :cond_33

    .line 540
    :cond_29
    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/javascript/TokenStream;->quoteChar:I

    .line 541
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 543
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v4

    .line 544
    :cond_2a
    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->quoteChar:I

    move/from16 v21, v0

    move v0, v4

    move/from16 v1, v21

    if-eq v0, v1, :cond_32

    .line 545
    const/16 v21, 0xa

    move v0, v4

    move/from16 v1, v21

    if-eq v0, v1, :cond_2b

    const/16 v21, -0x1

    move v0, v4

    move/from16 v1, v21

    if-ne v0, v1, :cond_2c

    .line 546
    :cond_2b
    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    .line 547
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    move-object/from16 v21, v0

    const-string v22, "msg.unterminated.string.lit"

    invoke-virtual/range {v21 .. v22}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    .line 549
    const/16 v21, -0x1

    goto/16 :goto_0

    .line 552
    :cond_2c
    const/16 v21, 0x5c

    move v0, v4

    move/from16 v1, v21

    if-ne v0, v1, :cond_2e

    .line 556
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v4

    .line 557
    sparse-switch v4, :sswitch_data_0

    .line 618
    const/16 v21, 0x30

    move/from16 v0, v21

    move v1, v4

    if-gt v0, v1, :cond_2e

    const/16 v21, 0x38

    move v0, v4

    move/from16 v1, v21

    if-ge v0, v1, :cond_2e

    .line 619
    const/16 v21, 0x30

    sub-int v20, v4, v21

    .line 620
    .local v20, val:I
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v4

    .line 621
    const/16 v21, 0x30

    move/from16 v0, v21

    move v1, v4

    if-gt v0, v1, :cond_2d

    const/16 v21, 0x38

    move v0, v4

    move/from16 v1, v21

    if-ge v0, v1, :cond_2d

    .line 622
    mul-int/lit8 v21, v20, 0x8

    add-int v21, v21, v4

    const/16 v22, 0x30

    sub-int v20, v21, v22

    .line 623
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v4

    .line 624
    const/16 v21, 0x30

    move/from16 v0, v21

    move v1, v4

    if-gt v0, v1, :cond_2d

    const/16 v21, 0x38

    move v0, v4

    move/from16 v1, v21

    if-ge v0, v1, :cond_2d

    const/16 v21, 0x1f

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_2d

    .line 627
    mul-int/lit8 v21, v20, 0x8

    add-int v21, v21, v4

    const/16 v22, 0x30

    sub-int v20, v21, v22

    .line 628
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v4

    .line 631
    :cond_2d
    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    .line 632
    move/from16 v4, v20

    .line 636
    .end local v20           #val:I
    :cond_2e
    :goto_b
    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 637
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v4

    goto/16 :goto_a

    .line 558
    :sswitch_0
    const/16 v4, 0x8

    goto :goto_b

    .line 559
    :sswitch_1
    const/16 v4, 0xc

    goto :goto_b

    .line 560
    :sswitch_2
    const/16 v4, 0xa

    goto :goto_b

    .line 561
    :sswitch_3
    const/16 v4, 0xd

    goto :goto_b

    .line 562
    :sswitch_4
    const/16 v4, 0x9

    goto :goto_b

    .line 566
    :sswitch_5
    const/16 v4, 0xb

    goto :goto_b

    .line 572
    :sswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    move v9, v0

    .line 573
    .local v9, escapeStart:I
    const/16 v21, 0x75

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 574
    const/4 v10, 0x0

    .line 575
    .restart local v10       #escapeVal:I
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_c
    const/16 v21, 0x4

    move v0, v12

    move/from16 v1, v21

    if-eq v0, v1, :cond_2f

    .line 576
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v4

    .line 577
    invoke-static {v4, v10}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v10

    .line 578
    if-ltz v10, :cond_2a

    .line 581
    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 575
    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    .line 585
    :cond_2f
    move v0, v9

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 586
    move v4, v10

    .line 587
    goto :goto_b

    .line 591
    .end local v9           #escapeStart:I
    .end local v10           #escapeVal:I
    .end local v12           #i:I
    :sswitch_7
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v4

    .line 592
    const/16 v21, 0x0

    move v0, v4

    move/from16 v1, v21

    invoke-static {v0, v1}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v10

    .line 593
    .restart local v10       #escapeVal:I
    if-gez v10, :cond_30

    .line 594
    const/16 v21, 0x78

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto/16 :goto_a

    .line 597
    :cond_30
    move v5, v4

    .line 598
    .local v5, c1:I
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v4

    .line 599
    invoke-static {v4, v10}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v10

    .line 600
    if-gez v10, :cond_31

    .line 601
    const/16 v21, 0x78

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 602
    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto/16 :goto_a

    .line 606
    :cond_31
    move v4, v10

    .line 609
    goto/16 :goto_b

    .line 614
    .end local v5           #c1:I
    .end local v10           #escapeVal:I
    :sswitch_8
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v4

    .line 615
    goto/16 :goto_a

    .line 640
    :cond_32
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getStringFromBuffer()Ljava/lang/String;

    move-result-object v19

    .line 641
    .restart local v19       #str:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/TokenStream;->allStrings:Lorg/mozilla/javascript/ObjToIntMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/ObjToIntMap;->intern(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 642
    const/16 v21, 0x29

    goto/16 :goto_0

    .line 645
    .end local v19           #str:Ljava/lang/String;
    :cond_33
    sparse-switch v4, :sswitch_data_1

    .line 861
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    move-object/from16 v21, v0

    const-string v22, "msg.illegal.character"

    invoke-virtual/range {v21 .. v22}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    .line 862
    const/16 v21, -0x1

    goto/16 :goto_0

    .line 646
    :sswitch_9
    const/16 v21, 0x52

    goto/16 :goto_0

    .line 647
    :sswitch_a
    const/16 v21, 0x53

    goto/16 :goto_0

    .line 648
    :sswitch_b
    const/16 v21, 0x54

    goto/16 :goto_0

    .line 649
    :sswitch_c
    const/16 v21, 0x55

    goto/16 :goto_0

    .line 650
    :sswitch_d
    const/16 v21, 0x56

    goto/16 :goto_0

    .line 651
    :sswitch_e
    const/16 v21, 0x57

    goto/16 :goto_0

    .line 652
    :sswitch_f
    const/16 v21, 0x58

    goto/16 :goto_0

    .line 653
    :sswitch_10
    const/16 v21, 0x59

    goto/16 :goto_0

    .line 654
    :sswitch_11
    const/16 v21, 0x66

    goto/16 :goto_0

    .line 656
    :sswitch_12
    const/16 v21, 0x3a

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v21

    if-eqz v21, :cond_34

    .line 657
    const/16 v21, 0x90

    goto/16 :goto_0

    .line 659
    :cond_34
    const/16 v21, 0x67

    goto/16 :goto_0

    .line 662
    :sswitch_13
    const/16 v21, 0x2e

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v21

    if-eqz v21, :cond_35

    .line 663
    const/16 v21, 0x8f

    goto/16 :goto_0

    .line 664
    :cond_35
    const/16 v21, 0x28

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v21

    if-eqz v21, :cond_36

    .line 665
    const/16 v21, 0x92

    goto/16 :goto_0

    .line 667
    :cond_36
    const/16 v21, 0x6c

    goto/16 :goto_0

    .line 671
    :sswitch_14
    const/16 v21, 0x7c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v21

    if-eqz v21, :cond_37

    .line 672
    const/16 v21, 0x68

    goto/16 :goto_0

    .line 673
    :cond_37
    const/16 v21, 0x3d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v21

    if-eqz v21, :cond_38

    .line 674
    const/16 v21, 0x5b

    goto/16 :goto_0

    .line 676
    :cond_38
    const/16 v21, 0x9

    goto/16 :goto_0

    .line 680
    :sswitch_15
    const/16 v21, 0x3d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v21

    if-eqz v21, :cond_39

    .line 681
    const/16 v21, 0x5c

    goto/16 :goto_0

    .line 683
    :cond_39
    const/16 v21, 0xa

    goto/16 :goto_0

    .line 687
    :sswitch_16
    const/16 v21, 0x26

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v21

    if-eqz v21, :cond_3a

    .line 688
    const/16 v21, 0x69

    goto/16 :goto_0

    .line 689
    :cond_3a
    const/16 v21, 0x3d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v21

    if-eqz v21, :cond_3b

    .line 690
    const/16 v21, 0x5d

    goto/16 :goto_0

    .line 692
    :cond_3b
    const/16 v21, 0xb

    goto/16 :goto_0

    .line 696
    :sswitch_17
    const/16 v21, 0x3d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v21

    if-eqz v21, :cond_3d

    .line 697
    const/16 v21, 0x3d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v21

    if-eqz v21, :cond_3c

    .line 698
    const/16 v21, 0x2e

    goto/16 :goto_0

    .line 700
    :cond_3c
    const/16 v21, 0xc

    goto/16 :goto_0

    .line 703
    :cond_3d
    const/16 v21, 0x5a

    goto/16 :goto_0

    .line 707
    :sswitch_18
    const/16 v21, 0x3d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v21

    if-eqz v21, :cond_3f

    .line 708
    const/16 v21, 0x3d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v21

    if-eqz v21, :cond_3e

    .line 709
    const/16 v21, 0x2f

    goto/16 :goto_0

    .line 711
    :cond_3e
    const/16 v21, 0xd

    goto/16 :goto_0

    .line 714
    :cond_3f
    const/16 v21, 0x1a

    goto/16 :goto_0

    .line 719
    :sswitch_19
    const/16 v21, 0x21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v21

    if-eqz v21, :cond_42

    .line 720
    const/16 v21, 0x2d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v21

    if-eqz v21, :cond_41

    .line 721
    const/16 v21, 0x2d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v21

    if-eqz v21, :cond_40

    .line 722
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    move/from16 v21, v0

    const/16 v22, 0x4

    sub-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 723
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->skipLine()V

    .line 724
    sget-object v21, Lorg/mozilla/javascript/Token$CommentType;->HTML:Lorg/mozilla/javascript/Token$CommentType;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    .line 725
    const/16 v21, 0xa1

    goto/16 :goto_0

    .line 727
    :cond_40
    const/16 v21, 0x2d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->ungetCharIgnoreLineEnd(I)V

    .line 729
    :cond_41
    const/16 v21, 0x21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->ungetCharIgnoreLineEnd(I)V

    .line 731
    :cond_42
    const/16 v21, 0x3c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v21

    if-eqz v21, :cond_44

    .line 732
    const/16 v21, 0x3d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v21

    if-eqz v21, :cond_43

    .line 733
    const/16 v21, 0x5e

    goto/16 :goto_0

    .line 735
    :cond_43
    const/16 v21, 0x12

    goto/16 :goto_0

    .line 738
    :cond_44
    const/16 v21, 0x3d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v21

    if-eqz v21, :cond_45

    .line 739
    const/16 v21, 0xf

    goto/16 :goto_0

    .line 741
    :cond_45
    const/16 v21, 0xe

    goto/16 :goto_0

    .line 746
    :sswitch_1a
    const/16 v21, 0x3e

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v21

    if-eqz v21, :cond_49

    .line 747
    const/16 v21, 0x3e

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v21

    if-eqz v21, :cond_47

    .line 748
    const/16 v21, 0x3d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v21

    if-eqz v21, :cond_46

    .line 749
    const/16 v21, 0x60

    goto/16 :goto_0

    .line 751
    :cond_46
    const/16 v21, 0x14

    goto/16 :goto_0

    .line 754
    :cond_47
    const/16 v21, 0x3d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v21

    if-eqz v21, :cond_48

    .line 755
    const/16 v21, 0x5f

    goto/16 :goto_0

    .line 757
    :cond_48
    const/16 v21, 0x13

    goto/16 :goto_0

    .line 761
    :cond_49
    const/16 v21, 0x3d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v21

    if-eqz v21, :cond_4a

    .line 762
    const/16 v21, 0x11

    goto/16 :goto_0

    .line 764
    :cond_4a
    const/16 v21, 0x10

    goto/16 :goto_0

    .line 769
    :sswitch_1b
    const/16 v21, 0x3d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v21

    if-eqz v21, :cond_4b

    .line 770
    const/16 v21, 0x63

    goto/16 :goto_0

    .line 772
    :cond_4b
    const/16 v21, 0x17

    goto/16 :goto_0

    .line 776
    :sswitch_1c
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->markCommentStart()V

    .line 778
    const/16 v21, 0x2f

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v21

    if-eqz v21, :cond_4c

    .line 779
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    move/from16 v21, v0

    const/16 v22, 0x2

    sub-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 780
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->skipLine()V

    .line 781
    sget-object v21, Lorg/mozilla/javascript/Token$CommentType;->LINE:Lorg/mozilla/javascript/Token$CommentType;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    .line 782
    const/16 v21, 0xa1

    goto/16 :goto_0

    .line 785
    :cond_4c
    const/16 v21, 0x2a

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v21

    if-eqz v21, :cond_52

    .line 786
    const/16 v16, 0x0

    .line 787
    .local v16, lookForSlash:Z
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    move/from16 v21, v0

    const/16 v22, 0x2

    sub-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 788
    const/16 v21, 0x2a

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v21

    if-eqz v21, :cond_4e

    .line 789
    const/16 v16, 0x1

    .line 790
    sget-object v21, Lorg/mozilla/javascript/Token$CommentType;->JSDOC:Lorg/mozilla/javascript/Token$CommentType;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    .line 795
    :cond_4d
    :goto_d
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v4

    .line 796
    const/16 v21, -0x1

    move v0, v4

    move/from16 v1, v21

    if-ne v0, v1, :cond_4f

    .line 797
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    move/from16 v21, v0

    const/16 v22, 0x1

    sub-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    move-object/from16 v21, v0

    const-string v22, "msg.unterminated.comment"

    invoke-virtual/range {v21 .. v22}, Lorg/mozilla/javascript/Parser;->addError(Ljava/lang/String;)V

    .line 799
    const/16 v21, 0xa1

    goto/16 :goto_0

    .line 792
    :cond_4e
    sget-object v21, Lorg/mozilla/javascript/Token$CommentType;->BLOCK_COMMENT:Lorg/mozilla/javascript/Token$CommentType;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    goto :goto_d

    .line 800
    :cond_4f
    const/16 v21, 0x2a

    move v0, v4

    move/from16 v1, v21

    if-ne v0, v1, :cond_50

    .line 801
    const/16 v16, 0x1

    goto :goto_d

    .line 802
    :cond_50
    const/16 v21, 0x2f

    move v0, v4

    move/from16 v1, v21

    if-ne v0, v1, :cond_51

    .line 803
    if-eqz v16, :cond_4d

    .line 804
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 805
    const/16 v21, 0xa1

    goto/16 :goto_0

    .line 808
    :cond_51
    const/16 v16, 0x0

    .line 809
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    goto :goto_d

    .line 814
    .end local v16           #lookForSlash:Z
    :cond_52
    const/16 v21, 0x3d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v21

    if-eqz v21, :cond_53

    .line 815
    const/16 v21, 0x64

    goto/16 :goto_0

    .line 817
    :cond_53
    const/16 v21, 0x18

    goto/16 :goto_0

    .line 821
    :sswitch_1d
    const/16 v21, 0x3d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v21

    if-eqz v21, :cond_54

    .line 822
    const/16 v21, 0x65

    goto/16 :goto_0

    .line 824
    :cond_54
    const/16 v21, 0x19

    goto/16 :goto_0

    .line 828
    :sswitch_1e
    const/16 v21, 0x1b

    goto/16 :goto_0

    .line 831
    :sswitch_1f
    const/16 v21, 0x3d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v21

    if-eqz v21, :cond_55

    .line 832
    const/16 v21, 0x61

    goto/16 :goto_0

    .line 833
    :cond_55
    const/16 v21, 0x2b

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v21

    if-eqz v21, :cond_56

    .line 834
    const/16 v21, 0x6a

    goto/16 :goto_0

    .line 836
    :cond_56
    const/16 v21, 0x15

    goto/16 :goto_0

    .line 840
    :sswitch_20
    const/16 v21, 0x3d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v21

    if-eqz v21, :cond_57

    .line 841
    const/16 v4, 0x62

    .line 857
    :goto_e
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mozilla/javascript/TokenStream;->dirtyLine:Z

    move/from16 v21, v4

    .line 858
    goto/16 :goto_0

    .line 842
    :cond_57
    const/16 v21, 0x2d

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v21

    if-eqz v21, :cond_59

    .line 843
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mozilla/javascript/TokenStream;->dirtyLine:Z

    move/from16 v21, v0

    if-nez v21, :cond_58

    .line 846
    const/16 v21, 0x3e

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v21

    if-eqz v21, :cond_58

    .line 847
    const-string v21, "--"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/TokenStream;->markCommentStart(Ljava/lang/String;)V

    .line 848
    invoke-direct/range {p0 .. p0}, Lorg/mozilla/javascript/TokenStream;->skipLine()V

    .line 849
    sget-object v21, Lorg/mozilla/javascript/Token$CommentType;->HTML:Lorg/mozilla/javascript/Token$CommentType;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mozilla/javascript/TokenStream;->commentType:Lorg/mozilla/javascript/Token$CommentType;

    .line 850
    const/16 v21, 0xa1

    goto/16 :goto_0

    .line 853
    :cond_58
    const/16 v4, 0x6b

    goto :goto_e

    .line 855
    :cond_59
    const/16 v4, 0x16

    goto :goto_e

    .line 557
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_8
        0x62 -> :sswitch_0
        0x66 -> :sswitch_1
        0x6e -> :sswitch_2
        0x72 -> :sswitch_3
        0x74 -> :sswitch_4
        0x75 -> :sswitch_6
        0x76 -> :sswitch_5
        0x78 -> :sswitch_7
    .end sparse-switch

    .line 645
    :sswitch_data_1
    .sparse-switch
        0x21 -> :sswitch_18
        0x25 -> :sswitch_1d
        0x26 -> :sswitch_16
        0x28 -> :sswitch_e
        0x29 -> :sswitch_f
        0x2a -> :sswitch_1b
        0x2b -> :sswitch_1f
        0x2c -> :sswitch_10
        0x2d -> :sswitch_20
        0x2e -> :sswitch_13
        0x2f -> :sswitch_1c
        0x3a -> :sswitch_12
        0x3b -> :sswitch_9
        0x3c -> :sswitch_19
        0x3d -> :sswitch_17
        0x3e -> :sswitch_1a
        0x3f -> :sswitch_11
        0x5b -> :sswitch_a
        0x5d -> :sswitch_b
        0x5e -> :sswitch_15
        0x7b -> :sswitch_c
        0x7c -> :sswitch_14
        0x7d -> :sswitch_d
        0x7e -> :sswitch_1e
    .end sparse-switch
.end method

.method public getTokenBeg()I
    .locals 1

    .prologue
    .line 1509
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    return v0
.end method

.method public getTokenEnd()I
    .locals 1

    .prologue
    .line 1516
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    return v0
.end method

.method public getTokenLength()I
    .locals 2

    .prologue
    .line 1523
    iget v0, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    iget v1, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    sub-int/2addr v0, v1

    return v0
.end method

.method final isNumberOctal()Z
    .locals 1

    .prologue
    .line 308
    iget-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->isOctal:Z

    return v0
.end method

.method isXMLAttribute()Z
    .locals 1

    .prologue
    .line 969
    iget-boolean v0, p0, Lorg/mozilla/javascript/TokenStream;->xmlIsAttribute:Z

    return v0
.end method

.method readAndClearRegExpFlags()Ljava/lang/String;
    .locals 2

    .prologue
    .line 962
    iget-object v0, p0, Lorg/mozilla/javascript/TokenStream;->regExpFlags:Ljava/lang/String;

    .line 963
    .local v0, flags:Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mozilla/javascript/TokenStream;->regExpFlags:Ljava/lang/String;

    .line 964
    return-object v0
.end method

.method readRegExp(I)V
    .locals 10
    .parameter "startToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x79

    const/16 v8, 0x6d

    const/16 v6, 0x69

    const/16 v5, 0x67

    const/4 v7, 0x0

    .line 907
    iget v3, p0, Lorg/mozilla/javascript/TokenStream;->tokenBeg:I

    .line 908
    .local v3, start:I
    iput v7, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 909
    const/16 v4, 0x64

    if-ne p1, v4, :cond_3

    .line 911
    const/16 v4, 0x3d

    invoke-direct {p0, v4}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 916
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 918
    .local v1, inCharSet:Z
    :goto_1
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    .local v0, c:I
    const/16 v4, 0x2f

    if-ne v0, v4, :cond_1

    if-eqz v1, :cond_8

    .line 919
    :cond_1
    const/16 v4, 0xa

    if-eq v0, v4, :cond_2

    const/4 v4, -0x1

    if-ne v0, v4, :cond_4

    .line 920
    :cond_2
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->ungetChar(I)V

    .line 921
    iget v4, p0, Lorg/mozilla/javascript/TokenStream;->cursor:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 922
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    iget v6, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    invoke-direct {v4, v5, v7, v6}, Ljava/lang/String;-><init>([CII)V

    iput-object v4, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 923
    iget-object v4, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v5, "msg.unterminated.re.lit"

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 959
    :goto_2
    return-void

    .line 913
    .end local v0           #c:I
    .end local v1           #inCharSet:Z
    :cond_3
    const/16 v4, 0x18

    if-eq p1, v4, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    goto :goto_0

    .line 926
    .restart local v0       #c:I
    .restart local v1       #inCharSet:Z
    :cond_4
    const/16 v4, 0x5c

    if-ne v0, v4, :cond_6

    .line 927
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    .line 928
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->getChar()I

    move-result v0

    .line 934
    :cond_5
    :goto_3
    invoke-direct {p0, v0}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto :goto_1

    .line 929
    :cond_6
    const/16 v4, 0x5b

    if-ne v0, v4, :cond_7

    .line 930
    const/4 v1, 0x1

    goto :goto_3

    .line 931
    :cond_7
    const/16 v4, 0x5d

    if-ne v0, v4, :cond_5

    .line 932
    const/4 v1, 0x0

    goto :goto_3

    .line 936
    :cond_8
    iget v2, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    .line 939
    .local v2, reEnd:I
    :goto_4
    invoke-direct {p0, v5}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 940
    invoke-direct {p0, v5}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto :goto_4

    .line 941
    :cond_9
    invoke-direct {p0, v6}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 942
    invoke-direct {p0, v6}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto :goto_4

    .line 943
    :cond_a
    invoke-direct {p0, v8}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 944
    invoke-direct {p0, v8}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto :goto_4

    .line 945
    :cond_b
    invoke-direct {p0, v9}, Lorg/mozilla/javascript/TokenStream;->matchChar(I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 946
    invoke-direct {p0, v9}, Lorg/mozilla/javascript/TokenStream;->addToString(I)V

    goto :goto_4

    .line 950
    :cond_c
    iget v4, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x2

    iput v4, p0, Lorg/mozilla/javascript/TokenStream;->tokenEnd:I

    .line 952
    invoke-direct {p0}, Lorg/mozilla/javascript/TokenStream;->peekChar()I

    move-result v4

    invoke-static {v4}, Lorg/mozilla/javascript/TokenStream;->isAlpha(I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 953
    iget-object v4, p0, Lorg/mozilla/javascript/TokenStream;->parser:Lorg/mozilla/javascript/Parser;

    const-string v5, "msg.invalid.re.flag"

    invoke-virtual {v4, v5}, Lorg/mozilla/javascript/Parser;->reportError(Ljava/lang/String;)V

    .line 956
    :cond_d
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    invoke-direct {v4, v5, v7, v2}, Ljava/lang/String;-><init>([CII)V

    iput-object v4, p0, Lorg/mozilla/javascript/TokenStream;->string:Ljava/lang/String;

    .line 957
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lorg/mozilla/javascript/TokenStream;->stringBuffer:[C

    iget v6, p0, Lorg/mozilla/javascript/TokenStream;->stringBufferTop:I

    sub-int/2addr v6, v2

    invoke-direct {v4, v5, v2, v6}, Ljava/lang/String;-><init>([CII)V

    iput-object v4, p0, Lorg/mozilla/javascript/TokenStream;->regExpFlags:Ljava/lang/String;

    goto :goto_2
.end method

.method tokenToString(I)Ljava/lang/String;
    .locals 1
    .parameter "token"

    .prologue
    .line 113
    const-string v0, ""

    return-object v0
.end method
