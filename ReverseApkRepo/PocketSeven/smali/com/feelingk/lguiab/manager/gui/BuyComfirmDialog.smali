.class public Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;
.super Landroid/app/Dialog;
.source "BuyComfirmDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private RES_VERT_FILE_PATH:Ljava/lang/String;

.field anyDensity:Z

.field buttonBgHeight:I

.field buttonBgWidth:I

.field buttonHeight:I

.field cancelBtn:Landroid/widget/Button;

.field contentHeight:I

.field contentPdTop:I

.field contentWidth:I

.field finalVer:Z

.field hd:Z

.field heightLineHeight:I

.field hvga:Z

.field infoLayoutHeight:I

.field infoMessage:Ljava/lang/String;

.field private itemName:Landroid/widget/LinearLayout;

.field private itemPeriod:Landroid/widget/LinearLayout;

.field lineParamsWidth:I

.field lineWidth:I

.field listHeight:I

.field listPdTop:I

.field listWidth:I

.field private mAppId:Ljava/lang/String;

.field private mBpData:Ljava/lang/String;

.field private mBpIP:Ljava/lang/String;

.field private mBpPort:I

.field private mBpUri:Ljava/lang/String;

.field private mClientListenerKey:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mPId:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mPname:Ljava/lang/String;

.field private mPrice:Ljava/lang/String;

.field private mProductKind:Ljava/lang/String;

.field private mRequest:I

.field name:Landroid/widget/TextView;

.field normalTextSize:I

.field opView:Z

.field price:Landroid/widget/TextView;

.field ptSize:F

.field purchaseBtn:Landroid/widget/Button;

.field rotation:I

.field tableHeight:I

.field tableLeftPd:I

.field tableRightPd:I

.field tableWidth:I

.field title:Landroid/widget/TextView;

.field titleHeight:I

.field titlePdB:I

.field titleTextSize:I

.field titleWidth:I

.field totalHeight:I

.field private totalMoney:Landroid/widget/LinearLayout;

.field totalWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/feelingk/lguiab/vo/ProductItemInfo;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "appId"
    .parameter "pID"
    .parameter "bpIp"
    .parameter "bpPort"
    .parameter "bpUri"
    .parameter "bpData"
    .parameter "result"
    .parameter "clientListenerKey"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 115
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 46
    const-string v0, "/lguIABres/"

    iput-object v0, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    .line 51
    iput-object v2, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mAppId:Ljava/lang/String;

    .line 54
    iput-object v2, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mPId:Ljava/lang/String;

    .line 57
    iput-object v2, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mBpIP:Ljava/lang/String;

    .line 63
    iput-object v2, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mBpUri:Ljava/lang/String;

    .line 66
    iput-object v2, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mBpData:Ljava/lang/String;

    .line 69
    iput-object v2, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mPname:Ljava/lang/String;

    .line 72
    iput-object v2, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mPrice:Ljava/lang/String;

    .line 75
    iput-object v2, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mProductKind:Ljava/lang/String;

    .line 78
    iput-object v2, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mClientListenerKey:Ljava/lang/String;

    .line 80
    iput-object v2, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mPassword:Ljava/lang/String;

    .line 81
    const v0, 0xd7115

    iput v0, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mRequest:I

    .line 86
    iput-boolean v1, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->hvga:Z

    .line 87
    iput-boolean v1, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->hd:Z

    .line 88
    iput-boolean v1, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->opView:Z

    .line 89
    iput-boolean v3, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->anyDensity:Z

    .line 90
    iput-object v2, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->infoMessage:Ljava/lang/String;

    .line 91
    iput-boolean v1, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->finalVer:Z

    .line 92
    iput v1, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->infoLayoutHeight:I

    .line 94
    const/16 v0, 0xa

    iput v0, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->rotation:I

    .line 95
    const/high16 v0, 0x4000

    iput v0, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->ptSize:F

    .line 98
    iput v1, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->totalHeight:I

    .line 99
    iput v1, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->titlePdB:I

    .line 100
    iput v1, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->normalTextSize:I

    .line 101
    iput v1, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->tableRightPd:I

    .line 102
    iput v1, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->heightLineHeight:I

    .line 103
    iput v1, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->listHeight:I

    .line 104
    iput v1, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->lineWidth:I

    .line 105
    iput v1, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->listPdTop:I

    .line 106
    iput v1, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->contentHeight:I

    .line 107
    iput v1, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->contentPdTop:I

    .line 108
    iput v1, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->buttonHeight:I

    .line 109
    iput v1, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->buttonBgWidth:I

    .line 117
    iput-object p1, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    .line 119
    iput-object p2, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mAppId:Ljava/lang/String;

    .line 120
    iput-object p3, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mPId:Ljava/lang/String;

    .line 121
    iput-object p4, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mBpIP:Ljava/lang/String;

    .line 122
    iput p5, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mBpPort:I

    .line 123
    iput-object p6, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mBpUri:Ljava/lang/String;

    .line 124
    iput-object p7, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mBpData:Ljava/lang/String;

    .line 125
    invoke-virtual {p8}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->getProductName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mPname:Ljava/lang/String;

    .line 126
    invoke-virtual {p8}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->getPrice()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mPrice:Ljava/lang/String;

    .line 127
    invoke-virtual {p8}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->getProductKind()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mProductKind:Ljava/lang/String;

    .line 128
    iput-object p9, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mClientListenerKey:Ljava/lang/String;

    .line 129
    invoke-virtual {p0, v3}, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->requestWindowFeature(I)Z

    .line 132
    invoke-virtual {p8}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->getProductType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IAT005"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    const-string v0, "* \ud574\ub2f9 \uc0c1\ud488 \uad6c\uc785 \uc2dc U+\uc571\ub9c8\ucf13\uc5d0\uc11c \ud310\ub9e4\uc911\uc778 \uc815\uc2dd\ud310 \uc5b4\ud50c\ub9ac\ucf00\uc774\uc158\uc73c\ub85c \uc804\ud658\ub428\uc744 \uc54c\ub824\ub4dc\ub9ac\uba70, \uace0\uac1d\ub2d8\uc758 \uad6c\ub9e4\ub0b4\uc5ed\uc5d0\uc11c \ud655\uc778\ud558\uc2e4 \uc218 \uc788\uc2b5\ub2c8\ub2e4."

    iput-object v0, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->infoMessage:Ljava/lang/String;

    .line 134
    iput-boolean v3, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->finalVer:Z

    .line 135
    const/16 v0, 0x68

    iput v0, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->infoLayoutHeight:I

    .line 143
    :goto_0
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mProductKind:Ljava/lang/String;

    const-string v1, "IAK001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    const-string v0, "\uc601\uad6c\uc131"

    iput-object v0, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mProductKind:Ljava/lang/String;

    .line 160
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->getScreenInfo()V

    .line 163
    iget v0, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->rotation:I

    packed-switch v0, :pswitch_data_0

    .line 194
    :goto_2
    return-void

    .line 138
    :cond_1
    const-string v0, "* \uacb0\uc81c\ud558\uc2e0 \uae08\uc561\uc740 \ud734\ub300\ud3f0 \uc694\uae08 \uace0\uc9c0\uc11c\uc5d0 \ud569\uc0b0 \uccad\uad6c\ub429\ub2c8\ub2e4."

    iput-object v0, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->infoMessage:Ljava/lang/String;

    .line 139
    const/16 v0, 0x54

    iput v0, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->infoLayoutHeight:I

    goto :goto_0

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mProductKind:Ljava/lang/String;

    const-string v1, "IAK002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 147
    const-string v0, "\uc18c\uba78\uc131"

    iput-object v0, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mProductKind:Ljava/lang/String;

    goto :goto_1

    .line 149
    :cond_3
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mProductKind:Ljava/lang/String;

    const-string v1, "IAK003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 150
    const-string v0, "\uc77c \uae30\uac04"

    iput-object v0, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mProductKind:Ljava/lang/String;

    goto :goto_1

    .line 152
    :cond_4
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mProductKind:Ljava/lang/String;

    const-string v1, "IAK004"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 153
    const-string v0, "\uc8fc \uae30\uac04"

    iput-object v0, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mProductKind:Ljava/lang/String;

    goto :goto_1

    .line 155
    :cond_5
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mProductKind:Ljava/lang/String;

    const-string v1, "IAK005"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const-string v0, "\uc6d4 \uae30\uac04"

    iput-object v0, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mProductKind:Ljava/lang/String;

    goto :goto_1

    .line 166
    :pswitch_0
    const-string v0, "Roation"

    const-string v1, "Portrait : 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-direct {p0}, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->viewPortrait()V

    goto :goto_2

    .line 173
    :pswitch_1
    const-string v0, "Roation"

    const-string v1, "Landscape : 90"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-direct {p0}, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->viewLandscape()V

    goto :goto_2

    .line 179
    :pswitch_2
    const-string v0, "Roation"

    const-string v1, "Portrait : 180"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-direct {p0}, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->viewPortrait()V

    goto :goto_2

    .line 185
    :pswitch_3
    const-string v0, "Roation"

    const-string v1, "Landscape : 270"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-direct {p0}, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->viewLandscape()V

    goto :goto_2

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private viewLandscape()V
    .locals 98

    .prologue
    .line 198
    const-string v92, "viewLandscape"

    const-string v93, "viewLandscape"

    invoke-static/range {v92 .. v93}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->hvga:Z

    move/from16 v92, v0

    if-eqz v92, :cond_8

    .line 200
    const/16 v92, 0x1b8

    move/from16 v0, v92

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->titleWidth:I

    .line 201
    const/16 v92, 0x2a

    move/from16 v0, v92

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->titleHeight:I

    .line 202
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->anyDensity:Z

    move/from16 v92, v0

    if-nez v92, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->opView:Z

    move/from16 v92, v0

    if-eqz v92, :cond_0

    .line 203
    const/16 v92, 0x1c1

    move/from16 v0, v92

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->titleWidth:I

    .line 204
    :cond_0
    const/16 v92, 0x10

    move/from16 v0, v92

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->titleTextSize:I

    .line 205
    const/16 v92, 0x118

    move/from16 v0, v92

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->tableWidth:I

    .line 206
    const/16 v92, 0xf1

    move/from16 v0, v92

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->lineWidth:I

    .line 207
    const/16 v92, 0xa

    move/from16 v0, v92

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->contentPdTop:I

    .line 208
    const/16 v92, 0x34

    move/from16 v0, v92

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->buttonHeight:I

    .line 209
    const/16 v92, 0xc

    move/from16 v0, v92

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->normalTextSize:I

    .line 210
    const/16 v92, 0x40

    move/from16 v0, v92

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->buttonBgHeight:I

    .line 212
    new-instance v48, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 214
    .local v48, ll:Landroid/widget/LinearLayout;
    new-instance v33, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 215
    .local v33, ff:Landroid/widget/FrameLayout;
    new-instance v92, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v93, 0x1cc

    const/16 v94, 0x11d

    invoke-direct/range {v92 .. v94}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v33

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    move-object/from16 v0, v48

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 219
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v92

    new-instance v93, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v94, v0

    invoke-static/range {v94 .. v94}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v94

    invoke-direct/range {v93 .. v94}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v94, "popup_bg.9.png"

    invoke-virtual/range {v93 .. v94}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v93

    invoke-virtual/range {v93 .. v93}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v36

    .line 220
    .local v36, is:Ljava/io/InputStream;
    const/16 v92, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v92

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v61

    .line 223
    .local v61, popup_bg:Landroid/graphics/drawable/Drawable;
    new-instance v34, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 224
    .local v34, frame:Landroid/widget/LinearLayout;
    new-instance v92, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v93, 0x1cc

    const/16 v94, 0x11d

    invoke-direct/range {v92 .. v94}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v34

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    move-object/from16 v0, v34

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 226
    invoke-virtual/range {v33 .. v34}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 228
    new-instance v5, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 230
    .local v5, blank:Landroid/widget/LinearLayout;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    new-instance v92, Landroid/view/ViewGroup$LayoutParams;

    const/16 v93, 0x1cc

    const/16 v94, 0x11d

    invoke-direct/range {v92 .. v94}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v92

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    .local v6, blankParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 235
    new-instance v74, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v74

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 236
    .local v74, root:Landroid/widget/LinearLayout;
    const/16 v92, 0x1

    move-object/from16 v0, v74

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 237
    const/16 v92, 0x1

    move-object/from16 v0, v74

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 238
    new-instance v92, Landroid/view/ViewGroup$LayoutParams;

    const/16 v93, 0x1cc

    const/16 v94, 0x11d

    invoke-direct/range {v92 .. v94}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v74

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    move-object/from16 v0, v74

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 242
    new-instance v88, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->titleWidth:I

    move/from16 v92, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->titleHeight:I

    move/from16 v93, v0

    move-object/from16 v0, v88

    move/from16 v1, v92

    move/from16 v2, v93

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 243
    .local v88, titleParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v92, 0xa

    const/16 v93, 0xa

    const/16 v94, 0xa

    const/16 v95, 0xa

    move-object/from16 v0, v88

    move/from16 v1, v92

    move/from16 v2, v93

    move/from16 v3, v94

    move/from16 v4, v95

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 244
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->anyDensity:Z

    move/from16 v92, v0

    if-nez v92, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->opView:Z

    move/from16 v92, v0

    if-eqz v92, :cond_1

    .line 245
    const/16 v92, 0xa

    const/16 v93, 0x5

    const/16 v94, 0xa

    const/16 v95, 0xa

    move-object/from16 v0, v88

    move/from16 v1, v92

    move/from16 v2, v93

    move/from16 v3, v94

    move/from16 v4, v95

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 247
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v92

    new-instance v93, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v94, v0

    invoke-static/range {v94 .. v94}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v94

    invoke-direct/range {v93 .. v94}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v94, "popup_title.png"

    invoke-virtual/range {v93 .. v94}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v93

    invoke-virtual/range {v93 .. v93}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v36

    .line 248
    const/16 v92, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v92

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v63

    .line 250
    .local v63, popup_title:Landroid/graphics/drawable/Drawable;
    new-instance v92, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v93, v0

    invoke-direct/range {v92 .. v93}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v92

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->title:Landroid/widget/TextView;

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->title:Landroid/widget/TextView;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->title:Landroid/widget/TextView;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->title:Landroid/widget/TextView;

    move-object/from16 v92, v0

    const-string v93, "\uacb0\uc81c\uc548\ub0b4"

    invoke-virtual/range {v92 .. v93}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->title:Landroid/widget/TextView;

    move-object/from16 v92, v0

    const-string v93, "#ffffff"

    invoke-static/range {v93 .. v93}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v93

    invoke-virtual/range {v92 .. v93}, Landroid/widget/TextView;->setTextColor(I)V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->title:Landroid/widget/TextView;

    move-object/from16 v92, v0

    const/16 v93, 0x11

    invoke-virtual/range {v92 .. v93}, Landroid/widget/TextView;->setGravity(I)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->title:Landroid/widget/TextView;

    move-object/from16 v92, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->titleTextSize:I

    move/from16 v93, v0

    move/from16 v0, v93

    int-to-float v0, v0

    move/from16 v93, v0

    invoke-virtual/range {v92 .. v93}, Landroid/widget/TextView;->setTextSize(F)V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->title:Landroid/widget/TextView;

    move-object/from16 v92, v0

    move-object/from16 v0, v74

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 259
    new-instance v12, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    invoke-direct {v12, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 261
    .local v12, center:Landroid/widget/LinearLayout;
    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v92, 0x197

    const/16 v93, 0x76

    move-object/from16 v0, v16

    move/from16 v1, v92

    move/from16 v2, v93

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 262
    .local v16, centerParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v92, 0x0

    const/16 v93, 0x5

    const/16 v94, 0x0

    const/16 v95, 0x5

    move-object/from16 v0, v16

    move/from16 v1, v92

    move/from16 v2, v93

    move/from16 v3, v94

    move/from16 v4, v95

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 263
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    const/16 v92, 0x11

    move/from16 v0, v92

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 265
    const/16 v92, 0x0

    move/from16 v0, v92

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 266
    move-object/from16 v0, v74

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 268
    new-instance v84, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v84

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 270
    .local v84, table:Landroid/widget/LinearLayout;
    new-instance v85, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v92, 0xf1

    const/16 v93, 0x76

    move-object/from16 v0, v85

    move/from16 v1, v92

    move/from16 v2, v93

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 271
    .local v85, tableParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v84 .. v85}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    const/16 v92, 0x1

    move-object/from16 v0, v84

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 273
    move-object/from16 v0, v84

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 275
    new-instance v43, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 277
    .local v43, line:Landroid/widget/LinearLayout;
    new-instance v47, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->lineWidth:I

    move/from16 v92, v0

    const/16 v93, 0x1

    move-object/from16 v0, v47

    move/from16 v1, v92

    move/from16 v2, v93

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 278
    .local v47, lineParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v43

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    const-string v92, "#858da6"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v43

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 280
    move-object/from16 v0, v84

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 284
    new-instance v41, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v92, 0xf1

    const/16 v93, 0x26

    move-object/from16 v0, v41

    move/from16 v1, v92

    move/from16 v2, v93

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 286
    .local v41, leftParams:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v58, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v58

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 287
    .local v58, nameRow:Landroid/widget/LinearLayout;
    move-object/from16 v0, v58

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    const/16 v92, 0x0

    move-object/from16 v0, v58

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 289
    move-object/from16 v0, v84

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 291
    new-instance v38, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 292
    .local v38, leftLine:Landroid/widget/LinearLayout;
    new-instance v92, Landroid/view/ViewGroup$LayoutParams;

    const/16 v93, 0x1

    const/16 v94, 0x26

    invoke-direct/range {v92 .. v94}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v38

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    const-string v92, "#858da6"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v38

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 294
    move-object/from16 v0, v58

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 296
    new-instance v57, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v57

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 297
    .local v57, name:Landroid/widget/TextView;
    new-instance v92, Landroid/view/ViewGroup$LayoutParams;

    const/16 v93, 0x64

    const/16 v94, 0x26

    invoke-direct/range {v92 .. v94}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v57

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    const/16 v92, 0x10

    move-object/from16 v0, v57

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 299
    const-string v92, "\uc0c1\ud488\uba85"

    move-object/from16 v0, v57

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    const-string v92, "#2c3b65"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v57

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 301
    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->normalTextSize:I

    move/from16 v92, v0

    move/from16 v0, v92

    int-to-float v0, v0

    move/from16 v92, v0

    move-object/from16 v0, v57

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 302
    const/16 v92, 0x14

    const/16 v93, 0x0

    const/16 v94, 0x6

    const/16 v95, 0x0

    move-object/from16 v0, v57

    move/from16 v1, v92

    move/from16 v2, v93

    move/from16 v3, v94

    move/from16 v4, v95

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 303
    move-object/from16 v0, v58

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 305
    new-instance v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    invoke-direct {v13, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 306
    .local v13, centerLine:Landroid/widget/LinearLayout;
    new-instance v92, Landroid/view/ViewGroup$LayoutParams;

    const/16 v93, 0x1

    const/16 v94, 0x26

    invoke-direct/range {v92 .. v94}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v92

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    const-string v92, "#d4d7dd"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move/from16 v0, v92

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 308
    move-object/from16 v0, v58

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 310
    new-instance v59, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v59

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 311
    .local v59, namelR:Landroid/widget/TextView;
    new-instance v92, Landroid/view/ViewGroup$LayoutParams;

    const/16 v93, 0x8a

    const/16 v94, 0x26

    invoke-direct/range {v92 .. v94}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v59

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    const-string v92, "#535353"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v59

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 313
    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->normalTextSize:I

    move/from16 v92, v0

    move/from16 v0, v92

    int-to-float v0, v0

    move/from16 v92, v0

    move-object/from16 v0, v59

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mPname:Ljava/lang/String;

    move-object/from16 v92, v0

    invoke-virtual/range {v92 .. v92}, Ljava/lang/String;->length()I

    move-result v92

    const/16 v93, 0xa

    move/from16 v0, v92

    move/from16 v1, v93

    if-lt v0, v1, :cond_7

    .line 316
    new-instance v92, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mPname:Ljava/lang/String;

    move-object/from16 v93, v0

    const/16 v94, 0x0

    const/16 v95, 0x5

    invoke-virtual/range {v93 .. v95}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v93

    invoke-static/range {v93 .. v93}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v93

    invoke-direct/range {v92 .. v93}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v93, "..."

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 317
    .local v29, convertPname:Ljava/lang/String;
    move-object/from16 v0, v59

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    .end local v29           #convertPname:Ljava/lang/String;
    :goto_0
    const/16 v92, 0x14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->contentPdTop:I

    move/from16 v93, v0

    const/16 v94, 0x6

    const/16 v95, 0x0

    move-object/from16 v0, v59

    move/from16 v1, v92

    move/from16 v2, v93

    move/from16 v3, v94

    move/from16 v4, v95

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 322
    invoke-virtual/range {v58 .. v59}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 324
    new-instance v70, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v70

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 325
    .local v70, rightLine:Landroid/widget/LinearLayout;
    new-instance v92, Landroid/view/ViewGroup$LayoutParams;

    const/16 v93, 0x1

    const/16 v94, 0x26

    invoke-direct/range {v92 .. v94}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v70

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    const-string v92, "#858da6"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v70

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 327
    move-object/from16 v0, v58

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 329
    new-instance v44, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 330
    .local v44, line2:Landroid/widget/LinearLayout;
    move-object/from16 v0, v44

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    const-string v92, "#d4d7dd"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v44

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 332
    move-object/from16 v0, v84

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 334
    new-instance v31, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 335
    .local v31, dateRow:Landroid/widget/LinearLayout;
    move-object/from16 v0, v31

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    const/16 v92, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 337
    move-object/from16 v0, v84

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 339
    new-instance v39, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 340
    .local v39, leftLine2:Landroid/widget/LinearLayout;
    new-instance v92, Landroid/view/ViewGroup$LayoutParams;

    const/16 v93, 0x1

    const/16 v94, 0x26

    invoke-direct/range {v92 .. v94}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v39

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    const-string v92, "#858da6"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v39

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 342
    move-object/from16 v0, v31

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 344
    new-instance v30, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 345
    .local v30, date:Landroid/widget/TextView;
    new-instance v92, Landroid/view/ViewGroup$LayoutParams;

    const/16 v93, 0x64

    const/16 v94, 0x26

    invoke-direct/range {v92 .. v94}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v30

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 346
    const/16 v92, 0x10

    move-object/from16 v0, v30

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 347
    const-string v92, "\uc0ac\uc6a9\uae30\uac04"

    move-object/from16 v0, v30

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    const-string v92, "#2c3b65"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v30

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 349
    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->normalTextSize:I

    move/from16 v92, v0

    move/from16 v0, v92

    int-to-float v0, v0

    move/from16 v92, v0

    move-object/from16 v0, v30

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 350
    const/16 v92, 0x14

    const/16 v93, 0x0

    const/16 v94, 0x6

    const/16 v95, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v92

    move/from16 v2, v93

    move/from16 v3, v94

    move/from16 v4, v95

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 351
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 353
    new-instance v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 354
    .local v14, centerLine2:Landroid/widget/LinearLayout;
    new-instance v92, Landroid/view/ViewGroup$LayoutParams;

    const/16 v93, 0x1

    const/16 v94, 0x26

    invoke-direct/range {v92 .. v94}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v92

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    const-string v92, "#d4d7dd"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move/from16 v0, v92

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 356
    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 359
    new-instance v32, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 360
    .local v32, datelR:Landroid/widget/TextView;
    new-instance v92, Landroid/view/ViewGroup$LayoutParams;

    const/16 v93, 0x8a

    const/16 v94, 0x26

    invoke-direct/range {v92 .. v94}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v32

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    const-string v92, "#535353"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v32

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mProductKind:Ljava/lang/String;

    move-object/from16 v92, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->normalTextSize:I

    move/from16 v92, v0

    move/from16 v0, v92

    int-to-float v0, v0

    move/from16 v92, v0

    move-object/from16 v0, v32

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 364
    const/16 v92, 0x14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->contentPdTop:I

    move/from16 v93, v0

    const/16 v94, 0x6

    const/16 v95, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v92

    move/from16 v2, v93

    move/from16 v3, v94

    move/from16 v4, v95

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 365
    invoke-virtual/range {v31 .. v32}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 367
    new-instance v71, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v71

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 368
    .local v71, rightLine2:Landroid/widget/LinearLayout;
    new-instance v92, Landroid/view/ViewGroup$LayoutParams;

    const/16 v93, 0x1

    const/16 v94, 0x26

    invoke-direct/range {v92 .. v94}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v71

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 369
    const-string v92, "#858da6"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v71

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 370
    move-object/from16 v0, v31

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 372
    new-instance v45, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 373
    .local v45, line3:Landroid/widget/LinearLayout;
    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    const-string v92, "#d4d7dd"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v45

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 375
    move-object/from16 v0, v84

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 377
    new-instance v66, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v66

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 378
    .local v66, priceRow:Landroid/widget/LinearLayout;
    move-object/from16 v0, v66

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    const/16 v92, 0x0

    move-object/from16 v0, v66

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 380
    move-object/from16 v0, v84

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 382
    new-instance v40, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 383
    .local v40, leftLine3:Landroid/widget/LinearLayout;
    new-instance v92, Landroid/view/ViewGroup$LayoutParams;

    const/16 v93, 0x1

    const/16 v94, 0x26

    invoke-direct/range {v92 .. v94}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v40

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    const-string v92, "#858da6"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v40

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 385
    move-object/from16 v0, v66

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 387
    new-instance v64, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v64

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 388
    .local v64, price:Landroid/widget/TextView;
    new-instance v92, Landroid/view/ViewGroup$LayoutParams;

    const/16 v93, 0x64

    const/16 v94, 0x26

    invoke-direct/range {v92 .. v94}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v64

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 389
    const/16 v92, 0x10

    move-object/from16 v0, v64

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 390
    const-string v92, "\uc0ac\uc6a9\uae30\uac04"

    move-object/from16 v0, v64

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    const-string v92, "#2c3b65"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v64

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 392
    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->normalTextSize:I

    move/from16 v92, v0

    move/from16 v0, v92

    int-to-float v0, v0

    move/from16 v92, v0

    move-object/from16 v0, v64

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 393
    const/16 v92, 0x14

    const/16 v93, 0x0

    const/16 v94, 0x6

    const/16 v95, 0x0

    move-object/from16 v0, v64

    move/from16 v1, v92

    move/from16 v2, v93

    move/from16 v3, v94

    move/from16 v4, v95

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 394
    move-object/from16 v0, v66

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 396
    new-instance v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    invoke-direct {v15, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 397
    .local v15, centerLine3:Landroid/widget/LinearLayout;
    new-instance v92, Landroid/view/ViewGroup$LayoutParams;

    const/16 v93, 0x1

    const/16 v94, 0x26

    invoke-direct/range {v92 .. v94}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v92

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 398
    const-string v92, "#d4d7dd"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move/from16 v0, v92

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 399
    move-object/from16 v0, v66

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 402
    new-instance v65, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v65

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 403
    .local v65, priceLl:Landroid/widget/LinearLayout;
    const/16 v92, 0x0

    move-object/from16 v0, v65

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 404
    new-instance v92, Landroid/view/ViewGroup$LayoutParams;

    const/16 v93, 0x8a

    const/16 v94, 0x26

    invoke-direct/range {v92 .. v94}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v65

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    const/16 v92, 0x14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->contentPdTop:I

    move/from16 v93, v0

    const/16 v94, 0x6

    const/16 v95, 0x0

    move-object/from16 v0, v65

    move/from16 v1, v92

    move/from16 v2, v93

    move/from16 v3, v94

    move/from16 v4, v95

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 406
    move-object/from16 v0, v66

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 408
    new-instance v67, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v67

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 409
    .local v67, pricelR:Landroid/widget/TextView;
    const-string v92, "#ff6a42"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v67

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mPrice:Ljava/lang/String;

    move-object/from16 v92, v0

    move-object/from16 v0, v67

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->normalTextSize:I

    move/from16 v92, v0

    move/from16 v0, v92

    int-to-float v0, v0

    move/from16 v92, v0

    move-object/from16 v0, v67

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 412
    move-object/from16 v0, v65

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 414
    new-instance v91, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    invoke-direct/range {v91 .. v92}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 415
    .local v91, won:Landroid/widget/TextView;
    new-instance v92, Landroid/view/ViewGroup$LayoutParams;

    const/16 v93, -0x2

    .line 416
    const/16 v94, -0x2

    invoke-direct/range {v92 .. v94}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 415
    invoke-virtual/range {v91 .. v92}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    const-string v92, " \uc6d0"

    invoke-virtual/range {v91 .. v92}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    const-string v92, "#535353"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    invoke-virtual/range {v91 .. v92}, Landroid/widget/TextView;->setTextColor(I)V

    .line 419
    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->normalTextSize:I

    move/from16 v92, v0

    move/from16 v0, v92

    int-to-float v0, v0

    move/from16 v92, v0

    invoke-virtual/range {v91 .. v92}, Landroid/widget/TextView;->setTextSize(F)V

    .line 420
    move-object/from16 v0, v65

    move-object/from16 v1, v91

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 422
    new-instance v72, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v72

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 423
    .local v72, rightLine3:Landroid/widget/LinearLayout;
    new-instance v92, Landroid/view/ViewGroup$LayoutParams;

    const/16 v93, 0x1

    const/16 v94, 0x26

    invoke-direct/range {v92 .. v94}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v72

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 424
    const-string v92, "#858da6"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v72

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 425
    move-object/from16 v0, v66

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 427
    new-instance v46, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 428
    .local v46, line4:Landroid/widget/LinearLayout;
    invoke-virtual/range {v46 .. v47}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 429
    const-string v92, "#858da6"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v46

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 430
    move-object/from16 v0, v84

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 433
    new-instance v81, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v81

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 435
    .local v81, sv:Landroid/widget/ScrollView;
    new-instance v83, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v92, 0x9c

    const/16 v93, 0x76

    move-object/from16 v0, v83

    move/from16 v1, v92

    move/from16 v2, v93

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 436
    .local v83, svParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v92, 0xa

    move/from16 v0, v92

    move-object/from16 v1, v83

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 437
    move-object/from16 v0, v81

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 438
    const/16 v92, 0x0

    move-object/from16 v0, v81

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setScrollbarFadingEnabled(Z)V

    .line 439
    move-object/from16 v0, v81

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 441
    new-instance v35, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 442
    .local v35, info:Landroid/widget/LinearLayout;
    const/16 v92, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 443
    move-object/from16 v0, v81

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 445
    new-instance v55, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v55

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 446
    .local v55, message:Landroid/widget/TextView;
    const-string v92, "#8f9bb3"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v55

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->infoMessage:Ljava/lang/String;

    move-object/from16 v92, v0

    move-object/from16 v0, v55

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->normalTextSize:I

    move/from16 v92, v0

    move/from16 v0, v92

    int-to-float v0, v0

    move/from16 v92, v0

    move-object/from16 v0, v55

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 449
    move-object/from16 v0, v35

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 451
    new-instance v73, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v73

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 452
    .local v73, rockInfo:Landroid/widget/TextView;
    const-string v92, "#8f9bb3"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v73

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 453
    const-string v92, "* \uc0c1\ud488 \uacb0\uc81c \uc2dc U+ \uc571\ub9c8\ucf13\uc744 \ud1b5\ud55c \ubcf8\uc778 \uc778\uc99d \uc11c\ube44\uc2a4\ub97c \uc774\uc6a9\ud558\uc2e4 \uc218 \uc788\uc2b5\ub2c8\ub2e4."

    move-object/from16 v0, v73

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->normalTextSize:I

    move/from16 v92, v0

    move/from16 v0, v92

    int-to-float v0, v0

    move/from16 v92, v0

    move-object/from16 v0, v73

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 455
    move-object/from16 v0, v35

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 458
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v92

    new-instance v93, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v94, v0

    invoke-static/range {v94 .. v94}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v94

    invoke-direct/range {v93 .. v94}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v94, "popup_btn_bg.png"

    invoke-virtual/range {v93 .. v94}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v93

    invoke-virtual/range {v93 .. v93}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v36

    .line 459
    const/16 v92, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v92

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v62

    .line 461
    .local v62, popup_btn_bg:Landroid/graphics/drawable/Drawable;
    new-instance v8, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 463
    .local v8, bottom:Landroid/widget/LinearLayout;
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v92, 0x1b7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->buttonBgHeight:I

    move/from16 v93, v0

    move/from16 v0, v92

    move/from16 v1, v93

    invoke-direct {v9, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 464
    .local v9, btnParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v92, 0x4

    const/16 v93, 0x0

    const/16 v94, 0x3

    const/16 v95, 0x3

    move/from16 v0, v92

    move/from16 v1, v93

    move/from16 v2, v94

    move/from16 v3, v95

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 465
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 466
    move-object/from16 v0, v62

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 467
    const/16 v92, 0x0

    move/from16 v0, v92

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 468
    const/16 v92, 0x11

    move/from16 v0, v92

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 469
    move-object/from16 v0, v74

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 471
    new-instance v60, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v60 .. v60}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 472
    .local v60, okDrawables:Landroid/graphics/drawable/StateListDrawable;
    new-instance v11, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v11}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 474
    .local v11, cancelDrawables:Landroid/graphics/drawable/StateListDrawable;
    const v77, 0x10100a0

    .line 475
    .local v77, stateChecked:I
    const v78, 0x101009c

    .line 476
    .local v78, stateFocused:I
    const v79, 0x10100a7

    .line 477
    .local v79, statePressed:I
    const v80, 0x101009d

    .line 479
    .local v80, stateWindowFocused:I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v92

    new-instance v93, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v94, v0

    invoke-static/range {v94 .. v94}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v94

    invoke-direct/range {v93 .. v94}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v94, "menu_btn.9.png"

    invoke-virtual/range {v93 .. v94}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v93

    invoke-virtual/range {v93 .. v93}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v36

    .line 480
    const/16 v92, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v92

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v52

    .line 481
    .local v52, menu_btn:Landroid/graphics/drawable/Drawable;
    const/16 v36, 0x0

    .line 482
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v92

    new-instance v93, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v94, v0

    invoke-static/range {v94 .. v94}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v94

    invoke-direct/range {v93 .. v94}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v94, "menu_btn_pressed.9.png"

    invoke-virtual/range {v93 .. v94}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v93

    invoke-virtual/range {v93 .. v93}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v36

    .line 483
    const/16 v92, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v92

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v54

    .line 484
    .local v54, menu_btn_pressed:Landroid/graphics/drawable/Drawable;
    const/16 v36, 0x0

    .line 485
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v92

    new-instance v93, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v94, v0

    invoke-static/range {v94 .. v94}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v94

    invoke-direct/range {v93 .. v94}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v94, "menu_btn_active.9.png"

    invoke-virtual/range {v93 .. v94}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v93

    invoke-virtual/range {v93 .. v93}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v36

    .line 486
    const/16 v92, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v92

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v53

    .line 487
    .local v53, menu_btn_active:Landroid/graphics/drawable/Drawable;
    const/16 v36, 0x0

    .line 489
    const/16 v92, 0x2

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aput v77, v92, v93

    const/16 v93, 0x1

    move/from16 v0, v80

    neg-int v0, v0

    move/from16 v94, v0

    aput v94, v92, v93

    move-object/from16 v0, v60

    move-object/from16 v1, v92

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 490
    const/16 v92, 0x2

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    const/16 v93, 0x0

    move/from16 v0, v77

    neg-int v0, v0

    move/from16 v94, v0

    aput v94, v92, v93

    const/16 v93, 0x1

    move/from16 v0, v80

    neg-int v0, v0

    move/from16 v94, v0

    aput v94, v92, v93

    move-object/from16 v0, v60

    move-object/from16 v1, v92

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 491
    const/16 v92, 0x2

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aput v77, v92, v93

    const/16 v93, 0x1

    aput v79, v92, v93

    move-object/from16 v0, v60

    move-object/from16 v1, v92

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 492
    const/16 v92, 0x2

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    const/16 v93, 0x0

    move/from16 v0, v77

    neg-int v0, v0

    move/from16 v94, v0

    aput v94, v92, v93

    const/16 v93, 0x1

    aput v79, v92, v93

    move-object/from16 v0, v60

    move-object/from16 v1, v92

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 493
    const/16 v92, 0x2

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aput v77, v92, v93

    const/16 v93, 0x1

    aput v78, v92, v93

    move-object/from16 v0, v60

    move-object/from16 v1, v92

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 494
    const/16 v92, 0x2

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    const/16 v93, 0x0

    move/from16 v0, v77

    neg-int v0, v0

    move/from16 v94, v0

    aput v94, v92, v93

    const/16 v93, 0x1

    aput v78, v92, v93

    move-object/from16 v0, v60

    move-object/from16 v1, v92

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 495
    const/16 v92, 0x1

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aput v77, v92, v93

    move-object/from16 v0, v60

    move-object/from16 v1, v92

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 496
    const/16 v92, 0x1

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    const/16 v93, 0x0

    move/from16 v0, v77

    neg-int v0, v0

    move/from16 v94, v0

    aput v94, v92, v93

    move-object/from16 v0, v60

    move-object/from16 v1, v92

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 497
    const/16 v92, 0x0

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v92

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 499
    new-instance v92, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v93, v0

    invoke-direct/range {v92 .. v93}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v92

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->purchaseBtn:Landroid/widget/Button;

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->purchaseBtn:Landroid/widget/Button;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 502
    new-instance v69, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v92, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->buttonHeight:I

    move/from16 v93, v0

    const/high16 v94, 0x3f80

    move-object/from16 v0, v69

    move/from16 v1, v92

    move/from16 v2, v93

    move/from16 v3, v94

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 503
    .local v69, purchaseBtnParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v92, 0xf

    const/16 v93, 0x6

    const/16 v94, 0xa

    const/16 v95, 0x6

    move-object/from16 v0, v69

    move/from16 v1, v92

    move/from16 v2, v93

    move/from16 v3, v94

    move/from16 v4, v95

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 504
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->anyDensity:Z

    move/from16 v92, v0

    if-nez v92, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->opView:Z

    move/from16 v92, v0

    if-eqz v92, :cond_2

    .line 505
    const/16 v92, 0xf

    const/16 v93, 0x10

    const/16 v94, 0xa

    const/16 v95, 0x6

    move-object/from16 v0, v69

    move/from16 v1, v92

    move/from16 v2, v93

    move/from16 v3, v94

    move/from16 v4, v95

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 506
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->purchaseBtn:Landroid/widget/Button;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->purchaseBtn:Landroid/widget/Button;

    move-object/from16 v92, v0

    const/16 v93, 0x11

    invoke-virtual/range {v92 .. v93}, Landroid/widget/Button;->setGravity(I)V

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->purchaseBtn:Landroid/widget/Button;

    move-object/from16 v92, v0

    const-string v93, "\uad6c\ub9e4"

    invoke-virtual/range {v92 .. v93}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->purchaseBtn:Landroid/widget/Button;

    move-object/from16 v92, v0

    const v93, 0x4195999a

    invoke-virtual/range {v92 .. v93}, Landroid/widget/Button;->setTextSize(F)V

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->purchaseBtn:Landroid/widget/Button;

    move-object/from16 v92, v0

    new-instance v93, Landroid/content/res/ColorStateList;

    .line 511
    const/16 v94, 0x2

    move/from16 v0, v94

    new-array v0, v0, [[I

    move-object/from16 v94, v0

    const/16 v95, 0x0

    .line 512
    const/16 v96, 0x1

    move/from16 v0, v96

    new-array v0, v0, [I

    move-object/from16 v96, v0

    const/16 v97, 0x0

    aput v79, v96, v97

    aput-object v96, v94, v95

    const/16 v95, 0x1

    .line 513
    const/16 v96, 0x0

    move/from16 v0, v96

    new-array v0, v0, [I

    move-object/from16 v96, v0

    aput-object v96, v94, v95

    .line 514
    const/16 v95, 0x2

    move/from16 v0, v95

    new-array v0, v0, [I

    move-object/from16 v95, v0

    const/16 v96, 0x0

    .line 515
    const-string v97, "#ffffff"

    invoke-static/range {v97 .. v97}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v97

    aput v97, v95, v96

    const/16 v96, 0x1

    .line 516
    const-string v97, "#2c3b65"

    invoke-static/range {v97 .. v97}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v97

    aput v97, v95, v96

    invoke-direct/range {v93 .. v95}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 510
    invoke-virtual/range {v92 .. v93}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->purchaseBtn:Landroid/widget/Button;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 521
    const/16 v92, 0x2

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aput v77, v92, v93

    const/16 v93, 0x1

    move/from16 v0, v80

    neg-int v0, v0

    move/from16 v94, v0

    aput v94, v92, v93

    move-object/from16 v0, v92

    move-object/from16 v1, v52

    invoke-virtual {v11, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 522
    const/16 v92, 0x2

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    const/16 v93, 0x0

    move/from16 v0, v77

    neg-int v0, v0

    move/from16 v94, v0

    aput v94, v92, v93

    const/16 v93, 0x1

    move/from16 v0, v80

    neg-int v0, v0

    move/from16 v94, v0

    aput v94, v92, v93

    move-object/from16 v0, v92

    move-object/from16 v1, v52

    invoke-virtual {v11, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 523
    const/16 v92, 0x2

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aput v77, v92, v93

    const/16 v93, 0x1

    aput v79, v92, v93

    move-object/from16 v0, v92

    move-object/from16 v1, v54

    invoke-virtual {v11, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 524
    const/16 v92, 0x2

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    const/16 v93, 0x0

    move/from16 v0, v77

    neg-int v0, v0

    move/from16 v94, v0

    aput v94, v92, v93

    const/16 v93, 0x1

    aput v79, v92, v93

    move-object/from16 v0, v92

    move-object/from16 v1, v54

    invoke-virtual {v11, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 525
    const/16 v92, 0x2

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aput v77, v92, v93

    const/16 v93, 0x1

    aput v78, v92, v93

    move-object/from16 v0, v92

    move-object/from16 v1, v53

    invoke-virtual {v11, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 526
    const/16 v92, 0x2

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    const/16 v93, 0x0

    move/from16 v0, v77

    neg-int v0, v0

    move/from16 v94, v0

    aput v94, v92, v93

    const/16 v93, 0x1

    aput v78, v92, v93

    move-object/from16 v0, v92

    move-object/from16 v1, v53

    invoke-virtual {v11, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 527
    const/16 v92, 0x1

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aput v77, v92, v93

    move-object/from16 v0, v92

    move-object/from16 v1, v54

    invoke-virtual {v11, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 528
    const/16 v92, 0x1

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    const/16 v93, 0x0

    move/from16 v0, v77

    neg-int v0, v0

    move/from16 v94, v0

    aput v94, v92, v93

    move-object/from16 v0, v92

    move-object/from16 v1, v52

    invoke-virtual {v11, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 529
    const/16 v92, 0x0

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    move-object/from16 v1, v54

    invoke-virtual {v11, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 531
    new-instance v92, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v93, v0

    invoke-direct/range {v92 .. v93}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v92

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->cancelBtn:Landroid/widget/Button;

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->cancelBtn:Landroid/widget/Button;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 534
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v92, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->buttonHeight:I

    move/from16 v93, v0

    const/high16 v94, 0x3f80

    move/from16 v0, v92

    move/from16 v1, v93

    move/from16 v2, v94

    invoke-direct {v10, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 535
    .local v10, cancelBtnParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v92, 0x0

    const/16 v93, 0x6

    const/16 v94, 0xf

    const/16 v95, 0x6

    move/from16 v0, v92

    move/from16 v1, v93

    move/from16 v2, v94

    move/from16 v3, v95

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 536
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->anyDensity:Z

    move/from16 v92, v0

    if-nez v92, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->opView:Z

    move/from16 v92, v0

    if-eqz v92, :cond_3

    .line 537
    const/16 v92, 0x0

    const/16 v93, 0x10

    const/16 v94, 0xf

    const/16 v95, 0x6

    move/from16 v0, v92

    move/from16 v1, v93

    move/from16 v2, v94

    move/from16 v3, v95

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 538
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->cancelBtn:Landroid/widget/Button;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->cancelBtn:Landroid/widget/Button;

    move-object/from16 v92, v0

    const/16 v93, 0x11

    invoke-virtual/range {v92 .. v93}, Landroid/widget/Button;->setGravity(I)V

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->cancelBtn:Landroid/widget/Button;

    move-object/from16 v92, v0

    const-string v93, "\ucde8\uc18c"

    invoke-virtual/range {v92 .. v93}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->cancelBtn:Landroid/widget/Button;

    move-object/from16 v92, v0

    const v93, 0x4195999a

    invoke-virtual/range {v92 .. v93}, Landroid/widget/Button;->setTextSize(F)V

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->cancelBtn:Landroid/widget/Button;

    move-object/from16 v92, v0

    new-instance v93, Landroid/content/res/ColorStateList;

    .line 543
    const/16 v94, 0x2

    move/from16 v0, v94

    new-array v0, v0, [[I

    move-object/from16 v94, v0

    const/16 v95, 0x0

    .line 544
    const/16 v96, 0x1

    move/from16 v0, v96

    new-array v0, v0, [I

    move-object/from16 v96, v0

    const/16 v97, 0x0

    aput v79, v96, v97

    aput-object v96, v94, v95

    const/16 v95, 0x1

    .line 545
    const/16 v96, 0x0

    move/from16 v0, v96

    new-array v0, v0, [I

    move-object/from16 v96, v0

    aput-object v96, v94, v95

    .line 546
    const/16 v95, 0x2

    move/from16 v0, v95

    new-array v0, v0, [I

    move-object/from16 v95, v0

    const/16 v96, 0x0

    .line 547
    const-string v97, "#ffffff"

    invoke-static/range {v97 .. v97}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v97

    aput v97, v95, v96

    const/16 v96, 0x1

    .line 548
    const-string v97, "#2c3b65"

    invoke-static/range {v97 .. v97}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v97

    aput v97, v95, v96

    invoke-direct/range {v93 .. v95}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 542
    invoke-virtual/range {v92 .. v93}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->cancelBtn:Landroid/widget/Button;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 553
    new-instance v50, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v50

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 555
    .local v50, logoView:Landroid/widget/LinearLayout;
    new-instance v51, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v92, 0x197

    const/16 v93, 0x17

    move-object/from16 v0, v51

    move/from16 v1, v92

    move/from16 v2, v93

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 557
    .local v51, logoViewParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->anyDensity:Z

    move/from16 v92, v0

    if-nez v92, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->opView:Z

    move/from16 v92, v0

    if-eqz v92, :cond_4

    .line 558
    const/16 v92, 0xa

    const/16 v93, 0xa

    const/16 v94, 0xa

    const/16 v95, 0x4

    move-object/from16 v0, v51

    move/from16 v1, v92

    move/from16 v2, v93

    move/from16 v3, v94

    move/from16 v4, v95

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 559
    :cond_4
    invoke-virtual/range {v50 .. v51}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 560
    const/16 v92, 0x0

    move-object/from16 v0, v50

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 561
    move-object/from16 v0, v74

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 563
    new-instance v37, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 564
    .local v37, leftBlank:Landroid/widget/LinearLayout;
    new-instance v92, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v93, 0x53

    const/16 v94, 0x1b

    const/high16 v95, 0x3f80

    invoke-direct/range {v92 .. v95}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v37

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 565
    move-object/from16 v0, v50

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 567
    new-instance v49, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 568
    .local v49, logo:Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v92

    new-instance v93, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v94, v0

    invoke-static/range {v94 .. v94}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v94

    invoke-direct/range {v93 .. v94}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v94, "lguplus_logo.png"

    invoke-virtual/range {v93 .. v94}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v93

    invoke-virtual/range {v93 .. v93}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v36

    .line 569
    const/16 v92, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v92

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v42

    .line 570
    .local v42, lguplusLogo:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v49

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 571
    new-instance v92, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v93, 0x6e

    const/16 v94, 0x1b

    const/high16 v95, 0x3f80

    invoke-direct/range {v92 .. v95}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v49

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 572
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->anyDensity:Z

    move/from16 v92, v0

    if-nez v92, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->opView:Z

    move/from16 v92, v0

    if-eqz v92, :cond_5

    .line 573
    new-instance v92, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v93, 0x6e

    const/16 v94, 0x16

    const/high16 v95, 0x3f80

    invoke-direct/range {v92 .. v95}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v49

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 574
    :cond_5
    move-object/from16 v0, v50

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 576
    new-instance v90, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v90

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 577
    .local v90, version:Landroid/widget/TextView;
    new-instance v92, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v93, 0x53

    const/16 v94, 0x1b

    const/high16 v95, 0x3f80

    invoke-direct/range {v92 .. v95}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v90

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 578
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->anyDensity:Z

    move/from16 v92, v0

    if-nez v92, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->opView:Z

    move/from16 v92, v0

    if-eqz v92, :cond_6

    .line 579
    new-instance v92, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v93, 0x53

    const/16 v94, 0x16

    const/high16 v95, 0x3f80

    invoke-direct/range {v92 .. v95}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v90

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 580
    :cond_6
    sget-object v92, Lcom/feelingk/lguiab/common/Defines;->SDK_VERSION_INFO:Ljava/lang/String;

    move-object/from16 v0, v90

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    const/16 v92, 0x0

    const/16 v93, 0x5

    const/16 v94, 0x0

    const/16 v95, 0x0

    move-object/from16 v0, v90

    move/from16 v1, v92

    move/from16 v2, v93

    move/from16 v3, v94

    move/from16 v4, v95

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 582
    const/16 v92, 0x5

    move-object/from16 v0, v90

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 583
    const v92, 0x4134cccd

    move-object/from16 v0, v90

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 584
    const-string v92, "#b8b8b8"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v90

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 585
    move-object/from16 v0, v50

    move-object/from16 v1, v90

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 588
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->setContentView(Landroid/view/View;)V

    .line 590
    const-string v92, "PurchaseDlg"

    invoke-static/range {v92 .. v92}, Lcom/feelingk/lguiab/LguIAPLib;->setDialogType(Ljava/lang/String;)V

    .line 1306
    .end local v6           #blankParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v12           #center:Landroid/widget/LinearLayout;
    .end local v13           #centerLine:Landroid/widget/LinearLayout;
    .end local v14           #centerLine2:Landroid/widget/LinearLayout;
    .end local v15           #centerLine3:Landroid/widget/LinearLayout;
    .end local v16           #centerParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v30           #date:Landroid/widget/TextView;
    .end local v31           #dateRow:Landroid/widget/LinearLayout;
    .end local v32           #datelR:Landroid/widget/TextView;
    .end local v35           #info:Landroid/widget/LinearLayout;
    .end local v39           #leftLine2:Landroid/widget/LinearLayout;
    .end local v40           #leftLine3:Landroid/widget/LinearLayout;
    .end local v41           #leftParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v44           #line2:Landroid/widget/LinearLayout;
    .end local v45           #line3:Landroid/widget/LinearLayout;
    .end local v46           #line4:Landroid/widget/LinearLayout;
    .end local v55           #message:Landroid/widget/TextView;
    .end local v59           #namelR:Landroid/widget/TextView;
    .end local v66           #priceRow:Landroid/widget/LinearLayout;
    .end local v67           #pricelR:Landroid/widget/TextView;
    .end local v71           #rightLine2:Landroid/widget/LinearLayout;
    .end local v72           #rightLine3:Landroid/widget/LinearLayout;
    .end local v85           #tableParams:Landroid/widget/LinearLayout$LayoutParams;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->purchaseBtn:Landroid/widget/Button;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->cancelBtn:Landroid/widget/Button;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1310
    return-void

    .line 320
    .end local v8           #bottom:Landroid/widget/LinearLayout;
    .end local v9           #btnParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v10           #cancelBtnParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v11           #cancelDrawables:Landroid/graphics/drawable/StateListDrawable;
    .end local v37           #leftBlank:Landroid/widget/LinearLayout;
    .end local v42           #lguplusLogo:Landroid/graphics/drawable/Drawable;
    .end local v49           #logo:Landroid/widget/ImageView;
    .end local v50           #logoView:Landroid/widget/LinearLayout;
    .end local v51           #logoViewParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v52           #menu_btn:Landroid/graphics/drawable/Drawable;
    .end local v53           #menu_btn_active:Landroid/graphics/drawable/Drawable;
    .end local v54           #menu_btn_pressed:Landroid/graphics/drawable/Drawable;
    .end local v60           #okDrawables:Landroid/graphics/drawable/StateListDrawable;
    .end local v62           #popup_btn_bg:Landroid/graphics/drawable/Drawable;
    .end local v64           #price:Landroid/widget/TextView;
    .end local v65           #priceLl:Landroid/widget/LinearLayout;
    .end local v69           #purchaseBtnParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v70           #rightLine:Landroid/widget/LinearLayout;
    .end local v73           #rockInfo:Landroid/widget/TextView;
    .end local v77           #stateChecked:I
    .end local v78           #stateFocused:I
    .end local v79           #statePressed:I
    .end local v80           #stateWindowFocused:I
    .end local v81           #sv:Landroid/widget/ScrollView;
    .end local v83           #svParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v90           #version:Landroid/widget/TextView;
    .end local v91           #won:Landroid/widget/TextView;
    .restart local v6       #blankParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v12       #center:Landroid/widget/LinearLayout;
    .restart local v13       #centerLine:Landroid/widget/LinearLayout;
    .restart local v16       #centerParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v41       #leftParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v59       #namelR:Landroid/widget/TextView;
    .restart local v85       #tableParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mPname:Ljava/lang/String;

    move-object/from16 v92, v0

    move-object/from16 v0, v59

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 593
    .end local v5           #blank:Landroid/widget/LinearLayout;
    .end local v6           #blankParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v12           #center:Landroid/widget/LinearLayout;
    .end local v13           #centerLine:Landroid/widget/LinearLayout;
    .end local v16           #centerParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v33           #ff:Landroid/widget/FrameLayout;
    .end local v34           #frame:Landroid/widget/LinearLayout;
    .end local v36           #is:Ljava/io/InputStream;
    .end local v38           #leftLine:Landroid/widget/LinearLayout;
    .end local v41           #leftParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v43           #line:Landroid/widget/LinearLayout;
    .end local v47           #lineParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v48           #ll:Landroid/widget/LinearLayout;
    .end local v57           #name:Landroid/widget/TextView;
    .end local v58           #nameRow:Landroid/widget/LinearLayout;
    .end local v59           #namelR:Landroid/widget/TextView;
    .end local v61           #popup_bg:Landroid/graphics/drawable/Drawable;
    .end local v63           #popup_title:Landroid/graphics/drawable/Drawable;
    .end local v74           #root:Landroid/widget/LinearLayout;
    .end local v84           #table:Landroid/widget/LinearLayout;
    .end local v85           #tableParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v88           #titleParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->hd:Z

    move/from16 v92, v0

    if-eqz v92, :cond_a

    .line 594
    new-instance v48, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 595
    .restart local v48       #ll:Landroid/widget/LinearLayout;
    const/16 v92, 0x11

    move-object/from16 v0, v48

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 597
    new-instance v33, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 598
    .restart local v33       #ff:Landroid/widget/FrameLayout;
    new-instance v92, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v93, 0x271

    const/16 v94, 0x1f4

    invoke-direct/range {v92 .. v94}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v33

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 599
    move-object/from16 v0, v48

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 601
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v92

    new-instance v93, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v94, v0

    invoke-static/range {v94 .. v94}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v94

    invoke-direct/range {v93 .. v94}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v94, "popup_bg.9.png"

    invoke-virtual/range {v93 .. v94}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v93

    invoke-virtual/range {v93 .. v93}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v36

    .line 602
    .restart local v36       #is:Ljava/io/InputStream;
    const/16 v92, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v92

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v61

    .line 605
    .restart local v61       #popup_bg:Landroid/graphics/drawable/Drawable;
    new-instance v34, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 606
    .restart local v34       #frame:Landroid/widget/LinearLayout;
    new-instance v92, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v93, 0x271

    const/16 v94, 0x1f4

    invoke-direct/range {v92 .. v94}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v34

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 607
    move-object/from16 v0, v34

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 608
    invoke-virtual/range {v33 .. v34}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 610
    new-instance v5, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 611
    .restart local v5       #blank:Landroid/widget/LinearLayout;
    new-instance v92, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v93, 0x271

    const/16 v94, 0x1f4

    invoke-direct/range {v92 .. v94}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v92

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 612
    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 614
    new-instance v74, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v74

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 615
    .restart local v74       #root:Landroid/widget/LinearLayout;
    const/16 v92, 0x1

    move-object/from16 v0, v74

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 617
    new-instance v92, Landroid/view/ViewGroup$LayoutParams;

    const/16 v93, 0x271

    const/16 v94, 0x1f4

    invoke-direct/range {v92 .. v94}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v74

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 618
    move-object/from16 v0, v74

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 621
    new-instance v88, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v92, 0x25d

    const/16 v93, 0x4b

    move-object/from16 v0, v88

    move/from16 v1, v92

    move/from16 v2, v93

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 622
    .restart local v88       #titleParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v92, 0xa

    const/16 v93, 0xa

    const/16 v94, 0xa

    const/16 v95, 0x0

    move-object/from16 v0, v88

    move/from16 v1, v92

    move/from16 v2, v93

    move/from16 v3, v94

    move/from16 v4, v95

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 624
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v92

    new-instance v93, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v94, v0

    invoke-static/range {v94 .. v94}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v94

    invoke-direct/range {v93 .. v94}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v94, "popup_title.png"

    invoke-virtual/range {v93 .. v94}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v93

    invoke-virtual/range {v93 .. v93}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v36

    .line 625
    const/16 v92, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v92

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v63

    .line 627
    .restart local v63       #popup_title:Landroid/graphics/drawable/Drawable;
    new-instance v87, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v87

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 628
    .local v87, title:Landroid/widget/TextView;
    invoke-virtual/range {v87 .. v88}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 629
    move-object/from16 v0, v87

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 630
    const-string v92, "\uacb0\uc81c\uc548\ub0b4"

    move-object/from16 v0, v87

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    const-string v92, "#ffffff"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v87

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 632
    const/16 v92, 0x11

    move-object/from16 v0, v87

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 633
    const/high16 v92, 0x4208

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->ptSize:F

    move/from16 v93, v0

    div-float v92, v92, v93

    move-object/from16 v0, v87

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 634
    move-object/from16 v0, v74

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 636
    new-instance v84, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v84

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 638
    .restart local v84       #table:Landroid/widget/LinearLayout;
    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v92, 0x23b

    const/16 v93, 0x7b

    move-object/from16 v0, v16

    move/from16 v1, v92

    move/from16 v2, v93

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 639
    .restart local v16       #centerParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v92, 0x18

    const/16 v93, 0xa

    const/16 v94, 0x1e

    const/16 v95, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v92

    move/from16 v2, v93

    move/from16 v3, v94

    move/from16 v4, v95

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 640
    move-object/from16 v0, v84

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 641
    const/16 v92, 0x11

    move-object/from16 v0, v84

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 642
    const/16 v92, 0x1

    move-object/from16 v0, v84

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 643
    move-object/from16 v0, v74

    move-object/from16 v1, v84

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 645
    new-instance v43, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 647
    .restart local v43       #line:Landroid/widget/LinearLayout;
    new-instance v47, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v92, 0x23b

    const/16 v93, 0x1

    move-object/from16 v0, v47

    move/from16 v1, v92

    move/from16 v2, v93

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 648
    .restart local v47       #lineParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v43

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 649
    const-string v92, "#858da6"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v43

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 650
    move-object/from16 v0, v84

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 653
    new-instance v41, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v92, 0x23b

    const/16 v93, 0x3c

    move-object/from16 v0, v41

    move/from16 v1, v92

    move/from16 v2, v93

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 655
    .restart local v41       #leftParams:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v58, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v58

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 656
    .restart local v58       #nameRow:Landroid/widget/LinearLayout;
    move-object/from16 v0, v58

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 657
    const/16 v92, 0x0

    move-object/from16 v0, v58

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 658
    move-object/from16 v0, v84

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 660
    new-instance v38, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 661
    .restart local v38       #leftLine:Landroid/widget/LinearLayout;
    new-instance v92, Landroid/view/ViewGroup$LayoutParams;

    const/16 v93, 0x1

    const/16 v94, 0x3c

    invoke-direct/range {v92 .. v94}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v38

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 662
    const-string v92, "#858da6"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v38

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 663
    move-object/from16 v0, v58

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 665
    new-instance v57, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v57

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 666
    .restart local v57       #name:Landroid/widget/TextView;
    new-instance v92, Landroid/view/ViewGroup$LayoutParams;

    const/16 v93, 0x115

    const/16 v94, 0x3c

    invoke-direct/range {v92 .. v94}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v57

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 667
    const/16 v92, 0x11

    move-object/from16 v0, v57

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 668
    const-string v92, "\uc0c1\ud488\uba85"

    move-object/from16 v0, v57

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 669
    const-string v92, "#2c3b65"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v57

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 670
    const/high16 v92, 0x41d0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->ptSize:F

    move/from16 v93, v0

    div-float v92, v92, v93

    move-object/from16 v0, v57

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 671
    move-object/from16 v0, v58

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 673
    new-instance v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    invoke-direct {v13, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 674
    .restart local v13       #centerLine:Landroid/widget/LinearLayout;
    new-instance v92, Landroid/view/ViewGroup$LayoutParams;

    const/16 v93, 0x1

    const/16 v94, 0x3c

    invoke-direct/range {v92 .. v94}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v92

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 675
    const-string v92, "#d4d7dd"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move/from16 v0, v92

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 676
    move-object/from16 v0, v58

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 678
    new-instance v89, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v89

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 679
    .local v89, use_len:Landroid/widget/TextView;
    new-instance v92, Landroid/view/ViewGroup$LayoutParams;

    const/16 v93, 0x91

    const/16 v94, 0x3c

    invoke-direct/range {v92 .. v94}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v89

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 680
    const/16 v92, 0x11

    move-object/from16 v0, v89

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 681
    const-string v92, "\uc0ac\uc6a9\uae30\uac04"

    move-object/from16 v0, v89

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    const-string v92, "#2c3b65"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v89

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 683
    const/high16 v92, 0x41d0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->ptSize:F

    move/from16 v93, v0

    div-float v92, v92, v93

    move-object/from16 v0, v89

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 685
    move-object/from16 v0, v58

    move-object/from16 v1, v89

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 687
    new-instance v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 688
    .restart local v14       #centerLine2:Landroid/widget/LinearLayout;
    new-instance v92, Landroid/view/ViewGroup$LayoutParams;

    const/16 v93, 0x1

    const/16 v94, 0x3c

    invoke-direct/range {v92 .. v94}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v92

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 689
    const-string v92, "#d4d7dd"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move/from16 v0, v92

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 690
    move-object/from16 v0, v58

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 693
    new-instance v64, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v64

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 694
    .restart local v64       #price:Landroid/widget/TextView;
    new-instance v92, Landroid/view/ViewGroup$LayoutParams;

    const/16 v93, 0x91

    const/16 v94, 0x3c

    invoke-direct/range {v92 .. v94}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v64

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 695
    const/16 v92, 0x11

    move-object/from16 v0, v64

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 696
    const-string v92, "\uacb0\uc81c\uae08\uc561"

    move-object/from16 v0, v64

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 697
    const-string v92, "#2c3b65"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v64

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 698
    const/high16 v92, 0x41d0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->ptSize:F

    move/from16 v93, v0

    div-float v92, v92, v93

    move-object/from16 v0, v64

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 699
    move-object/from16 v0, v58

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 701
    new-instance v70, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v70

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 702
    .restart local v70       #rightLine:Landroid/widget/LinearLayout;
    new-instance v92, Landroid/view/ViewGroup$LayoutParams;

    const/16 v93, 0x1

    const/16 v94, 0x3c

    invoke-direct/range {v92 .. v94}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v70

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 703
    const-string v92, "#858da6"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v70

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 704
    move-object/from16 v0, v58

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 706
    new-instance v56, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 707
    .local v56, mid_line:Landroid/widget/LinearLayout;
    move-object/from16 v0, v56

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 708
    const-string v92, "#858da6"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v56

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 709
    move-object/from16 v0, v84

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 711
    new-instance v24, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 712
    .local v24, contentRow:Landroid/widget/LinearLayout;
    move-object/from16 v0, v24

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 713
    const/16 v92, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 714
    move-object/from16 v0, v84

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 716
    new-instance v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 717
    .local v19, con_leftLine:Landroid/widget/LinearLayout;
    new-instance v92, Landroid/view/ViewGroup$LayoutParams;

    const/16 v93, 0x1

    const/16 v94, 0x3c

    invoke-direct/range {v92 .. v94}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 718
    const-string v92, "#858da6"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v19

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 719
    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 721
    new-instance v20, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 722
    .local v20, con_name:Landroid/widget/TextView;
    new-instance v92, Landroid/view/ViewGroup$LayoutParams;

    const/16 v93, 0x115

    const/16 v94, 0x3c

    invoke-direct/range {v92 .. v94}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v20

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 723
    const/16 v92, 0x10

    move-object/from16 v0, v20

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mPname:Ljava/lang/String;

    move-object/from16 v92, v0

    invoke-virtual/range {v92 .. v92}, Ljava/lang/String;->length()I

    move-result v92

    const/16 v93, 0xa

    move/from16 v0, v92

    move/from16 v1, v93

    if-lt v0, v1, :cond_9

    .line 726
    new-instance v92, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mPname:Ljava/lang/String;

    move-object/from16 v93, v0

    const/16 v94, 0x0

    const/16 v95, 0x5

    invoke-virtual/range {v93 .. v95}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v93

    invoke-static/range {v93 .. v93}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v93

    invoke-direct/range {v92 .. v93}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v93, "..."

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 727
    .restart local v29       #convertPname:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 731
    .end local v29           #convertPname:Ljava/lang/String;
    :goto_2
    const-string v92, "#2c3b65"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v20

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 732
    const/high16 v92, 0x41d0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->ptSize:F

    move/from16 v93, v0

    div-float v92, v92, v93

    move-object/from16 v0, v20

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 733
    const/16 v92, 0xc

    const/16 v93, 0x0

    const/16 v94, 0x0

    const/16 v95, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v92

    move/from16 v2, v93

    move/from16 v3, v94

    move/from16 v4, v95

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 734
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 736
    new-instance v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 737
    .local v17, con_centerLine:Landroid/widget/LinearLayout;
    new-instance v92, Landroid/view/ViewGroup$LayoutParams;

    const/16 v93, 0x1

    const/16 v94, 0x3c

    invoke-direct/range {v92 .. v94}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 738
    const-string v92, "#d4d7dd"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v17

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 739
    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 741
    new-instance v23, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 742
    .local v23, con_use_len:Landroid/widget/TextView;
    new-instance v92, Landroid/view/ViewGroup$LayoutParams;

    const/16 v93, 0x91

    const/16 v94, 0x3c

    invoke-direct/range {v92 .. v94}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v23

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 743
    const/16 v92, 0x10

    move-object/from16 v0, v23

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mProductKind:Ljava/lang/String;

    move-object/from16 v92, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 745
    const-string v92, "#2c3b65"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v23

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 746
    const/high16 v92, 0x41d0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->ptSize:F

    move/from16 v93, v0

    div-float v92, v92, v93

    move-object/from16 v0, v23

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 747
    const/16 v92, 0xc

    const/16 v93, 0x0

    const/16 v94, 0x0

    const/16 v95, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v92

    move/from16 v2, v93

    move/from16 v3, v94

    move/from16 v4, v95

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 748
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 750
    new-instance v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 751
    .local v18, con_centerLine2:Landroid/widget/LinearLayout;
    new-instance v92, Landroid/view/ViewGroup$LayoutParams;

    const/16 v93, 0x1

    const/16 v94, 0x3c

    invoke-direct/range {v92 .. v94}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 752
    const-string v92, "#d4d7dd"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v18

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 753
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 756
    new-instance v65, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v65

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 757
    .restart local v65       #priceLl:Landroid/widget/LinearLayout;
    const/16 v92, 0x0

    move-object/from16 v0, v65

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 759
    new-instance v68, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v92, 0x91

    const/16 v93, 0x3c

    move-object/from16 v0, v68

    move/from16 v1, v92

    move/from16 v2, v93

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 760
    .local v68, pricelRParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v65

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 761
    const/16 v92, 0x10

    move-object/from16 v0, v65

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 762
    move-object/from16 v0, v24

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 764
    new-instance v21, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 765
    .local v21, con_price:Landroid/widget/TextView;
    const/16 v92, 0x10

    move-object/from16 v0, v21

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mPrice:Ljava/lang/String;

    move-object/from16 v92, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 767
    const-string v92, "#ff6a42"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v21

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 768
    const/high16 v92, 0x41d0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->ptSize:F

    move/from16 v93, v0

    div-float v92, v92, v93

    move-object/from16 v0, v21

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 769
    const/16 v92, 0xc

    const/16 v93, 0x0

    const/16 v94, 0x0

    const/16 v95, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v92

    move/from16 v2, v93

    move/from16 v3, v94

    move/from16 v4, v95

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 770
    move-object/from16 v0, v65

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 773
    new-instance v91, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    invoke-direct/range {v91 .. v92}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 774
    .restart local v91       #won:Landroid/widget/TextView;
    new-instance v92, Landroid/view/ViewGroup$LayoutParams;

    const/16 v93, -0x2

    const/16 v94, -0x2

    invoke-direct/range {v92 .. v94}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v91 .. v92}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 775
    const-string v92, " \uc6d0"

    invoke-virtual/range {v91 .. v92}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 776
    const-string v92, "#535353"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    invoke-virtual/range {v91 .. v92}, Landroid/widget/TextView;->setTextColor(I)V

    .line 777
    const/high16 v92, 0x41d0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->ptSize:F

    move/from16 v93, v0

    div-float v92, v92, v93

    invoke-virtual/range {v91 .. v92}, Landroid/widget/TextView;->setTextSize(F)V

    .line 778
    move-object/from16 v0, v65

    move-object/from16 v1, v91

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 780
    new-instance v22, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 781
    .local v22, con_rightLine:Landroid/widget/LinearLayout;
    new-instance v92, Landroid/view/ViewGroup$LayoutParams;

    const/16 v93, 0x1

    const/16 v94, 0x3c

    invoke-direct/range {v92 .. v94}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v22

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 782
    const-string v92, "#858da6"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v22

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 783
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 785
    new-instance v7, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 786
    .local v7, bott_line:Landroid/widget/LinearLayout;
    move-object/from16 v0, v47

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 787
    const-string v92, "#858da6"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move/from16 v0, v92

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 788
    move-object/from16 v0, v84

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 791
    new-instance v81, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v81

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 792
    .restart local v81       #sv:Landroid/widget/ScrollView;
    const/16 v92, 0x0

    move-object/from16 v0, v81

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setScrollbarFadingEnabled(Z)V

    .line 794
    new-instance v83, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v92, 0x244

    const/16 v93, 0x72

    move-object/from16 v0, v83

    move/from16 v1, v92

    move/from16 v2, v93

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 795
    .restart local v83       #svParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v92, 0x1c

    const/16 v93, 0xa

    const/16 v94, 0xa

    const/16 v95, 0x12

    move-object/from16 v0, v83

    move/from16 v1, v92

    move/from16 v2, v93

    move/from16 v3, v94

    move/from16 v4, v95

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 796
    move-object/from16 v0, v81

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 797
    const/16 v92, 0x0

    move-object/from16 v0, v81

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setScrollbarFadingEnabled(Z)V

    .line 798
    move-object/from16 v0, v74

    move-object/from16 v1, v81

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 800
    new-instance v35, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 801
    .restart local v35       #info:Landroid/widget/LinearLayout;
    const/16 v92, 0x0

    const/16 v93, 0x0

    const/16 v94, 0x5

    const/16 v95, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v92

    move/from16 v2, v93

    move/from16 v3, v94

    move/from16 v4, v95

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 802
    const/16 v92, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 803
    move-object/from16 v0, v81

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 805
    new-instance v55, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v55

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 806
    .restart local v55       #message:Landroid/widget/TextView;
    const-string v92, "#8f9bb3"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v55

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->infoMessage:Ljava/lang/String;

    move-object/from16 v92, v0

    move-object/from16 v0, v55

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 808
    const/high16 v92, 0x41b8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->ptSize:F

    move/from16 v93, v0

    div-float v92, v92, v93

    move-object/from16 v0, v55

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 809
    move-object/from16 v0, v35

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 811
    new-instance v73, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v73

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 812
    .restart local v73       #rockInfo:Landroid/widget/TextView;
    const-string v92, "#8f9bb3"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v73

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 813
    const-string v92, "* \uc0c1\ud488 \uacb0\uc81c \uc2dc U+ \uc571\ub9c8\ucf13\uc744 \ud1b5\ud55c \ubcf8\uc778 \uc778\uc99d \uc11c\ube44\uc2a4\ub97c \uc774\uc6a9\ud558\uc2e4 \uc218 \uc788\uc2b5\ub2c8\ub2e4."

    move-object/from16 v0, v73

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 814
    const/high16 v92, 0x41b8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->ptSize:F

    move/from16 v93, v0

    div-float v92, v92, v93

    move-object/from16 v0, v73

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 815
    move-object/from16 v0, v35

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 817
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v92

    new-instance v93, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v94, v0

    invoke-static/range {v94 .. v94}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v94

    invoke-direct/range {v93 .. v94}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v94, "popup_btn_bg.png"

    invoke-virtual/range {v93 .. v94}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v93

    invoke-virtual/range {v93 .. v93}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v36

    .line 818
    const/16 v92, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v92

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v62

    .line 819
    .restart local v62       #popup_btn_bg:Landroid/graphics/drawable/Drawable;
    const/16 v36, 0x0

    .line 821
    new-instance v8, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 823
    .restart local v8       #bottom:Landroid/widget/LinearLayout;
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v92, 0x25a

    const/16 v93, 0x68

    move/from16 v0, v92

    move/from16 v1, v93

    invoke-direct {v9, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 824
    .restart local v9       #btnParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v92, 0xb

    const/16 v93, 0x0

    const/16 v94, 0xa

    const/16 v95, 0x0

    move/from16 v0, v92

    move/from16 v1, v93

    move/from16 v2, v94

    move/from16 v3, v95

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 825
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 826
    move-object/from16 v0, v62

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 827
    const/16 v92, 0x0

    move/from16 v0, v92

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 828
    const/16 v92, 0x11

    move/from16 v0, v92

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 829
    move-object/from16 v0, v74

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 831
    new-instance v60, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v60 .. v60}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 832
    .restart local v60       #okDrawables:Landroid/graphics/drawable/StateListDrawable;
    new-instance v11, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v11}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 834
    .restart local v11       #cancelDrawables:Landroid/graphics/drawable/StateListDrawable;
    const v77, 0x10100a0

    .line 835
    .restart local v77       #stateChecked:I
    const v78, 0x101009c

    .line 836
    .restart local v78       #stateFocused:I
    const v79, 0x10100a7

    .line 837
    .restart local v79       #statePressed:I
    const v80, 0x101009d

    .line 839
    .restart local v80       #stateWindowFocused:I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v92

    new-instance v93, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v94, v0

    invoke-static/range {v94 .. v94}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v94

    invoke-direct/range {v93 .. v94}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v94, "menu_btn.9.png"

    invoke-virtual/range {v93 .. v94}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v93

    invoke-virtual/range {v93 .. v93}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v36

    .line 840
    const/16 v92, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v92

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v52

    .line 841
    .restart local v52       #menu_btn:Landroid/graphics/drawable/Drawable;
    const/16 v36, 0x0

    .line 842
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v92

    new-instance v93, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v94, v0

    invoke-static/range {v94 .. v94}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v94

    invoke-direct/range {v93 .. v94}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v94, "menu_btn_pressed.9.png"

    invoke-virtual/range {v93 .. v94}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v93

    invoke-virtual/range {v93 .. v93}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v36

    .line 843
    const/16 v92, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v92

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v54

    .line 844
    .restart local v54       #menu_btn_pressed:Landroid/graphics/drawable/Drawable;
    const/16 v36, 0x0

    .line 845
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v92

    new-instance v93, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v94, v0

    invoke-static/range {v94 .. v94}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v94

    invoke-direct/range {v93 .. v94}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v94, "menu_btn_active.9.png"

    invoke-virtual/range {v93 .. v94}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v93

    invoke-virtual/range {v93 .. v93}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v36

    .line 846
    const/16 v92, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v92

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v53

    .line 847
    .restart local v53       #menu_btn_active:Landroid/graphics/drawable/Drawable;
    const/16 v36, 0x0

    .line 849
    const/16 v92, 0x2

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aput v77, v92, v93

    const/16 v93, 0x1

    move/from16 v0, v80

    neg-int v0, v0

    move/from16 v94, v0

    aput v94, v92, v93

    move-object/from16 v0, v60

    move-object/from16 v1, v92

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 850
    const/16 v92, 0x2

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    const/16 v93, 0x0

    move/from16 v0, v77

    neg-int v0, v0

    move/from16 v94, v0

    aput v94, v92, v93

    const/16 v93, 0x1

    move/from16 v0, v80

    neg-int v0, v0

    move/from16 v94, v0

    aput v94, v92, v93

    move-object/from16 v0, v60

    move-object/from16 v1, v92

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 851
    const/16 v92, 0x2

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aput v77, v92, v93

    const/16 v93, 0x1

    aput v79, v92, v93

    move-object/from16 v0, v60

    move-object/from16 v1, v92

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 852
    const/16 v92, 0x2

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    const/16 v93, 0x0

    move/from16 v0, v77

    neg-int v0, v0

    move/from16 v94, v0

    aput v94, v92, v93

    const/16 v93, 0x1

    aput v79, v92, v93

    move-object/from16 v0, v60

    move-object/from16 v1, v92

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 853
    const/16 v92, 0x2

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aput v77, v92, v93

    const/16 v93, 0x1

    aput v78, v92, v93

    move-object/from16 v0, v60

    move-object/from16 v1, v92

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 854
    const/16 v92, 0x2

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    const/16 v93, 0x0

    move/from16 v0, v77

    neg-int v0, v0

    move/from16 v94, v0

    aput v94, v92, v93

    const/16 v93, 0x1

    aput v78, v92, v93

    move-object/from16 v0, v60

    move-object/from16 v1, v92

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 855
    const/16 v92, 0x1

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aput v77, v92, v93

    move-object/from16 v0, v60

    move-object/from16 v1, v92

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 856
    const/16 v92, 0x1

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    const/16 v93, 0x0

    move/from16 v0, v77

    neg-int v0, v0

    move/from16 v94, v0

    aput v94, v92, v93

    move-object/from16 v0, v60

    move-object/from16 v1, v92

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 857
    const/16 v92, 0x0

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v92

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 859
    new-instance v92, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v93, v0

    invoke-direct/range {v92 .. v93}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v92

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->purchaseBtn:Landroid/widget/Button;

    .line 860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->purchaseBtn:Landroid/widget/Button;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 862
    new-instance v69, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v92, 0x0

    const/16 v93, 0x54

    const/high16 v94, 0x3f80

    move-object/from16 v0, v69

    move/from16 v1, v92

    move/from16 v2, v93

    move/from16 v3, v94

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 863
    .restart local v69       #purchaseBtnParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v92, 0x12

    const/16 v93, 0x8

    const/16 v94, 0x5

    const/16 v95, 0xc

    move-object/from16 v0, v69

    move/from16 v1, v92

    move/from16 v2, v93

    move/from16 v3, v94

    move/from16 v4, v95

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->purchaseBtn:Landroid/widget/Button;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->purchaseBtn:Landroid/widget/Button;

    move-object/from16 v92, v0

    const/16 v93, 0x11

    invoke-virtual/range {v92 .. v93}, Landroid/widget/Button;->setGravity(I)V

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->purchaseBtn:Landroid/widget/Button;

    move-object/from16 v92, v0

    const-string v93, "\uad6c\ub9e4"

    invoke-virtual/range {v92 .. v93}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->purchaseBtn:Landroid/widget/Button;

    move-object/from16 v92, v0

    const/high16 v93, 0x4210

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->ptSize:F

    move/from16 v94, v0

    div-float v93, v93, v94

    invoke-virtual/range {v92 .. v93}, Landroid/widget/Button;->setTextSize(F)V

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->purchaseBtn:Landroid/widget/Button;

    move-object/from16 v92, v0

    new-instance v93, Landroid/content/res/ColorStateList;

    .line 869
    const/16 v94, 0x2

    move/from16 v0, v94

    new-array v0, v0, [[I

    move-object/from16 v94, v0

    const/16 v95, 0x0

    .line 870
    const/16 v96, 0x1

    move/from16 v0, v96

    new-array v0, v0, [I

    move-object/from16 v96, v0

    const/16 v97, 0x0

    aput v79, v96, v97

    aput-object v96, v94, v95

    const/16 v95, 0x1

    .line 871
    const/16 v96, 0x0

    move/from16 v0, v96

    new-array v0, v0, [I

    move-object/from16 v96, v0

    aput-object v96, v94, v95

    .line 872
    const/16 v95, 0x2

    move/from16 v0, v95

    new-array v0, v0, [I

    move-object/from16 v95, v0

    const/16 v96, 0x0

    .line 873
    const-string v97, "#ffffff"

    invoke-static/range {v97 .. v97}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v97

    aput v97, v95, v96

    const/16 v96, 0x1

    .line 874
    const-string v97, "#2c3b65"

    invoke-static/range {v97 .. v97}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v97

    aput v97, v95, v96

    invoke-direct/range {v93 .. v95}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 868
    invoke-virtual/range {v92 .. v93}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->purchaseBtn:Landroid/widget/Button;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 879
    const/16 v92, 0x2

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aput v77, v92, v93

    const/16 v93, 0x1

    move/from16 v0, v80

    neg-int v0, v0

    move/from16 v94, v0

    aput v94, v92, v93

    move-object/from16 v0, v92

    move-object/from16 v1, v52

    invoke-virtual {v11, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 880
    const/16 v92, 0x2

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    const/16 v93, 0x0

    move/from16 v0, v77

    neg-int v0, v0

    move/from16 v94, v0

    aput v94, v92, v93

    const/16 v93, 0x1

    move/from16 v0, v80

    neg-int v0, v0

    move/from16 v94, v0

    aput v94, v92, v93

    move-object/from16 v0, v92

    move-object/from16 v1, v52

    invoke-virtual {v11, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 881
    const/16 v92, 0x2

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aput v77, v92, v93

    const/16 v93, 0x1

    aput v79, v92, v93

    move-object/from16 v0, v92

    move-object/from16 v1, v54

    invoke-virtual {v11, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 882
    const/16 v92, 0x2

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    const/16 v93, 0x0

    move/from16 v0, v77

    neg-int v0, v0

    move/from16 v94, v0

    aput v94, v92, v93

    const/16 v93, 0x1

    aput v79, v92, v93

    move-object/from16 v0, v92

    move-object/from16 v1, v54

    invoke-virtual {v11, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 883
    const/16 v92, 0x2

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aput v77, v92, v93

    const/16 v93, 0x1

    aput v78, v92, v93

    move-object/from16 v0, v92

    move-object/from16 v1, v53

    invoke-virtual {v11, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 884
    const/16 v92, 0x2

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    const/16 v93, 0x0

    move/from16 v0, v77

    neg-int v0, v0

    move/from16 v94, v0

    aput v94, v92, v93

    const/16 v93, 0x1

    aput v78, v92, v93

    move-object/from16 v0, v92

    move-object/from16 v1, v53

    invoke-virtual {v11, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 885
    const/16 v92, 0x1

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aput v77, v92, v93

    move-object/from16 v0, v92

    move-object/from16 v1, v54

    invoke-virtual {v11, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 886
    const/16 v92, 0x1

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    const/16 v93, 0x0

    move/from16 v0, v77

    neg-int v0, v0

    move/from16 v94, v0

    aput v94, v92, v93

    move-object/from16 v0, v92

    move-object/from16 v1, v52

    invoke-virtual {v11, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 887
    const/16 v92, 0x0

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    move-object/from16 v1, v54

    invoke-virtual {v11, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 889
    new-instance v92, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v93, v0

    invoke-direct/range {v92 .. v93}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v92

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->cancelBtn:Landroid/widget/Button;

    .line 890
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->cancelBtn:Landroid/widget/Button;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 892
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v92, 0x0

    const/16 v93, 0x54

    const/high16 v94, 0x3f80

    move/from16 v0, v92

    move/from16 v1, v93

    move/from16 v2, v94

    invoke-direct {v10, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 893
    .restart local v10       #cancelBtnParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v92, 0x5

    const/16 v93, 0x8

    const/16 v94, 0x12

    const/16 v95, 0xc

    move/from16 v0, v92

    move/from16 v1, v93

    move/from16 v2, v94

    move/from16 v3, v95

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 894
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->cancelBtn:Landroid/widget/Button;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->cancelBtn:Landroid/widget/Button;

    move-object/from16 v92, v0

    const/16 v93, 0x11

    invoke-virtual/range {v92 .. v93}, Landroid/widget/Button;->setGravity(I)V

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->cancelBtn:Landroid/widget/Button;

    move-object/from16 v92, v0

    const-string v93, "\ucde8\uc18c"

    invoke-virtual/range {v92 .. v93}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->cancelBtn:Landroid/widget/Button;

    move-object/from16 v92, v0

    const/high16 v93, 0x4210

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->ptSize:F

    move/from16 v94, v0

    div-float v93, v93, v94

    invoke-virtual/range {v92 .. v93}, Landroid/widget/Button;->setTextSize(F)V

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->cancelBtn:Landroid/widget/Button;

    move-object/from16 v92, v0

    new-instance v93, Landroid/content/res/ColorStateList;

    .line 899
    const/16 v94, 0x2

    move/from16 v0, v94

    new-array v0, v0, [[I

    move-object/from16 v94, v0

    const/16 v95, 0x0

    .line 900
    const/16 v96, 0x1

    move/from16 v0, v96

    new-array v0, v0, [I

    move-object/from16 v96, v0

    const/16 v97, 0x0

    aput v79, v96, v97

    aput-object v96, v94, v95

    const/16 v95, 0x1

    .line 901
    const/16 v96, 0x0

    move/from16 v0, v96

    new-array v0, v0, [I

    move-object/from16 v96, v0

    aput-object v96, v94, v95

    .line 902
    const/16 v95, 0x2

    move/from16 v0, v95

    new-array v0, v0, [I

    move-object/from16 v95, v0

    const/16 v96, 0x0

    .line 903
    const-string v97, "#ffffff"

    invoke-static/range {v97 .. v97}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v97

    aput v97, v95, v96

    const/16 v96, 0x1

    .line 904
    const-string v97, "#2c3b65"

    invoke-static/range {v97 .. v97}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v97

    aput v97, v95, v96

    invoke-direct/range {v93 .. v95}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 898
    invoke-virtual/range {v92 .. v93}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->cancelBtn:Landroid/widget/Button;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 909
    new-instance v50, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v50

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 911
    .restart local v50       #logoView:Landroid/widget/LinearLayout;
    new-instance v51, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v92, 0x25d

    const/16 v93, 0x2d

    move-object/from16 v0, v51

    move/from16 v1, v92

    move/from16 v2, v93

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 912
    .restart local v51       #logoViewParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v92, 0xa

    const/16 v93, 0x0

    const/16 v94, 0x0

    const/16 v95, 0x0

    move-object/from16 v0, v51

    move/from16 v1, v92

    move/from16 v2, v93

    move/from16 v3, v94

    move/from16 v4, v95

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 913
    invoke-virtual/range {v50 .. v51}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 914
    const/16 v92, 0x0

    move-object/from16 v0, v50

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 915
    move-object/from16 v0, v74

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 917
    new-instance v37, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 918
    .restart local v37       #leftBlank:Landroid/widget/LinearLayout;
    new-instance v92, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v93, 0x0

    const/16 v94, 0x2d

    const/high16 v95, 0x3f80

    invoke-direct/range {v92 .. v95}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v37

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 919
    move-object/from16 v0, v50

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 921
    new-instance v49, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 922
    .restart local v49       #logo:Landroid/widget/ImageView;
    new-instance v92, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v93, 0x0

    const/16 v94, 0x23

    const/high16 v95, 0x3f80

    invoke-direct/range {v92 .. v95}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v49

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 923
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v92

    new-instance v93, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v94, v0

    invoke-static/range {v94 .. v94}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v94

    invoke-direct/range {v93 .. v94}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v94, "lguplus_logo.png"

    invoke-virtual/range {v93 .. v94}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v93

    invoke-virtual/range {v93 .. v93}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v36

    .line 924
    const/16 v92, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v92

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v42

    .line 925
    .restart local v42       #lguplusLogo:Landroid/graphics/drawable/Drawable;
    const/16 v36, 0x0

    .line 926
    move-object/from16 v0, v49

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 927
    move-object/from16 v0, v50

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 929
    new-instance v90, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v90

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 930
    .restart local v90       #version:Landroid/widget/TextView;
    sget-object v92, Lcom/feelingk/lguiab/common/Defines;->SDK_VERSION_INFO:Ljava/lang/String;

    move-object/from16 v0, v90

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 931
    new-instance v92, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v93, 0x0

    const/16 v94, 0x2d

    const/high16 v95, 0x3f80

    invoke-direct/range {v92 .. v95}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v90

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 933
    const/16 v92, 0x5

    move-object/from16 v0, v90

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 934
    const v92, 0x4134cccd

    move-object/from16 v0, v90

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 935
    const-string v92, "#b8b8b8"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v90

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 936
    move-object/from16 v0, v50

    move-object/from16 v1, v90

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 938
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->setContentView(Landroid/view/View;)V

    .line 940
    const-string v92, "PurchaseDlg"

    invoke-static/range {v92 .. v92}, Lcom/feelingk/lguiab/LguIAPLib;->setDialogType(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 730
    .end local v7           #bott_line:Landroid/widget/LinearLayout;
    .end local v8           #bottom:Landroid/widget/LinearLayout;
    .end local v9           #btnParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v10           #cancelBtnParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v11           #cancelDrawables:Landroid/graphics/drawable/StateListDrawable;
    .end local v17           #con_centerLine:Landroid/widget/LinearLayout;
    .end local v18           #con_centerLine2:Landroid/widget/LinearLayout;
    .end local v21           #con_price:Landroid/widget/TextView;
    .end local v22           #con_rightLine:Landroid/widget/LinearLayout;
    .end local v23           #con_use_len:Landroid/widget/TextView;
    .end local v35           #info:Landroid/widget/LinearLayout;
    .end local v37           #leftBlank:Landroid/widget/LinearLayout;
    .end local v42           #lguplusLogo:Landroid/graphics/drawable/Drawable;
    .end local v49           #logo:Landroid/widget/ImageView;
    .end local v50           #logoView:Landroid/widget/LinearLayout;
    .end local v51           #logoViewParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v52           #menu_btn:Landroid/graphics/drawable/Drawable;
    .end local v53           #menu_btn_active:Landroid/graphics/drawable/Drawable;
    .end local v54           #menu_btn_pressed:Landroid/graphics/drawable/Drawable;
    .end local v55           #message:Landroid/widget/TextView;
    .end local v60           #okDrawables:Landroid/graphics/drawable/StateListDrawable;
    .end local v62           #popup_btn_bg:Landroid/graphics/drawable/Drawable;
    .end local v65           #priceLl:Landroid/widget/LinearLayout;
    .end local v68           #pricelRParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v69           #purchaseBtnParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v73           #rockInfo:Landroid/widget/TextView;
    .end local v77           #stateChecked:I
    .end local v78           #stateFocused:I
    .end local v79           #statePressed:I
    .end local v80           #stateWindowFocused:I
    .end local v81           #sv:Landroid/widget/ScrollView;
    .end local v83           #svParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v90           #version:Landroid/widget/TextView;
    .end local v91           #won:Landroid/widget/TextView;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mPname:Ljava/lang/String;

    move-object/from16 v92, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 943
    .end local v5           #blank:Landroid/widget/LinearLayout;
    .end local v13           #centerLine:Landroid/widget/LinearLayout;
    .end local v14           #centerLine2:Landroid/widget/LinearLayout;
    .end local v16           #centerParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v19           #con_leftLine:Landroid/widget/LinearLayout;
    .end local v20           #con_name:Landroid/widget/TextView;
    .end local v24           #contentRow:Landroid/widget/LinearLayout;
    .end local v33           #ff:Landroid/widget/FrameLayout;
    .end local v34           #frame:Landroid/widget/LinearLayout;
    .end local v36           #is:Ljava/io/InputStream;
    .end local v38           #leftLine:Landroid/widget/LinearLayout;
    .end local v41           #leftParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v43           #line:Landroid/widget/LinearLayout;
    .end local v47           #lineParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v48           #ll:Landroid/widget/LinearLayout;
    .end local v56           #mid_line:Landroid/widget/LinearLayout;
    .end local v57           #name:Landroid/widget/TextView;
    .end local v58           #nameRow:Landroid/widget/LinearLayout;
    .end local v61           #popup_bg:Landroid/graphics/drawable/Drawable;
    .end local v63           #popup_title:Landroid/graphics/drawable/Drawable;
    .end local v64           #price:Landroid/widget/TextView;
    .end local v70           #rightLine:Landroid/widget/LinearLayout;
    .end local v74           #root:Landroid/widget/LinearLayout;
    .end local v84           #table:Landroid/widget/LinearLayout;
    .end local v87           #title:Landroid/widget/TextView;
    .end local v88           #titleParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v89           #use_len:Landroid/widget/TextView;
    :cond_a
    const/16 v92, 0x3c

    move/from16 v0, v92

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->titleHeight:I

    .line 944
    const/16 v92, 0x12

    move/from16 v0, v92

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->titleTextSize:I

    .line 945
    const/16 v92, 0xe

    move/from16 v0, v92

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->normalTextSize:I

    .line 946
    const/16 v92, 0x1bc

    move/from16 v0, v92

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->tableWidth:I

    .line 947
    const/16 v92, 0x1bc

    move/from16 v0, v92

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->lineWidth:I

    .line 948
    const/16 v92, 0x8

    move/from16 v0, v92

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->contentPdTop:I

    .line 949
    const/16 v92, 0x3c

    move/from16 v0, v92

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->buttonHeight:I

    .line 952
    new-instance v48, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 954
    .restart local v48       #ll:Landroid/widget/LinearLayout;
    new-instance v33, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 955
    .restart local v33       #ff:Landroid/widget/FrameLayout;
    new-instance v92, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v93, 0x1f4

    const/16 v94, -0x2

    invoke-direct/range {v92 .. v94}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v33

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 956
    move-object/from16 v0, v48

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 958
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v92

    new-instance v93, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v94, v0

    invoke-static/range {v94 .. v94}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v94

    invoke-direct/range {v93 .. v94}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v94, "popup_bg.9.png"

    invoke-virtual/range {v93 .. v94}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v93

    invoke-virtual/range {v93 .. v93}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v36

    .line 959
    .restart local v36       #is:Ljava/io/InputStream;
    const/16 v92, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v92

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v61

    .line 962
    .restart local v61       #popup_bg:Landroid/graphics/drawable/Drawable;
    new-instance v34, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 963
    .restart local v34       #frame:Landroid/widget/LinearLayout;
    new-instance v92, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v93, 0x1f4

    const/16 v94, 0x163

    invoke-direct/range {v92 .. v94}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v34

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 964
    move-object/from16 v0, v34

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 965
    invoke-virtual/range {v33 .. v34}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 967
    new-instance v5, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 968
    .restart local v5       #blank:Landroid/widget/LinearLayout;
    new-instance v92, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v93, 0x1f4

    const/16 v94, -0x2

    invoke-direct/range {v92 .. v94}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v92

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 969
    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 973
    new-instance v74, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v74

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 974
    .restart local v74       #root:Landroid/widget/LinearLayout;
    const/16 v92, 0x1

    move-object/from16 v0, v74

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 975
    const/16 v92, 0x11

    move-object/from16 v0, v74

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 976
    new-instance v92, Landroid/view/ViewGroup$LayoutParams;

    const/16 v93, 0x1f4

    const/16 v94, -0x2

    invoke-direct/range {v92 .. v94}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v74

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 977
    move-object/from16 v0, v74

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 980
    new-instance v88, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v92, 0x1e0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->titleHeight:I

    move/from16 v93, v0

    move-object/from16 v0, v88

    move/from16 v1, v92

    move/from16 v2, v93

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 981
    .restart local v88       #titleParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v92, 0xa

    const/16 v93, 0xa

    const/16 v94, 0xa

    const/16 v95, 0x0

    move-object/from16 v0, v88

    move/from16 v1, v92

    move/from16 v2, v93

    move/from16 v3, v94

    move/from16 v4, v95

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 983
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v92

    new-instance v93, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v94, v0

    invoke-static/range {v94 .. v94}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v94

    invoke-direct/range {v93 .. v94}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v94, "popup_title.png"

    invoke-virtual/range {v93 .. v94}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v93

    invoke-virtual/range {v93 .. v93}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v36

    .line 984
    const/16 v92, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v92

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v63

    .line 986
    .restart local v63       #popup_title:Landroid/graphics/drawable/Drawable;
    new-instance v92, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v93, v0

    invoke-direct/range {v92 .. v93}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v92

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->title:Landroid/widget/TextView;

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->title:Landroid/widget/TextView;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    move-object/from16 v1, v88

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->title:Landroid/widget/TextView;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->title:Landroid/widget/TextView;

    move-object/from16 v92, v0

    const-string v93, "\uacb0\uc81c\uc548\ub0b4"

    invoke-virtual/range {v92 .. v93}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->title:Landroid/widget/TextView;

    move-object/from16 v92, v0

    const-string v93, "#ffffff"

    invoke-static/range {v93 .. v93}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v93

    invoke-virtual/range {v92 .. v93}, Landroid/widget/TextView;->setTextColor(I)V

    .line 991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->title:Landroid/widget/TextView;

    move-object/from16 v92, v0

    const/16 v93, 0x11

    invoke-virtual/range {v92 .. v93}, Landroid/widget/TextView;->setGravity(I)V

    .line 992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->title:Landroid/widget/TextView;

    move-object/from16 v92, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->titleTextSize:I

    move/from16 v93, v0

    move/from16 v0, v93

    int-to-float v0, v0

    move/from16 v93, v0

    invoke-virtual/range {v92 .. v93}, Landroid/widget/TextView;->setTextSize(F)V

    .line 993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->title:Landroid/widget/TextView;

    move-object/from16 v92, v0

    move-object/from16 v0, v74

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 995
    new-instance v84, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v84

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 996
    .restart local v84       #table:Landroid/widget/LinearLayout;
    const/16 v92, 0x1

    move-object/from16 v0, v84

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 998
    new-instance v85, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->tableWidth:I

    move/from16 v92, v0

    const/16 v93, -0x2

    move-object/from16 v0, v85

    move/from16 v1, v92

    move/from16 v2, v93

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 999
    .restart local v85       #tableParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v92, 0x1c

    const/16 v93, 0x7

    const/16 v94, 0x1c

    const/16 v95, 0x7

    move-object/from16 v0, v85

    move/from16 v1, v92

    move/from16 v2, v93

    move/from16 v3, v94

    move/from16 v4, v95

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1000
    invoke-virtual/range {v84 .. v85}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1001
    const/16 v92, 0x11

    move-object/from16 v0, v84

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1002
    move-object/from16 v0, v74

    move-object/from16 v1, v84

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1004
    new-instance v43, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1006
    .restart local v43       #line:Landroid/widget/LinearLayout;
    new-instance v47, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->lineWidth:I

    move/from16 v92, v0

    const/16 v93, 0x1

    move-object/from16 v0, v47

    move/from16 v1, v92

    move/from16 v2, v93

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1007
    .restart local v47       #lineParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v43

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1008
    const-string v92, "#858da6"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v43

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1009
    move-object/from16 v0, v84

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1011
    new-instance v58, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v58

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1013
    .restart local v58       #nameRow:Landroid/widget/LinearLayout;
    new-instance v75, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->lineWidth:I

    move/from16 v92, v0

    const/16 v93, -0x2

    move-object/from16 v0, v75

    move/from16 v1, v92

    move/from16 v2, v93

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1014
    .local v75, rowParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v58

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1015
    const/16 v92, 0x11

    move-object/from16 v0, v58

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1016
    const/16 v92, 0x0

    move-object/from16 v0, v58

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1017
    move-object/from16 v0, v84

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1019
    new-instance v38, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1020
    .restart local v38       #leftLine:Landroid/widget/LinearLayout;
    new-instance v92, Landroid/view/ViewGroup$LayoutParams;

    const/16 v93, 0x1

    const/16 v94, 0x31

    invoke-direct/range {v92 .. v94}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v38

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1021
    const-string v92, "#858da6"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v38

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1022
    move-object/from16 v0, v58

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1024
    new-instance v57, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v57

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1025
    .restart local v57       #name:Landroid/widget/TextView;
    new-instance v92, Landroid/view/ViewGroup$LayoutParams;

    const/16 v93, 0xc8

    const/16 v94, 0x31

    invoke-direct/range {v92 .. v94}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v57

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1026
    const/16 v92, 0x11

    move-object/from16 v0, v57

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1027
    const-string v92, "\uc0c1\ud488\uba85"

    move-object/from16 v0, v57

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1028
    const-string v92, "#2c3b65"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v57

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1029
    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->normalTextSize:I

    move/from16 v92, v0

    move/from16 v0, v92

    int-to-float v0, v0

    move/from16 v92, v0

    move-object/from16 v0, v57

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1030
    const/16 v92, 0x8

    const/16 v93, 0x0

    const/16 v94, 0x6

    const/16 v95, 0x0

    move-object/from16 v0, v57

    move/from16 v1, v92

    move/from16 v2, v93

    move/from16 v3, v94

    move/from16 v4, v95

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1031
    move-object/from16 v0, v58

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1033
    new-instance v76, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v76

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1034
    .local v76, secondLine:Landroid/widget/LinearLayout;
    new-instance v92, Landroid/view/ViewGroup$LayoutParams;

    const/16 v93, 0x1

    const/16 v94, 0x31

    invoke-direct/range {v92 .. v94}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v76

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1035
    const-string v92, "#d4d7dd"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v76

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1036
    move-object/from16 v0, v58

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1038
    new-instance v30, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1039
    .restart local v30       #date:Landroid/widget/TextView;
    new-instance v92, Landroid/view/ViewGroup$LayoutParams;

    const/16 v93, 0x78

    const/16 v94, 0x31

    invoke-direct/range {v92 .. v94}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v30

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1040
    const/16 v92, 0x11

    move-object/from16 v0, v30

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1041
    const-string v92, "\uc0ac\uc6a9\uae30\uac04"

    move-object/from16 v0, v30

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1042
    const-string v92, "#2c3b65"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v30

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1043
    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->normalTextSize:I

    move/from16 v92, v0

    move/from16 v0, v92

    int-to-float v0, v0

    move/from16 v92, v0

    move-object/from16 v0, v30

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1044
    const/16 v92, 0x8

    const/16 v93, 0x0

    const/16 v94, 0x6

    const/16 v95, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v92

    move/from16 v2, v93

    move/from16 v3, v94

    move/from16 v4, v95

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1045
    move-object/from16 v0, v58

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1047
    new-instance v86, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v86

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1048
    .local v86, thirdLine:Landroid/widget/LinearLayout;
    new-instance v92, Landroid/view/ViewGroup$LayoutParams;

    const/16 v93, 0x1

    const/16 v94, 0x31

    invoke-direct/range {v92 .. v94}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v86

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1049
    const-string v92, "#d4d7dd"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v86

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1050
    move-object/from16 v0, v58

    move-object/from16 v1, v86

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1052
    new-instance v64, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v64

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1053
    .restart local v64       #price:Landroid/widget/TextView;
    new-instance v92, Landroid/view/ViewGroup$LayoutParams;

    const/16 v93, 0x78

    const/16 v94, 0x31

    invoke-direct/range {v92 .. v94}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v64

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1054
    const/16 v92, 0x11

    move-object/from16 v0, v64

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1055
    const-string v92, "\uac00\uaca9"

    move-object/from16 v0, v64

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1056
    const-string v92, "#2c3b65"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v64

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1057
    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->normalTextSize:I

    move/from16 v92, v0

    move/from16 v0, v92

    int-to-float v0, v0

    move/from16 v92, v0

    move-object/from16 v0, v64

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1058
    const/16 v92, 0x8

    const/16 v93, 0x0

    const/16 v94, 0x6

    const/16 v95, 0x0

    move-object/from16 v0, v64

    move/from16 v1, v92

    move/from16 v2, v93

    move/from16 v3, v94

    move/from16 v4, v95

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1059
    move-object/from16 v0, v58

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1063
    new-instance v70, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v70

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1064
    .restart local v70       #rightLine:Landroid/widget/LinearLayout;
    new-instance v92, Landroid/view/ViewGroup$LayoutParams;

    const/16 v93, 0x1

    const/16 v94, 0x31

    invoke-direct/range {v92 .. v94}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v70

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1065
    const-string v92, "#858da6"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v70

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1066
    move-object/from16 v0, v58

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1068
    new-instance v44, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1069
    .restart local v44       #line2:Landroid/widget/LinearLayout;
    move-object/from16 v0, v44

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1070
    const-string v92, "#d4d7dd"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v44

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1071
    move-object/from16 v0, v84

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1073
    new-instance v24, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1074
    .restart local v24       #contentRow:Landroid/widget/LinearLayout;
    move-object/from16 v0, v24

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1075
    const/16 v92, 0x11

    move-object/from16 v0, v24

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1076
    const/16 v92, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1077
    move-object/from16 v0, v84

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1079
    new-instance v25, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1080
    .local v25, content_leftLine:Landroid/widget/LinearLayout;
    new-instance v92, Landroid/view/ViewGroup$LayoutParams;

    const/16 v93, 0x1

    const/16 v94, 0x31

    invoke-direct/range {v92 .. v94}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v25

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1081
    const-string v92, "#858da6"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v25

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1082
    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1085
    new-instance v59, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v59

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1086
    .restart local v59       #namelR:Landroid/widget/TextView;
    new-instance v92, Landroid/view/ViewGroup$LayoutParams;

    const/16 v93, 0xc8

    const/16 v94, 0x31

    invoke-direct/range {v92 .. v94}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v59

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1087
    const-string v92, "#535353"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v59

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1088
    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->normalTextSize:I

    move/from16 v92, v0

    move/from16 v0, v92

    int-to-float v0, v0

    move/from16 v92, v0

    move-object/from16 v0, v59

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mPname:Ljava/lang/String;

    move-object/from16 v92, v0

    invoke-virtual/range {v92 .. v92}, Ljava/lang/String;->length()I

    move-result v92

    const/16 v93, 0xa

    move/from16 v0, v92

    move/from16 v1, v93

    if-lt v0, v1, :cond_b

    .line 1091
    new-instance v92, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mPname:Ljava/lang/String;

    move-object/from16 v93, v0

    const/16 v94, 0x0

    const/16 v95, 0x5

    invoke-virtual/range {v93 .. v95}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v93

    invoke-static/range {v93 .. v93}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v93

    invoke-direct/range {v92 .. v93}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v93, "..."

    invoke-virtual/range {v92 .. v93}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v92

    invoke-virtual/range {v92 .. v92}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1092
    .restart local v29       #convertPname:Ljava/lang/String;
    move-object/from16 v0, v59

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1096
    .end local v29           #convertPname:Ljava/lang/String;
    :goto_3
    const/16 v92, 0x14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->contentPdTop:I

    move/from16 v93, v0

    const/16 v94, 0x6

    const/16 v95, 0x0

    move-object/from16 v0, v59

    move/from16 v1, v92

    move/from16 v2, v93

    move/from16 v3, v94

    move/from16 v4, v95

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1097
    move-object/from16 v0, v24

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1099
    new-instance v27, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1100
    .local v27, content_secondLine:Landroid/widget/LinearLayout;
    new-instance v92, Landroid/view/ViewGroup$LayoutParams;

    const/16 v93, 0x1

    const/16 v94, 0x31

    invoke-direct/range {v92 .. v94}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v27

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1101
    const-string v92, "#d4d7dd"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v27

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1102
    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1105
    new-instance v32, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1106
    .restart local v32       #datelR:Landroid/widget/TextView;
    new-instance v92, Landroid/view/ViewGroup$LayoutParams;

    const/16 v93, 0x78

    const/16 v94, 0x31

    invoke-direct/range {v92 .. v94}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v32

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1107
    const-string v92, "#535353"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v32

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mProductKind:Ljava/lang/String;

    move-object/from16 v92, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1109
    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->normalTextSize:I

    move/from16 v92, v0

    move/from16 v0, v92

    int-to-float v0, v0

    move/from16 v92, v0

    move-object/from16 v0, v32

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1110
    const/16 v92, 0x14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->contentPdTop:I

    move/from16 v93, v0

    const/16 v94, 0x6

    const/16 v95, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v92

    move/from16 v2, v93

    move/from16 v3, v94

    move/from16 v4, v95

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1111
    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1114
    new-instance v28, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1115
    .local v28, content_thirdLine:Landroid/widget/LinearLayout;
    new-instance v92, Landroid/view/ViewGroup$LayoutParams;

    const/16 v93, 0x1

    const/16 v94, 0x31

    invoke-direct/range {v92 .. v94}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v28

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1116
    const-string v92, "#d4d7dd"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v28

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1117
    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1120
    new-instance v65, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v65

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1121
    .restart local v65       #priceLl:Landroid/widget/LinearLayout;
    const/16 v92, 0x0

    move-object/from16 v0, v65

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1122
    new-instance v92, Landroid/view/ViewGroup$LayoutParams;

    const/16 v93, 0x78

    const/16 v94, 0x31

    invoke-direct/range {v92 .. v94}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v65

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1123
    const/16 v92, 0x14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->contentPdTop:I

    move/from16 v93, v0

    const/16 v94, 0x6

    const/16 v95, 0x0

    move-object/from16 v0, v65

    move/from16 v1, v92

    move/from16 v2, v93

    move/from16 v3, v94

    move/from16 v4, v95

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1124
    move-object/from16 v0, v24

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1126
    new-instance v67, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v67

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1127
    .restart local v67       #pricelR:Landroid/widget/TextView;
    const-string v92, "#ff6a42"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v67

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mPrice:Ljava/lang/String;

    move-object/from16 v92, v0

    move-object/from16 v0, v67

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1129
    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->normalTextSize:I

    move/from16 v92, v0

    move/from16 v0, v92

    int-to-float v0, v0

    move/from16 v92, v0

    move-object/from16 v0, v67

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1130
    move-object/from16 v0, v65

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1132
    new-instance v91, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    invoke-direct/range {v91 .. v92}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1133
    .restart local v91       #won:Landroid/widget/TextView;
    new-instance v92, Landroid/view/ViewGroup$LayoutParams;

    const/16 v93, -0x2

    .line 1134
    const/16 v94, -0x2

    invoke-direct/range {v92 .. v94}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1133
    invoke-virtual/range {v91 .. v92}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1135
    const-string v92, " \uc6d0"

    invoke-virtual/range {v91 .. v92}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1136
    const-string v92, "#535353"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    invoke-virtual/range {v91 .. v92}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1137
    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->normalTextSize:I

    move/from16 v92, v0

    move/from16 v0, v92

    int-to-float v0, v0

    move/from16 v92, v0

    invoke-virtual/range {v91 .. v92}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1138
    move-object/from16 v0, v65

    move-object/from16 v1, v91

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1140
    new-instance v26, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1141
    .local v26, content_rightLine:Landroid/widget/LinearLayout;
    new-instance v92, Landroid/view/ViewGroup$LayoutParams;

    const/16 v93, 0x1

    const/16 v94, 0x31

    invoke-direct/range {v92 .. v94}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v26

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1142
    const-string v92, "#858da6"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v26

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1143
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1145
    new-instance v45, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1146
    .restart local v45       #line3:Landroid/widget/LinearLayout;
    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1147
    const-string v92, "#858da6"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v45

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1148
    move-object/from16 v0, v84

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1152
    new-instance v83, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v92, 0x1bc

    const/16 v93, 0x3f

    move-object/from16 v0, v83

    move/from16 v1, v92

    move/from16 v2, v93

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1153
    .restart local v83       #svParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v92, 0x1c

    const/16 v93, 0x0

    const/16 v94, 0x22

    const/16 v95, 0x7

    move-object/from16 v0, v83

    move/from16 v1, v92

    move/from16 v2, v93

    move/from16 v3, v94

    move/from16 v4, v95

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1155
    new-instance v81, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v81

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 1156
    .restart local v81       #sv:Landroid/widget/ScrollView;
    move-object/from16 v0, v81

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1157
    const/16 v92, 0x0

    move-object/from16 v0, v81

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setScrollbarFadingEnabled(Z)V

    .line 1158
    move-object/from16 v0, v74

    move-object/from16 v1, v81

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1160
    new-instance v82, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v82

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1161
    .local v82, svLayout:Landroid/widget/LinearLayout;
    const/16 v92, 0x1

    move-object/from16 v0, v82

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1162
    invoke-virtual/range {v81 .. v82}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 1165
    new-instance v35, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1166
    .local v35, info:Landroid/widget/TextView;
    const-string v92, "#8f9bb3"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v35

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->infoMessage:Ljava/lang/String;

    move-object/from16 v92, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1168
    const/high16 v92, 0x4150

    move-object/from16 v0, v35

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1169
    move-object/from16 v0, v82

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1171
    new-instance v73, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v73

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1172
    .restart local v73       #rockInfo:Landroid/widget/TextView;
    const-string v92, "#8f9bb3"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v73

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1173
    const-string v92, "* \uc0c1\ud488 \uacb0\uc81c \uc2dc U+ \uc571\ub9c8\ucf13\uc744 \ud1b5\ud55c \ubcf8\uc778 \uc778\uc99d \uc11c\ube44\uc2a4\ub97c \uc774\uc6a9\ud558\uc2e4 \uc218 \uc788\uc2b5\ub2c8\ub2e4."

    move-object/from16 v0, v73

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1174
    const v92, 0x4154cccd

    move-object/from16 v0, v73

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1175
    move-object/from16 v0, v82

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1178
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v92

    new-instance v93, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v94, v0

    invoke-static/range {v94 .. v94}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v94

    invoke-direct/range {v93 .. v94}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v94, "popup_btn_bg.png"

    invoke-virtual/range {v93 .. v94}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v93

    invoke-virtual/range {v93 .. v93}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v36

    .line 1179
    const/16 v92, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v92

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v62

    .line 1183
    .restart local v62       #popup_btn_bg:Landroid/graphics/drawable/Drawable;
    new-instance v8, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1185
    .restart local v8       #bottom:Landroid/widget/LinearLayout;
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v92, 0x1df

    const/16 v93, 0x3c

    move/from16 v0, v92

    move/from16 v1, v93

    invoke-direct {v9, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1186
    .restart local v9       #btnParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v92, 0xb

    const/16 v93, 0x0

    const/16 v94, 0xa

    const/16 v95, 0x0

    move/from16 v0, v92

    move/from16 v1, v93

    move/from16 v2, v94

    move/from16 v3, v95

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1187
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1188
    move-object/from16 v0, v62

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1189
    const/16 v92, 0x0

    move/from16 v0, v92

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1190
    const/16 v92, 0x11

    move/from16 v0, v92

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1191
    move-object/from16 v0, v74

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1195
    new-instance v60, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v60 .. v60}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 1196
    .restart local v60       #okDrawables:Landroid/graphics/drawable/StateListDrawable;
    new-instance v11, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v11}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 1198
    .restart local v11       #cancelDrawables:Landroid/graphics/drawable/StateListDrawable;
    const v77, 0x10100a0

    .line 1199
    .restart local v77       #stateChecked:I
    const v78, 0x101009c

    .line 1200
    .restart local v78       #stateFocused:I
    const v79, 0x10100a7

    .line 1201
    .restart local v79       #statePressed:I
    const v80, 0x101009d

    .line 1203
    .restart local v80       #stateWindowFocused:I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v92

    new-instance v93, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v94, v0

    invoke-static/range {v94 .. v94}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v94

    invoke-direct/range {v93 .. v94}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v94, "menu_btn.9.png"

    invoke-virtual/range {v93 .. v94}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v93

    invoke-virtual/range {v93 .. v93}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v36

    .line 1204
    const/16 v92, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v92

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v52

    .line 1205
    .restart local v52       #menu_btn:Landroid/graphics/drawable/Drawable;
    const/16 v36, 0x0

    .line 1206
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v92

    new-instance v93, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v94, v0

    invoke-static/range {v94 .. v94}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v94

    invoke-direct/range {v93 .. v94}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v94, "menu_btn_pressed.9.png"

    invoke-virtual/range {v93 .. v94}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v93

    invoke-virtual/range {v93 .. v93}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v36

    .line 1207
    const/16 v92, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v92

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v54

    .line 1208
    .restart local v54       #menu_btn_pressed:Landroid/graphics/drawable/Drawable;
    const/16 v36, 0x0

    .line 1209
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v92

    new-instance v93, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v94, v0

    invoke-static/range {v94 .. v94}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v94

    invoke-direct/range {v93 .. v94}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v94, "menu_btn_active.9.png"

    invoke-virtual/range {v93 .. v94}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v93

    invoke-virtual/range {v93 .. v93}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v36

    .line 1210
    const/16 v92, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v92

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v53

    .line 1211
    .restart local v53       #menu_btn_active:Landroid/graphics/drawable/Drawable;
    const/16 v36, 0x0

    .line 1213
    const/16 v92, 0x2

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aput v77, v92, v93

    const/16 v93, 0x1

    move/from16 v0, v80

    neg-int v0, v0

    move/from16 v94, v0

    aput v94, v92, v93

    move-object/from16 v0, v60

    move-object/from16 v1, v92

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1214
    const/16 v92, 0x2

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    const/16 v93, 0x0

    move/from16 v0, v77

    neg-int v0, v0

    move/from16 v94, v0

    aput v94, v92, v93

    const/16 v93, 0x1

    move/from16 v0, v80

    neg-int v0, v0

    move/from16 v94, v0

    aput v94, v92, v93

    move-object/from16 v0, v60

    move-object/from16 v1, v92

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1215
    const/16 v92, 0x2

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aput v77, v92, v93

    const/16 v93, 0x1

    aput v79, v92, v93

    move-object/from16 v0, v60

    move-object/from16 v1, v92

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1216
    const/16 v92, 0x2

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    const/16 v93, 0x0

    move/from16 v0, v77

    neg-int v0, v0

    move/from16 v94, v0

    aput v94, v92, v93

    const/16 v93, 0x1

    aput v79, v92, v93

    move-object/from16 v0, v60

    move-object/from16 v1, v92

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1217
    const/16 v92, 0x2

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aput v77, v92, v93

    const/16 v93, 0x1

    aput v78, v92, v93

    move-object/from16 v0, v60

    move-object/from16 v1, v92

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1218
    const/16 v92, 0x2

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    const/16 v93, 0x0

    move/from16 v0, v77

    neg-int v0, v0

    move/from16 v94, v0

    aput v94, v92, v93

    const/16 v93, 0x1

    aput v78, v92, v93

    move-object/from16 v0, v60

    move-object/from16 v1, v92

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1219
    const/16 v92, 0x1

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aput v77, v92, v93

    move-object/from16 v0, v60

    move-object/from16 v1, v92

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1220
    const/16 v92, 0x1

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    const/16 v93, 0x0

    move/from16 v0, v77

    neg-int v0, v0

    move/from16 v94, v0

    aput v94, v92, v93

    move-object/from16 v0, v60

    move-object/from16 v1, v92

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1221
    const/16 v92, 0x0

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v92

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1223
    new-instance v92, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v93, v0

    invoke-direct/range {v92 .. v93}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v92

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->purchaseBtn:Landroid/widget/Button;

    .line 1224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->purchaseBtn:Landroid/widget/Button;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1226
    new-instance v69, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v92, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->buttonHeight:I

    move/from16 v93, v0

    const/high16 v94, 0x3f80

    move-object/from16 v0, v69

    move/from16 v1, v92

    move/from16 v2, v93

    move/from16 v3, v94

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1227
    .restart local v69       #purchaseBtnParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v92, 0xf

    const/16 v93, 0x6

    const/16 v94, 0x1

    const/16 v95, 0x4

    move-object/from16 v0, v69

    move/from16 v1, v92

    move/from16 v2, v93

    move/from16 v3, v94

    move/from16 v4, v95

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->purchaseBtn:Landroid/widget/Button;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->purchaseBtn:Landroid/widget/Button;

    move-object/from16 v92, v0

    const/16 v93, 0x11

    invoke-virtual/range {v92 .. v93}, Landroid/widget/Button;->setGravity(I)V

    .line 1230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->purchaseBtn:Landroid/widget/Button;

    move-object/from16 v92, v0

    const-string v93, "\uad6c\ub9e4"

    invoke-virtual/range {v92 .. v93}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->purchaseBtn:Landroid/widget/Button;

    move-object/from16 v92, v0

    const v93, 0x4195999a

    invoke-virtual/range {v92 .. v93}, Landroid/widget/Button;->setTextSize(F)V

    .line 1232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->purchaseBtn:Landroid/widget/Button;

    move-object/from16 v92, v0

    new-instance v93, Landroid/content/res/ColorStateList;

    .line 1233
    const/16 v94, 0x2

    move/from16 v0, v94

    new-array v0, v0, [[I

    move-object/from16 v94, v0

    const/16 v95, 0x0

    .line 1234
    const/16 v96, 0x1

    move/from16 v0, v96

    new-array v0, v0, [I

    move-object/from16 v96, v0

    const/16 v97, 0x0

    aput v79, v96, v97

    aput-object v96, v94, v95

    const/16 v95, 0x1

    .line 1235
    const/16 v96, 0x0

    move/from16 v0, v96

    new-array v0, v0, [I

    move-object/from16 v96, v0

    aput-object v96, v94, v95

    .line 1236
    const/16 v95, 0x2

    move/from16 v0, v95

    new-array v0, v0, [I

    move-object/from16 v95, v0

    const/16 v96, 0x0

    .line 1237
    const-string v97, "#ffffff"

    invoke-static/range {v97 .. v97}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v97

    aput v97, v95, v96

    const/16 v96, 0x1

    .line 1238
    const-string v97, "#2c3b65"

    invoke-static/range {v97 .. v97}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v97

    aput v97, v95, v96

    invoke-direct/range {v93 .. v95}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1232
    invoke-virtual/range {v92 .. v93}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->purchaseBtn:Landroid/widget/Button;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1243
    const/16 v92, 0x2

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aput v77, v92, v93

    const/16 v93, 0x1

    move/from16 v0, v80

    neg-int v0, v0

    move/from16 v94, v0

    aput v94, v92, v93

    move-object/from16 v0, v92

    move-object/from16 v1, v52

    invoke-virtual {v11, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1244
    const/16 v92, 0x2

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    const/16 v93, 0x0

    move/from16 v0, v77

    neg-int v0, v0

    move/from16 v94, v0

    aput v94, v92, v93

    const/16 v93, 0x1

    move/from16 v0, v80

    neg-int v0, v0

    move/from16 v94, v0

    aput v94, v92, v93

    move-object/from16 v0, v92

    move-object/from16 v1, v52

    invoke-virtual {v11, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1245
    const/16 v92, 0x2

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aput v77, v92, v93

    const/16 v93, 0x1

    aput v79, v92, v93

    move-object/from16 v0, v92

    move-object/from16 v1, v54

    invoke-virtual {v11, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1246
    const/16 v92, 0x2

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    const/16 v93, 0x0

    move/from16 v0, v77

    neg-int v0, v0

    move/from16 v94, v0

    aput v94, v92, v93

    const/16 v93, 0x1

    aput v79, v92, v93

    move-object/from16 v0, v92

    move-object/from16 v1, v54

    invoke-virtual {v11, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1247
    const/16 v92, 0x2

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aput v77, v92, v93

    const/16 v93, 0x1

    aput v78, v92, v93

    move-object/from16 v0, v92

    move-object/from16 v1, v53

    invoke-virtual {v11, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1248
    const/16 v92, 0x2

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    const/16 v93, 0x0

    move/from16 v0, v77

    neg-int v0, v0

    move/from16 v94, v0

    aput v94, v92, v93

    const/16 v93, 0x1

    aput v78, v92, v93

    move-object/from16 v0, v92

    move-object/from16 v1, v53

    invoke-virtual {v11, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1249
    const/16 v92, 0x1

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    const/16 v93, 0x0

    aput v77, v92, v93

    move-object/from16 v0, v92

    move-object/from16 v1, v54

    invoke-virtual {v11, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1250
    const/16 v92, 0x1

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    const/16 v93, 0x0

    move/from16 v0, v77

    neg-int v0, v0

    move/from16 v94, v0

    aput v94, v92, v93

    move-object/from16 v0, v92

    move-object/from16 v1, v52

    invoke-virtual {v11, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1251
    const/16 v92, 0x0

    move/from16 v0, v92

    new-array v0, v0, [I

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    move-object/from16 v1, v54

    invoke-virtual {v11, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1253
    new-instance v92, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v93, v0

    invoke-direct/range {v92 .. v93}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v92

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->cancelBtn:Landroid/widget/Button;

    .line 1254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->cancelBtn:Landroid/widget/Button;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1256
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v92, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->buttonHeight:I

    move/from16 v93, v0

    const/high16 v94, 0x3f80

    move/from16 v0, v92

    move/from16 v1, v93

    move/from16 v2, v94

    invoke-direct {v10, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1257
    .restart local v10       #cancelBtnParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v92, 0x0

    const/16 v93, 0x6

    const/16 v94, 0xf

    const/16 v95, 0x4

    move/from16 v0, v92

    move/from16 v1, v93

    move/from16 v2, v94

    move/from16 v3, v95

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->cancelBtn:Landroid/widget/Button;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->cancelBtn:Landroid/widget/Button;

    move-object/from16 v92, v0

    const/16 v93, 0x11

    invoke-virtual/range {v92 .. v93}, Landroid/widget/Button;->setGravity(I)V

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->cancelBtn:Landroid/widget/Button;

    move-object/from16 v92, v0

    const-string v93, "\ucde8\uc18c"

    invoke-virtual/range {v92 .. v93}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->cancelBtn:Landroid/widget/Button;

    move-object/from16 v92, v0

    const v93, 0x4195999a

    invoke-virtual/range {v92 .. v93}, Landroid/widget/Button;->setTextSize(F)V

    .line 1262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->cancelBtn:Landroid/widget/Button;

    move-object/from16 v92, v0

    new-instance v93, Landroid/content/res/ColorStateList;

    .line 1263
    const/16 v94, 0x2

    move/from16 v0, v94

    new-array v0, v0, [[I

    move-object/from16 v94, v0

    const/16 v95, 0x0

    .line 1264
    const/16 v96, 0x1

    move/from16 v0, v96

    new-array v0, v0, [I

    move-object/from16 v96, v0

    const/16 v97, 0x0

    aput v79, v96, v97

    aput-object v96, v94, v95

    const/16 v95, 0x1

    .line 1265
    const/16 v96, 0x0

    move/from16 v0, v96

    new-array v0, v0, [I

    move-object/from16 v96, v0

    aput-object v96, v94, v95

    .line 1266
    const/16 v95, 0x2

    move/from16 v0, v95

    new-array v0, v0, [I

    move-object/from16 v95, v0

    const/16 v96, 0x0

    .line 1267
    const-string v97, "#ffffff"

    invoke-static/range {v97 .. v97}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v97

    aput v97, v95, v96

    const/16 v96, 0x1

    .line 1268
    const-string v97, "#2c3b65"

    invoke-static/range {v97 .. v97}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v97

    aput v97, v95, v96

    invoke-direct/range {v93 .. v95}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1262
    invoke-virtual/range {v92 .. v93}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->cancelBtn:Landroid/widget/Button;

    move-object/from16 v92, v0

    move-object/from16 v0, v92

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1273
    new-instance v50, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v50

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1275
    .restart local v50       #logoView:Landroid/widget/LinearLayout;
    new-instance v51, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v92, 0x1e0

    const/16 v93, 0x24

    move-object/from16 v0, v51

    move/from16 v1, v92

    move/from16 v2, v93

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1276
    .restart local v51       #logoViewParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v92, 0xa

    const/16 v93, 0x6

    const/16 v94, 0xc

    const/16 v95, 0xa

    move-object/from16 v0, v51

    move/from16 v1, v92

    move/from16 v2, v93

    move/from16 v3, v94

    move/from16 v4, v95

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1277
    invoke-virtual/range {v50 .. v51}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1278
    const/16 v92, 0x0

    move-object/from16 v0, v50

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1279
    move-object/from16 v0, v74

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1281
    new-instance v37, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1282
    .restart local v37       #leftBlank:Landroid/widget/LinearLayout;
    new-instance v92, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v93, 0x0

    const/16 v94, 0x1e

    const v95, 0x3e99999a

    invoke-direct/range {v92 .. v95}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v37

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1283
    move-object/from16 v0, v50

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1285
    new-instance v49, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1286
    .restart local v49       #logo:Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v92

    new-instance v93, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v94, v0

    invoke-static/range {v94 .. v94}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v94

    invoke-direct/range {v93 .. v94}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v94, "lguplus_logo.png"

    invoke-virtual/range {v93 .. v94}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v93

    invoke-virtual/range {v93 .. v93}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v93

    invoke-virtual/range {v92 .. v93}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v36

    .line 1287
    const/16 v92, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v92

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v42

    .line 1288
    .restart local v42       #lguplusLogo:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v49

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1289
    new-instance v92, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v93, 0x0

    const/16 v94, 0x1e

    const v95, 0x3e99999a

    invoke-direct/range {v92 .. v95}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v49

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1290
    move-object/from16 v0, v50

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1292
    new-instance v90, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v92, v0

    move-object/from16 v0, v90

    move-object/from16 v1, v92

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1293
    .restart local v90       #version:Landroid/widget/TextView;
    new-instance v92, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v93, 0x0

    const/16 v94, 0x1e

    const v95, 0x3e99999a

    invoke-direct/range {v92 .. v95}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v90

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1294
    sget-object v92, Lcom/feelingk/lguiab/common/Defines;->SDK_VERSION_INFO:Ljava/lang/String;

    move-object/from16 v0, v90

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1295
    const/16 v92, 0x0

    const/16 v93, 0x5

    const/16 v94, 0x0

    const/16 v95, 0x0

    move-object/from16 v0, v90

    move/from16 v1, v92

    move/from16 v2, v93

    move/from16 v3, v94

    move/from16 v4, v95

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1296
    const/16 v92, 0x5

    move-object/from16 v0, v90

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1297
    const v92, 0x4134cccd

    move-object/from16 v0, v90

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1298
    const-string v92, "#b8b8b8"

    invoke-static/range {v92 .. v92}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v92

    move-object/from16 v0, v90

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1299
    move-object/from16 v0, v50

    move-object/from16 v1, v90

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1301
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->setContentView(Landroid/view/View;)V

    .line 1303
    const-string v92, "PurchaseDlg"

    invoke-static/range {v92 .. v92}, Lcom/feelingk/lguiab/LguIAPLib;->setDialogType(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1095
    .end local v8           #bottom:Landroid/widget/LinearLayout;
    .end local v9           #btnParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v10           #cancelBtnParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v11           #cancelDrawables:Landroid/graphics/drawable/StateListDrawable;
    .end local v26           #content_rightLine:Landroid/widget/LinearLayout;
    .end local v27           #content_secondLine:Landroid/widget/LinearLayout;
    .end local v28           #content_thirdLine:Landroid/widget/LinearLayout;
    .end local v32           #datelR:Landroid/widget/TextView;
    .end local v35           #info:Landroid/widget/TextView;
    .end local v37           #leftBlank:Landroid/widget/LinearLayout;
    .end local v42           #lguplusLogo:Landroid/graphics/drawable/Drawable;
    .end local v45           #line3:Landroid/widget/LinearLayout;
    .end local v49           #logo:Landroid/widget/ImageView;
    .end local v50           #logoView:Landroid/widget/LinearLayout;
    .end local v51           #logoViewParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v52           #menu_btn:Landroid/graphics/drawable/Drawable;
    .end local v53           #menu_btn_active:Landroid/graphics/drawable/Drawable;
    .end local v54           #menu_btn_pressed:Landroid/graphics/drawable/Drawable;
    .end local v60           #okDrawables:Landroid/graphics/drawable/StateListDrawable;
    .end local v62           #popup_btn_bg:Landroid/graphics/drawable/Drawable;
    .end local v65           #priceLl:Landroid/widget/LinearLayout;
    .end local v67           #pricelR:Landroid/widget/TextView;
    .end local v69           #purchaseBtnParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v73           #rockInfo:Landroid/widget/TextView;
    .end local v77           #stateChecked:I
    .end local v78           #stateFocused:I
    .end local v79           #statePressed:I
    .end local v80           #stateWindowFocused:I
    .end local v81           #sv:Landroid/widget/ScrollView;
    .end local v82           #svLayout:Landroid/widget/LinearLayout;
    .end local v83           #svParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v90           #version:Landroid/widget/TextView;
    .end local v91           #won:Landroid/widget/TextView;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mPname:Ljava/lang/String;

    move-object/from16 v92, v0

    move-object/from16 v0, v59

    move-object/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method private viewPortrait()V
    .locals 89

    .prologue
    .line 1314
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->hvga:Z

    move/from16 v83, v0

    if-eqz v83, :cond_6

    .line 1315
    const/16 v83, 0x128

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->totalWidth:I

    .line 1316
    const/16 v83, 0x180

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->totalHeight:I

    .line 1317
    const/16 v83, 0x114

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->titleWidth:I

    .line 1318
    const/16 v83, 0x2a

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->titleHeight:I

    .line 1319
    const/16 v83, 0x8

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->titlePdB:I

    .line 1320
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->anyDensity:Z

    move/from16 v83, v0

    if-nez v83, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->opView:Z

    move/from16 v83, v0

    if-eqz v83, :cond_0

    .line 1321
    const/16 v83, 0x11e

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->titleWidth:I

    .line 1322
    const/16 v83, 0xd

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->titlePdB:I

    .line 1324
    :cond_0
    const/16 v83, 0x10

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->titleTextSize:I

    .line 1325
    const/16 v83, 0xe

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->normalTextSize:I

    .line 1326
    const/16 v83, 0xfd

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->tableWidth:I

    .line 1327
    const/16 v83, 0x7c

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->tableHeight:I

    .line 1328
    const/16 v83, 0x12

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->tableLeftPd:I

    .line 1329
    const/16 v83, 0x19

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->tableRightPd:I

    .line 1330
    const/16 v83, 0x28

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->heightLineHeight:I

    .line 1331
    const/16 v83, 0x6e

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->listWidth:I

    .line 1332
    const/16 v83, 0x28

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->listHeight:I

    .line 1333
    const/16 v83, 0x8c

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->contentWidth:I

    .line 1334
    const/16 v83, 0x34

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->buttonHeight:I

    .line 1335
    const/16 v83, 0xd

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->contentPdTop:I

    .line 1336
    const/16 v83, 0xd

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->listPdTop:I

    .line 1337
    const/16 v83, 0x55

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->infoLayoutHeight:I

    .line 1338
    const/16 v83, 0x44

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->buttonBgHeight:I

    .line 1339
    const/16 v83, 0x113

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->buttonBgWidth:I

    .line 1388
    :goto_0
    new-instance v37, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v83, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v83

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1390
    .local v37, ll:Landroid/widget/LinearLayout;
    new-instance v23, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v83, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v83

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1391
    .local v23, ff:Landroid/widget/FrameLayout;
    new-instance v83, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->totalWidth:I

    move/from16 v84, v0

    const/16 v85, -0x2

    invoke-direct/range {v83 .. v85}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v23

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1392
    move-object/from16 v0, v37

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1394
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v83

    new-instance v84, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v85, v0

    invoke-static/range {v85 .. v85}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v85

    invoke-direct/range {v84 .. v85}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v85, "popup_bg.9.png"

    invoke-virtual/range {v84 .. v85}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v84

    invoke-virtual/range {v84 .. v84}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v84

    invoke-virtual/range {v83 .. v84}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v27

    .line 1395
    .local v27, is:Ljava/io/InputStream;
    const/16 v83, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v83

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v54

    .line 1398
    .local v54, popup_bg:Landroid/graphics/drawable/Drawable;
    new-instance v24, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v83, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v83

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1399
    .local v24, frame:Landroid/widget/LinearLayout;
    new-instance v83, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->totalWidth:I

    move/from16 v84, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->totalHeight:I

    move/from16 v85, v0

    invoke-direct/range {v83 .. v85}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v24

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1400
    move-object/from16 v0, v24

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1401
    invoke-virtual/range {v23 .. v24}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1403
    new-instance v9, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v83, v0

    move-object/from16 v0, v83

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1404
    .local v9, blank:Landroid/widget/LinearLayout;
    new-instance v83, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->totalWidth:I

    move/from16 v84, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->totalHeight:I

    move/from16 v85, v0

    invoke-direct/range {v83 .. v85}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v83

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1405
    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1407
    new-instance v68, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v83, v0

    move-object/from16 v0, v68

    move-object/from16 v1, v83

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1410
    .local v68, root:Landroid/widget/LinearLayout;
    new-instance v69, Landroid/widget/LinearLayout$LayoutParams;

    new-instance v83, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->totalWidth:I

    move/from16 v84, v0

    const/16 v85, -0x2

    invoke-direct/range {v83 .. v85}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v69

    move-object/from16 v1, v83

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1411
    .local v69, rootParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v68 .. v69}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1412
    const/16 v83, 0x1

    move-object/from16 v0, v68

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1413
    move-object/from16 v0, v68

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1415
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v83

    new-instance v84, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v85, v0

    invoke-static/range {v85 .. v85}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v85

    invoke-direct/range {v84 .. v85}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v85, "popup_title.png"

    invoke-virtual/range {v84 .. v85}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v84

    invoke-virtual/range {v84 .. v84}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v84

    invoke-virtual/range {v83 .. v84}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v27

    .line 1416
    const/16 v83, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v83

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v56

    .line 1418
    .local v56, popup_title:Landroid/graphics/drawable/Drawable;
    new-instance v83, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v84, v0

    invoke-direct/range {v83 .. v84}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v83

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->title:Landroid/widget/TextView;

    .line 1420
    new-instance v80, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->titleWidth:I

    move/from16 v83, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->titleHeight:I

    move/from16 v84, v0

    move-object/from16 v0, v80

    move/from16 v1, v83

    move/from16 v2, v84

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1421
    .local v80, titleParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v83, 0xa

    const/16 v84, 0xa

    const/16 v85, 0xa

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->titlePdB:I

    move/from16 v86, v0

    move-object/from16 v0, v80

    move/from16 v1, v83

    move/from16 v2, v84

    move/from16 v3, v85

    move/from16 v4, v86

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1422
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->anyDensity:Z

    move/from16 v83, v0

    if-nez v83, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->opView:Z

    move/from16 v83, v0

    if-eqz v83, :cond_1

    .line 1423
    const/16 v83, 0x5

    const/16 v84, 0x5

    const/16 v85, 0x5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->titlePdB:I

    move/from16 v86, v0

    move-object/from16 v0, v80

    move/from16 v1, v83

    move/from16 v2, v84

    move/from16 v3, v85

    move/from16 v4, v86

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1424
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->title:Landroid/widget/TextView;

    move-object/from16 v83, v0

    move-object/from16 v0, v83

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->title:Landroid/widget/TextView;

    move-object/from16 v83, v0

    move-object/from16 v0, v83

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->title:Landroid/widget/TextView;

    move-object/from16 v83, v0

    const-string v84, "\uacb0\uc81c\uc548\ub0b4"

    invoke-virtual/range {v83 .. v84}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->title:Landroid/widget/TextView;

    move-object/from16 v83, v0

    const-string v84, "#ffffff"

    invoke-static/range {v84 .. v84}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v84

    invoke-virtual/range {v83 .. v84}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->title:Landroid/widget/TextView;

    move-object/from16 v83, v0

    const/16 v84, 0x11

    invoke-virtual/range {v83 .. v84}, Landroid/widget/TextView;->setGravity(I)V

    .line 1429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->title:Landroid/widget/TextView;

    move-object/from16 v83, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->titleTextSize:I

    move/from16 v84, v0

    move/from16 v0, v84

    int-to-float v0, v0

    move/from16 v84, v0

    invoke-virtual/range {v83 .. v84}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->title:Landroid/widget/TextView;

    move-object/from16 v83, v0

    move-object/from16 v0, v68

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1434
    new-instance v78, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v83, v0

    move-object/from16 v0, v78

    move-object/from16 v1, v83

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1435
    .local v78, table:Landroid/widget/LinearLayout;
    const/16 v83, 0x1

    move-object/from16 v0, v78

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1437
    new-instance v79, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->tableWidth:I

    move/from16 v83, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->tableHeight:I

    move/from16 v84, v0

    move-object/from16 v0, v79

    move/from16 v1, v83

    move/from16 v2, v84

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1438
    .local v79, tableParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->tableLeftPd:I

    move/from16 v83, v0

    const/16 v84, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->tableRightPd:I

    move/from16 v85, v0

    const/16 v86, 0x7

    move-object/from16 v0, v79

    move/from16 v1, v83

    move/from16 v2, v84

    move/from16 v3, v85

    move/from16 v4, v86

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1439
    invoke-virtual/range {v78 .. v79}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1440
    const/16 v83, 0x11

    move-object/from16 v0, v78

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1441
    move-object/from16 v0, v68

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1443
    new-instance v32, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v83, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v83

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1445
    .local v32, line:Landroid/widget/LinearLayout;
    new-instance v36, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->tableWidth:I

    move/from16 v83, v0

    const/16 v84, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v83

    move/from16 v2, v84

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1446
    .local v36, lineParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1447
    const-string v6, "#858da6"

    .line 1448
    .local v6, _858da6:Ljava/lang/String;
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v83

    move-object/from16 v0, v32

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1449
    move-object/from16 v0, v78

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1452
    new-instance v48, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v83, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v83

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1453
    .local v48, nameTable:Landroid/widget/LinearLayout;
    const/16 v83, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1454
    const/16 v83, 0x11

    move-object/from16 v0, v48

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1455
    move-object/from16 v0, v78

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1457
    new-instance v46, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v83, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v83

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1459
    .local v46, nameLineLeft:Landroid/widget/LinearLayout;
    new-instance v25, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v83, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->heightLineHeight:I

    move/from16 v84, v0

    move-object/from16 v0, v25

    move/from16 v1, v83

    move/from16 v2, v84

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1460
    .local v25, heightLineParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v46

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1461
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v83

    move-object/from16 v0, v46

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1462
    move-object/from16 v0, v48

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1465
    new-instance v51, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v83, v0

    move-object/from16 v0, v51

    move-object/from16 v1, v83

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1467
    .local v51, namell:Landroid/widget/LinearLayout;
    new-instance v52, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->listWidth:I

    move/from16 v83, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->listHeight:I

    move/from16 v84, v0

    move-object/from16 v0, v52

    move/from16 v1, v83

    move/from16 v2, v84

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1468
    .local v52, namellParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v51 .. v52}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1469
    const-string v8, "#f9f9f9"

    .line 1470
    .local v8, _f9f9f9:Ljava/lang/String;
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v83

    move-object/from16 v0, v51

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1471
    move-object/from16 v0, v48

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1473
    new-instance v44, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v83, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v83

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1474
    .local v44, name:Landroid/widget/TextView;
    const-string v74, "#2c3b65"

    .line 1475
    .local v74, strColor:Ljava/lang/String;
    invoke-static/range {v74 .. v74}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v83

    move-object/from16 v0, v44

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1476
    const-string v83, "\uc0c1\ud488\uba85"

    move-object/from16 v0, v44

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1477
    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->normalTextSize:I

    move/from16 v83, v0

    move/from16 v0, v83

    int-to-float v0, v0

    move/from16 v83, v0

    move-object/from16 v0, v44

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1478
    const/16 v83, 0x14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->listPdTop:I

    move/from16 v84, v0

    const/16 v85, 0x6

    const/16 v86, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v83

    move/from16 v2, v84

    move/from16 v3, v85

    move/from16 v4, v86

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1479
    move-object/from16 v0, v51

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1481
    new-instance v45, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v83, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v83

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1482
    .local v45, nameLineCenter:Landroid/widget/LinearLayout;
    move-object/from16 v0, v45

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1483
    const-string v7, "#d4d7dd"

    .line 1484
    .local v7, _d4d7dd:Ljava/lang/String;
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v83

    move-object/from16 v0, v45

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1485
    move-object/from16 v0, v48

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1487
    new-instance v49, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v83, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v83

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1489
    .local v49, namelR:Landroid/widget/TextView;
    new-instance v50, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->contentWidth:I

    move/from16 v83, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->listHeight:I

    move/from16 v84, v0

    move-object/from16 v0, v50

    move/from16 v1, v83

    move/from16 v2, v84

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1490
    .local v50, namelRParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v49 .. v50}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1491
    const-string v5, "#535353"

    .line 1492
    .local v5, _535353:Ljava/lang/String;
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v83

    move-object/from16 v0, v49

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1493
    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->normalTextSize:I

    move/from16 v83, v0

    move/from16 v0, v83

    int-to-float v0, v0

    move/from16 v83, v0

    move-object/from16 v0, v49

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mPname:Ljava/lang/String;

    move-object/from16 v83, v0

    invoke-virtual/range {v83 .. v83}, Ljava/lang/String;->length()I

    move-result v83

    const/16 v84, 0xa

    move/from16 v0, v83

    move/from16 v1, v84

    if-lt v0, v1, :cond_8

    .line 1496
    new-instance v83, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mPname:Ljava/lang/String;

    move-object/from16 v84, v0

    const/16 v85, 0x0

    const/16 v86, 0x5

    invoke-virtual/range {v84 .. v86}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v84

    invoke-static/range {v84 .. v84}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v84

    invoke-direct/range {v83 .. v84}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v84, "..."

    invoke-virtual/range {v83 .. v84}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v83

    invoke-virtual/range {v83 .. v83}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1497
    .local v14, convertPname:Ljava/lang/String;
    move-object/from16 v0, v49

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1501
    .end local v14           #convertPname:Ljava/lang/String;
    :goto_1
    const/16 v83, 0x14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->contentPdTop:I

    move/from16 v84, v0

    const/16 v85, 0x6

    const/16 v86, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v83

    move/from16 v2, v84

    move/from16 v3, v85

    move/from16 v4, v86

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1502
    invoke-virtual/range {v48 .. v49}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1504
    new-instance v47, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v83, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v83

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1505
    .local v47, nameLineRight:Landroid/widget/LinearLayout;
    move-object/from16 v0, v47

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1506
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v83

    move-object/from16 v0, v47

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1507
    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1509
    new-instance v33, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v83, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v83

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1510
    .local v33, line2:Landroid/widget/LinearLayout;
    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1511
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v83

    move-object/from16 v0, v33

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1512
    move-object/from16 v0, v78

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1515
    new-instance v28, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v83, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v83

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1516
    .local v28, itemDateTable:Landroid/widget/LinearLayout;
    const/16 v83, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1517
    const/16 v83, 0x11

    move-object/from16 v0, v28

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1518
    move-object/from16 v0, v78

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1520
    new-instance v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v83, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v83

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1521
    .local v17, dateLineLeft:Landroid/widget/LinearLayout;
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1522
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v83

    move-object/from16 v0, v17

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1523
    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1526
    new-instance v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v83, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v83

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1528
    .local v21, datell:Landroid/widget/LinearLayout;
    new-instance v22, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->listWidth:I

    move/from16 v83, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->listHeight:I

    move/from16 v84, v0

    move-object/from16 v0, v22

    move/from16 v1, v83

    move/from16 v2, v84

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1529
    .local v22, datellParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1530
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v83

    move-object/from16 v0, v21

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1531
    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1533
    new-instance v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v83, v0

    move-object/from16 v0, v83

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1534
    .local v15, date:Landroid/widget/TextView;
    invoke-static/range {v74 .. v74}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v83

    move/from16 v0, v83

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1535
    const-string v83, "\uc0ac\uc6a9\uae30\uac04"

    move-object/from16 v0, v83

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1536
    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->normalTextSize:I

    move/from16 v83, v0

    move/from16 v0, v83

    int-to-float v0, v0

    move/from16 v83, v0

    move/from16 v0, v83

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1537
    const/16 v83, 0x14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->listPdTop:I

    move/from16 v84, v0

    const/16 v85, 0x6

    const/16 v86, 0x0

    move/from16 v0, v83

    move/from16 v1, v84

    move/from16 v2, v85

    move/from16 v3, v86

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1538
    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1541
    new-instance v16, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v83, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v83

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1542
    .local v16, dateLineCenter:Landroid/widget/LinearLayout;
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1543
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v83

    move-object/from16 v0, v16

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1544
    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1546
    new-instance v19, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v83, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v83

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1548
    .local v19, datelR:Landroid/widget/TextView;
    new-instance v20, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->contentWidth:I

    move/from16 v83, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->listHeight:I

    move/from16 v84, v0

    move-object/from16 v0, v20

    move/from16 v1, v83

    move/from16 v2, v84

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1549
    .local v20, datelRParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1550
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v83

    move-object/from16 v0, v19

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mProductKind:Ljava/lang/String;

    move-object/from16 v83, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1552
    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->normalTextSize:I

    move/from16 v83, v0

    move/from16 v0, v83

    int-to-float v0, v0

    move/from16 v83, v0

    move-object/from16 v0, v19

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1553
    const/16 v83, 0x14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->contentPdTop:I

    move/from16 v84, v0

    const/16 v85, 0x6

    const/16 v86, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v83

    move/from16 v2, v84

    move/from16 v3, v85

    move/from16 v4, v86

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1554
    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1557
    new-instance v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v83, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v83

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1558
    .local v18, dateLineRight:Landroid/widget/LinearLayout;
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1559
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v83

    move-object/from16 v0, v18

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1560
    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1562
    new-instance v34, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v83, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v83

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1563
    .local v34, line3:Landroid/widget/LinearLayout;
    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1564
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v83

    move-object/from16 v0, v34

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1565
    move-object/from16 v0, v78

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1568
    new-instance v61, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v83, v0

    move-object/from16 v0, v61

    move-object/from16 v1, v83

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1569
    .local v61, priceTable:Landroid/widget/LinearLayout;
    const/16 v83, 0x0

    move-object/from16 v0, v61

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1570
    const/16 v83, 0x11

    move-object/from16 v0, v61

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1571
    move-object/from16 v0, v78

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1573
    new-instance v58, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v83, v0

    move-object/from16 v0, v58

    move-object/from16 v1, v83

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1574
    .local v58, priceLineLeft:Landroid/widget/LinearLayout;
    move-object/from16 v0, v58

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1575
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v83

    move-object/from16 v0, v58

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1576
    move-object/from16 v0, v61

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1579
    new-instance v64, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v83, v0

    move-object/from16 v0, v64

    move-object/from16 v1, v83

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1581
    .local v64, pricell:Landroid/widget/LinearLayout;
    new-instance v65, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->listWidth:I

    move/from16 v83, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->listHeight:I

    move/from16 v84, v0

    move-object/from16 v0, v65

    move/from16 v1, v83

    move/from16 v2, v84

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1582
    .local v65, pricellParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v64 .. v65}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1583
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v83

    move-object/from16 v0, v64

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1584
    move-object/from16 v0, v61

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1586
    new-instance v29, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v83, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v83

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1587
    .local v29, itemPrice:Landroid/widget/TextView;
    invoke-static/range {v74 .. v74}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v83

    move-object/from16 v0, v29

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1588
    const-string v83, "\uacb0\uc81c\uae08\uc561"

    move-object/from16 v0, v29

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1589
    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->normalTextSize:I

    move/from16 v83, v0

    move/from16 v0, v83

    int-to-float v0, v0

    move/from16 v83, v0

    move-object/from16 v0, v29

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1590
    const/16 v83, 0x14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->listPdTop:I

    move/from16 v84, v0

    const/16 v85, 0x6

    const/16 v86, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v83

    move/from16 v2, v84

    move/from16 v3, v85

    move/from16 v4, v86

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1591
    move-object/from16 v0, v64

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1593
    new-instance v57, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v83, v0

    move-object/from16 v0, v57

    move-object/from16 v1, v83

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1594
    .local v57, priceLineCenter:Landroid/widget/LinearLayout;
    move-object/from16 v0, v57

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1595
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v83

    move-object/from16 v0, v57

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1596
    move-object/from16 v0, v61

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1599
    new-instance v60, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v83, v0

    move-object/from16 v0, v60

    move-object/from16 v1, v83

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1600
    .local v60, priceLl:Landroid/widget/LinearLayout;
    const/16 v83, 0x0

    move-object/from16 v0, v60

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1602
    new-instance v63, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->contentWidth:I

    move/from16 v83, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->listHeight:I

    move/from16 v84, v0

    move-object/from16 v0, v63

    move/from16 v1, v83

    move/from16 v2, v84

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1603
    .local v63, pricelRParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v60

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1604
    const/16 v83, 0x14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->contentPdTop:I

    move/from16 v84, v0

    const/16 v85, 0x6

    const/16 v86, 0x0

    move-object/from16 v0, v60

    move/from16 v1, v83

    move/from16 v2, v84

    move/from16 v3, v85

    move/from16 v4, v86

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 1605
    move-object/from16 v0, v61

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1607
    new-instance v62, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v83, v0

    move-object/from16 v0, v62

    move-object/from16 v1, v83

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1608
    .local v62, pricelR:Landroid/widget/TextView;
    const-string v83, "#ff6a42"

    invoke-static/range {v83 .. v83}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v83

    move-object/from16 v0, v62

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mPrice:Ljava/lang/String;

    move-object/from16 v83, v0

    move-object/from16 v0, v62

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1610
    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->normalTextSize:I

    move/from16 v83, v0

    move/from16 v0, v83

    int-to-float v0, v0

    move/from16 v83, v0

    move-object/from16 v0, v62

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1611
    move-object/from16 v0, v60

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1613
    new-instance v82, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v83, v0

    invoke-direct/range {v82 .. v83}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1614
    .local v82, won:Landroid/widget/TextView;
    new-instance v83, Landroid/view/ViewGroup$LayoutParams;

    const/16 v84, -0x2

    const/16 v85, -0x2

    invoke-direct/range {v83 .. v85}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v82 .. v83}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1615
    const-string v83, " \uc6d0"

    invoke-virtual/range {v82 .. v83}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1616
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v83

    invoke-virtual/range {v82 .. v83}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1617
    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->normalTextSize:I

    move/from16 v83, v0

    move/from16 v0, v83

    int-to-float v0, v0

    move/from16 v83, v0

    invoke-virtual/range {v82 .. v83}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1618
    move-object/from16 v0, v60

    move-object/from16 v1, v82

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1621
    new-instance v59, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v83, v0

    move-object/from16 v0, v59

    move-object/from16 v1, v83

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1622
    .local v59, priceLineRight:Landroid/widget/LinearLayout;
    move-object/from16 v0, v59

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1623
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v83

    move-object/from16 v0, v59

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1624
    move-object/from16 v0, v61

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1626
    new-instance v35, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v83, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v83

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1627
    .local v35, line4:Landroid/widget/LinearLayout;
    invoke-virtual/range {v35 .. v36}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1628
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v83

    move-object/from16 v0, v35

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1629
    move-object/from16 v0, v78

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1634
    new-instance v77, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v83, -0x1

    .line 1635
    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->infoLayoutHeight:I

    move/from16 v84, v0

    .line 1634
    move-object/from16 v0, v77

    move/from16 v1, v83

    move/from16 v2, v84

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1636
    .local v77, svParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v83, 0x16

    const/16 v84, 0x0

    const/16 v85, 0x1c

    const/16 v86, 0xf

    move-object/from16 v0, v77

    move/from16 v1, v83

    move/from16 v2, v84

    move/from16 v3, v85

    move/from16 v4, v86

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1637
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->hd:Z

    move/from16 v83, v0

    if-eqz v83, :cond_2

    .line 1638
    const/16 v83, 0x26

    const/16 v84, 0xf

    const/16 v85, 0xf

    const/16 v86, 0x12

    move-object/from16 v0, v77

    move/from16 v1, v83

    move/from16 v2, v84

    move/from16 v3, v85

    move/from16 v4, v86

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1639
    :cond_2
    new-instance v75, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v83, v0

    move-object/from16 v0, v75

    move-object/from16 v1, v83

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 1640
    .local v75, sv:Landroid/widget/ScrollView;
    move-object/from16 v0, v75

    move-object/from16 v1, v77

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1641
    const/16 v83, 0x0

    move-object/from16 v0, v75

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setScrollbarFadingEnabled(Z)V

    .line 1642
    move-object/from16 v0, v68

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1644
    new-instance v76, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v83, v0

    move-object/from16 v0, v76

    move-object/from16 v1, v83

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1645
    .local v76, svLayout:Landroid/widget/LinearLayout;
    const/16 v83, 0x1

    move-object/from16 v0, v76

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1646
    invoke-virtual/range {v75 .. v76}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 1648
    new-instance v26, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v83, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v83

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1649
    .local v26, info:Landroid/widget/TextView;
    const-string v83, "#8f9bb3"

    invoke-static/range {v83 .. v83}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v83

    move-object/from16 v0, v26

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->infoMessage:Ljava/lang/String;

    move-object/from16 v83, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1651
    const v83, 0x4154cccd

    move-object/from16 v0, v26

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1652
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->hd:Z

    move/from16 v83, v0

    if-eqz v83, :cond_3

    .line 1653
    const/high16 v83, 0x41b8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->ptSize:F

    move/from16 v84, v0

    div-float v83, v83, v84

    move-object/from16 v0, v26

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1654
    :cond_3
    move-object/from16 v0, v76

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1656
    new-instance v67, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v83, v0

    move-object/from16 v0, v67

    move-object/from16 v1, v83

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1657
    .local v67, rockInfo:Landroid/widget/TextView;
    const-string v83, "#8f9bb3"

    invoke-static/range {v83 .. v83}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v83

    move-object/from16 v0, v67

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1658
    const-string v83, "* \uc0c1\ud488 \uacb0\uc81c \uc2dc U+ \uc571\ub9c8\ucf13\uc744 \ud1b5\ud55c \ubcf8\uc778 \uc778\uc99d \uc11c\ube44\uc2a4\ub97c \uc774\uc6a9\ud558\uc2e4 \uc218 \uc788\uc2b5\ub2c8\ub2e4."

    move-object/from16 v0, v67

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1659
    const v83, 0x4154cccd

    move-object/from16 v0, v67

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1660
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->hd:Z

    move/from16 v83, v0

    if-eqz v83, :cond_4

    .line 1661
    const/high16 v83, 0x41b8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->ptSize:F

    move/from16 v84, v0

    div-float v83, v83, v84

    move-object/from16 v0, v67

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1662
    :cond_4
    move-object/from16 v0, v76

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1664
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v83

    new-instance v84, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v85, v0

    invoke-static/range {v85 .. v85}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v85

    invoke-direct/range {v84 .. v85}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v85, "popup_btn_bg.png"

    invoke-virtual/range {v84 .. v85}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v84

    invoke-virtual/range {v84 .. v84}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v84

    invoke-virtual/range {v83 .. v84}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v27

    .line 1665
    const/16 v83, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v83

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v55

    .line 1669
    .local v55, popup_btn_bg:Landroid/graphics/drawable/Drawable;
    new-instance v10, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v83, v0

    move-object/from16 v0, v83

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1671
    .local v10, bottom:Landroid/widget/LinearLayout;
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->buttonBgWidth:I

    move/from16 v83, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->buttonBgHeight:I

    move/from16 v84, v0

    move/from16 v0, v83

    move/from16 v1, v84

    invoke-direct {v11, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1672
    .local v11, btnParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v83, 0x11

    move/from16 v0, v83

    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1673
    const/16 v83, 0xb

    const/16 v84, 0x0

    const/16 v85, 0xa

    const/16 v86, 0x0

    move/from16 v0, v83

    move/from16 v1, v84

    move/from16 v2, v85

    move/from16 v3, v86

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1674
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->hd:Z

    move/from16 v83, v0

    if-eqz v83, :cond_5

    .line 1675
    const/16 v83, 0xb

    const/16 v84, 0xc

    const/16 v85, 0xa

    const/16 v86, 0x0

    move/from16 v0, v83

    move/from16 v1, v84

    move/from16 v2, v85

    move/from16 v3, v86

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1676
    :cond_5
    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1677
    move-object/from16 v0, v55

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1678
    const/16 v83, 0x0

    move/from16 v0, v83

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1679
    const/16 v83, 0x11

    move/from16 v0, v83

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1680
    move-object/from16 v0, v68

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1686
    new-instance v53, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v53 .. v53}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 1687
    .local v53, okDrawables:Landroid/graphics/drawable/StateListDrawable;
    new-instance v13, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v13}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 1689
    .local v13, cancelDrawables:Landroid/graphics/drawable/StateListDrawable;
    const v70, 0x10100a0

    .line 1690
    .local v70, stateChecked:I
    const v71, 0x101009c

    .line 1691
    .local v71, stateFocused:I
    const v72, 0x10100a7

    .line 1692
    .local v72, statePressed:I
    const v73, 0x101009d

    .line 1694
    .local v73, stateWindowFocused:I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v83

    new-instance v84, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v85, v0

    invoke-static/range {v85 .. v85}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v85

    invoke-direct/range {v84 .. v85}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v85, "menu_btn.9.png"

    invoke-virtual/range {v84 .. v85}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v84

    invoke-virtual/range {v84 .. v84}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v84

    invoke-virtual/range {v83 .. v84}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v27

    .line 1695
    const/16 v83, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v83

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v41

    .line 1696
    .local v41, menu_btn:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v83

    new-instance v84, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v85, v0

    invoke-static/range {v85 .. v85}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v85

    invoke-direct/range {v84 .. v85}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v85, "menu_btn_pressed.9.png"

    invoke-virtual/range {v84 .. v85}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v84

    invoke-virtual/range {v84 .. v84}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v84

    invoke-virtual/range {v83 .. v84}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v27

    .line 1697
    const/16 v83, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v83

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v43

    .line 1698
    .local v43, menu_btn_pressed:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v83

    new-instance v84, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v85, v0

    invoke-static/range {v85 .. v85}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v85

    invoke-direct/range {v84 .. v85}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v85, "menu_btn_active.9.png"

    invoke-virtual/range {v84 .. v85}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v84

    invoke-virtual/range {v84 .. v84}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v84

    invoke-virtual/range {v83 .. v84}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v27

    .line 1699
    const/16 v83, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v83

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v42

    .line 1701
    .local v42, menu_btn_active:Landroid/graphics/drawable/Drawable;
    const/16 v83, 0x2

    move/from16 v0, v83

    new-array v0, v0, [I

    move-object/from16 v83, v0

    const/16 v84, 0x0

    aput v70, v83, v84

    const/16 v84, 0x1

    move/from16 v0, v73

    neg-int v0, v0

    move/from16 v85, v0

    aput v85, v83, v84

    move-object/from16 v0, v53

    move-object/from16 v1, v83

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1702
    const/16 v83, 0x2

    move/from16 v0, v83

    new-array v0, v0, [I

    move-object/from16 v83, v0

    const/16 v84, 0x0

    move/from16 v0, v70

    neg-int v0, v0

    move/from16 v85, v0

    aput v85, v83, v84

    const/16 v84, 0x1

    move/from16 v0, v73

    neg-int v0, v0

    move/from16 v85, v0

    aput v85, v83, v84

    move-object/from16 v0, v53

    move-object/from16 v1, v83

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1703
    const/16 v83, 0x2

    move/from16 v0, v83

    new-array v0, v0, [I

    move-object/from16 v83, v0

    const/16 v84, 0x0

    aput v70, v83, v84

    const/16 v84, 0x1

    aput v72, v83, v84

    move-object/from16 v0, v53

    move-object/from16 v1, v83

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1704
    const/16 v83, 0x2

    move/from16 v0, v83

    new-array v0, v0, [I

    move-object/from16 v83, v0

    const/16 v84, 0x0

    move/from16 v0, v70

    neg-int v0, v0

    move/from16 v85, v0

    aput v85, v83, v84

    const/16 v84, 0x1

    aput v72, v83, v84

    move-object/from16 v0, v53

    move-object/from16 v1, v83

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1705
    const/16 v83, 0x2

    move/from16 v0, v83

    new-array v0, v0, [I

    move-object/from16 v83, v0

    const/16 v84, 0x0

    aput v70, v83, v84

    const/16 v84, 0x1

    aput v71, v83, v84

    move-object/from16 v0, v53

    move-object/from16 v1, v83

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1706
    const/16 v83, 0x2

    move/from16 v0, v83

    new-array v0, v0, [I

    move-object/from16 v83, v0

    const/16 v84, 0x0

    move/from16 v0, v70

    neg-int v0, v0

    move/from16 v85, v0

    aput v85, v83, v84

    const/16 v84, 0x1

    aput v71, v83, v84

    move-object/from16 v0, v53

    move-object/from16 v1, v83

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1707
    const/16 v83, 0x1

    move/from16 v0, v83

    new-array v0, v0, [I

    move-object/from16 v83, v0

    const/16 v84, 0x0

    aput v70, v83, v84

    move-object/from16 v0, v53

    move-object/from16 v1, v83

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1708
    const/16 v83, 0x1

    move/from16 v0, v83

    new-array v0, v0, [I

    move-object/from16 v83, v0

    const/16 v84, 0x0

    move/from16 v0, v70

    neg-int v0, v0

    move/from16 v85, v0

    aput v85, v83, v84

    move-object/from16 v0, v53

    move-object/from16 v1, v83

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1709
    const/16 v83, 0x0

    move/from16 v0, v83

    new-array v0, v0, [I

    move-object/from16 v83, v0

    move-object/from16 v0, v53

    move-object/from16 v1, v83

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1711
    new-instance v83, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v84, v0

    invoke-direct/range {v83 .. v84}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v83

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->purchaseBtn:Landroid/widget/Button;

    .line 1712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->purchaseBtn:Landroid/widget/Button;

    move-object/from16 v83, v0

    move-object/from16 v0, v83

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1714
    new-instance v66, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v83, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->buttonHeight:I

    move/from16 v84, v0

    const/high16 v85, 0x3f80

    move-object/from16 v0, v66

    move/from16 v1, v83

    move/from16 v2, v84

    move/from16 v3, v85

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1715
    .local v66, purchaseBtnParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->hvga:Z

    move/from16 v83, v0

    if-eqz v83, :cond_9

    .line 1716
    const/16 v83, 0xf

    const/16 v84, 0x8

    const/16 v85, 0xa

    const/16 v86, 0x8

    move-object/from16 v0, v66

    move/from16 v1, v83

    move/from16 v2, v84

    move/from16 v3, v85

    move/from16 v4, v86

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1721
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->purchaseBtn:Landroid/widget/Button;

    move-object/from16 v83, v0

    move-object/from16 v0, v83

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->purchaseBtn:Landroid/widget/Button;

    move-object/from16 v83, v0

    const/16 v84, 0x11

    invoke-virtual/range {v83 .. v84}, Landroid/widget/Button;->setGravity(I)V

    .line 1723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->purchaseBtn:Landroid/widget/Button;

    move-object/from16 v83, v0

    const-string v84, "\uad6c\ub9e4"

    invoke-virtual/range {v83 .. v84}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->purchaseBtn:Landroid/widget/Button;

    move-object/from16 v83, v0

    const v84, 0x4195999a

    invoke-virtual/range {v83 .. v84}, Landroid/widget/Button;->setTextSize(F)V

    .line 1725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->purchaseBtn:Landroid/widget/Button;

    move-object/from16 v83, v0

    new-instance v84, Landroid/content/res/ColorStateList;

    .line 1726
    const/16 v85, 0x2

    move/from16 v0, v85

    new-array v0, v0, [[I

    move-object/from16 v85, v0

    const/16 v86, 0x0

    .line 1727
    const/16 v87, 0x1

    move/from16 v0, v87

    new-array v0, v0, [I

    move-object/from16 v87, v0

    const/16 v88, 0x0

    aput v72, v87, v88

    aput-object v87, v85, v86

    const/16 v86, 0x1

    .line 1728
    const/16 v87, 0x0

    move/from16 v0, v87

    new-array v0, v0, [I

    move-object/from16 v87, v0

    aput-object v87, v85, v86

    .line 1729
    const/16 v86, 0x2

    move/from16 v0, v86

    new-array v0, v0, [I

    move-object/from16 v86, v0

    const/16 v87, 0x0

    .line 1730
    const-string v88, "#ffffff"

    invoke-static/range {v88 .. v88}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v88

    aput v88, v86, v87

    const/16 v87, 0x1

    .line 1731
    const-string v88, "#2c3b65"

    invoke-static/range {v88 .. v88}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v88

    aput v88, v86, v87

    invoke-direct/range {v84 .. v86}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1725
    invoke-virtual/range {v83 .. v84}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->purchaseBtn:Landroid/widget/Button;

    move-object/from16 v83, v0

    move-object/from16 v0, v83

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1736
    const/16 v83, 0x2

    move/from16 v0, v83

    new-array v0, v0, [I

    move-object/from16 v83, v0

    const/16 v84, 0x0

    aput v70, v83, v84

    const/16 v84, 0x1

    move/from16 v0, v73

    neg-int v0, v0

    move/from16 v85, v0

    aput v85, v83, v84

    move-object/from16 v0, v83

    move-object/from16 v1, v41

    invoke-virtual {v13, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1737
    const/16 v83, 0x2

    move/from16 v0, v83

    new-array v0, v0, [I

    move-object/from16 v83, v0

    const/16 v84, 0x0

    move/from16 v0, v70

    neg-int v0, v0

    move/from16 v85, v0

    aput v85, v83, v84

    const/16 v84, 0x1

    move/from16 v0, v73

    neg-int v0, v0

    move/from16 v85, v0

    aput v85, v83, v84

    move-object/from16 v0, v83

    move-object/from16 v1, v41

    invoke-virtual {v13, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1738
    const/16 v83, 0x2

    move/from16 v0, v83

    new-array v0, v0, [I

    move-object/from16 v83, v0

    const/16 v84, 0x0

    aput v70, v83, v84

    const/16 v84, 0x1

    aput v72, v83, v84

    move-object/from16 v0, v83

    move-object/from16 v1, v43

    invoke-virtual {v13, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1739
    const/16 v83, 0x2

    move/from16 v0, v83

    new-array v0, v0, [I

    move-object/from16 v83, v0

    const/16 v84, 0x0

    move/from16 v0, v70

    neg-int v0, v0

    move/from16 v85, v0

    aput v85, v83, v84

    const/16 v84, 0x1

    aput v72, v83, v84

    move-object/from16 v0, v83

    move-object/from16 v1, v43

    invoke-virtual {v13, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1740
    const/16 v83, 0x2

    move/from16 v0, v83

    new-array v0, v0, [I

    move-object/from16 v83, v0

    const/16 v84, 0x0

    aput v70, v83, v84

    const/16 v84, 0x1

    aput v71, v83, v84

    move-object/from16 v0, v83

    move-object/from16 v1, v42

    invoke-virtual {v13, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1741
    const/16 v83, 0x2

    move/from16 v0, v83

    new-array v0, v0, [I

    move-object/from16 v83, v0

    const/16 v84, 0x0

    move/from16 v0, v70

    neg-int v0, v0

    move/from16 v85, v0

    aput v85, v83, v84

    const/16 v84, 0x1

    aput v71, v83, v84

    move-object/from16 v0, v83

    move-object/from16 v1, v42

    invoke-virtual {v13, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1742
    const/16 v83, 0x1

    move/from16 v0, v83

    new-array v0, v0, [I

    move-object/from16 v83, v0

    const/16 v84, 0x0

    aput v70, v83, v84

    move-object/from16 v0, v83

    move-object/from16 v1, v43

    invoke-virtual {v13, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1743
    const/16 v83, 0x1

    move/from16 v0, v83

    new-array v0, v0, [I

    move-object/from16 v83, v0

    const/16 v84, 0x0

    move/from16 v0, v70

    neg-int v0, v0

    move/from16 v85, v0

    aput v85, v83, v84

    move-object/from16 v0, v83

    move-object/from16 v1, v41

    invoke-virtual {v13, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1744
    const/16 v83, 0x0

    move/from16 v0, v83

    new-array v0, v0, [I

    move-object/from16 v83, v0

    move-object/from16 v0, v83

    move-object/from16 v1, v43

    invoke-virtual {v13, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1746
    new-instance v83, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v84, v0

    invoke-direct/range {v83 .. v84}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v83

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->cancelBtn:Landroid/widget/Button;

    .line 1747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->cancelBtn:Landroid/widget/Button;

    move-object/from16 v83, v0

    move-object/from16 v0, v83

    invoke-virtual {v0, v13}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1749
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v83, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->buttonHeight:I

    move/from16 v84, v0

    const/high16 v85, 0x3f80

    move/from16 v0, v83

    move/from16 v1, v84

    move/from16 v2, v85

    invoke-direct {v12, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1750
    .local v12, cancelBtnParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->hvga:Z

    move/from16 v83, v0

    if-eqz v83, :cond_b

    .line 1751
    const/16 v83, 0x0

    const/16 v84, 0x8

    const/16 v85, 0xf

    const/16 v86, 0x8

    move/from16 v0, v83

    move/from16 v1, v84

    move/from16 v2, v85

    move/from16 v3, v86

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1756
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->cancelBtn:Landroid/widget/Button;

    move-object/from16 v83, v0

    move-object/from16 v0, v83

    invoke-virtual {v0, v12}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->cancelBtn:Landroid/widget/Button;

    move-object/from16 v83, v0

    const/16 v84, 0x11

    invoke-virtual/range {v83 .. v84}, Landroid/widget/Button;->setGravity(I)V

    .line 1758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->cancelBtn:Landroid/widget/Button;

    move-object/from16 v83, v0

    const-string v84, "\ucde8\uc18c"

    invoke-virtual/range {v83 .. v84}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->cancelBtn:Landroid/widget/Button;

    move-object/from16 v83, v0

    const v84, 0x4195999a

    invoke-virtual/range {v83 .. v84}, Landroid/widget/Button;->setTextSize(F)V

    .line 1760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->cancelBtn:Landroid/widget/Button;

    move-object/from16 v83, v0

    new-instance v84, Landroid/content/res/ColorStateList;

    .line 1761
    const/16 v85, 0x2

    move/from16 v0, v85

    new-array v0, v0, [[I

    move-object/from16 v85, v0

    const/16 v86, 0x0

    .line 1762
    const/16 v87, 0x1

    move/from16 v0, v87

    new-array v0, v0, [I

    move-object/from16 v87, v0

    const/16 v88, 0x0

    aput v72, v87, v88

    aput-object v87, v85, v86

    const/16 v86, 0x1

    .line 1763
    const/16 v87, 0x0

    move/from16 v0, v87

    new-array v0, v0, [I

    move-object/from16 v87, v0

    aput-object v87, v85, v86

    .line 1764
    const/16 v86, 0x2

    move/from16 v0, v86

    new-array v0, v0, [I

    move-object/from16 v86, v0

    const/16 v87, 0x0

    .line 1765
    const-string v88, "#ffffff"

    invoke-static/range {v88 .. v88}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v88

    aput v88, v86, v87

    const/16 v87, 0x1

    .line 1766
    const-string v88, "#2c3b65"

    invoke-static/range {v88 .. v88}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v88

    aput v88, v86, v87

    invoke-direct/range {v84 .. v86}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 1760
    invoke-virtual/range {v83 .. v84}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->cancelBtn:Landroid/widget/Button;

    move-object/from16 v83, v0

    move-object/from16 v0, v83

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1771
    new-instance v39, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v83, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v83

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1773
    .local v39, logoView:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->hvga:Z

    move/from16 v83, v0

    if-eqz v83, :cond_d

    .line 1775
    new-instance v40, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v83, 0x114

    const/16 v84, 0x17

    move-object/from16 v0, v40

    move/from16 v1, v83

    move/from16 v2, v84

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1776
    .local v40, logoViewParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v83, 0xa

    const/16 v84, 0x0

    const/16 v85, 0xa

    const/16 v86, 0x4

    move-object/from16 v0, v40

    move/from16 v1, v83

    move/from16 v2, v84

    move/from16 v3, v85

    move/from16 v4, v86

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1791
    :goto_4
    invoke-virtual/range {v39 .. v40}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1792
    const/16 v83, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1793
    move-object/from16 v0, v68

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1795
    new-instance v30, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v83, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v83

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1796
    .local v30, leftBlank:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->hvga:Z

    move/from16 v83, v0

    if-eqz v83, :cond_f

    .line 1797
    new-instance v83, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v84, 0x53

    const/16 v85, 0x1b

    const/high16 v86, 0x3f80

    invoke-direct/range {v83 .. v86}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v30

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1802
    :goto_5
    move-object/from16 v0, v39

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1804
    new-instance v38, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v83, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v83

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1805
    .local v38, logo:Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v83

    new-instance v84, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v85, v0

    invoke-static/range {v85 .. v85}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v85

    invoke-direct/range {v84 .. v85}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v85, "lguplus_logo.png"

    invoke-virtual/range {v84 .. v85}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v84

    invoke-virtual/range {v84 .. v84}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v84

    invoke-virtual/range {v83 .. v84}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v27

    .line 1806
    const/16 v83, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v83

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v31

    .line 1807
    .local v31, lguplusLogo:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v38

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1808
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->hvga:Z

    move/from16 v83, v0

    if-eqz v83, :cond_11

    .line 1809
    new-instance v83, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v84, 0x6e

    const/16 v85, 0x1b

    const/high16 v86, 0x3f80

    invoke-direct/range {v83 .. v86}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v38

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1814
    :goto_6
    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1816
    new-instance v81, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    move-object/from16 v83, v0

    move-object/from16 v0, v81

    move-object/from16 v1, v83

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1817
    .local v81, version:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->hvga:Z

    move/from16 v83, v0

    if-eqz v83, :cond_13

    .line 1818
    new-instance v83, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v84, 0x53

    const/16 v85, 0x1b

    const/high16 v86, 0x3f80

    invoke-direct/range {v83 .. v86}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v81

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1823
    :goto_7
    sget-object v83, Lcom/feelingk/lguiab/common/Defines;->SDK_VERSION_INFO:Ljava/lang/String;

    move-object/from16 v0, v81

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1824
    const/16 v83, 0x0

    const/16 v84, 0x5

    const/16 v85, 0x0

    const/16 v86, 0x0

    move-object/from16 v0, v81

    move/from16 v1, v83

    move/from16 v2, v84

    move/from16 v3, v85

    move/from16 v4, v86

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1825
    const/16 v83, 0x5

    move-object/from16 v0, v81

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1826
    const v83, 0x4134cccd

    move-object/from16 v0, v81

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1827
    const-string v83, "#b8b8b8"

    invoke-static/range {v83 .. v83}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v83

    move-object/from16 v0, v81

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1828
    move-object/from16 v0, v39

    move-object/from16 v1, v81

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1830
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->setContentView(Landroid/view/View;)V

    .line 1832
    const-string v83, "PurchaseDlg"

    invoke-static/range {v83 .. v83}, Lcom/feelingk/lguiab/LguIAPLib;->setDialogType(Ljava/lang/String;)V

    .line 1834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->purchaseBtn:Landroid/widget/Button;

    move-object/from16 v83, v0

    move-object/from16 v0, v83

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->cancelBtn:Landroid/widget/Button;

    move-object/from16 v83, v0

    move-object/from16 v0, v83

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1837
    return-void

    .line 1342
    .end local v5           #_535353:Ljava/lang/String;
    .end local v6           #_858da6:Ljava/lang/String;
    .end local v7           #_d4d7dd:Ljava/lang/String;
    .end local v8           #_f9f9f9:Ljava/lang/String;
    .end local v9           #blank:Landroid/widget/LinearLayout;
    .end local v10           #bottom:Landroid/widget/LinearLayout;
    .end local v11           #btnParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v12           #cancelBtnParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v13           #cancelDrawables:Landroid/graphics/drawable/StateListDrawable;
    .end local v15           #date:Landroid/widget/TextView;
    .end local v16           #dateLineCenter:Landroid/widget/LinearLayout;
    .end local v17           #dateLineLeft:Landroid/widget/LinearLayout;
    .end local v18           #dateLineRight:Landroid/widget/LinearLayout;
    .end local v19           #datelR:Landroid/widget/TextView;
    .end local v20           #datelRParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v21           #datell:Landroid/widget/LinearLayout;
    .end local v22           #datellParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v23           #ff:Landroid/widget/FrameLayout;
    .end local v24           #frame:Landroid/widget/LinearLayout;
    .end local v25           #heightLineParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v26           #info:Landroid/widget/TextView;
    .end local v27           #is:Ljava/io/InputStream;
    .end local v28           #itemDateTable:Landroid/widget/LinearLayout;
    .end local v29           #itemPrice:Landroid/widget/TextView;
    .end local v30           #leftBlank:Landroid/widget/LinearLayout;
    .end local v31           #lguplusLogo:Landroid/graphics/drawable/Drawable;
    .end local v32           #line:Landroid/widget/LinearLayout;
    .end local v33           #line2:Landroid/widget/LinearLayout;
    .end local v34           #line3:Landroid/widget/LinearLayout;
    .end local v35           #line4:Landroid/widget/LinearLayout;
    .end local v36           #lineParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v37           #ll:Landroid/widget/LinearLayout;
    .end local v38           #logo:Landroid/widget/ImageView;
    .end local v39           #logoView:Landroid/widget/LinearLayout;
    .end local v40           #logoViewParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v41           #menu_btn:Landroid/graphics/drawable/Drawable;
    .end local v42           #menu_btn_active:Landroid/graphics/drawable/Drawable;
    .end local v43           #menu_btn_pressed:Landroid/graphics/drawable/Drawable;
    .end local v44           #name:Landroid/widget/TextView;
    .end local v45           #nameLineCenter:Landroid/widget/LinearLayout;
    .end local v46           #nameLineLeft:Landroid/widget/LinearLayout;
    .end local v47           #nameLineRight:Landroid/widget/LinearLayout;
    .end local v48           #nameTable:Landroid/widget/LinearLayout;
    .end local v49           #namelR:Landroid/widget/TextView;
    .end local v50           #namelRParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v51           #namell:Landroid/widget/LinearLayout;
    .end local v52           #namellParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v53           #okDrawables:Landroid/graphics/drawable/StateListDrawable;
    .end local v54           #popup_bg:Landroid/graphics/drawable/Drawable;
    .end local v55           #popup_btn_bg:Landroid/graphics/drawable/Drawable;
    .end local v56           #popup_title:Landroid/graphics/drawable/Drawable;
    .end local v57           #priceLineCenter:Landroid/widget/LinearLayout;
    .end local v58           #priceLineLeft:Landroid/widget/LinearLayout;
    .end local v59           #priceLineRight:Landroid/widget/LinearLayout;
    .end local v60           #priceLl:Landroid/widget/LinearLayout;
    .end local v61           #priceTable:Landroid/widget/LinearLayout;
    .end local v62           #pricelR:Landroid/widget/TextView;
    .end local v63           #pricelRParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v64           #pricell:Landroid/widget/LinearLayout;
    .end local v65           #pricellParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v66           #purchaseBtnParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v67           #rockInfo:Landroid/widget/TextView;
    .end local v68           #root:Landroid/widget/LinearLayout;
    .end local v69           #rootParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v70           #stateChecked:I
    .end local v71           #stateFocused:I
    .end local v72           #statePressed:I
    .end local v73           #stateWindowFocused:I
    .end local v74           #strColor:Ljava/lang/String;
    .end local v75           #sv:Landroid/widget/ScrollView;
    .end local v76           #svLayout:Landroid/widget/LinearLayout;
    .end local v77           #svParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v78           #table:Landroid/widget/LinearLayout;
    .end local v79           #tableParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v80           #titleParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v81           #version:Landroid/widget/TextView;
    .end local v82           #won:Landroid/widget/TextView;
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->hd:Z

    move/from16 v83, v0

    if-eqz v83, :cond_7

    .line 1343
    const/16 v83, 0x1f4

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->totalWidth:I

    .line 1344
    const/16 v83, 0x27c

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->totalHeight:I

    .line 1345
    const/16 v83, 0x1e0

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->titleWidth:I

    .line 1346
    const/16 v83, 0x4b

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->titleHeight:I

    .line 1347
    const/16 v83, 0x12

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->titlePdB:I

    .line 1348
    const/high16 v83, 0x4208

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->ptSize:F

    move/from16 v84, v0

    div-float v83, v83, v84

    move/from16 v0, v83

    float-to-int v0, v0

    move/from16 v83, v0

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->titleTextSize:I

    .line 1349
    const/16 v83, 0x1c2

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->tableWidth:I

    .line 1350
    const/16 v83, 0xbb

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->tableHeight:I

    .line 1351
    const/16 v83, 0x19

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->tableLeftPd:I

    .line 1352
    const/16 v83, 0x19

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->tableRightPd:I

    .line 1353
    const/16 v83, 0x3d

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->heightLineHeight:I

    .line 1354
    const/16 v83, 0x8e

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->listWidth:I

    .line 1355
    const/16 v83, 0x3d

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->listHeight:I

    .line 1356
    const/high16 v83, 0x41d0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->ptSize:F

    move/from16 v84, v0

    div-float v83, v83, v84

    move/from16 v0, v83

    float-to-int v0, v0

    move/from16 v83, v0

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->normalTextSize:I

    .line 1357
    const/16 v83, 0x131

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->contentWidth:I

    .line 1358
    const/16 v83, 0x54

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->buttonHeight:I

    .line 1359
    const/16 v83, 0x9b

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->infoLayoutHeight:I

    .line 1360
    const/16 v83, 0x1df

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->buttonBgWidth:I

    .line 1361
    const/16 v83, 0x68

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->buttonBgHeight:I

    .line 1362
    const/16 v83, 0xd

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->listPdTop:I

    .line 1363
    const/16 v83, 0xd

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->contentPdTop:I

    goto/16 :goto_0

    .line 1366
    :cond_7
    const/16 v83, 0x190

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->totalWidth:I

    .line 1367
    const/16 v83, 0x1e3

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->totalHeight:I

    .line 1368
    const/16 v83, 0x17c

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->titleWidth:I

    .line 1369
    const/16 v83, 0x3c

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->titleHeight:I

    .line 1370
    const/16 v83, 0xf

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->titlePdB:I

    .line 1371
    const/16 v83, 0x12

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->titleTextSize:I

    .line 1372
    const/16 v83, 0xe

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->normalTextSize:I

    .line 1373
    const/16 v83, 0x15e

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->tableWidth:I

    .line 1374
    const/16 v83, 0x8b

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->tableHeight:I

    .line 1375
    const/16 v83, 0x16

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->tableLeftPd:I

    .line 1376
    const/16 v83, 0x1e

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->tableRightPd:I

    .line 1377
    const/16 v83, 0x2d

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->heightLineHeight:I

    .line 1378
    const/16 v83, 0x8e

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->listWidth:I

    .line 1379
    const/16 v83, 0x2d

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->listHeight:I

    .line 1380
    const/16 v83, 0xcd

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->contentWidth:I

    .line 1381
    const/16 v83, 0x44

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->buttonHeight:I

    .line 1382
    const/16 v83, 0x8

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->contentPdTop:I

    .line 1383
    const/16 v83, 0x6c

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->infoLayoutHeight:I

    .line 1384
    const/16 v83, 0x6

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->listPdTop:I

    .line 1385
    const/16 v83, 0x53

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->buttonBgHeight:I

    .line 1386
    const/16 v83, 0x17b

    move/from16 v0, v83

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->buttonBgWidth:I

    goto/16 :goto_0

    .line 1500
    .restart local v5       #_535353:Ljava/lang/String;
    .restart local v6       #_858da6:Ljava/lang/String;
    .restart local v7       #_d4d7dd:Ljava/lang/String;
    .restart local v8       #_f9f9f9:Ljava/lang/String;
    .restart local v9       #blank:Landroid/widget/LinearLayout;
    .restart local v23       #ff:Landroid/widget/FrameLayout;
    .restart local v24       #frame:Landroid/widget/LinearLayout;
    .restart local v25       #heightLineParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v27       #is:Ljava/io/InputStream;
    .restart local v32       #line:Landroid/widget/LinearLayout;
    .restart local v36       #lineParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v37       #ll:Landroid/widget/LinearLayout;
    .restart local v44       #name:Landroid/widget/TextView;
    .restart local v45       #nameLineCenter:Landroid/widget/LinearLayout;
    .restart local v46       #nameLineLeft:Landroid/widget/LinearLayout;
    .restart local v48       #nameTable:Landroid/widget/LinearLayout;
    .restart local v49       #namelR:Landroid/widget/TextView;
    .restart local v50       #namelRParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v51       #namell:Landroid/widget/LinearLayout;
    .restart local v52       #namellParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v54       #popup_bg:Landroid/graphics/drawable/Drawable;
    .restart local v56       #popup_title:Landroid/graphics/drawable/Drawable;
    .restart local v68       #root:Landroid/widget/LinearLayout;
    .restart local v69       #rootParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v74       #strColor:Ljava/lang/String;
    .restart local v78       #table:Landroid/widget/LinearLayout;
    .restart local v79       #tableParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v80       #titleParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mPname:Ljava/lang/String;

    move-object/from16 v83, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1717
    .restart local v10       #bottom:Landroid/widget/LinearLayout;
    .restart local v11       #btnParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v13       #cancelDrawables:Landroid/graphics/drawable/StateListDrawable;
    .restart local v15       #date:Landroid/widget/TextView;
    .restart local v16       #dateLineCenter:Landroid/widget/LinearLayout;
    .restart local v17       #dateLineLeft:Landroid/widget/LinearLayout;
    .restart local v18       #dateLineRight:Landroid/widget/LinearLayout;
    .restart local v19       #datelR:Landroid/widget/TextView;
    .restart local v20       #datelRParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v21       #datell:Landroid/widget/LinearLayout;
    .restart local v22       #datellParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v26       #info:Landroid/widget/TextView;
    .restart local v28       #itemDateTable:Landroid/widget/LinearLayout;
    .restart local v29       #itemPrice:Landroid/widget/TextView;
    .restart local v33       #line2:Landroid/widget/LinearLayout;
    .restart local v34       #line3:Landroid/widget/LinearLayout;
    .restart local v35       #line4:Landroid/widget/LinearLayout;
    .restart local v41       #menu_btn:Landroid/graphics/drawable/Drawable;
    .restart local v42       #menu_btn_active:Landroid/graphics/drawable/Drawable;
    .restart local v43       #menu_btn_pressed:Landroid/graphics/drawable/Drawable;
    .restart local v47       #nameLineRight:Landroid/widget/LinearLayout;
    .restart local v53       #okDrawables:Landroid/graphics/drawable/StateListDrawable;
    .restart local v55       #popup_btn_bg:Landroid/graphics/drawable/Drawable;
    .restart local v57       #priceLineCenter:Landroid/widget/LinearLayout;
    .restart local v58       #priceLineLeft:Landroid/widget/LinearLayout;
    .restart local v59       #priceLineRight:Landroid/widget/LinearLayout;
    .restart local v60       #priceLl:Landroid/widget/LinearLayout;
    .restart local v61       #priceTable:Landroid/widget/LinearLayout;
    .restart local v62       #pricelR:Landroid/widget/TextView;
    .restart local v63       #pricelRParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v64       #pricell:Landroid/widget/LinearLayout;
    .restart local v65       #pricellParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v66       #purchaseBtnParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v67       #rockInfo:Landroid/widget/TextView;
    .restart local v70       #stateChecked:I
    .restart local v71       #stateFocused:I
    .restart local v72       #statePressed:I
    .restart local v73       #stateWindowFocused:I
    .restart local v75       #sv:Landroid/widget/ScrollView;
    .restart local v76       #svLayout:Landroid/widget/LinearLayout;
    .restart local v77       #svParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v82       #won:Landroid/widget/TextView;
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->hd:Z

    move/from16 v83, v0

    if-eqz v83, :cond_a

    .line 1718
    const/16 v83, 0x12

    const/16 v84, 0x8

    const/16 v85, 0x7

    const/16 v86, 0xc

    move-object/from16 v0, v66

    move/from16 v1, v83

    move/from16 v2, v84

    move/from16 v3, v85

    move/from16 v4, v86

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_2

    .line 1720
    :cond_a
    const/16 v83, 0xf

    const/16 v84, 0x7

    const/16 v85, 0xa

    const/16 v86, 0x8

    move-object/from16 v0, v66

    move/from16 v1, v83

    move/from16 v2, v84

    move/from16 v3, v85

    move/from16 v4, v86

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_2

    .line 1752
    .restart local v12       #cancelBtnParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->hd:Z

    move/from16 v83, v0

    if-eqz v83, :cond_c

    .line 1753
    const/16 v83, 0x7

    const/16 v84, 0x8

    const/16 v85, 0x12

    const/16 v86, 0xc

    move/from16 v0, v83

    move/from16 v1, v84

    move/from16 v2, v85

    move/from16 v3, v86

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_3

    .line 1755
    :cond_c
    const/16 v83, 0x0

    const/16 v84, 0x7

    const/16 v85, 0xf

    const/16 v86, 0x8

    move/from16 v0, v83

    move/from16 v1, v84

    move/from16 v2, v85

    move/from16 v3, v86

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_3

    .line 1778
    .restart local v39       #logoView:Landroid/widget/LinearLayout;
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->hd:Z

    move/from16 v83, v0

    if-eqz v83, :cond_e

    .line 1780
    new-instance v40, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v83, 0x1e0

    const/16 v84, 0x24

    move-object/from16 v0, v40

    move/from16 v1, v83

    move/from16 v2, v84

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1781
    .restart local v40       #logoViewParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v83, 0xa

    const/16 v84, 0x0

    const/16 v85, 0x0

    const/16 v86, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v83

    move/from16 v2, v84

    move/from16 v3, v85

    move/from16 v4, v86

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_4

    .line 1785
    .end local v40           #logoViewParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_e
    new-instance v40, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v83, 0x178

    const/16 v84, 0x1e

    move-object/from16 v0, v40

    move/from16 v1, v83

    move/from16 v2, v84

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1786
    .restart local v40       #logoViewParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v83, 0xc

    const/16 v84, 0xa

    const/16 v85, 0xc

    const/16 v86, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v83

    move/from16 v2, v84

    move/from16 v3, v85

    move/from16 v4, v86

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_4

    .line 1798
    .restart local v30       #leftBlank:Landroid/widget/LinearLayout;
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->hd:Z

    move/from16 v83, v0

    if-eqz v83, :cond_10

    .line 1799
    new-instance v83, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v84, 0x0

    const/16 v85, 0x24

    const/high16 v86, 0x3f80

    invoke-direct/range {v83 .. v86}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v30

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    .line 1801
    :cond_10
    new-instance v83, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v84, 0x6e

    const/16 v85, 0x1e

    const/high16 v86, 0x3f80

    invoke-direct/range {v83 .. v86}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v30

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    .line 1810
    .restart local v31       #lguplusLogo:Landroid/graphics/drawable/Drawable;
    .restart local v38       #logo:Landroid/widget/ImageView;
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->hd:Z

    move/from16 v83, v0

    if-eqz v83, :cond_12

    .line 1811
    new-instance v83, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v84, 0x0

    const/16 v85, 0x24

    const/high16 v86, 0x3f80

    invoke-direct/range {v83 .. v86}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v38

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6

    .line 1813
    :cond_12
    new-instance v83, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v84, 0xa0

    const/16 v85, 0x1e

    const/high16 v86, 0x3f80

    invoke-direct/range {v83 .. v86}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v38

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6

    .line 1819
    .restart local v81       #version:Landroid/widget/TextView;
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->hd:Z

    move/from16 v83, v0

    if-eqz v83, :cond_14

    .line 1820
    new-instance v83, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v84, 0x0

    const/16 v85, 0x24

    const/high16 v86, 0x3f80

    invoke-direct/range {v83 .. v86}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v81

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_7

    .line 1822
    :cond_14
    new-instance v83, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v84, 0x6e

    const/16 v85, 0x1e

    const/high16 v86, 0x3f80

    invoke-direct/range {v83 .. v86}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v81

    move-object/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_7
.end method


# virtual methods
.method public getScreenInfo()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1867
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1868
    .local v3, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v5, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1869
    iget v1, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1870
    .local v1, deviceWidth:I
    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1872
    .local v0, deviceHeight:I
    iget-object v5, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->mContext:Landroid/content/Context;

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 1873
    .local v4, wm:Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 1874
    .local v2, disp:Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getOrientation()I

    move-result v5

    iput v5, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->rotation:I

    .line 1880
    sget-boolean v5, Lcom/feelingk/lguiab/util/DeviceUtil;->mHvga:Z

    if-eqz v5, :cond_0

    .line 1881
    iput-boolean v7, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->hvga:Z

    .line 1884
    :cond_0
    sget-boolean v5, Lcom/feelingk/lguiab/util/DeviceUtil;->mHd:Z

    if-eqz v5, :cond_1

    .line 1885
    iput-boolean v7, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->hd:Z

    .line 1887
    :cond_1
    invoke-static {}, Lcom/feelingk/lguiab/util/DeviceUtil;->getmAnyDensityState()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1888
    iput-boolean v7, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->hvga:Z

    .line 1889
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->anyDensity:Z

    .line 1891
    sget-boolean v5, Lcom/feelingk/lguiab/util/DeviceUtil;->mOpView:Z

    if-eqz v5, :cond_2

    .line 1892
    iput-boolean v7, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->opView:Z

    .line 1896
    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1843
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->purchaseBtn:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 1850
    invoke-virtual {p0}, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->dismiss()V

    .line 1855
    iget-boolean v0, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->finalVer:Z

    invoke-static {v0}, Lcom/feelingk/lguiab/LguIAPLib;->purchaseProcess(Z)V

    .line 1864
    :cond_0
    :goto_0
    return-void

    .line 1858
    :cond_1
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->cancelBtn:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 1860
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->getContextOnClinetListener()Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;->lguIABonDlgPurchaseCancel()V

    .line 1861
    invoke-virtual {p0}, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->dismiss()V

    .line 1862
    const-string v0, "None"

    invoke-static {v0}, Lcom/feelingk/lguiab/LguIAPLib;->setDialogType(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1900
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1901
    invoke-virtual {p0}, Lcom/feelingk/lguiab/manager/gui/BuyComfirmDialog;->dismiss()V

    .line 1902
    const-string v0, "None"

    invoke-static {v0}, Lcom/feelingk/lguiab/LguIAPLib;->setDialogType(Ljava/lang/String;)V

    .line 1903
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->getContextOnClinetListener()Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;->lguIABonDlgPurchaseCancel()V

    .line 1905
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
