.class public Lcom/scoreloop/client/android/ui/component/achievement/AchievementListItem;
.super Lcom/scoreloop/client/android/ui/component/base/StandardListItem;
.source "AchievementListItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/ui/component/achievement/AchievementListItem$AchievementViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scoreloop/client/android/ui/component/base/StandardListItem",
        "<",
        "Lcom/scoreloop/client/android/core/model/Achievement;",
        ">;"
    }
.end annotation


# instance fields
.field private final _belongsToSessionUser:Z


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Lcom/scoreloop/client/android/core/model/Achievement;Z)V
    .locals 2
    .parameter "activity"
    .parameter "achievement"
    .parameter "belongsToSessionUser"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Ljava/lang/Object;)V

    .line 49
    iput-boolean p3, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListItem;->_belongsToSessionUser:Z

    .line 51
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/model/Achievement;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListItem;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/model/Achievement;->getAward()Lcom/scoreloop/client/android/core/model/Award;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Award;->getLocalizedTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListItem;->setTitle(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/model/Achievement;->getAward()Lcom/scoreloop/client/android/core/model/Award;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Award;->getLocalizedDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListItem;->setSubTitle(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getConfiguration()Lcom/scoreloop/client/android/ui/component/base/Configuration;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/scoreloop/client/android/ui/component/base/StringFormatter;->getAchievementRewardTitle(Landroid/content/Context;Lcom/scoreloop/client/android/core/model/Achievement;Lcom/scoreloop/client/android/ui/component/base/Configuration;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListItem;->setSubTitle2(Ljava/lang/String;)V

    .line 58
    return-void
.end method


# virtual methods
.method protected createViewHolder()Lcom/scoreloop/client/android/ui/component/base/StandardListItem$StandardViewHolder;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListItem$AchievementViewHolder;

    invoke-direct {v0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListItem$AchievementViewHolder;-><init>()V

    return-object v0
.end method

.method protected fillViewHolder(Landroid/view/View;Lcom/scoreloop/client/android/ui/component/base/StandardListItem$StandardViewHolder;)V
    .locals 2
    .parameter "view"
    .parameter "holder"

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;->fillViewHolder(Landroid/view/View;Lcom/scoreloop/client/android/ui/component/base/StandardListItem$StandardViewHolder;)V

    move-object v0, p2

    .line 69
    check-cast v0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListItem$AchievementViewHolder;

    .line 70
    .local v0, achievementViewHolder:Lcom/scoreloop/client/android/ui/component/achievement/AchievementListItem$AchievementViewHolder;
    const v1, 0x7f0c0054

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListItem$AchievementViewHolder;->accessory:Landroid/view/View;

    .line 71
    const v1, 0x7f0c0050

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, v0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListItem$AchievementViewHolder;->progress:Landroid/widget/ProgressBar;

    .line 72
    const v1, 0x7f0c0051

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListItem$AchievementViewHolder;->increment:Landroid/widget/TextView;

    .line 73
    return-void
.end method

.method protected getIconId()I
    .locals 1

    .prologue
    .line 77
    const v0, 0x7f0c004e

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 82
    const v0, 0x7f03001d

    return v0
.end method

.method protected getSubTitle2Id()I
    .locals 1

    .prologue
    .line 87
    const v0, 0x7f0c0053

    return v0
.end method

.method protected getSubTitleId()I
    .locals 1

    .prologue
    .line 92
    const v0, 0x7f0c0052

    return v0
.end method

.method protected getTitleId()I
    .locals 1

    .prologue
    .line 97
    const v0, 0x7f0c004f

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListItem;->_belongsToSessionUser:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListItem;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/Achievement;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Achievement;->isAchieved()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListItem;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/Achievement;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Achievement;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateViews(Lcom/scoreloop/client/android/ui/component/base/StandardListItem$StandardViewHolder;)V
    .locals 6
    .parameter "holder"

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 112
    invoke-super {p0, p1}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;->updateViews(Lcom/scoreloop/client/android/ui/component/base/StandardListItem$StandardViewHolder;)V

    move-object v0, p1

    .line 114
    check-cast v0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListItem$AchievementViewHolder;

    .line 116
    .local v0, achievementViewHolder:Lcom/scoreloop/client/android/ui/component/achievement/AchievementListItem$AchievementViewHolder;
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListItem;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    iget-object v2, v0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListItem$AchievementViewHolder;->accessory:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 118
    iget-object v2, v0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListItem$AchievementViewHolder;->subTitle2:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    :goto_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListItem;->getTarget()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scoreloop/client/android/core/model/Achievement;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Achievement;->getAward()Lcom/scoreloop/client/android/core/model/Award;

    move-result-object v2

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Award;->getCounterRange()Lcom/scoreloop/client/android/core/model/Range;

    move-result-object v1

    .line 125
    .local v1, range:Lcom/scoreloop/client/android/core/model/Range;
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListItem;->getTarget()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scoreloop/client/android/core/model/Achievement;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Achievement;->isAchieved()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Range;->getLength()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 126
    iget-object v2, v0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListItem$AchievementViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 127
    iget-object v2, v0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListItem$AchievementViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Range;->getLength()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 128
    iget-object v3, v0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListItem$AchievementViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListItem;->getTarget()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scoreloop/client/android/core/model/Achievement;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/model/Achievement;->getValue()I

    move-result v2

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Range;->getLocation()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 130
    iget-object v2, v0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListItem$AchievementViewHolder;->increment:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    iget-object v3, v0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListItem$AchievementViewHolder;->increment:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListItem;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListItem;->getTarget()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/scoreloop/client/android/core/model/Achievement;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListItem;->getComponentActivity()Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getConfiguration()Lcom/scoreloop/client/android/ui/component/base/Configuration;

    move-result-object v5

    invoke-static {v4, v2, v5}, Lcom/scoreloop/client/android/ui/component/base/StringFormatter;->getAchievementIncrementTitle(Landroid/content/Context;Lcom/scoreloop/client/android/core/model/Achievement;Lcom/scoreloop/client/android/ui/component/base/Configuration;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    :goto_1
    return-void

    .line 120
    .end local v1           #range:Lcom/scoreloop/client/android/core/model/Range;
    :cond_0
    iget-object v2, v0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListItem$AchievementViewHolder;->accessory:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 121
    iget-object v2, v0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListItem$AchievementViewHolder;->subTitle2:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 134
    .restart local v1       #range:Lcom/scoreloop/client/android/core/model/Range;
    :cond_1
    iget-object v2, v0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListItem$AchievementViewHolder;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 135
    iget-object v2, v0, Lcom/scoreloop/client/android/ui/component/achievement/AchievementListItem$AchievementViewHolder;->increment:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method
