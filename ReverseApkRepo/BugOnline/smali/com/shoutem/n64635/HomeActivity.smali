.class public Lcom/shoutem/n64635/HomeActivity;
.super Landroid/app/Activity;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shoutem/n64635/HomeActivity$LocationListener;,
        Lcom/shoutem/n64635/HomeActivity$ShoutEmWebViewClient;,
        Lcom/shoutem/n64635/HomeActivity$ShoutEmWebChromeClient;
    }
.end annotation


# static fields
.field private static final ANALYTICS_CODE_KEY:Ljava/lang/String; = "analytics_code"

.field private static final CAMERA_ACTIVITY:I = 0x1

.field private static final FLURRY_API_KEY:Ljava/lang/String; = "1X43W3AVY55UWIXFI7X6"

.field private static final GALLERY_ACTIVITY:I = 0x2

.field static final PREFERENCE_PUSH_ENABLED:Ljava/lang/String; = "pushEnabled"

.field public static final PREFS_NAME:Ljava/lang/String; = "LFiveMinutesHome"

.field private static final SETTINGS_FILENAME:Ljava/lang/String; = "settings.properties"

.field public static mApp:Lcom/shoutem/n64635/HomeActivity;

.field private static mVersion:I

.field public static running:Z


# instance fields
.field private adLoadInProgress:Z

.field private adLoaded:Z

.field private adViewShouldShow:Z

.field private facebook:Lcom/facebook/android/Facebook;

.field private mAdView:Lcom/mopub/mobileads/MoPubView;

.field mDeviceHandler:Lcom/shoutem/UrlHandler;

.field private mImageCaptureOutputFile:Ljava/io/File;

.field mLocation:Landroid/location/Location;

.field mLocationListener:Lcom/shoutem/n64635/HomeActivity$LocationListener;

.field private mMenuItems:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/shoutem/ScriptMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mWebview:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    sput-boolean v0, Lcom/shoutem/n64635/HomeActivity;->running:Z

    .line 81
    sput v0, Lcom/shoutem/n64635/HomeActivity;->mVersion:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 83
    new-instance v0, Lcom/facebook/android/Facebook;

    const-string v1, "69418485210"

    invoke-direct {v0, v1}, Lcom/facebook/android/Facebook;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/shoutem/n64635/HomeActivity;->facebook:Lcom/facebook/android/Facebook;

    .line 90
    iput-boolean v2, p0, Lcom/shoutem/n64635/HomeActivity;->adLoadInProgress:Z

    .line 92
    iput-boolean v2, p0, Lcom/shoutem/n64635/HomeActivity;->adViewShouldShow:Z

    .line 94
    iput-boolean v2, p0, Lcom/shoutem/n64635/HomeActivity;->adLoaded:Z

    .line 646
    return-void
.end method

.method static synthetic access$100(Lcom/shoutem/n64635/HomeActivity;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/shoutem/n64635/HomeActivity;->mWebview:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/shoutem/n64635/HomeActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/shoutem/n64635/HomeActivity;->adLoadInProgress:Z

    return p1
.end method

.method static synthetic access$302(Lcom/shoutem/n64635/HomeActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/shoutem/n64635/HomeActivity;->adLoaded:Z

    return p1
.end method

.method static synthetic access$400(Lcom/shoutem/n64635/HomeActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/shoutem/n64635/HomeActivity;->adViewShouldShow:Z

    return v0
.end method


# virtual methods
.method public deviceUrlProcessed()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/shoutem/n64635/HomeActivity;->mWebview:Landroid/webkit/WebView;

    const-string v1, "javascript: if (deviceUrlProcessed) { deviceUrlProcessed(); }"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method public doShowAdvertisement()V
    .locals 3

    .prologue
    .line 503
    iget-object v1, p0, Lcom/shoutem/n64635/HomeActivity;->mAdView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 509
    :goto_0
    return-void

    .line 506
    :cond_0
    const/high16 v1, 0x7f04

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 507
    .local v0, adAnim:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/shoutem/n64635/HomeActivity;->mAdView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/MoPubView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 508
    iget-object v1, p0, Lcom/shoutem/n64635/HomeActivity;->mAdView:Lcom/mopub/mobileads/MoPubView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mopub/mobileads/MoPubView;->setVisibility(I)V

    goto :goto_0
.end method

.method public getFacebook()Lcom/facebook/android/Facebook;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/shoutem/n64635/HomeActivity;->facebook:Lcom/facebook/android/Facebook;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 770
    invoke-virtual {p0}, Lcom/shoutem/n64635/HomeActivity;->stopLocationUpdates()V

    .line 771
    invoke-virtual {p0}, Lcom/shoutem/n64635/HomeActivity;->startLocationUpdates()V

    .line 772
    iget-object v0, p0, Lcom/shoutem/n64635/HomeActivity;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getPathFromMediaStore(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 799
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .local v2, projection:[Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 800
    invoke-virtual/range {v0 .. v5}, Lcom/shoutem/n64635/HomeActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 801
    .local v7, cursor:Landroid/database/Cursor;
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 803
    .local v6, column_index:I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 804
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 628
    sget v0, Lcom/shoutem/n64635/HomeActivity;->mVersion:I

    return v0
.end method

.method public goUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 308
    const-string v0, "javascript:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    const-string v0, "javascript:"

    const-string v1, "javascript: if (deviceUrlProcessed) { deviceUrlProcessed(); }"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 313
    :cond_0
    const-string v0, "DeviceUrl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lcom/shoutem/n64635/HomeActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 315
    return-void
.end method

.method public hideAdvertisement()V
    .locals 2

    .prologue
    .line 541
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shoutem/n64635/HomeActivity;->adViewShouldShow:Z

    .line 542
    iget-object v0, p0, Lcom/shoutem/n64635/HomeActivity;->mAdView:Lcom/mopub/mobileads/MoPubView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubView;->setVisibility(I)V

    .line 549
    return-void
.end method

.method public hideSplashScreen()V
    .locals 2

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/shoutem/n64635/HomeActivity;->startPushNotifications()V

    .line 479
    const/high16 v0, 0x7f07

    invoke-virtual {p0, v0}, Lcom/shoutem/n64635/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 480
    const v0, 0x7f070002

    invoke-virtual {p0, v0}, Lcom/shoutem/n64635/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 481
    return-void
.end method

.method protected initFlurry()V
    .locals 9

    .prologue
    .line 393
    const/4 v3, 0x0

    .line 395
    .local v3, flurryAPIKey:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/shoutem/n64635/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 396
    .local v6, resources:Landroid/content/res/Resources;
    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 398
    .local v1, assetManager:Landroid/content/res/AssetManager;
    :try_start_0
    const-string v7, "settings.properties"

    invoke-virtual {v1, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 399
    .local v4, in:Ljava/io/InputStream;
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 400
    .local v5, properties:Ljava/util/Properties;
    invoke-virtual {v5, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 401
    const-string v7, "analytics_code"

    invoke-virtual {v5, v7}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    .end local v4           #in:Ljava/io/InputStream;
    .end local v5           #properties:Ljava/util/Properties;
    :goto_0
    if-eqz v3, :cond_0

    const-string v7, ""

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 409
    :cond_0
    const-string v3, "1X43W3AVY55UWIXFI7X6"

    .line 411
    :cond_1
    invoke-static {p0, v3}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 412
    return-void

    .line 402
    :catch_0
    move-exception v2

    .line 404
    .local v2, e:Ljava/io/IOException;
    const-string v7, "settings"

    const-string v8, "Error while reading analytics code from settings"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method loadVersion()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 633
    const-string v1, "LFiveMinutesHome"

    invoke-virtual {p0, v1, v2}, Lcom/shoutem/n64635/HomeActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 634
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "version"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/shoutem/n64635/HomeActivity;->mVersion:I

    .line 636
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v5, -0x1

    .line 815
    packed-switch p1, :pswitch_data_0

    .line 876
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 877
    iget-object v5, p0, Lcom/shoutem/n64635/HomeActivity;->facebook:Lcom/facebook/android/Facebook;

    invoke-virtual {v5, p1, p2, p3}, Lcom/facebook/android/Facebook;->authorizeCallback(IILandroid/content/Intent;)V

    .line 878
    return-void

    .line 817
    :pswitch_0
    if-ne p2, v5, :cond_1

    .line 831
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 833
    .local v4, imageUri:Landroid/net/Uri;
    if-nez v4, :cond_0

    .line 834
    new-instance v5, Ljava/io/FileNotFoundException;

    invoke-direct {v5}, Ljava/io/FileNotFoundException;-><init>()V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 843
    .end local v4           #imageUri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 846
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Photo was captured into file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/shoutem/n64635/HomeActivity;->mImageCaptureOutputFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :try_start_1
    invoke-virtual {p0}, Lcom/shoutem/n64635/HomeActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/shoutem/n64635/HomeActivity;->mImageCaptureOutputFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 858
    :goto_1
    iget-object v5, p0, Lcom/shoutem/n64635/HomeActivity;->mImageCaptureOutputFile:Ljava/io/File;

    invoke-static {v5}, Lcom/shoutem/DeviceMediaHandler;->onImageActivitySuccess(Ljava/io/File;)V

    goto :goto_0

    .line 837
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v4       #imageUri:Landroid/net/Uri;
    :cond_0
    :try_start_2
    invoke-virtual {p0, v4}, Lcom/shoutem/n64635/HomeActivity;->getPathFromMediaStore(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 838
    .local v3, imagePath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 839
    .local v2, imageFile:Ljava/io/File;
    const-string v5, "camera"

    const-string v6, "Photo was captured into media album"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    invoke-static {v2}, Lcom/shoutem/DeviceMediaHandler;->onImageActivitySuccess(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 854
    .end local v2           #imageFile:Ljava/io/File;
    .end local v3           #imagePath:Ljava/lang/String;
    .end local v4           #imageUri:Landroid/net/Uri;
    .restart local v0       #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 855
    .local v1, exception:Ljava/io/FileNotFoundException;
    const-string v5, "camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed save file to media album: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 862
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #exception:Ljava/io/FileNotFoundException;
    :cond_1
    invoke-static {p2}, Lcom/shoutem/DeviceMediaHandler;->onImageActivityError(I)V

    goto :goto_0

    .line 866
    :pswitch_1
    if-ne p2, v5, :cond_2

    .line 867
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 868
    .restart local v4       #imageUri:Landroid/net/Uri;
    invoke-virtual {p0, v4}, Lcom/shoutem/n64635/HomeActivity;->getPathFromMediaStore(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 869
    .restart local v3       #imagePath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 870
    .restart local v2       #imageFile:Ljava/io/File;
    invoke-static {v2}, Lcom/shoutem/DeviceMediaHandler;->onImageActivitySuccess(Ljava/io/File;)V

    goto/16 :goto_0

    .line 872
    .end local v2           #imageFile:Ljava/io/File;
    .end local v3           #imagePath:Ljava/lang/String;
    .end local v4           #imageUri:Landroid/net/Uri;
    :cond_2
    invoke-static {p2}, Lcom/shoutem/DeviceMediaHandler;->onImageActivityError(I)V

    goto/16 :goto_0

    .line 815
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    sput-object p0, Lcom/shoutem/n64635/HomeActivity;->mApp:Lcom/shoutem/n64635/HomeActivity;

    .line 113
    const/4 v0, 0x0

    sput v0, Lcom/shoutem/n64635/HomeActivity;->mVersion:I

    .line 114
    new-instance v0, Lcom/shoutem/UrlHandler;

    invoke-direct {v0}, Lcom/shoutem/UrlHandler;-><init>()V

    iput-object v0, p0, Lcom/shoutem/n64635/HomeActivity;->mDeviceHandler:Lcom/shoutem/UrlHandler;

    .line 116
    new-instance v0, Lcom/shoutem/n64635/HomeActivity$LocationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shoutem/n64635/HomeActivity$LocationListener;-><init>(Lcom/shoutem/n64635/HomeActivity;Lcom/shoutem/n64635/HomeActivity$1;)V

    iput-object v0, p0, Lcom/shoutem/n64635/HomeActivity;->mLocationListener:Lcom/shoutem/n64635/HomeActivity$LocationListener;

    .line 117
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 119
    invoke-virtual {p0}, Lcom/shoutem/n64635/HomeActivity;->runWithAssets()V

    .line 135
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Lcom/shoutem/n64635/HomeActivity;->mAdView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->destroy()V

    .line 810
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 811
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 255
    iget-object v6, p0, Lcom/shoutem/n64635/HomeActivity;->mWebview:Landroid/webkit/WebView;

    if-eqz v6, :cond_5

    .line 257
    const/4 v6, 0x4

    if-ne p1, v6, :cond_5

    .line 259
    iget-object v6, p0, Lcom/shoutem/n64635/HomeActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/shoutem/n64635/HomeActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v6

    const-string v7, "#_=home"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 263
    iget-object v6, p0, Lcom/shoutem/n64635/HomeActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v3

    .line 264
    .local v3, list:Landroid/webkit/WebBackForwardList;
    invoke-virtual {v3}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v1

    .line 266
    .local v1, curItem:Landroid/webkit/WebHistoryItem;
    invoke-virtual {v1}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v6

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 267
    iget-object v6, p0, Lcom/shoutem/n64635/HomeActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->goBack()V

    .line 297
    .end local v1           #curItem:Landroid/webkit/WebHistoryItem;
    .end local v3           #list:Landroid/webkit/WebBackForwardList;
    :goto_0
    const/4 v6, 0x1

    .line 300
    :goto_1
    return v6

    .line 269
    .restart local v1       #curItem:Landroid/webkit/WebHistoryItem;
    .restart local v3       #list:Landroid/webkit/WebBackForwardList;
    :cond_0
    invoke-virtual {v3}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v0

    .line 270
    .local v0, curIndex:I
    const/4 v4, 0x0

    .line 272
    .local v4, prevAppItem:Landroid/webkit/WebHistoryItem;
    move v2, v0

    .local v2, i:I
    :goto_2
    if-ltz v2, :cond_1

    .line 273
    invoke-virtual {v3, v2}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v1

    .line 274
    invoke-virtual {v1}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v6

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 275
    move-object v4, v1

    .line 280
    :cond_1
    if-eqz v4, :cond_3

    .line 282
    invoke-virtual {v4}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v6

    const-string v7, "#.*"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 284
    .local v5, url:Ljava/lang/String;
    iget-object v6, p0, Lcom/shoutem/n64635/HomeActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v6, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 272
    .end local v5           #url:Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 287
    :cond_3
    invoke-virtual {p0}, Lcom/shoutem/n64635/HomeActivity;->finish()V

    goto :goto_0

    .line 295
    .end local v0           #curIndex:I
    .end local v1           #curItem:Landroid/webkit/WebHistoryItem;
    .end local v2           #i:I
    .end local v3           #list:Landroid/webkit/WebBackForwardList;
    .end local v4           #prevAppItem:Landroid/webkit/WebHistoryItem;
    :cond_4
    invoke-virtual {p0}, Lcom/shoutem/n64635/HomeActivity;->finish()V

    goto :goto_0

    .line 300
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v6

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 356
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 357
    .local v0, id:I
    iget-object v2, p0, Lcom/shoutem/n64635/HomeActivity;->mMenuItems:Ljava/util/Vector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/shoutem/n64635/HomeActivity;->mMenuItems:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 358
    iget-object v2, p0, Lcom/shoutem/n64635/HomeActivity;->mMenuItems:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shoutem/ScriptMenuItem;

    .line 359
    .local v1, menuItem:Lcom/shoutem/ScriptMenuItem;
    iget-object v2, v1, Lcom/shoutem/ScriptMenuItem;->mUrl:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 361
    iget-object v2, v1, Lcom/shoutem/ScriptMenuItem;->mUrl:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/shoutem/n64635/HomeActivity;->goUrl(Ljava/lang/String;)V

    .line 364
    .end local v1           #menuItem:Lcom/shoutem/ScriptMenuItem;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 379
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 380
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 381
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 382
    invoke-virtual {p0}, Lcom/shoutem/n64635/HomeActivity;->stopLocationUpdates()V

    .line 383
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    .line 335
    iget-object v3, p0, Lcom/shoutem/n64635/HomeActivity;->mMenuItems:Ljava/util/Vector;

    if-nez v3, :cond_0

    move v3, v4

    .line 350
    :goto_0
    return v3

    .line 338
    :cond_0
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 341
    const/4 v0, 0x0

    .local v0, a:I
    :goto_1
    iget-object v3, p0, Lcom/shoutem/n64635/HomeActivity;->mMenuItems:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 342
    iget-object v3, p0, Lcom/shoutem/n64635/HomeActivity;->mMenuItems:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shoutem/ScriptMenuItem;

    iget-object v3, v3, Lcom/shoutem/ScriptMenuItem;->mLabel:Ljava/lang/String;

    invoke-interface {p1, v4, v0, v4, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    .line 343
    .local v2, item:Landroid/view/MenuItem;
    iget-object v3, p0, Lcom/shoutem/n64635/HomeActivity;->mMenuItems:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shoutem/ScriptMenuItem;

    iget-object v3, v3, Lcom/shoutem/ScriptMenuItem;->mIconBmp:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    .line 345
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/shoutem/n64635/HomeActivity;->mMenuItems:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shoutem/ScriptMenuItem;

    iget-object v3, v3, Lcom/shoutem/ScriptMenuItem;->mIconBmp:Landroid/graphics/Bitmap;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 347
    .local v1, bmp:Landroid/graphics/drawable/BitmapDrawable;
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 341
    .end local v1           #bmp:Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 350
    .end local v2           #item:Landroid/view/MenuItem;
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 424
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 425
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 369
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 370
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 371
    invoke-virtual {p0}, Lcom/shoutem/n64635/HomeActivity;->startLocationUpdates()V

    .line 372
    iget-object v0, p0, Lcom/shoutem/n64635/HomeActivity;->mWebview:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/shoutem/n64635/HomeActivity;->mWebview:Landroid/webkit/WebView;

    const-string v1, "javascript: if (typeof onResumeApp == \'function\') { onResumeApp(); }"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 375
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x1

    sput-boolean v0, Lcom/shoutem/n64635/HomeActivity;->running:Z

    .line 388
    invoke-virtual {p0}, Lcom/shoutem/n64635/HomeActivity;->initFlurry()V

    .line 389
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 390
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 416
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 417
    const/4 v0, 0x0

    sput-boolean v0, Lcom/shoutem/n64635/HomeActivity;->running:Z

    .line 418
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 419
    return-void
.end method

.method runWithAssets()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 553
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/shoutem/n64635/HomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 554
    .local v1, tManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 557
    .local v2, uuid:Ljava/lang/String;
    const/high16 v4, 0x7f03

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/shoutem/n64635/HomeActivity;->setContentView(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    :goto_0
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 564
    const v4, 0x7f070002

    invoke-virtual {p0, v4}, Lcom/shoutem/n64635/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    iput-object v4, p0, Lcom/shoutem/n64635/HomeActivity;->mWebview:Landroid/webkit/WebView;

    .line 567
    const v4, 0x7f070003

    invoke-virtual {p0, v4}, Lcom/shoutem/n64635/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/mopub/mobileads/MoPubView;

    iput-object v4, p0, Lcom/shoutem/n64635/HomeActivity;->mAdView:Lcom/mopub/mobileads/MoPubView;

    .line 568
    invoke-virtual {p0}, Lcom/shoutem/n64635/HomeActivity;->hideAdvertisement()V

    .line 569
    iget-object v4, p0, Lcom/shoutem/n64635/HomeActivity;->mAdView:Lcom/mopub/mobileads/MoPubView;

    new-instance v5, Lcom/shoutem/n64635/HomeActivity$5;

    invoke-direct {v5, p0}, Lcom/shoutem/n64635/HomeActivity$5;-><init>(Lcom/shoutem/n64635/HomeActivity;)V

    invoke-virtual {v4, v5}, Lcom/mopub/mobileads/MoPubView;->setOnAdLoadedListener(Lcom/mopub/mobileads/MoPubView$OnAdLoadedListener;)V

    .line 579
    iget-object v4, p0, Lcom/shoutem/n64635/HomeActivity;->mAdView:Lcom/mopub/mobileads/MoPubView;

    new-instance v5, Lcom/shoutem/n64635/HomeActivity$6;

    invoke-direct {v5, p0}, Lcom/shoutem/n64635/HomeActivity$6;-><init>(Lcom/shoutem/n64635/HomeActivity;)V

    invoke-virtual {v4, v5}, Lcom/mopub/mobileads/MoPubView;->setOnAdFailedListener(Lcom/mopub/mobileads/MoPubView$OnAdFailedListener;)V

    .line 587
    iget-object v4, p0, Lcom/shoutem/n64635/HomeActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    .line 588
    .local v3, webSettings:Landroid/webkit/WebSettings;
    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 589
    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 590
    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 591
    invoke-virtual {v3, v6}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    .line 592
    invoke-virtual {v3, v7}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 596
    iget-object v4, p0, Lcom/shoutem/n64635/HomeActivity;->mWebview:Landroid/webkit/WebView;

    new-instance v5, Lcom/shoutem/n64635/HomeActivity$ShoutEmWebViewClient;

    invoke-direct {v5, p0, v8}, Lcom/shoutem/n64635/HomeActivity$ShoutEmWebViewClient;-><init>(Lcom/shoutem/n64635/HomeActivity;Lcom/shoutem/n64635/HomeActivity$1;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 597
    iget-object v4, p0, Lcom/shoutem/n64635/HomeActivity;->mWebview:Landroid/webkit/WebView;

    new-instance v5, Lcom/shoutem/n64635/HomeActivity$ShoutEmWebChromeClient;

    invoke-direct {v5, p0, v8}, Lcom/shoutem/n64635/HomeActivity$ShoutEmWebChromeClient;-><init>(Lcom/shoutem/n64635/HomeActivity;Lcom/shoutem/n64635/HomeActivity$1;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 598
    iget-object v4, p0, Lcom/shoutem/n64635/HomeActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->requestFocus()Z

    .line 599
    iget-object v4, p0, Lcom/shoutem/n64635/HomeActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v4, v6}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 600
    iget-object v4, p0, Lcom/shoutem/n64635/HomeActivity;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v4, v7}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 605
    iget-object v4, p0, Lcom/shoutem/n64635/HomeActivity;->mWebview:Landroid/webkit/WebView;

    const-string v5, "file:///android_asset/www/index.html"

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 611
    return-void

    .line 558
    .end local v3           #webSettings:Landroid/webkit/WebSettings;
    :catch_0
    move-exception v0

    .line 559
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method runWithVersion()V
    .locals 0

    .prologue
    .line 624
    return-void
.end method

.method saveVersion()V
    .locals 4

    .prologue
    .line 640
    const-string v2, "LFiveMinutesHome"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/shoutem/n64635/HomeActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 641
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 642
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "version"

    sget v3, Lcom/shoutem/n64635/HomeActivity;->mVersion:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 643
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 644
    return-void
.end method

.method public setMenuItems(Ljava/util/Vector;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/shoutem/ScriptMenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 328
    .local p1, items:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/shoutem/ScriptMenuItem;>;"
    iput-object p1, p0, Lcom/shoutem/n64635/HomeActivity;->mMenuItems:Ljava/util/Vector;

    .line 329
    return-void
.end method

.method public showActivityIndicator(Ljava/lang/Boolean;)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 484
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    new-instance v0, Lcom/shoutem/n64635/HomeActivity$3;

    invoke-direct {v0, p0}, Lcom/shoutem/n64635/HomeActivity$3;-><init>(Lcom/shoutem/n64635/HomeActivity;)V

    invoke-virtual {p0, v0}, Lcom/shoutem/n64635/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 500
    :goto_0
    return-void

    .line 492
    :cond_0
    new-instance v0, Lcom/shoutem/n64635/HomeActivity$4;

    invoke-direct {v0, p0}, Lcom/shoutem/n64635/HomeActivity$4;-><init>(Lcom/shoutem/n64635/HomeActivity;)V

    invoke-virtual {p0, v0}, Lcom/shoutem/n64635/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public showAdvertisement(Ljava/lang/String;)V
    .locals 2
    .parameter "unitId"

    .prologue
    const/4 v1, 0x1

    .line 521
    iput-boolean v1, p0, Lcom/shoutem/n64635/HomeActivity;->adViewShouldShow:Z

    .line 522
    iget-boolean v0, p0, Lcom/shoutem/n64635/HomeActivity;->adLoadInProgress:Z

    if-eqz v0, :cond_0

    .line 537
    :goto_0
    return-void

    .line 528
    :cond_0
    iget-boolean v0, p0, Lcom/shoutem/n64635/HomeActivity;->adLoaded:Z

    if-nez v0, :cond_1

    .line 529
    iget-object v0, p0, Lcom/shoutem/n64635/HomeActivity;->mAdView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/MoPubView;->setAdUnitId(Ljava/lang/String;)V

    .line 530
    iput-boolean v1, p0, Lcom/shoutem/n64635/HomeActivity;->adLoadInProgress:Z

    .line 531
    iget-object v0, p0, Lcom/shoutem/n64635/HomeActivity;->mAdView:Lcom/mopub/mobileads/MoPubView;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubView;->loadAd()V

    goto :goto_0

    .line 533
    :cond_1
    invoke-virtual {p0}, Lcom/shoutem/n64635/HomeActivity;->doShowAdvertisement()V

    goto :goto_0
.end method

.method public startGalleryIntent(Ljava/lang/String;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 791
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 792
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 793
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 794
    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/shoutem/n64635/HomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 796
    return-void
.end method

.method public startImageCaptureIntent()V
    .locals 4

    .prologue
    .line 780
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 781
    .local v0, imageCaptureIntent:Landroid/content/Intent;
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "tmp_attach.jpg"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/shoutem/n64635/HomeActivity;->mImageCaptureOutputFile:Ljava/io/File;

    .line 783
    const-string v1, "output"

    iget-object v2, p0, Lcom/shoutem/n64635/HomeActivity;->mImageCaptureOutputFile:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 787
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/shoutem/n64635/HomeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 788
    return-void
.end method

.method startLocationUpdates()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x3a98

    const/4 v4, 0x0

    .line 757
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/shoutem/n64635/HomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 758
    .local v0, locManager:Landroid/location/LocationManager;
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 759
    const-string v1, "gps"

    iget-object v5, p0, Lcom/shoutem/n64635/HomeActivity;->mLocationListener:Lcom/shoutem/n64635/HomeActivity$LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 763
    :cond_0
    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 764
    const-string v1, "network"

    iget-object v5, p0, Lcom/shoutem/n64635/HomeActivity;->mLocationListener:Lcom/shoutem/n64635/HomeActivity$LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 767
    :cond_1
    return-void
.end method

.method public startPushNotifications()V
    .locals 9

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/shoutem/n64635/HomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/shoutem/n64635/ShoutemApp;

    .line 431
    .local v0, app:Lcom/shoutem/n64635/ShoutemApp;
    iget-object v7, v0, Lcom/shoutem/n64635/ShoutemApp;->options:Lcom/urbanairship/AirshipConfigOptions;

    iget-boolean v7, v7, Lcom/urbanairship/AirshipConfigOptions;->pushServiceEnabled:Z

    if-eqz v7, :cond_2

    .line 432
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/shoutem/n64635/HomeActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 434
    .local v4, preferences:Landroid/content/SharedPreferences;
    const-string v7, "pushEnabled"

    const-string v8, "undefined"

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 435
    .local v5, pushEnabled:Ljava/lang/String;
    const-string v7, "true"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 436
    invoke-static {}, Lcom/urbanairship/push/PushManager;->enablePush()V

    .line 474
    .end local v4           #preferences:Landroid/content/SharedPreferences;
    .end local v5           #pushEnabled:Ljava/lang/String;
    :goto_0
    return-void

    .line 437
    .restart local v4       #preferences:Landroid/content/SharedPreferences;
    .restart local v5       #pushEnabled:Ljava/lang/String;
    :cond_0
    const-string v7, "false"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 438
    invoke-static {}, Lcom/urbanairship/push/PushManager;->disablePush()V

    goto :goto_0

    .line 440
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    sget-object v7, Lcom/shoutem/n64635/HomeActivity;->mApp:Lcom/shoutem/n64635/HomeActivity;

    invoke-direct {v2, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 441
    .local v2, dlg:Landroid/app/AlertDialog$Builder;
    const v7, 0x7f060004

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 443
    invoke-virtual {p0}, Lcom/shoutem/n64635/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x7f06

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 444
    .local v1, appName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/shoutem/n64635/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060005

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 445
    .local v6, wouldYouLikeToReceivePushFrom:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 447
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 449
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    const v7, 0x7f060002

    new-instance v8, Lcom/shoutem/n64635/HomeActivity$1;

    invoke-direct {v8, p0, v3}, Lcom/shoutem/n64635/HomeActivity$1;-><init>(Lcom/shoutem/n64635/HomeActivity;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v2, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 458
    const v7, 0x7f060003

    new-instance v8, Lcom/shoutem/n64635/HomeActivity$2;

    invoke-direct {v8, p0, v3}, Lcom/shoutem/n64635/HomeActivity$2;-><init>(Lcom/shoutem/n64635/HomeActivity;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v2, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 466
    const v7, 0x7f020006

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 467
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 471
    .end local v1           #appName:Ljava/lang/String;
    .end local v2           #dlg:Landroid/app/AlertDialog$Builder;
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v4           #preferences:Landroid/content/SharedPreferences;
    .end local v5           #pushEnabled:Ljava/lang/String;
    .end local v6           #wouldYouLikeToReceivePushFrom:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/urbanairship/push/PushManager;->disablePush()V

    goto :goto_0
.end method

.method stopLocationUpdates()V
    .locals 2

    .prologue
    .line 751
    const-string v1, "location"

    invoke-virtual {p0, v1}, Lcom/shoutem/n64635/HomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 752
    .local v0, locManager:Landroid/location/LocationManager;
    iget-object v1, p0, Lcom/shoutem/n64635/HomeActivity;->mLocationListener:Lcom/shoutem/n64635/HomeActivity$LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 753
    return-void
.end method
