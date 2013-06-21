.class public Lcom/scoreloop/client/android/ui/component/score/ScoreListItem;
.super Lcom/scoreloop/client/android/ui/component/base/StandardListItem;
.source "ScoreListItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scoreloop/client/android/ui/component/base/StandardListItem",
        "<",
        "Lcom/scoreloop/client/android/core/model/Score;",
        ">;"
    }
.end annotation


# instance fields
.field private final _isEnabled:Z


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Lcom/scoreloop/client/android/core/model/Score;Z)V
    .locals 6
    .parameter "activity"
    .parameter "score"
    .parameter "isEnabled"

    .prologue
    .line 40
    const/4 v2, 0x0

    invoke-static {p1, p2}, Lcom/scoreloop/client/android/ui/component/base/StringFormatter;->getScoreTitle(Landroid/content/Context;Lcom/scoreloop/client/android/core/model/Score;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getConfiguration()Lcom/scoreloop/client/android/ui/component/base/Configuration;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/scoreloop/client/android/ui/component/base/StringFormatter;->formatLeaderboardsScore(Lcom/scoreloop/client/android/core/model/Score;Lcom/scoreloop/client/android/ui/component/base/Configuration;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;-><init>(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    iput-boolean p3, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListItem;->_isEnabled:Z

    .line 43
    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getImageUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/score/ScoreListItem;->getTarget()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/scoreloop/client/android/core/model/Score;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Score;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v0

    .line 48
    .local v0, user:Lcom/scoreloop/client/android/core/model/User;
    if-nez v0, :cond_0

    .line 50
    invoke-static {}, Lcom/scoreloop/client/android/core/model/Session;->getCurrentSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/model/Session;->getUser()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v0

    .line 52
    :cond_0
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/User;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 57
    const v0, 0x7f03002c

    return v0
.end method

.method protected getSubTitleId()I
    .locals 1

    .prologue
    .line 62
    const v0, 0x7f0c0074

    return v0
.end method

.method protected getTitleId()I
    .locals 1

    .prologue
    .line 67
    const v0, 0x7f0c0073

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 72
    const/16 v0, 0x13

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/scoreloop/client/android/ui/component/score/ScoreListItem;->_isEnabled:Z

    return v0
.end method
