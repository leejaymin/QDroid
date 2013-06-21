.class public Lorg/mozilla/javascript/regexp/RegExpImpl;
.super Ljava/lang/Object;
.source "RegExpImpl.java"

# interfaces
.implements Lorg/mozilla/javascript/RegExpProxy;


# instance fields
.field input:Ljava/lang/String;

.field lastMatch:Lorg/mozilla/javascript/regexp/SubString;

.field lastParen:Lorg/mozilla/javascript/regexp/SubString;

.field leftContext:Lorg/mozilla/javascript/regexp/SubString;

.field multiline:Z

.field parens:[Lorg/mozilla/javascript/regexp/SubString;

.field rightContext:Lorg/mozilla/javascript/regexp/SubString;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static do_replace(Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/regexp/RegExpImpl;)V
    .locals 11
    .parameter "rdata"
    .parameter "cx"
    .parameter "regExpImpl"

    .prologue
    const/4 v10, 0x0

    .line 479
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/GlobData;->charBuf:Ljava/lang/StringBuffer;

    .line 480
    .local v0, charBuf:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 481
    .local v1, cp:I
    iget-object v2, p0, Lorg/mozilla/javascript/regexp/GlobData;->repstr:Ljava/lang/String;

    .line 482
    .local v2, da:Ljava/lang/String;
    iget v4, p0, Lorg/mozilla/javascript/regexp/GlobData;->dollar:I

    .line 483
    .local v4, dp:I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_2

    .line 484
    const/4 v8, 0x1

    new-array v6, v8, [I

    .line 486
    .local v6, skip:[I
    :cond_0
    sub-int v5, v4, v1

    .line 487
    .local v5, len:I
    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 488
    move v1, v4

    .line 489
    invoke-static {p1, p2, v2, v4, v6}, Lorg/mozilla/javascript/regexp/RegExpImpl;->interpretDollar(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/regexp/RegExpImpl;Ljava/lang/String;I[I)Lorg/mozilla/javascript/regexp/SubString;

    move-result-object v7

    .line 491
    .local v7, sub:Lorg/mozilla/javascript/regexp/SubString;
    if-eqz v7, :cond_4

    .line 492
    iget v5, v7, Lorg/mozilla/javascript/regexp/SubString;->length:I

    .line 493
    if-lez v5, :cond_1

    .line 494
    iget-object v8, v7, Lorg/mozilla/javascript/regexp/SubString;->charArray:[C

    iget v9, v7, Lorg/mozilla/javascript/regexp/SubString;->index:I

    invoke-virtual {v0, v8, v9, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 496
    :cond_1
    aget v8, v6, v10

    add-int/2addr v1, v8

    .line 497
    aget v8, v6, v10

    add-int/2addr v4, v8

    .line 501
    :goto_0
    const/16 v8, 0x24

    invoke-virtual {v2, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 502
    if-gez v4, :cond_0

    .line 504
    .end local v5           #len:I
    .end local v6           #skip:[I
    .end local v7           #sub:Lorg/mozilla/javascript/regexp/SubString;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 505
    .local v3, daL:I
    if-le v3, v1, :cond_3

    .line 506
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 508
    :cond_3
    return-void

    .line 499
    .end local v3           #daL:I
    .restart local v5       #len:I
    .restart local v6       #skip:[I
    .restart local v7       #sub:Lorg/mozilla/javascript/regexp/SubString;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private static find_split(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;ILorg/mozilla/javascript/RegExpProxy;Lorg/mozilla/javascript/Scriptable;[I[I[Z[[Ljava/lang/String;)I
    .locals 11
    .parameter "cx"
    .parameter "scope"
    .parameter "target"
    .parameter "separator"
    .parameter "version"
    .parameter "reProxy"
    .parameter "re"
    .parameter "ip"
    .parameter "matchlen"
    .parameter "matched"
    .parameter "parensp"

    .prologue
    .line 629
    const/4 v0, 0x0

    aget v10, p7, v0

    .line 630
    .local v10, i:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 637
    .local v0, length:I
    const/16 v1, 0x78

    if-ne p4, v1, :cond_4

    if-nez p6, :cond_4

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_4

    .line 641
    if-nez v10, :cond_e

    move p0, v10

    .line 642
    .end local v10           #i:I
    .end local p1
    .local p0, i:I
    :goto_0
    if-ge p0, v0, :cond_0

    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 643
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 644
    :cond_0
    const/4 p1, 0x0

    aput p0, p7, p1

    .line 648
    :goto_1
    if-ne p0, v0, :cond_1

    .line 649
    const/4 p1, -0x1

    .line 727
    .end local v0           #length:I
    .end local p2
    .end local p3
    :goto_2
    return p1

    .line 653
    .restart local v0       #length:I
    .restart local p2
    .restart local p3
    :cond_1
    :goto_3
    if-ge p0, v0, :cond_2

    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p1

    if-nez p1, :cond_2

    .line 654
    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    .line 657
    :cond_2
    move p1, p0

    .line 658
    .end local p3
    .local p1, j:I
    :goto_4
    if-ge p1, v0, :cond_3

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p3

    invoke-static {p3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 659
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 662
    :cond_3
    const/4 p2, 0x0

    sub-int/2addr p1, p0

    aput p1, p8, p2

    .end local p1           #j:I
    .end local p2
    move p1, p0

    .line 663
    goto :goto_2

    .line 676
    .restart local v10       #i:I
    .local p0, cx:Lorg/mozilla/javascript/Context;
    .local p1, scope:Lorg/mozilla/javascript/Scriptable;
    .restart local p2
    .restart local p3
    :cond_4
    if-le v10, v0, :cond_5

    .line 677
    const/4 p0, -0x1

    move p1, p0

    move p0, v10

    .end local v10           #i:I
    .local p0, i:I
    goto :goto_2

    .line 684
    .restart local v10       #i:I
    .local p0, cx:Lorg/mozilla/javascript/Context;
    :cond_5
    if-eqz p6, :cond_6

    move-object/from16 v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    .line 685
    invoke-interface/range {v0 .. v9}, Lorg/mozilla/javascript/RegExpProxy;->find_split(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;[I[I[Z[[Ljava/lang/String;)I

    .end local v0           #length:I
    move-result p0

    .end local p0           #cx:Lorg/mozilla/javascript/Context;
    move p1, p0

    move p0, v10

    .end local v10           #i:I
    .local p0, i:I
    goto :goto_2

    .line 694
    .restart local v0       #length:I
    .restart local v10       #i:I
    .local p0, cx:Lorg/mozilla/javascript/Context;
    :cond_6
    if-eqz p4, :cond_7

    const/16 p0, 0x82

    if-ge p4, p0, :cond_7

    .end local p0           #cx:Lorg/mozilla/javascript/Context;
    if-nez v0, :cond_7

    .line 696
    const/4 p0, -0x1

    move p1, p0

    move p0, v10

    .end local v10           #i:I
    .local p0, i:I
    goto :goto_2

    .line 708
    .end local p0           #i:I
    .restart local v10       #i:I
    :cond_7
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_b

    .line 709
    const/16 p0, 0x78

    if-ne p4, p0, :cond_9

    .line 710
    if-ne v10, v0, :cond_8

    .line 711
    const/4 p0, 0x0

    const/4 p1, 0x1

    aput p1, p8, p0

    .end local p1           #scope:Lorg/mozilla/javascript/Scriptable;
    move p0, v10

    .end local v10           #i:I
    .restart local p0       #i:I
    move p1, v10

    .line 712
    goto :goto_2

    .line 714
    .end local p0           #i:I
    .restart local v10       #i:I
    .restart local p1       #scope:Lorg/mozilla/javascript/Scriptable;
    :cond_8
    add-int/lit8 p0, v10, 0x1

    move p1, p0

    move p0, v10

    .end local v10           #i:I
    .restart local p0       #i:I
    goto :goto_2

    .line 716
    .end local p0           #i:I
    .restart local v10       #i:I
    :cond_9
    if-ne v10, v0, :cond_a

    const/4 p0, -0x1

    :goto_5
    move p1, p0

    move p0, v10

    .end local v10           #i:I
    .restart local p0       #i:I
    goto :goto_2

    .end local p0           #i:I
    .restart local v10       #i:I
    :cond_a
    add-int/lit8 p0, v10, 0x1

    goto :goto_5

    .line 722
    :cond_b
    const/4 p0, 0x0

    aget p0, p7, p0

    if-lt p0, v0, :cond_c

    move p0, v10

    .end local v10           #i:I
    .restart local p0       #i:I
    move p1, v0

    .line 723
    goto :goto_2

    .line 725
    .end local p0           #i:I
    .restart local v10       #i:I
    :cond_c
    const/4 p0, 0x0

    aget p0, p7, p0

    invoke-virtual {p2, p3, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    .line 727
    .end local v10           #i:I
    .restart local p0       #i:I
    const/4 p1, -0x1

    if-eq p0, p1, :cond_d

    .end local p1           #scope:Lorg/mozilla/javascript/Scriptable;
    move p1, p0

    goto/16 :goto_2

    :cond_d
    move p1, v0

    goto/16 :goto_2

    .restart local v10       #i:I
    .local p0, cx:Lorg/mozilla/javascript/Context;
    .restart local p1       #scope:Lorg/mozilla/javascript/Scriptable;
    :cond_e
    move p0, v10

    .end local v10           #i:I
    .local p0, i:I
    goto/16 :goto_1
.end method

.method private static interpretDollar(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/regexp/RegExpImpl;Ljava/lang/String;I[I)Lorg/mozilla/javascript/regexp/SubString;
    .locals 5
    .parameter "cx"
    .parameter "res"
    .parameter "da"
    .parameter "dp"
    .parameter "skip"

    .prologue
    .line 389
    invoke-virtual {p2, p3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x24

    if-eq v0, v1, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 392
    :cond_0
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result p0

    .line 393
    .local p0, version:I
    if-eqz p0, :cond_1

    const/16 v0, 0x8c

    if-gt p0, v0, :cond_1

    .line 396
    if-lez p3, :cond_1

    const/4 v0, 0x1

    sub-int v0, p3, v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_1

    .line 397
    const/4 p0, 0x0

    .line 470
    .end local p0           #version:I
    .end local p1
    .end local p2
    .end local p3
    :goto_0
    return-object p0

    .line 399
    .restart local p0       #version:I
    .restart local p1
    .restart local p2
    .restart local p3
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 400
    .local v0, daL:I
    add-int/lit8 v1, p3, 0x1

    if-lt v1, v0, :cond_2

    .line 401
    const/4 p0, 0x0

    goto :goto_0

    .line 403
    :cond_2
    add-int/lit8 v1, p3, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 404
    .local v1, dc:C
    invoke-static {v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 406
    if-eqz p0, :cond_6

    const/16 v2, 0x8c

    if-gt p0, v2, :cond_6

    .line 409
    const/16 p0, 0x30

    if-ne v1, p0, :cond_3

    .line 410
    .end local p0           #version:I
    const/4 p0, 0x0

    goto :goto_0

    .line 412
    :cond_3
    const/4 v2, 0x0

    .line 413
    .local v2, num:I
    move p0, p3

    .line 414
    .local p0, cp:I
    :goto_1
    add-int/lit8 p0, p0, 0x1

    if-ge p0, v0, :cond_d

    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 416
    mul-int/lit8 v3, v2, 0xa

    const/16 v4, 0x30

    sub-int v4, v1, v4

    add-int/2addr v3, v4

    .line 417
    .local v3, tmp:I
    if-ge v3, v2, :cond_5

    move v0, v2

    .end local v2           #num:I
    .local v0, num:I
    move p2, v1

    .line 441
    .end local v1           #dc:C
    .end local v3           #tmp:I
    .local p2, dc:C
    :cond_4
    :goto_2
    add-int/lit8 p2, v0, -0x1

    .line 442
    .end local v0           #num:I
    .local p2, num:I
    const/4 v0, 0x0

    sub-int/2addr p0, p3

    aput p0, p4, v0

    .line 443
    .end local p0           #cp:I
    invoke-virtual {p1, p2}, Lorg/mozilla/javascript/regexp/RegExpImpl;->getParenSubString(I)Lorg/mozilla/javascript/regexp/SubString;

    move-result-object p0

    goto :goto_0

    .line 419
    .local v0, daL:I
    .restart local v1       #dc:C
    .restart local v2       #num:I
    .restart local v3       #tmp:I
    .restart local p0       #cp:I
    .local p2, da:Ljava/lang/String;
    :cond_5
    move v2, v3

    goto :goto_1

    .line 423
    .end local v2           #num:I
    .end local v3           #tmp:I
    .local p0, version:I
    :cond_6
    iget-object p0, p1, Lorg/mozilla/javascript/regexp/RegExpImpl;->parens:[Lorg/mozilla/javascript/regexp/SubString;

    .end local p0           #version:I
    if-nez p0, :cond_7

    const/4 p0, 0x0

    move v3, p0

    .line 424
    .local v3, parenCount:I
    :goto_3
    const/16 p0, 0x30

    sub-int v2, v1, p0

    .line 425
    .restart local v2       #num:I
    if-le v2, v3, :cond_8

    .line 426
    const/4 p0, 0x0

    goto :goto_0

    .line 423
    .end local v2           #num:I
    .end local v3           #parenCount:I
    :cond_7
    iget-object p0, p1, Lorg/mozilla/javascript/regexp/RegExpImpl;->parens:[Lorg/mozilla/javascript/regexp/SubString;

    array-length p0, p0

    move v3, p0

    goto :goto_3

    .line 427
    .restart local v2       #num:I
    .restart local v3       #parenCount:I
    :cond_8
    add-int/lit8 p0, p3, 0x2

    .line 428
    .local p0, cp:I
    add-int/lit8 v4, p3, 0x2

    if-ge v4, v0, :cond_c

    .line 429
    add-int/lit8 v0, p3, 0x2

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    .end local v0           #daL:I
    move-result p2

    .line 430
    .end local v1           #dc:C
    .local p2, dc:C
    invoke-static {p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 431
    mul-int/lit8 v0, v2, 0xa

    const/16 v1, 0x30

    sub-int v1, p2, v1

    add-int/2addr v0, v1

    .line 432
    .local v0, tmp:I
    if-gt v0, v3, :cond_b

    .line 433
    add-int/lit8 p0, p0, 0x1

    .line 434
    move v0, v0

    .line 438
    .end local v2           #num:I
    .local v0, num:I
    :goto_4
    if-nez v0, :cond_4

    const/4 p0, 0x0

    goto :goto_0

    .line 446
    .end local v3           #parenCount:I
    .local v0, daL:I
    .restart local v1       #dc:C
    .local p0, version:I
    .local p2, da:Ljava/lang/String;
    :cond_9
    const/4 p2, 0x0

    const/4 p3, 0x2

    aput p3, p4, p2

    .line 447
    .end local p2           #da:Ljava/lang/String;
    .end local p3
    sparse-switch v1, :sswitch_data_0

    .line 470
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 449
    :sswitch_0
    new-instance p0, Lorg/mozilla/javascript/regexp/SubString;

    .end local p0           #version:I
    const-string p1, "$"

    .end local p1
    invoke-direct {p0, p1}, Lorg/mozilla/javascript/regexp/SubString;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 451
    .restart local p0       #version:I
    .restart local p1
    :sswitch_1
    iget-object p0, p1, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    goto/16 :goto_0

    .line 453
    :sswitch_2
    iget-object p0, p1, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastParen:Lorg/mozilla/javascript/regexp/SubString;

    goto/16 :goto_0

    .line 455
    :sswitch_3
    const/16 p2, 0x78

    if-ne p0, p2, :cond_a

    .line 463
    iget-object p0, p1, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    .end local p0           #version:I
    const/4 p2, 0x0

    iput p2, p0, Lorg/mozilla/javascript/regexp/SubString;->index:I

    .line 464
    iget-object p0, p1, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    iget-object p2, p1, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    iget p2, p2, Lorg/mozilla/javascript/regexp/SubString;->index:I

    iput p2, p0, Lorg/mozilla/javascript/regexp/SubString;->length:I

    .line 466
    :cond_a
    iget-object p0, p1, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    goto/16 :goto_0

    .line 468
    .restart local p0       #version:I
    :sswitch_4
    iget-object p0, p1, Lorg/mozilla/javascript/regexp/RegExpImpl;->rightContext:Lorg/mozilla/javascript/regexp/SubString;

    goto/16 :goto_0

    .end local v0           #daL:I
    .end local v1           #dc:C
    .restart local v2       #num:I
    .restart local v3       #parenCount:I
    .local p0, cp:I
    .local p2, dc:C
    .restart local p3
    :cond_b
    move v0, v2

    .end local v2           #num:I
    .local v0, num:I
    goto :goto_4

    .local v0, daL:I
    .restart local v1       #dc:C
    .restart local v2       #num:I
    .local p2, da:Ljava/lang/String;
    :cond_c
    move v0, v2

    .end local v2           #num:I
    .local v0, num:I
    move p2, v1

    .end local v1           #dc:C
    .local p2, dc:C
    goto :goto_4

    .end local v3           #parenCount:I
    .local v0, daL:I
    .restart local v1       #dc:C
    .restart local v2       #num:I
    .local p2, da:Ljava/lang/String;
    :cond_d
    move v0, v2

    .end local v2           #num:I
    .local v0, num:I
    move p2, v1

    .end local v1           #dc:C
    .local p2, dc:C
    goto :goto_2

    .line 447
    nop

    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_0
        0x26 -> :sswitch_1
        0x27 -> :sswitch_4
        0x2b -> :sswitch_2
        0x60 -> :sswitch_3
    .end sparse-switch
.end method

.method private static matchOrReplace(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/regexp/RegExpImpl;Lorg/mozilla/javascript/regexp/GlobData;Z)Ljava/lang/Object;
    .locals 17
    .parameter "cx"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "args"
    .parameter "reImpl"
    .parameter "data"
    .parameter "forceFlat"

    .prologue
    .line 134
    invoke-static/range {p2 .. p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 135
    .local v9, str:Ljava/lang/String;
    move-object v0, v9

    move-object/from16 v1, p5

    iput-object v0, v1, Lorg/mozilla/javascript/regexp/GlobData;->str:Ljava/lang/String;

    .line 136
    invoke-static/range {p1 .. p1}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v6

    .line 138
    .local v6, topScope:Lorg/mozilla/javascript/Scriptable;
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 p2, v0

    .end local p2
    if-nez p2, :cond_0

    .line 139
    const-string p2, ""

    const-string p3, ""

    .end local p3
    const/16 p6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->compileRE(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    .end local p6
    move-result-object p2

    .line 140
    .local p2, compiled:Ljava/lang/Object;
    new-instance v5, Lorg/mozilla/javascript/regexp/NativeRegExp;

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 156
    .end local p2           #compiled:Ljava/lang/Object;
    .local v5, re:Lorg/mozilla/javascript/regexp/NativeRegExp;
    :goto_0
    invoke-virtual {v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getFlags()I

    move-result p2

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_3

    const/16 p2, 0x1

    :goto_1
    move/from16 v0, p2

    move-object/from16 v1, p5

    iput-boolean v0, v1, Lorg/mozilla/javascript/regexp/GlobData;->global:Z

    .line 157
    const/16 p2, 0x1

    move/from16 v0, p2

    new-array v0, v0, [I

    move-object v10, v0

    const/16 p2, 0x0

    const/16 p3, 0x0

    aput p3, v10, p2

    .line 158
    .local v10, indexp:[I
    const/16 p3, 0x0

    .line 159
    .local p3, result:Ljava/lang/Object;
    move-object/from16 v0, p5

    iget v0, v0, Lorg/mozilla/javascript/regexp/GlobData;->mode:I

    move/from16 p2, v0

    const/16 p6, 0x3

    move/from16 v0, p2

    move/from16 v1, p6

    if-ne v0, v1, :cond_5

    .line 160
    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p4

    invoke-virtual/range {v5 .. v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->executeRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RegExpImpl;Ljava/lang/String;[II)Ljava/lang/Object;

    .end local v6           #topScope:Lorg/mozilla/javascript/Scriptable;
    move-result-object p0

    .line 162
    .end local p3           #result:Ljava/lang/Object;
    .local p0, result:Ljava/lang/Object;
    if-eqz p0, :cond_4

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .end local p1
    invoke-virtual/range {p0 .. p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    .end local p0           #result:Ljava/lang/Object;
    if-eqz p0, :cond_4

    .line 163
    move-object/from16 v0, p4

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    move-object/from16 p0, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/SubString;->length:I

    move/from16 p0, v0

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 196
    :goto_2
    return-object p0

    .line 141
    .end local v5           #re:Lorg/mozilla/javascript/regexp/NativeRegExp;
    .end local v10           #indexp:[I
    .restart local v6       #topScope:Lorg/mozilla/javascript/Scriptable;
    .local p0, cx:Lorg/mozilla/javascript/Context;
    .restart local p1
    .local p3, args:[Ljava/lang/Object;
    .restart local p6
    :cond_0
    const/16 p2, 0x0

    aget-object p2, p3, p2

    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/mozilla/javascript/regexp/NativeRegExp;

    move/from16 p2, v0

    if-eqz p2, :cond_1

    .line 142
    const/16 p2, 0x0

    aget-object v5, p3, p2

    check-cast v5, Lorg/mozilla/javascript/regexp/NativeRegExp;

    .restart local v5       #re:Lorg/mozilla/javascript/regexp/NativeRegExp;
    goto :goto_0

    .line 144
    .end local v5           #re:Lorg/mozilla/javascript/regexp/NativeRegExp;
    :cond_1
    const/16 p2, 0x0

    aget-object p2, p3, p2

    invoke-static/range {p2 .. p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 146
    .local v5, src:Ljava/lang/String;
    move-object/from16 v0, p5

    iget v0, v0, Lorg/mozilla/javascript/regexp/GlobData;->optarg:I

    move/from16 p2, v0

    move-object/from16 v0, p3

    array-length v0, v0

    move v7, v0

    move/from16 v0, p2

    move v1, v7

    if-ge v0, v1, :cond_2

    .line 147
    const/16 p2, 0x0

    aput-object v5, p3, p2

    .line 148
    move-object/from16 v0, p5

    iget v0, v0, Lorg/mozilla/javascript/regexp/GlobData;->optarg:I

    move/from16 p2, v0

    aget-object p2, p3, p2

    invoke-static/range {p2 .. p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 152
    .local p2, opt:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p2

    move/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->compileRE(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p2

    .line 153
    .local p2, compiled:Ljava/lang/Object;
    new-instance v5, Lorg/mozilla/javascript/regexp/NativeRegExp;

    .end local v5           #src:Ljava/lang/String;
    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .local v5, re:Lorg/mozilla/javascript/regexp/NativeRegExp;
    goto/16 :goto_0

    .line 150
    .end local p2           #compiled:Ljava/lang/Object;
    .local v5, src:Ljava/lang/String;
    :cond_2
    const/16 p2, 0x0

    .local p2, opt:Ljava/lang/String;
    goto :goto_3

    .line 156
    .end local p2           #opt:Ljava/lang/String;
    .end local p3           #args:[Ljava/lang/Object;
    .end local p6
    .local v5, re:Lorg/mozilla/javascript/regexp/NativeRegExp;
    :cond_3
    const/16 p2, 0x0

    goto/16 :goto_1

    .line 165
    .end local v6           #topScope:Lorg/mozilla/javascript/Scriptable;
    .end local p0           #cx:Lorg/mozilla/javascript/Context;
    .end local p1
    .restart local v10       #indexp:[I
    :cond_4
    const/16 p0, -0x1

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .local p0, result:Ljava/lang/Integer;
    goto :goto_2

    .line 166
    .restart local v6       #topScope:Lorg/mozilla/javascript/Scriptable;
    .local p0, cx:Lorg/mozilla/javascript/Context;
    .restart local p1
    .local p3, result:Ljava/lang/Object;
    :cond_5
    move-object/from16 v0, p5

    iget-boolean v0, v0, Lorg/mozilla/javascript/regexp/GlobData;->global:Z

    move/from16 p2, v0

    if-eqz p2, :cond_b

    .line 167
    const-wide/16 v6, 0x0

    iput-wide v6, v5, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:D

    .line 168
    .end local v6           #topScope:Lorg/mozilla/javascript/Scriptable;
    const/16 p2, 0x0

    .end local p3           #result:Ljava/lang/Object;
    .local p2, count:I
    :goto_4
    const/16 p6, 0x0

    aget p6, v10, p6

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v6

    move/from16 v0, p6

    move v1, v6

    if-gt v0, v1, :cond_e

    .line 169
    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p4

    invoke-virtual/range {v5 .. v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->executeRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RegExpImpl;Ljava/lang/String;[II)Ljava/lang/Object;

    move-result-object p6

    .line 171
    .local p6, result:Ljava/lang/Object;
    if-eqz p6, :cond_d

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, p6

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    move-object/from16 p0, p6

    .line 172
    goto/16 :goto_2

    .line 173
    :cond_6
    move-object/from16 v0, p5

    iget v0, v0, Lorg/mozilla/javascript/regexp/GlobData;->mode:I

    move/from16 p3, v0

    const/4 v6, 0x1

    move/from16 v0, p3

    move v1, v6

    if-ne v0, v1, :cond_7

    .line 174
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p4

    invoke-static {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/regexp/RegExpImpl;->match_glob(Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILorg/mozilla/javascript/regexp/RegExpImpl;)V

    .line 183
    :goto_5
    move-object/from16 v0, p4

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    move-object/from16 p3, v0

    move-object/from16 v0, p3

    iget v0, v0, Lorg/mozilla/javascript/regexp/SubString;->length:I

    move/from16 p3, v0

    if-nez p3, :cond_a

    .line 184
    const/16 p3, 0x0

    aget p3, v10, p3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v6

    move/from16 v0, p3

    move v1, v6

    if-ne v0, v1, :cond_9

    move-object/from16 p0, p6

    .line 185
    goto/16 :goto_2

    .line 176
    :cond_7
    move-object/from16 v0, p5

    iget v0, v0, Lorg/mozilla/javascript/regexp/GlobData;->mode:I

    move/from16 p3, v0

    const/4 v6, 0x2

    move/from16 v0, p3

    move v1, v6

    if-eq v0, v1, :cond_8

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 177
    :cond_8
    move-object/from16 v0, p4

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    move-object/from16 p3, v0

    .line 178
    .local p3, lastMatch:Lorg/mozilla/javascript/regexp/SubString;
    move-object/from16 v0, p5

    iget v0, v0, Lorg/mozilla/javascript/regexp/GlobData;->leftIndex:I

    move v15, v0

    .line 179
    .local v15, leftIndex:I
    move-object/from16 v0, p3

    iget v0, v0, Lorg/mozilla/javascript/regexp/SubString;->index:I

    move v6, v0

    sub-int v16, v6, v15

    .line 180
    .local v16, leftlen:I
    move-object/from16 v0, p3

    iget v0, v0, Lorg/mozilla/javascript/regexp/SubString;->index:I

    move v6, v0

    move-object/from16 v0, p3

    iget v0, v0, Lorg/mozilla/javascript/regexp/SubString;->length:I

    move/from16 p3, v0

    .end local p3           #lastMatch:Lorg/mozilla/javascript/regexp/SubString;
    add-int p3, p3, v6

    move/from16 v0, p3

    move-object/from16 v1, p5

    iput v0, v1, Lorg/mozilla/javascript/regexp/GlobData;->leftIndex:I

    move-object/from16 v11, p5

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p4

    .line 181
    invoke-static/range {v11 .. v16}, Lorg/mozilla/javascript/regexp/RegExpImpl;->replace_glob(Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RegExpImpl;II)V

    goto :goto_5

    .line 186
    .end local v15           #leftIndex:I
    .end local v16           #leftlen:I
    :cond_9
    const/16 p3, 0x0

    aget v6, v10, p3

    add-int/lit8 v6, v6, 0x1

    aput v6, v10, p3

    .line 168
    :cond_a
    add-int/lit8 p2, p2, 0x1

    move-object/from16 p3, p6

    .end local p6           #result:Ljava/lang/Object;
    .local p3, result:Ljava/lang/Object;
    goto/16 :goto_4

    .line 190
    .end local p2           #count:I
    .restart local v6       #topScope:Lorg/mozilla/javascript/Scriptable;
    :cond_b
    move-object/from16 v0, p5

    iget v0, v0, Lorg/mozilla/javascript/regexp/GlobData;->mode:I

    move/from16 p2, v0

    const/16 p3, 0x2

    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_c

    .end local p3           #result:Ljava/lang/Object;
    const/16 p2, 0x0

    move/from16 v11, p2

    :goto_6
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p4

    invoke-virtual/range {v5 .. v11}, Lorg/mozilla/javascript/regexp/NativeRegExp;->executeRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RegExpImpl;Ljava/lang/String;[II)Ljava/lang/Object;

    .end local v6           #topScope:Lorg/mozilla/javascript/Scriptable;
    move-result-object p0

    .local p0, result:Ljava/lang/Object;
    goto/16 :goto_2

    .restart local v6       #topScope:Lorg/mozilla/javascript/Scriptable;
    .local p0, cx:Lorg/mozilla/javascript/Context;
    :cond_c
    const/16 p2, 0x1

    move/from16 v11, p2

    goto :goto_6

    .end local v6           #topScope:Lorg/mozilla/javascript/Scriptable;
    .restart local p2       #count:I
    .restart local p6       #result:Ljava/lang/Object;
    :cond_d
    move-object/from16 p0, p6

    goto/16 :goto_2

    .end local p6           #result:Ljava/lang/Object;
    :cond_e
    move-object/from16 p0, p3

    goto/16 :goto_2
.end method

.method private static match_glob(Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;ILorg/mozilla/javascript/regexp/RegExpImpl;)V
    .locals 5
    .parameter "mdata"
    .parameter "cx"
    .parameter "scope"
    .parameter "count"
    .parameter "reImpl"

    .prologue
    .line 294
    iget-object v3, p0, Lorg/mozilla/javascript/regexp/GlobData;->arrayobj:Lorg/mozilla/javascript/Scriptable;

    if-nez v3, :cond_0

    .line 295
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    .line 296
    .local v2, s:Lorg/mozilla/javascript/Scriptable;
    const-string v3, "Array"

    const/4 v4, 0x0

    invoke-static {p1, v2, v3, v4}, Lorg/mozilla/javascript/ScriptRuntime;->newObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v3

    iput-object v3, p0, Lorg/mozilla/javascript/regexp/GlobData;->arrayobj:Lorg/mozilla/javascript/Scriptable;

    .line 298
    .end local v2           #s:Lorg/mozilla/javascript/Scriptable;
    :cond_0
    iget-object v1, p4, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    .line 299
    .local v1, matchsub:Lorg/mozilla/javascript/regexp/SubString;
    invoke-virtual {v1}, Lorg/mozilla/javascript/regexp/SubString;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, matchstr:Ljava/lang/String;
    iget-object v3, p0, Lorg/mozilla/javascript/regexp/GlobData;->arrayobj:Lorg/mozilla/javascript/Scriptable;

    iget-object v4, p0, Lorg/mozilla/javascript/regexp/GlobData;->arrayobj:Lorg/mozilla/javascript/Scriptable;

    invoke-interface {v3, p3, v4, v0}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 301
    return-void
.end method

.method private static replace_glob(Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RegExpImpl;II)V
    .locals 6
    .parameter "rdata"
    .parameter "cx"
    .parameter "scope"
    .parameter "reImpl"
    .parameter "leftIndex"
    .parameter "leftlen"

    .prologue
    .line 312
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/GlobData;->lambda:Lorg/mozilla/javascript/Function;

    if-eqz v0, :cond_4

    .line 315
    iget-object v3, p3, Lorg/mozilla/javascript/regexp/RegExpImpl;->parens:[Lorg/mozilla/javascript/regexp/SubString;

    .line 316
    .local v3, parens:[Lorg/mozilla/javascript/regexp/SubString;
    if-nez v3, :cond_0

    const/4 v0, 0x0

    move v2, v0

    .line 317
    .local v2, parenCount:I
    :goto_0
    add-int/lit8 v0, v2, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 318
    .local v0, args:[Ljava/lang/Object;
    const/4 v1, 0x0

    iget-object v4, p3, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    invoke-virtual {v4}, Lorg/mozilla/javascript/regexp/SubString;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 319
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 320
    aget-object v4, v3, v1

    .line 321
    .local v4, sub:Lorg/mozilla/javascript/regexp/SubString;
    if-eqz v4, :cond_1

    .line 322
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4}, Lorg/mozilla/javascript/regexp/SubString;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v4           #sub:Lorg/mozilla/javascript/regexp/SubString;
    aput-object v4, v0, v5

    .line 319
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 316
    .end local v0           #args:[Ljava/lang/Object;
    .end local v1           #i:I
    .end local v2           #parenCount:I
    :cond_0
    array-length v0, v3

    move v2, v0

    goto :goto_0

    .line 324
    .restart local v0       #args:[Ljava/lang/Object;
    .restart local v1       #i:I
    .restart local v2       #parenCount:I
    .restart local v4       #sub:Lorg/mozilla/javascript/regexp/SubString;
    :cond_1
    add-int/lit8 v4, v1, 0x1

    sget-object v5, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    .end local v4           #sub:Lorg/mozilla/javascript/regexp/SubString;
    aput-object v5, v0, v4

    goto :goto_2

    .line 327
    :cond_2
    add-int/lit8 v1, v2, 0x1

    iget-object v3, p3, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    .end local v1           #i:I
    .end local v3           #parens:[Lorg/mozilla/javascript/regexp/SubString;
    iget v3, v3, Lorg/mozilla/javascript/regexp/SubString;->length:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    .line 328
    add-int/lit8 v1, v2, 0x2

    iget-object v2, p0, Lorg/mozilla/javascript/regexp/GlobData;->str:Ljava/lang/String;

    .end local v2           #parenCount:I
    aput-object v2, v0, v1

    .line 333
    invoke-static {p1}, Lorg/mozilla/javascript/ScriptRuntime;->getRegExpProxy(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/RegExpProxy;

    move-result-object v1

    if-eq p3, v1, :cond_3

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 334
    :cond_3
    new-instance v1, Lorg/mozilla/javascript/regexp/RegExpImpl;

    invoke-direct {v1}, Lorg/mozilla/javascript/regexp/RegExpImpl;-><init>()V

    .line 335
    .local v1, re2:Lorg/mozilla/javascript/regexp/RegExpImpl;
    iget-boolean v2, p3, Lorg/mozilla/javascript/regexp/RegExpImpl;->multiline:Z

    iput-boolean v2, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->multiline:Z

    .line 336
    iget-object v2, p3, Lorg/mozilla/javascript/regexp/RegExpImpl;->input:Ljava/lang/String;

    iput-object v2, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->input:Ljava/lang/String;

    .line 337
    invoke-static {p1, v1}, Lorg/mozilla/javascript/ScriptRuntime;->setRegExpProxy(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/RegExpProxy;)V

    .line 339
    :try_start_0
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p2

    .line 340
    .local p2, parent:Lorg/mozilla/javascript/Scriptable;
    iget-object v1, p0, Lorg/mozilla/javascript/regexp/GlobData;->lambda:Lorg/mozilla/javascript/Function;

    .end local v1           #re2:Lorg/mozilla/javascript/regexp/RegExpImpl;
    invoke-interface {v1, p1, p2, p2, v0}, Lorg/mozilla/javascript/Function;->call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 341
    .local p2, result:Ljava/lang/Object;
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p2

    .line 343
    .local p2, lambdaStr:Ljava/lang/String;
    invoke-static {p1, p3}, Lorg/mozilla/javascript/ScriptRuntime;->setRegExpProxy(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/RegExpProxy;)V

    .line 345
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, replen:I
    move-object v1, p2

    .end local p2           #lambdaStr:Ljava/lang/String;
    .local v1, lambdaStr:Ljava/lang/String;
    move p2, v0

    .line 366
    .end local v0           #replen:I
    .local p2, replen:I
    :goto_3
    add-int/2addr p2, p5

    iget-object v0, p3, Lorg/mozilla/javascript/regexp/RegExpImpl;->rightContext:Lorg/mozilla/javascript/regexp/SubString;

    .end local p2           #replen:I
    iget v0, v0, Lorg/mozilla/javascript/regexp/SubString;->length:I

    add-int/2addr v0, p2

    .line 367
    .local v0, growth:I
    iget-object p2, p0, Lorg/mozilla/javascript/regexp/GlobData;->charBuf:Ljava/lang/StringBuffer;

    .line 368
    .local p2, charBuf:Ljava/lang/StringBuffer;
    if-nez p2, :cond_8

    .line 369
    new-instance p2, Ljava/lang/StringBuffer;

    .end local p2           #charBuf:Ljava/lang/StringBuffer;
    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 370
    .restart local p2       #charBuf:Ljava/lang/StringBuffer;
    iput-object p2, p0, Lorg/mozilla/javascript/regexp/GlobData;->charBuf:Ljava/lang/StringBuffer;

    .line 375
    .end local v0           #growth:I
    :goto_4
    iget-object v0, p3, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/SubString;->charArray:[C

    invoke-virtual {p2, v0, p4, p5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 376
    iget-object p4, p0, Lorg/mozilla/javascript/regexp/GlobData;->lambda:Lorg/mozilla/javascript/Function;

    .end local p4
    if-eqz p4, :cond_9

    .line 377
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 381
    :goto_5
    return-void

    .line 343
    .end local v1           #lambdaStr:Ljava/lang/String;
    .end local p2           #charBuf:Ljava/lang/StringBuffer;
    .local v0, args:[Ljava/lang/Object;
    .restart local p4
    :catchall_0
    move-exception p0

    .end local p0
    invoke-static {p1, p3}, Lorg/mozilla/javascript/ScriptRuntime;->setRegExpProxy(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/RegExpProxy;)V

    throw p0

    .line 347
    .end local v0           #args:[Ljava/lang/Object;
    .restart local p0
    .local p2, scope:Lorg/mozilla/javascript/Scriptable;
    :cond_4
    const/4 v0, 0x0

    .line 348
    .local v0, lambdaStr:Ljava/lang/String;
    iget-object p2, p0, Lorg/mozilla/javascript/regexp/GlobData;->repstr:Ljava/lang/String;

    .end local p2           #scope:Lorg/mozilla/javascript/Scriptable;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 349
    .local v1, replen:I
    iget p2, p0, Lorg/mozilla/javascript/regexp/GlobData;->dollar:I

    if-ltz p2, :cond_6

    .line 350
    const/4 p2, 0x1

    new-array v2, p2, [I

    .line 351
    .local v2, skip:[I
    iget p2, p0, Lorg/mozilla/javascript/regexp/GlobData;->dollar:I

    .line 353
    .local p2, dp:I
    :cond_5
    iget-object v3, p0, Lorg/mozilla/javascript/regexp/GlobData;->repstr:Ljava/lang/String;

    invoke-static {p1, p3, v3, p2, v2}, Lorg/mozilla/javascript/regexp/RegExpImpl;->interpretDollar(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/regexp/RegExpImpl;Ljava/lang/String;I[I)Lorg/mozilla/javascript/regexp/SubString;

    move-result-object v3

    .line 355
    .local v3, sub:Lorg/mozilla/javascript/regexp/SubString;
    if-eqz v3, :cond_7

    .line 356
    iget v3, v3, Lorg/mozilla/javascript/regexp/SubString;->length:I

    .end local v3           #sub:Lorg/mozilla/javascript/regexp/SubString;
    const/4 v4, 0x0

    aget v4, v2, v4

    sub-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 357
    const/4 v3, 0x0

    aget v3, v2, v3

    add-int/2addr p2, v3

    .line 361
    :goto_6
    iget-object v3, p0, Lorg/mozilla/javascript/regexp/GlobData;->repstr:Ljava/lang/String;

    const/16 v4, 0x24

    invoke-virtual {v3, v4, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p2

    .line 362
    if-gez p2, :cond_5

    .end local v2           #skip:[I
    .end local p2           #dp:I
    :cond_6
    move p2, v1

    .end local v1           #replen:I
    .local p2, replen:I
    move-object v1, v0

    .end local v0           #lambdaStr:Ljava/lang/String;
    .local v1, lambdaStr:Ljava/lang/String;
    goto :goto_3

    .line 359
    .restart local v0       #lambdaStr:Ljava/lang/String;
    .local v1, replen:I
    .restart local v2       #skip:[I
    .restart local v3       #sub:Lorg/mozilla/javascript/regexp/SubString;
    .local p2, dp:I
    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    .line 372
    .end local v2           #skip:[I
    .end local v3           #sub:Lorg/mozilla/javascript/regexp/SubString;
    .local v0, growth:I
    .local v1, lambdaStr:Ljava/lang/String;
    .local p2, charBuf:Ljava/lang/StringBuffer;
    :cond_8
    iget-object v2, p0, Lorg/mozilla/javascript/regexp/GlobData;->charBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->ensureCapacity(I)V

    goto :goto_4

    .line 379
    .end local v0           #growth:I
    .end local p4
    :cond_9
    invoke-static {p0, p1, p3}, Lorg/mozilla/javascript/regexp/RegExpImpl;->do_replace(Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/regexp/RegExpImpl;)V

    goto :goto_5
.end method


# virtual methods
.method public action(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 20
    .parameter "cx"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "args"
    .parameter "actionType"

    .prologue
    .line 66
    new-instance v7, Lorg/mozilla/javascript/regexp/GlobData;

    invoke-direct {v7}, Lorg/mozilla/javascript/regexp/GlobData;-><init>()V

    .line 67
    .local v7, data:Lorg/mozilla/javascript/regexp/GlobData;
    move/from16 v0, p5

    move-object v1, v7

    iput v0, v1, Lorg/mozilla/javascript/regexp/GlobData;->mode:I

    .line 69
    packed-switch p5, :pswitch_data_0

    .line 120
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 73
    :pswitch_0
    const/4 v2, 0x1

    iput v2, v7, Lorg/mozilla/javascript/regexp/GlobData;->optarg:I

    .line 74
    const/4 v8, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p0

    invoke-static/range {v2 .. v8}, Lorg/mozilla/javascript/regexp/RegExpImpl;->matchOrReplace(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/regexp/RegExpImpl;Lorg/mozilla/javascript/regexp/GlobData;Z)Ljava/lang/Object;

    move-result-object v18

    .line 76
    .local v18, rval:Ljava/lang/Object;
    iget-object v2, v7, Lorg/mozilla/javascript/regexp/GlobData;->arrayobj:Lorg/mozilla/javascript/Scriptable;

    if-nez v2, :cond_0

    move-object/from16 v2, v18

    .line 116
    .end local v18           #rval:Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 76
    .restart local v18       #rval:Ljava/lang/Object;
    :cond_0
    iget-object v2, v7, Lorg/mozilla/javascript/regexp/GlobData;->arrayobj:Lorg/mozilla/javascript/Scriptable;

    goto :goto_0

    .line 80
    .end local v18           #rval:Ljava/lang/Object;
    :pswitch_1
    const/4 v2, 0x1

    iput v2, v7, Lorg/mozilla/javascript/regexp/GlobData;->optarg:I

    .line 81
    const/4 v8, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p0

    invoke-static/range {v2 .. v8}, Lorg/mozilla/javascript/regexp/RegExpImpl;->matchOrReplace(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/regexp/RegExpImpl;Lorg/mozilla/javascript/regexp/GlobData;Z)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 86
    :pswitch_2
    move-object/from16 v0, p4

    array-length v0, v0

    move v2, v0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    move-object v13, v2

    .line 87
    .local v13, arg1:Ljava/lang/Object;
    :goto_1
    const/16 v17, 0x0

    .line 88
    .local v17, repstr:Ljava/lang/String;
    const/4 v14, 0x0

    .line 89
    .local v14, lambda:Lorg/mozilla/javascript/Function;
    instance-of v2, v13, Lorg/mozilla/javascript/Function;

    if-eqz v2, :cond_3

    .line 90
    move-object v0, v13

    check-cast v0, Lorg/mozilla/javascript/Function;

    move-object v14, v0

    .line 95
    :goto_2
    const/4 v2, 0x2

    iput v2, v7, Lorg/mozilla/javascript/regexp/GlobData;->optarg:I

    .line 96
    iput-object v14, v7, Lorg/mozilla/javascript/regexp/GlobData;->lambda:Lorg/mozilla/javascript/Function;

    .line 97
    move-object/from16 v0, v17

    move-object v1, v7

    iput-object v0, v1, Lorg/mozilla/javascript/regexp/GlobData;->repstr:Ljava/lang/String;

    .line 98
    if-nez v17, :cond_4

    const/4 v2, -0x1

    :goto_3
    iput v2, v7, Lorg/mozilla/javascript/regexp/GlobData;->dollar:I

    .line 99
    const/4 v2, 0x0

    iput-object v2, v7, Lorg/mozilla/javascript/regexp/GlobData;->charBuf:Ljava/lang/StringBuffer;

    .line 100
    const/4 v2, 0x0

    iput v2, v7, Lorg/mozilla/javascript/regexp/GlobData;->leftIndex:I

    .line 101
    const/4 v8, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p0

    invoke-static/range {v2 .. v8}, Lorg/mozilla/javascript/regexp/RegExpImpl;->matchOrReplace(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;Lorg/mozilla/javascript/regexp/RegExpImpl;Lorg/mozilla/javascript/regexp/GlobData;Z)Ljava/lang/Object;

    move-result-object v19

    .line 103
    .local v19, val:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->rightContext:Lorg/mozilla/javascript/regexp/SubString;

    move-object/from16 v16, v0

    .line 105
    .local v16, rc:Lorg/mozilla/javascript/regexp/SubString;
    iget-object v2, v7, Lorg/mozilla/javascript/regexp/GlobData;->charBuf:Ljava/lang/StringBuffer;

    if-nez v2, :cond_6

    .line 106
    iget-boolean v2, v7, Lorg/mozilla/javascript/regexp/GlobData;->global:Z

    if-nez v2, :cond_1

    if-eqz v19, :cond_1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, v19

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 110
    :cond_1
    iget-object v2, v7, Lorg/mozilla/javascript/regexp/GlobData;->str:Ljava/lang/String;

    goto :goto_0

    .line 86
    .end local v13           #arg1:Ljava/lang/Object;
    .end local v14           #lambda:Lorg/mozilla/javascript/Function;
    .end local v16           #rc:Lorg/mozilla/javascript/regexp/SubString;
    .end local v17           #repstr:Ljava/lang/String;
    .end local v19           #val:Ljava/lang/Object;
    :cond_2
    const/4 v2, 0x1

    aget-object v2, p4, v2

    move-object v13, v2

    goto :goto_1

    .line 92
    .restart local v13       #arg1:Ljava/lang/Object;
    .restart local v14       #lambda:Lorg/mozilla/javascript/Function;
    .restart local v17       #repstr:Ljava/lang/String;
    :cond_3
    invoke-static {v13}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    goto :goto_2

    .line 98
    :cond_4
    const/16 v2, 0x24

    move-object/from16 v0, v17

    move v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    goto :goto_3

    .line 112
    .restart local v16       #rc:Lorg/mozilla/javascript/regexp/SubString;
    .restart local v19       #val:Ljava/lang/Object;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    move-object v15, v0

    .line 113
    .local v15, lc:Lorg/mozilla/javascript/regexp/SubString;
    iget v11, v15, Lorg/mozilla/javascript/regexp/SubString;->index:I

    iget v12, v15, Lorg/mozilla/javascript/regexp/SubString;->length:I

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p0

    invoke-static/range {v7 .. v12}, Lorg/mozilla/javascript/regexp/RegExpImpl;->replace_glob(Lorg/mozilla/javascript/regexp/GlobData;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RegExpImpl;II)V

    .line 115
    .end local v15           #lc:Lorg/mozilla/javascript/regexp/SubString;
    :cond_6
    iget-object v2, v7, Lorg/mozilla/javascript/regexp/GlobData;->charBuf:Ljava/lang/StringBuffer;

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/SubString;->charArray:[C

    move-object v3, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/mozilla/javascript/regexp/SubString;->index:I

    move v4, v0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/mozilla/javascript/regexp/SubString;->length:I

    move v5, v0

    invoke-virtual {v2, v3, v4, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 116
    iget-object v2, v7, Lorg/mozilla/javascript/regexp/GlobData;->charBuf:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 69
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public compileRegExp(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "cx"
    .parameter "source"
    .parameter "flags"

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->compileRE(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public find_split(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;[I[I[Z[[Ljava/lang/String;)I
    .locals 19
    .parameter "cx"
    .parameter "scope"
    .parameter "target"
    .parameter "separator"
    .parameter "reObj"
    .parameter "ip"
    .parameter "matchlen"
    .parameter "matched"
    .parameter "parensp"

    .prologue
    .line 206
    const/4 v3, 0x0

    aget v9, p6, v3

    .line 207
    .local v9, i:I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v11

    .line 210
    .local v11, length:I
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v18

    .line 211
    .local v18, version:I
    move-object/from16 v0, p5

    check-cast v0, Lorg/mozilla/javascript/regexp/NativeRegExp;

    move-object v2, v0

    .line 215
    .local v2, re:Lorg/mozilla/javascript/regexp/NativeRegExp;
    :goto_0
    const/4 v3, 0x0

    aget v10, p6, v3

    .line 216
    .local v10, ipsave:I
    const/4 v3, 0x0

    aput v9, p6, v3

    .line 217
    const/4 v8, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p6

    invoke-virtual/range {v2 .. v8}, Lorg/mozilla/javascript/regexp/NativeRegExp;->executeRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RegExpImpl;Ljava/lang/String;[II)Ljava/lang/Object;

    move-result-object v15

    .line 219
    .local v15, ret:Ljava/lang/Object;
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v15, v3, :cond_0

    .line 221
    const/4 v3, 0x0

    aput v10, p6, v3

    .line 222
    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v4, p7, v3

    .line 223
    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-boolean v4, p8, v3

    move v3, v11

    .line 269
    :goto_1
    return v3

    .line 226
    :cond_0
    const/4 v3, 0x0

    aget v9, p6, v3

    .line 227
    const/4 v3, 0x0

    aput v10, p6, v3

    .line 228
    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-boolean v4, p8, v3

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    move-object/from16 v16, v0

    .line 231
    .local v16, sep:Lorg/mozilla/javascript/regexp/SubString;
    const/4 v3, 0x0

    move-object/from16 v0, v16

    iget v0, v0, Lorg/mozilla/javascript/regexp/SubString;->length:I

    move v4, v0

    aput v4, p7, v3

    .line 232
    const/4 v3, 0x0

    aget v3, p7, v3

    if-nez v3, :cond_3

    .line 239
    const/4 v3, 0x0

    aget v3, p6, v3

    if-ne v9, v3, :cond_3

    .line 246
    if-ne v9, v11, :cond_2

    .line 247
    const/16 v3, 0x78

    move/from16 v0, v18

    move v1, v3

    if-ne v0, v1, :cond_1

    .line 248
    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v4, p7, v3

    .line 249
    move v14, v9

    .line 263
    .local v14, result:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->parens:[Lorg/mozilla/javascript/regexp/SubString;

    move-object v3, v0

    if-nez v3, :cond_4

    const/4 v3, 0x0

    move/from16 v17, v3

    .line 264
    .local v17, size:I
    :goto_3
    const/4 v3, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    aput-object v4, p9, v3

    .line 265
    const/4 v12, 0x0

    .local v12, num:I
    :goto_4
    move v0, v12

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    .line 266
    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/regexp/RegExpImpl;->getParenSubString(I)Lorg/mozilla/javascript/regexp/SubString;

    move-result-object v13

    .line 267
    .local v13, parsub:Lorg/mozilla/javascript/regexp/SubString;
    const/4 v3, 0x0

    aget-object v3, p9, v3

    invoke-virtual {v13}, Lorg/mozilla/javascript/regexp/SubString;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v12

    .line 265
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 252
    .end local v12           #num:I
    .end local v13           #parsub:Lorg/mozilla/javascript/regexp/SubString;
    .end local v14           #result:I
    .end local v17           #size:I
    :cond_1
    const/4 v14, -0x1

    .line 253
    .restart local v14       #result:I
    goto :goto_2

    .line 255
    .end local v14           #result:I
    :cond_2
    add-int/lit8 v9, v9, 0x1

    .line 256
    goto/16 :goto_0

    .line 260
    :cond_3
    const/4 v3, 0x0

    aget v3, p7, v3

    sub-int v14, v9, v3

    .line 261
    .restart local v14       #result:I
    goto :goto_2

    .line 263
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->parens:[Lorg/mozilla/javascript/regexp/SubString;

    move-object v3, v0

    array-length v3, v3

    move/from16 v17, v3

    goto :goto_3

    .restart local v12       #num:I
    .restart local v17       #size:I
    :cond_5
    move v3, v14

    .line 269
    goto :goto_1
.end method

.method getParenSubString(I)Lorg/mozilla/javascript/regexp/SubString;
    .locals 2
    .parameter "i"

    .prologue
    .line 278
    iget-object v1, p0, Lorg/mozilla/javascript/regexp/RegExpImpl;->parens:[Lorg/mozilla/javascript/regexp/SubString;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/mozilla/javascript/regexp/RegExpImpl;->parens:[Lorg/mozilla/javascript/regexp/SubString;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 279
    iget-object v1, p0, Lorg/mozilla/javascript/regexp/RegExpImpl;->parens:[Lorg/mozilla/javascript/regexp/SubString;

    aget-object v0, v1, p1

    .line 280
    .local v0, parsub:Lorg/mozilla/javascript/regexp/SubString;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 284
    .end local v0           #parsub:Lorg/mozilla/javascript/regexp/SubString;
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lorg/mozilla/javascript/regexp/SubString;->emptySubString:Lorg/mozilla/javascript/regexp/SubString;

    goto :goto_0
.end method

.method public isRegExp(Lorg/mozilla/javascript/Scriptable;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 48
    instance-of v0, p1, Lorg/mozilla/javascript/regexp/NativeRegExp;

    return v0
.end method

.method public js_split(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26
    .parameter "cx"
    .parameter "scope"
    .parameter "target"
    .parameter "args"

    .prologue
    .line 519
    invoke-static/range {p2 .. p2}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v25

    .line 520
    .local v25, top:Lorg/mozilla/javascript/Scriptable;
    const-string v4, "Array"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move-object v2, v4

    move-object v3, v5

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->newObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v21

    .line 525
    .local v21, result:Lorg/mozilla/javascript/Scriptable;
    move-object/from16 v0, p4

    array-length v0, v0

    move v4, v0

    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    .line 526
    const/4 v4, 0x0

    move-object/from16 v0, v21

    move v1, v4

    move-object/from16 v2, v21

    move-object/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 608
    :cond_0
    :goto_0
    return-object v21

    .line 531
    :cond_1
    move-object/from16 v0, p4

    array-length v0, v0

    move v4, v0

    const/4 v5, 0x1

    if-le v4, v5, :cond_9

    const/4 v4, 0x1

    aget-object v4, p4, v4

    sget-object v5, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq v4, v5, :cond_9

    const/4 v4, 0x1

    move/from16 v18, v4

    .line 532
    .local v18, limited:Z
    :goto_1
    const-wide/16 v16, 0x0

    .line 533
    .local v16, limit:J
    if-eqz v18, :cond_2

    .line 535
    const/4 v4, 0x1

    aget-object v4, p4, v4

    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->toUint32(Ljava/lang/Object;)J

    move-result-wide v16

    .line 536
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v16, v4

    if-lez v4, :cond_2

    .line 537
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move v0, v4

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 540
    :cond_2
    const/4 v7, 0x0

    .line 541
    .local v7, separator:Ljava/lang/String;
    const/4 v4, 0x1

    new-array v12, v4, [I

    .line 542
    .local v12, matchlen:[I
    const/4 v10, 0x0

    .line 543
    .local v10, re:Lorg/mozilla/javascript/Scriptable;
    const/4 v9, 0x0

    .line 544
    .local v9, reProxy:Lorg/mozilla/javascript/RegExpProxy;
    const/4 v4, 0x0

    aget-object v4, p4, v4

    instance-of v4, v4, Lorg/mozilla/javascript/Scriptable;

    if-eqz v4, :cond_3

    .line 545
    invoke-static/range {p1 .. p1}, Lorg/mozilla/javascript/ScriptRuntime;->getRegExpProxy(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/RegExpProxy;

    move-result-object v9

    .line 546
    if-eqz v9, :cond_3

    .line 547
    const/4 v4, 0x0

    aget-object v24, p4, v4

    check-cast v24, Lorg/mozilla/javascript/Scriptable;

    .line 548
    .local v24, test:Lorg/mozilla/javascript/Scriptable;
    move-object v0, v9

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/mozilla/javascript/RegExpProxy;->isRegExp(Lorg/mozilla/javascript/Scriptable;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 549
    move-object/from16 v10, v24

    .line 553
    .end local v24           #test:Lorg/mozilla/javascript/Scriptable;
    :cond_3
    if-nez v10, :cond_4

    .line 554
    const/4 v4, 0x0

    aget-object v4, p4, v4

    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 555
    const/4 v4, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    aput v5, v12, v4

    .line 559
    :cond_4
    const/4 v4, 0x1

    new-array v11, v4, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v11, v4

    .line 561
    .local v11, ip:[I
    const/4 v15, 0x0

    .line 562
    .local v15, len:I
    const/4 v4, 0x1

    new-array v13, v4, [Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-boolean v5, v13, v4

    .line 563
    .local v13, matched:[Z
    const/4 v4, 0x1

    new-array v14, v4, [[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v5, v14, v4

    .line 564
    .local v14, parens:[[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v8

    .local v8, version:I
    :cond_5
    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    .line 567
    invoke-static/range {v4 .. v14}, Lorg/mozilla/javascript/regexp/RegExpImpl;->find_split(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/String;ILorg/mozilla/javascript/RegExpProxy;Lorg/mozilla/javascript/Scriptable;[I[I[Z[[Ljava/lang/String;)I

    move-result v19

    .local v19, match:I
    if-ltz v19, :cond_0

    .line 569
    if-eqz v18, :cond_6

    int-to-long v4, v15

    cmp-long v4, v4, v16

    if-gez v4, :cond_0

    :cond_6
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v4

    move/from16 v0, v19

    move v1, v4

    if-gt v0, v1, :cond_0

    .line 573
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_a

    .line 574
    move-object/from16 v23, p3

    .line 578
    .local v23, substr:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, v21

    move v1, v15

    move-object/from16 v2, v21

    move-object/from16 v3, v23

    invoke-interface {v0, v1, v2, v3}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 579
    add-int/lit8 v15, v15, 0x1

    .line 585
    if-eqz v10, :cond_8

    const/4 v4, 0x0

    aget-boolean v4, v13, v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    .line 586
    const/4 v4, 0x0

    aget-object v4, v14, v4

    move-object v0, v4

    array-length v0, v0

    move/from16 v22, v0

    .line 587
    .local v22, size:I
    const/16 v20, 0x0

    .local v20, num:I
    :goto_3
    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    .line 588
    if-eqz v18, :cond_b

    int-to-long v4, v15

    cmp-long v4, v4, v16

    if-ltz v4, :cond_b

    .line 593
    :cond_7
    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-boolean v5, v13, v4

    .line 595
    .end local v20           #num:I
    .end local v22           #size:I
    :cond_8
    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v5, v12, v5

    add-int v5, v5, v19

    aput v5, v11, v4

    .line 597
    const/16 v4, 0x82

    if-ge v8, v4, :cond_5

    if-eqz v8, :cond_5

    .line 604
    if-nez v18, :cond_5

    const/4 v4, 0x0

    aget v4, v11, v4

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_5

    goto/16 :goto_0

    .line 531
    .end local v7           #separator:Ljava/lang/String;
    .end local v8           #version:I
    .end local v9           #reProxy:Lorg/mozilla/javascript/RegExpProxy;
    .end local v10           #re:Lorg/mozilla/javascript/Scriptable;
    .end local v11           #ip:[I
    .end local v12           #matchlen:[I
    .end local v13           #matched:[Z
    .end local v14           #parens:[[Ljava/lang/String;
    .end local v15           #len:I
    .end local v16           #limit:J
    .end local v18           #limited:Z
    .end local v19           #match:I
    .end local v23           #substr:Ljava/lang/String;
    :cond_9
    const/4 v4, 0x0

    move/from16 v18, v4

    goto/16 :goto_1

    .line 576
    .restart local v7       #separator:Ljava/lang/String;
    .restart local v8       #version:I
    .restart local v9       #reProxy:Lorg/mozilla/javascript/RegExpProxy;
    .restart local v10       #re:Lorg/mozilla/javascript/Scriptable;
    .restart local v11       #ip:[I
    .restart local v12       #matchlen:[I
    .restart local v13       #matched:[Z
    .restart local v14       #parens:[[Ljava/lang/String;
    .restart local v15       #len:I
    .restart local v16       #limit:J
    .restart local v18       #limited:Z
    .restart local v19       #match:I
    :cond_a
    const/4 v4, 0x0

    aget v4, v11, v4

    move-object/from16 v0, p3

    move v1, v4

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .restart local v23       #substr:Ljava/lang/String;
    goto :goto_2

    .line 590
    .restart local v20       #num:I
    .restart local v22       #size:I
    :cond_b
    const/4 v4, 0x0

    aget-object v4, v14, v4

    aget-object v4, v4, v20

    move-object/from16 v0, v21

    move v1, v15

    move-object/from16 v2, v21

    move-object v3, v4

    invoke-interface {v0, v1, v2, v3}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 591
    add-int/lit8 v15, v15, 0x1

    .line 587
    add-int/lit8 v20, v20, 0x1

    goto :goto_3
.end method

.method public wrapRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 1
    .parameter "cx"
    .parameter "scope"
    .parameter "compiled"

    .prologue
    .line 59
    new-instance v0, Lorg/mozilla/javascript/regexp/NativeRegExp;

    invoke-direct {v0, p2, p3}, Lorg/mozilla/javascript/regexp/NativeRegExp;-><init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    return-object v0
.end method
