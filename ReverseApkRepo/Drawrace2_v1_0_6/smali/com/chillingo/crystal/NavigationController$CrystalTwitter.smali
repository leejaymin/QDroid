.class public Lcom/chillingo/crystal/NavigationController$CrystalTwitter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sugree/twitter/Twitter$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/crystal/NavigationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CrystalTwitter"
.end annotation


# static fields
.field private static final ConsumerKey:Ljava/lang/String; = "CCk3XcLqm3wHuCFp3gVGXg"

.field private static final ConsumerSecret:Ljava/lang/String; = "SV5KCPGhBekrpRQgSWEkCMqzjjEiLM5TSDJSRIzI40"


# instance fields
.field final synthetic this$0:Lcom/chillingo/crystal/NavigationController;


# direct methods
.method public constructor <init>(Lcom/chillingo/crystal/NavigationController;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/NavigationController$CrystalTwitter;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doLogin()V
    .locals 4

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->twitter()Lcom/sugree/twitter/Twitter;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/NavigationController$CrystalTwitter;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v1}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->currentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "CCk3XcLqm3wHuCFp3gVGXg"

    const-string v3, "SV5KCPGhBekrpRQgSWEkCMqzjjEiLM5TSDJSRIzI40"

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/sugree/twitter/Twitter;->authorize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sugree/twitter/Twitter$DialogListener;)V

    return-void
.end method

.method public doLogout()V
    .locals 4

    const-string v0, "https://chillingo-crystal.appspot.com/crystal/twitter_settings.cuid?logout=1"

    new-instance v1, Lcom/chillingo/crystal/serverdata/UIDescription;

    sget-object v2, Lcom/chillingo/crystal/serverdata/FetchPriority;->AwaitingDisplay:Lcom/chillingo/crystal/serverdata/FetchPriority;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/chillingo/crystal/serverdata/UIDescription;-><init>(Ljava/lang/String;Lcom/chillingo/crystal/serverdata/FetchPriority;I)V

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController$CrystalTwitter;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    invoke-virtual {v1}, Lcom/chillingo/crystal/serverdata/UIDescription;->url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/chillingo/crystal/http/FetchManager;->clearUrlFromCache(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController$CrystalTwitter;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->delegate()Lcom/chillingo/crystal/INavigationControllerDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/chillingo/crystal/INavigationControllerDelegate;->viewToActOn()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v2, Lcom/chillingo/crystal/NavigationController$CrystalTwitter$1;

    invoke-direct {v2, p0, v1}, Lcom/chillingo/crystal/NavigationController$CrystalTwitter$1;-><init>(Lcom/chillingo/crystal/NavigationController$CrystalTwitter;Lcom/chillingo/crystal/serverdata/UIDescription;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 4

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->twitter()Lcom/sugree/twitter/Twitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sugree/twitter/Twitter;->isSessionValid()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sugree/twitter/Twitter;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sugree/twitter/Twitter;->getSecretToken()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://chillingo-crystal.appspot.com/crystal/twitter_settings.cuid?twitterToken="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&twitterSecretToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/serverdata/UIDescription;

    sget-object v2, Lcom/chillingo/crystal/serverdata/FetchPriority;->AwaitingDisplay:Lcom/chillingo/crystal/serverdata/FetchPriority;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/chillingo/crystal/serverdata/UIDescription;-><init>(Ljava/lang/String;Lcom/chillingo/crystal/serverdata/FetchPriority;I)V

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController$CrystalTwitter;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    invoke-virtual {v1}, Lcom/chillingo/crystal/serverdata/UIDescription;->url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/chillingo/crystal/http/FetchManager;->clearUrlFromCache(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController$CrystalTwitter;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->delegate()Lcom/chillingo/crystal/INavigationControllerDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/chillingo/crystal/INavigationControllerDelegate;->viewToActOn()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v2, Lcom/chillingo/crystal/NavigationController$CrystalTwitter$2;

    invoke-direct {v2, p0, v1}, Lcom/chillingo/crystal/NavigationController$CrystalTwitter$2;-><init>(Lcom/chillingo/crystal/NavigationController$CrystalTwitter;Lcom/chillingo/crystal/serverdata/UIDescription;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public onError(Lcom/sugree/twitter/DialogError;)V
    .locals 0

    return-void
.end method

.method public onTwitterError(Lcom/sugree/twitter/TwitterError;)V
    .locals 0

    return-void
.end method
