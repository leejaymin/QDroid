.class public Lcom/chillingo/crystal/NavigationController$InAppPurchase;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/chillingo/crystal/market/PurchaseDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/crystal/NavigationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InAppPurchase"
.end annotation


# instance fields
.field private final START_INTENT_SENDER_SIG:[Ljava/lang/Class;

.field private final _receiptsUrl:Ljava/lang/String;

.field private _startIntentSender:Ljava/lang/reflect/Method;

.field final synthetic this$0:Lcom/chillingo/crystal/NavigationController;


# direct methods
.method public constructor <init>(Lcom/chillingo/crystal/NavigationController;)V
    .locals 4

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/chillingo/crystal/NavigationController$InAppPurchase;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/chillingo/crystal/NavigationController$InAppPurchase;->_startIntentSender:Ljava/lang/reflect/Method;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/IntentSender;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/content/Intent;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/chillingo/crystal/NavigationController$InAppPurchase;->START_INTENT_SENDER_SIG:[Ljava/lang/Class;

    const-string v0, "https://chillingo-crystal.appspot.com/crystal/buy_virtual_currency.cuid"

    iput-object v0, p0, Lcom/chillingo/crystal/NavigationController$InAppPurchase;->_receiptsUrl:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p1}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->currentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "startIntentSender"

    iget-object v2, p0, Lcom/chillingo/crystal/NavigationController$InAppPurchase;->START_INTENT_SENDER_SIG:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/crystal/NavigationController$InAppPurchase;->_startIntentSender:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->marketService()Lcom/chillingo/crystal/market/MarketNotificationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/market/MarketNotificationService;->responseHandler()Lcom/chillingo/crystal/market/ResponseHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chillingo/crystal/market/ResponseHandler;->setDelegate(Lcom/chillingo/crystal/market/PurchaseDelegate;)V

    return-void

    :catch_0
    move-exception v0

    iput-object v3, p0, Lcom/chillingo/crystal/NavigationController$InAppPurchase;->_startIntentSender:Ljava/lang/reflect/Method;

    goto :goto_0

    :catch_1
    move-exception v0

    iput-object v3, p0, Lcom/chillingo/crystal/NavigationController$InAppPurchase;->_startIntentSender:Ljava/lang/reflect/Method;

    goto :goto_0
.end method


# virtual methods
.method public purchaseCancelled()V
    .locals 0

    return-void
.end method

.method public purchaseComplete()V
    .locals 0

    return-void
.end method

.method public purchaseFailed(Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;)V
    .locals 4

    new-instance v1, Lcom/chillingo/crystal/serverdata/UIDescription;

    const-string v0, "https://chillingo-crystal.appspot.com/crystal/buy_virtual_currency.cuid"

    sget-object v2, Lcom/chillingo/crystal/serverdata/FetchPriority;->AwaitingDisplay:Lcom/chillingo/crystal/serverdata/FetchPriority;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/chillingo/crystal/serverdata/UIDescription;-><init>(Ljava/lang/String;Lcom/chillingo/crystal/serverdata/FetchPriority;I)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "error"

    invoke-virtual {p1}, Lcom/chillingo/crystal/market/MarketNotificationService$ResponseCode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/serverdata/UIDescription;->setPostData([B)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController$InAppPurchase;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->delegate()Lcom/chillingo/crystal/INavigationControllerDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/chillingo/crystal/INavigationControllerDelegate;->viewToActOn()Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v2, Lcom/chillingo/crystal/NavigationController$InAppPurchase$1;

    invoke-direct {v2, p0, v1}, Lcom/chillingo/crystal/NavigationController$InAppPurchase$1;-><init>(Lcom/chillingo/crystal/NavigationController$InAppPurchase;Lcom/chillingo/crystal/serverdata/UIDescription;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public purchaseSuccessful()V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController$InAppPurchase;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->currentUIDescription()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v0

    const-string v1, "item_error"

    invoke-virtual {v0, v1, v2}, Lcom/chillingo/crystal/serverdata/UIDescription;->removeElementOfType(Ljava/lang/String;I)V

    const-string v1, "item_success"

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/serverdata/UIDescription;->containsUiElementOfType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "type"

    const-string v3, "item_success"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "text"

    const-string v3, "Your purchase is being processed."

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lcom/chillingo/crystal/serverdata/UIElement;

    invoke-direct {v2, v1}, Lcom/chillingo/crystal/serverdata/UIElement;-><init>(Lorg/json/JSONObject;)V

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/chillingo/crystal/serverdata/UIDescription;->insertElementInGroup(Lcom/chillingo/crystal/serverdata/UIElement;II)V

    iget-object v1, p0, Lcom/chillingo/crystal/NavigationController$InAppPurchase;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v1}, Lcom/chillingo/crystal/NavigationController;->delegate()Lcom/chillingo/crystal/INavigationControllerDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/chillingo/crystal/INavigationControllerDelegate;->incomingView()Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->setUIDescription(Lcom/chillingo/crystal/serverdata/UIDescription;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public serverError()V
    .locals 0

    return-void
.end method

.method public startBuyActivity(Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController$InAppPurchase;->_startIntentSender:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/chillingo/crystal/NavigationController$InAppPurchase;->_startIntentSender:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/chillingo/crystal/NavigationController$InAppPurchase;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v2}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chillingo/crystal/PrivateSession;->currentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController$InAppPurchase;->this$0:Lcom/chillingo/crystal/NavigationController;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->currentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_0
.end method
