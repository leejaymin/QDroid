.class public Lcom/scoreloop/client/android/ui/component/payment/ShelfGridView;
.super Landroid/widget/GridView;
.source "ShelfGridView.java"


# instance fields
.field private final background:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/ui/component/payment/ShelfGridView;->background:Landroid/graphics/drawable/Drawable;

    .line 18
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 22
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/ShelfGridView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 23
    invoke-virtual {p0, v5}, Lcom/scoreloop/client/android/ui/component/payment/ShelfGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 25
    .local v0, childH:I
    invoke-virtual {p0, v5}, Lcom/scoreloop/client/android/ui/component/payment/ShelfGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 27
    .local v1, top:I
    :goto_0
    if-lez v1, :cond_0

    .line 28
    sub-int/2addr v1, v0

    goto :goto_0

    .line 31
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/ShelfGridView;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 32
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/payment/ShelfGridView;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/ShelfGridView;->getWidth()I

    move-result v3

    add-int v4, v1, v0

    invoke-virtual {v2, v5, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 34
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/payment/ShelfGridView;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 35
    add-int/2addr v1, v0

    goto :goto_1

    .line 39
    .end local v0           #childH:I
    .end local v1           #top:I
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 40
    return-void
.end method
