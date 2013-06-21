.class public Lcom/scoreloop/client/android/ui/component/user/UserListItem;
.super Lcom/scoreloop/client/android/ui/component/base/StandardListItem;
.source "UserListItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scoreloop/client/android/ui/component/base/StandardListItem",
        "<",
        "Lcom/scoreloop/client/android/core/model/User;",
        ">;"
    }
.end annotation


# instance fields
.field private final _playsSessionGame:Z


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Landroid/graphics/drawable/Drawable;Lcom/scoreloop/client/android/core/model/User;Z)V
    .locals 6
    .parameter "context"
    .parameter "drawable"
    .parameter "user"
    .parameter "playsSessionGame"

    .prologue
    .line 37
    invoke-virtual {p3}, Lcom/scoreloop/client/android/core/model/User;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;-><init>(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    iput-boolean p4, p0, Lcom/scoreloop/client/android/ui/component/user/UserListItem;->_playsSessionGame:Z

    .line 39
    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/scoreloop/client/android/ui/component/user/UserListItem;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/model/User;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/User;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 48
    const v0, 0x7f030030

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 53
    const/16 v0, 0x18

    return v0
.end method

.method public playsSessionGame()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/scoreloop/client/android/ui/component/user/UserListItem;->_playsSessionGame:Z

    return v0
.end method
