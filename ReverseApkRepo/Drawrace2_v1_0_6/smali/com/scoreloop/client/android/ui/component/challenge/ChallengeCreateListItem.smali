.class public Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListItem;
.super Lcom/scoreloop/client/android/ui/component/base/StandardListItem;
.source "ChallengeCreateListItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scoreloop/client/android/ui/component/base/StandardListItem",
        "<",
        "Lcom/scoreloop/client/android/core/model/User;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Lcom/scoreloop/client/android/core/model/User;)V
    .locals 6
    .parameter "activity"
    .parameter "user"

    .prologue
    const/4 v2, 0x0

    .line 33
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;-><init>(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    if-nez p2, :cond_0

    .line 35
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListItem;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080274

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListItem;->setTitle(Ljava/lang/String;)V

    .line 41
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListItem;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/model/User;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListItem;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListItem;->getTarget()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeCreateListItem;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/User;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 58
    const v0, 0x7f030030

    return v0
.end method

.method protected getSubTitleId()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x5

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method
