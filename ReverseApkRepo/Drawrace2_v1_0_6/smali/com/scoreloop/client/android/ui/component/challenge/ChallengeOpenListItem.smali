.class public Lcom/scoreloop/client/android/ui/component/challenge/ChallengeOpenListItem;
.super Lcom/scoreloop/client/android/ui/component/base/StandardListItem;
.source "ChallengeOpenListItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scoreloop/client/android/ui/component/base/StandardListItem",
        "<",
        "Lcom/scoreloop/client/android/core/model/Challenge;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Lcom/scoreloop/client/android/core/model/Challenge;)V
    .locals 2
    .parameter "context"
    .parameter "challenge"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;-><init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Ljava/lang/Object;)V

    .line 35
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeOpenListItem;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/model/Challenge;->getContender()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/User;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeOpenListItem;->setTitle(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/model/Challenge;->getMode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getModeString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeOpenListItem;->setSubTitle(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/model/Challenge;->getStake()Lcom/scoreloop/client/android/core/model/Money;

    move-result-object v0

    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeOpenListItem;->getComponentActivity()Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getConfiguration()Lcom/scoreloop/client/android/ui/component/base/Configuration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/scoreloop/client/android/ui/component/base/StringFormatter;->formatMoney(Lcom/scoreloop/client/android/core/model/Money;Lcom/scoreloop/client/android/ui/component/base/Configuration;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeOpenListItem;->setSubTitle2(Ljava/lang/String;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/challenge/ChallengeOpenListItem;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/Challenge;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Challenge;->getContender()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/User;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 53
    const v0, 0x7f030021

    return v0
.end method

.method protected getSubTitle2Id()I
    .locals 1

    .prologue
    .line 58
    const v0, 0x7f0c005e

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x6

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method
