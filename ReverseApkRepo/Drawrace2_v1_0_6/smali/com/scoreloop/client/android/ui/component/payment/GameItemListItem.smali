.class public Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;
.super Lcom/scoreloop/client/android/ui/framework/BaseListItem;
.source "GameItemListItem.java"


# instance fields
.field private final _isPending:Z

.field private _priceText:Ljava/lang/String;

.field private _priceTextSmall:Ljava/lang/String;

.field private _subTitle:Ljava/lang/String;

.field private final _target:Lcom/scoreloop/client/android/core/model/GameItem;

.field protected buttonDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Lcom/scoreloop/client/android/core/model/GameItem;Z)V
    .locals 6
    .parameter "activity"
    .parameter "target"
    .parameter "isPending"

    .prologue
    const/4 v4, 0x0

    .line 53
    invoke-direct {p0, p1, v4, v4}, Lcom/scoreloop/client/android/ui/framework/BaseListItem;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 54
    iput-object p2, p0, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->_target:Lcom/scoreloop/client/android/core/model/GameItem;

    .line 55
    iput-boolean p3, p0, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->_isPending:Z

    .line 57
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/model/GameItem;->isCoinPack()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 58
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02001a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    :goto_0
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/model/GameItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->setTitle(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/model/GameItem;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->setSubTitle(Ljava/lang/String;)V

    .line 66
    const v0, 0x7f02001d

    .line 68
    .local v0, buttonDrawableId:I
    iget-boolean v4, p0, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->_isPending:Z

    if-eqz v4, :cond_1

    .line 69
    const-string v4, ""

    invoke-virtual {p0, v4}, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->setPriceText(Ljava/lang/String;)V

    .line 70
    const v4, 0x7f0802f4

    invoke-virtual {p0, v4}, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->setPriceTextSmall(I)V

    .line 71
    const v0, 0x7f02001e

    .line 92
    :goto_1
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    .line 93
    return-void

    .line 60
    .end local v0           #buttonDrawableId:I
    :cond_0
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020057

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 72
    .restart local v0       #buttonDrawableId:I
    :cond_1
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/model/GameItem;->getPurchaseDate()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/model/GameItem;->isCollectable()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    .line 73
    const-string v4, ""

    invoke-virtual {p0, v4}, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->setPriceText(Ljava/lang/String;)V

    .line 74
    const v4, 0x7f0802fe

    invoke-virtual {p0, v4}, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->setPriceTextSmall(I)V

    .line 75
    const v0, 0x7f02001e

    goto :goto_1

    .line 76
    :cond_2
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/model/GameItem;->isFree()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 77
    const-string v4, ""

    invoke-virtual {p0, v4}, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->setPriceTextSmall(Ljava/lang/String;)V

    .line 78
    const v4, 0x7f0802bd

    invoke-virtual {p0, v4}, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->setPriceText(I)V

    goto :goto_1

    .line 80
    :cond_3
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/model/GameItem;->getLowestPrices()Ljava/util/List;

    move-result-object v1

    .line 81
    .local v1, lowestPrices:Ljava/util/List;,"Ljava/util/List<Lcom/scoreloop/client/android/core/model/Money;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 82
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "USD"

    invoke-static {v1, v4, v5}, Lcom/scoreloop/client/android/core/model/Money;->getPreferred(Ljava/util/List;Ljava/util/Locale;Ljava/lang/String;)Lcom/scoreloop/client/android/core/model/Money;

    move-result-object v3

    .line 83
    .local v3, preferedLowestPrice:Lcom/scoreloop/client/android/core/model/Money;
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getConfiguration()Lcom/scoreloop/client/android/ui/component/base/Configuration;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/scoreloop/client/android/ui/component/base/StringFormatter;->formatMoney(Lcom/scoreloop/client/android/core/model/Money;Lcom/scoreloop/client/android/ui/component/base/Configuration;)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, lowestPricesString:Ljava/lang/String;
    const v4, 0x7f08031d

    invoke-virtual {p0, v4}, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->setPriceTextSmall(I)V

    .line 85
    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->setPriceText(Ljava/lang/String;)V

    goto :goto_1

    .line 87
    .end local v2           #lowestPricesString:Ljava/lang/String;
    .end local v3           #preferedLowestPrice:Lcom/scoreloop/client/android/core/model/Money;
    :cond_4
    const-string v4, ""

    invoke-virtual {p0, v4}, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->setPriceTextSmall(Ljava/lang/String;)V

    .line 88
    const v4, 0x7f0802ff

    invoke-virtual {p0, v4}, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->setPriceText(I)V

    goto :goto_1
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->getTarget()Lcom/scoreloop/client/android/core/model/GameItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/GameItem;->isCoinPack()Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    invoke-super {p0}, Lcom/scoreloop/client/android/ui/framework/BaseListItem;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 192
    :goto_0
    return-object v1

    .line 188
    :cond_0
    const v0, 0x7f02004e

    .line 189
    .local v0, drawableID:I
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->getTarget()Lcom/scoreloop/client/android/core/model/GameItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/GameItem;->getCoinPackValue()Lcom/scoreloop/client/android/core/model/Money;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Money;->getAmountInUnits()Ljava/math/BigDecimal;

    move-result-object v1

    new-instance v2, Ljava/math/BigDecimal;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-lez v1, :cond_1

    .line 190
    const v0, 0x7f02004f

    .line 192
    :cond_1
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method protected getDrawableLoading()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getDrawableLoadingError()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getImageUrl()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 173
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->getTarget()Lcom/scoreloop/client/android/core/model/GameItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/GameItem;->isCoinPack()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-object v1

    .line 176
    :cond_1
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->getTarget()Lcom/scoreloop/client/android/core/model/GameItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/GameItem;->getDefaultImageKey()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, imageKey:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->getTarget()Lcom/scoreloop/client/android/core/model/GameItem;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/model/GameItem;->getImageUrlForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getPriceText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->_priceText:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceTextSmall()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->_priceTextSmall:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->_subTitle:Ljava/lang/String;

    return-object v0
.end method

.method protected getTarget()Lcom/scoreloop/client/android/core/model/GameItem;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->_target:Lcom/scoreloop/client/android/core/model/GameItem;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x1

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "view"
    .parameter "parent"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 137
    if-nez p1, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v9, 0x7f030017

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, imageUrl:Ljava/lang/String;
    const v6, 0x7f0c0039

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 142
    .local v1, icon:Landroid/widget/ImageView;
    if-eqz v2, :cond_5

    .line 143
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->getDrawableLoading()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 144
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->getDrawableLoadingError()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v2, v0, v1, v6}, Lcom/scoreloop/client/android/ui/util/ImageDownloader;->downloadImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 151
    :cond_1
    :goto_0
    const v6, 0x7f0c0023

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    const v6, 0x7f0c003a

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 154
    .local v5, subTitle:Landroid/widget/TextView;
    if-eqz v5, :cond_2

    .line 155
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->getSubTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :cond_2
    const v6, 0x7f0c003d

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 158
    .local v3, priceText:Landroid/widget/TextView;
    if-eqz v3, :cond_3

    .line 159
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->getPriceText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_6

    move v6, v7

    :goto_1
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->getPriceText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :cond_3
    const v6, 0x7f0c003c

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 163
    .local v4, priceTextSmall:Landroid/widget/TextView;
    if-eqz v4, :cond_4

    .line 164
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->getPriceTextSmall()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_7

    :goto_2
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->getPriceTextSmall()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    :cond_4
    const v6, 0x7f0c003b

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->buttonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    return-object p1

    .line 146
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v3           #priceText:Landroid/widget/TextView;
    .end local v4           #priceTextSmall:Landroid/widget/TextView;
    .end local v5           #subTitle:Landroid/widget/TextView;
    :cond_5
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 147
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .restart local v3       #priceText:Landroid/widget/TextView;
    .restart local v5       #subTitle:Landroid/widget/TextView;
    :cond_6
    move v6, v8

    .line 159
    goto :goto_1

    .restart local v4       #priceTextSmall:Landroid/widget/TextView;
    :cond_7
    move v7, v8

    .line 164
    goto :goto_2
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 197
    iget-boolean v1, p0, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->_isPending:Z

    if-eqz v1, :cond_1

    .line 202
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->getTarget()Lcom/scoreloop/client/android/core/model/GameItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/GameItem;->isPurchased()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->getTarget()Lcom/scoreloop/client/android/core/model/GameItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/GameItem;->isCollectable()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPriceText(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->setPriceText(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public setPriceText(Ljava/lang/String;)V
    .locals 0
    .parameter "subTitle2"

    .prologue
    .line 128
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->_priceText:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setPriceTextSmall(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->setPriceTextSmall(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public setPriceTextSmall(Ljava/lang/String;)V
    .locals 0
    .parameter "subTitle3"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->_priceTextSmall:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setSubTitle(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->setSubTitle(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public setSubTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "subTitle"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/component/payment/GameItemListItem;->_subTitle:Ljava/lang/String;

    .line 113
    return-void
.end method
