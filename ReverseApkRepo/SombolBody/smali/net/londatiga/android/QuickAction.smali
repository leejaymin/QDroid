.class public Lnet/londatiga/android/QuickAction;
.super Lnet/londatiga/android/PopupWindows;
.source "QuickAction.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/londatiga/android/QuickAction$OnActionItemClickListener;,
        Lnet/londatiga/android/QuickAction$OnDismissListener;
    }
.end annotation


# static fields
.field public static final ANIM_AUTO:I = 0x5

.field public static final ANIM_GROW_FROM_CENTER:I = 0x3

.field public static final ANIM_GROW_FROM_LEFT:I = 0x1

.field public static final ANIM_GROW_FROM_RIGHT:I = 0x2

.field public static final ANIM_REFLECT:I = 0x4

.field public static final HORIZONTAL:I = 0x0

.field public static final VERTICAL:I = 0x1


# instance fields
.field private actionItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/londatiga/android/ActionItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimStyle:I

.field private mArrowDown:Landroid/widget/ImageView;

.field private mArrowUp:Landroid/widget/ImageView;

.field private mChildPos:I

.field private mDidAction:Z

.field private mDismissListener:Lnet/londatiga/android/QuickAction$OnDismissListener;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInsertPos:I

.field private mItemClickListener:Lnet/londatiga/android/QuickAction$OnActionItemClickListener;

.field private mOrientation:I

.field private mRootView:Landroid/view/View;

.field private mScroller:Landroid/widget/ScrollView;

.field private mTrack:Landroid/view/ViewGroup;

.field private rootWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 68
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lnet/londatiga/android/QuickAction;-><init>(Landroid/content/Context;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "orientation"

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1}, Lnet/londatiga/android/PopupWindows;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/londatiga/android/QuickAction;->actionItems:Ljava/util/List;

    .line 50
    iput v1, p0, Lnet/londatiga/android/QuickAction;->rootWidth:I

    .line 82
    iput p2, p0, Lnet/londatiga/android/QuickAction;->mOrientation:I

    .line 85
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 84
    iput-object v0, p0, Lnet/londatiga/android/QuickAction;->mInflater:Landroid/view/LayoutInflater;

    .line 87
    iget v0, p0, Lnet/londatiga/android/QuickAction;->mOrientation:I

    if-nez v0, :cond_0

    .line 88
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lnet/londatiga/android/QuickAction;->setRootViewId(I)V

    .line 93
    :goto_0
    const/4 v0, 0x5

    iput v0, p0, Lnet/londatiga/android/QuickAction;->mAnimStyle:I

    .line 94
    iput v1, p0, Lnet/londatiga/android/QuickAction;->mChildPos:I

    .line 95
    return-void

    .line 90
    :cond_0
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lnet/londatiga/android/QuickAction;->setRootViewId(I)V

    goto :goto_0
.end method

.method static synthetic access$0(Lnet/londatiga/android/QuickAction;)Lnet/londatiga/android/QuickAction$OnActionItemClickListener;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->mItemClickListener:Lnet/londatiga/android/QuickAction$OnActionItemClickListener;

    return-object v0
.end method

.method static synthetic access$1(Lnet/londatiga/android/QuickAction;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput-boolean p1, p0, Lnet/londatiga/android/QuickAction;->mDidAction:Z

    return-void
.end method

.method private setAnimationStyle(IIZ)V
    .locals 7
    .parameter "screenWidth"
    .parameter "requestedX"
    .parameter "onTop"

    .prologue
    const v1, 0x7f070008

    const v4, 0x7f070007

    const v3, 0x7f070004

    const v2, 0x7f070003

    const v5, 0x7f070002

    .line 323
    iget-object v6, p0, Lnet/londatiga/android/QuickAction;->mArrowUp:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v0, p2, v6

    .line 325
    .local v0, arrowPos:I
    iget v6, p0, Lnet/londatiga/android/QuickAction;->mAnimStyle:I

    packed-switch v6, :pswitch_data_0

    .line 361
    :goto_0
    return-void

    .line 327
    :pswitch_0
    iget-object v3, p0, Lnet/londatiga/android/QuickAction;->mWindow:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_0

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    :cond_0
    move v1, v2

    .line 328
    goto :goto_1

    .line 332
    :pswitch_1
    iget-object v2, p0, Lnet/londatiga/android/QuickAction;->mWindow:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_1

    const v1, 0x7f070009

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    :cond_1
    move v1, v3

    .line 333
    goto :goto_2

    .line 337
    :pswitch_2
    iget-object v2, p0, Lnet/londatiga/android/QuickAction;->mWindow:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_2

    move v1, v4

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    :cond_2
    move v1, v5

    .line 338
    goto :goto_3

    .line 342
    :pswitch_3
    iget-object v2, p0, Lnet/londatiga/android/QuickAction;->mWindow:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_3

    const v1, 0x7f07000a

    :goto_4
    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    .line 343
    :cond_3
    const v1, 0x7f070005

    goto :goto_4

    .line 347
    :pswitch_4
    div-int/lit8 v6, p1, 0x4

    if-gt v0, v6, :cond_5

    .line 348
    iget-object v3, p0, Lnet/londatiga/android/QuickAction;->mWindow:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_4

    :goto_5
    invoke-virtual {v3, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    :cond_4
    move v1, v2

    .line 349
    goto :goto_5

    .line 350
    :cond_5
    div-int/lit8 v1, p1, 0x4

    if-le v0, v1, :cond_7

    .line 351
    div-int/lit8 v1, p1, 0x4

    mul-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_7

    .line 352
    iget-object v1, p0, Lnet/londatiga/android/QuickAction;->mWindow:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_6

    :goto_6
    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    :cond_6
    move v4, v5

    .line 353
    goto :goto_6

    .line 355
    :cond_7
    iget-object v1, p0, Lnet/londatiga/android/QuickAction;->mWindow:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_8

    const v3, 0x7f070009

    :cond_8
    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto :goto_0

    .line 325
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
    const v4, 0x7f090020

    .line 372
    if-ne p1, v4, :cond_0

    iget-object v3, p0, Lnet/londatiga/android/QuickAction;->mArrowUp:Landroid/widget/ImageView;

    .line 374
    .local v3, showArrow:Landroid/view/View;
    :goto_0
    if-ne p1, v4, :cond_1

    iget-object v1, p0, Lnet/londatiga/android/QuickAction;->mArrowDown:Landroid/widget/ImageView;

    .line 377
    .local v1, hideArrow:Landroid/view/View;
    :goto_1
    iget-object v4, p0, Lnet/londatiga/android/QuickAction;->mArrowUp:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    .line 379
    .local v0, arrowWidth:I
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 382
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 381
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 384
    .local v2, param:Landroid/view/ViewGroup$MarginLayoutParams;
    div-int/lit8 v4, v0, 0x2

    sub-int v4, p2, v4

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 386
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 387
    return-void

    .line 373
    .end local v0           #arrowWidth:I
    .end local v1           #hideArrow:Landroid/view/View;
    .end local v2           #param:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v3           #showArrow:Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lnet/londatiga/android/QuickAction;->mArrowDown:Landroid/widget/ImageView;

    goto :goto_0

    .line 375
    .restart local v3       #showArrow:Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lnet/londatiga/android/QuickAction;->mArrowUp:Landroid/widget/ImageView;

    goto :goto_1
.end method


# virtual methods
.method public addActionItem(Lnet/londatiga/android/ActionItem;)V
    .locals 13
    .parameter "action"

    .prologue
    .line 161
    iget-object v9, p0, Lnet/londatiga/android/QuickAction;->actionItems:Ljava/util/List;

    invoke-interface {v9, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-virtual {p1}, Lnet/londatiga/android/ActionItem;->getTitle()Ljava/lang/String;

    move-result-object v8

    .line 164
    .local v8, title:Ljava/lang/String;
    invoke-virtual {p1}, Lnet/londatiga/android/ActionItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 168
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    iget v9, p0, Lnet/londatiga/android/QuickAction;->mOrientation:I

    if-nez v9, :cond_1

    .line 169
    iget-object v9, p0, Lnet/londatiga/android/QuickAction;->mInflater:Landroid/view/LayoutInflater;

    .line 170
    const v10, 0x7f030001

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 175
    .local v1, container:Landroid/view/View;
    :goto_0
    const v9, 0x7f090002

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 176
    .local v3, img:Landroid/widget/ImageView;
    const v9, 0x7f090003

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 178
    .local v7, text:Landroid/widget/TextView;
    if-eqz v2, :cond_2

    .line 179
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    :goto_1
    if-eqz v8, :cond_3

    .line 185
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    :goto_2
    iget v5, p0, Lnet/londatiga/android/QuickAction;->mChildPos:I

    .line 191
    .local v5, pos:I
    invoke-virtual {p1}, Lnet/londatiga/android/ActionItem;->getActionId()I

    move-result v0

    .line 193
    .local v0, actionId:I
    new-instance v9, Lnet/londatiga/android/QuickAction$1;

    invoke-direct {v9, p0, v5, v0}, Lnet/londatiga/android/QuickAction$1;-><init>(Lnet/londatiga/android/QuickAction;II)V

    invoke-virtual {v1, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/view/View;->setFocusable(Z)V

    .line 209
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/view/View;->setClickable(Z)V

    .line 211
    iget v9, p0, Lnet/londatiga/android/QuickAction;->mOrientation:I

    if-nez v9, :cond_0

    iget v9, p0, Lnet/londatiga/android/QuickAction;->mChildPos:I

    if-eqz v9, :cond_0

    .line 212
    iget-object v9, p0, Lnet/londatiga/android/QuickAction;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f030005

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 214
    .local v6, separator:Landroid/view/View;
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 215
    const/4 v9, -0x2

    const/4 v10, -0x1

    .line 214
    invoke-direct {v4, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 217
    .local v4, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    const/4 v9, 0x5

    const/4 v10, 0x0

    const/4 v11, 0x5

    const/4 v12, 0x0

    invoke-virtual {v6, v9, v10, v11, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 220
    iget-object v9, p0, Lnet/londatiga/android/QuickAction;->mTrack:Landroid/view/ViewGroup;

    iget v10, p0, Lnet/londatiga/android/QuickAction;->mInsertPos:I

    invoke-virtual {v9, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 222
    iget v9, p0, Lnet/londatiga/android/QuickAction;->mInsertPos:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lnet/londatiga/android/QuickAction;->mInsertPos:I

    .line 225
    .end local v4           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6           #separator:Landroid/view/View;
    :cond_0
    iget-object v9, p0, Lnet/londatiga/android/QuickAction;->mTrack:Landroid/view/ViewGroup;

    iget v10, p0, Lnet/londatiga/android/QuickAction;->mInsertPos:I

    invoke-virtual {v9, v1, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 227
    iget v9, p0, Lnet/londatiga/android/QuickAction;->mChildPos:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lnet/londatiga/android/QuickAction;->mChildPos:I

    .line 228
    iget v9, p0, Lnet/londatiga/android/QuickAction;->mInsertPos:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lnet/londatiga/android/QuickAction;->mInsertPos:I

    .line 229
    return-void

    .line 172
    .end local v0           #actionId:I
    .end local v1           #container:Landroid/view/View;
    .end local v3           #img:Landroid/widget/ImageView;
    .end local v5           #pos:I
    .end local v7           #text:Landroid/widget/TextView;
    :cond_1
    iget-object v9, p0, Lnet/londatiga/android/QuickAction;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f030002

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .restart local v1       #container:Landroid/view/View;
    goto :goto_0

    .line 181
    .restart local v3       #img:Landroid/widget/ImageView;
    .restart local v7       #text:Landroid/widget/TextView;
    :cond_2
    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 187
    :cond_3
    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public getActionItem(I)Lnet/londatiga/android/ActionItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 106
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->actionItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/londatiga/android/ActionItem;

    return-object v0
.end method

.method public onDismiss()V
    .locals 1

    .prologue
    .line 402
    iget-boolean v0, p0, Lnet/londatiga/android/QuickAction;->mDidAction:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->mDismissListener:Lnet/londatiga/android/QuickAction$OnDismissListener;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->mDismissListener:Lnet/londatiga/android/QuickAction$OnDismissListener;

    invoke-interface {v0}, Lnet/londatiga/android/QuickAction$OnDismissListener;->onDismiss()V

    .line 405
    :cond_0
    return-void
.end method

.method public setAnimStyle(I)V
    .locals 0
    .parameter "mAnimStyle"

    .prologue
    .line 141
    iput p1, p0, Lnet/londatiga/android/QuickAction;->mAnimStyle:I

    .line 142
    return-void
.end method

.method public setOnActionItemClickListener(Lnet/londatiga/android/QuickAction$OnActionItemClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 151
    iput-object p1, p0, Lnet/londatiga/android/QuickAction;->mItemClickListener:Lnet/londatiga/android/QuickAction$OnActionItemClickListener;

    .line 152
    return-void
.end method

.method public setOnDismissListener(Lnet/londatiga/android/QuickAction$OnDismissListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 395
    invoke-virtual {p0, p0}, Lnet/londatiga/android/QuickAction;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 397
    iput-object p1, p0, Lnet/londatiga/android/QuickAction;->mDismissListener:Lnet/londatiga/android/QuickAction$OnDismissListener;

    .line 398
    return-void
.end method

.method public setRootViewId(I)V
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, -0x2

    .line 116
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->mInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lnet/londatiga/android/QuickAction;->mRootView:Landroid/view/View;

    .line 117
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->mRootView:Landroid/view/View;

    const v1, 0x7f09001f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lnet/londatiga/android/QuickAction;->mTrack:Landroid/view/ViewGroup;

    .line 119
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->mRootView:Landroid/view/View;

    const v1, 0x7f090021

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnet/londatiga/android/QuickAction;->mArrowDown:Landroid/widget/ImageView;

    .line 120
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->mRootView:Landroid/view/View;

    const v1, 0x7f090020

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnet/londatiga/android/QuickAction;->mArrowUp:Landroid/widget/ImageView;

    .line 122
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->mRootView:Landroid/view/View;

    const v1, 0x7f09001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lnet/londatiga/android/QuickAction;->mScroller:Landroid/widget/ScrollView;

    .line 128
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->mRootView:Landroid/view/View;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 129
    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 128
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget-object v0, p0, Lnet/londatiga/android/QuickAction;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lnet/londatiga/android/QuickAction;->setContentView(Landroid/view/View;)V

    .line 132
    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 18
    .parameter "anchor"

    .prologue
    .line 237
    invoke-virtual/range {p0 .. p0}, Lnet/londatiga/android/QuickAction;->preShow()V

    .line 241
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lnet/londatiga/android/QuickAction;->mDidAction:Z

    .line 243
    const/4 v13, 0x2

    new-array v6, v13, [I

    .line 245
    .local v6, location:[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 247
    new-instance v1, Landroid/graphics/Rect;

    const/4 v13, 0x0

    aget v13, v6, v13

    const/4 v14, 0x1

    aget v14, v6, v14

    const/4 v15, 0x0

    aget v15, v6, v15

    .line 248
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v16

    add-int v15, v15, v16

    const/16 v16, 0x1

    aget v16, v6, v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v17

    add-int v16, v16, v17

    .line 247
    move/from16 v0, v16

    invoke-direct {v1, v13, v14, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 253
    .local v1, anchorRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/londatiga/android/QuickAction;->mRootView:Landroid/view/View;

    const/4 v14, -0x2

    const/4 v15, -0x2

    invoke-virtual {v13, v14, v15}, Landroid/view/View;->measure(II)V

    .line 255
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/londatiga/android/QuickAction;->mRootView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 257
    .local v8, rootHeight:I
    move-object/from16 v0, p0

    iget v13, v0, Lnet/londatiga/android/QuickAction;->rootWidth:I

    if-nez v13, :cond_0

    .line 258
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/londatiga/android/QuickAction;->mRootView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lnet/londatiga/android/QuickAction;->rootWidth:I

    .line 261
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/londatiga/android/QuickAction;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Display;->getWidth()I

    move-result v10

    .line 262
    .local v10, screenWidth:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/londatiga/android/QuickAction;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v13}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Display;->getHeight()I

    move-result v9

    .line 265
    .local v9, screenHeight:I
    iget v13, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v14, v0, Lnet/londatiga/android/QuickAction;->rootWidth:I

    add-int/2addr v13, v14

    if-le v13, v10, :cond_3

    .line 266
    iget v13, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v14, v0, Lnet/londatiga/android/QuickAction;->rootWidth:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v15

    sub-int/2addr v14, v15

    sub-int v11, v13, v14

    .line 267
    .local v11, xPos:I
    if-gez v11, :cond_1

    const/4 v11, 0x0

    .line 269
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    sub-int v2, v13, v11

    .line 281
    .local v2, arrowPos:I
    :goto_0
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 282
    .local v4, dyTop:I
    iget v13, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v9, v13

    .line 284
    .local v3, dyBottom:I
    if-le v4, v3, :cond_5

    const/4 v7, 0x1

    .line 286
    .local v7, onTop:Z
    :goto_1
    if-eqz v7, :cond_7

    .line 287
    if-le v8, v4, :cond_6

    .line 288
    const/16 v12, 0xf

    .line 289
    .local v12, yPos:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/londatiga/android/QuickAction;->mScroller:Landroid/widget/ScrollView;

    invoke-virtual {v13}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 290
    .local v5, l:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v13

    sub-int v13, v4, v13

    iput v13, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 303
    .end local v5           #l:Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    :goto_2
    if-eqz v7, :cond_8

    const v13, 0x7f090021

    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2}, Lnet/londatiga/android/QuickAction;->showArrow(II)V

    .line 305
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13, v7}, Lnet/londatiga/android/QuickAction;->setAnimationStyle(IIZ)V

    .line 307
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/londatiga/android/QuickAction;->mWindow:Landroid/widget/PopupWindow;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v14, v11, v12}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 308
    return-void

    .line 272
    .end local v2           #arrowPos:I
    .end local v3           #dyBottom:I
    .end local v4           #dyTop:I
    .end local v7           #onTop:Z
    .end local v11           #xPos:I
    .end local v12           #yPos:I
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lnet/londatiga/android/QuickAction;->rootWidth:I

    if-le v13, v14, :cond_4

    .line 273
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Lnet/londatiga/android/QuickAction;->rootWidth:I

    div-int/lit8 v14, v14, 0x2

    sub-int v11, v13, v14

    .line 278
    .restart local v11       #xPos:I
    :goto_4
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    sub-int v2, v13, v11

    .restart local v2       #arrowPos:I
    goto :goto_0

    .line 275
    .end local v2           #arrowPos:I
    .end local v11           #xPos:I
    :cond_4
    iget v11, v1, Landroid/graphics/Rect;->left:I

    .restart local v11       #xPos:I
    goto :goto_4

    .line 284
    .restart local v2       #arrowPos:I
    .restart local v3       #dyBottom:I
    .restart local v4       #dyTop:I
    :cond_5
    const/4 v7, 0x0

    goto :goto_1

    .line 292
    .restart local v7       #onTop:Z
    :cond_6
    iget v13, v1, Landroid/graphics/Rect;->top:I

    sub-int v12, v13, v8

    .restart local v12       #yPos:I
    goto :goto_2

    .line 295
    .end local v12           #yPos:I
    :cond_7
    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    .line 297
    .restart local v12       #yPos:I
    if-le v8, v3, :cond_2

    .line 298
    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/londatiga/android/QuickAction;->mScroller:Landroid/widget/ScrollView;

    invoke-virtual {v13}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 299
    .restart local v5       #l:Landroid/view/ViewGroup$LayoutParams;
    iput v3, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2

    .line 303
    .end local v5           #l:Landroid/view/ViewGroup$LayoutParams;
    :cond_8
    const v13, 0x7f090020

    goto :goto_3
.end method
