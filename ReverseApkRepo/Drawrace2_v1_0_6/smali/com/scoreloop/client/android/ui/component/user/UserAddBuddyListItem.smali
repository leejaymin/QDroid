.class public Lcom/scoreloop/client/android/ui/component/user/UserAddBuddyListItem;
.super Lcom/scoreloop/client/android/ui/component/base/StandardListItem;
.source "UserAddBuddyListItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scoreloop/client/android/ui/component/base/StandardListItem",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .parameter "context"
    .parameter "drawable"
    .parameter "title"
    .parameter "target"

    .prologue
    .line 34
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;-><init>(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 39
    const v0, 0x7f030030

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 44
    const/16 v0, 0x1a

    return v0
.end method
