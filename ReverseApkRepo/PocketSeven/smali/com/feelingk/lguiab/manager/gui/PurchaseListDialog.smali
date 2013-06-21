.class public Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;
.super Landroid/app/Dialog;
.source "PurchaseListDialog.java"


# instance fields
.field private RES_VERT_FILE_PATH:Ljava/lang/String;

.field anyDensity:Z

.field hd:Z

.field hvga:Z

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/feelingk/lguiab/vo/ProductItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field listView:Landroid/widget/ListView;

.field private mClientListenerKey:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mListSize:I

.field opView:Z

.field ptSize:F

.field root:Landroid/widget/LinearLayout;

.field screenDensity:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;)V
    .locals 13
    .parameter "context"
    .parameter
    .parameter "listSize"
    .parameter "clientListenerKey"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/feelingk/lguiab/vo/ProductItemInfo;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Lcom/feelingk/lguiab/vo/ProductItemInfo;>;"
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mClientListenerKey:Ljava/lang/String;

    .line 45
    const/4 v9, 0x0

    iput v9, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->screenDensity:I

    .line 46
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->hvga:Z

    .line 47
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->hd:Z

    .line 48
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->opView:Z

    .line 49
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->anyDensity:Z

    .line 51
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->root:Landroid/widget/LinearLayout;

    .line 52
    const-string v9, "/lguIABres/"

    iput-object v9, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    .line 53
    const/high16 v9, 0x4000

    iput v9, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->ptSize:F

    .line 58
    iput-object p1, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    .line 59
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mClientListenerKey:Ljava/lang/String;

    .line 60
    move/from16 v0, p3

    iput v0, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mListSize:I

    .line 61
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v9, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->items:Ljava/util/List;

    .line 63
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 64
    .local v4, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v9, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    check-cast v9, Landroid/app/Activity;

    invoke-virtual {v9}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 65
    iget v2, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 66
    .local v2, deviceWidth:I
    iget v1, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 68
    .local v1, deviceHeight:I
    iget-object v9, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    const-string v10, "window"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .line 69
    .local v8, wm:Landroid/view/WindowManager;
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 70
    .local v3, disp:Landroid/view/Display;
    invoke-virtual {v3}, Landroid/view/Display;->getOrientation()I

    move-result v7

    .line 72
    .local v7, rotation:I
    sget-boolean v9, Lcom/feelingk/lguiab/util/DeviceUtil;->mHvga:Z

    if-eqz v9, :cond_0

    .line 73
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->hvga:Z

    .line 74
    :cond_0
    sget-boolean v9, Lcom/feelingk/lguiab/util/DeviceUtil;->mHd:Z

    if-eqz v9, :cond_1

    .line 75
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->hd:Z

    .line 78
    :cond_1
    invoke-static {}, Lcom/feelingk/lguiab/util/DeviceUtil;->getmAnyDensityState()Z

    move-result v9

    if-nez v9, :cond_2

    .line 79
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->hvga:Z

    .line 80
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->anyDensity:Z

    .line 82
    sget-boolean v9, Lcom/feelingk/lguiab/util/DeviceUtil;->mOpView:Z

    if-eqz v9, :cond_2

    .line 83
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->opView:Z

    .line 87
    :cond_2
    iget v9, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v9, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->screenDensity:I

    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "popup_bg.9.png"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 90
    .local v5, is:Ljava/io/InputStream;
    const/4 v9, 0x0

    invoke-static {v5, v9}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 92
    .local v6, popup_bg:Landroid/graphics/drawable/Drawable;
    new-instance v9, Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->root:Landroid/widget/LinearLayout;

    .line 93
    iget-object v9, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->root:Landroid/widget/LinearLayout;

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iget-object v9, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->root:Landroid/widget/LinearLayout;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 95
    iget-object v9, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v6}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    iget-object v9, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->root:Landroid/widget/LinearLayout;

    const/16 v10, 0x11

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 98
    iget-object v9, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->root:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 102
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0xb

    if-lt v9, v10, :cond_3

    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0xd

    if-gt v9, v10, :cond_3

    .line 103
    packed-switch v7, :pswitch_data_0

    .line 126
    :goto_0
    return-void

    .line 106
    :pswitch_0
    iget-object v9, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->items:Ljava/util/List;

    invoke-direct {p0, v9}, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->viewLandscape(Ljava/util/List;)V

    goto :goto_0

    .line 109
    :pswitch_1
    iget-object v9, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->items:Ljava/util/List;

    invoke-direct {p0, v9}, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->viewPortrait(Ljava/util/List;)V

    goto :goto_0

    .line 114
    :cond_3
    packed-switch v7, :pswitch_data_1

    goto :goto_0

    .line 117
    :pswitch_2
    iget-object v9, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->items:Ljava/util/List;

    invoke-direct {p0, v9}, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->viewPortrait(Ljava/util/List;)V

    goto :goto_0

    .line 120
    :pswitch_3
    iget-object v9, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->items:Ljava/util/List;

    invoke-direct {p0, v9}, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->viewLandscape(Ljava/util/List;)V

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 114
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private viewLandscape(Ljava/util/List;)V
    .locals 58
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/feelingk/lguiab/vo/ProductItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, itemList:Ljava/util/List;,"Ljava/util/List<Lcom/feelingk/lguiab/vo/ProductItemInfo;>;"
    const/16 v56, 0x0

    .local v56, totalWidth:I
    const/16 v55, 0x0

    .line 131
    .local v55, totalHeight:I
    const/16 v54, 0x0

    .local v54, titleWidth:I
    const/16 v51, 0x0

    .line 132
    .local v51, titleHeight:I
    const/16 v53, 0x0

    .line 133
    .local v53, titleTextSize:I
    const/16 v29, 0x0

    .line 134
    .local v29, listWidth:I
    const/16 v47, 0x0

    .line 135
    .local v47, tableWidth:I
    const/16 v26, 0x0

    .line 136
    .local v26, lineWidth:I
    const/4 v13, 0x0

    .line 137
    .local v13, col_1:I
    const/4 v14, 0x0

    .line 138
    .local v14, col_2:I
    const/4 v15, 0x0

    .line 139
    .local v15, col_3:I
    const/16 v42, 0x0

    .line 140
    .local v42, rowHeight:I
    const/16 v48, 0x0

    .line 142
    .local v48, textSize:I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->hvga:Z

    if-eqz v3, :cond_7

    .line 143
    const/16 v56, 0x1cc

    .line 144
    move-object/from16 v0, p0

    iget v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mListSize:I

    mul-int/lit8 v3, v3, 0x4e

    add-int/lit8 v55, v3, 0x68

    .line 145
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->anyDensity:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->opView:Z

    if-eqz v3, :cond_0

    .line 146
    move-object/from16 v0, p0

    iget v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mListSize:I

    mul-int/lit8 v3, v3, 0x4e

    add-int/lit8 v55, v3, 0x54

    .line 147
    :cond_0
    const/16 v54, 0x1b8

    .line 148
    const/16 v51, 0x2a

    .line 149
    const/16 v53, 0x10

    .line 150
    const/16 v29, 0x122

    .line 151
    const/16 v47, 0x118

    .line 152
    const/16 v26, 0x118

    .line 153
    const/16 v13, 0x50

    .line 154
    const/16 v14, 0x41

    .line 155
    const/16 v15, 0x41

    .line 156
    const/16 v48, 0xc

    .line 158
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->anyDensity:Z

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->opView:Z

    if-eqz v3, :cond_1

    .line 159
    const/16 v54, 0x1c2

    .line 162
    :cond_1
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->requestWindowFeature(I)Z

    .line 164
    move-object/from16 v0, p0

    iget v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mListSize:I

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    .line 165
    const/16 v55, 0x104

    .line 166
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->anyDensity:Z

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->opView:Z

    if-eqz v3, :cond_2

    .line 167
    const/16 v55, 0xf0

    .line 169
    :cond_2
    new-instance v30, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, v30

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 171
    .local v30, ll:Landroid/widget/LinearLayout;
    new-instance v17, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 172
    .local v17, ff:Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    move/from16 v0, v56

    invoke-direct {v3, v0, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 175
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "popup_bg.9.png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v20

    .line 176
    .local v20, is:Ljava/io/InputStream;
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-static {v0, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v35

    .line 179
    .local v35, popup_bg:Landroid/graphics/drawable/Drawable;
    new-instance v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 180
    .local v18, frame:Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    move/from16 v0, v56

    move/from16 v1, v55

    invoke-direct {v3, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    move-object/from16 v0, v18

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 182
    invoke-virtual/range {v17 .. v18}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 184
    new-instance v10, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    invoke-direct {v10, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 185
    .local v10, blank:Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    move/from16 v0, v56

    invoke-direct {v3, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 188
    new-instance v40, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, v40

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 189
    .local v40, root:Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 190
    const/16 v3, 0x11

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 191
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    move/from16 v0, v56

    invoke-direct {v3, v0, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    move-object/from16 v0, v40

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 195
    new-instance v52, Landroid/widget/LinearLayout$LayoutParams;

    .line 197
    const/4 v3, 0x0

    .line 195
    move-object/from16 v0, v52

    move/from16 v1, v54

    move/from16 v2, v51

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 198
    .local v52, titleParams:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x0

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/16 v7, 0xa

    move-object/from16 v0, v52

    invoke-virtual {v0, v3, v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 199
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->anyDensity:Z

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->opView:Z

    if-eqz v3, :cond_3

    .line 200
    const/16 v54, 0x1c2

    .line 201
    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/16 v7, 0xa

    move-object/from16 v0, v52

    invoke-virtual {v0, v3, v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 203
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "popup_title.png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v20

    .line 204
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-static {v0, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v36

    .line 207
    .local v36, popup_title:Landroid/graphics/drawable/Drawable;
    new-instance v50, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, v50

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 208
    .local v50, title:Landroid/widget/TextView;
    move-object/from16 v0, v50

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    const-string v3, "\uad6c\ub9e4\ub0b4\uc5ed"

    move-object/from16 v0, v50

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    const/16 v3, 0x11

    move-object/from16 v0, v50

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 211
    const-string v3, "#ffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v50

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 212
    move/from16 v0, v53

    int-to-float v3, v0

    move-object/from16 v0, v50

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 213
    move-object/from16 v0, v50

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    move-object/from16 v0, v40

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 217
    const/16 v28, 0x0

    .line 218
    .local v28, listViewParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mListSize:I

    const/4 v4, 0x2

    if-ge v3, v4, :cond_5

    .line 220
    new-instance v28, Landroid/widget/LinearLayout$LayoutParams;

    .end local v28           #listViewParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x1a8

    .line 221
    const/4 v4, -0x2

    .line 220
    move-object/from16 v0, v28

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 229
    .restart local v28       #listViewParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    :goto_0
    const/16 v3, 0x12

    const/4 v4, 0x0

    const/16 v5, 0x12

    const/4 v7, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 230
    new-instance v3, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->listView:Landroid/widget/ListView;

    .line 231
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->listView:Landroid/widget/ListView;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->listView:Landroid/widget/ListView;

    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setId(I)V

    .line 233
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->listView:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->listView:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 235
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->listView:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setScrollbarFadingEnabled(Z)V

    .line 236
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->listView:Landroid/widget/ListView;

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 238
    new-instance v9, Lcom/feelingk/lguiab/manager/gui/ItemListAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    invoke-direct {v9, v3}, Lcom/feelingk/lguiab/manager/gui/ItemListAdapter;-><init>(Landroid/content/Context;)V

    .line 240
    .local v9, adapter:Lcom/feelingk/lguiab/manager/gui/ItemListAdapter;
    const/16 v19, 0x0

    .local v19, i:I
    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mListSize:I

    move/from16 v0, v19

    if-lt v0, v3, :cond_6

    .line 246
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 248
    new-instance v11, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    invoke-direct {v11, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 249
    .local v11, bottomLine:Landroid/widget/LinearLayout;
    const/16 v3, 0x11

    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 250
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/16 v4, 0x1a8

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    const-string v3, "#858da6"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 252
    move-object/from16 v0, v40

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 254
    new-instance v32, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, v32

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 256
    .local v32, logoView:Landroid/widget/LinearLayout;
    new-instance v33, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x1b8

    const/4 v4, -0x2

    move-object/from16 v0, v33

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 257
    .local v33, logoViewParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x11

    move-object/from16 v0, v33

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 258
    const/16 v3, 0xa

    const/4 v4, 0x0

    const/16 v5, 0xa

    const/4 v7, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 259
    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 260
    move-object/from16 v0, v40

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 262
    new-instance v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 263
    .local v21, leftBlank:Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x8c

    const/16 v5, 0x1b

    const/high16 v7, 0x3f80

    invoke-direct {v3, v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 266
    new-instance v31, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, v31

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 267
    .local v31, logo:Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "lguplus_logo.png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v20

    .line 268
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-static {v0, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    .line 269
    .local v23, lguplusLogo:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 270
    const/4 v3, 0x0

    const/4 v4, 0x5

    const/16 v5, 0xa

    const/4 v7, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v4, v5, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 271
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0xa0

    const/16 v5, 0x1b

    const/high16 v7, 0x3f80

    invoke-direct {v3, v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 274
    new-instance v57, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, v57

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 275
    .local v57, version:Landroid/widget/TextView;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x8c

    const/16 v5, 0x1b

    const/high16 v7, 0x3f80

    invoke-direct {v3, v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v57

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    sget-object v3, Lcom/feelingk/lguiab/common/Defines;->SDK_VERSION_INFO:Ljava/lang/String;

    move-object/from16 v0, v57

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    const/4 v3, 0x0

    const/4 v4, 0x5

    const/16 v5, 0xa

    const/4 v7, 0x0

    move-object/from16 v0, v57

    invoke-virtual {v0, v3, v4, v5, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 278
    const/4 v3, 0x5

    move-object/from16 v0, v57

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 279
    const v3, 0x4134cccd

    move-object/from16 v0, v57

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 280
    const-string v3, "#b8b8b8"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 281
    move-object/from16 v0, v32

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 284
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->setContentView(Landroid/view/View;)V

    .line 286
    const-string v3, "PurchaseListDlg"

    invoke-static {v3}, Lcom/feelingk/lguiab/LguIAPLib;->setDialogType(Ljava/lang/String;)V

    .line 546
    :goto_2
    return-void

    .line 223
    .end local v9           #adapter:Lcom/feelingk/lguiab/manager/gui/ItemListAdapter;
    .end local v11           #bottomLine:Landroid/widget/LinearLayout;
    .end local v19           #i:I
    .end local v21           #leftBlank:Landroid/widget/LinearLayout;
    .end local v23           #lguplusLogo:Landroid/graphics/drawable/Drawable;
    .end local v31           #logo:Landroid/widget/ImageView;
    .end local v32           #logoView:Landroid/widget/LinearLayout;
    .end local v33           #logoViewParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v57           #version:Landroid/widget/TextView;
    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mListSize:I

    const/4 v4, 0x2

    if-lt v3, v4, :cond_4

    .line 225
    new-instance v28, Landroid/widget/LinearLayout$LayoutParams;

    .end local v28           #listViewParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x1a8

    .line 226
    const/16 v4, 0x9c

    .line 225
    move-object/from16 v0, v28

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 224
    .restart local v28       #listViewParams:Landroid/widget/LinearLayout$LayoutParams;
    goto/16 :goto_0

    .line 241
    .restart local v9       #adapter:Lcom/feelingk/lguiab/manager/gui/ItemListAdapter;
    .restart local v19       #i:I
    :cond_6
    new-instance v3, Lcom/feelingk/lguiab/manager/gui/ListItem;

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/feelingk/lguiab/vo/ProductItemInfo;

    invoke-virtual {v4}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->getRegDate()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/feelingk/lguiab/vo/ProductItemInfo;

    invoke-virtual {v5}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->getEndDate()Ljava/lang/String;

    move-result-object v5

    .line 242
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/feelingk/lguiab/vo/ProductItemInfo;

    invoke-virtual {v7}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->getProductName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/feelingk/lguiab/vo/ProductItemInfo;

    invoke-virtual {v7}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->getPrice()Ljava/lang/String;

    move-result-object v7

    .line 243
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/feelingk/lguiab/vo/ProductItemInfo;

    invoke-virtual {v8}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->getProductKind()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/feelingk/lguiab/manager/gui/ListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-virtual {v9, v3}, Lcom/feelingk/lguiab/manager/gui/ItemListAdapter;->addItem(Lcom/feelingk/lguiab/manager/gui/ListItem;)V

    .line 240
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    .line 290
    .end local v9           #adapter:Lcom/feelingk/lguiab/manager/gui/ItemListAdapter;
    .end local v10           #blank:Landroid/widget/LinearLayout;
    .end local v17           #ff:Landroid/widget/FrameLayout;
    .end local v18           #frame:Landroid/widget/LinearLayout;
    .end local v19           #i:I
    .end local v20           #is:Ljava/io/InputStream;
    .end local v28           #listViewParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v30           #ll:Landroid/widget/LinearLayout;
    .end local v35           #popup_bg:Landroid/graphics/drawable/Drawable;
    .end local v36           #popup_title:Landroid/graphics/drawable/Drawable;
    .end local v40           #root:Landroid/widget/LinearLayout;
    .end local v50           #title:Landroid/widget/TextView;
    .end local v52           #titleParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_7
    const/16 v56, 0x1f4

    .line 291
    move-object/from16 v0, p0

    iget v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mListSize:I

    mul-int/lit8 v3, v3, 0x2e

    add-int/lit16 v0, v3, 0xb1

    move/from16 v55, v0

    .line 292
    const/16 v54, 0x1e0

    .line 293
    const/16 v51, 0x3c

    .line 294
    const/16 v53, 0x12

    .line 295
    const/16 v29, 0x1f4

    .line 296
    const/16 v47, 0x1e0

    .line 297
    const/16 v26, 0x1bc

    .line 298
    const/16 v13, 0x8c

    .line 299
    const/16 v14, 0x69

    .line 300
    const/16 v15, 0x61

    .line 301
    const/16 v42, 0x27

    .line 302
    const/16 v48, 0xe

    .line 304
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->hd:Z

    if-eqz v3, :cond_8

    .line 305
    const/16 v56, 0x271

    .line 306
    move-object/from16 v0, p0

    iget v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mListSize:I

    mul-int/lit8 v3, v3, 0x3d

    add-int/lit16 v0, v3, 0xc0

    move/from16 v55, v0

    .line 307
    const/16 v54, 0x25d

    .line 308
    const/16 v47, 0x25d

    .line 309
    const/16 v26, 0x239

    .line 310
    const/16 v13, 0xbd

    .line 311
    const/16 v14, 0x7d

    .line 312
    const/16 v15, 0x7d

    .line 313
    const/16 v42, 0x36

    .line 316
    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->screenDensity:I

    const/16 v4, 0x140

    if-ne v3, v4, :cond_9

    .line 317
    const/16 v48, 0xb

    .line 318
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->hd:Z

    if-eqz v3, :cond_9

    .line 319
    const/16 v48, 0xe

    .line 322
    :cond_9
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->requestWindowFeature(I)Z

    .line 324
    move-object/from16 v0, p0

    iget v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mListSize:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_a

    .line 325
    const/16 v55, 0x197

    .line 326
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->hd:Z

    if-eqz v3, :cond_a

    .line 327
    const/16 v55, 0x1e2

    .line 329
    :cond_a
    new-instance v30, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, v30

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 331
    .restart local v30       #ll:Landroid/widget/LinearLayout;
    new-instance v17, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 332
    .restart local v17       #ff:Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    move/from16 v0, v56

    invoke-direct {v3, v0, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    move-object/from16 v0, v30

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 335
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "popup_bg.9.png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v20

    .line 336
    .restart local v20       #is:Ljava/io/InputStream;
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-static {v0, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v35

    .line 339
    .restart local v35       #popup_bg:Landroid/graphics/drawable/Drawable;
    new-instance v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 340
    .restart local v18       #frame:Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    move/from16 v0, v56

    move/from16 v1, v55

    invoke-direct {v3, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    move-object/from16 v0, v18

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 342
    invoke-virtual/range {v17 .. v18}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 344
    new-instance v10, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    invoke-direct {v10, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 345
    .restart local v10       #blank:Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    move/from16 v0, v56

    invoke-direct {v3, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 346
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 348
    new-instance v40, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, v40

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 349
    .restart local v40       #root:Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 350
    const/16 v3, 0x11

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 351
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    move/from16 v0, v56

    invoke-direct {v3, v0, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    move-object/from16 v0, v40

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 355
    new-instance v52, Landroid/widget/LinearLayout$LayoutParams;

    .line 357
    const/4 v3, 0x0

    .line 355
    move-object/from16 v0, v52

    move/from16 v1, v54

    move/from16 v2, v51

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 358
    .restart local v52       #titleParams:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x0

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/16 v7, 0xf

    move-object/from16 v0, v52

    invoke-virtual {v0, v3, v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 359
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "popup_title.png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v20

    .line 360
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-static {v0, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v36

    .line 363
    .restart local v36       #popup_title:Landroid/graphics/drawable/Drawable;
    new-instance v50, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, v50

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 364
    .restart local v50       #title:Landroid/widget/TextView;
    move-object/from16 v0, v50

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 365
    const-string v3, "\uad6c\ub9e4\ub0b4\uc5ed"

    move-object/from16 v0, v50

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    const/16 v3, 0x11

    move-object/from16 v0, v50

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 367
    const-string v3, "#ffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v50

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 368
    move/from16 v0, v53

    int-to-float v3, v0

    move-object/from16 v0, v50

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 369
    move-object/from16 v0, v50

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    move-object/from16 v0, v40

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 374
    new-instance v45, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, v45

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 375
    .local v45, table:Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 377
    new-instance v46, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    move-object/from16 v0, v46

    move/from16 v1, v47

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 378
    .local v46, tableParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v45 .. v46}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    const/16 v3, 0x11

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 380
    move-object/from16 v0, v40

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 382
    new-instance v24, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 384
    .local v24, line:Landroid/widget/LinearLayout;
    new-instance v25, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 385
    .local v25, lineParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v24 .. v25}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    const-string v3, "#858da6"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 387
    move-object/from16 v0, v45

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 389
    new-instance v41, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, v41

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 391
    .local v41, row:Landroid/widget/LinearLayout;
    new-instance v43, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    move-object/from16 v0, v43

    move/from16 v1, v26

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 392
    .local v43, rowParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v41

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 393
    const/16 v3, 0x11

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 394
    const/4 v3, 0x0

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 395
    move-object/from16 v0, v45

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 397
    new-instance v22, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 398
    .local v22, leftLine:Landroid/widget/LinearLayout;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, 0x1

    move/from16 v0, v42

    invoke-direct {v3, v4, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 399
    const-string v3, "#858da6"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 400
    move-object/from16 v0, v41

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 402
    new-instance v34, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, v34

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 403
    .local v34, name:Landroid/widget/TextView;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    move/from16 v0, v42

    invoke-direct {v3, v13, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 404
    const/16 v3, 0x11

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 405
    const-string v3, "\uc0c1\ud488\uba85"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    const-string v3, "#f9f9f9"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 407
    const-string v3, "#2c3b65"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 408
    move/from16 v0, v48

    int-to-float v3, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 409
    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v7, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v3, v4, v5, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 410
    move-object/from16 v0, v41

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 412
    new-instance v44, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, v44

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 413
    .local v44, secondLine:Landroid/widget/LinearLayout;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, 0x1

    move/from16 v0, v42

    invoke-direct {v3, v4, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 414
    const-string v3, "#d4d7dd"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 415
    move-object/from16 v0, v41

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 417
    new-instance v37, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, v37

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 418
    .local v37, price:Landroid/widget/TextView;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    move/from16 v0, v42

    invoke-direct {v3, v14, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    const/16 v3, 0x11

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 420
    const-string v3, "\uac00\uaca9"

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
    const-string v3, "#f9f9f9"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 422
    const-string v3, "#2c3b65"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 423
    move/from16 v0, v48

    int-to-float v3, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 424
    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v7, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v0, v3, v4, v5, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 425
    move-object/from16 v0, v41

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 427
    new-instance v12, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    invoke-direct {v12, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 428
    .local v12, centerLine:Landroid/widget/LinearLayout;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, 0x1

    move/from16 v0, v42

    invoke-direct {v3, v4, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 429
    const-string v3, "#d4d7dd"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v12, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 430
    move-object/from16 v0, v41

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 432
    new-instance v38, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, v38

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 433
    .local v38, regDate:Landroid/widget/TextView;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    move/from16 v0, v42

    invoke-direct {v3, v15, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    const/16 v3, 0x11

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 435
    const-string v3, "\uad6c\ub9e4\uc77c"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    const-string v3, "#f9f9f9"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 437
    const-string v3, "#2c3b65"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 438
    move/from16 v0, v48

    int-to-float v3, v0

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 439
    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v7, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v3, v4, v5, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 440
    move-object/from16 v0, v41

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 442
    new-instance v49, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, v49

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 443
    .local v49, thirdLine:Landroid/widget/LinearLayout;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, 0x1

    move/from16 v0, v42

    invoke-direct {v3, v4, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 444
    const-string v3, "#d4d7dd"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v49

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 445
    move-object/from16 v0, v41

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 447
    new-instance v16, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 448
    .local v16, endDate:Landroid/widget/TextView;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    move/from16 v0, v42

    invoke-direct {v3, v15, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 449
    const/16 v3, 0x11

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 450
    const-string v3, "\ub9cc\ub8cc\uc77c"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    const-string v3, "#f9f9f9"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 452
    const-string v3, "#2c3b65"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 453
    move/from16 v0, v48

    int-to-float v3, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 454
    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v7, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4, v5, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 455
    move-object/from16 v0, v41

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 457
    new-instance v39, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, v39

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 458
    .local v39, rightLine:Landroid/widget/LinearLayout;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, 0x1

    move/from16 v0, v42

    invoke-direct {v3, v4, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 459
    const-string v3, "#858da6"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 460
    move-object/from16 v0, v41

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 464
    const/16 v28, 0x0

    .line 466
    .restart local v28       #listViewParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->hd:Z

    if-eqz v3, :cond_d

    .line 467
    move-object/from16 v0, p0

    iget v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mListSize:I

    const/4 v4, 0x5

    if-ge v3, v4, :cond_c

    .line 468
    new-instance v28, Landroid/widget/LinearLayout$LayoutParams;

    .end local v28           #listViewParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x239

    .line 469
    const/4 v4, -0x2

    .line 468
    move-object/from16 v0, v28

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 483
    .restart local v28       #listViewParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_b
    :goto_3
    const/16 v3, 0xa

    const/4 v4, 0x0

    const/16 v5, 0xa

    const/4 v7, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v3, v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 484
    new-instance v3, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->listView:Landroid/widget/ListView;

    .line 485
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->listView:Landroid/widget/ListView;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 486
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->listView:Landroid/widget/ListView;

    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setId(I)V

    .line 487
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->listView:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 488
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->listView:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 489
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->listView:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setScrollbarFadingEnabled(Z)V

    .line 490
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->listView:Landroid/widget/ListView;

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 492
    new-instance v9, Lcom/feelingk/lguiab/manager/gui/ItemListAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    invoke-direct {v9, v3}, Lcom/feelingk/lguiab/manager/gui/ItemListAdapter;-><init>(Landroid/content/Context;)V

    .line 494
    .restart local v9       #adapter:Lcom/feelingk/lguiab/manager/gui/ItemListAdapter;
    const/4 v6, 0x0

    .line 495
    .local v6, tempPname:Ljava/lang/String;
    const/16 v19, 0x0

    .restart local v19       #i:I
    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mListSize:I

    move/from16 v0, v19

    if-lt v0, v3, :cond_f

    .line 504
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->listView:Landroid/widget/ListView;

    invoke-virtual {v3, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 506
    new-instance v11, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    invoke-direct {v11, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 507
    .restart local v11       #bottomLine:Landroid/widget/LinearLayout;
    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 508
    const-string v3, "#858da6"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 509
    move-object/from16 v0, v40

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 511
    new-instance v27, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 512
    .local v27, listBlank:Landroid/widget/LinearLayout;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    const/16 v5, 0xf

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 513
    move-object/from16 v0, v40

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 515
    new-instance v32, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, v32

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 517
    .restart local v32       #logoView:Landroid/widget/LinearLayout;
    new-instance v33, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x1e0

    const/16 v4, 0x1e

    move-object/from16 v0, v33

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 518
    .restart local v33       #logoViewParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0xa

    const/4 v4, 0x0

    const/16 v5, 0xa

    const/4 v7, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v3, v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 519
    const/4 v3, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 520
    move-object/from16 v0, v40

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 522
    new-instance v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, v21

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 523
    .restart local v21       #leftBlank:Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x6e

    const/16 v5, 0x1e

    const/high16 v7, 0x3f80

    invoke-direct {v3, v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 524
    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 526
    new-instance v31, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, v31

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 527
    .restart local v31       #logo:Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "lguplus_logo.png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v20

    .line 528
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-static {v0, v3}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    .line 529
    .restart local v23       #lguplusLogo:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 530
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0xa0

    const/16 v5, 0x1e

    const/high16 v7, 0x3f80

    invoke-direct {v3, v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 531
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 533
    new-instance v57, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, v57

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 534
    .restart local v57       #version:Landroid/widget/TextView;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x6e

    const/16 v5, 0x1e

    const/high16 v7, 0x3f80

    invoke-direct {v3, v4, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v57

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 535
    sget-object v3, Lcom/feelingk/lguiab/common/Defines;->SDK_VERSION_INFO:Ljava/lang/String;

    move-object/from16 v0, v57

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    const/4 v3, 0x0

    const/4 v4, 0x5

    const/16 v5, 0xa

    const/4 v7, 0x0

    move-object/from16 v0, v57

    invoke-virtual {v0, v3, v4, v5, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 537
    const/4 v3, 0x5

    move-object/from16 v0, v57

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 538
    const v3, 0x4134cccd

    move-object/from16 v0, v57

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 539
    const-string v3, "#b8b8b8"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v57

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 540
    move-object/from16 v0, v32

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 542
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->setContentView(Landroid/view/View;)V

    .line 544
    const-string v3, "PurchaseListDlg"

    invoke-static {v3}, Lcom/feelingk/lguiab/LguIAPLib;->setDialogType(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 470
    .end local v6           #tempPname:Ljava/lang/String;
    .end local v9           #adapter:Lcom/feelingk/lguiab/manager/gui/ItemListAdapter;
    .end local v11           #bottomLine:Landroid/widget/LinearLayout;
    .end local v19           #i:I
    .end local v21           #leftBlank:Landroid/widget/LinearLayout;
    .end local v23           #lguplusLogo:Landroid/graphics/drawable/Drawable;
    .end local v27           #listBlank:Landroid/widget/LinearLayout;
    .end local v31           #logo:Landroid/widget/ImageView;
    .end local v32           #logoView:Landroid/widget/LinearLayout;
    .end local v33           #logoViewParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v57           #version:Landroid/widget/TextView;
    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mListSize:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_b

    .line 471
    new-instance v28, Landroid/widget/LinearLayout$LayoutParams;

    .end local v28           #listViewParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x239

    .line 472
    const/16 v4, 0x122

    .line 471
    move-object/from16 v0, v28

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .restart local v28       #listViewParams:Landroid/widget/LinearLayout$LayoutParams;
    goto/16 :goto_3

    .line 475
    :cond_d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mListSize:I

    const/4 v4, 0x5

    if-ge v3, v4, :cond_e

    .line 476
    new-instance v28, Landroid/widget/LinearLayout$LayoutParams;

    .end local v28           #listViewParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x1bc

    .line 477
    const/4 v4, -0x2

    .line 476
    move-object/from16 v0, v28

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .restart local v28       #listViewParams:Landroid/widget/LinearLayout$LayoutParams;
    goto/16 :goto_3

    .line 478
    :cond_e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mListSize:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_b

    .line 479
    new-instance v28, Landroid/widget/LinearLayout$LayoutParams;

    .end local v28           #listViewParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0x1bc

    .line 480
    const/16 v4, 0xe6

    .line 479
    move-object/from16 v0, v28

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .restart local v28       #listViewParams:Landroid/widget/LinearLayout$LayoutParams;
    goto/16 :goto_3

    .line 496
    .restart local v6       #tempPname:Ljava/lang/String;
    .restart local v9       #adapter:Lcom/feelingk/lguiab/manager/gui/ItemListAdapter;
    .restart local v19       #i:I
    :cond_f
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/feelingk/lguiab/vo/ProductItemInfo;

    invoke-virtual {v3}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->getProductName()Ljava/lang/String;

    move-result-object v6

    .line 497
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xa

    if-lt v3, v4, :cond_10

    .line 498
    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual {v6, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 499
    :cond_10
    new-instance v3, Lcom/feelingk/lguiab/manager/gui/ListItem;

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/feelingk/lguiab/vo/ProductItemInfo;

    invoke-virtual {v4}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->getRegDate()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/feelingk/lguiab/vo/ProductItemInfo;

    invoke-virtual {v5}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->getEndDate()Ljava/lang/String;

    move-result-object v5

    .line 500
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/feelingk/lguiab/vo/ProductItemInfo;

    invoke-virtual {v7}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->getPrice()Ljava/lang/String;

    move-result-object v7

    .line 501
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/feelingk/lguiab/vo/ProductItemInfo;

    invoke-virtual {v8}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->getProductKind()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v3 .. v8}, Lcom/feelingk/lguiab/manager/gui/ListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    invoke-virtual {v9, v3}, Lcom/feelingk/lguiab/manager/gui/ItemListAdapter;->addItem(Lcom/feelingk/lguiab/manager/gui/ListItem;)V

    .line 495
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_4
.end method

.method private viewPortrait(Ljava/util/List;)V
    .locals 37
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/feelingk/lguiab/vo/ProductItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 550
    .local p1, itemList:Ljava/util/List;,"Ljava/util/List<Lcom/feelingk/lguiab/vo/ProductItemInfo;>;"
    const/16 v35, 0x0

    .line 551
    .local v35, totalWidth:I
    const/16 v34, 0x0

    .line 552
    .local v34, totalHeight:I
    const/16 v31, 0x0

    .line 553
    .local v31, titleHeight:I
    const/16 v33, 0x0

    .line 554
    .local v33, titleTextSize:I
    const/16 v20, 0x0

    .line 555
    .local v20, listWidth:I
    const/16 v29, 0x0

    .line 556
    .local v29, tableWidth:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->hvga:Z

    if-eqz v2, :cond_4

    .line 557
    const/16 v35, 0x12d

    .line 558
    move-object/from16 v0, p0

    iget v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mListSize:I

    const/4 v3, 0x4

    if-ge v2, v3, :cond_3

    .line 559
    move-object/from16 v0, p0

    iget v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mListSize:I

    mul-int/lit8 v2, v2, 0x52

    add-int/lit8 v34, v2, 0x6a

    .line 560
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->anyDensity:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->opView:Z

    if-eqz v2, :cond_0

    .line 561
    move-object/from16 v0, p0

    iget v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mListSize:I

    mul-int/lit8 v2, v2, 0x52

    add-int/lit8 v34, v2, 0x60

    .line 568
    :cond_0
    :goto_0
    const/16 v31, 0x2a

    .line 569
    const/16 v33, 0x10

    .line 570
    const/16 v20, 0x118

    .line 571
    const/16 v29, 0x109

    .line 596
    :goto_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->requestWindowFeature(I)Z

    .line 598
    new-instance v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 600
    .local v21, ll:Landroid/widget/LinearLayout;
    new-instance v11, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    invoke-direct {v11, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 601
    .local v11, ff:Landroid/widget/FrameLayout;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    move/from16 v0, v35

    invoke-direct {v2, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 602
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 604
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "popup_bg.9.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v14

    .line 605
    .local v14, is:Ljava/io/InputStream;
    const/4 v2, 0x0

    invoke-static {v14, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    .line 608
    .local v25, popup_bg:Landroid/graphics/drawable/Drawable;
    new-instance v12, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    invoke-direct {v12, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 609
    .local v12, frame:Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    move/from16 v0, v35

    move/from16 v1, v34

    invoke-direct {v2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 610
    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 611
    invoke-virtual {v11, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 613
    new-instance v9, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    invoke-direct {v9, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 615
    .local v9, blank:Landroid/widget/LinearLayout;
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    move/from16 v0, v35

    move/from16 v1, v34

    invoke-direct {v2, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-direct {v10, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 616
    .local v10, blankParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 617
    invoke-virtual {v11, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 619
    new-instance v27, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, v27

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 621
    .local v27, root:Landroid/widget/LinearLayout;
    new-instance v28, Landroid/widget/LinearLayout$LayoutParams;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    move/from16 v0, v35

    invoke-direct {v2, v0, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v28

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 623
    .local v28, rootParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v27 .. v28}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 624
    const/4 v2, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 625
    move-object/from16 v0, v27

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 629
    new-instance v32, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    .line 631
    const/4 v3, 0x0

    .line 629
    move-object/from16 v0, v32

    move/from16 v1, v31

    invoke-direct {v0, v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 632
    .local v32, titleParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->hvga:Z

    if-eqz v2, :cond_a

    .line 633
    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xa

    const/16 v6, 0x8

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 634
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->anyDensity:Z

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->opView:Z

    if-eqz v2, :cond_1

    .line 635
    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    const/16 v6, 0x8

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 641
    :cond_1
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "popup_title.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v14

    .line 642
    const/4 v2, 0x0

    invoke-static {v14, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    .line 645
    .local v26, popup_title:Landroid/graphics/drawable/Drawable;
    new-instance v30, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, v30

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 646
    .local v30, title:Landroid/widget/TextView;
    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 647
    const-string v2, "\uad6c\ub9e4\ub0b4\uc5ed"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 648
    const/16 v2, 0x11

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 649
    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 650
    move/from16 v0, v33

    int-to-float v2, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 651
    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 652
    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 655
    const/16 v19, 0x0

    .line 657
    .local v19, listViewParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->hvga:Z

    if-eqz v2, :cond_c

    .line 658
    move-object/from16 v0, p0

    iget v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mListSize:I

    const/4 v3, 0x4

    if-ge v2, v3, :cond_b

    .line 659
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    .line 660
    .end local v19           #listViewParams:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, -0x2

    .line 659
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 682
    .restart local v19       #listViewParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    :goto_3
    const/16 v2, 0x11

    move-object/from16 v0, v19

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 683
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->hvga:Z

    if-eqz v2, :cond_10

    .line 684
    const/16 v2, 0x9

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 688
    :goto_4
    new-instance v2, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->listView:Landroid/widget/ListView;

    .line 689
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->listView:Landroid/widget/ListView;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 690
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->listView:Landroid/widget/ListView;

    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setId(I)V

    .line 691
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->listView:Landroid/widget/ListView;

    const-string v3, "#00000000"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 692
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->listView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 693
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->listView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    .line 694
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->listView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setScrollbarFadingEnabled(Z)V

    .line 695
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->listView:Landroid/widget/ListView;

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 697
    new-instance v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 699
    .local v17, line:Landroid/widget/LinearLayout;
    new-instance v18, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v29

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 700
    .local v18, lineParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->hvga:Z

    if-eqz v2, :cond_11

    .line 701
    const/16 v2, 0x12

    const/4 v3, 0x0

    const/16 v4, 0x12

    const/16 v6, 0xd

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 704
    :goto_5
    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 705
    const-string v2, "#858da6"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 706
    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 714
    new-instance v23, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 715
    .local v23, logoView:Landroid/widget/LinearLayout;
    const/16 v24, 0x0

    .line 716
    .local v24, logoViewParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->hvga:Z

    if-eqz v2, :cond_12

    .line 717
    new-instance v24, Landroid/widget/LinearLayout$LayoutParams;

    .end local v24           #logoViewParams:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, -0x1

    const/16 v3, 0x1b

    move-object/from16 v0, v24

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 721
    .restart local v24       #logoViewParams:Landroid/widget/LinearLayout$LayoutParams;
    :goto_6
    const/16 v2, 0xc

    const/4 v3, 0x0

    const/16 v4, 0xc

    const/4 v6, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 722
    invoke-virtual/range {v23 .. v24}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 723
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 724
    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 726
    new-instance v15, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    invoke-direct {v15, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 727
    .local v15, leftBlank:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->hvga:Z

    if-eqz v2, :cond_13

    .line 728
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x6e

    const/16 v4, 0x1e

    const/high16 v6, 0x3f80

    invoke-direct {v2, v3, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v15, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 731
    :goto_7
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 733
    new-instance v22, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 734
    .local v22, logo:Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->RES_VERT_FILE_PATH:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "lguplus_logo.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v14

    .line 735
    const/4 v2, 0x0

    invoke-static {v14, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 736
    .local v16, lguplusLogo:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 737
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->hvga:Z

    if-eqz v2, :cond_14

    .line 738
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0xa0

    const/16 v4, 0x1b

    const/high16 v6, 0x3f80

    invoke-direct {v2, v3, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 741
    :goto_8
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 743
    new-instance v36, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    move-object/from16 v0, v36

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 744
    .local v36, version:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->hvga:Z

    if-eqz v2, :cond_15

    .line 745
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x6e

    const/16 v4, 0x1b

    const/high16 v6, 0x3f80

    invoke-direct {v2, v3, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 748
    :goto_9
    sget-object v2, Lcom/feelingk/lguiab/common/Defines;->SDK_VERSION_INFO:Ljava/lang/String;

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 749
    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3, v4, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 750
    const/4 v2, 0x5

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 751
    const v2, 0x4134cccd

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 752
    const-string v2, "#b8b8b8"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 753
    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 758
    new-instance v8, Lcom/feelingk/lguiab/manager/gui/ItemListAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mContext:Landroid/content/Context;

    invoke-direct {v8, v2}, Lcom/feelingk/lguiab/manager/gui/ItemListAdapter;-><init>(Landroid/content/Context;)V

    .line 760
    .local v8, adapter:Lcom/feelingk/lguiab/manager/gui/ItemListAdapter;
    const/4 v5, 0x0

    .line 761
    .local v5, tempPname:Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mListSize:I

    if-lt v13, v2, :cond_16

    .line 771
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 774
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->setContentView(Landroid/view/View;)V

    .line 776
    const-string v2, "PurchaseListDlg"

    invoke-static {v2}, Lcom/feelingk/lguiab/LguIAPLib;->setDialogType(Ljava/lang/String;)V

    .line 777
    return-void

    .line 563
    .end local v5           #tempPname:Ljava/lang/String;
    .end local v8           #adapter:Lcom/feelingk/lguiab/manager/gui/ItemListAdapter;
    .end local v9           #blank:Landroid/widget/LinearLayout;
    .end local v10           #blankParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v11           #ff:Landroid/widget/FrameLayout;
    .end local v12           #frame:Landroid/widget/LinearLayout;
    .end local v13           #i:I
    .end local v14           #is:Ljava/io/InputStream;
    .end local v15           #leftBlank:Landroid/widget/LinearLayout;
    .end local v16           #lguplusLogo:Landroid/graphics/drawable/Drawable;
    .end local v17           #line:Landroid/widget/LinearLayout;
    .end local v18           #lineParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v19           #listViewParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v21           #ll:Landroid/widget/LinearLayout;
    .end local v22           #logo:Landroid/widget/ImageView;
    .end local v23           #logoView:Landroid/widget/LinearLayout;
    .end local v24           #logoViewParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v25           #popup_bg:Landroid/graphics/drawable/Drawable;
    .end local v26           #popup_title:Landroid/graphics/drawable/Drawable;
    .end local v27           #root:Landroid/widget/LinearLayout;
    .end local v28           #rootParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v30           #title:Landroid/widget/TextView;
    .end local v32           #titleParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v36           #version:Landroid/widget/TextView;
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mListSize:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    .line 564
    const/16 v34, 0x1b2

    .line 565
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->anyDensity:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->opView:Z

    if-eqz v2, :cond_0

    .line 566
    const/16 v34, 0x1a8

    goto/16 :goto_0

    .line 573
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->hd:Z

    if-eqz v2, :cond_7

    .line 574
    const/16 v35, 0x1f5

    .line 575
    move-object/from16 v0, p0

    iget v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mListSize:I

    const/4 v3, 0x4

    if-ge v2, v3, :cond_6

    .line 576
    move-object/from16 v0, p0

    iget v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mListSize:I

    mul-int/lit16 v2, v2, 0x8a

    add-int/lit16 v0, v2, 0x96

    move/from16 v34, v0

    .line 579
    :cond_5
    :goto_b
    const/16 v31, 0x4b

    .line 580
    const/16 v33, 0x10

    .line 581
    const/16 v20, 0x1e0

    .line 582
    const/16 v29, 0x1b4

    goto/16 :goto_1

    .line 577
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mListSize:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_5

    .line 578
    const/16 v34, 0x2c1

    goto :goto_b

    .line 585
    :cond_7
    const/16 v35, 0x1a5

    .line 586
    move-object/from16 v0, p0

    iget v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mListSize:I

    const/4 v3, 0x6

    if-ge v2, v3, :cond_9

    .line 587
    move-object/from16 v0, p0

    iget v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mListSize:I

    mul-int/lit8 v2, v2, 0x5c

    add-int/lit16 v0, v2, 0x87

    move/from16 v34, v0

    .line 590
    :cond_8
    :goto_c
    const/16 v31, 0x3c

    .line 591
    const/16 v33, 0x10

    .line 592
    const/16 v20, 0x190

    .line 593
    const/16 v29, 0x164

    goto/16 :goto_1

    .line 588
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mListSize:I

    const/4 v3, 0x6

    if-lt v2, v3, :cond_8

    .line 589
    const/16 v34, 0x2af

    goto :goto_c

    .line 639
    .restart local v9       #blank:Landroid/widget/LinearLayout;
    .restart local v10       #blankParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v11       #ff:Landroid/widget/FrameLayout;
    .restart local v12       #frame:Landroid/widget/LinearLayout;
    .restart local v14       #is:Ljava/io/InputStream;
    .restart local v21       #ll:Landroid/widget/LinearLayout;
    .restart local v25       #popup_bg:Landroid/graphics/drawable/Drawable;
    .restart local v27       #root:Landroid/widget/LinearLayout;
    .restart local v28       #rootParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v32       #titleParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_a
    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xa

    const/16 v6, 0xf

    move-object/from16 v0, v32

    invoke-virtual {v0, v2, v3, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_2

    .line 661
    .restart local v19       #listViewParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v26       #popup_title:Landroid/graphics/drawable/Drawable;
    .restart local v30       #title:Landroid/widget/TextView;
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mListSize:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_2

    .line 662
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    .end local v19           #listViewParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x148

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .restart local v19       #listViewParams:Landroid/widget/LinearLayout$LayoutParams;
    goto/16 :goto_3

    .line 665
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->hd:Z

    if-eqz v2, :cond_e

    .line 666
    move-object/from16 v0, p0

    iget v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mListSize:I

    const/4 v3, 0x4

    if-ge v2, v3, :cond_d

    .line 667
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    .line 668
    .end local v19           #listViewParams:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, -0x2

    .line 667
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .restart local v19       #listViewParams:Landroid/widget/LinearLayout$LayoutParams;
    goto/16 :goto_3

    .line 669
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mListSize:I

    const/4 v3, 0x4

    if-lt v2, v3, :cond_2

    .line 670
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    .end local v19           #listViewParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x228

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .restart local v19       #listViewParams:Landroid/widget/LinearLayout$LayoutParams;
    goto/16 :goto_3

    .line 673
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mListSize:I

    const/4 v3, 0x6

    if-ge v2, v3, :cond_f

    .line 674
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    .line 675
    .end local v19           #listViewParams:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, -0x2

    .line 674
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .restart local v19       #listViewParams:Landroid/widget/LinearLayout$LayoutParams;
    goto/16 :goto_3

    .line 676
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->mListSize:I

    const/4 v3, 0x6

    if-lt v2, v3, :cond_2

    .line 677
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    .end local v19           #listViewParams:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x228

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .restart local v19       #listViewParams:Landroid/widget/LinearLayout$LayoutParams;
    goto/16 :goto_3

    .line 686
    :cond_10
    const/16 v2, 0xb

    const/4 v3, 0x0

    const/16 v4, 0xa

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_4

    .line 703
    .restart local v17       #line:Landroid/widget/LinearLayout;
    .restart local v18       #lineParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_11
    const/16 v2, 0x21

    const/4 v3, 0x0

    const/16 v4, 0x20

    const/16 v6, 0xf

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_5

    .line 720
    .restart local v23       #logoView:Landroid/widget/LinearLayout;
    .restart local v24       #logoViewParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_12
    new-instance v24, Landroid/widget/LinearLayout$LayoutParams;

    .end local v24           #logoViewParams:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, -0x1

    const/16 v3, 0x1e

    move-object/from16 v0, v24

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .restart local v24       #logoViewParams:Landroid/widget/LinearLayout$LayoutParams;
    goto/16 :goto_6

    .line 730
    .restart local v15       #leftBlank:Landroid/widget/LinearLayout;
    :cond_13
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x6e

    const/16 v4, 0x1b

    const/high16 v6, 0x3f80

    invoke-direct {v2, v3, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v15, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_7

    .line 740
    .restart local v16       #lguplusLogo:Landroid/graphics/drawable/Drawable;
    .restart local v22       #logo:Landroid/widget/ImageView;
    :cond_14
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0xa0

    const/16 v4, 0x1e

    const/high16 v6, 0x3f80

    invoke-direct {v2, v3, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_8

    .line 747
    .restart local v36       #version:Landroid/widget/TextView;
    :cond_15
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x6e

    const/16 v4, 0x1e

    const/high16 v6, 0x3f80

    invoke-direct {v2, v3, v4, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_9

    .line 762
    .restart local v5       #tempPname:Ljava/lang/String;
    .restart local v8       #adapter:Lcom/feelingk/lguiab/manager/gui/ItemListAdapter;
    .restart local v13       #i:I
    :cond_16
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/feelingk/lguiab/vo/ProductItemInfo;

    invoke-virtual {v2}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->getProductName()Ljava/lang/String;

    move-result-object v5

    .line 763
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_17

    .line 764
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v5, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 766
    :cond_17
    new-instance v2, Lcom/feelingk/lguiab/manager/gui/ListItem;

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/feelingk/lguiab/vo/ProductItemInfo;

    invoke-virtual {v3}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->getRegDate()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/feelingk/lguiab/vo/ProductItemInfo;

    invoke-virtual {v4}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->getEndDate()Ljava/lang/String;

    move-result-object v4

    .line 767
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/feelingk/lguiab/vo/ProductItemInfo;

    invoke-virtual {v6}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->getPrice()Ljava/lang/String;

    move-result-object v6

    .line 768
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/feelingk/lguiab/vo/ProductItemInfo;

    invoke-virtual {v7}, Lcom/feelingk/lguiab/vo/ProductItemInfo;->getProductKind()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lcom/feelingk/lguiab/manager/gui/ListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    invoke-virtual {v8, v2}, Lcom/feelingk/lguiab/manager/gui/ItemListAdapter;->addItem(Lcom/feelingk/lguiab/manager/gui/ListItem;)V

    .line 761
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_a
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 781
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 782
    invoke-virtual {p0}, Lcom/feelingk/lguiab/manager/gui/PurchaseListDialog;->dismiss()V

    .line 783
    const-string v0, "None"

    invoke-static {v0}, Lcom/feelingk/lguiab/LguIAPLib;->setDialogType(Ljava/lang/String;)V

    .line 784
    invoke-static {}, Lcom/feelingk/lguiab/LguIAPLib;->getContextOnClinetListener()Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/feelingk/lguiab/LguIAPLib$OnClientListener;->lguIABonDlgClick()V

    .line 786
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
