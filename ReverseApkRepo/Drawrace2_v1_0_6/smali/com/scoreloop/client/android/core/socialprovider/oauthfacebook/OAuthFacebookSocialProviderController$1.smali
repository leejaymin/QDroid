.class final Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/android/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/facebook/android/b;

.field private synthetic b:Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;


# direct methods
.method constructor <init>(Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;Lcom/facebook/android/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController$1;->b:Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;

    iput-object p2, p0, Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController$1;->a:Lcom/facebook/android/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController$1;->b:Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;->a(Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;)Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController$1;->b:Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;

    invoke-interface {v0, v1}, Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;->socialProviderControllerDidCancel(Lcom/scoreloop/client/android/core/controller/SocialProviderController;)V

    .line 38
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 42
    iget-object v0, p0, Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController$1;->a:Lcom/facebook/android/b;

    invoke-virtual {v0}, Lcom/facebook/android/b;->b()Ljava/lang/String;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    iget-object v1, p0, Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController$1;->b:Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;

    invoke-static {v1}, Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;->c(Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;)Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController$1;->b:Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;

    invoke-static {v2}, Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;->b(Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;)Lcom/scoreloop/client/android/core/model/User;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProvider;->a(Lcom/scoreloop/client/android/core/model/User;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController$1;->b:Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;

    sget-object v1, Lcom/scoreloop/client/android/core/controller/SocialProviderController$UpdateMode;->SUBMIT:Lcom/scoreloop/client/android/core/controller/SocialProviderController$UpdateMode;

    invoke-static {v0, v1}, Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;->a(Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;Lcom/scoreloop/client/android/core/controller/SocialProviderController$UpdateMode;)V

    .line 50
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController$1;->b:Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;->d(Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;)Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController$1;->b:Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "completed w/o token"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;->socialProviderControllerDidFail(Lcom/scoreloop/client/android/core/controller/SocialProviderController;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Lcom/facebook/android/a;)V
    .locals 2
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController$1;->b:Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;->e(Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;)Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController$1;->b:Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;

    invoke-interface {v0, v1, p1}, Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;->socialProviderControllerDidFail(Lcom/scoreloop/client/android/core/controller/SocialProviderController;Ljava/lang/Throwable;)V

    .line 55
    return-void
.end method

.method public final a(Lcom/facebook/android/d;)V
    .locals 2
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController$1;->b:Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;->f(Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;)Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController$1;->b:Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;

    invoke-interface {v0, v1, p1}, Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;->socialProviderControllerDidFail(Lcom/scoreloop/client/android/core/controller/SocialProviderController;Ljava/lang/Throwable;)V

    .line 60
    return-void
.end method
