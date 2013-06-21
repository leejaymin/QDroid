.class public Lcom/scoreloop/client/android/ui/component/game/GameListItem;
.super Lcom/scoreloop/client/android/ui/component/base/StandardListItem;
.source "GameListItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scoreloop/client/android/ui/component/base/StandardListItem",
        "<",
        "Lcom/scoreloop/client/android/core/model/Game;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Landroid/graphics/drawable/Drawable;Lcom/scoreloop/client/android/core/model/Game;)V
    .locals 6
    .parameter "context"
    .parameter "drawable"
    .parameter "game"

    .prologue
    .line 35
    invoke-virtual {p3}, Lcom/scoreloop/client/android/core/model/Game;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/scoreloop/client/android/core/model/Game;->getPublisherName()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;-><init>(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/game/GameListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/game/GameListItem;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/Game;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Game;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 45
    const/16 v0, 0xc

    return v0
.end method
