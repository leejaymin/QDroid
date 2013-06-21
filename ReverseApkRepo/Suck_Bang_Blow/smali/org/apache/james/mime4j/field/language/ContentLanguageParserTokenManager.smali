.class public Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;
.super Ljava/lang/Object;
.source "ContentLanguageParserTokenManager.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/language/ContentLanguageParserConstants;


# static fields
.field static final jjbitVec0:[J

.field public static final jjnewLexState:[I

.field static final jjnextStates:[I

.field public static final jjstrLiteralImages:[Ljava/lang/String;

.field static final jjtoMore:[J

.field static final jjtoSkip:[J

.field static final jjtoSpecial:[J

.field static final jjtoToken:[J

.field public static final lexStateNames:[Ljava/lang/String;


# instance fields
.field commentNest:I

.field protected curChar:C

.field curLexState:I

.field public debugStream:Ljava/io/PrintStream;

.field defaultLexState:I

.field image:Ljava/lang/StringBuffer;

.field protected input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

.field jjimageLen:I

.field jjmatchedKind:I

.field jjmatchedPos:I

.field jjnewStateCnt:I

.field jjround:I

.field private final jjrounds:[I

.field private final jjstateSet:[I

.field lengthOfMatch:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 266
    new-array v0, v6, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjbitVec0:[J

    .line 613
    new-array v0, v4, [I

    sput-object v0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnextStates:[I

    .line 615
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, ","

    aput-object v1, v0, v5

    const-string v1, "-"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    aput-object v3, v0, v1

    aput-object v3, v0, v6

    const/4 v1, 0x5

    aput-object v3, v0, v1

    const/4 v1, 0x6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    aput-object v3, v0, v1

    const/16 v1, 0x8

    aput-object v3, v0, v1

    const/16 v1, 0x9

    aput-object v3, v0, v1

    const/16 v1, 0xa

    aput-object v3, v0, v1

    const/16 v1, 0xb

    aput-object v3, v0, v1

    const/16 v1, 0xc

    aput-object v3, v0, v1

    const/16 v1, 0xd

    aput-object v3, v0, v1

    const/16 v1, 0xe

    aput-object v3, v0, v1

    const/16 v1, 0xf

    aput-object v3, v0, v1

    const/16 v1, 0x10

    aput-object v3, v0, v1

    const/16 v1, 0x11

    aput-object v3, v0, v1

    const/16 v1, 0x12

    aput-object v3, v0, v1

    const/16 v1, 0x13

    aput-object v3, v0, v1

    const/16 v1, 0x14

    const-string v2, "."

    aput-object v2, v0, v1

    const/16 v1, 0x15

    aput-object v3, v0, v1

    const/16 v1, 0x16

    aput-object v3, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    .line 618
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "DEFAULT"

    aput-object v1, v0, v4

    const-string v1, "INCOMMENT"

    aput-object v1, v0, v5

    const-string v1, "NESTED_COMMENT"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "INQUOTEDSTRING"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->lexStateNames:[Ljava/lang/String;

    .line 624
    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewLexState:[I

    .line 627
    new-array v0, v5, [J

    const-wide/32 v1, 0x1f0007

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjtoToken:[J

    .line 630
    new-array v0, v5, [J

    const-wide/16 v1, 0x28

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjtoSkip:[J

    .line 633
    new-array v0, v5, [J

    const-wide/16 v1, 0x8

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjtoSpecial:[J

    .line 636
    new-array v0, v5, [J

    const-wide/32 v1, 0xffd0

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjtoMore:[J

    return-void

    .line 266
    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 624
    :array_1
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x2t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x3t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/language/SimpleCharStream;)V
    .locals 2
    .parameter "stream"

    .prologue
    const/4 v1, 0x0

    .line 646
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->debugStream:Ljava/io/PrintStream;

    .line 640
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjrounds:[I

    .line 641
    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjstateSet:[I

    .line 695
    iput v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curLexState:I

    .line 696
    iput v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->defaultLexState:I

    .line 649
    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    .line 650
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/language/SimpleCharStream;I)V
    .locals 0
    .parameter "stream"
    .parameter "lexState"

    .prologue
    .line 652
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/language/SimpleCharStream;)V

    .line 653
    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->SwitchTo(I)V

    .line 654
    return-void
.end method

.method private final ReInitRounds()V
    .locals 4

    .prologue
    .line 665
    const v2, -0x7fffffff

    iput v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjround:I

    .line 666
    const/4 v0, 0x4

    .local v0, i:I
    move v1, v0

    .end local v0           #i:I
    .local v1, i:I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    if-lez v1, :cond_0

    .line 667
    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjrounds:[I

    const/high16 v3, -0x8000

    aput v3, v2, v0

    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 668
    .end local v1           #i:I
    .restart local v0       #i:I
    :cond_0
    return-void
.end method

.method private final jjAddStates(II)V
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 88
    :goto_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjstateSet:[I

    iget v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    sget-object v3, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnextStates:[I

    aget v3, v3, p1

    aput v3, v1, v2

    .line 89
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, start:I
    if-ne p1, p2, :cond_0

    .line 90
    return-void

    :cond_0
    move p1, v0

    .end local v0           #start:I
    .restart local p1
    goto :goto_0
.end method

.method private final jjCheckNAdd(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 79
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjrounds:[I

    aget v0, v0, p1

    iget v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjround:I

    if-eq v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    aput p1, v0, v1

    .line 82
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjrounds:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjround:I

    aput v1, v0, p1

    .line 84
    :cond_0
    return-void
.end method

.method private final jjCheckNAddStates(I)V
    .locals 2
    .parameter "start"

    .prologue
    .line 104
    sget-object v0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnextStates:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    .line 105
    sget-object v0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnextStates:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    .line 106
    return-void
.end method

.method private final jjCheckNAddStates(II)V
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 99
    :goto_0
    sget-object v1, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnextStates:[I

    aget v1, v1, p1

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    .line 100
    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, start:I
    if-ne p1, p2, :cond_0

    .line 101
    return-void

    :cond_0
    move p1, v0

    .end local v0           #start:I
    .restart local p1
    goto :goto_0
.end method

.method private final jjCheckNAddTwoStates(II)V
    .locals 0
    .parameter "state1"
    .parameter "state2"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    .line 94
    invoke-direct {p0, p2}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    .line 95
    return-void
.end method

.method private final jjMoveNfa_0(II)I
    .locals 13
    .parameter "startState"
    .parameter "curPos"

    .prologue
    .line 110
    const/4 v8, 0x0

    .line 111
    .local v8, startsAt:I
    const/4 v9, 0x4

    iput v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    .line 112
    const/4 v1, 0x1

    .line 113
    .local v1, i:I
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 114
    const v3, 0x7fffffff

    .line 117
    .local v3, kind:I
    :goto_0
    iget v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 118
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->ReInitRounds()V

    .line 119
    :cond_0
    iget-char v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_b

    .line 121
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 124
    .local v4, l:J
    :cond_1
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 168
    :cond_2
    :goto_1
    :pswitch_0
    if-ne v1, v8, :cond_1

    .line 221
    .end local v4           #l:J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 223
    iput v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 224
    iput p2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedPos:I

    .line 225
    const v3, 0x7fffffff

    .line 227
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 228
    iget v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    const/4 v9, 0x4

    iput v8, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    sub-int v8, v9, v8

    if-ne v1, v8, :cond_15

    .line 231
    :goto_3
    return p2

    .line 127
    .restart local v4       #l:J
    :pswitch_1
    const-wide/high16 v9, 0x3ff

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_7

    .line 129
    const/16 v9, 0x13

    if-le v3, v9, :cond_4

    .line 130
    const/16 v3, 0x13

    .line 131
    :cond_4
    const/4 v9, 0x3

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    .line 139
    :cond_5
    :goto_4
    const-wide/high16 v9, 0x3ff

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 141
    const/16 v9, 0x11

    if-le v3, v9, :cond_6

    .line 142
    const/16 v3, 0x11

    .line 143
    :cond_6
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 133
    :cond_7
    const-wide v9, 0x100002600L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_5

    .line 135
    const/4 v9, 0x3

    if-le v3, v9, :cond_8

    .line 136
    const/4 v3, 0x3

    .line 137
    :cond_8
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    .line 147
    :pswitch_2
    const-wide v9, 0x100002600L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 149
    const/4 v3, 0x3

    .line 150
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 153
    :pswitch_3
    const-wide/high16 v9, 0x3ff

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 155
    const/16 v9, 0x11

    if-le v3, v9, :cond_9

    .line 156
    const/16 v3, 0x11

    .line 157
    :cond_9
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 160
    :pswitch_4
    const-wide/high16 v9, 0x3ff

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 162
    const/16 v9, 0x13

    if-le v3, v9, :cond_a

    .line 163
    const/16 v3, 0x13

    .line 164
    :cond_a
    const/4 v9, 0x3

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_1

    .line 170
    .end local v4           #l:J
    :cond_b
    iget-char v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_13

    .line 172
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 175
    .restart local v4       #l:J
    :cond_c
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 207
    :cond_d
    :goto_5
    if-ne v1, v8, :cond_c

    goto/16 :goto_2

    .line 178
    :pswitch_5
    const-wide v9, 0x7fffffe07fffffeL

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_f

    .line 180
    const/16 v9, 0x13

    if-le v3, v9, :cond_e

    .line 181
    const/16 v3, 0x13

    .line 182
    :cond_e
    const/4 v9, 0x3

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    .line 184
    :cond_f
    const-wide v9, 0x7fffffe07fffffeL

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_d

    .line 186
    const/16 v9, 0x12

    if-le v3, v9, :cond_10

    .line 187
    const/16 v3, 0x12

    .line 188
    :cond_10
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_5

    .line 192
    :pswitch_6
    const-wide v9, 0x7fffffe07fffffeL

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_d

    .line 194
    const/16 v9, 0x12

    if-le v3, v9, :cond_11

    .line 195
    const/16 v3, 0x12

    .line 196
    :cond_11
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_5

    .line 199
    :pswitch_7
    const-wide v9, 0x7fffffe07fffffeL

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_d

    .line 201
    const/16 v9, 0x13

    if-le v3, v9, :cond_12

    .line 202
    const/16 v3, 0x13

    .line 203
    :cond_12
    const/4 v9, 0x3

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_5

    .line 211
    .end local v4           #l:J
    :cond_13
    iget-char v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 212
    .local v2, i2:I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 215
    .local v6, l2:J
    :cond_14
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    .line 219
    if-ne v1, v8, :cond_14

    goto/16 :goto_2

    .line 230
    .end local v2           #i2:I
    .end local v6           #l2:J
    :cond_15
    :try_start_0
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 231
    :catch_0
    move-exception v9

    move-object v0, v9

    .local v0, e:Ljava/io/IOException;
    goto/16 :goto_3

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_1
    .end packed-switch

    .line 175
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_6
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private final jjMoveNfa_1(II)I
    .locals 13
    .parameter "startState"
    .parameter "curPos"

    .prologue
    .line 272
    const/4 v8, 0x0

    .line 273
    .local v8, startsAt:I
    const/4 v9, 0x3

    iput v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    .line 274
    const/4 v1, 0x1

    .line 275
    .local v1, i:I
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 276
    const v3, 0x7fffffff

    .line 279
    .local v3, kind:I
    :goto_0
    iget v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 280
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->ReInitRounds()V

    .line 281
    :cond_0
    iget-char v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_4

    .line 283
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 286
    .local v4, l:J
    :cond_1
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 298
    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    .line 345
    .end local v4           #l:J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 347
    iput v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 348
    iput p2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedPos:I

    .line 349
    const v3, 0x7fffffff

    .line 351
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 352
    iget v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    const/4 v9, 0x3

    iput v8, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    sub-int v8, v9, v8

    if-ne v1, v8, :cond_b

    .line 355
    :goto_3
    return p2

    .line 289
    .restart local v4       #l:J
    :pswitch_0
    const/16 v9, 0x8

    if-le v3, v9, :cond_2

    .line 290
    const/16 v3, 0x8

    goto :goto_1

    .line 293
    :pswitch_1
    const/4 v9, 0x6

    if-le v3, v9, :cond_2

    .line 294
    const/4 v3, 0x6

    goto :goto_1

    .line 300
    .end local v4           #l:J
    :cond_4
    iget-char v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_8

    .line 302
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 305
    .restart local v4       #l:J
    :cond_5
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 323
    :cond_6
    :goto_4
    if-ne v1, v8, :cond_5

    goto :goto_2

    .line 308
    :pswitch_2
    const/16 v9, 0x8

    if-le v3, v9, :cond_7

    .line 309
    const/16 v3, 0x8

    .line 310
    :cond_7
    iget-char v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_6

    .line 311
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_4

    .line 314
    :pswitch_3
    const/4 v9, 0x6

    if-le v3, v9, :cond_6

    .line 315
    const/4 v3, 0x6

    goto :goto_4

    .line 318
    :pswitch_4
    const/16 v9, 0x8

    if-le v3, v9, :cond_6

    .line 319
    const/16 v3, 0x8

    goto :goto_4

    .line 327
    .end local v4           #l:J
    :cond_8
    iget-char v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 328
    .local v2, i2:I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 331
    .local v6, l2:J
    :cond_9
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    .line 343
    :cond_a
    :goto_5
    if-ne v1, v8, :cond_9

    goto :goto_2

    .line 334
    :pswitch_5
    sget-object v9, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0x8

    if-le v3, v9, :cond_a

    .line 335
    const/16 v3, 0x8

    goto :goto_5

    .line 338
    :pswitch_6
    sget-object v9, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/4 v9, 0x6

    if-le v3, v9, :cond_a

    .line 339
    const/4 v3, 0x6

    goto :goto_5

    .line 354
    .end local v2           #i2:I
    .end local v6           #l2:J
    :cond_b
    :try_start_0
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 355
    :catch_0
    move-exception v9

    move-object v0, v9

    .local v0, e:Ljava/io/IOException;
    goto/16 :goto_3

    .line 286
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 305
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 331
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private final jjMoveNfa_2(II)I
    .locals 13
    .parameter "startState"
    .parameter "curPos"

    .prologue
    .line 527
    const/4 v8, 0x0

    .line 528
    .local v8, startsAt:I
    const/4 v9, 0x3

    iput v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    .line 529
    const/4 v1, 0x1

    .line 530
    .local v1, i:I
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 531
    const v3, 0x7fffffff

    .line 534
    .local v3, kind:I
    :goto_0
    iget v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 535
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->ReInitRounds()V

    .line 536
    :cond_0
    iget-char v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_4

    .line 538
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 541
    .local v4, l:J
    :cond_1
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 553
    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    .line 600
    .end local v4           #l:J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 602
    iput v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 603
    iput p2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedPos:I

    .line 604
    const v3, 0x7fffffff

    .line 606
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 607
    iget v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    const/4 v9, 0x3

    iput v8, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    sub-int v8, v9, v8

    if-ne v1, v8, :cond_b

    .line 610
    :goto_3
    return p2

    .line 544
    .restart local v4       #l:J
    :pswitch_0
    const/16 v9, 0xc

    if-le v3, v9, :cond_2

    .line 545
    const/16 v3, 0xc

    goto :goto_1

    .line 548
    :pswitch_1
    const/16 v9, 0x9

    if-le v3, v9, :cond_2

    .line 549
    const/16 v3, 0x9

    goto :goto_1

    .line 555
    .end local v4           #l:J
    :cond_4
    iget-char v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_8

    .line 557
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 560
    .restart local v4       #l:J
    :cond_5
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 578
    :cond_6
    :goto_4
    if-ne v1, v8, :cond_5

    goto :goto_2

    .line 563
    :pswitch_2
    const/16 v9, 0xc

    if-le v3, v9, :cond_7

    .line 564
    const/16 v3, 0xc

    .line 565
    :cond_7
    iget-char v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_6

    .line 566
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_4

    .line 569
    :pswitch_3
    const/16 v9, 0x9

    if-le v3, v9, :cond_6

    .line 570
    const/16 v3, 0x9

    goto :goto_4

    .line 573
    :pswitch_4
    const/16 v9, 0xc

    if-le v3, v9, :cond_6

    .line 574
    const/16 v3, 0xc

    goto :goto_4

    .line 582
    .end local v4           #l:J
    :cond_8
    iget-char v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 583
    .local v2, i2:I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 586
    .local v6, l2:J
    :cond_9
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    .line 598
    :cond_a
    :goto_5
    if-ne v1, v8, :cond_9

    goto :goto_2

    .line 589
    :pswitch_5
    sget-object v9, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0xc

    if-le v3, v9, :cond_a

    .line 590
    const/16 v3, 0xc

    goto :goto_5

    .line 593
    :pswitch_6
    sget-object v9, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    const/16 v9, 0x9

    if-le v3, v9, :cond_a

    .line 594
    const/16 v3, 0x9

    goto :goto_5

    .line 609
    .end local v2           #i2:I
    .end local v6           #l2:J
    :cond_b
    :try_start_0
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 610
    :catch_0
    move-exception v9

    move-object v0, v9

    .local v0, e:Ljava/io/IOException;
    goto/16 :goto_3

    .line 541
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 560
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 586
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private final jjMoveNfa_3(II)I
    .locals 13
    .parameter "startState"
    .parameter "curPos"

    .prologue
    .line 391
    const/4 v8, 0x0

    .line 392
    .local v8, startsAt:I
    const/4 v9, 0x3

    iput v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    .line 393
    const/4 v1, 0x1

    .line 394
    .local v1, i:I
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjstateSet:[I

    const/4 v10, 0x0

    aput p1, v9, v10

    .line 395
    const v3, 0x7fffffff

    .line 398
    .local v3, kind:I
    :goto_0
    iget v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjround:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjround:I

    const v10, 0x7fffffff

    if-ne v9, v10, :cond_0

    .line 399
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->ReInitRounds()V

    .line 400
    :cond_0
    iget-char v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_5

    .line 402
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    shl-long v4, v9, v11

    .line 405
    .local v4, l:J
    :cond_1
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_0

    .line 421
    :cond_2
    :goto_1
    if-ne v1, v8, :cond_1

    .line 479
    .end local v4           #l:J
    :goto_2
    const v9, 0x7fffffff

    if-eq v3, v9, :cond_3

    .line 481
    iput v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 482
    iput p2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedPos:I

    .line 483
    const v3, 0x7fffffff

    .line 485
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 486
    iget v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    const/4 v9, 0x3

    iput v8, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    sub-int v8, v9, v8

    if-ne v1, v8, :cond_f

    .line 489
    :goto_3
    return p2

    .line 409
    .restart local v4       #l:J
    :pswitch_0
    const-wide v9, -0x400000001L

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_2

    .line 411
    const/16 v9, 0xf

    if-le v3, v9, :cond_4

    .line 412
    const/16 v3, 0xf

    .line 413
    :cond_4
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    .line 416
    :pswitch_1
    const/16 v9, 0xe

    if-le v3, v9, :cond_2

    .line 417
    const/16 v3, 0xe

    goto :goto_1

    .line 423
    .end local v4           #l:J
    :cond_5
    iget-char v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    const/16 v10, 0x80

    if-ge v9, v10, :cond_b

    .line 425
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v4, v9, v11

    .line 428
    .restart local v4       #l:J
    :cond_6
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_1

    .line 453
    :cond_7
    :goto_4
    if-ne v1, v8, :cond_6

    goto :goto_2

    .line 431
    :pswitch_2
    const-wide/32 v9, -0x10000001

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_9

    .line 433
    const/16 v9, 0xf

    if-le v3, v9, :cond_8

    .line 434
    const/16 v3, 0xf

    .line 435
    :cond_8
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    .line 437
    :cond_9
    iget-char v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    const/16 v10, 0x5c

    if-ne v9, v10, :cond_7

    .line 438
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjstateSet:[I

    iget v10, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    const/4 v11, 0x1

    aput v11, v9, v10

    goto :goto_4

    .line 441
    :pswitch_3
    const/16 v9, 0xe

    if-le v3, v9, :cond_7

    .line 442
    const/16 v3, 0xe

    goto :goto_4

    .line 445
    :pswitch_4
    const-wide/32 v9, -0x10000001

    and-long/2addr v9, v4

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_7

    .line 447
    const/16 v9, 0xf

    if-le v3, v9, :cond_a

    .line 448
    const/16 v3, 0xf

    .line 449
    :cond_a
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_4

    .line 457
    .end local v4           #l:J
    :cond_b
    iget-char v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    and-int/lit16 v9, v9, 0xff

    shr-int/lit8 v2, v9, 0x6

    .line 458
    .local v2, i2:I
    const-wide/16 v9, 0x1

    iget-char v11, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    and-int/lit8 v11, v11, 0x3f

    shl-long v6, v9, v11

    .line 461
    .local v6, l2:J
    :cond_c
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_2

    .line 477
    :cond_d
    :goto_5
    if-ne v1, v8, :cond_c

    goto/16 :goto_2

    .line 465
    :pswitch_5
    sget-object v9, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_d

    .line 467
    const/16 v9, 0xf

    if-le v3, v9, :cond_e

    .line 468
    const/16 v3, 0xf

    .line 469
    :cond_e
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_5

    .line 472
    :pswitch_6
    sget-object v9, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjbitVec0:[J

    aget-wide v9, v9, v2

    and-long/2addr v9, v6

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_d

    const/16 v9, 0xe

    if-le v3, v9, :cond_d

    .line 473
    const/16 v3, 0xe

    goto :goto_5

    .line 488
    .end local v2           #i2:I
    .end local v6           #l2:J
    :cond_f
    :try_start_0
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 489
    :catch_0
    move-exception v9

    move-object v0, v9

    .local v0, e:Ljava/io/IOException;
    goto/16 :goto_3

    .line 405
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 428
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 461
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa0_0()I
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 61
    iget-char v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_0

    .line 74
    invoke-direct {p0, v2, v1}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    :goto_0
    return v0

    .line 64
    :sswitch_0
    const/16 v0, 0xd

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 66
    :sswitch_1
    invoke-direct {p0, v1, v2}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 68
    :sswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 70
    :sswitch_3
    const/4 v0, 0x2

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 72
    :sswitch_4
    const/16 v0, 0x14

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 61
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x28 -> :sswitch_1
        0x2c -> :sswitch_2
        0x2d -> :sswitch_3
        0x2e -> :sswitch_4
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa0_1()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 256
    iget-char v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    .line 263
    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    :goto_0
    return v0

    .line 259
    :pswitch_0
    const/4 v0, 0x7

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 261
    :pswitch_1
    const/4 v0, 0x5

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa0_2()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 514
    iget-char v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    .line 521
    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    :goto_0
    return v0

    .line 517
    :pswitch_0
    const/16 v0, 0xa

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 519
    :pswitch_1
    const/16 v0, 0xb

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 514
    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa0_3()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 380
    iget-char v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_0

    .line 385
    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    :goto_0
    return v0

    .line 383
    :pswitch_0
    const/16 v0, 0x10

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_0

    .line 380
    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_0
    .end packed-switch
.end method

.method private final jjStartNfaWithStates_0(III)I
    .locals 2
    .parameter "pos"
    .parameter "kind"
    .parameter "state"

    .prologue
    .line 53
    iput p2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 54
    iput p1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedPos:I

    .line 55
    :try_start_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjMoveNfa_0(II)I

    move-result v1

    :goto_0
    return v1

    .line 56
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/io/IOException;
    add-int/lit8 v1, p1, 0x1

    goto :goto_0
.end method

.method private final jjStartNfaWithStates_1(III)I
    .locals 2
    .parameter "pos"
    .parameter "kind"
    .parameter "state"

    .prologue
    .line 248
    iput p2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 249
    iput p1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedPos:I

    .line 250
    :try_start_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjMoveNfa_1(II)I

    move-result v1

    :goto_0
    return v1

    .line 251
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/io/IOException;
    add-int/lit8 v1, p1, 0x1

    goto :goto_0
.end method

.method private final jjStartNfaWithStates_2(III)I
    .locals 2
    .parameter "pos"
    .parameter "kind"
    .parameter "state"

    .prologue
    .line 506
    iput p2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 507
    iput p1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedPos:I

    .line 508
    :try_start_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjMoveNfa_2(II)I

    move-result v1

    :goto_0
    return v1

    .line 509
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/io/IOException;
    add-int/lit8 v1, p1, 0x1

    goto :goto_0
.end method

.method private final jjStartNfaWithStates_3(III)I
    .locals 2
    .parameter "pos"
    .parameter "kind"
    .parameter "state"

    .prologue
    .line 372
    iput p2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 373
    iput p1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedPos:I

    .line 374
    :try_start_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, p3, v1}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjMoveNfa_3(II)I

    move-result v1

    :goto_0
    return v1

    .line 375
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/io/IOException;
    add-int/lit8 v1, p1, 0x1

    goto :goto_0
.end method

.method private final jjStartNfa_0(IJ)I
    .locals 2
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_1(IJ)I
    .locals 2
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 244
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_2(IJ)I
    .locals 2
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 502
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjStopStringLiteralDfa_2(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_3(IJ)I
    .locals 2
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 368
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjStopStringLiteralDfa_3(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    return v0
.end method

.method private final jjStopAtPos(II)I
    .locals 1
    .parameter "pos"
    .parameter "kind"

    .prologue
    .line 47
    iput p2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 48
    iput p1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedPos:I

    .line 49
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_0(IJ)I
    .locals 1
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 35
    .line 38
    const/4 v0, -0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_1(IJ)I
    .locals 1
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 236
    .line 239
    const/4 v0, -0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_2(IJ)I
    .locals 1
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 494
    .line 497
    const/4 v0, -0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_3(IJ)I
    .locals 1
    .parameter "pos"
    .parameter "active0"

    .prologue
    .line 360
    .line 363
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method MoreLexicalActions()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 818
    iget v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjimageLen:I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->lengthOfMatch:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjimageLen:I

    .line 819
    iget v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_0

    .line 873
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 822
    :pswitch_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1

    .line 823
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 824
    :cond_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 825
    iput v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjimageLen:I

    .line 826
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 829
    :pswitch_2
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_2

    .line 830
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 831
    :cond_2
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 832
    iput v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjimageLen:I

    .line 833
    iput v4, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->commentNest:I

    goto :goto_0

    .line 836
    :pswitch_3
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_3

    .line 837
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 838
    :cond_3
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 839
    iput v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjimageLen:I

    .line 840
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 843
    :pswitch_4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_4

    .line 844
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 845
    :cond_4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 846
    iput v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjimageLen:I

    .line 847
    iget v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->commentNest:I

    goto/16 :goto_0

    .line 850
    :pswitch_5
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_5

    .line 851
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 852
    :cond_5
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 853
    iput v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjimageLen:I

    .line 854
    iget v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->commentNest:I

    sub-int/2addr v0, v4

    iput v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->commentNest:I

    iget v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->commentNest:I

    if-nez v0, :cond_0

    invoke-virtual {p0, v4}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->SwitchTo(I)V

    goto/16 :goto_0

    .line 857
    :pswitch_6
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_6

    .line 858
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 859
    :cond_6
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 860
    iput v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjimageLen:I

    .line 861
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 864
    :pswitch_7
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_7

    .line 865
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 866
    :cond_7
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 867
    iput v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjimageLen:I

    .line 868
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 819
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/language/SimpleCharStream;)V
    .locals 1
    .parameter "stream"

    .prologue
    .line 657
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    iput v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedPos:I

    .line 658
    iget v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->defaultLexState:I

    iput v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curLexState:I

    .line 659
    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    .line 660
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->ReInitRounds()V

    .line 661
    return-void
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/language/SimpleCharStream;I)V
    .locals 0
    .parameter "stream"
    .parameter "lexState"

    .prologue
    .line 671
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/language/SimpleCharStream;)V

    .line 672
    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->SwitchTo(I)V

    .line 673
    return-void
.end method

.method public SwitchTo(I)V
    .locals 3
    .parameter "lexState"

    .prologue
    .line 676
    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 677
    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/field/language/TokenMgrError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Ignoring invalid lexical state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". State unchanged."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/field/language/TokenMgrError;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 679
    :cond_1
    iput p1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curLexState:I

    .line 680
    return-void
.end method

.method TokenLexicalActions(Lorg/apache/james/mime4j/field/language/Token;)V
    .locals 4
    .parameter "matchedToken"

    .prologue
    .line 876
    iget v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_0

    .line 887
    :goto_0
    return-void

    .line 879
    :pswitch_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    .line 880
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 881
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 882
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/james/mime4j/field/language/Token;->image:Ljava/lang/String;

    goto :goto_0

    .line 876
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public getNextToken()Lorg/apache/james/mime4j/field/language/Token;
    .locals 14

    .prologue
    .line 705
    const/4 v13, 0x0

    .line 707
    .local v13, specialToken:Lorg/apache/james/mime4j/field/language/Token;
    const/4 v8, 0x0

    .line 714
    .local v8, curPos:I
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->BeginToken()C

    move-result v0

    iput-char v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    .line 724
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjimageLen:I

    .line 728
    :goto_1
    iget v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curLexState:I

    packed-switch v0, :pswitch_data_0

    .line 751
    :goto_2
    iget v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_8

    .line 753
    iget v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v0, v0, 0x1

    if-ge v0, v8, :cond_1

    .line 754
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    iget v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedPos:I

    sub-int v1, v8, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->backup(I)V

    .line 755
    :cond_1
    sget-object v0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjtoToken:[J

    iget v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v1, v1, 0x6

    aget-wide v6, v0, v1

    const-wide/16 v9, 0x1

    iget v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v9, v0

    and-long/2addr v6, v9

    const-wide/16 v9, 0x0

    cmp-long v0, v6, v9

    if-eqz v0, :cond_3

    .line 757
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/language/Token;

    move-result-object v11

    .line 758
    .local v11, matchedToken:Lorg/apache/james/mime4j/field/language/Token;
    iput-object v13, v11, Lorg/apache/james/mime4j/field/language/Token;->specialToken:Lorg/apache/james/mime4j/field/language/Token;

    .line 759
    invoke-virtual {p0, v11}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->TokenLexicalActions(Lorg/apache/james/mime4j/field/language/Token;)V

    .line 760
    sget-object v0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewLexState:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 761
    sget-object v0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewLexState:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curLexState:I

    :cond_2
    move-object v12, v11

    .line 762
    .end local v11           #matchedToken:Lorg/apache/james/mime4j/field/language/Token;
    .local v12, matchedToken:Lorg/apache/james/mime4j/field/language/Token;
    :goto_3
    return-object v12

    .line 716
    .end local v12           #matchedToken:Lorg/apache/james/mime4j/field/language/Token;
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 718
    .local v9, e:Ljava/io/IOException;
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 719
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/language/Token;

    move-result-object v11

    .line 720
    .restart local v11       #matchedToken:Lorg/apache/james/mime4j/field/language/Token;
    iput-object v13, v11, Lorg/apache/james/mime4j/field/language/Token;->specialToken:Lorg/apache/james/mime4j/field/language/Token;

    move-object v12, v11

    .line 721
    .end local v11           #matchedToken:Lorg/apache/james/mime4j/field/language/Token;
    .restart local v12       #matchedToken:Lorg/apache/james/mime4j/field/language/Token;
    goto :goto_3

    .line 731
    .end local v9           #e:Ljava/io/IOException;
    .end local v12           #matchedToken:Lorg/apache/james/mime4j/field/language/Token;
    :pswitch_0
    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 732
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedPos:I

    .line 733
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjMoveStringLiteralDfa0_0()I

    move-result v8

    .line 734
    goto :goto_2

    .line 736
    :pswitch_1
    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 737
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedPos:I

    .line 738
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjMoveStringLiteralDfa0_1()I

    move-result v8

    .line 739
    goto :goto_2

    .line 741
    :pswitch_2
    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 742
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedPos:I

    .line 743
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjMoveStringLiteralDfa0_2()I

    move-result v8

    .line 744
    goto :goto_2

    .line 746
    :pswitch_3
    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 747
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedPos:I

    .line 748
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjMoveStringLiteralDfa0_3()I

    move-result v8

    goto/16 :goto_2

    .line 764
    :cond_3
    sget-object v0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjtoSkip:[J

    iget v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v1, v1, 0x6

    aget-wide v6, v0, v1

    const-wide/16 v9, 0x1

    iget v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v9, v0

    and-long/2addr v6, v9

    const-wide/16 v9, 0x0

    cmp-long v0, v6, v9

    if-eqz v0, :cond_6

    .line 766
    sget-object v0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjtoSpecial:[J

    iget v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v1, v1, 0x6

    aget-wide v6, v0, v1

    const-wide/16 v9, 0x1

    iget v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v9, v0

    and-long/2addr v6, v9

    const-wide/16 v9, 0x0

    cmp-long v0, v6, v9

    if-eqz v0, :cond_4

    .line 768
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/language/Token;

    move-result-object v11

    .line 769
    .restart local v11       #matchedToken:Lorg/apache/james/mime4j/field/language/Token;
    if-nez v13, :cond_5

    .line 770
    move-object v13, v11

    .line 777
    .end local v11           #matchedToken:Lorg/apache/james/mime4j/field/language/Token;
    :cond_4
    :goto_4
    sget-object v0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewLexState:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 778
    sget-object v0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewLexState:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curLexState:I

    goto/16 :goto_0

    .line 773
    .restart local v11       #matchedToken:Lorg/apache/james/mime4j/field/language/Token;
    :cond_5
    iput-object v13, v11, Lorg/apache/james/mime4j/field/language/Token;->specialToken:Lorg/apache/james/mime4j/field/language/Token;

    .line 774
    iput-object v11, v13, Lorg/apache/james/mime4j/field/language/Token;->next:Lorg/apache/james/mime4j/field/language/Token;

    move-object v13, v11

    goto :goto_4

    .line 781
    .end local v11           #matchedToken:Lorg/apache/james/mime4j/field/language/Token;
    :cond_6
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->MoreLexicalActions()V

    .line 782
    sget-object v0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewLexState:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 783
    sget-object v0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjnewLexState:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curLexState:I

    .line 784
    :cond_7
    const/4 v8, 0x0

    .line 785
    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 787
    :try_start_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 790
    :catch_1
    move-exception v0

    .line 792
    :cond_8
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->getEndLine()I

    move-result v3

    .line 793
    .local v3, error_line:I
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->getEndColumn()I

    move-result v4

    .line 794
    .local v4, error_column:I
    const/4 v5, 0x0

    .line 795
    .local v5, error_after:Ljava/lang/String;
    const/4 v1, 0x0

    .line 796
    .local v1, EOFSeen:Z
    :try_start_2
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->readChar()C

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->backup(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 807
    :goto_5
    if-nez v1, :cond_9

    .line 808
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->backup(I)V

    .line 809
    const/4 v0, 0x1

    if-gt v8, v0, :cond_d

    const-string v0, ""

    move-object v5, v0

    .line 811
    :cond_9
    :goto_6
    new-instance v0, Lorg/apache/james/mime4j/field/language/TokenMgrError;

    iget v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curLexState:I

    iget-char v6, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/apache/james/mime4j/field/language/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v0

    .line 797
    :catch_2
    move-exception v0

    move-object v10, v0

    .line 798
    .local v10, e1:Ljava/io/IOException;
    const/4 v1, 0x1

    .line 799
    const/4 v0, 0x1

    if-gt v8, v0, :cond_b

    const-string v0, ""

    move-object v5, v0

    .line 800
    :goto_7
    iget-char v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    const/16 v2, 0xa

    if-eq v0, v2, :cond_a

    iget-char v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->curChar:C

    const/16 v2, 0xd

    if-ne v0, v2, :cond_c

    .line 801
    :cond_a
    add-int/lit8 v3, v3, 0x1

    .line 802
    const/4 v4, 0x0

    goto :goto_5

    .line 799
    :cond_b
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_7

    .line 805
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 809
    .end local v10           #e1:Ljava/io/IOException;
    :cond_d
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_6

    .line 728
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected jjFillToken()Lorg/apache/james/mime4j/field/language/Token;
    .locals 4

    .prologue
    .line 684
    iget v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    invoke-static {v2}, Lorg/apache/james/mime4j/field/language/Token;->newToken(I)Lorg/apache/james/mime4j/field/language/Token;

    move-result-object v1

    .line 685
    .local v1, t:Lorg/apache/james/mime4j/field/language/Token;
    iget v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    iput v2, v1, Lorg/apache/james/mime4j/field/language/Token;->kind:I

    .line 686
    sget-object v2, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v3, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->jjmatchedKind:I

    aget-object v0, v2, v3

    .line 687
    .local v0, im:Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, v1, Lorg/apache/james/mime4j/field/language/Token;->image:Ljava/lang/String;

    .line 688
    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->getBeginLine()I

    move-result v2

    iput v2, v1, Lorg/apache/james/mime4j/field/language/Token;->beginLine:I

    .line 689
    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->getBeginColumn()I

    move-result v2

    iput v2, v1, Lorg/apache/james/mime4j/field/language/Token;->beginColumn:I

    .line 690
    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->getEndLine()I

    move-result v2

    iput v2, v1, Lorg/apache/james/mime4j/field/language/Token;->endLine:I

    .line 691
    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/language/SimpleCharStream;->getEndColumn()I

    move-result v2

    iput v2, v1, Lorg/apache/james/mime4j/field/language/Token;->endColumn:I

    .line 692
    return-object v1

    :cond_0
    move-object v2, v0

    .line 687
    goto :goto_0
.end method

.method public setDebugStream(Ljava/io/PrintStream;)V
    .locals 0
    .parameter "ds"

    .prologue
    .line 32
    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/ContentLanguageParserTokenManager;->debugStream:Ljava/io/PrintStream;

    return-void
.end method
