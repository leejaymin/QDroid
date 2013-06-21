.class public Lcom/scoreloop/client/android/ui/component/game/GameDetailUserListItem;
.super Lcom/scoreloop/client/android/ui/component/base/StandardListItem;
.source "GameDetailUserListItem.java"


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
    .parameter "context"
    .parameter "user"

    .prologue
    .line 33
    invoke-virtual {p1}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2}, Lcom/scoreloop/client/android/core/model/User;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;-><init>(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/game/GameDetailUserListItem;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/User;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 43
    const v0, 0x7f030030

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0xe

    return v0
.end method
