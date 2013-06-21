.class public Lorg/hk/common/Common;
.super Ljava/lang/Object;
.source "Common.java"


# static fields
.field public static final _BLACK:I = 0x5

.field public static final _BLUE:I = 0x1

.field public static final _CONTENT_URI:Landroid/net/Uri; = null

.field private static final _DEBUG_LOG:Ljava/lang/String; = "StickyAppWidget"

.field public static final _GREEN:I = 0x3

.field public static final _GREY:I = 0x8

.field public static final _LARGE:I = 0x2

.field public static final _MEDIUM:I = 0x1

.field public static final _NAVY:I = 0x9

.field public static final _PINK:I = 0x0

.field public static final _PURPLE:I = 0x6

.field public static final _RED:I = 0x7

.field public static final _SMALL:I = 0x0

.field public static final _STICKY_CONTENTS:Ljava/lang/String; = "_STICKY_CONTENTS"

.field public static final _STICKY_SNIPPET_ACTION:Ljava/lang/String; = "_STICKY_SNIPPET_ACTION"

.field public static final _STICKY_TITLE:Ljava/lang/String; = "_STICKY_TITLE"

.field public static final _TRANSPARENT:I = 0xa

.field public static final _WHITE:I = 0x4

.field public static final _YELLOW:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "content://org.hk.sticky"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lorg/hk/common/Common;->_CONTENT_URI:Landroid/net/Uri;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LOG(Ljava/lang/String;)V
    .locals 1
    .parameter "mess"

    .prologue
    .line 33
    const-string v0, "StickyAppWidget"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void
.end method

.method public static getLayout(II)I
    .locals 5
    .parameter "color"
    .parameter "size"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v0, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 38
    if-ne p0, v2, :cond_0

    if-nez p1, :cond_0

    .line 39
    const v0, 0x7f030020

    .line 106
    :goto_0
    return v0

    .line 40
    :cond_0
    if-ne p0, v2, :cond_1

    if-ne p1, v1, :cond_1

    .line 41
    const v0, 0x7f03001f

    goto :goto_0

    .line 42
    :cond_1
    if-ne p0, v2, :cond_2

    if-ne p1, v2, :cond_2

    .line 43
    const v0, 0x7f03001e

    goto :goto_0

    .line 44
    :cond_2
    if-ne p0, v0, :cond_3

    if-nez p1, :cond_3

    .line 45
    const v0, 0x7f030008

    goto :goto_0

    .line 46
    :cond_3
    if-ne p0, v0, :cond_4

    if-ne p1, v1, :cond_4

    .line 47
    const v0, 0x7f030007

    goto :goto_0

    .line 48
    :cond_4
    if-ne p0, v0, :cond_5

    if-ne p1, v2, :cond_5

    .line 49
    const v0, 0x7f030006

    goto :goto_0

    .line 50
    :cond_5
    if-ne p0, v1, :cond_6

    if-nez p1, :cond_6

    .line 51
    const v0, 0x7f030005

    goto :goto_0

    .line 52
    :cond_6
    if-ne p0, v1, :cond_7

    if-ne p1, v1, :cond_7

    .line 53
    const v0, 0x7f030004

    goto :goto_0

    .line 54
    :cond_7
    if-ne p0, v1, :cond_8

    if-ne p1, v2, :cond_8

    .line 55
    const v0, 0x7f030003

    goto :goto_0

    .line 56
    :cond_8
    if-nez p0, :cond_9

    if-nez p1, :cond_9

    .line 57
    const v0, 0x7f030011

    goto :goto_0

    .line 58
    :cond_9
    if-nez p0, :cond_a

    if-ne p1, v1, :cond_a

    .line 59
    const v0, 0x7f030010

    goto :goto_0

    .line 60
    :cond_a
    if-nez p0, :cond_b

    if-ne p1, v2, :cond_b

    .line 61
    const v0, 0x7f03000f

    goto :goto_0

    .line 62
    :cond_b
    const/16 v0, 0x8

    if-ne p0, v0, :cond_c

    if-nez p1, :cond_c

    .line 63
    const v0, 0x7f03000b

    goto :goto_0

    .line 64
    :cond_c
    const/16 v0, 0x8

    if-ne p0, v0, :cond_d

    if-ne p1, v1, :cond_d

    .line 65
    const v0, 0x7f03000a

    goto :goto_0

    .line 66
    :cond_d
    const/16 v0, 0x8

    if-ne p0, v0, :cond_e

    if-ne p1, v2, :cond_e

    .line 67
    const v0, 0x7f030009

    goto :goto_0

    .line 68
    :cond_e
    if-ne p0, v4, :cond_f

    if-nez p1, :cond_f

    .line 69
    const v0, 0x7f030002

    goto :goto_0

    .line 70
    :cond_f
    if-ne p0, v4, :cond_10

    if-ne p1, v1, :cond_10

    .line 71
    const v0, 0x7f030001

    goto/16 :goto_0

    .line 72
    :cond_10
    if-ne p0, v4, :cond_11

    if-ne p1, v2, :cond_11

    .line 73
    const/high16 v0, 0x7f03

    goto/16 :goto_0

    .line 74
    :cond_11
    if-ne p0, v3, :cond_12

    if-nez p1, :cond_12

    .line 75
    const v0, 0x7f03001d

    goto/16 :goto_0

    .line 76
    :cond_12
    if-ne p0, v3, :cond_13

    if-ne p1, v1, :cond_13

    .line 77
    const v0, 0x7f03001c

    goto/16 :goto_0

    .line 78
    :cond_13
    if-ne p0, v3, :cond_14

    if-ne p1, v2, :cond_14

    .line 79
    const v0, 0x7f03001b

    goto/16 :goto_0

    .line 80
    :cond_14
    const/16 v0, 0x9

    if-ne p0, v0, :cond_15

    if-nez p1, :cond_15

    .line 81
    const v0, 0x7f03000e

    goto/16 :goto_0

    .line 82
    :cond_15
    const/16 v0, 0x9

    if-ne p0, v0, :cond_16

    if-ne p1, v1, :cond_16

    .line 83
    const v0, 0x7f03000d

    goto/16 :goto_0

    .line 84
    :cond_16
    const/16 v0, 0x9

    if-ne p0, v0, :cond_17

    if-ne p1, v2, :cond_17

    .line 85
    const v0, 0x7f03000c

    goto/16 :goto_0

    .line 86
    :cond_17
    const/4 v0, 0x7

    if-ne p0, v0, :cond_18

    if-nez p1, :cond_18

    .line 87
    const v0, 0x7f030017

    goto/16 :goto_0

    .line 88
    :cond_18
    const/4 v0, 0x7

    if-ne p0, v0, :cond_19

    if-ne p1, v1, :cond_19

    .line 89
    const v0, 0x7f030016

    goto/16 :goto_0

    .line 90
    :cond_19
    const/4 v0, 0x7

    if-ne p0, v0, :cond_1a

    if-ne p1, v2, :cond_1a

    .line 91
    const v0, 0x7f030015

    goto/16 :goto_0

    .line 92
    :cond_1a
    const/4 v0, 0x6

    if-ne p0, v0, :cond_1b

    if-nez p1, :cond_1b

    .line 93
    const v0, 0x7f030014

    goto/16 :goto_0

    .line 94
    :cond_1b
    const/4 v0, 0x6

    if-ne p0, v0, :cond_1c

    if-ne p1, v1, :cond_1c

    .line 95
    const v0, 0x7f030013

    goto/16 :goto_0

    .line 96
    :cond_1c
    const/4 v0, 0x6

    if-ne p0, v0, :cond_1d

    if-ne p1, v2, :cond_1d

    .line 97
    const v0, 0x7f030012

    goto/16 :goto_0

    .line 98
    :cond_1d
    const/16 v0, 0xa

    if-ne p0, v0, :cond_1e

    if-nez p1, :cond_1e

    .line 99
    const v0, 0x7f03001a

    goto/16 :goto_0

    .line 100
    :cond_1e
    const/16 v0, 0xa

    if-ne p0, v0, :cond_1f

    if-ne p1, v1, :cond_1f

    .line 101
    const v0, 0x7f030019

    goto/16 :goto_0

    .line 102
    :cond_1f
    const/16 v0, 0xa

    if-ne p0, v0, :cond_20

    if-ne p1, v2, :cond_20

    .line 103
    const v0, 0x7f030018

    goto/16 :goto_0

    .line 106
    :cond_20
    const v0, 0x7f030010

    goto/16 :goto_0
.end method

.method public static getTextColor(I)I
    .locals 2
    .parameter "color"

    .prologue
    const/high16 v1, -0x100

    .line 111
    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    move v0, v1

    .line 134
    :goto_0
    return v0

    .line 113
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 114
    const v0, -0xffff01

    goto :goto_0

    .line 115
    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 116
    const v0, -0xff0100

    goto :goto_0

    .line 117
    :cond_2
    const/16 v0, 0x8

    if-ne p0, v0, :cond_3

    .line 118
    const v0, -0x777778

    goto :goto_0

    .line 119
    :cond_3
    const/16 v0, 0x9

    if-ne p0, v0, :cond_4

    .line 120
    const-string v0, "#000080"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 121
    :cond_4
    if-nez p0, :cond_5

    .line 122
    const-string v0, "#FFC0CB"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 123
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 124
    const-string v0, "#800080"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 125
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 126
    const/high16 v0, -0x1

    goto :goto_0

    .line 127
    :cond_7
    const/4 v0, 0x4

    if-ne p0, v0, :cond_8

    .line 128
    const/4 v0, -0x1

    goto :goto_0

    .line 129
    :cond_8
    const/4 v0, 0x2

    if-ne p0, v0, :cond_9

    .line 130
    const/16 v0, -0x100

    goto :goto_0

    .line 131
    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    .line 132
    const/4 v0, 0x0

    goto :goto_0

    :cond_a
    move v0, v1

    .line 134
    goto :goto_0
.end method
