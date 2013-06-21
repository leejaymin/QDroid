.class public Lcom/scoreloop/client/android/core/socialprovider/twitter/TwitterSocialProviderController;
.super Lcom/scoreloop/client/android/core/controller/SocialProviderController;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/socialprovider/AuthRequestDelegate;
.implements Lcom/scoreloop/client/android/core/socialprovider/AuthViewController$Observer;


# instance fields
.field private a:Lcom/scoreloop/client/android/core/socialprovider/twitter/b;

.field private b:Lcom/scoreloop/client/android/core/socialprovider/twitter/c;

.field private c:Lcom/scoreloop/client/android/core/socialprovider/twitter/b;


# direct methods
.method public constructor <init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/scoreloop/client/android/core/controller/SocialProviderController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Lcom/scoreloop/client/android/core/socialprovider/twitter/b;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/socialprovider/twitter/TwitterSocialProviderController;->d()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/scoreloop/client/android/core/socialprovider/twitter/b;-><init>(Lcom/scoreloop/client/android/core/socialprovider/AuthRequestDelegate;Lcom/scoreloop/client/android/core/model/Session;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/socialprovider/twitter/TwitterSocialProviderController;->a:Lcom/scoreloop/client/android/core/socialprovider/twitter/b;

    .line 34
    iget-object v0, p0, Lcom/scoreloop/client/android/core/socialprovider/twitter/TwitterSocialProviderController;->a:Lcom/scoreloop/client/android/core/socialprovider/twitter/b;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/socialprovider/twitter/b;->b()V

    .line 35
    return-void
.end method

.method public final a(Lcom/scoreloop/client/android/core/socialprovider/AuthRequest;)V
    .locals 5
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/scoreloop/client/android/core/socialprovider/twitter/TwitterSocialProviderController;->a:Lcom/scoreloop/client/android/core/socialprovider/twitter/b;

    if-ne p1, v0, :cond_0

    .line 42
    new-instance v0, Lcom/scoreloop/client/android/core/socialprovider/twitter/c;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/core/socialprovider/twitter/c;-><init>(Lcom/scoreloop/client/android/core/socialprovider/AuthViewController$Observer;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/socialprovider/twitter/TwitterSocialProviderController;->b:Lcom/scoreloop/client/android/core/socialprovider/twitter/c;

    .line 43
    iget-object v0, p0, Lcom/scoreloop/client/android/core/socialprovider/twitter/TwitterSocialProviderController;->b:Lcom/scoreloop/client/android/core/socialprovider/twitter/c;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/socialprovider/twitter/TwitterSocialProviderController;->a:Lcom/scoreloop/client/android/core/socialprovider/twitter/b;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/socialprovider/twitter/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/socialprovider/twitter/c;->a(Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/scoreloop/client/android/core/socialprovider/twitter/TwitterSocialProviderController;->b:Lcom/scoreloop/client/android/core/socialprovider/twitter/c;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/socialprovider/twitter/TwitterSocialProviderController;->f_()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/socialprovider/twitter/c;->a(Landroid/app/Activity;)V

    .line 56
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/socialprovider/twitter/TwitterSocialProviderController;->c:Lcom/scoreloop/client/android/core/socialprovider/twitter/b;

    if-ne p1, v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/scoreloop/client/android/core/socialprovider/twitter/TwitterSocialProviderController;->c:Lcom/scoreloop/client/android/core/socialprovider/twitter/b;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/socialprovider/twitter/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/scoreloop/client/android/core/socialprovider/twitter/TwitterSocialProviderController;->c:Lcom/scoreloop/client/android/core/socialprovider/twitter/b;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/socialprovider/twitter/b;->d()Ljava/lang/String;

    move-result-object v1

    .line 52
    iget-object v2, p0, Lcom/scoreloop/client/android/core/socialprovider/twitter/TwitterSocialProviderController;->c:Lcom/scoreloop/client/android/core/socialprovider/twitter/b;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/socialprovider/twitter/b;->e()Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/socialprovider/twitter/TwitterSocialProviderController;->getSocialProvider()Lcom/scoreloop/client/android/core/model/SocialProvider;

    move-result-object v3

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/socialprovider/twitter/TwitterSocialProviderController;->e()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v4

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/scoreloop/client/android/core/model/SocialProvider;->a(Lcom/scoreloop/client/android/core/model/User;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    sget-object v0, Lcom/scoreloop/client/android/core/controller/SocialProviderController$UpdateMode;->SUBMIT:Lcom/scoreloop/client/android/core/controller/SocialProviderController$UpdateMode;

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/socialprovider/twitter/TwitterSocialProviderController;->a(Lcom/scoreloop/client/android/core/controller/SocialProviderController$UpdateMode;)V

    goto :goto_0

    .line 57
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected request"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1
    .parameter

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/socialprovider/twitter/TwitterSocialProviderController;->c()Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;->socialProviderControllerDidFail(Lcom/scoreloop/client/android/core/controller/SocialProviderController;Ljava/lang/Throwable;)V

    .line 64
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 79
    new-instance v0, Lcom/scoreloop/client/android/core/socialprovider/twitter/b;

    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/socialprovider/twitter/TwitterSocialProviderController;->d()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/scoreloop/client/android/core/socialprovider/twitter/b;-><init>(Lcom/scoreloop/client/android/core/socialprovider/AuthRequestDelegate;Lcom/scoreloop/client/android/core/model/Session;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/socialprovider/twitter/TwitterSocialProviderController;->c:Lcom/scoreloop/client/android/core/socialprovider/twitter/b;

    .line 80
    iget-object v0, p0, Lcom/scoreloop/client/android/core/socialprovider/twitter/TwitterSocialProviderController;->c:Lcom/scoreloop/client/android/core/socialprovider/twitter/b;

    iget-object v1, p0, Lcom/scoreloop/client/android/core/socialprovider/twitter/TwitterSocialProviderController;->a:Lcom/scoreloop/client/android/core/socialprovider/twitter/b;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/socialprovider/twitter/b;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/scoreloop/client/android/core/socialprovider/twitter/TwitterSocialProviderController;->a:Lcom/scoreloop/client/android/core/socialprovider/twitter/b;

    invoke-virtual {v2}, Lcom/scoreloop/client/android/core/socialprovider/twitter/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/scoreloop/client/android/core/socialprovider/twitter/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 1
    .parameter

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/socialprovider/twitter/TwitterSocialProviderController;->c()Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;->socialProviderControllerDidFail(Lcom/scoreloop/client/android/core/controller/SocialProviderController;Ljava/lang/Throwable;)V

    .line 74
    return-void
.end method

.method public final e_()V
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/socialprovider/twitter/TwitterSocialProviderController;->c()Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;->socialProviderControllerDidCancel(Lcom/scoreloop/client/android/core/controller/SocialProviderController;)V

    .line 87
    return-void
.end method
