.class public Lcom/scoreloop/client/android/ui/component/achievement/AchievementHeaderActivity;
.super Lcom/scoreloop/client/android/ui/component/base/ComponentHeaderActivity;
.source "AchievementHeaderActivity.java"


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
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    const v0, 0x7f030019

    invoke-super {p0, p1, v0}, Lcom/scoreloop/client/android/ui/component/base/ComponentHeaderActivity;->onCreate(Landroid/os/Bundle;I)V

    .line 38
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementHeaderActivity;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementHeaderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementHeaderActivity;->getGame()Lcom/scoreloop/client/android/core/model/Game;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Game;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementHeaderActivity;->setCaption(Ljava/lang/String;)V

    .line 40
    const v0, 0x7f08026b

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementHeaderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementHeaderActivity;->setTitle(Ljava/lang/String;)V

    .line 42
    new-array v0, v5, [Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "userValues"

    aput-object v2, v1, v3

    const-string v2, "numberAchievements"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->concatenateKeys([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "userValues"

    aput-object v2, v1, v3

    const-string v2, "numberAwards"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->concatenateKeys([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementHeaderActivity;->addObservedKeys([Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public onValueChanged(Lcom/scoreloop/client/android/ui/framework/ValueStore;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter "valueStore"
    .parameter "key"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementHeaderActivity;->getUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/scoreloop/client/android/ui/component/base/StringFormatter;->getAchievementsSubTitle(Landroid/content/Context;Lcom/scoreloop/client/android/ui/framework/ValueStore;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementHeaderActivity;->setSubTitle(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public onValueSetDirty(Lcom/scoreloop/client/android/ui/framework/ValueStore;Ljava/lang/String;)V
    .locals 3
    .parameter "valueStore"
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    .line 53
    const-string v0, "numberAchievements"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementHeaderActivity;->getUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    sget-object v1, Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;->NOT_DIRTY:Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;

    invoke-virtual {v0, p2, v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->retrieveValue(Ljava/lang/String;Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;Ljava/lang/Object;)Z

    .line 56
    :cond_0
    const-string v0, "numberAwards"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementHeaderActivity;->getUserValues()Lcom/scoreloop/client/android/ui/framework/ValueStore;

    move-result-object v0

    sget-object v1, Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;->NOT_DIRTY:Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;

    invoke-virtual {v0, p2, v1, v2}, Lcom/scoreloop/client/android/ui/framework/ValueStore;->retrieveValue(Ljava/lang/String;Lcom/scoreloop/client/android/ui/framework/ValueStore$RetrievalMode;Ljava/lang/Object;)Z

    .line 59
    :cond_1
    return-void
.end method
