.class public Lcom/scoreloop/client/android/ui/component/profile/ProfileListItem;
.super Lcom/scoreloop/client/android/ui/component/base/StandardListItem;
.source "ProfileListItem.java"


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
.method public constructor <init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "activity"
    .parameter "drawable"
    .parameter "title"
    .parameter "subTitle"

    .prologue
    .line 33
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;-><init>(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 38
    const/16 v0, 0x11

    return v0
.end method
