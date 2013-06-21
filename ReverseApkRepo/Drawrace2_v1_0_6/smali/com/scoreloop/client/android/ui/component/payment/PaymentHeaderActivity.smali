.class public Lcom/scoreloop/client/android/ui/component/payment/PaymentHeaderActivity;
.super Lcom/scoreloop/client/android/ui/component/base/ComponentHeaderActivity;
.source "PaymentHeaderActivity.java"


# static fields
.field private static final DRAWABLE_ID_GAME_ITEM:I = 0x7f02003f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentHeaderActivity;-><init>()V

    return-void
.end method

.method private updateUI()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 62
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentHeaderActivity;->getScreenValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v3

    const-string v4, "gameItem"

    invoke-virtual {v3, v4, v5}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/GameItem;

    .line 63
    .local v0, gameItem:Lcom/scoreloop/client/android/core/model/GameItem;
    if-nez v0, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/GameItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/scoreloop/client/android/ui/component/payment/PaymentHeaderActivity;->setSubTitle(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/GameItem;->getDefaultImageKey()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, imageKey:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 73
    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/model/GameItem;->getImageUrlForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, imageUrl:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentHeaderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02003f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentHeaderActivity;->getImageView()Landroid/widget/ImageView;

    move-result-object v4

    invoke-static {v2, v3, v4, v5}, Lcom/scoreloop/client/android/ui/util/ImageDownloader;->downloadImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 75
    .end local v2           #imageUrl:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/GameItem;->isCoinPack()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentHeaderActivity;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentHeaderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020039

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 39
    const v0, 0x7f030019

    invoke-super {p0, p1, v0}, Lcom/scoreloop/client/android/ui/component/base/ComponentHeaderActivity;->onCreate(Landroid/os/Bundle;I)V

    .line 42
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentHeaderActivity;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Game;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentHeaderActivity;->setCaption(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentHeaderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0802fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentHeaderActivity;->setTitle(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentHeaderActivity;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentHeaderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "gameItem"

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentHeaderActivity;->addObservedKeys([Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public onValueChanged(Lcom/scoreloop/client/android/ui/framework/ValueStore;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "valueStore"
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentHeaderActivity;->updateUI()V

    .line 52
    return-void
.end method

.method public onValueSetDirty(Lcom/scoreloop/client/android/ui/framework/ValueStore;Ljava/lang/String;)V
    .locals 3
    .parameter "valueStore"
    .parameter "key"

    .prologue
    .line 56
    const-string v0, "gameItem"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/PaymentHeaderActivity;->getScreenValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    sget-object v1, Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;->NOT_DIRTY:Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->retrieveValue(Ljava/lang/String;Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;Ljava/lang/Object;)Z

    .line 59
    :cond_0
    return-void
.end method
