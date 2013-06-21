.class public Lcom/feelingk/lguiab/manager/gui/PopupDialog;
.super Landroid/app/Dialog;
.source "PopupDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static mAppId:Ljava/lang/String;

.field private static mBpData:Ljava/lang/String;

.field private static mBpIp:Ljava/lang/String;

.field private static mBpPort:I

.field private static mBpUri:Ljava/lang/String;

.field private static mProgressDialog:Landroid/app/Dialog;

.field private static mPurchasePid:Ljava/lang/String;

.field private static mPwd:Ljava/lang/String;


# instance fields
.field private RES_VERT_FILE_PATH:Ljava/lang/String;

.field anyDensity:Z

.field cancel:Landroid/widget/Button;

.field ed:Landroid/widget/EditText;

.field private mClientListenerKey:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mFinalVer:Z

.field mFinalVerDown:Z

.field negaBtnTitle:Landroid/widget/Button;

.field ok:Landroid/widget/Button;

.field okBtn:Landroid/widget/Button;

.field posiBtnTitle:Landroid/widget/Button;

.field ptSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    sput-object v1, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mProgressDialog:Landroid/app/Dialog;

    .line 59
    sput-object v1, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mBpData:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    sput v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mBpPort:I

    .line 62
    sput-object v1, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mPwd:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 63
    .parameter "context"
    .parameter "title"
    .parameter "btnTitle"
    .parameter "message"
    .parameter "clientListenerKey"

    .prologue
    .line 111
    invoke-direct/range {p0 .. p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 63
    const/high16 v57, 0x4000

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->ptSize:F

    .line 66
    const/16 v57, 0x0

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mClientListenerKey:Ljava/lang/String;

    .line 68
    const-string v57, "/lguIABres/"

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    .line 70
    const/16 v57, 0x0

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->ed:Landroid/widget/EditText;

    .line 71
    const/16 v57, 0x0

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->cancel:Landroid/widget/Button;

    .line 72
    const/16 v57, 0x0

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mFinalVer:Z

    .line 73
    const/16 v57, 0x0

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mFinalVerDown:Z

    .line 74
    const/16 v57, 0x1

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->anyDensity:Z

    .line 113
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mClientListenerKey:Ljava/lang/String;

    .line 115
    const/16 v21, 0x0

    .line 116
    .local v21, hvga:Z
    const/16 v20, 0x0

    .line 117
    .local v20, hd:Z
    const/16 v37, 0x0

    .line 118
    .local v37, opView:Z
    const/16 v55, 0x0

    .local v55, totalWidth:I
    const/16 v54, 0x0

    .line 119
    .local v54, totalHeight:I
    const/16 v53, 0x0

    .local v53, titleWidth:I
    const/4 v12, 0x0

    .local v12, contentHeight:I
    const/16 v52, 0x0

    .line 120
    .local v52, titleTextSize:I
    const/4 v8, 0x0

    .local v8, bottomBgWidth:I
    const/4 v7, 0x0

    .line 121
    .local v7, bottomBgHieht:I
    const/4 v13, 0x0

    .local v13, contentPd:I
    const/16 v30, 0x0

    .local v30, logoViewWidth:I
    const/16 v28, 0x0

    .line 122
    .local v28, logoViewHeight:I
    const/16 v34, 0x0

    .line 124
    .local v34, message_size:I
    new-instance v17, Landroid/util/DisplayMetrics;

    invoke-direct/range {v17 .. v17}, Landroid/util/DisplayMetrics;-><init>()V

    .local v17, displayMetrics:Landroid/util/DisplayMetrics;
    move-object/from16 v57, p1

    .line 125
    check-cast v57, Landroid/app/Activity;

    invoke-virtual/range {v57 .. v57}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v57

    invoke-interface/range {v57 .. v57}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v57

    move-object/from16 v0, v57

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 126
    move-object/from16 v0, v17

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v16, v0

    .line 127
    .local v16, deviceWidth:I
    move-object/from16 v0, v17

    iget v15, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 128
    .local v15, deviceHeight:I
    const-string v57, "pixel"

    new-instance v58, Ljava/lang/StringBuilder;

    const-string v59, "deviceWidth: "

    invoke-direct/range {v58 .. v59}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v58

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v58

    const-string v59, "deviceHeight: "

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    move-object/from16 v0, v58

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v57 .. v58}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    sget-boolean v57, Lcom/feelingk/lguiab/util/DeviceUtil;->mHvga:Z

    if-eqz v57, :cond_0

    .line 131
    const/16 v21, 0x1

    .line 132
    :cond_0
    sget-boolean v57, Lcom/feelingk/lguiab/util/DeviceUtil;->mHd:Z

    if-eqz v57, :cond_1

    .line 133
    const/16 v20, 0x1

    .line 135
    :cond_1
    invoke-static {}, Lcom/feelingk/lguiab/util/DeviceUtil;->getmAnyDensityState()Z

    move-result v57

    if-nez v57, :cond_2

    .line 136
    const/16 v21, 0x1

    .line 137
    const/16 v57, 0x0

    move/from16 v0, v57

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->anyDensity:Z

    .line 139
    sget-boolean v57, Lcom/feelingk/lguiab/util/DeviceUtil;->mOpView:Z

    if-eqz v57, :cond_2

    .line 140
    const/16 v37, 0x1

    .line 144
    :cond_2
    if-eqz v21, :cond_8

    .line 145
    const/16 v55, 0x128

    .line 146
    const/16 v54, 0xfa

    .line 147
    const/16 v53, 0x114

    .line 148
    const/16 v49, 0x2a

    .line 149
    .local v49, titleHeight:I
    const/16 v52, 0x10

    .line 150
    const/16 v12, 0x61

    .line 151
    const/4 v13, 0x7

    .line 152
    const/16 v34, 0xe

    .line 153
    const/16 v8, 0x113

    .line 154
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->anyDensity:Z

    move/from16 v57, v0

    if-nez v57, :cond_3

    if-eqz v37, :cond_3

    .line 155
    const/16 v53, 0x11e

    .line 156
    const/16 v12, 0x72

    .line 157
    const/16 v8, 0x11c

    .line 159
    :cond_3
    const/16 v7, 0x44

    .line 160
    const/16 v10, 0x32

    .line 161
    .local v10, buttonHeight:I
    const/16 v30, 0x11e

    .line 162
    const/16 v28, 0x1e

    .line 195
    :goto_0
    new-instance v25, Landroid/widget/LinearLayout;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 197
    .local v25, ll:Landroid/widget/LinearLayout;
    new-instance v18, Landroid/widget/FrameLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 198
    .local v18, ff:Landroid/widget/FrameLayout;
    new-instance v57, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v58, -0x2

    move-object/from16 v0, v57

    move/from16 v1, v55

    move/from16 v2, v58

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 201
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v57

    new-instance v58, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v59

    invoke-direct/range {v58 .. v59}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v59, "popup_bg.9.png"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-virtual/range {v57 .. v58}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v22

    .line 202
    .local v22, is:Ljava/io/InputStream;
    const/16 v57, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v57

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v38

    .line 205
    .local v38, popup_bg:Landroid/graphics/drawable/Drawable;
    new-instance v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 206
    .local v19, frame:Landroid/widget/LinearLayout;
    new-instance v57, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v57

    move/from16 v1, v55

    move/from16 v2, v54

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    move-object/from16 v0, v19

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 208
    invoke-virtual/range {v18 .. v19}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 210
    new-instance v5, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 211
    .local v5, blank:Landroid/widget/LinearLayout;
    new-instance v57, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v57

    move/from16 v1, v55

    move/from16 v2, v54

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v57

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 214
    new-instance v41, Landroid/widget/LinearLayout;

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 216
    .local v41, root:Landroid/widget/LinearLayout;
    new-instance v42, Landroid/widget/LinearLayout$LayoutParams;

    new-instance v57, Landroid/view/ViewGroup$LayoutParams;

    const/16 v58, -0x2

    move-object/from16 v0, v57

    move/from16 v1, v55

    move/from16 v2, v58

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v42

    move-object/from16 v1, v57

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    .local v42, rootParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v41 .. v42}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    const/16 v57, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 219
    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 221
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v57

    new-instance v58, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v59

    invoke-direct/range {v58 .. v59}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v59, "popup_title.png"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-virtual/range {v57 .. v58}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v22

    .line 222
    const/16 v57, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v57

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v40

    .line 224
    .local v40, popup_title:Landroid/graphics/drawable/Drawable;
    new-instance v50, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v50

    move/from16 v1, v53

    move/from16 v2, v49

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 225
    .local v50, titleParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v57, 0xa

    const/16 v58, 0xa

    const/16 v59, 0xa

    const/16 v60, 0x0

    move-object/from16 v0, v50

    move/from16 v1, v57

    move/from16 v2, v58

    move/from16 v3, v59

    move/from16 v4, v60

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 226
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->anyDensity:Z

    move/from16 v57, v0

    if-nez v57, :cond_4

    if-eqz v37, :cond_4

    .line 227
    const/16 v57, 0x5

    const/16 v58, 0x5

    const/16 v59, 0xa

    const/16 v60, 0x0

    move-object/from16 v0, v50

    move/from16 v1, v57

    move/from16 v2, v58

    move/from16 v3, v59

    move/from16 v4, v60

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 228
    :cond_4
    new-instance v51, Landroid/widget/TextView;

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 229
    .local v51, titleText:Landroid/widget/TextView;
    move-object/from16 v0, v51

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    move-object/from16 v0, v51

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 231
    move-object/from16 v0, v51

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    const-string v57, "#ffffff"

    invoke-static/range {v57 .. v57}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v57

    move-object/from16 v0, v51

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 233
    const/16 v57, 0x11

    move-object/from16 v0, v51

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 234
    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v57, v0

    move-object/from16 v0, v51

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 235
    move-object/from16 v0, v41

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 238
    new-instance v47, Landroid/widget/ScrollView;

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 240
    .local v47, sv:Landroid/widget/ScrollView;
    new-instance v48, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v48

    move/from16 v1, v53

    invoke-direct {v0, v1, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 241
    .local v48, svParams:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v20, :cond_5

    .line 242
    const/16 v57, 0xf

    const/16 v58, 0x14

    const/16 v59, 0xf

    const/16 v60, 0x14

    move-object/from16 v0, v48

    move/from16 v1, v57

    move/from16 v2, v58

    move/from16 v3, v59

    move/from16 v4, v60

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 244
    :cond_5
    invoke-virtual/range {v47 .. v48}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    const/16 v57, 0x32

    const/16 v58, 0x20

    const/16 v59, 0x32

    move-object/from16 v0, v47

    move/from16 v1, v57

    move/from16 v2, v58

    move/from16 v3, v59

    invoke-virtual {v0, v1, v2, v3, v13}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 246
    move-object/from16 v0, v41

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 248
    new-instance v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 249
    .local v14, contentll:Landroid/widget/LinearLayout;
    move-object/from16 v0, v47

    invoke-virtual {v0, v14}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 251
    new-instance v11, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 252
    .local v11, content:Landroid/widget/TextView;
    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v57, v0

    move/from16 v0, v57

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 254
    const-string v57, "#535353"

    invoke-static/range {v57 .. v57}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v57

    move/from16 v0, v57

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 255
    invoke-virtual {v14, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 259
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v57

    new-instance v58, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v59

    invoke-direct/range {v58 .. v59}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v59, "popup_btn_bg.png"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-virtual/range {v57 .. v58}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v22

    .line 260
    const/16 v57, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v57

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v39

    .line 264
    .local v39, popup_btn_bg:Landroid/graphics/drawable/Drawable;
    new-instance v6, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 266
    .local v6, bottom:Landroid/widget/LinearLayout;
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v8, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 267
    .local v9, btnParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v57, 0xb

    const/16 v58, 0x0

    const/16 v59, 0xa

    const/16 v60, 0x0

    move/from16 v0, v57

    move/from16 v1, v58

    move/from16 v2, v59

    move/from16 v3, v60

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 268
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->anyDensity:Z

    move/from16 v57, v0

    if-nez v57, :cond_6

    if-eqz v37, :cond_6

    .line 269
    const/16 v57, 0x6

    const/16 v58, 0x0

    const/16 v59, 0xa

    const/16 v60, 0x0

    move/from16 v0, v57

    move/from16 v1, v58

    move/from16 v2, v59

    move/from16 v3, v60

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 270
    :cond_6
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 272
    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 274
    new-instance v36, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v36 .. v36}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 276
    .local v36, okDrawables:Landroid/graphics/drawable/StateListDrawable;
    const v43, 0x10100a0

    .line 277
    .local v43, stateChecked:I
    const v44, 0x101009c

    .line 278
    .local v44, stateFocused:I
    const v45, 0x10100a7

    .line 279
    .local v45, statePressed:I
    const v46, 0x101009d

    .line 280
    .local v46, stateWindowFocused:I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v57

    new-instance v58, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v59

    invoke-direct/range {v58 .. v59}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v59, "menu_btn.9.png"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-virtual/range {v57 .. v58}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v22

    .line 281
    const/16 v57, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v57

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v31

    .line 282
    .local v31, menu_btn:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v57

    new-instance v58, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v59

    invoke-direct/range {v58 .. v59}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v59, "menu_btn_pressed.9.png"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-virtual/range {v57 .. v58}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v22

    .line 283
    const/16 v57, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v57

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v33

    .line 284
    .local v33, menu_btn_pressed:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v57

    new-instance v58, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v59

    invoke-direct/range {v58 .. v59}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v59, "menu_btn_active.9.png"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-virtual/range {v57 .. v58}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v22

    .line 285
    const/16 v57, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v57

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v32

    .line 287
    .local v32, menu_btn_active:Landroid/graphics/drawable/Drawable;
    const/16 v57, 0x2

    move/from16 v0, v57

    new-array v0, v0, [I

    move-object/from16 v57, v0

    const/16 v58, 0x0

    aput v43, v57, v58

    const/16 v58, 0x1

    move/from16 v0, v46

    neg-int v0, v0

    move/from16 v59, v0

    aput v59, v57, v58

    move-object/from16 v0, v36

    move-object/from16 v1, v57

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 288
    const/16 v57, 0x2

    move/from16 v0, v57

    new-array v0, v0, [I

    move-object/from16 v57, v0

    const/16 v58, 0x0

    move/from16 v0, v43

    neg-int v0, v0

    move/from16 v59, v0

    aput v59, v57, v58

    const/16 v58, 0x1

    move/from16 v0, v46

    neg-int v0, v0

    move/from16 v59, v0

    aput v59, v57, v58

    move-object/from16 v0, v36

    move-object/from16 v1, v57

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 289
    const/16 v57, 0x2

    move/from16 v0, v57

    new-array v0, v0, [I

    move-object/from16 v57, v0

    const/16 v58, 0x0

    aput v43, v57, v58

    const/16 v58, 0x1

    aput v45, v57, v58

    move-object/from16 v0, v36

    move-object/from16 v1, v57

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 290
    const/16 v57, 0x2

    move/from16 v0, v57

    new-array v0, v0, [I

    move-object/from16 v57, v0

    const/16 v58, 0x0

    move/from16 v0, v43

    neg-int v0, v0

    move/from16 v59, v0

    aput v59, v57, v58

    const/16 v58, 0x1

    aput v45, v57, v58

    move-object/from16 v0, v36

    move-object/from16 v1, v57

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 291
    const/16 v57, 0x2

    move/from16 v0, v57

    new-array v0, v0, [I

    move-object/from16 v57, v0

    const/16 v58, 0x0

    aput v43, v57, v58

    const/16 v58, 0x1

    aput v44, v57, v58

    move-object/from16 v0, v36

    move-object/from16 v1, v57

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 292
    const/16 v57, 0x2

    move/from16 v0, v57

    new-array v0, v0, [I

    move-object/from16 v57, v0

    const/16 v58, 0x0

    move/from16 v0, v43

    neg-int v0, v0

    move/from16 v59, v0

    aput v59, v57, v58

    const/16 v58, 0x1

    aput v44, v57, v58

    move-object/from16 v0, v36

    move-object/from16 v1, v57

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 293
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [I

    move-object/from16 v57, v0

    const/16 v58, 0x0

    aput v43, v57, v58

    move-object/from16 v0, v36

    move-object/from16 v1, v57

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 294
    const/16 v57, 0x1

    move/from16 v0, v57

    new-array v0, v0, [I

    move-object/from16 v57, v0

    const/16 v58, 0x0

    move/from16 v0, v43

    neg-int v0, v0

    move/from16 v59, v0

    aput v59, v57, v58

    move-object/from16 v0, v36

    move-object/from16 v1, v57

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 295
    const/16 v57, 0x0

    move/from16 v0, v57

    new-array v0, v0, [I

    move-object/from16 v57, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v57

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 297
    new-instance v57, Landroid/widget/Button;

    move-object/from16 v0, v57

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->okBtn:Landroid/widget/Button;

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->okBtn:Landroid/widget/Button;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 300
    new-instance v35, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v57, 0x0

    const/high16 v58, 0x3f80

    move-object/from16 v0, v35

    move/from16 v1, v57

    move/from16 v2, v58

    invoke-direct {v0, v1, v10, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 301
    .local v35, okBtnParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v57, 0xc

    const/16 v58, 0xa

    const/16 v59, 0x5

    const/16 v60, 0xc

    move-object/from16 v0, v35

    move/from16 v1, v57

    move/from16 v2, v58

    move/from16 v3, v59

    move/from16 v4, v60

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->okBtn:Landroid/widget/Button;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->okBtn:Landroid/widget/Button;

    move-object/from16 v57, v0

    const/16 v58, 0x11

    invoke-virtual/range {v57 .. v58}, Landroid/widget/Button;->setGravity(I)V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->okBtn:Landroid/widget/Button;

    move-object/from16 v57, v0

    const-string v58, "\ud655\uc778"

    invoke-virtual/range {v57 .. v58}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->okBtn:Landroid/widget/Button;

    move-object/from16 v57, v0

    const/16 v58, 0x2

    const/high16 v59, 0x41b0

    invoke-virtual/range {v57 .. v59}, Landroid/widget/Button;->setTextSize(IF)V

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->okBtn:Landroid/widget/Button;

    move-object/from16 v57, v0

    new-instance v58, Landroid/content/res/ColorStateList;

    .line 307
    const/16 v59, 0x2

    move/from16 v0, v59

    new-array v0, v0, [[I

    move-object/from16 v59, v0

    const/16 v60, 0x0

    .line 308
    const/16 v61, 0x1

    move/from16 v0, v61

    new-array v0, v0, [I

    move-object/from16 v61, v0

    const/16 v62, 0x0

    aput v45, v61, v62

    aput-object v61, v59, v60

    const/16 v60, 0x1

    .line 309
    const/16 v61, 0x0

    move/from16 v0, v61

    new-array v0, v0, [I

    move-object/from16 v61, v0

    aput-object v61, v59, v60

    .line 310
    const/16 v60, 0x2

    move/from16 v0, v60

    new-array v0, v0, [I

    move-object/from16 v60, v0

    const/16 v61, 0x0

    .line 311
    const-string v62, "#ffffff"

    invoke-static/range {v62 .. v62}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v62

    aput v62, v60, v61

    const/16 v61, 0x1

    .line 312
    const-string v62, "#2c3b65"

    invoke-static/range {v62 .. v62}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v62

    aput v62, v60, v61

    invoke-direct/range {v58 .. v60}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 306
    invoke-virtual/range {v57 .. v58}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->okBtn:Landroid/widget/Button;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 318
    new-instance v27, Landroid/widget/LinearLayout;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 320
    .local v27, logoView:Landroid/widget/LinearLayout;
    new-instance v29, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 321
    .local v29, logoViewParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v57, 0xc

    const/16 v58, 0x3

    const/16 v59, 0xc

    const/16 v60, 0x3

    move-object/from16 v0, v29

    move/from16 v1, v57

    move/from16 v2, v58

    move/from16 v3, v59

    move/from16 v4, v60

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 322
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->anyDensity:Z

    move/from16 v57, v0

    if-nez v57, :cond_7

    if-eqz v37, :cond_7

    .line 323
    const/16 v57, 0xc

    const/16 v58, 0x0

    const/16 v59, 0xc

    const/16 v60, 0x3

    move-object/from16 v0, v29

    move/from16 v1, v57

    move/from16 v2, v58

    move/from16 v3, v59

    move/from16 v4, v60

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 324
    :cond_7
    const/16 v57, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 325
    move-object/from16 v0, v41

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 327
    new-instance v23, Landroid/widget/LinearLayout;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 328
    .local v23, leftBlank:Landroid/widget/LinearLayout;
    if-eqz v21, :cond_a

    .line 329
    new-instance v57, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v58, 0x0

    const/16 v59, 0x1e

    const/high16 v60, 0x3f80

    invoke-direct/range {v57 .. v60}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v23

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    :goto_1
    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 334
    new-instance v26, Landroid/widget/ImageView;

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 335
    .local v26, logo:Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v57

    new-instance v58, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v59, v0

    invoke-static/range {v59 .. v59}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v59

    invoke-direct/range {v58 .. v59}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v59, "lguplus_logo.png"

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-virtual/range {v57 .. v58}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v22

    .line 336
    const/16 v57, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v57

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    .line 337
    .local v24, lguplusLogo:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 338
    if-eqz v21, :cond_b

    .line 339
    new-instance v57, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v58, 0x0

    const/16 v59, 0x14

    const/high16 v60, 0x3f80

    invoke-direct/range {v57 .. v60}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v26

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    :goto_2
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 344
    new-instance v56, Landroid/widget/TextView;

    move-object/from16 v0, v56

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 345
    .local v56, version:Landroid/widget/TextView;
    if-eqz v21, :cond_c

    .line 346
    new-instance v57, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v58, 0x0

    const/16 v59, 0x14

    const/high16 v60, 0x3f80

    invoke-direct/range {v57 .. v60}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual/range {v56 .. v57}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    :goto_3
    sget-object v57, Lcom/feelingk/lguiab/common/Defines;->SDK_VERSION_INFO:Ljava/lang/String;

    invoke-virtual/range {v56 .. v57}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    const/16 v57, 0x0

    const/16 v58, 0x5

    const/16 v59, 0xa

    const/16 v60, 0x0

    invoke-virtual/range {v56 .. v60}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 351
    const/16 v57, 0x5

    invoke-virtual/range {v56 .. v57}, Landroid/widget/TextView;->setGravity(I)V

    .line 352
    const v57, 0x4134cccd

    invoke-virtual/range {v56 .. v57}, Landroid/widget/TextView;->setTextSize(F)V

    .line 353
    const-string v57, "#b8b8b8"

    invoke-static/range {v57 .. v57}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v57

    invoke-virtual/range {v56 .. v57}, Landroid/widget/TextView;->setTextColor(I)V

    .line 354
    move-object/from16 v0, v27

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 356
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->setContentView(Landroid/view/View;)V

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->okBtn:Landroid/widget/Button;

    move-object/from16 v57, v0

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 360
    return-void

    .line 164
    .end local v5           #blank:Landroid/widget/LinearLayout;
    .end local v6           #bottom:Landroid/widget/LinearLayout;
    .end local v9           #btnParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v10           #buttonHeight:I
    .end local v11           #content:Landroid/widget/TextView;
    .end local v14           #contentll:Landroid/widget/LinearLayout;
    .end local v18           #ff:Landroid/widget/FrameLayout;
    .end local v19           #frame:Landroid/widget/LinearLayout;
    .end local v22           #is:Ljava/io/InputStream;
    .end local v23           #leftBlank:Landroid/widget/LinearLayout;
    .end local v24           #lguplusLogo:Landroid/graphics/drawable/Drawable;
    .end local v25           #ll:Landroid/widget/LinearLayout;
    .end local v26           #logo:Landroid/widget/ImageView;
    .end local v27           #logoView:Landroid/widget/LinearLayout;
    .end local v29           #logoViewParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v31           #menu_btn:Landroid/graphics/drawable/Drawable;
    .end local v32           #menu_btn_active:Landroid/graphics/drawable/Drawable;
    .end local v33           #menu_btn_pressed:Landroid/graphics/drawable/Drawable;
    .end local v35           #okBtnParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v36           #okDrawables:Landroid/graphics/drawable/StateListDrawable;
    .end local v38           #popup_bg:Landroid/graphics/drawable/Drawable;
    .end local v39           #popup_btn_bg:Landroid/graphics/drawable/Drawable;
    .end local v40           #popup_title:Landroid/graphics/drawable/Drawable;
    .end local v41           #root:Landroid/widget/LinearLayout;
    .end local v42           #rootParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v43           #stateChecked:I
    .end local v44           #stateFocused:I
    .end local v45           #statePressed:I
    .end local v46           #stateWindowFocused:I
    .end local v47           #sv:Landroid/widget/ScrollView;
    .end local v48           #svParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v49           #titleHeight:I
    .end local v50           #titleParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v51           #titleText:Landroid/widget/TextView;
    .end local v56           #version:Landroid/widget/TextView;
    :cond_8
    if-eqz v20, :cond_9

    .line 165
    const/16 v55, 0x1f4

    .line 166
    const/16 v54, 0x1e9

    .line 167
    const/16 v53, 0x1e0

    .line 168
    const/16 v49, 0x4b

    .line 169
    .restart local v49       #titleHeight:I
    const/high16 v57, 0x4208

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->ptSize:F

    move/from16 v58, v0

    div-float v57, v57, v58

    move/from16 v0, v57

    float-to-int v0, v0

    move/from16 v52, v0

    .line 170
    const/16 v12, 0xe1

    .line 171
    const/16 v8, 0x1df

    .line 172
    const/16 v7, 0x68

    .line 173
    const/16 v10, 0x54

    .line 174
    .restart local v10       #buttonHeight:I
    const/high16 v57, 0x41f0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->ptSize:F

    move/from16 v58, v0

    div-float v57, v57, v58

    move/from16 v0, v57

    float-to-int v0, v0

    move/from16 v34, v0

    goto/16 :goto_0

    .line 177
    .end local v10           #buttonHeight:I
    .end local v49           #titleHeight:I
    :cond_9
    const/16 v55, 0x190

    .line 178
    const/16 v54, 0x169

    .line 179
    const/16 v53, 0x17c

    .line 180
    const/16 v49, 0x3c

    .line 181
    .restart local v49       #titleHeight:I
    const/16 v52, 0x12

    .line 182
    const/16 v10, 0x44

    .line 183
    .restart local v10       #buttonHeight:I
    const/16 v12, 0xac

    .line 184
    const/16 v13, 0x20

    .line 185
    const/16 v34, 0xe

    .line 186
    const/16 v8, 0x17b

    .line 187
    const/16 v7, 0x53

    .line 188
    const/16 v30, 0x178

    .line 189
    const/16 v28, 0x1e

    goto/16 :goto_0

    .line 331
    .restart local v5       #blank:Landroid/widget/LinearLayout;
    .restart local v6       #bottom:Landroid/widget/LinearLayout;
    .restart local v9       #btnParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v11       #content:Landroid/widget/TextView;
    .restart local v14       #contentll:Landroid/widget/LinearLayout;
    .restart local v18       #ff:Landroid/widget/FrameLayout;
    .restart local v19       #frame:Landroid/widget/LinearLayout;
    .restart local v22       #is:Ljava/io/InputStream;
    .restart local v23       #leftBlank:Landroid/widget/LinearLayout;
    .restart local v25       #ll:Landroid/widget/LinearLayout;
    .restart local v27       #logoView:Landroid/widget/LinearLayout;
    .restart local v29       #logoViewParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v31       #menu_btn:Landroid/graphics/drawable/Drawable;
    .restart local v32       #menu_btn_active:Landroid/graphics/drawable/Drawable;
    .restart local v33       #menu_btn_pressed:Landroid/graphics/drawable/Drawable;
    .restart local v35       #okBtnParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v36       #okDrawables:Landroid/graphics/drawable/StateListDrawable;
    .restart local v38       #popup_bg:Landroid/graphics/drawable/Drawable;
    .restart local v39       #popup_btn_bg:Landroid/graphics/drawable/Drawable;
    .restart local v40       #popup_title:Landroid/graphics/drawable/Drawable;
    .restart local v41       #root:Landroid/widget/LinearLayout;
    .restart local v42       #rootParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v43       #stateChecked:I
    .restart local v44       #stateFocused:I
    .restart local v45       #statePressed:I
    .restart local v46       #stateWindowFocused:I
    .restart local v47       #sv:Landroid/widget/ScrollView;
    .restart local v48       #svParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v50       #titleParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v51       #titleText:Landroid/widget/TextView;
    :cond_a
    new-instance v57, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v58, 0x0

    const/16 v59, 0x1e

    const/high16 v60, 0x3f80

    invoke-direct/range {v57 .. v60}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v23

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 341
    .restart local v24       #lguplusLogo:Landroid/graphics/drawable/Drawable;
    .restart local v26       #logo:Landroid/widget/ImageView;
    :cond_b
    new-instance v57, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v58, 0x0

    const/16 v59, 0x1e

    const/high16 v60, 0x3f80

    invoke-direct/range {v57 .. v60}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v26

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 348
    .restart local v56       #version:Landroid/widget/TextView;
    :cond_c
    new-instance v57, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v58, 0x0

    const/16 v59, 0x1e

    const/high16 v60, 0x3f80

    invoke-direct/range {v57 .. v60}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual/range {v56 .. v57}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 64
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "posiBtn"
    .parameter "negaBtn"
    .parameter "finalVer"
    .parameter "clientListenerKey"

    .prologue
    .line 364
    invoke-direct/range {p0 .. p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 63
    const/high16 v58, 0x4000

    move/from16 v0, v58

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->ptSize:F

    .line 66
    const/16 v58, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mClientListenerKey:Ljava/lang/String;

    .line 68
    const-string v58, "/lguIABres/"

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    .line 70
    const/16 v58, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->ed:Landroid/widget/EditText;

    .line 71
    const/16 v58, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->cancel:Landroid/widget/Button;

    .line 72
    const/16 v58, 0x0

    move/from16 v0, v58

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mFinalVer:Z

    .line 73
    const/16 v58, 0x0

    move/from16 v0, v58

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mFinalVerDown:Z

    .line 74
    const/16 v58, 0x1

    move/from16 v0, v58

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->anyDensity:Z

    .line 366
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->getDialogType()Ljava/lang/String;

    move-result-object v58

    const-string v59, "FinalVersionDownDlg"

    move-object/from16 v0, v58

    move-object/from16 v1, v59

    if-ne v0, v1, :cond_0

    .line 367
    const/16 v58, 0x1

    move/from16 v0, v58

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mFinalVerDown:Z

    .line 368
    const-string v58, "None"

    invoke-static/range {v58 .. v58}, Lcom/feelingk/lguiab/LguIAPLib;->setFlowType(Ljava/lang/String;)V

    .line 369
    new-instance v58, Ljava/lang/StringBuilder;

    const-string v59, "\uc815\uc2dd\ud310 \uc0c1\ud488 \ub2e4\uc6b4\ub85c\ub4dc mFinalVerDown: "

    invoke-direct/range {v58 .. v59}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mFinalVerDown:Z

    move/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v58 .. v58}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 372
    :cond_0
    const-string v58, "PopupDlgTwoBtn"

    invoke-static/range {v58 .. v58}, Lcom/feelingk/lguiab/LguIAPLib;->setDialogType(Ljava/lang/String;)V

    .line 374
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mContext:Landroid/content/Context;

    .line 377
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mFinalVer:Z

    .line 378
    new-instance v58, Ljava/lang/StringBuilder;

    const-string v59, "\uc815\uc2dd\ud310 \uc0c1\ud488 \uccb4\ud06c - mFinalVer: "

    invoke-direct/range {v58 .. v59}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mFinalVer:Z

    move/from16 v59, v0

    invoke-virtual/range {v58 .. v59}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v58

    invoke-virtual/range {v58 .. v58}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v58

    invoke-static/range {v58 .. v58}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 380
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mClientListenerKey:Ljava/lang/String;

    .line 381
    const/16 v23, 0x0

    .line 382
    .local v23, hvga:Z
    const/16 v22, 0x0

    .line 383
    .local v22, hd:Z
    const/16 v36, 0x0

    .line 384
    .local v36, opView:Z
    const/16 v55, 0x0

    .local v55, totalWidth:I
    const/16 v54, 0x0

    .line 385
    .local v54, totalHeight:I
    const/16 v53, 0x0

    .local v53, titleWidth:I
    const/16 v49, 0x0

    .local v49, titleHeight:I
    const/4 v11, 0x0

    .local v11, buttonHeight:I
    const/4 v10, 0x0

    .local v10, buttonBgWidth:I
    const/4 v9, 0x0

    .line 386
    .local v9, buttonBgHeight:I
    const/16 v52, 0x0

    .local v52, titleTextSize:I
    const/16 v34, 0x0

    .line 387
    .local v34, messageTextSize:I
    const/4 v14, 0x0

    .line 388
    .local v14, contentWidth:I
    new-instance v19, Landroid/util/DisplayMetrics;

    invoke-direct/range {v19 .. v19}, Landroid/util/DisplayMetrics;-><init>()V

    .local v19, displayMetrics:Landroid/util/DisplayMetrics;
    move-object/from16 v58, p1

    .line 389
    check-cast v58, Landroid/app/Activity;

    invoke-virtual/range {v58 .. v58}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v58

    invoke-interface/range {v58 .. v58}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v58

    move-object/from16 v0, v58

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 390
    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    .line 391
    .local v17, deviceWidth:I
    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v16, v0

    .line 393
    .local v16, deviceHeight:I
    sget-boolean v58, Lcom/feelingk/lguiab/util/DeviceUtil;->mHvga:Z

    if-eqz v58, :cond_1

    .line 394
    const/16 v23, 0x1

    .line 395
    :cond_1
    sget-boolean v58, Lcom/feelingk/lguiab/util/DeviceUtil;->mHd:Z

    if-eqz v58, :cond_2

    .line 396
    const/16 v22, 0x1

    .line 398
    :cond_2
    invoke-static {}, Lcom/feelingk/lguiab/util/DeviceUtil;->getmAnyDensityState()Z

    move-result v58

    if-nez v58, :cond_3

    .line 399
    const/16 v23, 0x1

    .line 400
    const/16 v58, 0x0

    move/from16 v0, v58

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->anyDensity:Z

    .line 402
    sget-boolean v58, Lcom/feelingk/lguiab/util/DeviceUtil;->mOpView:Z

    if-eqz v58, :cond_3

    .line 403
    const/16 v36, 0x1

    .line 405
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mContext:Landroid/content/Context;

    move-object/from16 v58, v0

    const-string v59, "window"

    invoke-virtual/range {v58 .. v59}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Landroid/view/WindowManager;

    .line 406
    .local v57, wm:Landroid/view/WindowManager;
    invoke-interface/range {v57 .. v57}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v18

    .line 407
    .local v18, disp:Landroid/view/Display;
    invoke-virtual/range {v18 .. v18}, Landroid/view/Display;->getOrientation()I

    move-result v42

    .line 408
    .local v42, rotation:I
    if-eqz v42, :cond_4

    const/16 v58, 0x2

    move/from16 v0, v42

    move/from16 v1, v58

    if-ne v0, v1, :cond_10

    .line 409
    :cond_4
    if-eqz v23, :cond_e

    .line 410
    const/16 v55, 0x12c

    .line 411
    const/16 v54, 0xf8

    .line 412
    const/16 v53, 0x118

    .line 413
    const/16 v49, 0x2a

    .line 414
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->anyDensity:Z

    move/from16 v58, v0

    if-nez v58, :cond_5

    if-eqz v36, :cond_5

    .line 415
    const/16 v53, 0x121

    .line 416
    const/16 v49, 0x2f

    .line 418
    :cond_5
    const/16 v14, 0x44

    .line 419
    const/16 v11, 0x32

    .line 420
    const/16 v10, 0x117

    .line 421
    const/16 v9, 0x44

    .line 422
    const/16 v52, 0x12

    .line 423
    const/16 v34, 0xd

    .line 491
    :goto_0
    new-instance v27, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mContext:Landroid/content/Context;

    move-object/from16 v58, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 492
    .local v27, ll:Landroid/widget/LinearLayout;
    const/16 v58, 0x11

    move-object/from16 v0, v27

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 494
    new-instance v20, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mContext:Landroid/content/Context;

    move-object/from16 v58, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 495
    .local v20, ff:Landroid/widget/FrameLayout;
    new-instance v58, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, v58

    move/from16 v1, v55

    move/from16 v2, v54

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v20

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 496
    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 499
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v58

    new-instance v59, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v60, v0

    invoke-static/range {v60 .. v60}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v60

    invoke-direct/range {v59 .. v60}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v60, "popup_bg.9.png"

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v24

    .line 500
    .local v24, is:Ljava/io/InputStream;
    const/16 v58, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v58

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v37

    .line 503
    .local v37, popup_bg:Landroid/graphics/drawable/Drawable;
    new-instance v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mContext:Landroid/content/Context;

    move-object/from16 v58, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 504
    .local v21, frame:Landroid/widget/LinearLayout;
    new-instance v58, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v58

    move/from16 v1, v55

    move/from16 v2, v54

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v21

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 505
    move-object/from16 v0, v21

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 506
    invoke-virtual/range {v20 .. v21}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 508
    new-instance v5, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mContext:Landroid/content/Context;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 510
    .local v5, blank:Landroid/widget/LinearLayout;
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    new-instance v58, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v0, v58

    move/from16 v1, v55

    move/from16 v2, v54

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v58

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 511
    .local v6, blankParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 512
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 515
    new-instance v41, Landroid/widget/LinearLayout;

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 516
    .local v41, root:Landroid/widget/LinearLayout;
    const/16 v58, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 517
    const/16 v58, 0x11

    move-object/from16 v0, v41

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 518
    new-instance v58, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v0, v58

    move/from16 v1, v55

    move/from16 v2, v54

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v41

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 519
    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 520
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v58

    new-instance v59, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v60, v0

    invoke-static/range {v60 .. v60}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v60

    invoke-direct/range {v59 .. v60}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v60, "popup_title.png"

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v24

    .line 521
    const/16 v58, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v58

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v39

    .line 524
    .local v39, popup_title:Landroid/graphics/drawable/Drawable;
    new-instance v50, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v50

    move/from16 v1, v53

    move/from16 v2, v49

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 526
    .local v50, titleParams:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v23, :cond_14

    .line 527
    const/16 v58, 0xa

    const/16 v59, 0xa

    const/16 v60, 0xa

    const/16 v61, 0x10

    move-object/from16 v0, v50

    move/from16 v1, v58

    move/from16 v2, v59

    move/from16 v3, v60

    move/from16 v4, v61

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 532
    :goto_1
    new-instance v51, Landroid/widget/TextView;

    move-object/from16 v0, v51

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 533
    .local v51, titleText:Landroid/widget/TextView;
    move-object/from16 v0, v51

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 534
    move-object/from16 v0, v51

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 535
    move-object/from16 v0, v51

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    const-string v58, "#ffffff"

    invoke-static/range {v58 .. v58}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v58

    move-object/from16 v0, v51

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 537
    const/16 v58, 0x11

    move-object/from16 v0, v51

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 538
    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v58, v0

    move-object/from16 v0, v51

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 539
    move-object/from16 v0, v41

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 542
    new-instance v47, Landroid/widget/ScrollView;

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 544
    .local v47, sv:Landroid/widget/ScrollView;
    new-instance v48, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v58, -0x1

    move-object/from16 v0, v48

    move/from16 v1, v58

    invoke-direct {v0, v1, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 546
    .local v48, svParams:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v22, :cond_7

    .line 547
    if-eqz v42, :cond_6

    const/16 v58, 0x2

    move/from16 v0, v42

    move/from16 v1, v58

    if-ne v0, v1, :cond_16

    .line 548
    :cond_6
    new-instance v48, Landroid/widget/LinearLayout$LayoutParams;

    .end local v48           #svParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v58, 0x17c

    const/16 v59, 0xb9

    move-object/from16 v0, v48

    move/from16 v1, v58

    move/from16 v2, v59

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 552
    .restart local v48       #svParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_7
    :goto_2
    if-eqz v23, :cond_17

    .line 553
    const/16 v58, 0x32

    const/16 v59, 0x0

    const/16 v60, 0x32

    const/16 v61, 0x10

    move-object/from16 v0, v48

    move/from16 v1, v58

    move/from16 v2, v59

    move/from16 v3, v60

    move/from16 v4, v61

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 558
    :goto_3
    invoke-virtual/range {v47 .. v48}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 559
    move-object/from16 v0, v41

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 561
    new-instance v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 562
    .local v15, contentll:Landroid/widget/LinearLayout;
    move-object/from16 v0, v47

    invoke-virtual {v0, v15}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 564
    new-instance v13, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 565
    .local v13, content:Landroid/widget/TextView;
    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v58, v0

    move/from16 v0, v58

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 567
    const-string v58, "#535353"

    invoke-static/range {v58 .. v58}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v58

    move/from16 v0, v58

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 568
    invoke-virtual {v15, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 571
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v58

    new-instance v59, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v60, v0

    invoke-static/range {v60 .. v60}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v60

    invoke-direct/range {v59 .. v60}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v60, "popup_btn_bg.png"

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v24

    .line 572
    const/16 v58, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v58

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v38

    .line 576
    .local v38, popup_btn_bg:Landroid/graphics/drawable/Drawable;
    new-instance v7, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 578
    .local v7, bottom:Landroid/widget/LinearLayout;
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 579
    .local v8, btnParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v58, 0xb

    const/16 v59, 0x0

    const/16 v60, 0xa

    const/16 v61, 0x0

    move/from16 v0, v58

    move/from16 v1, v59

    move/from16 v2, v60

    move/from16 v3, v61

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 580
    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 581
    move-object/from16 v0, v38

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 582
    const/16 v58, 0x11

    move/from16 v0, v58

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 583
    move-object/from16 v0, v41

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 585
    new-instance v35, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v35 .. v35}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 586
    .local v35, okDrawables:Landroid/graphics/drawable/StateListDrawable;
    new-instance v12, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v12}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 588
    .local v12, cancelDrawables:Landroid/graphics/drawable/StateListDrawable;
    const v43, 0x10100a0

    .line 589
    .local v43, stateChecked:I
    const v44, 0x101009c

    .line 590
    .local v44, stateFocused:I
    const v45, 0x10100a7

    .line 591
    .local v45, statePressed:I
    const v46, 0x101009d

    .line 592
    .local v46, stateWindowFocused:I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v58

    new-instance v59, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v60, v0

    invoke-static/range {v60 .. v60}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v60

    invoke-direct/range {v59 .. v60}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v60, "menu_btn.9.png"

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v24

    .line 593
    const/16 v58, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v58

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v31

    .line 594
    .local v31, menu_btn:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v58

    new-instance v59, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v60, v0

    invoke-static/range {v60 .. v60}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v60

    invoke-direct/range {v59 .. v60}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v60, "menu_btn_pressed.9.png"

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v24

    .line 595
    const/16 v58, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v58

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v33

    .line 596
    .local v33, menu_btn_pressed:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v58

    new-instance v59, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v60, v0

    invoke-static/range {v60 .. v60}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v60

    invoke-direct/range {v59 .. v60}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v60, "menu_btn_active.9.png"

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v24

    .line 597
    const/16 v58, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v58

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v32

    .line 599
    .local v32, menu_btn_active:Landroid/graphics/drawable/Drawable;
    const/16 v58, 0x2

    move/from16 v0, v58

    new-array v0, v0, [I

    move-object/from16 v58, v0

    const/16 v59, 0x0

    aput v43, v58, v59

    const/16 v59, 0x1

    move/from16 v0, v46

    neg-int v0, v0

    move/from16 v60, v0

    aput v60, v58, v59

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 600
    const/16 v58, 0x2

    move/from16 v0, v58

    new-array v0, v0, [I

    move-object/from16 v58, v0

    const/16 v59, 0x0

    move/from16 v0, v43

    neg-int v0, v0

    move/from16 v60, v0

    aput v60, v58, v59

    const/16 v59, 0x1

    move/from16 v0, v46

    neg-int v0, v0

    move/from16 v60, v0

    aput v60, v58, v59

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 601
    const/16 v58, 0x2

    move/from16 v0, v58

    new-array v0, v0, [I

    move-object/from16 v58, v0

    const/16 v59, 0x0

    aput v43, v58, v59

    const/16 v59, 0x1

    aput v45, v58, v59

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 602
    const/16 v58, 0x2

    move/from16 v0, v58

    new-array v0, v0, [I

    move-object/from16 v58, v0

    const/16 v59, 0x0

    move/from16 v0, v43

    neg-int v0, v0

    move/from16 v60, v0

    aput v60, v58, v59

    const/16 v59, 0x1

    aput v45, v58, v59

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 603
    const/16 v58, 0x2

    move/from16 v0, v58

    new-array v0, v0, [I

    move-object/from16 v58, v0

    const/16 v59, 0x0

    aput v43, v58, v59

    const/16 v59, 0x1

    aput v44, v58, v59

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 604
    const/16 v58, 0x2

    move/from16 v0, v58

    new-array v0, v0, [I

    move-object/from16 v58, v0

    const/16 v59, 0x0

    move/from16 v0, v43

    neg-int v0, v0

    move/from16 v60, v0

    aput v60, v58, v59

    const/16 v59, 0x1

    aput v44, v58, v59

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 605
    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [I

    move-object/from16 v58, v0

    const/16 v59, 0x0

    aput v43, v58, v59

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 606
    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [I

    move-object/from16 v58, v0

    const/16 v59, 0x0

    move/from16 v0, v43

    neg-int v0, v0

    move/from16 v60, v0

    aput v60, v58, v59

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 607
    const/16 v58, 0x0

    move/from16 v0, v58

    new-array v0, v0, [I

    move-object/from16 v58, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 609
    const/16 v58, 0x2

    move/from16 v0, v58

    new-array v0, v0, [I

    move-object/from16 v58, v0

    const/16 v59, 0x0

    aput v43, v58, v59

    const/16 v59, 0x1

    move/from16 v0, v46

    neg-int v0, v0

    move/from16 v60, v0

    aput v60, v58, v59

    move-object/from16 v0, v58

    move-object/from16 v1, v31

    invoke-virtual {v12, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 610
    const/16 v58, 0x2

    move/from16 v0, v58

    new-array v0, v0, [I

    move-object/from16 v58, v0

    const/16 v59, 0x0

    move/from16 v0, v43

    neg-int v0, v0

    move/from16 v60, v0

    aput v60, v58, v59

    const/16 v59, 0x1

    move/from16 v0, v46

    neg-int v0, v0

    move/from16 v60, v0

    aput v60, v58, v59

    move-object/from16 v0, v58

    move-object/from16 v1, v31

    invoke-virtual {v12, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 611
    const/16 v58, 0x2

    move/from16 v0, v58

    new-array v0, v0, [I

    move-object/from16 v58, v0

    const/16 v59, 0x0

    aput v43, v58, v59

    const/16 v59, 0x1

    aput v45, v58, v59

    move-object/from16 v0, v58

    move-object/from16 v1, v33

    invoke-virtual {v12, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 612
    const/16 v58, 0x2

    move/from16 v0, v58

    new-array v0, v0, [I

    move-object/from16 v58, v0

    const/16 v59, 0x0

    move/from16 v0, v43

    neg-int v0, v0

    move/from16 v60, v0

    aput v60, v58, v59

    const/16 v59, 0x1

    aput v45, v58, v59

    move-object/from16 v0, v58

    move-object/from16 v1, v33

    invoke-virtual {v12, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 613
    const/16 v58, 0x2

    move/from16 v0, v58

    new-array v0, v0, [I

    move-object/from16 v58, v0

    const/16 v59, 0x0

    aput v43, v58, v59

    const/16 v59, 0x1

    aput v44, v58, v59

    move-object/from16 v0, v58

    move-object/from16 v1, v32

    invoke-virtual {v12, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 614
    const/16 v58, 0x2

    move/from16 v0, v58

    new-array v0, v0, [I

    move-object/from16 v58, v0

    const/16 v59, 0x0

    move/from16 v0, v43

    neg-int v0, v0

    move/from16 v60, v0

    aput v60, v58, v59

    const/16 v59, 0x1

    aput v44, v58, v59

    move-object/from16 v0, v58

    move-object/from16 v1, v32

    invoke-virtual {v12, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 615
    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [I

    move-object/from16 v58, v0

    const/16 v59, 0x0

    aput v43, v58, v59

    move-object/from16 v0, v58

    move-object/from16 v1, v33

    invoke-virtual {v12, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 616
    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [I

    move-object/from16 v58, v0

    const/16 v59, 0x0

    move/from16 v0, v43

    neg-int v0, v0

    move/from16 v60, v0

    aput v60, v58, v59

    move-object/from16 v0, v58

    move-object/from16 v1, v31

    invoke-virtual {v12, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 617
    const/16 v58, 0x0

    move/from16 v0, v58

    new-array v0, v0, [I

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    move-object/from16 v1, v33

    invoke-virtual {v12, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 619
    new-instance v58, Landroid/widget/Button;

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->posiBtnTitle:Landroid/widget/Button;

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->posiBtnTitle:Landroid/widget/Button;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 622
    new-instance v40, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v58, 0x0

    const/high16 v59, 0x3f80

    move-object/from16 v0, v40

    move/from16 v1, v58

    move/from16 v2, v59

    invoke-direct {v0, v1, v11, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 623
    .local v40, purchaseBtnParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v58, 0xf

    const/16 v59, 0x7

    const/16 v60, 0xf

    const/16 v61, 0x8

    move-object/from16 v0, v40

    move/from16 v1, v58

    move/from16 v2, v59

    move/from16 v3, v60

    move/from16 v4, v61

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 624
    if-eqz v22, :cond_8

    .line 625
    const/16 v58, 0xc

    const/16 v59, 0xa

    const/16 v60, 0x5

    const/16 v61, 0xc

    move-object/from16 v0, v40

    move/from16 v1, v58

    move/from16 v2, v59

    move/from16 v3, v60

    move/from16 v4, v61

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 626
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->posiBtnTitle:Landroid/widget/Button;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->posiBtnTitle:Landroid/widget/Button;

    move-object/from16 v58, v0

    const/16 v59, 0x11

    invoke-virtual/range {v58 .. v59}, Landroid/widget/Button;->setGravity(I)V

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->posiBtnTitle:Landroid/widget/Button;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->posiBtnTitle:Landroid/widget/Button;

    move-object/from16 v58, v0

    const v59, 0x4195999a

    invoke-virtual/range {v58 .. v59}, Landroid/widget/Button;->setTextSize(F)V

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->posiBtnTitle:Landroid/widget/Button;

    move-object/from16 v58, v0

    new-instance v59, Landroid/content/res/ColorStateList;

    .line 631
    const/16 v60, 0x2

    move/from16 v0, v60

    new-array v0, v0, [[I

    move-object/from16 v60, v0

    const/16 v61, 0x0

    .line 632
    const/16 v62, 0x1

    move/from16 v0, v62

    new-array v0, v0, [I

    move-object/from16 v62, v0

    const/16 v63, 0x0

    aput v45, v62, v63

    aput-object v62, v60, v61

    const/16 v61, 0x1

    .line 633
    const/16 v62, 0x0

    move/from16 v0, v62

    new-array v0, v0, [I

    move-object/from16 v62, v0

    aput-object v62, v60, v61

    .line 634
    const/16 v61, 0x2

    move/from16 v0, v61

    new-array v0, v0, [I

    move-object/from16 v61, v0

    const/16 v62, 0x0

    .line 635
    const-string v63, "#ffffff"

    invoke-static/range {v63 .. v63}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v63

    aput v63, v61, v62

    const/16 v62, 0x1

    .line 636
    const-string v63, "#2c3b65"

    invoke-static/range {v63 .. v63}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v63

    aput v63, v61, v62

    invoke-direct/range {v59 .. v61}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 630
    invoke-virtual/range {v58 .. v59}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->posiBtnTitle:Landroid/widget/Button;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 641
    new-instance v58, Landroid/widget/Button;

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->negaBtnTitle:Landroid/widget/Button;

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->negaBtnTitle:Landroid/widget/Button;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    invoke-virtual {v0, v12}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 643
    const/16 v58, 0xf

    const/16 v59, 0x7

    const/16 v60, 0xf

    const/16 v61, 0x8

    move-object/from16 v0, v40

    move/from16 v1, v58

    move/from16 v2, v59

    move/from16 v3, v60

    move/from16 v4, v61

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->negaBtnTitle:Landroid/widget/Button;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->negaBtnTitle:Landroid/widget/Button;

    move-object/from16 v58, v0

    const/16 v59, 0x11

    invoke-virtual/range {v58 .. v59}, Landroid/widget/Button;->setGravity(I)V

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->negaBtnTitle:Landroid/widget/Button;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->negaBtnTitle:Landroid/widget/Button;

    move-object/from16 v58, v0

    const v59, 0x4195999a

    invoke-virtual/range {v58 .. v59}, Landroid/widget/Button;->setTextSize(F)V

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->negaBtnTitle:Landroid/widget/Button;

    move-object/from16 v58, v0

    new-instance v59, Landroid/content/res/ColorStateList;

    .line 649
    const/16 v60, 0x2

    move/from16 v0, v60

    new-array v0, v0, [[I

    move-object/from16 v60, v0

    const/16 v61, 0x0

    .line 650
    const/16 v62, 0x1

    move/from16 v0, v62

    new-array v0, v0, [I

    move-object/from16 v62, v0

    const/16 v63, 0x0

    aput v45, v62, v63

    aput-object v62, v60, v61

    const/16 v61, 0x1

    .line 651
    const/16 v62, 0x0

    move/from16 v0, v62

    new-array v0, v0, [I

    move-object/from16 v62, v0

    aput-object v62, v60, v61

    .line 652
    const/16 v61, 0x2

    move/from16 v0, v61

    new-array v0, v0, [I

    move-object/from16 v61, v0

    const/16 v62, 0x0

    .line 653
    const-string v63, "#ffffff"

    invoke-static/range {v63 .. v63}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v63

    aput v63, v61, v62

    const/16 v62, 0x1

    .line 654
    const-string v63, "#2c3b65"

    invoke-static/range {v63 .. v63}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v63

    aput v63, v61, v62

    invoke-direct/range {v59 .. v61}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 648
    invoke-virtual/range {v58 .. v59}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->negaBtnTitle:Landroid/widget/Button;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 659
    new-instance v29, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mContext:Landroid/content/Context;

    move-object/from16 v58, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 661
    .local v29, logoView:Landroid/widget/LinearLayout;
    new-instance v30, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v58, -0x1

    const/16 v59, 0x1e

    move-object/from16 v0, v30

    move/from16 v1, v58

    move/from16 v2, v59

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 662
    .local v30, logoViewParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v58, 0xc

    const/16 v59, 0x0

    const/16 v60, 0xc

    const/16 v61, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v58

    move/from16 v2, v59

    move/from16 v3, v60

    move/from16 v4, v61

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 663
    if-eqz v22, :cond_1a

    .line 664
    if-eqz v42, :cond_9

    const/16 v58, 0x2

    move/from16 v0, v42

    move/from16 v1, v58

    if-ne v0, v1, :cond_19

    .line 666
    :cond_9
    new-instance v30, Landroid/widget/LinearLayout$LayoutParams;

    .end local v30           #logoViewParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v58, 0x1e0

    const/16 v59, 0x24

    move-object/from16 v0, v30

    move/from16 v1, v58

    move/from16 v2, v59

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 673
    .restart local v30       #logoViewParams:Landroid/widget/LinearLayout$LayoutParams;
    :goto_4
    const/16 v58, 0xa

    const/16 v59, 0x0

    const/16 v60, 0xa

    const/16 v61, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v58

    move/from16 v2, v59

    move/from16 v3, v60

    move/from16 v4, v61

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 677
    :cond_a
    :goto_5
    invoke-virtual/range {v29 .. v30}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 678
    const/16 v58, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 679
    move-object/from16 v0, v41

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 681
    new-instance v25, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mContext:Landroid/content/Context;

    move-object/from16 v58, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 682
    .local v25, leftBlank:Landroid/widget/LinearLayout;
    new-instance v58, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v59, 0x6e

    const/16 v60, 0x1e

    const/high16 v61, 0x3f80

    invoke-direct/range {v58 .. v61}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v25

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 683
    if-eqz v22, :cond_b

    .line 684
    new-instance v58, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v59, 0x0

    const/16 v60, 0x24

    const/high16 v61, 0x3f80

    invoke-direct/range {v58 .. v61}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v25

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 685
    :cond_b
    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 687
    new-instance v28, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mContext:Landroid/content/Context;

    move-object/from16 v58, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 688
    .local v28, logo:Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v58

    new-instance v59, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v60, v0

    invoke-static/range {v60 .. v60}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v60

    invoke-direct/range {v59 .. v60}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v60, "lguplus_logo.png"

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v24

    .line 689
    const/16 v58, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v58

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    .line 690
    .local v26, lguplusLogo:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 691
    new-instance v58, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v59, 0xa0

    const/16 v60, 0x1e

    const/high16 v61, 0x3f80

    invoke-direct/range {v58 .. v61}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v28

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 692
    if-eqz v22, :cond_1b

    .line 693
    new-instance v58, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v59, 0x0

    const/16 v60, 0x24

    const/high16 v61, 0x3f80

    invoke-direct/range {v58 .. v61}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v28

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 696
    :cond_c
    :goto_6
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 698
    new-instance v56, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mContext:Landroid/content/Context;

    move-object/from16 v58, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 699
    .local v56, version:Landroid/widget/TextView;
    new-instance v58, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v59, 0x6e

    const/16 v60, 0x1e

    const/high16 v61, 0x3f80

    invoke-direct/range {v58 .. v61}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v56

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 700
    if-eqz v22, :cond_d

    .line 701
    new-instance v58, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v59, 0x0

    const/16 v60, 0x24

    const/high16 v61, 0x3f80

    invoke-direct/range {v58 .. v61}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v56

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 703
    :cond_d
    sget-object v58, Lcom/feelingk/lguiab/common/Defines;->SDK_VERSION_INFO:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 704
    const/16 v58, 0x0

    const/16 v59, 0x5

    const/16 v60, 0x0

    const/16 v61, 0x0

    move-object/from16 v0, v56

    move/from16 v1, v58

    move/from16 v2, v59

    move/from16 v3, v60

    move/from16 v4, v61

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 705
    const/16 v58, 0x5

    move-object/from16 v0, v56

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 706
    const v58, 0x4134cccd

    move-object/from16 v0, v56

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 707
    const-string v58, "#b8b8b8"

    invoke-static/range {v58 .. v58}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v58

    move-object/from16 v0, v56

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 708
    move-object/from16 v0, v29

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 710
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->setContentView(Landroid/view/View;)V

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->posiBtnTitle:Landroid/widget/Button;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->negaBtnTitle:Landroid/widget/Button;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 715
    return-void

    .line 425
    .end local v5           #blank:Landroid/widget/LinearLayout;
    .end local v6           #blankParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v7           #bottom:Landroid/widget/LinearLayout;
    .end local v8           #btnParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v12           #cancelDrawables:Landroid/graphics/drawable/StateListDrawable;
    .end local v13           #content:Landroid/widget/TextView;
    .end local v15           #contentll:Landroid/widget/LinearLayout;
    .end local v20           #ff:Landroid/widget/FrameLayout;
    .end local v21           #frame:Landroid/widget/LinearLayout;
    .end local v24           #is:Ljava/io/InputStream;
    .end local v25           #leftBlank:Landroid/widget/LinearLayout;
    .end local v26           #lguplusLogo:Landroid/graphics/drawable/Drawable;
    .end local v27           #ll:Landroid/widget/LinearLayout;
    .end local v28           #logo:Landroid/widget/ImageView;
    .end local v29           #logoView:Landroid/widget/LinearLayout;
    .end local v30           #logoViewParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v31           #menu_btn:Landroid/graphics/drawable/Drawable;
    .end local v32           #menu_btn_active:Landroid/graphics/drawable/Drawable;
    .end local v33           #menu_btn_pressed:Landroid/graphics/drawable/Drawable;
    .end local v35           #okDrawables:Landroid/graphics/drawable/StateListDrawable;
    .end local v37           #popup_bg:Landroid/graphics/drawable/Drawable;
    .end local v38           #popup_btn_bg:Landroid/graphics/drawable/Drawable;
    .end local v39           #popup_title:Landroid/graphics/drawable/Drawable;
    .end local v40           #purchaseBtnParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v41           #root:Landroid/widget/LinearLayout;
    .end local v43           #stateChecked:I
    .end local v44           #stateFocused:I
    .end local v45           #statePressed:I
    .end local v46           #stateWindowFocused:I
    .end local v47           #sv:Landroid/widget/ScrollView;
    .end local v48           #svParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v50           #titleParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v51           #titleText:Landroid/widget/TextView;
    .end local v56           #version:Landroid/widget/TextView;
    :cond_e
    if-eqz v22, :cond_f

    .line 426
    const/16 v55, 0x1f4

    .line 427
    const/16 v54, 0x1e9

    .line 428
    const/16 v53, 0x1e0

    .line 429
    const/16 v49, 0x4b

    .line 430
    const/high16 v58, 0x4208

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->ptSize:F

    move/from16 v59, v0

    div-float v58, v58, v59

    move/from16 v0, v58

    float-to-int v0, v0

    move/from16 v52, v0

    .line 431
    const/high16 v58, 0x41f0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->ptSize:F

    move/from16 v59, v0

    div-float v58, v58, v59

    move/from16 v0, v58

    float-to-int v0, v0

    move/from16 v34, v0

    .line 432
    const/16 v10, 0x1df

    .line 433
    const/16 v9, 0x68

    .line 434
    const/16 v11, 0x54

    goto/16 :goto_0

    .line 437
    :cond_f
    const/16 v55, 0x190

    .line 438
    const/16 v54, 0x164

    .line 439
    const/16 v53, 0x17c

    .line 440
    const/16 v49, 0x3c

    .line 441
    const/16 v52, 0x12

    .line 442
    const/16 v14, 0x6c

    .line 443
    const/16 v34, 0xd

    .line 444
    const/16 v10, 0x17b

    .line 445
    const/16 v9, 0x53

    .line 446
    const/16 v11, 0x44

    goto/16 :goto_0

    .line 450
    :cond_10
    if-eqz v23, :cond_12

    .line 451
    const/16 v55, 0x190

    .line 452
    const/16 v54, 0xf8

    .line 453
    const/16 v53, 0x17c

    .line 454
    const/16 v49, 0x2a

    .line 455
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->anyDensity:Z

    move/from16 v58, v0

    if-nez v58, :cond_11

    if-eqz v36, :cond_11

    .line 456
    const/16 v53, 0x185

    .line 457
    const/16 v49, 0x2f

    .line 459
    :cond_11
    const/16 v14, 0x44

    .line 460
    const/16 v11, 0x32

    .line 461
    const/16 v10, 0x17b

    .line 462
    const/16 v9, 0x44

    .line 463
    const/16 v52, 0x12

    .line 464
    const/16 v34, 0xd

    goto/16 :goto_0

    .line 466
    :cond_12
    if-eqz v22, :cond_13

    .line 467
    const/16 v55, 0x2d5

    .line 468
    const/16 v54, 0x1e9

    .line 469
    const/16 v53, 0x2c1

    .line 470
    const/16 v49, 0x4b

    .line 471
    const/high16 v58, 0x4208

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->ptSize:F

    move/from16 v59, v0

    div-float v58, v58, v59

    move/from16 v0, v58

    float-to-int v0, v0

    move/from16 v52, v0

    .line 472
    const/high16 v58, 0x41f0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->ptSize:F

    move/from16 v59, v0

    div-float v58, v58, v59

    move/from16 v0, v58

    float-to-int v0, v0

    move/from16 v34, v0

    .line 473
    const/16 v10, 0x2c0

    .line 474
    const/16 v9, 0x68

    .line 475
    const/16 v11, 0x54

    goto/16 :goto_0

    .line 478
    :cond_13
    const/16 v55, 0x1f4

    .line 479
    const/16 v54, 0x164

    .line 480
    const/16 v53, 0x1e0

    .line 481
    const/16 v49, 0x3c

    .line 482
    const/16 v52, 0x12

    .line 483
    const/16 v34, 0xd

    .line 484
    const/16 v14, 0x6c

    .line 485
    const/16 v10, 0x1df

    .line 486
    const/16 v9, 0x53

    .line 487
    const/16 v11, 0x44

    goto/16 :goto_0

    .line 528
    .restart local v5       #blank:Landroid/widget/LinearLayout;
    .restart local v6       #blankParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v20       #ff:Landroid/widget/FrameLayout;
    .restart local v21       #frame:Landroid/widget/LinearLayout;
    .restart local v24       #is:Ljava/io/InputStream;
    .restart local v27       #ll:Landroid/widget/LinearLayout;
    .restart local v37       #popup_bg:Landroid/graphics/drawable/Drawable;
    .restart local v39       #popup_title:Landroid/graphics/drawable/Drawable;
    .restart local v41       #root:Landroid/widget/LinearLayout;
    .restart local v50       #titleParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_14
    if-eqz v22, :cond_15

    .line 529
    const/16 v58, 0xa

    const/16 v59, 0xa

    const/16 v60, 0xa

    const/16 v61, 0x0

    move-object/from16 v0, v50

    move/from16 v1, v58

    move/from16 v2, v59

    move/from16 v3, v60

    move/from16 v4, v61

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_1

    .line 531
    :cond_15
    const/16 v58, 0xa

    const/16 v59, 0xa

    const/16 v60, 0xa

    const/16 v61, 0x20

    move-object/from16 v0, v50

    move/from16 v1, v58

    move/from16 v2, v59

    move/from16 v3, v60

    move/from16 v4, v61

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_1

    .line 550
    .restart local v47       #sv:Landroid/widget/ScrollView;
    .restart local v48       #svParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v51       #titleText:Landroid/widget/TextView;
    :cond_16
    new-instance v48, Landroid/widget/LinearLayout$LayoutParams;

    .end local v48           #svParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v58, 0x25d

    const/16 v59, 0xb9

    move-object/from16 v0, v48

    move/from16 v1, v58

    move/from16 v2, v59

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .restart local v48       #svParams:Landroid/widget/LinearLayout$LayoutParams;
    goto/16 :goto_2

    .line 554
    :cond_17
    if-eqz v22, :cond_18

    .line 555
    const/16 v58, 0x3c

    const/16 v59, 0x28

    const/16 v60, 0x28

    const/16 v61, 0x28

    move-object/from16 v0, v48

    move/from16 v1, v58

    move/from16 v2, v59

    move/from16 v3, v60

    move/from16 v4, v61

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_3

    .line 557
    :cond_18
    const/16 v58, 0x32

    const/16 v59, 0x0

    const/16 v60, 0x32

    const/16 v61, 0x20

    move-object/from16 v0, v48

    move/from16 v1, v58

    move/from16 v2, v59

    move/from16 v3, v60

    move/from16 v4, v61

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_3

    .line 671
    .restart local v7       #bottom:Landroid/widget/LinearLayout;
    .restart local v8       #btnParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v12       #cancelDrawables:Landroid/graphics/drawable/StateListDrawable;
    .restart local v13       #content:Landroid/widget/TextView;
    .restart local v15       #contentll:Landroid/widget/LinearLayout;
    .restart local v29       #logoView:Landroid/widget/LinearLayout;
    .restart local v30       #logoViewParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v31       #menu_btn:Landroid/graphics/drawable/Drawable;
    .restart local v32       #menu_btn_active:Landroid/graphics/drawable/Drawable;
    .restart local v33       #menu_btn_pressed:Landroid/graphics/drawable/Drawable;
    .restart local v35       #okDrawables:Landroid/graphics/drawable/StateListDrawable;
    .restart local v38       #popup_btn_bg:Landroid/graphics/drawable/Drawable;
    .restart local v40       #purchaseBtnParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v43       #stateChecked:I
    .restart local v44       #stateFocused:I
    .restart local v45       #statePressed:I
    .restart local v46       #stateWindowFocused:I
    :cond_19
    new-instance v30, Landroid/widget/LinearLayout$LayoutParams;

    .end local v30           #logoViewParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v58, 0x2c1

    const/16 v59, 0x24

    move-object/from16 v0, v30

    move/from16 v1, v58

    move/from16 v2, v59

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 670
    .restart local v30       #logoViewParams:Landroid/widget/LinearLayout$LayoutParams;
    goto/16 :goto_4

    .line 675
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->anyDensity:Z

    move/from16 v58, v0

    if-nez v58, :cond_a

    if-eqz v36, :cond_a

    .line 676
    const/16 v58, 0xc

    const/16 v59, 0x5

    const/16 v60, 0xc

    const/16 v61, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v58

    move/from16 v2, v59

    move/from16 v3, v60

    move/from16 v4, v61

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_5

    .line 694
    .restart local v25       #leftBlank:Landroid/widget/LinearLayout;
    .restart local v26       #lguplusLogo:Landroid/graphics/drawable/Drawable;
    .restart local v28       #logo:Landroid/widget/ImageView;
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->anyDensity:Z

    move/from16 v58, v0

    if-nez v58, :cond_c

    if-eqz v36, :cond_c

    .line 695
    new-instance v58, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v59, 0xa0

    const/16 v60, 0x19

    const/high16 v61, 0x3f80

    invoke-direct/range {v58 .. v61}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v28

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_6
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 64
    .parameter "context"
    .parameter "finalVer"
    .parameter "password"
    .parameter "appId"
    .parameter "purchasePID"
    .parameter "bpIp"
    .parameter "bpPort"
    .parameter "purchaseBpUri"
    .parameter "purchaseBpData"
    .parameter "clientListenerKey"

    .prologue
    .line 719
    invoke-direct/range {p0 .. p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 63
    const/high16 v58, 0x4000

    move/from16 v0, v58

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->ptSize:F

    .line 66
    const/16 v58, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mClientListenerKey:Ljava/lang/String;

    .line 68
    const-string v58, "/lguIABres/"

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    .line 70
    const/16 v58, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->ed:Landroid/widget/EditText;

    .line 71
    const/16 v58, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->cancel:Landroid/widget/Button;

    .line 72
    const/16 v58, 0x0

    move/from16 v0, v58

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mFinalVer:Z

    .line 73
    const/16 v58, 0x0

    move/from16 v0, v58

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mFinalVerDown:Z

    .line 74
    const/16 v58, 0x1

    move/from16 v0, v58

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->anyDensity:Z

    .line 721
    const/16 v58, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->requestWindowFeature(I)Z

    .line 723
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mContext:Landroid/content/Context;

    .line 724
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mFinalVer:Z

    .line 725
    sput-object p3, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mPwd:Ljava/lang/String;

    .line 726
    sput-object p4, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mAppId:Ljava/lang/String;

    .line 727
    sput-object p5, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mPurchasePid:Ljava/lang/String;

    .line 728
    sput-object p6, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mBpIp:Ljava/lang/String;

    .line 729
    sput p7, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mBpPort:I

    .line 730
    sput-object p8, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mBpUri:Ljava/lang/String;

    .line 731
    sput-object p9, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mBpData:Ljava/lang/String;

    .line 732
    move-object/from16 v0, p10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mClientListenerKey:Ljava/lang/String;

    .line 734
    const/16 v57, 0x190

    .local v57, width:I
    const/16 v23, 0x11f

    .local v23, heigt:I
    const/16 v45, 0x73

    .local v45, pwdText:I
    const/16 v19, 0xdb

    .line 735
    .local v19, editText:I
    const/16 v46, 0x3e

    .local v46, pwdTextH:I
    const/16 v53, 0x3c

    .local v53, titleH:I
    const/16 v7, 0x53

    .local v7, bottomH:I
    const/16 v9, 0x44

    .local v9, btnH:I
    const/16 v34, 0x12

    .local v34, margin:I
    const/16 v35, 0x1c

    .local v35, margintL:I
    const/4 v10, 0x7

    .line 736
    .local v10, btnMrrgin:I
    sget-boolean v58, Lcom/feelingk/lguiab/util/DeviceUtil;->mHd:Z

    if-eqz v58, :cond_0

    .line 737
    const/16 v57, 0x215

    .line 738
    const/16 v23, 0x174

    .line 739
    const/16 v53, 0x50

    .line 740
    const/16 v45, 0x99

    .line 741
    const/16 v19, 0x124

    .line 742
    const/16 v46, 0x52

    .line 743
    const/16 v7, 0x72

    .line 744
    const/16 v9, 0x5a

    .line 745
    const/16 v34, 0x19

    .line 746
    const/16 v35, 0x25

    .line 747
    const/16 v10, 0xa

    .line 749
    :cond_0
    sget-boolean v58, Lcom/feelingk/lguiab/util/DeviceUtil;->mHvga:Z

    if-nez v58, :cond_1

    invoke-static {}, Lcom/feelingk/lguiab/util/DeviceUtil;->getmAnyDensityState()Z

    move-result v58

    if-nez v58, :cond_2

    .line 750
    :cond_1
    const/16 v57, 0x128

    .line 751
    const/16 v23, 0xde

    .line 752
    const/16 v53, 0x2a

    .line 753
    const/16 v46, 0x2d

    .line 754
    div-int/lit8 v19, v19, 0x2

    .line 755
    const/16 v7, 0x44

    .line 756
    const/16 v9, 0x34

    .line 759
    :cond_2
    new-instance v37, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v37 .. v37}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 760
    .local v37, okDrawables:Landroid/graphics/drawable/StateListDrawable;
    new-instance v15, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v15}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 761
    .local v15, cancelDrawables:Landroid/graphics/drawable/StateListDrawable;
    new-instance v17, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 763
    .local v17, edDrawables:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v58

    new-instance v59, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v60, v0

    invoke-static/range {v60 .. v60}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v60

    invoke-direct/range {v59 .. v60}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v60, "btn_detail_menu.9.png"

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v27

    .line 764
    .local v27, is:Ljava/io/InputStream;
    const/16 v58, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v58

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 765
    .local v11, btn_detail_menu:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v58

    new-instance v59, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v60, v0

    invoke-static/range {v60 .. v60}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v60

    invoke-direct/range {v59 .. v60}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v60, "btn_detail_menu_pressed.9.png"

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v27

    .line 766
    const/16 v58, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v58

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 767
    .local v14, btn_detail_menu_pressed:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v58

    new-instance v59, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v60, v0

    invoke-static/range {v60 .. v60}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v60

    invoke-direct/range {v59 .. v60}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v60, "btn_detail_menu_active.9.png"

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v27

    .line 768
    const/16 v58, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v58

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 770
    .local v12, btn_detail_menu_active:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v58

    new-instance v59, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v60, v0

    invoke-static/range {v60 .. v60}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v60

    invoke-direct/range {v59 .. v60}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v60, "popup_bg.9.png"

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v27

    .line 771
    const/16 v58, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v58

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v40

    .line 772
    .local v40, popup_bg:Landroid/graphics/drawable/Drawable;
    const/16 v27, 0x0

    .line 774
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v58

    new-instance v59, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v60, v0

    invoke-static/range {v60 .. v60}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v60

    invoke-direct/range {v59 .. v60}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v60, "inputbox_white.9.png"

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v27

    .line 775
    const/16 v58, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v58

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    .line 776
    .local v26, inputbox_white:Landroid/graphics/drawable/Drawable;
    const/16 v27, 0x0

    .line 777
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v58

    new-instance v59, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v60, v0

    invoke-static/range {v60 .. v60}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v60

    invoke-direct/range {v59 .. v60}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v60, "inputbox_press.9.png"

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v27

    .line 778
    const/16 v58, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v58

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    .line 779
    .local v25, inputbox_press:Landroid/graphics/drawable/Drawable;
    const/16 v27, 0x0

    .line 780
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v58

    new-instance v59, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v60, v0

    invoke-static/range {v60 .. v60}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v60

    invoke-direct/range {v59 .. v60}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v60, "inputbox_active.9.png"

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v27

    .line 781
    const/16 v58, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v58

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    .line 782
    .local v24, inputbox_active:Landroid/graphics/drawable/Drawable;
    const/16 v27, 0x0

    .line 783
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v58

    new-instance v59, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v60, v0

    invoke-static/range {v60 .. v60}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v60

    invoke-direct/range {v59 .. v60}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v60, "btn_detail_menu_bg.9.png"

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v27

    .line 784
    const/16 v58, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v58

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 785
    .local v13, btn_detail_menu_bg:Landroid/graphics/drawable/Drawable;
    const/16 v27, 0x0

    .line 787
    const v49, 0x10100a0

    .line 788
    .local v49, stateChecked:I
    const v50, 0x101009c

    .line 789
    .local v50, stateFocused:I
    const v51, 0x10100a7

    .line 790
    .local v51, statePressed:I
    const v52, 0x101009d

    .line 792
    .local v52, stateWindowFocused:I
    const/16 v36, 0x4

    .line 793
    .local v36, maxLength:I
    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v21, v0

    .line 794
    .local v21, filterArray:[Landroid/text/InputFilter;
    const/16 v58, 0x0

    new-instance v59, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, v59

    move/from16 v1, v36

    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v59, v21, v58

    .line 796
    new-instance v30, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mContext:Landroid/content/Context;

    move-object/from16 v58, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 798
    .local v30, ll:Landroid/widget/LinearLayout;
    new-instance v20, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mContext:Landroid/content/Context;

    move-object/from16 v58, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 799
    .local v20, ff:Landroid/widget/FrameLayout;
    new-instance v58, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v59, -0x2

    move-object/from16 v0, v58

    move/from16 v1, v57

    move/from16 v2, v59

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v20

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 800
    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 804
    new-instance v22, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mContext:Landroid/content/Context;

    move-object/from16 v58, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 805
    .local v22, frame:Landroid/widget/LinearLayout;
    new-instance v58, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v58

    move/from16 v1, v57

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v22

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 806
    move-object/from16 v0, v22

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 807
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 809
    new-instance v5, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mContext:Landroid/content/Context;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 810
    .local v5, blank:Landroid/widget/LinearLayout;
    new-instance v58, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v59, -0x2

    move-object/from16 v0, v58

    move/from16 v1, v57

    move/from16 v2, v59

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v58

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 811
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 814
    new-instance v48, Landroid/widget/LinearLayout;

    move-object/from16 v0, v48

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 815
    .local v48, root:Landroid/widget/LinearLayout;
    const/16 v58, 0x1

    move-object/from16 v0, v48

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 816
    const/16 v58, 0x11

    move-object/from16 v0, v48

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 817
    new-instance v58, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v59, -0x2

    move-object/from16 v0, v58

    move/from16 v1, v57

    move/from16 v2, v59

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v48

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 818
    move-object/from16 v0, v20

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 820
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v58

    new-instance v59, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v60, v0

    invoke-static/range {v60 .. v60}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v60

    invoke-direct/range {v59 .. v60}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v60, "popup_title.png"

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v27

    .line 821
    const/16 v58, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v58

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v41

    .line 824
    .local v41, popup_title:Landroid/graphics/drawable/Drawable;
    new-instance v54, Landroid/widget/LinearLayout$LayoutParams;

    add-int/lit8 v58, v57, -0x14

    move-object/from16 v0, v54

    move/from16 v1, v58

    move/from16 v2, v53

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 825
    .local v54, titleParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v58, 0xa

    const/16 v59, 0xa

    const/16 v60, 0xa

    move-object/from16 v0, v54

    move/from16 v1, v58

    move/from16 v2, v59

    move/from16 v3, v60

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 827
    new-instance v55, Landroid/widget/TextView;

    move-object/from16 v0, v55

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 828
    .local v55, titleText:Landroid/widget/TextView;
    move-object/from16 v0, v55

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 829
    move-object/from16 v0, v55

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 830
    const-string v58, "\uacb0\uc81c\uc548\ub0b4"

    move-object/from16 v0, v55

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 831
    const-string v58, "#ffffff"

    invoke-static/range {v58 .. v58}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v58

    move-object/from16 v0, v55

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 832
    const/16 v58, 0x11

    move-object/from16 v0, v55

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 833
    const/high16 v58, 0x4190

    move-object/from16 v0, v55

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 834
    move-object/from16 v0, v48

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 836
    new-instance v43, Landroid/widget/LinearLayout;

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 837
    .local v43, pwdLayout:Landroid/widget/LinearLayout;
    const/16 v58, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 839
    new-instance v44, Landroid/widget/LinearLayout$LayoutParams;

    add-int/lit8 v58, v57, -0x38

    move-object/from16 v0, v44

    move/from16 v1, v58

    move/from16 v2, v46

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 840
    .local v44, pwdLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v58, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v35

    move/from16 v2, v58

    move/from16 v3, v35

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 841
    invoke-virtual/range {v43 .. v44}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 842
    move-object/from16 v0, v48

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 844
    new-instance v42, Landroid/widget/TextView;

    move-object/from16 v0, v42

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 845
    .local v42, pwd:Landroid/widget/TextView;
    const-string v58, "\ube44\ubc00\ubc88\ud638"

    move-object/from16 v0, v42

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 847
    new-instance v47, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v47

    move/from16 v1, v45

    move/from16 v2, v46

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 848
    .local v47, pwdTextParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v58, 0xa

    move/from16 v0, v58

    move-object/from16 v1, v47

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 849
    move-object/from16 v0, v42

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 850
    const-string v58, "#0e1776"

    invoke-static/range {v58 .. v58}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v58

    move-object/from16 v0, v42

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 851
    const/high16 v58, 0x4188

    move-object/from16 v0, v42

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 852
    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 854
    const/16 v58, 0x2

    move/from16 v0, v58

    new-array v0, v0, [I

    move-object/from16 v58, v0

    const/16 v59, 0x0

    aput v49, v58, v59

    const/16 v59, 0x1

    move/from16 v0, v52

    neg-int v0, v0

    move/from16 v60, v0

    aput v60, v58, v59

    move-object/from16 v0, v17

    move-object/from16 v1, v58

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 855
    const/16 v58, 0x2

    move/from16 v0, v58

    new-array v0, v0, [I

    move-object/from16 v58, v0

    const/16 v59, 0x0

    move/from16 v0, v49

    neg-int v0, v0

    move/from16 v60, v0

    aput v60, v58, v59

    const/16 v59, 0x1

    move/from16 v0, v52

    neg-int v0, v0

    move/from16 v60, v0

    aput v60, v58, v59

    move-object/from16 v0, v17

    move-object/from16 v1, v58

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 856
    const/16 v58, 0x2

    move/from16 v0, v58

    new-array v0, v0, [I

    move-object/from16 v58, v0

    const/16 v59, 0x0

    aput v49, v58, v59

    const/16 v59, 0x1

    aput v51, v58, v59

    move-object/from16 v0, v17

    move-object/from16 v1, v58

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 857
    const/16 v58, 0x2

    move/from16 v0, v58

    new-array v0, v0, [I

    move-object/from16 v58, v0

    const/16 v59, 0x0

    move/from16 v0, v49

    neg-int v0, v0

    move/from16 v60, v0

    aput v60, v58, v59

    const/16 v59, 0x1

    aput v51, v58, v59

    move-object/from16 v0, v17

    move-object/from16 v1, v58

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 858
    const/16 v58, 0x2

    move/from16 v0, v58

    new-array v0, v0, [I

    move-object/from16 v58, v0

    const/16 v59, 0x0

    aput v49, v58, v59

    const/16 v59, 0x1

    aput v50, v58, v59

    move-object/from16 v0, v17

    move-object/from16 v1, v58

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 859
    const/16 v58, 0x2

    move/from16 v0, v58

    new-array v0, v0, [I

    move-object/from16 v58, v0

    const/16 v59, 0x0

    move/from16 v0, v49

    neg-int v0, v0

    move/from16 v60, v0

    aput v60, v58, v59

    const/16 v59, 0x1

    aput v50, v58, v59

    move-object/from16 v0, v17

    move-object/from16 v1, v58

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 860
    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [I

    move-object/from16 v58, v0

    const/16 v59, 0x0

    aput v49, v58, v59

    move-object/from16 v0, v17

    move-object/from16 v1, v58

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 861
    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [I

    move-object/from16 v58, v0

    const/16 v59, 0x0

    move/from16 v0, v49

    neg-int v0, v0

    move/from16 v60, v0

    aput v60, v58, v59

    move-object/from16 v0, v17

    move-object/from16 v1, v58

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 862
    const/16 v58, 0x0

    move/from16 v0, v58

    new-array v0, v0, [I

    move-object/from16 v58, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v58

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 865
    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v46

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 867
    .local v18, edParams:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v58, Landroid/widget/EditText;

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->ed:Landroid/widget/EditText;

    .line 868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->ed:Landroid/widget/EditText;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->ed:Landroid/widget/EditText;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->ed:Landroid/widget/EditText;

    move-object/from16 v58, v0

    const/16 v59, 0x11

    invoke-virtual/range {v58 .. v59}, Landroid/widget/EditText;->setGravity(I)V

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->ed:Landroid/widget/EditText;

    move-object/from16 v58, v0

    const/16 v59, 0x2

    invoke-virtual/range {v58 .. v59}, Landroid/widget/EditText;->setInputType(I)V

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->ed:Landroid/widget/EditText;

    move-object/from16 v58, v0

    invoke-virtual/range {v58 .. v58}, Landroid/widget/EditText;->setSingleLine()V

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->ed:Landroid/widget/EditText;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 874
    new-instance v39, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct/range {v39 .. v39}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    .line 875
    .local v39, passwdtm:Landroid/text/method/PasswordTransformationMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->ed:Landroid/widget/EditText;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->ed:Landroid/widget/EditText;

    move-object/from16 v58, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 879
    new-instance v38, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v58, 0x0

    const/high16 v59, 0x3f80

    move-object/from16 v0, v38

    move/from16 v1, v58

    move/from16 v2, v59

    invoke-direct {v0, v1, v9, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 880
    .local v38, okParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v58, 0xf

    const/16 v59, 0xa

    add-int/lit8 v60, v10, 0x2

    move-object/from16 v0, v38

    move/from16 v1, v58

    move/from16 v2, v59

    move/from16 v3, v60

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 883
    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v58, 0x0

    const/high16 v59, 0x3f80

    move-object/from16 v0, v16

    move/from16 v1, v58

    move/from16 v2, v59

    invoke-direct {v0, v1, v9, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 884
    .local v16, cancelParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v58, 0x0

    const/16 v59, 0xf

    add-int/lit8 v60, v10, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v58

    move/from16 v2, v59

    move/from16 v3, v60

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 886
    new-instance v6, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 887
    .local v6, bottom:Landroid/widget/LinearLayout;
    const/16 v58, 0x0

    move/from16 v0, v58

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 888
    invoke-virtual {v6, v13}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 890
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    add-int/lit8 v58, v57, -0x15

    move/from16 v0, v58

    invoke-direct {v8, v0, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 891
    .local v8, bottomParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v58, 0x1

    move/from16 v0, v58

    iput v0, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 892
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 893
    const-string v58, "#a9a9a9"

    invoke-static/range {v58 .. v58}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v58

    move/from16 v0, v58

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 894
    move-object/from16 v0, v48

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 896
    const/16 v58, 0x2

    move/from16 v0, v58

    new-array v0, v0, [I

    move-object/from16 v58, v0

    const/16 v59, 0x0

    aput v49, v58, v59

    const/16 v59, 0x1

    move/from16 v0, v52

    neg-int v0, v0

    move/from16 v60, v0

    aput v60, v58, v59

    move-object/from16 v0, v37

    move-object/from16 v1, v58

    invoke-virtual {v0, v1, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 897
    const/16 v58, 0x2

    move/from16 v0, v58

    new-array v0, v0, [I

    move-object/from16 v58, v0

    const/16 v59, 0x0

    move/from16 v0, v49

    neg-int v0, v0

    move/from16 v60, v0

    aput v60, v58, v59

    const/16 v59, 0x1

    move/from16 v0, v52

    neg-int v0, v0

    move/from16 v60, v0

    aput v60, v58, v59

    move-object/from16 v0, v37

    move-object/from16 v1, v58

    invoke-virtual {v0, v1, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 898
    const/16 v58, 0x2

    move/from16 v0, v58

    new-array v0, v0, [I

    move-object/from16 v58, v0

    const/16 v59, 0x0

    aput v49, v58, v59

    const/16 v59, 0x1

    aput v51, v58, v59

    move-object/from16 v0, v37

    move-object/from16 v1, v58

    invoke-virtual {v0, v1, v14}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 899
    const/16 v58, 0x2

    move/from16 v0, v58

    new-array v0, v0, [I

    move-object/from16 v58, v0

    const/16 v59, 0x0

    move/from16 v0, v49

    neg-int v0, v0

    move/from16 v60, v0

    aput v60, v58, v59

    const/16 v59, 0x1

    aput v51, v58, v59

    move-object/from16 v0, v37

    move-object/from16 v1, v58

    invoke-virtual {v0, v1, v14}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 900
    const/16 v58, 0x2

    move/from16 v0, v58

    new-array v0, v0, [I

    move-object/from16 v58, v0

    const/16 v59, 0x0

    aput v49, v58, v59

    const/16 v59, 0x1

    aput v50, v58, v59

    move-object/from16 v0, v37

    move-object/from16 v1, v58

    invoke-virtual {v0, v1, v12}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 901
    const/16 v58, 0x2

    move/from16 v0, v58

    new-array v0, v0, [I

    move-object/from16 v58, v0

    const/16 v59, 0x0

    move/from16 v0, v49

    neg-int v0, v0

    move/from16 v60, v0

    aput v60, v58, v59

    const/16 v59, 0x1

    aput v50, v58, v59

    move-object/from16 v0, v37

    move-object/from16 v1, v58

    invoke-virtual {v0, v1, v12}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 902
    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [I

    move-object/from16 v58, v0

    const/16 v59, 0x0

    aput v49, v58, v59

    move-object/from16 v0, v37

    move-object/from16 v1, v58

    invoke-virtual {v0, v1, v14}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 903
    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [I

    move-object/from16 v58, v0

    const/16 v59, 0x0

    move/from16 v0, v49

    neg-int v0, v0

    move/from16 v60, v0

    aput v60, v58, v59

    move-object/from16 v0, v37

    move-object/from16 v1, v58

    invoke-virtual {v0, v1, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 904
    const/16 v58, 0x0

    move/from16 v0, v58

    new-array v0, v0, [I

    move-object/from16 v58, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v58

    invoke-virtual {v0, v1, v14}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 905
    const/16 v58, 0x2

    move/from16 v0, v58

    new-array v0, v0, [I

    move-object/from16 v58, v0

    const/16 v59, 0x0

    aput v49, v58, v59

    const/16 v59, 0x1

    move/from16 v0, v52

    neg-int v0, v0

    move/from16 v60, v0

    aput v60, v58, v59

    move-object/from16 v0, v58

    invoke-virtual {v15, v0, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 906
    const/16 v58, 0x2

    move/from16 v0, v58

    new-array v0, v0, [I

    move-object/from16 v58, v0

    const/16 v59, 0x0

    move/from16 v0, v49

    neg-int v0, v0

    move/from16 v60, v0

    aput v60, v58, v59

    const/16 v59, 0x1

    move/from16 v0, v52

    neg-int v0, v0

    move/from16 v60, v0

    aput v60, v58, v59

    move-object/from16 v0, v58

    invoke-virtual {v15, v0, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 907
    const/16 v58, 0x2

    move/from16 v0, v58

    new-array v0, v0, [I

    move-object/from16 v58, v0

    const/16 v59, 0x0

    aput v49, v58, v59

    const/16 v59, 0x1

    aput v51, v58, v59

    move-object/from16 v0, v58

    invoke-virtual {v15, v0, v14}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 908
    const/16 v58, 0x2

    move/from16 v0, v58

    new-array v0, v0, [I

    move-object/from16 v58, v0

    const/16 v59, 0x0

    move/from16 v0, v49

    neg-int v0, v0

    move/from16 v60, v0

    aput v60, v58, v59

    const/16 v59, 0x1

    aput v51, v58, v59

    move-object/from16 v0, v58

    invoke-virtual {v15, v0, v14}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 909
    const/16 v58, 0x2

    move/from16 v0, v58

    new-array v0, v0, [I

    move-object/from16 v58, v0

    const/16 v59, 0x0

    aput v49, v58, v59

    const/16 v59, 0x1

    aput v50, v58, v59

    move-object/from16 v0, v58

    invoke-virtual {v15, v0, v12}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 910
    const/16 v58, 0x2

    move/from16 v0, v58

    new-array v0, v0, [I

    move-object/from16 v58, v0

    const/16 v59, 0x0

    move/from16 v0, v49

    neg-int v0, v0

    move/from16 v60, v0

    aput v60, v58, v59

    const/16 v59, 0x1

    aput v50, v58, v59

    move-object/from16 v0, v58

    invoke-virtual {v15, v0, v12}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 911
    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [I

    move-object/from16 v58, v0

    const/16 v59, 0x0

    aput v49, v58, v59

    move-object/from16 v0, v58

    invoke-virtual {v15, v0, v14}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 912
    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [I

    move-object/from16 v58, v0

    const/16 v59, 0x0

    move/from16 v0, v49

    neg-int v0, v0

    move/from16 v60, v0

    aput v60, v58, v59

    move-object/from16 v0, v58

    invoke-virtual {v15, v0, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 913
    const/16 v58, 0x0

    move/from16 v0, v58

    new-array v0, v0, [I

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    invoke-virtual {v15, v0, v14}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 916
    new-instance v58, Landroid/widget/Button;

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->ok:Landroid/widget/Button;

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->ok:Landroid/widget/Button;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->ok:Landroid/widget/Button;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->ok:Landroid/widget/Button;

    move-object/from16 v58, v0

    const/16 v59, 0x11

    invoke-virtual/range {v58 .. v59}, Landroid/widget/Button;->setGravity(I)V

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->ok:Landroid/widget/Button;

    move-object/from16 v58, v0

    const v59, 0x4195999a

    invoke-virtual/range {v58 .. v59}, Landroid/widget/Button;->setTextSize(F)V

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->ok:Landroid/widget/Button;

    move-object/from16 v58, v0

    new-instance v59, Landroid/content/res/ColorStateList;

    .line 922
    const/16 v60, 0x2

    move/from16 v0, v60

    new-array v0, v0, [[I

    move-object/from16 v60, v0

    const/16 v61, 0x0

    .line 923
    const/16 v62, 0x1

    move/from16 v0, v62

    new-array v0, v0, [I

    move-object/from16 v62, v0

    const/16 v63, 0x0

    aput v51, v62, v63

    aput-object v62, v60, v61

    const/16 v61, 0x1

    .line 924
    const/16 v62, 0x0

    move/from16 v0, v62

    new-array v0, v0, [I

    move-object/from16 v62, v0

    aput-object v62, v60, v61

    .line 925
    const/16 v61, 0x2

    move/from16 v0, v61

    new-array v0, v0, [I

    move-object/from16 v61, v0

    const/16 v62, 0x0

    .line 926
    const-string v63, "#ffffff"

    invoke-static/range {v63 .. v63}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v63

    aput v63, v61, v62

    const/16 v62, 0x1

    .line 927
    const-string v63, "#575e79"

    invoke-static/range {v63 .. v63}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v63

    aput v63, v61, v62

    invoke-direct/range {v59 .. v61}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 921
    invoke-virtual/range {v58 .. v59}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->ok:Landroid/widget/Button;

    move-object/from16 v58, v0

    const-string v59, "\ud655\uc778"

    invoke-virtual/range {v58 .. v59}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->ok:Landroid/widget/Button;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 933
    new-instance v58, Landroid/widget/Button;

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->cancel:Landroid/widget/Button;

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->cancel:Landroid/widget/Button;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    invoke-virtual {v0, v15}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->cancel:Landroid/widget/Button;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->cancel:Landroid/widget/Button;

    move-object/from16 v58, v0

    const/16 v59, 0x11

    invoke-virtual/range {v58 .. v59}, Landroid/widget/Button;->setGravity(I)V

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->cancel:Landroid/widget/Button;

    move-object/from16 v58, v0

    const v59, 0x4195999a

    invoke-virtual/range {v58 .. v59}, Landroid/widget/Button;->setTextSize(F)V

    .line 938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->cancel:Landroid/widget/Button;

    move-object/from16 v58, v0

    new-instance v59, Landroid/content/res/ColorStateList;

    .line 939
    const/16 v60, 0x2

    move/from16 v0, v60

    new-array v0, v0, [[I

    move-object/from16 v60, v0

    const/16 v61, 0x0

    .line 940
    const/16 v62, 0x1

    move/from16 v0, v62

    new-array v0, v0, [I

    move-object/from16 v62, v0

    const/16 v63, 0x0

    aput v51, v62, v63

    aput-object v62, v60, v61

    const/16 v61, 0x1

    .line 941
    const/16 v62, 0x0

    move/from16 v0, v62

    new-array v0, v0, [I

    move-object/from16 v62, v0

    aput-object v62, v60, v61

    .line 942
    const/16 v61, 0x2

    move/from16 v0, v61

    new-array v0, v0, [I

    move-object/from16 v61, v0

    const/16 v62, 0x0

    .line 943
    const-string v63, "#ffffff"

    invoke-static/range {v63 .. v63}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v63

    aput v63, v61, v62

    const/16 v62, 0x1

    .line 944
    const-string v63, "#575e79"

    invoke-static/range {v63 .. v63}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v63

    aput v63, v61, v62

    invoke-direct/range {v59 .. v61}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 938
    invoke-virtual/range {v58 .. v59}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->cancel:Landroid/widget/Button;

    move-object/from16 v58, v0

    const-string v59, "\ucde8\uc18c"

    invoke-virtual/range {v58 .. v59}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->cancel:Landroid/widget/Button;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->ok:Landroid/widget/Button;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->cancel:Landroid/widget/Button;

    move-object/from16 v58, v0

    move-object/from16 v0, v58

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 953
    new-instance v32, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mContext:Landroid/content/Context;

    move-object/from16 v58, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 955
    .local v32, logoView:Landroid/widget/LinearLayout;
    new-instance v33, Landroid/widget/LinearLayout$LayoutParams;

    add-int/lit8 v58, v57, -0x14

    const/16 v59, 0x24

    move-object/from16 v0, v33

    move/from16 v1, v58

    move/from16 v2, v59

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 957
    .local v33, logoViewParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v32 .. v33}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 958
    const/16 v58, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 959
    move-object/from16 v0, v48

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 961
    new-instance v28, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mContext:Landroid/content/Context;

    move-object/from16 v58, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 962
    .local v28, leftBlank:Landroid/widget/LinearLayout;
    new-instance v58, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v59, 0x0

    const/16 v60, 0x24

    const v61, 0x3e99999a

    invoke-direct/range {v58 .. v61}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v28

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 963
    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 965
    new-instance v31, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mContext:Landroid/content/Context;

    move-object/from16 v58, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 966
    .local v31, logo:Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v58

    new-instance v59, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v60, v0

    invoke-static/range {v60 .. v60}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v60

    invoke-direct/range {v59 .. v60}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v60, "lguplus_logo.png"

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-virtual/range {v58 .. v59}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v27

    .line 967
    const/16 v58, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v58

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    .line 968
    .local v29, lguplusLogo:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 969
    new-instance v58, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v59, 0x0

    const/16 v60, 0x1a

    const v61, 0x3e99999a

    invoke-direct/range {v58 .. v61}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v31

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 970
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 972
    new-instance v56, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mContext:Landroid/content/Context;

    move-object/from16 v58, v0

    move-object/from16 v0, v56

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 973
    .local v56, version:Landroid/widget/TextView;
    new-instance v58, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v59, 0x0

    const/16 v60, 0x24

    const v61, 0x3e99999a

    invoke-direct/range {v58 .. v61}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v56

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 974
    sget-object v58, Lcom/feelingk/lguiab/common/Defines;->SDK_VERSION_INFO:Ljava/lang/String;

    move-object/from16 v0, v56

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 975
    const/16 v58, 0x0

    const/16 v59, 0x3

    const/16 v60, 0x0

    const/16 v61, 0x0

    move-object/from16 v0, v56

    move/from16 v1, v58

    move/from16 v2, v59

    move/from16 v3, v60

    move/from16 v4, v61

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 976
    const/16 v58, 0x5

    move-object/from16 v0, v56

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 977
    const v58, 0x4134cccd

    move-object/from16 v0, v56

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 978
    const-string v58, "#b8b8b8"

    invoke-static/range {v58 .. v58}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v58

    move-object/from16 v0, v56

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 979
    move-object/from16 v0, v32

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 981
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->setContentView(Landroid/view/View;)V

    .line 982
    return-void
.end method

.method public static dismissProgressDialog()V
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 106
    :cond_0
    const-string v0, "None"

    invoke-static {v0}, Lcom/feelingk/lguiab/LguIAPLib;->setDialogType(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public static showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "title"
    .parameter "message"

    .prologue
    const/4 v2, -0x2

    .line 85
    const-string v1, "ProgressDlg"

    invoke-static {v1}, Lcom/feelingk/lguiab/LguIAPLib;->setDialogType(Ljava/lang/String;)V

    .line 87
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 88
    .local v0, progressDlg:Landroid/widget/LinearLayout;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    sget-object v1, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 91
    sget-object v1, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 94
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    sput-object v1, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mProgressDialog:Landroid/app/Dialog;

    .line 95
    sget-object v1, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 96
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1053
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14
    .parameter "v"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 985
    iget-object v2, p0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->okBtn:Landroid/widget/Button;

    if-ne p1, v2, :cond_1

    .line 986
    invoke-virtual {p0}, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->dismiss()V

    .line 987
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->getContextOnClinetListener()Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;->lguIABonDlgClick()V

    .line 988
    const-string v2, "None"

    invoke-static {v2}, Lcom/feelingk/lguiab/LguIAPLib;->setDialogType(Ljava/lang/String;)V

    .line 1046
    :cond_0
    :goto_0
    return-void

    .line 990
    :cond_1
    iget-object v2, p0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->posiBtnTitle:Landroid/widget/Button;

    if-ne p1, v2, :cond_3

    .line 991
    invoke-virtual {p0}, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->dismiss()V

    .line 993
    iget-boolean v2, p0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mFinalVerDown:Z

    if-eqz v2, :cond_2

    .line 994
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->finalVerDown()V

    .line 995
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->getContextOnClinetListener()Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;->lguIABonDlgClick()V

    .line 996
    const-string v2, "None"

    invoke-static {v2}, Lcom/feelingk/lguiab/LguIAPLib;->setDialogType(Ljava/lang/String;)V

    goto :goto_0

    .line 1000
    :cond_2
    iget-boolean v2, p0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mFinalVer:Z

    invoke-static {v2}, Lcom/feelingk/lguiab/LguIAPLib;->purchaseProcess(Z)V

    goto :goto_0

    .line 1003
    :cond_3
    iget-object v2, p0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->negaBtnTitle:Landroid/widget/Button;

    if-ne p1, v2, :cond_6

    .line 1004
    iget-boolean v2, p0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mFinalVerDown:Z

    if-eqz v2, :cond_4

    .line 1005
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->getContextOnClinetListener()Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;->lguIABonDlgClick()V

    .line 1008
    :cond_4
    iget-boolean v2, p0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mFinalVerDown:Z

    if-nez v2, :cond_5

    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->getContextOnClinetListener()Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;->lguIABonDlgPurchaseCancel()V

    .line 1009
    :cond_5
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->DissmissPurchaseDlg()V

    .line 1010
    invoke-virtual {p0}, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->dismiss()V

    .line 1011
    const-string v2, "None"

    invoke-static {v2}, Lcom/feelingk/lguiab/LguIAPLib;->setDialogType(Ljava/lang/String;)V

    goto :goto_0

    .line 1013
    :cond_6
    iget-object v2, p0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->ok:Landroid/widget/Button;

    if-ne p1, v2, :cond_9

    .line 1015
    iget-object v2, p0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->ed:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mPwd:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1016
    invoke-virtual {p0}, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->dismiss()V

    .line 1017
    const-string v2, "InappLockState"

    invoke-static {v2}, Lcom/feelingk/lguiab/LguIAPLib;->setDialogType(Ljava/lang/String;)V

    .line 1019
    iget-boolean v2, p0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mFinalVer:Z

    if-eqz v2, :cond_7

    .line 1020
    new-instance v0, Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;

    iget-object v1, p0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mContext:Landroid/content/Context;

    .line 1021
    sget-object v2, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mAppId:Ljava/lang/String;

    sget-object v3, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mPurchasePid:Ljava/lang/String;

    sget-object v4, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mBpIp:Ljava/lang/String;

    sget v5, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mBpPort:I

    sget-object v6, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mBpUri:Ljava/lang/String;

    .line 1022
    sget-object v7, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mBpData:Ljava/lang/String;

    iget-object v8, p0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mClientListenerKey:Ljava/lang/String;

    .line 1020
    invoke-direct/range {v0 .. v8}, Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    .local v0, finalVerpurchaseClick:Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;
    new-array v2, v13, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v12

    invoke-virtual {v0, v2}, Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 1026
    .end local v0           #finalVerpurchaseClick:Lcom/feelingk/lguiab/manager/task/ReqFinalVerPurchaseJob;
    :cond_7
    new-instance v1, Lcom/feelingk/lguiab/manager/task/ReqPurchaseJob;

    iget-object v2, p0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mContext:Landroid/content/Context;

    .line 1027
    sget-object v3, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mAppId:Ljava/lang/String;

    sget-object v4, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mPurchasePid:Ljava/lang/String;

    sget-object v5, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mBpIp:Ljava/lang/String;

    sget v6, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mBpPort:I

    sget-object v7, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mBpUri:Ljava/lang/String;

    .line 1028
    sget-object v8, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mBpData:Ljava/lang/String;

    iget-object v9, p0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mClientListenerKey:Ljava/lang/String;

    .line 1026
    invoke-direct/range {v1 .. v9}, Lcom/feelingk/lguiab/manager/task/ReqPurchaseJob;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    .local v1, purchaseClick:Lcom/feelingk/lguiab/manager/task/ReqPurchaseJob;
    new-array v2, v13, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v12

    invoke-virtual {v1, v2}, Lcom/feelingk/lguiab/manager/task/ReqPurchaseJob;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 1033
    .end local v1           #purchaseClick:Lcom/feelingk/lguiab/manager/task/ReqPurchaseJob;
    :cond_8
    const-string v10, "\ube44\ubc00\ubc88\ud638\ub97c \uc785\ub825\ud558\uc9c0 \uc54a\uc558\uac70\ub098, \ud615\uc2dd\uc774 \uc62c\ubc14\ub974\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4. \ub2e4\uc2dc \uc785\ub825\ud574 \uc8fc\uc138\uc694."

    .line 1034
    .local v10, msg:Ljava/lang/String;
    iget-object v2, p0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->mContext:Landroid/content/Context;

    invoke-static {v2, v10, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v11

    .line 1035
    .local v11, toast:Landroid/widget/Toast;
    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1039
    .end local v10           #msg:Ljava/lang/String;
    .end local v11           #toast:Landroid/widget/Toast;
    :cond_9
    iget-object v2, p0, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->cancel:Landroid/widget/Button;

    if-ne p1, v2, :cond_0

    .line 1041
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->getContextOnClinetListener()Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;->lguIABonDlgPurchaseCancel()V

    .line 1042
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->DissmissPurchaseDlg()V

    .line 1043
    invoke-virtual {p0}, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->dismiss()V

    .line 1044
    const-string v2, "None"

    invoke-static {v2}, Lcom/feelingk/lguiab/LguIAPLib;->setDialogType(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1057
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onKeyDown: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->getDialogType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    .line 1058
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onKeyDown: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->getFlowType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    .line 1059
    const/16 v0, 0x54

    if-ne p1, v0, :cond_2

    .line 1060
    const-string v0, "onKeyDown: KEYCODE_SEARCH"

    invoke-static {v0}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    .line 1061
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1062
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->getFlowType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PopupDlgTwoBtn_Purchase_confirm"

    if-ne v0, v1, :cond_1

    .line 1063
    const-string v0, "None"

    invoke-static {v0}, Lcom/feelingk/lguiab/LguIAPLib;->setFlowType(Ljava/lang/String;)V

    .line 1064
    const-string v0, "None"

    invoke-static {v0}, Lcom/feelingk/lguiab/LguIAPLib;->setDialogType(Ljava/lang/String;)V

    .line 1065
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->getContextOnClinetListener()Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;->lguIABonDlgPurchaseCancel()V

    .line 1066
    invoke-virtual {p0}, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->dismiss()V

    .line 1091
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1069
    :cond_1
    const-string v0, "None"

    invoke-static {v0}, Lcom/feelingk/lguiab/LguIAPLib;->setFlowType(Ljava/lang/String;)V

    .line 1070
    const-string v0, "None"

    invoke-static {v0}, Lcom/feelingk/lguiab/LguIAPLib;->setDialogType(Ljava/lang/String;)V

    .line 1071
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->getContextOnClinetListener()Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;->lguIABonDlgClick()V

    .line 1072
    invoke-virtual {p0}, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->dismiss()V

    goto :goto_0

    .line 1075
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1076
    const-string v0, "onKeyDown: KEYCODE_BACK"

    invoke-static {v0}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    .line 1077
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1078
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->getFlowType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PopupDlgTwoBtn_Purchase_confirm"

    if-ne v0, v1, :cond_3

    .line 1079
    const-string v0, "None"

    invoke-static {v0}, Lcom/feelingk/lguiab/LguIAPLib;->setFlowType(Ljava/lang/String;)V

    .line 1080
    const-string v0, "None"

    invoke-static {v0}, Lcom/feelingk/lguiab/LguIAPLib;->setDialogType(Ljava/lang/String;)V

    .line 1081
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->getContextOnClinetListener()Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;->lguIABonDlgPurchaseCancel()V

    .line 1082
    invoke-virtual {p0}, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->dismiss()V

    goto :goto_0

    .line 1085
    :cond_3
    const-string v0, "None"

    invoke-static {v0}, Lcom/feelingk/lguiab/LguIAPLib;->setFlowType(Ljava/lang/String;)V

    .line 1086
    const-string v0, "None"

    invoke-static {v0}, Lcom/feelingk/lguiab/LguIAPLib;->setDialogType(Ljava/lang/String;)V

    .line 1087
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->getContextOnClinetListener()Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;->lguIABonDlgClick()V

    .line 1088
    invoke-virtual {p0}, Lcom/feelingk/lguiab/manager/gui/PopupDialog;->dismiss()V

    goto :goto_0
.end method
