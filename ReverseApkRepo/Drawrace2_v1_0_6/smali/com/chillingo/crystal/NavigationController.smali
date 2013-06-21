.class public Lcom/chillingo/crystal/NavigationController;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/chillingo/crystal/NotificationReceiver;
.implements Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;
.implements Lcom/chillingo/crystal/ui/viewgroups/interfaces/IModalViewDelegate;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chillingo/crystal/NavigationController$InAppPurchase;,
        Lcom/chillingo/crystal/NavigationController$CrystalTwitter;,
        Lcom/chillingo/crystal/NavigationController$CrystalFacebook;,
        Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;
    }
.end annotation


# static fields
.field private static final ACTIVITY_CAMERA_PICTURE_REQUEST:I = 0x0

.field private static final ACTIVITY_FACEBOOK_LOGIN_REQUEST:I = -0x2

.field private static final ACTIVITY_LIBRARY_PICTURE_REQUEST:I = 0x1

.field private static final ACTIVITY_SEND_SMS_INVITE:I = 0x3

.field public static final NAVIGATION_ACTIVITY_BASE_URL_SCHEME_ACTIVIATE_UI_AT_LOCATION:Ljava/lang/String; = "crystal-activateui://"

.field public static final NAVIGATION_ACTIVITY_BASE_URL_SCHEME_SIGN_UP_REMINDER:Ljava/lang/String; = "sign_up_reminder.cuid"

.field public static final NOTIFICATION_DICTIONARY_KEY_SOURCE_URL:Ljava/lang/String; = "sourceurl"

.field public static final NOTIFICATION_DICTIONARY_KEY_URL:Ljava/lang/String; = "url"

.field public static final TAG:Ljava/lang/String; = "NavigationController"

.field private static _isOrientationChange:Z


# instance fields
.field private _currentState:Lcom/chillingo/crystal/NavigationState;

.field private _delegateRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/chillingo/crystal/INavigationControllerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private _earnVCRedirectUrl:Ljava/lang/String;

.field private _facebook:Lcom/chillingo/crystal/NavigationController$CrystalFacebook;

.field private _inAppPurchase:Lcom/chillingo/crystal/NavigationController$InAppPurchase;

.field private _isShowingModalDialog:Z

.field protected _listItemSelected:Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;

.field private _privateSession:Lcom/chillingo/crystal/PrivateSession;

.field private _smsRedirectUrl:Ljava/lang/String;

.field private _startChallengeUrl:Ljava/lang/String;

.field private _suggestSmsUrl:Ljava/lang/String;

.field private _twitter:Lcom/chillingo/crystal/NavigationController$CrystalTwitter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/chillingo/crystal/NavigationController;->_isOrientationChange:Z

    return-void
.end method

.method public constructor <init>(Lcom/chillingo/crystal/INavigationControllerDelegate;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/chillingo/crystal/NavigationState;

    invoke-direct {v0}, Lcom/chillingo/crystal/NavigationState;-><init>()V

    iput-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_currentState:Lcom/chillingo/crystal/NavigationState;

    iput-object v1, p0, Lcom/chillingo/crystal/NavigationController;->_delegateRef:Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;

    invoke-direct {v0, p0}, Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;-><init>(Lcom/chillingo/crystal/NavigationController;)V

    iput-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_listItemSelected:Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;

    iput-object v1, p0, Lcom/chillingo/crystal/NavigationController;->_privateSession:Lcom/chillingo/crystal/PrivateSession;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chillingo/crystal/NavigationController;->_isShowingModalDialog:Z

    new-instance v0, Lcom/chillingo/crystal/NavigationController$CrystalFacebook;

    invoke-direct {v0, p0}, Lcom/chillingo/crystal/NavigationController$CrystalFacebook;-><init>(Lcom/chillingo/crystal/NavigationController;)V

    iput-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_facebook:Lcom/chillingo/crystal/NavigationController$CrystalFacebook;

    new-instance v0, Lcom/chillingo/crystal/NavigationController$CrystalTwitter;

    invoke-direct {v0, p0}, Lcom/chillingo/crystal/NavigationController$CrystalTwitter;-><init>(Lcom/chillingo/crystal/NavigationController;)V

    iput-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_twitter:Lcom/chillingo/crystal/NavigationController$CrystalTwitter;

    iput-object v1, p0, Lcom/chillingo/crystal/NavigationController;->_inAppPurchase:Lcom/chillingo/crystal/NavigationController$InAppPurchase;

    invoke-direct {p0, p1}, Lcom/chillingo/crystal/NavigationController;->setDelegate(Lcom/chillingo/crystal/INavigationControllerDelegate;)V

    new-instance v0, Lcom/chillingo/crystal/NavigationController$InAppPurchase;

    invoke-direct {v0, p0}, Lcom/chillingo/crystal/NavigationController$InAppPurchase;-><init>(Lcom/chillingo/crystal/NavigationController;)V

    iput-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_inAppPurchase:Lcom/chillingo/crystal/NavigationController$InAppPurchase;

    invoke-static {}, Lcom/chillingo/crystal/NotificationCentre;->sharedInstance()Lcom/chillingo/crystal/NotificationCentre;

    move-result-object v0

    const-string v1, "tablelink"

    iget-object v2, p0, Lcom/chillingo/crystal/NavigationController;->_listItemSelected:Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;

    invoke-virtual {v0, v1, v2}, Lcom/chillingo/crystal/NotificationCentre;->addObserver(Ljava/lang/String;Lcom/chillingo/crystal/NotificationReceiver;)Z

    return-void
.end method

.method public constructor <init>(Lcom/chillingo/crystal/INavigationControllerDelegate;Lcom/chillingo/crystal/NavigationState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/chillingo/crystal/NavigationController;-><init>(Lcom/chillingo/crystal/INavigationControllerDelegate;)V

    iput-object p2, p0, Lcom/chillingo/crystal/NavigationController;->_currentState:Lcom/chillingo/crystal/NavigationState;

    return-void
.end method

.method static synthetic access$000(Lcom/chillingo/crystal/NavigationController;)Lcom/chillingo/crystal/NavigationState;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_currentState:Lcom/chillingo/crystal/NavigationState;

    return-object v0
.end method

.method static synthetic access$100(Lcom/chillingo/crystal/NavigationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/chillingo/crystal/NavigationController;->signOut()V

    return-void
.end method

.method static synthetic access$1000(Lcom/chillingo/crystal/NavigationController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/chillingo/crystal/NavigationController;->doPickImageFromLibrary(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/chillingo/crystal/NavigationController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/chillingo/crystal/NavigationController;->signOut(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/chillingo/crystal/NavigationController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/chillingo/crystal/NavigationController;->initiateInAppPurchase(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$602(Lcom/chillingo/crystal/NavigationController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/NavigationController;->_earnVCRedirectUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/chillingo/crystal/NavigationController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_startChallengeUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/chillingo/crystal/NavigationController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/NavigationController;->_startChallengeUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/chillingo/crystal/NavigationController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/chillingo/crystal/NavigationController;->_suggestSmsUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/chillingo/crystal/NavigationController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/chillingo/crystal/NavigationController;->doPickImageFromCamera(Ljava/lang/String;)V

    return-void
.end method

.method public static centreRectInRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Point;
    .locals 4

    const/high16 v3, 0x4000

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v0, v0

    div-float/2addr v0, v3

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget v2, p0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    new-instance v2, Landroid/graphics/Point;

    float-to-int v0, v0

    float-to-int v1, v1

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method private doPickImageFromCamera(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-virtual {p0, p1}, Lcom/chillingo/crystal/NavigationController;->setPendingConfirmedUrlString(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->currentActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private doPickImageFromLibrary(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-virtual {p0, p1}, Lcom/chillingo/crystal/NavigationController;->setPendingConfirmedUrlString(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->currentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "Select Picture"

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private initiateInAppPurchase(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "productID"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->inAppPurchaseSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->marketService()Lcom/chillingo/crystal/market/MarketNotificationService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/chillingo/crystal/market/MarketNotificationService;->requestPurcahse(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "Not Supported"

    const-string v1, "In-app billing is not currently supported on your device. A Market application update may add support."

    const-string v2, "OK"

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/chillingo/crystal/NavigationController;->showModalOneButtonDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public static isOrientationChange()Z
    .locals 1

    sget-boolean v0, Lcom/chillingo/crystal/NavigationController;->_isOrientationChange:Z

    return v0
.end method

.method private sendSms(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1}, Lcom/chillingo/crystal/utils/JSONUtils;->ParseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "createsms"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "sms-redirect-url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/chillingo/crystal/NavigationController;->_smsRedirectUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "recipients"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "sms-text"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/chillingo/crystal/NavigationController;->sendSms(Lorg/json/JSONArray;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private sendSms(Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 5

    const/4 v3, 0x1

    :try_start_0
    const-string v1, ""

    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-le v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smsto:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "sms_body"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "compose_mode"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->currentActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v1

    if-ne v1, v3, :cond_2

    const-string v1, "NavigationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sensSms failed to parse JSON recipients: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v1

    if-ne v1, v3, :cond_2

    const-string v1, "NavigationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sensSms failed to send SMS message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setDelegate(Lcom/chillingo/crystal/INavigationControllerDelegate;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_delegateRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static setIsOrientationChange(Z)V
    .locals 0

    sput-boolean p0, Lcom/chillingo/crystal/NavigationController;->_isOrientationChange:Z

    return-void
.end method

.method private signOut()V
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/PersistableCookieStore;->instance()Lcom/chillingo/crystal/PersistableCookieStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PersistableCookieStore;->clear()V

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->delegate()Lcom/chillingo/crystal/INavigationControllerDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/chillingo/crystal/INavigationControllerDelegate;->activateBasicNavBar()V

    return-void
.end method

.method private signOut(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/PersistableCookieStore;->instance()Lcom/chillingo/crystal/PersistableCookieStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PersistableCookieStore;->clear()V

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->delegate()Lcom/chillingo/crystal/INavigationControllerDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/chillingo/crystal/INavigationControllerDelegate;->activateBasicNavBar(Ljava/lang/String;)V

    return-void
.end method

.method private swapViewStackUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_currentState:Lcom/chillingo/crystal/NavigationState;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationState;->urlStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_currentState:Lcom/chillingo/crystal/NavigationState;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationState;->urlStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/NavigationState$ScreenState;

    iget-object v3, v0, Lcom/chillingo/crystal/NavigationState$ScreenState;->url:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const-string v3, "NavigationController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Swapping view stack url "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-object p2, v0, Lcom/chillingo/crystal/NavigationState$ScreenState;->url:Ljava/lang/String;

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public buttonPressed(Lcom/chillingo/crystal/ui/viewgroups/ModalView;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->delegate()Lcom/chillingo/crystal/INavigationControllerDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/chillingo/crystal/INavigationControllerDelegate;->buttonPressed(Lcom/chillingo/crystal/ui/viewgroups/ModalView;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/chillingo/crystal/INavigationControllerDelegate;->viewToShowDialogIn()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/chillingo/crystal/NavigationController;->removeModalDialogs(Landroid/view/ViewGroup;)V

    iput-boolean v3, p0, Lcom/chillingo/crystal/NavigationController;->_isShowingModalDialog:Z

    invoke-interface {v0}, Lcom/chillingo/crystal/INavigationControllerDelegate;->incomingView()Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->setEnabled(Z)V

    :cond_0
    invoke-static {p2}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "button1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->pendingConfirmedUrlString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->pendingUIElement()Lcom/chillingo/crystal/serverdata/UIElement;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->pendingConfirmedUrlString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->pendingUIElement()Lcom/chillingo/crystal/serverdata/UIElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->openUrlString(Ljava/lang/String;Lcom/chillingo/crystal/serverdata/UIElement;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->pendingTab()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->pendingUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->pendingTab()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/NavigationController;->setCurrentTab(Ljava/lang/String;)V

    new-instance v0, Lcom/chillingo/crystal/serverdata/UIDescription;

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->pendingUrl()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/chillingo/crystal/serverdata/FetchPriority;->AwaitingDisplay:Lcom/chillingo/crystal/serverdata/FetchPriority;

    invoke-direct {v0, v1, v2, v3}, Lcom/chillingo/crystal/serverdata/UIDescription;-><init>(Ljava/lang/String;Lcom/chillingo/crystal/serverdata/FetchPriority;I)V

    invoke-virtual {p0, v0, v3, v3}, Lcom/chillingo/crystal/NavigationController;->pushView(Lcom/chillingo/crystal/serverdata/UIDescription;ZZ)V

    invoke-virtual {p0, v4}, Lcom/chillingo/crystal/NavigationController;->setPendingTab(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/chillingo/crystal/NavigationController;->setPendingUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->suppressDialogPopOnClose()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->popView()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v3}, Lcom/chillingo/crystal/NavigationController;->setSuppressPopOnDialogClose(Z)V

    goto :goto_0

    :cond_5
    invoke-static {p2}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "button2"

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v4}, Lcom/chillingo/crystal/NavigationController;->setPendingTab(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/chillingo/crystal/NavigationController;->setPendingUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public buttonPressed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->delegate()Lcom/chillingo/crystal/INavigationControllerDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/chillingo/crystal/INavigationControllerDelegate;->buttonPressed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public cleanup()V
    .locals 2

    invoke-static {}, Lcom/chillingo/crystal/NotificationCentre;->sharedInstance()Lcom/chillingo/crystal/NotificationCentre;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/NavigationController;->_listItemSelected:Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/NotificationCentre;->removeObserver(Lcom/chillingo/crystal/NotificationReceiver;)V

    invoke-static {}, Lcom/chillingo/crystal/NotificationCentre;->sharedInstance()Lcom/chillingo/crystal/NotificationCentre;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/chillingo/crystal/NotificationCentre;->removeObserver(Lcom/chillingo/crystal/NotificationReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_listItemSelected:Lcom/chillingo/crystal/NavigationController$ListItemSelectedHandler;

    return-void
.end method

.method public clearHistory()V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_currentState:Lcom/chillingo/crystal/NavigationState;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationState;->urlStack()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_currentState:Lcom/chillingo/crystal/NavigationState;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationState;->urlStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public clearHistoryStack()V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_currentState:Lcom/chillingo/crystal/NavigationState;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationState;->urlStack()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_currentState:Lcom/chillingo/crystal/NavigationState;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationState;->urlStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public currentState()Lcom/chillingo/crystal/NavigationState;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_currentState:Lcom/chillingo/crystal/NavigationState;

    return-object v0
.end method

.method public currentTab()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_currentState:Lcom/chillingo/crystal/NavigationState;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationState;->currentTab()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public currentUIDescription()Lcom/chillingo/crystal/serverdata/UIDescription;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_currentState:Lcom/chillingo/crystal/NavigationState;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationState;->currentUIDescription()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v0

    return-object v0
.end method

.method public delegate()Lcom/chillingo/crystal/INavigationControllerDelegate;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_delegateRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/INavigationControllerDelegate;

    return-object v0
.end method

.method public depressedImageForButtonOrTab(Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->delegate()Lcom/chillingo/crystal/INavigationControllerDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/chillingo/crystal/INavigationControllerDelegate;->depressedImageForButtonOrTab(Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public displayIncomingPushNotice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->delegate()Lcom/chillingo/crystal/INavigationControllerDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/chillingo/crystal/INavigationControllerDelegate;->willDisplayIncomingPushNotice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->pendingTab()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->pendingUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Incoming Challenge"

    const-string v1, "OK"

    const-string v2, "Cancel"

    invoke-static {v0, p1, v1, v2}, Lcom/chillingo/crystal/serverdata/UIDescription;->uiDescriptionForTwoButtonDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/chillingo/crystal/NavigationController;->setPendingUrl(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/chillingo/crystal/NavigationController;->setPendingTab(Ljava/lang/String;)V

    new-instance v1, Lcom/chillingo/crystal/ui/viewgroups/ModalView;

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->delegate()Lcom/chillingo/crystal/INavigationControllerDelegate;

    move-result-object v2

    invoke-interface {v2}, Lcom/chillingo/crystal/INavigationControllerDelegate;->context()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->delegate()Lcom/chillingo/crystal/INavigationControllerDelegate;

    move-result-object v3

    invoke-interface {v3}, Lcom/chillingo/crystal/INavigationControllerDelegate;->viewToActOn()Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3, p0}, Lcom/chillingo/crystal/ui/viewgroups/ModalView;-><init>(Landroid/content/Context;Lcom/chillingo/crystal/serverdata/UIDescription;Landroid/widget/RelativeLayout;Lcom/chillingo/crystal/ui/viewgroups/interfaces/IModalViewDelegate;)V

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/viewgroups/ModalView;->show()V

    :cond_0
    return-void
.end method

.method public facebook()Lcom/chillingo/crystal/NavigationController$CrystalFacebook;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_facebook:Lcom/chillingo/crystal/NavigationController$CrystalFacebook;

    return-object v0
.end method

.method public getPath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->currentActivity()Landroid/app/Activity;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_0
    return-object v3
.end method

.method public hideBusy()V
    .locals 1

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->delegate()Lcom/chillingo/crystal/INavigationControllerDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/chillingo/crystal/INavigationControllerDelegate;->hideBusy()V

    return-void
.end method

.method public historyItemCount()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/chillingo/crystal/NavigationController;->_currentState:Lcom/chillingo/crystal/NavigationState;

    invoke-virtual {v1}, Lcom/chillingo/crystal/NavigationState;->urlStack()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_currentState:Lcom/chillingo/crystal/NavigationState;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationState;->urlStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :cond_0
    return v0
.end method

.method public historyScrollPosition()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/chillingo/crystal/NavigationController;->_currentState:Lcom/chillingo/crystal/NavigationState;

    invoke-virtual {v1}, Lcom/chillingo/crystal/NavigationState;->urlStack()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_currentState:Lcom/chillingo/crystal/NavigationState;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationState;->urlStack()Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/NavigationState$ScreenState;

    iget v0, v0, Lcom/chillingo/crystal/NavigationState$ScreenState;->viewToDisplay:I

    :cond_0
    return v0
.end method

.method public inAppPurchase()Lcom/chillingo/crystal/NavigationController$InAppPurchase;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_inAppPurchase:Lcom/chillingo/crystal/NavigationController$InAppPurchase;

    return-object v0
.end method

.method public isShowingModalDialog()Z
    .locals 1

    iget-boolean v0, p0, Lcom/chillingo/crystal/NavigationController;->_isShowingModalDialog:Z

    return v0
.end method

.method public mainNavigationBar()Lcom/chillingo/crystal/serverdata/UIDescription;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_currentState:Lcom/chillingo/crystal/NavigationState;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationState;->navigationBar()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v0

    return-object v0
.end method

.method public normalImageForButtonOrTab(Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->delegate()Lcom/chillingo/crystal/INavigationControllerDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/chillingo/crystal/INavigationControllerDelegate;->normalImageForButtonOrTab(Lcom/chillingo/crystal/ui/theming/ThemeDescriptionItem;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->gc()V

    if-eqz p2, :cond_4

    if-nez p1, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/Bitmap;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x50

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/serverdata/UIDescription;

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->pendingConfirmedUrlString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/chillingo/crystal/serverdata/FetchPriority;->AwaitingDisplay:Lcom/chillingo/crystal/serverdata/FetchPriority;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/chillingo/crystal/serverdata/UIDescription;-><init>(Ljava/lang/String;Lcom/chillingo/crystal/serverdata/FetchPriority;I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/chillingo/crystal/NavigationController;->setPendingConfirmedUrlString(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/serverdata/UIDescription;->setPostData([B)V

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/chillingo/crystal/NavigationController;->pushView(Lcom/chillingo/crystal/serverdata/UIDescription;ZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p1, v0, :cond_3

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/NavigationController;->getPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x50

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    new-instance v1, Lcom/chillingo/crystal/serverdata/UIDescription;

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->pendingConfirmedUrlString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/chillingo/crystal/serverdata/FetchPriority;->AwaitingDisplay:Lcom/chillingo/crystal/serverdata/FetchPriority;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/chillingo/crystal/serverdata/UIDescription;-><init>(Ljava/lang/String;Lcom/chillingo/crystal/serverdata/FetchPriority;I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/chillingo/crystal/NavigationController;->setPendingConfirmedUrlString(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/serverdata/UIDescription;->setPostData([B)V

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/chillingo/crystal/NavigationController;->pushView(Lcom/chillingo/crystal/serverdata/UIDescription;ZZ)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->facebook()Lcom/chillingo/crystal/NavigationController$CrystalFacebook;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/chillingo/crystal/NavigationController$CrystalFacebook;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_smsRedirectUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/chillingo/crystal/NavigationController;->_smsRedirectUrl:Ljava/lang/String;

    sget-object v2, Lcom/chillingo/crystal/serverdata/FetchPriority;->Unknown:Lcom/chillingo/crystal/serverdata/FetchPriority;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/chillingo/crystal/NavigationController;->pushView(Ljava/lang/String;Lcom/chillingo/crystal/serverdata/FetchPriority;IZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->popView()V

    return-void
.end method

.method public onNotification(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {p2}, Lcom/chillingo/crystal/utils/NotificationUtils;->resourceStatus(Ljava/lang/Object;)Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/NavigationController;->_earnVCRedirectUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/chillingo/crystal/NavigationController;->_earnVCRedirectUrl:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/NavigationController;->_earnVCRedirectUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/http/FetchManager;->serverDataForUrl(Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/AbstractServerData;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/serverdata/AffiliateData;

    invoke-virtual {v0}, Lcom/chillingo/crystal/serverdata/AffiliateData;->marketUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->currentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/chillingo/crystal/NavigationController;->_startChallengeUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/chillingo/crystal/NavigationController;->_startChallengeUrl:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v1

    if-ne v1, v4, :cond_2

    const-string v1, "NavigationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got start challenge status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/chillingo/crystal/http/FetchManagerResourceStatus;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/crystal/NavigationController;->_startChallengeUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/chillingo/crystal/http/FetchManager;->serverDataForUrl(Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/AbstractServerData;

    move-result-object v1

    iput-object v5, p0, Lcom/chillingo/crystal/NavigationController;->_startChallengeUrl:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->dataAvailable()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v4, :cond_3

    const-string v0, "NavigationController"

    const-string v1, "Got no received data so assuming start challenge confirmed"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->notifyStartChallengeConfirmed()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/chillingo/crystal/NavigationController;->_suggestSmsUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/chillingo/crystal/NavigationController;->_suggestSmsUrl:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v1

    if-ne v1, v4, :cond_5

    const-string v1, "NavigationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got send SMS invite status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/chillingo/crystal/http/FetchManagerResourceStatus;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v1

    iget-object v2, p0, Lcom/chillingo/crystal/NavigationController;->_suggestSmsUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/chillingo/crystal/http/FetchManager;->serverDataForUrl(Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/AbstractServerData;

    move-result-object v1

    iput-object v5, p0, Lcom/chillingo/crystal/NavigationController;->_suggestSmsUrl:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->dataAvailable()Z

    move-result v2

    if-eqz v2, :cond_6

    :try_start_0
    invoke-virtual {v1}, Lcom/chillingo/crystal/serverdata/AbstractServerData;->JsonRepresentation()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/chillingo/crystal/NavigationController;->sendSms(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v1

    if-ne v1, v4, :cond_0

    const-string v1, "NavigationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error sending SMS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/chillingo/crystal/CrystalSession;->isCrystalUIActive()Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

    move-result-object v1

    sget-object v2, Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;->None:Lcom/chillingo/crystal/ui/CrystalUserInterfaceType;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->currentUIDescription()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->delegate()Lcom/chillingo/crystal/INavigationControllerDelegate;

    move-result-object v2

    invoke-interface {v2}, Lcom/chillingo/crystal/INavigationControllerDelegate;->shouldAddBackBarToUiDescription()Z

    move-result v2

    if-ne v2, v4, :cond_9

    sget-object v2, Lcom/chillingo/crystal/http/FetchManagerResourceStatus;->ResourceAvailable:Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    if-ne v0, v2, :cond_7

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->historyItemCount()I

    move-result v0

    if-le v0, v4, :cond_7

    invoke-virtual {v1}, Lcom/chillingo/crystal/serverdata/UIDescription;->addBackbar()V

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->delegate()Lcom/chillingo/crystal/INavigationControllerDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/chillingo/crystal/INavigationControllerDelegate;->incomingView()Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->setUIDescription(Lcom/chillingo/crystal/serverdata/UIDescription;Z)V

    :cond_7
    :goto_1
    move-object v0, p2

    check-cast v0, Ljava/util/Map;

    const-string v2, "redirecturl"

    invoke-static {v0, v2}, Lcom/chillingo/crystal/utils/DictionaryUtils;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_8

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/chillingo/crystal/serverdata/UIDescription;->isCacheControlViewStackUseRedirect()Z

    move-result v2

    if-ne v2, v4, :cond_8

    invoke-direct {p0, p1, v0}, Lcom/chillingo/crystal/NavigationController;->swapViewStackUrl(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/serverdata/UIDescription;->setUrl(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->delegate()Lcom/chillingo/crystal/INavigationControllerDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/chillingo/crystal/INavigationControllerDelegate;->onNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    sget-object v2, Lcom/chillingo/crystal/http/FetchManagerResourceStatus;->ResourceAvailable:Lcom/chillingo/crystal/http/FetchManagerResourceStatus;

    if-ne v0, v2, :cond_7

    invoke-virtual {v1}, Lcom/chillingo/crystal/serverdata/UIDescription;->removeBackbar()V

    goto :goto_1
.end method

.method public peekHistoryItem()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_currentState:Lcom/chillingo/crystal/NavigationState;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationState;->urlStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/NavigationController;->peekHistoryItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public peekHistoryItem(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/chillingo/crystal/NavigationController;->_currentState:Lcom/chillingo/crystal/NavigationState;

    invoke-virtual {v1}, Lcom/chillingo/crystal/NavigationState;->urlStack()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_currentState:Lcom/chillingo/crystal/NavigationState;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationState;->urlStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/NavigationState$ScreenState;

    iget-object v0, v0, Lcom/chillingo/crystal/NavigationState$ScreenState;->url:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public pendingConfirmedUrlString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_currentState:Lcom/chillingo/crystal/NavigationState;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationState;->pendingConfirmedUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public pendingTab()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_currentState:Lcom/chillingo/crystal/NavigationState;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationState;->pendingTab()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public pendingUIElement()Lcom/chillingo/crystal/serverdata/UIElement;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_currentState:Lcom/chillingo/crystal/NavigationState;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationState;->pendingUIElement()Lcom/chillingo/crystal/serverdata/UIElement;

    move-result-object v0

    return-object v0
.end method

.method public pendingUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_currentState:Lcom/chillingo/crystal/NavigationState;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationState;->pendingUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public popHistoryItem()Lcom/chillingo/crystal/NavigationState$ScreenState;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/chillingo/crystal/NavigationController;->_currentState:Lcom/chillingo/crystal/NavigationState;

    invoke-virtual {v1}, Lcom/chillingo/crystal/NavigationState;->urlStack()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_currentState:Lcom/chillingo/crystal/NavigationState;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationState;->urlStack()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/chillingo/crystal/NavigationController;->_currentState:Lcom/chillingo/crystal/NavigationState;

    invoke-virtual {v1}, Lcom/chillingo/crystal/NavigationState;->urlStack()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/NavigationState$ScreenState;

    :cond_0
    return-object v0
.end method

.method public popView()V
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->popHistoryItem()Lcom/chillingo/crystal/NavigationState$ScreenState;

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->popHistoryItem()Lcom/chillingo/crystal/NavigationState$ScreenState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/chillingo/crystal/NavigationState$ScreenState;->url:Ljava/lang/String;

    iget v4, v0, Lcom/chillingo/crystal/NavigationState$ScreenState;->viewToDisplay:I

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/chillingo/crystal/http/FetchManager;->serverDataForUrl(Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/AbstractServerData;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/serverdata/UIDescription;

    if-nez v0, :cond_1

    new-instance v1, Lcom/chillingo/crystal/serverdata/UIDescription;

    sget-object v0, Lcom/chillingo/crystal/serverdata/FetchPriority;->AwaitingDisplay:Lcom/chillingo/crystal/serverdata/FetchPriority;

    invoke-direct {v1, v3, v0, v2}, Lcom/chillingo/crystal/serverdata/UIDescription;-><init>(Ljava/lang/String;Lcom/chillingo/crystal/serverdata/FetchPriority;I)V

    :goto_0
    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->delegate()Lcom/chillingo/crystal/INavigationControllerDelegate;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/chillingo/crystal/INavigationControllerDelegate;->willPopView(Lcom/chillingo/crystal/serverdata/UIDescription;)V

    const/4 v3, 0x1

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/chillingo/crystal/NavigationController;->pushView(Lcom/chillingo/crystal/serverdata/UIDescription;ZZIZ)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->delegate()Lcom/chillingo/crystal/INavigationControllerDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/chillingo/crystal/INavigationControllerDelegate;->closeUi()V

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public prefetchUrl(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/chillingo/crystal/NotificationCentre;->sharedInstance()Lcom/chillingo/crystal/NotificationCentre;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/chillingo/crystal/NotificationCentre;->addObserver(Ljava/lang/String;Lcom/chillingo/crystal/NotificationReceiver;)Z

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/http/FetchManager;->prefetchUrl(Ljava/lang/String;)V

    return-void
.end method

.method public preloadTab()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_currentState:Lcom/chillingo/crystal/NavigationState;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationState;->preloadTab()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public preloadUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_currentState:Lcom/chillingo/crystal/NavigationState;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationState;->preloadUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public privateSession()Lcom/chillingo/crystal/PrivateSession;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_privateSession:Lcom/chillingo/crystal/PrivateSession;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/chillingo/crystal/PrivateSession;->sharedInstance()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    iput-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_privateSession:Lcom/chillingo/crystal/PrivateSession;

    :cond_0
    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_privateSession:Lcom/chillingo/crystal/PrivateSession;

    return-object v0
.end method

.method public pushHistoryItem(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Lcom/chillingo/crystal/NavigationState$ScreenState;

    invoke-direct {v0}, Lcom/chillingo/crystal/NavigationState$ScreenState;-><init>()V

    iput-object p1, v0, Lcom/chillingo/crystal/NavigationState$ScreenState;->url:Ljava/lang/String;

    iput p2, v0, Lcom/chillingo/crystal/NavigationState$ScreenState;->viewToDisplay:I

    iget-object v1, p0, Lcom/chillingo/crystal/NavigationController;->_currentState:Lcom/chillingo/crystal/NavigationState;

    invoke-virtual {v1}, Lcom/chillingo/crystal/NavigationState;->urlStack()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public pushPullTabViewInTab(Ljava/lang/String;Z)V
    .locals 6

    const/4 v3, 0x0

    const-string v0, ""

    const-string v1, "https://chillingo-crystal.appspot.com/crystal/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "https://chillingo-crystal.appspot.com/crystal/"

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/chillingo/crystal/serverdata/FetchPriority;->AwaitingDisplay:Lcom/chillingo/crystal/serverdata/FetchPriority;

    move-object v0, p0

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/chillingo/crystal/NavigationController;->pushView(Ljava/lang/String;Lcom/chillingo/crystal/serverdata/FetchPriority;IZZ)V

    return-void
.end method

.method public pushView(Lcom/chillingo/crystal/serverdata/UIDescription;ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/chillingo/crystal/NavigationController;->pushView(Lcom/chillingo/crystal/serverdata/UIDescription;ZZZ)V

    return-void
.end method

.method public pushView(Lcom/chillingo/crystal/serverdata/UIDescription;ZZIZ)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->delegate()Lcom/chillingo/crystal/INavigationControllerDelegate;

    move-result-object v7

    invoke-interface {v7}, Lcom/chillingo/crystal/INavigationControllerDelegate;->showBusy()V

    invoke-interface {v7}, Lcom/chillingo/crystal/INavigationControllerDelegate;->viewToShowDialogIn()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/NavigationController;->removeModalDialogs(Landroid/view/ViewGroup;)V

    invoke-static {}, Lcom/chillingo/crystal/form/FormModelHeap;->instance()Lcom/chillingo/crystal/form/FormModelHeap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/UIDescription;->originalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/form/FormModelHeap;->get(Ljava/lang/String;)Lcom/chillingo/crystal/form/FormModel;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/chillingo/crystal/form/FormModel;

    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/UIDescription;->originalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/chillingo/crystal/form/FormModel;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/chillingo/crystal/form/FormModelHeap;->instance()Lcom/chillingo/crystal/form/FormModelHeap;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/chillingo/crystal/form/FormModelHeap;->add(Lcom/chillingo/crystal/form/FormModel;)V

    :cond_0
    if-ne p2, v8, :cond_1

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->historyItemCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->popHistoryItem()Lcom/chillingo/crystal/NavigationState$ScreenState;

    :cond_1
    if-nez p3, :cond_2

    invoke-interface {v7, p1}, Lcom/chillingo/crystal/INavigationControllerDelegate;->willPushView(Lcom/chillingo/crystal/serverdata/UIDescription;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/chillingo/crystal/NavigationController;->setCurrentUIDescription(Lcom/chillingo/crystal/serverdata/UIDescription;)V

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->currentUIDescription()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "UIDescription in pusView cannot be null"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-interface {v7}, Lcom/chillingo/crystal/INavigationControllerDelegate;->willPopView()V

    goto :goto_0

    :cond_3
    invoke-interface {v7}, Lcom/chillingo/crystal/INavigationControllerDelegate;->incomingView()Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    move-result-object v1

    if-eqz v1, :cond_5

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->setVisibility(I)V

    if-nez p3, :cond_4

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->inner()Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/NavigationController;->setHistoryScrollPosition(I)V

    :cond_4
    invoke-interface {v7}, Lcom/chillingo/crystal/INavigationControllerDelegate;->mainView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v1, v9}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->cleanup(Z)V

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_5
    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/UIDescription;->url()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p4}, Lcom/chillingo/crystal/NavigationController;->pushHistoryItem(Ljava/lang/String;I)V

    const/4 v6, 0x0

    invoke-interface {v7}, Lcom/chillingo/crystal/INavigationControllerDelegate;->isBackButtonDelegate()Z

    move-result v0

    if-ne v0, v8, :cond_6

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->delegate()Lcom/chillingo/crystal/INavigationControllerDelegate;

    move-result-object v6

    :cond_6
    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isInfoLoggingEnabled()Z

    move-result v0

    if-ne v0, v8, :cond_7

    const-string v0, "NavigationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NavigationController incoming view url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->currentUIDescription()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chillingo/crystal/serverdata/UIDescription;->url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    new-instance v0, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    invoke-interface {v7}, Lcom/chillingo/crystal/INavigationControllerDelegate;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->currentUIDescription()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v2

    invoke-interface {v7}, Lcom/chillingo/crystal/INavigationControllerDelegate;->backgroundColour()I

    move-result v4

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;-><init>(Landroid/content/Context;Lcom/chillingo/crystal/serverdata/UIDescription;Lcom/chillingo/crystal/form/FormModel;ILcom/chillingo/crystal/NavigationController;Lcom/chillingo/crystal/ui/theming/interfaces/ISkinnedViewDelegate;)V

    invoke-static {}, Lcom/chillingo/crystal/NavigationController;->isOrientationChange()Z

    move-result v1

    if-ne v1, v8, :cond_8

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->stopReload()V

    invoke-static {v9}, Lcom/chillingo/crystal/NavigationController;->setIsOrientationChange(Z)V

    :cond_8
    invoke-interface {v7, v0}, Lcom/chillingo/crystal/INavigationControllerDelegate;->setIncomingView(Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;)V

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->currentUIDescription()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Lcom/chillingo/crystal/serverdata/UIDescription;->dataAvailable()Z

    move-result v1

    if-ne v1, v8, :cond_9

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->delegate()Lcom/chillingo/crystal/INavigationControllerDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/chillingo/crystal/INavigationControllerDelegate;->shouldAddBackBarToUiDescription()Z

    move-result v1

    if-ne v1, v8, :cond_c

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->currentUIDescription()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v1

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->historyItemCount()I

    move-result v2

    if-le v2, v8, :cond_9

    invoke-virtual {v1}, Lcom/chillingo/crystal/serverdata/UIDescription;->addBackbar()V

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->delegate()Lcom/chillingo/crystal/INavigationControllerDelegate;

    move-result-object v2

    invoke-interface {v2}, Lcom/chillingo/crystal/INavigationControllerDelegate;->incomingView()Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    move-result-object v2

    invoke-virtual {v2, v1, v8}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->setUIDescription(Lcom/chillingo/crystal/serverdata/UIDescription;Z)V

    :cond_9
    :goto_1
    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-interface {v7}, Lcom/chillingo/crystal/INavigationControllerDelegate;->navigationView()Lcom/chillingo/crystal/ui/skinning/SkinnedView;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->currentTab()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/chillingo/crystal/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v8, :cond_a

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->preloadTab()Ljava/lang/String;

    :cond_a
    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->currentTab()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v8}, Lcom/chillingo/crystal/ui/skinning/SkinnedView;->setSelectedTab(Ljava/lang/String;Z)V

    :cond_b
    instance-of v1, v7, Lcom/chillingo/crystal/ui/viewgroups/padTab/PadTab$PadTabInner;

    if-nez v1, :cond_d

    invoke-interface {v7}, Lcom/chillingo/crystal/INavigationControllerDelegate;->displayArea()Landroid/graphics/Rect;

    move-result-object v1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3, v1, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-interface {v7}, Lcom/chillingo/crystal/INavigationControllerDelegate;->mainView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->inner()Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->bringChildToFront(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->inner()Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->makeInitialRequest(Z)V

    invoke-interface {v7}, Lcom/chillingo/crystal/INavigationControllerDelegate;->pushedView()V

    return-void

    :cond_c
    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->currentUIDescription()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/serverdata/UIDescription;->removeBackbar()V

    goto :goto_1

    :cond_d
    invoke-interface {v7}, Lcom/chillingo/crystal/INavigationControllerDelegate;->incomingView()Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout;->inner()Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/chillingo/crystal/ui/viewgroups/GenericTableLayout$GenericTableLayoutInner;->resetLayout(Z)V

    goto :goto_2
.end method

.method public pushView(Lcom/chillingo/crystal/serverdata/UIDescription;ZZZ)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/chillingo/crystal/NavigationController;->pushView(Lcom/chillingo/crystal/serverdata/UIDescription;ZZIZ)V

    return-void
.end method

.method public pushView(Ljava/lang/String;Lcom/chillingo/crystal/serverdata/FetchPriority;IZZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->privateSession()Lcom/chillingo/crystal/PrivateSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chillingo/crystal/PrivateSession;->fetchManager()Lcom/chillingo/crystal/http/FetchManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/http/FetchManager;->serverDataForUrl(Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/AbstractServerData;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/serverdata/UIDescription;

    if-nez v0, :cond_0

    new-instance v0, Lcom/chillingo/crystal/serverdata/UIDescription;

    invoke-direct {v0, p1, p2, p3}, Lcom/chillingo/crystal/serverdata/UIDescription;-><init>(Ljava/lang/String;Lcom/chillingo/crystal/serverdata/FetchPriority;I)V

    :cond_0
    invoke-virtual {p0, v0, p4, p5}, Lcom/chillingo/crystal/NavigationController;->pushView(Lcom/chillingo/crystal/serverdata/UIDescription;ZZ)V

    return-void
.end method

.method public removeModalDialogs(Landroid/view/ViewGroup;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v0, v1, Lcom/chillingo/crystal/ui/viewgroups/ModalView;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/chillingo/crystal/ui/viewgroups/ModalView;

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/viewgroups/ModalView;->hide()V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setCurrentTab(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_currentState:Lcom/chillingo/crystal/NavigationState;

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/NavigationState;->setCurrentTab(Ljava/lang/String;)V

    return-void
.end method

.method public setCurrentTab(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_currentState:Lcom/chillingo/crystal/NavigationState;

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/NavigationState;->setCurrentTab(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_currentState:Lcom/chillingo/crystal/NavigationState;

    invoke-virtual {v0, p2}, Lcom/chillingo/crystal/NavigationState;->setPreloadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setCurrentUIDescription(Lcom/chillingo/crystal/serverdata/UIDescription;)V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_currentState:Lcom/chillingo/crystal/NavigationState;

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/NavigationState;->setCurrentUIDescription(Lcom/chillingo/crystal/serverdata/UIDescription;)V

    return-void
.end method

.method public setHistoryScrollPosition(I)V
    .locals 2

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_currentState:Lcom/chillingo/crystal/NavigationState;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationState;->urlStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/chillingo/crystal/NavigationController;->_currentState:Lcom/chillingo/crystal/NavigationState;

    invoke-virtual {v1}, Lcom/chillingo/crystal/NavigationState;->urlStack()Ljava/util/List;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chillingo/crystal/NavigationState$ScreenState;

    iput p1, v0, Lcom/chillingo/crystal/NavigationState$ScreenState;->viewToDisplay:I

    :cond_0
    return-void
.end method

.method public setMainNavigationBar(Lcom/chillingo/crystal/serverdata/UIDescription;)V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_currentState:Lcom/chillingo/crystal/NavigationState;

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/NavigationState;->setNavigationBar(Lcom/chillingo/crystal/serverdata/UIDescription;)V

    return-void
.end method

.method public setPendingConfirmedUrlString(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_currentState:Lcom/chillingo/crystal/NavigationState;

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/NavigationState;->setPendingConfirmedUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setPendingTab(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_currentState:Lcom/chillingo/crystal/NavigationState;

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/NavigationState;->setPendingTab(Ljava/lang/String;)V

    return-void
.end method

.method public setPendingUIElement(Lcom/chillingo/crystal/serverdata/UIElement;)V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_currentState:Lcom/chillingo/crystal/NavigationState;

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/NavigationState;->setPendingUIElement(Lcom/chillingo/crystal/serverdata/UIElement;)V

    return-void
.end method

.method public setPendingUrl(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_currentState:Lcom/chillingo/crystal/NavigationState;

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/NavigationState;->setPendingUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setPreloadTab(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_currentState:Lcom/chillingo/crystal/NavigationState;

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/NavigationState;->setPreloadTab(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_currentState:Lcom/chillingo/crystal/NavigationState;

    invoke-virtual {v0, p2}, Lcom/chillingo/crystal/NavigationState;->setPreloadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public setStartChallengeUrl(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_startChallengeUrl:Ljava/lang/String;

    return-void
.end method

.method public setSuppressPopOnDialogClose(Z)V
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_currentState:Lcom/chillingo/crystal/NavigationState;

    invoke-virtual {v0, p1}, Lcom/chillingo/crystal/NavigationState;->setSuppressPopOnDialogClose(Z)V

    return-void
.end method

.method public setUrlStack(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/crystal/NavigationState$ScreenState;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public shouldShowDialog()Z
    .locals 1

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->delegate()Lcom/chillingo/crystal/INavigationControllerDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/chillingo/crystal/INavigationControllerDelegate;->shouldShowDialog()Z

    move-result v0

    return v0
.end method

.method public showBusy()V
    .locals 1

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->delegate()Lcom/chillingo/crystal/INavigationControllerDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/chillingo/crystal/INavigationControllerDelegate;->showBusy()V

    return-void
.end method

.method public showModalInternetConnectionErrorDialog()V
    .locals 7

    const/4 v6, 0x1

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v6, :cond_0

    const-string v0, "NavigationController"

    const-string v1, "+showModalInternetConnectionErrorDialog"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput-boolean v6, p0, Lcom/chillingo/crystal/NavigationController;->_isShowingModalDialog:Z

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->delegate()Lcom/chillingo/crystal/INavigationControllerDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/chillingo/crystal/INavigationControllerDelegate;->willShowModalInternetConnectionErrorDialog()V

    invoke-static {}, Lcom/chillingo/crystal/serverdata/UIDescription;->uiDescriptionForInternetConnectionError()Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v2

    new-instance v0, Lcom/chillingo/crystal/ui/viewgroups/ModalView;

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->delegate()Lcom/chillingo/crystal/INavigationControllerDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/chillingo/crystal/INavigationControllerDelegate;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->delegate()Lcom/chillingo/crystal/INavigationControllerDelegate;

    move-result-object v3

    invoke-interface {v3}, Lcom/chillingo/crystal/INavigationControllerDelegate;->viewToShowDialogIn()Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->delegate()Lcom/chillingo/crystal/INavigationControllerDelegate;

    move-result-object v4

    invoke-interface {v4}, Lcom/chillingo/crystal/INavigationControllerDelegate;->areaToShowDialogIn()Landroid/graphics/Rect;

    move-result-object v5

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/chillingo/crystal/ui/viewgroups/ModalView;-><init>(Landroid/content/Context;Lcom/chillingo/crystal/serverdata/UIDescription;Landroid/widget/RelativeLayout;Lcom/chillingo/crystal/ui/viewgroups/interfaces/IModalViewDelegate;Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->delegate()Lcom/chillingo/crystal/INavigationControllerDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/chillingo/crystal/INavigationControllerDelegate;->viewToShowDialogIn()Landroid/widget/RelativeLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/viewgroups/ModalView;->show()V

    invoke-static {}, Lcom/chillingo/crystal/utils/DLog;->isDebugLoggingEnabled()Z

    move-result v0

    if-ne v0, v6, :cond_1

    const-string v0, "NavigationController"

    const-string v1, "-showModalInternetConnectionErrorDialog"

    invoke-static {v0, v1}, Lcom/chillingo/crystal/utils/DLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public showModalOneButtonDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->delegate()Lcom/chillingo/crystal/INavigationControllerDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/chillingo/crystal/INavigationControllerDelegate;->shouldShowDialog()Z

    move-result v0

    if-ne v0, v1, :cond_0

    iput-boolean v1, p0, Lcom/chillingo/crystal/NavigationController;->_isShowingModalDialog:Z

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->delegate()Lcom/chillingo/crystal/INavigationControllerDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/chillingo/crystal/INavigationControllerDelegate;->willShowModalOneButtonDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, p4}, Lcom/chillingo/crystal/NavigationController;->setSuppressPopOnDialogClose(Z)V

    invoke-static {p1, p2, p3}, Lcom/chillingo/crystal/serverdata/UIDescription;->uiDescriptionForOneButtonDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v2

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->delegate()Lcom/chillingo/crystal/INavigationControllerDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/chillingo/crystal/INavigationControllerDelegate;->viewToShowDialogIn()Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    new-instance v0, Lcom/chillingo/crystal/ui/viewgroups/ModalView;

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->delegate()Lcom/chillingo/crystal/INavigationControllerDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/chillingo/crystal/INavigationControllerDelegate;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->delegate()Lcom/chillingo/crystal/INavigationControllerDelegate;

    move-result-object v3

    invoke-interface {v3}, Lcom/chillingo/crystal/INavigationControllerDelegate;->viewToShowDialogIn()Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->delegate()Lcom/chillingo/crystal/INavigationControllerDelegate;

    move-result-object v4

    invoke-interface {v4}, Lcom/chillingo/crystal/INavigationControllerDelegate;->areaToShowDialogIn()Landroid/graphics/Rect;

    move-result-object v5

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/chillingo/crystal/ui/viewgroups/ModalView;-><init>(Landroid/content/Context;Lcom/chillingo/crystal/serverdata/UIDescription;Landroid/widget/RelativeLayout;Lcom/chillingo/crystal/ui/viewgroups/interfaces/IModalViewDelegate;Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/viewgroups/ModalView;->show()V

    :cond_0
    return-void
.end method

.method public showModalTwoButtonDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chillingo/crystal/serverdata/UIElement;)V
    .locals 6

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->delegate()Lcom/chillingo/crystal/INavigationControllerDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/chillingo/crystal/INavigationControllerDelegate;->shouldShowDialog()Z

    move-result v0

    if-ne v0, v1, :cond_0

    iput-boolean v1, p0, Lcom/chillingo/crystal/NavigationController;->_isShowingModalDialog:Z

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->delegate()Lcom/chillingo/crystal/INavigationControllerDelegate;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/chillingo/crystal/INavigationControllerDelegate;->willShowModalTwoButtonDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/chillingo/crystal/serverdata/UIElement;)V

    invoke-virtual {p5}, Lcom/chillingo/crystal/serverdata/UIElement;->href()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chillingo/crystal/NavigationController;->setPendingConfirmedUrlString(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Lcom/chillingo/crystal/NavigationController;->setPendingUIElement(Lcom/chillingo/crystal/serverdata/UIElement;)V

    invoke-static {p1, p2, p3, p4}, Lcom/chillingo/crystal/serverdata/UIDescription;->uiDescriptionForTwoButtonDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/chillingo/crystal/serverdata/UIDescription;

    move-result-object v2

    new-instance v0, Lcom/chillingo/crystal/ui/viewgroups/ModalView;

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->delegate()Lcom/chillingo/crystal/INavigationControllerDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/chillingo/crystal/INavigationControllerDelegate;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->delegate()Lcom/chillingo/crystal/INavigationControllerDelegate;

    move-result-object v3

    invoke-interface {v3}, Lcom/chillingo/crystal/INavigationControllerDelegate;->viewToShowDialogIn()Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-virtual {p0}, Lcom/chillingo/crystal/NavigationController;->delegate()Lcom/chillingo/crystal/INavigationControllerDelegate;

    move-result-object v4

    invoke-interface {v4}, Lcom/chillingo/crystal/INavigationControllerDelegate;->areaToShowDialogIn()Landroid/graphics/Rect;

    move-result-object v5

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/chillingo/crystal/ui/viewgroups/ModalView;-><init>(Landroid/content/Context;Lcom/chillingo/crystal/serverdata/UIDescription;Landroid/widget/RelativeLayout;Lcom/chillingo/crystal/ui/viewgroups/interfaces/IModalViewDelegate;Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Lcom/chillingo/crystal/ui/viewgroups/ModalView;->show()V

    :cond_0
    return-void
.end method

.method public startChallengeUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_startChallengeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public suppressDialogPopOnClose()Z
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_currentState:Lcom/chillingo/crystal/NavigationState;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationState;->suppressPopOnDialogClose()Z

    move-result v0

    return v0
.end method

.method public twitter()Lcom/chillingo/crystal/NavigationController$CrystalTwitter;
    .locals 1

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_twitter:Lcom/chillingo/crystal/NavigationController$CrystalTwitter;

    return-object v0
.end method

.method public urlStack()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/chillingo/crystal/NavigationState$ScreenState;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/chillingo/crystal/NavigationController;->_currentState:Lcom/chillingo/crystal/NavigationState;

    invoke-virtual {v0}, Lcom/chillingo/crystal/NavigationState;->urlStack()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
