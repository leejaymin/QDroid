.class public Lcom/scoreloop/client/android/ui/component/market/MarketListItem;
.super Lcom/scoreloop/client/android/ui/component/base/StandardListItem;
.source "MarketListItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/ui/component/market/MarketListItem$MarketViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scoreloop/client/android/ui/component/base/StandardListItem",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private _counter:Ljava/lang/Integer;

.field private _imageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "activity"
    .parameter "drawable"
    .parameter "title"
    .parameter "subTitle"

    .prologue
    .line 42
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;-><init>(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected createViewHolder()Lcom/scoreloop/client/android/ui/component/base/StandardListItem$StandardViewHolder;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/scoreloop/client/android/ui/component/market/MarketListItem$MarketViewHolder;

    invoke-direct {v0}, Lcom/scoreloop/client/android/ui/component/market/MarketListItem$MarketViewHolder;-><init>()V

    return-object v0
.end method

.method protected fillViewHolder(Landroid/view/View;Lcom/scoreloop/client/android/ui/component/base/StandardListItem$StandardViewHolder;)V
    .locals 2
    .parameter "view"
    .parameter "holder"

    .prologue
    .line 56
    invoke-super {p0, p1, p2}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;->fillViewHolder(Landroid/view/View;Lcom/scoreloop/client/android/ui/component/base/StandardListItem$StandardViewHolder;)V

    move-object v0, p2

    .line 57
    check-cast v0, Lcom/scoreloop/client/android/ui/component/market/MarketListItem$MarketViewHolder;

    .line 58
    .local v0, marketHolder:Lcom/scoreloop/client/android/ui/component/market/MarketListItem$MarketViewHolder;
    const v1, 0x7f0c006e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/scoreloop/client/android/ui/component/market/MarketListItem$MarketViewHolder;->number:Landroid/widget/TextView;

    .line 59
    return-void
.end method

.method protected getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/market/MarketListItem;->_imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 85
    const v0, 0x7f03002a

    return v0
.end method

.method public setCounter(Ljava/lang/Integer;)V
    .locals 0
    .parameter "counter"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/market/MarketListItem;->_counter:Ljava/lang/Integer;

    .line 47
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "imageUrl"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/market/MarketListItem;->_imageUrl:Ljava/lang/String;

    .line 81
    return-void
.end method

.method protected updateViews(Lcom/scoreloop/client/android/ui/component/base/StandardListItem$StandardViewHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;->updateViews(Lcom/scoreloop/client/android/ui/component/base/StandardListItem$StandardViewHolder;)V

    move-object v0, p1

    .line 64
    check-cast v0, Lcom/scoreloop/client/android/ui/component/market/MarketListItem$MarketViewHolder;

    .line 65
    .local v0, marketHolder:Lcom/scoreloop/client/android/ui/component/market/MarketListItem$MarketViewHolder;
    iget-object v1, v0, Lcom/scoreloop/client/android/ui/component/market/MarketListItem$MarketViewHolder;->number:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/scoreloop/client/android/ui/component/market/MarketListItem;->_counter:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 67
    iget-object v1, v0, Lcom/scoreloop/client/android/ui/component/market/MarketListItem$MarketViewHolder;->number:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/scoreloop/client/android/ui/component/market/MarketListItem;->_counter:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v1, v0, Lcom/scoreloop/client/android/ui/component/market/MarketListItem$MarketViewHolder;->number:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
