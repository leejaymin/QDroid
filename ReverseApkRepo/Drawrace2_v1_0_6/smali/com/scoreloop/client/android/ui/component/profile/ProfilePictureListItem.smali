.class public Lcom/scoreloop/client/android/ui/component/profile/ProfilePictureListItem;
.super Lcom/scoreloop/client/android/ui/component/base/StandardListItem;
.source "ProfilePictureListItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/scoreloop/client/android/ui/component/base/StandardListItem",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final _socialProviderIdentifier:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/ui/component/base/ComponentActivity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "drawable"
    .parameter "title"
    .parameter "socialProviderIdentifier"

    .prologue
    const/4 v4, 0x0

    .line 37
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/scoreloop/client/android/ui/component/base/StandardListItem;-><init>(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    iput-object p4, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfilePictureListItem;->_socialProviderIdentifier:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method protected getIconId()I
    .locals 1

    .prologue
    .line 43
    const v0, 0x7f0c006b

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 48
    const v0, 0x7f030029

    return v0
.end method

.method public getSocialProviderIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/component/profile/ProfilePictureListItem;->_socialProviderIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method protected getSubTitleId()I
    .locals 1

    .prologue
    .line 57
    const v0, 0x7f0c006d

    return v0
.end method

.method protected getTitleId()I
    .locals 1

    .prologue
    .line 62
    const v0, 0x7f0c006c

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 67
    const/16 v0, 0x12

    return v0
.end method
