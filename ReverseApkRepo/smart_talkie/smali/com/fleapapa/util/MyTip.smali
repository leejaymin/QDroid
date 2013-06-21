.class public Lcom/fleapapa/util/MyTip;
.super Ljava/lang/Object;
.source "MyTip.java"


# instance fields
.field pw:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/MotionEvent;Ljava/lang/String;Z)V
    .locals 10
    .parameter "context"
    .parameter "view"
    .parameter "event"
    .parameter "tip"
    .parameter "pulldown"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {p4}, Lcom/fleapapa/util/MyUtil;->empty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 39
    :goto_0
    return-void

    .line 19
    :cond_0
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    .line 20
    .local v3, len:I
    const/16 v0, 0xc

    .line 21
    .local v0, fsiz:I
    invoke-static {}, Lcom/fleapapa/util/MyUtil;->isAsian()Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v0

    :goto_1
    mul-int v5, v3, v7

    .line 22
    .local v5, wide:I
    add-int/lit8 v1, v0, 0x4

    .line 23
    .local v1, high:I
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 24
    .local v4, tv:Landroid/widget/TextView;
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    const/16 v7, 0x11

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 26
    const/16 v7, -0x100

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 27
    const v7, -0xff8100

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    int-to-float v7, v0

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 29
    sget-object v7, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 30
    invoke-virtual {v4, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v2, v7

    .line 35
    .local v2, left:I
    add-int v7, v2, v5

    sget v8, Lcom/fleapapa/util/My;->wwide:I

    if-le v7, v8, :cond_2

    sget v7, Lcom/fleapapa/util/My;->wwide:I

    add-int v8, v2, v5

    sub-int/2addr v7, v8

    move v6, v7

    .line 36
    .local v6, x:I
    :goto_2
    new-instance v7, Landroid/widget/PopupWindow;

    invoke-direct {v7, v4, v5, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v7, p0, Lcom/fleapapa/util/MyTip;->pw:Landroid/widget/PopupWindow;

    .line 37
    iget-object v7, p0, Lcom/fleapapa/util/MyTip;->pw:Landroid/widget/PopupWindow;

    if-eqz p5, :cond_3

    const/4 v8, 0x0

    :goto_3
    invoke-virtual {v7, p2, v6, v8}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 38
    iget-object v7, p0, Lcom/fleapapa/util/MyTip;->pw:Landroid/widget/PopupWindow;

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-virtual {v7, p2, v8, v9}, Landroid/widget/PopupWindow;->update(Landroid/view/View;II)V

    goto :goto_0

    .line 21
    .end local v1           #high:I
    .end local v2           #left:I
    .end local v4           #tv:Landroid/widget/TextView;
    .end local v5           #wide:I
    .end local v6           #x:I
    :cond_1
    const/16 v7, 0x8

    goto :goto_1

    .line 35
    .restart local v1       #high:I
    .restart local v2       #left:I
    .restart local v4       #tv:Landroid/widget/TextView;
    .restart local v5       #wide:I
    :cond_2
    const/4 v7, 0x0

    move v6, v7

    goto :goto_2

    .line 37
    .restart local v6       #x:I
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v8

    neg-int v8, v8

    sub-int/2addr v8, v1

    goto :goto_3
.end method


# virtual methods
.method public off()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fleapapa/util/MyTip;->pw:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 44
    :goto_0
    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/fleapapa/util/MyTip;->pw:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fleapapa/util/MyTip;->pw:Landroid/widget/PopupWindow;

    goto :goto_0
.end method
