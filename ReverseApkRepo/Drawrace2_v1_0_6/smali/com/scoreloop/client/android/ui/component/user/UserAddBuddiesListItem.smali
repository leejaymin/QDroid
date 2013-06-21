.class public Lcom/scoreloop/client/android/ui/component/user/UserAddBuddiesListItem;
.super Lcom/scoreloop/client/android/ui/component/base/StandardListItem;
.source "UserAddBuddiesListItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scoreloop/client/android/ui/component/base/StandardListItem",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;)V
    .locals 6
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    .line 32
    const v0, 0x7f080271

    invoke-virtual {p1, v0}, Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;-><init>(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 37
    const v0, 0x7f030031

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 42
    const/16 v0, 0x19

    return v0
.end method
