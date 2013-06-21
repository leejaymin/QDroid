.class public Lti/modules/titanium/ui/widget/TiScrollableView;
.super Lorg/appcelerator/titanium/view/TiCompositeLayout;
.source "TiScrollableView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION:I = 0xfa

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final LCAT:Ljava/lang/String; = "TiUIScrollableView"

.field private static final PAGE_LEFT:I = 0xc8

.field private static final PAGE_RIGHT:I = 0xc9


# instance fields
.field protected animNext:Lorg/appcelerator/titanium/util/TiAnimationPair;

.field protected animPrev:Lorg/appcelerator/titanium/util/TiAnimationPair;

.field protected detector:Landroid/view/GestureDetector;

.field protected gallery:Landroid/widget/ViewAnimator;

.field protected handler:Landroid/os/Handler;

.field protected final me:Lti/modules/titanium/ui/widget/TiScrollableView;

.field protected pager:Landroid/widget/RelativeLayout;

.field protected proxy:Lti/modules/titanium/ui/ScrollableViewProxy;

.field protected showPagingControl:Z

.field protected views:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/titanium/proxy/TiViewProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->LOGD:Z

    sput-boolean v0, Lti/modules/titanium/ui/widget/TiScrollableView;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lti/modules/titanium/ui/ScrollableViewProxy;Landroid/os/Handler;)V
    .locals 11
    .parameter "proxy"
    .parameter "handler"

    .prologue
    const/4 v10, 0x4

    const/16 v9, 0x50

    const/4 v8, -0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 90
    invoke-virtual {p1}, Lti/modules/titanium/ui/ScrollableViewProxy;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/appcelerator/titanium/view/TiCompositeLayout;-><init>(Landroid/content/Context;)V

    .line 92
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->proxy:Lti/modules/titanium/ui/ScrollableViewProxy;

    .line 93
    iput-object p2, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->handler:Landroid/os/Handler;

    .line 94
    iput-object p0, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->me:Lti/modules/titanium/ui/widget/TiScrollableView;

    .line 95
    iput-boolean v6, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->showPagingControl:Z

    .line 96
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->views:Ljava/util/ArrayList;

    .line 100
    invoke-virtual {p0, v6}, Lti/modules/titanium/ui/widget/TiScrollableView;->setFocusable(Z)V

    .line 101
    invoke-virtual {p0, v6}, Lti/modules/titanium/ui/widget/TiScrollableView;->setFocusableInTouchMode(Z)V

    .line 102
    const/high16 v4, 0x4

    invoke-virtual {p0, v4}, Lti/modules/titanium/ui/widget/TiScrollableView;->setDescendantFocusability(I)V

    .line 104
    const-string v4, "slide-from-left"

    const/16 v5, 0xfa

    invoke-static {v4, v5}, Lorg/appcelerator/titanium/util/TiAnimationFactory;->getAnimationFor(Ljava/lang/String;I)Lorg/appcelerator/titanium/util/TiAnimationPair;

    move-result-object v4

    iput-object v4, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->animPrev:Lorg/appcelerator/titanium/util/TiAnimationPair;

    .line 105
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->animPrev:Lorg/appcelerator/titanium/util/TiAnimationPair;

    invoke-virtual {v4, p1}, Lorg/appcelerator/titanium/util/TiAnimationPair;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 107
    const-string v4, "slide-from-right"

    const/16 v5, 0xfa

    invoke-static {v4, v5}, Lorg/appcelerator/titanium/util/TiAnimationFactory;->getAnimationFor(Ljava/lang/String;I)Lorg/appcelerator/titanium/util/TiAnimationPair;

    move-result-object v4

    iput-object v4, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->animNext:Lorg/appcelerator/titanium/util/TiAnimationPair;

    .line 108
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->animNext:Lorg/appcelerator/titanium/util/TiAnimationPair;

    invoke-virtual {v4, p1}, Lorg/appcelerator/titanium/util/TiAnimationPair;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 110
    new-instance v4, Landroid/widget/ViewAnimator;

    invoke-virtual {p1}, Lti/modules/titanium/ui/ScrollableViewProxy;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->gallery:Landroid/widget/ViewAnimator;

    .line 111
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->gallery:Landroid/widget/ViewAnimator;

    invoke-virtual {v4, v7}, Landroid/widget/ViewAnimator;->setFocusable(Z)V

    .line 112
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->gallery:Landroid/widget/ViewAnimator;

    invoke-virtual {v4, v7}, Landroid/widget/ViewAnimator;->setFocusableInTouchMode(Z)V

    .line 113
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->gallery:Landroid/widget/ViewAnimator;

    invoke-virtual {v4, v7}, Landroid/widget/ViewAnimator;->setClickable(Z)V

    .line 115
    new-instance v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    invoke-direct {v1}, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;-><init>()V

    .line 116
    .local v1, p:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    iput-boolean v6, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsHeight:Z

    .line 117
    iput-boolean v6, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    .line 119
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->gallery:Landroid/widget/ViewAnimator;

    invoke-virtual {p0, v4, v1}, Lti/modules/titanium/ui/widget/TiScrollableView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    new-instance v4, Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Lti/modules/titanium/ui/ScrollableViewProxy;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->pager:Landroid/widget/RelativeLayout;

    .line 123
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->pager:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 124
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->pager:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout;->setFocusableInTouchMode(Z)V

    .line 126
    new-instance v0, Lti/modules/titanium/ui/widget/TiArrowView;

    invoke-virtual {p1}, Lti/modules/titanium/ui/ScrollableViewProxy;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lti/modules/titanium/ui/widget/TiArrowView;-><init>(Landroid/content/Context;)V

    .line 127
    .local v0, left:Lti/modules/titanium/ui/widget/TiArrowView;
    invoke-virtual {v0, v10}, Lti/modules/titanium/ui/widget/TiArrowView;->setVisibility(I)V

    .line 128
    const/16 v4, 0xc8

    invoke-virtual {v0, v4}, Lti/modules/titanium/ui/widget/TiArrowView;->setId(I)V

    .line 129
    invoke-virtual {v0, v9}, Lti/modules/titanium/ui/widget/TiArrowView;->setMinimumWidth(I)V

    .line 130
    invoke-virtual {v0, v9}, Lti/modules/titanium/ui/widget/TiArrowView;->setMinimumHeight(I)V

    .line 131
    new-instance v4, Lti/modules/titanium/ui/widget/TiScrollableView$1;

    invoke-direct {v4, p0}, Lti/modules/titanium/ui/widget/TiScrollableView$1;-><init>(Lti/modules/titanium/ui/widget/TiScrollableView;)V

    invoke-virtual {v0, v4}, Lti/modules/titanium/ui/widget/TiArrowView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 136
    .local v2, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0x9

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 137
    const/16 v4, 0xf

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 138
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->pager:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    new-instance v3, Lti/modules/titanium/ui/widget/TiArrowView;

    invoke-virtual {p1}, Lti/modules/titanium/ui/ScrollableViewProxy;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lti/modules/titanium/ui/widget/TiArrowView;-><init>(Landroid/content/Context;)V

    .line 141
    .local v3, right:Lti/modules/titanium/ui/widget/TiArrowView;
    invoke-virtual {v3, v7}, Lti/modules/titanium/ui/widget/TiArrowView;->setLeft(Z)V

    .line 142
    invoke-virtual {v3, v10}, Lti/modules/titanium/ui/widget/TiArrowView;->setVisibility(I)V

    .line 143
    const/16 v4, 0xc9

    invoke-virtual {v3, v4}, Lti/modules/titanium/ui/widget/TiArrowView;->setId(I)V

    .line 144
    invoke-virtual {v3, v9}, Lti/modules/titanium/ui/widget/TiArrowView;->setMinimumWidth(I)V

    .line 145
    invoke-virtual {v3, v9}, Lti/modules/titanium/ui/widget/TiArrowView;->setMinimumHeight(I)V

    .line 146
    new-instance v4, Lti/modules/titanium/ui/widget/TiScrollableView$2;

    invoke-direct {v4, p0}, Lti/modules/titanium/ui/widget/TiScrollableView$2;-><init>(Lti/modules/titanium/ui/widget/TiScrollableView;)V

    invoke-virtual {v3, v4}, Lti/modules/titanium/ui/widget/TiArrowView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v2           #params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v2, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 151
    .restart local v2       #params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 152
    const/16 v4, 0xf

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 153
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->pager:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->pager:Landroid/widget/RelativeLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 157
    new-instance v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;

    .end local v1           #p:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    invoke-direct {v1}, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;-><init>()V

    .line 158
    .restart local v1       #p:Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;
    iput-boolean v6, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsHeight:Z

    .line 159
    iput-boolean v6, v1, Lorg/appcelerator/titanium/view/TiCompositeLayout$LayoutParams;->autoFillsWidth:Z

    .line 160
    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->pager:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v4, v1}, Lti/modules/titanium/ui/widget/TiScrollableView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    new-instance v4, Landroid/view/GestureDetector;

    new-instance v5, Lti/modules/titanium/ui/widget/TiScrollableView$3;

    invoke-direct {v5, p0}, Lti/modules/titanium/ui/widget/TiScrollableView$3;-><init>(Lti/modules/titanium/ui/widget/TiScrollableView;)V

    invoke-direct {v4, v5}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v4, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->detector:Landroid/view/GestureDetector;

    .line 206
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lti/modules/titanium/ui/widget/TiScrollableView;->DBG:Z

    return v0
.end method


# virtual methods
.method public addView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 4
    .parameter "proxy"

    .prologue
    .line 380
    if-eqz p1, :cond_0

    .line 381
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->gallery:Landroid/widget/ViewAnimator;

    new-instance v1, Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiScrollableView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->gallery:Landroid/widget/ViewAnimator;

    invoke-virtual {v3}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v3

    invoke-direct {v1, p0, v2, v3}, Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;-><init>(Lti/modules/titanium/ui/widget/TiScrollableView;Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->addView(Landroid/view/View;)V

    .line 385
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 469
    const/4 v0, 0x0

    .line 471
    .local v0, handled:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 472
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 486
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 487
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 490
    :cond_1
    return v0

    .line 474
    :pswitch_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->proxy:Lti/modules/titanium/ui/ScrollableViewProxy;

    invoke-virtual {v1}, Lti/modules/titanium/ui/ScrollableViewProxy;->movePrevious()V

    .line 475
    const/4 v0, 0x1

    .line 476
    goto :goto_0

    .line 479
    :pswitch_1
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->proxy:Lti/modules/titanium/ui/ScrollableViewProxy;

    invoke-virtual {v1}, Lti/modules/titanium/ui/ScrollableViewProxy;->moveNext()V

    .line 480
    const/4 v0, 0x1

    goto :goto_0

    .line 472
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 210
    const/4 v0, 0x0

    .line 211
    .local v0, handled:Z
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->detector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 212
    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 213
    :cond_0
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 215
    :cond_1
    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 495
    const/4 v0, 0x0

    .line 497
    .local v0, handled:Z
    iget-boolean v1, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->showPagingControl:Z

    if-eqz v1, :cond_1

    .line 498
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->pager:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 499
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->handler:Landroid/os/Handler;

    const/16 v2, 0x834

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 501
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->proxy:Lti/modules/titanium/ui/ScrollableViewProxy;

    invoke-virtual {v1}, Lti/modules/titanium/ui/ScrollableViewProxy;->setPagerTimeout()V

    .line 504
    :cond_1
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 505
    return v0
.end method

.method public doMoveNext()V
    .locals 7

    .prologue
    .line 290
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiScrollableView;->getSelectedItemPosition()I

    move-result v2

    .line 291
    .local v2, pos:I
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->gallery:Landroid/widget/ViewAnimator;

    invoke-virtual {v5}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ge v2, v5, :cond_0

    .line 292
    move v0, v2

    .line 293
    .local v0, from:I
    add-int/lit8 v3, v2, 0x1

    .line 294
    .local v3, to:I
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->views:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiEventHelper;->fireFocused(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 295
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->gallery:Landroid/widget/ViewAnimator;

    invoke-virtual {v5, v0}, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;

    .line 296
    .local v1, fromWrapper:Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->gallery:Landroid/widget/ViewAnimator;

    invoke-virtual {v5, v3}, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;

    .line 297
    .local v4, toWrapper:Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;
    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;->doAttachView()V

    .line 298
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->animNext:Lorg/appcelerator/titanium/util/TiAnimationPair;

    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->gallery:Landroid/widget/ViewAnimator;

    invoke-virtual {v5, v6}, Lorg/appcelerator/titanium/util/TiAnimationPair;->apply(Landroid/widget/ViewAnimator;)V

    .line 299
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->animNext:Lorg/appcelerator/titanium/util/TiAnimationPair;

    new-instance v6, Lti/modules/titanium/ui/widget/TiScrollableView$5;

    invoke-direct {v6, p0, v1}, Lti/modules/titanium/ui/widget/TiScrollableView$5;-><init>(Lti/modules/titanium/ui/widget/TiScrollableView;Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;)V

    invoke-virtual {v5, v6}, Lorg/appcelerator/titanium/util/TiAnimationPair;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 312
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->gallery:Landroid/widget/ViewAnimator;

    invoke-virtual {v5, v3}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 313
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->views:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiEventHelper;->fireUnfocused(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 314
    invoke-virtual {p0, v0, v3}, Lti/modules/titanium/ui/widget/TiScrollableView;->onScrolled(II)V

    .line 315
    iget-boolean v5, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->showPagingControl:Z

    if-eqz v5, :cond_0

    .line 316
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiScrollableView;->showPager()V

    .line 320
    .end local v0           #from:I
    .end local v1           #fromWrapper:Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;
    .end local v3           #to:I
    .end local v4           #toWrapper:Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;
    :cond_0
    return-void
.end method

.method public doMovePrevious()V
    .locals 7

    .prologue
    .line 256
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiScrollableView;->getSelectedItemPosition()I

    move-result v2

    .line 257
    .local v2, pos:I
    if-lez v2, :cond_0

    .line 258
    move v0, v2

    .line 259
    .local v0, from:I
    const/4 v5, 0x1

    sub-int v3, v2, v5

    .line 260
    .local v3, to:I
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->views:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiEventHelper;->fireFocused(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 261
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->gallery:Landroid/widget/ViewAnimator;

    invoke-virtual {v5, v0}, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;

    .line 262
    .local v1, fromWrapper:Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->gallery:Landroid/widget/ViewAnimator;

    invoke-virtual {v5, v3}, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;

    .line 263
    .local v4, toWrapper:Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->animPrev:Lorg/appcelerator/titanium/util/TiAnimationPair;

    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->gallery:Landroid/widget/ViewAnimator;

    invoke-virtual {v5, v6}, Lorg/appcelerator/titanium/util/TiAnimationPair;->apply(Landroid/widget/ViewAnimator;)V

    .line 264
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->animPrev:Lorg/appcelerator/titanium/util/TiAnimationPair;

    new-instance v6, Lti/modules/titanium/ui/widget/TiScrollableView$4;

    invoke-direct {v6, p0, v1}, Lti/modules/titanium/ui/widget/TiScrollableView$4;-><init>(Lti/modules/titanium/ui/widget/TiScrollableView;Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;)V

    invoke-virtual {v5, v6}, Lorg/appcelerator/titanium/util/TiAnimationPair;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 277
    invoke-virtual {v4}, Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;->doAttachView()V

    .line 278
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->gallery:Landroid/widget/ViewAnimator;

    invoke-virtual {v5, v3}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 279
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->views:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    invoke-static {v5}, Lorg/appcelerator/titanium/util/TiEventHelper;->fireUnfocused(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    .line 280
    invoke-virtual {p0, v0, v3}, Lti/modules/titanium/ui/widget/TiScrollableView;->onScrolled(II)V

    .line 281
    iget-boolean v5, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->showPagingControl:Z

    if-eqz v5, :cond_0

    .line 282
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiScrollableView;->showPager()V

    .line 286
    .end local v0           #from:I
    .end local v1           #fromWrapper:Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;
    .end local v3           #to:I
    .end local v4           #toWrapper:Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;
    :cond_0
    return-void
.end method

.method public doScrollToView(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 413
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->gallery:Landroid/widget/ViewAnimator;

    invoke-virtual {v1}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 414
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiScrollableView;->getSelectedItemPosition()I

    move-result v0

    .line 415
    .local v0, current:I
    if-ge v0, p1, :cond_0

    .line 416
    :goto_0
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiScrollableView;->getSelectedItemPosition()I

    move-result v1

    if-ge v1, p1, :cond_1

    .line 417
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiScrollableView;->doMoveNext()V

    goto :goto_0

    .line 419
    :cond_0
    if-le v0, p1, :cond_1

    .line 420
    :goto_1
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiScrollableView;->getSelectedItemPosition()I

    move-result v1

    if-le v1, p1, :cond_1

    .line 421
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiScrollableView;->doMovePrevious()V

    goto :goto_1

    .line 425
    .end local v0           #current:I
    :cond_1
    return-void
.end method

.method public doScrollToView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 429
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiScrollableView;->doScrollToView(I)V

    .line 432
    :cond_0
    return-void
.end method

.method public doSetCurrentPage(I)V
    .locals 6
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 435
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->gallery:Landroid/widget/ViewAnimator;

    invoke-virtual {v3}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_1

    .line 436
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiScrollableView;->getSelectedItemPosition()I

    move-result v0

    .line 437
    .local v0, from:I
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->gallery:Landroid/widget/ViewAnimator;

    invoke-virtual {v3, v0}, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;

    .line 438
    .local v1, fromWrapper:Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->gallery:Landroid/widget/ViewAnimator;

    invoke-virtual {v3, p1}, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;

    .line 439
    .local v2, toWrapper:Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;
    if-eqz v2, :cond_1

    .line 440
    invoke-virtual {v2}, Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;->doAttachView()V

    .line 441
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->gallery:Landroid/widget/ViewAnimator;

    invoke-virtual {v3, v4}, Landroid/widget/ViewAnimator;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 442
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->gallery:Landroid/widget/ViewAnimator;

    invoke-virtual {v3, v4}, Landroid/widget/ViewAnimator;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 443
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->gallery:Landroid/widget/ViewAnimator;

    invoke-virtual {v3, p1}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 444
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->proxy:Lti/modules/titanium/ui/ScrollableViewProxy;

    const-string v4, "currentPage"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lti/modules/titanium/ui/ScrollableViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 445
    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->proxy:Lti/modules/titanium/ui/ScrollableViewProxy;

    invoke-virtual {v3, p1}, Lti/modules/titanium/ui/ScrollableViewProxy;->fireScroll(I)V

    .line 447
    if-eqz v1, :cond_0

    if-eq v1, v2, :cond_0

    .line 448
    invoke-virtual {v1}, Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;->doDetachView()V

    .line 450
    :cond_0
    iget-boolean v3, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->showPagingControl:Z

    if-eqz v3, :cond_1

    .line 451
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiScrollableView;->showPager()V

    .line 455
    .end local v0           #from:I
    .end local v1           #fromWrapper:Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;
    .end local v2           #toWrapper:Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;
    :cond_1
    return-void
.end method

.method public doSetCurrentPage(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 458
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->views:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/widget/TiScrollableView;->doSetCurrentPage(I)V

    .line 461
    :cond_0
    return-void
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->gallery:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v0

    return v0
.end method

.method public getViews()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/titanium/proxy/TiViewProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 464
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->views:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hasNext()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 250
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiScrollableView;->getSelectedItemPosition()I

    move-result v0

    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->gallery:Landroid/widget/ViewAnimator;

    invoke-virtual {v1}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 1

    .prologue
    .line 245
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiScrollableView;->getSelectedItemPosition()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hidePager()V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->pager:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 340
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 528
    .local p1, view:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onScrolled(II)V
    .locals 4
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 510
    const/4 v0, 0x0

    .line 512
    .local v0, v:Landroid/view/View;
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->proxy:Lti/modules/titanium/ui/ScrollableViewProxy;

    invoke-virtual {v1, p2}, Lti/modules/titanium/ui/ScrollableViewProxy;->fireScroll(I)V

    .line 514
    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/TiScrollableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 515
    if-eqz v0, :cond_0

    .line 516
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiScrollableView;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 519
    :cond_0
    const/16 v1, 0xc9

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/TiScrollableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 520
    if-eqz v0, :cond_1

    .line 521
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiScrollableView;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 523
    :cond_1
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->proxy:Lti/modules/titanium/ui/ScrollableViewProxy;

    const-string v2, "currentPage"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lti/modules/titanium/ui/ScrollableViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 524
    return-void

    :cond_2
    move v1, v3

    .line 516
    goto :goto_0

    :cond_3
    move v1, v3

    .line 521
    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 221
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->detector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 223
    .local v0, handled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->showPagingControl:Z

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->pager:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->gallery:Landroid/widget/ViewAnimator;

    invoke-virtual {v1, p1}, Landroid/widget/ViewAnimator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 229
    :cond_0
    if-nez v0, :cond_1

    .line 230
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/view/TiCompositeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 233
    :cond_1
    return v0
.end method

.method public removeView(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
    .locals 4
    .parameter "proxy"

    .prologue
    .line 389
    if-eqz p1, :cond_0

    .line 390
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->views:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 391
    .local v1, index:I
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->views:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 392
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 393
    sget-boolean v2, Lti/modules/titanium/ui/widget/TiScrollableView;->DBG:Z

    if-eqz v2, :cond_0

    .line 394
    const-string v2, "TiUIScrollableView"

    const-string v3, "removeView -- view not located."

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    .end local v1           #index:I
    :cond_0
    return-void

    .line 397
    .restart local v1       #index:I
    :cond_1
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->gallery:Landroid/widget/ViewAnimator;

    invoke-virtual {v2, v1}, Landroid/widget/ViewAnimator;->removeViewAt(I)V

    .line 401
    move v0, v1

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->gallery:Landroid/widget/ViewAnimator;

    invoke-virtual {v2}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 402
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->gallery:Landroid/widget/ViewAnimator;

    invoke-virtual {v2, v0}, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;

    #setter for: Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;->position:I
    invoke-static {v2, v0}, Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;->access$102(Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;I)I

    .line 401
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setShowPagingControl(Z)V
    .locals 0
    .parameter "showPagingControl"

    .prologue
    .line 409
    iput-boolean p1, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->showPagingControl:Z

    .line 410
    return-void
.end method

.method public setViews(Ljava/lang/Object;)V
    .locals 9
    .parameter "viewsObject"

    .prologue
    const/4 v8, 0x0

    .line 344
    sget-boolean v5, Lti/modules/titanium/ui/widget/TiScrollableView;->DBG:Z

    if-eqz v5, :cond_0

    .line 345
    const-string v5, "TiUIScrollableView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Views: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_0
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->views:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    .line 349
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->gallery:Landroid/widget/ViewAnimator;

    invoke-virtual {v5}, Landroid/widget/ViewAnimator;->getChildCount()I

    move-result v2

    .line 350
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 351
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->gallery:Landroid/widget/ViewAnimator;

    invoke-virtual {v5, v1}, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;

    invoke-virtual {v5}, Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;->doDetachView()V

    .line 350
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 354
    :cond_1
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->views:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 359
    .end local v1           #i:I
    .end local v2           #len:I
    :goto_1
    instance-of v5, p1, [Ljava/lang/Object;

    if-eqz v5, :cond_5

    .line 361
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    move-object v4, v0

    .line 362
    .local v4, views:[Ljava/lang/Object;
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->gallery:Landroid/widget/ViewAnimator;

    invoke-virtual {v5}, Landroid/widget/ViewAnimator;->removeAllViews()V

    .line 363
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    array-length v5, v4

    if-ge v1, v5, :cond_4

    .line 364
    aget-object v5, v4, v1

    instance-of v5, v5, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    if-eqz v5, :cond_2

    .line 365
    aget-object v3, v4, v1

    check-cast v3, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    .line 366
    .local v3, tv:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->views:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->gallery:Landroid/widget/ViewAnimator;

    new-instance v6, Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiScrollableView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, p0, v7, v1}, Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;-><init>(Lti/modules/titanium/ui/widget/TiScrollableView;Landroid/content/Context;I)V

    invoke-virtual {v5, v6}, Landroid/widget/ViewAnimator;->addView(Landroid/view/View;)V

    .line 363
    .end local v3           #tv:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 356
    .end local v1           #i:I
    .end local v4           #views:[Ljava/lang/Object;
    .restart local p1
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->views:Ljava/util/ArrayList;

    goto :goto_1

    .line 371
    .end local p1
    .restart local v1       #i:I
    .restart local v4       #views:[Ljava/lang/Object;
    :cond_4
    array-length v5, v4

    if-lez v5, :cond_5

    .line 372
    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->gallery:Landroid/widget/ViewAnimator;

    invoke-virtual {v5, v8}, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;

    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiScrollableView$ViewWrapper;->doAttachView()V

    .line 373
    aget-object p0, v4, v8

    check-cast p0, Lorg/appcelerator/titanium/proxy/TiViewProxy;

    new-instance v5, Lorg/appcelerator/kroll/KrollDict;

    invoke-direct {v5}, Lorg/appcelerator/kroll/KrollDict;-><init>()V

    invoke-virtual {p0, v5}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->show(Lorg/appcelerator/kroll/KrollDict;)V

    .line 376
    .end local v1           #i:I
    .end local v4           #views:[Ljava/lang/Object;
    :cond_5
    return-void
.end method

.method public showPager()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 323
    const/4 v0, 0x0

    .line 324
    .local v0, v:Landroid/view/View;
    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/TiScrollableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 325
    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiScrollableView;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 329
    :cond_0
    const/16 v1, 0xc9

    invoke-virtual {p0, v1}, Lti/modules/titanium/ui/widget/TiScrollableView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 330
    if-eqz v0, :cond_1

    .line 331
    invoke-virtual {p0}, Lti/modules/titanium/ui/widget/TiScrollableView;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 334
    :cond_1
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->pager:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 335
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiScrollableView;->proxy:Lti/modules/titanium/ui/ScrollableViewProxy;

    invoke-virtual {v1}, Lti/modules/titanium/ui/ScrollableViewProxy;->setPagerTimeout()V

    .line 336
    return-void

    :cond_2
    move v1, v3

    .line 326
    goto :goto_0

    :cond_3
    move v1, v3

    .line 331
    goto :goto_1
.end method
