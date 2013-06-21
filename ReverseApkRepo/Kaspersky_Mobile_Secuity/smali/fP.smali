.class public final LfP;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 1
    .parameter

    .prologue
    .line 8
    const/4 v0, 0x0

    .line 9
    packed-switch p0, :pswitch_data_0

    .line 22
    :goto_0
    return v0

    .line 13
    :pswitch_0
    const v0, 0x7f0801e3

    .line 15
    goto :goto_0

    .line 20
    :pswitch_1
    const v0, 0x7f0801e1

    goto :goto_0

    .line 9
    nop

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static b(I)I
    .locals 1
    .parameter

    .prologue
    .line 33
    const/4 v0, 0x0

    .line 34
    sparse-switch p0, :sswitch_data_0

    .line 144
    :goto_0
    return v0

    .line 38
    :sswitch_0
    const v0, 0x7f0801e4

    .line 40
    goto :goto_0

    .line 45
    :sswitch_1
    const v0, 0x7f0801e2

    .line 47
    goto :goto_0

    .line 51
    :sswitch_2
    const v0, 0x7f0802ae

    .line 53
    goto :goto_0

    .line 58
    :sswitch_3
    const v0, 0x7f0802b0

    .line 60
    goto :goto_0

    .line 64
    :sswitch_4
    const v0, 0x7f0802b2

    .line 66
    goto :goto_0

    .line 70
    :sswitch_5
    const v0, 0x7f0802ab

    .line 72
    goto :goto_0

    .line 76
    :sswitch_6
    const v0, 0x7f0802af

    .line 78
    goto :goto_0

    .line 82
    :sswitch_7
    const v0, 0x7f0802b1

    .line 84
    goto :goto_0

    .line 88
    :sswitch_8
    const v0, 0x7f0802ad

    .line 90
    goto :goto_0

    .line 94
    :sswitch_9
    const v0, 0x7f0802ac

    .line 96
    goto :goto_0

    .line 100
    :sswitch_a
    const v0, 0x7f0802b6

    .line 102
    goto :goto_0

    .line 106
    :sswitch_b
    const v0, 0x7f0802b3

    .line 108
    goto :goto_0

    .line 112
    :sswitch_c
    const v0, 0x7f0802b4

    .line 114
    goto :goto_0

    .line 118
    :sswitch_d
    const v0, 0x7f0802b5

    .line 120
    goto :goto_0

    .line 124
    :sswitch_e
    const v0, 0x7f0802b7

    .line 126
    goto :goto_0

    .line 130
    :sswitch_f
    const v0, 0x7f0802b8

    .line 132
    goto :goto_0

    .line 136
    :sswitch_10
    const v0, 0x7f0802b9

    .line 138
    goto :goto_0

    .line 142
    :sswitch_11
    const v0, 0x7f0802aa

    goto :goto_0

    .line 34
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_7
        0x6 -> :sswitch_a
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0x9 -> :sswitch_e
        0xa -> :sswitch_f
        0xd -> :sswitch_b
        0xe -> :sswitch_d
        0x2a -> :sswitch_0
        0x2b -> :sswitch_1
        0x35 -> :sswitch_11
        0x36 -> :sswitch_c
        0x37 -> :sswitch_10
    .end sparse-switch
.end method
