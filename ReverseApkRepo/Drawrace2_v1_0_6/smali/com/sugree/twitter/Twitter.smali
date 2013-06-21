.class public Lcom/sugree/twitter/Twitter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sugree/twitter/Twitter$DialogListener;
    }
.end annotation


# static fields
.field public static final ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field public static final AUTHORIZE:Ljava/lang/String; = "authorize"

.field public static final CALLBACK_URI:Ljava/lang/String; = "twitter://callback"

.field public static final CANCEL_URI:Ljava/lang/String; = "twitter://cancel"

.field protected static OAUTH_ACCESS_TOKEN:Ljava/lang/String; = null

.field protected static OAUTH_AUTHORIZE:Ljava/lang/String; = null

.field protected static OAUTH_REQUEST_TOKEN:Ljava/lang/String; = null

.field public static final REQUEST:Ljava/lang/String; = "request"

.field protected static REQUEST_ENDPOINT:Ljava/lang/String; = null

.field public static final SECRET_TOKEN:Ljava/lang/String; = "secret_token"

.field public static final TAG:Ljava/lang/String; = "twitter"


# instance fields
.field private mAccessToken:Ljava/lang/String;

.field private mHttpOauthConsumer:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

.field private mHttpOauthProvider:Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;

.field private mSecretToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "https://api.twitter.com/1"

    sput-object v0, Lcom/sugree/twitter/Twitter;->REQUEST_ENDPOINT:Ljava/lang/String;

    const-string v0, "https://api.twitter.com/oauth/request_token"

    sput-object v0, Lcom/sugree/twitter/Twitter;->OAUTH_REQUEST_TOKEN:Ljava/lang/String;

    const-string v0, "https://api.twitter.com/oauth/access_token"

    sput-object v0, Lcom/sugree/twitter/Twitter;->OAUTH_ACCESS_TOKEN:Ljava/lang/String;

    const-string v0, "https://api.twitter.com/oauth/authorize"

    sput-object v0, Lcom/sugree/twitter/Twitter;->OAUTH_AUTHORIZE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sugree/twitter/Twitter;->mAccessToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/sugree/twitter/Twitter;->mSecretToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public authorize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sugree/twitter/Twitter$DialogListener;)V
    .locals 4

    new-instance v0, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    invoke-direct {v0, p2, p3}, Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sugree/twitter/Twitter;->mHttpOauthConsumer:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    new-instance v0, Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;

    sget-object v1, Lcom/sugree/twitter/Twitter;->OAUTH_REQUEST_TOKEN:Ljava/lang/String;

    sget-object v2, Lcom/sugree/twitter/Twitter;->OAUTH_ACCESS_TOKEN:Ljava/lang/String;

    sget-object v3, Lcom/sugree/twitter/Twitter;->OAUTH_AUTHORIZE:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sugree/twitter/Twitter;->mHttpOauthProvider:Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;

    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    new-instance v0, Lcom/sugree/twitter/Twitter$1;

    invoke-direct {v0, p0, p4}, Lcom/sugree/twitter/Twitter$1;-><init>(Lcom/sugree/twitter/Twitter;Lcom/sugree/twitter/Twitter$DialogListener;)V

    invoke-virtual {p0, p1, v0}, Lcom/sugree/twitter/Twitter;->dialog(Landroid/content/Context;Lcom/sugree/twitter/Twitter$DialogListener;)V

    return-void
.end method

.method public dialog(Landroid/content/Context;Lcom/sugree/twitter/Twitter$DialogListener;)V
    .locals 3

    const-string v0, "android.permission.INTERNET"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Error"

    const-string v1, "Application requires permission to access the Internet"

    invoke-static {p1, v0, v1}, Lcom/sugree/twitter/Util;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sugree/twitter/TwDialog;

    iget-object v1, p0, Lcom/sugree/twitter/Twitter;->mHttpOauthProvider:Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;

    iget-object v2, p0, Lcom/sugree/twitter/Twitter;->mHttpOauthConsumer:Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;

    invoke-direct {v0, p1, v1, v2, p2}, Lcom/sugree/twitter/TwDialog;-><init>(Landroid/content/Context;Loauth/signpost/commonshttp/CommonsHttpOAuthProvider;Loauth/signpost/commonshttp/CommonsHttpOAuthConsumer;Lcom/sugree/twitter/Twitter$DialogListener;)V

    invoke-virtual {v0}, Lcom/sugree/twitter/TwDialog;->show()V

    goto :goto_0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sugree/twitter/Twitter;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getSecretToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sugree/twitter/Twitter;->mSecretToken:Ljava/lang/String;

    return-object v0
.end method

.method public isSessionValid()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sugree/twitter/Twitter;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sugree/twitter/Twitter;->getSecretToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logout(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "true"

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sugree/twitter/Twitter;->mAccessToken:Ljava/lang/String;

    return-void
.end method

.method public setSecretToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sugree/twitter/Twitter;->mSecretToken:Ljava/lang/String;

    return-void
.end method
