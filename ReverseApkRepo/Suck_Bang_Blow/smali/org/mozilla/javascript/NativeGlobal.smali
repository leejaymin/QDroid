.class public Lorg/mozilla/javascript/NativeGlobal;
.super Ljava/lang/Object;
.source "NativeGlobal.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/mozilla/javascript/IdFunctionCall;


# static fields
.field private static final FTAG:Ljava/lang/Object; = null

.field private static final Id_decodeURI:I = 0x1

.field private static final Id_decodeURIComponent:I = 0x2

.field private static final Id_encodeURI:I = 0x3

.field private static final Id_encodeURIComponent:I = 0x4

.field private static final Id_escape:I = 0x5

.field private static final Id_eval:I = 0x6

.field private static final Id_isFinite:I = 0x7

.field private static final Id_isNaN:I = 0x8

.field private static final Id_isXMLName:I = 0x9

.field private static final Id_new_CommonError:I = 0xe

.field private static final Id_parseFloat:I = 0xa

.field private static final Id_parseInt:I = 0xb

.field private static final Id_unescape:I = 0xc

.field private static final Id_uneval:I = 0xd

.field private static final LAST_SCOPE_FUNCTION_ID:I = 0xd

.field private static final URI_DECODE_RESERVED:Ljava/lang/String; = ";/?:@&=+$,#"

.field static final serialVersionUID:J = 0x546211ef26c230caL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 790
    const-string v0, "Global"

    sput-object v0, Lorg/mozilla/javascript/NativeGlobal;->FTAG:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static constructError(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/EcmaError;
    .locals 1
    .parameter "cx"
    .parameter "error"
    .parameter "message"
    .parameter "scope"

    .prologue
    .line 553
    invoke-static {p1, p2}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    return-object v0
.end method

.method public static constructError(Lorg/mozilla/javascript/Context;Ljava/lang/String;Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;IILjava/lang/String;)Lorg/mozilla/javascript/EcmaError;
    .locals 6
    .parameter "cx"
    .parameter "error"
    .parameter "message"
    .parameter "scope"
    .parameter "sourceName"
    .parameter "lineNumber"
    .parameter "columnNumber"
    .parameter "lineSource"

    .prologue
    .line 570
    move-object v0, p1

    move-object v1, p2

    move-object v2, p4

    move v3, p5

    move-object v4, p7

    move v5, p6

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/ScriptRuntime;->constructError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Lorg/mozilla/javascript/EcmaError;

    move-result-object v0

    return-object v0
.end method

.method private static decode(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 13
    .parameter "str"
    .parameter "fullUri"

    .prologue
    .line 655
    const/4 v0, 0x0

    .line 656
    .local v0, buf:[C
    const/4 v1, 0x0

    .line 658
    .local v1, bufTop:I
    const/4 v2, 0x0

    .local v2, k:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .local v7, length:I
    move v4, v2

    .end local v2           #k:I
    .local v4, k:I
    move v3, v1

    .end local v1           #bufTop:I
    .local v3, bufTop:I
    move-object v1, v0

    .end local v0           #buf:[C
    .local v1, buf:[C
    :goto_0
    if-eq v4, v7, :cond_14

    .line 659
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 660
    .local v0, C:C
    const/16 v2, 0x25

    if-eq v0, v2, :cond_0

    .line 661
    if-eqz v1, :cond_18

    .line 662
    add-int/lit8 v2, v3, 0x1

    .end local v3           #bufTop:I
    .local v2, bufTop:I
    aput-char v0, v1, v3

    .line 664
    :goto_1
    add-int/lit8 v3, v4, 0x1

    .end local v4           #k:I
    .local v3, k:I
    :goto_2
    move v4, v3

    .end local v3           #k:I
    .restart local v4       #k:I
    move v3, v2

    .line 743
    .end local v2           #bufTop:I
    .local v3, bufTop:I
    goto :goto_0

    .line 666
    :cond_0
    if-nez v1, :cond_17

    .line 669
    new-array v0, v7, [C

    .line 670
    .end local v1           #buf:[C
    .local v0, buf:[C
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v4, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 671
    move v1, v4

    .end local v3           #bufTop:I
    .local v1, bufTop:I
    move v5, v1

    .end local v1           #bufTop:I
    .local v5, bufTop:I
    move-object v3, v0

    .line 673
    .end local v0           #buf:[C
    .local v3, buf:[C
    :goto_3
    move v8, v4

    .line 674
    .local v8, start:I
    add-int/lit8 v0, v4, 0x3

    if-le v0, v7, :cond_1

    .line 675
    const-string p0, "msg.bad.uri"

    .end local p0
    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0

    .line 676
    .restart local p0
    :cond_1
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v1, v4, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v0, v1}, Lorg/mozilla/javascript/NativeGlobal;->unHex(CC)I

    move-result v0

    .line 677
    .local v0, B:I
    if-gez v0, :cond_2

    const-string p0, "msg.bad.uri"

    .end local p0
    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0

    .line 678
    .restart local p0
    :cond_2
    add-int/lit8 v2, v4, 0x3

    .line 679
    .end local v4           #k:I
    .local v2, k:I
    and-int/lit16 v1, v0, 0x80

    if-nez v1, :cond_3

    .line 680
    int-to-char v1, v0

    .local v1, C:C
    move v4, v2

    .end local v2           #k:I
    .restart local v4       #k:I
    move v2, v5

    .line 735
    .end local v5           #bufTop:I
    .local v2, bufTop:I
    :goto_4
    if-eqz p1, :cond_13

    const-string v0, ";/?:@&=+$,#"

    .end local v0           #B:I
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_13

    .line 736
    move v0, v8

    .local v0, x:I
    move v5, v0

    .end local v0           #x:I
    .local v5, x:I
    :goto_5
    if-eq v5, v4, :cond_12

    .line 737
    add-int/lit8 v0, v2, 0x1

    .end local v2           #bufTop:I
    .local v0, bufTop:I
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v3, v2

    .line 736
    add-int/lit8 v2, v5, 0x1

    .end local v5           #x:I
    .local v2, x:I
    move v5, v2

    .end local v2           #x:I
    .restart local v5       #x:I
    move v2, v0

    .end local v0           #bufTop:I
    .local v2, bufTop:I
    goto :goto_5

    .line 685
    .end local v1           #C:C
    .end local v4           #k:I
    .local v0, B:I
    .local v2, k:I
    .local v5, bufTop:I
    :cond_3
    and-int/lit16 v1, v0, 0xc0

    const/16 v4, 0x80

    if-ne v1, v4, :cond_4

    .line 687
    const-string p0, "msg.bad.uri"

    .end local p0
    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0

    .line 688
    .restart local p0
    :cond_4
    and-int/lit8 v1, v0, 0x20

    if-nez v1, :cond_5

    .line 689
    const/4 v6, 0x1

    .local v6, utf8Tail:I
    and-int/lit8 v4, v0, 0x1f

    .line 690
    .local v4, ucs4Char:I
    const/16 v1, 0x80

    .local v1, minUcs4Char:I
    move v10, v6

    .end local v6           #utf8Tail:I
    .local v10, utf8Tail:I
    move v6, v4

    .end local v4           #ucs4Char:I
    .local v6, ucs4Char:I
    move v4, v1

    .line 707
    .end local v1           #minUcs4Char:I
    .local v4, minUcs4Char:I
    :goto_6
    mul-int/lit8 v1, v10, 0x3

    add-int/2addr v1, v2

    if-le v1, v7, :cond_a

    .line 708
    const-string p0, "msg.bad.uri"

    .end local p0
    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0

    .line 691
    .end local v4           #minUcs4Char:I
    .end local v6           #ucs4Char:I
    .end local v10           #utf8Tail:I
    .restart local p0
    :cond_5
    and-int/lit8 v1, v0, 0x10

    if-nez v1, :cond_6

    .line 692
    const/4 v6, 0x2

    .local v6, utf8Tail:I
    and-int/lit8 v4, v0, 0xf

    .line 693
    .local v4, ucs4Char:I
    const/16 v1, 0x800

    .restart local v1       #minUcs4Char:I
    move v10, v6

    .end local v6           #utf8Tail:I
    .restart local v10       #utf8Tail:I
    move v6, v4

    .end local v4           #ucs4Char:I
    .local v6, ucs4Char:I
    move v4, v1

    .end local v1           #minUcs4Char:I
    .local v4, minUcs4Char:I
    goto :goto_6

    .line 694
    .end local v4           #minUcs4Char:I
    .end local v6           #ucs4Char:I
    .end local v10           #utf8Tail:I
    :cond_6
    and-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_7

    .line 695
    const/4 v6, 0x3

    .local v6, utf8Tail:I
    and-int/lit8 v4, v0, 0x7

    .line 696
    .local v4, ucs4Char:I
    const/high16 v1, 0x1

    .restart local v1       #minUcs4Char:I
    move v10, v6

    .end local v6           #utf8Tail:I
    .restart local v10       #utf8Tail:I
    move v6, v4

    .end local v4           #ucs4Char:I
    .local v6, ucs4Char:I
    move v4, v1

    .end local v1           #minUcs4Char:I
    .local v4, minUcs4Char:I
    goto :goto_6

    .line 697
    .end local v4           #minUcs4Char:I
    .end local v6           #ucs4Char:I
    .end local v10           #utf8Tail:I
    :cond_7
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_8

    .line 698
    const/4 v6, 0x4

    .local v6, utf8Tail:I
    and-int/lit8 v4, v0, 0x3

    .line 699
    .local v4, ucs4Char:I
    const/high16 v1, 0x20

    .restart local v1       #minUcs4Char:I
    move v10, v6

    .end local v6           #utf8Tail:I
    .restart local v10       #utf8Tail:I
    move v6, v4

    .end local v4           #ucs4Char:I
    .local v6, ucs4Char:I
    move v4, v1

    .end local v1           #minUcs4Char:I
    .local v4, minUcs4Char:I
    goto :goto_6

    .line 700
    .end local v4           #minUcs4Char:I
    .end local v6           #ucs4Char:I
    .end local v10           #utf8Tail:I
    :cond_8
    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_9

    .line 701
    const/4 v6, 0x5

    .local v6, utf8Tail:I
    and-int/lit8 v4, v0, 0x1

    .line 702
    .local v4, ucs4Char:I
    const/high16 v1, 0x400

    .restart local v1       #minUcs4Char:I
    move v10, v6

    .end local v6           #utf8Tail:I
    .restart local v10       #utf8Tail:I
    move v6, v4

    .end local v4           #ucs4Char:I
    .local v6, ucs4Char:I
    move v4, v1

    .end local v1           #minUcs4Char:I
    .local v4, minUcs4Char:I
    goto :goto_6

    .line 705
    .end local v4           #minUcs4Char:I
    .end local v6           #ucs4Char:I
    .end local v10           #utf8Tail:I
    :cond_9
    const-string p0, "msg.bad.uri"

    .end local p0
    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0

    .line 709
    .restart local v4       #minUcs4Char:I
    .restart local v6       #ucs4Char:I
    .restart local v10       #utf8Tail:I
    .restart local p0
    :cond_a
    const/4 v1, 0x0

    .local v1, j:I
    move v12, v6

    .end local v6           #ucs4Char:I
    .local v12, ucs4Char:I
    move v6, v2

    .end local v2           #k:I
    .local v6, k:I
    move v2, v12

    .end local v12           #ucs4Char:I
    .local v2, ucs4Char:I
    :goto_7
    if-eq v1, v10, :cond_e

    .line 710
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .end local v0           #B:I
    const/16 v9, 0x25

    if-eq v0, v9, :cond_b

    .line 711
    const-string p0, "msg.bad.uri"

    .end local p0
    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0

    .line 712
    .restart local p0
    :cond_b
    add-int/lit8 v0, v6, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v9, v6, 0x2

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v0, v9}, Lorg/mozilla/javascript/NativeGlobal;->unHex(CC)I

    move-result v0

    .line 713
    .restart local v0       #B:I
    if-ltz v0, :cond_c

    and-int/lit16 v9, v0, 0xc0

    const/16 v11, 0x80

    if-eq v9, v11, :cond_d

    .line 714
    :cond_c
    const-string p0, "msg.bad.uri"

    .end local p0
    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0

    .line 715
    .restart local p0
    :cond_d
    shl-int/lit8 v2, v2, 0x6

    and-int/lit8 v9, v0, 0x3f

    or-int/2addr v9, v2

    .line 716
    .end local v2           #ucs4Char:I
    .local v9, ucs4Char:I
    add-int/lit8 v2, v6, 0x3

    .line 709
    .end local v6           #k:I
    .local v2, k:I
    add-int/lit8 v1, v1, 0x1

    move v6, v2

    .end local v2           #k:I
    .restart local v6       #k:I
    move v2, v9

    .end local v9           #ucs4Char:I
    .local v2, ucs4Char:I
    goto :goto_7

    .line 719
    :cond_e
    if-lt v2, v4, :cond_f

    const v1, 0xfffe

    if-eq v2, v1, :cond_f

    .end local v1           #j:I
    const v1, 0xffff

    if-ne v2, v1, :cond_16

    .line 722
    :cond_f
    const v1, 0xfffd

    .line 724
    .end local v2           #ucs4Char:I
    .local v1, ucs4Char:I
    :goto_8
    const/high16 v2, 0x1

    if-lt v1, v2, :cond_11

    .line 725
    const/high16 v2, 0x1

    sub-int/2addr v1, v2

    .line 726
    const v2, 0xfffff

    if-le v1, v2, :cond_10

    .line 727
    const-string p0, "msg.bad.uri"

    .end local p0
    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0

    .line 728
    .restart local p0
    :cond_10
    ushr-int/lit8 v2, v1, 0xa

    const v4, 0xd800

    add-int/2addr v2, v4

    int-to-char v2, v2

    .line 729
    .local v2, H:C
    and-int/lit16 v1, v1, 0x3ff

    const v4, 0xdc00

    add-int/2addr v1, v4

    int-to-char v1, v1

    .line 730
    .local v1, C:C
    add-int/lit8 v4, v5, 0x1

    .end local v5           #bufTop:I
    .local v4, bufTop:I
    aput-char v2, v3, v5

    move v2, v4

    .end local v4           #bufTop:I
    .local v2, bufTop:I
    move v4, v6

    .line 731
    .end local v6           #k:I
    .local v4, k:I
    goto/16 :goto_4

    .line 732
    .end local v2           #bufTop:I
    .local v1, ucs4Char:I
    .local v4, minUcs4Char:I
    .restart local v5       #bufTop:I
    .restart local v6       #k:I
    :cond_11
    int-to-char v1, v1

    .local v1, C:C
    move v4, v6

    .end local v6           #k:I
    .local v4, k:I
    move v2, v5

    .end local v5           #bufTop:I
    .restart local v2       #bufTop:I
    goto/16 :goto_4

    .end local v0           #B:I
    .end local v10           #utf8Tail:I
    .local v5, x:I
    :cond_12
    move v0, v1

    .end local v1           #C:C
    .local v0, C:C
    move-object v1, v3

    .end local v3           #buf:[C
    .local v1, buf:[C
    move v3, v4

    .line 736
    .end local v4           #k:I
    .local v3, k:I
    goto/16 :goto_2

    .line 740
    .end local v0           #C:C
    .end local v5           #x:I
    .local v1, C:C
    .local v3, buf:[C
    .restart local v4       #k:I
    :cond_13
    add-int/lit8 v0, v2, 0x1

    .end local v2           #bufTop:I
    .local v0, bufTop:I
    aput-char v1, v3, v2

    move v2, v0

    .end local v0           #bufTop:I
    .restart local v2       #bufTop:I
    move v0, v1

    .end local v1           #C:C
    .local v0, C:C
    move-object v1, v3

    .end local v3           #buf:[C
    .local v1, buf:[C
    move v3, v4

    .end local v4           #k:I
    .local v3, k:I
    goto/16 :goto_2

    .line 744
    .end local v0           #C:C
    .end local v2           #bufTop:I
    .end local v8           #start:I
    .local v3, bufTop:I
    .restart local v4       #k:I
    :cond_14
    if-nez v1, :cond_15

    .end local p0
    .end local p1
    :goto_9
    return-object p0

    .restart local p0
    .restart local p1
    :cond_15
    new-instance p0, Ljava/lang/String;

    .end local p0
    const/4 p1, 0x0

    invoke-direct {p0, v1, p1, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_9

    .end local v1           #buf:[C
    .local v0, B:I
    .local v2, ucs4Char:I
    .local v3, buf:[C
    .local v4, minUcs4Char:I
    .local v5, bufTop:I
    .restart local v6       #k:I
    .restart local v8       #start:I
    .restart local v10       #utf8Tail:I
    .restart local p0
    :cond_16
    move v1, v2

    .end local v2           #ucs4Char:I
    .local v1, ucs4Char:I
    goto :goto_8

    .end local v5           #bufTop:I
    .end local v6           #k:I
    .end local v8           #start:I
    .end local v10           #utf8Tail:I
    .local v0, C:C
    .local v1, buf:[C
    .local v3, bufTop:I
    .local v4, k:I
    :cond_17
    move v5, v3

    .end local v3           #bufTop:I
    .restart local v5       #bufTop:I
    move-object v3, v1

    .end local v1           #buf:[C
    .local v3, buf:[C
    goto/16 :goto_3

    .end local v5           #bufTop:I
    .restart local v1       #buf:[C
    .local v3, bufTop:I
    :cond_18
    move v2, v3

    .end local v3           #bufTop:I
    .local v2, bufTop:I
    goto/16 :goto_1
.end method

.method private static encode(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .parameter "str"
    .parameter "fullUri"

    .prologue
    .line 583
    const/4 v2, 0x0

    .line 584
    .local v2, utf8buf:[B
    const/4 v1, 0x0

    .line 586
    .local v1, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, k:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, length:I
    move-object v3, v2

    .end local v2           #utf8buf:[B
    .local v3, utf8buf:[B
    move-object v2, v1

    .end local v1           #sb:Ljava/lang/StringBuffer;
    .local v2, sb:Ljava/lang/StringBuffer;
    move v1, v0

    .end local v0           #k:I
    .local v1, k:I
    :goto_0
    if-eq v1, v4, :cond_7

    .line 587
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 588
    .local v0, C:C
    invoke-static {v0, p1}, Lorg/mozilla/javascript/NativeGlobal;->encodeUnescaped(CZ)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 589
    if-eqz v2, :cond_b

    .line 590
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v1

    .end local v1           #k:I
    .local v0, k:I
    move-object v1, v2

    .end local v2           #sb:Ljava/lang/StringBuffer;
    .local v1, sb:Ljava/lang/StringBuffer;
    move-object v2, v3

    .line 586
    .end local v3           #utf8buf:[B
    .local v2, utf8buf:[B
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move-object v3, v2

    .end local v2           #utf8buf:[B
    .restart local v3       #utf8buf:[B
    move-object v2, v1

    .end local v1           #sb:Ljava/lang/StringBuffer;
    .local v2, sb:Ljava/lang/StringBuffer;
    move v1, v0

    .end local v0           #k:I
    .local v1, k:I
    goto :goto_0

    .line 593
    .local v0, C:C
    :cond_0
    if-nez v2, :cond_a

    .line 594
    new-instance v2, Ljava/lang/StringBuffer;

    .end local v2           #sb:Ljava/lang/StringBuffer;
    add-int/lit8 v3, v4, 0x3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 595
    .end local v3           #utf8buf:[B
    .restart local v2       #sb:Ljava/lang/StringBuffer;
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 596
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 597
    const/4 v3, 0x6

    new-array v3, v3, [B

    .restart local v3       #utf8buf:[B
    move-object v5, v2

    .end local v2           #sb:Ljava/lang/StringBuffer;
    .local v5, sb:Ljava/lang/StringBuffer;
    move-object v6, v3

    .line 599
    .end local v3           #utf8buf:[B
    .local v6, utf8buf:[B
    :goto_2
    const v2, 0xdc00

    if-gt v2, v0, :cond_1

    const v2, 0xdfff

    if-gt v0, v2, :cond_1

    .line 600
    const-string p0, "msg.bad.uri"

    .end local p0
    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0

    .line 603
    .restart local p0
    :cond_1
    const v2, 0xd800

    if-lt v0, v2, :cond_2

    const v2, 0xdbff

    if-ge v2, v0, :cond_3

    .line 604
    :cond_2
    move v0, v0

    .local v0, V:I
    move v3, v1

    .line 616
    .end local v1           #k:I
    .local v3, k:I
    :goto_3
    invoke-static {v6, v0}, Lorg/mozilla/javascript/NativeGlobal;->oneUcs4ToUtf8Char([BI)I

    move-result v0

    .line 617
    .local v0, L:I
    const/4 v1, 0x0

    .local v1, j:I
    move v2, v1

    .end local v1           #j:I
    .local v2, j:I
    :goto_4
    if-ge v2, v0, :cond_9

    .line 618
    aget-byte v1, v6, v2

    and-int/lit16 v1, v1, 0xff

    .line 619
    .local v1, d:I
    const/16 v7, 0x25

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 620
    ushr-int/lit8 v7, v1, 0x4

    invoke-static {v7}, Lorg/mozilla/javascript/NativeGlobal;->toHexChar(I)C

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 621
    and-int/lit8 v1, v1, 0xf

    invoke-static {v1}, Lorg/mozilla/javascript/NativeGlobal;->toHexChar(I)C

    .end local v1           #d:I
    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 617
    add-int/lit8 v1, v2, 0x1

    .end local v2           #j:I
    .local v1, j:I
    move v2, v1

    .end local v1           #j:I
    .restart local v2       #j:I
    goto :goto_4

    .line 606
    .end local v2           #j:I
    .end local v3           #k:I
    .local v0, C:C
    .local v1, k:I
    :cond_3
    add-int/lit8 v2, v1, 0x1

    .line 607
    .end local v1           #k:I
    .local v2, k:I
    if-ne v2, v4, :cond_4

    .line 608
    const-string p0, "msg.bad.uri"

    .end local p0
    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0

    .line 610
    .restart local p0
    :cond_4
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 611
    .local v1, C2:C
    const v3, 0xdc00

    if-gt v3, v1, :cond_5

    const v3, 0xdfff

    if-le v1, v3, :cond_6

    .line 612
    :cond_5
    const-string p0, "msg.bad.uri"

    .end local p0
    invoke-static {p0}, Lorg/mozilla/javascript/Context;->reportRuntimeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object p0

    throw p0

    .line 614
    .restart local p0
    :cond_6
    const v3, 0xd800

    sub-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0xa

    const v3, 0xdc00

    sub-int/2addr v1, v3

    add-int/2addr v0, v1

    const/high16 v1, 0x1

    add-int/2addr v0, v1

    .local v0, V:I
    move v3, v2

    .end local v2           #k:I
    .restart local v3       #k:I
    goto :goto_3

    .line 625
    .end local v0           #V:I
    .end local v5           #sb:Ljava/lang/StringBuffer;
    .end local v6           #utf8buf:[B
    .local v1, k:I
    .local v2, sb:Ljava/lang/StringBuffer;
    .local v3, utf8buf:[B
    :cond_7
    if-nez v2, :cond_8

    .end local p0
    :goto_5
    return-object p0

    .restart local p0
    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    .end local v1           #k:I
    .local v0, L:I
    .local v2, j:I
    .local v3, k:I
    .restart local v5       #sb:Ljava/lang/StringBuffer;
    .restart local v6       #utf8buf:[B
    :cond_9
    move v0, v3

    .end local v3           #k:I
    .local v0, k:I
    move-object v1, v5

    .end local v5           #sb:Ljava/lang/StringBuffer;
    .local v1, sb:Ljava/lang/StringBuffer;
    move-object v2, v6

    .end local v6           #utf8buf:[B
    .local v2, utf8buf:[B
    goto/16 :goto_1

    .local v0, C:C
    .local v1, k:I
    .local v2, sb:Ljava/lang/StringBuffer;
    .local v3, utf8buf:[B
    :cond_a
    move-object v5, v2

    .end local v2           #sb:Ljava/lang/StringBuffer;
    .restart local v5       #sb:Ljava/lang/StringBuffer;
    move-object v6, v3

    .end local v3           #utf8buf:[B
    .restart local v6       #utf8buf:[B
    goto/16 :goto_2

    .end local v5           #sb:Ljava/lang/StringBuffer;
    .end local v6           #utf8buf:[B
    .restart local v2       #sb:Ljava/lang/StringBuffer;
    .restart local v3       #utf8buf:[B
    :cond_b
    move v0, v1

    .end local v1           #k:I
    .local v0, k:I
    move-object v1, v2

    .end local v2           #sb:Ljava/lang/StringBuffer;
    .local v1, sb:Ljava/lang/StringBuffer;
    move-object v2, v3

    .end local v3           #utf8buf:[B
    .local v2, utf8buf:[B
    goto/16 :goto_1
.end method

.method private static encodeUnescaped(CZ)Z
    .locals 3
    .parameter "c"
    .parameter "fullUri"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 748
    const/16 v0, 0x41

    if-gt v0, p0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x30

    if-gt v0, p0, :cond_3

    const/16 v0, 0x39

    if-gt p0, v0, :cond_3

    :cond_2
    move v0, v1

    .line 758
    :goto_0
    return v0

    .line 753
    :cond_3
    const-string v0, "-_.!~*\'()"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_4

    move v0, v1

    .line 754
    goto :goto_0

    .line 755
    :cond_4
    if-eqz p1, :cond_6

    .line 756
    const-string v0, ";/?:@&=+$,#"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    move v0, v2

    .line 758
    goto :goto_0
.end method

.method public static init(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Z)V
    .locals 13
    .parameter "cx"
    .parameter "scope"
    .parameter "sealed"

    .prologue
    .line 64
    new-instance v1, Lorg/mozilla/javascript/NativeGlobal;

    invoke-direct {v1}, Lorg/mozilla/javascript/NativeGlobal;-><init>()V

    .line 66
    .local v1, obj:Lorg/mozilla/javascript/NativeGlobal;
    const/4 v3, 0x1

    .local v3, id:I
    :goto_0
    const/16 v0, 0xd

    if-gt v3, v0, :cond_1

    .line 68
    const/4 v5, 0x1

    .line 69
    .local v5, arity:I
    packed-switch v3, :pswitch_data_0

    .line 111
    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    move-result-object p0

    .end local p0
    throw p0

    .line 71
    .restart local p0
    :pswitch_0
    const-string v4, "decodeURI"

    .line 113
    .local v4, name:Ljava/lang/String;
    :goto_1
    new-instance v0, Lorg/mozilla/javascript/IdFunctionObject;

    sget-object v2, Lorg/mozilla/javascript/NativeGlobal;->FTAG:Ljava/lang/Object;

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/mozilla/javascript/IdFunctionObject;-><init>(Lorg/mozilla/javascript/IdFunctionCall;Ljava/lang/Object;ILjava/lang/String;ILorg/mozilla/javascript/Scriptable;)V

    .line 115
    .local v0, f:Lorg/mozilla/javascript/IdFunctionObject;
    if-eqz p2, :cond_0

    .line 116
    invoke-virtual {v0}, Lorg/mozilla/javascript/IdFunctionObject;->sealObject()V

    .line 118
    :cond_0
    invoke-virtual {v0}, Lorg/mozilla/javascript/IdFunctionObject;->exportAsScopeProperty()V

    .line 66
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 74
    .end local v0           #f:Lorg/mozilla/javascript/IdFunctionObject;
    .end local v4           #name:Ljava/lang/String;
    :pswitch_1
    const-string v4, "decodeURIComponent"

    .line 75
    .restart local v4       #name:Ljava/lang/String;
    goto :goto_1

    .line 77
    .end local v4           #name:Ljava/lang/String;
    :pswitch_2
    const-string v4, "encodeURI"

    .line 78
    .restart local v4       #name:Ljava/lang/String;
    goto :goto_1

    .line 80
    .end local v4           #name:Ljava/lang/String;
    :pswitch_3
    const-string v4, "encodeURIComponent"

    .line 81
    .restart local v4       #name:Ljava/lang/String;
    goto :goto_1

    .line 83
    .end local v4           #name:Ljava/lang/String;
    :pswitch_4
    const-string v4, "escape"

    .line 84
    .restart local v4       #name:Ljava/lang/String;
    goto :goto_1

    .line 86
    .end local v4           #name:Ljava/lang/String;
    :pswitch_5
    const-string v4, "eval"

    .line 87
    .restart local v4       #name:Ljava/lang/String;
    goto :goto_1

    .line 89
    .end local v4           #name:Ljava/lang/String;
    :pswitch_6
    const-string v4, "isFinite"

    .line 90
    .restart local v4       #name:Ljava/lang/String;
    goto :goto_1

    .line 92
    .end local v4           #name:Ljava/lang/String;
    :pswitch_7
    const-string v4, "isNaN"

    .line 93
    .restart local v4       #name:Ljava/lang/String;
    goto :goto_1

    .line 95
    .end local v4           #name:Ljava/lang/String;
    :pswitch_8
    const-string v4, "isXMLName"

    .line 96
    .restart local v4       #name:Ljava/lang/String;
    goto :goto_1

    .line 98
    .end local v4           #name:Ljava/lang/String;
    :pswitch_9
    const-string v4, "parseFloat"

    .line 99
    .restart local v4       #name:Ljava/lang/String;
    goto :goto_1

    .line 101
    .end local v4           #name:Ljava/lang/String;
    :pswitch_a
    const-string v4, "parseInt"

    .line 102
    .restart local v4       #name:Ljava/lang/String;
    const/4 v5, 0x2

    .line 103
    goto :goto_1

    .line 105
    .end local v4           #name:Ljava/lang/String;
    :pswitch_b
    const-string v4, "unescape"

    .line 106
    .restart local v4       #name:Ljava/lang/String;
    goto :goto_1

    .line 108
    .end local v4           #name:Ljava/lang/String;
    :pswitch_c
    const-string v4, "uneval"

    .line 109
    .restart local v4       #name:Ljava/lang/String;
    goto :goto_1

    .line 121
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #arity:I
    :cond_1
    const-string v0, "NaN"

    sget-object v2, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    const/4 v3, 0x7

    invoke-static {p1, v0, v2, v3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 124
    .end local v3           #id:I
    const-string v0, "Infinity"

    const-wide/high16 v2, 0x7ff0

    invoke-static {v2, v3}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v2

    const/4 v3, 0x7

    invoke-static {p1, v0, v2, v3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 128
    const-string v0, "undefined"

    sget-object v2, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    const/4 v3, 0x7

    invoke-static {p1, v0, v2, v3}, Lorg/mozilla/javascript/ScriptableObject;->defineProperty(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 132
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "ConversionError"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "EvalError"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "RangeError"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "ReferenceError"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "SyntaxError"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "TypeError"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "URIError"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "InternalError"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "JavaException"

    aput-object v3, v0, v2

    .line 148
    .local v0, errorMethods:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    move v3, v2

    .end local v2           #i:I
    .local v3, i:I
    :goto_2
    array-length v2, v0

    if-ge v3, v2, :cond_3

    .line 149
    aget-object v4, v0, v3

    .line 150
    .restart local v4       #name:Ljava/lang/String;
    const-string v2, "Error"

    sget-object v5, Lorg/mozilla/javascript/ScriptRuntime;->emptyArgs:[Ljava/lang/Object;

    invoke-static {p0, p1, v2, v5}, Lorg/mozilla/javascript/ScriptRuntime;->newObject(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;[Ljava/lang/Object;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v2

    check-cast v2, Lorg/mozilla/javascript/ScriptableObject;

    .line 153
    .local v2, errorProto:Lorg/mozilla/javascript/ScriptableObject;
    const-string v5, "name"

    invoke-virtual {v2, v5, v2, v4}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 154
    const-string v5, "message"

    const-string v6, ""

    invoke-virtual {v2, v5, v2, v6}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 155
    new-instance v6, Lorg/mozilla/javascript/IdFunctionObject;

    sget-object v8, Lorg/mozilla/javascript/NativeGlobal;->FTAG:Ljava/lang/Object;

    const/16 v9, 0xe

    const/4 v11, 0x1

    move-object v7, v1

    move-object v10, v4

    move-object v12, p1

    invoke-direct/range {v6 .. v12}, Lorg/mozilla/javascript/IdFunctionObject;-><init>(Lorg/mozilla/javascript/IdFunctionCall;Ljava/lang/Object;ILjava/lang/String;ILorg/mozilla/javascript/Scriptable;)V

    .line 158
    .local v6, ctor:Lorg/mozilla/javascript/IdFunctionObject;
    invoke-virtual {v6, v2}, Lorg/mozilla/javascript/IdFunctionObject;->markAsConstructor(Lorg/mozilla/javascript/Scriptable;)V

    .line 159
    const-string v4, "constructor"

    .end local v4           #name:Ljava/lang/String;
    invoke-virtual {v2, v4, v2, v6}, Lorg/mozilla/javascript/ScriptableObject;->put(Ljava/lang/String;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)V

    .line 160
    const-string v4, "constructor"

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Lorg/mozilla/javascript/ScriptableObject;->setAttributes(Ljava/lang/String;I)V

    .line 161
    if-eqz p2, :cond_2

    .line 162
    invoke-virtual {v2}, Lorg/mozilla/javascript/ScriptableObject;->sealObject()V

    .line 163
    invoke-virtual {v6}, Lorg/mozilla/javascript/IdFunctionObject;->sealObject()V

    .line 165
    :cond_2
    invoke-virtual {v6}, Lorg/mozilla/javascript/IdFunctionObject;->exportAsScopeProperty()V

    .line 148
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .local v2, i:I
    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_2

    .line 167
    .end local v6           #ctor:Lorg/mozilla/javascript/IdFunctionObject;
    :cond_3
    return-void

    .line 69
    nop

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
    .end packed-switch
.end method

.method static isEvalFunction(Ljava/lang/Object;)Z
    .locals 4
    .parameter "functionObj"

    .prologue
    .line 535
    instance-of v2, p0, Lorg/mozilla/javascript/IdFunctionObject;

    if-eqz v2, :cond_0

    .line 536
    move-object v0, p0

    check-cast v0, Lorg/mozilla/javascript/IdFunctionObject;

    move-object v1, v0

    .line 537
    .local v1, function:Lorg/mozilla/javascript/IdFunctionObject;
    sget-object v2, Lorg/mozilla/javascript/NativeGlobal;->FTAG:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 538
    const/4 v2, 0x1

    .line 541
    .end local v1           #function:Lorg/mozilla/javascript/IdFunctionObject;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private js_escape([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19
    .parameter "args"

    .prologue
    .line 419
    const/4 v4, 0x1

    .line 420
    .local v4, URL_XALPHAS:I
    const/4 v5, 0x2

    .line 421
    .local v5, URL_XPALPHAS:I
    const/4 v3, 0x4

    .line 423
    .local v3, URL_PATH:I
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v14

    .line 425
    .local v14, s:Ljava/lang/String;
    const/4 v13, 0x7

    .line 426
    .local v13, mask:I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    .line 427
    const/16 v17, 0x1

    aget-object v17, p1, v17

    invoke-static/range {v17 .. v17}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v7

    .line 428
    .local v7, d:D
    cmpl-double v17, v7, v7

    if-nez v17, :cond_0

    double-to-int v13, v7

    move v0, v13

    int-to-double v0, v0

    move-wide/from16 v17, v0

    cmpl-double v17, v17, v7

    if-nez v17, :cond_0

    and-int/lit8 v17, v13, -0x8

    if-eqz v17, :cond_1

    .line 431
    :cond_0
    const-string v17, "msg.bad.esc.mask"

    invoke-static/range {v17 .. v17}, Lorg/mozilla/javascript/Context;->reportRuntimeError0(Ljava/lang/String;)Lorg/mozilla/javascript/EvaluatorException;

    move-result-object v17

    throw v17

    .line 435
    .end local v7           #d:D
    :cond_1
    const/4 v15, 0x0

    .line 436
    .local v15, sb:Ljava/lang/StringBuffer;
    const/4 v12, 0x0

    .local v12, k:I
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, L:I
    :goto_0
    if-eq v12, v2, :cond_c

    .line 437
    invoke-virtual {v14, v12}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 438
    .local v6, c:I
    if-eqz v13, :cond_7

    const/16 v17, 0x30

    move v0, v6

    move/from16 v1, v17

    if-lt v0, v1, :cond_2

    const/16 v17, 0x39

    move v0, v6

    move/from16 v1, v17

    if-le v0, v1, :cond_5

    :cond_2
    const/16 v17, 0x41

    move v0, v6

    move/from16 v1, v17

    if-lt v0, v1, :cond_3

    const/16 v17, 0x5a

    move v0, v6

    move/from16 v1, v17

    if-le v0, v1, :cond_5

    :cond_3
    const/16 v17, 0x61

    move v0, v6

    move/from16 v1, v17

    if-lt v0, v1, :cond_4

    const/16 v17, 0x7a

    move v0, v6

    move/from16 v1, v17

    if-le v0, v1, :cond_5

    :cond_4
    const/16 v17, 0x40

    move v0, v6

    move/from16 v1, v17

    if-eq v0, v1, :cond_5

    const/16 v17, 0x2a

    move v0, v6

    move/from16 v1, v17

    if-eq v0, v1, :cond_5

    const/16 v17, 0x5f

    move v0, v6

    move/from16 v1, v17

    if-eq v0, v1, :cond_5

    const/16 v17, 0x2d

    move v0, v6

    move/from16 v1, v17

    if-eq v0, v1, :cond_5

    const/16 v17, 0x2e

    move v0, v6

    move/from16 v1, v17

    if-eq v0, v1, :cond_5

    and-int/lit8 v17, v13, 0x4

    if-eqz v17, :cond_7

    const/16 v17, 0x2f

    move v0, v6

    move/from16 v1, v17

    if-eq v0, v1, :cond_5

    const/16 v17, 0x2b

    move v0, v6

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 444
    :cond_5
    if-eqz v15, :cond_6

    .line 445
    move v0, v6

    int-to-char v0, v0

    move/from16 v17, v0

    move-object v0, v15

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 436
    :cond_6
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 448
    :cond_7
    if-nez v15, :cond_8

    .line 449
    new-instance v15, Ljava/lang/StringBuffer;

    .end local v15           #sb:Ljava/lang/StringBuffer;
    add-int/lit8 v17, v2, 0x3

    move-object v0, v15

    move/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 450
    .restart local v15       #sb:Ljava/lang/StringBuffer;
    invoke-virtual {v15, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 451
    invoke-virtual {v15, v12}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 455
    :cond_8
    const/16 v17, 0x100

    move v0, v6

    move/from16 v1, v17

    if-ge v0, v1, :cond_a

    .line 456
    const/16 v17, 0x20

    move v0, v6

    move/from16 v1, v17

    if-ne v0, v1, :cond_9

    const/16 v17, 0x2

    move v0, v13

    move/from16 v1, v17

    if-ne v0, v1, :cond_9

    .line 457
    const/16 v17, 0x2b

    move-object v0, v15

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 460
    :cond_9
    const/16 v17, 0x25

    move-object v0, v15

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 461
    const/4 v11, 0x2

    .line 469
    .local v11, hexSize:I
    :goto_2
    const/16 v17, 0x1

    sub-int v17, v11, v17

    mul-int/lit8 v16, v17, 0x4

    .local v16, shift:I
    :goto_3
    if-ltz v16, :cond_6

    .line 470
    shr-int v17, v6, v16

    and-int/lit8 v9, v17, 0xf

    .line 471
    .local v9, digit:I
    const/16 v17, 0xa

    move v0, v9

    move/from16 v1, v17

    if-ge v0, v1, :cond_b

    add-int/lit8 v17, v9, 0x30

    move/from16 v10, v17

    .line 472
    .local v10, hc:I
    :goto_4
    move v0, v10

    int-to-char v0, v0

    move/from16 v17, v0

    move-object v0, v15

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 469
    add-int/lit8 v16, v16, -0x4

    goto :goto_3

    .line 463
    .end local v9           #digit:I
    .end local v10           #hc:I
    .end local v11           #hexSize:I
    .end local v16           #shift:I
    :cond_a
    const/16 v17, 0x25

    move-object v0, v15

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 464
    const/16 v17, 0x75

    move-object v0, v15

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 465
    const/4 v11, 0x4

    .restart local v11       #hexSize:I
    goto :goto_2

    .line 471
    .restart local v9       #digit:I
    .restart local v16       #shift:I
    :cond_b
    add-int/lit8 v17, v9, 0x37

    move/from16 v10, v17

    goto :goto_4

    .line 477
    .end local v6           #c:I
    .end local v9           #digit:I
    .end local v11           #hexSize:I
    .end local v16           #shift:I
    :cond_c
    if-nez v15, :cond_d

    move-object/from16 v17, v14

    :goto_5
    return-object v17

    :cond_d
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    goto :goto_5
.end method

.method private js_eval(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "cx"
    .parameter "scope"
    .parameter "args"

    .prologue
    .line 529
    invoke-static {p2}, Lorg/mozilla/javascript/ScriptableObject;->getTopLevelScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/Scriptable;

    move-result-object v1

    .line 530
    .local v1, global:Lorg/mozilla/javascript/Scriptable;
    const-string v4, "eval code"

    const/4 v5, 0x1

    move-object v0, p1

    move-object v2, v1

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lorg/mozilla/javascript/ScriptRuntime;->evalSpecial(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private js_parseFloat([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14
    .parameter "args"

    .prologue
    .line 310
    array-length v11, p1

    const/4 v12, 0x1

    if-ge v11, v12, :cond_0

    .line 311
    sget-object v11, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    .line 405
    :goto_0
    return-object v11

    .line 313
    :cond_0
    const/4 v11, 0x0

    aget-object v11, p1, v11

    invoke-static {v11}, Lorg/mozilla/javascript/ScriptRuntime;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 314
    .local v9, s:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v8

    .line 315
    .local v8, len:I
    const/4 v10, 0x0

    .line 319
    .local v10, start:I
    :goto_1
    if-ne v10, v8, :cond_1

    .line 320
    sget-object v11, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    goto :goto_0

    .line 322
    :cond_1
    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 323
    .local v0, c:C
    invoke-static {v0}, Lorg/mozilla/javascript/ScriptRuntime;->isStrWhiteSpaceChar(I)Z

    move-result v11

    if-nez v11, :cond_3

    .line 329
    move v7, v10

    .line 330
    .local v7, i:I
    const/16 v11, 0x2b

    if-eq v0, v11, :cond_2

    const/16 v11, 0x2d

    if-ne v0, v11, :cond_5

    .line 331
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 332
    if-ne v7, v8, :cond_4

    .line 333
    sget-object v11, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    goto :goto_0

    .line 326
    .end local v7           #i:I
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 335
    .restart local v7       #i:I
    :cond_4
    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 338
    :cond_5
    const/16 v11, 0x49

    if-ne v0, v11, :cond_8

    .line 340
    add-int/lit8 v11, v7, 0x8

    if-gt v11, v8, :cond_7

    const-string v11, "Infinity"

    const/4 v12, 0x0

    const/16 v13, 0x8

    invoke-virtual {v9, v7, v11, v12, v13}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 342
    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x2d

    if-ne v11, v12, :cond_6

    .line 343
    const-wide/high16 v1, -0x10

    .line 347
    .local v1, d:D
    :goto_2
    invoke-static {v1, v2}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v11

    goto :goto_0

    .line 345
    .end local v1           #d:D
    :cond_6
    const-wide/high16 v1, 0x7ff0

    .restart local v1       #d:D
    goto :goto_2

    .line 349
    .end local v1           #d:D
    :cond_7
    sget-object v11, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    goto :goto_0

    .line 353
    :cond_8
    const/4 v3, -0x1

    .line 354
    .local v3, decimal:I
    const/4 v5, -0x1

    .line 355
    .local v5, exponent:I
    const/4 v6, 0x0

    .line 356
    .local v6, exponentValid:Z
    :goto_3
    if-ge v7, v8, :cond_9

    .line 357
    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    sparse-switch v11, :sswitch_data_0

    .line 397
    :cond_9
    :goto_4
    const/4 v11, -0x1

    if-eq v5, v11, :cond_a

    if-nez v6, :cond_a

    .line 398
    move v7, v5

    .line 400
    :cond_a
    invoke-virtual {v9, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 402
    :try_start_0
    invoke-static {v9}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    goto :goto_0

    .line 359
    :sswitch_0
    const/4 v11, -0x1

    if-ne v3, v11, :cond_9

    .line 361
    move v3, v7

    .line 356
    :cond_b
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 366
    :sswitch_1
    const/4 v11, -0x1

    if-ne v5, v11, :cond_9

    .line 368
    const/4 v11, 0x1

    sub-int v11, v8, v11

    if-eq v7, v11, :cond_9

    .line 371
    move v5, v7

    .line 372
    goto :goto_5

    .line 377
    :sswitch_2
    const/4 v11, 0x1

    sub-int v11, v7, v11

    if-ne v5, v11, :cond_9

    .line 379
    const/4 v11, 0x1

    sub-int v11, v8, v11

    if-ne v7, v11, :cond_b

    .line 380
    add-int/lit8 v7, v7, -0x1

    .line 381
    goto :goto_4

    .line 387
    :sswitch_3
    const/4 v11, -0x1

    if-eq v5, v11, :cond_b

    .line 388
    const/4 v6, 0x1

    goto :goto_5

    .line 404
    :catch_0
    move-exception v4

    .line 405
    .local v4, ex:Ljava/lang/NumberFormatException;
    sget-object v11, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    goto/16 :goto_0

    .line 357
    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_2
        0x2d -> :sswitch_2
        0x2e -> :sswitch_0
        0x30 -> :sswitch_3
        0x31 -> :sswitch_3
        0x32 -> :sswitch_3
        0x33 -> :sswitch_3
        0x34 -> :sswitch_3
        0x35 -> :sswitch_3
        0x36 -> :sswitch_3
        0x37 -> :sswitch_3
        0x38 -> :sswitch_3
        0x39 -> :sswitch_3
        0x45 -> :sswitch_1
        0x65 -> :sswitch_1
    .end sparse-switch
.end method

.method private js_parseInt([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .parameter "args"

    .prologue
    .line 254
    const/4 v9, 0x0

    invoke-static {p1, v9}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v7

    .line 255
    .local v7, s:Ljava/lang/String;
    const/4 v9, 0x1

    invoke-static {p1, v9}, Lorg/mozilla/javascript/ScriptRuntime;->toInt32([Ljava/lang/Object;I)I

    move-result v6

    .line 257
    .local v6, radix:I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    .line 258
    .local v4, len:I
    if-nez v4, :cond_0

    .line 259
    sget-object v9, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    .line 300
    :goto_0
    return-object v9

    .line 261
    :cond_0
    const/4 v5, 0x0

    .line 262
    .local v5, negative:Z
    const/4 v8, 0x0

    .line 265
    .local v8, start:I
    :cond_1
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 266
    .local v1, c:C
    invoke-static {v1}, Lorg/mozilla/javascript/ScriptRuntime;->isStrWhiteSpaceChar(I)Z

    move-result v9

    if-nez v9, :cond_7

    .line 271
    :goto_1
    const/16 v9, 0x2b

    if-eq v1, v9, :cond_2

    const/16 v9, 0x2d

    if-ne v1, v9, :cond_8

    const/4 v9, 0x1

    move v5, v9

    :goto_2
    if-eqz v5, :cond_3

    .line 272
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 274
    :cond_3
    const/4 v0, -0x1

    .line 275
    .local v0, NO_RADIX:I
    if-nez v6, :cond_9

    .line 276
    const/4 v6, -0x1

    .line 285
    :cond_4
    :goto_3
    const/4 v9, -0x1

    if-ne v6, v9, :cond_6

    .line 286
    const/16 v6, 0xa

    .line 287
    sub-int v9, v4, v8

    const/4 v10, 0x1

    if-le v9, v10, :cond_6

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x30

    if-ne v9, v10, :cond_6

    .line 288
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 289
    const/16 v9, 0x78

    if-eq v1, v9, :cond_5

    const/16 v9, 0x58

    if-ne v1, v9, :cond_d

    .line 290
    :cond_5
    const/16 v6, 0x10

    .line 291
    add-int/lit8 v8, v8, 0x2

    .line 299
    :cond_6
    :goto_4
    invoke-static {v7, v8, v6}, Lorg/mozilla/javascript/ScriptRuntime;->stringToNumber(Ljava/lang/String;II)D

    move-result-wide v2

    .line 300
    .local v2, d:D
    if-eqz v5, :cond_e

    neg-double v9, v2

    :goto_5
    invoke-static {v9, v10}, Lorg/mozilla/javascript/ScriptRuntime;->wrapNumber(D)Ljava/lang/Number;

    move-result-object v9

    goto :goto_0

    .line 268
    .end local v0           #NO_RADIX:I
    .end local v2           #d:D
    :cond_7
    add-int/lit8 v8, v8, 0x1

    .line 269
    if-lt v8, v4, :cond_1

    goto :goto_1

    .line 271
    :cond_8
    const/4 v9, 0x0

    move v5, v9

    goto :goto_2

    .line 277
    .restart local v0       #NO_RADIX:I
    :cond_9
    const/4 v9, 0x2

    if-lt v6, v9, :cond_a

    const/16 v9, 0x24

    if-le v6, v9, :cond_b

    .line 278
    :cond_a
    sget-object v9, Lorg/mozilla/javascript/ScriptRuntime;->NaNobj:Ljava/lang/Double;

    goto :goto_0

    .line 279
    :cond_b
    const/16 v9, 0x10

    if-ne v6, v9, :cond_4

    sub-int v9, v4, v8

    const/4 v10, 0x1

    if-le v9, v10, :cond_4

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x30

    if-ne v9, v10, :cond_4

    .line 280
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 281
    const/16 v9, 0x78

    if-eq v1, v9, :cond_c

    const/16 v9, 0x58

    if-ne v1, v9, :cond_4

    .line 282
    :cond_c
    add-int/lit8 v8, v8, 0x2

    goto :goto_3

    .line 292
    :cond_d
    const/16 v9, 0x30

    if-gt v9, v1, :cond_6

    const/16 v9, 0x39

    if-gt v1, v9, :cond_6

    .line 293
    const/16 v6, 0x8

    .line 294
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .restart local v2       #d:D
    :cond_e
    move-wide v9, v2

    .line 300
    goto :goto_5
.end method

.method private js_unescape([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .parameter "args"

    .prologue
    .line 486
    const/4 v11, 0x0

    invoke-static {p1, v11}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v8

    .line 487
    .local v8, s:Ljava/lang/String;
    const/16 v11, 0x25

    invoke-virtual {v8, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 488
    .local v5, firstEscapePos:I
    if-ltz v5, :cond_4

    .line 489
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    .line 490
    .local v0, L:I
    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 491
    .local v1, buf:[C
    move v3, v5

    .line 492
    .local v3, destination:I
    move v7, v5

    .local v7, k:I
    :goto_0
    if-eq v7, v0, :cond_3

    .line 493
    aget-char v2, v1, v7

    .line 494
    .local v2, c:C
    add-int/lit8 v7, v7, 0x1

    .line 495
    const/16 v11, 0x25

    if-ne v2, v11, :cond_2

    if-eq v7, v0, :cond_2

    .line 497
    aget-char v11, v1, v7

    const/16 v12, 0x75

    if-ne v11, v12, :cond_0

    .line 498
    add-int/lit8 v9, v7, 0x1

    .line 499
    .local v9, start:I
    add-int/lit8 v4, v7, 0x5

    .line 504
    .local v4, end:I
    :goto_1
    if-gt v4, v0, :cond_2

    .line 505
    const/4 v10, 0x0

    .line 506
    .local v10, x:I
    move v6, v9

    .local v6, i:I
    :goto_2
    if-eq v6, v4, :cond_1

    .line 507
    aget-char v11, v1, v6

    invoke-static {v11, v10}, Lorg/mozilla/javascript/Kit;->xDigitToInt(II)I

    move-result v10

    .line 506
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 501
    .end local v4           #end:I
    .end local v6           #i:I
    .end local v9           #start:I
    .end local v10           #x:I
    :cond_0
    move v9, v7

    .line 502
    .restart local v9       #start:I
    add-int/lit8 v4, v7, 0x2

    .restart local v4       #end:I
    goto :goto_1

    .line 509
    .restart local v6       #i:I
    .restart local v10       #x:I
    :cond_1
    if-ltz v10, :cond_2

    .line 510
    int-to-char v2, v10

    .line 511
    move v7, v4

    .line 515
    .end local v4           #end:I
    .end local v6           #i:I
    .end local v9           #start:I
    .end local v10           #x:I
    :cond_2
    aput-char v2, v1, v3

    .line 516
    add-int/lit8 v3, v3, 0x1

    .line 517
    goto :goto_0

    .line 518
    .end local v2           #c:C
    :cond_3
    new-instance v8, Ljava/lang/String;

    .end local v8           #s:Ljava/lang/String;
    const/4 v11, 0x0

    invoke-direct {v8, v1, v11, v3}, Ljava/lang/String;-><init>([CII)V

    .line 520
    .end local v0           #L:I
    .end local v1           #buf:[C
    .end local v3           #destination:I
    .end local v7           #k:I
    .restart local v8       #s:Ljava/lang/String;
    :cond_4
    return-object v8
.end method

.method private static oneUcs4ToUtf8Char([BI)I
    .locals 7
    .parameter "utf8Buffer"
    .parameter "ucs4Char"

    .prologue
    const/4 v6, 0x0

    .line 767
    const/4 v2, 0x1

    .line 770
    .local v2, utf8Length:I
    and-int/lit8 v3, p1, -0x80

    if-nez v3, :cond_0

    .line 771
    int-to-byte v3, p1

    aput-byte v3, p0, v6

    .line 787
    :goto_0
    return v2

    .line 774
    :cond_0
    ushr-int/lit8 v0, p1, 0xb

    .line 775
    .local v0, a:I
    const/4 v2, 0x2

    .line 776
    :goto_1
    if-eqz v0, :cond_1

    .line 777
    ushr-int/lit8 v0, v0, 0x5

    .line 778
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 780
    :cond_1
    move v1, v2

    .line 781
    .local v1, i:I
    :goto_2
    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_2

    .line 782
    and-int/lit8 v3, p1, 0x3f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, p0, v1

    .line 783
    ushr-int/lit8 p1, p1, 0x6

    goto :goto_2

    .line 785
    :cond_2
    const/16 v3, 0x100

    const/4 v4, 0x1

    const/16 v5, 0x8

    sub-int/2addr v5, v2

    shl-int/2addr v4, v5

    sub-int/2addr v3, v4

    add-int/2addr v3, p1

    int-to-byte v3, v3

    aput-byte v3, p0, v6

    goto :goto_0
.end method

.method private static toHexChar(I)C
    .locals 2
    .parameter "i"

    .prologue
    const/16 v1, 0xa

    .line 629
    shr-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/mozilla/javascript/Kit;->codeBug()Ljava/lang/RuntimeException;

    .line 630
    :cond_0
    if-ge p0, v1, :cond_1

    add-int/lit8 v0, p0, 0x30

    :goto_0
    int-to-char v0, v0

    return v0

    :cond_1
    sub-int v0, p0, v1

    add-int/lit8 v0, v0, 0x41

    goto :goto_0
.end method

.method private static unHex(C)I
    .locals 4
    .parameter "c"

    .prologue
    const/16 v3, 0x61

    const/16 v2, 0x41

    const/16 v1, 0x30

    .line 634
    if-gt v2, p0, :cond_0

    const/16 v0, 0x46

    if-gt p0, v0, :cond_0

    .line 635
    sub-int v0, p0, v2

    add-int/lit8 v0, v0, 0xa

    .line 641
    :goto_0
    return v0

    .line 636
    :cond_0
    if-gt v3, p0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    .line 637
    sub-int v0, p0, v3

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 638
    :cond_1
    if-gt v1, p0, :cond_2

    const/16 v0, 0x39

    if-gt p0, v0, :cond_2

    .line 639
    sub-int v0, p0, v1

    goto :goto_0

    .line 641
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static unHex(CC)I
    .locals 3
    .parameter "c1"
    .parameter "c2"

    .prologue
    .line 646
    invoke-static {p0}, Lorg/mozilla/javascript/NativeGlobal;->unHex(C)I

    move-result v0

    .line 647
    .local v0, i1:I
    invoke-static {p1}, Lorg/mozilla/javascript/NativeGlobal;->unHex(C)I

    move-result v1

    .line 648
    .local v1, i2:I
    if-ltz v0, :cond_0

    if-ltz v1, :cond_0

    .line 649
    shl-int/lit8 v2, v0, 0x4

    or-int/2addr v2, v1

    .line 651
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method


# virtual methods
.method public execIdCall(Lorg/mozilla/javascript/IdFunctionObject;Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .parameter "f"
    .parameter "cx"
    .parameter "scope"
    .parameter "thisObj"
    .parameter "args"

    .prologue
    .line 172
    sget-object v8, Lorg/mozilla/javascript/NativeGlobal;->FTAG:Ljava/lang/Object;

    invoke-virtual {p1, v8}, Lorg/mozilla/javascript/IdFunctionObject;->hasTag(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 173
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->methodId()I

    move-result v2

    .line 174
    .local v2, methodId:I
    packed-switch v2, :pswitch_data_0

    .line 247
    .end local v2           #methodId:I
    :cond_0
    invoke-virtual {p1}, Lorg/mozilla/javascript/IdFunctionObject;->unknown()Ljava/lang/RuntimeException;

    move-result-object v8

    throw v8

    .line 177
    .restart local v2       #methodId:I
    :pswitch_0
    const/4 v8, 0x0

    invoke-static {p5, v8}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v5

    .line 178
    .local v5, str:Ljava/lang/String;
    const/4 v8, 0x1

    if-ne v2, v8, :cond_1

    const/4 v8, 0x1

    :goto_0
    invoke-static {v5, v8}, Lorg/mozilla/javascript/NativeGlobal;->decode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 244
    .end local v5           #str:Ljava/lang/String;
    :goto_1
    return-object v8

    .line 178
    .restart local v5       #str:Ljava/lang/String;
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 183
    .end local v5           #str:Ljava/lang/String;
    :pswitch_1
    const/4 v8, 0x0

    invoke-static {p5, v8}, Lorg/mozilla/javascript/ScriptRuntime;->toString([Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v5

    .line 184
    .restart local v5       #str:Ljava/lang/String;
    const/4 v8, 0x3

    if-ne v2, v8, :cond_2

    const/4 v8, 0x1

    :goto_2
    invoke-static {v5, v8}, Lorg/mozilla/javascript/NativeGlobal;->encode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    .line 188
    .end local v5           #str:Ljava/lang/String;
    :pswitch_2
    invoke-direct {p0, p5}, Lorg/mozilla/javascript/NativeGlobal;->js_escape([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_1

    .line 191
    :pswitch_3
    invoke-direct {p0, p2, p3, p5}, Lorg/mozilla/javascript/NativeGlobal;->js_eval(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_1

    .line 195
    :pswitch_4
    array-length v8, p5

    const/4 v9, 0x1

    if-ge v8, v9, :cond_3

    .line 196
    const/4 v4, 0x0

    .line 203
    .local v4, result:Z
    :goto_3
    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_1

    .line 198
    .end local v4           #result:Z
    :cond_3
    const/4 v8, 0x0

    aget-object v8, p5, v8

    invoke-static {v8}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    .line 199
    .local v0, d:D
    cmpl-double v8, v0, v0

    if-nez v8, :cond_4

    const-wide/high16 v8, 0x7ff0

    cmpl-double v8, v0, v8

    if-eqz v8, :cond_4

    const-wide/high16 v8, -0x10

    cmpl-double v8, v0, v8

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    move v4, v8

    .restart local v4       #result:Z
    :goto_4
    goto :goto_3

    .end local v4           #result:Z
    :cond_4
    const/4 v8, 0x0

    move v4, v8

    goto :goto_4

    .line 209
    .end local v0           #d:D
    :pswitch_5
    array-length v8, p5

    const/4 v9, 0x1

    if-ge v8, v9, :cond_5

    .line 210
    const/4 v4, 0x1

    .line 215
    .restart local v4       #result:Z
    :goto_5
    invoke-static {v4}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_1

    .line 212
    .end local v4           #result:Z
    :cond_5
    const/4 v8, 0x0

    aget-object v8, p5, v8

    invoke-static {v8}, Lorg/mozilla/javascript/ScriptRuntime;->toNumber(Ljava/lang/Object;)D

    move-result-wide v0

    .line 213
    .restart local v0       #d:D
    cmpl-double v8, v0, v0

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    move v4, v8

    .restart local v4       #result:Z
    :goto_6
    goto :goto_5

    .end local v4           #result:Z
    :cond_6
    const/4 v8, 0x0

    move v4, v8

    goto :goto_6

    .line 219
    .end local v0           #d:D
    :pswitch_6
    array-length v8, p5

    if-nez v8, :cond_7

    sget-object v8, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    move-object v3, v8

    .line 221
    .local v3, name:Ljava/lang/Object;
    :goto_7
    invoke-static {p3}, Lorg/mozilla/javascript/xml/XMLLib;->extractFromScope(Lorg/mozilla/javascript/Scriptable;)Lorg/mozilla/javascript/xml/XMLLib;

    move-result-object v7

    .line 222
    .local v7, xmlLib:Lorg/mozilla/javascript/xml/XMLLib;
    invoke-virtual {v7, p2, v3}, Lorg/mozilla/javascript/xml/XMLLib;->isXMLName(Lorg/mozilla/javascript/Context;Ljava/lang/Object;)Z

    move-result v8

    invoke-static {v8}, Lorg/mozilla/javascript/ScriptRuntime;->wrapBoolean(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_1

    .line 219
    .end local v3           #name:Ljava/lang/Object;
    .end local v7           #xmlLib:Lorg/mozilla/javascript/xml/XMLLib;
    :cond_7
    const/4 v8, 0x0

    aget-object v8, p5, v8

    move-object v3, v8

    goto :goto_7

    .line 227
    :pswitch_7
    invoke-direct {p0, p5}, Lorg/mozilla/javascript/NativeGlobal;->js_parseFloat([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_1

    .line 230
    :pswitch_8
    invoke-direct {p0, p5}, Lorg/mozilla/javascript/NativeGlobal;->js_parseInt([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_1

    .line 233
    :pswitch_9
    invoke-direct {p0, p5}, Lorg/mozilla/javascript/NativeGlobal;->js_unescape([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto/16 :goto_1

    .line 236
    :pswitch_a
    array-length v8, p5

    if-eqz v8, :cond_8

    const/4 v8, 0x0

    aget-object v8, p5, v8

    move-object v6, v8

    .line 238
    .local v6, value:Ljava/lang/Object;
    :goto_8
    invoke-static {p2, p3, v6}, Lorg/mozilla/javascript/ScriptRuntime;->uneval(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 236
    .end local v6           #value:Ljava/lang/Object;
    :cond_8
    sget-object v8, Lorg/mozilla/javascript/Undefined;->instance:Ljava/lang/Object;

    move-object v6, v8

    goto :goto_8

    .line 244
    :pswitch_b
    invoke-static {p2, p3, p1, p5}, Lorg/mozilla/javascript/NativeError;->make(Lorg/mozilla/javascript/Context;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/IdFunctionObject;[Ljava/lang/Object;)Lorg/mozilla/javascript/NativeError;

    move-result-object v8

    goto/16 :goto_1

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
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
    .end packed-switch
.end method
