.class public final Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProvider;
.super Lcom/scoreloop/client/android/core/model/SocialProvider;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
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
    .line 13
    const-class v0, Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x1

    return v0
.end method

.method public final getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string v0, "com.facebook.v1"

    return-object v0
.end method
