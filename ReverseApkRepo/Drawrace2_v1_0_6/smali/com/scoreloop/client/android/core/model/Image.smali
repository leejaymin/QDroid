.class public abstract Lcom/scoreloop/client/android/core/model/Image;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/model/Image$ResizeMode;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/scoreloop/client/android/core/model/Image$ResizeMode;)[B
.end method

.method public toUserImagePng()[B
    .locals 1
    .annotation build Lcom/scoreloop/client/android/core/PublishedFor__3_0_0;
    .end annotation

    .prologue
    .line 25
    sget-object v0, Lcom/scoreloop/client/android/core/model/Image$ResizeMode;->CROP:Lcom/scoreloop/client/android/core/model/Image$ResizeMode;

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/model/Image;->a(Lcom/scoreloop/client/android/core/model/Image$ResizeMode;)[B

    move-result-object v0

    return-object v0
.end method
