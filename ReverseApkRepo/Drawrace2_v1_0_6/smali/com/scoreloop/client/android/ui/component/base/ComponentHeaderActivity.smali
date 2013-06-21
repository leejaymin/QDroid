.class public abstract Lcom/scoreloop/client/android/ui/component/base/ComponentHeaderActivity;
.super Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;
.source "ComponentHeaderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private _caption:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 40
    const v0, 0x7f0c0040

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/base/ComponentHeaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 46
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;I)V
    .locals 0
    .parameter "savedInstanceState"
    .parameter "layout_id"

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0, p2}, Lcom/scoreloop/client/android/ui/component/base/ComponentHeaderActivity;->setContentView(I)V

    .line 51
    return-void
.end method

.method protected onSpinnerShow(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 56
    return-void
.end method

.method protected setCaption(Ljava/lang/String;)V
    .locals 5
    .parameter "captionText"

    .prologue
    .line 59
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/base/ComponentHeaderActivity;->_caption:Landroid/widget/TextView;

    if-nez v3, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentHeaderActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 61
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v2

    .line 62
    .local v2, orientation:I
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 63
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 64
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v3, v4, :cond_0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 66
    :cond_0
    const v3, 0x7f0c0044

    invoke-virtual {p0, v3}, Lcom/scoreloop/client/android/ui/component/base/ComponentHeaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/scoreloop/client/android/ui/component/base/ComponentHeaderActivity;->_caption:Landroid/widget/TextView;

    .line 71
    .end local v0           #display:Landroid/view/Display;
    .end local v1           #metrics:Landroid/util/DisplayMetrics;
    .end local v2           #orientation:I
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/base/ComponentHeaderActivity;->_caption:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 72
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/base/ComponentHeaderActivity;->_caption:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :cond_2
    return-void

    .line 68
    .restart local v0       #display:Landroid/view/Display;
    .restart local v1       #metrics:Landroid/util/DisplayMetrics;
    .restart local v2       #orientation:I
    :cond_3
    const v3, 0x7f0c003e

    invoke-virtual {p0, v3}, Lcom/scoreloop/client/android/ui/component/base/ComponentHeaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/scoreloop/client/android/ui/component/base/ComponentHeaderActivity;->_caption:Landroid/widget/TextView;

    goto :goto_0
.end method

.method protected setSubTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "subTitle"

    .prologue
    .line 77
    const v1, 0x7f0c0042

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/base/ComponentHeaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 78
    .local v0, textView:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :cond_0
    return-void
.end method

.method protected setTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 84
    const v1, 0x7f0c0041

    invoke-virtual {p0, v1}, Lcom/scoreloop/client/android/ui/component/base/ComponentHeaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 85
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    return-void
.end method
