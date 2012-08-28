.class public abstract Lde/mud/telnet/TelnetProtocolHandler;
.super Ljava/lang/Object;
.source "TelnetProtocolHandler.java"


# static fields
.field private static final IACDO:[B

.field private static final IACDONT:[B

.field private static final IACSB:[B

.field private static final IACSE:[B

.field private static final IACWILL:[B

.field private static final IACWONT:[B

.field private static one:[B


# instance fields
.field private cr:[B

.field private crlf:[B

.field private current_sb:B

.field private neg_state:B

.field private receivedDX:[B

.field private receivedWX:[B

.field private sbbuf:[B

.field private sentDX:[B

.field private sentWX:[B

.field private tempbuf:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 104
    const/4 v0, 0x1

    new-array v0, v0, [B

    sput-object v0, Lde/mud/telnet/TelnetProtocolHandler;->one:[B

    .line 178
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lde/mud/telnet/TelnetProtocolHandler;->IACWILL:[B

    .line 179
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lde/mud/telnet/TelnetProtocolHandler;->IACWONT:[B

    .line 180
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lde/mud/telnet/TelnetProtocolHandler;->IACDO:[B

    .line 181
    new-array v0, v1, [B

    fill-array-data v0, :array_3

    sput-object v0, Lde/mud/telnet/TelnetProtocolHandler;->IACDONT:[B

    .line 182
    new-array v0, v1, [B

    fill-array-data v0, :array_4

    sput-object v0, Lde/mud/telnet/TelnetProtocolHandler;->IACSB:[B

    .line 183
    new-array v0, v1, [B

    fill-array-data v0, :array_5

    sput-object v0, Lde/mud/telnet/TelnetProtocolHandler;->IACSE:[B

    .line 39
    return-void

    .line 178
    nop

    :array_0
    .array-data 0x1
        0xfft
        0xfbt
    .end array-data

    .line 179
    nop

    :array_1
    .array-data 0x1
        0xfft
        0xfct
    .end array-data

    .line 180
    nop

    :array_2
    .array-data 0x1
        0xfft
        0xfdt
    .end array-data

    .line 181
    nop

    :array_3
    .array-data 0x1
        0xfft
        0xfet
    .end array-data

    .line 182
    nop

    :array_4
    .array-data 0x1
        0xfft
        0xfat
    .end array-data

    .line 183
    nop

    :array_5
    .array-data 0x1
        0xfft
        0xf0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0xd

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-array v0, v2, [B

    iput-object v0, p0, Lde/mud/telnet/TelnetProtocolHandler;->tempbuf:[B

    .line 50
    new-array v0, v1, [B

    iput-object v0, p0, Lde/mud/telnet/TelnetProtocolHandler;->crlf:[B

    .line 52
    new-array v0, v1, [B

    iput-object v0, p0, Lde/mud/telnet/TelnetProtocolHandler;->cr:[B

    .line 127
    iput-byte v2, p0, Lde/mud/telnet/TelnetProtocolHandler;->neg_state:B

    .line 58
    invoke-virtual {p0}, Lde/mud/telnet/TelnetProtocolHandler;->reset()V

    .line 60
    iget-object v0, p0, Lde/mud/telnet/TelnetProtocolHandler;->crlf:[B

    aput-byte v4, v0, v2

    iget-object v0, p0, Lde/mud/telnet/TelnetProtocolHandler;->crlf:[B

    const/16 v1, 0xa

    aput-byte v1, v0, v3

    .line 61
    iget-object v0, p0, Lde/mud/telnet/TelnetProtocolHandler;->cr:[B

    aput-byte v4, v0, v2

    iget-object v0, p0, Lde/mud/telnet/TelnetProtocolHandler;->cr:[B

    aput-byte v2, v0, v3

    .line 62
    return-void
.end method

.method private handle_sb(B[B)V
    .locals 9
    .parameter "type"
    .parameter "sbdata"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x2a

    const/4 v5, 0x0

    .line 243
    sparse-switch p1, :sswitch_data_0

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 245
    :sswitch_0
    array-length v6, p2

    if-lez v6, :cond_0

    aget-byte v6, p2, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 246
    sget-object v6, Lde/mud/telnet/TelnetProtocolHandler;->IACSB:[B

    invoke-virtual {p0, v6}, Lde/mud/telnet/TelnetProtocolHandler;->write([B)V

    const/16 v6, 0x18

    invoke-direct {p0, v6}, Lde/mud/telnet/TelnetProtocolHandler;->write(B)V

    invoke-direct {p0, v5}, Lde/mud/telnet/TelnetProtocolHandler;->write(B)V

    .line 250
    invoke-virtual {p0}, Lde/mud/telnet/TelnetProtocolHandler;->getTerminalType()Ljava/lang/String;

    move-result-object v4

    .line 251
    .local v4, ttype:Ljava/lang/String;
    if-nez v4, :cond_1

    const-string v4, "dumb"

    .line 252
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {p0, v5}, Lde/mud/telnet/TelnetProtocolHandler;->write([B)V

    .line 253
    sget-object v5, Lde/mud/telnet/TelnetProtocolHandler;->IACSE:[B

    invoke-virtual {p0, v5}, Lde/mud/telnet/TelnetProtocolHandler;->write([B)V

    goto :goto_0

    .line 257
    .end local v4           #ttype:Ljava/lang/String;
    :sswitch_1
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "Got SB CHARSET"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 259
    new-instance v1, Ljava/lang/String;

    const-string v6, "US-ASCII"

    invoke-direct {v1, p2, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 260
    .local v1, charsetStr:Ljava/lang/String;
    const-string v6, "TTABLE "

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 261
    const/4 v6, 0x7

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 263
    :cond_2
    invoke-virtual {v1, v5, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, charsets:[Ljava/lang/String;
    invoke-virtual {p0}, Lde/mud/telnet/TelnetProtocolHandler;->getCharsetName()Ljava/lang/String;

    move-result-object v3

    .line 265
    .local v3, myCharset:Ljava/lang/String;
    array-length v6, v2

    :goto_1
    if-lt v5, v6, :cond_3

    .line 274
    sget-object v5, Lde/mud/telnet/TelnetProtocolHandler;->IACSB:[B

    invoke-virtual {p0, v5}, Lde/mud/telnet/TelnetProtocolHandler;->write([B)V

    invoke-direct {p0, v8}, Lde/mud/telnet/TelnetProtocolHandler;->write(B)V

    const/4 v5, 0x3

    invoke-direct {p0, v5}, Lde/mud/telnet/TelnetProtocolHandler;->write(B)V

    .line 275
    sget-object v5, Lde/mud/telnet/TelnetProtocolHandler;->IACSE:[B

    invoke-virtual {p0, v5}, Lde/mud/telnet/TelnetProtocolHandler;->write([B)V

    goto :goto_0

    .line 265
    :cond_3
    aget-object v0, v2, v5

    .line 266
    .local v0, charset:Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 267
    sget-object v5, Lde/mud/telnet/TelnetProtocolHandler;->IACSB:[B

    invoke-virtual {p0, v5}, Lde/mud/telnet/TelnetProtocolHandler;->write([B)V

    invoke-direct {p0, v8}, Lde/mud/telnet/TelnetProtocolHandler;->write(B)V

    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lde/mud/telnet/TelnetProtocolHandler;->write(B)V

    .line 268
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {p0, v5}, Lde/mud/telnet/TelnetProtocolHandler;->write([B)V

    .line 269
    sget-object v5, Lde/mud/telnet/TelnetProtocolHandler;->IACSE:[B

    invoke-virtual {p0, v5}, Lde/mud/telnet/TelnetProtocolHandler;->write([B)V

    .line 270
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Sent our charset!"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 265
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 243
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x2a -> :sswitch_1
    .end sparse-switch
.end method

.method private write(B)V
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    sget-object v0, Lde/mud/telnet/TelnetProtocolHandler;->one:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 107
    sget-object v0, Lde/mud/telnet/TelnetProtocolHandler;->one:[B

    invoke-virtual {p0, v0}, Lde/mud/telnet/TelnetProtocolHandler;->write([B)V

    .line 108
    return-void
.end method


# virtual methods
.method protected abstract getCharsetName()Ljava/lang/String;
.end method

.method protected abstract getTerminalType()Ljava/lang/String;
.end method

.method protected abstract getWindowSize()[I
.end method

.method public inputfeed([BII)V
    .locals 4
    .parameter "b"
    .parameter "offset"
    .parameter "len"

    .prologue
    const/4 v3, 0x0

    .line 672
    iget-object v1, p0, Lde/mud/telnet/TelnetProtocolHandler;->tempbuf:[B

    array-length v1, v1

    add-int/2addr v1, p3

    new-array v0, v1, [B

    .line 674
    .local v0, xb:[B
    iget-object v1, p0, Lde/mud/telnet/TelnetProtocolHandler;->tempbuf:[B

    iget-object v2, p0, Lde/mud/telnet/TelnetProtocolHandler;->tempbuf:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 675
    iget-object v1, p0, Lde/mud/telnet/TelnetProtocolHandler;->tempbuf:[B

    array-length v1, v1

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 676
    iput-object v0, p0, Lde/mud/telnet/TelnetProtocolHandler;->tempbuf:[B

    .line 677
    return-void
.end method

.method public negotiate([BI)I
    .locals 22
    .parameter "nbuf"
    .parameter "offset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/telnet/TelnetProtocolHandler;->tempbuf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v9, v0

    .line 368
    .local v9, count:I
    move-object/from16 v0, p0

    iget-object v8, v0, Lde/mud/telnet/TelnetProtocolHandler;->tempbuf:[B

    .line 369
    .local v8, buf:[B
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v14, v0, [B

    .line 371
    .local v14, sendbuf:[B
    const/4 v6, 0x0

    .local v6, boffset:I
    move/from16 v11, p2

    .line 372
    .local v11, noffset:I
    const/4 v10, 0x0

    .line 374
    .local v10, dobreak:Z
    if-nez v9, :cond_e

    .line 375
    const/16 v18, -0x1

    .line 668
    :goto_0
    return v18

    .line 378
    .end local v6           #boffset:I
    .end local v11           #noffset:I
    .local v7, boffset:I
    .local v12, noffset:I
    :cond_0
    add-int/lit8 v6, v7, 0x1

    .end local v7           #boffset:I
    .restart local v6       #boffset:I
    aget-byte v5, v8, v7

    .line 382
    .local v5, b:B
    const/16 v18, 0x80

    move/from16 v0, v18

    if-lt v5, v0, :cond_1

    .line 383
    add-int/lit16 v0, v5, -0x100

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v5, v0

    .line 388
    :cond_1
    move-object/from16 v0, p0

    iget-byte v0, v0, Lde/mud/telnet/TelnetProtocolHandler;->neg_state:B

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 660
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-byte v0, v1, Lde/mud/telnet/TelnetProtocolHandler;->neg_state:B

    move v7, v6

    .line 377
    .end local v5           #b:B
    .end local v6           #boffset:I
    .restart local v7       #boffset:I
    :goto_1
    if-nez v10, :cond_2

    if-ge v7, v9, :cond_2

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v12, v0, :cond_0

    .line 665
    :cond_2
    sub-int v18, v9, v7

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v16, v0

    .line 666
    .local v16, xb:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/telnet/TelnetProtocolHandler;->tempbuf:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sub-int v20, v9, v7

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v7, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 667
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/mud/telnet/TelnetProtocolHandler;->tempbuf:[B

    .line 668
    sub-int v18, v12, p2

    move v11, v12

    .end local v12           #noffset:I
    .restart local v11       #noffset:I
    move v6, v7

    .end local v7           #boffset:I
    .restart local v6       #boffset:I
    goto :goto_0

    .line 390
    .end local v11           #noffset:I
    .end local v16           #xb:[B
    .restart local v5       #b:B
    .restart local v12       #noffset:I
    :pswitch_0
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_3

    .line 391
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-byte v0, v1, Lde/mud/telnet/TelnetProtocolHandler;->neg_state:B

    .line 392
    const/4 v10, 0x1

    move v7, v6

    .end local v6           #boffset:I
    .restart local v7       #boffset:I
    goto :goto_1

    .line 394
    .end local v7           #boffset:I
    .restart local v6       #boffset:I
    :cond_3
    add-int/lit8 v11, v12, 0x1

    .end local v12           #noffset:I
    .restart local v11       #noffset:I
    aput-byte v5, p1, v12

    move v12, v11

    .end local v11           #noffset:I
    .restart local v12       #noffset:I
    move v7, v6

    .line 395
    .end local v6           #boffset:I
    .restart local v7       #boffset:I
    goto :goto_1

    .line 397
    .end local v7           #boffset:I
    .restart local v6       #boffset:I
    :pswitch_1
    sparse-switch v5, :sswitch_data_0

    .line 431
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-byte v0, v1, Lde/mud/telnet/TelnetProtocolHandler;->neg_state:B

    move v7, v6

    .line 434
    .end local v6           #boffset:I
    .restart local v7       #boffset:I
    goto :goto_1

    .line 400
    .end local v7           #boffset:I
    .restart local v6       #boffset:I
    :sswitch_0
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-byte v0, v1, Lde/mud/telnet/TelnetProtocolHandler;->neg_state:B

    .line 401
    add-int/lit8 v11, v12, 0x1

    .end local v12           #noffset:I
    .restart local v11       #noffset:I
    const/16 v18, -0x1

    aput-byte v18, p1, v12

    move v12, v11

    .end local v11           #noffset:I
    .restart local v12       #noffset:I
    move v7, v6

    .line 402
    .end local v6           #boffset:I
    .restart local v7       #boffset:I
    goto :goto_1

    .line 405
    .end local v7           #boffset:I
    .restart local v6       #boffset:I
    :sswitch_1
    const/16 v18, 0x3

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-byte v0, v1, Lde/mud/telnet/TelnetProtocolHandler;->neg_state:B

    move v7, v6

    .line 406
    .end local v6           #boffset:I
    .restart local v7       #boffset:I
    goto :goto_1

    .line 409
    .end local v7           #boffset:I
    .restart local v6       #boffset:I
    :sswitch_2
    const/16 v18, 0x5

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-byte v0, v1, Lde/mud/telnet/TelnetProtocolHandler;->neg_state:B

    move v7, v6

    .line 410
    .end local v6           #boffset:I
    .restart local v7       #boffset:I
    goto :goto_1

    .line 413
    .end local v7           #boffset:I
    .restart local v6       #boffset:I
    :sswitch_3
    const/16 v18, 0x6

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-byte v0, v1, Lde/mud/telnet/TelnetProtocolHandler;->neg_state:B

    move v7, v6

    .line 414
    .end local v6           #boffset:I
    .restart local v7       #boffset:I
    goto/16 :goto_1

    .line 417
    .end local v7           #boffset:I
    .restart local v6       #boffset:I
    :sswitch_4
    const/16 v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-byte v0, v1, Lde/mud/telnet/TelnetProtocolHandler;->neg_state:B

    move v7, v6

    .line 418
    .end local v6           #boffset:I
    .restart local v7       #boffset:I
    goto/16 :goto_1

    .line 421
    .end local v7           #boffset:I
    .restart local v6       #boffset:I
    :sswitch_5
    invoke-virtual/range {p0 .. p0}, Lde/mud/telnet/TelnetProtocolHandler;->notifyEndOfRecord()V

    .line 422
    const/4 v10, 0x1

    .line 423
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-byte v0, v1, Lde/mud/telnet/TelnetProtocolHandler;->neg_state:B

    move v7, v6

    .line 424
    .end local v6           #boffset:I
    .restart local v7       #boffset:I
    goto/16 :goto_1

    .line 427
    .end local v7           #boffset:I
    .restart local v6       #boffset:I
    :sswitch_6
    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-byte v0, v1, Lde/mud/telnet/TelnetProtocolHandler;->neg_state:B

    move v7, v6

    .line 428
    .end local v6           #boffset:I
    .restart local v7       #boffset:I
    goto/16 :goto_1

    .line 436
    .end local v7           #boffset:I
    .restart local v6       #boffset:I
    :pswitch_2
    sparse-switch v5, :sswitch_data_1

    .line 456
    const/4 v13, -0x2

    .line 460
    .local v13, reply:B
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/telnet/TelnetProtocolHandler;->sentDX:[B

    move-object/from16 v18, v0

    add-int/lit16 v0, v5, 0x80

    move/from16 v19, v0

    aget-byte v18, v18, v19

    move/from16 v0, v18

    if-ne v13, v0, :cond_4

    const/16 v18, -0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/telnet/TelnetProtocolHandler;->receivedWX:[B

    move-object/from16 v19, v0

    add-int/lit16 v0, v5, 0x80

    move/from16 v20, v0

    aget-byte v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    .line 461
    :cond_4
    const/16 v18, 0x0

    const/16 v19, -0x1

    aput-byte v19, v14, v18

    .line 462
    const/16 v18, 0x1

    aput-byte v13, v14, v18

    .line 463
    const/16 v18, 0x2

    aput-byte v5, v14, v18

    .line 464
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lde/mud/telnet/TelnetProtocolHandler;->write([B)V

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/telnet/TelnetProtocolHandler;->sentDX:[B

    move-object/from16 v18, v0

    add-int/lit16 v0, v5, 0x80

    move/from16 v19, v0

    aput-byte v13, v18, v19

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/telnet/TelnetProtocolHandler;->receivedWX:[B

    move-object/from16 v18, v0

    add-int/lit16 v0, v5, 0x80

    move/from16 v19, v0

    const/16 v20, -0x5

    aput-byte v20, v18, v19

    .line 468
    :cond_5
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-byte v0, v1, Lde/mud/telnet/TelnetProtocolHandler;->neg_state:B

    move v7, v6

    .line 469
    .end local v6           #boffset:I
    .restart local v7       #boffset:I
    goto/16 :goto_1

    .line 439
    .end local v7           #boffset:I
    .end local v13           #reply:B
    .restart local v6       #boffset:I
    :sswitch_7
    const/4 v13, -0x3

    .line 440
    .restart local v13       #reply:B
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lde/mud/telnet/TelnetProtocolHandler;->setLocalEcho(Z)V

    goto :goto_2

    .line 444
    .end local v13           #reply:B
    :sswitch_8
    const/4 v13, -0x3

    .line 445
    .restart local v13       #reply:B
    goto :goto_2

    .line 448
    .end local v13           #reply:B
    :sswitch_9
    const/4 v13, -0x3

    .line 449
    .restart local v13       #reply:B
    goto :goto_2

    .line 452
    .end local v13           #reply:B
    :sswitch_a
    const/4 v13, -0x3

    .line 453
    .restart local v13       #reply:B
    goto :goto_2

    .line 471
    .end local v13           #reply:B
    :pswitch_3
    sparse-switch v5, :sswitch_data_2

    .line 491
    const/4 v13, -0x2

    .line 494
    .restart local v13       #reply:B
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/telnet/TelnetProtocolHandler;->sentDX:[B

    move-object/from16 v18, v0

    add-int/lit16 v0, v5, 0x80

    move/from16 v19, v0

    aget-byte v18, v18, v19

    move/from16 v0, v18

    if-ne v13, v0, :cond_6

    const/16 v18, -0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/telnet/TelnetProtocolHandler;->receivedWX:[B

    move-object/from16 v19, v0

    add-int/lit16 v0, v5, 0x80

    move/from16 v20, v0

    aget-byte v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    .line 495
    :cond_6
    const/16 v18, 0x0

    const/16 v19, -0x1

    aput-byte v19, v14, v18

    .line 496
    const/16 v18, 0x1

    aput-byte v13, v14, v18

    .line 497
    const/16 v18, 0x2

    aput-byte v5, v14, v18

    .line 498
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lde/mud/telnet/TelnetProtocolHandler;->write([B)V

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/telnet/TelnetProtocolHandler;->sentDX:[B

    move-object/from16 v18, v0

    add-int/lit16 v0, v5, 0x80

    move/from16 v19, v0

    aput-byte v13, v18, v19

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/telnet/TelnetProtocolHandler;->receivedWX:[B

    move-object/from16 v18, v0

    add-int/lit16 v0, v5, 0x80

    move/from16 v19, v0

    const/16 v20, -0x5

    aput-byte v20, v18, v19

    .line 502
    :cond_7
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-byte v0, v1, Lde/mud/telnet/TelnetProtocolHandler;->neg_state:B

    move v7, v6

    .line 503
    .end local v6           #boffset:I
    .restart local v7       #boffset:I
    goto/16 :goto_1

    .line 474
    .end local v7           #boffset:I
    .end local v13           #reply:B
    .restart local v6       #boffset:I
    :sswitch_b
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lde/mud/telnet/TelnetProtocolHandler;->setLocalEcho(Z)V

    .line 475
    const/4 v13, -0x2

    .line 476
    .restart local v13       #reply:B
    goto :goto_3

    .line 479
    .end local v13           #reply:B
    :sswitch_c
    const/4 v13, -0x2

    .line 480
    .restart local v13       #reply:B
    goto :goto_3

    .line 483
    .end local v13           #reply:B
    :sswitch_d
    const/4 v13, -0x2

    .line 484
    .restart local v13       #reply:B
    goto :goto_3

    .line 487
    .end local v13           #reply:B
    :sswitch_e
    const/4 v13, -0x2

    .line 488
    .restart local v13       #reply:B
    goto :goto_3

    .line 505
    .end local v13           #reply:B
    :pswitch_4
    sparse-switch v5, :sswitch_data_3

    .line 551
    const/4 v13, -0x4

    .line 554
    .restart local v13       #reply:B
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/telnet/TelnetProtocolHandler;->sentWX:[B

    move-object/from16 v18, v0

    add-int/lit16 v0, v5, 0x80

    move/from16 v19, v0

    aget-byte v18, v18, v19

    move/from16 v0, v18

    if-ne v13, v0, :cond_8

    const/16 v18, -0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/telnet/TelnetProtocolHandler;->receivedDX:[B

    move-object/from16 v19, v0

    add-int/lit16 v0, v5, 0x80

    move/from16 v20, v0

    aget-byte v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    .line 555
    :cond_8
    const/16 v18, 0x0

    const/16 v19, -0x1

    aput-byte v19, v14, v18

    .line 556
    const/16 v18, 0x1

    aput-byte v13, v14, v18

    .line 557
    const/16 v18, 0x2

    aput-byte v5, v14, v18

    .line 558
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lde/mud/telnet/TelnetProtocolHandler;->write([B)V

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/telnet/TelnetProtocolHandler;->sentWX:[B

    move-object/from16 v18, v0

    add-int/lit16 v0, v5, 0x80

    move/from16 v19, v0

    aput-byte v13, v18, v19

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/telnet/TelnetProtocolHandler;->receivedDX:[B

    move-object/from16 v18, v0

    add-int/lit16 v0, v5, 0x80

    move/from16 v19, v0

    const/16 v20, -0x3

    aput-byte v20, v18, v19

    .line 562
    :cond_9
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-byte v0, v1, Lde/mud/telnet/TelnetProtocolHandler;->neg_state:B

    move v7, v6

    .line 563
    .end local v6           #boffset:I
    .restart local v7       #boffset:I
    goto/16 :goto_1

    .line 508
    .end local v7           #boffset:I
    .end local v13           #reply:B
    .restart local v6       #boffset:I
    :sswitch_f
    const/4 v13, -0x5

    .line 509
    .restart local v13       #reply:B
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lde/mud/telnet/TelnetProtocolHandler;->setLocalEcho(Z)V

    goto :goto_4

    .line 513
    .end local v13           #reply:B
    :sswitch_10
    const/4 v13, -0x5

    .line 514
    .restart local v13       #reply:B
    goto :goto_4

    .line 517
    .end local v13           #reply:B
    :sswitch_11
    const/4 v13, -0x5

    .line 518
    .restart local v13       #reply:B
    goto :goto_4

    .line 521
    .end local v13           #reply:B
    :sswitch_12
    const/4 v13, -0x5

    .line 522
    .restart local v13       #reply:B
    goto :goto_4

    .line 525
    .end local v13           #reply:B
    :sswitch_13
    invoke-virtual/range {p0 .. p0}, Lde/mud/telnet/TelnetProtocolHandler;->getWindowSize()[I

    move-result-object v15

    .line 526
    .local v15, size:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/telnet/TelnetProtocolHandler;->receivedDX:[B

    move-object/from16 v18, v0

    const/16 v19, -0x3

    aput-byte v19, v18, v5

    .line 527
    if-nez v15, :cond_a

    .line 529
    const/16 v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lde/mud/telnet/TelnetProtocolHandler;->write(B)V

    .line 530
    const/16 v18, -0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lde/mud/telnet/TelnetProtocolHandler;->write(B)V

    .line 531
    const/16 v18, 0x1f

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lde/mud/telnet/TelnetProtocolHandler;->write(B)V

    .line 532
    const/4 v13, -0x4

    .line 533
    .restart local v13       #reply:B
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/telnet/TelnetProtocolHandler;->sentWX:[B

    move-object/from16 v18, v0

    const/16 v19, -0x4

    aput-byte v19, v18, v5

    goto/16 :goto_4

    .line 536
    .end local v13           #reply:B
    :cond_a
    const/4 v13, -0x5

    .line 537
    .restart local v13       #reply:B
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/telnet/TelnetProtocolHandler;->sentWX:[B

    move-object/from16 v18, v0

    const/16 v19, -0x5

    aput-byte v19, v18, v5

    .line 538
    const/16 v18, 0x0

    const/16 v19, -0x1

    aput-byte v19, v14, v18

    .line 539
    const/16 v18, 0x1

    const/16 v19, -0x5

    aput-byte v19, v14, v18

    .line 540
    const/16 v18, 0x2

    const/16 v19, 0x1f

    aput-byte v19, v14, v18

    .line 541
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lde/mud/telnet/TelnetProtocolHandler;->write([B)V

    .line 542
    const/16 v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lde/mud/telnet/TelnetProtocolHandler;->write(B)V

    const/16 v18, -0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lde/mud/telnet/TelnetProtocolHandler;->write(B)V

    const/16 v18, 0x1f

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lde/mud/telnet/TelnetProtocolHandler;->write(B)V

    .line 543
    const/16 v18, 0x0

    aget v18, v15, v18

    shr-int/lit8 v18, v18, 0x8

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lde/mud/telnet/TelnetProtocolHandler;->write(B)V

    .line 544
    const/16 v18, 0x0

    aget v18, v15, v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lde/mud/telnet/TelnetProtocolHandler;->write(B)V

    .line 545
    const/16 v18, 0x1

    aget v18, v15, v18

    shr-int/lit8 v18, v18, 0x8

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lde/mud/telnet/TelnetProtocolHandler;->write(B)V

    .line 546
    const/16 v18, 0x1

    aget v18, v15, v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lde/mud/telnet/TelnetProtocolHandler;->write(B)V

    .line 547
    const/16 v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lde/mud/telnet/TelnetProtocolHandler;->write(B)V

    const/16 v18, -0x10

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lde/mud/telnet/TelnetProtocolHandler;->write(B)V

    goto/16 :goto_4

    .line 565
    .end local v13           #reply:B
    .end local v15           #size:[I
    :pswitch_5
    sparse-switch v5, :sswitch_data_4

    .line 585
    const/4 v13, -0x4

    .line 588
    .restart local v13       #reply:B
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/telnet/TelnetProtocolHandler;->sentWX:[B

    move-object/from16 v18, v0

    add-int/lit16 v0, v5, 0x80

    move/from16 v19, v0

    aget-byte v18, v18, v19

    move/from16 v0, v18

    if-ne v13, v0, :cond_b

    const/16 v18, -0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/telnet/TelnetProtocolHandler;->receivedDX:[B

    move-object/from16 v19, v0

    add-int/lit16 v0, v5, 0x80

    move/from16 v20, v0

    aget-byte v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_c

    .line 589
    :cond_b
    const/16 v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lde/mud/telnet/TelnetProtocolHandler;->write(B)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lde/mud/telnet/TelnetProtocolHandler;->write(B)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lde/mud/telnet/TelnetProtocolHandler;->write(B)V

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/telnet/TelnetProtocolHandler;->sentWX:[B

    move-object/from16 v18, v0

    add-int/lit16 v0, v5, 0x80

    move/from16 v19, v0

    aput-byte v13, v18, v19

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/telnet/TelnetProtocolHandler;->receivedDX:[B

    move-object/from16 v18, v0

    add-int/lit16 v0, v5, 0x80

    move/from16 v19, v0

    const/16 v20, -0x2

    aput-byte v20, v18, v19

    .line 593
    :cond_c
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-byte v0, v1, Lde/mud/telnet/TelnetProtocolHandler;->neg_state:B

    move v7, v6

    .line 594
    .end local v6           #boffset:I
    .restart local v7       #boffset:I
    goto/16 :goto_1

    .line 568
    .end local v7           #boffset:I
    .end local v13           #reply:B
    .restart local v6       #boffset:I
    :sswitch_14
    const/4 v13, -0x4

    .line 569
    .restart local v13       #reply:B
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lde/mud/telnet/TelnetProtocolHandler;->setLocalEcho(Z)V

    goto :goto_5

    .line 573
    .end local v13           #reply:B
    :sswitch_15
    const/4 v13, -0x4

    .line 574
    .restart local v13       #reply:B
    goto :goto_5

    .line 577
    .end local v13           #reply:B
    :sswitch_16
    const/4 v13, -0x4

    .line 578
    .restart local v13       #reply:B
    goto :goto_5

    .line 581
    .end local v13           #reply:B
    :sswitch_17
    const/4 v13, -0x4

    .line 582
    .restart local v13       #reply:B
    goto :goto_5

    .line 597
    .end local v13           #reply:B
    :pswitch_6
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_d

    .line 598
    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/mud/telnet/TelnetProtocolHandler;->sbbuf:[B

    .line 599
    move-object/from16 v0, p0

    iput-byte v5, v0, Lde/mud/telnet/TelnetProtocolHandler;->current_sb:B

    .line 600
    const/16 v18, 0x8

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-byte v0, v1, Lde/mud/telnet/TelnetProtocolHandler;->neg_state:B

    move v7, v6

    .end local v6           #boffset:I
    .restart local v7       #boffset:I
    goto/16 :goto_1

    .line 602
    .end local v7           #boffset:I
    .restart local v6       #boffset:I
    :cond_d
    sget-object v18, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "(bad) "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 603
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-byte v0, v1, Lde/mud/telnet/TelnetProtocolHandler;->neg_state:B

    move v7, v6

    .line 605
    .end local v6           #boffset:I
    .restart local v7       #boffset:I
    goto/16 :goto_1

    .line 608
    .end local v7           #boffset:I
    .restart local v6       #boffset:I
    :pswitch_7
    packed-switch v5, :pswitch_data_1

    .line 613
    move-object/from16 v0, p0

    iput-byte v5, v0, Lde/mud/telnet/TelnetProtocolHandler;->current_sb:B

    .line 614
    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/mud/telnet/TelnetProtocolHandler;->sbbuf:[B

    .line 615
    const/16 v18, 0x8

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-byte v0, v1, Lde/mud/telnet/TelnetProtocolHandler;->neg_state:B

    move v7, v6

    .line 618
    .end local v6           #boffset:I
    .restart local v7       #boffset:I
    goto/16 :goto_1

    .line 610
    .end local v7           #boffset:I
    .restart local v6       #boffset:I
    :pswitch_8
    const/16 v18, 0x7

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-byte v0, v1, Lde/mud/telnet/TelnetProtocolHandler;->neg_state:B

    move v7, v6

    .line 611
    .end local v6           #boffset:I
    .restart local v7       #boffset:I
    goto/16 :goto_1

    .line 621
    .end local v7           #boffset:I
    .restart local v6       #boffset:I
    :pswitch_9
    packed-switch v5, :pswitch_data_2

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/telnet/TelnetProtocolHandler;->sbbuf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 627
    .local v17, xsb:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/telnet/TelnetProtocolHandler;->sbbuf:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/telnet/TelnetProtocolHandler;->sbbuf:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v17

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 628
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/mud/telnet/TelnetProtocolHandler;->sbbuf:[B

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/telnet/TelnetProtocolHandler;->sbbuf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/telnet/TelnetProtocolHandler;->sbbuf:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    aput-byte v5, v18, v19

    move v7, v6

    .line 632
    .end local v6           #boffset:I
    .restart local v7       #boffset:I
    goto/16 :goto_1

    .line 623
    .end local v7           #boffset:I
    .end local v17           #xsb:[B
    .restart local v6       #boffset:I
    :pswitch_a
    const/16 v18, 0x9

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-byte v0, v1, Lde/mud/telnet/TelnetProtocolHandler;->neg_state:B

    move v7, v6

    .line 624
    .end local v6           #boffset:I
    .restart local v7       #boffset:I
    goto/16 :goto_1

    .line 635
    .end local v7           #boffset:I
    .restart local v6       #boffset:I
    :pswitch_b
    sparse-switch v5, :sswitch_data_5

    .line 653
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-byte v0, v1, Lde/mud/telnet/TelnetProtocolHandler;->neg_state:B

    move v7, v6

    .line 656
    .end local v6           #boffset:I
    .restart local v7       #boffset:I
    goto/16 :goto_1

    .line 637
    .end local v7           #boffset:I
    .restart local v6       #boffset:I
    :sswitch_18
    const/16 v18, 0x8

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-byte v0, v1, Lde/mud/telnet/TelnetProtocolHandler;->neg_state:B

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/telnet/TelnetProtocolHandler;->sbbuf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 639
    .restart local v17       #xsb:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/telnet/TelnetProtocolHandler;->sbbuf:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/telnet/TelnetProtocolHandler;->sbbuf:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v17

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 640
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lde/mud/telnet/TelnetProtocolHandler;->sbbuf:[B

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/telnet/TelnetProtocolHandler;->sbbuf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/telnet/TelnetProtocolHandler;->sbbuf:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    const/16 v20, -0x1

    aput-byte v20, v18, v19

    move v7, v6

    .line 642
    .end local v6           #boffset:I
    .restart local v7       #boffset:I
    goto/16 :goto_1

    .line 644
    .end local v7           #boffset:I
    .end local v17           #xsb:[B
    .restart local v6       #boffset:I
    :sswitch_19
    move-object/from16 v0, p0

    iget-byte v0, v0, Lde/mud/telnet/TelnetProtocolHandler;->current_sb:B

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/telnet/TelnetProtocolHandler;->sbbuf:[B

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lde/mud/telnet/TelnetProtocolHandler;->handle_sb(B[B)V

    .line 645
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-byte v0, v1, Lde/mud/telnet/TelnetProtocolHandler;->current_sb:B

    .line 646
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-byte v0, v1, Lde/mud/telnet/TelnetProtocolHandler;->neg_state:B

    move v7, v6

    .line 647
    .end local v6           #boffset:I
    .restart local v7       #boffset:I
    goto/16 :goto_1

    .line 649
    .end local v7           #boffset:I
    .restart local v6       #boffset:I
    :sswitch_1a
    move-object/from16 v0, p0

    iget-byte v0, v0, Lde/mud/telnet/TelnetProtocolHandler;->current_sb:B

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lde/mud/telnet/TelnetProtocolHandler;->sbbuf:[B

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lde/mud/telnet/TelnetProtocolHandler;->handle_sb(B[B)V

    .line 650
    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-byte v0, v1, Lde/mud/telnet/TelnetProtocolHandler;->neg_state:B

    move v7, v6

    .line 651
    .end local v6           #boffset:I
    .restart local v7       #boffset:I
    goto/16 :goto_1

    .end local v5           #b:B
    .end local v7           #boffset:I
    .end local v12           #noffset:I
    .restart local v6       #boffset:I
    .restart local v11       #noffset:I
    :cond_e
    move v12, v11

    .end local v11           #noffset:I
    .restart local v12       #noffset:I
    move v7, v6

    .end local v6           #boffset:I
    .restart local v7       #boffset:I
    goto/16 :goto_1

    .line 388
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_7
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_b
    .end packed-switch

    .line 397
    :sswitch_data_0
    .sparse-switch
        -0x11 -> :sswitch_5
        -0x6 -> :sswitch_6
        -0x5 -> :sswitch_1
        -0x4 -> :sswitch_2
        -0x3 -> :sswitch_4
        -0x2 -> :sswitch_3
        -0x1 -> :sswitch_0
    .end sparse-switch

    .line 436
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_a
        0x1 -> :sswitch_7
        0x3 -> :sswitch_8
        0x19 -> :sswitch_9
    .end sparse-switch

    .line 471
    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_e
        0x1 -> :sswitch_b
        0x3 -> :sswitch_c
        0x19 -> :sswitch_d
    .end sparse-switch

    .line 505
    :sswitch_data_3
    .sparse-switch
        0x0 -> :sswitch_12
        0x1 -> :sswitch_f
        0x3 -> :sswitch_10
        0x18 -> :sswitch_11
        0x1f -> :sswitch_13
    .end sparse-switch

    .line 565
    :sswitch_data_4
    .sparse-switch
        0x0 -> :sswitch_17
        0x1 -> :sswitch_14
        0x3 -> :sswitch_15
        0x1f -> :sswitch_16
    .end sparse-switch

    .line 608
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_8
    .end packed-switch

    .line 621
    :pswitch_data_2
    .packed-switch -0x1
        :pswitch_a
    .end packed-switch

    .line 635
    :sswitch_data_5
    .sparse-switch
        -0x10 -> :sswitch_19
        -0x6 -> :sswitch_1a
        -0x1 -> :sswitch_18
    .end sparse-switch
.end method

.method protected abstract notifyEndOfRecord()V
.end method

.method public reset()V
    .locals 2

    .prologue
    const/16 v1, 0x100

    .line 115
    const/4 v0, 0x0

    iput-byte v0, p0, Lde/mud/telnet/TelnetProtocolHandler;->neg_state:B

    .line 116
    new-array v0, v1, [B

    iput-object v0, p0, Lde/mud/telnet/TelnetProtocolHandler;->receivedDX:[B

    .line 117
    new-array v0, v1, [B

    iput-object v0, p0, Lde/mud/telnet/TelnetProtocolHandler;->sentDX:[B

    .line 118
    new-array v0, v1, [B

    iput-object v0, p0, Lde/mud/telnet/TelnetProtocolHandler;->receivedWX:[B

    .line 119
    new-array v0, v1, [B

    iput-object v0, p0, Lde/mud/telnet/TelnetProtocolHandler;->sentWX:[B

    .line 120
    return-void
.end method

.method protected abstract setLocalEcho(Z)V
.end method

.method public setWindowSize(II)V
    .locals 4
    .parameter "columns"
    .parameter "rows"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x1f

    const/4 v2, -0x1

    .line 221
    iget-object v0, p0, Lde/mud/telnet/TelnetProtocolHandler;->receivedDX:[B

    aget-byte v0, v0, v3

    const/4 v1, -0x3

    if-eq v0, v1, :cond_0

    .line 222
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "not allowed to send NAWS? (DONT NAWS)"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 231
    :goto_0
    return-void

    .line 225
    :cond_0
    invoke-direct {p0, v2}, Lde/mud/telnet/TelnetProtocolHandler;->write(B)V

    const/4 v0, -0x6

    invoke-direct {p0, v0}, Lde/mud/telnet/TelnetProtocolHandler;->write(B)V

    invoke-direct {p0, v3}, Lde/mud/telnet/TelnetProtocolHandler;->write(B)V

    .line 226
    shr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lde/mud/telnet/TelnetProtocolHandler;->write(B)V

    .line 227
    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lde/mud/telnet/TelnetProtocolHandler;->write(B)V

    .line 228
    shr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lde/mud/telnet/TelnetProtocolHandler;->write(B)V

    .line 229
    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lde/mud/telnet/TelnetProtocolHandler;->write(B)V

    .line 230
    invoke-direct {p0, v2}, Lde/mud/telnet/TelnetProtocolHandler;->write(B)V

    const/16 v0, -0x10

    invoke-direct {p0, v0}, Lde/mud/telnet/TelnetProtocolHandler;->write(B)V

    goto :goto_0
.end method

.method protected abstract write([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
