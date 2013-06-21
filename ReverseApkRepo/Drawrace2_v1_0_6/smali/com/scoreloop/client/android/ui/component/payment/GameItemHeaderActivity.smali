.class public Lcom/scoreloop/client/android/ui/component/payment/GameItemHeaderActivity;
.super Lcom/scoreloop/client/android/ui/component/base/ComponentHeaderActivity;
.source "GameItemHeaderActivity.java"


# instance fields
.field protected displayBalance:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentHeaderActivity;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scoreloop/client/android/ui/component/payment/GameItemHeaderActivity;->displayBalance:Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const v7, 0x7f02001a

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 41
    const v2, 0x7f030019

    invoke-super {p0, p1, v2}, Lcom/scoreloop/client/android/ui/component/base/ComponentHeaderActivity;->onCreate(Landroid/os/Bundle;I)V

    .line 42
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemHeaderActivity;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Game;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/payment/GameItemHeaderActivity;->setCaption(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemHeaderActivity;->getActivityArguments()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v2

    const-string v3, "gameItemsMode"

    invoke-virtual {v2, v3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 45
    .local v1, mode:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_2

    .line 47
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemHeaderActivity;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemHeaderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02003f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemHeaderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08031c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/payment/GameItemHeaderActivity;->setTitle(Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton;->get()Lcom/scoreloop/client/android/ui/ScoreloopManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/scoreloop/client/android/ui/ScoreloopManager;->getSupportedPaymentProviderKinds()Ljava/util/Set;

    move-result-object v2

    const-string v3, "game_currency"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    const v2, 0x7f0c0043

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/payment/GameItemHeaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 53
    .local v0, icon:Landroid/widget/ImageView;
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 54
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 55
    new-instance v2, Lcom/scoreloop/client/android/ui/component/payment/GameItemHeaderActivity$1;

    invoke-direct {v2, p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemHeaderActivity$1;-><init>(Lcom/scoreloop/client/android/ui/component/payment/GameItemHeaderActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iput-boolean v5, p0, Lcom/scoreloop/client/android/ui/component/payment/GameItemHeaderActivity;->displayBalance:Z

    .line 72
    .end local v0           #icon:Landroid/widget/ImageView;
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/scoreloop/client/android/ui/component/payment/GameItemHeaderActivity;->displayBalance:Z

    if-eqz v2, :cond_1

    .line 73
    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "userValues"

    aput-object v4, v3, v6

    const-string v4, "userBalance"

    aput-object v4, v3, v5

    invoke-static {v3}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->concatenateKeys([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/payment/GameItemHeaderActivity;->addObservedKeys([Ljava/lang/String;)V

    .line 75
    :cond_1
    return-void

    .line 66
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemHeaderActivity;->getImageView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemHeaderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemHeaderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08026f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/scoreloop/client/android/ui/component/payment/GameItemHeaderActivity;->setTitle(Ljava/lang/String;)V

    .line 69
    iput-boolean v5, p0, Lcom/scoreloop/client/android/ui/component/payment/GameItemHeaderActivity;->displayBalance:Z

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentHeaderActivity;->onStart()V

    .line 80
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemHeaderActivity;->getUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    const-string v1, "userBalance"

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->setDirty(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public onValueChanged(Lcom/scoreloop/client/android/ui/framework/ValueStore;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter "valueStore"
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemHeaderActivity;->getUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemHeaderActivity;->getConfiguration()Lcom/scoreloop/client/android/ui/component/base/Configuration;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/scoreloop/client/android/ui/component/base/StringFormatter;->getBalanceSubTitle(Landroid/content/Context;Lcom/scoreloop/client/android/ui/framework/ValueStore;Lcom/scoreloop/client/android/ui/component/base/Configuration;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemHeaderActivity;->setSubTitle(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public onValueSetDirty(Lcom/scoreloop/client/android/ui/framework/ValueStore;Ljava/lang/String;)V
    .locals 3
    .parameter "valueStore"
    .parameter "key"

    .prologue
    .line 90
    const-string v0, "userBalance"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemHeaderActivity;->getUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    sget-object v1, Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;->NOT_DIRTY:Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->retrieveValue(Ljava/lang/String;Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;Ljava/lang/Object;)Z

    .line 93
    :cond_0
    return-void
.end method
