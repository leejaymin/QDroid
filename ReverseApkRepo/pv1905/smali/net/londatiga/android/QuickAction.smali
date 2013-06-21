.class public Lnet/londatiga/android/QuickAction;
.super Lnet/londatiga/android/CustomPopupWindow;
.source "QuickAction.java"


# static fields
.field public static final ANIM_AUTO:I = 0x4

.field protected static final ANIM_GROW_FROM_CENTER:I = 0x3

.field protected static final ANIM_GROW_FROM_LEFT:I = 0x1

.field protected static final ANIM_GROW_FROM_RIGHT:I = 0x2


# instance fields
.field private actionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/londatiga/android/ActionItem;",
            ">;"
        }
    .end annotation
.end field

.field private animStyle:I

.field private animateTrack:Z

.field private final context:Landroid/content/Context;

.field private final inflater:Landroid/view/LayoutInflater;

.field private final mArrowDown:Landroid/widget/ImageView;

.field private final mArrowUp:Landroid/widget/ImageView;

.field private mTrack:Landroid/view/ViewGroup;

.field private final mTrackAnim:Landroid/view/animation/Animation;

.field private final root:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3
    .parameter "anchor"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lnet/londatiga/android/CustomPopupWindow;-><init>(Landroid/view/View;)V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/londatiga/android/QuickAction;->actionList:Ljava/util/ArrayList;

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lnet/londatiga/android/QuickAction;->context:Landroid/content/Context;

    .line 59
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lnet/londatiga/android/QuickAction;->inflater:Landroid/view/LayoutInflater;

    .line 61
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030028

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lnet/londatiga/android/QuickAction;->root:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->root:Landroid/view/View;

    const v1, 0x7f0c0090

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnet/londatiga/android/QuickAction;->mArrowDown:Landroid/widget/ImageView;

    .line 64
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->root:Landroid/view/View;

    const v1, 0x7f0c008c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnet/londatiga/android/QuickAction;->mArrowUp:Landroid/widget/ImageView;

    .line 66
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->root:Landroid/view/View;

    invoke-virtual {p0, v0}, Lnet/londatiga/android/QuickAction;->setContentView(Landroid/view/View;)V

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040007

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lnet/londatiga/android/QuickAction;->mTrackAnim:Landroid/view/animation/Animation;

    .line 70
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->mTrackAnim:Landroid/view/animation/Animation;

    new-instance v1, Lnet/londatiga/android/QuickAction$1;

    invoke-direct {v1, p0}, Lnet/londatiga/android/QuickAction$1;-><init>(Lnet/londatiga/android/QuickAction;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 80
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->root:Landroid/view/View;

    const v1, 0x7f0c008e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lnet/londatiga/android/QuickAction;->mTrack:Landroid/view/ViewGroup;

    .line 81
    const/4 v0, 0x4

    iput v0, p0, Lnet/londatiga/android/QuickAction;->animStyle:I

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/londatiga/android/QuickAction;->animateTrack:Z

    .line 83
    return-void
.end method

.method private createActionList()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 201
    const/4 v2, 0x1

    .line 203
    .local v2, index:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v6, p0, Lnet/londatiga/android/QuickAction;->actionList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v0, v6, :cond_0

    .line 217
    return-void

    .line 204
    :cond_0
    iget-object v6, p0, Lnet/londatiga/android/QuickAction;->actionList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/londatiga/android/ActionItem;

    invoke-virtual {v6}, Lnet/londatiga/android/ActionItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 205
    .local v4, title:Ljava/lang/String;
    iget-object v6, p0, Lnet/londatiga/android/QuickAction;->actionList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/londatiga/android/ActionItem;

    invoke-virtual {v6}, Lnet/londatiga/android/ActionItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 206
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, Lnet/londatiga/android/QuickAction;->actionList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/londatiga/android/ActionItem;

    invoke-virtual {v6}, Lnet/londatiga/android/ActionItem;->getListener()Landroid/view/View$OnClickListener;

    move-result-object v3

    .line 208
    .local v3, listener:Landroid/view/View$OnClickListener;
    invoke-direct {p0, v4, v1, v3}, Lnet/londatiga/android/QuickAction;->getActionItem(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v5

    .line 210
    .local v5, view:Landroid/view/View;
    invoke-virtual {v5, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 211
    invoke-virtual {v5, v7}, Landroid/view/View;->setClickable(Z)V

    .line 213
    iget-object v6, p0, Lnet/londatiga/android/QuickAction;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v6, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 215
    add-int/lit8 v2, v2, 0x1

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getActionItem(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 7
    .parameter "title"
    .parameter "icon"
    .parameter "listener"

    .prologue
    const/16 v6, 0x8

    .line 228
    iget-object v3, p0, Lnet/londatiga/android/QuickAction;->inflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030001

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 229
    .local v0, container:Landroid/widget/LinearLayout;
    const v3, 0x7f0c0006

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 230
    .local v1, img:Landroid/widget/ImageView;
    const v3, 0x7f0c0007

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 232
    .local v2, text:Landroid/widget/TextView;
    if-eqz p2, :cond_1

    .line 233
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 238
    :goto_0
    if-eqz p1, :cond_2

    .line 239
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    :goto_1
    if-eqz p3, :cond_0

    .line 245
    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    :cond_0
    return-object v0

    .line 235
    :cond_1
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 241
    :cond_2
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private setAnimationStyle(IIZ)V
    .locals 7
    .parameter "screenWidth"
    .parameter "requestedX"
    .parameter "onTop"

    .prologue
    const v4, 0x7f0b000b

    const v1, 0x7f0b0009

    const v5, 0x7f0b0007

    const v2, 0x7f0b0005

    const v3, 0x7f0b0006

    .line 164
    iget-object v6, p0, Lnet/londatiga/android/QuickAction;->mArrowUp:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v0, p2, v6

    .line 166
    .local v0, arrowPos:I
    iget v6, p0, Lnet/londatiga/android/QuickAction;->animStyle:I

    packed-switch v6, :pswitch_data_0

    .line 190
    :goto_0
    return-void

    .line 168
    :pswitch_0
    iget-object v3, p0, Lnet/londatiga/android/QuickAction;->window:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_0

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    .line 172
    :pswitch_1
    iget-object v2, p0, Lnet/londatiga/android/QuickAction;->window:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_1

    const v1, 0x7f0b000a

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_2

    .line 176
    :pswitch_2
    iget-object v2, p0, Lnet/londatiga/android/QuickAction;->window:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_2

    move v1, v4

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    :cond_2
    move v1, v5

    goto :goto_3

    .line 180
    :pswitch_3
    div-int/lit8 v6, p1, 0x4

    if-gt v0, v6, :cond_4

    .line 181
    iget-object v3, p0, Lnet/londatiga/android/QuickAction;->window:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_3

    :goto_4
    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_4

    .line 182
    :cond_4
    div-int/lit8 v1, p1, 0x4

    if-le v0, v1, :cond_6

    div-int/lit8 v1, p1, 0x4

    mul-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_6

    .line 183
    iget-object v1, p0, Lnet/londatiga/android/QuickAction;->window:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_5

    :goto_5
    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    :cond_5
    move v4, v5

    goto :goto_5

    .line 185
    :cond_6
    iget-object v1, p0, Lnet/londatiga/android/QuickAction;->window:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_7

    :cond_7
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showArrow(II)V
    .locals 5
    .parameter "whichArrow"
    .parameter "requestedX"

    .prologue
    const v4, 0x7f0c008c

    .line 258
    if-ne p1, v4, :cond_0

    iget-object v3, p0, Lnet/londatiga/android/QuickAction;->mArrowUp:Landroid/widget/ImageView;

    .line 259
    .local v3, showArrow:Landroid/view/View;
    :goto_0
    if-ne p1, v4, :cond_1

    iget-object v1, p0, Lnet/londatiga/android/QuickAction;->mArrowDown:Landroid/widget/ImageView;

    .line 261
    .local v1, hideArrow:Landroid/view/View;
    :goto_1
    iget-object v4, p0, Lnet/londatiga/android/QuickAction;->mArrowUp:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    .line 263
    .local v0, arrowWidth:I
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 265
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 267
    .local v2, param:Landroid/view/ViewGroup$MarginLayoutParams;
    div-int/lit8 v4, v0, 0x2

    sub-int v4, p2, v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 269
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 270
    return-void

    .line 258
    .end local v0           #arrowWidth:I
    .end local v1           #hideArrow:Landroid/view/View;
    .end local v2           #param:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v3           #showArrow:Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lnet/londatiga/android/QuickAction;->mArrowDown:Landroid/widget/ImageView;

    goto :goto_0

    .line 259
    .restart local v3       #showArrow:Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lnet/londatiga/android/QuickAction;->mArrowUp:Landroid/widget/ImageView;

    goto :goto_1
.end method


# virtual methods
.method public addActionItem(Lnet/londatiga/android/ActionItem;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 109
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->actionList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    return-void
.end method

.method public animateTrack(Z)V
    .locals 0
    .parameter "animateTrack"

    .prologue
    .line 91
    iput-boolean p1, p0, Lnet/londatiga/android/QuickAction;->animateTrack:Z

    .line 92
    return-void
.end method

.method public setAnimStyle(I)V
    .locals 0
    .parameter "animStyle"

    .prologue
    .line 100
    iput p1, p0, Lnet/londatiga/android/QuickAction;->animStyle:I

    .line 101
    return-void
.end method

.method public show()V
    .locals 15

    .prologue
    const/4 v12, 0x1

    const/4 v14, 0x0

    const/4 v13, -0x2

    .line 116
    invoke-virtual {p0}, Lnet/londatiga/android/QuickAction;->preShow()V

    .line 118
    const/4 v8, 0x2

    new-array v1, v8, [I

    .line 120
    .local v1, location:[I
    iget-object v8, p0, Lnet/londatiga/android/QuickAction;->anchor:Landroid/view/View;

    invoke-virtual {v8, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 122
    new-instance v0, Landroid/graphics/Rect;

    aget v8, v1, v14

    aget v9, v1, v12

    aget v10, v1, v14

    iget-object v11, p0, Lnet/londatiga/android/QuickAction;->anchor:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    aget v11, v1, v12

    .line 123
    iget-object v12, p0, Lnet/londatiga/android/QuickAction;->anchor:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    .line 122
    invoke-direct {v0, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 125
    .local v0, anchorRect:Landroid/graphics/Rect;
    iget-object v8, p0, Lnet/londatiga/android/QuickAction;->root:Landroid/view/View;

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v9, v13, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    iget-object v8, p0, Lnet/londatiga/android/QuickAction;->root:Landroid/view/View;

    invoke-virtual {v8, v13, v13}, Landroid/view/View;->measure(II)V

    .line 128
    iget-object v8, p0, Lnet/londatiga/android/QuickAction;->root:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 129
    .local v4, rootWidth:I
    iget-object v8, p0, Lnet/londatiga/android/QuickAction;->root:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 131
    .local v3, rootHeight:I
    iget-object v8, p0, Lnet/londatiga/android/QuickAction;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Display;->getWidth()I

    move-result v5

    .line 134
    .local v5, screenWidth:I
    sub-int v8, v5, v4

    div-int/lit8 v6, v8, 0x2

    .line 135
    .local v6, xPos:I
    iget v8, v0, Landroid/graphics/Rect;->top:I

    sub-int v7, v8, v3

    .line 137
    .local v7, yPos:I
    const/4 v2, 0x1

    .line 140
    .local v2, onTop:Z
    iget v8, v0, Landroid/graphics/Rect;->top:I

    if-le v3, v8, :cond_0

    .line 141
    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    .line 142
    const/4 v2, 0x0

    .line 145
    :cond_0
    if-eqz v2, :cond_2

    const v8, 0x7f0c0090

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    invoke-direct {p0, v8, v9}, Lnet/londatiga/android/QuickAction;->showArrow(II)V

    .line 147
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    invoke-direct {p0, v5, v8, v2}, Lnet/londatiga/android/QuickAction;->setAnimationStyle(IIZ)V

    .line 149
    invoke-direct {p0}, Lnet/londatiga/android/QuickAction;->createActionList()V

    .line 151
    iget-object v8, p0, Lnet/londatiga/android/QuickAction;->window:Landroid/widget/PopupWindow;

    iget-object v9, p0, Lnet/londatiga/android/QuickAction;->anchor:Landroid/view/View;

    invoke-virtual {v8, v9, v14, v6, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 153
    iget-boolean v8, p0, Lnet/londatiga/android/QuickAction;->animateTrack:Z

    if-eqz v8, :cond_1

    iget-object v8, p0, Lnet/londatiga/android/QuickAction;->mTrack:Landroid/view/ViewGroup;

    iget-object v9, p0, Lnet/londatiga/android/QuickAction;->mTrackAnim:Landroid/view/animation/Animation;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 154
    :cond_1
    return-void

    .line 145
    :cond_2
    const v8, 0x7f0c008c

    goto :goto_0
.end method
