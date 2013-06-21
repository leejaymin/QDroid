.class public Lcom/scoreloop/client/android/ui/GameItemsScreenActivity;
.super Lcom/scoreloop/client/android/ui/framework/ScreenActivity;
.source "GameItemsScreenActivity.java"


# static fields
.field public static final MODE:Ljava/lang/String; = "gameItemsMode"

.field public static final MODE_COIN_PACK:I = 0x1

.field public static final MODE_GAME_ITEM:I = 0x0

.field public static final PAYMENT_EXPLICIT_CURRENCY:Ljava/lang/String; = "paymentExplicitCurrency"

.field public static final TAGS:Ljava/lang/String; = "tags"

.field public static final VIEW_FLAGS:Ljava/lang/String; = "viewFlags"

.field public static final VIEW_FLAGS_HIDE_PURCHASED_ITEMS:I = 0x1

.field public static final VIEW_FLAGS_SHOW_ALL_PRICES:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x0

    .line 106
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/framework/ScreenActivity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-static {}, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton;->getImpl()Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;

    move-result-object v8

    invoke-interface {v8}, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;->getConfiguration()Lcom/scoreloop/client/android/ui/component/base/Configuration;

    move-result-object v0

    .line 109
    .local v0, configuration:Lcom/scoreloop/client/android/ui/component/base/Configuration;
    sget-object v8, Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;->PAYMENT:Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;

    invoke-virtual {v0, v8}, Lcom/scoreloop/client/android/ui/component/base/Configuration;->isFeatureEnabled(Lcom/scoreloop/client/android/ui/component/base/Configuration$Feature;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/GameItemsScreenActivity;->finish()V

    .line 136
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/GameItemsScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 116
    .local v3, intent:Landroid/content/Intent;
    const-string v8, "gameItemsMode"

    invoke-virtual {v3, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 117
    .local v4, mode:I
    const/4 v8, 0x1

    if-eq v4, v8, :cond_1

    if-eqz v4, :cond_1

    .line 118
    const-string v8, "ScoreloopUI"

    const-string v9, "invalid mode extra"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/GameItemsScreenActivity;->finish()V

    .line 121
    :cond_1
    const-string v8, "paymentExplicitCurrency"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, explicitCurrency:Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_2

    .line 123
    const-string v8, "ScoreloopUI"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "strange explicit currency: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/GameItemsScreenActivity;->finish()V

    .line 126
    :cond_2
    const-string v8, "tags"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 127
    .local v6, tagsArray:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 128
    .local v5, tags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_3

    .line 129
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #tags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .restart local v5       #tags:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v5, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 132
    :cond_3
    const-string v8, "viewFlags"

    invoke-virtual {v3, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 134
    .local v7, viewFlags:I
    invoke-static {}, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton;->getImpl()Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;

    move-result-object v8

    invoke-interface {v8}, Lcom/scoreloop/client/android/ui/ScoreloopManagerSingleton$Impl;->getFactory()Lcom/scoreloop/client/android/ui/component/base/Factory;

    move-result-object v2

    .line 135
    .local v2, factory:Lcom/scoreloop/client/android/ui/component/base/Factory;
    invoke-interface {v2, v4, v1, v5, v7}, Lcom/scoreloop/client/android/ui/component/base/Factory;->createGameItemsScreenDescription(ILjava/lang/String;Ljava/util/List;I)Lcom/scoreloop/client/android/ui/framework/ScreenDescription;

    move-result-object v8

    invoke-virtual {p0, v8, p1}, Lcom/scoreloop/client/android/ui/GameItemsScreenActivity;->display(Lcom/scoreloop/client/android/ui/framework/ScreenDescription;Landroid/os/Bundle;)V

    goto :goto_0
.end method
