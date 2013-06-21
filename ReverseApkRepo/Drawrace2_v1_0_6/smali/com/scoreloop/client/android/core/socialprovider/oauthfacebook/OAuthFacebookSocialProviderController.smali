.class public final Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;
.super Lcom/scoreloop/client/android/core/controller/SocialProviderController;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "publish_stream"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "read_stream"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "offline_access"

    aput-object v2, v0, v1

    sput-object v0, Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/scoreloop/client/android/core/controller/SocialProviderController;-><init>(Lcom/scoreloop/client/android/core/model/Session;Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;)V

    .line 25
    return-void
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;)Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;
    .locals 1
    .parameter

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;->c()Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;Lcom/scoreloop/client/android/core/controller/SocialProviderController$UpdateMode;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;->a(Lcom/scoreloop/client/android/core/controller/SocialProviderController$UpdateMode;)V

    return-void
.end method

.method static synthetic b(Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;)Lcom/scoreloop/client/android/core/model/User;
    .locals 1
    .parameter

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;->e()Lcom/scoreloop/client/android/core/model/User;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;)Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProvider;
    .locals 1
    .parameter

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;->getSocialProvider()Lcom/scoreloop/client/android/core/model/SocialProvider;

    move-result-object v0

    check-cast v0, Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProvider;

    return-object v0
.end method

.method static synthetic d(Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;)Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;
    .locals 1
    .parameter

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;->c()Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;)Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;
    .locals 1
    .parameter

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;->c()Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;)Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;
    .locals 1
    .parameter

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;->c()Lcom/scoreloop/client/android/core/controller/SocialProviderControllerObserver;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 4

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;->f_()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 30
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 32
    new-instance v0, Lcom/facebook/android/b;

    const-string v1, "75418507755"

    invoke-direct {v0, v1}, Lcom/facebook/android/b;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;->f_()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;->a:[Ljava/lang/String;

    new-instance v3, Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController$1;

    invoke-direct {v3, p0, v0}, Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController$1;-><init>(Lcom/scoreloop/client/android/core/socialprovider/oauthfacebook/OAuthFacebookSocialProviderController;Lcom/facebook/android/b;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/android/b;->a(Landroid/app/Activity;[Ljava/lang/String;Lcom/facebook/android/b$a;)V

    .line 62
    return-void
.end method
