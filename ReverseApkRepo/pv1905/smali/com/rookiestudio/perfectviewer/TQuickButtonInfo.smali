.class public Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;
.super Ljava/lang/Object;
.source "TQuickButtonInfo.java"


# instance fields
.field public FunctionIndex:I

.field public FunctionName:Ljava/lang/String;

.field public ImageIndex:I

.field public Selected:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const v0, 0x7f020097

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->ImageIndex:I

    .line 5
    iput v1, p0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->FunctionIndex:I

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->FunctionName:Ljava/lang/String;

    .line 7
    iput-boolean v1, p0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->Selected:Z

    .line 9
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 2
    .parameter "FI"
    .parameter "II"
    .parameter "Name"

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const v0, 0x7f020097

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->ImageIndex:I

    .line 5
    iput v1, p0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->FunctionIndex:I

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->FunctionName:Ljava/lang/String;

    .line 7
    iput-boolean v1, p0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->Selected:Z

    .line 11
    iput p1, p0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->FunctionIndex:I

    .line 12
    iput p2, p0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->ImageIndex:I

    .line 13
    iput-object p3, p0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->FunctionName:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public static CreateQuickButtonInfo(I)Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;
    .locals 2
    .parameter "ButtonFunction"

    .prologue
    .line 18
    new-instance v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;

    invoke-direct {v0}, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;-><init>()V

    .line 19
    .local v0, aQuickButtonInfo:Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;
    iput p0, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->FunctionIndex:I

    .line 20
    sget-object v1, Lcom/rookiestudio/perfectviewer/Config;->FunctionDesc:[Ljava/lang/String;

    aget-object v1, v1, p0

    iput-object v1, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->FunctionName:Ljava/lang/String;

    .line 22
    packed-switch p0, :pswitch_data_0

    .line 180
    :goto_0
    :pswitch_0
    return-object v0

    .line 24
    :pswitch_1
    const v1, 0x7f02003f

    iput v1, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->ImageIndex:I

    goto :goto_0

    .line 27
    :pswitch_2
    const v1, 0x7f020041

    iput v1, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->ImageIndex:I

    goto :goto_0

    .line 30
    :pswitch_3
    const v1, 0x7f020042

    iput v1, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->ImageIndex:I

    goto :goto_0

    .line 33
    :pswitch_4
    const v1, 0x7f020044

    iput v1, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->ImageIndex:I

    goto :goto_0

    .line 44
    :pswitch_5
    const v1, 0x7f020043

    iput v1, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->ImageIndex:I

    goto :goto_0

    .line 47
    :pswitch_6
    const v1, 0x7f020045

    iput v1, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->ImageIndex:I

    goto :goto_0

    .line 50
    :pswitch_7
    const v1, 0x7f0200b9

    iput v1, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->ImageIndex:I

    goto :goto_0

    .line 53
    :pswitch_8
    const v1, 0x7f0200ba

    iput v1, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->ImageIndex:I

    goto :goto_0

    .line 56
    :pswitch_9
    const v1, 0x7f0200b8

    iput v1, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->ImageIndex:I

    goto :goto_0

    .line 59
    :pswitch_a
    const v1, 0x7f0200a1

    iput v1, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->ImageIndex:I

    goto :goto_0

    .line 62
    :pswitch_b
    const v1, 0x7f0200a3

    iput v1, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->ImageIndex:I

    goto :goto_0

    .line 65
    :pswitch_c
    const v1, 0x7f0200a2

    iput v1, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->ImageIndex:I

    goto :goto_0

    .line 76
    :pswitch_d
    const v1, 0x7f0200a0

    iput v1, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->ImageIndex:I

    goto :goto_0

    .line 79
    :pswitch_e
    const v1, 0x7f020096

    iput v1, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->ImageIndex:I

    goto :goto_0

    .line 82
    :pswitch_f
    const v1, 0x7f02009d

    iput v1, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->ImageIndex:I

    goto :goto_0

    .line 85
    :pswitch_10
    const v1, 0x7f020095

    iput v1, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->ImageIndex:I

    goto :goto_0

    .line 88
    :pswitch_11
    const v1, 0x7f0200b3

    iput v1, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->ImageIndex:I

    goto :goto_0

    .line 91
    :pswitch_12
    const v1, 0x7f0200a5

    iput v1, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->ImageIndex:I

    goto :goto_0

    .line 94
    :pswitch_13
    const v1, 0x7f020098

    iput v1, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->ImageIndex:I

    goto :goto_0

    .line 97
    :pswitch_14
    const v1, 0x7f02006b

    iput v1, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->ImageIndex:I

    goto :goto_0

    .line 112
    :pswitch_15
    const v1, 0x7f0200cf

    iput v1, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->ImageIndex:I

    goto :goto_0

    .line 115
    :pswitch_16
    const v1, 0x7f02004a

    iput v1, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->ImageIndex:I

    goto/16 :goto_0

    .line 118
    :pswitch_17
    const v1, 0x7f020016

    iput v1, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->ImageIndex:I

    goto/16 :goto_0

    .line 121
    :pswitch_18
    const v1, 0x7f020017

    iput v1, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->ImageIndex:I

    goto/16 :goto_0

    .line 126
    :pswitch_19
    const v1, 0x7f0200a9

    iput v1, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->ImageIndex:I

    goto/16 :goto_0

    .line 129
    :pswitch_1a
    const v1, 0x7f02007d

    iput v1, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->ImageIndex:I

    goto/16 :goto_0

    .line 132
    :pswitch_1b
    const v1, 0x7f0200b5

    iput v1, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->ImageIndex:I

    goto/16 :goto_0

    .line 135
    :pswitch_1c
    const v1, 0x7f02009b

    iput v1, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->ImageIndex:I

    goto/16 :goto_0

    .line 138
    :pswitch_1d
    const v1, 0x7f0200a6

    iput v1, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->ImageIndex:I

    goto/16 :goto_0

    .line 141
    :pswitch_1e
    const v1, 0x7f020010

    iput v1, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->ImageIndex:I

    goto/16 :goto_0

    .line 144
    :pswitch_1f
    const v1, 0x7f0200b4

    iput v1, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->ImageIndex:I

    goto/16 :goto_0

    .line 147
    :pswitch_20
    const v1, 0x7f02003b

    iput v1, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->ImageIndex:I

    goto/16 :goto_0

    .line 150
    :pswitch_21
    const v1, 0x7f02003c

    iput v1, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->ImageIndex:I

    goto/16 :goto_0

    .line 153
    :pswitch_22
    const v1, 0x7f0200a4

    iput v1, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->ImageIndex:I

    goto/16 :goto_0

    .line 156
    :pswitch_23
    const v1, 0x7f0200a8

    iput v1, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->ImageIndex:I

    goto/16 :goto_0

    .line 159
    :pswitch_24
    const v1, 0x7f020099

    iput v1, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->ImageIndex:I

    goto/16 :goto_0

    .line 162
    :pswitch_25
    const v1, 0x7f02009c

    iput v1, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->ImageIndex:I

    goto/16 :goto_0

    .line 165
    :pswitch_26
    const v1, 0x7f020066

    iput v1, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->ImageIndex:I

    goto/16 :goto_0

    .line 168
    :pswitch_27
    const v1, 0x7f020069

    iput v1, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->ImageIndex:I

    goto/16 :goto_0

    .line 171
    :pswitch_28
    const v1, 0x7f020067

    iput v1, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->ImageIndex:I

    goto/16 :goto_0

    .line 174
    :pswitch_29
    const v1, 0x7f02006a

    iput v1, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->ImageIndex:I

    goto/16 :goto_0

    .line 177
    :pswitch_2a
    const v1, 0x7f020068

    iput v1, v0, Lcom/rookiestudio/perfectviewer/TQuickButtonInfo;->ImageIndex:I

    goto/16 :goto_0

    .line 22
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_10
        :pswitch_11
        :pswitch_e
        :pswitch_f
        :pswitch_12
        :pswitch_13
        :pswitch_9
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_0
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_1f
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
    .end packed-switch
.end method
