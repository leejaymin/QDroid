.class public Lng/vace/android/highwayracing/util/TextUtil;
.super Ljava/lang/Object;
.source "TextUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLevelText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "level"

    .prologue
    .line 37
    const v0, 0x7f060041

    .line 39
    .local v0, levelText:I
    rem-int/lit8 v1, p1, 0xf

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 40
    const v0, 0x7f060041

    .line 71
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 41
    :cond_1
    rem-int/lit8 v1, p1, 0xf

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 42
    const v0, 0x7f060042

    goto :goto_0

    .line 43
    :cond_2
    rem-int/lit8 v1, p1, 0xf

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 44
    const v0, 0x7f060043

    goto :goto_0

    .line 45
    :cond_3
    rem-int/lit8 v1, p1, 0xf

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 46
    const v0, 0x7f060044

    goto :goto_0

    .line 47
    :cond_4
    rem-int/lit8 v1, p1, 0xf

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 48
    const v0, 0x7f060045

    goto :goto_0

    .line 49
    :cond_5
    rem-int/lit8 v1, p1, 0xf

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    .line 50
    const v0, 0x7f060046

    goto :goto_0

    .line 51
    :cond_6
    rem-int/lit8 v1, p1, 0xf

    const/4 v2, 0x7

    if-ne v1, v2, :cond_7

    .line 52
    const v0, 0x7f060047

    goto :goto_0

    .line 53
    :cond_7
    rem-int/lit8 v1, p1, 0xf

    const/16 v2, 0x8

    if-ne v1, v2, :cond_8

    .line 54
    const v0, 0x7f060048

    goto :goto_0

    .line 55
    :cond_8
    rem-int/lit8 v1, p1, 0xf

    const/16 v2, 0x9

    if-ne v1, v2, :cond_9

    .line 56
    const v0, 0x7f060049

    goto :goto_0

    .line 57
    :cond_9
    rem-int/lit8 v1, p1, 0xf

    const/16 v2, 0xa

    if-ne v1, v2, :cond_a

    .line 58
    const v0, 0x7f06004a

    goto :goto_0

    .line 59
    :cond_a
    rem-int/lit8 v1, p1, 0xf

    const/16 v2, 0xb

    if-ne v1, v2, :cond_b

    .line 60
    const v0, 0x7f06004b

    goto :goto_0

    .line 61
    :cond_b
    rem-int/lit8 v1, p1, 0xf

    const/16 v2, 0xc

    if-ne v1, v2, :cond_c

    .line 62
    const v0, 0x7f06004c

    goto :goto_0

    .line 63
    :cond_c
    rem-int/lit8 v1, p1, 0xf

    const/16 v2, 0xd

    if-ne v1, v2, :cond_d

    .line 64
    const v0, 0x7f06004d

    goto :goto_0

    .line 65
    :cond_d
    rem-int/lit8 v1, p1, 0xf

    const/16 v2, 0xe

    if-ne v1, v2, :cond_e

    .line 66
    const v0, 0x7f06004e

    goto :goto_0

    .line 67
    :cond_e
    rem-int/lit8 v1, p1, 0xf

    if-nez v1, :cond_0

    .line 68
    const v0, 0x7f06004f

    goto/16 :goto_0
.end method

.method public static getRankFromScore(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "score"

    .prologue
    .line 9
    const v0, 0x7f060024

    .line 11
    .local v0, rankResource:I
    if-ltz p1, :cond_0

    const v0, 0x7f060024

    .line 12
    :cond_0
    const/16 v1, 0xfa

    if-le p1, v1, :cond_1

    const v0, 0x7f060025

    .line 13
    :cond_1
    const/16 v1, 0x1f4

    if-le p1, v1, :cond_2

    const v0, 0x7f060026

    .line 14
    :cond_2
    const/16 v1, 0x2ee

    if-le p1, v1, :cond_3

    const v0, 0x7f060027

    .line 15
    :cond_3
    const/16 v1, 0x3e8

    if-le p1, v1, :cond_4

    const v0, 0x7f060028

    .line 16
    :cond_4
    const/16 v1, 0x7d0

    if-le p1, v1, :cond_5

    const v0, 0x7f060029

    .line 17
    :cond_5
    const/16 v1, 0xbb8

    if-le p1, v1, :cond_6

    const v0, 0x7f06002a

    .line 18
    :cond_6
    const/16 v1, 0xfa0

    if-le p1, v1, :cond_7

    const v0, 0x7f06002b

    .line 19
    :cond_7
    const/16 v1, 0x1388

    if-le p1, v1, :cond_8

    const v0, 0x7f06002c

    .line 20
    :cond_8
    const/16 v1, 0x1770

    if-le p1, v1, :cond_9

    const v0, 0x7f06002d

    .line 21
    :cond_9
    const/16 v1, 0x1b58

    if-le p1, v1, :cond_a

    const v0, 0x7f06002e

    .line 22
    :cond_a
    const/16 v1, 0x1f40

    if-le p1, v1, :cond_b

    const v0, 0x7f06002f

    .line 23
    :cond_b
    const/16 v1, 0x2328

    if-le p1, v1, :cond_c

    const v0, 0x7f060030

    .line 24
    :cond_c
    const/16 v1, 0x2710

    if-le p1, v1, :cond_d

    const v0, 0x7f060031

    .line 25
    :cond_d
    const/16 v1, 0x3a98

    if-le p1, v1, :cond_e

    const v0, 0x7f060032

    .line 26
    :cond_e
    const/16 v1, 0x4e20

    if-le p1, v1, :cond_f

    const v0, 0x7f060033

    .line 27
    :cond_f
    const/16 v1, 0x7530

    if-lt p1, v1, :cond_10

    const v0, 0x7f060034

    .line 28
    :cond_10
    const v1, 0x9c40

    if-lt p1, v1, :cond_11

    const v0, 0x7f060035

    .line 29
    :cond_11
    const v1, 0xc350

    if-lt p1, v1, :cond_12

    const v0, 0x7f060036

    .line 30
    :cond_12
    const v1, 0x124f8

    if-lt p1, v1, :cond_13

    const v0, 0x7f060037

    .line 31
    :cond_13
    const v1, 0x186a0

    if-lt p1, v1, :cond_14

    const v0, 0x7f060038

    .line 33
    :cond_14
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
