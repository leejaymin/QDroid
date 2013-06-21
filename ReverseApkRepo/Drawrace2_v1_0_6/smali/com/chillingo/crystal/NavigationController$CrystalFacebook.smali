.class public Lcom/chillingo/crystal/NavigationController$CrystalFacebook;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/android/Facebook$DialogListener;
.implements Lcom/facebook/android/AsyncFacebookRunner$RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/crystal/NavigationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CrystalFacebook"
.end annotation


# static fields
.field public static final KActionLogin:I = 0x1

.field public static final KActionLogout:I = 0x2

.field public static final KKeyAction:Ljava/lang/String; = "FacebookActivity.Action"


# instance fields
.field _action:I

.field _asyncFacebook:Lcom/facebook/android/AsyncFacebookRunner;

.field final synthetic this$0:Lcom/chillingo/crystal/NavigationController;


# direct methods
.method public constructor <init>(Lcom/chillingo/crystal/NavigationController;)V
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/NavigationController$CrystalFacebook;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/chillingo/crystal/NavigationController$CrystalFacebook;)V
    .locals 0

    invoke-direct {p0}, Lcom/chillingo/crystal/NavigationController$CrystalFacebook;->doLogin()V

    return-void
.end method

.method static synthetic access$400(Lcom/chillingo/crystal/NavigationController$CrystalFacebook;)V
    .locals 0

    invoke-direct {p0}, Lcom/chillingo/crystal/NavigationController$CrystalFacebook;->doLogout()V

    return-void
.end method

.method private doLogin()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iput v5, p0, Lcom/chillingo/crystal/NavigationController$CrystalFacebook;->_action:I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "publish_stream"

    aput-object v1, v0, v6

    const-string v1, "offline_access"

    aput-object v1, v0, v5

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->facebook()Lcom/facebook/android/Facebook;

    move-result-object v2

    iget-object v3, p0, Lcom/chillingo/crystal/NavigationController$CrystalFacebook;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v3}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chillingo/crystal/PrivateSession;->currentActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, -0x2

    invoke-virtual {v2, v3, v0, v4, p0}, Lcom/facebook/android/Facebook;->authorize(Landroid/app/Activity;[Ljava/lang/String;ILcom/facebook/android/Facebook$DialogListener;)V

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/chillingo/crystal/DataStore;->setFacebookPermission(Z)V

    invoke-virtual {v1, v5}, Lcom/chillingo/crystal/PrivateSession;->setUserWasAskedForFacebookInput(Z)V

    return-void
.end method

.method private doLogout()V
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, Lcom/chillingo/crystal/NavigationController$CrystalFacebook;->_action:I

    new-instance v0, Lcom/facebook/android/AsyncFacebookRunner;

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->facebook()Lcom/facebook/android/Facebook;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/android/AsyncFacebookRunner;-><init>(Lcom/facebook/android/Facebook;)V

    iput-object v0, p0, Lcom/chillingo/crystal/NavigationController$CrystalFacebook;->_asyncFacebook:Lcom/facebook/android/AsyncFacebookRunner;

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController$CrystalFacebook;->_asyncFacebook:Lcom/facebook/android/AsyncFacebookRunner;

    iget-object v1, p0, Lcom/chillingo/crystal/NavigationController$CrystalFacebook;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v1}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->currentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/facebook/android/AsyncFacebookRunner;->logout(Landroid/content/Context;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->facebook()Lcom/facebook/android/Facebook;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/android/Facebook;->authorizeCallback(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCancel()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->userWasAskedForFacebookInput()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->dataStore()Lcom/chillingo/crystal/DataStore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/DataStore;->setFacebookPermission(Z)V

    :cond_0
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->userWasAskedForFacebookInput()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/PrivateSession;->setUserWasAskedForFacebookInput(Z)V

    new-instance v1, Lcom/facebook/android/AsyncFacebookRunner;

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->facebook()Lcom/facebook/android/Facebook;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/android/AsyncFacebookRunner;-><init>(Lcom/facebook/android/Facebook;)V

    iput-object v1, p0, Lcom/chillingo/crystal/NavigationController$CrystalFacebook;->_asyncFacebook:Lcom/facebook/android/AsyncFacebookRunner;

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController$CrystalFacebook;->_asyncFacebook:Lcom/facebook/android/AsyncFacebookRunner;

    const-string v1, "me"

    invoke-virtual {v0, v1, p0}, Lcom/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V

    :cond_0
    return-void
.end method

.method public onComplete(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/chillingo/crystal/NavigationController$CrystalFacebook;->_action:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->facebook()Lcom/facebook/android/Facebook;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/android/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {p1}, Lcom/facebook/android/Util;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://chillingo-crystal.appspot.com/crystal/facebook_settings.cuid?facebookID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&facebookAccessToken="

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

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController$CrystalFacebook;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    invoke-virtual {v1}, Lcom/chillingo/crystal/serverdata/UIDescription;->url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/chillingo/crystal/http/FetchManager;->clearUrlFromCache(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController$CrystalFacebook;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->delegate()Lcom/chillingo/crystal/INavigationControllerDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/chillingo/crystal/INavigationControllerDelegate;->viewToActOn()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v2, Lcom/chillingo/crystal/NavigationController$CrystalFacebook$1;

    invoke-direct {v2, p0, v1}, Lcom/chillingo/crystal/NavigationController$CrystalFacebook$1;-><init>(Lcom/chillingo/crystal/NavigationController$CrystalFacebook;Lcom/chillingo/crystal/serverdata/UIDescription;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/facebook/android/FacebookError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/facebook/android/FacebookError;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/chillingo/crystal/NavigationController$CrystalFacebook;->_action:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "https://chillingo-crystal.appspot.com/crystal/facebook_settings.cuid?logout=1"

    new-instance v1, Lcom/chillingo/crystal/serverdata/UIDescription;

    sget-object v2, Lcom/chillingo/crystal/serverdata/FetchPriority;->AwaitingDisplay:Lcom/chillingo/crystal/serverdata/FetchPriority;

    invoke-direct {v1, v0, v2, v3}, Lcom/chillingo/crystal/serverdata/UIDescription;-><init>(Ljava/lang/String;Lcom/chillingo/crystal/serverdata/FetchPriority;I)V

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController$CrystalFacebook;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->delegate()Lcom/chillingo/crystal/INavigationControllerDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/chillingo/crystal/INavigationControllerDelegate;->viewToActOn()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v2, Lcom/chillingo/crystal/NavigationController$CrystalFacebook$2;

    invoke-direct {v2, p0, v1}, Lcom/chillingo/crystal/NavigationController$CrystalFacebook$2;-><init>(Lcom/chillingo/crystal/NavigationController$CrystalFacebook;Lcom/chillingo/crystal/serverdata/UIDescription;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onError(Lcom/facebook/android/DialogError;)V
    .locals 0

    return-void
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;)V
    .locals 0

    return-void
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onFileNotFoundException(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onIOException(Ljava/io/IOException;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onMalformedURLException(Ljava/net/MalformedURLException;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
