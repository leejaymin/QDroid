.class public Lcom/scoreloop/client/android/ui/component/achievement/AchievementListItem$AchievementViewHolder;
.super Lcom/scoreloop/client/android/ui/component/base/StandardListItem$StandardViewHolder;
.source "AchievementListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/ui/component/achievement/AchievementListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AchievementViewHolder"
.end annotation


# instance fields
.field accessory:Landroid/view/View;

.field increment:Landroid/widget/TextView;

.field progress:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem$StandardViewHolder;-><init>()V

    return-void
.end method
