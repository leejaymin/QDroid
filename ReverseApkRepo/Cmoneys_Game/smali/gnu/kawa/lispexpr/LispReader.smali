.class public Lgnu/kawa/lispexpr/LispReader;
.super Lgnu/text/Lexer;
.source "LispReader.java"


# static fields
.field static final SCM_COMPLEX:I = 0x1

.field public static final SCM_NUMBERS:I = 0x1

.field public static final TOKEN_ESCAPE_CHAR:C = '\uffff'


# instance fields
.field protected seenEscapes:Z


# direct methods
.method public constructor <init>(Lgnu/text/LineBufferedReader;)V
    .locals 0
    .parameter "port"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lgnu/text/Lexer;-><init>(Lgnu/text/LineBufferedReader;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;)V
    .locals 0
    .parameter "port"
    .parameter "messages"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lgnu/text/Lexer;-><init>(Lgnu/text/LineBufferedReader;Lgnu/text/SourceMessages;)V

    .line 25
    return-void
.end method

.method static getReadCase()C
    .locals 6

    .prologue
    .line 70
    :try_start_0
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v3

    const-string v4, "symbol-read-case"

    const-string v5, "P"

    invoke-virtual {v3, v4, v5}, Lgnu/mapping/Environment;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, read_case_string:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 73
    .local v1, read_case:C
    const/16 v3, 0x50

    if-ne v1, v3, :cond_1

    .line 85
    .end local v2           #read_case_string:Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 74
    .restart local v2       #read_case_string:Ljava/lang/String;
    :cond_1
    const/16 v3, 0x75

    if-ne v1, v3, :cond_2

    .line 75
    const/16 v1, 0x55

    goto :goto_0

    .line 76
    :cond_2
    const/16 v3, 0x64

    if-eq v1, v3, :cond_3

    const/16 v3, 0x6c

    if-eq v1, v3, :cond_3

    const/16 v3, 0x4c

    if-ne v1, v3, :cond_4

    .line 77
    :cond_3
    const/16 v1, 0x44

    goto :goto_0

    .line 78
    :cond_4
    const/16 v3, 0x69

    if-ne v1, v3, :cond_0

    .line 79
    const/16 v1, 0x49

    goto :goto_0

    .line 81
    .end local v1           #read_case:C
    .end local v2           #read_case_string:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 83
    .local v0, ex:Ljava/lang/Exception;
    const/16 v1, 0x50

    .restart local v1       #read_case:C
    goto :goto_0
.end method

.method private isPotentialNumber([CII)Z
    .locals 6
    .parameter "buffer"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 307
    const/4 v2, 0x0

    .line 308
    .local v2, sawDigits:I
    move v1, p2

    .local v1, i:I
    :goto_0
    if-ge v1, p3, :cond_7

    .line 310
    aget-char v0, p1, v1

    .line 311
    .local v0, ch:C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 312
    add-int/lit8 v2, v2, 0x1

    .line 308
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 313
    :cond_1
    const/16 v3, 0x2d

    if-eq v0, v3, :cond_2

    const/16 v3, 0x2b

    if-ne v0, v3, :cond_3

    .line 315
    :cond_2
    add-int/lit8 v3, v1, 0x1

    if-ne v3, p3, :cond_0

    move v3, v4

    .line 332
    .end local v0           #ch:C
    :goto_1
    return v3

    .line 318
    .restart local v0       #ch:C
    :cond_3
    const/16 v3, 0x23

    if-ne v0, v3, :cond_4

    move v3, v5

    .line 319
    goto :goto_1

    .line 320
    :cond_4
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_5

    const/16 v3, 0x2f

    if-eq v0, v3, :cond_5

    const/16 v3, 0x5f

    if-eq v0, v3, :cond_5

    const/16 v3, 0x5e

    if-ne v0, v3, :cond_6

    .line 326
    :cond_5
    if-ne v1, p2, :cond_0

    move v3, v4

    .line 327
    goto :goto_1

    .line 329
    :cond_6
    const/16 v3, 0x2e

    if-eq v0, v3, :cond_0

    move v3, v4

    .line 330
    goto :goto_1

    .line 332
    .end local v0           #ch:C
    :cond_7
    if-lez v2, :cond_8

    move v3, v5

    goto :goto_1

    :cond_8
    move v3, v4

    goto :goto_1
.end method

.method public static parseNumber(Ljava/lang/CharSequence;I)Ljava/lang/Object;
    .locals 7
    .parameter "str"
    .parameter "radix"

    .prologue
    const/4 v2, 0x0

    .line 346
    instance-of v4, p0, Lgnu/lists/FString;

    if-eqz v4, :cond_0

    .line 347
    move-object v0, p0

    check-cast v0, Lgnu/lists/FString;

    move-object v4, v0

    iget-object v1, v4, Lgnu/lists/FString;->data:[C

    .line 350
    .local v1, buf:[C
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 351
    .local v3, len:I
    const/4 v6, 0x1

    move v4, v2

    move v5, p1

    invoke-static/range {v1 .. v6}, Lgnu/kawa/lispexpr/LispReader;->parseNumber([CIICII)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 349
    .end local v1           #buf:[C
    .end local v3           #len:I
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .restart local v1       #buf:[C
    goto :goto_0
.end method

.method public static parseNumber([CIICII)Ljava/lang/Object;
    .locals 20
    .parameter "buffer"
    .parameter "start"
    .parameter "count"
    .parameter "exactness"
    .parameter "radix"
    .parameter "flags"

    .prologue
    .line 369
    add-int v12, p1, p2

    .line 370
    .local v12, end:I
    move/from16 v13, p1

    .line 371
    .local v13, pos:I
    if-lt v13, v12, :cond_1

    .line 372
    const-string p0, "no digits"

    .line 705
    .end local v12           #end:I
    .end local p0
    .end local p1
    .end local p2
    .end local p5
    :cond_0
    :goto_0
    return-object p0

    .line 373
    .restart local v12       #end:I
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p5
    :cond_1
    add-int/lit8 v6, v13, 0x1

    .end local v13           #pos:I
    .local v6, pos:I
    aget-char v5, p0, v13

    .line 374
    .local v5, ch:C
    :goto_1
    const/16 v7, 0x23

    if-ne v5, v7, :cond_11

    .line 376
    if-lt v6, v12, :cond_2

    .line 377
    const-string p0, "no digits"

    .end local p0
    move v13, v6

    .end local v6           #pos:I
    .restart local v13       #pos:I
    goto :goto_0

    .line 378
    .end local v13           #pos:I
    .restart local v6       #pos:I
    .restart local p0
    :cond_2
    add-int/lit8 v13, v6, 0x1

    .end local v6           #pos:I
    .restart local v13       #pos:I
    aget-char v5, p0, v6

    .line 379
    sparse-switch v5, :sswitch_data_0

    .line 413
    const/4 v6, 0x0

    .local v6, value:I
    move v7, v6

    .line 416
    .end local v6           #value:I
    .local v7, value:I
    :goto_2
    const/16 v6, 0xa

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    .line 417
    .local v6, dig:I
    if-gez v6, :cond_a

    .line 424
    const/16 v6, 0x52

    if-eq v5, v6, :cond_3

    .end local v6           #dig:I
    const/16 v6, 0x72

    if-ne v5, v6, :cond_f

    .line 426
    :cond_3
    if-eqz p4, :cond_c

    .line 427
    const-string p0, "duplicate radix specifier"

    goto :goto_0

    .line 382
    .end local v7           #value:I
    :sswitch_0
    if-eqz p4, :cond_4

    .line 383
    const-string p0, "duplicate radix specifier"

    goto :goto_0

    .line 384
    :cond_4
    const/16 p4, 0x2

    move v6, v13

    .line 435
    .end local v13           #pos:I
    .local v6, pos:I
    :goto_3
    if-lt v6, v12, :cond_10

    .line 436
    const-string p0, "no digits"

    .end local p0
    move v13, v6

    .end local v6           #pos:I
    .restart local v13       #pos:I
    goto :goto_0

    .line 387
    .restart local p0
    :sswitch_1
    if-eqz p4, :cond_5

    .line 388
    const-string p0, "duplicate radix specifier"

    goto :goto_0

    .line 389
    :cond_5
    const/16 p4, 0x8

    move v6, v13

    .line 390
    .end local v13           #pos:I
    .restart local v6       #pos:I
    goto :goto_3

    .line 392
    .end local v6           #pos:I
    .restart local v13       #pos:I
    :sswitch_2
    if-eqz p4, :cond_6

    .line 393
    const-string p0, "duplicate radix specifier"

    goto :goto_0

    .line 394
    :cond_6
    const/16 p4, 0xa

    move v6, v13

    .line 395
    .end local v13           #pos:I
    .restart local v6       #pos:I
    goto :goto_3

    .line 397
    .end local v6           #pos:I
    .restart local v13       #pos:I
    :sswitch_3
    if-eqz p4, :cond_7

    .line 398
    const-string p0, "duplicate radix specifier"

    goto :goto_0

    .line 399
    :cond_7
    const/16 p4, 0x10

    move v6, v13

    .line 400
    .end local v13           #pos:I
    .restart local v6       #pos:I
    goto :goto_3

    .line 403
    .end local v6           #pos:I
    .restart local v13       #pos:I
    :sswitch_4
    if-eqz p3, :cond_9

    .line 405
    const/16 p0, 0x20

    move/from16 v0, p3

    move/from16 v1, p0

    if-ne v0, v1, :cond_8

    .line 406
    .end local p0
    const-string p0, "non-prefix exactness specifier"

    goto :goto_0

    .line 408
    :cond_8
    const-string p0, "duplicate exactness specifier"

    goto :goto_0

    .line 410
    .restart local p0
    :cond_9
    move/from16 p3, v5

    move v6, v13

    .line 411
    .end local v13           #pos:I
    .restart local v6       #pos:I
    goto :goto_3

    .line 419
    .local v6, dig:I
    .restart local v7       #value:I
    .restart local v13       #pos:I
    :cond_a
    mul-int/lit8 v5, v7, 0xa

    add-int v7, v5, v6

    .line 420
    if-lt v13, v12, :cond_b

    .line 421
    .end local v5           #ch:C
    const-string p0, "missing letter after \'#\'"

    goto :goto_0

    .line 422
    :cond_b
    add-int/lit8 v6, v13, 0x1

    .end local v13           #pos:I
    .local v6, pos:I
    aget-char v5, p0, v13

    .restart local v5       #ch:C
    move v13, v6

    .line 423
    .end local v6           #pos:I
    .restart local v13       #pos:I
    goto :goto_2

    .line 428
    :cond_c
    const/4 v6, 0x2

    if-lt v7, v6, :cond_d

    const/16 v6, 0x23

    if-le v7, v6, :cond_e

    .line 429
    :cond_d
    const-string p0, "invalid radix specifier"

    goto/16 :goto_0

    .line 430
    :cond_e
    move/from16 p4, v7

    move v6, v13

    .line 431
    .end local v13           #pos:I
    .restart local v6       #pos:I
    goto :goto_3

    .line 433
    .end local v6           #pos:I
    .restart local v13       #pos:I
    :cond_f
    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0
    invoke-direct/range {p0 .. p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "unknown modifier \'#"

    .end local p1
    invoke-virtual/range {p0 .. p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 p1, 0x27

    invoke-virtual/range {p0 .. p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 437
    .end local v7           #value:I
    .end local v13           #pos:I
    .restart local v6       #pos:I
    .restart local p0
    .restart local p1
    :cond_10
    add-int/lit8 v13, v6, 0x1

    .end local v6           #pos:I
    .restart local v13       #pos:I
    aget-char v5, p0, v6

    move v6, v13

    .end local v13           #pos:I
    .restart local v6       #pos:I
    goto/16 :goto_1

    .line 439
    :cond_11
    if-nez p3, :cond_12

    .line 440
    const/16 p3, 0x20

    .line 441
    :cond_12
    if-nez p4, :cond_14

    .line 443
    move/from16 p2, p2

    .line 445
    .end local p4
    .local p2, i:I
    :cond_13
    add-int/lit8 p2, p2, -0x1

    if-gez p2, :cond_16

    .line 449
    const/16 p4, 0xa

    .line 460
    .end local p2           #i:I
    .restart local p4
    :cond_14
    :goto_4
    const/16 p2, 0x2d

    move v0, v5

    move/from16 v1, p2

    if-ne v0, v1, :cond_17

    const/16 p2, 0x1

    move/from16 v9, p2

    .line 461
    .local v9, negative:Z
    :goto_5
    move v15, v9

    .line 462
    .local v15, numeratorNegative:Z
    const/16 p2, 0x2d

    move v0, v5

    move/from16 v1, p2

    if-eq v0, v1, :cond_15

    const/16 p2, 0x2b

    move v0, v5

    move/from16 v1, p2

    if-ne v0, v1, :cond_55

    .line 464
    :cond_15
    if-lt v6, v12, :cond_18

    .line 465
    const-string p0, "no digits following sign"

    .end local p0
    move v13, v6

    .end local v6           #pos:I
    .restart local v13       #pos:I
    goto/16 :goto_0

    .line 452
    .end local v9           #negative:Z
    .end local v13           #pos:I
    .end local v15           #numeratorNegative:Z
    .end local p4
    .restart local v6       #pos:I
    .restart local p0
    .restart local p2       #i:I
    :cond_16
    add-int p4, p1, p2

    aget-char p4, p0, p4

    const/16 v7, 0x2e

    move/from16 v0, p4

    move v1, v7

    if-ne v0, v1, :cond_13

    .line 454
    const/16 p4, 0xa

    .line 455
    .restart local p4
    goto :goto_4

    .line 460
    .end local p2           #i:I
    :cond_17
    const/16 p2, 0x0

    move/from16 v9, p2

    goto :goto_5

    .line 466
    .restart local v9       #negative:Z
    .restart local v15       #numeratorNegative:Z
    :cond_18
    add-int/lit8 v13, v6, 0x1

    .end local v6           #pos:I
    .restart local v13       #pos:I
    aget-char p2, p0, v6

    .line 470
    .end local v5           #ch:C
    .local p2, ch:C
    :goto_6
    const/16 v5, 0x69

    move/from16 v0, p2

    move v1, v5

    if-eq v0, v1, :cond_19

    const/16 v5, 0x49

    move/from16 v0, p2

    move v1, v5

    if-ne v0, v1, :cond_1f

    :cond_19
    if-ne v13, v12, :cond_1f

    const/4 v5, 0x2

    sub-int v5, v13, v5

    move/from16 v0, p1

    move v1, v5

    if-ne v0, v1, :cond_1f

    and-int/lit8 v5, p5, 0x1

    if-eqz v5, :cond_1f

    .line 473
    aget-char p0, p0, p1

    .line 474
    .local p0, sign:C
    const/16 p1, 0x2b

    move/from16 v0, p0

    move/from16 v1, p1

    if-eq v0, v1, :cond_1a

    .end local p1
    const/16 p1, 0x2d

    move/from16 v0, p0

    move/from16 v1, p1

    if-eq v0, v1, :cond_1a

    .line 475
    const-string p0, "no digits"

    goto/16 :goto_0

    .line 476
    :cond_1a
    const/16 p0, 0x69

    move/from16 v0, p3

    move/from16 v1, p0

    if-eq v0, v1, :cond_1b

    .end local p0           #sign:C
    const/16 p0, 0x49

    move/from16 v0, p3

    move/from16 v1, p0

    if-ne v0, v1, :cond_1d

    .line 477
    :cond_1b
    new-instance p0, Lgnu/math/DComplex;

    const-wide/16 p1, 0x0

    if-eqz v9, :cond_1c

    const-wide/high16 v5, -0x4010

    :goto_7
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/math/DComplex;-><init>(DD)V

    goto/16 :goto_0

    :cond_1c
    const-wide/high16 v5, 0x3ff0

    goto :goto_7

    .line 478
    :cond_1d
    if-eqz v9, :cond_1e

    invoke-static {}, Lgnu/math/Complex;->imMinusOne()Lgnu/math/CComplex;

    move-result-object p0

    goto/16 :goto_0

    :cond_1e
    invoke-static {}, Lgnu/math/Complex;->imOne()Lgnu/math/CComplex;

    move-result-object p0

    goto/16 :goto_0

    .line 481
    .local p0, buffer:[C
    .restart local p1
    :cond_1f
    const/16 p1, 0x1

    sub-int p1, v13, p1

    .line 482
    .local p1, realStart:I
    const/4 v7, 0x0

    .line 483
    .local v7, hash_seen:Z
    const/4 v14, 0x0

    .line 484
    .local v14, exp_seen:C
    const/4 v6, -0x1

    .line 485
    .local v6, digits_start:I
    const/4 v5, -0x1

    .line 486
    .local v5, decimal_point:I
    const/16 p1, 0x0

    .line 487
    .local p1, copy_needed:Z
    const/4 v8, 0x0

    .line 488
    .local v8, underscore_seen:Z
    const/16 p1, 0x0

    .line 489
    .local p1, numerator:Lgnu/math/IntNum;
    const-wide/16 v10, 0x0

    .local v10, lvalue:J
    move/from16 v16, v8

    .end local v8           #underscore_seen:Z
    .local v16, underscore_seen:Z
    move-object/from16 v8, p1

    .end local p1           #numerator:Lgnu/math/IntNum;
    .local v8, numerator:Lgnu/math/IntNum;
    move/from16 p1, p2

    .end local p2           #ch:C
    .local p1, ch:C
    move/from16 p2, v5

    .line 493
    .end local v5           #decimal_point:I
    .local p2, decimal_point:I
    :goto_8
    move/from16 v0, p1

    move/from16 v1, p4

    invoke-static {v0, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    .line 494
    .local v5, digit:I
    if-ltz v5, :cond_22

    .line 496
    if-eqz v7, :cond_20

    if-gez p2, :cond_20

    .line 497
    const-string p0, "digit after \'#\' in number"

    goto/16 :goto_0

    .line 498
    :cond_20
    if-gez v6, :cond_21

    .line 499
    const/16 p1, 0x1

    sub-int v6, v13, p1

    .line 500
    .end local p1           #ch:C
    :cond_21
    move/from16 v0, p4

    int-to-long v0, v0

    move-wide/from16 v17, v0

    mul-long v10, v10, v17

    move v0, v5

    int-to-long v0, v0

    move-wide/from16 v17, v0

    add-long v10, v10, v17

    move v5, v7

    .end local v7           #hash_seen:Z
    .local v5, hash_seen:Z
    move-object v7, v8

    .line 579
    .end local v8           #numerator:Lgnu/math/IntNum;
    .local v7, numerator:Lgnu/math/IntNum;
    :goto_9
    if-ne v13, v12, :cond_33

    move/from16 p1, p2

    .end local p2           #decimal_point:I
    .local p1, decimal_point:I
    move/from16 p2, v14

    .end local v14           #exp_seen:C
    .local p2, exp_seen:C
    move-object v14, v7

    .end local v7           #numerator:Lgnu/math/IntNum;
    .local v14, numerator:Lgnu/math/IntNum;
    move/from16 v7, v16

    .end local v16           #underscore_seen:Z
    .local v7, underscore_seen:Z
    move/from16 v16, v13

    .line 584
    .end local v13           #pos:I
    .local v16, pos:I
    :goto_a
    if-gez v6, :cond_34

    .line 585
    const-string p0, "no digits"

    .end local p0           #buffer:[C
    move/from16 v13, v16

    .end local v16           #pos:I
    .restart local v13       #pos:I
    goto/16 :goto_0

    .line 504
    .local v5, digit:I
    .local v7, hash_seen:Z
    .restart local v8       #numerator:Lgnu/math/IntNum;
    .local v14, exp_seen:C
    .local v16, underscore_seen:Z
    .restart local p0       #buffer:[C
    .local p1, ch:C
    .local p2, decimal_point:I
    :cond_22
    sparse-switch p1, :sswitch_data_1

    .line 575
    add-int/lit8 v13, v13, -0x1

    move/from16 p1, p2

    .end local p2           #decimal_point:I
    .local p1, decimal_point:I
    move v5, v7

    .end local v7           #hash_seen:Z
    .local v5, hash_seen:Z
    move/from16 p2, v14

    .end local v14           #exp_seen:C
    .local p2, exp_seen:C
    move/from16 v7, v16

    .end local v16           #underscore_seen:Z
    .local v7, underscore_seen:Z
    move-object v14, v8

    .end local v8           #numerator:Lgnu/math/IntNum;
    .local v14, numerator:Lgnu/math/IntNum;
    move/from16 v16, v13

    .line 576
    .end local v13           #pos:I
    .local v16, pos:I
    goto :goto_a

    .line 521
    .local v5, digit:I
    .local v7, hash_seen:Z
    .restart local v8       #numerator:Lgnu/math/IntNum;
    .restart local v13       #pos:I
    .local v14, exp_seen:C
    .local v16, underscore_seen:Z
    .local p1, ch:C
    .local p2, decimal_point:I
    :sswitch_5
    if-ltz p2, :cond_23

    .line 522
    const-string p0, "duplicate \'.\' in number"

    goto/16 :goto_0

    .line 523
    :cond_23
    const/16 p1, 0xa

    move/from16 v0, p4

    move/from16 v1, p1

    if-eq v0, v1, :cond_24

    .line 524
    .end local p1           #ch:C
    const-string p0, "\'.\' in non-decimal number"

    goto/16 :goto_0

    .line 525
    :cond_24
    const/16 p1, 0x1

    sub-int p1, v13, p1

    .end local p2           #decimal_point:I
    .local p1, decimal_point:I
    move/from16 p2, p1

    .end local p1           #decimal_point:I
    .restart local p2       #decimal_point:I
    move v5, v7

    .end local v7           #hash_seen:Z
    .local v5, hash_seen:Z
    move-object v7, v8

    .line 526
    .end local v8           #numerator:Lgnu/math/IntNum;
    .local v7, numerator:Lgnu/math/IntNum;
    goto :goto_9

    .line 529
    .local v5, digit:I
    .local v7, hash_seen:Z
    .restart local v8       #numerator:Lgnu/math/IntNum;
    .local p1, ch:C
    :sswitch_6
    if-eq v13, v12, :cond_25

    const/16 v5, 0xa

    move/from16 v0, p4

    move v1, v5

    if-eq v0, v1, :cond_26

    .line 531
    .end local v5           #digit:I
    :cond_25
    add-int/lit8 v13, v13, -0x1

    move/from16 p1, p2

    .end local p2           #decimal_point:I
    .local p1, decimal_point:I
    move v5, v7

    .end local v7           #hash_seen:Z
    .local v5, hash_seen:Z
    move/from16 p2, v14

    .end local v14           #exp_seen:C
    .local p2, exp_seen:C
    move/from16 v7, v16

    .end local v16           #underscore_seen:Z
    .local v7, underscore_seen:Z
    move-object v14, v8

    .end local v8           #numerator:Lgnu/math/IntNum;
    .local v14, numerator:Lgnu/math/IntNum;
    move/from16 v16, v13

    .line 532
    .end local v13           #pos:I
    .local v16, pos:I
    goto :goto_a

    .line 534
    .end local v5           #hash_seen:Z
    .local v7, hash_seen:Z
    .restart local v8       #numerator:Lgnu/math/IntNum;
    .restart local v13       #pos:I
    .local v14, exp_seen:C
    .local v16, underscore_seen:Z
    .local p1, ch:C
    .local p2, decimal_point:I
    :cond_26
    aget-char v5, p0, v13

    .line 535
    .local v5, next:C
    const/16 v17, 0x2b

    move v0, v5

    move/from16 v1, v17

    if-eq v0, v1, :cond_27

    const/16 v17, 0x2d

    move v0, v5

    move/from16 v1, v17

    if-ne v0, v1, :cond_29

    .line 537
    :cond_27
    add-int/lit8 v13, v13, 0x1

    if-ge v13, v12, :cond_28

    aget-char v5, p0, v13

    .end local v5           #next:C
    const/16 v17, 0xa

    move v0, v5

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    if-gez v5, :cond_2a

    .line 539
    :cond_28
    const-string p0, "missing exponent digits"

    goto/16 :goto_0

    .line 541
    .restart local v5       #next:C
    :cond_29
    const/16 v17, 0xa

    move v0, v5

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    .end local v5           #next:C
    if-gez v5, :cond_2a

    .line 543
    add-int/lit8 v13, v13, -0x1

    move/from16 p1, p2

    .end local p2           #decimal_point:I
    .local p1, decimal_point:I
    move v5, v7

    .end local v7           #hash_seen:Z
    .local v5, hash_seen:Z
    move/from16 p2, v14

    .end local v14           #exp_seen:C
    .local p2, exp_seen:C
    move/from16 v7, v16

    .end local v16           #underscore_seen:Z
    .local v7, underscore_seen:Z
    move-object v14, v8

    .end local v8           #numerator:Lgnu/math/IntNum;
    .local v14, numerator:Lgnu/math/IntNum;
    move/from16 v16, v13

    .line 544
    .end local v13           #pos:I
    .local v16, pos:I
    goto/16 :goto_a

    .line 546
    .end local v5           #hash_seen:Z
    .local v7, hash_seen:Z
    .restart local v8       #numerator:Lgnu/math/IntNum;
    .restart local v13       #pos:I
    .local v14, exp_seen:C
    .local v16, underscore_seen:Z
    .local p1, ch:C
    .local p2, decimal_point:I
    :cond_2a
    if-eqz v14, :cond_2b

    .line 547
    const-string p0, "duplicate exponent"

    goto/16 :goto_0

    .line 548
    :cond_2b
    const/16 v5, 0xa

    move/from16 v0, p4

    move v1, v5

    if-eq v0, v1, :cond_2c

    .line 549
    const-string p0, "exponent in non-decimal number"

    goto/16 :goto_0

    .line 550
    :cond_2c
    if-gez v6, :cond_2d

    .line 551
    const-string p0, "mantissa with no digits"

    goto/16 :goto_0

    .line 552
    :cond_2d
    move/from16 p1, p1

    .line 555
    .end local v14           #exp_seen:C
    .local p1, exp_seen:C
    :cond_2e
    add-int/lit8 v13, v13, 0x1

    .line 556
    if-ge v13, v12, :cond_54

    aget-char v5, p0, v13

    const/16 v14, 0xa

    invoke-static {v5, v14}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    if-gez v5, :cond_2e

    move-object v14, v8

    .end local v8           #numerator:Lgnu/math/IntNum;
    .local v14, numerator:Lgnu/math/IntNum;
    move v5, v7

    .end local v7           #hash_seen:Z
    .restart local v5       #hash_seen:Z
    move/from16 v7, v16

    .end local v16           #underscore_seen:Z
    .local v7, underscore_seen:Z
    move/from16 v16, v13

    .end local v13           #pos:I
    .local v16, pos:I
    move/from16 v19, p2

    .end local p2           #decimal_point:I
    .local v19, decimal_point:I
    move/from16 p2, p1

    .end local p1           #exp_seen:C
    .local p2, exp_seen:C
    move/from16 p1, v19

    .line 557
    .end local v19           #decimal_point:I
    .local p1, decimal_point:I
    goto/16 :goto_a

    .line 560
    .local v5, digit:I
    .local v7, hash_seen:Z
    .restart local v8       #numerator:Lgnu/math/IntNum;
    .restart local v13       #pos:I
    .local v14, exp_seen:C
    .local v16, underscore_seen:Z
    .local p1, ch:C
    .local p2, decimal_point:I
    :sswitch_7
    if-eqz v8, :cond_2f

    .line 561
    const-string p0, "multiple fraction symbol \'/\'"

    goto/16 :goto_0

    .line 562
    :cond_2f
    if-gez v6, :cond_30

    .line 563
    const-string p0, "no digits before fraction symbol \'/\'"

    goto/16 :goto_0

    .line 564
    :cond_30
    if-nez v14, :cond_31

    if-ltz p2, :cond_32

    .line 565
    :cond_31
    const-string p0, "fraction symbol \'/\' following exponent or \'.\'"

    goto/16 :goto_0

    .line 566
    :cond_32
    sub-int v7, v13, v6

    move-object/from16 v5, p0

    move/from16 v8, p4

    invoke-static/range {v5 .. v11}, Lgnu/kawa/lispexpr/LispReader;->valueOf([CIIIZJ)Lgnu/math/IntNum;

    .end local v5           #digit:I
    .end local v7           #hash_seen:Z
    .end local v8           #numerator:Lgnu/math/IntNum;
    move-result-object v5

    .line 568
    .local v5, numerator:Lgnu/math/IntNum;
    const/4 v6, -0x1

    .line 569
    const-wide/16 v10, 0x0

    .line 570
    const/4 v9, 0x0

    .line 571
    const/16 p1, 0x0

    .line 572
    .local p1, hash_seen:Z
    const/4 v7, 0x0

    .end local v16           #underscore_seen:Z
    .local v7, underscore_seen:Z
    move/from16 v16, v7

    .end local v7           #underscore_seen:Z
    .restart local v16       #underscore_seen:Z
    move-object v7, v5

    .end local v5           #numerator:Lgnu/math/IntNum;
    .local v7, numerator:Lgnu/math/IntNum;
    move/from16 v5, p1

    .line 573
    .end local p1           #hash_seen:Z
    .local v5, hash_seen:Z
    goto/16 :goto_9

    .line 581
    :cond_33
    add-int/lit8 v8, v13, 0x1

    .end local v13           #pos:I
    .local v8, pos:I
    aget-char p1, p0, v13

    .local p1, ch:C
    move v13, v8

    .end local v8           #pos:I
    .restart local v13       #pos:I
    move-object v8, v7

    .end local v7           #numerator:Lgnu/math/IntNum;
    .local v8, numerator:Lgnu/math/IntNum;
    move v7, v5

    .line 582
    .end local v5           #hash_seen:Z
    .local v7, hash_seen:Z
    goto/16 :goto_8

    .line 587
    .end local v8           #numerator:Lgnu/math/IntNum;
    .end local v13           #pos:I
    .restart local v5       #hash_seen:Z
    .local v7, underscore_seen:Z
    .local v14, numerator:Lgnu/math/IntNum;
    .local v16, pos:I
    .local p1, decimal_point:I
    .local p2, exp_seen:C
    :cond_34
    if-nez v5, :cond_35

    if-eqz v7, :cond_35

    .line 592
    :cond_35
    const/16 v7, 0x69

    move/from16 v0, p3

    move v1, v7

    if-eq v0, v1, :cond_36

    .end local v7           #underscore_seen:Z
    const/16 v7, 0x49

    move/from16 v0, p3

    move v1, v7

    if-eq v0, v1, :cond_36

    const/16 v7, 0x20

    move/from16 v0, p3

    move v1, v7

    if-ne v0, v1, :cond_39

    if-eqz v5, :cond_39

    :cond_36
    const/4 v5, 0x1

    move v13, v5

    .line 594
    .end local v5           #hash_seen:Z
    .local v13, inexact:Z
    :goto_b
    const/4 v5, 0x0

    .line 595
    .local v5, number:Lgnu/math/RealNum;
    if-nez p2, :cond_37

    if-ltz p1, :cond_3d

    .line 597
    :cond_37
    move v0, v6

    move/from16 v1, p1

    if-le v0, v1, :cond_38

    if-ltz p1, :cond_38

    .line 598
    move/from16 v6, p1

    .line 599
    :cond_38
    if-eqz v14, :cond_3a

    .line 600
    const-string p0, "floating-point number after fraction symbol \'/\'"

    .end local p0           #buffer:[C
    move/from16 v13, v16

    .end local v16           #pos:I
    .local v13, pos:I
    goto/16 :goto_0

    .line 592
    .end local v13           #pos:I
    .local v5, hash_seen:Z
    .restart local v16       #pos:I
    .restart local p0       #buffer:[C
    :cond_39
    const/4 v5, 0x0

    move v13, v5

    goto :goto_b

    .line 601
    .local v5, number:Lgnu/math/RealNum;
    .local v13, inexact:Z
    :cond_3a
    new-instance p1, Ljava/lang/String;

    .end local p1           #decimal_point:I
    sub-int p2, v16, v6

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move v2, v6

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 602
    .end local p2           #exp_seen:C
    .local p1, str:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lgnu/lists/Convert;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    .line 603
    .local p1, d:D
    new-instance v5, Lgnu/math/DFloNum;

    .end local v5           #number:Lgnu/math/RealNum;
    if-eqz v9, :cond_3b

    move-wide/from16 v0, p1

    neg-double v0, v0

    move-wide/from16 p1, v0

    .end local p1           #d:D
    :cond_3b
    move-object v0, v5

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    .restart local v5       #number:Lgnu/math/RealNum;
    move-object/from16 p1, v5

    .line 638
    .end local v5           #number:Lgnu/math/RealNum;
    .local p1, number:Lgnu/math/RealNum;
    :goto_c
    const/16 p2, 0x65

    move/from16 v0, p3

    move/from16 v1, p2

    if-eq v0, v1, :cond_3c

    const/16 p2, 0x45

    move/from16 v0, p3

    move/from16 v1, p2

    if-ne v0, v1, :cond_52

    .line 639
    :cond_3c
    invoke-virtual/range {p1 .. p1}, Lgnu/math/RealNum;->toExact()Lgnu/math/RatNum;

    move-result-object p1

    move-object/from16 v5, p1

    .line 641
    .end local p1           #number:Lgnu/math/RealNum;
    .restart local v5       #number:Lgnu/math/RealNum;
    :goto_d
    move/from16 v0, v16

    move v1, v12

    if-ge v0, v1, :cond_51

    .line 643
    add-int/lit8 v13, v16, 0x1

    .end local v16           #pos:I
    .local v13, pos:I
    aget-char p1, p0, v16

    .line 645
    .local p1, ch:C
    const/16 p2, 0x40

    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_47

    .line 647
    sub-int v14, v12, v13

    const/16 v16, 0xa

    move-object/from16 v12, p0

    move/from16 v15, p3

    move/from16 v17, p5

    invoke-static/range {v12 .. v17}, Lgnu/kawa/lispexpr/LispReader;->parseNumber([CIICII)Ljava/lang/Object;

    .end local v12           #end:I
    .end local v14           #numerator:Lgnu/math/IntNum;
    .end local v15           #numeratorNegative:Z
    move-result-object p0

    .line 649
    .local p0, angle:Ljava/lang/Object;
    move-object/from16 v0, p0

    instance-of v0, v0, Ljava/lang/String;

    move/from16 p1, v0

    .end local p1           #ch:C
    if-nez p1, :cond_0

    .line 651
    move-object/from16 v0, p0

    instance-of v0, v0, Lgnu/math/RealNum;

    move/from16 p1, v0

    if-nez p1, :cond_45

    .line 652
    const-string p0, "invalid complex polar constant"

    goto/16 :goto_0

    .line 607
    .restart local v12       #end:I
    .local v13, inexact:Z
    .restart local v14       #numerator:Lgnu/math/IntNum;
    .restart local v15       #numeratorNegative:Z
    .restart local v16       #pos:I
    .local p0, buffer:[C
    .local p1, decimal_point:I
    .restart local p2       #exp_seen:C
    :cond_3d
    sub-int v7, v16, v6

    move-object/from16 v5, p0

    move/from16 v8, p4

    invoke-static/range {v5 .. v11}, Lgnu/kawa/lispexpr/LispReader;->valueOf([CIIIZJ)Lgnu/math/IntNum;

    .end local v5           #number:Lgnu/math/RealNum;
    move-result-object p1

    .line 609
    .local p1, iresult:Lgnu/math/IntNum;
    if-nez v14, :cond_3e

    .line 610
    move-object/from16 p1, p1

    .local p1, number:Lgnu/math/RealNum;
    move-object/from16 p2, p1

    .line 632
    .end local p1           #number:Lgnu/math/RealNum;
    .local p2, number:Lgnu/math/RealNum;
    :goto_e
    if-eqz v13, :cond_53

    invoke-virtual/range {p2 .. p2}, Lgnu/math/RealNum;->isExact()Z

    move-result p1

    if-eqz p1, :cond_53

    .line 634
    new-instance p1, Lgnu/math/DFloNum;

    if-eqz v15, :cond_44

    invoke-virtual/range {p2 .. p2}, Lgnu/math/RealNum;->isZero()Z

    move-result v5

    if-eqz v5, :cond_44

    const-wide/high16 v7, -0x8000

    :goto_f
    move-object/from16 v0, p1

    move-wide v1, v7

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    .end local p2           #number:Lgnu/math/RealNum;
    .restart local p1       #number:Lgnu/math/RealNum;
    goto :goto_c

    .line 615
    .local p1, iresult:Lgnu/math/IntNum;
    .local p2, exp_seen:C
    :cond_3e
    invoke-virtual/range {p1 .. p1}, Lgnu/math/IntNum;->isZero()Z

    move-result p2

    .end local p2           #exp_seen:C
    if-eqz p2, :cond_43

    .line 617
    invoke-virtual {v14}, Lgnu/math/IntNum;->isZero()Z

    move-result p2

    .line 618
    .local p2, numeratorZero:Z
    if-eqz v13, :cond_41

    .line 619
    new-instance p1, Lgnu/math/DFloNum;

    .end local p1           #iresult:Lgnu/math/IntNum;
    if-eqz p2, :cond_3f

    const-wide/high16 v7, 0x7ff8

    :goto_10
    move-object/from16 v0, p1

    move-wide v1, v7

    invoke-direct {v0, v1, v2}, Lgnu/math/DFloNum;-><init>(D)V

    .local p1, number:Lgnu/math/RealNum;
    :goto_11
    move-object/from16 p2, p1

    .line 626
    .end local p1           #number:Lgnu/math/RealNum;
    .local p2, number:Lgnu/math/RealNum;
    goto :goto_e

    .line 619
    .local p2, numeratorZero:Z
    :cond_3f
    if-eqz v15, :cond_40

    const-wide/high16 v7, -0x10

    goto :goto_10

    :cond_40
    const-wide/high16 v7, 0x7ff0

    goto :goto_10

    .line 622
    .local p1, iresult:Lgnu/math/IntNum;
    :cond_41
    if-eqz p2, :cond_42

    .line 623
    const-string p0, "0/0 is undefined"

    .end local p0           #buffer:[C
    move/from16 v13, v16

    .end local v16           #pos:I
    .local v13, pos:I
    goto/16 :goto_0

    .line 625
    .local v13, inexact:Z
    .restart local v16       #pos:I
    .restart local p0       #buffer:[C
    :cond_42
    move-object v0, v14

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object p1

    .local p1, number:Lgnu/math/RealNum;
    goto :goto_11

    .line 629
    .end local p2           #numeratorZero:Z
    .local p1, iresult:Lgnu/math/IntNum;
    :cond_43
    move-object v0, v14

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lgnu/math/RatNum;->make(Lgnu/math/IntNum;Lgnu/math/IntNum;)Lgnu/math/RatNum;

    move-result-object p1

    .local p1, number:Lgnu/math/RealNum;
    move-object/from16 p2, p1

    .end local p1           #number:Lgnu/math/RealNum;
    .local p2, number:Lgnu/math/RealNum;
    goto :goto_e

    .line 634
    :cond_44
    invoke-virtual/range {p2 .. p2}, Lgnu/math/RealNum;->doubleValue()D

    move-result-wide v7

    goto :goto_f

    .line 653
    .end local v12           #end:I
    .end local v14           #numerator:Lgnu/math/IntNum;
    .end local v15           #numeratorNegative:Z
    .end local v16           #pos:I
    .end local p2           #number:Lgnu/math/RealNum;
    .restart local v5       #number:Lgnu/math/RealNum;
    .local v13, pos:I
    .local p0, angle:Ljava/lang/Object;
    :cond_45
    check-cast p0, Lgnu/math/RealNum;

    .line 656
    .local p0, rangle:Lgnu/math/RealNum;
    invoke-virtual {v5}, Lgnu/math/RealNum;->isZero()Z

    move-result p1

    if-eqz p1, :cond_46

    invoke-virtual/range {p0 .. p0}, Lgnu/math/RealNum;->isExact()Z

    move-result p1

    if-nez p1, :cond_46

    .line 657
    new-instance p0, Lgnu/math/DFloNum;

    .end local p0           #rangle:Lgnu/math/RealNum;
    const-wide/16 p1, 0x0

    invoke-direct/range {p0 .. p2}, Lgnu/math/DFloNum;-><init>(D)V

    goto/16 :goto_0

    .line 659
    .restart local p0       #rangle:Lgnu/math/RealNum;
    :cond_46
    move-object v0, v5

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lgnu/math/Complex;->polar(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/DComplex;

    move-result-object p0

    goto/16 :goto_0

    .line 662
    .restart local v12       #end:I
    .restart local v14       #numerator:Lgnu/math/IntNum;
    .restart local v15       #numeratorNegative:Z
    .local p0, buffer:[C
    .local p1, ch:C
    :cond_47
    const/16 p2, 0x2d

    move/from16 v0, p1

    move/from16 v1, p2

    if-eq v0, v1, :cond_48

    const/16 p2, 0x2b

    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_4b

    .line 664
    :cond_48
    add-int/lit8 v13, v13, -0x1

    .line 665
    sub-int v14, v12, v13

    const/16 v16, 0xa

    move-object/from16 v12, p0

    move/from16 v15, p3

    move/from16 v17, p5

    invoke-static/range {v12 .. v17}, Lgnu/kawa/lispexpr/LispReader;->parseNumber([CIICII)Ljava/lang/Object;

    .end local v12           #end:I
    .end local v14           #numerator:Lgnu/math/IntNum;
    .end local v15           #numeratorNegative:Z
    move-result-object p0

    .line 667
    .local p0, imag:Ljava/lang/Object;
    move-object/from16 v0, p0

    instance-of v0, v0, Ljava/lang/String;

    move/from16 p1, v0

    .end local p1           #ch:C
    if-nez p1, :cond_0

    .line 669
    move-object/from16 v0, p0

    instance-of v0, v0, Lgnu/math/Complex;

    move/from16 p1, v0

    if-nez p1, :cond_49

    .line 670
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct/range {p1 .. p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "invalid numeric constant ("

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #imag:Ljava/lang/Object;
    const-string p1, ")"

    invoke-virtual/range {p0 .. p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 671
    .restart local p0       #imag:Ljava/lang/Object;
    :cond_49
    check-cast p0, Lgnu/math/Complex;

    .line 672
    .local p0, cimag:Lgnu/math/Complex;
    invoke-virtual/range {p0 .. p0}, Lgnu/math/Complex;->re()Lgnu/math/RealNum;

    move-result-object p1

    .line 673
    .local p1, re:Lgnu/math/RealNum;
    invoke-virtual/range {p1 .. p1}, Lgnu/math/RealNum;->isZero()Z

    move-result p1

    .end local p1           #re:Lgnu/math/RealNum;
    if-nez p1, :cond_4a

    .line 674
    const-string p0, "invalid numeric constant"

    goto/16 :goto_0

    .line 675
    :cond_4a
    invoke-virtual/range {p0 .. p0}, Lgnu/math/Complex;->im()Lgnu/math/RealNum;

    move-result-object p0

    .end local p0           #cimag:Lgnu/math/Complex;
    move-object v0, v5

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lgnu/math/Complex;->make(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/Complex;

    move-result-object p0

    goto/16 :goto_0

    .line 678
    .restart local v12       #end:I
    .restart local v14       #numerator:Lgnu/math/IntNum;
    .restart local v15       #numeratorNegative:Z
    .local p0, buffer:[C
    .local p1, ch:C
    :cond_4b
    const/16 p2, 0x0

    .line 681
    .end local p5
    .local p2, lcount:I
    :goto_12
    invoke-static/range {p1 .. p1}, Ljava/lang/Character;->isLetter(C)Z

    move-result p1

    .end local p1           #ch:C
    if-nez p1, :cond_4d

    .line 683
    add-int/lit8 v13, v13, -0x1

    move/from16 p1, p2

    .line 692
    .end local p2           #lcount:I
    .local p1, lcount:I
    :goto_13
    const/16 p2, 0x1

    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_50

    .line 694
    const/16 p1, 0x1

    sub-int p1, v13, p1

    aget-char p0, p0, p1

    .line 695
    .end local p1           #lcount:I
    .local p0, prev:C
    const/16 p1, 0x69

    move/from16 v0, p0

    move/from16 v1, p1

    if-eq v0, v1, :cond_4c

    const/16 p1, 0x49

    move/from16 v0, p0

    move/from16 v1, p1

    if-ne v0, v1, :cond_50

    .line 697
    :cond_4c
    if-ge v13, v12, :cond_4f

    .line 698
    const-string p0, "junk after imaginary suffix \'i\'"

    goto/16 :goto_0

    .line 686
    .local p0, buffer:[C
    .restart local p2       #lcount:I
    :cond_4d
    add-int/lit8 p2, p2, 0x1

    .line 687
    if-ne v13, v12, :cond_4e

    move/from16 p1, p2

    .line 688
    .end local p2           #lcount:I
    .restart local p1       #lcount:I
    goto :goto_13

    .line 689
    .end local p1           #lcount:I
    .restart local p2       #lcount:I
    :cond_4e
    add-int/lit8 p5, v13, 0x1

    .end local v13           #pos:I
    .local p5, pos:I
    aget-char p1, p0, v13

    .local p1, ch:C
    move/from16 v13, p5

    .end local p5           #pos:I
    .restart local v13       #pos:I
    goto :goto_12

    .line 699
    .end local p1           #ch:C
    .end local p2           #lcount:I
    .local p0, prev:C
    :cond_4f
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object p0

    .end local p0           #prev:C
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lgnu/math/Complex;->make(Lgnu/math/RealNum;Lgnu/math/RealNum;)Lgnu/math/Complex;

    move-result-object p0

    goto/16 :goto_0

    .line 702
    :cond_50
    const-string p0, "excess junk after number"

    goto/16 :goto_0

    .local v13, inexact:Z
    .restart local v16       #pos:I
    .local p0, buffer:[C
    .local p5, flags:I
    :cond_51
    move/from16 v13, v16

    .end local v16           #pos:I
    .local v13, pos:I
    move-object/from16 p0, v5

    .line 705
    goto/16 :goto_0

    .end local v5           #number:Lgnu/math/RealNum;
    .local v13, inexact:Z
    .restart local v16       #pos:I
    .local p1, number:Lgnu/math/RealNum;
    :cond_52
    move-object/from16 v5, p1

    .end local p1           #number:Lgnu/math/RealNum;
    .restart local v5       #number:Lgnu/math/RealNum;
    goto/16 :goto_d

    .end local v5           #number:Lgnu/math/RealNum;
    .local p2, number:Lgnu/math/RealNum;
    :cond_53
    move-object/from16 p1, p2

    .end local p2           #number:Lgnu/math/RealNum;
    .restart local p1       #number:Lgnu/math/RealNum;
    goto/16 :goto_c

    .end local v14           #numerator:Lgnu/math/IntNum;
    .local v7, hash_seen:Z
    .restart local v8       #numerator:Lgnu/math/IntNum;
    .local v13, pos:I
    .local v16, underscore_seen:Z
    .local p1, exp_seen:C
    .local p2, decimal_point:I
    :cond_54
    move-object v14, v8

    .end local v8           #numerator:Lgnu/math/IntNum;
    .restart local v14       #numerator:Lgnu/math/IntNum;
    move v5, v7

    .end local v7           #hash_seen:Z
    .local v5, hash_seen:Z
    move/from16 v7, v16

    .end local v16           #underscore_seen:Z
    .local v7, underscore_seen:Z
    move/from16 v16, v13

    .end local v13           #pos:I
    .local v16, pos:I
    move/from16 v19, p2

    .end local p2           #decimal_point:I
    .restart local v19       #decimal_point:I
    move/from16 p2, p1

    .end local p1           #exp_seen:C
    .local p2, exp_seen:C
    move/from16 p1, v19

    .end local v19           #decimal_point:I
    .local p1, decimal_point:I
    goto/16 :goto_a

    .end local v7           #underscore_seen:Z
    .end local v10           #lvalue:J
    .end local v14           #numerator:Lgnu/math/IntNum;
    .end local v16           #pos:I
    .end local p2           #exp_seen:C
    .local v5, ch:C
    .local v6, pos:I
    .local p1, start:I
    :cond_55
    move/from16 p2, v5

    .end local v5           #ch:C
    .local p2, ch:C
    move v13, v6

    .end local v6           #pos:I
    .restart local v13       #pos:I
    goto/16 :goto_6

    .line 379
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_0
        0x44 -> :sswitch_2
        0x45 -> :sswitch_4
        0x49 -> :sswitch_4
        0x4f -> :sswitch_1
        0x58 -> :sswitch_3
        0x62 -> :sswitch_0
        0x64 -> :sswitch_2
        0x65 -> :sswitch_4
        0x69 -> :sswitch_4
        0x6f -> :sswitch_1
        0x78 -> :sswitch_3
    .end sparse-switch

    .line 504
    :sswitch_data_1
    .sparse-switch
        0x2e -> :sswitch_5
        0x2f -> :sswitch_7
        0x44 -> :sswitch_6
        0x45 -> :sswitch_6
        0x46 -> :sswitch_6
        0x4c -> :sswitch_6
        0x53 -> :sswitch_6
        0x64 -> :sswitch_6
        0x65 -> :sswitch_6
        0x66 -> :sswitch_6
        0x6c -> :sswitch_6
        0x73 -> :sswitch_6
    .end sparse-switch
.end method

.method public static readCharacter(Lgnu/kawa/lispexpr/LispReader;)Ljava/lang/Object;
    .locals 12
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x8

    .line 1037
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v0

    .line 1038
    .local v0, ch:I
    if-gez v0, :cond_0

    .line 1039
    const-string v8, "unexpected EOF in character literal"

    invoke-virtual {p0, v8}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;)V

    .line 1040
    :cond_0
    iget v4, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 1041
    .local v4, startPos:I
    invoke-virtual {p0, v0}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 1042
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v8

    const/16 v9, 0x44

    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v10

    invoke-virtual {p0, v8, v9, v10}, Lgnu/kawa/lispexpr/LispReader;->readToken(ICLgnu/kawa/lispexpr/ReadTable;)V

    .line 1043
    iget-object v5, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    .line 1044
    .local v5, tokenBuffer:[C
    iget v8, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    sub-int v2, v8, v4

    .line 1045
    .local v2, length:I
    const/4 v8, 0x1

    if-ne v2, v8, :cond_1

    .line 1046
    aget-char v8, v5, v4

    invoke-static {v8}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v8

    .line 1080
    :goto_0
    return-object v8

    .line 1047
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5, v4, v2}, Ljava/lang/String;-><init>([CII)V

    .line 1048
    .local v3, name:Ljava/lang/String;
    invoke-static {v3}, Lgnu/text/Char;->nameToChar(Ljava/lang/String;)I

    move-result v0

    .line 1049
    if-ltz v0, :cond_2

    .line 1050
    invoke-static {v0}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v8

    goto :goto_0

    .line 1051
    :cond_2
    aget-char v0, v5, v4

    .line 1052
    const/16 v8, 0x78

    if-eq v0, v8, :cond_3

    const/16 v8, 0x58

    if-ne v0, v8, :cond_5

    :cond_3
    const/4 v8, 0x7

    if-ge v2, v8, :cond_5

    .line 1054
    const/4 v7, 0x0

    .line 1055
    .local v7, value:I
    const/4 v1, 0x1

    .line 1057
    .local v1, i:I
    :goto_1
    if-ne v1, v2, :cond_4

    .line 1058
    invoke-static {v7}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v8

    goto :goto_0

    .line 1059
    :cond_4
    add-int v8, v4, v1

    aget-char v8, v5, v8

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    .line 1060
    .local v6, v:I
    if-gez v0, :cond_6

    .line 1065
    .end local v1           #i:I
    .end local v6           #v:I
    .end local v7           #value:I
    :cond_5
    invoke-static {v0, v11}, Ljava/lang/Character;->digit(II)I

    move-result v0

    .line 1066
    if-ltz v0, :cond_8

    .line 1068
    move v7, v0

    .line 1069
    .restart local v7       #value:I
    const/4 v1, 0x1

    .line 1071
    .restart local v1       #i:I
    :goto_2
    if-ne v1, v2, :cond_7

    .line 1072
    invoke-static {v7}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v8

    goto :goto_0

    .line 1062
    .restart local v6       #v:I
    :cond_6
    mul-int/lit8 v8, v7, 0x10

    add-int v7, v8, v6

    .line 1055
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1073
    .end local v6           #v:I
    :cond_7
    add-int v8, v4, v1

    aget-char v8, v5, v8

    invoke-static {v8, v11}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 1074
    if-gez v0, :cond_9

    .line 1079
    .end local v1           #i:I
    .end local v7           #value:I
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unknown character name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 1080
    const/16 v8, 0x3f

    invoke-static {v8}, Lgnu/text/Char;->make(I)Lgnu/text/Char;

    move-result-object v8

    goto :goto_0

    .line 1076
    .restart local v1       #i:I
    .restart local v7       #value:I
    :cond_9
    mul-int/lit8 v8, v7, 0x8

    add-int v7, v8, v0

    .line 1069
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public static readNumberWithRadix(ILgnu/kawa/lispexpr/LispReader;I)Ljava/lang/Object;
    .locals 8
    .parameter "previous"
    .parameter "reader"
    .parameter "radix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1010
    iget v0, p1, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    sub-int v1, v0, p0

    .line 1011
    .local v1, startPos:I
    invoke-virtual {p1}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v0

    const/16 v2, 0x50

    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v4

    invoke-virtual {p1, v0, v2, v4}, Lgnu/kawa/lispexpr/LispReader;->readToken(ICLgnu/kawa/lispexpr/ReadTable;)V

    .line 1012
    iget v6, p1, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 1013
    .local v6, endPos:I
    if-ne v1, v6, :cond_0

    .line 1015
    const-string v0, "missing numeric token"

    invoke-virtual {p1, v0}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 1016
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v0

    .line 1031
    :goto_0
    return-object v0

    .line 1018
    :cond_0
    iget-object v0, p1, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    sub-int v2, v6, v1

    move v4, p2

    move v5, v3

    invoke-static/range {v0 .. v5}, Lgnu/kawa/lispexpr/LispReader;->parseNumber([CIICII)Ljava/lang/Object;

    move-result-object v7

    .line 1020
    .local v7, result:Ljava/lang/Object;
    instance-of v0, v7, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1022
    check-cast v7, Ljava/lang/String;

    .end local v7           #result:Ljava/lang/Object;
    invoke-virtual {p1, v7}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 1023
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_0

    .line 1025
    .restart local v7       #result:Ljava/lang/Object;
    :cond_1
    if-nez v7, :cond_2

    .line 1027
    const-string v0, "invalid numeric constant"

    invoke-virtual {p1, v0}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 1028
    invoke-static {}, Lgnu/math/IntNum;->zero()Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v7

    .line 1031
    goto :goto_0
.end method

.method public static readSimpleVector(Lgnu/kawa/lispexpr/LispReader;C)Lgnu/lists/SimpleVector;
    .locals 12
    .parameter "reader"
    .parameter "kind"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x28

    const/16 v10, 0x20

    const/4 v9, 0x0

    .line 1131
    const/4 v6, 0x0

    .line 1135
    .local v6, size:I
    :goto_0
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v1

    .line 1136
    .local v1, ch:I
    if-gez v1, :cond_0

    .line 1137
    const-string v7, "unexpected EOF reading uniform vector"

    invoke-virtual {p0, v7}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;)V

    .line 1138
    :cond_0
    int-to-char v7, v1

    const/16 v8, 0xa

    invoke-static {v7, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 1139
    .local v2, digit:I
    if-gez v2, :cond_4

    .line 1143
    const/16 v7, 0x8

    if-eq v6, v7, :cond_1

    const/16 v7, 0x10

    if-eq v6, v7, :cond_1

    if-eq v6, v10, :cond_1

    const/16 v7, 0x40

    if-ne v6, v7, :cond_3

    :cond_1
    const/16 v7, 0x46

    if-ne p1, v7, :cond_2

    if-lt v6, v10, :cond_3

    :cond_2
    if-eq v1, v11, :cond_5

    .line 1147
    :cond_3
    const-string v7, "invalid uniform vector syntax"

    invoke-virtual {p0, v7}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    move-object v7, v9

    .line 1183
    :goto_1
    return-object v7

    .line 1141
    :cond_4
    mul-int/lit8 v7, v6, 0xa

    add-int v6, v7, v2

    .line 1142
    goto :goto_0

    .line 1150
    :cond_5
    const/4 v7, -0x1

    const/16 v8, 0x29

    invoke-static {p0, v11, v7, v8}, Lgnu/kawa/lispexpr/ReaderParens;->readList(Lgnu/kawa/lispexpr/LispReader;III)Ljava/lang/Object;

    move-result-object v4

    .line 1151
    .local v4, list:Ljava/lang/Object;
    const/4 v7, 0x0

    invoke-static {v4, v7}, Lgnu/lists/LList;->listLength(Ljava/lang/Object;Z)I

    move-result v3

    .line 1152
    .local v3, len:I
    if-gez v3, :cond_6

    .line 1154
    const-string v7, "invalid elements in uniform vector syntax"

    invoke-virtual {p0, v7}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    move-object v7, v9

    .line 1155
    goto :goto_1

    .line 1157
    :cond_6
    move-object v0, v4

    check-cast v0, Lgnu/lists/Sequence;

    move-object v5, v0

    .line 1158
    .local v5, q:Lgnu/lists/Sequence;
    sparse-switch p1, :sswitch_data_0

    :goto_2
    move-object v7, v9

    .line 1183
    goto :goto_1

    .line 1161
    :sswitch_0
    sparse-switch v6, :sswitch_data_1

    .line 1167
    :sswitch_1
    sparse-switch v6, :sswitch_data_2

    .line 1175
    :sswitch_2
    sparse-switch v6, :sswitch_data_3

    goto :goto_2

    .line 1177
    :sswitch_3
    new-instance v7, Lgnu/lists/U8Vector;

    invoke-direct {v7, v5}, Lgnu/lists/U8Vector;-><init>(Lgnu/lists/Sequence;)V

    goto :goto_1

    .line 1163
    :sswitch_4
    new-instance v7, Lgnu/lists/F32Vector;

    invoke-direct {v7, v5}, Lgnu/lists/F32Vector;-><init>(Lgnu/lists/Sequence;)V

    goto :goto_1

    .line 1164
    :sswitch_5
    new-instance v7, Lgnu/lists/F64Vector;

    invoke-direct {v7, v5}, Lgnu/lists/F64Vector;-><init>(Lgnu/lists/Sequence;)V

    goto :goto_1

    .line 1169
    :sswitch_6
    new-instance v7, Lgnu/lists/S8Vector;

    invoke-direct {v7, v5}, Lgnu/lists/S8Vector;-><init>(Lgnu/lists/Sequence;)V

    goto :goto_1

    .line 1170
    :sswitch_7
    new-instance v7, Lgnu/lists/S16Vector;

    invoke-direct {v7, v5}, Lgnu/lists/S16Vector;-><init>(Lgnu/lists/Sequence;)V

    goto :goto_1

    .line 1171
    :sswitch_8
    new-instance v7, Lgnu/lists/S32Vector;

    invoke-direct {v7, v5}, Lgnu/lists/S32Vector;-><init>(Lgnu/lists/Sequence;)V

    goto :goto_1

    .line 1172
    :sswitch_9
    new-instance v7, Lgnu/lists/S64Vector;

    invoke-direct {v7, v5}, Lgnu/lists/S64Vector;-><init>(Lgnu/lists/Sequence;)V

    goto :goto_1

    .line 1178
    :sswitch_a
    new-instance v7, Lgnu/lists/U16Vector;

    invoke-direct {v7, v5}, Lgnu/lists/U16Vector;-><init>(Lgnu/lists/Sequence;)V

    goto :goto_1

    .line 1179
    :sswitch_b
    new-instance v7, Lgnu/lists/U32Vector;

    invoke-direct {v7, v5}, Lgnu/lists/U32Vector;-><init>(Lgnu/lists/Sequence;)V

    goto :goto_1

    .line 1180
    :sswitch_c
    new-instance v7, Lgnu/lists/U64Vector;

    invoke-direct {v7, v5}, Lgnu/lists/U64Vector;-><init>(Lgnu/lists/Sequence;)V

    goto :goto_1

    .line 1158
    :sswitch_data_0
    .sparse-switch
        0x46 -> :sswitch_0
        0x53 -> :sswitch_1
        0x55 -> :sswitch_2
    .end sparse-switch

    .line 1161
    :sswitch_data_1
    .sparse-switch
        0x20 -> :sswitch_4
        0x40 -> :sswitch_5
    .end sparse-switch

    .line 1167
    :sswitch_data_2
    .sparse-switch
        0x8 -> :sswitch_6
        0x10 -> :sswitch_7
        0x20 -> :sswitch_8
        0x40 -> :sswitch_9
    .end sparse-switch

    .line 1175
    :sswitch_data_3
    .sparse-switch
        0x8 -> :sswitch_3
        0x10 -> :sswitch_a
        0x20 -> :sswitch_b
        0x40 -> :sswitch_c
    .end sparse-switch
.end method

.method public static readSpecial(Lgnu/kawa/lispexpr/LispReader;)Ljava/lang/Object;
    .locals 8
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1086
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v0

    .line 1087
    .local v0, ch:I
    if-gez v0, :cond_0

    .line 1088
    const-string v4, "unexpected EOF in #! special form"

    invoke-virtual {p0, v4}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;)V

    .line 1091
    :cond_0
    const/16 v4, 0x2f

    if-ne v0, v4, :cond_1

    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->getLineNumber()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->getColumnNumber()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 1095
    invoke-static {}, Lgnu/kawa/lispexpr/ReaderIgnoreRestOfLine;->getInstance()Lgnu/kawa/lispexpr/ReaderIgnoreRestOfLine;

    move-result-object v4

    const/16 v5, 0x23

    const/4 v6, 0x1

    invoke-virtual {v4, p0, v5, v6}, Lgnu/kawa/lispexpr/ReaderIgnoreRestOfLine;->read(Lgnu/text/Lexer;II)Ljava/lang/Object;

    .line 1096
    sget-object v4, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 1124
    :goto_0
    return-object v4

    .line 1099
    :cond_1
    iget v3, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 1100
    .local v3, startPos:I
    invoke-virtual {p0, v0}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 1101
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v4

    const/16 v5, 0x44

    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lgnu/kawa/lispexpr/LispReader;->readToken(ICLgnu/kawa/lispexpr/ReadTable;)V

    .line 1102
    iget v4, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    sub-int v1, v4, v3

    .line 1103
    .local v1, length:I
    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    invoke-direct {v2, v4, v3, v1}, Ljava/lang/String;-><init>([CII)V

    .line 1104
    .local v2, name:Ljava/lang/String;
    const-string v4, "optional"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1105
    sget-object v4, Lgnu/expr/Special;->optional:Lgnu/expr/Special;

    goto :goto_0

    .line 1106
    :cond_2
    const-string v4, "rest"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1107
    sget-object v4, Lgnu/expr/Special;->rest:Lgnu/expr/Special;

    goto :goto_0

    .line 1108
    :cond_3
    const-string v4, "key"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1109
    sget-object v4, Lgnu/expr/Special;->key:Lgnu/expr/Special;

    goto :goto_0

    .line 1110
    :cond_4
    const-string v4, "eof"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1111
    sget-object v4, Lgnu/expr/Special;->eof:Ljava/lang/Object;

    goto :goto_0

    .line 1112
    :cond_5
    const-string v4, "void"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1114
    sget-object v4, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    goto :goto_0

    .line 1115
    :cond_6
    const-string v4, "default"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1116
    sget-object v4, Lgnu/expr/Special;->dfault:Lgnu/expr/Special;

    goto :goto_0

    .line 1117
    :cond_7
    const-string v4, "undefined"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1118
    sget-object v4, Lgnu/expr/Special;->undefined:Lgnu/expr/Special;

    goto :goto_0

    .line 1119
    :cond_8
    const-string v4, "abstract"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1120
    sget-object v4, Lgnu/expr/Special;->abstractSpecial:Lgnu/expr/Special;

    goto :goto_0

    .line 1121
    :cond_9
    const-string v4, "null"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object v4, v7

    .line 1122
    goto :goto_0

    .line 1123
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown named constant #!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    move-object v4, v7

    .line 1124
    goto/16 :goto_0
.end method

.method private static valueOf([CIIIZJ)Lgnu/math/IntNum;
    .locals 2
    .parameter "buffer"
    .parameter "digits_start"
    .parameter "number_of_digits"
    .parameter "radix"
    .parameter "negative"
    .parameter "lvalue"

    .prologue
    .line 716
    add-int v0, p2, p3

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_1

    .line 717
    if-eqz p4, :cond_0

    neg-long v0, p5

    :goto_0
    invoke-static {v0, v1}, Lgnu/math/IntNum;->make(J)Lgnu/math/IntNum;

    move-result-object v0

    .line 719
    :goto_1
    return-object v0

    :cond_0
    move-wide v0, p5

    .line 717
    goto :goto_0

    .line 719
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lgnu/math/IntNum;->valueOf([CIIIZ)Lgnu/math/IntNum;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method handlePostfix(Ljava/lang/Object;Lgnu/kawa/lispexpr/ReadTable;II)Ljava/lang/Object;
    .locals 6
    .parameter "value"
    .parameter "rtable"
    .parameter "line"
    .parameter "column"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 281
    sget-object v2, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    if-ne p1, v2, :cond_0

    .line 282
    sget-object p1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 285
    .end local p1
    :cond_0
    :goto_0
    iget-object v2, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v0

    .line 286
    .local v0, ch:I
    if-ltz v0, :cond_1

    iget-char v2, p2, Lgnu/kawa/lispexpr/ReadTable;->postfixLookupOperator:C

    if-eq v0, v2, :cond_2

    .line 302
    :cond_1
    :goto_1
    return-object p1

    .line 289
    :cond_2
    iget-object v2, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->read()I

    .line 290
    invoke-virtual {p0, p2}, Lgnu/kawa/lispexpr/LispReader;->validPostfixLookupStart(Lgnu/kawa/lispexpr/ReadTable;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 292
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->unread()V

    goto :goto_1

    .line 295
    :cond_3
    iget-object v2, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v2}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    .line 296
    invoke-virtual {p2, v0}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v2

    invoke-virtual {p0, v0, v2, p2}, Lgnu/kawa/lispexpr/LispReader;->readValues(ILgnu/kawa/lispexpr/ReadTableEntry;Lgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object v1

    .line 297
    .local v1, rightOperand:Ljava/lang/Object;
    const-string v2, "quasiquote"

    invoke-virtual {p2, v2}, Lgnu/kawa/lispexpr/ReadTable;->makeSymbol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v1}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v2

    invoke-static {p1, v2}, Lgnu/lists/LList;->list2(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p1

    .line 299
    .local p1, value:Lgnu/lists/Pair;
    sget-object v2, Lgnu/kawa/lispexpr/LispLanguage;->lookup_sym:Lgnu/mapping/Symbol;

    iget-object v3, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, p3, 0x1

    add-int/lit8 v5, p4, 0x1

    invoke-static {v2, p1, v3, v4, v5}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object p1

    .line 301
    .local p1, value:Lgnu/lists/PairWithPosition;
    goto :goto_0
.end method

.method public handleToken(IILgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;
    .locals 7
    .parameter "startPos"
    .parameter "endPos"
    .parameter "rtable"

    .prologue
    const/4 v3, 0x0

    .line 788
    iget-object v0, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    sub-int v2, p2, p1

    const/4 v5, 0x1

    move v1, p1

    move v4, v3

    invoke-static/range {v0 .. v5}, Lgnu/kawa/lispexpr/LispReader;->parseNumber([CIICII)Ljava/lang/Object;

    move-result-object v6

    .line 790
    .local v6, value:Ljava/lang/Object;
    if-eqz v6, :cond_0

    instance-of v0, v6, Ljava/lang/String;

    if-nez v0, :cond_0

    move-object v0, v6

    .line 800
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lgnu/kawa/lispexpr/LispReader;->returnSymbol(IILgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected makeNil()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 984
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    return-object v0
.end method

.method protected makePair(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 4
    .parameter "car"
    .parameter "line"
    .parameter "column"

    .prologue
    .line 989
    iget-object v1, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v1}, Lgnu/text/LineBufferedReader;->getName()Ljava/lang/String;

    move-result-object v0

    .line 990
    .local v0, pname:Ljava/lang/String;
    if-eqz v0, :cond_0

    if-ltz p2, :cond_0

    .line 991
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v3, p3, 0x1

    invoke-static {p1, v1, v0, v2, v3}, Lgnu/lists/PairWithPosition;->make(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;II)Lgnu/lists/PairWithPosition;

    move-result-object v1

    .line 994
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    invoke-static {p1, v1}, Lgnu/lists/Pair;->make(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    goto :goto_0
.end method

.method public readCommand()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 979
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->readObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readEscape()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 809
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v0

    .line 810
    .local v0, c:I
    if-gez v0, :cond_0

    .line 812
    const-string v1, "unexpected EOF in character literal"

    invoke-virtual {p0, v1}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;)V

    .line 813
    const/4 v1, -0x1

    .line 815
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v0}, Lgnu/kawa/lispexpr/LispReader;->readEscape(I)I

    move-result v1

    goto :goto_0
.end method

.method public final readEscape(I)I
    .locals 10
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x9

    const/4 v8, -0x1

    const/4 v7, -0x2

    const/16 v6, 0x3f

    const/16 v5, 0xa

    .line 821
    int-to-char v4, p1

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    move v4, p1

    .line 964
    :goto_1
    return v4

    .line 823
    :sswitch_0
    const/4 p1, 0x7

    goto :goto_0

    .line 824
    :sswitch_1
    const/16 p1, 0x8

    goto :goto_0

    .line 825
    :sswitch_2
    const/16 p1, 0x9

    goto :goto_0

    .line 826
    :sswitch_3
    const/16 p1, 0xa

    goto :goto_0

    .line 827
    :sswitch_4
    const/16 p1, 0xb

    goto :goto_0

    .line 828
    :sswitch_5
    const/16 p1, 0xc

    goto :goto_0

    .line 829
    :sswitch_6
    const/16 p1, 0xd

    goto :goto_0

    .line 830
    :sswitch_7
    const/16 p1, 0x1b

    goto :goto_0

    .line 831
    :sswitch_8
    const/16 p1, 0x22

    goto :goto_0

    .line 832
    :sswitch_9
    const/16 p1, 0x5c

    goto :goto_0

    .line 836
    :cond_1
    :sswitch_a
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result p1

    .line 837
    if-gez p1, :cond_2

    .line 839
    const-string v4, "unexpected EOF in character literal"

    invoke-virtual {p0, v4}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;)V

    move v4, v8

    .line 840
    goto :goto_1

    .line 842
    :cond_2
    if-ne p1, v5, :cond_4

    .line 857
    :goto_2
    if-ne p1, v5, :cond_0

    .line 862
    :cond_3
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result p1

    .line 863
    if-gez p1, :cond_7

    .line 865
    const-string v4, "unexpected EOF in character literal"

    invoke-virtual {p0, v4}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;)V

    move v4, v8

    .line 866
    goto :goto_1

    .line 844
    :cond_4
    const/16 v4, 0xd

    if-ne p1, v4, :cond_6

    .line 846
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->peek()I

    move-result v4

    if-ne v4, v5, :cond_5

    .line 847
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->skip()V

    .line 848
    :cond_5
    const/16 p1, 0xa

    .line 849
    goto :goto_2

    .line 851
    :cond_6
    const/16 v4, 0x20

    if-eq p1, v4, :cond_1

    if-eq p1, v9, :cond_1

    .line 853
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    goto :goto_2

    .line 868
    :cond_7
    const/16 v4, 0x20

    if-eq p1, v4, :cond_3

    if-eq p1, v9, :cond_3

    goto :goto_0

    .line 873
    :sswitch_b
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->peek()I

    move-result v4

    if-ne v4, v5, :cond_8

    .line 874
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->skip()V

    :cond_8
    move v4, v7

    .line 875
    goto :goto_1

    :sswitch_c
    move v4, v7

    .line 877
    goto :goto_1

    .line 879
    :sswitch_d
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result p1

    .line 880
    const/16 v4, 0x2d

    if-eq p1, v4, :cond_9

    .line 882
    const-string v4, "Invalid escape character syntax"

    invoke-virtual {p0, v4}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    move v4, v6

    .line 883
    goto :goto_1

    .line 885
    :cond_9
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result p1

    .line 886
    const/16 v4, 0x5c

    if-ne p1, v4, :cond_a

    .line 887
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->readEscape()I

    move-result p1

    .line 888
    :cond_a
    or-int/lit16 v4, p1, 0x80

    goto/16 :goto_1

    .line 890
    :sswitch_e
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result p1

    .line 891
    const/16 v4, 0x2d

    if-eq p1, v4, :cond_b

    .line 893
    const-string v4, "Invalid escape character syntax"

    invoke-virtual {p0, v4}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    move v4, v6

    .line 894
    goto/16 :goto_1

    .line 898
    :cond_b
    :sswitch_f
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result p1

    .line 899
    const/16 v4, 0x5c

    if-ne p1, v4, :cond_c

    .line 900
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->readEscape()I

    move-result p1

    .line 901
    :cond_c
    if-ne p1, v6, :cond_d

    .line 902
    const/16 v4, 0x7f

    goto/16 :goto_1

    .line 903
    :cond_d
    and-int/lit16 v4, p1, 0x9f

    goto/16 :goto_1

    .line 913
    :sswitch_10
    const/16 v4, 0x30

    sub-int/2addr p1, v4

    .line 914
    const/4 v0, 0x0

    .local v0, count:I
    :goto_3
    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x3

    if-ge v0, v4, :cond_0

    .line 916
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v1

    .line 917
    .local v1, d:I
    int-to-char v4, v1

    const/16 v5, 0x8

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    .line 918
    .local v3, v:I
    if-ltz v3, :cond_e

    .line 919
    shl-int/lit8 v4, p1, 0x3

    add-int p1, v4, v3

    goto :goto_3

    .line 922
    :cond_e
    if-ltz v1, :cond_0

    .line 923
    invoke-virtual {p0, v1}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    goto/16 :goto_0

    .line 929
    .end local v0           #count:I
    .end local v1           #d:I
    .end local v3           #v:I
    :sswitch_11
    const/4 p1, 0x0

    .line 930
    const/4 v2, 0x4

    .local v2, i:I
    :goto_4
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    .line 932
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v1

    .line 933
    .restart local v1       #d:I
    if-gez v1, :cond_f

    .line 934
    const-string v4, "premature EOF in \\u escape"

    invoke-virtual {p0, v4}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;)V

    .line 935
    :cond_f
    int-to-char v4, v1

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    .line 936
    .restart local v3       #v:I
    if-gez v3, :cond_10

    .line 937
    const-string v4, "non-hex character following \\u"

    invoke-virtual {p0, v4}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    .line 938
    :cond_10
    mul-int/lit8 v4, p1, 0x10

    add-int p1, v4, v3

    .line 939
    goto :goto_4

    .line 942
    .end local v1           #d:I
    .end local v2           #i:I
    .end local v3           #v:I
    :sswitch_12
    const/4 p1, 0x0

    .line 946
    :goto_5
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v1

    .line 947
    .restart local v1       #d:I
    int-to-char v4, v1

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    .line 948
    .restart local v3       #v:I
    if-ltz v3, :cond_11

    .line 949
    shl-int/lit8 v4, p1, 0x4

    add-int p1, v4, v3

    goto :goto_5

    .line 952
    :cond_11
    const/16 v4, 0x3b

    if-eq v1, v4, :cond_0

    .line 955
    if-ltz v1, :cond_0

    .line 956
    invoke-virtual {p0, v1}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    goto/16 :goto_0

    .line 821
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_c
        0xd -> :sswitch_b
        0x20 -> :sswitch_a
        0x22 -> :sswitch_8
        0x30 -> :sswitch_10
        0x31 -> :sswitch_10
        0x32 -> :sswitch_10
        0x33 -> :sswitch_10
        0x34 -> :sswitch_10
        0x35 -> :sswitch_10
        0x36 -> :sswitch_10
        0x37 -> :sswitch_10
        0x43 -> :sswitch_e
        0x4d -> :sswitch_d
        0x5c -> :sswitch_9
        0x5e -> :sswitch_f
        0x61 -> :sswitch_0
        0x62 -> :sswitch_1
        0x65 -> :sswitch_7
        0x66 -> :sswitch_5
        0x6e -> :sswitch_3
        0x72 -> :sswitch_6
        0x74 -> :sswitch_2
        0x75 -> :sswitch_11
        0x76 -> :sswitch_4
        0x78 -> :sswitch_12
    .end sparse-switch
.end method

.method public final readNestedComment(CC)V
    .locals 7
    .parameter "c1"
    .parameter "c2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 33
    const/4 v1, 0x1

    .line 34
    .local v1, commentNesting:I
    iget-object v4, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v4}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v3

    .line 35
    .local v3, startLine:I
    iget-object v4, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v4}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v2

    .line 38
    .local v2, startColumn:I
    :cond_0
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v0

    .line 39
    .local v0, c:I
    const/16 v4, 0x7c

    if-ne v0, v4, :cond_2

    .line 41
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v0

    .line 42
    if-ne v0, p1, :cond_1

    .line 43
    add-int/lit8 v1, v1, -0x1

    .line 51
    :cond_1
    :goto_0
    if-gez v0, :cond_3

    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected end-of-file in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " comment starting here"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    const/4 v6, 0x1

    sub-int v6, v2, v6

    invoke-virtual {p0, v4, v5, v6}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;II)V

    .line 59
    :goto_1
    return-void

    .line 45
    :cond_2
    if-ne v0, p1, :cond_1

    .line 47
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result v0

    .line 48
    if-ne v0, p2, :cond_1

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    :cond_3
    if-gtz v1, :cond_0

    goto :goto_1
.end method

.method public readObject()Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 235
    iget-object v7, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    check-cast v7, Lgnu/mapping/InPort;

    iget-char v4, v7, Lgnu/mapping/InPort;->readState:C

    .line 236
    .local v4, saveReadState:C
    iget v5, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 237
    .local v5, startPos:I
    iget-object v7, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    check-cast v7, Lgnu/mapping/InPort;

    const/16 v8, 0x20

    iput-char v8, v7, Lgnu/mapping/InPort;->readState:C

    .line 240
    :try_start_0
    invoke-static {}, Lgnu/kawa/lispexpr/ReadTable;->getCurrent()Lgnu/kawa/lispexpr/ReadTable;

    move-result-object v3

    .line 243
    .local v3, rtable:Lgnu/kawa/lispexpr/ReadTable;
    :cond_0
    iget-object v7, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v7}, Lgnu/text/LineBufferedReader;->getLineNumber()I

    move-result v2

    .line 244
    .local v2, line:I
    iget-object v7, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v7}, Lgnu/text/LineBufferedReader;->getColumnNumber()I

    move-result v1

    .line 245
    .local v1, column:I
    iget-object v7, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v7}, Lgnu/text/LineBufferedReader;->read()I

    move-result v0

    .line 246
    .local v0, ch:I
    if-gez v0, :cond_1

    .line 247
    sget-object v7, Lgnu/lists/Sequence;->eofValue:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    iput v5, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 257
    iget-object p0, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    .end local p0
    check-cast p0, Lgnu/mapping/InPort;

    iput-char v4, p0, Lgnu/mapping/InPort;->readState:C

    :goto_0
    return-object v7

    .line 248
    .restart local p0
    :cond_1
    :try_start_1
    invoke-virtual {p0, v0, v3}, Lgnu/kawa/lispexpr/LispReader;->readValues(ILgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object v6

    .line 249
    .local v6, value:Ljava/lang/Object;
    sget-object v7, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    if-eq v6, v7, :cond_0

    .line 251
    invoke-virtual {p0, v6, v3, v2, v1}, Lgnu/kawa/lispexpr/LispReader;->handlePostfix(Ljava/lang/Object;Lgnu/kawa/lispexpr/ReadTable;II)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 256
    iput v5, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 257
    iget-object p0, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    .end local p0
    check-cast p0, Lgnu/mapping/InPort;

    iput-char v4, p0, Lgnu/mapping/InPort;->readState:C

    goto :goto_0

    .line 256
    .end local v0           #ch:I
    .end local v1           #column:I
    .end local v2           #line:I
    .end local v3           #rtable:Lgnu/kawa/lispexpr/ReadTable;
    .end local v6           #value:Ljava/lang/Object;
    .restart local p0
    :catchall_0
    move-exception v7

    iput v5, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 257
    iget-object p0, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    .end local p0
    check-cast p0, Lgnu/mapping/InPort;

    iput-char v4, p0, Lgnu/mapping/InPort;->readState:C

    throw v7
.end method

.method public final readObject(I)Ljava/lang/Object;
    .locals 1
    .parameter "c"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 970
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    .line 971
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->readObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method readToken(ICLgnu/kawa/lispexpr/ReadTable;)V
    .locals 7
    .parameter "ch"
    .parameter "readCase"
    .parameter "rtable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x49

    const v5, 0xffff

    const/4 v4, 0x1

    .line 151
    const/4 v1, 0x0

    .line 154
    .local v1, inEscapes:Z
    :goto_0
    if-gez p1, :cond_0

    .line 156
    if-eqz v1, :cond_2

    .line 157
    const-string v3, "unexpected EOF between escapes"

    invoke-virtual {p0, v3}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;)V

    .line 161
    :cond_0
    invoke-virtual {p3, p1}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v0

    .line 162
    .local v0, entry:Lgnu/kawa/lispexpr/ReadTableEntry;
    if-nez v0, :cond_3

    .line 164
    if-eqz v1, :cond_1

    .line 166
    invoke-virtual {p0, v5}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 167
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 152
    :goto_1
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result p1

    goto :goto_0

    .line 170
    :cond_1
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    .line 230
    .end local v0           #entry:Lgnu/kawa/lispexpr/ReadTableEntry;
    :cond_2
    :goto_2
    return-void

    .line 173
    .restart local v0       #entry:Lgnu/kawa/lispexpr/ReadTableEntry;
    :cond_3
    invoke-virtual {v0}, Lgnu/kawa/lispexpr/ReadTableEntry;->getKind()I

    move-result v2

    .line 174
    .local v2, kind:I
    iget-char v3, p3, Lgnu/kawa/lispexpr/ReadTable;->postfixLookupOperator:C

    if-ne p1, v3, :cond_4

    if-nez v1, :cond_4

    invoke-virtual {p0, p3}, Lgnu/kawa/lispexpr/LispReader;->validPostfixLookupStart(Lgnu/kawa/lispexpr/ReadTable;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 176
    const/4 v2, 0x5

    .line 178
    :cond_4
    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 180
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result p1

    .line 181
    if-gez p1, :cond_5

    .line 182
    const-string v3, "unexpected EOF after single escape"

    invoke-virtual {p0, v3}, Lgnu/kawa/lispexpr/LispReader;->eofError(Ljava/lang/String;)V

    .line 183
    :cond_5
    invoke-virtual {p0, v5}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 184
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 185
    iput-boolean v4, p0, Lgnu/kawa/lispexpr/LispReader;->seenEscapes:Z

    goto :goto_1

    .line 188
    :cond_6
    const/4 v3, 0x4

    if-ne v2, v3, :cond_8

    .line 190
    if-nez v1, :cond_7

    move v1, v4

    .line 191
    :goto_3
    goto :goto_1

    .line 190
    :cond_7
    const/4 v3, 0x0

    move v1, v3

    goto :goto_3

    .line 193
    :cond_8
    if-eqz v1, :cond_9

    .line 196
    invoke-virtual {p0, v5}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 197
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    goto :goto_1

    .line 202
    :cond_9
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 225
    :pswitch_1
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    goto :goto_2

    .line 207
    :pswitch_2
    const/16 v3, 0x55

    if-eq p2, v3, :cond_a

    if-ne p2, v6, :cond_c

    int-to-char v3, p1

    invoke-static {v3}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 209
    :cond_a
    int-to-char v3, p1

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    .line 214
    :cond_b
    :goto_4
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    goto :goto_1

    .line 210
    :cond_c
    const/16 v3, 0x44

    if-eq p2, v3, :cond_d

    if-ne p2, v6, :cond_b

    int-to-char v3, p1

    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 213
    :cond_d
    int-to-char v3, p1

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    goto :goto_4

    .line 217
    :pswitch_3
    const/4 v1, 0x1

    .line 218
    iput-boolean v4, p0, Lgnu/kawa/lispexpr/LispReader;->seenEscapes:Z

    goto :goto_1

    .line 221
    :pswitch_4
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->unread(I)V

    goto :goto_2

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public readValues(ILgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;
    .locals 1
    .parameter "ch"
    .parameter "rtable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p2, p1}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lgnu/kawa/lispexpr/LispReader;->readValues(ILgnu/kawa/lispexpr/ReadTableEntry;Lgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public readValues(ILgnu/kawa/lispexpr/ReadTableEntry;Lgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;
    .locals 7
    .parameter "ch"
    .parameter "entry"
    .parameter "rtable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lgnu/text/SyntaxException;
        }
    .end annotation

    .prologue
    .line 100
    iget v3, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 102
    .local v3, startPos:I
    if-nez p2, :cond_1

    .line 105
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid character #\\"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-char v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, err:Ljava/lang/String;
    iget-boolean v5, p0, Lgnu/kawa/lispexpr/LispReader;->interactive:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0, v1}, Lgnu/kawa/lispexpr/LispReader;->fatal(Ljava/lang/String;)V

    .line 108
    :goto_0
    sget-object v5, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    .line 138
    .end local v1           #err:Ljava/lang/String;
    :goto_1
    return-object v5

    .line 107
    .restart local v1       #err:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v1}, Lgnu/kawa/lispexpr/LispReader;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    .end local v1           #err:Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Lgnu/kawa/lispexpr/ReadTableEntry;->getKind()I

    move-result v2

    .line 111
    .local v2, kind:I
    const/4 v5, 0x0

    iput-boolean v5, p0, Lgnu/kawa/lispexpr/LispReader;->seenEscapes:Z

    .line 112
    packed-switch v2, :pswitch_data_0

    .line 133
    :cond_2
    :goto_2
    :pswitch_0
    invoke-static {}, Lgnu/kawa/lispexpr/LispReader;->getReadCase()C

    move-result v5

    invoke-virtual {p0, p1, v5, p3}, Lgnu/kawa/lispexpr/LispReader;->readToken(ICLgnu/kawa/lispexpr/ReadTable;)V

    .line 134
    iget v0, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBufferLength:I

    .line 135
    .local v0, endPos:I
    iget-boolean v5, p0, Lgnu/kawa/lispexpr/LispReader;->seenEscapes:Z

    if-eqz v5, :cond_3

    .line 136
    invoke-virtual {p0, v3, v0, p3}, Lgnu/kawa/lispexpr/LispReader;->returnSymbol(IILgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    .line 116
    .end local v0           #endPos:I
    :pswitch_1
    sget-object v5, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_1

    .line 119
    :pswitch_2
    const/4 v5, -0x1

    invoke-virtual {p2, p0, p1, v5}, Lgnu/kawa/lispexpr/ReadTableEntry;->read(Lgnu/text/Lexer;II)Ljava/lang/Object;

    move-result-object v4

    .local v4, value:Ljava/lang/Object;
    move-object v5, v4

    .line 120
    goto :goto_1

    .line 122
    .end local v4           #value:Ljava/lang/Object;
    :pswitch_3
    iget-char v5, p3, Lgnu/kawa/lispexpr/ReadTable;->postfixLookupOperator:C

    if-ne p1, v5, :cond_2

    .line 124
    invoke-virtual {p0, p1}, Lgnu/kawa/lispexpr/LispReader;->tokenBufferAppend(I)V

    .line 125
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/LispReader;->read()I

    move-result p1

    goto :goto_2

    .line 138
    .restart local v0       #endPos:I
    :cond_3
    invoke-virtual {p0, v3, v0, p3}, Lgnu/kawa/lispexpr/LispReader;->handleToken(IILgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected returnSymbol(IILgnu/kawa/lispexpr/ReadTable;)Ljava/lang/Object;
    .locals 12
    .parameter "startPos"
    .parameter "endPos"
    .parameter "rtable"

    .prologue
    .line 725
    invoke-static {}, Lgnu/kawa/lispexpr/LispReader;->getReadCase()C

    move-result v7

    .line 726
    .local v7, readCase:C
    const/16 v10, 0x49

    if-ne v7, v10, :cond_4

    .line 728
    const/4 v9, 0x0

    .line 729
    .local v9, upperCount:I
    const/4 v5, 0x0

    .line 730
    .local v5, lowerCount:I
    move v1, p1

    .local v1, i:I
    :goto_0
    if-ge v1, p2, :cond_3

    .line 732
    iget-object v10, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    aget-char v0, v10, v1

    .line 733
    .local v0, ch:C
    const v10, 0xffff

    if-ne v0, v10, :cond_1

    .line 734
    add-int/lit8 v1, v1, 0x1

    .line 730
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 735
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 736
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 737
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 738
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 740
    .end local v0           #ch:C
    :cond_3
    if-nez v5, :cond_5

    .line 741
    const/16 v7, 0x44

    .line 748
    .end local v1           #i:I
    .end local v5           #lowerCount:I
    .end local v9           #upperCount:I
    :cond_4
    :goto_2
    const/4 v6, -0x1

    .line 749
    .local v6, packageMarker:I
    move v2, p1

    .line 750
    .local v2, j:I
    move v1, p1

    .restart local v1       #i:I
    move v3, v2

    .end local v2           #j:I
    .local v3, j:I
    :goto_3
    if-ge v1, p2, :cond_c

    .line 752
    iget-object v10, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    aget-char v0, v10, v1

    .line 753
    .restart local v0       #ch:C
    const v10, 0xffff

    if-ne v0, v10, :cond_7

    .line 755
    add-int/lit8 v1, v1, 0x1

    if-ge v1, p2, :cond_f

    .line 756
    iget-object v10, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    add-int/lit8 v2, v3, 0x1

    .end local v3           #j:I
    .restart local v2       #j:I
    iget-object v11, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    aget-char v11, v11, v1

    aput-char v11, v10, v3

    .line 750
    :goto_4
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2           #j:I
    .restart local v3       #j:I
    goto :goto_3

    .line 742
    .end local v0           #ch:C
    .end local v3           #j:I
    .end local v6           #packageMarker:I
    .restart local v5       #lowerCount:I
    .restart local v9       #upperCount:I
    :cond_5
    if-nez v9, :cond_6

    .line 743
    const/16 v7, 0x55

    goto :goto_2

    .line 745
    :cond_6
    const/16 v7, 0x50

    goto :goto_2

    .line 759
    .end local v5           #lowerCount:I
    .end local v9           #upperCount:I
    .restart local v0       #ch:C
    .restart local v3       #j:I
    .restart local v6       #packageMarker:I
    :cond_7
    const/16 v10, 0x3a

    if-ne v0, v10, :cond_a

    .line 760
    if-ltz v6, :cond_9

    const/4 v10, -0x1

    move v6, v10

    .line 765
    :cond_8
    :goto_5
    iget-object v10, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    add-int/lit8 v2, v3, 0x1

    .end local v3           #j:I
    .restart local v2       #j:I
    aput-char v0, v10, v3

    goto :goto_4

    .end local v2           #j:I
    .restart local v3       #j:I
    :cond_9
    move v6, v3

    .line 760
    goto :goto_5

    .line 761
    :cond_a
    const/16 v10, 0x55

    if-ne v7, v10, :cond_b

    .line 762
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    goto :goto_5

    .line 763
    :cond_b
    const/16 v10, 0x44

    if-ne v7, v10, :cond_8

    .line 764
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    goto :goto_5

    .line 767
    .end local v0           #ch:C
    :cond_c
    move p2, v3

    .line 769
    sub-int v4, p2, p1

    .line 771
    .local v4, len:I
    iget-boolean v10, p3, Lgnu/kawa/lispexpr/ReadTable;->initialColonIsKeyword:Z

    if-eqz v10, :cond_d

    if-ne v6, p1, :cond_d

    const/4 v10, 0x1

    if-le v4, v10, :cond_d

    .line 773
    add-int/lit8 p1, p1, 0x1

    .line 774
    new-instance v8, Ljava/lang/String;

    iget-object v10, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    sub-int v11, p2, p1

    invoke-direct {v8, v10, p1, v11}, Ljava/lang/String;-><init>([CII)V

    .line 775
    .local v8, str:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v10

    .line 782
    .end local v8           #str:Ljava/lang/String;
    :goto_6
    return-object v10

    .line 777
    :cond_d
    iget-boolean v10, p3, Lgnu/kawa/lispexpr/ReadTable;->finalColonIsKeyword:Z

    if-eqz v10, :cond_e

    const/4 v10, 0x1

    sub-int v10, p2, v10

    if-ne v6, v10, :cond_e

    const/4 v10, 0x1

    if-le v4, v10, :cond_e

    .line 779
    new-instance v8, Ljava/lang/String;

    iget-object v10, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    const/4 v11, 0x1

    sub-int v11, v4, v11

    invoke-direct {v8, v10, p1, v11}, Ljava/lang/String;-><init>([CII)V

    .line 780
    .restart local v8       #str:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lgnu/expr/Keyword;->make(Ljava/lang/String;)Lgnu/expr/Keyword;

    move-result-object v10

    goto :goto_6

    .line 782
    .end local v8           #str:Ljava/lang/String;
    :cond_e
    new-instance v10, Ljava/lang/String;

    iget-object v11, p0, Lgnu/kawa/lispexpr/LispReader;->tokenBuffer:[C

    invoke-direct {v10, v11, p1, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p3, v10}, Lgnu/kawa/lispexpr/ReadTable;->makeSymbol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    goto :goto_6

    .end local v4           #len:I
    .restart local v0       #ch:C
    :cond_f
    move v2, v3

    .end local v3           #j:I
    .restart local v2       #j:I
    goto :goto_4
.end method

.method protected setCdr(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "pair"
    .parameter "cdr"

    .prologue
    .line 999
    check-cast p1, Lgnu/lists/PairWithPosition;

    .end local p1
    invoke-virtual {p1, p2}, Lgnu/lists/PairWithPosition;->setCdrBackdoor(Ljava/lang/Object;)V

    .line 1000
    return-void
.end method

.method protected validPostfixLookupStart(Lgnu/kawa/lispexpr/ReadTable;)Z
    .locals 6
    .parameter "rtable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 264
    iget-object v3, p0, Lgnu/kawa/lispexpr/LispReader;->port:Lgnu/text/LineBufferedReader;

    invoke-virtual {v3}, Lgnu/text/LineBufferedReader;->peek()I

    move-result v0

    .line 266
    .local v0, ch:I
    if-ltz v0, :cond_0

    const/16 v3, 0x3a

    if-eq v0, v3, :cond_0

    invoke-virtual {p1, v0}, Lgnu/kawa/lispexpr/ReadTable;->lookup(I)Lgnu/kawa/lispexpr/ReadTableEntry;

    move-result-object v1

    .local v1, entry:Lgnu/kawa/lispexpr/ReadTableEntry;
    if-eqz v1, :cond_0

    iget-char v3, p1, Lgnu/kawa/lispexpr/ReadTable;->postfixLookupOperator:C

    if-ne v0, v3, :cond_1

    .end local v1           #entry:Lgnu/kawa/lispexpr/ReadTableEntry;
    :cond_0
    move v3, v4

    .line 272
    :goto_0
    return v3

    .line 269
    .restart local v1       #entry:Lgnu/kawa/lispexpr/ReadTableEntry;
    :cond_1
    const/16 v3, 0x2c

    if-ne v0, v3, :cond_2

    move v3, v5

    .line 270
    goto :goto_0

    .line 271
    :cond_2
    invoke-virtual {v1}, Lgnu/kawa/lispexpr/ReadTableEntry;->getKind()I

    move-result v2

    .line 272
    .local v2, kind:I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x6

    if-eq v2, v3, :cond_3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    :cond_3
    move v3, v5

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_0
.end method
