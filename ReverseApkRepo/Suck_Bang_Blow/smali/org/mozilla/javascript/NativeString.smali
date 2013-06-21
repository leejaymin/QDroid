.class final Lorg/mozilla/javascript/NativeString;
.super Lorg/mozilla/javascript/IdScriptableObject;
.source "NativeString.java"


# static fields
.field private static final ConstructorId_charAt:I = -0x5

.field private static final ConstructorId_charCodeAt:I = -0x6

.field private static final ConstructorId_concat:I = -0xe

.field private static final ConstructorId_equalsIgnoreCase:I = -0x1e

.field private static final ConstructorId_fromCharCode:I = -0x1

.field private static final ConstructorId_indexOf:I = -0x7

.field private static final ConstructorId_lastIndexOf:I = -0x8

.field private static final ConstructorId_localeCompare:I = -0x22

.field private static final ConstructorId_match:I = -0x1f

.field private static final ConstructorId_replace:I = -0x21

.field private static final ConstructorId_search:I = -0x20

.field private static final ConstructorId_slice:I = -0xf

.field private static final ConstructorId_split:I = -0x9

.field private static final ConstructorId_substr:I = -0xd

.field private static final ConstructorId_substring:I = -0xa

.field private static final ConstructorId_toLocaleLowerCase:I = -0x23

.field private static final ConstructorId_toLowerCase:I = -0xb

.field private static final ConstructorId_toUpperCase:I = -0xc

.field private static final Id_anchor:I = 0x1c

.field private static final Id_big:I = 0x15

.field private static final Id_blink:I = 0x16

.field private static final Id_bold:I = 0x10

.field private static final Id_charAt:I = 0x5

.field private static final Id_charCodeAt:I = 0x6

.field private static final Id_concat:I = 0xe

.field private static final Id_constructor:I = 0x1

.field private static final Id_equals:I = 0x1d

.field private static final Id_equalsIgnoreCase:I = 0x1e

.field private static final Id_fixed:I = 0x12

.field private static final Id_fontcolor:I = 0x1a

.field private static final Id_fontsize:I = 0x19

.field private static final Id_indexOf:I = 0x7

.field private static final Id_italics:I = 0x11

.field private static final Id_lastIndexOf:I = 0x8

.field private static final Id_length:I = 0x1

.field private static final Id_link:I = 0x1b

.field private static final Id_localeCompare:I = 0x22

.field private static final Id_match:I = 0x1f

.field private static final Id_replace:I = 0x21

.field private static final Id_search:I = 0x20

.field private static final Id_slice:I = 0xf

.field private static final Id_small:I = 0x14

.field private static final Id_split:I = 0x9

.field private static final Id_strike:I = 0x13

.field private static final Id_sub:I = 0x18

.field private static final Id_substr:I = 0xd

.field private static final Id_substring:I = 0xa

.field private static final Id_sup:I = 0x17

.field private static final Id_toLocaleLowerCase:I = 0x23

.field private static final Id_toLocaleUpperCase:I = 0x24

.field private static final Id_toLowerCase:I = 0xb

.field private static final Id_toSource:I = 0x3

.field private static final Id_toString:I = 0x2

.field private static final Id_toUpperCase:I = 0xc

.field private static final Id_trim:I = 0x25

.field private static final Id_valueOf:I = 0x4

.field private static final MAX_INSTANCE_ID:I = 0x1

.field private static final MAX_PROTOTYPE_ID:I = 0x25

.field private static final STRING_TAG:Ljava/lang/Object; = null

.field static final serialVersionUID:J = 0xcc57334977d230fL


# instance fields
.field private string:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "String"

    sput-object v0, Lorg/mozilla/javascript/NativeString;->STRING_TAG:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 70
    invoke-direct {p0}, Lorg/mozilla/javascript/IdScriptableObject;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/String;

    .line 72
    return-void
.end method

.method static init(Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 2
    .parameter "scope"
    .parameter "sealed"

    .prologue
    .line 66
    new-instance v0, Lorg/mozilla/javascript/NativeString;

    const-string v1, ""

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/NativeString;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, obj:Lorg/mozilla/javascript/NativeString;
    const/16 v1, 0x25

    invoke-virtual {v0, v1, p0, p1}, Lorg/mozilla/javascript/NativeString;->exportAsJSClass(ILorg/mozilla/javascript/Scriptable;Z)Lorg/mozilla/javascript/IdFunctionObject;

    .line 68
    return-void
.end method

.method private static js_concat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .parameter "target"
    .parameter "args"

    .prologue
    .line 608
    array-length v0, p1

    .line 609
    .local v0, N:I
    if-nez v0, :cond_0

    move-object v7, p0

    .line 630
    :goto_0
    return-object v7

    .line 610
    :cond_0
    const/4 v7, 0x1

    if-ne v0, v7, :cond_1

    .line 611
    const/4 v7, 0x0

    aget-object v7, p1, v7

    invoke-static {v7}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 612
    .local v1, arg:Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 617
    .end local v1           #arg:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 618
    .local v6, size:I
    new-array v2, v0, [Ljava/lang/String;

    .line 619
    .local v2, argsAsStrings:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-eq v3, v0, :cond_2

    .line 620
    aget-object v7, p1, v3

    invoke-static {v7}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 621
    .local v5, s:Ljava/lang/String;
    aput-object v5, v2, v3

    .line 622
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    .line 619
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 625
    .end local v5           #s:Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 626
    .local v4, result:Ljava/lang/StringBuffer;
    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 627
    const/4 v3, 0x0

    :goto_2
    if-eq v3, v0, :cond_3

    .line 628
    aget-object v7, v2, v3

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 627
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 630
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method private static js_indexOf(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 5
    .parameter "target"
    .parameter "args"

    .prologue
    .line 498
    const/4 v3, 0x0

    invoke-static {p1, v3}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v2

    .line 499
    .local v2, search:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-static {p1, v3}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger([Ljava/lang/Object;I)D

    move-result-wide v0

    .line 501
    .local v0, begin:D
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    int-to-double v3, v3

    cmpl-double v3, v0, v3

    if-lez v3, :cond_0

    .line 502
    const/4 v3, -0x1

    .line 506
    :goto_0
    return v3

    .line 504
    :cond_0
    const-wide/16 v3, 0x0

    cmpg-double v3, v0, v3

    if-gez v3, :cond_1

    .line 505
    const-wide/16 v0, 0x0

    .line 506
    :cond_1
    double-to-int v3, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    goto :goto_0
.end method

.method private static js_lastIndexOf(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 5
    .parameter "target"
    .parameter "args"

    .prologue
    .line 516
    const/4 v3, 0x0

    invoke-static {p1, v3}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v2

    .line 517
    .local v2, search:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-static {p1, v3}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber([Ljava/lang/Object;I)D

    move-result-wide v0

    .line 519
    .local v0, end:D
    cmpl-double v3, v0, v0

    if-nez v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    int-to-double v3, v3

    cmpl-double v3, v0, v3

    if-lez v3, :cond_2

    .line 520
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    int-to-double v0, v3

    .line 524
    :cond_1
    :goto_0
    double-to-int v3, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v3

    return v3

    .line 521
    :cond_2
    const-wide/16 v3, 0x0

    cmpg-double v3, v0, v3

    if-gez v3, :cond_1

    .line 522
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private static js_slice(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 10
    .parameter "target"
    .parameter "args"

    .prologue
    const/4 v9, 0x1

    const-wide/16 v7, 0x0

    .line 634
    array-length v5, p1

    if-eqz v5, :cond_6

    .line 635
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v0

    .line 637
    .local v0, begin:D
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 638
    .local v4, length:I
    cmpg-double v5, v0, v7

    if-gez v5, :cond_2

    .line 639
    int-to-double v5, v4

    add-double/2addr v0, v5

    .line 640
    cmpg-double v5, v0, v7

    if-gez v5, :cond_0

    .line 641
    const-wide/16 v0, 0x0

    .line 646
    :cond_0
    :goto_0
    array-length v5, p1

    if-ne v5, v9, :cond_3

    .line 647
    int-to-double v2, v4

    .line 660
    .local v2, end:D
    :cond_1
    :goto_1
    double-to-int v5, v0

    double-to-int v6, v2

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 662
    .end local v0           #begin:D
    .end local v2           #end:D
    .end local v4           #length:I
    :goto_2
    return-object v5

    .line 642
    .restart local v0       #begin:D
    .restart local v4       #length:I
    :cond_2
    int-to-double v5, v4

    cmpl-double v5, v0, v5

    if-lez v5, :cond_0

    .line 643
    int-to-double v0, v4

    goto :goto_0

    .line 649
    :cond_3
    aget-object v5, p1, v9

    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v2

    .line 650
    .restart local v2       #end:D
    cmpg-double v5, v2, v7

    if-gez v5, :cond_5

    .line 651
    int-to-double v5, v4

    add-double/2addr v2, v5

    .line 652
    cmpg-double v5, v2, v7

    if-gez v5, :cond_4

    .line 653
    const-wide/16 v2, 0x0

    .line 657
    :cond_4
    :goto_3
    cmpg-double v5, v2, v0

    if-gez v5, :cond_1

    .line 658
    move-wide v2, v0

    goto :goto_1

    .line 654
    :cond_5
    int-to-double v5, v4

    cmpl-double v5, v2, v5

    if-lez v5, :cond_4

    .line 655
    int-to-double v2, v4

    goto :goto_3

    .end local v0           #begin:D
    .end local v2           #end:D
    .end local v4           #length:I
    :cond_6
    move-object v5, p0

    .line 662
    goto :goto_2
.end method

.method private static js_substr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 10
    .parameter "target"
    .parameter "args"

    .prologue
    const/4 v9, 0x1

    const-wide/16 v7, 0x0

    .line 575
    array-length v5, p1

    if-ge v5, v9, :cond_0

    move-object v5, p0

    .line 601
    :goto_0
    return-object v5

    .line 578
    :cond_0
    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v0

    .line 580
    .local v0, begin:D
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 582
    .local v4, length:I
    cmpg-double v5, v0, v7

    if-gez v5, :cond_3

    .line 583
    int-to-double v5, v4

    add-double/2addr v0, v5

    .line 584
    cmpg-double v5, v0, v7

    if-gez v5, :cond_1

    .line 585
    const-wide/16 v0, 0x0

    .line 590
    :cond_1
    :goto_1
    array-length v5, p1

    if-ne v5, v9, :cond_4

    .line 591
    int-to-double v2, v4

    .line 601
    .local v2, end:D
    :cond_2
    :goto_2
    double-to-int v5, v0

    double-to-int v6, v2

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 586
    .end local v2           #end:D
    :cond_3
    int-to-double v5, v4

    cmpl-double v5, v0, v5

    if-lez v5, :cond_1

    .line 587
    int-to-double v0, v4

    goto :goto_1

    .line 593
    :cond_4
    aget-object v5, p1, v9

    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v2

    .line 594
    .restart local v2       #end:D
    cmpg-double v5, v2, v7

    if-gez v5, :cond_5

    .line 595
    const-wide/16 v2, 0x0

    .line 596
    :cond_5
    add-double/2addr v2, v0

    .line 597
    int-to-double v5, v4

    cmpl-double v5, v2, v5

    if-lez v5, :cond_2

    .line 598
    int-to-double v2, v4

    goto :goto_2
.end method

.method private static js_substring(Lorg/mozilla/javascript/Context;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 12
    .parameter "cx"
    .parameter "target"
    .parameter "args"

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    .line 534
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 535
    .local v2, length:I
    const/4 v7, 0x0

    invoke-static {p2, v7}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger([Ljava/lang/Object;I)D

    move-result-wide v3

    .line 538
    .local v3, start:D
    cmpg-double v7, v3, v10

    if-gez v7, :cond_3

    .line 539
    const-wide/16 v3, 0x0

    .line 543
    :cond_0
    :goto_0
    array-length v7, p2

    if-le v7, v9, :cond_1

    aget-object v7, p2, v9

    sget-object v8, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    if-ne v7, v8, :cond_4

    .line 544
    :cond_1
    int-to-double v0, v2

    .line 564
    .local v0, end:D
    :cond_2
    :goto_1
    double-to-int v7, v3

    double-to-int v8, v0

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 540
    .end local v0           #end:D
    :cond_3
    int-to-double v7, v2

    cmpl-double v7, v3, v7

    if-lez v7, :cond_0

    .line 541
    int-to-double v3, v2

    goto :goto_0

    .line 546
    :cond_4
    aget-object v7, p2, v9

    invoke-static {v7}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger(Ljava/lang/Object;)D

    move-result-wide v0

    .line 547
    .restart local v0       #end:D
    cmpg-double v7, v0, v10

    if-gez v7, :cond_6

    .line 548
    const-wide/16 v0, 0x0

    .line 553
    :cond_5
    :goto_2
    cmpg-double v7, v0, v3

    if-gez v7, :cond_2

    .line 554
    invoke-virtual {p0}, Lorg/mozilla/javascript/Context;->getLanguageVersion()I

    move-result v7

    const/16 v8, 0x78

    if-eq v7, v8, :cond_7

    .line 555
    move-wide v5, v3

    .line 556
    .local v5, temp:D
    move-wide v3, v0

    .line 557
    move-wide v0, v5

    .line 558
    goto :goto_1

    .line 549
    .end local v5           #temp:D
    :cond_6
    int-to-double v7, v2

    cmpl-double v7, v0, v7

    if-lez v7, :cond_5

    .line 550
    int-to-double v0, v2

    goto :goto_2

    .line 560
    :cond_7
    move-wide v0, v3

    goto :goto_1
.end method

.method private static realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeString;
    .locals 1
    .parameter "thisObj"
    .parameter "f"

    .prologue
    .line 438
    instance-of v0, p0, Lorg/mozilla/javascript/NativeString;

    if-nez v0, :cond_0

    .line 439
    invoke-static {p1}, Lorg/mozilla/javascript/NativeString;->incompatibleCallError(Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    throw v0

    .line 440
    :cond_0
    check-cast p0, Lorg/mozilla/javascript/NativeString;

    .end local p0
    return-object p0
.end method

.method private static tagify(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .parameter "thisObj"
    .parameter "tag"
    .parameter "attribute"
    .parameter "args"

    .prologue
    const/16 v3, 0x3e

    .line 449
    invoke-static {p0}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 450
    .local v1, str:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 451
    .local v0, result:Ljava/lang/StringBuffer;
    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 452
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 453
    if-eqz p2, :cond_0

    .line 454
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 455
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 456
    const-string v2, "=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 457
    const/4 v2, 0x0

    invoke-static {p3, v2}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 458
    const/16 v2, 0x22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 460
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 461
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 462
    const-string v2, "</"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 463
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 464
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 465
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28
    .parameter "f"
    .parameter "cx"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    .line 208
    sget-object v5, Lorg/mozilla/javascript/NativeString;->STRING_TAG:Ljava/lang/Object;

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 209
    invoke-super/range {p0 .. p5}, Lorg/mozilla/javascript/IdScriptableObject;->execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 429
    :goto_0
    return-object v5

    .line 211
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v17

    .line 214
    .local v17, id:I
    :goto_1
    packed-switch v17, :pswitch_data_0

    .line 432
    :pswitch_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 232
    :pswitch_1
    move-object/from16 v0, p5

    array-length v0, v0

    move v5, v0

    if-lez v5, :cond_2

    .line 233
    const/4 v5, 0x0

    aget-object v5, p5, v5

    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p4

    .line 235
    move-object/from16 v0, p5

    array-length v0, v0

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v0, v5

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 236
    .local v18, newArgs:[Ljava/lang/Object;
    const/16 v16, 0x0

    .local v16, i:I
    :goto_2
    move-object/from16 v0, v18

    array-length v0, v0

    move v5, v0

    move/from16 v0, v16

    move v1, v5

    if-ge v0, v1, :cond_1

    .line 237
    add-int/lit8 v5, v16, 0x1

    aget-object v5, p5, v5

    aput-object v5, v18, v16

    .line 236
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 238
    :cond_1
    move-object/from16 p5, v18

    .line 243
    .end local v16           #i:I
    .end local v18           #newArgs:[Ljava/lang/Object;
    :goto_3
    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    .line 244
    goto :goto_1

    .line 240
    :cond_2
    invoke-static/range {p4 .. p4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toObject(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object p4

    goto :goto_3

    .line 248
    :pswitch_2
    move-object/from16 v0, p5

    array-length v0, v0

    move v11, v0

    .line 249
    .local v11, N:I
    const/4 v5, 0x1

    if-ge v11, v5, :cond_3

    .line 250
    const-string v5, ""

    goto :goto_0

    .line 251
    :cond_3
    new-instance v24, Ljava/lang/StringBuffer;

    move-object/from16 v0, v24

    move v1, v11

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 252
    .local v24, sb:Ljava/lang/StringBuffer;
    const/16 v16, 0x0

    .restart local v16       #i:I
    :goto_4
    move/from16 v0, v16

    move v1, v11

    if-eq v0, v1, :cond_4

    .line 253
    aget-object v5, p5, v16

    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->toUint16(Ljava/lang/Object;)C

    move-result v5

    move-object/from16 v0, v24

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 252
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 255
    :cond_4
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 259
    .end local v11           #N:I
    .end local v16           #i:I
    .end local v24           #sb:Ljava/lang/StringBuffer;
    :pswitch_3
    move-object/from16 v0, p5

    array-length v0, v0

    move v5, v0

    const/4 v6, 0x1

    if-lt v5, v6, :cond_5

    const/4 v5, 0x0

    aget-object v5, p5, v5

    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v21, v5

    .line 261
    .local v21, s:Ljava/lang/String;
    :goto_5
    if-nez p4, :cond_6

    .line 263
    new-instance v5, Lorg/mozilla/javascript/NativeString;

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/mozilla/javascript/NativeString;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 259
    .end local v21           #s:Ljava/lang/String;
    :cond_5
    const-string v5, ""

    move-object/from16 v21, v5

    goto :goto_5

    .restart local v21       #s:Ljava/lang/String;
    :cond_6
    move-object/from16 v5, v21

    .line 266
    goto/16 :goto_0

    .line 272
    .end local v21           #s:Ljava/lang/String;
    :pswitch_4
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeString;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeString;

    move-result-object v5

    iget-object v5, v5, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/String;

    goto/16 :goto_0

    .line 275
    :pswitch_5
    move-object/from16 v0, p4

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeString;->realThis(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;)Lorg/mozilla/javascript/NativeString;

    move-result-object v5

    move-object v0, v5

    iget-object v0, v0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 276
    .restart local v21       #s:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(new String(\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v21 .. v21}, Lorg/mozilla/javascript/ScriptRuntime;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"))"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 282
    .end local v21           #s:Ljava/lang/String;
    :pswitch_6
    invoke-static/range {p4 .. p4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    .line 283
    .local v27, target:Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, p5

    move v1, v5

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toInteger([Ljava/lang/Object;I)D

    move-result-wide v19

    .line 284
    .local v19, pos:D
    const-wide/16 v5, 0x0

    cmpg-double v5, v19, v5

    if-ltz v5, :cond_7

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v5

    int-to-double v5, v5

    cmpl-double v5, v19, v5

    if-ltz v5, :cond_9

    .line 285
    :cond_7
    const/4 v5, 0x5

    move/from16 v0, v17

    move v1, v5

    if-ne v0, v1, :cond_8

    const-string v5, ""

    goto/16 :goto_0

    .line 286
    :cond_8
    sget-object v5, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    goto/16 :goto_0

    .line 288
    :cond_9
    move-wide/from16 v0, v19

    double-to-int v0, v0

    move v5, v0

    move-object/from16 v0, v27

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 289
    .local v12, c:C
    const/4 v5, 0x5

    move/from16 v0, v17

    move v1, v5

    if-ne v0, v1, :cond_a

    invoke-static {v12}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 290
    :cond_a
    invoke-static {v12}, Lorg/mozilla/javascript/ScriptRuntime;->wrapInt(I)Ljava/lang/Integer;

    move-result-object v5

    goto/16 :goto_0

    .line 294
    .end local v12           #c:C
    .end local v19           #pos:D
    .end local v27           #target:Ljava/lang/String;
    :pswitch_7
    invoke-static/range {p4 .. p4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeString;->js_indexOf(Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->wrapInt(I)Ljava/lang/Integer;

    move-result-object v5

    goto/16 :goto_0

    .line 298
    :pswitch_8
    invoke-static/range {p4 .. p4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeString;->js_lastIndexOf(Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->wrapInt(I)Ljava/lang/Integer;

    move-result-object v5

    goto/16 :goto_0

    .line 302
    :pswitch_9
    invoke-static/range {p2 .. p2}, Lorg/mozilla/javascript/ScriptRuntime;->checkRegExpProxy(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/RegExpProxy;

    move-result-object v5

    invoke-static/range {p4 .. p4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object v3, v6

    move-object/from16 v4, p5

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/mozilla/javascript/RegExpProxy;->js_split(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    .line 307
    :pswitch_a
    invoke-static/range {p4 .. p4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object v1, v5

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Lorg/mozilla/javascript/NativeString;->js_substring(Lorg/mozilla/javascript/Context;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 311
    :pswitch_b
    invoke-static/range {p4 .. p4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/mozilla/javascript/ScriptRuntime;->ROOT_LOCALE:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 316
    :pswitch_c
    invoke-static/range {p4 .. p4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/mozilla/javascript/ScriptRuntime;->ROOT_LOCALE:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 320
    :pswitch_d
    invoke-static/range {p4 .. p4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeString;->js_substr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 323
    :pswitch_e
    invoke-static/range {p4 .. p4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeString;->js_concat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 326
    :pswitch_f
    invoke-static/range {p4 .. p4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeString;->js_slice(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 329
    :pswitch_10
    const-string v5, "b"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p4

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/NativeString;->tagify(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 332
    :pswitch_11
    const-string v5, "i"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p4

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/NativeString;->tagify(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 335
    :pswitch_12
    const-string v5, "tt"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p4

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/NativeString;->tagify(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 338
    :pswitch_13
    const-string v5, "strike"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p4

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/NativeString;->tagify(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 341
    :pswitch_14
    const-string v5, "small"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p4

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/NativeString;->tagify(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 344
    :pswitch_15
    const-string v5, "big"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p4

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/NativeString;->tagify(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 347
    :pswitch_16
    const-string v5, "blink"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p4

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/NativeString;->tagify(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 350
    :pswitch_17
    const-string v5, "sup"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p4

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/NativeString;->tagify(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 353
    :pswitch_18
    const-string v5, "sub"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p4

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/NativeString;->tagify(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 356
    :pswitch_19
    const-string v5, "font"

    const-string v6, "size"

    move-object/from16 v0, p4

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, p5

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/NativeString;->tagify(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 359
    :pswitch_1a
    const-string v5, "font"

    const-string v6, "color"

    move-object/from16 v0, p4

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, p5

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/NativeString;->tagify(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 362
    :pswitch_1b
    const-string v5, "a"

    const-string v6, "href"

    move-object/from16 v0, p4

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, p5

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/NativeString;->tagify(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 365
    :pswitch_1c
    const-string v5, "a"

    const-string v6, "name"

    move-object/from16 v0, p4

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, p5

    invoke-static {v0, v1, v2, v3}, Lorg/mozilla/javascript/NativeString;->tagify(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 369
    :pswitch_1d
    invoke-static/range {p4 .. p4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    .line 370
    .local v22, s1:Ljava/lang/String;
    const/4 v5, 0x0

    move-object/from16 v0, p5

    move v1, v5

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v23

    .line 371
    .local v23, s2:Ljava/lang/String;
    const/16 v5, 0x1d

    move/from16 v0, v17

    move v1, v5

    if-ne v0, v1, :cond_b

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_6
    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_0

    :cond_b
    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    goto :goto_6

    .line 381
    .end local v22           #s1:Ljava/lang/String;
    .end local v23           #s2:Ljava/lang/String;
    :pswitch_1e
    const/16 v5, 0x1f

    move/from16 v0, v17

    move v1, v5

    if-ne v0, v1, :cond_c

    .line 382
    const/4 v10, 0x1

    .line 388
    .local v10, actionType:I
    :goto_7
    invoke-static/range {p2 .. p2}, Lorg/mozilla/javascript/ScriptRuntime;->checkRegExpProxy(Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/RegExpProxy;

    move-result-object v5

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-interface/range {v5 .. v10}, Lorg/mozilla/javascript/RegExpProxy;->action(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_0

    .line 383
    .end local v10           #actionType:I
    :cond_c
    const/16 v5, 0x20

    move/from16 v0, v17

    move v1, v5

    if-ne v0, v1, :cond_d

    .line 384
    const/4 v10, 0x3

    .restart local v10       #actionType:I
    goto :goto_7

    .line 386
    .end local v10           #actionType:I
    :cond_d
    const/4 v10, 0x2

    .restart local v10       #actionType:I
    goto :goto_7

    .line 398
    .end local v10           #actionType:I
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/Context;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v14

    .line 399
    .local v14, collator:Ljava/text/Collator;
    const/4 v5, 0x3

    invoke-virtual {v14, v5}, Ljava/text/Collator;->setStrength(I)V

    .line 400
    const/4 v5, 0x1

    invoke-virtual {v14, v5}, Ljava/text/Collator;->setDecomposition(I)V

    .line 401
    invoke-static/range {p4 .. p4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p5

    move v1, v6

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v5, v6}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    int-to-double v5, v5

    invoke-static {v5, v6}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v5

    goto/16 :goto_0

    .line 407
    .end local v14           #collator:Ljava/text/Collator;
    :pswitch_20
    invoke-static/range {p4 .. p4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/Context;->getLocale()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 412
    :pswitch_21
    invoke-static/range {p4 .. p4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/mozilla/javascript/Context;->getLocale()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 417
    :pswitch_22
    invoke-static/range {p4 .. p4}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    .line 418
    .local v26, str:Ljava/lang/String;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toCharArray()[C

    move-result-object v13

    .line 420
    .local v13, chars:[C
    const/16 v25, 0x0

    .line 421
    .local v25, start:I
    :goto_8
    array-length v5, v13

    move/from16 v0, v25

    move v1, v5

    if-ge v0, v1, :cond_e

    aget-char v5, v13, v25

    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->isJSWhitespaceOrLineTerminator(I)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 422
    add-int/lit8 v25, v25, 0x1

    goto :goto_8

    .line 424
    :cond_e
    array-length v15, v13

    .line 425
    .local v15, end:I
    :goto_9
    move v0, v15

    move/from16 v1, v25

    if-le v0, v1, :cond_f

    const/4 v5, 0x1

    sub-int v5, v15, v5

    aget-char v5, v13, v5

    invoke-static {v5}, Lorg/mozilla/javascript/ScriptRuntime;->isJSWhitespaceOrLineTerminator(I)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 426
    add-int/lit8 v15, v15, -0x1

    goto :goto_9

    .line 429
    :cond_f
    move-object/from16 v0, v26

    move/from16 v1, v25

    move v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 214
    :pswitch_data_0
    .packed-switch -0x23
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
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
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1d
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
    .end packed-switch
.end method

.method protected fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V
    .locals 6
    .parameter "ctor"

    .prologue
    .line 117
    sget-object v2, Lorg/mozilla/javascript/NativeString;->STRING_TAG:Ljava/lang/Object;

    const/4 v3, -0x1

    const-string v4, "fromCharCode"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeString;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 119
    sget-object v2, Lorg/mozilla/javascript/NativeString;->STRING_TAG:Ljava/lang/Object;

    const/4 v3, -0x5

    const-string v4, "charAt"

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeString;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 121
    sget-object v2, Lorg/mozilla/javascript/NativeString;->STRING_TAG:Ljava/lang/Object;

    const/4 v3, -0x6

    const-string v4, "charCodeAt"

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeString;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 123
    sget-object v2, Lorg/mozilla/javascript/NativeString;->STRING_TAG:Ljava/lang/Object;

    const/4 v3, -0x7

    const-string v4, "indexOf"

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeString;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 125
    sget-object v2, Lorg/mozilla/javascript/NativeString;->STRING_TAG:Ljava/lang/Object;

    const/4 v3, -0x8

    const-string v4, "lastIndexOf"

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeString;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 127
    sget-object v2, Lorg/mozilla/javascript/NativeString;->STRING_TAG:Ljava/lang/Object;

    const/16 v3, -0x9

    const-string v4, "split"

    const/4 v5, 0x3

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeString;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 129
    sget-object v2, Lorg/mozilla/javascript/NativeString;->STRING_TAG:Ljava/lang/Object;

    const/16 v3, -0xa

    const-string v4, "substring"

    const/4 v5, 0x3

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeString;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 131
    sget-object v2, Lorg/mozilla/javascript/NativeString;->STRING_TAG:Ljava/lang/Object;

    const/16 v3, -0xb

    const-string v4, "toLowerCase"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeString;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 133
    sget-object v2, Lorg/mozilla/javascript/NativeString;->STRING_TAG:Ljava/lang/Object;

    const/16 v3, -0xc

    const-string v4, "toUpperCase"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeString;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 135
    sget-object v2, Lorg/mozilla/javascript/NativeString;->STRING_TAG:Ljava/lang/Object;

    const/16 v3, -0xd

    const-string v4, "substr"

    const/4 v5, 0x3

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeString;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 137
    sget-object v2, Lorg/mozilla/javascript/NativeString;->STRING_TAG:Ljava/lang/Object;

    const/16 v3, -0xe

    const-string v4, "concat"

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeString;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 139
    sget-object v2, Lorg/mozilla/javascript/NativeString;->STRING_TAG:Ljava/lang/Object;

    const/16 v3, -0xf

    const-string v4, "slice"

    const/4 v5, 0x3

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeString;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 141
    sget-object v2, Lorg/mozilla/javascript/NativeString;->STRING_TAG:Ljava/lang/Object;

    const/16 v3, -0x1e

    const-string v4, "equalsIgnoreCase"

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeString;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 143
    sget-object v2, Lorg/mozilla/javascript/NativeString;->STRING_TAG:Ljava/lang/Object;

    const/16 v3, -0x1f

    const-string v4, "match"

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeString;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 145
    sget-object v2, Lorg/mozilla/javascript/NativeString;->STRING_TAG:Ljava/lang/Object;

    const/16 v3, -0x20

    const-string v4, "search"

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeString;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 147
    sget-object v2, Lorg/mozilla/javascript/NativeString;->STRING_TAG:Ljava/lang/Object;

    const/16 v3, -0x21

    const-string v4, "replace"

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeString;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 149
    sget-object v2, Lorg/mozilla/javascript/NativeString;->STRING_TAG:Ljava/lang/Object;

    const/16 v3, -0x22

    const-string v4, "localeCompare"

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeString;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 151
    sget-object v2, Lorg/mozilla/javascript/NativeString;->STRING_TAG:Ljava/lang/Object;

    const/16 v3, -0x23

    const-string v4, "toLocaleLowerCase"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/mozilla/javascript/NativeString;->addIdFunctionProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;ILjava/lang/String;I)V

    .line 153
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->fillConstructorProperties(Lorg/mozilla/javascript/IdFunctionObject;)V

    .line 154
    return-void
.end method

.method protected findInstanceIdInfo(Ljava/lang/String;)I
    .locals 2
    .parameter "s"

    .prologue
    .line 92
    const-string v0, "length"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const/4 v0, 0x7

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeString;->instanceIdInfo(II)I

    move-result v0

    .line 95
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->findInstanceIdInfo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method protected findPrototypeId(Ljava/lang/String;)I
    .locals 9
    .parameter "s"

    .prologue
    const/16 v8, 0x75

    const/16 v7, 0x62

    const/16 v6, 0x73

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 672
    const/4 v2, 0x0

    .local v2, id:I
    const/4 v0, 0x0

    .line 673
    .local v0, X:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 730
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x0

    .line 734
    :cond_1
    :goto_1
    return v2

    .line 674
    :pswitch_1
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 675
    .local v1, c:I
    if-ne v1, v7, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v8, :cond_0

    const/16 v2, 0x18

    goto :goto_1

    .line 676
    :cond_2
    const/16 v3, 0x67

    if-ne v1, v3, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x69

    if-ne v3, v4, :cond_0

    const/16 v2, 0x15

    goto :goto_1

    .line 677
    :cond_3
    const/16 v3, 0x70

    if-ne v1, v3, :cond_0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v8, :cond_0

    const/16 v2, 0x17

    goto :goto_1

    .line 679
    .end local v1           #c:I
    :pswitch_2
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 680
    .restart local v1       #c:I
    if-ne v1, v7, :cond_4

    const-string v0, "bold"

    const/16 v2, 0x10

    goto :goto_0

    .line 681
    :cond_4
    const/16 v3, 0x6c

    if-ne v1, v3, :cond_5

    const-string v0, "link"

    const/16 v2, 0x1b

    goto :goto_0

    .line 682
    :cond_5
    const/16 v3, 0x74

    if-ne v1, v3, :cond_0

    const-string v0, "trim"

    const/16 v2, 0x25

    goto :goto_0

    .line 684
    .end local v1           #c:I
    :pswitch_3
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 685
    :sswitch_0
    const-string v0, "fixed"

    const/16 v2, 0x12

    goto :goto_0

    .line 686
    :sswitch_1
    const-string v0, "slice"

    const/16 v2, 0xf

    goto :goto_0

    .line 687
    :sswitch_2
    const-string v0, "match"

    const/16 v2, 0x1f

    goto :goto_0

    .line 688
    :sswitch_3
    const-string v0, "blink"

    const/16 v2, 0x16

    goto/16 :goto_0

    .line 689
    :sswitch_4
    const-string v0, "small"

    const/16 v2, 0x14

    goto/16 :goto_0

    .line 690
    :sswitch_5
    const-string v0, "split"

    const/16 v2, 0x9

    goto/16 :goto_0

    .line 692
    :pswitch_4
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_1

    goto/16 :goto_0

    .line 693
    :sswitch_6
    const-string v0, "search"

    const/16 v2, 0x20

    goto/16 :goto_0

    .line 694
    :sswitch_7
    const-string v0, "charAt"

    const/4 v2, 0x5

    goto/16 :goto_0

    .line 695
    :sswitch_8
    const-string v0, "anchor"

    const/16 v2, 0x1c

    goto/16 :goto_0

    .line 696
    :sswitch_9
    const-string v0, "concat"

    const/16 v2, 0xe

    goto/16 :goto_0

    .line 697
    :sswitch_a
    const-string v0, "equals"

    const/16 v2, 0x1d

    goto/16 :goto_0

    .line 698
    :sswitch_b
    const-string v0, "strike"

    const/16 v2, 0x13

    goto/16 :goto_0

    .line 699
    :sswitch_c
    const-string v0, "substr"

    const/16 v2, 0xd

    goto/16 :goto_0

    .line 701
    :pswitch_5
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_2

    goto/16 :goto_0

    .line 702
    :sswitch_d
    const-string v0, "valueOf"

    const/4 v2, 0x4

    goto/16 :goto_0

    .line 703
    :sswitch_e
    const-string v0, "replace"

    const/16 v2, 0x21

    goto/16 :goto_0

    .line 704
    :sswitch_f
    const-string v0, "indexOf"

    const/4 v2, 0x7

    goto/16 :goto_0

    .line 705
    :sswitch_10
    const-string v0, "italics"

    const/16 v2, 0x11

    goto/16 :goto_0

    .line 707
    :pswitch_6
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 708
    .restart local v1       #c:I
    const/16 v3, 0x72

    if-ne v1, v3, :cond_6

    const-string v0, "toString"

    const/4 v2, 0x2

    goto/16 :goto_0

    .line 709
    :cond_6
    if-ne v1, v6, :cond_7

    const-string v0, "fontsize"

    const/16 v2, 0x19

    goto/16 :goto_0

    .line 710
    :cond_7
    if-ne v1, v8, :cond_0

    const-string v0, "toSource"

    const/4 v2, 0x3

    goto/16 :goto_0

    .line 712
    .end local v1           #c:I
    :pswitch_7
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 713
    .restart local v1       #c:I
    const/16 v3, 0x66

    if-ne v1, v3, :cond_8

    const-string v0, "fontcolor"

    const/16 v2, 0x1a

    goto/16 :goto_0

    .line 714
    :cond_8
    if-ne v1, v6, :cond_0

    const-string v0, "substring"

    const/16 v2, 0xa

    goto/16 :goto_0

    .line 716
    .end local v1           #c:I
    :pswitch_8
    const-string v0, "charCodeAt"

    const/4 v2, 0x6

    goto/16 :goto_0

    .line 717
    :pswitch_9
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_3

    goto/16 :goto_0

    .line 718
    :sswitch_11
    const-string v0, "toLowerCase"

    const/16 v2, 0xb

    goto/16 :goto_0

    .line 719
    :sswitch_12
    const-string v0, "toUpperCase"

    const/16 v2, 0xc

    goto/16 :goto_0

    .line 720
    :sswitch_13
    const-string v0, "constructor"

    const/4 v2, 0x1

    goto/16 :goto_0

    .line 721
    :sswitch_14
    const-string v0, "lastIndexOf"

    const/16 v2, 0x8

    goto/16 :goto_0

    .line 723
    :pswitch_a
    const-string v0, "localeCompare"

    const/16 v2, 0x22

    goto/16 :goto_0

    .line 724
    :pswitch_b
    const-string v0, "equalsIgnoreCase"

    const/16 v2, 0x1e

    goto/16 :goto_0

    .line 725
    :pswitch_c
    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 726
    .restart local v1       #c:I
    const/16 v3, 0x4c

    if-ne v1, v3, :cond_9

    const-string v0, "toLocaleLowerCase"

    const/16 v2, 0x23

    goto/16 :goto_0

    .line 727
    :cond_9
    const/16 v3, 0x55

    if-ne v1, v3, :cond_0

    const-string v0, "toLocaleUpperCase"

    const/16 v2, 0x24

    goto/16 :goto_0

    .line 673
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 684
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x68 -> :sswitch_2
        0x6b -> :sswitch_3
        0x6c -> :sswitch_4
        0x74 -> :sswitch_5
    .end sparse-switch

    .line 692
    :sswitch_data_1
    .sparse-switch
        0x65 -> :sswitch_6
        0x68 -> :sswitch_7
        0x6e -> :sswitch_8
        0x6f -> :sswitch_9
        0x71 -> :sswitch_a
        0x74 -> :sswitch_b
        0x75 -> :sswitch_c
    .end sparse-switch

    .line 701
    :sswitch_data_2
    .sparse-switch
        0x61 -> :sswitch_d
        0x65 -> :sswitch_e
        0x6e -> :sswitch_f
        0x74 -> :sswitch_10
    .end sparse-switch

    .line 717
    :sswitch_data_3
    .sparse-switch
        0x4c -> :sswitch_11
        0x55 -> :sswitch_12
        0x6e -> :sswitch_13
        0x73 -> :sswitch_14
    .end sparse-switch
.end method

.method public get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;
    .locals 2
    .parameter "index"
    .parameter "start"

    .prologue
    .line 478
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 479
    iget-object v0, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 481
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/mozilla/javascript/IdScriptableObject;->get(ILorg/mozilla/javascript/Scriptable;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-string v0, "String"

    return-object v0
.end method

.method protected getInstanceIdName(I)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 101
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "length"

    .line 102
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->getInstanceIdName(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getInstanceIdValue(I)Ljava/lang/Object;
    .locals 1
    .parameter "id"

    .prologue
    .line 108
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 109
    iget-object v0, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->wrapInt(I)Ljava/lang/Integer;

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lorg/mozilla/javascript/IdScriptableObject;->getInstanceIdValue(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method getLength()I
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method protected getMaxInstanceId()I
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method protected initPrototypeId(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 161
    packed-switch p1, :pswitch_data_0

    .line 199
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 162
    :pswitch_0
    const/4 v0, 0x1

    .local v0, arity:I
    const-string v1, "constructor"

    .line 201
    .local v1, s:Ljava/lang/String;
    :goto_0
    sget-object v2, Lorg/mozilla/javascript/NativeString;->STRING_TAG:Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v1, v0}, Lorg/mozilla/javascript/NativeString;->initPrototypeMethod(Ljava/lang/Object;ILjava/lang/String;I)V

    .line 202
    return-void

    .line 163
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_1
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "toString"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 164
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_2
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "toSource"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 165
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_3
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "valueOf"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 166
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_4
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "charAt"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 167
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_5
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "charCodeAt"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 168
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_6
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "indexOf"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 169
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_7
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "lastIndexOf"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 170
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_8
    const/4 v0, 0x2

    .restart local v0       #arity:I
    const-string v1, "split"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 171
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_9
    const/4 v0, 0x2

    .restart local v0       #arity:I
    const-string v1, "substring"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 172
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_a
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "toLowerCase"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 173
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_b
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "toUpperCase"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 174
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_c
    const/4 v0, 0x2

    .restart local v0       #arity:I
    const-string v1, "substr"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 175
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_d
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "concat"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 176
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_e
    const/4 v0, 0x2

    .restart local v0       #arity:I
    const-string v1, "slice"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 177
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_f
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "bold"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 178
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_10
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "italics"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 179
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_11
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "fixed"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 180
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_12
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "strike"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 181
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_13
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "small"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 182
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_14
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "big"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 183
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_15
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "blink"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 184
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_16
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "sup"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 185
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_17
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "sub"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 186
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_18
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "fontsize"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 187
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_19
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "fontcolor"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 188
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_1a
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "link"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 189
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_1b
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "anchor"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 190
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_1c
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "equals"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 191
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_1d
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "equalsIgnoreCase"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 192
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_1e
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "match"

    .restart local v1       #s:Ljava/lang/String;
    goto :goto_0

    .line 193
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_1f
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "search"

    .restart local v1       #s:Ljava/lang/String;
    goto/16 :goto_0

    .line 194
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_20
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "replace"

    .restart local v1       #s:Ljava/lang/String;
    goto/16 :goto_0

    .line 195
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_21
    const/4 v0, 0x1

    .restart local v0       #arity:I
    const-string v1, "localeCompare"

    .restart local v1       #s:Ljava/lang/String;
    goto/16 :goto_0

    .line 196
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_22
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "toLocaleLowerCase"

    .restart local v1       #s:Ljava/lang/String;
    goto/16 :goto_0

    .line 197
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_23
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "toLocaleUpperCase"

    .restart local v1       #s:Ljava/lang/String;
    goto/16 :goto_0

    .line 198
    .end local v0           #arity:I
    .end local v1           #s:Ljava/lang/String;
    :pswitch_24
    const/4 v0, 0x0

    .restart local v0       #arity:I
    const-string v1, "trim"

    .restart local v1       #s:Ljava/lang/String;
    goto/16 :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
    .end packed-switch
.end method

.method public put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V
    .locals 1
    .parameter "index"
    .parameter "start"
    .parameter "value"

    .prologue
    .line 486
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 490
    :goto_0
    return-void

    .line 489
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/mozilla/javascript/IdScriptableObject;->put(ILorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lorg/mozilla/javascript/NativeString;->string:Ljava/lang/String;

    return-object v0
.end method
