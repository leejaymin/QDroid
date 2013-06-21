.class public Lcom/scoreloop/client/android/ui/component/payment/GameItemDetailListItem;
.super Lcom/scoreloop/client/android/ui/framework/BaseListItem;
.source "GameItemDetailListItem.java"


# instance fields
.field private final _gameItem:Lcom/scoreloop/client/android/core/model/GameItem;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Landroid/graphics/drawable/Drawable;Lcom/scoreloop/client/android/core/model/GameItem;)V
    .locals 1
    .parameter "activity"
    .parameter "drawable"
    .parameter "game"

    .prologue
    .line 41
    invoke-virtual {p3}, Lcom/scoreloop/client/android/core/model/GameItem;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/scoreloop/client/android/ui/framework/BaseListItem;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 42
    iput-object p3, p0, Lcom/scoreloop/client/android/ui/component/payment/GameItemDetailListItem;->_gameItem:Lcom/scoreloop/client/android/core/model/GameItem;

    .line 43
    return-void
.end method


# virtual methods
.method public getComponentActivity()Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemDetailListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0xd

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "view"
    .parameter "parent"

    .prologue
    .line 56
    if-nez p1, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemDetailListItem;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030026

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 60
    :cond_0
    const v3, 0x7f0c006a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 61
    .local v2, textView:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/payment/GameItemDetailListItem;->_gameItem:Lcom/scoreloop/client/android/core/model/GameItem;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/GameItem;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, description:Ljava/lang/String;
    const-string v1, ""

    .line 63
    .local v1, text:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    :goto_0
    iget-object v3, p0, Lcom/scoreloop/client/android/ui/component/payment/GameItemDetailListItem;->_gameItem:Lcom/scoreloop/client/android/core/model/GameItem;

    invoke-virtual {v3}, Lcom/scoreloop/client/android/core/model/GameItem;->isCoinPack()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/scoreloop/client/android/ui/component/payment/GameItemDetailListItem;->_gameItem:Lcom/scoreloop/client/android/core/model/GameItem;

    invoke-virtual {v4}, Lcom/scoreloop/client/android/core/model/GameItem;->getCoinPackValue()Lcom/scoreloop/client/android/core/model/Money;

    move-result-object v4

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/payment/GameItemDetailListItem;->getComponentActivity()Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getConfiguration()Lcom/scoreloop/client/android/ui/component/base/Configuration;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/scoreloop/client/android/ui/component/base/StringFormatter;->formatMoney(Lcom/scoreloop/client/android/core/model/Money;Lcom/scoreloop/client/android/ui/component/base/Configuration;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    :cond_1
    const-string v3, "\r"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    return-object p1

    .line 66
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/scoreloop/client/android/ui/component/payment/GameItemDetailListItem;->_gameItem:Lcom/scoreloop/client/android/core/model/GameItem;

    invoke-virtual {v4}, Lcom/scoreloop/client/android/core/model/GameItem;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method
