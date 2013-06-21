.class public Lcom/feelingk/lguiab/manager/gui/payAuthDialog;
.super Landroid/app/Dialog;
.source "payAuthDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static randomNum:I


# instance fields
.field private RES_VERT_FILE_PATH:Ljava/lang/String;

.field authFlag:Z

.field cancelBtn:Landroid/widget/Button;

.field deviceHeight:I

.field deviceWidth:I

.field private mAppId:Ljava/lang/String;

.field private mBpData:Ljava/lang/String;

.field private mBpIP:Ljava/lang/String;

.field private mBpPort:I

.field private mBpUri:Ljava/lang/String;

.field private mClientListenerKey:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mFinalVer:Ljava/lang/Boolean;

.field private mPId:Ljava/lang/String;

.field otpView:Landroid/widget/EditText;

.field ptSize:F

.field purchaseBtn:Landroid/widget/Button;

.field screenDensity:I

.field totalHeight:I

.field totalWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "context"
    .parameter "finalVer"
    .parameter "appId"
    .parameter "pId"
    .parameter "bpIp"
    .parameter "bpPort"
    .parameter "bpUri"
    .parameter "bpData"
    .parameter "clientListenerKey"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 51
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mAppId:Ljava/lang/String;

    .line 54
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mPId:Ljava/lang/String;

    .line 57
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mBpIP:Ljava/lang/String;

    .line 63
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mBpUri:Ljava/lang/String;

    .line 66
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mBpData:Ljava/lang/String;

    .line 69
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mClientListenerKey:Ljava/lang/String;

    .line 74
    const-string v8, "/lguIABres/"

    iput-object v8, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    .line 75
    const/high16 v8, 0x4000

    iput v8, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->ptSize:F

    .line 78
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->authFlag:Z

    .line 84
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->requestWindowFeature(I)Z

    .line 87
    const/4 v8, 0x0

    sput v8, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->randomNum:I

    .line 88
    const/4 v3, 0x1

    .local v3, i:I
    :goto_0
    const/16 v8, 0x14

    if-le v3, v8, :cond_0

    .line 93
    iput-object p1, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mFinalVer:Ljava/lang/Boolean;

    .line 95
    iput-object p3, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mAppId:Ljava/lang/String;

    .line 96
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mPId:Ljava/lang/String;

    .line 97
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mBpIP:Ljava/lang/String;

    .line 98
    move/from16 v0, p6

    iput v0, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mBpPort:I

    .line 99
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mBpUri:Ljava/lang/String;

    .line 100
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mBpData:Ljava/lang/String;

    .line 101
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mClientListenerKey:Ljava/lang/String;

    .line 103
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 104
    .local v2, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v8, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    check-cast v8, Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 106
    iget v8, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v8, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->deviceWidth:I

    .line 107
    iget v8, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v8, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->deviceHeight:I

    .line 113
    iget v8, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v8, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->screenDensity:I

    .line 114
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "screenDensity = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->screenDensity:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    .line 116
    iget-object v8, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    const-string v9, "window"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 117
    .local v7, wm:Landroid/view/WindowManager;
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 118
    .local v1, disp:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getOrientation()I

    move-result v6

    .line 120
    .local v6, rotation:I
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xb

    if-lt v8, v9, :cond_1

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xd

    if-gt v8, v9, :cond_1

    .line 121
    packed-switch v6, :pswitch_data_0

    .line 141
    :goto_1
    return-void

    .line 89
    .end local v1           #disp:Landroid/view/Display;
    .end local v2           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v6           #rotation:I
    .end local v7           #wm:Landroid/view/WindowManager;
    :cond_0
    const/16 v4, 0x3e8

    .local v4, n1:I
    const/16 v5, 0x270f

    .line 90
    .local v5, n2:I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const/16 v10, 0x2328

    int-to-double v10, v10

    mul-double/2addr v8, v10

    int-to-double v10, v4

    add-double/2addr v8, v10

    double-to-int v8, v8

    sput v8, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->randomNum:I

    .line 88
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 124
    .end local v4           #n1:I
    .end local v5           #n2:I
    .restart local v1       #disp:Landroid/view/Display;
    .restart local v2       #displayMetrics:Landroid/util/DisplayMetrics;
    .restart local v6       #rotation:I
    .restart local v7       #wm:Landroid/view/WindowManager;
    :pswitch_0
    invoke-direct {p0}, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->viewLandscape()V

    goto :goto_1

    .line 127
    :pswitch_1
    invoke-direct {p0}, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->viewPortrait()V

    goto :goto_1

    .line 131
    :cond_1
    packed-switch v6, :pswitch_data_1

    goto :goto_1

    .line 134
    :pswitch_2
    invoke-direct {p0}, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->viewPortrait()V

    goto :goto_1

    .line 137
    :pswitch_3
    invoke-direct {p0}, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->viewLandscape()V

    goto :goto_1

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 131
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private viewLandscape()V
    .locals 84

    .prologue
    .line 144
    const/16 v19, 0x0

    .local v19, btnHeight:I
    const/16 v20, 0x0

    .local v20, btnTopMar:I
    const/16 v72, 0x0

    .local v72, titleTextSize:I
    const/16 v70, 0x0

    .line 147
    .local v70, textSize:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->deviceWidth:I

    move/from16 v78, v0

    move/from16 v0, v78

    int-to-double v0, v0

    move-wide/from16 v78, v0

    const-wide/high16 v80, 0x3fe4

    mul-double v78, v78, v80

    move-wide/from16 v0, v78

    double-to-int v0, v0

    move/from16 v78, v0

    move/from16 v0, v78

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->totalWidth:I

    .line 148
    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->deviceHeight:I

    move/from16 v78, v0

    move/from16 v0, v78

    int-to-double v0, v0

    move-wide/from16 v78, v0

    const-wide v80, 0x3fe947ae147ae148L

    mul-double v78, v78, v80

    move-wide/from16 v0, v78

    double-to-int v0, v0

    move/from16 v78, v0

    move/from16 v0, v78

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->totalHeight:I

    .line 151
    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->screenDensity:I

    move/from16 v78, v0

    const/16 v79, 0x140

    move/from16 v0, v78

    move/from16 v1, v79

    if-ne v0, v1, :cond_3

    .line 152
    const/16 v19, 0x5b

    .line 153
    const/16 v20, 0x14

    .line 154
    const/16 v70, 0xe

    .line 155
    const/16 v72, 0x16

    .line 163
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->screenDensity:I

    move/from16 v78, v0

    const/16 v79, 0xa0

    move/from16 v0, v78

    move/from16 v1, v79

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/feelingk/lguiab/util/DeviceUtil;->getmAnyDensityState()Z

    move-result v78

    if-nez v78, :cond_2

    .line 165
    :cond_1
    const/16 v19, 0x34

    .line 166
    const/16 v78, 0x128

    move/from16 v0, v78

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->totalWidth:I

    .line 167
    const/16 v78, 0x180

    move/from16 v0, v78

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->totalHeight:I

    .line 168
    const/16 v70, 0xc

    .line 169
    const/16 v72, 0x15

    .line 170
    const/16 v78, 0x1cc

    move/from16 v0, v78

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->totalWidth:I

    .line 171
    const/16 v78, 0x11d

    move/from16 v0, v78

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->totalHeight:I

    .line 174
    :cond_2
    new-instance v78, Ljava/lang/StringBuilder;

    const-string v79, "width = "

    invoke-direct/range {v78 .. v79}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->totalWidth:I

    move/from16 v79, v0

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v78

    invoke-static/range {v78 .. v78}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    .line 175
    new-instance v78, Ljava/lang/StringBuilder;

    const-string v79, "Height = "

    invoke-direct/range {v78 .. v79}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->totalHeight:I

    move/from16 v79, v0

    invoke-virtual/range {v78 .. v79}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v78

    invoke-virtual/range {v78 .. v78}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v78

    invoke-static/range {v78 .. v78}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    .line 178
    new-instance v40, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v78

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 180
    .local v40, ll:Landroid/widget/LinearLayout;
    new-instance v28, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v78

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 181
    .local v28, ff:Landroid/widget/FrameLayout;
    new-instance v78, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->totalWidth:I

    move/from16 v79, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->totalHeight:I

    move/from16 v80, v0

    invoke-direct/range {v78 .. v80}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v28

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    move-object/from16 v0, v40

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 184
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v78

    new-instance v79, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v80, v0

    invoke-static/range {v80 .. v80}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v80

    invoke-direct/range {v79 .. v80}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v80, "popup_bg.9.png"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {v78 .. v79}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v35

    .line 185
    .local v35, is:Ljava/io/InputStream;
    const/16 v78, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v78

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v60

    .line 186
    .local v60, popup_bg:Landroid/graphics/drawable/Drawable;
    const/16 v35, 0x0

    .line 189
    new-instance v30, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v78

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 191
    .local v30, frame:Landroid/widget/LinearLayout;
    new-instance v78, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->totalWidth:I

    move/from16 v79, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->totalHeight:I

    move/from16 v80, v0

    invoke-direct/range {v78 .. v80}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v30

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    move-object/from16 v0, v30

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 195
    new-instance v63, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    move-object/from16 v0, v63

    move-object/from16 v1, v78

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 197
    .local v63, root:Landroid/widget/LinearLayout;
    new-instance v64, Landroid/widget/LinearLayout$LayoutParams;

    new-instance v78, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->totalWidth:I

    move/from16 v79, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->totalHeight:I

    move/from16 v80, v0

    invoke-direct/range {v78 .. v80}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v64

    move-object/from16 v1, v78

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    .local v64, rootParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v63 .. v64}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    const/16 v78, 0x10

    move-object/from16 v0, v63

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 200
    const/16 v78, 0x1

    move-object/from16 v0, v63

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 201
    move-object/from16 v0, v28

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 203
    new-instance v74, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    move-object/from16 v0, v74

    move-object/from16 v1, v78

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 205
    .local v74, topView:Landroid/widget/LinearLayout;
    new-instance v75, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->totalWidth:I

    move/from16 v78, v0

    add-int/lit8 v78, v78, -0x15

    const/16 v79, 0x0

    const/high16 v80, 0x4080

    move-object/from16 v0, v75

    move/from16 v1, v78

    move/from16 v2, v79

    move/from16 v3, v80

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 206
    .local v75, topViewParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v78, 0xb

    const/16 v79, 0xa

    const/16 v80, 0x0

    const/16 v81, 0x0

    move-object/from16 v0, v75

    move/from16 v1, v78

    move/from16 v2, v79

    move/from16 v3, v80

    move/from16 v4, v81

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 207
    invoke-virtual/range {v74 .. v75}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    const/16 v78, 0x1

    move-object/from16 v0, v74

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 210
    move-object/from16 v0, v63

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 214
    new-instance v76, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->totalWidth:I

    move/from16 v78, v0

    add-int/lit8 v78, v78, -0x15

    const/16 v79, 0x0

    const/high16 v80, 0x4120

    move-object/from16 v0, v76

    move/from16 v1, v78

    move/from16 v2, v79

    move/from16 v3, v80

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 216
    .local v76, upperViewParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v78

    new-instance v79, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v80, v0

    invoke-static/range {v80 .. v80}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v80

    invoke-direct/range {v79 .. v80}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v80, "popup_title.png"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {v78 .. v79}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v35

    .line 217
    const/16 v78, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v78

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v61

    .line 218
    .local v61, popup_title:Landroid/graphics/drawable/Drawable;
    const/16 v35, 0x0

    .line 220
    new-instance v73, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    move-object/from16 v0, v73

    move-object/from16 v1, v78

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 221
    .local v73, titleView:Landroid/widget/LinearLayout;
    const/16 v78, 0x11

    move-object/from16 v0, v73

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 222
    move-object/from16 v0, v73

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    move-object/from16 v0, v73

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    move-object/from16 v0, v74

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 226
    new-instance v71, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    move-object/from16 v0, v71

    move-object/from16 v1, v78

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 227
    .local v71, title:Landroid/widget/TextView;
    const-string v78, "\uacb0\uc81c \uc778\uc99d"

    move-object/from16 v0, v71

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    const-string v78, "#ffffff"

    invoke-static/range {v78 .. v78}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v78

    move-object/from16 v0, v71

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 229
    move/from16 v0, v72

    int-to-float v0, v0

    move/from16 v78, v0

    move-object/from16 v0, v71

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 230
    move-object/from16 v0, v73

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 235
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->totalWidth:I

    move/from16 v78, v0

    add-int/lit8 v78, v78, -0x15

    const/16 v79, 0x0

    const/high16 v80, 0x4040

    move/from16 v0, v78

    move/from16 v1, v79

    move/from16 v2, v80

    invoke-direct {v14, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 237
    .local v14, blankParams:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    move-object/from16 v0, v78

    invoke-direct {v15, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 238
    .local v15, blankView:Landroid/widget/LinearLayout;
    invoke-virtual {v15, v14}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    move-object/from16 v0, v74

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 242
    new-instance v52, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->totalWidth:I

    move/from16 v78, v0

    add-int/lit8 v78, v78, -0x2f

    const/16 v79, 0x0

    const/high16 v80, 0x4100

    move-object/from16 v0, v52

    move/from16 v1, v78

    move/from16 v2, v79

    move/from16 v3, v80

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 243
    .local v52, messageViewParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v78, 0x24

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v81, 0x0

    move-object/from16 v0, v52

    move/from16 v1, v78

    move/from16 v2, v79

    move/from16 v3, v80

    move/from16 v4, v81

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 244
    new-instance v51, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    move-object/from16 v0, v51

    move-object/from16 v1, v78

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 245
    .local v51, messageView:Landroid/widget/TextView;
    invoke-virtual/range {v51 .. v52}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    const-string v78, "U+\uc571\ub9c8\ucf13\uc740 \uc720\ub8cc\ud654 \uacb0\uc81c \ubcf4\uc548\uc744 \uc704\ud574 \uc778\uc99d \uc808\ucc28\ub97c\n\uac70\uce58\uace0 \uc788\uc2b5\ub2c8\ub2e4. \uc544\ub798\uc758 \uc778\uc99d\ubc88\ud638\ub97c \uc785\ub825\ud574 \uc8fc\uc138\uc694."

    move-object/from16 v0, v51

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    const-string v78, "#91633f"

    invoke-static/range {v78 .. v78}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v78

    move-object/from16 v0, v51

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 248
    move/from16 v0, v70

    int-to-float v0, v0

    move/from16 v78, v0

    move-object/from16 v0, v51

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 249
    move-object/from16 v0, v74

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 252
    new-instance v53, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    move-object/from16 v0, v53

    move-object/from16 v1, v78

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 254
    .local v53, midView:Landroid/widget/LinearLayout;
    new-instance v54, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->totalWidth:I

    move/from16 v78, v0

    add-int/lit8 v78, v78, -0x15

    const/16 v79, 0x0

    const/high16 v80, 0x4080

    move-object/from16 v0, v54

    move/from16 v1, v78

    move/from16 v2, v79

    move/from16 v3, v80

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 255
    .local v54, midViewParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v78, 0xb

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v81, 0x0

    move-object/from16 v0, v54

    move/from16 v1, v78

    move/from16 v2, v79

    move/from16 v3, v80

    move/from16 v4, v81

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 256
    invoke-virtual/range {v53 .. v54}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    const/16 v78, 0x1

    move-object/from16 v0, v53

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 258
    move-object/from16 v0, v63

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 260
    new-instance v16, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v78

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 261
    .local v16, blankView2:Landroid/widget/LinearLayout;
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    move-object/from16 v0, v53

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 267
    new-instance v27, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->totalWidth:I

    move/from16 v78, v0

    add-int/lit8 v78, v78, -0x15

    const/16 v79, 0x0

    const/high16 v80, 0x41b8

    move-object/from16 v0, v27

    move/from16 v1, v78

    move/from16 v2, v79

    move/from16 v3, v80

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 268
    .local v27, contentViewParams:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v26, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v78

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 269
    .local v26, contentView:Landroid/widget/LinearLayout;
    invoke-virtual/range {v26 .. v27}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    const/16 v78, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 271
    move-object/from16 v0, v53

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 274
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v78, 0x0

    const/16 v79, -0x1

    const/high16 v80, 0x40c0

    move/from16 v0, v78

    move/from16 v1, v79

    move/from16 v2, v80

    invoke-direct {v12, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 275
    .local v12, authViewParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v78, 0x20

    const/16 v79, 0x0

    const/16 v80, 0xc

    const/16 v81, 0x0

    move/from16 v0, v78

    move/from16 v1, v79

    move/from16 v2, v80

    move/from16 v3, v81

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 280
    new-instance v36, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v78

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 281
    .local v36, leftView:Landroid/widget/LinearLayout;
    move-object/from16 v0, v36

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    const/16 v78, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 283
    move-object/from16 v0, v26

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 288
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v78, -0x1

    const/16 v79, 0x0

    const/high16 v80, 0x41d0

    move/from16 v0, v78

    move/from16 v1, v79

    move/from16 v2, v80

    invoke-direct {v11, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 291
    .local v11, authNumberViewParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v78

    new-instance v79, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v80, v0

    invoke-static/range {v80 .. v80}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v80

    invoke-direct/range {v79 .. v80}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v80, "table_bg.9.png"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {v78 .. v79}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v35

    .line 292
    const/16 v78, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v78

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v69

    .line 293
    .local v69, table:Landroid/graphics/drawable/Drawable;
    const/16 v35, 0x0

    .line 295
    new-instance v10, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    move-object/from16 v0, v78

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 296
    .local v10, authNumberView:Landroid/widget/LinearLayout;
    const/16 v78, 0x11

    move/from16 v0, v78

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 297
    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    move-object/from16 v0, v69

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 299
    move-object/from16 v0, v36

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 302
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v78, 0x0

    const/16 v79, -0x1

    const/high16 v80, 0x3f80

    move/from16 v0, v78

    move/from16 v1, v79

    move/from16 v2, v80

    invoke-direct {v9, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 305
    .local v9, authNumParams:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v8, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    move-object/from16 v0, v78

    invoke-direct {v8, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 306
    .local v8, authNum:Landroid/widget/TextView;
    const-string v78, "\uc778\uc99d\ubc88\ud638"

    move-object/from16 v0, v78

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    const/16 v78, 0x11

    move/from16 v0, v78

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 308
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    const-string v78, "#2c3b65"

    invoke-static/range {v78 .. v78}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v78

    move/from16 v0, v78

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 311
    invoke-virtual {v10, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 314
    new-instance v39, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v78

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 316
    .local v39, line:Landroid/widget/LinearLayout;
    new-instance v31, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v78, 0x1

    const/16 v79, -0x1

    move-object/from16 v0, v31

    move/from16 v1, v78

    move/from16 v2, v79

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 317
    .local v31, heightLineParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v39

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    const-string v78, "#d4d7dd"

    invoke-static/range {v78 .. v78}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v78

    move-object/from16 v0, v39

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 319
    move-object/from16 v0, v39

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 321
    sget v78, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->randomNum:I

    invoke-static/range {v78 .. v78}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v56

    .line 324
    .local v56, otpAuthNumber:Ljava/lang/String;
    new-instance v57, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    move-object/from16 v0, v57

    move-object/from16 v1, v78

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 325
    .local v57, otpNum:Landroid/widget/TextView;
    move-object/from16 v0, v57

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    const/16 v78, 0x11

    move-object/from16 v0, v57

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 327
    move-object/from16 v0, v57

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    const-string v78, "#2c3b65"

    invoke-static/range {v78 .. v78}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v78

    move-object/from16 v0, v57

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 330
    move-object/from16 v0, v57

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 334
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v78, -0x1

    const/16 v79, 0x0

    const/high16 v80, 0x4040

    move/from16 v0, v78

    move/from16 v1, v79

    move/from16 v2, v80

    invoke-direct {v6, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 336
    .local v6, authBlankViewParams:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v5, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    move-object/from16 v0, v78

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 337
    .local v5, authBlankView:Landroid/widget/LinearLayout;
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 343
    new-instance v58, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v78, -0x1

    const/16 v79, 0x0

    const/high16 v80, 0x41e0

    move-object/from16 v0, v58

    move/from16 v1, v78

    move/from16 v2, v79

    move/from16 v3, v80

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 345
    .local v58, otpViewParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v78

    new-instance v79, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v80, v0

    invoke-static/range {v80 .. v80}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v80

    invoke-direct/range {v79 .. v80}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v80, "inputbox.9.png"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {v78 .. v79}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v35

    .line 346
    const/16 v78, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v78

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v34

    .line 347
    .local v34, inputBox:Landroid/graphics/drawable/Drawable;
    const/16 v35, 0x0

    .line 349
    const/16 v46, 0x4

    .line 350
    .local v46, maxLength:I
    const/16 v78, 0x1

    move/from16 v0, v78

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v29, v0

    .line 351
    .local v29, filterArray:[Landroid/text/InputFilter;
    const/16 v78, 0x0

    new-instance v79, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, v79

    move/from16 v1, v46

    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v79, v29, v78

    .line 353
    new-instance v78, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v79, v0

    invoke-direct/range {v78 .. v79}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v78

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->otpView:Landroid/widget/EditText;

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->otpView:Landroid/widget/EditText;

    move-object/from16 v78, v0

    move-object/from16 v0, v78

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->otpView:Landroid/widget/EditText;

    move-object/from16 v78, v0

    const/16 v79, 0x11

    invoke-virtual/range {v78 .. v79}, Landroid/widget/EditText;->setGravity(I)V

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->otpView:Landroid/widget/EditText;

    move-object/from16 v78, v0

    move-object/from16 v0, v78

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->otpView:Landroid/widget/EditText;

    move-object/from16 v78, v0

    const/16 v79, 0x2

    invoke-virtual/range {v78 .. v79}, Landroid/widget/EditText;->setInputType(I)V

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->otpView:Landroid/widget/EditText;

    move-object/from16 v78, v0

    invoke-virtual/range {v78 .. v78}, Landroid/widget/EditText;->setSingleLine()V

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->otpView:Landroid/widget/EditText;

    move-object/from16 v78, v0

    move-object/from16 v0, v78

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 360
    new-instance v59, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct/range {v59 .. v59}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    .line 361
    .local v59, passwdtm:Landroid/text/method/PasswordTransformationMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->otpView:Landroid/widget/EditText;

    move-object/from16 v78, v0

    move-object/from16 v0, v78

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->otpView:Landroid/widget/EditText;

    move-object/from16 v78, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->otpView:Landroid/widget/EditText;

    move-object/from16 v78, v0

    new-instance v79, Lcom/feelingk/lguiab/manager/gui/payAuthDialog$1;

    move-object/from16 v0, v79

    move-object/from16 v1, p0

    move-object/from16 v2, v56

    invoke-direct {v0, v1, v2}, Lcom/feelingk/lguiab/manager/gui/payAuthDialog$1;-><init>(Lcom/feelingk/lguiab/manager/gui/payAuthDialog;Ljava/lang/String;)V

    invoke-virtual/range {v78 .. v79}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 398
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v78

    new-instance v79, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v80, v0

    invoke-static/range {v80 .. v80}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v80

    invoke-direct/range {v79 .. v80}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v80, "info_bg.9.png"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {v78 .. v79}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v35

    .line 399
    const/16 v78, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v78

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v50

    .line 400
    .local v50, messageBox:Landroid/graphics/drawable/Drawable;
    const/16 v35, 0x0

    .line 403
    new-instance v33, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v78, 0x0

    const/16 v79, -0x1

    const/high16 v80, 0x40a0

    move-object/from16 v0, v33

    move/from16 v1, v78

    move/from16 v2, v79

    move/from16 v3, v80

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 404
    .local v33, infoTextParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v78, 0x20

    move/from16 v0, v78

    move-object/from16 v1, v33

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 405
    new-instance v7, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    move-object/from16 v0, v78

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 406
    .local v7, authInfoText:Landroid/widget/LinearLayout;
    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    const/16 v78, 0x11

    move/from16 v0, v78

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 408
    move-object/from16 v0, v50

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 410
    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 412
    new-instance v32, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v78

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 413
    .local v32, infoText:Landroid/widget/TextView;
    const/16 v78, 0x7

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v81, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v78

    move/from16 v2, v79

    move/from16 v3, v80

    move/from16 v4, v81

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 414
    const/16 v78, 0x10

    move-object/from16 v0, v32

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 415
    const-string v78, "U+ \uc571\ub9c8\ucf13 \uacb0\uc81c \ube44\ubc00\n\ubc88\ud638\ub97c \uc124\uc815\ud558\uba74 \ub354\uc6b1\n\uc548\uc804\ud558\uac8c \uacb0\uc81c\ud558\uc2e4 \uc218\n\uc788\uc2b5\ub2c8\ub2e4."

    move-object/from16 v0, v32

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    const-string v78, "#91633f"

    invoke-static/range {v78 .. v78}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v78

    move-object/from16 v0, v32

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 417
    move/from16 v0, v70

    int-to-float v0, v0

    move/from16 v78, v0

    move-object/from16 v0, v32

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 418
    move-object/from16 v0, v32

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 420
    new-instance v23, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v78

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 422
    .local v23, buttonView:Landroid/widget/LinearLayout;
    new-instance v24, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->totalWidth:I

    move/from16 v78, v0

    add-int/lit8 v78, v78, -0x15

    const/16 v79, 0x0

    const/high16 v80, 0x4040

    move-object/from16 v0, v24

    move/from16 v1, v78

    move/from16 v2, v79

    move/from16 v3, v80

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 423
    .local v24, buttonViewParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v23 .. v24}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 424
    const/16 v78, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 425
    const/16 v78, 0xb

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v81, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v78

    move/from16 v2, v79

    move/from16 v3, v80

    move/from16 v4, v81

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 427
    move-object/from16 v0, v63

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 430
    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v78, -0x1

    const/16 v79, 0x0

    const/high16 v80, 0x3f80

    move-object/from16 v0, v18

    move/from16 v1, v78

    move/from16 v2, v79

    move/from16 v3, v80

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 432
    .local v18, btnBlankViewParams:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v22, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v78, -0x1

    const/16 v79, 0x0

    const/high16 v80, 0x40a0

    move-object/from16 v0, v22

    move/from16 v1, v78

    move/from16 v2, v79

    move/from16 v3, v80

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 434
    .local v22, btnViewParams:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v78

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 435
    .local v17, btnBlankView:Landroid/widget/LinearLayout;
    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 437
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 439
    new-instance v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v78

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 440
    .local v21, btnView:Landroid/widget/LinearLayout;
    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 441
    const/16 v78, 0x11

    move-object/from16 v0, v21

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 443
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 445
    new-instance v55, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v55 .. v55}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 446
    .local v55, okDrawables:Landroid/graphics/drawable/StateListDrawable;
    new-instance v25, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 449
    .local v25, cancelDrawables:Landroid/graphics/drawable/StateListDrawable;
    const v65, 0x10100a0

    .line 450
    .local v65, stateChecked:I
    const v66, 0x101009c

    .line 451
    .local v66, stateFocused:I
    const v67, 0x10100a7

    .line 452
    .local v67, statePressed:I
    const v68, 0x101009d

    .line 454
    .local v68, stateWindowFocused:I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v78

    new-instance v79, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v80, v0

    invoke-static/range {v80 .. v80}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v80

    invoke-direct/range {v79 .. v80}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v80, "menu_btn.9.png"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {v78 .. v79}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v35

    .line 455
    const/16 v78, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v78

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v47

    .line 456
    .local v47, menu_btn:Landroid/graphics/drawable/Drawable;
    const/16 v35, 0x0

    .line 458
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v78

    new-instance v79, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v80, v0

    invoke-static/range {v80 .. v80}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v80

    invoke-direct/range {v79 .. v80}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v80, "menu_btn_pressed.9.png"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {v78 .. v79}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v35

    .line 459
    const/16 v78, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v78

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v49

    .line 460
    .local v49, menu_btn_pressed:Landroid/graphics/drawable/Drawable;
    const/16 v35, 0x0

    .line 462
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v78

    new-instance v79, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v80, v0

    invoke-static/range {v80 .. v80}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v80

    invoke-direct/range {v79 .. v80}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v80, "menu_btn_active.9.png"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {v78 .. v79}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v35

    .line 463
    const/16 v78, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v78

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v48

    .line 464
    .local v48, menu_btn_active:Landroid/graphics/drawable/Drawable;
    const/16 v35, 0x0

    .line 466
    const/16 v78, 0x2

    move/from16 v0, v78

    new-array v0, v0, [I

    move-object/from16 v78, v0

    const/16 v79, 0x0

    aput v65, v78, v79

    const/16 v79, 0x1

    move/from16 v0, v68

    neg-int v0, v0

    move/from16 v80, v0

    aput v80, v78, v79

    move-object/from16 v0, v55

    move-object/from16 v1, v78

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 467
    const/16 v78, 0x2

    move/from16 v0, v78

    new-array v0, v0, [I

    move-object/from16 v78, v0

    const/16 v79, 0x0

    move/from16 v0, v65

    neg-int v0, v0

    move/from16 v80, v0

    aput v80, v78, v79

    const/16 v79, 0x1

    move/from16 v0, v68

    neg-int v0, v0

    move/from16 v80, v0

    aput v80, v78, v79

    move-object/from16 v0, v55

    move-object/from16 v1, v78

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 468
    const/16 v78, 0x2

    move/from16 v0, v78

    new-array v0, v0, [I

    move-object/from16 v78, v0

    const/16 v79, 0x0

    aput v65, v78, v79

    const/16 v79, 0x1

    aput v67, v78, v79

    move-object/from16 v0, v55

    move-object/from16 v1, v78

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 469
    const/16 v78, 0x2

    move/from16 v0, v78

    new-array v0, v0, [I

    move-object/from16 v78, v0

    const/16 v79, 0x0

    move/from16 v0, v65

    neg-int v0, v0

    move/from16 v80, v0

    aput v80, v78, v79

    const/16 v79, 0x1

    aput v67, v78, v79

    move-object/from16 v0, v55

    move-object/from16 v1, v78

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 470
    const/16 v78, 0x2

    move/from16 v0, v78

    new-array v0, v0, [I

    move-object/from16 v78, v0

    const/16 v79, 0x0

    aput v65, v78, v79

    const/16 v79, 0x1

    aput v66, v78, v79

    move-object/from16 v0, v55

    move-object/from16 v1, v78

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 471
    const/16 v78, 0x2

    move/from16 v0, v78

    new-array v0, v0, [I

    move-object/from16 v78, v0

    const/16 v79, 0x0

    move/from16 v0, v65

    neg-int v0, v0

    move/from16 v80, v0

    aput v80, v78, v79

    const/16 v79, 0x1

    aput v66, v78, v79

    move-object/from16 v0, v55

    move-object/from16 v1, v78

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 472
    const/16 v78, 0x1

    move/from16 v0, v78

    new-array v0, v0, [I

    move-object/from16 v78, v0

    const/16 v79, 0x0

    aput v65, v78, v79

    move-object/from16 v0, v55

    move-object/from16 v1, v78

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 473
    const/16 v78, 0x1

    move/from16 v0, v78

    new-array v0, v0, [I

    move-object/from16 v78, v0

    const/16 v79, 0x0

    move/from16 v0, v65

    neg-int v0, v0

    move/from16 v80, v0

    aput v80, v78, v79

    move-object/from16 v0, v55

    move-object/from16 v1, v78

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 474
    const/16 v78, 0x0

    move/from16 v0, v78

    new-array v0, v0, [I

    move-object/from16 v78, v0

    move-object/from16 v0, v55

    move-object/from16 v1, v78

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 477
    new-instance v37, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->totalWidth:I

    move/from16 v78, v0

    add-int/lit8 v78, v78, -0x3c

    div-int/lit8 v78, v78, 0x2

    move-object/from16 v0, v37

    move/from16 v1, v78

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 479
    .local v37, leftbuttonParams:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v62, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->totalWidth:I

    move/from16 v78, v0

    add-int/lit8 v78, v78, -0x3c

    div-int/lit8 v78, v78, 0x2

    move-object/from16 v0, v62

    move/from16 v1, v78

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 480
    .local v62, rightbuttonParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v78, 0xf

    const/16 v79, 0xa

    const/16 v80, 0x8

    move-object/from16 v0, v37

    move/from16 v1, v78

    move/from16 v2, v20

    move/from16 v3, v79

    move/from16 v4, v80

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 481
    const/16 v78, 0x0

    const/16 v79, 0xf

    const/16 v80, 0x8

    move-object/from16 v0, v62

    move/from16 v1, v78

    move/from16 v2, v20

    move/from16 v3, v79

    move/from16 v4, v80

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 483
    new-instance v78, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v79, v0

    invoke-direct/range {v78 .. v79}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v78

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->purchaseBtn:Landroid/widget/Button;

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->purchaseBtn:Landroid/widget/Button;

    move-object/from16 v78, v0

    move-object/from16 v0, v78

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->purchaseBtn:Landroid/widget/Button;

    move-object/from16 v78, v0

    move-object/from16 v0, v78

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->purchaseBtn:Landroid/widget/Button;

    move-object/from16 v78, v0

    const/16 v79, 0x11

    invoke-virtual/range {v78 .. v79}, Landroid/widget/Button;->setGravity(I)V

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->purchaseBtn:Landroid/widget/Button;

    move-object/from16 v78, v0

    const-string v79, "\uad6c\ub9e4"

    invoke-virtual/range {v78 .. v79}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->purchaseBtn:Landroid/widget/Button;

    move-object/from16 v78, v0

    const v79, 0x4195999a

    invoke-virtual/range {v78 .. v79}, Landroid/widget/Button;->setTextSize(F)V

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->purchaseBtn:Landroid/widget/Button;

    move-object/from16 v78, v0

    new-instance v79, Landroid/content/res/ColorStateList;

    .line 490
    const/16 v80, 0x2

    move/from16 v0, v80

    new-array v0, v0, [[I

    move-object/from16 v80, v0

    const/16 v81, 0x0

    .line 491
    const/16 v82, 0x1

    move/from16 v0, v82

    new-array v0, v0, [I

    move-object/from16 v82, v0

    const/16 v83, 0x0

    aput v67, v82, v83

    aput-object v82, v80, v81

    const/16 v81, 0x1

    .line 492
    const/16 v82, 0x0

    move/from16 v0, v82

    new-array v0, v0, [I

    move-object/from16 v82, v0

    aput-object v82, v80, v81

    .line 493
    const/16 v81, 0x2

    move/from16 v0, v81

    new-array v0, v0, [I

    move-object/from16 v81, v0

    const/16 v82, 0x0

    .line 494
    const-string v83, "#ffffff"

    invoke-static/range {v83 .. v83}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v83

    aput v83, v81, v82

    const/16 v82, 0x1

    .line 495
    const-string v83, "#2c3b65"

    invoke-static/range {v83 .. v83}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v83

    aput v83, v81, v82

    invoke-direct/range {v79 .. v81}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 489
    invoke-virtual/range {v78 .. v79}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->purchaseBtn:Landroid/widget/Button;

    move-object/from16 v78, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 500
    const/16 v78, 0x2

    move/from16 v0, v78

    new-array v0, v0, [I

    move-object/from16 v78, v0

    const/16 v79, 0x0

    aput v65, v78, v79

    const/16 v79, 0x1

    move/from16 v0, v68

    neg-int v0, v0

    move/from16 v80, v0

    aput v80, v78, v79

    move-object/from16 v0, v25

    move-object/from16 v1, v78

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 501
    const/16 v78, 0x2

    move/from16 v0, v78

    new-array v0, v0, [I

    move-object/from16 v78, v0

    const/16 v79, 0x0

    move/from16 v0, v65

    neg-int v0, v0

    move/from16 v80, v0

    aput v80, v78, v79

    const/16 v79, 0x1

    move/from16 v0, v68

    neg-int v0, v0

    move/from16 v80, v0

    aput v80, v78, v79

    move-object/from16 v0, v25

    move-object/from16 v1, v78

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 502
    const/16 v78, 0x2

    move/from16 v0, v78

    new-array v0, v0, [I

    move-object/from16 v78, v0

    const/16 v79, 0x0

    aput v65, v78, v79

    const/16 v79, 0x1

    aput v67, v78, v79

    move-object/from16 v0, v25

    move-object/from16 v1, v78

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 503
    const/16 v78, 0x2

    move/from16 v0, v78

    new-array v0, v0, [I

    move-object/from16 v78, v0

    const/16 v79, 0x0

    move/from16 v0, v65

    neg-int v0, v0

    move/from16 v80, v0

    aput v80, v78, v79

    const/16 v79, 0x1

    aput v67, v78, v79

    move-object/from16 v0, v25

    move-object/from16 v1, v78

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 504
    const/16 v78, 0x2

    move/from16 v0, v78

    new-array v0, v0, [I

    move-object/from16 v78, v0

    const/16 v79, 0x0

    aput v65, v78, v79

    const/16 v79, 0x1

    aput v66, v78, v79

    move-object/from16 v0, v25

    move-object/from16 v1, v78

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 505
    const/16 v78, 0x2

    move/from16 v0, v78

    new-array v0, v0, [I

    move-object/from16 v78, v0

    const/16 v79, 0x0

    move/from16 v0, v65

    neg-int v0, v0

    move/from16 v80, v0

    aput v80, v78, v79

    const/16 v79, 0x1

    aput v66, v78, v79

    move-object/from16 v0, v25

    move-object/from16 v1, v78

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 506
    const/16 v78, 0x1

    move/from16 v0, v78

    new-array v0, v0, [I

    move-object/from16 v78, v0

    const/16 v79, 0x0

    aput v65, v78, v79

    move-object/from16 v0, v25

    move-object/from16 v1, v78

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 507
    const/16 v78, 0x1

    move/from16 v0, v78

    new-array v0, v0, [I

    move-object/from16 v78, v0

    const/16 v79, 0x0

    move/from16 v0, v65

    neg-int v0, v0

    move/from16 v80, v0

    aput v80, v78, v79

    move-object/from16 v0, v25

    move-object/from16 v1, v78

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 508
    const/16 v78, 0x0

    move/from16 v0, v78

    new-array v0, v0, [I

    move-object/from16 v78, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v78

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 510
    new-instance v78, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v79, v0

    invoke-direct/range {v78 .. v79}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v78

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->cancelBtn:Landroid/widget/Button;

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->cancelBtn:Landroid/widget/Button;

    move-object/from16 v78, v0

    move-object/from16 v0, v78

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->cancelBtn:Landroid/widget/Button;

    move-object/from16 v78, v0

    move-object/from16 v0, v78

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->cancelBtn:Landroid/widget/Button;

    move-object/from16 v78, v0

    const/16 v79, 0x11

    invoke-virtual/range {v78 .. v79}, Landroid/widget/Button;->setGravity(I)V

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->cancelBtn:Landroid/widget/Button;

    move-object/from16 v78, v0

    const-string v79, "\ucde8\uc18c"

    invoke-virtual/range {v78 .. v79}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->cancelBtn:Landroid/widget/Button;

    move-object/from16 v78, v0

    const v79, 0x4195999a

    invoke-virtual/range {v78 .. v79}, Landroid/widget/Button;->setTextSize(F)V

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->cancelBtn:Landroid/widget/Button;

    move-object/from16 v78, v0

    new-instance v79, Landroid/content/res/ColorStateList;

    .line 517
    const/16 v80, 0x2

    move/from16 v0, v80

    new-array v0, v0, [[I

    move-object/from16 v80, v0

    const/16 v81, 0x0

    .line 518
    const/16 v82, 0x1

    move/from16 v0, v82

    new-array v0, v0, [I

    move-object/from16 v82, v0

    const/16 v83, 0x0

    aput v67, v82, v83

    aput-object v82, v80, v81

    const/16 v81, 0x1

    .line 519
    const/16 v82, 0x0

    move/from16 v0, v82

    new-array v0, v0, [I

    move-object/from16 v82, v0

    aput-object v82, v80, v81

    .line 520
    const/16 v81, 0x2

    move/from16 v0, v81

    new-array v0, v0, [I

    move-object/from16 v81, v0

    const/16 v82, 0x0

    .line 521
    const-string v83, "#ffffff"

    invoke-static/range {v83 .. v83}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v83

    aput v83, v81, v82

    const/16 v82, 0x1

    .line 522
    const-string v83, "#2c3b65"

    invoke-static/range {v83 .. v83}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v83

    aput v83, v81, v82

    invoke-direct/range {v79 .. v81}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 516
    invoke-virtual/range {v78 .. v79}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->cancelBtn:Landroid/widget/Button;

    move-object/from16 v78, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 527
    new-instance v44, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v78

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 529
    .local v44, logoView:Landroid/widget/LinearLayout;
    new-instance v45, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->totalWidth:I

    move/from16 v78, v0

    add-int/lit8 v78, v78, -0x14

    const/16 v79, 0x23

    move-object/from16 v0, v45

    move/from16 v1, v78

    move/from16 v2, v79

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 530
    .local v45, logoViewParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v78, 0xa

    const/16 v79, 0x0

    const/16 v80, 0xa

    const/16 v81, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v78

    move/from16 v2, v79

    move/from16 v3, v80

    move/from16 v4, v81

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 531
    invoke-virtual/range {v44 .. v45}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 532
    const/16 v78, 0x11

    move-object/from16 v0, v44

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 533
    const/16 v78, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 534
    move-object/from16 v0, v63

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 536
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v78

    new-instance v79, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v80, v0

    invoke-static/range {v80 .. v80}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v80

    invoke-direct/range {v79 .. v80}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v80, "lguplus_logo.png"

    invoke-virtual/range {v79 .. v80}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v79

    invoke-virtual/range {v79 .. v79}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v79

    invoke-virtual/range {v78 .. v79}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v35

    .line 537
    const/16 v78, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v78

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v38

    .line 538
    .local v38, lguplusLogo:Landroid/graphics/drawable/Drawable;
    const/16 v35, 0x0

    .line 540
    new-instance v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    move-object/from16 v0, v78

    invoke-direct {v13, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 542
    .local v13, blank:Landroid/widget/LinearLayout;
    new-instance v43, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v78, 0x0

    const/16 v79, 0x23

    const/high16 v80, 0x3f80

    move-object/from16 v0, v43

    move/from16 v1, v78

    move/from16 v2, v79

    move/from16 v3, v80

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 543
    .local v43, logoParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v43

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 544
    move-object/from16 v0, v44

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 546
    new-instance v41, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v78

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 547
    .local v41, logo:Landroid/widget/LinearLayout;
    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 548
    move-object/from16 v0, v44

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 550
    new-instance v42, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v78

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 551
    .local v42, logoIm:Landroid/widget/ImageView;
    move-object/from16 v0, v42

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 552
    new-instance v78, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v79, 0x0

    const/16 v80, 0x23

    const/high16 v81, 0x3f80

    invoke-direct/range {v78 .. v81}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v42

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 553
    invoke-virtual/range {v41 .. v42}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 555
    new-instance v77, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v78, v0

    invoke-direct/range {v77 .. v78}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 556
    .local v77, version:Landroid/widget/TextView;
    move-object/from16 v0, v77

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 557
    const/16 v78, 0x15

    invoke-virtual/range {v77 .. v78}, Landroid/widget/TextView;->setGravity(I)V

    .line 558
    move/from16 v0, v70

    int-to-float v0, v0

    move/from16 v78, v0

    invoke-virtual/range {v77 .. v78}, Landroid/widget/TextView;->setTextSize(F)V

    .line 559
    new-instance v78, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v79, 0x0

    const/16 v80, 0x23

    const/high16 v81, 0x3f80

    invoke-direct/range {v78 .. v81}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual/range {v77 .. v78}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 560
    sget-object v78, Lcom/feelingk/lguiab/common/Defines;->SDK_VERSION_INFO:Ljava/lang/String;

    invoke-virtual/range {v77 .. v78}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
    move-object/from16 v0, v44

    move-object/from16 v1, v77

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 563
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->setContentView(Landroid/view/View;)V

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->purchaseBtn:Landroid/widget/Button;

    move-object/from16 v78, v0

    move-object/from16 v0, v78

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->cancelBtn:Landroid/widget/Button;

    move-object/from16 v78, v0

    move-object/from16 v0, v78

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 568
    const-string v78, "PayAuth"

    invoke-static/range {v78 .. v78}, Lcom/feelingk/lguiab/LguIAPLib;->setDialogType(Ljava/lang/String;)V

    .line 569
    return-void

    .line 157
    .end local v5           #authBlankView:Landroid/widget/LinearLayout;
    .end local v6           #authBlankViewParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v7           #authInfoText:Landroid/widget/LinearLayout;
    .end local v8           #authNum:Landroid/widget/TextView;
    .end local v9           #authNumParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v10           #authNumberView:Landroid/widget/LinearLayout;
    .end local v11           #authNumberViewParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v12           #authViewParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v13           #blank:Landroid/widget/LinearLayout;
    .end local v14           #blankParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v15           #blankView:Landroid/widget/LinearLayout;
    .end local v16           #blankView2:Landroid/widget/LinearLayout;
    .end local v17           #btnBlankView:Landroid/widget/LinearLayout;
    .end local v18           #btnBlankViewParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v21           #btnView:Landroid/widget/LinearLayout;
    .end local v22           #btnViewParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v23           #buttonView:Landroid/widget/LinearLayout;
    .end local v24           #buttonViewParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v25           #cancelDrawables:Landroid/graphics/drawable/StateListDrawable;
    .end local v26           #contentView:Landroid/widget/LinearLayout;
    .end local v27           #contentViewParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v28           #ff:Landroid/widget/FrameLayout;
    .end local v29           #filterArray:[Landroid/text/InputFilter;
    .end local v30           #frame:Landroid/widget/LinearLayout;
    .end local v31           #heightLineParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v32           #infoText:Landroid/widget/TextView;
    .end local v33           #infoTextParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v34           #inputBox:Landroid/graphics/drawable/Drawable;
    .end local v35           #is:Ljava/io/InputStream;
    .end local v36           #leftView:Landroid/widget/LinearLayout;
    .end local v37           #leftbuttonParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v38           #lguplusLogo:Landroid/graphics/drawable/Drawable;
    .end local v39           #line:Landroid/widget/LinearLayout;
    .end local v40           #ll:Landroid/widget/LinearLayout;
    .end local v41           #logo:Landroid/widget/LinearLayout;
    .end local v42           #logoIm:Landroid/widget/ImageView;
    .end local v43           #logoParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v44           #logoView:Landroid/widget/LinearLayout;
    .end local v45           #logoViewParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v46           #maxLength:I
    .end local v47           #menu_btn:Landroid/graphics/drawable/Drawable;
    .end local v48           #menu_btn_active:Landroid/graphics/drawable/Drawable;
    .end local v49           #menu_btn_pressed:Landroid/graphics/drawable/Drawable;
    .end local v50           #messageBox:Landroid/graphics/drawable/Drawable;
    .end local v51           #messageView:Landroid/widget/TextView;
    .end local v52           #messageViewParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v53           #midView:Landroid/widget/LinearLayout;
    .end local v54           #midViewParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v55           #okDrawables:Landroid/graphics/drawable/StateListDrawable;
    .end local v56           #otpAuthNumber:Ljava/lang/String;
    .end local v57           #otpNum:Landroid/widget/TextView;
    .end local v58           #otpViewParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v59           #passwdtm:Landroid/text/method/PasswordTransformationMethod;
    .end local v60           #popup_bg:Landroid/graphics/drawable/Drawable;
    .end local v61           #popup_title:Landroid/graphics/drawable/Drawable;
    .end local v62           #rightbuttonParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v63           #root:Landroid/widget/LinearLayout;
    .end local v64           #rootParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v65           #stateChecked:I
    .end local v66           #stateFocused:I
    .end local v67           #statePressed:I
    .end local v68           #stateWindowFocused:I
    .end local v69           #table:Landroid/graphics/drawable/Drawable;
    .end local v71           #title:Landroid/widget/TextView;
    .end local v73           #titleView:Landroid/widget/LinearLayout;
    .end local v74           #topView:Landroid/widget/LinearLayout;
    .end local v75           #topViewParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v76           #upperViewParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v77           #version:Landroid/widget/TextView;
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->screenDensity:I

    move/from16 v78, v0

    const/16 v79, 0xf0

    move/from16 v0, v78

    move/from16 v1, v79

    if-ne v0, v1, :cond_0

    .line 158
    const/16 v19, 0x44

    .line 159
    const/16 v20, 0x7

    .line 160
    const/16 v70, 0xb

    .line 161
    const/16 v72, 0x14

    goto/16 :goto_0
.end method

.method private viewPortrait()V
    .locals 70

    .prologue
    .line 572
    const/4 v12, 0x0

    .local v12, btnHeight:I
    const/4 v13, 0x0

    .local v13, btnTopMar:I
    const/16 v57, 0x0

    .local v57, titleTextSize:I
    const/16 v55, 0x0

    .line 573
    .local v55, textSize:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->deviceWidth:I

    move/from16 v64, v0

    move/from16 v0, v64

    int-to-double v0, v0

    move-wide/from16 v64, v0

    const-wide v66, 0x3fea8f5c28f5c28fL

    mul-double v64, v64, v66

    move-wide/from16 v0, v64

    double-to-int v0, v0

    move/from16 v64, v0

    move/from16 v0, v64

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->totalWidth:I

    .line 574
    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->deviceHeight:I

    move/from16 v64, v0

    move/from16 v0, v64

    int-to-double v0, v0

    move-wide/from16 v64, v0

    const-wide/high16 v66, 0x3fe4

    mul-double v64, v64, v66

    move-wide/from16 v0, v64

    double-to-int v0, v0

    move/from16 v64, v0

    move/from16 v0, v64

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->totalHeight:I

    .line 576
    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->screenDensity:I

    move/from16 v64, v0

    const/16 v65, 0x140

    move/from16 v0, v64

    move/from16 v1, v65

    if-ne v0, v1, :cond_3

    .line 577
    const/16 v12, 0x5b

    .line 578
    const/16 v13, 0x14

    .line 579
    const/16 v55, 0xe

    .line 580
    const/16 v57, 0x16

    .line 589
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->screenDensity:I

    move/from16 v64, v0

    const/16 v65, 0xa0

    move/from16 v0, v64

    move/from16 v1, v65

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/feelingk/lguiab/util/DeviceUtil;->getmAnyDensityState()Z

    move-result v64

    if-nez v64, :cond_2

    .line 591
    :cond_1
    const/16 v12, 0x34

    .line 592
    const/16 v64, 0x128

    move/from16 v0, v64

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->totalWidth:I

    .line 593
    const/16 v64, 0x180

    move/from16 v0, v64

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->totalHeight:I

    .line 594
    const/16 v55, 0xb

    .line 595
    const/16 v57, 0x15

    .line 596
    const/16 v64, 0x128

    move/from16 v0, v64

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->totalWidth:I

    .line 597
    const/16 v64, 0x180

    move/from16 v0, v64

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->totalHeight:I

    .line 605
    :cond_2
    new-instance v26, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v64, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v64

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 607
    .local v26, ll:Landroid/widget/LinearLayout;
    new-instance v17, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v64, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v64

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 608
    .local v17, ff:Landroid/widget/FrameLayout;
    new-instance v64, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->totalWidth:I

    move/from16 v65, v0

    const/16 v66, -0x2

    invoke-direct/range {v64 .. v66}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 609
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 611
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v64

    new-instance v65, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v66, v0

    invoke-static/range {v66 .. v66}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v66

    invoke-direct/range {v65 .. v66}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v66, "popup_bg.9.png"

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v22

    .line 612
    .local v22, is:Ljava/io/InputStream;
    const/16 v64, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v64

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v44

    .line 613
    .local v44, popup_bg:Landroid/graphics/drawable/Drawable;
    const/16 v22, 0x0

    .line 616
    new-instance v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v64, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v64

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 617
    .local v19, frame:Landroid/widget/LinearLayout;
    new-instance v64, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->totalWidth:I

    move/from16 v65, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->totalHeight:I

    move/from16 v66, v0

    invoke-direct/range {v64 .. v66}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 618
    move-object/from16 v0, v19

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 619
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 621
    new-instance v48, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v64, v0

    move-object/from16 v0, v48

    move-object/from16 v1, v64

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 623
    .local v48, root:Landroid/widget/LinearLayout;
    new-instance v49, Landroid/widget/LinearLayout$LayoutParams;

    new-instance v64, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->totalWidth:I

    move/from16 v65, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->totalHeight:I

    move/from16 v66, v0

    invoke-direct/range {v64 .. v66}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v49

    move-object/from16 v1, v64

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 624
    .local v49, rootParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v48 .. v49}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 625
    const/16 v64, 0x1

    move-object/from16 v0, v48

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 626
    move-object/from16 v0, v17

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 628
    new-instance v59, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v64, v0

    move-object/from16 v0, v59

    move-object/from16 v1, v64

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 630
    .local v59, topView:Landroid/widget/LinearLayout;
    new-instance v60, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->totalWidth:I

    move/from16 v64, v0

    const/16 v65, 0x0

    const/high16 v66, 0x40a0

    move-object/from16 v0, v60

    move/from16 v1, v64

    move/from16 v2, v65

    move/from16 v3, v66

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 631
    .local v60, topViewParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v59 .. v60}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 632
    const/16 v64, 0x1

    move-object/from16 v0, v59

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 633
    move-object/from16 v0, v48

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 636
    new-instance v61, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->totalWidth:I

    move/from16 v64, v0

    add-int/lit8 v64, v64, -0x15

    const/16 v65, 0x0

    const/high16 v66, 0x3f80

    move-object/from16 v0, v61

    move/from16 v1, v64

    move/from16 v2, v65

    move/from16 v3, v66

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 637
    .local v61, upperViewParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v64, 0xb

    const/16 v65, 0xa

    const/16 v66, 0x0

    const/16 v67, 0x0

    move-object/from16 v0, v61

    move/from16 v1, v64

    move/from16 v2, v65

    move/from16 v3, v66

    move/from16 v4, v67

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 640
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v64

    new-instance v65, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v66, v0

    invoke-static/range {v66 .. v66}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v66

    invoke-direct/range {v65 .. v66}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v66, "popup_title.png"

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v22

    .line 641
    const/16 v64, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v64

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v46

    .line 642
    .local v46, popup_title:Landroid/graphics/drawable/Drawable;
    const/16 v22, 0x0

    .line 644
    new-instance v58, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v64, v0

    move-object/from16 v0, v58

    move-object/from16 v1, v64

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 645
    .local v58, titleView:Landroid/widget/LinearLayout;
    move-object/from16 v0, v58

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 646
    const/16 v64, 0x11

    move-object/from16 v0, v58

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 647
    move-object/from16 v0, v58

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 648
    move-object/from16 v0, v59

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 650
    new-instance v56, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v64, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v64

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 651
    .local v56, title:Landroid/widget/TextView;
    const-string v64, "\uacb0\uc81c \uc778\uc99d"

    move-object/from16 v0, v56

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 652
    const-string v64, "#ffffff"

    invoke-static/range {v64 .. v64}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v64

    move-object/from16 v0, v56

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 653
    move/from16 v0, v57

    int-to-float v0, v0

    move/from16 v64, v0

    move-object/from16 v0, v56

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 654
    move-object/from16 v0, v58

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 657
    new-instance v62, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->totalWidth:I

    move/from16 v64, v0

    add-int/lit8 v64, v64, -0x3c

    const/16 v65, 0x0

    const/high16 v66, 0x3f80

    move-object/from16 v0, v62

    move/from16 v1, v64

    move/from16 v2, v65

    move/from16 v3, v66

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 658
    .local v62, upperViewParams2:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v64, 0x1e

    const/16 v65, 0xe

    const/16 v66, 0x0

    const/16 v67, 0x0

    move-object/from16 v0, v62

    move/from16 v1, v64

    move/from16 v2, v65

    move/from16 v3, v66

    move/from16 v4, v67

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 660
    new-instance v37, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v64, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v64

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 661
    .local v37, messageView:Landroid/widget/LinearLayout;
    move-object/from16 v0, v37

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 662
    const/16 v64, 0x11

    move-object/from16 v0, v37

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 663
    move-object/from16 v0, v59

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 666
    new-instance v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    invoke-direct {v5, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 667
    .local v5, authInfoText:Landroid/widget/TextView;
    const-string v64, "U+\uc571\ub9c8\ucf13\uc740 \uc720\ub8cc\ud654 \uacb0\uc81c \ubcf4\uc548\uc744 \uc704\ud574\n\uc778\uc99d \uc808\ucc28\ub97c \uac70\uce58\uace0 \uc788\uc2b5\ub2c8\ub2e4.\n\uc544\ub798\uc758 \uc778\uc99d\ubc88\ud638\ub97c \uc785\ub825\ud574 \uc8fc\uc138\uc694."

    move-object/from16 v0, v64

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    const-string v64, "#91633f"

    invoke-static/range {v64 .. v64}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v64

    move/from16 v0, v64

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 669
    move/from16 v0, v55

    int-to-float v0, v0

    move/from16 v64, v0

    move/from16 v0, v64

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 670
    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 674
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v64

    new-instance v65, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v66, v0

    invoke-static/range {v66 .. v66}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v66

    invoke-direct/range {v65 .. v66}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v66, "table_bg.9.png"

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v22

    .line 675
    const/16 v64, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v64

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v54

    .line 676
    .local v54, table:Landroid/graphics/drawable/Drawable;
    const/16 v22, 0x0

    .line 678
    new-instance v8, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 679
    .local v8, authNumberView:Landroid/widget/LinearLayout;
    const/16 v64, 0x0

    move/from16 v0, v64

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 680
    const/16 v64, 0x11

    move/from16 v0, v64

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 681
    move-object/from16 v0, v62

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 682
    move-object/from16 v0, v54

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 683
    move-object/from16 v0, v59

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 686
    new-instance v6, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 687
    .local v6, authNum:Landroid/widget/TextView;
    const-string v64, "\uc778\uc99d\ubc88\ud638"

    move-object/from16 v0, v64

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 688
    const/16 v64, 0x11

    move/from16 v0, v64

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 689
    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->totalWidth:I

    move/from16 v64, v0

    add-int/lit8 v64, v64, -0x3d

    div-int/lit8 v64, v64, 0x2

    move/from16 v0, v64

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setWidth(I)V

    .line 690
    const-string v64, "#2c3b65"

    invoke-static/range {v64 .. v64}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v64

    move/from16 v0, v64

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 691
    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 694
    new-instance v25, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v64, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v64

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 696
    .local v25, line:Landroid/widget/LinearLayout;
    new-instance v20, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v64, 0x1

    const/16 v65, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v64

    move/from16 v2, v65

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 697
    .local v20, heightLineParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 698
    const-string v64, "#d4d7dd"

    invoke-static/range {v64 .. v64}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v64

    move-object/from16 v0, v25

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 699
    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 701
    sget v64, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->randomNum:I

    invoke-static/range {v64 .. v64}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v41

    .line 702
    .local v41, otpAuthNumber:Ljava/lang/String;
    new-instance v42, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v64, v0

    move-object/from16 v0, v42

    move-object/from16 v1, v64

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 703
    .local v42, otpNum:Landroid/widget/TextView;
    move-object/from16 v0, v42

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 704
    const/16 v64, 0x11

    move-object/from16 v0, v42

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 705
    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->totalWidth:I

    move/from16 v64, v0

    add-int/lit8 v64, v64, -0x3d

    div-int/lit8 v64, v64, 0x2

    move-object/from16 v0, v42

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 706
    const-string v64, "#2c3b65"

    invoke-static/range {v64 .. v64}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v64

    move-object/from16 v0, v42

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 707
    move-object/from16 v0, v42

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 713
    new-instance v11, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    invoke-direct {v11, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 715
    .local v11, bottomView:Landroid/widget/LinearLayout;
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->totalWidth:I

    move/from16 v64, v0

    const/16 v65, 0x0

    const/high16 v66, 0x40c0

    move/from16 v0, v64

    move/from16 v1, v65

    move/from16 v2, v66

    invoke-direct {v10, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 716
    .local v10, bottomParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v11, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 717
    const/16 v64, 0x11

    move/from16 v0, v64

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 718
    const/16 v64, 0x1

    move/from16 v0, v64

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 719
    move-object/from16 v0, v48

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 722
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->totalWidth:I

    move/from16 v64, v0

    add-int/lit8 v64, v64, -0x4b

    const/16 v65, 0x0

    const/high16 v66, 0x4180

    move/from16 v0, v64

    move/from16 v1, v65

    move/from16 v2, v66

    invoke-direct {v7, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 723
    .local v7, authNumberEditParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v64, 0x0

    const/16 v65, 0x5

    const/16 v66, 0x0

    const/16 v67, 0x0

    move/from16 v0, v64

    move/from16 v1, v65

    move/from16 v2, v66

    move/from16 v3, v67

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 725
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v64

    new-instance v65, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v66, v0

    invoke-static/range {v66 .. v66}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v66

    invoke-direct/range {v65 .. v66}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v66, "inputbox.9.png"

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v22

    .line 726
    const/16 v64, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v64

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    .line 727
    .local v21, inputBox:Landroid/graphics/drawable/Drawable;
    const/16 v22, 0x0

    .line 729
    const/16 v32, 0x4

    .line 730
    .local v32, maxLength:I
    const/16 v64, 0x1

    move/from16 v0, v64

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v18, v0

    .line 731
    .local v18, filterArray:[Landroid/text/InputFilter;
    const/16 v64, 0x0

    new-instance v65, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, v65

    move/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v65, v18, v64

    .line 733
    new-instance v64, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v65, v0

    invoke-direct/range {v64 .. v65}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v64

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->otpView:Landroid/widget/EditText;

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->otpView:Landroid/widget/EditText;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    invoke-virtual {v0, v7}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->otpView:Landroid/widget/EditText;

    move-object/from16 v64, v0

    const/16 v65, 0x11

    invoke-virtual/range {v64 .. v65}, Landroid/widget/EditText;->setGravity(I)V

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->otpView:Landroid/widget/EditText;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->otpView:Landroid/widget/EditText;

    move-object/from16 v64, v0

    const/16 v65, 0x2

    invoke-virtual/range {v64 .. v65}, Landroid/widget/EditText;->setInputType(I)V

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->otpView:Landroid/widget/EditText;

    move-object/from16 v64, v0

    invoke-virtual/range {v64 .. v64}, Landroid/widget/EditText;->setSingleLine()V

    .line 739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->otpView:Landroid/widget/EditText;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 740
    new-instance v43, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct/range {v43 .. v43}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    .line 741
    .local v43, passwdtm:Landroid/text/method/PasswordTransformationMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->otpView:Landroid/widget/EditText;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->otpView:Landroid/widget/EditText;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->otpView:Landroid/widget/EditText;

    move-object/from16 v64, v0

    new-instance v65, Lcom/feelingk/lguiab/manager/gui/payAuthDialog$2;

    move-object/from16 v0, v65

    move-object/from16 v1, p0

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/feelingk/lguiab/manager/gui/payAuthDialog$2;-><init>(Lcom/feelingk/lguiab/manager/gui/payAuthDialog;Ljava/lang/String;)V

    invoke-virtual/range {v64 .. v65}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 781
    new-instance v39, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->totalWidth:I

    move/from16 v64, v0

    add-int/lit8 v64, v64, -0x3c

    const/16 v65, 0x0

    const/high16 v66, 0x4170

    move-object/from16 v0, v39

    move/from16 v1, v64

    move/from16 v2, v65

    move/from16 v3, v66

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 782
    .local v39, messageView2Params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v64, 0x0

    const/16 v65, 0xf

    const/16 v66, 0x0

    const/16 v67, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v64

    move/from16 v2, v65

    move/from16 v3, v66

    move/from16 v4, v67

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 785
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v64

    new-instance v65, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v66, v0

    invoke-static/range {v66 .. v66}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v66

    invoke-direct/range {v65 .. v66}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v66, "info_bg.9.png"

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v22

    .line 786
    const/16 v64, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v64

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v36

    .line 787
    .local v36, messageBox:Landroid/graphics/drawable/Drawable;
    const/16 v22, 0x0

    .line 789
    new-instance v38, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v64, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v64

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 790
    .local v38, messageView2:Landroid/widget/TextView;
    invoke-virtual/range {v38 .. v39}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 791
    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 792
    const/16 v64, 0x10

    move-object/from16 v0, v38

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 793
    const/16 v64, 0xa

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v64

    move/from16 v2, v65

    move/from16 v3, v66

    move/from16 v4, v67

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 794
    const-string v64, "U+ \uc571\ub9c8\ucf13 \uacb0\uc81c \ube44\ubc00\ubc88\ud638\ub97c \uc124\uc815\ud558\uba74 \ub354\uc6b1\n\uc548\uc804\ud558\uac8c \uacb0\uc81c\ud558\uc2e4 \uc218 \uc788\uc2b5\ub2c8\ub2e4."

    move-object/from16 v0, v38

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 795
    const-string v64, "#91633f"

    invoke-static/range {v64 .. v64}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v64

    move-object/from16 v0, v38

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 796
    move/from16 v0, v55

    int-to-float v0, v0

    move/from16 v64, v0

    move-object/from16 v0, v38

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 797
    move-object/from16 v0, v38

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 800
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->totalWidth:I

    move/from16 v64, v0

    add-int/lit8 v64, v64, -0x16

    const/16 v65, 0x0

    const/high16 v66, 0x41a0

    move/from16 v0, v64

    move/from16 v1, v65

    move/from16 v2, v66

    invoke-direct {v14, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 801
    .local v14, buttonParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v64, 0x0

    const/16 v65, 0xf

    const/16 v66, 0x0

    const/16 v67, 0x0

    move/from16 v0, v64

    move/from16 v1, v65

    move/from16 v2, v66

    move/from16 v3, v67

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 803
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v64

    new-instance v65, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v66, v0

    invoke-static/range {v66 .. v66}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v66

    invoke-direct/range {v65 .. v66}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v66, "popup_btn_bg.png"

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v22

    .line 804
    const/16 v64, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v64

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v45

    .line 805
    .local v45, popup_btn_bg:Landroid/graphics/drawable/Drawable;
    const/16 v22, 0x0

    .line 807
    new-instance v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    invoke-direct {v15, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 808
    .local v15, buttonView:Landroid/widget/LinearLayout;
    invoke-virtual {v15, v14}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 809
    move-object/from16 v0, v45

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 810
    invoke-virtual {v11, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 812
    new-instance v40, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v40 .. v40}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 813
    .local v40, okDrawables:Landroid/graphics/drawable/StateListDrawable;
    new-instance v16, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 815
    .local v16, cancelDrawables:Landroid/graphics/drawable/StateListDrawable;
    const v50, 0x10100a0

    .line 816
    .local v50, stateChecked:I
    const v51, 0x101009c

    .line 817
    .local v51, stateFocused:I
    const v52, 0x10100a7

    .line 818
    .local v52, statePressed:I
    const v53, 0x101009d

    .line 820
    .local v53, stateWindowFocused:I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v64

    new-instance v65, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v66, v0

    invoke-static/range {v66 .. v66}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v66

    invoke-direct/range {v65 .. v66}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v66, "menu_btn.9.png"

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v22

    .line 821
    const/16 v64, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v64

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v33

    .line 822
    .local v33, menu_btn:Landroid/graphics/drawable/Drawable;
    const/16 v22, 0x0

    .line 824
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v64

    new-instance v65, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v66, v0

    invoke-static/range {v66 .. v66}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v66

    invoke-direct/range {v65 .. v66}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v66, "menu_btn_pressed.9.png"

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v22

    .line 825
    const/16 v64, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v64

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v35

    .line 826
    .local v35, menu_btn_pressed:Landroid/graphics/drawable/Drawable;
    const/16 v22, 0x0

    .line 828
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v64

    new-instance v65, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v66, v0

    invoke-static/range {v66 .. v66}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v66

    invoke-direct/range {v65 .. v66}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v66, "menu_btn_active.9.png"

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v22

    .line 829
    const/16 v64, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v64

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v34

    .line 830
    .local v34, menu_btn_active:Landroid/graphics/drawable/Drawable;
    const/16 v22, 0x0

    .line 832
    const/16 v64, 0x2

    move/from16 v0, v64

    new-array v0, v0, [I

    move-object/from16 v64, v0

    const/16 v65, 0x0

    aput v50, v64, v65

    const/16 v65, 0x1

    move/from16 v0, v53

    neg-int v0, v0

    move/from16 v66, v0

    aput v66, v64, v65

    move-object/from16 v0, v40

    move-object/from16 v1, v64

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 833
    const/16 v64, 0x2

    move/from16 v0, v64

    new-array v0, v0, [I

    move-object/from16 v64, v0

    const/16 v65, 0x0

    move/from16 v0, v50

    neg-int v0, v0

    move/from16 v66, v0

    aput v66, v64, v65

    const/16 v65, 0x1

    move/from16 v0, v53

    neg-int v0, v0

    move/from16 v66, v0

    aput v66, v64, v65

    move-object/from16 v0, v40

    move-object/from16 v1, v64

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 834
    const/16 v64, 0x2

    move/from16 v0, v64

    new-array v0, v0, [I

    move-object/from16 v64, v0

    const/16 v65, 0x0

    aput v50, v64, v65

    const/16 v65, 0x1

    aput v52, v64, v65

    move-object/from16 v0, v40

    move-object/from16 v1, v64

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 835
    const/16 v64, 0x2

    move/from16 v0, v64

    new-array v0, v0, [I

    move-object/from16 v64, v0

    const/16 v65, 0x0

    move/from16 v0, v50

    neg-int v0, v0

    move/from16 v66, v0

    aput v66, v64, v65

    const/16 v65, 0x1

    aput v52, v64, v65

    move-object/from16 v0, v40

    move-object/from16 v1, v64

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 836
    const/16 v64, 0x2

    move/from16 v0, v64

    new-array v0, v0, [I

    move-object/from16 v64, v0

    const/16 v65, 0x0

    aput v50, v64, v65

    const/16 v65, 0x1

    aput v51, v64, v65

    move-object/from16 v0, v40

    move-object/from16 v1, v64

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 837
    const/16 v64, 0x2

    move/from16 v0, v64

    new-array v0, v0, [I

    move-object/from16 v64, v0

    const/16 v65, 0x0

    move/from16 v0, v50

    neg-int v0, v0

    move/from16 v66, v0

    aput v66, v64, v65

    const/16 v65, 0x1

    aput v51, v64, v65

    move-object/from16 v0, v40

    move-object/from16 v1, v64

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 838
    const/16 v64, 0x1

    move/from16 v0, v64

    new-array v0, v0, [I

    move-object/from16 v64, v0

    const/16 v65, 0x0

    aput v50, v64, v65

    move-object/from16 v0, v40

    move-object/from16 v1, v64

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 839
    const/16 v64, 0x1

    move/from16 v0, v64

    new-array v0, v0, [I

    move-object/from16 v64, v0

    const/16 v65, 0x0

    move/from16 v0, v50

    neg-int v0, v0

    move/from16 v66, v0

    aput v66, v64, v65

    move-object/from16 v0, v40

    move-object/from16 v1, v64

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 840
    const/16 v64, 0x0

    move/from16 v0, v64

    new-array v0, v0, [I

    move-object/from16 v64, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v64

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 845
    new-instance v23, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->totalWidth:I

    move/from16 v64, v0

    add-int/lit8 v64, v64, -0x3c

    div-int/lit8 v64, v64, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v64

    invoke-direct {v0, v1, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 847
    .local v23, leftbuttonParams:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v47, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->totalWidth:I

    move/from16 v64, v0

    add-int/lit8 v64, v64, -0x3c

    div-int/lit8 v64, v64, 0x2

    move-object/from16 v0, v47

    move/from16 v1, v64

    invoke-direct {v0, v1, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 848
    .local v47, rightbuttonParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v64, 0xf

    const/16 v65, 0xa

    const/16 v66, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v64

    move/from16 v2, v65

    move/from16 v3, v66

    invoke-virtual {v0, v1, v13, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 849
    const/16 v64, 0x0

    const/16 v65, 0xf

    const/16 v66, 0x8

    move-object/from16 v0, v47

    move/from16 v1, v64

    move/from16 v2, v65

    move/from16 v3, v66

    invoke-virtual {v0, v1, v13, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 851
    new-instance v64, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v65, v0

    invoke-direct/range {v64 .. v65}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v64

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->purchaseBtn:Landroid/widget/Button;

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->purchaseBtn:Landroid/widget/Button;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->purchaseBtn:Landroid/widget/Button;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->purchaseBtn:Landroid/widget/Button;

    move-object/from16 v64, v0

    const/16 v65, 0x11

    invoke-virtual/range {v64 .. v65}, Landroid/widget/Button;->setGravity(I)V

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->purchaseBtn:Landroid/widget/Button;

    move-object/from16 v64, v0

    const-string v65, "\uad6c\ub9e4"

    invoke-virtual/range {v64 .. v65}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->purchaseBtn:Landroid/widget/Button;

    move-object/from16 v64, v0

    const v65, 0x4195999a

    invoke-virtual/range {v64 .. v65}, Landroid/widget/Button;->setTextSize(F)V

    .line 857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->purchaseBtn:Landroid/widget/Button;

    move-object/from16 v64, v0

    new-instance v65, Landroid/content/res/ColorStateList;

    .line 858
    const/16 v66, 0x2

    move/from16 v0, v66

    new-array v0, v0, [[I

    move-object/from16 v66, v0

    const/16 v67, 0x0

    .line 859
    const/16 v68, 0x1

    move/from16 v0, v68

    new-array v0, v0, [I

    move-object/from16 v68, v0

    const/16 v69, 0x0

    aput v52, v68, v69

    aput-object v68, v66, v67

    const/16 v67, 0x1

    .line 860
    const/16 v68, 0x0

    move/from16 v0, v68

    new-array v0, v0, [I

    move-object/from16 v68, v0

    aput-object v68, v66, v67

    .line 861
    const/16 v67, 0x2

    move/from16 v0, v67

    new-array v0, v0, [I

    move-object/from16 v67, v0

    const/16 v68, 0x0

    .line 862
    const-string v69, "#ffffff"

    invoke-static/range {v69 .. v69}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v69

    aput v69, v67, v68

    const/16 v68, 0x1

    .line 863
    const-string v69, "#2c3b65"

    invoke-static/range {v69 .. v69}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v69

    aput v69, v67, v68

    invoke-direct/range {v65 .. v67}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 857
    invoke-virtual/range {v64 .. v65}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 866
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->purchaseBtn:Landroid/widget/Button;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 868
    const/16 v64, 0x2

    move/from16 v0, v64

    new-array v0, v0, [I

    move-object/from16 v64, v0

    const/16 v65, 0x0

    aput v50, v64, v65

    const/16 v65, 0x1

    move/from16 v0, v53

    neg-int v0, v0

    move/from16 v66, v0

    aput v66, v64, v65

    move-object/from16 v0, v16

    move-object/from16 v1, v64

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 869
    const/16 v64, 0x2

    move/from16 v0, v64

    new-array v0, v0, [I

    move-object/from16 v64, v0

    const/16 v65, 0x0

    move/from16 v0, v50

    neg-int v0, v0

    move/from16 v66, v0

    aput v66, v64, v65

    const/16 v65, 0x1

    move/from16 v0, v53

    neg-int v0, v0

    move/from16 v66, v0

    aput v66, v64, v65

    move-object/from16 v0, v16

    move-object/from16 v1, v64

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 870
    const/16 v64, 0x2

    move/from16 v0, v64

    new-array v0, v0, [I

    move-object/from16 v64, v0

    const/16 v65, 0x0

    aput v50, v64, v65

    const/16 v65, 0x1

    aput v52, v64, v65

    move-object/from16 v0, v16

    move-object/from16 v1, v64

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 871
    const/16 v64, 0x2

    move/from16 v0, v64

    new-array v0, v0, [I

    move-object/from16 v64, v0

    const/16 v65, 0x0

    move/from16 v0, v50

    neg-int v0, v0

    move/from16 v66, v0

    aput v66, v64, v65

    const/16 v65, 0x1

    aput v52, v64, v65

    move-object/from16 v0, v16

    move-object/from16 v1, v64

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 872
    const/16 v64, 0x2

    move/from16 v0, v64

    new-array v0, v0, [I

    move-object/from16 v64, v0

    const/16 v65, 0x0

    aput v50, v64, v65

    const/16 v65, 0x1

    aput v51, v64, v65

    move-object/from16 v0, v16

    move-object/from16 v1, v64

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 873
    const/16 v64, 0x2

    move/from16 v0, v64

    new-array v0, v0, [I

    move-object/from16 v64, v0

    const/16 v65, 0x0

    move/from16 v0, v50

    neg-int v0, v0

    move/from16 v66, v0

    aput v66, v64, v65

    const/16 v65, 0x1

    aput v51, v64, v65

    move-object/from16 v0, v16

    move-object/from16 v1, v64

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 874
    const/16 v64, 0x1

    move/from16 v0, v64

    new-array v0, v0, [I

    move-object/from16 v64, v0

    const/16 v65, 0x0

    aput v50, v64, v65

    move-object/from16 v0, v16

    move-object/from16 v1, v64

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 875
    const/16 v64, 0x1

    move/from16 v0, v64

    new-array v0, v0, [I

    move-object/from16 v64, v0

    const/16 v65, 0x0

    move/from16 v0, v50

    neg-int v0, v0

    move/from16 v66, v0

    aput v66, v64, v65

    move-object/from16 v0, v16

    move-object/from16 v1, v64

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 876
    const/16 v64, 0x0

    move/from16 v0, v64

    new-array v0, v0, [I

    move-object/from16 v64, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v64

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 878
    new-instance v64, Landroid/widget/Button;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v65, v0

    invoke-direct/range {v64 .. v65}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v64

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->cancelBtn:Landroid/widget/Button;

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->cancelBtn:Landroid/widget/Button;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->cancelBtn:Landroid/widget/Button;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->cancelBtn:Landroid/widget/Button;

    move-object/from16 v64, v0

    const/16 v65, 0x11

    invoke-virtual/range {v64 .. v65}, Landroid/widget/Button;->setGravity(I)V

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->cancelBtn:Landroid/widget/Button;

    move-object/from16 v64, v0

    const-string v65, "\ucde8\uc18c"

    invoke-virtual/range {v64 .. v65}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->cancelBtn:Landroid/widget/Button;

    move-object/from16 v64, v0

    const v65, 0x4195999a

    invoke-virtual/range {v64 .. v65}, Landroid/widget/Button;->setTextSize(F)V

    .line 884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->cancelBtn:Landroid/widget/Button;

    move-object/from16 v64, v0

    new-instance v65, Landroid/content/res/ColorStateList;

    .line 885
    const/16 v66, 0x2

    move/from16 v0, v66

    new-array v0, v0, [[I

    move-object/from16 v66, v0

    const/16 v67, 0x0

    .line 886
    const/16 v68, 0x1

    move/from16 v0, v68

    new-array v0, v0, [I

    move-object/from16 v68, v0

    const/16 v69, 0x0

    aput v52, v68, v69

    aput-object v68, v66, v67

    const/16 v67, 0x1

    .line 887
    const/16 v68, 0x0

    move/from16 v0, v68

    new-array v0, v0, [I

    move-object/from16 v68, v0

    aput-object v68, v66, v67

    .line 888
    const/16 v67, 0x2

    move/from16 v0, v67

    new-array v0, v0, [I

    move-object/from16 v67, v0

    const/16 v68, 0x0

    .line 889
    const-string v69, "#ffffff"

    invoke-static/range {v69 .. v69}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v69

    aput v69, v67, v68

    const/16 v68, 0x1

    .line 890
    const-string v69, "#2c3b65"

    invoke-static/range {v69 .. v69}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v69

    aput v69, v67, v68

    invoke-direct/range {v65 .. v67}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 884
    invoke-virtual/range {v64 .. v65}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->cancelBtn:Landroid/widget/Button;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 895
    new-instance v30, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v64, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v64

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 897
    .local v30, logoView:Landroid/widget/LinearLayout;
    new-instance v31, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->totalWidth:I

    move/from16 v64, v0

    add-int/lit8 v64, v64, -0x14

    const/16 v65, 0x23

    move-object/from16 v0, v31

    move/from16 v1, v64

    move/from16 v2, v65

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 898
    .local v31, logoViewParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v64, 0xa

    const/16 v65, 0x0

    const/16 v66, 0xa

    const/16 v67, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v64

    move/from16 v2, v65

    move/from16 v3, v66

    move/from16 v4, v67

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 899
    invoke-virtual/range {v30 .. v31}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 900
    const/16 v64, 0x11

    move-object/from16 v0, v30

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 901
    const/16 v64, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 902
    move-object/from16 v0, v48

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 904
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v64

    new-instance v65, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v66, v0

    invoke-static/range {v66 .. v66}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v66

    invoke-direct/range {v65 .. v66}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v66, "lguplus_logo.png"

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v65

    invoke-virtual/range {v64 .. v65}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v22

    .line 905
    const/16 v64, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v64

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    .line 906
    .local v24, lguplusLogo:Landroid/graphics/drawable/Drawable;
    const/16 v22, 0x0

    .line 908
    new-instance v9, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 910
    .local v9, blank:Landroid/widget/LinearLayout;
    new-instance v29, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v64, 0x0

    const/16 v65, 0x23

    const/high16 v66, 0x3f80

    move-object/from16 v0, v29

    move/from16 v1, v64

    move/from16 v2, v65

    move/from16 v3, v66

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 911
    .local v29, logoParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 912
    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 914
    new-instance v27, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v64, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v64

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 915
    .local v27, logo:Landroid/widget/LinearLayout;
    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 916
    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 918
    new-instance v28, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v64, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v64

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 919
    .local v28, logoIm:Landroid/widget/ImageView;
    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 920
    new-instance v64, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v65, 0x0

    const/16 v66, 0x23

    const/high16 v67, 0x3f80

    invoke-direct/range {v64 .. v67}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v28

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 921
    invoke-virtual/range {v27 .. v28}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 923
    new-instance v63, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    move-object/from16 v64, v0

    invoke-direct/range {v63 .. v64}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 924
    .local v63, version:Landroid/widget/TextView;
    move-object/from16 v0, v63

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 925
    const/16 v64, 0x15

    invoke-virtual/range {v63 .. v64}, Landroid/widget/TextView;->setGravity(I)V

    .line 926
    move/from16 v0, v55

    int-to-float v0, v0

    move/from16 v64, v0

    invoke-virtual/range {v63 .. v64}, Landroid/widget/TextView;->setTextSize(F)V

    .line 927
    new-instance v64, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v65, 0x0

    const/16 v66, 0x23

    const/high16 v67, 0x3f80

    invoke-direct/range {v64 .. v67}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual/range {v63 .. v64}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 928
    sget-object v64, Lcom/feelingk/lguiab/common/Defines;->SDK_VERSION_INFO:Ljava/lang/String;

    invoke-virtual/range {v63 .. v64}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 929
    move-object/from16 v0, v30

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 931
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->setContentView(Landroid/view/View;)V

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->purchaseBtn:Landroid/widget/Button;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->cancelBtn:Landroid/widget/Button;

    move-object/from16 v64, v0

    move-object/from16 v0, v64

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 936
    const-string v64, "PayAuth"

    invoke-static/range {v64 .. v64}, Lcom/feelingk/lguiab/LguIAPLib;->setDialogType(Ljava/lang/String;)V

    .line 939
    return-void

    .line 582
    .end local v5           #authInfoText:Landroid/widget/TextView;
    .end local v6           #authNum:Landroid/widget/TextView;
    .end local v7           #authNumberEditParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v8           #authNumberView:Landroid/widget/LinearLayout;
    .end local v9           #blank:Landroid/widget/LinearLayout;
    .end local v10           #bottomParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v11           #bottomView:Landroid/widget/LinearLayout;
    .end local v14           #buttonParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v15           #buttonView:Landroid/widget/LinearLayout;
    .end local v16           #cancelDrawables:Landroid/graphics/drawable/StateListDrawable;
    .end local v17           #ff:Landroid/widget/FrameLayout;
    .end local v18           #filterArray:[Landroid/text/InputFilter;
    .end local v19           #frame:Landroid/widget/LinearLayout;
    .end local v20           #heightLineParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v21           #inputBox:Landroid/graphics/drawable/Drawable;
    .end local v22           #is:Ljava/io/InputStream;
    .end local v23           #leftbuttonParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v24           #lguplusLogo:Landroid/graphics/drawable/Drawable;
    .end local v25           #line:Landroid/widget/LinearLayout;
    .end local v26           #ll:Landroid/widget/LinearLayout;
    .end local v27           #logo:Landroid/widget/LinearLayout;
    .end local v28           #logoIm:Landroid/widget/ImageView;
    .end local v29           #logoParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v30           #logoView:Landroid/widget/LinearLayout;
    .end local v31           #logoViewParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v32           #maxLength:I
    .end local v33           #menu_btn:Landroid/graphics/drawable/Drawable;
    .end local v34           #menu_btn_active:Landroid/graphics/drawable/Drawable;
    .end local v35           #menu_btn_pressed:Landroid/graphics/drawable/Drawable;
    .end local v36           #messageBox:Landroid/graphics/drawable/Drawable;
    .end local v37           #messageView:Landroid/widget/LinearLayout;
    .end local v38           #messageView2:Landroid/widget/TextView;
    .end local v39           #messageView2Params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v40           #okDrawables:Landroid/graphics/drawable/StateListDrawable;
    .end local v41           #otpAuthNumber:Ljava/lang/String;
    .end local v42           #otpNum:Landroid/widget/TextView;
    .end local v43           #passwdtm:Landroid/text/method/PasswordTransformationMethod;
    .end local v44           #popup_bg:Landroid/graphics/drawable/Drawable;
    .end local v45           #popup_btn_bg:Landroid/graphics/drawable/Drawable;
    .end local v46           #popup_title:Landroid/graphics/drawable/Drawable;
    .end local v47           #rightbuttonParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v48           #root:Landroid/widget/LinearLayout;
    .end local v49           #rootParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v50           #stateChecked:I
    .end local v51           #stateFocused:I
    .end local v52           #statePressed:I
    .end local v53           #stateWindowFocused:I
    .end local v54           #table:Landroid/graphics/drawable/Drawable;
    .end local v56           #title:Landroid/widget/TextView;
    .end local v58           #titleView:Landroid/widget/LinearLayout;
    .end local v59           #topView:Landroid/widget/LinearLayout;
    .end local v60           #topViewParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v61           #upperViewParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v62           #upperViewParams2:Landroid/widget/LinearLayout$LayoutParams;
    .end local v63           #version:Landroid/widget/TextView;
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->screenDensity:I

    move/from16 v64, v0

    const/16 v65, 0xf0

    move/from16 v0, v64

    move/from16 v1, v65

    if-ne v0, v1, :cond_0

    .line 583
    const/16 v12, 0x44

    .line 584
    const/4 v13, 0x7

    .line 585
    const/16 v55, 0xb

    .line 586
    const/16 v57, 0x14

    goto/16 :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .parameter "v"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 943
    iget-object v2, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->purchaseBtn:Landroid/widget/Button;

    if-ne p1, v2, :cond_3

    .line 944
    iget-boolean v2, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->authFlag:Z

    if-eqz v2, :cond_2

    .line 945
    invoke-virtual {p0}, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->dismiss()V

    .line 947
    iget-object v2, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mFinalVer:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 948
    new-instance v0, Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;

    iget-object v1, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    .line 949
    iget-object v2, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mAppId:Ljava/lang/String;

    iget-object v3, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mPId:Ljava/lang/String;

    iget-object v4, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mBpIP:Ljava/lang/String;

    iget v5, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mBpPort:I

    iget-object v6, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mBpUri:Ljava/lang/String;

    .line 950
    iget-object v7, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mBpData:Ljava/lang/String;

    iget-object v8, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mClientListenerKey:Ljava/lang/String;

    .line 948
    invoke-direct/range {v0 .. v8}, Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    .local v0, finalVerpurchaseClick:Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;
    new-array v2, v13, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v12

    invoke-virtual {v0, v2}, Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 959
    .end local v0           #finalVerpurchaseClick:Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;
    :goto_0
    iput-boolean v12, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->authFlag:Z

    .line 978
    :cond_0
    :goto_1
    return-void

    .line 954
    :cond_1
    new-instance v1, Lcom/feelingk/lguiab/manager/task/ReqPurchaseJob;

    iget-object v2, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    .line 955
    iget-object v3, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mAppId:Ljava/lang/String;

    iget-object v4, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mPId:Ljava/lang/String;

    iget-object v5, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mBpIP:Ljava/lang/String;

    iget v6, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mBpPort:I

    iget-object v7, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mBpUri:Ljava/lang/String;

    .line 956
    iget-object v8, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mBpData:Ljava/lang/String;

    iget-object v9, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mClientListenerKey:Ljava/lang/String;

    .line 954
    invoke-direct/range {v1 .. v9}, Lcom/feelingk/lguiab/manager/task/ReqPurchaseJob;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    .local v1, purchaseClick:Lcom/feelingk/lguiab/manager/task/ReqPurchaseJob;
    new-array v2, v13, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v12

    invoke-virtual {v1, v2}, Lcom/feelingk/lguiab/manager/task/ReqPurchaseJob;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 962
    .end local v1           #purchaseClick:Lcom/feelingk/lguiab/manager/task/ReqPurchaseJob;
    :cond_2
    iget-object v2, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->otpView:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 963
    const-string v2, "otpNum \ubd88\uc77c\uce58"

    invoke-static {v2}, Lcom/feelingk/lguiab/util/Logger;->e(Ljava/lang/String;)V

    .line 964
    const-string v10, "\uc778\uc99d\ubc88\ud638\ub97c \uc785\ub825\ud558\uc9c0 \uc54a\uc558\uac70\ub098, \ud615\uc2dd\uc774 \uc62c\ubc14\ub974\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4. \ub2e4\uc2dc \uc785\ub825\ud574 \uc8fc\uc138\uc694."

    .line 965
    .local v10, msg:Ljava/lang/String;
    iget-object v2, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->mContext:Landroid/content/Context;

    invoke-static {v2, v10, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 966
    .local v11, toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 970
    .end local v10           #msg:Ljava/lang/String;
    .end local v11           #toast:Landroid/widget/Toast;
    :cond_3
    iget-object v2, p0, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->cancelBtn:Landroid/widget/Button;

    if-ne p1, v2, :cond_0

    .line 972
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->getContextOnClinetListener()Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;->lguIABonDlgPurchaseCancel()V

    .line 973
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->DissmissPurchaseDlg()V

    .line 974
    invoke-virtual {p0}, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->dismiss()V

    .line 975
    const-string v2, "None"

    invoke-static {v2}, Lcom/feelingk/lguiab/LguIAPLib;->setDialogType(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 982
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 983
    invoke-virtual {p0}, Lcom/feelingk/lguiab/manager/gui/payAuthDialog;->dismiss()V

    .line 984
    const-string v0, "None"

    invoke-static {v0}, Lcom/feelingk/lguiab/LguIAPLib;->setDialogType(Ljava/lang/String;)V

    .line 985
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->getContextOnClinetListener()Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;->lguIABonDlgPurchaseCancel()V

    .line 987
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
