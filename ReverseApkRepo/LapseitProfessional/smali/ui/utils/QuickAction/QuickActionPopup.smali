.class public Lui/utils/QuickAction/QuickActionPopup;
.super Landroid/widget/PopupWindow;
.source "QuickActionPopup.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field protected c:Landroid/content/Context;

.field protected itemPaddingHoriz:I

.field protected itemPaddingVert:I

.field protected mActionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lui/utils/QuickAction/QuickActionItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mContainerView:Landroid/view/ViewGroup;

.field protected mContentAnimation:Landroid/view/animation/Animation;

.field protected mContentEndAnimation:Landroid/view/animation/Animation;

.field protected mContentView:Landroid/view/View;

.field windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 4
    .parameter "contentView"
    .parameter "width"
    .parameter "height"
    .parameter "focusable"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lui/utils/QuickAction/QuickActionPopup;->c:Landroid/content/Context;

    .line 48
    iget-object v0, p0, Lui/utils/QuickAction/QuickActionPopup;->c:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lui/utils/QuickAction/QuickActionPopup;->windowManager:Landroid/view/WindowManager;

    .line 50
    invoke-virtual {p0, v3}, Lui/utils/QuickAction/QuickActionPopup;->setTouchable(Z)V

    .line 51
    invoke-virtual {p0, v2}, Lui/utils/QuickAction/QuickActionPopup;->setFocusable(Z)V

    .line 52
    invoke-virtual {p0, v2}, Lui/utils/QuickAction/QuickActionPopup;->setOutsideTouchable(Z)V

    .line 53
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {p0, v0}, Lui/utils/QuickAction/QuickActionPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    const/high16 v0, 0x4138

    iget-object v1, p0, Lui/utils/QuickAction/QuickActionPopup;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v3, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lui/utils/QuickAction/QuickActionPopup;->itemPaddingHoriz:I

    .line 56
    const/high16 v0, 0x4120

    iget-object v1, p0, Lui/utils/QuickAction/QuickActionPopup;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v3, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lui/utils/QuickAction/QuickActionPopup;->itemPaddingVert:I

    .line 57
    iput v2, p0, Lui/utils/QuickAction/QuickActionPopup;->itemPaddingHoriz:I

    .line 58
    iput v2, p0, Lui/utils/QuickAction/QuickActionPopup;->itemPaddingVert:I

    .line 60
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lui/utils/QuickAction/QuickActionPopup;->setWidth(I)V

    .line 61
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lui/utils/QuickAction/QuickActionPopup;->setHeight(I)V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lui/utils/QuickAction/QuickActionPopup;->mActionList:Ljava/util/ArrayList;

    .line 65
    invoke-virtual {p0, v3}, Lui/utils/QuickAction/QuickActionPopup;->setTouchable(Z)V

    .line 66
    invoke-virtual {p0, v2}, Lui/utils/QuickAction/QuickActionPopup;->setOutsideTouchable(Z)V

    .line 67
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {p0, v0}, Lui/utils/QuickAction/QuickActionPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    return-void
.end method


# virtual methods
.method public createActionList(Landroid/view/ViewGroup;)V
    .locals 12
    .parameter "containerView"

    .prologue
    .line 104
    const/4 v1, 0x0

    .line 105
    .local v1, icon:Landroid/widget/ImageView;
    const/4 v5, 0x0

    .line 108
    .local v5, title:Landroid/widget/TextView;
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 112
    const/4 v4, 0x0

    .line 118
    .local v4, maxWidth:F
    iget-object v7, p0, Lui/utils/QuickAction/QuickActionPopup;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40a0

    div-float v4, v7, v8

    .line 120
    iget-object v7, p0, Lui/utils/QuickAction/QuickActionPopup;->mActionList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 178
    return-void

    .line 120
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lui/utils/QuickAction/QuickActionItem;

    .line 121
    .local v0, actionItem:Lui/utils/QuickAction/QuickActionItem;
    new-instance v3, Landroid/widget/RelativeLayout;

    iget-object v8, p0, Lui/utils/QuickAction/QuickActionPopup;->c:Landroid/content/Context;

    invoke-direct {v3, v8}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 122
    .local v3, itemView:Landroid/widget/RelativeLayout;
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 125
    const/4 v8, 0x0

    iget v9, p0, Lui/utils/QuickAction/QuickActionPopup;->itemPaddingVert:I

    const/4 v10, 0x0

    iget v11, p0, Lui/utils/QuickAction/QuickActionPopup;->itemPaddingVert:I

    invoke-virtual {v3, v8, v9, v10, v11}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 126
    const v8, 0xffffff

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 128
    invoke-virtual {v0}, Lui/utils/QuickAction/QuickActionItem;->getTitle()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 129
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v6, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 130
    .local v6, titleLayout:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v8, 0xc

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 131
    const/16 v8, 0xe

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 133
    new-instance v5, Landroid/widget/TextView;

    .end local v5           #title:Landroid/widget/TextView;
    iget-object v8, p0, Lui/utils/QuickAction/QuickActionPopup;->c:Landroid/content/Context;

    invoke-direct {v5, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 134
    .restart local v5       #title:Landroid/widget/TextView;
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    const-wide v10, 0x40b3880000000000L

    mul-double/2addr v8, v10

    double-to-int v8, v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setId(I)V

    .line 135
    const/4 v8, -0x1

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 137
    invoke-virtual {v0}, Lui/utils/QuickAction/QuickActionItem;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    const/high16 v8, 0x4120

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 139
    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-virtual {v5, v8, v9}, Landroid/widget/TextView;->measure(II)V

    .line 140
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xa

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 141
    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 143
    const/4 v8, 0x0

    cmpl-float v8, v4, v8

    if-lez v8, :cond_1

    .line 144
    float-to-int v8, v4

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 145
    float-to-int v8, v4

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setWidth(I)V

    .line 148
    :cond_1
    invoke-virtual {v3, v5, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    .end local v6           #titleLayout:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    invoke-virtual {v0}, Lui/utils/QuickAction/QuickActionItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 152
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x1

    invoke-direct {v2, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 153
    .local v2, iconLayout:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v8, 0xa

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 154
    const/16 v8, 0xe

    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 155
    const/4 v8, 0x2

    invoke-virtual {v5}, Landroid/widget/TextView;->getId()I

    move-result v9

    invoke-virtual {v2, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 157
    new-instance v1, Landroid/widget/ImageView;

    .end local v1           #icon:Landroid/widget/ImageView;
    iget-object v8, p0, Lui/utils/QuickAction/QuickActionPopup;->c:Landroid/content/Context;

    invoke-direct {v1, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 158
    .restart local v1       #icon:Landroid/widget/ImageView;
    invoke-virtual {v0}, Lui/utils/QuickAction/QuickActionItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 160
    sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 161
    const/4 v8, 0x0

    const/4 v9, 0x5

    const/4 v10, 0x0

    const/4 v11, 0x5

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 162
    invoke-virtual {v3, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    .end local v2           #iconLayout:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    invoke-virtual {v0}, Lui/utils/QuickAction/QuickActionItem;->getListener()Landroid/view/View$OnClickListener;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 166
    invoke-virtual {v0}, Lui/utils/QuickAction/QuickActionItem;->getListener()Landroid/view/View$OnClickListener;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    :cond_4
    invoke-virtual {v0}, Lui/utils/QuickAction/QuickActionItem;->getAction()Ljava/lang/Enum;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 170
    invoke-virtual {v0}, Lui/utils/QuickAction/QuickActionItem;->getAction()Ljava/lang/Enum;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 173
    :cond_5
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 174
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 176
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public dismissWithAnimation(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 222
    if-eqz p1, :cond_0

    .line 223
    iget-object v0, p0, Lui/utils/QuickAction/QuickActionPopup;->c:Landroid/content/Context;

    const v1, 0x7f040002

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lui/utils/QuickAction/QuickActionPopup;->mContentEndAnimation:Landroid/view/animation/Animation;

    .line 224
    iget-object v0, p0, Lui/utils/QuickAction/QuickActionPopup;->mContentEndAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 225
    iget-object v0, p0, Lui/utils/QuickAction/QuickActionPopup;->mContentView:Landroid/view/View;

    iget-object v1, p0, Lui/utils/QuickAction/QuickActionPopup;->mContentEndAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 229
    :goto_0
    return-void

    .line 227
    :cond_0
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0
.end method

.method public getActionList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lui/utils/QuickAction/QuickActionItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lui/utils/QuickAction/QuickActionPopup;->mActionList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected invertContentView(Z)V
    .locals 0
    .parameter "invert"

    .prologue
    .line 100
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 216
    iget-object v0, p0, Lui/utils/QuickAction/QuickActionPopup;->mContentEndAnimation:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_0

    .line 217
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 219
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 212
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 210
    return-void
.end method

.method public setActionList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lui/utils/QuickAction/QuickActionItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p1, actionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lui/utils/QuickAction/QuickActionItem;>;"
    iput-object p1, p0, Lui/utils/QuickAction/QuickActionPopup;->mActionList:Ljava/util/ArrayList;

    .line 199
    return-void
.end method

.method public setContainerView(I)V
    .locals 1
    .parameter "layoutResID"

    .prologue
    .line 194
    iget-object v0, p0, Lui/utils/QuickAction/QuickActionPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lui/utils/QuickAction/QuickActionPopup;->mContainerView:Landroid/view/ViewGroup;

    .line 195
    return-void
.end method

.method public setContentAnimation(I)V
    .locals 1
    .parameter "animationResID"

    .prologue
    .line 206
    iget-object v0, p0, Lui/utils/QuickAction/QuickActionPopup;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lui/utils/QuickAction/QuickActionPopup;->mContentAnimation:Landroid/view/animation/Animation;

    .line 207
    return-void
.end method

.method public setContentView(I)V
    .locals 2
    .parameter "layoutResID"

    .prologue
    .line 190
    iget-object v0, p0, Lui/utils/QuickAction/QuickActionPopup;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lui/utils/QuickAction/QuickActionPopup;->setContentView(Landroid/view/View;)V

    .line 191
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3
    .parameter "contentView"

    .prologue
    const/4 v2, -0x2

    .line 182
    iput-object p1, p0, Lui/utils/QuickAction/QuickActionPopup;->mContentView:Landroid/view/View;

    .line 183
    iget-object v0, p0, Lui/utils/QuickAction/QuickActionPopup;->mContentView:Landroid/view/View;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    iget-object v0, p0, Lui/utils/QuickAction/QuickActionPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v2, v2}, Landroid/view/View;->measure(II)V

    .line 186
    iget-object v0, p0, Lui/utils/QuickAction/QuickActionPopup;->mContentView:Landroid/view/View;

    invoke-super {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 187
    return-void
.end method

.method protected showAsQuickAction(Landroid/view/View;)V
    .locals 8
    .parameter "anchor"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 72
    iget-object v2, p0, Lui/utils/QuickAction/QuickActionPopup;->mContainerView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Lui/utils/QuickAction/QuickActionPopup;->createActionList(Landroid/view/ViewGroup;)V

    .line 74
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 75
    .local v1, location:[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    aget v2, v1, v7

    aget v3, v1, v6

    aget v4, v1, v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v5, v1, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 82
    .local v0, anchorRect:Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, p1, v7, v2, v3}, Lui/utils/QuickAction/QuickActionPopup;->showAtLocation(Landroid/view/View;III)V

    .line 92
    invoke-virtual {p0, v7}, Lui/utils/QuickAction/QuickActionPopup;->invertContentView(Z)V

    .line 94
    iget-object v2, p0, Lui/utils/QuickAction/QuickActionPopup;->mContentAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_0

    .line 95
    iget-object v2, p0, Lui/utils/QuickAction/QuickActionPopup;->mContentView:Landroid/view/View;

    iget-object v3, p0, Lui/utils/QuickAction/QuickActionPopup;->mContentAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 98
    :cond_0
    return-void
.end method
