.class public Lcom/scoreloop/client/android/core/socialprovider/twitter/TwitterSocialProvider;
.super Lcom/scoreloop/client/android/core/model/SocialProvider;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/model/SocialProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 14
    const-class v0, Lcom/scoreloop/client/android/core/socialprovider/twitter/TwitterSocialProviderController;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x2

    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "com.twitter.v1"

    return-object v0
.end method
