.class public Lcom/jcraft/jcterm/EmulatorVT100;
.super Lcom/jcraft/jcterm/Emulator;
.source "EmulatorVT100.java"


# static fields
.field private static DOWN:[B

.field private static ENTER:[B

.field private static F1:[B

.field private static F10:[B

.field private static F2:[B

.field private static F3:[B

.field private static F4:[B

.field private static F5:[B

.field private static F6:[B

.field private static F7:[B

.field private static F8:[B

.field private static F9:[B

.field private static LEFT:[B

.field private static RIGHT:[B

.field private static UP:[B

.field private static tab:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 554
    new-array v0, v4, [B

    const/16 v1, 0xd

    aput-byte v1, v0, v3

    sput-object v0, Lcom/jcraft/jcterm/EmulatorVT100;->ENTER:[B

    .line 555
    new-array v0, v2, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jcraft/jcterm/EmulatorVT100;->UP:[B

    .line 556
    new-array v0, v2, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/jcraft/jcterm/EmulatorVT100;->DOWN:[B

    .line 557
    new-array v0, v2, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/jcraft/jcterm/EmulatorVT100;->RIGHT:[B

    .line 558
    new-array v0, v2, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/jcraft/jcterm/EmulatorVT100;->LEFT:[B

    .line 559
    new-array v0, v2, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/jcraft/jcterm/EmulatorVT100;->F1:[B

    .line 560
    new-array v0, v2, [B

    fill-array-data v0, :array_5

    sput-object v0, Lcom/jcraft/jcterm/EmulatorVT100;->F2:[B

    .line 561
    new-array v0, v2, [B

    fill-array-data v0, :array_6

    sput-object v0, Lcom/jcraft/jcterm/EmulatorVT100;->F3:[B

    .line 562
    new-array v0, v2, [B

    fill-array-data v0, :array_7

    sput-object v0, Lcom/jcraft/jcterm/EmulatorVT100;->F4:[B

    .line 563
    new-array v0, v2, [B

    fill-array-data v0, :array_8

    sput-object v0, Lcom/jcraft/jcterm/EmulatorVT100;->F5:[B

    .line 564
    new-array v0, v2, [B

    fill-array-data v0, :array_9

    sput-object v0, Lcom/jcraft/jcterm/EmulatorVT100;->F6:[B

    .line 565
    new-array v0, v2, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/jcraft/jcterm/EmulatorVT100;->F7:[B

    .line 566
    new-array v0, v2, [B

    fill-array-data v0, :array_b

    sput-object v0, Lcom/jcraft/jcterm/EmulatorVT100;->F8:[B

    .line 567
    new-array v0, v2, [B

    fill-array-data v0, :array_c

    sput-object v0, Lcom/jcraft/jcterm/EmulatorVT100;->F9:[B

    .line 568
    new-array v0, v2, [B

    fill-array-data v0, :array_d

    sput-object v0, Lcom/jcraft/jcterm/EmulatorVT100;->F10:[B

    .line 569
    new-array v0, v4, [B

    const/16 v1, 0x9

    aput-byte v1, v0, v3

    sput-object v0, Lcom/jcraft/jcterm/EmulatorVT100;->tab:[B

    .line 27
    return-void

    .line 555
    :array_0
    .array-data 0x1
        0x1bt
        0x4ft
        0x41t
    .end array-data

    .line 556
    :array_1
    .array-data 0x1
        0x1bt
        0x4ft
        0x42t
    .end array-data

    .line 557
    :array_2
    .array-data 0x1
        0x1bt
        0x4ft
        0x43t
    .end array-data

    .line 558
    :array_3
    .array-data 0x1
        0x1bt
        0x4ft
        0x44t
    .end array-data

    .line 559
    :array_4
    .array-data 0x1
        0x1bt
        0x4ft
        0x50t
    .end array-data

    .line 560
    :array_5
    .array-data 0x1
        0x1bt
        0x4ft
        0x51t
    .end array-data

    .line 561
    :array_6
    .array-data 0x1
        0x1bt
        0x4ft
        0x52t
    .end array-data

    .line 562
    :array_7
    .array-data 0x1
        0x1bt
        0x4ft
        0x53t
    .end array-data

    .line 563
    :array_8
    .array-data 0x1
        0x1bt
        0x4ft
        0x74t
    .end array-data

    .line 564
    :array_9
    .array-data 0x1
        0x1bt
        0x4ft
        0x75t
    .end array-data

    .line 565
    :array_a
    .array-data 0x1
        0x1bt
        0x4ft
        0x76t
    .end array-data

    .line 566
    :array_b
    .array-data 0x1
        0x1bt
        0x4ft
        0x49t
    .end array-data

    .line 567
    :array_c
    .array-data 0x1
        0x1bt
        0x4ft
        0x77t
    .end array-data

    .line 568
    :array_d
    .array-data 0x1
        0x1bt
        0x4ft
        0x78t
    .end array-data
.end method

.method public constructor <init>(Lcom/jcraft/jcterm/Term;Ljava/io/InputStream;)V
    .locals 0
    .parameter "term"
    .parameter "in"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/jcraft/jcterm/Emulator;-><init>(Lcom/jcraft/jcterm/Term;Ljava/io/InputStream;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getCodeDOWN()[B
    .locals 1

    .prologue
    .line 580
    sget-object v0, Lcom/jcraft/jcterm/EmulatorVT100;->DOWN:[B

    return-object v0
.end method

.method public getCodeENTER()[B
    .locals 1

    .prologue
    .line 572
    sget-object v0, Lcom/jcraft/jcterm/EmulatorVT100;->ENTER:[B

    return-object v0
.end method

.method public getCodeF1()[B
    .locals 1

    .prologue
    .line 592
    sget-object v0, Lcom/jcraft/jcterm/EmulatorVT100;->F1:[B

    return-object v0
.end method

.method public getCodeF10()[B
    .locals 1

    .prologue
    .line 628
    sget-object v0, Lcom/jcraft/jcterm/EmulatorVT100;->F10:[B

    return-object v0
.end method

.method public getCodeF2()[B
    .locals 1

    .prologue
    .line 596
    sget-object v0, Lcom/jcraft/jcterm/EmulatorVT100;->F2:[B

    return-object v0
.end method

.method public getCodeF3()[B
    .locals 1

    .prologue
    .line 600
    sget-object v0, Lcom/jcraft/jcterm/EmulatorVT100;->F3:[B

    return-object v0
.end method

.method public getCodeF4()[B
    .locals 1

    .prologue
    .line 604
    sget-object v0, Lcom/jcraft/jcterm/EmulatorVT100;->F4:[B

    return-object v0
.end method

.method public getCodeF5()[B
    .locals 1

    .prologue
    .line 608
    sget-object v0, Lcom/jcraft/jcterm/EmulatorVT100;->F5:[B

    return-object v0
.end method

.method public getCodeF6()[B
    .locals 1

    .prologue
    .line 612
    sget-object v0, Lcom/jcraft/jcterm/EmulatorVT100;->F6:[B

    return-object v0
.end method

.method public getCodeF7()[B
    .locals 1

    .prologue
    .line 616
    sget-object v0, Lcom/jcraft/jcterm/EmulatorVT100;->F7:[B

    return-object v0
.end method

.method public getCodeF8()[B
    .locals 1

    .prologue
    .line 620
    sget-object v0, Lcom/jcraft/jcterm/EmulatorVT100;->F8:[B

    return-object v0
.end method

.method public getCodeF9()[B
    .locals 1

    .prologue
    .line 624
    sget-object v0, Lcom/jcraft/jcterm/EmulatorVT100;->F9:[B

    return-object v0
.end method

.method public getCodeLEFT()[B
    .locals 1

    .prologue
    .line 588
    sget-object v0, Lcom/jcraft/jcterm/EmulatorVT100;->LEFT:[B

    return-object v0
.end method

.method public getCodeRIGHT()[B
    .locals 1

    .prologue
    .line 584
    sget-object v0, Lcom/jcraft/jcterm/EmulatorVT100;->RIGHT:[B

    return-object v0
.end method

.method public getCodeTAB()[B
    .locals 1

    .prologue
    .line 632
    sget-object v0, Lcom/jcraft/jcterm/EmulatorVT100;->tab:[B

    return-object v0
.end method

.method public getCodeUP()[B
    .locals 1

    .prologue
    .line 576
    sget-object v0, Lcom/jcraft/jcterm/EmulatorVT100;->UP:[B

    return-object v0
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/jcraft/jcterm/EmulatorVT100;->in:Ljava/io/InputStream;

    .line 35
    return-void
.end method

.method public setTerm(Lcom/jcraft/jcterm/Term;)V
    .locals 0
    .parameter "term"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/jcraft/jcterm/EmulatorVT100;->term:Lcom/jcraft/jcterm/Term;

    .line 39
    return-void
.end method

.method public start()V
    .locals 15

    .prologue
    const/16 v14, 0x68

    const/16 v13, 0x30

    const/16 v12, 0x1b

    const/4 v9, 0x0

    .line 42
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->reset()V

    .line 44
    const/16 v8, 0xa

    new-array v5, v8, [I

    .line 45
    .local v5, intarg:[I
    const/4 v6, 0x0

    .line 47
    .local v6, intargi:I
    iput v9, p0, Lcom/jcraft/jcterm/EmulatorVT100;->x:I

    .line 48
    iget v8, p0, Lcom/jcraft/jcterm/EmulatorVT100;->char_height:I

    iput v8, p0, Lcom/jcraft/jcterm/EmulatorVT100;->y:I

    .line 55
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->getChar()B

    move-result v0

    .line 160
    .local v0, b:B
    if-eqz v0, :cond_0

    .line 164
    if-ne v0, v12, :cond_24

    .line 165
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->getChar()B

    move-result v0

    .line 169
    const/16 v8, 0x4d

    if-ne v0, v8, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->scroll_reverse()V

    goto :goto_0

    .line 550
    .end local v0           #b:B
    :catch_0
    move-exception v8

    .line 552
    return-void

    .line 174
    .restart local v0       #b:B
    :cond_1
    const/16 v8, 0x44

    if-ne v0, v8, :cond_2

    .line 175
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->scroll_forward()V

    goto :goto_0

    .line 179
    :cond_2
    const/16 v8, 0x37

    if-ne v0, v8, :cond_3

    .line 180
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->save_cursor()V

    goto :goto_0

    .line 184
    :cond_3
    const/16 v8, 0x28

    if-ne v0, v8, :cond_5

    .line 185
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->getChar()B

    move-result v0

    .line 186
    .restart local v0       #b:B
    const/16 v8, 0x42

    if-ne v0, v8, :cond_8

    .line 187
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->getChar()B

    move-result v0

    .line 188
    .restart local v0       #b:B
    if-ne v0, v12, :cond_7

    .line 189
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->getChar()B

    move-result v0

    .line 190
    .restart local v0       #b:B
    const/16 v8, 0x29

    if-ne v0, v8, :cond_6

    .line 191
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->getChar()B

    move-result v0

    .line 192
    .restart local v0       #b:B
    if-ne v0, v13, :cond_4

    .line 193
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->ena_acs()V

    goto :goto_0

    .line 197
    :cond_4
    const/16 v8, 0x30

    invoke-virtual {p0, v8}, Lcom/jcraft/jcterm/EmulatorVT100;->pushChar(B)V

    .line 213
    :cond_5
    :goto_1
    const/16 v8, 0x3e

    if-ne v0, v8, :cond_9

    .line 214
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->getChar()B

    move-result v0

    .line 215
    .restart local v0       #b:B
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->getChar()B

    move-result v0

    .line 216
    .restart local v0       #b:B
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->getChar()B

    move-result v0

    .line 217
    .restart local v0       #b:B
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->getChar()B

    move-result v0

    .line 218
    .restart local v0       #b:B
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->getChar()B

    move-result v0

    .line 219
    .restart local v0       #b:B
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->getChar()B

    move-result v0

    .line 220
    .restart local v0       #b:B
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->getChar()B

    move-result v0

    .line 221
    .restart local v0       #b:B
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->getChar()B

    move-result v0

    .line 222
    .restart local v0       #b:B
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->getChar()B

    move-result v0

    .line 223
    .restart local v0       #b:B
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->getChar()B

    move-result v0

    .line 224
    .restart local v0       #b:B
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->getChar()B

    move-result v0

    .line 225
    .restart local v0       #b:B
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->getChar()B

    move-result v0

    .line 226
    .restart local v0       #b:B
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->getChar()B

    move-result v0

    .line 227
    .restart local v0       #b:B
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->getChar()B

    move-result v0

    .line 228
    .restart local v0       #b:B
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->getChar()B

    move-result v0

    .line 229
    .restart local v0       #b:B
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->getChar()B

    move-result v0

    .line 230
    .restart local v0       #b:B
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->getChar()B

    move-result v0

    .line 231
    .restart local v0       #b:B
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->getChar()B

    move-result v0

    .line 232
    .restart local v0       #b:B
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->getChar()B

    move-result v0

    .line 233
    .restart local v0       #b:B
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->getChar()B

    move-result v0

    .line 234
    .restart local v0       #b:B
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->getChar()B

    move-result v0

    .line 235
    .restart local v0       #b:B
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->getChar()B

    move-result v0

    .line 236
    .restart local v0       #b:B
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->getChar()B

    move-result v0

    .line 237
    .restart local v0       #b:B
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->getChar()B

    move-result v0

    .line 238
    .restart local v0       #b:B
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->getChar()B

    move-result v0

    .line 240
    .restart local v0       #b:B
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->reset_2string()V

    goto/16 :goto_0

    .line 201
    :cond_6
    const/16 v8, 0x29

    invoke-virtual {p0, v8}, Lcom/jcraft/jcterm/EmulatorVT100;->pushChar(B)V

    goto :goto_1

    .line 205
    :cond_7
    const/16 v8, 0x1b

    invoke-virtual {p0, v8}, Lcom/jcraft/jcterm/EmulatorVT100;->pushChar(B)V

    goto :goto_1

    .line 209
    :cond_8
    const/16 v8, 0x42

    invoke-virtual {p0, v8}, Lcom/jcraft/jcterm/EmulatorVT100;->pushChar(B)V

    goto :goto_1

    .line 244
    :cond_9
    const/16 v8, 0x5b

    if-eq v0, v8, :cond_a

    .line 245
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "@11: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/Character;

    int-to-char v11, v0

    invoke-direct {v10, v11}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 246
    and-int/lit16 v10, v0, 0xff

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 245
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0, v0}, Lcom/jcraft/jcterm/EmulatorVT100;->pushChar(B)V

    goto/16 :goto_0

    .line 253
    :cond_a
    const/4 v6, 0x0

    .line 254
    const/4 v8, 0x0

    aput v8, v5, v6

    .line 255
    const/4 v2, 0x0

    .line 258
    .local v2, digit:I
    :cond_b
    :goto_2
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->getChar()B

    move-result v0

    .line 260
    .restart local v0       #b:B
    const/16 v8, 0x3b

    if-ne v0, v8, :cond_c

    .line 261
    if-lez v2, :cond_b

    .line 262
    add-int/lit8 v6, v6, 0x1

    .line 263
    const/4 v8, 0x0

    aput v8, v5, v6

    .line 264
    const/4 v2, 0x0

    .line 266
    goto :goto_2

    .line 269
    :cond_c
    if-gt v13, v0, :cond_d

    const/16 v8, 0x39

    if-gt v0, v8, :cond_d

    .line 270
    aget v8, v5, v6

    mul-int/lit8 v8, v8, 0xa

    sub-int v9, v0, v13

    add-int/2addr v8, v9

    aput v8, v5, v6

    .line 271
    add-int/lit8 v2, v2, 0x1

    .line 272
    goto :goto_2

    .line 275
    :cond_d
    invoke-virtual {p0, v0}, Lcom/jcraft/jcterm/EmulatorVT100;->pushChar(B)V

    .line 279
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->getChar()B

    move-result v0

    .line 283
    .restart local v0       #b:B
    const/16 v8, 0x6d

    if-ne v0, v8, :cond_13

    .line 296
    if-nez v2, :cond_f

    if-nez v6, :cond_f

    .line 297
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->getChar()B

    move-result v0

    .line 298
    .restart local v0       #b:B
    const/16 v8, 0xf

    if-ne v0, v8, :cond_e

    .line 299
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->exit_attribute_mode()V

    goto/16 :goto_0

    .line 303
    :cond_e
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->exit_underline_mode()V

    .line 304
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->exit_standout_mode()V

    .line 305
    invoke-virtual {p0, v0}, Lcom/jcraft/jcterm/EmulatorVT100;->pushChar(B)V

    goto/16 :goto_0

    .line 310
    :cond_f
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    if-gt v4, v6, :cond_0

    .line 311
    const/4 v3, 0x0

    .line 312
    .local v3, fg:Ljava/lang/Object;
    const/4 v1, 0x0

    .line 313
    .local v1, bg:Ljava/lang/Object;
    const/4 v7, 0x0

    .line 315
    .local v7, tmp:Ljava/lang/Object;
    aget v8, v5, v4

    packed-switch v8, :pswitch_data_0

    .line 360
    .end local v3           #fg:Ljava/lang/Object;
    .end local v1           #bg:Ljava/lang/Object;
    .end local v7           #tmp:Ljava/lang/Object;
    :cond_10
    :goto_4
    :pswitch_0
    if-eqz v3, :cond_11

    .line 361
    iget-object v8, p0, Lcom/jcraft/jcterm/EmulatorVT100;->term:Lcom/jcraft/jcterm/Term;

    invoke-interface {v8, v3}, Lcom/jcraft/jcterm/Term;->setForeGround(Ljava/lang/Object;)V

    .line 362
    :cond_11
    if-eqz v1, :cond_12

    .line 363
    iget-object v8, p0, Lcom/jcraft/jcterm/EmulatorVT100;->term:Lcom/jcraft/jcterm/Term;

    invoke-interface {v8, v1}, Lcom/jcraft/jcterm/Term;->setBackGround(Ljava/lang/Object;)V

    .line 310
    :cond_12
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 317
    .restart local v1       #bg:Ljava/lang/Object;
    .restart local v3       #fg:Ljava/lang/Object;
    .restart local v7       #tmp:Ljava/lang/Object;
    :pswitch_1
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->exit_standout_mode()V

    goto :goto_5

    .line 320
    :pswitch_2
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->enter_bold_mode()V

    goto :goto_5

    .line 325
    :pswitch_3
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->enter_underline_mode()V

    goto :goto_5

    .line 331
    :pswitch_4
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->enter_reverse_mode()V

    goto :goto_5

    .line 341
    :pswitch_5
    iget-object v8, p0, Lcom/jcraft/jcterm/EmulatorVT100;->term:Lcom/jcraft/jcterm/Term;

    aget v9, v5, v4

    const/16 v10, 0x1e

    sub-int/2addr v9, v10

    invoke-interface {v8, v9}, Lcom/jcraft/jcterm/Term;->getColor(I)Ljava/lang/Object;

    move-result-object v7

    .line 342
    .local v7, tmp:Ljava/lang/Object;
    if-eqz v7, :cond_10

    .line 343
    move-object v3, v7

    .line 344
    .local v3, fg:Ljava/lang/Object;
    goto :goto_4

    .line 353
    .local v3, fg:Ljava/lang/Object;
    .local v7, tmp:Ljava/lang/Object;
    :pswitch_6
    iget-object v8, p0, Lcom/jcraft/jcterm/EmulatorVT100;->term:Lcom/jcraft/jcterm/Term;

    aget v9, v5, v4

    const/16 v10, 0x28

    sub-int/2addr v9, v10

    invoke-interface {v8, v9}, Lcom/jcraft/jcterm/Term;->getColor(I)Ljava/lang/Object;

    move-result-object v7

    .line 354
    .local v7, tmp:Ljava/lang/Object;
    if-eqz v7, :cond_10

    .line 355
    move-object v1, v7

    .line 356
    .local v1, bg:Ljava/lang/Object;
    goto :goto_4

    .line 369
    .end local v4           #i:I
    .end local v3           #fg:Ljava/lang/Object;
    .end local v7           #tmp:Ljava/lang/Object;
    .end local v1           #bg:Ljava/lang/Object;
    :cond_13
    const/16 v8, 0x72

    if-ne v0, v8, :cond_14

    .line 370
    const/4 v8, 0x0

    aget v8, v5, v8

    const/4 v9, 0x1

    aget v9, v5, v9

    invoke-virtual {p0, v8, v9}, Lcom/jcraft/jcterm/EmulatorVT100;->change_scroll_region(II)V

    goto/16 :goto_0

    .line 375
    :cond_14
    const/16 v8, 0x48

    if-ne v0, v8, :cond_16

    .line 388
    if-nez v2, :cond_15

    if-nez v6, :cond_15

    .line 389
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    aput v10, v5, v9

    aput v10, v5, v8

    .line 393
    :cond_15
    const/4 v8, 0x0

    aget v8, v5, v8

    const/4 v9, 0x1

    aget v9, v5, v9

    invoke-virtual {p0, v8, v9}, Lcom/jcraft/jcterm/EmulatorVT100;->cursor_address(II)V

    goto/16 :goto_0

    .line 397
    :cond_16
    const/16 v8, 0x42

    if-ne v0, v8, :cond_17

    .line 398
    const/4 v8, 0x0

    aget v8, v5, v8

    invoke-virtual {p0, v8}, Lcom/jcraft/jcterm/EmulatorVT100;->parm_down_cursor(I)V

    goto/16 :goto_0

    .line 402
    :cond_17
    const/16 v8, 0x44

    if-ne v0, v8, :cond_18

    .line 403
    const/4 v8, 0x0

    aget v8, v5, v8

    invoke-virtual {p0, v8}, Lcom/jcraft/jcterm/EmulatorVT100;->parm_left_cursor(I)V

    goto/16 :goto_0

    .line 407
    :cond_18
    const/16 v8, 0x43

    if-ne v0, v8, :cond_1a

    .line 408
    if-nez v2, :cond_19

    if-nez v6, :cond_19

    .line 409
    const/4 v8, 0x0

    const/4 v9, 0x1

    aput v9, v5, v8

    .line 411
    :cond_19
    const/4 v8, 0x0

    aget v8, v5, v8

    invoke-virtual {p0, v8}, Lcom/jcraft/jcterm/EmulatorVT100;->parm_right_cursor(I)V

    goto/16 :goto_0

    .line 415
    :cond_1a
    const/16 v8, 0x4b

    if-ne v0, v8, :cond_1c

    .line 428
    if-nez v2, :cond_1b

    if-nez v6, :cond_1b

    .line 429
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->clr_eol()V

    goto/16 :goto_0

    .line 432
    :cond_1b
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->clr_bol()V

    goto/16 :goto_0

    .line 437
    :cond_1c
    const/16 v8, 0x4a

    if-ne v0, v8, :cond_1d

    .line 440
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->clr_eos()V

    goto/16 :goto_0

    .line 444
    :cond_1d
    const/16 v8, 0x41

    if-ne v0, v8, :cond_1f

    .line 445
    if-nez v2, :cond_1e

    if-nez v6, :cond_1e

    .line 446
    const/4 v8, 0x0

    const/4 v9, 0x1

    aput v9, v5, v8

    .line 448
    :cond_1e
    const/4 v8, 0x0

    aget v8, v5, v8

    invoke-virtual {p0, v8}, Lcom/jcraft/jcterm/EmulatorVT100;->parm_up_cursor(I)V

    goto/16 :goto_0

    .line 452
    :cond_1f
    const/16 v8, 0x3f

    if-ne v0, v8, :cond_21

    .line 453
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->getChar()B

    move-result v0

    .line 454
    .restart local v0       #b:B
    const/16 v8, 0x31

    if-ne v0, v8, :cond_23

    .line 455
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->getChar()B

    move-result v0

    .line 456
    .restart local v0       #b:B
    const/16 v8, 0x6c

    if-eq v0, v8, :cond_20

    if-ne v0, v14, :cond_22

    .line 457
    :cond_20
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->getChar()B

    move-result v0

    .line 458
    .restart local v0       #b:B
    if-ne v0, v12, :cond_21

    .line 459
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->getChar()B

    move-result v0

    .line 460
    .restart local v0       #b:B
    const/16 v8, 0x3e

    if-eq v0, v8, :cond_0

    .line 461
    const/16 v8, 0x3d

    if-eq v0, v8, :cond_0

    .line 496
    :cond_21
    :goto_6
    if-eq v0, v14, :cond_0

    .line 500
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "unknown "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    and-int/lit16 v10, v0, 0xff

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 501
    new-instance v10, Ljava/lang/Character;

    int-to-char v11, v0

    invoke-direct {v10, v11}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget v10, v5, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget v10, v5, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 502
    const/4 v10, 0x2

    aget v10, v5, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",intargi="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 500
    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 467
    :cond_22
    if-ne v0, v14, :cond_21

    .line 468
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->getChar()B

    move-result v0

    .line 469
    .restart local v0       #b:B
    if-ne v0, v12, :cond_21

    .line 470
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->getChar()B

    move-result v0

    .line 471
    .restart local v0       #b:B
    const/16 v8, 0x3d

    if-ne v0, v8, :cond_21

    goto/16 :goto_0

    .line 477
    :cond_23
    const/16 v8, 0x37

    if-ne v0, v8, :cond_21

    .line 478
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->getChar()B

    move-result v0

    .line 479
    .restart local v0       #b:B
    if-eq v0, v14, :cond_0

    .line 484
    const/16 v8, 0x6c

    if-eq v0, v8, :cond_0

    .line 489
    invoke-virtual {p0, v0}, Lcom/jcraft/jcterm/EmulatorVT100;->pushChar(B)V

    .line 490
    const/16 v0, 0x37

    goto/16 :goto_6

    .line 506
    .end local v2           #digit:I
    :cond_24
    const/4 v8, 0x7

    if-ne v0, v8, :cond_25

    .line 507
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->bell()V

    goto/16 :goto_0

    .line 511
    :cond_25
    const/16 v8, 0x9

    if-ne v0, v8, :cond_26

    .line 512
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->tab()V

    goto/16 :goto_0

    .line 516
    :cond_26
    const/16 v8, 0xf

    if-ne v0, v8, :cond_27

    .line 517
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->exit_alt_charset_mode()V

    goto/16 :goto_0

    .line 521
    :cond_27
    const/16 v8, 0xe

    if-ne v0, v8, :cond_28

    .line 522
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->enter_alt_charset_mode()V

    goto/16 :goto_0

    .line 526
    :cond_28
    const/16 v8, 0xd

    if-ne v0, v8, :cond_29

    .line 527
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->carriage_return()V

    goto/16 :goto_0

    .line 531
    :cond_29
    const/16 v8, 0x8

    if-ne v0, v8, :cond_2a

    .line 532
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->cursor_left()V

    goto/16 :goto_0

    .line 536
    :cond_2a
    const/16 v8, 0xa

    if-ne v0, v8, :cond_2b

    .line 538
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->cursor_down()V

    goto/16 :goto_0

    .line 543
    :cond_2b
    const/16 v8, 0xa

    if-eq v0, v8, :cond_0

    .line 544
    invoke-virtual {p0, v0}, Lcom/jcraft/jcterm/EmulatorVT100;->pushChar(B)V

    .line 545
    invoke-virtual {p0}, Lcom/jcraft/jcterm/EmulatorVT100;->draw_text()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method
