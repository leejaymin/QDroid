.class public Lcom/scoreloop/client/android/ui/PaymentScreenActivity;
.super Lcom/scoreloop/client/android/ui/framework/ScreenActivity;
.source "PaymentScreenActivity.java"


# static fields
.field public static final GAME_ITEM_ID:Ljava/lang/String; = "gameItemId"

.field public static final PAYMENT_EXPLICIT_CURRENCY:Ljava/lang/String; = "paymentExplicitCurrency"

.field public static final RESULT_ALREADY_PURCHASED:I = 0x1

.field public static final RESULT_INVALID_GAME_ITEM:I = 0x2

.field public static final RESULT_NO_PAYMENT_METHODS:I = 0x3

.field public static final RESULT_PAYMENT_FAILED:I = 0x4

.field public static final RESULT_PAYMENT_PENDING:I = 0x5

.field public static final VIEW_FLAGS:Ljava/lang/String; = "viewFlags"

.field public static final VIEW_FLAGS_SHOW_ALL_PRICES:I = 0x4

.field public static final VIEW_FLAGS_SHOW_TOASTS:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-static {}, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton;->getImpl()Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;

    move-result-object v6

    invoke-interface {v6}, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;->getConfiguration()Lcom/scoreloop/client/android/ui/component/base/Configuration;

    move-result-object v0

    .line 93
    .local v0, configuration:Lcom/scoreloop/client/android/ui/component/base/Configuration;
    sget-object v6, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->PAYMENT:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    invoke-virtual {v0, v6}, Lcom/scoreloop/client/android/ui/component/base/Configuration;->isFeatureEnabled(Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/PaymentScreenActivity;->finish()V

    .line 114
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/PaymentScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 100
    .local v4, intent:Landroid/content/Intent;
    const-string v6, "gameItemId"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 101
    .local v3, gameItemId:Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 102
    :cond_1
    const-string v6, "ScoreloopUI"

    const-string v7, "missing extra parameter gameItemId"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/PaymentScreenActivity;->finish()V

    .line 105
    :cond_2
    const-string v6, "paymentExplicitCurrency"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, explicitCurrency:Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_3

    .line 107
    const-string v6, "ScoreloopUI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "strange explicit currency: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/PaymentScreenActivity;->finish()V

    .line 110
    :cond_3
    const-string v6, "viewFlags"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    or-int/lit8 v5, v6, 0x10

    .line 112
    .local v5, viewFlags:I
    invoke-static {}, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton;->getImpl()Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;

    move-result-object v6

    invoke-interface {v6}, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;->getFactory()Lcom/scoreloop/client/android/ui/component/base/Factory;

    move-result-object v2

    .line 113
    .local v2, factory:Lcom/scoreloop/client/android/ui/component/base/Factory;
    invoke-interface {v2, v3, v1, v5}, Lcom/scoreloop/client/android/ui/component/base/Factory;->createPaymentMethodsScreenDescription(Ljava/lang/String;Ljava/lang/String;I)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v6

    invoke-virtual {p0, v6, p1}, Lcom/scoreloop/client/android/ui/PaymentScreenActivity;->display(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;Landroid/os/Bundle;)V

    goto :goto_0
.end method
