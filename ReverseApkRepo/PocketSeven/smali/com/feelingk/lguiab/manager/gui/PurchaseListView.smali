.class public Lcom/feelingk/lguiab/manager/gui/PurchaseListView;
.super Landroid/widget/LinearLayout;
.source "PurchaseListView.java"


# instance fields
.field anyDensity:Z

.field endDate:Ljava/lang/String;

.field hd:Z

.field hvga:Z

.field item:Lcom/feelingk/lguiab/manager/gui/ListItem;

.field lineWidth:I

.field private mAId:Landroid/widget/TextView;

.field mContext:Landroid/content/Context;

.field private mEndDate:Landroid/widget/TextView;

.field private mPrice:Landroid/widget/TextView;

.field private mProductName:Landroid/widget/TextView;

.field private mRegDate:Landroid/widget/TextView;

.field optView:Z

.field private priceLl:Landroid/widget/LinearLayout;

.field regDate:Ljava/lang/String;

.field screenDensity:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/feelingk/lguiab/manager/gui/ListItem;)V
    .locals 10
    .parameter "context"
    .parameter "aItem"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->hvga:Z

    .line 43
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->hd:Z

    .line 44
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->optView:Z

    .line 45
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->anyDensity:Z

    .line 47
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->endDate:Ljava/lang/String;

    .line 48
    const/4 v6, 0x0

    iput v6, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->screenDensity:I

    .line 49
    const/4 v6, 0x0

    iput v6, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->lineWidth:I

    .line 51
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->item:Lcom/feelingk/lguiab/manager/gui/ListItem;

    .line 56
    iput-object p1, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->item:Lcom/feelingk/lguiab/manager/gui/ListItem;

    .line 59
    new-instance v6, Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lcom/feelingk/lguiab/manager/gui/ListItem;->getData(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    const/4 v9, 0x6

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 60
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lcom/feelingk/lguiab/manager/gui/ListItem;->getData(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    const/16 v9, 0x8

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 61
    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lcom/feelingk/lguiab/manager/gui/ListItem;->getData(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x8

    const/16 v9, 0xa

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 62
    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lcom/feelingk/lguiab/manager/gui/ListItem;->getData(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xa

    const/16 v9, 0xc

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 59
    iput-object v6, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->regDate:Ljava/lang/String;

    .line 64
    new-instance v6, Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lcom/feelingk/lguiab/manager/gui/ListItem;->getData(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x8

    const/16 v9, 0xa

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 65
    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lcom/feelingk/lguiab/manager/gui/ListItem;->getData(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xa

    const/16 v9, 0xc

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 66
    const-string v7, "\t"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lcom/feelingk/lguiab/manager/gui/ListItem;->getData(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x8

    const/16 v9, 0xa

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 67
    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lcom/feelingk/lguiab/manager/gui/ListItem;->getData(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xa

    const/16 v9, 0xc

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 64
    iput-object v6, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->endDate:Ljava/lang/String;

    .line 69
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 70
    .local v3, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v6, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 71
    iget v1, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 72
    .local v1, deviceWidth:I
    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 73
    .local v0, deviceHeight:I
    iget v6, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v6, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->screenDensity:I

    .line 76
    iget-object v6, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 77
    .local v5, wm:Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 78
    .local v2, disp:Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getOrientation()I

    move-result v4

    .line 81
    .local v4, rotation:I
    sget-boolean v6, Lcom/feelingk/lguiab/util/DeviceUtil;->mHvga:Z

    if-eqz v6, :cond_0

    .line 82
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->hvga:Z

    .line 83
    :cond_0
    sget-boolean v6, Lcom/feelingk/lguiab/util/DeviceUtil;->mHd:Z

    if-eqz v6, :cond_1

    .line 84
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->hd:Z

    .line 86
    :cond_1
    sget-boolean v6, Lcom/feelingk/lguiab/util/DeviceUtil;->mOpView:Z

    if-eqz v6, :cond_2

    .line 87
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->optView:Z

    .line 89
    :cond_2
    invoke-static {}, Lcom/feelingk/lguiab/util/DeviceUtil;->getmAnyDensityState()Z

    move-result v6

    if-nez v6, :cond_3

    .line 90
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->hvga:Z

    .line 91
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->anyDensity:Z

    .line 93
    sget-boolean v6, Lcom/feelingk/lguiab/util/DeviceUtil;->mOpView:Z

    if-eqz v6, :cond_3

    .line 94
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->optView:Z

    .line 98
    :cond_3
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->setOrientation(I)V

    .line 99
    const/16 v6, 0x11

    invoke-virtual {p0, v6}, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->setGravity(I)V

    .line 105
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_4

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xd

    if-gt v6, v7, :cond_4

    .line 106
    packed-switch v4, :pswitch_data_0

    .line 127
    :goto_0
    return-void

    .line 109
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->viewLandscape(Lcom/feelingk/lguiab/manager/gui/ListItem;)V

    goto :goto_0

    .line 112
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->viewPortrait(Lcom/feelingk/lguiab/manager/gui/ListItem;)V

    goto :goto_0

    .line 117
    :cond_4
    packed-switch v4, :pswitch_data_1

    goto :goto_0

    .line 120
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->viewPortrait(Lcom/feelingk/lguiab/manager/gui/ListItem;)V

    goto :goto_0

    .line 123
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->viewLandscape(Lcom/feelingk/lguiab/manager/gui/ListItem;)V

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 117
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private viewLandscape(Lcom/feelingk/lguiab/manager/gui/ListItem;)V
    .locals 40
    .parameter "aItem"

    .prologue
    .line 132
    const/4 v14, 0x0

    .local v14, nameWidth:I
    const/16 v16, 0x0

    .line 133
    .local v16, priceWidth:I
    const/16 v18, 0x0

    .local v18, regDateWidth:I
    const/4 v7, 0x0

    .line 134
    .local v7, endDateWidth:I
    const/16 v28, 0x0

    .line 135
    .local v28, textSize:I
    const/4 v9, 0x0

    .line 136
    .local v9, height:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->hvga:Z

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 137
    const/16 v35, 0x1a8

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->lineWidth:I

    .line 138
    const/16 v28, 0xc

    .line 140
    new-instance v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 141
    .local v21, root:Landroid/widget/LinearLayout;
    const/16 v35, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 142
    const-string v35, "#f0f0f0"

    invoke-static/range {v35 .. v35}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v35

    move-object/from16 v0, v21

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 143
    const/16 v35, 0x11

    move-object/from16 v0, v21

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 144
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->addView(Landroid/view/View;)V

    .line 146
    new-instance v33, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 147
    .local v33, topLine:Landroid/widget/LinearLayout;
    new-instance v35, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->lineWidth:I

    move/from16 v36, v0

    const/16 v37, 0x1

    invoke-direct/range {v35 .. v37}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    const-string v35, "#858da6"

    invoke-static/range {v35 .. v35}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v35

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 149
    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 151
    new-instance v8, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 153
    .local v8, firstRow:Landroid/widget/LinearLayout;
    new-instance v23, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->lineWidth:I

    move/from16 v35, v0

    const/16 v36, 0x26

    move-object/from16 v0, v23

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 154
    .local v23, rowParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    const/16 v35, 0x11

    move/from16 v0, v35

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 156
    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 157
    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 159
    new-instance v10, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 160
    .local v10, leftLine:Landroid/widget/LinearLayout;
    new-instance v35, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v36, 0x1

    const/16 v37, 0x26

    invoke-direct/range {v35 .. v37}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    const-string v35, "#858da6"

    invoke-static/range {v35 .. v35}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v35

    move/from16 v0, v35

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 162
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 164
    new-instance v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-direct {v13, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 165
    .local v13, name:Landroid/widget/TextView;
    new-instance v35, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v36, 0x78

    const/16 v37, 0x26

    invoke-direct/range {v35 .. v37}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v35

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    const/16 v35, 0x10

    move/from16 v0, v35

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 167
    const-string v35, "\uc0c1\ud488\uba85"

    move-object/from16 v0, v35

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    const-string v35, "#f9f9f9"

    invoke-static/range {v35 .. v35}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v35

    move/from16 v0, v35

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 169
    const-string v35, "#2c3b65"

    invoke-static/range {v35 .. v35}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v35

    move/from16 v0, v35

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 171
    const/16 v35, 0x8

    const/16 v36, 0x0

    const/16 v37, 0x6

    const/16 v38, 0x0

    move/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v38

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 172
    invoke-virtual {v8, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 174
    new-instance v24, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 175
    .local v24, secondLine:Landroid/widget/LinearLayout;
    new-instance v35, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v36, 0x1

    const/16 v37, 0x26

    invoke-direct/range {v35 .. v37}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    const-string v35, "#858da6"

    invoke-static/range {v35 .. v35}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v35

    move-object/from16 v0, v24

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 177
    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 179
    new-instance v35, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-direct/range {v35 .. v36}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mProductName:Landroid/widget/TextView;

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mProductName:Landroid/widget/TextView;

    move-object/from16 v35, v0

    new-instance v36, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v37, 0xb4

    const/16 v38, 0x26

    invoke-direct/range {v36 .. v38}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v35 .. v36}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mProductName:Landroid/widget/TextView;

    move-object/from16 v35, v0

    const/16 v36, 0x10

    invoke-virtual/range {v35 .. v36}, Landroid/widget/TextView;->setGravity(I)V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mProductName:Landroid/widget/TextView;

    move-object/from16 v35, v0

    const/16 v36, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/feelingk/lguiab/manager/gui/ListItem;->getData(I)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mProductName:Landroid/widget/TextView;

    move-object/from16 v35, v0

    const-string v36, "#535353"

    invoke-static/range {v36 .. v36}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mProductName:Landroid/widget/TextView;

    move-object/from16 v35, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroid/widget/TextView;->setTextSize(F)V

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mProductName:Landroid/widget/TextView;

    move-object/from16 v35, v0

    const/16 v36, 0x8

    const/16 v37, 0x0

    const/16 v38, 0x6

    const/16 v39, 0x0

    invoke-virtual/range {v35 .. v39}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mProductName:Landroid/widget/TextView;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 188
    new-instance v31, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 189
    .local v31, thirdLine:Landroid/widget/LinearLayout;
    new-instance v35, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v36, 0x1

    const/16 v37, 0x26

    invoke-direct/range {v35 .. v37}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    const-string v35, "#858da6"

    invoke-static/range {v35 .. v35}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v35

    move-object/from16 v0, v31

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 191
    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 193
    new-instance v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 194
    .local v17, regDateLl:Landroid/widget/LinearLayout;
    const/16 v35, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 196
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v35, 0x78

    const/16 v36, 0x26

    move/from16 v0, v35

    move/from16 v1, v36

    invoke-direct {v12, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 197
    .local v12, mRegDateParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    const-string v35, "#f5f4ec"

    invoke-static/range {v35 .. v35}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v35

    move-object/from16 v0, v17

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 199
    const/16 v35, 0x6

    const/16 v36, 0x3

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v35

    move/from16 v2, v36

    move/from16 v3, v37

    move/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 200
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 202
    new-instance v29, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 203
    .local v29, textTegDate:Landroid/widget/TextView;
    const-string v35, "\uad6c\ub9e4\uc77c"

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    const v35, 0x4134cccd

    move-object/from16 v0, v29

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 205
    const-string v35, "#808080"

    invoke-static/range {v35 .. v35}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v35

    move-object/from16 v0, v29

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 206
    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 208
    new-instance v35, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-direct/range {v35 .. v36}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mRegDate:Landroid/widget/TextView;

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mRegDate:Landroid/widget/TextView;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->regDate:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mRegDate:Landroid/widget/TextView;

    move-object/from16 v35, v0

    const v36, 0x4134cccd

    invoke-virtual/range {v35 .. v36}, Landroid/widget/TextView;->setTextSize(F)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mRegDate:Landroid/widget/TextView;

    move-object/from16 v35, v0

    const-string v36, "#808080"

    invoke-static/range {v36 .. v36}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Landroid/widget/TextView;->setTextColor(I)V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mRegDate:Landroid/widget/TextView;

    move-object/from16 v35, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 214
    new-instance v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 215
    .local v19, rightLine:Landroid/widget/LinearLayout;
    new-instance v35, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v36, 0x1

    const/16 v37, 0x26

    invoke-direct/range {v35 .. v37}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 216
    const-string v35, "#858da6"

    invoke-static/range {v35 .. v35}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v35

    move-object/from16 v0, v19

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 217
    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 219
    new-instance v27, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 220
    .local v27, secondTopLine:Landroid/widget/LinearLayout;
    new-instance v35, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->lineWidth:I

    move/from16 v36, v0

    const/16 v37, 0x1

    invoke-direct/range {v35 .. v37}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v27

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    const-string v35, "#d4d7dd"

    invoke-static/range {v35 .. v35}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v35

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 222
    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 224
    new-instance v26, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 225
    .local v26, secondRow:Landroid/widget/LinearLayout;
    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    const/16 v35, 0x11

    move-object/from16 v0, v26

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 227
    const/16 v35, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 228
    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 230
    new-instance v11, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-direct {v11, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 231
    .local v11, leftLine2:Landroid/widget/LinearLayout;
    new-instance v35, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v36, 0x1

    const/16 v37, 0x26

    invoke-direct/range {v35 .. v37}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v35

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    const-string v35, "#858da6"

    invoke-static/range {v35 .. v35}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v35

    move/from16 v0, v35

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 233
    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 235
    new-instance v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 236
    .local v15, price:Landroid/widget/TextView;
    new-instance v35, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v36, 0x78

    const/16 v37, 0x26

    invoke-direct/range {v35 .. v37}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v35

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    const/16 v35, 0x10

    move/from16 v0, v35

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 238
    const-string v35, "\uac00\uaca9"

    move-object/from16 v0, v35

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    const-string v35, "#f9f9f9"

    invoke-static/range {v35 .. v35}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v35

    move/from16 v0, v35

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 240
    const-string v35, "#2c3b65"

    invoke-static/range {v35 .. v35}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v35

    move/from16 v0, v35

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 241
    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 242
    const/16 v35, 0x8

    const/16 v36, 0x0

    const/16 v37, 0x6

    const/16 v38, 0x0

    move/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v38

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 243
    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 245
    new-instance v25, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 246
    .local v25, secondLine2:Landroid/widget/LinearLayout;
    new-instance v35, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v36, 0x1

    const/16 v37, 0x26

    invoke-direct/range {v35 .. v37}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    const-string v35, "#858da6"

    invoke-static/range {v35 .. v35}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v35

    move-object/from16 v0, v25

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 248
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 250
    new-instance v35, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-direct/range {v35 .. v36}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->priceLl:Landroid/widget/LinearLayout;

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->priceLl:Landroid/widget/LinearLayout;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->priceLl:Landroid/widget/LinearLayout;

    move-object/from16 v35, v0

    const/16 v36, 0x10

    invoke-virtual/range {v35 .. v36}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->priceLl:Landroid/widget/LinearLayout;

    move-object/from16 v35, v0

    new-instance v36, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v37, 0xb4

    const/16 v38, 0x26

    invoke-direct/range {v36 .. v38}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v35 .. v36}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->priceLl:Landroid/widget/LinearLayout;

    move-object/from16 v35, v0

    const/16 v36, 0x8

    const/16 v37, 0x3

    const/16 v38, 0x6

    const/16 v39, 0x0

    invoke-virtual/range {v35 .. v39}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->priceLl:Landroid/widget/LinearLayout;

    move-object/from16 v35, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 257
    new-instance v35, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-direct/range {v35 .. v36}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mPrice:Landroid/widget/TextView;

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mPrice:Landroid/widget/TextView;

    move-object/from16 v35, v0

    const/16 v36, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/feelingk/lguiab/manager/gui/ListItem;->getData(I)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mPrice:Landroid/widget/TextView;

    move-object/from16 v35, v0

    const-string v36, "#ff6a42"

    invoke-static/range {v36 .. v36}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Landroid/widget/TextView;->setTextColor(I)V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mPrice:Landroid/widget/TextView;

    move-object/from16 v35, v0

    const/high16 v36, 0x4160

    invoke-virtual/range {v35 .. v36}, Landroid/widget/TextView;->setTextSize(F)V

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->priceLl:Landroid/widget/LinearLayout;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mPrice:Landroid/widget/TextView;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 263
    new-instance v34, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    invoke-direct/range {v34 .. v35}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 264
    .local v34, won:Landroid/widget/TextView;
    new-instance v35, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v36, -0x2

    const/16 v37, -0x2

    invoke-direct/range {v35 .. v37}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    const-string v35, " \uc6d0"

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    const-string v35, "#535353"

    invoke-static/range {v35 .. v35}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setTextColor(I)V

    .line 267
    const/high16 v35, 0x4160

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setTextSize(F)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->priceLl:Landroid/widget/LinearLayout;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 270
    new-instance v32, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 271
    .local v32, thirdLine2:Landroid/widget/LinearLayout;
    new-instance v35, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v36, 0x1

    const/16 v37, 0x26

    invoke-direct/range {v35 .. v37}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    const-string v35, "#858da6"

    invoke-static/range {v35 .. v35}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v35

    move-object/from16 v0, v32

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 273
    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 276
    new-instance v6, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 277
    .local v6, endDateLl:Landroid/widget/LinearLayout;
    const/16 v35, 0x1

    move/from16 v0, v35

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 278
    invoke-virtual {v6, v12}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    const-string v35, "#f5f4ec"

    invoke-static/range {v35 .. v35}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v35

    move/from16 v0, v35

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 280
    const/16 v35, 0x6

    const/16 v36, 0x3

    const/16 v37, 0x0

    const/16 v38, 0x0

    move/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v38

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 281
    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 283
    new-instance v30, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 284
    .local v30, textendDate:Landroid/widget/TextView;
    const-string v35, "\ub9cc\ub8cc\uc77c"

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    const v35, 0x4134cccd

    move-object/from16 v0, v30

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 286
    const-string v35, "#808080"

    invoke-static/range {v35 .. v35}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v35

    move-object/from16 v0, v30

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 287
    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 289
    new-instance v35, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-direct/range {v35 .. v36}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mEndDate:Landroid/widget/TextView;

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mEndDate:Landroid/widget/TextView;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->endDate:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mEndDate:Landroid/widget/TextView;

    move-object/from16 v35, v0

    const v36, 0x4134cccd

    invoke-virtual/range {v35 .. v36}, Landroid/widget/TextView;->setTextSize(F)V

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mEndDate:Landroid/widget/TextView;

    move-object/from16 v35, v0

    const-string v36, "#808080"

    invoke-static/range {v36 .. v36}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Landroid/widget/TextView;->setTextColor(I)V

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mEndDate:Landroid/widget/TextView;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 295
    new-instance v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 296
    .local v20, rightLine2:Landroid/widget/LinearLayout;
    new-instance v35, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v36, 0x1

    const/16 v37, 0x26

    invoke-direct/range {v35 .. v37}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    const-string v35, "#858da6"

    invoke-static/range {v35 .. v35}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v35

    move-object/from16 v0, v20

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 298
    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 430
    .end local v6           #endDateLl:Landroid/widget/LinearLayout;
    .end local v8           #firstRow:Landroid/widget/LinearLayout;
    .end local v11           #leftLine2:Landroid/widget/LinearLayout;
    .end local v12           #mRegDateParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v13           #name:Landroid/widget/TextView;
    .end local v15           #price:Landroid/widget/TextView;
    .end local v17           #regDateLl:Landroid/widget/LinearLayout;
    .end local v20           #rightLine2:Landroid/widget/LinearLayout;
    .end local v25           #secondLine2:Landroid/widget/LinearLayout;
    .end local v26           #secondRow:Landroid/widget/LinearLayout;
    .end local v27           #secondTopLine:Landroid/widget/LinearLayout;
    .end local v29           #textTegDate:Landroid/widget/TextView;
    .end local v30           #textendDate:Landroid/widget/TextView;
    .end local v32           #thirdLine2:Landroid/widget/LinearLayout;
    :goto_0
    return-void

    .line 303
    .end local v10           #leftLine:Landroid/widget/LinearLayout;
    .end local v19           #rightLine:Landroid/widget/LinearLayout;
    .end local v21           #root:Landroid/widget/LinearLayout;
    .end local v23           #rowParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v24           #secondLine:Landroid/widget/LinearLayout;
    .end local v31           #thirdLine:Landroid/widget/LinearLayout;
    .end local v33           #topLine:Landroid/widget/LinearLayout;
    .end local v34           #won:Landroid/widget/TextView;
    :cond_0
    const/16 v35, 0x1bc

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->lineWidth:I

    .line 304
    const/16 v14, 0x8c

    .line 305
    const/16 v16, 0x69

    .line 306
    const/16 v18, 0x61

    .line 307
    const/16 v7, 0x61

    .line 308
    const/16 v28, 0xe

    .line 309
    const/16 v9, 0x2d

    .line 311
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->hd:Z

    move/from16 v35, v0

    if-eqz v35, :cond_1

    .line 312
    const/16 v35, 0x25d

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->lineWidth:I

    .line 313
    const/16 v14, 0xbd

    .line 314
    const/16 v16, 0x7d

    .line 315
    const/16 v18, 0x7d

    .line 316
    const/16 v7, 0x7d

    .line 317
    const/16 v9, 0x3c

    .line 320
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->screenDensity:I

    move/from16 v35, v0

    const/16 v36, 0x140

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_2

    .line 321
    const/16 v28, 0xb

    .line 322
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->hd:Z

    move/from16 v35, v0

    if-eqz v35, :cond_2

    .line 323
    const/16 v28, 0xe

    .line 326
    :cond_2
    new-instance v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 327
    .restart local v21       #root:Landroid/widget/LinearLayout;
    const/16 v35, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 328
    const-string v35, "#f0f0f0"

    invoke-static/range {v35 .. v35}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v35

    move-object/from16 v0, v21

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 329
    const/16 v35, 0x11

    move-object/from16 v0, v21

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 330
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->addView(Landroid/view/View;)V

    .line 332
    new-instance v33, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 333
    .restart local v33       #topLine:Landroid/widget/LinearLayout;
    new-instance v35, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->lineWidth:I

    move/from16 v36, v0

    const/16 v37, 0x1

    invoke-direct/range {v35 .. v37}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    const-string v35, "#d4d7dd"

    invoke-static/range {v35 .. v35}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v35

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 335
    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 337
    new-instance v22, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 339
    .local v22, row:Landroid/widget/LinearLayout;
    new-instance v23, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->lineWidth:I

    move/from16 v35, v0

    const/16 v36, -0x2

    move-object/from16 v0, v23

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 340
    .restart local v23       #rowParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v22 .. v23}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    const/16 v35, 0x11

    move-object/from16 v0, v22

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 342
    const/16 v35, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 343
    invoke-virtual/range {v21 .. v22}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 345
    new-instance v10, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 346
    .restart local v10       #leftLine:Landroid/widget/LinearLayout;
    new-instance v35, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v36, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-direct {v0, v1, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 347
    const-string v35, "#858da6"

    invoke-static/range {v35 .. v35}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v35

    move/from16 v0, v35

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 348
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 350
    new-instance v35, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-direct/range {v35 .. v36}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mProductName:Landroid/widget/TextView;

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mProductName:Landroid/widget/TextView;

    move-object/from16 v35, v0

    new-instance v36, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v36

    invoke-direct {v0, v14, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v35 .. v36}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mProductName:Landroid/widget/TextView;

    move-object/from16 v35, v0

    const/16 v36, 0x11

    invoke-virtual/range {v35 .. v36}, Landroid/widget/TextView;->setGravity(I)V

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mProductName:Landroid/widget/TextView;

    move-object/from16 v35, v0

    const/16 v36, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/feelingk/lguiab/manager/gui/ListItem;->getData(I)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mProductName:Landroid/widget/TextView;

    move-object/from16 v35, v0

    const-string v36, "#535353"

    invoke-static/range {v36 .. v36}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Landroid/widget/TextView;->setTextColor(I)V

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mProductName:Landroid/widget/TextView;

    move-object/from16 v35, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroid/widget/TextView;->setTextSize(F)V

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mProductName:Landroid/widget/TextView;

    move-object/from16 v35, v0

    const/16 v36, 0x8

    const/16 v37, 0x0

    const/16 v38, 0x6

    const/16 v39, 0x0

    invoke-virtual/range {v35 .. v39}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mProductName:Landroid/widget/TextView;

    move-object/from16 v35, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 359
    new-instance v24, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 360
    .restart local v24       #secondLine:Landroid/widget/LinearLayout;
    new-instance v35, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v36, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-direct {v0, v1, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    const-string v35, "#d4d7dd"

    invoke-static/range {v35 .. v35}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v35

    move-object/from16 v0, v24

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 362
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 364
    new-instance v35, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-direct/range {v35 .. v36}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->priceLl:Landroid/widget/LinearLayout;

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->priceLl:Landroid/widget/LinearLayout;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->priceLl:Landroid/widget/LinearLayout;

    move-object/from16 v35, v0

    const/16 v36, 0x10

    invoke-virtual/range {v35 .. v36}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->priceLl:Landroid/widget/LinearLayout;

    move-object/from16 v35, v0

    new-instance v36, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v36

    move/from16 v1, v16

    invoke-direct {v0, v1, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v35 .. v36}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->priceLl:Landroid/widget/LinearLayout;

    move-object/from16 v35, v0

    const/16 v36, 0x8

    const/16 v37, 0x0

    const/16 v38, 0x6

    const/16 v39, 0x0

    invoke-virtual/range {v35 .. v39}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->priceLl:Landroid/widget/LinearLayout;

    move-object/from16 v35, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 371
    new-instance v35, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-direct/range {v35 .. v36}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mPrice:Landroid/widget/TextView;

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mPrice:Landroid/widget/TextView;

    move-object/from16 v35, v0

    const/16 v36, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/feelingk/lguiab/manager/gui/ListItem;->getData(I)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mPrice:Landroid/widget/TextView;

    move-object/from16 v35, v0

    const-string v36, "#ff6a42"

    invoke-static/range {v36 .. v36}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Landroid/widget/TextView;->setTextColor(I)V

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mPrice:Landroid/widget/TextView;

    move-object/from16 v35, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroid/widget/TextView;->setTextSize(F)V

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->priceLl:Landroid/widget/LinearLayout;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mPrice:Landroid/widget/TextView;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 378
    new-instance v34, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    invoke-direct/range {v34 .. v35}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 379
    .restart local v34       #won:Landroid/widget/TextView;
    new-instance v35, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v36, -0x2

    const/16 v37, -0x2

    invoke-direct/range {v35 .. v37}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    const-string v35, " \uc6d0"

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    const-string v35, "#535353"

    invoke-static/range {v35 .. v35}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setTextColor(I)V

    .line 382
    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->screenDensity:I

    move/from16 v35, v0

    const/16 v36, 0x140

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_3

    .line 383
    const/high16 v35, 0x4140

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setTextSize(F)V

    .line 386
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->priceLl:Landroid/widget/LinearLayout;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 388
    new-instance v5, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 389
    .local v5, centerLine:Landroid/widget/LinearLayout;
    new-instance v35, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v36, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-direct {v0, v1, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    const-string v35, "#d4d7dd"

    invoke-static/range {v35 .. v35}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v35

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 391
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 393
    new-instance v35, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-direct/range {v35 .. v36}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mRegDate:Landroid/widget/TextView;

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mRegDate:Landroid/widget/TextView;

    move-object/from16 v35, v0

    new-instance v36, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v36

    move/from16 v1, v18

    invoke-direct {v0, v1, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v35 .. v36}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mRegDate:Landroid/widget/TextView;

    move-object/from16 v35, v0

    const/16 v36, 0x11

    invoke-virtual/range {v35 .. v36}, Landroid/widget/TextView;->setGravity(I)V

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mRegDate:Landroid/widget/TextView;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->regDate:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mRegDate:Landroid/widget/TextView;

    move-object/from16 v35, v0

    const-string v36, "#f5f4ec"

    invoke-static/range {v36 .. v36}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mRegDate:Landroid/widget/TextView;

    move-object/from16 v35, v0

    const-string v36, "#2c3b65"

    invoke-static/range {v36 .. v36}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Landroid/widget/TextView;->setTextColor(I)V

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mRegDate:Landroid/widget/TextView;

    move-object/from16 v35, v0

    const/high16 v36, 0x4120

    invoke-virtual/range {v35 .. v36}, Landroid/widget/TextView;->setTextSize(F)V

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mRegDate:Landroid/widget/TextView;

    move-object/from16 v35, v0

    const/16 v36, 0x8

    const/16 v37, 0x0

    const/16 v38, 0x6

    const/16 v39, 0x0

    invoke-virtual/range {v35 .. v39}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mRegDate:Landroid/widget/TextView;

    move-object/from16 v35, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 406
    new-instance v31, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 407
    .restart local v31       #thirdLine:Landroid/widget/LinearLayout;
    new-instance v35, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v36, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-direct {v0, v1, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    const-string v35, "#d4d7dd"

    invoke-static/range {v35 .. v35}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v35

    move-object/from16 v0, v31

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 409
    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 411
    new-instance v35, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-direct/range {v35 .. v36}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mEndDate:Landroid/widget/TextView;

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mEndDate:Landroid/widget/TextView;

    move-object/from16 v35, v0

    new-instance v36, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v36

    invoke-direct {v0, v7, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v35 .. v36}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mEndDate:Landroid/widget/TextView;

    move-object/from16 v35, v0

    const/16 v36, 0x11

    invoke-virtual/range {v35 .. v36}, Landroid/widget/TextView;->setGravity(I)V

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mEndDate:Landroid/widget/TextView;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->endDate:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mEndDate:Landroid/widget/TextView;

    move-object/from16 v35, v0

    const-string v36, "#f5f4ec"

    invoke-static/range {v36 .. v36}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mEndDate:Landroid/widget/TextView;

    move-object/from16 v35, v0

    const-string v36, "#2c3b65"

    invoke-static/range {v36 .. v36}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Landroid/widget/TextView;->setTextColor(I)V

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mEndDate:Landroid/widget/TextView;

    move-object/from16 v35, v0

    const/high16 v36, 0x4120

    invoke-virtual/range {v35 .. v36}, Landroid/widget/TextView;->setTextSize(F)V

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mEndDate:Landroid/widget/TextView;

    move-object/from16 v35, v0

    const/16 v36, 0x8

    const/16 v37, 0x0

    const/16 v38, 0x6

    const/16 v39, 0x0

    invoke-virtual/range {v35 .. v39}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mEndDate:Landroid/widget/TextView;

    move-object/from16 v35, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 424
    new-instance v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 425
    .restart local v19       #rightLine:Landroid/widget/LinearLayout;
    new-instance v35, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v36, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v36

    invoke-direct {v0, v1, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 426
    const-string v35, "#858da6"

    invoke-static/range {v35 .. v35}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v35

    move-object/from16 v0, v19

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 427
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 385
    .end local v5           #centerLine:Landroid/widget/LinearLayout;
    .end local v19           #rightLine:Landroid/widget/LinearLayout;
    .end local v31           #thirdLine:Landroid/widget/LinearLayout;
    :cond_3
    const/high16 v35, 0x4170

    invoke-virtual/range {v34 .. v35}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_1
.end method

.method private viewPortrait(Lcom/feelingk/lguiab/manager/gui/ListItem;)V
    .locals 44
    .parameter "aItem"

    .prologue
    .line 435
    const/16 v34, 0x0

    .line 436
    .local v34, tableHeight:I
    const/16 v31, 0x0

    .line 437
    .local v31, productNameWidth:I
    const/4 v15, 0x0

    .line 438
    .local v15, mRegDateWidth:I
    const/4 v4, 0x0

    .line 439
    .local v4, contentHeight:I
    const/4 v5, 0x0

    .line 441
    .local v5, datePdTop:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->hvga:Z

    move/from16 v40, v0

    if-eqz v40, :cond_0

    .line 442
    const/16 v36, 0x109

    .line 443
    .local v36, tableWidth:I
    const/16 v34, 0x52

    .line 444
    const/16 v31, 0x4b

    .line 445
    const/16 v13, 0x69

    .line 446
    .local v13, mProductNameWidth:I
    const/16 v4, 0x28

    .line 447
    const/16 v15, 0x51

    .line 448
    const/16 v11, 0xc

    .line 449
    .local v11, listPdTop:I
    const/4 v5, 0x5

    .line 474
    :goto_0
    new-instance v33, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 475
    .local v33, table:Landroid/widget/LinearLayout;
    const/16 v40, 0x1

    move-object/from16 v0, v33

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 477
    new-instance v35, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 478
    .local v35, tableParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 479
    const-string v40, "#f0f0f0"

    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v40

    move-object/from16 v0, v33

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 480
    const/16 v40, 0x11

    move-object/from16 v0, v33

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 481
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->addView(Landroid/view/View;)V

    .line 483
    new-instance v8, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-direct {v8, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 485
    .local v8, line:Landroid/widget/LinearLayout;
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v40, 0x1

    move/from16 v0, v36

    move/from16 v1, v40

    invoke-direct {v10, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 486
    .local v10, lineParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 487
    const-string v40, "#858da6"

    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v40

    move/from16 v0, v40

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 488
    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 491
    new-instance v21, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 492
    .local v21, nameTable:Landroid/widget/LinearLayout;
    const/16 v40, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 493
    const/16 v40, 0x11

    move-object/from16 v0, v21

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 494
    move-object/from16 v0, v33

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 496
    new-instance v19, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 498
    .local v19, nameLineLeft:Landroid/widget/LinearLayout;
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v40, 0x1

    move/from16 v0, v40

    invoke-direct {v7, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 499
    .local v7, heightLineParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 500
    const-string v40, "#858da6"

    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v40

    move-object/from16 v0, v19

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 501
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 503
    new-instance v30, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 505
    .local v30, productName:Landroid/widget/LinearLayout;
    new-instance v22, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v22

    move/from16 v1, v31

    invoke-direct {v0, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 506
    .local v22, namellParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 507
    const-string v40, "#f9f9f9"

    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v40

    move-object/from16 v0, v30

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 508
    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 510
    new-instance v16, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 511
    .local v16, name:Landroid/widget/TextView;
    const-string v40, "\uc0c1\ud488\uba85"

    move-object/from16 v0, v16

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    const-string v40, "#2c3b65"

    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v40

    move-object/from16 v0, v16

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 513
    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->screenDensity:I

    move/from16 v40, v0

    const/16 v41, 0x140

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->optView:Z

    move/from16 v40, v0

    if-eqz v40, :cond_2

    .line 514
    const/high16 v40, 0x4130

    move-object/from16 v0, v16

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 517
    :goto_1
    const/16 v40, 0x8

    const/16 v41, 0x6

    const/16 v42, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 518
    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 521
    new-instance v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 522
    .local v17, nameLineCenter:Landroid/widget/LinearLayout;
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 523
    const-string v40, "#d4d7dd"

    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v40

    move-object/from16 v0, v17

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 524
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 527
    new-instance v40, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-direct/range {v40 .. v41}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mProductName:Landroid/widget/TextView;

    .line 529
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v12, v13, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 530
    .local v12, mProductNameParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mProductName:Landroid/widget/TextView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mProductName:Landroid/widget/TextView;

    move-object/from16 v40, v0

    const/16 v41, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/feelingk/lguiab/manager/gui/ListItem;->getData(I)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mProductName:Landroid/widget/TextView;

    move-object/from16 v40, v0

    const-string v41, "#535353"

    invoke-static/range {v41 .. v41}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setTextColor(I)V

    .line 533
    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->screenDensity:I

    move/from16 v40, v0

    const/16 v41, 0x140

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->optView:Z

    move/from16 v40, v0

    if-eqz v40, :cond_3

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mProductName:Landroid/widget/TextView;

    move-object/from16 v40, v0

    const/high16 v41, 0x4130

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setTextSize(F)V

    .line 537
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mProductName:Landroid/widget/TextView;

    move-object/from16 v40, v0

    const/16 v41, 0x8

    const/16 v42, 0x6

    const/16 v43, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v41

    move/from16 v2, v42

    move/from16 v3, v43

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mProductName:Landroid/widget/TextView;

    move-object/from16 v40, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 541
    new-instance v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 542
    .local v18, nameLineCenter2:Landroid/widget/LinearLayout;
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 543
    const-string v40, "#d4d7dd"

    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v40

    move-object/from16 v0, v18

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 544
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 547
    new-instance v32, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 548
    .local v32, regDateLl:Landroid/widget/LinearLayout;
    const/16 v40, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 550
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v14, v15, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 551
    .local v14, mRegDateParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 552
    const-string v40, "#f5f4ec"

    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v40

    move-object/from16 v0, v32

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 553
    const/16 v40, 0x6

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 554
    move-object/from16 v0, v21

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 556
    new-instance v37, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 557
    .local v37, textTegDate:Landroid/widget/TextView;
    const-string v40, "\uad6c\ub9e4\uc77c"

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 558
    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->screenDensity:I

    move/from16 v40, v0

    const/16 v41, 0x140

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->optView:Z

    move/from16 v40, v0

    if-eqz v40, :cond_4

    .line 559
    const/high16 v40, 0x4100

    move-object/from16 v0, v37

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 562
    :goto_3
    const-string v40, "#808080"

    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v40

    move-object/from16 v0, v37

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 563
    move-object/from16 v0, v32

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 565
    new-instance v40, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-direct/range {v40 .. v41}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mRegDate:Landroid/widget/TextView;

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mRegDate:Landroid/widget/TextView;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->regDate:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 567
    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->screenDensity:I

    move/from16 v40, v0

    const/16 v41, 0x140

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->optView:Z

    move/from16 v40, v0

    if-eqz v40, :cond_5

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mRegDate:Landroid/widget/TextView;

    move-object/from16 v40, v0

    const/high16 v41, 0x4100

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setTextSize(F)V

    .line 571
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mRegDate:Landroid/widget/TextView;

    move-object/from16 v40, v0

    const-string v41, "#808080"

    invoke-static/range {v41 .. v41}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setTextColor(I)V

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mRegDate:Landroid/widget/TextView;

    move-object/from16 v40, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 575
    new-instance v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 576
    .local v20, nameLineRight:Landroid/widget/LinearLayout;
    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 577
    const-string v40, "#858da6"

    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v40

    move-object/from16 v0, v20

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 578
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 581
    new-instance v9, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-direct {v9, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 582
    .local v9, line2:Landroid/widget/LinearLayout;
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 583
    const-string v40, "#d4d7dd"

    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v40

    move/from16 v0, v40

    invoke-virtual {v9, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 584
    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 588
    new-instance v29, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 589
    .local v29, priceTable:Landroid/widget/LinearLayout;
    const/16 v40, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 590
    const/16 v40, 0x11

    move-object/from16 v0, v29

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 591
    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 594
    new-instance v26, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 595
    .local v26, priceLineLeft:Landroid/widget/LinearLayout;
    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 596
    const-string v40, "#858da6"

    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v40

    move-object/from16 v0, v26

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 597
    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 599
    new-instance v28, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 600
    .local v28, priceName:Landroid/widget/LinearLayout;
    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 601
    const-string v40, "#f9f9f9"

    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v40

    move-object/from16 v0, v28

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 602
    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 603
    new-instance v23, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 604
    .local v23, price:Landroid/widget/TextView;
    const-string v40, "\uac00\uaca9"

    move-object/from16 v0, v23

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    const-string v40, "#2c3b65"

    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v40

    move-object/from16 v0, v23

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 606
    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->screenDensity:I

    move/from16 v40, v0

    const/16 v41, 0x140

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->optView:Z

    move/from16 v40, v0

    if-eqz v40, :cond_6

    .line 607
    const/high16 v40, 0x4130

    move-object/from16 v0, v23

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 610
    :goto_5
    const/16 v40, 0x8

    const/16 v41, 0x6

    const/16 v42, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 611
    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 613
    new-instance v24, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 614
    .local v24, priceLineCenter:Landroid/widget/LinearLayout;
    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 615
    const-string v40, "#d4d7dd"

    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v40

    move-object/from16 v0, v24

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 616
    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 618
    new-instance v40, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-direct/range {v40 .. v41}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->priceLl:Landroid/widget/LinearLayout;

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->priceLl:Landroid/widget/LinearLayout;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    invoke-virtual/range {v40 .. v41}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->priceLl:Landroid/widget/LinearLayout;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->priceLl:Landroid/widget/LinearLayout;

    move-object/from16 v40, v0

    const/16 v41, 0x8

    const/16 v42, 0x6

    const/16 v43, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v41

    move/from16 v2, v42

    move/from16 v3, v43

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->priceLl:Landroid/widget/LinearLayout;

    move-object/from16 v40, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 624
    new-instance v40, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-direct/range {v40 .. v41}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mPrice:Landroid/widget/TextView;

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mPrice:Landroid/widget/TextView;

    move-object/from16 v40, v0

    const/16 v41, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/feelingk/lguiab/manager/gui/ListItem;->getData(I)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mPrice:Landroid/widget/TextView;

    move-object/from16 v40, v0

    const-string v41, "#ff6a42"

    invoke-static/range {v41 .. v41}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setTextColor(I)V

    .line 627
    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->screenDensity:I

    move/from16 v40, v0

    const/16 v41, 0x140

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->optView:Z

    move/from16 v40, v0

    if-eqz v40, :cond_7

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mPrice:Landroid/widget/TextView;

    move-object/from16 v40, v0

    const/high16 v41, 0x4130

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setTextSize(F)V

    .line 631
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->priceLl:Landroid/widget/LinearLayout;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mPrice:Landroid/widget/TextView;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 633
    new-instance v39, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    invoke-direct/range {v39 .. v40}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 634
    .local v39, won:Landroid/widget/TextView;
    new-instance v40, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v41, -0x2

    const/16 v42, -0x2

    invoke-direct/range {v40 .. v42}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual/range {v39 .. v40}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 635
    const-string v40, " \uc6d0"

    invoke-virtual/range {v39 .. v40}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 636
    const-string v40, "#535353"

    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v40

    invoke-virtual/range {v39 .. v40}, Landroid/widget/TextView;->setTextColor(I)V

    .line 637
    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->screenDensity:I

    move/from16 v40, v0

    const/16 v41, 0x140

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->optView:Z

    move/from16 v40, v0

    if-eqz v40, :cond_8

    .line 638
    const/high16 v40, 0x4130

    invoke-virtual/range {v39 .. v40}, Landroid/widget/TextView;->setTextSize(F)V

    .line 641
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->priceLl:Landroid/widget/LinearLayout;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 644
    new-instance v25, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 645
    .local v25, priceLineCenter2:Landroid/widget/LinearLayout;
    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 646
    const-string v40, "#d4d7dd"

    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v40

    move-object/from16 v0, v25

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 647
    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 650
    new-instance v6, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 651
    .local v6, endDateLl:Landroid/widget/LinearLayout;
    const/16 v40, 0x1

    move/from16 v0, v40

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 652
    invoke-virtual {v6, v14}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 653
    const-string v40, "#f5f4ec"

    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v40

    move/from16 v0, v40

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 654
    const/16 v40, 0x6

    const/16 v41, 0x0

    const/16 v42, 0x0

    move/from16 v0, v40

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v6, v0, v5, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 655
    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 657
    new-instance v38, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 658
    .local v38, textendDate:Landroid/widget/TextView;
    const-string v40, "\ub9cc\ub8cc\uc77c"

    move-object/from16 v0, v38

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 659
    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->screenDensity:I

    move/from16 v40, v0

    const/16 v41, 0x140

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->optView:Z

    move/from16 v40, v0

    if-eqz v40, :cond_9

    .line 660
    const/high16 v40, 0x4100

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 663
    :goto_8
    const-string v40, "#808080"

    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v40

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 664
    move-object/from16 v0, v38

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 666
    new-instance v40, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v41, v0

    invoke-direct/range {v40 .. v41}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mEndDate:Landroid/widget/TextView;

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mEndDate:Landroid/widget/TextView;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->endDate:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 668
    move-object/from16 v0, p0

    iget v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->screenDensity:I

    move/from16 v40, v0

    const/16 v41, 0x140

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->optView:Z

    move/from16 v40, v0

    if-eqz v40, :cond_a

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mEndDate:Landroid/widget/TextView;

    move-object/from16 v40, v0

    const/high16 v41, 0x4100

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setTextSize(F)V

    .line 672
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mEndDate:Landroid/widget/TextView;

    move-object/from16 v40, v0

    const-string v41, "#808080"

    invoke-static/range {v41 .. v41}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setTextColor(I)V

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mEndDate:Landroid/widget/TextView;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 676
    new-instance v27, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 677
    .local v27, priceLineRight:Landroid/widget/LinearLayout;
    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 678
    const-string v40, "#858da6"

    invoke-static/range {v40 .. v40}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v40

    move-object/from16 v0, v27

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 679
    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 686
    return-void

    .line 451
    .end local v6           #endDateLl:Landroid/widget/LinearLayout;
    .end local v7           #heightLineParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v8           #line:Landroid/widget/LinearLayout;
    .end local v9           #line2:Landroid/widget/LinearLayout;
    .end local v10           #lineParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v11           #listPdTop:I
    .end local v12           #mProductNameParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v13           #mProductNameWidth:I
    .end local v14           #mRegDateParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v16           #name:Landroid/widget/TextView;
    .end local v17           #nameLineCenter:Landroid/widget/LinearLayout;
    .end local v18           #nameLineCenter2:Landroid/widget/LinearLayout;
    .end local v19           #nameLineLeft:Landroid/widget/LinearLayout;
    .end local v20           #nameLineRight:Landroid/widget/LinearLayout;
    .end local v21           #nameTable:Landroid/widget/LinearLayout;
    .end local v22           #namellParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v23           #price:Landroid/widget/TextView;
    .end local v24           #priceLineCenter:Landroid/widget/LinearLayout;
    .end local v25           #priceLineCenter2:Landroid/widget/LinearLayout;
    .end local v26           #priceLineLeft:Landroid/widget/LinearLayout;
    .end local v27           #priceLineRight:Landroid/widget/LinearLayout;
    .end local v28           #priceName:Landroid/widget/LinearLayout;
    .end local v29           #priceTable:Landroid/widget/LinearLayout;
    .end local v30           #productName:Landroid/widget/LinearLayout;
    .end local v32           #regDateLl:Landroid/widget/LinearLayout;
    .end local v33           #table:Landroid/widget/LinearLayout;
    .end local v35           #tableParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v36           #tableWidth:I
    .end local v37           #textTegDate:Landroid/widget/TextView;
    .end local v38           #textendDate:Landroid/widget/TextView;
    .end local v39           #won:Landroid/widget/TextView;
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->hd:Z

    move/from16 v40, v0

    if-eqz v40, :cond_1

    .line 452
    const/16 v36, 0x1b4

    .line 453
    .restart local v36       #tableWidth:I
    const/16 v34, 0x8a

    .line 454
    const/16 v31, 0x78

    .line 455
    const/16 v13, 0xa7

    .line 456
    .restart local v13       #mProductNameWidth:I
    const/16 v4, 0x44

    .line 457
    const/16 v15, 0x91

    .line 458
    const/16 v11, 0xc

    .line 459
    .restart local v11       #listPdTop:I
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 462
    .end local v11           #listPdTop:I
    .end local v13           #mProductNameWidth:I
    .end local v36           #tableWidth:I
    :cond_1
    const/16 v36, 0x164

    .line 463
    .restart local v36       #tableWidth:I
    const/16 v34, 0x5c

    .line 464
    const/16 v31, 0x64

    .line 465
    const/16 v13, 0x84

    .line 466
    .restart local v13       #mProductNameWidth:I
    const/16 v4, 0x2d

    .line 467
    const/16 v15, 0x78

    .line 468
    const/16 v11, 0xc

    .line 469
    .restart local v11       #listPdTop:I
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 516
    .restart local v7       #heightLineParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v8       #line:Landroid/widget/LinearLayout;
    .restart local v10       #lineParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v16       #name:Landroid/widget/TextView;
    .restart local v19       #nameLineLeft:Landroid/widget/LinearLayout;
    .restart local v21       #nameTable:Landroid/widget/LinearLayout;
    .restart local v22       #namellParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v30       #productName:Landroid/widget/LinearLayout;
    .restart local v33       #table:Landroid/widget/LinearLayout;
    .restart local v35       #tableParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    const/high16 v40, 0x4160

    move-object/from16 v0, v16

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_1

    .line 536
    .restart local v12       #mProductNameParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v17       #nameLineCenter:Landroid/widget/LinearLayout;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mProductName:Landroid/widget/TextView;

    move-object/from16 v40, v0

    const/high16 v41, 0x4160

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_2

    .line 561
    .restart local v14       #mRegDateParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v18       #nameLineCenter2:Landroid/widget/LinearLayout;
    .restart local v32       #regDateLl:Landroid/widget/LinearLayout;
    .restart local v37       #textTegDate:Landroid/widget/TextView;
    :cond_4
    const v40, 0x4134cccd

    move-object/from16 v0, v37

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_3

    .line 570
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mRegDate:Landroid/widget/TextView;

    move-object/from16 v40, v0

    const v41, 0x4134cccd

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_4

    .line 609
    .restart local v9       #line2:Landroid/widget/LinearLayout;
    .restart local v20       #nameLineRight:Landroid/widget/LinearLayout;
    .restart local v23       #price:Landroid/widget/TextView;
    .restart local v26       #priceLineLeft:Landroid/widget/LinearLayout;
    .restart local v28       #priceName:Landroid/widget/LinearLayout;
    .restart local v29       #priceTable:Landroid/widget/LinearLayout;
    :cond_6
    const/high16 v40, 0x4160

    move-object/from16 v0, v23

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_5

    .line 630
    .restart local v24       #priceLineCenter:Landroid/widget/LinearLayout;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mPrice:Landroid/widget/TextView;

    move-object/from16 v40, v0

    const/high16 v41, 0x4160

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_6

    .line 640
    .restart local v39       #won:Landroid/widget/TextView;
    :cond_8
    const/high16 v40, 0x4160

    invoke-virtual/range {v39 .. v40}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_7

    .line 662
    .restart local v6       #endDateLl:Landroid/widget/LinearLayout;
    .restart local v25       #priceLineCenter2:Landroid/widget/LinearLayout;
    .restart local v38       #textendDate:Landroid/widget/TextView;
    :cond_9
    const v40, 0x4134cccd

    move-object/from16 v0, v38

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_8

    .line 671
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mEndDate:Landroid/widget/TextView;

    move-object/from16 v40, v0

    const v41, 0x4134cccd

    invoke-virtual/range {v40 .. v41}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_9
.end method


# virtual methods
.method public setAId(Ljava/lang/String;)V
    .locals 1
    .parameter "aid"

    .prologue
    .line 712
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mAId:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 713
    return-void
.end method

.method public setEndDate(Ljava/lang/String;)V
    .locals 1
    .parameter "endDate"

    .prologue
    .line 724
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mEndDate:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 725
    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 1
    .parameter "price"

    .prologue
    .line 718
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mPrice:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 719
    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 1
    .parameter "productName"

    .prologue
    .line 715
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mProductName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 716
    return-void
.end method

.method public setRegDate(Ljava/lang/String;)V
    .locals 1
    .parameter "regDate"

    .prologue
    .line 721
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mRegDate:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 722
    return-void
.end method

.method public setText(ILjava/lang/String;)V
    .locals 1
    .parameter "index"
    .parameter "data"

    .prologue
    .line 697
    if-nez p1, :cond_1

    .line 698
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mRegDate:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 709
    :cond_0
    :goto_0
    return-void

    .line 699
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 700
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mEndDate:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 701
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 702
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mProductName:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 703
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/feelingk/lguiab/manager/gui/PurchaseListView;->mPrice:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
