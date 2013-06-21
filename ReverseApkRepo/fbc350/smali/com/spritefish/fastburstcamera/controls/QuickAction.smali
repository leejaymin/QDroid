.class public Lcom/spritefish/fastburstcamera/controls/QuickAction;
.super Lcom/spritefish/fastburstcamera/controls/CustomPopupWindow;
.source "QuickAction.java"


# static fields
.field public static final ANIM_AUTO:I = 0x5

.field protected static final ANIM_GROW_FROM_CENTER:I = 0x3

.field protected static final ANIM_GROW_FROM_LEFT:I = 0x1

.field protected static final ANIM_GROW_FROM_RIGHT:I = 0x2

.field public static final ANIM_REFLECT:I = 0x4


# instance fields
.field private actionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/spritefish/fastburstcamera/controls/ActionItem;",
            ">;"
        }
    .end annotation
.end field

.field private animStyle:I

.field private final context:Landroid/content/Context;

.field private final inflater:Landroid/view/LayoutInflater;

.field private final mArrowDown:Landroid/widget/ImageView;

.field private final mArrowUp:Landroid/widget/ImageView;

.field private mTrack:Landroid/view/ViewGroup;

.field private final root:Landroid/view/View;

.field private scroller:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .parameter "anchor"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/spritefish/fastburstcamera/controls/CustomPopupWindow;-><init>(Landroid/view/View;)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->actionList:Ljava/util/ArrayList;

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->context:Landroid/content/Context;

    .line 50
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->inflater:Landroid/view/LayoutInflater;

    .line 52
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030010

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->root:Landroid/view/View;

    .line 54
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->root:Landroid/view/View;

    const v1, 0x7f0d0056

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->mArrowDown:Landroid/widget/ImageView;

    .line 55
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->root:Landroid/view/View;

    const v1, 0x7f0d0055

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->mArrowUp:Landroid/widget/ImageView;

    .line 57
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->root:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/spritefish/fastburstcamera/controls/QuickAction;->setContentView(Landroid/view/View;)V

    .line 59
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->root:Landroid/view/View;

    const v1, 0x7f0d0054

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->mTrack:Landroid/view/ViewGroup;

    .line 60
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->root:Landroid/view/View;

    const v1, 0x7f0d0053

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->scroller:Landroid/widget/ScrollView;

    .line 61
    const/4 v0, 0x5

    iput v0, p0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->animStyle:I

    .line 62
    return-void
.end method

.method private createActionList()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 195
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->actionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 205
    return-void

    .line 195
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spritefish/fastburstcamera/controls/ActionItem;

    .line 196
    .local v0, item:Lcom/spritefish/fastburstcamera/controls/ActionItem;
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->inflater:Landroid/view/LayoutInflater;

    invoke-interface {v0, v3}, Lcom/spritefish/fastburstcamera/controls/ActionItem;->getActionItem(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v1

    .line 198
    .local v1, view:Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 199
    invoke-virtual {v1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 201
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private setAnimationStyle(IIZ)V
    .locals 7
    .parameter "screenWidth"
    .parameter "requestedX"
    .parameter "onTop"

    .prologue
    const v1, 0x7f0b0008

    const v4, 0x7f0b0007

    const v3, 0x7f0b0004

    const v2, 0x7f0b0003

    const v5, 0x7f0b0002

    .line 158
    iget-object v6, p0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->mArrowUp:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v0, p2, v6

    .line 160
    .local v0, arrowPos:I
    iget v6, p0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->animStyle:I

    packed-switch v6, :pswitch_data_0

    .line 188
    :goto_0
    return-void

    .line 162
    :pswitch_0
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->window:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_0

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    .line 166
    :pswitch_1
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->window:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_1

    const v1, 0x7f0b0009

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_2

    .line 170
    :pswitch_2
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->window:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_2

    move v1, v4

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    :cond_2
    move v1, v5

    goto :goto_3

    .line 174
    :pswitch_3
    iget-object v2, p0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->window:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_3

    const v1, 0x7f0b000a

    :goto_4
    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    :cond_3
    const v1, 0x7f0b0005

    goto :goto_4

    .line 178
    :pswitch_4
    div-int/lit8 v6, p1, 0x4

    if-gt v0, v6, :cond_5

    .line 179
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->window:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_4

    :goto_5
    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_5

    .line 180
    :cond_5
    div-int/lit8 v1, p1, 0x4

    if-le v0, v1, :cond_7

    div-int/lit8 v1, p1, 0x4

    mul-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_7

    .line 181
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->window:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_6

    :goto_6
    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    :cond_6
    move v4, v5

    goto :goto_6

    .line 183
    :cond_7
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->window:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_8

    const v3, 0x7f0b0009

    :cond_8
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private showArrow(II)V
    .locals 5
    .parameter "whichArrow"
    .parameter "requestedX"

    .prologue
    const v4, 0x7f0d0055

    .line 215
    if-ne p1, v4, :cond_0

    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->mArrowUp:Landroid/widget/ImageView;

    .line 216
    .local v3, showArrow:Landroid/view/View;
    :goto_0
    if-ne p1, v4, :cond_1

    iget-object v1, p0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->mArrowDown:Landroid/widget/ImageView;

    .line 218
    .local v1, hideArrow:Landroid/view/View;
    :goto_1
    iget-object v4, p0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->mArrowUp:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    .line 220
    .local v0, arrowWidth:I
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 222
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 224
    .local v2, param:Landroid/view/ViewGroup$MarginLayoutParams;
    div-int/lit8 v4, v0, 0x2

    sub-int v4, p2, v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 226
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 227
    return-void

    .line 215
    .end local v0           #arrowWidth:I
    .end local v1           #hideArrow:Landroid/view/View;
    .end local v2           #param:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v3           #showArrow:Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->mArrowDown:Landroid/widget/ImageView;

    goto :goto_0

    .line 216
    .restart local v3       #showArrow:Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->mArrowUp:Landroid/widget/ImageView;

    goto :goto_1
.end method


# virtual methods
.method public addActionItem(Lcom/spritefish/fastburstcamera/controls/ActionItem;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->actionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method

.method public setAnimStyle(I)V
    .locals 0
    .parameter "animStyle"

    .prologue
    .line 70
    iput p1, p0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->animStyle:I

    .line 71
    return-void
.end method

.method public show()V
    .locals 18

    .prologue
    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/spritefish/fastburstcamera/controls/QuickAction;->preShow()V

    .line 91
    const/4 v13, 0x2

    new-array v5, v13, [I

    .line 93
    .local v5, location:[I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->anchor:Landroid/view/View;

    invoke-virtual {v13, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 95
    new-instance v1, Landroid/graphics/Rect;

    const/4 v13, 0x0

    aget v13, v5, v13

    const/4 v14, 0x1

    aget v14, v5, v14

    const/4 v15, 0x0

    aget v15, v5, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->anchor:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWidth()I

    move-result v16

    add-int v15, v15, v16

    const/16 v16, 0x1

    aget v16, v5, v16

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->anchor:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v17

    add-int v16, v16, v17

    .line 95
    move/from16 v0, v16

    invoke-direct {v1, v13, v14, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 98
    .local v1, anchorRect:Landroid/graphics/Rect;
    invoke-direct/range {p0 .. p0}, Lcom/spritefish/fastburstcamera/controls/QuickAction;->createActionList()V

    .line 100
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->root:Landroid/view/View;

    new-instance v14, Landroid/view/ViewGroup$LayoutParams;

    const/4 v15, -0x2

    const/16 v16, -0x2

    invoke-direct/range {v14 .. v16}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->root:Landroid/view/View;

    const/4 v14, -0x2

    const/4 v15, -0x2

    invoke-virtual {v13, v14, v15}, Landroid/view/View;->measure(II)V

    .line 103
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->root:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 104
    .local v7, rootHeight:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->root:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 106
    .local v8, rootWidth:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Display;->getWidth()I

    move-result v10

    .line 107
    .local v10, screenWidth:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Display;->getHeight()I

    move-result v9

    .line 110
    .local v9, screenHeight:I
    iget v13, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v13, v8

    if-le v13, v10, :cond_1

    .line 111
    iget v13, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->anchor:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v14

    sub-int v14, v8, v14

    sub-int v11, v13, v14

    .line 120
    .local v11, xPos:I
    :goto_0
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 121
    .local v3, dyTop:I
    iget v13, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v9, v13

    .line 123
    .local v2, dyBottom:I
    if-le v3, v2, :cond_3

    const/4 v6, 0x1

    .line 125
    .local v6, onTop:Z
    :goto_1
    if-eqz v6, :cond_5

    .line 126
    if-le v7, v3, :cond_4

    .line 127
    const/16 v12, 0xf

    .line 128
    .local v12, yPos:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->scroller:Landroid/widget/ScrollView;

    invoke-virtual {v13}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 129
    .local v4, l:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->anchor:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v13

    sub-int v13, v3, v13

    iput v13, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 142
    .end local v4           #l:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    :goto_2
    if-eqz v6, :cond_6

    const v13, 0x7f0d0056

    :goto_3
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v14

    sub-int/2addr v14, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/spritefish/fastburstcamera/controls/QuickAction;->showArrow(II)V

    .line 144
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13, v6}, Lcom/spritefish/fastburstcamera/controls/QuickAction;->setAnimationStyle(IIZ)V

    .line 146
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->window:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->anchor:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v11, v12}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 147
    return-void

    .line 113
    .end local v2           #dyBottom:I
    .end local v3           #dyTop:I
    .end local v6           #onTop:Z
    .end local v11           #xPos:I
    .end local v12           #yPos:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->anchor:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v13

    if-le v13, v8, :cond_2

    .line 114
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    div-int/lit8 v14, v8, 0x2

    sub-int v11, v13, v14

    .restart local v11       #xPos:I
    goto :goto_0

    .line 116
    .end local v11           #xPos:I
    :cond_2
    iget v11, v1, Landroid/graphics/Rect;->left:I

    .restart local v11       #xPos:I
    goto :goto_0

    .line 123
    .restart local v2       #dyBottom:I
    .restart local v3       #dyTop:I
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 131
    .restart local v6       #onTop:Z
    :cond_4
    iget v13, v1, Landroid/graphics/Rect;->top:I

    sub-int v12, v13, v7

    .restart local v12       #yPos:I
    goto :goto_2

    .line 134
    .end local v12           #yPos:I
    :cond_5
    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    .line 136
    .restart local v12       #yPos:I
    if-le v7, v2, :cond_0

    .line 137
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/spritefish/fastburstcamera/controls/QuickAction;->scroller:Landroid/widget/ScrollView;

    invoke-virtual {v13}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 138
    .restart local v4       #l:Landroid/view/ViewGroup$LayoutParams;
    iput v2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2

    .line 142
    .end local v4           #l:Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    const v13, 0x7f0d0055

    goto :goto_3
.end method
