.class public Lorg/mozilla/javascript/Decompiler;
.super Ljava/lang/Object;
.source "Decompiler.java"


# static fields
.field public static final CASE_GAP_PROP:I = 0x3

.field private static final FUNCTION_END:I = 0xa3

.field public static final INDENT_GAP_PROP:I = 0x2

.field public static final INITIAL_INDENT_PROP:I = 0x1

.field public static final ONLY_BODY_FLAG:I = 0x1

.field public static final TO_SOURCE_FLAG:I = 0x2

.field private static final printSource:Z


# instance fields
.field private sourceBuffer:[C

.field private sourceTop:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 911
    const/16 v0, 0x80

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/mozilla/javascript/Decompiler;->sourceBuffer:[C

    return-void
.end method

.method private append(C)V
    .locals 2
    .parameter "c"

    .prologue
    .line 249
    iget v0, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    iget-object v1, p0, Lorg/mozilla/javascript/Decompiler;->sourceBuffer:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 250
    iget v0, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Decompiler;->increaseSourceCapacity(I)V

    .line 252
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/Decompiler;->sourceBuffer:[C

    iget v1, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    aput-char p1, v0, v1

    .line 253
    iget v0, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    .line 254
    return-void
.end method

.method private appendString(Ljava/lang/String;)V
    .locals 7
    .parameter "str"

    .prologue
    const v6, 0x8000

    .line 226
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 227
    .local v0, L:I
    const/4 v1, 0x1

    .line 228
    .local v1, lengthEncodingSize:I
    if-lt v0, v6, :cond_0

    .line 229
    const/4 v1, 0x2

    .line 231
    :cond_0
    iget v3, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    add-int/2addr v3, v1

    add-int v2, v3, v0

    .line 232
    .local v2, nextTop:I
    iget-object v3, p0, Lorg/mozilla/javascript/Decompiler;->sourceBuffer:[C

    array-length v3, v3

    if-le v2, v3, :cond_1

    .line 233
    invoke-direct {p0, v2}, Lorg/mozilla/javascript/Decompiler;->increaseSourceCapacity(I)V

    .line 235
    :cond_1
    if-lt v0, v6, :cond_2

    .line 238
    iget-object v3, p0, Lorg/mozilla/javascript/Decompiler;->sourceBuffer:[C

    iget v4, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    ushr-int/lit8 v5, v0, 0x10

    or-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v3, v4

    .line 239
    iget v3, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    .line 241
    :cond_2
    iget-object v3, p0, Lorg/mozilla/javascript/Decompiler;->sourceBuffer:[C

    iget v4, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    int-to-char v5, v0

    aput-char v5, v3, v4

    .line 242
    iget v3, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    .line 243
    const/4 v3, 0x0

    iget-object v4, p0, Lorg/mozilla/javascript/Decompiler;->sourceBuffer:[C

    iget v5, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    invoke-virtual {p1, v3, v0, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 244
    iput v2, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    .line 245
    return-void
.end method

.method public static decompile(Ljava/lang/String;ILorg/mozilla/javascript/UintMap;)Ljava/lang/String;
    .locals 13
    .parameter "source"
    .parameter "flags"
    .parameter "properties"

    .prologue
    .line 294
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 295
    .local v6, length:I
    if-nez v6, :cond_0

    const-string p0, ""

    .line 839
    .end local p0
    .end local p1
    .end local p2
    :goto_0
    return-object p0

    .line 297
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/mozilla/javascript/UintMap;->getInt(II)I

    move-result v2

    .line 298
    .local v2, indent:I
    if-gez v2, :cond_1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 299
    .restart local p0
    :cond_1
    const/4 v0, 0x2

    const/4 v1, 0x4

    invoke-virtual {p2, v0, v1}, Lorg/mozilla/javascript/UintMap;->getInt(II)I

    move-result v4

    .line 300
    .local v4, indentGap:I
    if-gez v4, :cond_2

    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 301
    .restart local p0
    :cond_2
    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-virtual {p2, v0, v1}, Lorg/mozilla/javascript/UintMap;->getInt(II)I

    move-result v1

    .line 302
    .local v1, caseGap:I
    if-gez v1, :cond_3

    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 304
    .restart local p0
    :cond_3
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 305
    .local v8, result:Ljava/lang/StringBuffer;
    and-int/lit8 p2, p1, 0x1

    if-eqz p2, :cond_4

    .end local p2
    const/4 p2, 0x1

    move v5, p2

    .line 306
    .local v5, justFunctionBody:Z
    :goto_1
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_5

    .end local p1
    const/4 p1, 0x1

    move v9, p1

    .line 335
    .local v9, toSource:Z
    :goto_2
    const/4 p2, 0x0

    .line 336
    .local p2, braceNesting:I
    const/4 p1, 0x0

    .line 337
    .local p1, afterFirstEOL:Z
    const/4 v0, 0x0

    .line 339
    .local v0, i:I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v7, 0x88

    if-ne v3, v7, :cond_6

    .line 340
    add-int/lit8 v0, v0, 0x1

    .line 341
    const/4 v3, -0x1

    .local v3, topFunctionType:I
    move v10, v3

    .line 346
    .end local v3           #topFunctionType:I
    .local v10, topFunctionType:I
    :goto_3
    if-nez v9, :cond_8

    .line 348
    const/16 v3, 0xa

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 349
    const/4 v3, 0x0

    .local v3, j:I
    :goto_4
    if-ge v3, v2, :cond_7

    .line 350
    const/16 v7, 0x20

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 349
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 305
    .end local v0           #i:I
    .end local v3           #j:I
    .end local v5           #justFunctionBody:Z
    .end local v9           #toSource:Z
    .end local v10           #topFunctionType:I
    .end local p2           #braceNesting:I
    .local p1, flags:I
    :cond_4
    const/4 p2, 0x0

    move v5, p2

    goto :goto_1

    .line 306
    .end local p1           #flags:I
    .restart local v5       #justFunctionBody:Z
    :cond_5
    const/4 p1, 0x0

    move v9, p1

    goto :goto_2

    .line 343
    .restart local v0       #i:I
    .restart local v9       #toSource:Z
    .local p1, afterFirstEOL:Z
    .restart local p2       #braceNesting:I
    :cond_6
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .local v3, topFunctionType:I
    move v10, v3

    .end local v3           #topFunctionType:I
    .restart local v10       #topFunctionType:I
    goto :goto_3

    .local v3, j:I
    :cond_7
    move v3, v2

    .end local v2           #indent:I
    .local v3, indent:I
    move v2, v0

    .end local v0           #i:I
    .local v2, i:I
    move v0, p2

    .line 357
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    :goto_5
    if-ge v2, v6, :cond_14

    .line 358
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    packed-switch p2, :pswitch_data_0

    .line 823
    :pswitch_0
    new-instance p1, Ljava/lang/RuntimeException;

    .end local p1           #afterFirstEOL:Z
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Token: "

    .end local v0           #braceNesting:I
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    .end local p0
    invoke-static {p0}, Lorg/mozilla/javascript/Token;->name(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 352
    .end local v3           #indent:I
    .local v0, i:I
    .local v2, indent:I
    .restart local p0
    .restart local p1       #afterFirstEOL:Z
    .restart local p2       #braceNesting:I
    :cond_8
    const/4 v3, 0x2

    if-ne v10, v3, :cond_9

    .line 353
    const/16 v3, 0x28

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_9
    move v3, v2

    .end local v2           #indent:I
    .restart local v3       #indent:I
    move v2, v0

    .end local v0           #i:I
    .local v2, i:I
    move v0, p2

    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    goto :goto_5

    .line 361
    :pswitch_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v7, 0x97

    if-ne p2, v7, :cond_a

    const-string p2, "get "

    :goto_6
    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 362
    add-int/lit8 p2, v2, 0x1

    .line 363
    .end local v2           #i:I
    .local p2, i:I
    add-int/lit8 p2, p2, 0x1

    const/4 v2, 0x0

    invoke-static {p0, p2, v2, v8}, Lorg/mozilla/javascript/Decompiler;->printSourceString(Ljava/lang/String;IZLjava/lang/StringBuffer;)I

    .end local p2           #i:I
    move-result p2

    .line 365
    .restart local p2       #i:I
    add-int/lit8 p2, p2, 0x1

    move v2, v3

    .end local v3           #indent:I
    .local v2, indent:I
    move v12, v0

    .end local v0           #braceNesting:I
    .local v12, braceNesting:I
    move v0, p2

    .end local p2           #i:I
    .local v0, i:I
    move p2, v12

    .line 826
    .end local v12           #braceNesting:I
    .local p2, braceNesting:I
    :goto_7
    add-int/lit8 v0, v0, 0x1

    move v3, v2

    .end local v2           #indent:I
    .restart local v3       #indent:I
    move v2, v0

    .end local v0           #i:I
    .local v2, i:I
    move v0, p2

    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    goto :goto_5

    .line 361
    :cond_a
    const-string p2, "set "

    goto :goto_6

    .line 370
    :pswitch_2
    add-int/lit8 p2, v2, 0x1

    const/4 v2, 0x0

    invoke-static {p0, p2, v2, v8}, Lorg/mozilla/javascript/Decompiler;->printSourceString(Ljava/lang/String;IZLjava/lang/StringBuffer;)I

    .end local v2           #i:I
    move-result p2

    .local p2, i:I
    move v2, p2

    .line 371
    .end local p2           #i:I
    .restart local v2       #i:I
    goto :goto_5

    .line 374
    :pswitch_3
    add-int/lit8 p2, v2, 0x1

    const/4 v2, 0x1

    invoke-static {p0, p2, v2, v8}, Lorg/mozilla/javascript/Decompiler;->printSourceString(Ljava/lang/String;IZLjava/lang/StringBuffer;)I

    .end local v2           #i:I
    move-result p2

    .restart local p2       #i:I
    move v2, p2

    .line 375
    .end local p2           #i:I
    .restart local v2       #i:I
    goto :goto_5

    .line 378
    :pswitch_4
    add-int/lit8 p2, v2, 0x1

    invoke-static {p0, p2, v8}, Lorg/mozilla/javascript/Decompiler;->printSourceNumber(Ljava/lang/String;ILjava/lang/StringBuffer;)I

    move-result p2

    .end local v2           #i:I
    .restart local p2       #i:I
    move v2, p2

    .line 379
    .end local p2           #i:I
    .restart local v2       #i:I
    goto :goto_5

    .line 382
    :pswitch_5
    const-string p2, "true"

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .local p2, braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 383
    .end local v3           #indent:I
    .local v2, indent:I
    goto :goto_7

    .line 386
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_6
    const-string p2, "false"

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 387
    .end local v3           #indent:I
    .local v2, indent:I
    goto :goto_7

    .line 390
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_7
    const-string p2, "null"

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 391
    .end local v3           #indent:I
    .local v2, indent:I
    goto :goto_7

    .line 394
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_8
    const-string p2, "this"

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 395
    .end local v3           #indent:I
    .local v2, indent:I
    goto :goto_7

    .line 398
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_9
    add-int/lit8 p2, v2, 0x1

    .line 399
    .end local v2           #i:I
    .local p2, i:I
    const-string v2, "function "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v3

    .end local v3           #indent:I
    .local v2, indent:I
    move v12, v0

    .end local v0           #braceNesting:I
    .restart local v12       #braceNesting:I
    move v0, p2

    .end local p2           #i:I
    .local v0, i:I
    move p2, v12

    .line 400
    .end local v12           #braceNesting:I
    .local p2, braceNesting:I
    goto :goto_7

    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_a
    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 404
    .end local v3           #indent:I
    .local v2, indent:I
    goto :goto_7

    .line 407
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_b
    const-string p2, ", "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 408
    .end local v3           #indent:I
    .local v2, indent:I
    goto :goto_7

    .line 411
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_c
    add-int/lit8 p2, v0, 0x1

    .line 412
    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    const/4 v0, 0x1

    invoke-static {p0, v6, v2}, Lorg/mozilla/javascript/Decompiler;->getNext(Ljava/lang/String;II)I

    move-result v7

    if-ne v0, v7, :cond_19

    .line 413
    add-int v0, v3, v4

    .line 414
    .end local v3           #indent:I
    .local v0, indent:I
    :goto_8
    const/16 v3, 0x7b

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v12, v2

    .end local v2           #i:I
    .local v12, i:I
    move v2, v0

    .end local v0           #indent:I
    .local v2, indent:I
    move v0, v12

    .line 415
    .end local v12           #i:I
    .local v0, i:I
    goto :goto_7

    .line 418
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_d
    add-int/lit8 p2, v0, -0x1

    .line 423
    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    if-eqz v5, :cond_b

    if-nez p2, :cond_b

    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 424
    .end local v3           #indent:I
    .local v2, indent:I
    goto :goto_7

    .line 426
    .end local v0           #i:I
    .local v2, i:I
    .restart local v3       #indent:I
    :cond_b
    const/16 v0, 0x7d

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 427
    invoke-static {p0, v6, v2}, Lorg/mozilla/javascript/Decompiler;->getNext(Ljava/lang/String;II)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    move v0, v3

    .end local v3           #indent:I
    .local v0, indent:I
    :goto_9
    move v12, v2

    .end local v2           #i:I
    .restart local v12       #i:I
    move v2, v0

    .end local v0           #indent:I
    .local v2, indent:I
    move v0, v12

    .line 438
    .end local v12           #i:I
    .local v0, i:I
    goto/16 :goto_7

    .line 430
    .end local v0           #i:I
    .local v2, i:I
    .restart local v3       #indent:I
    :sswitch_0
    sub-int v0, v3, v4

    .line 431
    .end local v3           #indent:I
    .local v0, indent:I
    goto :goto_9

    .line 434
    .end local v0           #indent:I
    .restart local v3       #indent:I
    :sswitch_1
    sub-int v0, v3, v4

    .line 435
    .end local v3           #indent:I
    .restart local v0       #indent:I
    const/16 v3, 0x20

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_9

    .line 441
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .restart local v3       #indent:I
    :pswitch_e
    const/16 p2, 0x28

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 442
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 445
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_f
    const/16 p2, 0x29

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 446
    const/16 p2, 0x55

    invoke-static {p0, v6, v2}, Lorg/mozilla/javascript/Decompiler;->getNext(Ljava/lang/String;II)I

    move-result v7

    if-ne p2, v7, :cond_17

    .line 447
    const/16 p2, 0x20

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 451
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_10
    const/16 p2, 0x5b

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 452
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 455
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_11
    const/16 p2, 0x5d

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 456
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 459
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_12
    if-eqz v9, :cond_c

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 460
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :cond_c
    const/4 p2, 0x1

    .line 461
    .local p2, newLine:Z
    if-nez p1, :cond_d

    .line 462
    const/4 p1, 0x1

    .line 463
    if-eqz v5, :cond_d

    .line 467
    const/4 p2, 0x0

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 468
    .end local p2           #newLine:Z
    sub-int p2, v3, v4

    .line 469
    .end local v3           #indent:I
    .local p2, indent:I
    const/4 v3, 0x0

    .local v3, newLine:Z
    move v12, v3

    .end local v3           #newLine:Z
    .local v12, newLine:Z
    move v3, p2

    .end local p2           #indent:I
    .local v3, indent:I
    move p2, v12

    .line 472
    .end local v12           #newLine:Z
    .local p2, newLine:Z
    :cond_d
    if-eqz p2, :cond_e

    .line 473
    const/16 p2, 0xa

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 480
    .end local p2           #newLine:Z
    :cond_e
    add-int/lit8 p2, v2, 0x1

    if-ge p2, v6, :cond_17

    .line 481
    const/4 v7, 0x0

    .line 482
    .local v7, less:I
    add-int/lit8 p2, v2, 0x1

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    .line 483
    .local p2, nextToken:I
    const/16 v11, 0x73

    if-eq p2, v11, :cond_f

    const/16 v11, 0x74

    if-ne p2, v11, :cond_10

    .line 486
    :cond_f
    sub-int p2, v4, v1

    .line 500
    .end local v7           #less:I
    .local p2, less:I
    :goto_a
    if-ge p2, v3, :cond_12

    .line 501
    const/16 v7, 0x20

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 500
    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    .line 487
    .restart local v7       #less:I
    .local p2, nextToken:I
    :cond_10
    const/16 v11, 0x56

    if-ne p2, v11, :cond_11

    .line 488
    move p2, v4

    .end local v7           #less:I
    .local p2, less:I
    goto :goto_a

    .line 494
    .restart local v7       #less:I
    .local p2, nextToken:I
    :cond_11
    const/16 v11, 0x27

    if-ne p2, v11, :cond_18

    .line 495
    add-int/lit8 p2, v2, 0x2

    invoke-static {p0, p2}, Lorg/mozilla/javascript/Decompiler;->getSourceStringEnd(Ljava/lang/String;I)I

    .end local p2           #nextToken:I
    move-result p2

    .line 496
    .local p2, afterName:I
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    .end local p2           #afterName:I
    const/16 v11, 0x67

    if-ne p2, v11, :cond_18

    .line 497
    move p2, v4

    .end local v7           #less:I
    .local p2, less:I
    goto :goto_a

    :cond_12
    move p2, v0

    .end local v0           #braceNesting:I
    .local p2, braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 502
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 506
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_13
    const/16 p2, 0x2e

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 507
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 510
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_14
    const-string p2, "new "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 511
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 514
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_15
    const-string p2, "delete "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 515
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 518
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_16
    const-string p2, "if "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 519
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 522
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_17
    const-string p2, "else "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 523
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 526
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_18
    const-string p2, "for "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 527
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 530
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_19
    const-string p2, " in "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 531
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 534
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_1a
    const-string p2, "with "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 535
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 538
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_1b
    const-string p2, "while "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 539
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 542
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_1c
    const-string p2, "do "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 543
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 546
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_1d
    const-string p2, "try "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 547
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 550
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_1e
    const-string p2, "catch "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 551
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 554
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_1f
    const-string p2, "finally "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 555
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 558
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_20
    const-string p2, "throw "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 559
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 562
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_21
    const-string p2, "switch "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 563
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 566
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_22
    const-string p2, "break"

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 567
    const/16 p2, 0x27

    invoke-static {p0, v6, v2}, Lorg/mozilla/javascript/Decompiler;->getNext(Ljava/lang/String;II)I

    move-result v7

    if-ne p2, v7, :cond_17

    .line 568
    const/16 p2, 0x20

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 572
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_23
    const-string p2, "continue"

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 573
    const/16 p2, 0x27

    invoke-static {p0, v6, v2}, Lorg/mozilla/javascript/Decompiler;->getNext(Ljava/lang/String;II)I

    move-result v7

    if-ne p2, v7, :cond_17

    .line 574
    const/16 p2, 0x20

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 578
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_24
    const-string p2, "case "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 579
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 582
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_25
    const-string p2, "default"

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 583
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 586
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_26
    const-string p2, "return"

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 587
    const/16 p2, 0x52

    invoke-static {p0, v6, v2}, Lorg/mozilla/javascript/Decompiler;->getNext(Ljava/lang/String;II)I

    move-result v7

    if-eq p2, v7, :cond_17

    .line 588
    const/16 p2, 0x20

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 592
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_27
    const-string p2, "var "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 593
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 596
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_28
    const-string p2, "let "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 597
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 600
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_29
    const/16 p2, 0x3b

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 601
    const/4 p2, 0x1

    invoke-static {p0, v6, v2}, Lorg/mozilla/javascript/Decompiler;->getNext(Ljava/lang/String;II)I

    move-result v7

    if-eq p2, v7, :cond_17

    .line 603
    const/16 p2, 0x20

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 608
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_2a
    const-string p2, " = "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 609
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 612
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_2b
    const-string p2, " += "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 613
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 616
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_2c
    const-string p2, " -= "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 617
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 620
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_2d
    const-string p2, " *= "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 621
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 624
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_2e
    const-string p2, " /= "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 625
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 628
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_2f
    const-string p2, " %= "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 629
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 632
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_30
    const-string p2, " |= "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 633
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 636
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_31
    const-string p2, " ^= "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 637
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 640
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_32
    const-string p2, " &= "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 641
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 644
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_33
    const-string p2, " <<= "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 645
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 648
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_34
    const-string p2, " >>= "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 649
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 652
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_35
    const-string p2, " >>>= "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 653
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 656
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_36
    const-string p2, " ? "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 657
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 665
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_37
    const/16 p2, 0x3a

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 666
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 669
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_38
    const/4 p2, 0x1

    invoke-static {p0, v6, v2}, Lorg/mozilla/javascript/Decompiler;->getNext(Ljava/lang/String;II)I

    move-result v7

    if-ne p2, v7, :cond_13

    .line 671
    const/16 p2, 0x3a

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 674
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :cond_13
    const-string p2, " : "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 675
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 678
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_39
    const-string p2, " || "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 679
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 682
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_3a
    const-string p2, " && "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 683
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 686
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_3b
    const-string p2, " | "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 687
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 690
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_3c
    const-string p2, " ^ "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 691
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 694
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_3d
    const-string p2, " & "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 695
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 698
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_3e
    const-string p2, " === "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 699
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 702
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_3f
    const-string p2, " !== "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 703
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 706
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_40
    const-string p2, " == "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 707
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 710
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_41
    const-string p2, " != "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 711
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 714
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_42
    const-string p2, " <= "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 715
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 718
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_43
    const-string p2, " < "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 719
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 722
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_44
    const-string p2, " >= "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 723
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 726
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_45
    const-string p2, " > "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 727
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 730
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_46
    const-string p2, " instanceof "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 731
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 734
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_47
    const-string p2, " << "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 735
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 738
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_48
    const-string p2, " >> "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 739
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 742
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_49
    const-string p2, " >>> "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 743
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 746
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_4a
    const-string p2, "typeof "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 747
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 750
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_4b
    const-string p2, "void "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 751
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 754
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_4c
    const-string p2, "const "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 755
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 758
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_4d
    const-string p2, "yield "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 759
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 762
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_4e
    const/16 p2, 0x21

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 763
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 766
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_4f
    const/16 p2, 0x7e

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 767
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 770
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_50
    const/16 p2, 0x2b

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 771
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 774
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_51
    const/16 p2, 0x2d

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 775
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 778
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_52
    const-string p2, "++"

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 779
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 782
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_53
    const-string p2, "--"

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 783
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 786
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_54
    const-string p2, " + "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 787
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 790
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_55
    const-string p2, " - "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 791
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 794
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_56
    const-string p2, " * "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 795
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 798
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_57
    const-string p2, " / "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 799
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 802
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_58
    const-string p2, " % "

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 803
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 806
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_59
    const-string p2, "::"

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 807
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 810
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_5a
    const-string p2, ".."

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 811
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 814
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_5b
    const-string p2, ".("

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 815
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 818
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :pswitch_5c
    const/16 p2, 0x40

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .line 819
    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .line 829
    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    :cond_14
    if-nez v9, :cond_16

    .line 831
    if-nez v5, :cond_15

    .line 832
    const/16 p0, 0xa

    invoke-virtual {v8, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 839
    .end local p0
    :cond_15
    :goto_b
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 834
    .restart local p0
    :cond_16
    const/4 p0, 0x2

    if-ne v10, p0, :cond_15

    .line 835
    .end local p0
    const/16 p0, 0x29

    invoke-virtual {v8, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_b

    .restart local p0
    :cond_17
    move p2, v0

    .end local v0           #braceNesting:I
    .restart local p2       #braceNesting:I
    move v0, v2

    .end local v2           #i:I
    .local v0, i:I
    move v2, v3

    .end local v3           #indent:I
    .local v2, indent:I
    goto/16 :goto_7

    .end local p2           #braceNesting:I
    .local v0, braceNesting:I
    .local v2, i:I
    .restart local v3       #indent:I
    .restart local v7       #less:I
    :cond_18
    move p2, v7

    .end local v7           #less:I
    .local p2, less:I
    goto/16 :goto_a

    .end local v0           #braceNesting:I
    .local p2, braceNesting:I
    :cond_19
    move v0, v3

    .end local v3           #indent:I
    .local v0, indent:I
    goto/16 :goto_8

    .line 358
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_26
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_40
        :pswitch_41
        :pswitch_43
        :pswitch_42
        :pswitch_45
        :pswitch_44
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_14
        :pswitch_15
        :pswitch_4a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_3e
        :pswitch_3f
        :pswitch_2
        :pswitch_0
        :pswitch_20
        :pswitch_0
        :pswitch_19
        :pswitch_46
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
        :pswitch_37
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1d
        :pswitch_29
        :pswitch_10
        :pswitch_11
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_b
        :pswitch_2a
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_36
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_52
        :pswitch_53
        :pswitch_13
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_17
        :pswitch_21
        :pswitch_24
        :pswitch_25
        :pswitch_1b
        :pswitch_1c
        :pswitch_18
        :pswitch_22
        :pswitch_23
        :pswitch_27
        :pswitch_1a
        :pswitch_1e
        :pswitch_1f
        :pswitch_4b
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
        :pswitch_5a
        :pswitch_59
        :pswitch_0
        :pswitch_5b
        :pswitch_5c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_28
        :pswitch_4c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
    .end packed-switch

    .line 427
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x71 -> :sswitch_1
        0x75 -> :sswitch_1
        0xa3 -> :sswitch_0
    .end sparse-switch
.end method

.method private static getNext(Ljava/lang/String;II)I
    .locals 1
    .parameter "source"
    .parameter "length"
    .parameter "i"

    .prologue
    .line 844
    add-int/lit8 v0, p2, 0x1

    if-ge v0, p1, :cond_0

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getSourceStringEnd(Ljava/lang/String;I)I
    .locals 2
    .parameter "source"
    .parameter "offset"

    .prologue
    .line 849
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lorg/mozilla/javascript/Decompiler;->printSourceString(Ljava/lang/String;IZLjava/lang/StringBuffer;)I

    move-result v0

    return v0
.end method

.method private increaseSourceCapacity(I)V
    .locals 5
    .parameter "minimalCapacity"

    .prologue
    const/4 v4, 0x0

    .line 259
    iget-object v2, p0, Lorg/mozilla/javascript/Decompiler;->sourceBuffer:[C

    array-length v2, v2

    if-gt p1, v2, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 260
    :cond_0
    iget-object v2, p0, Lorg/mozilla/javascript/Decompiler;->sourceBuffer:[C

    array-length v2, v2

    mul-int/lit8 v0, v2, 0x2

    .line 261
    .local v0, newCapacity:I
    if-ge v0, p1, :cond_1

    .line 262
    move v0, p1

    .line 264
    :cond_1
    new-array v1, v0, [C

    .line 265
    .local v1, tmp:[C
    iget-object v2, p0, Lorg/mozilla/javascript/Decompiler;->sourceBuffer:[C

    iget v3, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    iput-object v1, p0, Lorg/mozilla/javascript/Decompiler;->sourceBuffer:[C

    .line 267
    return-void
.end method

.method private static printSourceNumber(Ljava/lang/String;ILjava/lang/StringBuffer;)I
    .locals 10
    .parameter "source"
    .parameter "offset"
    .parameter "sb"

    .prologue
    const/16 v9, 0x4a

    .line 878
    const-wide/16 v3, 0x0

    .line 879
    .local v3, number:D
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 880
    .local v5, type:C
    add-int/lit8 p1, p1, 0x1

    .line 881
    const/16 v6, 0x53

    if-ne v5, v6, :cond_2

    .line 882
    if-eqz p2, :cond_0

    .line 883
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 884
    .local v0, ival:I
    int-to-double v3, v0

    .line 886
    .end local v0           #ival:I
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 905
    :goto_0
    if-eqz p2, :cond_1

    .line 906
    const/16 v6, 0xa

    invoke-static {v3, v4, v6}, Lorg/mozilla/javascript/ScriptRuntime;->numberToString(DI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 908
    :cond_1
    return p1

    .line 887
    :cond_2
    if-eq v5, v9, :cond_3

    const/16 v6, 0x44

    if-ne v5, v6, :cond_6

    .line 888
    :cond_3
    if-eqz p2, :cond_4

    .line 890
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-long v6, v6

    const/16 v8, 0x30

    shl-long v1, v6, v8

    .line 891
    .local v1, lbits:J
    add-int/lit8 v6, p1, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-long v6, v6

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v1, v6

    .line 892
    add-int/lit8 v6, p1, 0x2

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-long v6, v6

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v1, v6

    .line 893
    add-int/lit8 v6, p1, 0x3

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-long v6, v6

    or-long/2addr v1, v6

    .line 894
    if-ne v5, v9, :cond_5

    .line 895
    long-to-double v3, v1

    .line 900
    .end local v1           #lbits:J
    :cond_4
    :goto_1
    add-int/lit8 p1, p1, 0x4

    goto :goto_0

    .line 897
    .restart local v1       #lbits:J
    :cond_5
    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    goto :goto_1

    .line 903
    .end local v1           #lbits:J
    :cond_6
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6}, Ljava/lang/RuntimeException;-><init>()V

    throw v6
.end method

.method private static printSourceString(Ljava/lang/String;IZLjava/lang/StringBuffer;)I
    .locals 5
    .parameter "source"
    .parameter "offset"
    .parameter "asQuotedString"
    .parameter "sb"

    .prologue
    const/16 v4, 0x22

    .line 856
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 857
    .local v0, length:I
    add-int/lit8 p1, p1, 0x1

    .line 858
    const v2, 0x8000

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    .line 859
    and-int/lit16 v2, v0, 0x7fff

    shl-int/lit8 v2, v2, 0x10

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    or-int v0, v2, v3

    .line 860
    add-int/lit8 p1, p1, 0x1

    .line 862
    :cond_0
    if-eqz p3, :cond_1

    .line 863
    add-int v2, p1, v0

    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 864
    .local v1, str:Ljava/lang/String;
    if-nez p2, :cond_2

    .line 865
    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 872
    .end local v1           #str:Ljava/lang/String;
    :cond_1
    :goto_0
    add-int v2, p1, v0

    return v2

    .line 867
    .restart local v1       #str:Ljava/lang/String;
    :cond_2
    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 868
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 869
    invoke-virtual {p3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private sourceToString(I)Ljava/lang/String;
    .locals 3
    .parameter "offset"

    .prologue
    .line 271
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    if-ge v0, p1, :cond_1

    :cond_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 272
    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/Decompiler;->sourceBuffer:[C

    iget v2, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method


# virtual methods
.method addEOL(I)V
    .locals 1
    .parameter "token"

    .prologue
    .line 146
    if-ltz p1, :cond_0

    const/16 v0, 0xa2

    if-le p1, v0, :cond_1

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 149
    :cond_1
    int-to-char v0, p1

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    .line 150
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    .line 151
    return-void
.end method

.method addName(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 155
    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 156
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Decompiler;->appendString(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method addNumber(D)V
    .locals 7
    .parameter "n"

    .prologue
    const/16 v6, 0x30

    const/16 v5, 0x20

    const/16 v4, 0x10

    .line 173
    const/16 v2, 0x28

    invoke-virtual {p0, v2}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 192
    double-to-long v0, p1

    .line 193
    .local v0, lbits:J
    long-to-double v2, v0

    cmpl-double v2, v2, p1

    if-eqz v2, :cond_0

    .line 196
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 197
    const/16 v2, 0x44

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    .line 198
    shr-long v2, v0, v6

    long-to-int v2, v2

    int-to-char v2, v2

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    .line 199
    shr-long v2, v0, v5

    long-to-int v2, v2

    int-to-char v2, v2

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    .line 200
    shr-long v2, v0, v4

    long-to-int v2, v2

    int-to-char v2, v2

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    .line 201
    long-to-int v2, v0

    int-to-char v2, v2

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    .line 222
    :goto_0
    return-void

    .line 206
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 210
    :cond_1
    const-wide/32 v2, 0xffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 211
    const/16 v2, 0x53

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    .line 212
    long-to-int v2, v0

    int-to-char v2, v2

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    goto :goto_0

    .line 215
    :cond_2
    const/16 v2, 0x4a

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    .line 216
    shr-long v2, v0, v6

    long-to-int v2, v2

    int-to-char v2, v2

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    .line 217
    shr-long v2, v0, v5

    long-to-int v2, v2

    int-to-char v2, v2

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    .line 218
    shr-long v2, v0, v4

    long-to-int v2, v2

    int-to-char v2, v2

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    .line 219
    long-to-int v2, v0

    int-to-char v2, v2

    invoke-direct {p0, v2}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    goto :goto_0
.end method

.method addRegexp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "regexp"
    .parameter "flags"

    .prologue
    const/16 v1, 0x2f

    .line 167
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Decompiler;->appendString(Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method addString(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 161
    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 162
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/Decompiler;->appendString(Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method addToken(I)V
    .locals 1
    .parameter "token"

    .prologue
    .line 138
    if-ltz p1, :cond_0

    const/16 v0, 0xa2

    if-le p1, v0, :cond_1

    .line 139
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 141
    :cond_1
    int-to-char v0, p1

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    .line 142
    return-void
.end method

.method getCurrentOffset()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lorg/mozilla/javascript/Decompiler;->sourceTop:I

    return v0
.end method

.method getEncodedSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/mozilla/javascript/Decompiler;->sourceToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method markFunctionEnd(I)I
    .locals 2
    .parameter "functionStart"

    .prologue
    .line 131
    invoke-virtual {p0}, Lorg/mozilla/javascript/Decompiler;->getCurrentOffset()I

    move-result v0

    .line 132
    .local v0, offset:I
    const/16 v1, 0xa3

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    .line 133
    return v0
.end method

.method markFunctionStart(I)I
    .locals 2
    .parameter "functionType"

    .prologue
    .line 123
    invoke-virtual {p0}, Lorg/mozilla/javascript/Decompiler;->getCurrentOffset()I

    move-result v0

    .line 124
    .local v0, savedOffset:I
    const/16 v1, 0x6d

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Decompiler;->addToken(I)V

    .line 125
    int-to-char v1, p1

    invoke-direct {p0, v1}, Lorg/mozilla/javascript/Decompiler;->append(C)V

    .line 126
    return v0
.end method
