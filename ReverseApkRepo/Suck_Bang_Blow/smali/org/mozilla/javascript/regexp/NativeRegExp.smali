.class public Lorg/mozilla/javascript/regexp/NativeRegExp;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "NativeRegExp.java"

# interfaces
.implements Lorg/mozilla/javascript/Function;


# static fields
.field private static final INDEX_LEN:I = 0x2

.field private static final Id_compile:I = 0x1

.field private static final Id_exec:I = 0x4

.field private static final Id_global:I = 0x3

.field private static final Id_ignoreCase:I = 0x4

.field private static final Id_lastIndex:I = 0x1

.field private static final Id_multiline:I = 0x5

.field private static final Id_prefix:I = 0x6

.field private static final Id_source:I = 0x2

.field private static final Id_test:I = 0x5

.field private static final Id_toSource:I = 0x3

.field private static final Id_toString:I = 0x2

.field public static final JSREG_FOLD:I = 0x2

.field public static final JSREG_GLOB:I = 0x1

.field public static final JSREG_MULTILINE:I = 0x4

.field public static final MATCH:I = 0x1

.field private static final MAX_INSTANCE_ID:I = 0x5

.field private static final MAX_PROTOTYPE_ID:I = 0x6

.field private static final OFFSET_LEN:I = 0x2

.field public static final PREFIX:I = 0x2

.field private static final REGEXP_TAG:Ljava/lang/Object; = null

.field private static final REOP_ALNUM:B = 0x10t

.field private static final REOP_ALT:B = 0x1t

.field private static final REOP_ASSERT:B = 0x29t

.field private static final REOP_ASSERTNOTTEST:B = 0x2ct

.field private static final REOP_ASSERTTEST:B = 0x2bt

.field private static final REOP_ASSERT_NOT:B = 0x2at

.field private static final REOP_BACKREF:B = 0x14t

.field private static final REOP_BOL:B = 0x2t

.field private static final REOP_CLASS:B = 0x32t

.field private static final REOP_DIGIT:B = 0xet

.field private static final REOP_DOT:B = 0xct

.field private static final REOP_EMPTY:B = 0x0t

.field private static final REOP_END:B = 0x35t

.field private static final REOP_ENDCHILD:B = 0x31t

.field private static final REOP_EOL:B = 0x3t

.field private static final REOP_FLAT:B = 0x15t

.field private static final REOP_FLAT1:B = 0x16t

.field private static final REOP_FLAT1i:B = 0x21t

.field private static final REOP_FLATi:B = 0x20t

.field private static final REOP_JUMP:B = 0x17t

.field private static final REOP_LPAREN:B = 0xat

.field private static final REOP_MINIMALOPT:B = 0x2ft

.field private static final REOP_MINIMALPLUS:B = 0x2et

.field private static final REOP_MINIMALQUANT:B = 0x30t

.field private static final REOP_MINIMALREPEAT:B = 0x34t

.field private static final REOP_MINIMALSTAR:B = 0x2dt

.field private static final REOP_NONALNUM:B = 0x11t

.field private static final REOP_NONDIGIT:B = 0xft

.field private static final REOP_NONSPACE:B = 0x13t

.field private static final REOP_OPT:B = 0x9t

.field private static final REOP_PLUS:B = 0x8t

.field private static final REOP_QUANT:B = 0x6t

.field private static final REOP_REPEAT:B = 0x33t

.field private static final REOP_RPAREN:B = 0xbt

.field private static final REOP_SPACE:B = 0x12t

.field private static final REOP_STAR:B = 0x7t

.field private static final REOP_UCFLAT1:B = 0x1ct

.field private static final REOP_UCFLAT1i:B = 0x23t

.field private static final REOP_WBDRY:B = 0x4t

.field private static final REOP_WNONBDRY:B = 0x5t

.field public static final TEST:I = 0x0

.field private static final debug:Z = false

.field static final serialVersionUID:J = 0x44e828d6a0fb3a60L


# instance fields
.field lastIndex:D

.field private re:Lorg/mozilla/javascript/regexp/RECompiled;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/mozilla/javascript/regexp/NativeRegExp;->REGEXP_TAG:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 249
    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    return-void
.end method

.method constructor <init>(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 2
    .parameter "scope"
    .parameter "regexpCompiled"

    .prologue
    .line 173
    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    .line 174
    check-cast p2, Lorg/mozilla/javascript/regexp/RECompiled;

    .end local p2
    iput-object p2, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    .line 175
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:D

    .line 176
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setObjectProtoAndParent(Lorg/mozilla/javascript/ScriptableObject;Lorg/mozilla/javascript/Scriptable;)V

    .line 177
    return-void
.end method

.method private static addCharacterRangeToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;CC)V
    .locals 8
    .parameter "cs"
    .parameter "c1"
    .parameter "c2"

    .prologue
    const/4 v7, 0x7

    const/16 v6, 0xff

    .line 1433
    div-int/lit8 v0, p1, 0x8

    .line 1434
    .local v0, byteIndex1:I
    div-int/lit8 v1, p2, 0x8

    .line 1436
    .local v1, byteIndex2:I
    iget v3, p0, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    if-gt p2, v3, :cond_0

    if-le p1, p2, :cond_1

    .line 1437
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    throw v3

    .line 1439
    :cond_1
    and-int/lit8 v3, p1, 0x7

    int-to-char p1, v3

    .line 1440
    and-int/lit8 v3, p2, 0x7

    int-to-char p2, v3

    .line 1442
    if-ne v0, v1, :cond_2

    .line 1443
    iget-object v3, p0, Lorg/mozilla/javascript/regexp/RECharSet;->bits:[B

    aget-byte v4, v3, v0

    sub-int v5, p2, p1

    sub-int v5, v7, v5

    shr-int v5, v6, v5

    shl-int/2addr v5, p1

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 1451
    :goto_0
    return-void

    .line 1446
    :cond_2
    iget-object v3, p0, Lorg/mozilla/javascript/regexp/RECharSet;->bits:[B

    aget-byte v4, v3, v0

    shl-int v5, v6, p1

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    .line 1447
    add-int/lit8 v2, v0, 0x1

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 1448
    iget-object v3, p0, Lorg/mozilla/javascript/regexp/RECharSet;->bits:[B

    const/4 v4, -0x1

    aput-byte v4, v3, v2

    .line 1447
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1449
    :cond_3
    iget-object v3, p0, Lorg/mozilla/javascript/regexp/RECharSet;->bits:[B

    aget-byte v4, v3, v1

    sub-int v5, v7, p2

    shr-int v5, v6, v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    goto :goto_0
.end method

.method private static addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V
    .locals 5
    .parameter "cs"
    .parameter "c"

    .prologue
    .line 1420
    div-int/lit8 v0, p1, 0x8

    .line 1421
    .local v0, byteIndex:I
    iget v1, p0, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    if-le p1, v1, :cond_0

    .line 1422
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1

    .line 1423
    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/regexp/RECharSet;->bits:[B

    aget-byte v2, v1, v0

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x7

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 1424
    return-void
.end method

.method private static addIndex([BII)I
    .locals 2
    .parameter "array"
    .parameter "pc"
    .parameter "index"

    .prologue
    .line 1159
    if-gez p2, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1160
    :cond_0
    const v0, 0xffff

    if-le p2, v0, :cond_1

    .line 1161
    const-string v0, "Too complex regexp"

    invoke-static {v0}, Lorg/mozilla/javascript/Context;->reportRuntimeError(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v0

    throw v0

    .line 1162
    :cond_1
    shr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    .line 1163
    add-int/lit8 v0, p1, 0x1

    int-to-byte v1, p2

    aput-byte v1, p0, v0

    .line 1164
    add-int/lit8 v0, p1, 0x2

    return v0
.end method

.method private static backrefMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;I[CI)Z
    .locals 7
    .parameter "gData"
    .parameter "parenIndex"
    .parameter "chars"
    .parameter "end"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1391
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/regexp/REGlobalData;->parens_index(I)I

    move-result v2

    .line 1392
    .local v2, parenContent:I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    move v3, v6

    .line 1412
    :goto_0
    return v3

    .line 1395
    :cond_0
    invoke-virtual {p0, p1}, Lorg/mozilla/javascript/regexp/REGlobalData;->parens_length(I)I

    move-result v1

    .line 1396
    .local v1, len:I
    iget v3, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr v3, v1

    if-le v3, p3, :cond_1

    move v3, v5

    .line 1397
    goto :goto_0

    .line 1399
    :cond_1
    iget-object v3, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v3, v3, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    .line 1400
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_5

    .line 1401
    add-int v3, v2, v0

    aget-char v3, p2, v3

    invoke-static {v3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v3

    iget v4, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr v4, v0

    aget-char v4, p2, v4

    invoke-static {v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v4

    if-eq v3, v4, :cond_2

    move v3, v5

    .line 1402
    goto :goto_0

    .line 1400
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1406
    .end local v0           #i:I
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    if-ge v0, v1, :cond_5

    .line 1407
    add-int v3, v2, v0

    aget-char v3, p2, v3

    iget v4, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr v4, v0

    aget-char v4, p2, v4

    if-eq v3, v4, :cond_4

    move v3, v5

    .line 1408
    goto :goto_0

    .line 1406
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1411
    :cond_5
    iget v3, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr v3, v1

    iput v3, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v3, v6

    .line 1412
    goto :goto_0
.end method

.method private static calculateBitmapSize(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RENode;[CII)Z
    .locals 9
    .parameter "state"
    .parameter "target"
    .parameter "src"
    .parameter "index"
    .parameter "end"

    .prologue
    .line 513
    const/4 v2, 0x0

    .line 518
    .local v2, rangeStart:C
    const/4 v1, 0x0

    .line 519
    .local v1, max:I
    const/4 v0, 0x0

    .line 521
    .local v0, inRange:Z
    const/4 v3, 0x0

    iput v3, p1, Lorg/mozilla/javascript/regexp/RENode;->bmsize:I

    .line 523
    if-ne p3, p4, :cond_0

    .line 524
    const/4 p0, 0x1

    move p1, v1

    .end local v1           #max:I
    .local p1, max:I
    move p2, v2

    .end local v2           #rangeStart:C
    .local p2, rangeStart:C
    move p4, p0

    move p0, v0

    .line 664
    .end local v0           #inRange:Z
    .end local p4
    .local p0, inRange:Z
    :goto_0
    return p4

    .line 526
    .restart local v0       #inRange:Z
    .restart local v1       #max:I
    .restart local v2       #rangeStart:C
    .local p0, state:Lorg/mozilla/javascript/regexp/CompilerState;
    .local p1, target:Lorg/mozilla/javascript/regexp/RENode;
    .local p2, src:[C
    .restart local p4
    :cond_0
    aget-char v3, p2, p3

    const/16 v4, 0x5e

    if-ne v3, v4, :cond_10

    .line 527
    add-int/lit8 p3, p3, 0x1

    move v4, v1

    .end local v1           #max:I
    .local v4, max:I
    move v6, v2

    .end local v2           #rangeStart:C
    .local v6, rangeStart:C
    move v2, v0

    .end local v0           #inRange:Z
    .local v2, inRange:Z
    move v0, p3

    .line 529
    .end local p3
    .local v0, index:I
    :goto_1
    if-eq v0, p4, :cond_a

    .line 530
    const/4 p3, 0x0

    .line 531
    .local p3, localMax:I
    const/4 v5, 0x2

    .line 532
    .local v5, nDigits:I
    aget-char p3, p2, v0

    .end local p3           #localMax:I
    packed-switch p3, :pswitch_data_0

    .line 635
    add-int/lit8 p3, v0, 0x1

    .end local v0           #index:I
    .local p3, index:I
    aget-char v0, p2, v0

    .local v0, localMax:I
    move v3, v0

    .end local v0           #localMax:I
    .local v3, localMax:I
    move v0, v5

    .line 638
    .end local v5           #nDigits:I
    .local v0, nDigits:I
    :goto_2
    if-eqz v2, :cond_9

    .line 639
    if-le v6, v3, :cond_6

    .line 640
    const-string p0, "msg.bad.range"

    .end local p0           #state:Lorg/mozilla/javascript/regexp/CompilerState;
    const-string p1, ""

    .end local p1           #target:Lorg/mozilla/javascript/regexp/RENode;
    invoke-static {p0, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const/4 p0, 0x0

    move p1, v4

    .end local v4           #max:I
    .local p1, max:I
    move p2, v6

    .end local v6           #rangeStart:C
    .local p2, rangeStart:C
    move p4, p0

    move p0, v2

    .end local v2           #inRange:Z
    .local p0, inRange:Z
    goto :goto_0

    .line 534
    .end local v3           #localMax:I
    .end local p3           #index:I
    .local v0, index:I
    .restart local v2       #inRange:Z
    .restart local v4       #max:I
    .restart local v5       #nDigits:I
    .restart local v6       #rangeStart:C
    .local p0, state:Lorg/mozilla/javascript/regexp/CompilerState;
    .local p1, target:Lorg/mozilla/javascript/regexp/RENode;
    .local p2, src:[C
    :pswitch_0
    add-int/lit8 p3, v0, 0x1

    .line 535
    .end local v0           #index:I
    .restart local p3       #index:I
    add-int/lit8 v1, p3, 0x1

    .end local p3           #index:I
    .local v1, index:I
    aget-char p3, p2, p3

    .line 536
    .local p3, c:C
    sparse-switch p3, :sswitch_data_0

    .line 630
    move p3, p3

    .local p3, localMax:I
    move v3, p3

    .end local p3           #localMax:I
    .restart local v3       #localMax:I
    move v0, v5

    .end local v5           #nDigits:I
    .local v0, nDigits:I
    move p3, v1

    .line 631
    .end local v1           #index:I
    .local p3, index:I
    goto :goto_2

    .line 538
    .end local v0           #nDigits:I
    .end local v3           #localMax:I
    .restart local v1       #index:I
    .restart local v5       #nDigits:I
    .local p3, c:C
    :sswitch_0
    const/16 p3, 0x8

    .local p3, localMax:I
    move v3, p3

    .end local p3           #localMax:I
    .restart local v3       #localMax:I
    move v0, v5

    .end local v5           #nDigits:I
    .restart local v0       #nDigits:I
    move p3, v1

    .line 539
    .end local v1           #index:I
    .local p3, index:I
    goto :goto_2

    .line 541
    .end local v0           #nDigits:I
    .end local v3           #localMax:I
    .restart local v1       #index:I
    .restart local v5       #nDigits:I
    .local p3, c:C
    :sswitch_1
    const/16 p3, 0xc

    .local p3, localMax:I
    move v3, p3

    .end local p3           #localMax:I
    .restart local v3       #localMax:I
    move v0, v5

    .end local v5           #nDigits:I
    .restart local v0       #nDigits:I
    move p3, v1

    .line 542
    .end local v1           #index:I
    .local p3, index:I
    goto :goto_2

    .line 544
    .end local v0           #nDigits:I
    .end local v3           #localMax:I
    .restart local v1       #index:I
    .restart local v5       #nDigits:I
    .local p3, c:C
    :sswitch_2
    const/16 p3, 0xa

    .local p3, localMax:I
    move v3, p3

    .end local p3           #localMax:I
    .restart local v3       #localMax:I
    move v0, v5

    .end local v5           #nDigits:I
    .restart local v0       #nDigits:I
    move p3, v1

    .line 545
    .end local v1           #index:I
    .local p3, index:I
    goto :goto_2

    .line 547
    .end local v0           #nDigits:I
    .end local v3           #localMax:I
    .restart local v1       #index:I
    .restart local v5       #nDigits:I
    .local p3, c:C
    :sswitch_3
    const/16 p3, 0xd

    .local p3, localMax:I
    move v3, p3

    .end local p3           #localMax:I
    .restart local v3       #localMax:I
    move v0, v5

    .end local v5           #nDigits:I
    .restart local v0       #nDigits:I
    move p3, v1

    .line 548
    .end local v1           #index:I
    .local p3, index:I
    goto :goto_2

    .line 550
    .end local v0           #nDigits:I
    .end local v3           #localMax:I
    .restart local v1       #index:I
    .restart local v5       #nDigits:I
    .local p3, c:C
    :sswitch_4
    const/16 p3, 0x9

    .local p3, localMax:I
    move v3, p3

    .end local p3           #localMax:I
    .restart local v3       #localMax:I
    move v0, v5

    .end local v5           #nDigits:I
    .restart local v0       #nDigits:I
    move p3, v1

    .line 551
    .end local v1           #index:I
    .local p3, index:I
    goto :goto_2

    .line 553
    .end local v0           #nDigits:I
    .end local v3           #localMax:I
    .restart local v1       #index:I
    .restart local v5       #nDigits:I
    .local p3, c:C
    :sswitch_5
    const/16 p3, 0xb

    .local p3, localMax:I
    move v3, p3

    .end local p3           #localMax:I
    .restart local v3       #localMax:I
    move v0, v5

    .end local v5           #nDigits:I
    .restart local v0       #nDigits:I
    move p3, v1

    .line 554
    .end local v1           #index:I
    .local p3, index:I
    goto :goto_2

    .line 556
    .end local v0           #nDigits:I
    .end local v3           #localMax:I
    .restart local v1       #index:I
    .restart local v5       #nDigits:I
    .local p3, c:C
    :sswitch_6
    add-int/lit8 p3, v1, 0x1

    if-ge p3, p4, :cond_1

    .end local p3           #c:C
    add-int/lit8 p3, v1, 0x1

    aget-char p3, p2, p3

    invoke-static {p3}, Ljava/lang/Character;->isLetter(C)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 557
    add-int/lit8 p3, v1, 0x1

    .end local v1           #index:I
    .local p3, index:I
    aget-char v0, p2, v1

    and-int/lit8 v0, v0, 0x1f

    int-to-char v0, v0

    .local v0, localMax:I
    move v3, v0

    .end local v0           #localMax:I
    .restart local v3       #localMax:I
    move v0, v5

    .end local v5           #nDigits:I
    .local v0, nDigits:I
    goto :goto_2

    .line 559
    .end local v0           #nDigits:I
    .end local v3           #localMax:I
    .end local p3           #index:I
    .restart local v1       #index:I
    .restart local v5       #nDigits:I
    :cond_1
    const/16 p3, 0x5c

    .local p3, localMax:I
    move v3, p3

    .end local p3           #localMax:I
    .restart local v3       #localMax:I
    move v0, v5

    .end local v5           #nDigits:I
    .restart local v0       #nDigits:I
    move p3, v1

    .line 560
    .end local v1           #index:I
    .local p3, index:I
    goto :goto_2

    .line 562
    .end local v0           #nDigits:I
    .end local v3           #localMax:I
    .restart local v1       #index:I
    .restart local v5       #nDigits:I
    .local p3, c:C
    :sswitch_7
    add-int/lit8 v0, v5, 0x2

    .end local v5           #nDigits:I
    .restart local v0       #nDigits:I
    move v5, v0

    .line 565
    .end local v0           #nDigits:I
    .restart local v5       #nDigits:I
    :sswitch_8
    const/4 v3, 0x0

    .line 566
    .local v3, n:I
    const/4 v0, 0x0

    .local v0, i:I
    move v8, v0

    .end local v0           #i:I
    .local v8, i:I
    move v0, v1

    .end local v1           #index:I
    .local v0, index:I
    move v1, v8

    .end local v8           #i:I
    .local v1, i:I
    :goto_3
    if-ge v1, v5, :cond_f

    if-ge v0, p4, :cond_f

    .line 567
    add-int/lit8 p3, v0, 0x1

    .end local v0           #index:I
    .local p3, index:I
    aget-char v0, p2, v0

    .line 568
    .local v0, c:C
    invoke-static {v0, v3}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v3

    .line 569
    if-gez v3, :cond_2

    .line 572
    add-int/lit8 v1, v1, 0x1

    sub-int/2addr p3, v1

    .line 573
    const/16 v1, 0x5c

    .line 577
    .end local v3           #n:I
    .local v1, n:I
    :goto_4
    move v0, v1

    .local v0, localMax:I
    move v3, v0

    .end local v0           #localMax:I
    .local v3, localMax:I
    move v0, v5

    .line 578
    .end local v5           #nDigits:I
    .local v0, nDigits:I
    goto :goto_2

    .line 566
    .local v0, c:C
    .local v1, i:I
    .local v3, n:I
    .restart local v5       #nDigits:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    move v8, v0

    .end local v0           #c:C
    .local v8, c:C
    move v0, p3

    .end local p3           #index:I
    .local v0, index:I
    move p3, v8

    .end local v8           #c:C
    .local p3, c:C
    goto :goto_3

    .line 580
    .end local v0           #index:I
    .end local v3           #n:I
    .local v1, index:I
    :sswitch_9
    if-eqz v2, :cond_3

    .line 581
    const-string p0, "msg.bad.range"

    .end local p0           #state:Lorg/mozilla/javascript/regexp/CompilerState;
    const-string p1, ""

    .end local p1           #target:Lorg/mozilla/javascript/regexp/RENode;
    invoke-static {p0, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const/4 p0, 0x0

    move p1, v4

    .end local v4           #max:I
    .local p1, max:I
    move p2, v6

    .end local v6           #rangeStart:C
    .local p2, rangeStart:C
    move p3, v1

    .end local v1           #index:I
    .local p3, index:I
    move p4, p0

    move p0, v2

    .end local v2           #inRange:Z
    .local p0, inRange:Z
    goto/16 :goto_0

    .line 584
    .restart local v1       #index:I
    .restart local v2       #inRange:Z
    .restart local v4       #max:I
    .restart local v6       #rangeStart:C
    .local p0, state:Lorg/mozilla/javascript/regexp/CompilerState;
    .local p1, target:Lorg/mozilla/javascript/regexp/RENode;
    .local p2, src:[C
    .local p3, c:C
    :cond_3
    const/16 p3, 0x39

    .local p3, localMax:I
    move v3, p3

    .end local p3           #localMax:I
    .local v3, localMax:I
    move v0, v5

    .end local v5           #nDigits:I
    .local v0, nDigits:I
    move p3, v1

    .line 585
    .end local v1           #index:I
    .local p3, index:I
    goto/16 :goto_2

    .line 591
    .end local v0           #nDigits:I
    .end local v3           #localMax:I
    .restart local v1       #index:I
    .restart local v5       #nDigits:I
    .local p3, c:C
    :sswitch_a
    if-eqz v2, :cond_4

    .line 592
    const-string p0, "msg.bad.range"

    .end local p0           #state:Lorg/mozilla/javascript/regexp/CompilerState;
    const-string p1, ""

    .end local p1           #target:Lorg/mozilla/javascript/regexp/RENode;
    invoke-static {p0, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    const/4 p0, 0x0

    move p1, v4

    .end local v4           #max:I
    .local p1, max:I
    move p2, v6

    .end local v6           #rangeStart:C
    .local p2, rangeStart:C
    move p3, v1

    .end local v1           #index:I
    .local p3, index:I
    move p4, p0

    move p0, v2

    .end local v2           #inRange:Z
    .local p0, inRange:Z
    goto/16 :goto_0

    .line 595
    .restart local v1       #index:I
    .restart local v2       #inRange:Z
    .restart local v4       #max:I
    .restart local v6       #rangeStart:C
    .local p0, state:Lorg/mozilla/javascript/regexp/CompilerState;
    .local p1, target:Lorg/mozilla/javascript/regexp/RENode;
    .local p2, src:[C
    .local p3, c:C
    :cond_4
    const p0, 0xffff

    iput p0, p1, Lorg/mozilla/javascript/regexp/RENode;->bmsize:I

    .line 596
    .end local p0           #state:Lorg/mozilla/javascript/regexp/CompilerState;
    const/4 p0, 0x1

    move p1, v4

    .end local v4           #max:I
    .local p1, max:I
    move p2, v6

    .end local v6           #rangeStart:C
    .local p2, rangeStart:C
    move p3, v1

    .end local v1           #index:I
    .local p3, index:I
    move p4, p0

    move p0, v2

    .end local v2           #inRange:Z
    .local p0, inRange:Z
    goto/16 :goto_0

    .line 611
    .restart local v1       #index:I
    .restart local v2       #inRange:Z
    .restart local v4       #max:I
    .restart local v6       #rangeStart:C
    .local p0, state:Lorg/mozilla/javascript/regexp/CompilerState;
    .local p1, target:Lorg/mozilla/javascript/regexp/RENode;
    .local p2, src:[C
    .local p3, c:C
    :sswitch_b
    const/16 v0, 0x30

    sub-int v3, p3, v0

    .line 612
    .local v3, n:I
    aget-char v0, p2, v1

    .line 613
    .end local p3           #c:C
    .local v0, c:C
    const/16 p3, 0x30

    if-gt p3, v0, :cond_e

    const/16 p3, 0x37

    if-gt v0, p3, :cond_e

    .line 614
    add-int/lit8 p3, v1, 0x1

    .line 615
    .end local v1           #index:I
    .local p3, index:I
    mul-int/lit8 v1, v3, 0x8

    const/16 v3, 0x30

    sub-int/2addr v0, v3

    add-int v3, v1, v0

    .line 616
    aget-char v0, p2, p3

    .line 617
    const/16 v1, 0x30

    if-gt v1, v0, :cond_d

    const/16 v1, 0x37

    if-gt v0, v1, :cond_d

    .line 618
    add-int/lit8 p3, p3, 0x1

    .line 619
    mul-int/lit8 v1, v3, 0x8

    const/16 v7, 0x30

    sub-int v7, v0, v7

    add-int/2addr v1, v7

    .line 620
    .local v1, i:I
    const/16 v7, 0xff

    if-gt v1, v7, :cond_5

    .line 621
    move v1, v1

    .line 626
    .end local v3           #n:I
    .local v1, n:I
    :goto_5
    move v0, v1

    .local v0, localMax:I
    move v3, v0

    .end local v0           #localMax:I
    .local v3, localMax:I
    move v0, v5

    .line 627
    .end local v5           #nDigits:I
    .local v0, nDigits:I
    goto/16 :goto_2

    .line 623
    .local v0, c:C
    .local v1, i:I
    .local v3, n:I
    .restart local v5       #nDigits:I
    :cond_5
    add-int/lit8 p3, p3, -0x1

    move v1, v3

    .end local v3           #n:I
    .local v1, n:I
    goto :goto_5

    .line 643
    .end local v1           #n:I
    .end local v5           #nDigits:I
    .local v0, nDigits:I
    .local v3, localMax:I
    :cond_6
    const/4 v0, 0x0

    .end local v2           #inRange:Z
    .local v0, inRange:Z
    move v2, v0

    .line 655
    .end local v0           #inRange:Z
    .restart local v2       #inRange:Z
    :cond_7
    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_c

    .line 656
    int-to-char v0, v3

    invoke-static {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v1

    .line 657
    .local v1, cu:C
    int-to-char v0, v3

    invoke-static {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->downcase(C)C

    move-result v0

    .line 658
    .local v0, cd:C
    if-lt v1, v0, :cond_8

    move v0, v1

    .line 660
    .end local v1           #cu:C
    .end local v3           #localMax:I
    .local v0, localMax:I
    :cond_8
    :goto_6
    if-le v0, v4, :cond_b

    .line 661
    move v0, v0

    .end local v4           #max:I
    .local v0, max:I
    :goto_7
    move v4, v0

    .end local v0           #max:I
    .restart local v4       #max:I
    move v0, p3

    .line 662
    .end local p3           #index:I
    .local v0, index:I
    goto/16 :goto_1

    .line 646
    .local v0, nDigits:I
    .restart local v3       #localMax:I
    .restart local p3       #index:I
    :cond_9
    const/4 v0, 0x1

    sub-int v0, p4, v0

    if-ge p3, v0, :cond_7

    .line 647
    .end local v0           #nDigits:I
    aget-char v0, p2, p3

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_7

    .line 648
    add-int/lit8 p3, p3, 0x1

    .line 649
    const/4 v0, 0x1

    .line 650
    .end local v2           #inRange:Z
    .local v0, inRange:Z
    int-to-char v1, v3

    .end local v6           #rangeStart:C
    .local v1, rangeStart:C
    move v2, v0

    .end local v0           #inRange:Z
    .restart local v2       #inRange:Z
    move v6, v1

    .end local v1           #rangeStart:C
    .restart local v6       #rangeStart:C
    move v0, p3

    .line 651
    .end local p3           #index:I
    .local v0, index:I
    goto/16 :goto_1

    .line 663
    .end local v3           #localMax:I
    :cond_a
    iput v4, p1, Lorg/mozilla/javascript/regexp/RENode;->bmsize:I

    .line 664
    const/4 p0, 0x1

    move p1, v4

    .end local v4           #max:I
    .local p1, max:I
    move p2, v6

    .end local v6           #rangeStart:C
    .local p2, rangeStart:C
    move p3, v0

    .end local v0           #index:I
    .restart local p3       #index:I
    move p4, p0

    move p0, v2

    .end local v2           #inRange:Z
    .local p0, inRange:Z
    goto/16 :goto_0

    .local v0, localMax:I
    .restart local v2       #inRange:Z
    .restart local v4       #max:I
    .restart local v6       #rangeStart:C
    .local p0, state:Lorg/mozilla/javascript/regexp/CompilerState;
    .local p1, target:Lorg/mozilla/javascript/regexp/RENode;
    .local p2, src:[C
    :cond_b
    move v0, v4

    .end local v4           #max:I
    .local v0, max:I
    goto :goto_7

    .end local v0           #max:I
    .restart local v3       #localMax:I
    .restart local v4       #max:I
    :cond_c
    move v0, v3

    .end local v3           #localMax:I
    .local v0, localMax:I
    goto :goto_6

    .local v0, c:C
    .local v3, n:I
    .restart local v5       #nDigits:I
    :cond_d
    move v1, v3

    .end local v3           #n:I
    .local v1, n:I
    goto :goto_5

    .end local p3           #index:I
    .local v1, index:I
    .restart local v3       #n:I
    :cond_e
    move p3, v1

    .end local v1           #index:I
    .restart local p3       #index:I
    move v1, v3

    .end local v3           #n:I
    .local v1, n:I
    goto :goto_5

    .local v0, index:I
    .local v1, i:I
    .restart local v3       #n:I
    .local p3, c:C
    :cond_f
    move v1, v3

    .end local v3           #n:I
    .local v1, n:I
    move v8, p3

    .end local p3           #c:C
    .restart local v8       #c:C
    move p3, v0

    .end local v0           #index:I
    .local p3, index:I
    move v0, v8

    .end local v8           #c:C
    .local v0, c:C
    goto/16 :goto_4

    .end local v4           #max:I
    .end local v5           #nDigits:I
    .end local v6           #rangeStart:C
    .local v0, inRange:Z
    .local v1, max:I
    .local v2, rangeStart:C
    :cond_10
    move v4, v1

    .end local v1           #max:I
    .restart local v4       #max:I
    move v6, v2

    .end local v2           #rangeStart:C
    .restart local v6       #rangeStart:C
    move v2, v0

    .end local v0           #inRange:Z
    .local v2, inRange:Z
    move v0, p3

    .end local p3           #index:I
    .local v0, index:I
    goto/16 :goto_1

    .line 532
    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_0
    .end packed-switch

    .line 536
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_b
        0x31 -> :sswitch_b
        0x32 -> :sswitch_b
        0x33 -> :sswitch_b
        0x34 -> :sswitch_b
        0x35 -> :sswitch_b
        0x36 -> :sswitch_b
        0x37 -> :sswitch_b
        0x44 -> :sswitch_a
        0x53 -> :sswitch_a
        0x57 -> :sswitch_a
        0x62 -> :sswitch_0
        0x63 -> :sswitch_6
        0x64 -> :sswitch_9
        0x66 -> :sswitch_1
        0x6e -> :sswitch_2
        0x72 -> :sswitch_3
        0x73 -> :sswitch_a
        0x74 -> :sswitch_4
        0x75 -> :sswitch_7
        0x76 -> :sswitch_5
        0x77 -> :sswitch_a
        0x78 -> :sswitch_8
    .end sparse-switch
.end method

.method private static classMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECharSet;C)Z
    .locals 5
    .parameter "gData"
    .parameter "charSet"
    .parameter "ch"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1656
    iget-boolean v1, p1, Lorg/mozilla/javascript/regexp/RECharSet;->converted:Z

    if-nez v1, :cond_0

    .line 1657
    invoke-static {p0, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->processCharSet(Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECharSet;)V

    .line 1660
    :cond_0
    div-int/lit8 v0, p2, 0x8

    .line 1661
    .local v0, byteIndex:I
    iget-boolean v1, p1, Lorg/mozilla/javascript/regexp/RECharSet;->sense:Z

    if-eqz v1, :cond_2

    .line 1662
    iget v1, p1, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    if-eqz v1, :cond_1

    iget v1, p1, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    if-gt p2, v1, :cond_1

    iget-object v1, p1, Lorg/mozilla/javascript/regexp/RECharSet;->bits:[B

    aget-byte v1, v1, v0

    and-int/lit8 v2, p2, 0x7

    shl-int v2, v3, v2

    and-int/2addr v1, v2

    if-nez v1, :cond_3

    :cond_1
    move v1, v4

    .line 1672
    :goto_0
    return v1

    .line 1667
    :cond_2
    iget v1, p1, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    if-eqz v1, :cond_3

    iget v1, p1, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    if-gt p2, v1, :cond_3

    iget-object v1, p1, Lorg/mozilla/javascript/regexp/RECharSet;->bits:[B

    aget-byte v1, v1, v0

    and-int/lit8 v2, p2, 0x7

    shl-int v2, v3, v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    move v1, v4

    .line 1670
    goto :goto_0

    :cond_3
    move v1, v3

    .line 1672
    goto :goto_0
.end method

.method static compileRE(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 5
    .parameter "cx"
    .parameter "str"
    .parameter "global"
    .parameter "flat"

    .prologue
    .line 289
    new-instance v3, Lorg/mozilla/javascript/regexp/RECompiled;

    invoke-direct {v3}, Lorg/mozilla/javascript/regexp/RECompiled;-><init>()V

    .line 290
    .local v3, regexp:Lorg/mozilla/javascript/regexp/RECompiled;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, v3, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    .line 291
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 293
    .local v2, length:I
    const/4 p1, 0x0

    .line 294
    .local p1, flags:I
    if-eqz p2, :cond_4

    .line 295
    const/4 v0, 0x0

    .local v0, i:I
    move v1, v0

    .end local v0           #i:I
    .local v1, i:I
    move v0, p1

    .end local p1           #flags:I
    .local v0, flags:I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v1, p1, :cond_3

    .line 296
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 297
    .local p1, c:C
    const/16 v4, 0x67

    if-ne p1, v4, :cond_0

    .line 298
    or-int/lit8 p1, v0, 0x1

    .line 295
    .end local v0           #flags:I
    .local p1, flags:I
    :goto_1
    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .local v0, i:I
    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    move v0, p1

    .end local p1           #flags:I
    .local v0, flags:I
    goto :goto_0

    .line 299
    .local p1, c:C
    :cond_0
    const/16 v4, 0x69

    if-ne p1, v4, :cond_1

    .line 300
    or-int/lit8 p1, v0, 0x2

    .end local v0           #flags:I
    .local p1, flags:I
    goto :goto_1

    .line 301
    .restart local v0       #flags:I
    .local p1, c:C
    :cond_1
    const/16 v4, 0x6d

    if-ne p1, v4, :cond_2

    .line 302
    or-int/lit8 p1, v0, 0x4

    .end local v0           #flags:I
    .local p1, flags:I
    goto :goto_1

    .line 304
    .restart local v0       #flags:I
    .local p1, c:C
    :cond_2
    const-string v4, "msg.invalid.re.flag"

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    .end local p1           #c:C
    invoke-static {v4, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v0

    .end local v0           #flags:I
    .local p1, flags:I
    goto :goto_1

    .end local p1           #flags:I
    .restart local v0       #flags:I
    :cond_3
    move p1, v0

    .line 308
    .end local v0           #flags:I
    .end local v1           #i:I
    .restart local p1       #flags:I
    :cond_4
    iput p1, v3, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    .line 310
    new-instance p2, Lorg/mozilla/javascript/regexp/CompilerState;

    .end local p2
    iget-object v0, v3, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    invoke-direct {p2, p0, v0, v2, p1}, Lorg/mozilla/javascript/regexp/CompilerState;-><init>(Lorg/mozilla/javascript/Context;[CII)V

    .line 311
    .local p2, state:Lorg/mozilla/javascript/regexp/CompilerState;
    if-eqz p3, :cond_7

    if-lez v2, :cond_7

    .line 315
    new-instance p0, Lorg/mozilla/javascript/regexp/RENode;

    .end local p0
    const/16 p1, 0x15

    invoke-direct {p0, p1}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    .end local p1           #flags:I
    iput-object p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 316
    iget-object p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget-object p1, p2, Lorg/mozilla/javascript/regexp/CompilerState;->cpbegin:[C

    const/4 p3, 0x0

    aget-char p1, p1, p3

    .end local p3
    iput-char p1, p0, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    .line 317
    iget-object p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput v2, p0, Lorg/mozilla/javascript/regexp/RENode;->length:I

    .line 318
    iget-object p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    const/4 p1, 0x0

    iput p1, p0, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    .line 319
    iget p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 p0, p0, 0x5

    iput p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 325
    :cond_5
    iget p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 p0, p0, 0x1

    new-array p0, p0, [B

    iput-object p0, v3, Lorg/mozilla/javascript/regexp/RECompiled;->program:[B

    .line 326
    iget p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->classCount:I

    if-eqz p0, :cond_6

    .line 327
    iget p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->classCount:I

    new-array p0, p0, [Lorg/mozilla/javascript/regexp/RECharSet;

    iput-object p0, v3, Lorg/mozilla/javascript/regexp/RECompiled;->classList:[Lorg/mozilla/javascript/regexp/RECharSet;

    .line 328
    iget p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->classCount:I

    iput p0, v3, Lorg/mozilla/javascript/regexp/RECompiled;->classCount:I

    .line 330
    :cond_6
    const/4 p0, 0x0

    iget-object p1, p2, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    invoke-static {p2, v3, p0, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->emitREBytecode(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RECompiled;ILorg/mozilla/javascript/regexp/RENode;)I

    move-result p0

    .line 331
    .local p0, endPC:I
    iget-object p3, v3, Lorg/mozilla/javascript/regexp/RECompiled;->program:[B

    add-int/lit8 p1, p0, 0x1

    .end local p0           #endPC:I
    .local p1, endPC:I
    const/16 p1, 0x35

    aput-byte p1, p3, p0

    .line 341
    .end local p1           #endPC:I
    iget p0, p2, Lorg/mozilla/javascript/regexp/CompilerState;->parenCount:I

    iput p0, v3, Lorg/mozilla/javascript/regexp/RECompiled;->parenCount:I

    .line 344
    iget-object p0, v3, Lorg/mozilla/javascript/regexp/RECompiled;->program:[B

    const/4 p1, 0x0

    aget-byte p0, p0, p1

    sparse-switch p0, :sswitch_data_0

    :goto_2
    move-object p0, v3

    .line 365
    :goto_3
    return-object p0

    .line 322
    .local p0, cx:Lorg/mozilla/javascript/Context;
    .local p1, flags:I
    .restart local p3
    :cond_7
    invoke-static {p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->parseDisjunction(Lorg/mozilla/javascript/regexp/CompilerState;)Z

    move-result p0

    .end local p0           #cx:Lorg/mozilla/javascript/Context;
    if-nez p0, :cond_5

    .line 323
    const/4 p0, 0x0

    goto :goto_3

    .line 347
    .end local p1           #flags:I
    .end local p3
    :sswitch_0
    iget-object p0, v3, Lorg/mozilla/javascript/regexp/RECompiled;->program:[B

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result p0

    int-to-char p0, p0

    iput p0, v3, Lorg/mozilla/javascript/regexp/RECompiled;->anchorCh:I

    goto :goto_2

    .line 351
    :sswitch_1
    iget-object p0, v3, Lorg/mozilla/javascript/regexp/RECompiled;->program:[B

    const/4 p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-char p0, p0

    iput p0, v3, Lorg/mozilla/javascript/regexp/RECompiled;->anchorCh:I

    goto :goto_2

    .line 355
    :sswitch_2
    iget-object p0, v3, Lorg/mozilla/javascript/regexp/RECompiled;->program:[B

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result p0

    .line 356
    .local p0, k:I
    iget-object p1, v3, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    aget-char p0, p1, p0

    .end local p0           #k:I
    iput p0, v3, Lorg/mozilla/javascript/regexp/RECompiled;->anchorCh:I

    goto :goto_2

    .line 344
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_2
        0x16 -> :sswitch_1
        0x1c -> :sswitch_0
        0x20 -> :sswitch_2
        0x21 -> :sswitch_1
        0x23 -> :sswitch_0
    .end sparse-switch
.end method

.method private static doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V
    .locals 2
    .parameter "state"
    .parameter "c"

    .prologue
    .line 723
    new-instance v0, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 724
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput-char p1, v0, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    .line 725
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    const/4 v1, 0x1

    iput v1, v0, Lorg/mozilla/javascript/regexp/RENode;->length:I

    .line 726
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    const/4 v1, -0x1

    iput v1, v0, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    .line 727
    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 728
    return-void
.end method

.method private static downcase(C)C
    .locals 2
    .parameter "ch"

    .prologue
    const/16 v1, 0x80

    .line 414
    if-ge p0, v1, :cond_1

    .line 415
    const/16 v1, 0x41

    if-gt v1, p0, :cond_0

    const/16 v1, 0x5a

    if-gt p0, v1, :cond_0

    .line 416
    add-int/lit8 v1, p0, 0x20

    int-to-char v1, v1

    .line 422
    :goto_0
    return v1

    :cond_0
    move v1, p0

    .line 418
    goto :goto_0

    .line 420
    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    .line 421
    .local v0, cl:C
    if-lt p0, v1, :cond_2

    if-ge v0, v1, :cond_2

    move v1, p0

    goto :goto_0

    :cond_2
    move v1, v0

    .line 422
    goto :goto_0
.end method

.method private static emitREBytecode(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RECompiled;ILorg/mozilla/javascript/regexp/RENode;)I
    .locals 7
    .parameter "state"
    .parameter "re"
    .parameter "pc"
    .parameter "t"

    .prologue
    .line 1180
    iget-object v4, p1, Lorg/mozilla/javascript/regexp/RECompiled;->program:[B

    .local v4, program:[B
    move v0, p2

    .line 1182
    .end local p2
    .local v0, pc:I
    :goto_0
    if-eqz p3, :cond_d

    .line 1183
    add-int/lit8 p2, v0, 0x1

    .end local v0           #pc:I
    .restart local p2
    iget-byte v1, p3, Lorg/mozilla/javascript/regexp/RENode;->op:B

    aput-byte v1, v4, v0

    .line 1184
    iget-byte v0, p3, Lorg/mozilla/javascript/regexp/RENode;->op:B

    sparse-switch v0, :sswitch_data_0

    .line 1297
    :goto_1
    iget-object p3, p3, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    move v0, p2

    .end local p2
    .restart local v0       #pc:I
    goto :goto_0

    .line 1186
    .end local v0           #pc:I
    .restart local p2
    :sswitch_0
    add-int/lit8 p2, p2, -0x1

    .line 1187
    goto :goto_1

    .line 1189
    :sswitch_1
    iget-object v0, p3, Lorg/mozilla/javascript/regexp/RENode;->kid2:Lorg/mozilla/javascript/regexp/RENode;

    .line 1190
    .local v0, nextAlt:Lorg/mozilla/javascript/regexp/RENode;
    move v1, p2

    .line 1191
    .local v1, nextAltFixup:I
    add-int/lit8 p2, p2, 0x2

    .line 1192
    iget-object v2, p3, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    invoke-static {p0, p1, p2, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->emitREBytecode(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RECompiled;ILorg/mozilla/javascript/regexp/RENode;)I

    move-result p2

    .line 1193
    add-int/lit8 v3, p2, 0x1

    .end local p2
    .local v3, pc:I
    const/16 v2, 0x17

    aput-byte v2, v4, p2

    .line 1194
    move v2, v3

    .line 1195
    .local v2, nextTermFixup:I
    add-int/lit8 p2, v3, 0x2

    .line 1196
    .end local v3           #pc:I
    .restart local p2
    invoke-static {v4, v1, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->resolveForwardJump([BII)V

    .line 1197
    invoke-static {p0, p1, p2, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->emitREBytecode(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RECompiled;ILorg/mozilla/javascript/regexp/RENode;)I

    move-result p2

    .line 1199
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .local v1, pc:I
    const/16 v0, 0x17

    aput-byte v0, v4, p2

    .line 1200
    .end local v0           #nextAlt:Lorg/mozilla/javascript/regexp/RENode;
    move v0, v1

    .line 1201
    .local v0, nextAltFixup:I
    add-int/lit8 p2, v1, 0x2

    .line 1203
    .end local v1           #pc:I
    .restart local p2
    invoke-static {v4, v2, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->resolveForwardJump([BII)V

    .line 1204
    invoke-static {v4, v0, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->resolveForwardJump([BII)V

    goto :goto_1

    .line 1210
    .end local v0           #nextAltFixup:I
    .end local v2           #nextTermFixup:I
    :sswitch_2
    iget v0, p3, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1212
    :goto_2
    iget-object v0, p3, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    if-eqz v0, :cond_0

    iget-object v0, p3, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    iget-byte v0, v0, Lorg/mozilla/javascript/regexp/RENode;->op:B

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    iget v0, p3, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    iget v1, p3, Lorg/mozilla/javascript/regexp/RENode;->length:I

    add-int/2addr v0, v1

    iget-object v1, p3, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    iget v1, v1, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    if-ne v0, v1, :cond_0

    .line 1214
    iget v0, p3, Lorg/mozilla/javascript/regexp/RENode;->length:I

    iget-object v1, p3, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    iget v1, v1, Lorg/mozilla/javascript/regexp/RENode;->length:I

    add-int/2addr v0, v1

    iput v0, p3, Lorg/mozilla/javascript/regexp/RENode;->length:I

    .line 1215
    iget-object v0, p3, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    iput-object v0, p3, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    goto :goto_2

    .line 1218
    :cond_0
    iget v0, p3, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v0, p3, Lorg/mozilla/javascript/regexp/RENode;->length:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 1219
    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1220
    const/4 v0, 0x1

    sub-int v0, p2, v0

    const/16 v1, 0x20

    aput-byte v1, v4, v0

    .line 1223
    :goto_3
    iget v0, p3, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    invoke-static {v4, p2, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result p2

    .line 1224
    iget v0, p3, Lorg/mozilla/javascript/regexp/RENode;->length:I

    invoke-static {v4, p2, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result p2

    goto/16 :goto_1

    .line 1222
    :cond_1
    const/4 v0, 0x1

    sub-int v0, p2, v0

    const/16 v1, 0x15

    aput-byte v1, v4, v0

    goto :goto_3

    .line 1227
    :cond_2
    iget-char v0, p3, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    const/16 v1, 0x100

    if-ge v0, v1, :cond_4

    .line 1228
    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 1229
    const/4 v0, 0x1

    sub-int v0, p2, v0

    const/16 v1, 0x21

    aput-byte v1, v4, v0

    .line 1232
    :goto_4
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .local v0, pc:I
    iget-char v1, p3, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    int-to-byte v1, v1

    aput-byte v1, v4, p2

    move p2, v0

    .end local v0           #pc:I
    .restart local p2
    goto/16 :goto_1

    .line 1231
    :cond_3
    const/4 v0, 0x1

    sub-int v0, p2, v0

    const/16 v1, 0x16

    aput-byte v1, v4, v0

    goto :goto_4

    .line 1235
    :cond_4
    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    .line 1236
    const/4 v0, 0x1

    sub-int v0, p2, v0

    const/16 v1, 0x23

    aput-byte v1, v4, v0

    .line 1239
    :goto_5
    iget-char v0, p3, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    invoke-static {v4, p2, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result p2

    .line 1242
    goto/16 :goto_1

    .line 1238
    :cond_5
    const/4 v0, 0x1

    sub-int v0, p2, v0

    const/16 v1, 0x1c

    aput-byte v1, v4, v0

    goto :goto_5

    .line 1244
    :sswitch_3
    iget v0, p3, Lorg/mozilla/javascript/regexp/RENode;->parenIndex:I

    invoke-static {v4, p2, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result p2

    .line 1245
    iget-object v0, p3, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    invoke-static {p0, p1, p2, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->emitREBytecode(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RECompiled;ILorg/mozilla/javascript/regexp/RENode;)I

    move-result p2

    .line 1246
    add-int/lit8 v0, p2, 0x1

    .end local p2
    .restart local v0       #pc:I
    const/16 v1, 0xb

    aput-byte v1, v4, p2

    .line 1247
    iget p2, p3, Lorg/mozilla/javascript/regexp/RENode;->parenIndex:I

    invoke-static {v4, v0, p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result p2

    .line 1248
    .end local v0           #pc:I
    .restart local p2
    goto/16 :goto_1

    .line 1250
    :sswitch_4
    iget v0, p3, Lorg/mozilla/javascript/regexp/RENode;->parenIndex:I

    invoke-static {v4, p2, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result p2

    .line 1251
    goto/16 :goto_1

    .line 1253
    :sswitch_5
    move v0, p2

    .line 1254
    .local v0, nextTermFixup:I
    add-int/lit8 p2, p2, 0x2

    .line 1255
    iget-object v1, p3, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    invoke-static {p0, p1, p2, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->emitREBytecode(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RECompiled;ILorg/mozilla/javascript/regexp/RENode;)I

    move-result p2

    .line 1256
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .restart local v1       #pc:I
    const/16 v2, 0x2b

    aput-byte v2, v4, p2

    .line 1257
    invoke-static {v4, v0, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->resolveForwardJump([BII)V

    move p2, v1

    .line 1258
    .end local v1           #pc:I
    .restart local p2
    goto/16 :goto_1

    .line 1260
    .end local v0           #nextTermFixup:I
    :sswitch_6
    move v0, p2

    .line 1261
    .restart local v0       #nextTermFixup:I
    add-int/lit8 p2, p2, 0x2

    .line 1262
    iget-object v1, p3, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    invoke-static {p0, p1, p2, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->emitREBytecode(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RECompiled;ILorg/mozilla/javascript/regexp/RENode;)I

    move-result p2

    .line 1263
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .restart local v1       #pc:I
    const/16 v2, 0x2c

    aput-byte v2, v4, p2

    .line 1264
    invoke-static {v4, v0, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->resolveForwardJump([BII)V

    move p2, v1

    .line 1265
    .end local v1           #pc:I
    .restart local p2
    goto/16 :goto_1

    .line 1267
    .end local v0           #nextTermFixup:I
    :sswitch_7
    iget v0, p3, Lorg/mozilla/javascript/regexp/RENode;->min:I

    if-nez v0, :cond_7

    iget v0, p3, Lorg/mozilla/javascript/regexp/RENode;->max:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 1268
    const/4 v0, 0x1

    sub-int v0, p2, v0

    iget-boolean v1, p3, Lorg/mozilla/javascript/regexp/RENode;->greedy:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    :goto_6
    aput-byte v1, v4, v0

    .line 1281
    :goto_7
    iget v0, p3, Lorg/mozilla/javascript/regexp/RENode;->parenCount:I

    invoke-static {v4, p2, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result p2

    .line 1282
    iget v0, p3, Lorg/mozilla/javascript/regexp/RENode;->parenIndex:I

    invoke-static {v4, p2, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result p2

    .line 1283
    move v0, p2

    .line 1284
    .restart local v0       #nextTermFixup:I
    add-int/lit8 p2, p2, 0x2

    .line 1285
    iget-object v1, p3, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    invoke-static {p0, p1, p2, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->emitREBytecode(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RECompiled;ILorg/mozilla/javascript/regexp/RENode;)I

    move-result p2

    .line 1286
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .restart local v1       #pc:I
    const/16 v2, 0x31

    aput-byte v2, v4, p2

    .line 1287
    invoke-static {v4, v0, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->resolveForwardJump([BII)V

    move p2, v1

    .line 1288
    .end local v1           #pc:I
    .restart local p2
    goto/16 :goto_1

    .line 1268
    .end local v0           #nextTermFixup:I
    :cond_6
    const/16 v1, 0x2d

    goto :goto_6

    .line 1270
    :cond_7
    iget v0, p3, Lorg/mozilla/javascript/regexp/RENode;->min:I

    if-nez v0, :cond_9

    iget v0, p3, Lorg/mozilla/javascript/regexp/RENode;->max:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 1271
    const/4 v0, 0x1

    sub-int v0, p2, v0

    iget-boolean v1, p3, Lorg/mozilla/javascript/regexp/RENode;->greedy:Z

    if-eqz v1, :cond_8

    const/16 v1, 0x9

    :goto_8
    aput-byte v1, v4, v0

    goto :goto_7

    :cond_8
    const/16 v1, 0x2f

    goto :goto_8

    .line 1273
    :cond_9
    iget v0, p3, Lorg/mozilla/javascript/regexp/RENode;->min:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    iget v0, p3, Lorg/mozilla/javascript/regexp/RENode;->max:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 1274
    const/4 v0, 0x1

    sub-int v0, p2, v0

    iget-boolean v1, p3, Lorg/mozilla/javascript/regexp/RENode;->greedy:Z

    if-eqz v1, :cond_a

    const/16 v1, 0x8

    :goto_9
    aput-byte v1, v4, v0

    goto :goto_7

    :cond_a
    const/16 v1, 0x2e

    goto :goto_9

    .line 1276
    :cond_b
    iget-boolean v0, p3, Lorg/mozilla/javascript/regexp/RENode;->greedy:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    sub-int v0, p2, v0

    const/16 v1, 0x30

    aput-byte v1, v4, v0

    .line 1277
    :cond_c
    iget v0, p3, Lorg/mozilla/javascript/regexp/RENode;->min:I

    invoke-static {v4, p2, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result p2

    .line 1279
    iget v0, p3, Lorg/mozilla/javascript/regexp/RENode;->max:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v4, p2, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result p2

    goto :goto_7

    .line 1290
    :sswitch_8
    iget v0, p3, Lorg/mozilla/javascript/regexp/RENode;->index:I

    invoke-static {v4, p2, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    move-result p2

    .line 1291
    iget-object v0, p1, Lorg/mozilla/javascript/regexp/RECompiled;->classList:[Lorg/mozilla/javascript/regexp/RECharSet;

    iget v1, p3, Lorg/mozilla/javascript/regexp/RENode;->index:I

    new-instance v2, Lorg/mozilla/javascript/regexp/RECharSet;

    iget v3, p3, Lorg/mozilla/javascript/regexp/RENode;->bmsize:I

    iget v5, p3, Lorg/mozilla/javascript/regexp/RENode;->startIndex:I

    iget v6, p3, Lorg/mozilla/javascript/regexp/RENode;->kidlen:I

    invoke-direct {v2, v3, v5, v6}, Lorg/mozilla/javascript/regexp/RECharSet;-><init>(III)V

    aput-object v2, v0, v1

    goto/16 :goto_1

    .line 1299
    .end local p2
    .local v0, pc:I
    :cond_d
    return v0

    .line 1184
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x6 -> :sswitch_7
        0xa -> :sswitch_3
        0x14 -> :sswitch_4
        0x15 -> :sswitch_2
        0x29 -> :sswitch_5
        0x2a -> :sswitch_6
        0x32 -> :sswitch_8
    .end sparse-switch
.end method

.method private execSub(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 10
    .parameter "cx"
    .parameter "scopeObj"
    .parameter "args"
    .parameter "matchType"

    .prologue
    .line 259
    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getImpl(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/regexp/RegExpImpl;

    move-result-object v3

    .line 261
    .local v3, reImpl:Lorg/mozilla/javascript/regexp/RegExpImpl;
    array-length v0, p3

    if-nez v0, :cond_3

    .line 262
    iget-object v4, v3, Lorg/mozilla/javascript/regexp/RegExpImpl;->input:Ljava/lang/String;

    .line 263
    .local v4, str:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 264
    const-string v0, "msg.no.re.input.for"

    invoke-virtual {p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    iget-wide v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:D

    move-wide v7, v0

    .line 272
    .local v7, d:D
    :goto_1
    const-wide/16 v0, 0x0

    cmpg-double v0, v7, v0

    if-ltz v0, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    int-to-double v0, v0

    cmpg-double v0, v0, v7

    if-gez v0, :cond_5

    .line 273
    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:D

    .line 274
    const/4 v9, 0x0

    .line 284
    :cond_2
    :goto_2
    return-object v9

    .line 267
    .end local v4           #str:Ljava/lang/String;
    .end local v7           #d:D
    :cond_3
    const/4 v0, 0x0

    aget-object v0, p3, v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #str:Ljava/lang/String;
    goto :goto_0

    .line 269
    :cond_4
    const-wide/16 v0, 0x0

    move-wide v7, v0

    goto :goto_1

    .line 277
    .restart local v7       #d:D
    :cond_5
    const/4 v0, 0x1

    new-array v5, v0, [I

    const/4 v0, 0x0

    double-to-int v1, v7

    aput v1, v5, v0

    .local v5, indexp:[I
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p4

    .line 278
    invoke-virtual/range {v0 .. v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->executeRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RegExpImpl;Ljava/lang/String;[II)Ljava/lang/Object;

    move-result-object v9

    .line 279
    .local v9, rval:Ljava/lang/Object;
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 280
    if-eqz v9, :cond_6

    sget-object v0, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v9, v0, :cond_7

    :cond_6
    const-wide/16 v0, 0x0

    :goto_3
    iput-wide v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:D

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    aget v0, v5, v0

    int-to-double v0, v0

    goto :goto_3
.end method

.method private static executeREBytecode(Lorg/mozilla/javascript/regexp/REGlobalData;[CI)Z
    .locals 23
    .parameter "gData"
    .parameter "chars"
    .parameter "end"

    .prologue
    .line 1678
    const/4 v5, 0x0

    .line 1679
    .local v5, pc:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    move-object v6, v0

    move-object v0, v6

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->program:[B

    move-object/from16 v21, v0

    .line 1682
    .local v21, program:[B
    const/4 v7, 0x0

    .line 1684
    .local v7, result:Z
    const/4 v9, 0x0

    .line 1685
    .local v9, currentContinuation_pc:I
    const/16 v10, 0x35

    .line 1689
    .local v10, currentContinuation_op:I
    add-int/lit8 v6, v5, 0x1

    .end local v5           #pc:I
    .local v6, pc:I
    aget-byte v5, v21, v5

    .local v5, op:I
    move v11, v5

    .end local v5           #op:I
    .local v11, op:I
    move/from16 v22, v7

    .local v22, result:I
    move/from16 v20, v6

    .line 1694
    .end local v6           #pc:I
    .end local v7           #result:Z
    .local v20, pc:I
    :goto_0
    packed-switch v11, :pswitch_data_0

    .line 2160
    :pswitch_0
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    .end local p0
    throw p0

    .line 1696
    .restart local p0
    :pswitch_1
    const/4 v5, 0x1

    .local v5, result:Z
    move v8, v5

    .end local v22           #result:I
    .local v8, result:I
    move/from16 v7, v20

    .line 2167
    .end local v5           #result:Z
    .end local v20           #pc:I
    .local v7, pc:I
    :goto_1
    if-nez v8, :cond_35

    .line 2168
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    move-object v5, v0

    .line 2169
    .local v5, backTrackData:Lorg/mozilla/javascript/regexp/REBackTrackData;
    if-eqz v5, :cond_34

    .line 2170
    iget-object v6, v5, Lorg/mozilla/javascript/regexp/REBackTrackData;->previous:Lorg/mozilla/javascript/regexp/REBackTrackData;

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    .line 2172
    iget v6, v5, Lorg/mozilla/javascript/regexp/REBackTrackData;->lastParen:I

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/javascript/regexp/REGlobalData;->lastParen:I

    .line 2176
    iget-object v6, v5, Lorg/mozilla/javascript/regexp/REBackTrackData;->parens:[J

    if-eqz v6, :cond_0

    .line 2177
    iget-object v6, v5, Lorg/mozilla/javascript/regexp/REBackTrackData;->parens:[J

    invoke-virtual {v6}, [J->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [J

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mozilla/javascript/regexp/REGlobalData;->parens:[J

    .line 2180
    :cond_0
    iget v6, v5, Lorg/mozilla/javascript/regexp/REBackTrackData;->cp:I

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 2182
    iget-object v6, v5, Lorg/mozilla/javascript/regexp/REBackTrackData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    .line 2184
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    move-object v6, v0

    iget v10, v6, Lorg/mozilla/javascript/regexp/REProgState;->continuation_op:I

    .line 2186
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    move-object v6, v0

    iget v9, v6, Lorg/mozilla/javascript/regexp/REProgState;->continuation_pc:I

    .line 2188
    iget v6, v5, Lorg/mozilla/javascript/regexp/REBackTrackData;->continuation_pc:I

    .line 2189
    .end local v7           #pc:I
    .restart local v6       #pc:I
    iget v5, v5, Lorg/mozilla/javascript/regexp/REBackTrackData;->continuation_op:I

    .end local v11           #op:I
    .local v5, op:I
    move v11, v5

    .end local v5           #op:I
    .restart local v11       #op:I
    move/from16 v22, v8

    .end local v8           #result:I
    .restart local v22       #result:I
    move/from16 v20, v6

    .line 2190
    .end local v6           #pc:I
    .restart local v20       #pc:I
    goto :goto_0

    .line 1699
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v5, v0

    if-eqz v5, :cond_3

    .line 1700
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->multiline:Z

    move v5, v0

    if-nez v5, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    move-object v5, v0

    iget v5, v5, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_2

    .line 1702
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aget-char v5, p1, v5

    invoke-static {v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isLineTerm(C)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1703
    const/4 v5, 0x0

    .local v5, result:Z
    move v8, v5

    .end local v22           #result:I
    .restart local v8       #result:I
    move/from16 v7, v20

    .line 1704
    .end local v20           #pc:I
    .restart local v7       #pc:I
    goto :goto_1

    .line 1708
    .end local v5           #result:Z
    .end local v7           #pc:I
    .end local v8           #result:I
    .restart local v20       #pc:I
    .restart local v22       #result:I
    :cond_2
    const/4 v5, 0x0

    .restart local v5       #result:Z
    move v8, v5

    .end local v22           #result:I
    .restart local v8       #result:I
    move/from16 v7, v20

    .line 1709
    .end local v20           #pc:I
    .restart local v7       #pc:I
    goto :goto_1

    .line 1712
    .end local v5           #result:Z
    .end local v7           #pc:I
    .end local v8           #result:I
    .restart local v20       #pc:I
    .restart local v22       #result:I
    :cond_3
    const/4 v5, 0x1

    .restart local v5       #result:Z
    move v8, v5

    .end local v22           #result:I
    .restart local v8       #result:I
    move/from16 v7, v20

    .line 1713
    .end local v20           #pc:I
    .restart local v7       #pc:I
    goto/16 :goto_1

    .line 1715
    .end local v5           #result:Z
    .end local v7           #pc:I
    .end local v8           #result:I
    .restart local v20       #pc:I
    .restart local v22       #result:I
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v5, v0

    move v0, v5

    move/from16 v1, p2

    if-eq v0, v1, :cond_6

    .line 1716
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->multiline:Z

    move v5, v0

    if-nez v5, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    move-object v5, v0

    iget v5, v5, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_5

    .line 1718
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v5, v0

    aget-char v5, p1, v5

    invoke-static {v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isLineTerm(C)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1719
    const/4 v5, 0x0

    .restart local v5       #result:Z
    move v8, v5

    .end local v22           #result:I
    .restart local v8       #result:I
    move/from16 v7, v20

    .line 1720
    .end local v20           #pc:I
    .restart local v7       #pc:I
    goto/16 :goto_1

    .line 1724
    .end local v5           #result:Z
    .end local v7           #pc:I
    .end local v8           #result:I
    .restart local v20       #pc:I
    .restart local v22       #result:I
    :cond_5
    const/4 v5, 0x0

    .restart local v5       #result:Z
    move v8, v5

    .end local v22           #result:I
    .restart local v8       #result:I
    move/from16 v7, v20

    .line 1725
    .end local v20           #pc:I
    .restart local v7       #pc:I
    goto/16 :goto_1

    .line 1728
    .end local v5           #result:Z
    .end local v7           #pc:I
    .end local v8           #result:I
    .restart local v20       #pc:I
    .restart local v22       #result:I
    :cond_6
    const/4 v5, 0x1

    .restart local v5       #result:Z
    move v8, v5

    .end local v22           #result:I
    .restart local v8       #result:I
    move/from16 v7, v20

    .line 1729
    .end local v20           #pc:I
    .restart local v7       #pc:I
    goto/16 :goto_1

    .line 1731
    .end local v5           #result:Z
    .end local v7           #pc:I
    .end local v8           #result:I
    .restart local v20       #pc:I
    .restart local v22       #result:I
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v5, v0

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aget-char v5, p1, v5

    invoke-static {v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isWord(C)Z

    move-result v5

    if-nez v5, :cond_9

    :cond_7
    const/4 v5, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v6, v0

    move v0, v6

    move/from16 v1, p2

    if-ge v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v6, v0

    aget-char v6, p1, v6

    invoke-static {v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isWord(C)Z

    move-result v6

    if-nez v6, :cond_a

    :cond_8
    const/4 v6, 0x1

    :goto_3
    xor-int/2addr v5, v6

    .restart local v5       #result:Z
    move v8, v5

    .end local v22           #result:I
    .restart local v8       #result:I
    move/from16 v7, v20

    .line 1733
    .end local v20           #pc:I
    .restart local v7       #pc:I
    goto/16 :goto_1

    .line 1731
    .end local v5           #result:Z
    .end local v7           #pc:I
    .end local v8           #result:I
    .restart local v20       #pc:I
    .restart local v22       #result:I
    :cond_9
    const/4 v5, 0x0

    goto :goto_2

    :cond_a
    const/4 v6, 0x0

    goto :goto_3

    .line 1735
    :pswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v5, v0

    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aget-char v5, p1, v5

    invoke-static {v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isWord(C)Z

    move-result v5

    if-nez v5, :cond_c

    :cond_b
    const/4 v5, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v6, v0

    move v0, v6

    move/from16 v1, p2

    if-ge v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v6, v0

    aget-char v6, p1, v6

    invoke-static {v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isWord(C)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v6, 0x1

    :goto_5
    xor-int/2addr v5, v6

    .restart local v5       #result:Z
    move v8, v5

    .end local v22           #result:I
    .restart local v8       #result:I
    move/from16 v7, v20

    .line 1737
    .end local v20           #pc:I
    .restart local v7       #pc:I
    goto/16 :goto_1

    .line 1735
    .end local v5           #result:Z
    .end local v7           #pc:I
    .end local v8           #result:I
    .restart local v20       #pc:I
    .restart local v22       #result:I
    :cond_c
    const/4 v5, 0x0

    goto :goto_4

    :cond_d
    const/4 v6, 0x0

    goto :goto_5

    .line 1739
    :pswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v5, v0

    move v0, v5

    move/from16 v1, p2

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v5, v0

    aget-char v5, p1, v5

    invoke-static {v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isLineTerm(C)Z

    move-result v5

    if-nez v5, :cond_e

    const/4 v5, 0x1

    .line 1740
    .restart local v5       #result:Z
    :goto_6
    if-eqz v5, :cond_37

    .line 1741
    .end local v22           #result:I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v6, v0

    add-int/lit8 v6, v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v8, v5

    .restart local v8       #result:I
    move/from16 v7, v20

    .end local v20           #pc:I
    .restart local v7       #pc:I
    goto/16 :goto_1

    .line 1739
    .end local v5           #result:Z
    .end local v7           #pc:I
    .end local v8           #result:I
    .restart local v20       #pc:I
    .restart local v22       #result:I
    :cond_e
    const/4 v5, 0x0

    goto :goto_6

    .line 1745
    :pswitch_7
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v5, v0

    move v0, v5

    move/from16 v1, p2

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v5, v0

    aget-char v5, p1, v5

    invoke-static {v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_f

    const/4 v5, 0x1

    .line 1746
    .restart local v5       #result:Z
    :goto_7
    if-eqz v5, :cond_37

    .line 1747
    .end local v22           #result:I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v6, v0

    add-int/lit8 v6, v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v8, v5

    .restart local v8       #result:I
    move/from16 v7, v20

    .end local v20           #pc:I
    .restart local v7       #pc:I
    goto/16 :goto_1

    .line 1745
    .end local v5           #result:Z
    .end local v7           #pc:I
    .end local v8           #result:I
    .restart local v20       #pc:I
    .restart local v22       #result:I
    :cond_f
    const/4 v5, 0x0

    goto :goto_7

    .line 1751
    :pswitch_8
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v5, v0

    move v0, v5

    move/from16 v1, p2

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v5, v0

    aget-char v5, p1, v5

    invoke-static {v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_10

    const/4 v5, 0x1

    .line 1752
    .restart local v5       #result:Z
    :goto_8
    if-eqz v5, :cond_37

    .line 1753
    .end local v22           #result:I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v6, v0

    add-int/lit8 v6, v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v8, v5

    .restart local v8       #result:I
    move/from16 v7, v20

    .end local v20           #pc:I
    .restart local v7       #pc:I
    goto/16 :goto_1

    .line 1751
    .end local v5           #result:Z
    .end local v7           #pc:I
    .end local v8           #result:I
    .restart local v20       #pc:I
    .restart local v22       #result:I
    :cond_10
    const/4 v5, 0x0

    goto :goto_8

    .line 1757
    :pswitch_9
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v5, v0

    move v0, v5

    move/from16 v1, p2

    if-eq v0, v1, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v5, v0

    aget-char v5, p1, v5

    invoke-static {v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isREWhiteSpace(I)Z

    move-result v5

    if-eqz v5, :cond_11

    const/4 v5, 0x1

    .line 1758
    .restart local v5       #result:Z
    :goto_9
    if-eqz v5, :cond_37

    .line 1759
    .end local v22           #result:I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v6, v0

    add-int/lit8 v6, v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v8, v5

    .restart local v8       #result:I
    move/from16 v7, v20

    .end local v20           #pc:I
    .restart local v7       #pc:I
    goto/16 :goto_1

    .line 1757
    .end local v5           #result:Z
    .end local v7           #pc:I
    .end local v8           #result:I
    .restart local v20       #pc:I
    .restart local v22       #result:I
    :cond_11
    const/4 v5, 0x0

    goto :goto_9

    .line 1763
    :pswitch_a
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v5, v0

    move v0, v5

    move/from16 v1, p2

    if-eq v0, v1, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v5, v0

    aget-char v5, p1, v5

    invoke-static {v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isREWhiteSpace(I)Z

    move-result v5

    if-nez v5, :cond_12

    const/4 v5, 0x1

    .line 1764
    .restart local v5       #result:Z
    :goto_a
    if-eqz v5, :cond_37

    .line 1765
    .end local v22           #result:I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v6, v0

    add-int/lit8 v6, v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v8, v5

    .restart local v8       #result:I
    move/from16 v7, v20

    .end local v20           #pc:I
    .restart local v7       #pc:I
    goto/16 :goto_1

    .line 1763
    .end local v5           #result:Z
    .end local v7           #pc:I
    .end local v8           #result:I
    .restart local v20       #pc:I
    .restart local v22       #result:I
    :cond_12
    const/4 v5, 0x0

    goto :goto_a

    .line 1769
    :pswitch_b
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v5, v0

    move v0, v5

    move/from16 v1, p2

    if-eq v0, v1, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v5, v0

    aget-char v5, p1, v5

    invoke-static {v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isWord(C)Z

    move-result v5

    if-eqz v5, :cond_13

    const/4 v5, 0x1

    .line 1770
    .restart local v5       #result:Z
    :goto_b
    if-eqz v5, :cond_37

    .line 1771
    .end local v22           #result:I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v6, v0

    add-int/lit8 v6, v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v8, v5

    .restart local v8       #result:I
    move/from16 v7, v20

    .end local v20           #pc:I
    .restart local v7       #pc:I
    goto/16 :goto_1

    .line 1769
    .end local v5           #result:Z
    .end local v7           #pc:I
    .end local v8           #result:I
    .restart local v20       #pc:I
    .restart local v22       #result:I
    :cond_13
    const/4 v5, 0x0

    goto :goto_b

    .line 1775
    :pswitch_c
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v5, v0

    move v0, v5

    move/from16 v1, p2

    if-eq v0, v1, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v5, v0

    aget-char v5, p1, v5

    invoke-static {v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isWord(C)Z

    move-result v5

    if-nez v5, :cond_14

    const/4 v5, 0x1

    .line 1776
    .restart local v5       #result:Z
    :goto_c
    if-eqz v5, :cond_37

    .line 1777
    .end local v22           #result:I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v6, v0

    add-int/lit8 v6, v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v8, v5

    .restart local v8       #result:I
    move/from16 v7, v20

    .end local v20           #pc:I
    .restart local v7       #pc:I
    goto/16 :goto_1

    .line 1775
    .end local v5           #result:Z
    .end local v7           #pc:I
    .end local v8           #result:I
    .restart local v20       #pc:I
    .restart local v22       #result:I
    :cond_14
    const/4 v5, 0x0

    goto :goto_c

    .line 1782
    :pswitch_d
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v6

    .line 1783
    .local v6, offset:I
    add-int/lit8 v7, v20, 0x2

    .line 1784
    .end local v20           #pc:I
    .restart local v7       #pc:I
    move-object/from16 v0, v21

    move v1, v7

    invoke-static {v0, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v5

    .line 1785
    .local v5, length:I
    add-int/lit8 v7, v7, 0x2

    .line 1786
    move-object/from16 v0, p0

    move v1, v6

    move v2, v5

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->flatNMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;II[CI)Z

    move-result v5

    .local v5, result:Z
    move v8, v5

    .line 1788
    .end local v22           #result:I
    .restart local v8       #result:I
    goto/16 :goto_1

    .line 1791
    .end local v5           #result:Z
    .end local v6           #offset:I
    .end local v7           #pc:I
    .end local v8           #result:I
    .restart local v20       #pc:I
    .restart local v22       #result:I
    :pswitch_e
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v6

    .line 1792
    .restart local v6       #offset:I
    add-int/lit8 v7, v20, 0x2

    .line 1793
    .end local v20           #pc:I
    .restart local v7       #pc:I
    move-object/from16 v0, v21

    move v1, v7

    invoke-static {v0, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v5

    .line 1794
    .local v5, length:I
    add-int/lit8 v7, v7, 0x2

    .line 1795
    move-object/from16 v0, p0

    move v1, v6

    move v2, v5

    move-object/from16 v3, p1

    move/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->flatNIMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;II[CI)Z

    move-result v5

    .local v5, result:Z
    move v8, v5

    .line 1797
    .end local v22           #result:I
    .restart local v8       #result:I
    goto/16 :goto_1

    .line 1800
    .end local v5           #result:Z
    .end local v6           #offset:I
    .end local v7           #pc:I
    .end local v8           #result:I
    .restart local v20       #pc:I
    .restart local v22       #result:I
    :pswitch_f
    add-int/lit8 v6, v20, 0x1

    .end local v20           #pc:I
    .local v6, pc:I
    aget-byte v5, v21, v20

    and-int/lit16 v5, v5, 0xff

    int-to-char v5, v5

    .line 1801
    .local v5, matchCh:C
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v7, v0

    move v0, v7

    move/from16 v1, p2

    if-eq v0, v1, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v7, v0

    aget-char v7, p1, v7

    if-ne v7, v5, :cond_16

    const/4 v5, 0x1

    .line 1802
    .local v5, result:Z
    :goto_d
    if-eqz v5, :cond_15

    .line 1803
    .end local v22           #result:I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v7, v0

    add-int/lit8 v7, v7, 0x1

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    :cond_15
    move v8, v5

    .restart local v8       #result:I
    move v7, v6

    .line 1806
    .end local v6           #pc:I
    .restart local v7       #pc:I
    goto/16 :goto_1

    .line 1801
    .end local v7           #pc:I
    .end local v8           #result:I
    .local v5, matchCh:C
    .restart local v6       #pc:I
    .restart local v22       #result:I
    :cond_16
    const/4 v5, 0x0

    goto :goto_d

    .line 1809
    .end local v5           #matchCh:C
    .end local v6           #pc:I
    .restart local v20       #pc:I
    :pswitch_10
    add-int/lit8 v6, v20, 0x1

    .end local v20           #pc:I
    .restart local v6       #pc:I
    aget-byte v5, v21, v20

    and-int/lit16 v5, v5, 0xff

    int-to-char v5, v5

    .line 1810
    .restart local v5       #matchCh:C
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v7, v0

    move v0, v7

    move/from16 v1, p2

    if-eq v0, v1, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v7, v0

    aget-char v7, p1, v7

    invoke-static {v7}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v7

    invoke-static {v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v5

    .end local v5           #matchCh:C
    if-ne v7, v5, :cond_18

    const/4 v5, 0x1

    .line 1812
    .local v5, result:Z
    :goto_e
    if-eqz v5, :cond_17

    .line 1813
    .end local v22           #result:I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v7, v0

    add-int/lit8 v7, v7, 0x1

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    :cond_17
    move v8, v5

    .restart local v8       #result:I
    move v7, v6

    .line 1816
    .end local v6           #pc:I
    .restart local v7       #pc:I
    goto/16 :goto_1

    .line 1810
    .end local v5           #result:Z
    .end local v7           #pc:I
    .end local v8           #result:I
    .restart local v6       #pc:I
    .restart local v22       #result:I
    :cond_18
    const/4 v5, 0x0

    goto :goto_e

    .line 1819
    .end local v6           #pc:I
    .restart local v20       #pc:I
    :pswitch_11
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v5

    int-to-char v5, v5

    .line 1820
    .local v5, matchCh:C
    add-int/lit8 v6, v20, 0x2

    .line 1821
    .end local v20           #pc:I
    .restart local v6       #pc:I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v7, v0

    move v0, v7

    move/from16 v1, p2

    if-eq v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v7, v0

    aget-char v7, p1, v7

    if-ne v7, v5, :cond_1a

    const/4 v5, 0x1

    .line 1822
    .local v5, result:Z
    :goto_f
    if-eqz v5, :cond_19

    .line 1823
    .end local v22           #result:I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v7, v0

    add-int/lit8 v7, v7, 0x1

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    :cond_19
    move v8, v5

    .restart local v8       #result:I
    move v7, v6

    .line 1826
    .end local v6           #pc:I
    .restart local v7       #pc:I
    goto/16 :goto_1

    .line 1821
    .end local v7           #pc:I
    .end local v8           #result:I
    .local v5, matchCh:C
    .restart local v6       #pc:I
    .restart local v22       #result:I
    :cond_1a
    const/4 v5, 0x0

    goto :goto_f

    .line 1829
    .end local v5           #matchCh:C
    .end local v6           #pc:I
    .restart local v20       #pc:I
    :pswitch_12
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v5

    int-to-char v5, v5

    .line 1830
    .restart local v5       #matchCh:C
    add-int/lit8 v6, v20, 0x2

    .line 1831
    .end local v20           #pc:I
    .restart local v6       #pc:I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v7, v0

    move v0, v7

    move/from16 v1, p2

    if-eq v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v7, v0

    aget-char v7, p1, v7

    invoke-static {v7}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v7

    invoke-static {v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v5

    .end local v5           #matchCh:C
    if-ne v7, v5, :cond_1c

    const/4 v5, 0x1

    .line 1833
    .local v5, result:Z
    :goto_10
    if-eqz v5, :cond_1b

    .line 1834
    .end local v22           #result:I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v7, v0

    add-int/lit8 v7, v7, 0x1

    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    :cond_1b
    move v8, v5

    .restart local v8       #result:I
    move v7, v6

    .line 1837
    .end local v6           #pc:I
    .restart local v7       #pc:I
    goto/16 :goto_1

    .line 1831
    .end local v5           #result:Z
    .end local v7           #pc:I
    .end local v8           #result:I
    .restart local v6       #pc:I
    .restart local v22       #result:I
    :cond_1c
    const/4 v5, 0x0

    goto :goto_10

    .line 1842
    .end local v6           #pc:I
    .restart local v20       #pc:I
    :pswitch_13
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v10}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushProgState(Lorg/mozilla/javascript/regexp/REGlobalData;IILorg/mozilla/javascript/regexp/REBackTrackData;II)V

    .line 1845
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v5

    add-int v5, v5, v20

    .line 1846
    .local v5, nextpc:I
    add-int/lit8 v6, v5, 0x1

    .end local v5           #nextpc:I
    .local v6, nextpc:I
    aget-byte v5, v21, v5

    .line 1847
    .local v5, nextop:B
    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BI)V

    .line 1848
    add-int/lit8 v5, v20, 0x2

    .line 1849
    .end local v20           #pc:I
    .local v5, pc:I
    add-int/lit8 v6, v5, 0x1

    .end local v5           #pc:I
    .local v6, pc:I
    aget-byte v5, v21, v5

    .end local v11           #op:I
    .local v5, op:I
    move v11, v5

    .end local v5           #op:I
    .restart local v11       #op:I
    move/from16 v20, v6

    .line 1851
    .end local v6           #pc:I
    .restart local v20       #pc:I
    goto/16 :goto_0

    .line 1856
    :pswitch_14
    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->popProgState(Lorg/mozilla/javascript/regexp/REGlobalData;)Lorg/mozilla/javascript/regexp/REProgState;

    move-result-object v5

    .line 1857
    .local v5, state:Lorg/mozilla/javascript/regexp/REProgState;
    iget v9, v5, Lorg/mozilla/javascript/regexp/REProgState;->continuation_pc:I

    .line 1858
    iget v10, v5, Lorg/mozilla/javascript/regexp/REProgState;->continuation_op:I

    .line 1859
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v5

    .line 1860
    .local v5, offset:I
    add-int v5, v5, v20

    .line 1861
    .end local v20           #pc:I
    .local v5, pc:I
    add-int/lit8 v6, v5, 0x1

    .end local v5           #pc:I
    .restart local v6       #pc:I
    aget-byte v5, v21, v5

    .end local v11           #op:I
    .local v5, op:I
    move v11, v5

    .end local v5           #op:I
    .restart local v11       #op:I
    move/from16 v20, v6

    .line 1863
    .end local v6           #pc:I
    .restart local v20       #pc:I
    goto/16 :goto_0

    .line 1868
    :pswitch_15
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v5

    .line 1869
    .local v5, parenIndex:I
    add-int/lit8 v6, v20, 0x2

    .line 1870
    .end local v20           #pc:I
    .restart local v6       #pc:I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v7, v0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/javascript/regexp/REGlobalData;->set_parens(III)V

    .line 1871
    add-int/lit8 v7, v6, 0x1

    .end local v6           #pc:I
    .restart local v7       #pc:I
    aget-byte v5, v21, v6

    .end local v11           #op:I
    .local v5, op:I
    move v11, v5

    .end local v5           #op:I
    .restart local v11       #op:I
    move/from16 v20, v7

    .line 1873
    .end local v7           #pc:I
    .restart local v20       #pc:I
    goto/16 :goto_0

    .line 1877
    :pswitch_16
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v6

    .line 1878
    .local v6, parenIndex:I
    add-int/lit8 v7, v20, 0x2

    .line 1879
    .end local v20           #pc:I
    .restart local v7       #pc:I
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/regexp/REGlobalData;->parens_index(I)I

    move-result v5

    .line 1880
    .local v5, cap_index:I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v8, v0

    sub-int/2addr v8, v5

    move-object/from16 v0, p0

    move v1, v6

    move v2, v5

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/javascript/regexp/REGlobalData;->set_parens(III)V

    .line 1882
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->lastParen:I

    move v5, v0

    .end local v5           #cap_index:I
    if-le v6, v5, :cond_1d

    .line 1883
    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/javascript/regexp/REGlobalData;->lastParen:I

    .line 1884
    :cond_1d
    add-int/lit8 v6, v7, 0x1

    .end local v7           #pc:I
    .local v6, pc:I
    aget-byte v5, v21, v7

    .end local v11           #op:I
    .local v5, op:I
    move v11, v5

    .end local v5           #op:I
    .restart local v11       #op:I
    move/from16 v20, v6

    .line 1886
    .end local v6           #pc:I
    .restart local v20       #pc:I
    goto/16 :goto_0

    .line 1889
    :pswitch_17
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v5

    .line 1890
    .local v5, parenIndex:I
    add-int/lit8 v6, v20, 0x2

    .line 1891
    .end local v20           #pc:I
    .restart local v6       #pc:I
    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->backrefMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;I[CI)Z

    move-result v5

    .local v5, result:Z
    move v8, v5

    .end local v22           #result:I
    .restart local v8       #result:I
    move v7, v6

    .line 1893
    .end local v6           #pc:I
    .restart local v7       #pc:I
    goto/16 :goto_1

    .line 1897
    .end local v5           #result:Z
    .end local v7           #pc:I
    .end local v8           #result:I
    .restart local v20       #pc:I
    .restart local v22       #result:I
    :pswitch_18
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v5

    .line 1898
    .local v5, index:I
    add-int/lit8 v6, v20, 0x2

    .line 1899
    .end local v20           #pc:I
    .restart local v6       #pc:I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v7, v0

    move v0, v7

    move/from16 v1, p2

    if-eq v0, v1, :cond_1e

    .line 1900
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    move-object v7, v0

    iget-object v7, v7, Lorg/mozilla/javascript/regexp/RECompiled;->classList:[Lorg/mozilla/javascript/regexp/RECharSet;

    aget-object v5, v7, v5

    .end local v5           #index:I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v7, v0

    aget-char v7, p1, v7

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v7

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->classMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECharSet;C)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 1903
    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 1904
    const/4 v5, 0x1

    .local v5, result:Z
    move v8, v5

    .end local v22           #result:I
    .restart local v8       #result:I
    move v7, v6

    .line 1905
    .end local v6           #pc:I
    .restart local v7       #pc:I
    goto/16 :goto_1

    .line 1908
    .end local v5           #result:Z
    .end local v7           #pc:I
    .end local v8           #result:I
    .restart local v6       #pc:I
    .restart local v22       #result:I
    :cond_1e
    const/4 v5, 0x0

    .restart local v5       #result:Z
    move v8, v5

    .end local v22           #result:I
    .restart local v8       #result:I
    move v7, v6

    .line 1910
    .end local v6           #pc:I
    .restart local v7       #pc:I
    goto/16 :goto_1

    .line 1916
    .end local v5           #result:Z
    .end local v7           #pc:I
    .end local v8           #result:I
    .restart local v20       #pc:I
    .restart local v22       #result:I
    :pswitch_19
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    move-object v8, v0

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v10}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushProgState(Lorg/mozilla/javascript/regexp/REGlobalData;IILorg/mozilla/javascript/regexp/REBackTrackData;II)V

    .line 1919
    const/16 v5, 0x29

    if-ne v11, v5, :cond_1f

    .line 1920
    const/16 v5, 0x2b

    .line 1924
    .local v5, testOp:B
    :goto_11
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v6

    add-int v6, v6, v20

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BI)V

    .line 1926
    add-int/lit8 v5, v20, 0x2

    .line 1927
    .end local v20           #pc:I
    .local v5, pc:I
    add-int/lit8 v6, v5, 0x1

    .end local v5           #pc:I
    .restart local v6       #pc:I
    aget-byte v5, v21, v5

    .end local v11           #op:I
    .local v5, op:I
    move v11, v5

    .end local v5           #op:I
    .restart local v11       #op:I
    move/from16 v20, v6

    .line 1929
    .end local v6           #pc:I
    .restart local v20       #pc:I
    goto/16 :goto_0

    .line 1922
    :cond_1f
    const/16 v5, 0x2c

    .local v5, testOp:B
    goto :goto_11

    .line 1934
    .end local v5           #testOp:B
    :pswitch_1a
    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->popProgState(Lorg/mozilla/javascript/regexp/REGlobalData;)Lorg/mozilla/javascript/regexp/REProgState;

    move-result-object v5

    .line 1935
    .local v5, state:Lorg/mozilla/javascript/regexp/REProgState;
    iget v6, v5, Lorg/mozilla/javascript/regexp/REProgState;->index:I

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 1936
    iget-object v6, v5, Lorg/mozilla/javascript/regexp/REProgState;->backTrack:Lorg/mozilla/javascript/regexp/REBackTrackData;

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    .line 1937
    iget v9, v5, Lorg/mozilla/javascript/regexp/REProgState;->continuation_pc:I

    .line 1938
    iget v10, v5, Lorg/mozilla/javascript/regexp/REProgState;->continuation_op:I

    .line 1939
    if-eqz v22, :cond_21

    .line 1940
    const/16 v5, 0x2b

    if-ne v11, v5, :cond_20

    .line 1941
    .end local v5           #state:Lorg/mozilla/javascript/regexp/REProgState;
    const/4 v5, 0x1

    .end local v22           #result:I
    :goto_12
    move v8, v5

    .restart local v8       #result:I
    move/from16 v7, v20

    .line 1953
    .end local v20           #pc:I
    .restart local v7       #pc:I
    goto/16 :goto_1

    .line 1943
    .end local v7           #pc:I
    .end local v8           #result:I
    .restart local v20       #pc:I
    .restart local v22       #result:I
    :cond_20
    const/4 v5, 0x0

    .local v5, result:Z
    goto :goto_12

    .line 1946
    .local v5, state:Lorg/mozilla/javascript/regexp/REProgState;
    :cond_21
    const/16 v5, 0x2b

    if-ne v11, v5, :cond_22

    .end local v5           #state:Lorg/mozilla/javascript/regexp/REProgState;
    move/from16 v5, v22

    .end local v22           #result:I
    .local v5, result:I
    goto :goto_12

    .line 1949
    .end local v5           #result:I
    .restart local v22       #result:I
    :cond_22
    const/4 v5, 0x1

    .local v5, result:Z
    goto :goto_12

    .line 1965
    .end local v5           #result:Z
    :pswitch_1b
    const/4 v5, 0x0

    .line 1966
    .local v5, greedy:Z
    sparse-switch v11, :sswitch_data_0

    .line 1999
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    .end local p0
    throw p0

    .line 1968
    .restart local p0
    :sswitch_0
    const/4 v5, 0x1

    .line 1971
    :sswitch_1
    const/4 v6, 0x0

    .line 1972
    .local v6, min:I
    const/4 v7, -0x1

    .local v7, max:I
    move v11, v5

    .end local v5           #greedy:Z
    .local v11, greedy:Z
    move/from16 v12, v20

    .line 2001
    .end local v20           #pc:I
    .local v12, pc:I
    :goto_13
    const/4 v8, 0x0

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v10}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushProgState(Lorg/mozilla/javascript/regexp/REGlobalData;IILorg/mozilla/javascript/regexp/REBackTrackData;II)V

    .line 2004
    if-eqz v11, :cond_23

    .line 2005
    const/16 v10, 0x33

    .line 2006
    move v9, v12

    .line 2007
    const/16 v5, 0x33

    move-object/from16 v0, p0

    move v1, v5

    move v2, v12

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BI)V

    .line 2009
    add-int/lit8 v5, v12, 0x6

    .line 2010
    .end local v12           #pc:I
    .local v5, pc:I
    add-int/lit8 v6, v5, 0x1

    .end local v5           #pc:I
    .local v6, pc:I
    aget-byte v5, v21, v5

    .local v5, op:I
    :goto_14
    move v11, v5

    .end local v5           #op:I
    .local v11, op:I
    move/from16 v20, v6

    .line 2027
    .end local v6           #pc:I
    .restart local v20       #pc:I
    goto/16 :goto_0

    .line 1975
    .end local v7           #max:I
    .local v5, greedy:Z
    :sswitch_2
    const/4 v5, 0x1

    .line 1978
    :sswitch_3
    const/4 v6, 0x1

    .line 1979
    .local v6, min:I
    const/4 v7, -0x1

    .restart local v7       #max:I
    move v11, v5

    .end local v5           #greedy:Z
    .local v11, greedy:Z
    move/from16 v12, v20

    .line 1980
    .end local v20           #pc:I
    .restart local v12       #pc:I
    goto :goto_13

    .line 1982
    .end local v6           #min:I
    .end local v7           #max:I
    .end local v12           #pc:I
    .restart local v5       #greedy:Z
    .local v11, op:I
    .restart local v20       #pc:I
    :sswitch_4
    const/4 v5, 0x1

    .line 1985
    :sswitch_5
    const/4 v6, 0x0

    .line 1986
    .restart local v6       #min:I
    const/4 v7, 0x1

    .restart local v7       #max:I
    move v11, v5

    .end local v5           #greedy:Z
    .local v11, greedy:Z
    move/from16 v12, v20

    .line 1987
    .end local v20           #pc:I
    .restart local v12       #pc:I
    goto :goto_13

    .line 1989
    .end local v6           #min:I
    .end local v7           #max:I
    .end local v12           #pc:I
    .restart local v5       #greedy:Z
    .local v11, op:I
    .restart local v20       #pc:I
    :sswitch_6
    const/4 v5, 0x1

    .line 1992
    :sswitch_7
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v6

    .line 1993
    .restart local v6       #min:I
    add-int/lit8 v8, v20, 0x2

    .line 1995
    .end local v20           #pc:I
    .local v8, pc:I
    move-object/from16 v0, v21

    move v1, v8

    invoke-static {v0, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v7

    const/4 v11, 0x1

    sub-int/2addr v7, v11

    .line 1996
    .restart local v7       #max:I
    add-int/lit8 v8, v8, 0x2

    move v11, v5

    .end local v5           #greedy:Z
    .local v11, greedy:Z
    move v12, v8

    .line 1997
    .end local v8           #pc:I
    .restart local v12       #pc:I
    goto :goto_13

    .line 2012
    :cond_23
    if-eqz v6, :cond_24

    .line 2013
    const/16 v10, 0x34

    .line 2014
    move v9, v12

    .line 2016
    add-int/lit8 v5, v12, 0x6

    .line 2017
    .end local v12           #pc:I
    .local v5, pc:I
    add-int/lit8 v6, v5, 0x1

    .end local v5           #pc:I
    .local v6, pc:I
    aget-byte v5, v21, v5

    .local v5, op:I
    goto :goto_14

    .line 2019
    .end local v5           #op:I
    .local v6, min:I
    .restart local v12       #pc:I
    :cond_24
    const/16 v5, 0x34

    move-object/from16 v0, p0

    move v1, v5

    move v2, v12

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BI)V

    .line 2020
    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->popProgState(Lorg/mozilla/javascript/regexp/REGlobalData;)Lorg/mozilla/javascript/regexp/REProgState;

    .line 2021
    add-int/lit8 v5, v12, 0x4

    .line 2022
    .end local v12           #pc:I
    .local v5, pc:I
    move-object/from16 v0, v21

    move v1, v5

    invoke-static {v0, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v6

    .end local v6           #min:I
    add-int/2addr v5, v6

    .line 2023
    add-int/lit8 v6, v5, 0x1

    .end local v5           #pc:I
    .local v6, pc:I
    aget-byte v5, v21, v5

    .local v5, op:I
    goto :goto_14

    .line 2031
    .end local v5           #op:I
    .end local v6           #pc:I
    .end local v7           #max:I
    .local v11, op:I
    .restart local v20       #pc:I
    :pswitch_1c
    move v6, v9

    .line 2032
    .end local v20           #pc:I
    .restart local v6       #pc:I
    move v5, v10

    .end local v11           #op:I
    .restart local v5       #op:I
    move v11, v5

    .end local v5           #op:I
    .restart local v11       #op:I
    move/from16 v20, v6

    .line 2033
    .end local v6           #pc:I
    .restart local v20       #pc:I
    goto/16 :goto_0

    .line 2037
    :pswitch_1d
    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->popProgState(Lorg/mozilla/javascript/regexp/REGlobalData;)Lorg/mozilla/javascript/regexp/REProgState;

    move-result-object v7

    .line 2038
    .local v7, state:Lorg/mozilla/javascript/regexp/REProgState;
    if-nez v22, :cond_25

    .line 2043
    iget v5, v7, Lorg/mozilla/javascript/regexp/REProgState;->min:I

    if-nez v5, :cond_36

    .line 2044
    const/4 v5, 0x1

    .local v5, result:Z
    move v6, v5

    .line 2045
    .end local v5           #result:Z
    .end local v22           #result:I
    .local v6, result:I
    :goto_15
    iget v9, v7, Lorg/mozilla/javascript/regexp/REProgState;->continuation_pc:I

    .line 2046
    iget v10, v7, Lorg/mozilla/javascript/regexp/REProgState;->continuation_op:I

    .line 2047
    add-int/lit8 v5, v20, 0x4

    .line 2048
    .end local v20           #pc:I
    .local v5, pc:I
    move-object/from16 v0, v21

    move v1, v5

    invoke-static {v0, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v7

    .end local v7           #state:Lorg/mozilla/javascript/regexp/REProgState;
    add-int/2addr v5, v7

    move v8, v6

    .end local v6           #result:I
    .local v8, result:I
    move v7, v5

    .line 2049
    .end local v5           #pc:I
    .local v7, pc:I
    goto/16 :goto_1

    .line 2052
    .end local v8           #result:I
    .local v7, state:Lorg/mozilla/javascript/regexp/REProgState;
    .restart local v20       #pc:I
    .restart local v22       #result:I
    :cond_25
    iget v5, v7, Lorg/mozilla/javascript/regexp/REProgState;->min:I

    if-nez v5, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v5, v0

    iget v6, v7, Lorg/mozilla/javascript/regexp/REProgState;->index:I

    if-ne v5, v6, :cond_26

    .line 2054
    const/4 v6, 0x0

    .line 2055
    .local v6, result:Z
    iget v9, v7, Lorg/mozilla/javascript/regexp/REProgState;->continuation_pc:I

    .line 2056
    .end local v22           #result:I
    iget v10, v7, Lorg/mozilla/javascript/regexp/REProgState;->continuation_op:I

    .line 2057
    add-int/lit8 v5, v20, 0x4

    .line 2058
    .end local v20           #pc:I
    .restart local v5       #pc:I
    move-object/from16 v0, v21

    move v1, v5

    invoke-static {v0, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v7

    .end local v7           #state:Lorg/mozilla/javascript/regexp/REProgState;
    add-int/2addr v5, v7

    move v8, v6

    .restart local v8       #result:I
    move v7, v5

    .line 2059
    .end local v5           #pc:I
    .local v7, pc:I
    goto/16 :goto_1

    .line 2061
    .end local v6           #result:Z
    .end local v8           #result:I
    .local v7, state:Lorg/mozilla/javascript/regexp/REProgState;
    .restart local v20       #pc:I
    .restart local v22       #result:I
    :cond_26
    iget v12, v7, Lorg/mozilla/javascript/regexp/REProgState;->min:I

    .local v12, new_min:I
    iget v13, v7, Lorg/mozilla/javascript/regexp/REProgState;->max:I

    .line 2062
    .local v13, new_max:I
    if-eqz v12, :cond_27

    add-int/lit8 v12, v12, -0x1

    .line 2063
    :cond_27
    const/4 v5, -0x1

    if-eq v13, v5, :cond_28

    add-int/lit8 v13, v13, -0x1

    .line 2064
    :cond_28
    if-nez v13, :cond_29

    .line 2065
    const/4 v6, 0x1

    .line 2066
    .restart local v6       #result:Z
    iget v9, v7, Lorg/mozilla/javascript/regexp/REProgState;->continuation_pc:I

    .line 2067
    .end local v22           #result:I
    iget v10, v7, Lorg/mozilla/javascript/regexp/REProgState;->continuation_op:I

    .line 2068
    add-int/lit8 v5, v20, 0x4

    .line 2069
    .end local v20           #pc:I
    .restart local v5       #pc:I
    move-object/from16 v0, v21

    move v1, v5

    invoke-static {v0, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v7

    .end local v7           #state:Lorg/mozilla/javascript/regexp/REProgState;
    add-int/2addr v5, v7

    move v8, v6

    .restart local v8       #result:I
    move v7, v5

    .line 2070
    .end local v5           #pc:I
    .local v7, pc:I
    goto/16 :goto_1

    .line 2072
    .end local v6           #result:Z
    .end local v8           #result:I
    .local v7, state:Lorg/mozilla/javascript/regexp/REProgState;
    .restart local v20       #pc:I
    .restart local v22       #result:I
    :cond_29
    const/4 v14, 0x0

    iget v15, v7, Lorg/mozilla/javascript/regexp/REProgState;->continuation_pc:I

    move-object v0, v7

    iget v0, v0, Lorg/mozilla/javascript/regexp/REProgState;->continuation_op:I

    move/from16 v16, v0

    move-object/from16 v11, p0

    invoke-static/range {v11 .. v16}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushProgState(Lorg/mozilla/javascript/regexp/REGlobalData;IILorg/mozilla/javascript/regexp/REBackTrackData;II)V

    .line 2075
    .end local v11           #op:I
    const/16 v10, 0x33

    .line 2076
    move/from16 v9, v20

    .line 2077
    const/16 v5, 0x33

    move-object/from16 v0, p0

    move v1, v5

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BI)V

    .line 2078
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v7

    .line 2079
    .local v7, parenCount:I
    add-int/lit8 v5, v20, 0x2

    .line 2080
    .end local v20           #pc:I
    .restart local v5       #pc:I
    move-object/from16 v0, v21

    move v1, v5

    invoke-static {v0, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v8

    .line 2081
    .local v8, parenIndex:I
    add-int/lit8 v5, v5, 0x4

    .line 2082
    add-int/lit8 v11, v5, 0x1

    .end local v5           #pc:I
    .local v11, pc:I
    aget-byte v6, v21, v5

    .line 2083
    .local v6, op:I
    const/4 v5, 0x0

    .end local v12           #new_min:I
    .end local v13           #new_max:I
    .local v5, k:I
    :goto_16
    if-ge v5, v7, :cond_2a

    .line 2084
    add-int v12, v8, v5

    const/4 v13, -0x1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/javascript/regexp/REGlobalData;->set_parens(III)V

    .line 2083
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    :cond_2a
    move/from16 v20, v11

    .end local v11           #pc:I
    .restart local v20       #pc:I
    move v11, v6

    .line 2088
    .end local v6           #op:I
    .local v11, op:I
    goto/16 :goto_0

    .line 2092
    .end local v5           #k:I
    .end local v7           #parenCount:I
    .end local v8           #parenIndex:I
    :pswitch_1e
    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->popProgState(Lorg/mozilla/javascript/regexp/REGlobalData;)Lorg/mozilla/javascript/regexp/REProgState;

    move-result-object v6

    .line 2093
    .local v6, state:Lorg/mozilla/javascript/regexp/REProgState;
    if-nez v22, :cond_2e

    .line 2097
    iget v5, v6, Lorg/mozilla/javascript/regexp/REProgState;->max:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_2b

    iget v5, v6, Lorg/mozilla/javascript/regexp/REProgState;->max:I

    if-lez v5, :cond_2d

    .line 2098
    :cond_2b
    iget v15, v6, Lorg/mozilla/javascript/regexp/REProgState;->min:I

    move-object v0, v6

    iget v0, v0, Lorg/mozilla/javascript/regexp/REProgState;->max:I

    move/from16 v16, v0

    const/16 v17, 0x0

    move-object v0, v6

    iget v0, v0, Lorg/mozilla/javascript/regexp/REProgState;->continuation_pc:I

    move/from16 v18, v0

    move-object v0, v6

    iget v0, v0, Lorg/mozilla/javascript/regexp/REProgState;->continuation_op:I

    move/from16 v19, v0

    move-object/from16 v14, p0

    invoke-static/range {v14 .. v19}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushProgState(Lorg/mozilla/javascript/regexp/REGlobalData;IILorg/mozilla/javascript/regexp/REBackTrackData;II)V

    .line 2101
    const/16 v10, 0x34

    .line 2102
    move/from16 v9, v20

    .line 2103
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v6

    .line 2104
    .local v6, parenCount:I
    add-int/lit8 v5, v20, 0x2

    .line 2105
    .end local v20           #pc:I
    .local v5, pc:I
    move-object/from16 v0, v21

    move v1, v5

    invoke-static {v0, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v7

    .line 2106
    .local v7, parenIndex:I
    add-int/lit8 v8, v5, 0x4

    .line 2107
    .end local v5           #pc:I
    .local v8, pc:I
    const/4 v5, 0x0

    .end local v11           #op:I
    .local v5, k:I
    :goto_17
    if-ge v5, v6, :cond_2c

    .line 2108
    add-int v11, v7, v5

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move v1, v11

    move v2, v12

    move v3, v13

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/javascript/regexp/REGlobalData;->set_parens(III)V

    .line 2107
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 2110
    :cond_2c
    add-int/lit8 v6, v8, 0x1

    .end local v8           #pc:I
    .local v6, pc:I
    aget-byte v5, v21, v8

    .local v5, op:I
    move v11, v5

    .end local v5           #op:I
    .restart local v11       #op:I
    move/from16 v20, v6

    .line 2111
    .end local v6           #pc:I
    .restart local v20       #pc:I
    goto/16 :goto_0

    .line 2114
    .end local v7           #parenIndex:I
    .local v6, state:Lorg/mozilla/javascript/regexp/REProgState;
    :cond_2d
    iget v9, v6, Lorg/mozilla/javascript/regexp/REProgState;->continuation_pc:I

    .line 2115
    iget v10, v6, Lorg/mozilla/javascript/regexp/REProgState;->continuation_op:I

    move/from16 v8, v22

    .end local v22           #result:I
    .local v8, result:I
    move/from16 v7, v20

    .line 2116
    .end local v20           #pc:I
    .local v7, pc:I
    goto/16 :goto_1

    .line 2119
    .end local v7           #pc:I
    .end local v8           #result:I
    .restart local v20       #pc:I
    .restart local v22       #result:I
    :cond_2e
    iget v5, v6, Lorg/mozilla/javascript/regexp/REProgState;->min:I

    if-nez v5, :cond_2f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v5, v0

    iget v7, v6, Lorg/mozilla/javascript/regexp/REProgState;->index:I

    if-ne v5, v7, :cond_2f

    .line 2121
    const/4 v5, 0x0

    .line 2122
    .local v5, result:Z
    iget v9, v6, Lorg/mozilla/javascript/regexp/REProgState;->continuation_pc:I

    .line 2123
    .end local v22           #result:I
    iget v10, v6, Lorg/mozilla/javascript/regexp/REProgState;->continuation_op:I

    move v8, v5

    .restart local v8       #result:I
    move/from16 v7, v20

    .line 2124
    .end local v20           #pc:I
    .restart local v7       #pc:I
    goto/16 :goto_1

    .line 2126
    .end local v5           #result:Z
    .end local v7           #pc:I
    .end local v8           #result:I
    .restart local v20       #pc:I
    .restart local v22       #result:I
    :cond_2f
    iget v12, v6, Lorg/mozilla/javascript/regexp/REProgState;->min:I

    .restart local v12       #new_min:I
    iget v13, v6, Lorg/mozilla/javascript/regexp/REProgState;->max:I

    .line 2127
    .restart local v13       #new_max:I
    if-eqz v12, :cond_30

    add-int/lit8 v12, v12, -0x1

    .line 2128
    :cond_30
    const/4 v5, -0x1

    if-eq v13, v5, :cond_31

    add-int/lit8 v13, v13, -0x1

    .line 2129
    :cond_31
    const/4 v14, 0x0

    iget v15, v6, Lorg/mozilla/javascript/regexp/REProgState;->continuation_pc:I

    move-object v0, v6

    iget v0, v0, Lorg/mozilla/javascript/regexp/REProgState;->continuation_op:I

    move/from16 v16, v0

    move-object/from16 v11, p0

    invoke-static/range {v11 .. v16}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushProgState(Lorg/mozilla/javascript/regexp/REGlobalData;IILorg/mozilla/javascript/regexp/REBackTrackData;II)V

    .line 2132
    .end local v11           #op:I
    if-eqz v12, :cond_33

    .line 2133
    const/16 v10, 0x34

    .line 2134
    move/from16 v9, v20

    .line 2135
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v6

    .line 2136
    .local v6, parenCount:I
    add-int/lit8 v5, v20, 0x2

    .line 2137
    .end local v20           #pc:I
    .local v5, pc:I
    move-object/from16 v0, v21

    move v1, v5

    invoke-static {v0, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v7

    .line 2138
    .local v7, parenIndex:I
    add-int/lit8 v8, v5, 0x4

    .line 2139
    .end local v5           #pc:I
    .local v8, pc:I
    const/4 v5, 0x0

    .end local v12           #new_min:I
    .end local v13           #new_max:I
    .local v5, k:I
    :goto_18
    if-ge v5, v6, :cond_32

    .line 2140
    add-int v11, v7, v5

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move v1, v11

    move v2, v12

    move v3, v13

    invoke-virtual {v0, v1, v2, v3}, Lorg/mozilla/javascript/regexp/REGlobalData;->set_parens(III)V

    .line 2139
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 2142
    :cond_32
    add-int/lit8 v6, v8, 0x1

    .end local v8           #pc:I
    .local v6, pc:I
    aget-byte v5, v21, v8

    .local v5, op:I
    move v11, v5

    .end local v5           #op:I
    .restart local v11       #op:I
    move/from16 v20, v6

    .line 2143
    .end local v6           #pc:I
    .restart local v20       #pc:I
    goto/16 :goto_0

    .line 2144
    .end local v7           #parenIndex:I
    .end local v11           #op:I
    .local v6, state:Lorg/mozilla/javascript/regexp/REProgState;
    .restart local v12       #new_min:I
    .restart local v13       #new_max:I
    :cond_33
    iget v9, v6, Lorg/mozilla/javascript/regexp/REProgState;->continuation_pc:I

    .line 2145
    iget v10, v6, Lorg/mozilla/javascript/regexp/REProgState;->continuation_op:I

    .line 2146
    const/16 v5, 0x34

    move-object/from16 v0, p0

    move v1, v5

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BI)V

    .line 2147
    invoke-static/range {p0 .. p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->popProgState(Lorg/mozilla/javascript/regexp/REGlobalData;)Lorg/mozilla/javascript/regexp/REProgState;

    .line 2148
    add-int/lit8 v5, v20, 0x4

    .line 2149
    .end local v20           #pc:I
    .local v5, pc:I
    move-object/from16 v0, v21

    move v1, v5

    invoke-static {v0, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getOffset([BI)I

    move-result v6

    .end local v6           #state:Lorg/mozilla/javascript/regexp/REProgState;
    add-int/2addr v5, v6

    .line 2150
    add-int/lit8 v6, v5, 0x1

    .end local v5           #pc:I
    .local v6, pc:I
    aget-byte v5, v21, v5

    .local v5, op:I
    move v11, v5

    .end local v5           #op:I
    .restart local v11       #op:I
    move/from16 v20, v6

    .line 2152
    .end local v6           #pc:I
    .restart local v20       #pc:I
    goto/16 :goto_0

    .line 2157
    .end local v12           #new_min:I
    .end local v13           #new_max:I
    :pswitch_1f
    const/16 p0, 0x1

    move/from16 p1, v22

    .end local v22           #result:I
    .local p1, result:I
    move/from16 p2, p0

    move/from16 p0, v20

    .line 2193
    .end local v20           #pc:I
    .end local p2
    .local p0, pc:I
    :goto_19
    return p2

    .local v5, backTrackData:Lorg/mozilla/javascript/regexp/REBackTrackData;
    .local v7, pc:I
    .local v8, result:I
    .local p0, gData:Lorg/mozilla/javascript/regexp/REGlobalData;
    .local p1, chars:[C
    .restart local p2
    :cond_34
    const/16 p0, 0x0

    move/from16 p1, v8

    .end local v8           #result:I
    .local p1, result:I
    move/from16 p2, p0

    move/from16 p0, v7

    .end local v7           #pc:I
    .local p0, pc:I
    goto :goto_19

    .line 2196
    .end local v5           #backTrackData:Lorg/mozilla/javascript/regexp/REBackTrackData;
    .restart local v7       #pc:I
    .restart local v8       #result:I
    .local p0, gData:Lorg/mozilla/javascript/regexp/REGlobalData;
    .local p1, chars:[C
    :cond_35
    add-int/lit8 v6, v7, 0x1

    .end local v7           #pc:I
    .restart local v6       #pc:I
    aget-byte v5, v21, v7

    .end local v11           #op:I
    .local v5, op:I
    move v11, v5

    .end local v5           #op:I
    .restart local v11       #op:I
    move/from16 v22, v8

    .end local v8           #result:I
    .restart local v22       #result:I
    move/from16 v20, v6

    .end local v6           #pc:I
    .restart local v20       #pc:I
    goto/16 :goto_0

    .local v7, state:Lorg/mozilla/javascript/regexp/REProgState;
    :cond_36
    move/from16 v6, v22

    .end local v22           #result:I
    .local v6, result:I
    goto/16 :goto_15

    .end local v6           #result:I
    .end local v7           #state:Lorg/mozilla/javascript/regexp/REProgState;
    .local v5, result:Z
    :cond_37
    move v8, v5

    .restart local v8       #result:I
    move/from16 v7, v20

    .end local v20           #pc:I
    .local v7, pc:I
    goto/16 :goto_1

    .line 1694
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_13
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_15
        :pswitch_16
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_b
        :pswitch_c
        :pswitch_9
        :pswitch_a
        :pswitch_17
        :pswitch_d
        :pswitch_f
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_10
        :pswitch_0
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_19
        :pswitch_19
        :pswitch_1a
        :pswitch_1a
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1c
        :pswitch_18
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
    .end packed-switch

    .line 1966
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_6
        0x7 -> :sswitch_0
        0x8 -> :sswitch_2
        0x9 -> :sswitch_4
        0x2d -> :sswitch_1
        0x2e -> :sswitch_3
        0x2f -> :sswitch_5
        0x30 -> :sswitch_7
    .end sparse-switch
.end method

.method private static flatNIMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;II[CI)Z
    .locals 4
    .parameter "gData"
    .parameter "matchChars"
    .parameter "length"
    .parameter "chars"
    .parameter "end"

    .prologue
    const/4 v3, 0x0

    .line 1349
    iget v1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr v1, p2

    if-le v1, p4, :cond_0

    move v1, v3

    .line 1359
    :goto_0
    return v1

    .line 1351
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p2, :cond_2

    .line 1352
    iget-object v1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v1, v1, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    add-int v2, p1, v0

    aget-char v1, v1, v2

    invoke-static {v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v1

    iget v2, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr v2, v0

    aget-char v2, p3, v2

    invoke-static {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v2

    if-eq v1, v2, :cond_1

    move v1, v3

    .line 1355
    goto :goto_0

    .line 1351
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1358
    :cond_2
    iget v1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr v1, p2

    iput v1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 1359
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static flatNMatcher(Lorg/mozilla/javascript/regexp/REGlobalData;II[CI)Z
    .locals 4
    .parameter "gData"
    .parameter "matchChars"
    .parameter "length"
    .parameter "chars"
    .parameter "end"

    .prologue
    const/4 v3, 0x0

    .line 1334
    iget v1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr v1, p2

    if-le v1, p4, :cond_0

    move v1, v3

    .line 1342
    :goto_0
    return v1

    .line 1336
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p2, :cond_2

    .line 1337
    iget-object v1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v1, v1, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    add-int v2, p1, v0

    aget-char v1, v1, v2

    iget v2, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr v2, v0

    aget-char v2, p3, v2

    if-eq v1, v2, :cond_1

    move v1, v3

    .line 1338
    goto :goto_0

    .line 1336
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1341
    :cond_2
    iget v1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    add-int/2addr v1, p2

    iput v1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 1342
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static getDecimalValue(CLorg/mozilla/javascript/regexp/CompilerState;ILjava/lang/String;)I
    .locals 8
    .parameter "c"
    .parameter "state"
    .parameter "maxValue"
    .parameter "overflowMessageId"

    .prologue
    const/16 v7, 0x30

    .line 734
    const/4 v1, 0x0

    .line 735
    .local v1, overflow:Z
    iget v3, p1, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 736
    .local v3, start:I
    iget-object v2, p1, Lorg/mozilla/javascript/regexp/CompilerState;->cpbegin:[C

    .line 737
    .local v2, src:[C
    sub-int v4, p0, v7

    .line 738
    .local v4, value:I
    :goto_0
    iget v5, p1, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v6, p1, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-eq v5, v6, :cond_0

    .line 739
    iget v5, p1, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char p0, v2, v5

    .line 740
    invoke-static {p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_2

    .line 753
    :cond_0
    if-eqz v1, :cond_1

    .line 754
    iget v5, p1, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    sub-int/2addr v5, v3

    invoke-static {v2, v3, v5}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v5

    invoke-static {p3, v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    :cond_1
    return v4

    .line 743
    :cond_2
    if-nez v1, :cond_3

    .line 744
    sub-int v0, p0, v7

    .line 745
    .local v0, digit:I
    sub-int v5, p2, v0

    div-int/lit8 v5, v5, 0xa

    if-ge v4, v5, :cond_4

    .line 746
    mul-int/lit8 v5, v4, 0xa

    add-int v4, v5, v0

    .line 738
    .end local v0           #digit:I
    :cond_3
    :goto_1
    iget v5, p1, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p1, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    goto :goto_0

    .line 748
    .restart local v0       #digit:I
    :cond_4
    const/4 v1, 0x1

    .line 749
    move v4, p2

    goto :goto_1
.end method

.method private static getImpl(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/regexp/RegExpImpl;
    .locals 0
    .parameter "cx"

    .prologue
    .line 253
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->getRegExpProxy(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/RegExpProxy;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/mozilla/javascript/regexp/RegExpImpl;

    return-object p0
.end method

.method private static getIndex([BI)I
    .locals 2
    .parameter "array"
    .parameter "pc"

    .prologue
    .line 1169
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static getOffset([BI)I
    .locals 1
    .parameter "array"
    .parameter "pc"

    .prologue
    .line 1154
    invoke-static {p0, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getIndex([BI)I

    move-result v0

    return v0
.end method

.method public static init(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 6
    .parameter "cx"
    .parameter "scope"
    .parameter "sealed"

    .prologue
    const/4 v5, 0x2

    .line 149
    new-instance v1, Lorg/mozilla/javascript/regexp/NativeRegExp;

    invoke-direct {v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;-><init>()V

    .line 150
    .local v1, proto:Lorg/mozilla/javascript/regexp/NativeRegExp;
    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->compileRE(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/mozilla/javascript/regexp/RECompiled;

    iput-object p0, v1, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    .line 151
    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->activatePrototypeMap(I)V

    .line 152
    invoke-virtual {v1, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->setParentScope(Lorg/mozilla/javascript/Scriptable;)V

    .line 153
    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getObjectPrototype(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->setPrototype(Lorg/mozilla/javascript/Scriptable;)V

    .line 155
    new-instance v0, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;

    invoke-direct {v0}, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;-><init>()V

    .line 158
    .local v0, ctor:Lorg/mozilla/javascript/regexp/NativeRegExpCtor;
    const-string v2, "constructor"

    invoke-virtual {v1, v2, v0, v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->defineProperty(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 160
    invoke-static {v0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->setFunctionProtoAndParent(Lorg/mozilla/javascript/BaseFunction;Lorg/mozilla/javascript/Scriptable;)V

    .line 162
    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->setImmunePrototypeProperty(Ljava/lang/Object;)V

    .line 164
    if-eqz p2, :cond_0

    .line 165
    invoke-virtual {v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->sealObject()V

    .line 166
    invoke-virtual {v0}, Lorg/mozilla/javascript/regexp/NativeRegExpCtor;->sealObject()V

    .line 169
    :cond_0
    const-string v2, "RegExp"

    invoke-static {p1, v2, v0, v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 170
    return-void
.end method

.method static isDigit(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 370
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

.method private static isLineTerm(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 380
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->isJSLineTerminator(I)Z

    move-result v0

    return v0
.end method

.method private static isREWhiteSpace(I)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 385
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->isJSWhitespaceOrLineTerminator(I)Z

    move-result v0

    return v0
.end method

.method private static isWord(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 375
    invoke-static {p0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x5f

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static matchRegExp(Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECompiled;[CIIZ)Z
    .locals 9
    .parameter "gData"
    .parameter "re"
    .parameter "chars"
    .parameter "start"
    .parameter "end"
    .parameter "multiline"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 2205
    iget v5, p1, Lorg/mozilla/javascript/regexp/RECompiled;->parenCount:I

    if-eqz v5, :cond_0

    .line 2206
    iget v5, p1, Lorg/mozilla/javascript/regexp/RECompiled;->parenCount:I

    new-array v5, v5, [J

    iput-object v5, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->parens:[J

    .line 2211
    :goto_0
    iput-object v7, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    .line 2213
    iput-object v7, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    .line 2215
    iput-boolean p5, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->multiline:Z

    .line 2216
    iput-object p1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    .line 2217
    iput v8, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->lastParen:I

    .line 2219
    iget-object v5, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v0, v5, Lorg/mozilla/javascript/regexp/RECompiled;->anchorCh:I

    .line 2224
    .local v0, anchorCh:I
    move v1, p3

    .local v1, i:I
    :goto_1
    if-gt v1, p4, :cond_6

    .line 2230
    if-ltz v0, :cond_2

    .line 2232
    :goto_2
    if-ne v1, p4, :cond_1

    move v5, v8

    .line 2258
    :goto_3
    return v5

    .line 2208
    .end local v0           #anchorCh:I
    .end local v1           #i:I
    :cond_0
    iput-object v7, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->parens:[J

    goto :goto_0

    .line 2235
    .restart local v0       #anchorCh:I
    .restart local v1       #i:I
    :cond_1
    aget-char v3, p2, v1

    .line 2236
    .local v3, matchCh:C
    if-eq v3, v0, :cond_2

    iget-object v5, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v5, v5, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3

    invoke-static {v3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v5

    int-to-char v6, v0

    invoke-static {v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v6

    if-ne v5, v6, :cond_3

    .line 2245
    .end local v3           #matchCh:C
    :cond_2
    iput v1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 2246
    const/4 v2, 0x0

    .local v2, j:I
    :goto_4
    iget v5, p1, Lorg/mozilla/javascript/regexp/RECompiled;->parenCount:I

    if-ge v2, v5, :cond_4

    .line 2247
    const/4 v5, -0x1

    invoke-virtual {p0, v2, v5, v8}, Lorg/mozilla/javascript/regexp/REGlobalData;->set_parens(III)V

    .line 2246
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2242
    .end local v2           #j:I
    .restart local v3       #matchCh:C
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 2243
    goto :goto_2

    .line 2249
    .end local v3           #matchCh:C
    .restart local v2       #j:I
    :cond_4
    invoke-static {p0, p2, p4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->executeREBytecode(Lorg/mozilla/javascript/regexp/REGlobalData;[CI)Z

    move-result v4

    .line 2251
    .local v4, result:Z
    iput-object v7, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    .line 2252
    iput-object v7, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    .line 2253
    if-eqz v4, :cond_5

    .line 2254
    sub-int v5, v1, p3

    iput v5, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    .line 2255
    const/4 v5, 0x1

    goto :goto_3

    .line 2224
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2           #j:I
    .end local v4           #result:Z
    :cond_6
    move v5, v8

    .line 2258
    goto :goto_3
.end method

.method private static parseAlternative(Lorg/mozilla/javascript/regexp/CompilerState;)Z
    .locals 6
    .parameter "state"

    .prologue
    const/4 v5, 0x0

    .line 475
    const/4 v0, 0x0

    .line 476
    .local v0, headTerm:Lorg/mozilla/javascript/regexp/RENode;
    const/4 v2, 0x0

    .line 477
    .local v2, tailTerm:Lorg/mozilla/javascript/regexp/RENode;
    iget-object v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cpbegin:[C

    .line 479
    .local v1, source:[C
    :cond_0
    :goto_0
    iget v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v4, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-eq v3, v4, :cond_1

    iget v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v3, v1, v3

    const/16 v4, 0x7c

    if-eq v3, v4, :cond_1

    iget v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->parenNesting:I

    if-eqz v3, :cond_3

    iget v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v3, v1, v3

    const/16 v4, 0x29

    if-ne v3, v4, :cond_3

    .line 482
    :cond_1
    if-nez v0, :cond_2

    .line 483
    new-instance v3, Lorg/mozilla/javascript/regexp/RENode;

    invoke-direct {v3, v5}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 487
    :goto_1
    const/4 v3, 0x1

    .line 490
    :goto_2
    return v3

    .line 486
    :cond_2
    iput-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    goto :goto_1

    .line 489
    :cond_3
    invoke-static {p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->parseTerm(Lorg/mozilla/javascript/regexp/CompilerState;)Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v5

    .line 490
    goto :goto_2

    .line 491
    :cond_4
    if-nez v0, :cond_5

    .line 492
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    goto :goto_0

    .line 494
    :cond_5
    if-nez v2, :cond_6

    .line 495
    iget-object v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput-object v3, v0, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    .line 496
    iget-object v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 497
    :goto_3
    iget-object v3, v2, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    if-eqz v3, :cond_0

    iget-object v2, v2, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    goto :goto_3

    .line 500
    :cond_6
    iget-object v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput-object v3, v2, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    .line 501
    iget-object v2, v2, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    .line 502
    :goto_4
    iget-object v3, v2, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    if-eqz v3, :cond_0

    iget-object v2, v2, Lorg/mozilla/javascript/regexp/RENode;->next:Lorg/mozilla/javascript/regexp/RENode;

    goto :goto_4
.end method

.method private static parseDisjunction(Lorg/mozilla/javascript/regexp/CompilerState;)Z
    .locals 7
    .parameter "state"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 450
    invoke-static {p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->parseAlternative(Lorg/mozilla/javascript/regexp/CompilerState;)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v5

    .line 466
    :goto_0
    return v3

    .line 452
    :cond_0
    iget-object v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cpbegin:[C

    .line 453
    .local v2, source:[C
    iget v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 454
    .local v1, index:I
    array-length v3, v2

    if-eq v1, v3, :cond_2

    aget-char v3, v2, v1

    const/16 v4, 0x7c

    if-ne v3, v4, :cond_2

    .line 456
    iget v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 457
    new-instance v0, Lorg/mozilla/javascript/regexp/RENode;

    invoke-direct {v0, v6}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    .line 458
    .local v0, altResult:Lorg/mozilla/javascript/regexp/RENode;
    iget-object v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput-object v3, v0, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    .line 459
    invoke-static {p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->parseDisjunction(Lorg/mozilla/javascript/regexp/CompilerState;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v5

    .line 460
    goto :goto_0

    .line 461
    :cond_1
    iget-object v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput-object v3, v0, Lorg/mozilla/javascript/regexp/RENode;->kid2:Lorg/mozilla/javascript/regexp/RENode;

    .line 462
    iput-object v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 464
    iget v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v3, v3, 0x9

    iput v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .end local v0           #altResult:Lorg/mozilla/javascript/regexp/RENode;
    :cond_2
    move v3, v6

    .line 466
    goto :goto_0
.end method

.method private static parseTerm(Lorg/mozilla/javascript/regexp/CompilerState;)Z
    .locals 11
    .parameter "state"

    .prologue
    .line 763
    iget-object v7, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cpbegin:[C

    .line 764
    .local v7, src:[C
    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v0, v7, v0

    .line 765
    .local v0, c:C
    const/4 v1, 0x2

    .line 766
    .local v1, nDigits:I
    iget v6, p0, Lorg/mozilla/javascript/regexp/CompilerState;->parenCount:I

    .line 771
    .local v6, parenBaseCount:I
    sparse-switch v0, :sswitch_data_0

    .line 1041
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v3, 0x15

    invoke-direct {v2, v3}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 1042
    iget-object v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput-char v0, v2, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    .line 1043
    iget-object v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    const/4 v3, 0x1

    iput v3, v2, Lorg/mozilla/javascript/regexp/RENode;->length:I

    .line 1044
    iget-object v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, v2, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    .line 1045
    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v2, v2, 0x3

    iput v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    :cond_0
    move v5, v1

    .line 1049
    .end local v1           #nDigits:I
    .local v5, nDigits:I
    :goto_0
    iget-object v8, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 1050
    .local v8, term:Lorg/mozilla/javascript/regexp/RENode;
    iget v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-ne v1, v2, :cond_15

    .line 1051
    const/4 p0, 0x1

    move v1, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v5

    .line 1143
    .end local v5           #nDigits:I
    .end local v8           #term:Lorg/mozilla/javascript/regexp/RENode;
    .local v0, nDigits:I
    :goto_1
    return v1

    .line 774
    .local v0, c:C
    .restart local v1       #nDigits:I
    .local p0, state:Lorg/mozilla/javascript/regexp/CompilerState;
    :sswitch_0
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 775
    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 776
    const/4 p0, 0x1

    move v10, v1

    .end local v1           #nDigits:I
    .local v10, nDigits:I
    move v1, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v10

    .end local v10           #nDigits:I
    .local v0, nDigits:I
    goto :goto_1

    .line 778
    .local v0, c:C
    .restart local v1       #nDigits:I
    .local p0, state:Lorg/mozilla/javascript/regexp/CompilerState;
    :sswitch_1
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 779
    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 780
    const/4 p0, 0x1

    move v10, v1

    .end local v1           #nDigits:I
    .restart local v10       #nDigits:I
    move v1, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v10

    .end local v10           #nDigits:I
    .local v0, nDigits:I
    goto :goto_1

    .line 782
    .local v0, c:C
    .restart local v1       #nDigits:I
    .local p0, state:Lorg/mozilla/javascript/regexp/CompilerState;
    :sswitch_2
    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-ge v2, v3, :cond_9

    .line 783
    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .end local v0           #c:C
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v0, v7, v0

    .line 784
    .restart local v0       #c:C
    sparse-switch v0, :sswitch_data_1

    .line 948
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v3, 0x15

    invoke-direct {v2, v3}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 949
    iget-object v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput-char v0, v2, Lorg/mozilla/javascript/regexp/RENode;->chr:C

    .line 950
    iget-object v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    const/4 v3, 0x1

    iput v3, v2, Lorg/mozilla/javascript/regexp/RENode;->length:I

    .line 951
    iget-object v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, v2, Lorg/mozilla/javascript/regexp/RENode;->flatIndex:I

    .line 952
    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v2, v2, 0x3

    iput v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    move v5, v1

    .line 953
    .end local v1           #nDigits:I
    .restart local v5       #nDigits:I
    goto :goto_0

    .line 787
    .end local v5           #nDigits:I
    .restart local v1       #nDigits:I
    :sswitch_3
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 788
    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 789
    const/4 p0, 0x1

    move v10, v1

    .end local v1           #nDigits:I
    .restart local v10       #nDigits:I
    move v1, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v10

    .end local v10           #nDigits:I
    .local v0, nDigits:I
    goto :goto_1

    .line 791
    .local v0, c:C
    .restart local v1       #nDigits:I
    .local p0, state:Lorg/mozilla/javascript/regexp/CompilerState;
    :sswitch_4
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 792
    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 793
    const/4 p0, 0x1

    move v10, v1

    .end local v1           #nDigits:I
    .restart local v10       #nDigits:I
    move v1, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v10

    .end local v10           #nDigits:I
    .local v0, nDigits:I
    goto/16 :goto_1

    .line 803
    .local v0, c:C
    .restart local v1       #nDigits:I
    .local p0, state:Lorg/mozilla/javascript/regexp/CompilerState;
    :sswitch_5
    iget-object v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cx:Lorg/mozilla/javascript/Context;

    const-string v3, "msg.bad.backref"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportWarning(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    const/4 v2, 0x0

    .line 806
    .local v2, num:I
    :goto_2
    iget v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v4, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-ge v3, v4, :cond_1

    .line 807
    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .end local v0           #c:C
    aget-char v0, v7, v0

    .line 808
    .restart local v0       #c:C
    const/16 v3, 0x30

    if-lt v0, v3, :cond_1

    const/16 v3, 0x37

    if-gt v0, v3, :cond_1

    .line 809
    iget v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 810
    mul-int/lit8 v3, v2, 0x8

    const/16 v4, 0x30

    sub-int v4, v0, v4

    add-int/2addr v3, v4

    .line 811
    .local v3, tmp:I
    const/16 v4, 0xff

    if-le v3, v4, :cond_2

    .line 818
    .end local v3           #tmp:I
    :cond_1
    int-to-char v0, v2

    .line 819
    invoke-static {p0, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    move v5, v1

    .line 820
    .end local v1           #nDigits:I
    .restart local v5       #nDigits:I
    goto/16 :goto_0

    .line 813
    .end local v5           #nDigits:I
    .restart local v1       #nDigits:I
    .restart local v3       #tmp:I
    :cond_2
    move v2, v3

    goto :goto_2

    .line 830
    .end local v2           #num:I
    .end local v3           #tmp:I
    :sswitch_6
    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    const/4 v3, 0x1

    sub-int v3, v2, v3

    .line 831
    .local v3, termStart:I
    const v2, 0xffff

    const-string v4, "msg.overlarge.backref"

    invoke-static {v0, p0, v2, v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getDecimalValue(CLorg/mozilla/javascript/regexp/CompilerState;ILjava/lang/String;)I

    move-result v2

    .line 833
    .restart local v2       #num:I
    iget v4, p0, Lorg/mozilla/javascript/regexp/CompilerState;->parenCount:I

    if-le v2, v4, :cond_3

    .line 834
    iget-object v4, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cx:Lorg/mozilla/javascript/Context;

    const-string v5, "msg.bad.backref"

    const-string v8, ""

    invoke-static {v4, v5, v8}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportWarning(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    :cond_3
    const/16 v4, 0x9

    if-le v2, v4, :cond_6

    iget v4, p0, Lorg/mozilla/javascript/regexp/CompilerState;->parenCount:I

    if-le v2, v4, :cond_6

    .line 840
    iput v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 841
    const/4 v2, 0x0

    .line 842
    .end local v3           #termStart:I
    :goto_3
    iget v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v4, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-ge v3, v4, :cond_4

    .line 843
    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .end local v0           #c:C
    aget-char v0, v7, v0

    .line 844
    .restart local v0       #c:C
    const/16 v3, 0x30

    if-lt v0, v3, :cond_4

    const/16 v3, 0x37

    if-gt v0, v3, :cond_4

    .line 845
    iget v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 846
    mul-int/lit8 v3, v2, 0x8

    const/16 v4, 0x30

    sub-int v4, v0, v4

    add-int/2addr v3, v4

    .line 847
    .local v3, tmp:I
    const/16 v4, 0xff

    if-le v3, v4, :cond_5

    .line 854
    .end local v3           #tmp:I
    :cond_4
    int-to-char v0, v2

    .line 855
    invoke-static {p0, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    move v5, v1

    .line 856
    .end local v1           #nDigits:I
    .restart local v5       #nDigits:I
    goto/16 :goto_0

    .line 849
    .end local v5           #nDigits:I
    .restart local v1       #nDigits:I
    .restart local v3       #tmp:I
    :cond_5
    move v2, v3

    goto :goto_3

    .line 859
    .local v3, termStart:I
    :cond_6
    new-instance v3, Lorg/mozilla/javascript/regexp/RENode;

    .end local v3           #termStart:I
    const/16 v4, 0x14

    invoke-direct {v3, v4}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 860
    iget-object v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    iput v2, v3, Lorg/mozilla/javascript/regexp/RENode;->parenIndex:I

    .line 861
    .end local v2           #num:I
    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v2, v2, 0x3

    iput v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    move v5, v1

    .line 862
    .end local v1           #nDigits:I
    .restart local v5       #nDigits:I
    goto/16 :goto_0

    .line 865
    .end local v5           #nDigits:I
    .restart local v1       #nDigits:I
    :sswitch_7
    const/16 v0, 0xc

    .line 866
    invoke-static {p0, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    move v5, v1

    .line 867
    .end local v1           #nDigits:I
    .restart local v5       #nDigits:I
    goto/16 :goto_0

    .line 869
    .end local v5           #nDigits:I
    .restart local v1       #nDigits:I
    :sswitch_8
    const/16 v0, 0xa

    .line 870
    invoke-static {p0, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    move v5, v1

    .line 871
    .end local v1           #nDigits:I
    .restart local v5       #nDigits:I
    goto/16 :goto_0

    .line 873
    .end local v5           #nDigits:I
    .restart local v1       #nDigits:I
    :sswitch_9
    const/16 v0, 0xd

    .line 874
    invoke-static {p0, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    move v5, v1

    .line 875
    .end local v1           #nDigits:I
    .restart local v5       #nDigits:I
    goto/16 :goto_0

    .line 877
    .end local v5           #nDigits:I
    .restart local v1       #nDigits:I
    :sswitch_a
    const/16 v0, 0x9

    .line 878
    invoke-static {p0, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    move v5, v1

    .line 879
    .end local v1           #nDigits:I
    .restart local v5       #nDigits:I
    goto/16 :goto_0

    .line 881
    .end local v5           #nDigits:I
    .restart local v1       #nDigits:I
    :sswitch_b
    const/16 v0, 0xb

    .line 882
    invoke-static {p0, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    move v5, v1

    .line 883
    .end local v1           #nDigits:I
    .restart local v5       #nDigits:I
    goto/16 :goto_0

    .line 886
    .end local v5           #nDigits:I
    .restart local v1       #nDigits:I
    :sswitch_c
    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .end local v0           #c:C
    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-ge v0, v2, :cond_7

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v0, v0, 0x1

    aget-char v0, v7, v0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 888
    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v0, v7, v0

    and-int/lit8 v0, v0, 0x1f

    int-to-char v0, v0

    .line 894
    .restart local v0       #c:C
    :goto_4
    invoke-static {p0, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    move v5, v1

    .line 895
    .end local v1           #nDigits:I
    .restart local v5       #nDigits:I
    goto/16 :goto_0

    .line 891
    .end local v0           #c:C
    .end local v5           #nDigits:I
    .restart local v1       #nDigits:I
    :cond_7
    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 892
    const/16 v0, 0x5c

    .restart local v0       #c:C
    goto :goto_4

    .line 898
    :sswitch_d
    add-int/lit8 v1, v1, 0x2

    move v3, v1

    .line 903
    .end local v1           #nDigits:I
    .local v3, nDigits:I
    :goto_5
    const/4 v2, 0x0

    .line 905
    .local v2, n:I
    const/4 v1, 0x0

    .line 906
    .local v1, i:I
    :goto_6
    if-ge v1, v3, :cond_1c

    iget v4, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v5, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-ge v4, v5, :cond_1c

    .line 907
    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .end local v0           #c:C
    add-int/lit8 v4, v0, 0x1

    iput v4, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v0, v7, v0

    .line 908
    .restart local v0       #c:C
    invoke-static {v0, v2}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v2

    .line 909
    if-gez v2, :cond_8

    .line 912
    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .end local v2           #n:I
    add-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    iput v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 913
    .end local v1           #i:I
    iget v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v1, v7, v1

    .line 917
    .local v1, n:I
    :goto_7
    int-to-char v0, v1

    .line 919
    invoke-static {p0, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->doFlat(Lorg/mozilla/javascript/regexp/CompilerState;C)V

    move v5, v3

    .line 920
    .end local v3           #nDigits:I
    .restart local v5       #nDigits:I
    goto/16 :goto_0

    .line 906
    .end local v5           #nDigits:I
    .local v1, i:I
    .restart local v2       #n:I
    .restart local v3       #nDigits:I
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 923
    .end local v2           #n:I
    .end local v3           #nDigits:I
    .local v1, nDigits:I
    :sswitch_e
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v3, 0xe

    invoke-direct {v2, v3}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 924
    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    move v5, v1

    .line 925
    .end local v1           #nDigits:I
    .restart local v5       #nDigits:I
    goto/16 :goto_0

    .line 927
    .end local v5           #nDigits:I
    .restart local v1       #nDigits:I
    :sswitch_f
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 928
    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    move v5, v1

    .line 929
    .end local v1           #nDigits:I
    .restart local v5       #nDigits:I
    goto/16 :goto_0

    .line 931
    .end local v5           #nDigits:I
    .restart local v1       #nDigits:I
    :sswitch_10
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v3, 0x12

    invoke-direct {v2, v3}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 932
    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    move v5, v1

    .line 933
    .end local v1           #nDigits:I
    .restart local v5       #nDigits:I
    goto/16 :goto_0

    .line 935
    .end local v5           #nDigits:I
    .restart local v1       #nDigits:I
    :sswitch_11
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v3, 0x13

    invoke-direct {v2, v3}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 936
    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    move v5, v1

    .line 937
    .end local v1           #nDigits:I
    .restart local v5       #nDigits:I
    goto/16 :goto_0

    .line 939
    .end local v5           #nDigits:I
    .restart local v1       #nDigits:I
    :sswitch_12
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 940
    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    move v5, v1

    .line 941
    .end local v1           #nDigits:I
    .restart local v5       #nDigits:I
    goto/16 :goto_0

    .line 943
    .end local v5           #nDigits:I
    .restart local v1       #nDigits:I
    :sswitch_13
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v3, 0x11

    invoke-direct {v2, v3}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 944
    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    move v5, v1

    .line 945
    .end local v1           #nDigits:I
    .restart local v5       #nDigits:I
    goto/16 :goto_0

    .line 959
    .end local v5           #nDigits:I
    .restart local v1       #nDigits:I
    :cond_9
    const-string p0, "msg.trail.backslash"

    .end local p0           #state:Lorg/mozilla/javascript/regexp/CompilerState;
    const-string v2, ""

    invoke-static {p0, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    const/4 p0, 0x0

    move v10, v1

    .end local v1           #nDigits:I
    .restart local v10       #nDigits:I
    move v1, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v10

    .end local v10           #nDigits:I
    .local v0, nDigits:I
    goto/16 :goto_1

    .line 963
    .local v0, c:C
    .restart local v1       #nDigits:I
    .local p0, state:Lorg/mozilla/javascript/regexp/CompilerState;
    :sswitch_14
    const/4 v2, 0x0

    .line 964
    .local v2, result:Lorg/mozilla/javascript/regexp/RENode;
    iget v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 965
    .local v3, termStart:I
    iget v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .end local v3           #termStart:I
    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-ge v3, v4, :cond_d

    iget v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v3, v7, v3

    const/16 v4, 0x3f

    if-ne v3, v4, :cond_d

    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .end local v0           #c:C
    add-int/lit8 v0, v0, 0x1

    aget-char v0, v7, v0

    .restart local v0       #c:C
    const/16 v3, 0x3d

    if-eq v0, v3, :cond_a

    const/16 v3, 0x21

    if-eq v0, v3, :cond_a

    const/16 v3, 0x3a

    if-ne v0, v3, :cond_d

    .line 968
    :cond_a
    iget v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 969
    const/16 v3, 0x3d

    if-ne v0, v3, :cond_c

    .line 970
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    .end local v2           #result:Lorg/mozilla/javascript/regexp/RENode;
    const/16 v3, 0x29

    invoke-direct {v2, v3}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    .line 972
    .restart local v2       #result:Lorg/mozilla/javascript/regexp/RENode;
    iget v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 984
    :cond_b
    :goto_8
    iget v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->parenNesting:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->parenNesting:I

    .line 985
    invoke-static {p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->parseDisjunction(Lorg/mozilla/javascript/regexp/CompilerState;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 986
    const/4 p0, 0x0

    move v10, v1

    .end local v1           #nDigits:I
    .restart local v10       #nDigits:I
    move v1, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v10

    .end local v10           #nDigits:I
    .local v0, nDigits:I
    goto/16 :goto_1

    .line 973
    .local v0, c:C
    .restart local v1       #nDigits:I
    .local p0, state:Lorg/mozilla/javascript/regexp/CompilerState;
    :cond_c
    const/16 v3, 0x21

    if-ne v0, v3, :cond_b

    .line 974
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    .end local v2           #result:Lorg/mozilla/javascript/regexp/RENode;
    const/16 v3, 0x2a

    invoke-direct {v2, v3}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    .line 976
    .restart local v2       #result:Lorg/mozilla/javascript/regexp/RENode;
    iget v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    goto :goto_8

    .line 979
    :cond_d
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    .end local v2           #result:Lorg/mozilla/javascript/regexp/RENode;
    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    .line 981
    .restart local v2       #result:Lorg/mozilla/javascript/regexp/RENode;
    iget v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v3, v3, 0x6

    iput v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 982
    iget v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->parenCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/mozilla/javascript/regexp/CompilerState;->parenCount:I

    iput v3, v2, Lorg/mozilla/javascript/regexp/RENode;->parenIndex:I

    goto :goto_8

    .line 987
    :cond_e
    iget v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v4, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-eq v3, v4, :cond_f

    iget v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v3, v7, v3

    const/16 v4, 0x29

    if-eq v3, v4, :cond_10

    .line 988
    :cond_f
    const-string p0, "msg.unterm.paren"

    .end local p0           #state:Lorg/mozilla/javascript/regexp/CompilerState;
    const-string v2, ""

    .end local v2           #result:Lorg/mozilla/javascript/regexp/RENode;
    invoke-static {p0, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    const/4 p0, 0x0

    move v10, v1

    .end local v1           #nDigits:I
    .restart local v10       #nDigits:I
    move v1, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v10

    .end local v10           #nDigits:I
    .local v0, nDigits:I
    goto/16 :goto_1

    .line 991
    .local v0, c:C
    .restart local v1       #nDigits:I
    .restart local v2       #result:Lorg/mozilla/javascript/regexp/RENode;
    .local p0, state:Lorg/mozilla/javascript/regexp/CompilerState;
    :cond_10
    iget v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 992
    iget v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->parenNesting:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->parenNesting:I

    .line 993
    if-eqz v2, :cond_0

    .line 994
    iget-object v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput-object v3, v2, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    .line 995
    iput-object v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    move v5, v1

    .end local v1           #nDigits:I
    .restart local v5       #nDigits:I
    goto/16 :goto_0

    .line 1000
    .end local v2           #result:Lorg/mozilla/javascript/regexp/RENode;
    .end local v5           #nDigits:I
    .restart local v1       #nDigits:I
    :sswitch_15
    const-string p0, "msg.re.unmatched.right.paren"

    .end local p0           #state:Lorg/mozilla/javascript/regexp/CompilerState;
    const-string v2, ""

    invoke-static {p0, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    const/4 p0, 0x0

    move v10, v1

    .end local v1           #nDigits:I
    .restart local v10       #nDigits:I
    move v1, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v10

    .end local v10           #nDigits:I
    .local v0, nDigits:I
    goto/16 :goto_1

    .line 1003
    .local v0, c:C
    .restart local v1       #nDigits:I
    .local p0, state:Lorg/mozilla/javascript/regexp/CompilerState;
    :sswitch_16
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 1004
    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 1005
    .local v2, termStart:I
    iget-object v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput v2, v3, Lorg/mozilla/javascript/regexp/RENode;->startIndex:I

    .line 1007
    :goto_9
    iget v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v4, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-ne v3, v4, :cond_11

    .line 1008
    const-string p0, "msg.unterm.class"

    .end local p0           #state:Lorg/mozilla/javascript/regexp/CompilerState;
    const-string v2, ""

    .end local v2           #termStart:I
    invoke-static {p0, v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    const/4 p0, 0x0

    move v10, v1

    .end local v1           #nDigits:I
    .restart local v10       #nDigits:I
    move v1, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v10

    .end local v10           #nDigits:I
    .local v0, nDigits:I
    goto/16 :goto_1

    .line 1011
    .local v0, c:C
    .restart local v1       #nDigits:I
    .restart local v2       #termStart:I
    .local p0, state:Lorg/mozilla/javascript/regexp/CompilerState;
    :cond_11
    iget v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v3, v7, v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_13

    .line 1012
    iget v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 1019
    :cond_12
    iget v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    goto :goto_9

    .line 1014
    :cond_13
    iget v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v3, v7, v3

    const/16 v4, 0x5d

    if-ne v3, v4, :cond_12

    .line 1015
    iget-object v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v4, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    sub-int/2addr v4, v2

    iput v4, v3, Lorg/mozilla/javascript/regexp/RENode;->kidlen:I

    .line 1021
    iget-object v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v4, p0, Lorg/mozilla/javascript/regexp/CompilerState;->classCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/mozilla/javascript/regexp/CompilerState;->classCount:I

    iput v4, v3, Lorg/mozilla/javascript/regexp/RENode;->index:I

    .line 1026
    iget-object v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v4, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    invoke-static {p0, v3, v7, v2, v4}, Lorg/mozilla/javascript/regexp/NativeRegExp;->calculateBitmapSize(Lorg/mozilla/javascript/regexp/CompilerState;Lorg/mozilla/javascript/regexp/RENode;[CII)Z

    move-result v2

    .end local v2           #termStart:I
    if-nez v2, :cond_14

    .line 1027
    const/4 p0, 0x0

    move v10, v1

    .end local v1           #nDigits:I
    .restart local v10       #nDigits:I
    move v1, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v10

    .end local v10           #nDigits:I
    .local v0, nDigits:I
    goto/16 :goto_1

    .line 1028
    .local v0, c:C
    .restart local v1       #nDigits:I
    .local p0, state:Lorg/mozilla/javascript/regexp/CompilerState;
    :cond_14
    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v2, v2, 0x3

    iput v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    move v5, v1

    .line 1029
    .end local v1           #nDigits:I
    .restart local v5       #nDigits:I
    goto/16 :goto_0

    .line 1032
    .end local v5           #nDigits:I
    .restart local v1       #nDigits:I
    :sswitch_17
    new-instance v2, Lorg/mozilla/javascript/regexp/RENode;

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 1033
    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    move v5, v1

    .line 1034
    .end local v1           #nDigits:I
    .restart local v5       #nDigits:I
    goto/16 :goto_0

    .line 1038
    .end local v5           #nDigits:I
    .restart local v1       #nDigits:I
    :sswitch_18
    const-string v2, "msg.bad.quant"

    iget p0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .end local p0           #state:Lorg/mozilla/javascript/regexp/CompilerState;
    const/4 v3, 0x1

    sub-int/2addr p0, v3

    aget-char p0, v7, p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    const/4 p0, 0x0

    move v10, v1

    .end local v1           #nDigits:I
    .restart local v10       #nDigits:I
    move v1, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v10

    .end local v10           #nDigits:I
    .local v0, nDigits:I
    goto/16 :goto_1

    .line 1053
    .local v0, c:C
    .restart local v5       #nDigits:I
    .restart local v8       #term:Lorg/mozilla/javascript/regexp/RENode;
    .local p0, state:Lorg/mozilla/javascript/regexp/CompilerState;
    :cond_15
    const/4 v1, 0x0

    .line 1054
    .local v1, hasQ:Z
    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v2, v7, v2

    sparse-switch v2, :sswitch_data_2

    .line 1130
    :cond_16
    :goto_a
    if-nez v1, :cond_1a

    .line 1131
    const/4 p0, 0x1

    move v1, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v5

    .end local v5           #nDigits:I
    .local v0, nDigits:I
    goto/16 :goto_1

    .line 1056
    .local v0, c:C
    .restart local v5       #nDigits:I
    .local p0, state:Lorg/mozilla/javascript/regexp/CompilerState;
    :sswitch_19
    new-instance v1, Lorg/mozilla/javascript/regexp/RENode;

    .end local v1           #hasQ:Z
    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 1057
    iget-object v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    const/4 v2, 0x1

    iput v2, v1, Lorg/mozilla/javascript/regexp/RENode;->min:I

    .line 1058
    iget-object v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    const/4 v2, -0x1

    iput v2, v1, Lorg/mozilla/javascript/regexp/RENode;->max:I

    .line 1060
    iget v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v1, v1, 0x8

    iput v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 1061
    const/4 v1, 0x1

    .line 1062
    .restart local v1       #hasQ:Z
    goto :goto_a

    .line 1064
    :sswitch_1a
    new-instance v1, Lorg/mozilla/javascript/regexp/RENode;

    .end local v1           #hasQ:Z
    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 1065
    iget-object v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    const/4 v2, 0x0

    iput v2, v1, Lorg/mozilla/javascript/regexp/RENode;->min:I

    .line 1066
    iget-object v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    const/4 v2, -0x1

    iput v2, v1, Lorg/mozilla/javascript/regexp/RENode;->max:I

    .line 1068
    iget v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v1, v1, 0x8

    iput v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 1069
    const/4 v1, 0x1

    .line 1070
    .restart local v1       #hasQ:Z
    goto :goto_a

    .line 1072
    :sswitch_1b
    new-instance v1, Lorg/mozilla/javascript/regexp/RENode;

    .end local v1           #hasQ:Z
    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 1073
    iget-object v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    const/4 v2, 0x0

    iput v2, v1, Lorg/mozilla/javascript/regexp/RENode;->min:I

    .line 1074
    iget-object v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    const/4 v2, 0x1

    iput v2, v1, Lorg/mozilla/javascript/regexp/RENode;->max:I

    .line 1076
    iget v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v1, v1, 0x8

    iput v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 1077
    const/4 v1, 0x1

    .line 1078
    .restart local v1       #hasQ:Z
    goto :goto_a

    .line 1081
    :sswitch_1c
    const/4 v4, 0x0

    .line 1082
    .local v4, min:I
    const/4 v3, -0x1

    .line 1083
    .local v3, max:I
    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 1091
    .local v2, leftCurl:I
    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .end local v0           #c:C
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v0, v7, v0

    .line 1092
    .restart local v0       #c:C
    invoke-static {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 1093
    iget v4, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .end local v4           #min:I
    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 1094
    const v4, 0xffff

    const-string v9, "msg.overlarge.min"

    invoke-static {v0, p0, v4, v9}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getDecimalValue(CLorg/mozilla/javascript/regexp/CompilerState;ILjava/lang/String;)I

    move-result v4

    .line 1096
    .restart local v4       #min:I
    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .end local v0           #c:C
    aget-char v0, v7, v0

    .line 1097
    .restart local v0       #c:C
    const/16 v9, 0x2c

    if-ne v0, v9, :cond_17

    .line 1098
    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .end local v0           #c:C
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v0, v7, v0

    .line 1099
    .restart local v0       #c:C
    invoke-static {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 1100
    iget v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .end local v3           #max:I
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 1101
    const v3, 0xffff

    const-string v9, "msg.overlarge.max"

    invoke-static {v0, p0, v3, v9}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getDecimalValue(CLorg/mozilla/javascript/regexp/CompilerState;ILjava/lang/String;)I

    move-result v3

    .line 1103
    .restart local v3       #max:I
    iget v0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .end local v0           #c:C
    aget-char v0, v7, v0

    .line 1104
    .restart local v0       #c:C
    if-le v4, v3, :cond_18

    .line 1105
    const-string v1, "msg.max.lt.min"

    .end local v1           #hasQ:Z
    iget p0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .end local p0           #state:Lorg/mozilla/javascript/regexp/CompilerState;
    aget-char p0, v7, p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    const/4 p0, 0x0

    move v1, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v5

    .end local v5           #nDigits:I
    .local v0, nDigits:I
    goto/16 :goto_1

    .line 1111
    .local v0, c:C
    .restart local v1       #hasQ:Z
    .restart local v5       #nDigits:I
    .local p0, state:Lorg/mozilla/javascript/regexp/CompilerState;
    :cond_17
    move v3, v4

    .line 1114
    :cond_18
    const/16 v9, 0x7d

    if-ne v0, v9, :cond_19

    .line 1115
    new-instance v1, Lorg/mozilla/javascript/regexp/RENode;

    .end local v1           #hasQ:Z
    const/4 v9, 0x6

    invoke-direct {v1, v9}, Lorg/mozilla/javascript/regexp/RENode;-><init>(B)V

    iput-object v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .line 1116
    iget-object v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput v4, v1, Lorg/mozilla/javascript/regexp/RENode;->min:I

    .line 1117
    iget-object v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput v3, v1, Lorg/mozilla/javascript/regexp/RENode;->max:I

    .line 1120
    iget v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    add-int/lit8 v1, v1, 0xc

    iput v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->progLength:I

    .line 1121
    const/4 v1, 0x1

    .line 1124
    .restart local v1       #hasQ:Z
    :cond_19
    if-nez v1, :cond_16

    .line 1125
    iput v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    goto/16 :goto_a

    .line 1133
    .end local v2           #leftCurl:I
    .end local v3           #max:I
    .end local v4           #min:I
    :cond_1a
    iget v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .end local v1           #hasQ:Z
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 1134
    iget-object v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput-object v8, v1, Lorg/mozilla/javascript/regexp/RENode;->kid:Lorg/mozilla/javascript/regexp/RENode;

    .line 1135
    iget-object v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iput v6, v1, Lorg/mozilla/javascript/regexp/RENode;->parenIndex:I

    .line 1136
    iget-object v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->parenCount:I

    sub-int/2addr v2, v6

    iput v2, v1, Lorg/mozilla/javascript/regexp/RENode;->parenCount:I

    .line 1137
    iget v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    iget v2, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cpend:I

    if-ge v1, v2, :cond_1b

    iget v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    aget-char v1, v7, v1

    const/16 v2, 0x3f

    if-ne v1, v2, :cond_1b

    .line 1138
    iget v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/mozilla/javascript/regexp/CompilerState;->cp:I

    .line 1139
    iget-object p0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .end local p0           #state:Lorg/mozilla/javascript/regexp/CompilerState;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/mozilla/javascript/regexp/RENode;->greedy:Z

    .line 1143
    :goto_b
    const/4 p0, 0x1

    move v1, p0

    move p0, v0

    .end local v0           #c:C
    .local p0, c:C
    move v0, v5

    .end local v5           #nDigits:I
    .local v0, nDigits:I
    goto/16 :goto_1

    .line 1142
    .local v0, c:C
    .restart local v5       #nDigits:I
    .local p0, state:Lorg/mozilla/javascript/regexp/CompilerState;
    :cond_1b
    iget-object p0, p0, Lorg/mozilla/javascript/regexp/CompilerState;->result:Lorg/mozilla/javascript/regexp/RENode;

    .end local p0           #state:Lorg/mozilla/javascript/regexp/CompilerState;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mozilla/javascript/regexp/RENode;->greedy:Z

    goto :goto_b

    .end local v5           #nDigits:I
    .end local v8           #term:Lorg/mozilla/javascript/regexp/RENode;
    .local v1, i:I
    .local v2, n:I
    .local v3, nDigits:I
    .restart local p0       #state:Lorg/mozilla/javascript/regexp/CompilerState;
    :cond_1c
    move v1, v2

    .end local v2           #n:I
    .local v1, n:I
    goto/16 :goto_7

    .end local v3           #nDigits:I
    .local v1, nDigits:I
    :sswitch_1d
    move v3, v1

    .end local v1           #nDigits:I
    .restart local v3       #nDigits:I
    goto/16 :goto_5

    .line 771
    nop

    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_1
        0x28 -> :sswitch_14
        0x29 -> :sswitch_15
        0x2a -> :sswitch_18
        0x2b -> :sswitch_18
        0x2e -> :sswitch_17
        0x3f -> :sswitch_18
        0x5b -> :sswitch_16
        0x5c -> :sswitch_2
        0x5e -> :sswitch_0
    .end sparse-switch

    .line 784
    :sswitch_data_1
    .sparse-switch
        0x30 -> :sswitch_5
        0x31 -> :sswitch_6
        0x32 -> :sswitch_6
        0x33 -> :sswitch_6
        0x34 -> :sswitch_6
        0x35 -> :sswitch_6
        0x36 -> :sswitch_6
        0x37 -> :sswitch_6
        0x38 -> :sswitch_6
        0x39 -> :sswitch_6
        0x42 -> :sswitch_4
        0x44 -> :sswitch_f
        0x53 -> :sswitch_11
        0x57 -> :sswitch_13
        0x62 -> :sswitch_3
        0x63 -> :sswitch_c
        0x64 -> :sswitch_e
        0x66 -> :sswitch_7
        0x6e -> :sswitch_8
        0x72 -> :sswitch_9
        0x73 -> :sswitch_10
        0x74 -> :sswitch_a
        0x75 -> :sswitch_d
        0x76 -> :sswitch_b
        0x77 -> :sswitch_12
        0x78 -> :sswitch_1d
    .end sparse-switch

    .line 1054
    :sswitch_data_2
    .sparse-switch
        0x2a -> :sswitch_1a
        0x2b -> :sswitch_19
        0x3f -> :sswitch_1b
        0x7b -> :sswitch_1c
    .end sparse-switch
.end method

.method private static popProgState(Lorg/mozilla/javascript/regexp/REGlobalData;)Lorg/mozilla/javascript/regexp/REProgState;
    .locals 2
    .parameter "gData"

    .prologue
    .line 1316
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    .line 1317
    .local v0, state:Lorg/mozilla/javascript/regexp/REProgState;
    iget-object v1, v0, Lorg/mozilla/javascript/regexp/REProgState;->previous:Lorg/mozilla/javascript/regexp/REProgState;

    iput-object v1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    .line 1318
    return-object v0
.end method

.method private static processCharSet(Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECharSet;)V
    .locals 1
    .parameter "gData"
    .parameter "charSet"

    .prologue
    .line 1457
    monitor-enter p1

    .line 1458
    :try_start_0
    iget-boolean v0, p1, Lorg/mozilla/javascript/regexp/RECharSet;->converted:Z

    if-nez v0, :cond_0

    .line 1459
    invoke-static {p0, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->processCharSetImpl(Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECharSet;)V

    .line 1460
    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/mozilla/javascript/regexp/RECharSet;->converted:Z

    .line 1462
    :cond_0
    monitor-exit p1

    .line 1463
    return-void

    .line 1462
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static processCharSetImpl(Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECharSet;)V
    .locals 10
    .parameter "gData"
    .parameter "charSet"

    .prologue
    .line 1469
    iget v4, p1, Lorg/mozilla/javascript/regexp/RECharSet;->startIndex:I

    .line 1470
    .local v4, src:I
    iget v0, p1, Lorg/mozilla/javascript/regexp/RECharSet;->strlength:I

    add-int v2, v4, v0

    .line 1472
    .local v2, end:I
    const/4 v3, 0x0

    .line 1478
    .local v3, rangeStart:C
    const/4 v1, 0x0

    .line 1480
    .local v1, inRange:Z
    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/mozilla/javascript/regexp/RECharSet;->sense:Z

    .line 1481
    iget v0, p1, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    .line 1482
    .local v0, byteLength:I
    new-array v0, v0, [B

    .end local v0           #byteLength:I
    iput-object v0, p1, Lorg/mozilla/javascript/regexp/RECharSet;->bits:[B

    .line 1484
    if-ne v4, v2, :cond_0

    move p0, v1

    .end local v1           #inRange:Z
    .local p0, inRange:Z
    move p1, v3

    .end local v3           #rangeStart:C
    .local p1, rangeStart:C
    move v0, v4

    .line 1646
    .end local v4           #src:I
    .local v0, src:I
    :goto_0
    return-void

    .line 1487
    .end local v0           #src:I
    .restart local v1       #inRange:Z
    .restart local v3       #rangeStart:C
    .restart local v4       #src:I
    .local p0, gData:Lorg/mozilla/javascript/regexp/REGlobalData;
    .local p1, charSet:Lorg/mozilla/javascript/regexp/RECharSet;
    :cond_0
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    aget-char v0, v0, v4

    const/16 v5, 0x5e

    if-ne v0, v5, :cond_11

    .line 1488
    const/4 v0, 0x0

    iput-boolean v0, p1, Lorg/mozilla/javascript/regexp/RECharSet;->sense:Z

    .line 1489
    add-int/lit8 v0, v4, 0x1

    .end local v4           #src:I
    .restart local v0       #src:I
    move v4, v1

    .end local v1           #inRange:Z
    .local v4, inRange:Z
    move v7, v3

    .end local v3           #rangeStart:C
    .local v7, rangeStart:C
    move v1, v0

    .line 1492
    .end local v0           #src:I
    .local v1, src:I
    :cond_1
    :goto_1
    if-eq v1, v2, :cond_c

    .line 1493
    const/4 v5, 0x2

    .line 1494
    .local v5, nDigits:I
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    aget-char v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1613
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v3, v0, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    add-int/lit8 v0, v1, 0x1

    .end local v1           #src:I
    .restart local v0       #src:I
    aget-char v1, v3, v1

    .local v1, thisCh:C
    move v9, v5

    .end local v5           #nDigits:I
    .local v9, nDigits:I
    move v5, v1

    .end local v1           #thisCh:C
    .local v5, thisCh:C
    move v1, v0

    .end local v0           #src:I
    .local v1, src:I
    move v0, v9

    .line 1617
    .end local v9           #nDigits:I
    .local v0, nDigits:I
    :goto_2
    if-eqz v4, :cond_a

    .line 1618
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    .end local v0           #nDigits:I
    iget v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_9

    .line 1619
    invoke-static {v7}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v0

    invoke-static {v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v3

    invoke-static {p1, v0, v3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterRangeToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;CC)V

    .line 1622
    invoke-static {v7}, Lorg/mozilla/javascript/regexp/NativeRegExp;->downcase(C)C

    move-result v0

    invoke-static {v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->downcase(C)C

    move-result v3

    invoke-static {p1, v0, v3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterRangeToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;CC)V

    .line 1628
    :goto_3
    const/4 v0, 0x0

    .end local v4           #inRange:Z
    .local v0, inRange:Z
    move v4, v0

    .end local v0           #inRange:Z
    .restart local v4       #inRange:Z
    goto :goto_1

    .line 1496
    .local v5, nDigits:I
    :pswitch_0
    add-int/lit8 v0, v1, 0x1

    .line 1497
    .end local v1           #src:I
    .local v0, src:I
    iget-object v1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v1, v1, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    add-int/lit8 v8, v0, 0x1

    .end local v0           #src:I
    .local v8, src:I
    aget-char v0, v1, v0

    .line 1498
    .local v0, c:C
    sparse-switch v0, :sswitch_data_0

    .line 1606
    move v0, v0

    .local v0, thisCh:C
    move v1, v8

    .end local v8           #src:I
    .restart local v1       #src:I
    move v9, v0

    .end local v0           #thisCh:C
    .local v9, thisCh:C
    move v0, v5

    .end local v5           #nDigits:I
    .local v0, nDigits:I
    move v5, v9

    .line 1607
    .end local v9           #thisCh:C
    .local v5, thisCh:C
    goto :goto_2

    .line 1500
    .end local v1           #src:I
    .local v0, c:C
    .local v5, nDigits:I
    .restart local v8       #src:I
    :sswitch_0
    const/16 v0, 0x8

    .local v0, thisCh:C
    move v1, v8

    .end local v8           #src:I
    .restart local v1       #src:I
    move v9, v0

    .end local v0           #thisCh:C
    .restart local v9       #thisCh:C
    move v0, v5

    .end local v5           #nDigits:I
    .local v0, nDigits:I
    move v5, v9

    .line 1501
    .end local v9           #thisCh:C
    .local v5, thisCh:C
    goto :goto_2

    .line 1503
    .end local v1           #src:I
    .local v0, c:C
    .local v5, nDigits:I
    .restart local v8       #src:I
    :sswitch_1
    const/16 v0, 0xc

    .local v0, thisCh:C
    move v1, v8

    .end local v8           #src:I
    .restart local v1       #src:I
    move v9, v0

    .end local v0           #thisCh:C
    .restart local v9       #thisCh:C
    move v0, v5

    .end local v5           #nDigits:I
    .local v0, nDigits:I
    move v5, v9

    .line 1504
    .end local v9           #thisCh:C
    .local v5, thisCh:C
    goto :goto_2

    .line 1506
    .end local v1           #src:I
    .local v0, c:C
    .local v5, nDigits:I
    .restart local v8       #src:I
    :sswitch_2
    const/16 v0, 0xa

    .local v0, thisCh:C
    move v1, v8

    .end local v8           #src:I
    .restart local v1       #src:I
    move v9, v0

    .end local v0           #thisCh:C
    .restart local v9       #thisCh:C
    move v0, v5

    .end local v5           #nDigits:I
    .local v0, nDigits:I
    move v5, v9

    .line 1507
    .end local v9           #thisCh:C
    .local v5, thisCh:C
    goto :goto_2

    .line 1509
    .end local v1           #src:I
    .local v0, c:C
    .local v5, nDigits:I
    .restart local v8       #src:I
    :sswitch_3
    const/16 v0, 0xd

    .local v0, thisCh:C
    move v1, v8

    .end local v8           #src:I
    .restart local v1       #src:I
    move v9, v0

    .end local v0           #thisCh:C
    .restart local v9       #thisCh:C
    move v0, v5

    .end local v5           #nDigits:I
    .local v0, nDigits:I
    move v5, v9

    .line 1510
    .end local v9           #thisCh:C
    .local v5, thisCh:C
    goto :goto_2

    .line 1512
    .end local v1           #src:I
    .local v0, c:C
    .local v5, nDigits:I
    .restart local v8       #src:I
    :sswitch_4
    const/16 v0, 0x9

    .local v0, thisCh:C
    move v1, v8

    .end local v8           #src:I
    .restart local v1       #src:I
    move v9, v0

    .end local v0           #thisCh:C
    .restart local v9       #thisCh:C
    move v0, v5

    .end local v5           #nDigits:I
    .local v0, nDigits:I
    move v5, v9

    .line 1513
    .end local v9           #thisCh:C
    .local v5, thisCh:C
    goto :goto_2

    .line 1515
    .end local v1           #src:I
    .local v0, c:C
    .local v5, nDigits:I
    .restart local v8       #src:I
    :sswitch_5
    const/16 v0, 0xb

    .local v0, thisCh:C
    move v1, v8

    .end local v8           #src:I
    .restart local v1       #src:I
    move v9, v0

    .end local v0           #thisCh:C
    .restart local v9       #thisCh:C
    move v0, v5

    .end local v5           #nDigits:I
    .local v0, nDigits:I
    move v5, v9

    .line 1516
    .end local v9           #thisCh:C
    .local v5, thisCh:C
    goto :goto_2

    .line 1518
    .end local v1           #src:I
    .local v0, c:C
    .local v5, nDigits:I
    .restart local v8       #src:I
    :sswitch_6
    add-int/lit8 v0, v8, 0x1

    if-ge v0, v2, :cond_2

    .end local v0           #c:C
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    add-int/lit8 v1, v8, 0x1

    aget-char v0, v0, v1

    invoke-static {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isWord(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1519
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v1, v0, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    add-int/lit8 v0, v8, 0x1

    .end local v8           #src:I
    .local v0, src:I
    aget-char v1, v1, v8

    and-int/lit8 v1, v1, 0x1f

    int-to-char v1, v1

    .local v1, thisCh:C
    move v9, v5

    .end local v5           #nDigits:I
    .local v9, nDigits:I
    move v5, v1

    .end local v1           #thisCh:C
    .local v5, thisCh:C
    move v1, v0

    .end local v0           #src:I
    .local v1, src:I
    move v0, v9

    .end local v9           #nDigits:I
    .local v0, nDigits:I
    goto/16 :goto_2

    .line 1521
    .end local v0           #nDigits:I
    .end local v1           #src:I
    .local v5, nDigits:I
    .restart local v8       #src:I
    :cond_2
    add-int/lit8 v0, v8, -0x1

    .line 1522
    .end local v8           #src:I
    .local v0, src:I
    const/16 v1, 0x5c

    .local v1, thisCh:C
    move v9, v5

    .end local v5           #nDigits:I
    .restart local v9       #nDigits:I
    move v5, v1

    .end local v1           #thisCh:C
    .local v5, thisCh:C
    move v1, v0

    .end local v0           #src:I
    .local v1, src:I
    move v0, v9

    .line 1524
    .end local v9           #nDigits:I
    .local v0, nDigits:I
    goto/16 :goto_2

    .line 1526
    .end local v1           #src:I
    .local v0, c:C
    .local v5, nDigits:I
    .restart local v8       #src:I
    :sswitch_7
    add-int/lit8 v1, v5, 0x2

    .end local v5           #nDigits:I
    .local v1, nDigits:I
    move v6, v1

    .line 1529
    .end local v1           #nDigits:I
    .local v6, nDigits:I
    :goto_4
    const/4 v3, 0x0

    .line 1530
    .local v3, n:I
    const/4 v1, 0x0

    .local v1, i:I
    move v5, v3

    .end local v3           #n:I
    .local v5, n:I
    move v3, v1

    .end local v1           #i:I
    .local v3, i:I
    move v1, v8

    .end local v8           #src:I
    .local v1, src:I
    :goto_5
    if-ge v3, v6, :cond_10

    if-ge v1, v2, :cond_10

    .line 1531
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    .end local v0           #c:C
    iget-object v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    add-int/lit8 v8, v1, 0x1

    .end local v1           #src:I
    .restart local v8       #src:I
    aget-char v0, v0, v1

    .line 1532
    .restart local v0       #c:C
    invoke-static {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->toASCIIHexDigit(I)I

    move-result v1

    .line 1533
    .local v1, digit:I
    if-gez v1, :cond_3

    .line 1537
    add-int/lit8 v1, v3, 0x1

    sub-int v3, v8, v1

    .line 1538
    .end local v8           #src:I
    .local v3, src:I
    const/16 v1, 0x5c

    .line 1543
    .end local v5           #n:I
    .local v1, n:I
    :goto_6
    int-to-char v0, v1

    .local v0, thisCh:C
    move v5, v0

    .end local v0           #thisCh:C
    .local v5, thisCh:C
    move v1, v3

    .end local v3           #src:I
    .local v1, src:I
    move v0, v6

    .line 1544
    .end local v6           #nDigits:I
    .local v0, nDigits:I
    goto/16 :goto_2

    .line 1541
    .local v0, c:C
    .local v1, digit:I
    .local v3, i:I
    .local v5, n:I
    .restart local v6       #nDigits:I
    .restart local v8       #src:I
    :cond_3
    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v5, v1

    .line 1530
    add-int/lit8 v1, v3, 0x1

    .end local v3           #i:I
    .local v1, i:I
    move v3, v1

    .end local v1           #i:I
    .restart local v3       #i:I
    move v1, v8

    .end local v8           #src:I
    .local v1, src:I
    goto :goto_5

    .line 1559
    .end local v1           #src:I
    .end local v3           #i:I
    .end local v6           #nDigits:I
    .local v5, nDigits:I
    .restart local v8       #src:I
    :sswitch_8
    const/16 v1, 0x30

    sub-int v1, v0, v1

    .line 1560
    .local v1, n:I
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    .end local v0           #c:C
    iget-object v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    aget-char v0, v0, v8

    .line 1561
    .restart local v0       #c:C
    const/16 v3, 0x30

    if-gt v3, v0, :cond_f

    const/16 v3, 0x37

    if-gt v0, v3, :cond_f

    .line 1562
    add-int/lit8 v6, v8, 0x1

    .line 1563
    .end local v8           #src:I
    .local v6, src:I
    mul-int/lit8 v1, v1, 0x8

    const/16 v3, 0x30

    sub-int/2addr v0, v3

    add-int v3, v1, v0

    .line 1564
    .end local v1           #n:I
    .local v3, n:I
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    .end local v0           #c:C
    iget-object v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    aget-char v0, v0, v6

    .line 1565
    .restart local v0       #c:C
    const/16 v1, 0x30

    if-gt v1, v0, :cond_e

    const/16 v1, 0x37

    if-gt v0, v1, :cond_e

    .line 1566
    add-int/lit8 v6, v6, 0x1

    .line 1567
    mul-int/lit8 v1, v3, 0x8

    const/16 v8, 0x30

    sub-int v8, v0, v8

    add-int/2addr v1, v8

    .line 1568
    .local v1, i:I
    const/16 v8, 0xff

    if-gt v1, v8, :cond_4

    .line 1569
    move v1, v1

    .end local v3           #n:I
    .local v1, n:I
    move v3, v6

    .line 1574
    .end local v6           #src:I
    .local v3, src:I
    :goto_7
    int-to-char v0, v1

    .local v0, thisCh:C
    move v1, v3

    .end local v3           #src:I
    .local v1, src:I
    move v9, v0

    .end local v0           #thisCh:C
    .local v9, thisCh:C
    move v0, v5

    .end local v5           #nDigits:I
    .local v0, nDigits:I
    move v5, v9

    .line 1575
    .end local v9           #thisCh:C
    .local v5, thisCh:C
    goto/16 :goto_2

    .line 1571
    .local v0, c:C
    .local v1, i:I
    .local v3, n:I
    .local v5, nDigits:I
    .restart local v6       #src:I
    :cond_4
    add-int/lit8 v1, v6, -0x1

    .end local v6           #src:I
    .local v1, src:I
    move v9, v3

    .end local v3           #n:I
    .local v9, n:I
    move v3, v1

    .end local v1           #src:I
    .local v3, src:I
    move v1, v9

    .end local v9           #n:I
    .local v1, n:I
    goto :goto_7

    .line 1578
    .end local v1           #n:I
    .end local v3           #src:I
    .restart local v8       #src:I
    :sswitch_9
    const/16 v0, 0x30

    const/16 v1, 0x39

    invoke-static {p1, v0, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterRangeToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;CC)V

    .end local v0           #c:C
    move v1, v8

    .line 1579
    .end local v8           #src:I
    .local v1, src:I
    goto/16 :goto_1

    .line 1581
    .end local v1           #src:I
    .restart local v0       #c:C
    .restart local v8       #src:I
    :sswitch_a
    const/4 v0, 0x0

    const/16 v1, 0x2f

    invoke-static {p1, v0, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterRangeToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;CC)V

    .line 1582
    .end local v0           #c:C
    const/16 v0, 0x3a

    iget v1, p1, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    int-to-char v1, v1

    invoke-static {p1, v0, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterRangeToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;CC)V

    move v1, v8

    .line 1584
    .end local v8           #src:I
    .restart local v1       #src:I
    goto/16 :goto_1

    .line 1586
    .end local v1           #src:I
    .restart local v0       #c:C
    .restart local v8       #src:I
    :sswitch_b
    iget v0, p1, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    .local v0, i:I
    :goto_8
    if-ltz v0, :cond_d

    .line 1587
    invoke-static {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isREWhiteSpace(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1588
    int-to-char v1, v0

    invoke-static {p1, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    .line 1586
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1591
    .local v0, c:C
    :sswitch_c
    iget v0, p1, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    .local v0, i:I
    :goto_9
    if-ltz v0, :cond_d

    .line 1592
    invoke-static {v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isREWhiteSpace(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1593
    int-to-char v1, v0

    invoke-static {p1, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    .line 1591
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 1596
    .local v0, c:C
    :sswitch_d
    iget v0, p1, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    .local v0, i:I
    :goto_a
    if-ltz v0, :cond_d

    .line 1597
    int-to-char v1, v0

    invoke-static {v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isWord(C)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1598
    int-to-char v1, v0

    invoke-static {p1, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    .line 1596
    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 1601
    .local v0, c:C
    :sswitch_e
    iget v0, p1, Lorg/mozilla/javascript/regexp/RECharSet;->length:I

    .local v0, i:I
    :goto_b
    if-ltz v0, :cond_d

    .line 1602
    int-to-char v1, v0

    invoke-static {v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->isWord(C)Z

    move-result v1

    if-nez v1, :cond_8

    .line 1603
    int-to-char v1, v0

    invoke-static {p1, v1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    .line 1601
    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 1626
    .end local v0           #i:I
    .end local v8           #src:I
    .restart local v1       #src:I
    .local v5, thisCh:C
    :cond_9
    invoke-static {p1, v7, v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterRangeToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;CC)V

    goto/16 :goto_3

    .line 1631
    .local v0, nDigits:I
    :cond_a
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    .end local v0           #nDigits:I
    iget v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_b

    .line 1632
    invoke-static {v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->upcase(C)C

    move-result v0

    invoke-static {p1, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    .line 1633
    invoke-static {v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->downcase(C)C

    move-result v0

    invoke-static {p1, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    .line 1637
    :goto_c
    const/4 v0, 0x1

    sub-int v0, v2, v0

    if-ge v1, v0, :cond_1

    .line 1638
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->regexp:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    aget-char v0, v0, v1

    const/16 v3, 0x2d

    if-ne v0, v3, :cond_1

    .line 1639
    add-int/lit8 v3, v1, 0x1

    .line 1640
    .end local v1           #src:I
    .restart local v3       #src:I
    const/4 v0, 0x1

    .line 1641
    .end local v4           #inRange:Z
    .local v0, inRange:Z
    move v1, v5

    .end local v7           #rangeStart:C
    .local v1, rangeStart:C
    move v4, v0

    .end local v0           #inRange:Z
    .restart local v4       #inRange:Z
    move v7, v1

    .end local v1           #rangeStart:C
    .restart local v7       #rangeStart:C
    move v1, v3

    .end local v3           #src:I
    .local v1, src:I
    goto/16 :goto_1

    .line 1635
    :cond_b
    invoke-static {p1, v5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addCharacterToCharSet(Lorg/mozilla/javascript/regexp/RECharSet;C)V

    goto :goto_c

    .end local v5           #thisCh:C
    :cond_c
    move p0, v4

    .end local v4           #inRange:Z
    .local p0, inRange:Z
    move p1, v7

    .end local v7           #rangeStart:C
    .local p1, rangeStart:C
    move v0, v1

    .line 1646
    .end local v1           #src:I
    .local v0, src:I
    goto/16 :goto_0

    .local v0, i:I
    .restart local v4       #inRange:Z
    .local v5, nDigits:I
    .restart local v7       #rangeStart:C
    .restart local v8       #src:I
    .local p0, gData:Lorg/mozilla/javascript/regexp/REGlobalData;
    .local p1, charSet:Lorg/mozilla/javascript/regexp/RECharSet;
    :cond_d
    move v1, v8

    .end local v8           #src:I
    .restart local v1       #src:I
    goto/16 :goto_1

    .end local v1           #src:I
    .local v0, c:C
    .local v3, n:I
    .restart local v6       #src:I
    :cond_e
    move v1, v3

    .end local v3           #n:I
    .local v1, n:I
    move v3, v6

    .end local v6           #src:I
    .local v3, src:I
    goto/16 :goto_7

    .end local v3           #src:I
    .restart local v8       #src:I
    :cond_f
    move v3, v8

    .end local v8           #src:I
    .restart local v3       #src:I
    goto/16 :goto_7

    .local v1, src:I
    .local v3, i:I
    .local v5, n:I
    .local v6, nDigits:I
    :cond_10
    move v3, v1

    .end local v1           #src:I
    .local v3, src:I
    move v1, v5

    .end local v5           #n:I
    .local v1, n:I
    goto/16 :goto_6

    .end local v1           #n:I
    .end local v3           #src:I
    .end local v6           #nDigits:I
    .local v5, nDigits:I
    .restart local v8       #src:I
    :sswitch_f
    move v6, v5

    .end local v5           #nDigits:I
    .restart local v6       #nDigits:I
    goto/16 :goto_4

    .end local v0           #c:C
    .end local v6           #nDigits:I
    .end local v7           #rangeStart:C
    .end local v8           #src:I
    .local v1, inRange:Z
    .local v3, rangeStart:C
    .local v4, src:I
    :cond_11
    move v7, v3

    .end local v3           #rangeStart:C
    .restart local v7       #rangeStart:C
    move v9, v1

    .end local v1           #inRange:Z
    .local v9, inRange:Z
    move v1, v4

    .end local v4           #src:I
    .local v1, src:I
    move v4, v9

    .end local v9           #inRange:Z
    .local v4, inRange:Z
    goto/16 :goto_1

    .line 1494
    nop

    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_0
    .end packed-switch

    .line 1498
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_8
        0x31 -> :sswitch_8
        0x32 -> :sswitch_8
        0x33 -> :sswitch_8
        0x34 -> :sswitch_8
        0x35 -> :sswitch_8
        0x36 -> :sswitch_8
        0x37 -> :sswitch_8
        0x44 -> :sswitch_a
        0x53 -> :sswitch_c
        0x57 -> :sswitch_e
        0x62 -> :sswitch_0
        0x63 -> :sswitch_6
        0x64 -> :sswitch_9
        0x66 -> :sswitch_1
        0x6e -> :sswitch_2
        0x72 -> :sswitch_3
        0x73 -> :sswitch_b
        0x74 -> :sswitch_4
        0x75 -> :sswitch_7
        0x76 -> :sswitch_5
        0x77 -> :sswitch_d
        0x78 -> :sswitch_f
    .end sparse-switch
.end method

.method private static pushBackTrackState(Lorg/mozilla/javascript/regexp/REGlobalData;BI)V
    .locals 1
    .parameter "gData"
    .parameter "op"
    .parameter "target"

    .prologue
    .line 1324
    new-instance v0, Lorg/mozilla/javascript/regexp/REBackTrackData;

    invoke-direct {v0, p0, p1, p2}, Lorg/mozilla/javascript/regexp/REBackTrackData;-><init>(Lorg/mozilla/javascript/regexp/REGlobalData;II)V

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->backTrackStackTop:Lorg/mozilla/javascript/regexp/REBackTrackData;

    .line 1325
    return-void
.end method

.method private static pushProgState(Lorg/mozilla/javascript/regexp/REGlobalData;IILorg/mozilla/javascript/regexp/REBackTrackData;II)V
    .locals 8
    .parameter "gData"
    .parameter "min"
    .parameter "max"
    .parameter "backTrackLastToSave"
    .parameter "continuation_pc"
    .parameter "continuation_op"

    .prologue
    .line 1307
    new-instance v0, Lorg/mozilla/javascript/regexp/REProgState;

    iget-object v1, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    iget v4, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    move v2, p1

    move v3, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/mozilla/javascript/regexp/REProgState;-><init>(Lorg/mozilla/javascript/regexp/REProgState;IIILorg/mozilla/javascript/regexp/REBackTrackData;II)V

    iput-object v0, p0, Lorg/mozilla/javascript/regexp/REGlobalData;->stateStackTop:Lorg/mozilla/javascript/regexp/REProgState;

    .line 1311
    return-void
.end method

.method private static realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/regexp/NativeRegExp;
    .locals 1
    .parameter "thisObj"
    .parameter "f"

    .prologue
    .line 2568
    instance-of v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;

    if-nez v0, :cond_0

    .line 2569
    invoke-static {p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->incompatibleCallError(Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    .line 2570
    :cond_0
    check-cast p0, Lorg/mozilla/javascript/regexp/NativeRegExp;

    .end local p0
    return-object p0
.end method

.method private static reportError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "messageId"
    .parameter "arg"

    .prologue
    .line 2408
    invoke-static {p0, p1}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage1(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2409
    .local v0, msg:Ljava/lang/String;
    const-string v1, "SyntaxError"

    invoke-static {v1, v0}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v1

    throw v1
.end method

.method private static reportWarning(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "cx"
    .parameter "messageId"
    .parameter "arg"

    .prologue
    .line 2400
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lorg/mozilla/javascript/Context;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2401
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->getMessage1(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2402
    .local v0, msg:Ljava/lang/String;
    invoke-static {v0}, Lorg/mozilla/javascript/Context;->reportWarning(Ljava/lang/String;)V

    .line 2404
    .end local v0           #msg:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static resolveForwardJump([BII)V
    .locals 1
    .parameter "array"
    .parameter "from"
    .parameter "pc"

    .prologue
    .line 1148
    if-le p1, p2, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1149
    :cond_0
    sub-int v0, p2, p1

    invoke-static {p0, p1, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->addIndex([BII)I

    .line 1150
    return-void
.end method

.method private static toASCIIHexDigit(I)I
    .locals 4
    .parameter "c"

    .prologue
    const/16 v3, 0x61

    const/16 v2, 0x30

    const/4 v1, -0x1

    .line 430
    if-ge p0, v2, :cond_0

    move v0, v1

    .line 439
    :goto_0
    return v0

    .line 432
    :cond_0
    const/16 v0, 0x39

    if-gt p0, v0, :cond_1

    .line 433
    sub-int v0, p0, v2

    goto :goto_0

    .line 435
    :cond_1
    or-int/lit8 p0, p0, 0x20

    .line 436
    if-gt v3, p0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    .line 437
    sub-int v0, p0, v3

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_2
    move v0, v1

    .line 439
    goto :goto_0
.end method

.method private static upcase(C)C
    .locals 2
    .parameter "ch"

    .prologue
    const/16 v1, 0x80

    .line 401
    if-ge p0, v1, :cond_1

    .line 402
    const/16 v1, 0x61

    if-gt v1, p0, :cond_0

    const/16 v1, 0x7a

    if-gt p0, v1, :cond_0

    .line 403
    add-int/lit8 v1, p0, -0x20

    int-to-char v1, v1

    .line 409
    :goto_0
    return v1

    :cond_0
    move v1, p0

    .line 405
    goto :goto_0

    .line 407
    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 408
    .local v0, cu:C
    if-lt p0, v1, :cond_2

    if-ge v0, v1, :cond_2

    move v1, p0

    goto :goto_0

    :cond_2
    move v1, v0

    .line 409
    goto :goto_0
.end method


# virtual methods
.method public call(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "cx"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    .line 199
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p4, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->execSub(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method compile(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 7
    .parameter "cx"
    .parameter "scope"
    .parameter "args"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 209
    array-length v3, p3

    if-lez v3, :cond_1

    aget-object v3, p3, v6

    instance-of v3, v3, Lorg/mozilla/javascript/regexp/NativeRegExp;

    if-eqz v3, :cond_1

    .line 210
    array-length v3, p3

    if-le v3, v5, :cond_0

    aget-object v3, p3, v5

    sget-object v4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq v3, v4, :cond_0

    .line 212
    const-string v3, "msg.bad.regexp.compile"

    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->typeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v3

    throw v3

    .line 214
    :cond_0
    aget-object v2, p3, v6

    check-cast v2, Lorg/mozilla/javascript/regexp/NativeRegExp;

    .line 215
    .local v2, thatObj:Lorg/mozilla/javascript/regexp/NativeRegExp;
    iget-object v3, v2, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iput-object v3, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    .line 216
    iget-wide v3, v2, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:D

    iput-wide v3, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:D

    .line 225
    .end local v2           #thatObj:Lorg/mozilla/javascript/regexp/NativeRegExp;
    :goto_0
    return-object p0

    .line 219
    :cond_1
    array-length v3, p3

    if-nez v3, :cond_2

    const-string v3, ""

    move-object v1, v3

    .line 220
    .local v1, s:Ljava/lang/String;
    :goto_1
    array-length v3, p3

    if-le v3, v5, :cond_3

    aget-object v3, p3, v5

    sget-object v4, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-eq v3, v4, :cond_3

    aget-object v3, p3, v5

    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 223
    .local v0, global:Ljava/lang/String;
    :goto_2
    invoke-static {p1, v1, v0, v6}, Lorg/mozilla/javascript/regexp/NativeRegExp;->compileRE(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mozilla/javascript/regexp/RECompiled;

    iput-object v3, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    .line 224
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:D

    goto :goto_0

    .line 219
    .end local v0           #global:Ljava/lang/String;
    .end local v1           #s:Ljava/lang/String;
    :cond_2
    aget-object v3, p3, v6

    invoke-static {v3}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    goto :goto_1

    .line 220
    .restart local v1       #s:Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_2
.end method

.method public construct(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;
    .locals 1
    .parameter "cx"
    .parameter "scope"
    .parameter "args"

    .prologue
    .line 204
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->execSub(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/mozilla/javascript/Scriptable;

    return-object p0
.end method

.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "f"
    .parameter "cx"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    .line 2540
    sget-object v2, Lorg/mozilla/javascript/regexp/NativeRegExp;->REGEXP_TAG:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2541
    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2561
    :goto_0
    return-object v2

    .line 2543
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v0

    .line 2544
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 2563
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2546
    :pswitch_0
    invoke-static {p4, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/regexp/NativeRegExp;

    move-result-object v2

    invoke-virtual {v2, p2, p3, p5}, Lorg/mozilla/javascript/regexp/NativeRegExp;->compile(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    goto :goto_0

    .line 2550
    :pswitch_1
    invoke-static {p4, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/regexp/NativeRegExp;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2553
    :pswitch_2
    invoke-static {p4, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/regexp/NativeRegExp;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v2, p2, p3, p5, v3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->execSub(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 2556
    :pswitch_3
    invoke-static {p4, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/regexp/NativeRegExp;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v2, p2, p3, p5, v3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->execSub(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 2557
    .local v1, x:Ljava/lang/Object;
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 2561
    .end local v1           #x:Ljava/lang/Object;
    :pswitch_4
    invoke-static {p4, p1}, Lorg/mozilla/javascript/regexp/NativeRegExp;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/regexp/NativeRegExp;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v2, p2, p3, p5, v3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->execSub(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 2544
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method executeRegExp(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/regexp/RegExpImpl;Ljava/lang/String;[II)Ljava/lang/Object;
    .locals 24
    .parameter "cx"
    .parameter "scopeObj"
    .parameter "res"
    .parameter "str"
    .parameter "indexp"
    .parameter "matchType"

    .prologue
    .line 2267
    new-instance v4, Lorg/mozilla/javascript/regexp/REGlobalData;

    invoke-direct {v4}, Lorg/mozilla/javascript/regexp/REGlobalData;-><init>()V

    .line 2269
    .local v4, gData:Lorg/mozilla/javascript/regexp/REGlobalData;
    const/4 v5, 0x0

    aget v7, p5, v5

    .line 2270
    .local v7, start:I
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 2271
    .local v6, charArray:[C
    array-length v8, v6

    .line 2272
    .local v8, end:I
    if-le v7, v8, :cond_0

    .line 2273
    move v7, v8

    .line 2277
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    move-object v5, v0

    move-object/from16 v0, p3

    iget-boolean v0, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->multiline:Z

    move v9, v0

    invoke-static/range {v4 .. v9}, Lorg/mozilla/javascript/regexp/NativeRegExp;->matchRegExp(Lorg/mozilla/javascript/regexp/REGlobalData;Lorg/mozilla/javascript/regexp/RECompiled;[CIIZ)Z

    move-result v15

    .line 2279
    .local v15, matches:Z
    if-nez v15, :cond_2

    .line 2280
    const/4 v5, 0x2

    move/from16 v0, p6

    move v1, v5

    if-eq v0, v1, :cond_1

    const/4 v5, 0x0

    .line 2390
    .end local v6           #charArray:[C
    .end local v7           #start:I
    :goto_0
    return-object v5

    .line 2281
    .restart local v6       #charArray:[C
    .restart local v7       #start:I
    :cond_1
    sget-object v5, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    goto :goto_0

    .line 2283
    :cond_2
    iget v14, v4, Lorg/mozilla/javascript/regexp/REGlobalData;->cp:I

    .line 2284
    .local v14, index:I
    move v13, v14

    .line 2285
    .local v13, i:I
    const/4 v5, 0x0

    aput v13, p5, v5

    .line 2286
    iget v5, v4, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    add-int/2addr v5, v7

    sub-int v16, v13, v5

    .line 2287
    .local v16, matchlen:I
    move v12, v14

    .line 2288
    .local v12, ep:I
    sub-int v14, v14, v16

    .line 2292
    if-nez p6, :cond_5

    .line 2297
    sget-object v22, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2298
    .local v22, result:Ljava/lang/Boolean;
    const/16 v19, 0x0

    .line 2315
    .end local v22           #result:Ljava/lang/Boolean;
    .local v19, obj:Lorg/mozilla/javascript/Scriptable;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    move-object v5, v0

    iget v5, v5, Lorg/mozilla/javascript/regexp/RECompiled;->parenCount:I

    if-nez v5, :cond_6

    .line 2316
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p3

    iput-object v0, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->parens:[Lorg/mozilla/javascript/regexp/SubString;

    .line 2317
    sget-object v5, Lorg/mozilla/javascript/regexp/SubString;->emptySubString:Lorg/mozilla/javascript/regexp/SubString;

    move-object v0, v5

    move-object/from16 v1, p3

    iput-object v0, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastParen:Lorg/mozilla/javascript/regexp/SubString;

    .line 2341
    :goto_2
    if-eqz p6, :cond_3

    .line 2346
    const-string v5, "index"

    iget v9, v4, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    add-int/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v19

    move-object v1, v5

    move-object/from16 v2, v19

    move-object v3, v9

    invoke-interface {v0, v1, v2, v3}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 2347
    const-string v5, "input"

    move-object/from16 v0, v19

    move-object v1, v5

    move-object/from16 v2, v19

    move-object/from16 v3, p4

    invoke-interface {v0, v1, v2, v3}, Lorg/mozilla/javascript/Scriptable;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 2350
    :cond_3
    move-object/from16 v0, p3

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    move-object v5, v0

    if-nez v5, :cond_4

    .line 2351
    new-instance v5, Lorg/mozilla/javascript/regexp/SubString;

    invoke-direct {v5}, Lorg/mozilla/javascript/regexp/SubString;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p3

    iput-object v0, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    .line 2352
    new-instance v5, Lorg/mozilla/javascript/regexp/SubString;

    invoke-direct {v5}, Lorg/mozilla/javascript/regexp/SubString;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p3

    iput-object v0, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    .line 2353
    new-instance v5, Lorg/mozilla/javascript/regexp/SubString;

    invoke-direct {v5}, Lorg/mozilla/javascript/regexp/SubString;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p3

    iput-object v0, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->rightContext:Lorg/mozilla/javascript/regexp/SubString;

    .line 2355
    :cond_4
    move-object/from16 v0, p3

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    move-object v5, v0

    iput-object v6, v5, Lorg/mozilla/javascript/regexp/SubString;->charArray:[C

    .line 2356
    move-object/from16 v0, p3

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    move-object v5, v0

    iput v14, v5, Lorg/mozilla/javascript/regexp/SubString;->index:I

    .line 2357
    move-object/from16 v0, p3

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastMatch:Lorg/mozilla/javascript/regexp/SubString;

    move-object v5, v0

    move/from16 v0, v16

    move-object v1, v5

    iput v0, v1, Lorg/mozilla/javascript/regexp/SubString;->length:I

    .line 2359
    move-object/from16 v0, p3

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    move-object v5, v0

    iput-object v6, v5, Lorg/mozilla/javascript/regexp/SubString;->charArray:[C

    .line 2360
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v5

    const/16 v9, 0x78

    if-ne v5, v9, :cond_b

    .line 2374
    move-object/from16 v0, p3

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    move-object v5, v0

    iput v7, v5, Lorg/mozilla/javascript/regexp/SubString;->index:I

    .line 2375
    move-object/from16 v0, p3

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    move-object v5, v0

    iget v7, v4, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    .end local v7           #start:I
    iput v7, v5, Lorg/mozilla/javascript/regexp/SubString;->length:I

    .line 2386
    :goto_3
    move-object/from16 v0, p3

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->rightContext:Lorg/mozilla/javascript/regexp/SubString;

    move-object v5, v0

    iput-object v6, v5, Lorg/mozilla/javascript/regexp/SubString;->charArray:[C

    .line 2387
    move-object/from16 v0, p3

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->rightContext:Lorg/mozilla/javascript/regexp/SubString;

    move-object v5, v0

    iput v12, v5, Lorg/mozilla/javascript/regexp/SubString;->index:I

    .line 2388
    move-object/from16 v0, p3

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->rightContext:Lorg/mozilla/javascript/regexp/SubString;

    move-object v5, v0

    sub-int v6, v8, v12

    iput v6, v5, Lorg/mozilla/javascript/regexp/SubString;->length:I

    .end local v6           #charArray:[C
    move-object/from16 v5, v22

    .line 2390
    goto/16 :goto_0

    .line 2307
    .end local v19           #obj:Lorg/mozilla/javascript/Scriptable;
    .restart local v6       #charArray:[C
    .restart local v7       #start:I
    :cond_5
    invoke-static/range {p2 .. p2}, Lorg/mozilla/javascript/regexp/NativeRegExp;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v23

    .line 2308
    .local v23, scope:Lorg/mozilla/javascript/Scriptable;
    const-string v5, "Array"

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object v2, v5

    move-object v3, v9

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->newObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v22

    .line 2309
    .local v22, result:Lorg/mozilla/javascript/Scriptable;
    move-object/from16 v0, v22

    check-cast v0, Lorg/mozilla/javascript/Scriptable;

    move-object/from16 v19, v0

    .line 2311
    .restart local v19       #obj:Lorg/mozilla/javascript/Scriptable;
    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object v1, v6

    move v2, v14

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 2312
    .local v17, matchstr:Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, v19

    move v1, v5

    move-object/from16 v2, v19

    move-object/from16 v3, v17

    invoke-interface {v0, v1, v2, v3}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2319
    .end local v17           #matchstr:Ljava/lang/String;
    .end local v22           #result:Lorg/mozilla/javascript/Scriptable;
    .end local v23           #scope:Lorg/mozilla/javascript/Scriptable;
    :cond_6
    const/16 v21, 0x0

    .line 2321
    .local v21, parsub:Lorg/mozilla/javascript/regexp/SubString;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    move-object v5, v0

    iget v5, v5, Lorg/mozilla/javascript/regexp/RECompiled;->parenCount:I

    new-array v5, v5, [Lorg/mozilla/javascript/regexp/SubString;

    move-object v0, v5

    move-object/from16 v1, p3

    iput-object v0, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->parens:[Lorg/mozilla/javascript/regexp/SubString;

    .line 2322
    const/16 v18, 0x0

    .local v18, num:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    move-object v5, v0

    iget v5, v5, Lorg/mozilla/javascript/regexp/RECompiled;->parenCount:I

    move/from16 v0, v18

    move v1, v5

    if-ge v0, v1, :cond_a

    .line 2323
    move-object v0, v4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/regexp/REGlobalData;->parens_index(I)I

    move-result v10

    .line 2325
    .local v10, cap_index:I
    const/4 v5, -0x1

    if-eq v10, v5, :cond_9

    .line 2326
    move-object v0, v4

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/regexp/REGlobalData;->parens_length(I)I

    move-result v11

    .line 2327
    .local v11, cap_length:I
    new-instance v21, Lorg/mozilla/javascript/regexp/SubString;

    .end local v21           #parsub:Lorg/mozilla/javascript/regexp/SubString;
    move-object/from16 v0, v21

    move-object v1, v6

    move v2, v10

    move v3, v11

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/javascript/regexp/SubString;-><init>([CII)V

    .line 2328
    .restart local v21       #parsub:Lorg/mozilla/javascript/regexp/SubString;
    move-object/from16 v0, p3

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->parens:[Lorg/mozilla/javascript/regexp/SubString;

    move-object v5, v0

    aput-object v21, v5, v18

    .line 2329
    if-nez p6, :cond_8

    .line 2322
    .end local v11           #cap_length:I
    :cond_7
    :goto_5
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 2330
    .restart local v11       #cap_length:I
    :cond_8
    invoke-virtual/range {v21 .. v21}, Lorg/mozilla/javascript/regexp/SubString;->toString()Ljava/lang/String;

    move-result-object v20

    .line 2331
    .local v20, parstr:Ljava/lang/String;
    add-int/lit8 v5, v18, 0x1

    move-object/from16 v0, v19

    move v1, v5

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_5

    .line 2334
    .end local v11           #cap_length:I
    .end local v20           #parstr:Ljava/lang/String;
    :cond_9
    if-eqz p6, :cond_7

    .line 2335
    add-int/lit8 v5, v18, 0x1

    sget-object v9, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    move-object/from16 v0, v19

    move v1, v5

    move-object/from16 v2, v19

    move-object v3, v9

    invoke-interface {v0, v1, v2, v3}, Lorg/mozilla/javascript/Scriptable;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_5

    .line 2338
    .end local v10           #cap_index:I
    :cond_a
    move-object/from16 v0, v21

    move-object/from16 v1, p3

    iput-object v0, v1, Lorg/mozilla/javascript/regexp/RegExpImpl;->lastParen:Lorg/mozilla/javascript/regexp/SubString;

    goto/16 :goto_2

    .line 2382
    .end local v18           #num:I
    .end local v21           #parsub:Lorg/mozilla/javascript/regexp/SubString;
    :cond_b
    move-object/from16 v0, p3

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    move-object v5, v0

    const/4 v9, 0x0

    iput v9, v5, Lorg/mozilla/javascript/regexp/SubString;->index:I

    .line 2383
    move-object/from16 v0, p3

    iget-object v0, v0, Lorg/mozilla/javascript/regexp/RegExpImpl;->leftContext:Lorg/mozilla/javascript/regexp/SubString;

    move-object v5, v0

    iget v9, v4, Lorg/mozilla/javascript/regexp/REGlobalData;->skipped:I

    add-int/2addr v7, v9

    iput v7, v5, Lorg/mozilla/javascript/regexp/SubString;->length:I

    goto/16 :goto_3
.end method

.method protected findInstanceIdInfo(Ljava/lang/String;)I
    .locals 7
    .parameter "s"

    .prologue
    const/4 v6, 0x0

    .line 2434
    const/4 v3, 0x0

    .local v3, id:I
    const/4 v0, 0x0

    .line 2435
    .local v0, X:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 2436
    .local v4, s_length:I
    const/4 v5, 0x6

    if-ne v4, v5, :cond_3

    .line 2437
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2438
    .local v2, c:I
    const/16 v5, 0x67

    if-ne v2, v5, :cond_2

    const-string v0, "global"

    const/4 v3, 0x3

    .line 2447
    .end local v2           #c:I
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v3, 0x0

    .line 2453
    :cond_1
    if-nez v3, :cond_6

    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->findInstanceIdInfo(Ljava/lang/String;)I

    move-result v5

    .line 2469
    :goto_1
    return v5

    .line 2439
    .restart local v2       #c:I
    :cond_2
    const/16 v5, 0x73

    if-ne v2, v5, :cond_0

    const-string v0, "source"

    const/4 v3, 0x2

    goto :goto_0

    .line 2441
    .end local v2           #c:I
    :cond_3
    const/16 v5, 0x9

    if-ne v4, v5, :cond_5

    .line 2442
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2443
    .restart local v2       #c:I
    const/16 v5, 0x6c

    if-ne v2, v5, :cond_4

    const-string v0, "lastIndex"

    const/4 v3, 0x1

    goto :goto_0

    .line 2444
    :cond_4
    const/16 v5, 0x6d

    if-ne v2, v5, :cond_0

    const-string v0, "multiline"

    const/4 v3, 0x5

    goto :goto_0

    .line 2446
    .end local v2           #c:I
    :cond_5
    const/16 v5, 0xa

    if-ne v4, v5, :cond_0

    const-string v0, "ignoreCase"

    const/4 v3, 0x4

    goto :goto_0

    .line 2456
    :cond_6
    packed-switch v3, :pswitch_data_0

    .line 2467
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    throw v5

    .line 2458
    :pswitch_0
    const/4 v1, 0x6

    .line 2469
    .local v1, attr:I
    :goto_2
    invoke-static {v1, v3}, Lorg/mozilla/javascript/regexp/NativeRegExp;->instanceIdInfo(II)I

    move-result v5

    goto :goto_1

    .line 2464
    .end local v1           #attr:I
    :pswitch_1
    const/4 v1, 0x7

    .line 2465
    .restart local v1       #attr:I
    goto :goto_2

    .line 2456
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .locals 5
    .parameter "s"

    .prologue
    const/16 v4, 0x74

    .line 2579
    const/4 v2, 0x0

    .local v2, id:I
    const/4 v0, 0x0

    .line 2580
    .local v0, X:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 2592
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x0

    .line 2596
    :cond_1
    return v2

    .line 2581
    :pswitch_1
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2582
    .local v1, c:I
    const/16 v3, 0x65

    if-ne v1, v3, :cond_2

    const-string v0, "exec"

    const/4 v2, 0x4

    goto :goto_0

    .line 2583
    :cond_2
    if-ne v1, v4, :cond_0

    const-string v0, "test"

    const/4 v2, 0x5

    goto :goto_0

    .line 2585
    .end local v1           #c:I
    :pswitch_2
    const-string v0, "prefix"

    const/4 v2, 0x6

    goto :goto_0

    .line 2586
    :pswitch_3
    const-string v0, "compile"

    const/4 v2, 0x1

    goto :goto_0

    .line 2587
    :pswitch_4
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2588
    .restart local v1       #c:I
    const/16 v3, 0x6f

    if-ne v1, v3, :cond_3

    const-string v0, "toSource"

    const/4 v2, 0x3

    goto :goto_0

    .line 2589
    :cond_3
    if-ne v1, v4, :cond_0

    const-string v0, "toString"

    const/4 v2, 0x2

    goto :goto_0

    .line 2580
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    const-string v0, "RegExp"

    return-object v0
.end method

.method getFlags()I
    .locals 1

    .prologue
    .line 2395
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    return v0
.end method

.method protected getInstanceIdName(I)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 2475
    packed-switch p1, :pswitch_data_0

    .line 2482
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->getInstanceIdName(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2476
    :pswitch_0
    const-string v0, "lastIndex"

    goto :goto_0

    .line 2477
    :pswitch_1
    const-string v0, "source"

    goto :goto_0

    .line 2478
    :pswitch_2
    const-string v0, "global"

    goto :goto_0

    .line 2479
    :pswitch_3
    const-string v0, "ignoreCase"

    goto :goto_0

    .line 2480
    :pswitch_4
    const-string v0, "multiline"

    goto :goto_0

    .line 2475
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected getInstanceIdValue(I)Ljava/lang/Object;
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2488
    packed-switch p1, :pswitch_data_0

    .line 2500
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->getInstanceIdValue(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2490
    :pswitch_0
    iget-wide v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:D

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v0

    goto :goto_0

    .line 2492
    :pswitch_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v1, v1, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    .line 2494
    :pswitch_2
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    :goto_1
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    .line 2496
    :pswitch_3
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    move v0, v2

    :goto_2
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    .line 2498
    :pswitch_4
    iget-object v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v0, v0, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    move v0, v2

    :goto_3
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_3

    .line 2488
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected getMaxInstanceId()I
    .locals 1

    .prologue
    .line 2426
    const/4 v0, 0x5

    return v0
.end method

.method public getTypeOf()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    const-string v0, "object"

    return-object v0
.end method

.method protected initPrototypeId(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 2524
    packed-switch p1, :pswitch_data_0

    .line 2531
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2525
    :pswitch_0
    const/4 v0, 0x1

    .local v0, arity:I
    const-string v1, "compile"

    .line 2533
    .local v1, s:Ljava/lang/String;
    :goto_0
    sget-object v2, Lorg/mozilla/javascript/regexp/NativeRegExp;->REGEXP_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v1, v0}, Lorg/mozilla/javascript/regexp/NativeRegExp;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)V

    .line 2534
    return-void

    .line 2526
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_1
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "toString"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 2527
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_2
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "toSource"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 2528
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_3
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "exec"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 2529
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_4
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "test"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 2530
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_5
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "prefix"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 2524
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected setInstanceIdValue(ILjava/lang/Object;)V
    .locals 2
    .parameter "id"
    .parameter "value"

    .prologue
    .line 2506
    packed-switch p1, :pswitch_data_0

    .line 2516
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->setInstanceIdValue(ILjava/lang/Object;)V

    .line 2517
    :goto_0
    :pswitch_0
    return-void

    .line 2508
    :pswitch_1
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->lastIndex:D

    goto :goto_0

    .line 2506
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x2f

    .line 231
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 232
    .local v0, buf:Ljava/lang/StringBuffer;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 233
    iget-object v1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v1, v1, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    array-length v1, v1

    if-eqz v1, :cond_3

    .line 234
    iget-object v1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget-object v1, v1, Lorg/mozilla/javascript/regexp/RECompiled;->source:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 239
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 240
    iget-object v1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v1, v1, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 241
    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 242
    :cond_0
    iget-object v1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v1, v1, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 243
    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 244
    :cond_1
    iget-object v1, p0, Lorg/mozilla/javascript/regexp/NativeRegExp;->re:Lorg/mozilla/javascript/regexp/RECompiled;

    iget v1, v1, Lorg/mozilla/javascript/regexp/RECompiled;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 245
    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 246
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 237
    :cond_3
    const-string v1, "(?:)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
