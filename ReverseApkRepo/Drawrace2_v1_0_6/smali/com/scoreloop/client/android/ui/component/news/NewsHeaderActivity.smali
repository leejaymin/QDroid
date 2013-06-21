.class public Lcom/scoreloop/client/android/ui/component/news/NewsHeaderActivity;
.super Lcom/scoreloop/client/android/ui/component/base/ComponentHeaderActivity;
.source "NewsHeaderActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/base/ComponentHeaderActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 36
    const v0, 0x7f030019

    invoke-super {p0, p1, v0}, Lcom/scoreloop/client/android/ui/component/base/ComponentHeaderActivity;->onCreate(Landroid/os/Bundle;I)V

    .line 38
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/news/NewsHeaderActivity;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Game;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/news/NewsHeaderActivity;->setCaption(Ljava/lang/String;)V

    .line 39
    const v0, 0x7f0802e0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/news/NewsHeaderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/news/NewsHeaderActivity;->setTitle(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/news/NewsHeaderActivity;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/news/NewsHeaderActivity;->getUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v1

    invoke-static {p0, v1, v3}, Lcom/scoreloop/client/android/ui/component/base/StringFormatter;->getNewsDrawable(Landroid/content/Context;Lcom/scoreloop/client/android/ui/framework/ValueStore;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "userValues"

    aput-object v2, v1, v4

    const-string v2, "newsNumberUnreadItems"

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->concatenateKeys([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/news/NewsHeaderActivity;->addObservedKeys([Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public onValueChanged(Lcom/scoreloop/client/android/ui/framework/ValueStore;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .parameter "valueStore"
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/news/NewsHeaderActivity;->getUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/scoreloop/client/android/ui/component/base/StringFormatter;->getNewsSubTitle(Landroid/content/Context;Lcom/scoreloop/client/android/ui/framework/ValueStore;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/news/NewsHeaderActivity;->setSubTitle(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/news/NewsHeaderActivity;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/news/NewsHeaderActivity;->getUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/scoreloop/client/android/ui/component/base/StringFormatter;->getNewsDrawable(Landroid/content/Context;Lcom/scoreloop/client/android/ui/framework/ValueStore;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    return-void
.end method

.method public onValueSetDirty(Lcom/scoreloop/client/android/ui/framework/ValueStore;Ljava/lang/String;)V
    .locals 4
    .parameter "valueStore"
    .parameter "key"

    .prologue
    .line 53
    const-string v0, "newsNumberUnreadItems"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/news/NewsHeaderActivity;->getUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    sget-object v1, Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;->NOT_OLDER_THAN:Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;

    const-wide/16 v2, 0x7530

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->retrieveValue(Ljava/lang/String;Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;Ljava/lang/Object;)Z

    .line 56
    :cond_0
    return-void
.end method
