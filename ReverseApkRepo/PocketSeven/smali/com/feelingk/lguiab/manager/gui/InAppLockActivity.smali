.class public Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;
.super Landroid/app/Activity;
.source "InAppLockActivity.java"


# instance fields
.field private RES_VERT_FILE_PATH:Ljava/lang/String;

.field cancelBtn:Landroid/view/View$OnClickListener;

.field private ed:Landroid/widget/EditText;

.field private intent:Landroid/content/Intent;

.field private mRecryptPwd:Ljava/lang/String;

.field okBtn:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    const-string v0, "/lguIABres/"

    iput-object v0, p0, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;->mRecryptPwd:Ljava/lang/String;

    .line 219
    new-instance v0, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity$1;

    invoke-direct {v0, p0}, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity$1;-><init>(Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;)V

    iput-object v0, p0, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;->okBtn:Landroid/view/View$OnClickListener;

    .line 237
    new-instance v0, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity$2;

    invoke-direct {v0, p0}, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity$2;-><init>(Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;)V

    iput-object v0, p0, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;->cancelBtn:Landroid/view/View$OnClickListener;

    .line 27
    return-void
.end method

.method static synthetic access$0(Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;->ed:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;->mRecryptPwd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;)Landroid/content/Intent;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;->intent:Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 251
    const-string v0, "None"

    invoke-static {v0}, Lcom/feelingk/lguiab/LguIAPLib;->setDialogType(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;->finish()V

    .line 253
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->getContextOnClinetListener()Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;->lguIABonDlgPurchaseCancel()V

    .line 254
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 255
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 42
    .parameter "savedInstanceState"

    .prologue
    .line 35
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const-string v37, "InAppLockActivity \uc9c4\uc785"

    invoke-static/range {v37 .. v37}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;->getIntent()Landroid/content/Intent;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;->intent:Landroid/content/Intent;

    .line 39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;->intent:Landroid/content/Intent;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v37

    const-string v38, "password"

    invoke-virtual/range {v37 .. v38}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;->mRecryptPwd:Ljava/lang/String;

    .line 41
    new-instance v32, Landroid/widget/LinearLayout;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    .local v32, root:Landroid/widget/LinearLayout;
    const/16 v37, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 43
    const-string v37, "#e5e5e5"

    invoke-static/range {v37 .. v37}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v37

    move-object/from16 v0, v32

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 46
    new-instance v5, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47
    .local v5, body:Landroid/widget/LinearLayout;
    const/16 v37, 0x1

    move/from16 v0, v37

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 49
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v37, -0x1

    const/16 v38, 0x0

    const/high16 v39, 0x3f80

    move/from16 v0, v37

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-direct {v6, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 50
    .local v6, bodyParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 53
    new-instance v29, Landroid/widget/LinearLayout;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 55
    .local v29, pwdLayout:Landroid/widget/LinearLayout;
    new-instance v30, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v37, -0x1

    const/16 v38, -0x2

    move-object/from16 v0, v30

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 56
    .local v30, pwdLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v29 .. v30}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    const/16 v37, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 58
    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 60
    new-instance v28, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 62
    .local v28, pwd:Landroid/widget/TextView;
    new-instance v31, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v37, 0x0

    const/16 v38, -0x2

    const/high16 v39, 0x3f80

    move-object/from16 v0, v31

    move/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 63
    .local v31, pwdParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v37, 0x16

    const/16 v38, 0xf

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    move/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 64
    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    const/16 v37, 0x10

    move-object/from16 v0, v28

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 67
    const-string v37, "\ube44\ubc00\ubc88\ud638"

    move-object/from16 v0, v28

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    const v37, 0x418a6666

    move-object/from16 v0, v28

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 69
    const-string v37, "#0e1776"

    invoke-static/range {v37 .. v37}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v37

    move-object/from16 v0, v28

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 72
    new-instance v15, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v15}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 74
    .local v15, edDrawables:Landroid/graphics/drawable/StateListDrawable;
    const v33, 0x10100a0

    .line 75
    .local v33, stateChecked:I
    const v34, 0x101009c

    .line 76
    .local v34, stateFocused:I
    const v35, 0x10100a7

    .line 77
    .local v35, statePressed:I
    const v36, 0x101009d

    .line 79
    .local v36, stateWindowFocused:I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v37

    new-instance v38, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v39, "inputbox_white.9.png"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v21

    .line 80
    .local v21, is:Ljava/io/InputStream;
    const/16 v37, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 81
    .local v20, inputbox_white:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v37

    new-instance v38, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v39, "inputbox_press.9.png"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v21

    .line 82
    const/16 v37, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 83
    .local v19, inputbox_press:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v37

    new-instance v38, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v39, "inputbox_active.9.png"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v21

    .line 84
    const/16 v37, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 86
    .local v18, inputbox_active:Landroid/graphics/drawable/Drawable;
    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aput v33, v37, v38

    const/16 v38, 0x1

    move/from16 v0, v36

    neg-int v0, v0

    move/from16 v39, v0

    aput v39, v37, v38

    move-object/from16 v0, v37

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 87
    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v37, v0

    const/16 v38, 0x0

    move/from16 v0, v33

    neg-int v0, v0

    move/from16 v39, v0

    aput v39, v37, v38

    const/16 v38, 0x1

    move/from16 v0, v36

    neg-int v0, v0

    move/from16 v39, v0

    aput v39, v37, v38

    move-object/from16 v0, v37

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 88
    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aput v33, v37, v38

    const/16 v38, 0x1

    aput v35, v37, v38

    move-object/from16 v0, v37

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 89
    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v37, v0

    const/16 v38, 0x0

    move/from16 v0, v33

    neg-int v0, v0

    move/from16 v39, v0

    aput v39, v37, v38

    const/16 v38, 0x1

    aput v35, v37, v38

    move-object/from16 v0, v37

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 90
    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aput v33, v37, v38

    const/16 v38, 0x1

    aput v34, v37, v38

    move-object/from16 v0, v37

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 91
    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v37, v0

    const/16 v38, 0x0

    move/from16 v0, v33

    neg-int v0, v0

    move/from16 v39, v0

    aput v39, v37, v38

    const/16 v38, 0x1

    aput v34, v37, v38

    move-object/from16 v0, v37

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 92
    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aput v33, v37, v38

    move-object/from16 v0, v37

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 93
    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v37, v0

    const/16 v38, 0x0

    move/from16 v0, v33

    neg-int v0, v0

    move/from16 v39, v0

    aput v39, v37, v38

    move-object/from16 v0, v37

    move-object/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 94
    const/16 v37, 0x0

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 97
    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v37, 0x0

    const/16 v38, 0x40

    const/high16 v39, 0x3f80

    move-object/from16 v0, v16

    move/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 98
    .local v16, edParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v37, 0x0

    const/16 v38, 0xc

    const/16 v39, 0xe

    const/16 v40, 0xc

    move-object/from16 v0, v16

    move/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    move/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 100
    const/16 v23, 0x4

    .line 101
    .local v23, maxLength:I
    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v17, v0

    .line 102
    .local v17, filterArray:[Landroid/text/InputFilter;
    const/16 v37, 0x0

    new-instance v38, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, v38

    move/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v38, v17, v37

    .line 104
    new-instance v37, Landroid/widget/EditText;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;->ed:Landroid/widget/EditText;

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;->ed:Landroid/widget/EditText;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v15}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;->ed:Landroid/widget/EditText;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;->ed:Landroid/widget/EditText;

    move-object/from16 v37, v0

    const/16 v38, 0x11

    invoke-virtual/range {v37 .. v38}, Landroid/widget/EditText;->setGravity(I)V

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;->ed:Landroid/widget/EditText;

    move-object/from16 v37, v0

    const/16 v38, 0x2

    invoke-virtual/range {v37 .. v38}, Landroid/widget/EditText;->setInputType(I)V

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;->ed:Landroid/widget/EditText;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/widget/EditText;->setSingleLine()V

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;->ed:Landroid/widget/EditText;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 111
    new-instance v27, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct/range {v27 .. v27}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    .line 112
    .local v27, passwdtm:Landroid/text/method/PasswordTransformationMethod;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;->ed:Landroid/widget/EditText;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;->ed:Landroid/widget/EditText;

    move-object/from16 v37, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 115
    new-instance v22, Landroid/widget/LinearLayout;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 116
    .local v22, line:Landroid/widget/LinearLayout;
    new-instance v37, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v38, -0x1

    const/16 v39, 0x1

    invoke-direct/range {v37 .. v39}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v22

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    const-string v37, "#a9a9a9"

    invoke-static/range {v37 .. v37}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v37

    move-object/from16 v0, v22

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 118
    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 121
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v37

    new-instance v38, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v39, "btn_detail_menu_bg.9.png"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v21

    .line 122
    const/16 v37, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 124
    .local v10, btn_detail_menu_bg:Landroid/graphics/drawable/Drawable;
    new-instance v7, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 125
    .local v7, bottom:Landroid/widget/LinearLayout;
    const/16 v37, 0x0

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 126
    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    new-instance v37, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v38, -0x1

    .line 128
    const/16 v39, -0x2

    invoke-direct/range {v37 .. v39}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 127
    move-object/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    const-string v37, "#a9a9a9"

    invoke-static/range {v37 .. v37}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v37

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 130
    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 132
    new-instance v25, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 133
    .local v25, okDrawables:Landroid/graphics/drawable/StateListDrawable;
    new-instance v13, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v13}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 135
    .local v13, cancelDrawables:Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v37

    new-instance v38, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v39, "btn_detail_menu.9.png"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v21

    .line 136
    const/16 v37, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 137
    .local v8, btn_detail_menu:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v37

    new-instance v38, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v39, "btn_detail_menu_pressed.9.png"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v21

    .line 138
    const/16 v37, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 139
    .local v11, btn_detail_menu_pressed:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v37

    new-instance v38, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;->RES_VERT_FILE_PATH:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    invoke-direct/range {v38 .. v39}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v39, "btn_detail_menu_active.9.png"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v21

    .line 140
    const/16 v37, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v37

    invoke-static {v0, v1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 142
    .local v9, btn_detail_menu_active:Landroid/graphics/drawable/Drawable;
    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aput v33, v37, v38

    const/16 v38, 0x1

    move/from16 v0, v36

    neg-int v0, v0

    move/from16 v39, v0

    aput v39, v37, v38

    move-object/from16 v0, v25

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 143
    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v37, v0

    const/16 v38, 0x0

    move/from16 v0, v33

    neg-int v0, v0

    move/from16 v39, v0

    aput v39, v37, v38

    const/16 v38, 0x1

    move/from16 v0, v36

    neg-int v0, v0

    move/from16 v39, v0

    aput v39, v37, v38

    move-object/from16 v0, v25

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 144
    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aput v33, v37, v38

    const/16 v38, 0x1

    aput v35, v37, v38

    move-object/from16 v0, v25

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 145
    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v37, v0

    const/16 v38, 0x0

    move/from16 v0, v33

    neg-int v0, v0

    move/from16 v39, v0

    aput v39, v37, v38

    const/16 v38, 0x1

    aput v35, v37, v38

    move-object/from16 v0, v25

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 146
    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aput v33, v37, v38

    const/16 v38, 0x1

    aput v34, v37, v38

    move-object/from16 v0, v25

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v9}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 147
    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v37, v0

    const/16 v38, 0x0

    move/from16 v0, v33

    neg-int v0, v0

    move/from16 v39, v0

    aput v39, v37, v38

    const/16 v38, 0x1

    aput v34, v37, v38

    move-object/from16 v0, v25

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v9}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 148
    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aput v33, v37, v38

    move-object/from16 v0, v25

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 149
    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v37, v0

    const/16 v38, 0x0

    move/from16 v0, v33

    neg-int v0, v0

    move/from16 v39, v0

    aput v39, v37, v38

    move-object/from16 v0, v25

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 150
    const/16 v37, 0x0

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v37, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 151
    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aput v33, v37, v38

    const/16 v38, 0x1

    move/from16 v0, v36

    neg-int v0, v0

    move/from16 v39, v0

    aput v39, v37, v38

    move-object/from16 v0, v37

    invoke-virtual {v13, v0, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 152
    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v37, v0

    const/16 v38, 0x0

    move/from16 v0, v33

    neg-int v0, v0

    move/from16 v39, v0

    aput v39, v37, v38

    const/16 v38, 0x1

    move/from16 v0, v36

    neg-int v0, v0

    move/from16 v39, v0

    aput v39, v37, v38

    move-object/from16 v0, v37

    invoke-virtual {v13, v0, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 153
    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aput v33, v37, v38

    const/16 v38, 0x1

    aput v35, v37, v38

    move-object/from16 v0, v37

    invoke-virtual {v13, v0, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 154
    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v37, v0

    const/16 v38, 0x0

    move/from16 v0, v33

    neg-int v0, v0

    move/from16 v39, v0

    aput v39, v37, v38

    const/16 v38, 0x1

    aput v35, v37, v38

    move-object/from16 v0, v37

    invoke-virtual {v13, v0, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 155
    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aput v33, v37, v38

    const/16 v38, 0x1

    aput v34, v37, v38

    move-object/from16 v0, v37

    invoke-virtual {v13, v0, v9}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 156
    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v37, v0

    const/16 v38, 0x0

    move/from16 v0, v33

    neg-int v0, v0

    move/from16 v39, v0

    aput v39, v37, v38

    const/16 v38, 0x1

    aput v34, v37, v38

    move-object/from16 v0, v37

    invoke-virtual {v13, v0, v9}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 157
    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aput v33, v37, v38

    move-object/from16 v0, v37

    invoke-virtual {v13, v0, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 158
    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v37, v0

    const/16 v38, 0x0

    move/from16 v0, v33

    neg-int v0, v0

    move/from16 v39, v0

    aput v39, v37, v38

    move-object/from16 v0, v37

    invoke-virtual {v13, v0, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 159
    const/16 v37, 0x0

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v13, v0, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 164
    new-instance v26, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v37, 0x0

    const/16 v38, 0x3c

    const/high16 v39, 0x3f80

    move-object/from16 v0, v26

    move/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 165
    .local v26, okParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v37, 0x8

    const/16 v38, 0x9

    const/16 v39, 0x0

    const/16 v40, 0x8

    move-object/from16 v0, v26

    move/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    move/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 168
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v37, 0x0

    const/16 v38, 0x3c

    const/high16 v39, 0x3f80

    move/from16 v0, v37

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-direct {v14, v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 169
    .local v14, cancelParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v37, 0x5

    const/16 v38, 0x9

    const/16 v39, 0x8

    const/16 v40, 0x8

    move/from16 v0, v37

    move/from16 v1, v38

    move/from16 v2, v39

    move/from16 v3, v40

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 171
    new-instance v24, Landroid/widget/Button;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 172
    .local v24, ok:Landroid/widget/Button;
    invoke-virtual/range {v24 .. v25}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 173
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    const/16 v37, 0x11

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 175
    const v37, 0x4195999a

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 176
    new-instance v37, Landroid/content/res/ColorStateList;

    .line 177
    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [[I

    move-object/from16 v38, v0

    const/16 v39, 0x0

    .line 178
    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [I

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput v35, v40, v41

    aput-object v40, v38, v39

    const/16 v39, 0x1

    .line 179
    const/16 v40, 0x0

    move/from16 v0, v40

    new-array v0, v0, [I

    move-object/from16 v40, v0

    aput-object v40, v38, v39

    .line 180
    const/16 v39, 0x2

    move/from16 v0, v39

    new-array v0, v0, [I

    move-object/from16 v39, v0

    const/16 v40, 0x0

    .line 181
    const-string v41, "#ffffff"

    invoke-static/range {v41 .. v41}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v41

    aput v41, v39, v40

    const/16 v40, 0x1

    .line 182
    const-string v41, "#575e79"

    invoke-static/range {v41 .. v41}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v41

    aput v41, v39, v40

    invoke-direct/range {v37 .. v39}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 176
    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 193
    const-string v37, "\ud655\uc778"

    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 194
    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 196
    new-instance v12, Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 197
    .local v12, cancel:Landroid/widget/Button;
    invoke-virtual {v12, v13}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    invoke-virtual {v12, v14}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    const/16 v37, 0x11

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setGravity(I)V

    .line 200
    const v37, 0x4195999a

    move/from16 v0, v37

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setTextSize(F)V

    .line 201
    new-instance v37, Landroid/content/res/ColorStateList;

    .line 202
    const/16 v38, 0x2

    move/from16 v0, v38

    new-array v0, v0, [[I

    move-object/from16 v38, v0

    const/16 v39, 0x0

    .line 203
    const/16 v40, 0x1

    move/from16 v0, v40

    new-array v0, v0, [I

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aput v35, v40, v41

    aput-object v40, v38, v39

    const/16 v39, 0x1

    .line 204
    const/16 v40, 0x0

    move/from16 v0, v40

    new-array v0, v0, [I

    move-object/from16 v40, v0

    aput-object v40, v38, v39

    .line 205
    const/16 v39, 0x2

    move/from16 v0, v39

    new-array v0, v0, [I

    move-object/from16 v39, v0

    const/16 v40, 0x0

    .line 206
    const-string v41, "#ffffff"

    invoke-static/range {v41 .. v41}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v41

    aput v41, v39, v40

    const/16 v40, 0x1

    .line 207
    const-string v41, "#575e79"

    invoke-static/range {v41 .. v41}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v41

    aput v41, v39, v40

    invoke-direct/range {v37 .. v39}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 201
    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 210
    const-string v37, "\ucde8\uc18c"

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 211
    invoke-virtual {v7, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;->okBtn:Landroid/view/View$OnClickListener;

    move-object/from16 v37, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;->cancelBtn:Landroid/view/View$OnClickListener;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v12, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/feelingk/lguiab/manager/gui/InAppLockActivity;->setContentView(Landroid/view/View;)V

    .line 218
    return-void
.end method
