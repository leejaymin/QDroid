.class public Lcom/fleapapa/helper/InterestSelector$ExpandView;
.super Landroid/view/View;
.source "InterestSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fleapapa/helper/InterestSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpandView"
.end annotation


# static fields
.field public static final IZ:I = 0x16


# instance fields
.field act:Lcom/fleapapa/helper/InterestSelector;

.field cat:Lcom/fleapapa/helper/Category;

.field context:Landroid/content/Context;

.field rect:Landroid/graphics/Rect;

.field shigh:I

.field swide:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 450
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 451
    iput-object p1, p0, Lcom/fleapapa/helper/InterestSelector$ExpandView;->context:Landroid/content/Context;

    .line 452
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 454
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 455
    iget v2, p0, Lcom/fleapapa/helper/InterestSelector$ExpandView;->swide:I

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/fleapapa/helper/InterestSelector$ExpandView;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/fleapapa/helper/InterestSelector$ExpandView;->swide:I

    .line 456
    :cond_0
    iget v2, p0, Lcom/fleapapa/helper/InterestSelector$ExpandView;->shigh:I

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/fleapapa/helper/InterestSelector$ExpandView;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/fleapapa/helper/InterestSelector$ExpandView;->shigh:I

    .line 457
    :cond_1
    iget-object v2, p0, Lcom/fleapapa/helper/InterestSelector$ExpandView;->cat:Lcom/fleapapa/helper/Category;

    iget v2, v2, Lcom/fleapapa/helper/Category;->level:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    mul-int/lit8 v0, v2, 0x16

    .line 458
    .local v0, x:I
    iget v2, p0, Lcom/fleapapa/helper/InterestSelector$ExpandView;->shigh:I

    const/16 v3, 0x16

    sub-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    .line 459
    .local v1, y:I
    new-instance v2, Landroid/graphics/Rect;

    add-int/lit8 v3, v0, 0x16

    add-int/lit8 v4, v1, 0x16

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/fleapapa/helper/InterestSelector$ExpandView;->rect:Landroid/graphics/Rect;

    .line 460
    iget-object v2, p0, Lcom/fleapapa/helper/InterestSelector$ExpandView;->cat:Lcom/fleapapa/helper/Category;

    iget-boolean v2, v2, Lcom/fleapapa/helper/Category;->isleaf:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/fleapapa/helper/InterestSelector;->leaf:Landroid/graphics/drawable/Drawable;

    :goto_0
    iget-object v3, p0, Lcom/fleapapa/helper/InterestSelector$ExpandView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 461
    iget-object v2, p0, Lcom/fleapapa/helper/InterestSelector$ExpandView;->cat:Lcom/fleapapa/helper/Category;

    iget-boolean v2, v2, Lcom/fleapapa/helper/Category;->isleaf:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/fleapapa/helper/InterestSelector;->leaf:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 462
    return-void

    .line 460
    :cond_2
    iget-object v2, p0, Lcom/fleapapa/helper/InterestSelector$ExpandView;->cat:Lcom/fleapapa/helper/Category;

    iget-boolean v2, v2, Lcom/fleapapa/helper/Category;->expanded:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/fleapapa/helper/InterestSelector;->minu:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/fleapapa/helper/InterestSelector;->plus:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 461
    :cond_4
    iget-object v2, p0, Lcom/fleapapa/helper/InterestSelector$ExpandView;->cat:Lcom/fleapapa/helper/Category;

    iget-boolean v2, v2, Lcom/fleapapa/helper/Category;->expanded:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/fleapapa/helper/InterestSelector;->minu:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/fleapapa/helper/InterestSelector;->plus:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 468
    iget-object v2, p0, Lcom/fleapapa/helper/InterestSelector$ExpandView;->cat:Lcom/fleapapa/helper/Category;

    iget-boolean v2, v2, Lcom/fleapapa/helper/Category;->isleaf:Z

    if-eqz v2, :cond_0

    move v2, v4

    .line 481
    :goto_0
    return v2

    .line 469
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 470
    .local v0, cx:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 471
    .local v1, cy:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_1
    move v2, v4

    .line 481
    goto :goto_0

    .line 474
    :pswitch_0
    iget-object v2, p0, Lcom/fleapapa/helper/InterestSelector$ExpandView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 476
    iget-object v2, p0, Lcom/fleapapa/helper/InterestSelector$ExpandView;->cat:Lcom/fleapapa/helper/Category;

    iget-boolean v2, v2, Lcom/fleapapa/helper/Category;->expanded:Z

    if-nez v2, :cond_2

    .line 477
    iget-object v2, p0, Lcom/fleapapa/helper/InterestSelector$ExpandView;->act:Lcom/fleapapa/helper/InterestSelector;

    iget-object v3, p0, Lcom/fleapapa/helper/InterestSelector$ExpandView;->cat:Lcom/fleapapa/helper/Category;

    invoke-virtual {v2, v3}, Lcom/fleapapa/helper/InterestSelector;->expand(Lcom/fleapapa/helper/Category;)V

    goto :goto_1

    .line 478
    :cond_2
    iget-object v2, p0, Lcom/fleapapa/helper/InterestSelector$ExpandView;->act:Lcom/fleapapa/helper/InterestSelector;

    iget-object v3, p0, Lcom/fleapapa/helper/InterestSelector$ExpandView;->cat:Lcom/fleapapa/helper/Category;

    invoke-virtual {v2, v3}, Lcom/fleapapa/helper/InterestSelector;->collapse(Lcom/fleapapa/helper/Category;)V

    goto :goto_1

    .line 471
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
