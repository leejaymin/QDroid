.class public Lcom/wolfram/android/alpha/WolframAlphaApplication;
.super Landroid/app/Application;
.source "WolframAlphaApplication.java"


# static fields
.field private static final DEFAULT_ASYNCTIMEOUT:F = 0.25f

.field private static final DEFAULT_DRAWRECTIMAGEMAP:Z = false

.field private static final DEFAULT_IMAGE_FORMAT:Ljava/lang/String; = "gif"

.field private static final DEFAULT_SCANTIMEOUT:F = 0.5f

.field private static final DEFAULT_SERVER:Ljava/lang/String; = "production"

.field private static final DEFAULT_USEKEYBOARD:Z = true

.field private static final DEFAULT_USELOC:Z = true

.field private static final DEFAULT_USERECALC:Z = true

.field private static final DOWNLOAD_DIR:Ljava/lang/String; = "downloads"

.field public static final FONTSIZE_100:I = 0x0

.field public static final FONTSIZE_150:I = 0x1

.field public static final FONTSIZE_200:I = 0x2

.field public static final FONTSIZE_250:I = 0x3

.field public static final FONTSIZE_300:I = 0x4

.field public static final FONTSIZE_350:I = 0x5

.field public static final FONTSIZE_400:I = 0x6

.field public static final LOGTAG:Ljava/lang/String; = "Wolfram|Alpha"

.field private static final STATE_DIR:Ljava/lang/String; = "state"

.field public static final UNITS_AUTOMATIC:I = 0x0

.field public static final UNITS_METRIC:I = 0x1

.field public static final UNITS_NONMETRIC:I = 0x2

.field private static app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

.field private static logger:Ljava/util/logging/Logger;

.field public static setScrollbarFadingEnabledMethod:Ljava/lang/reflect/Method;


# instance fields
.field private alphaEngine:Lcom/wolfram/alpha/WAEngine;

.field private appid:Ljava/lang/String;

.field public assumptions_text:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/wolfram/alpha/WAQuery;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private asyncTimeout:F

.field private date_location_notification_shown:Ljava/util/Date;

.field private debugQuery:Lcom/wolfram/alpha/WAQuery;

.field private debugQueryResult:Lcom/wolfram/alpha/WAQueryResult;

.field private downloadDir:Ljava/io/File;

.field private drawRectImagemap:Z

.field private favorites:Lcom/wolfram/android/alpha/Favorites;

.field private fontsize:I

.field private history:Lcom/wolfram/android/alpha/History;

.field private imageFormat:Ljava/lang/String;

.field private instantmath_view:Landroid/widget/TextView;

.field private isComputationTimedOutResultsAvailable:Z

.field private isFirstTime:Z

.field private isHoneycombDeviceandAbove:Z

.field private isImageAcquisition:Z

.field private isLargeDevice:Z

.field private isLargeHoneycombDevice:Z

.field private isLicenseChecked:Z

.field private isOnline_before:Z

.field private isPerformingQuery:Z

.field private isPodStateChange:Z

.field private isRelatedQueriesView:Z

.field locationManager:Lcom/wolfram/android/alpha/WolframAlphaLocationManager;

.field private monthsHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wolfram/android/alpha/HistoryRecord;",
            ">;"
        }
    .end annotation
.end field

.field private oldQueryResult:Lcom/wolfram/alpha/WAQueryResult;

.field prefsListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wolfram/android/alpha/PreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private prevUseCustomKeyboard:Z

.field private query:Lcom/wolfram/alpha/WAQuery;

.field private queryResult:Lcom/wolfram/alpha/WAQueryResult;

.field private queryTask:Lcom/wolfram/android/alpha/QueryTask;

.field private query_text_view_top_gap:Landroid/view/View;

.field private scanTimeout:F

.field private server:Ljava/lang/String;

.field private serverMachineName:Ljava/lang/String;

.field private stateDir:Ljava/io/File;

.field public subpodView_scaleFactor:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private subpod_imageview_resize:Lcom/wolfram/android/alpha/view/SubpodView;

.field private units:I

.field private useCustomKeyboard:Z

.field private useLocation:Z

.field private useRecalc:Z

.field private userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 134
    const-string v0, "com.wolfram.android.alpha.WolframAlphaApplication"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->logger:Ljava/util/logging/Logger;

    .line 180
    const/4 v0, 0x0

    sput-object v0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setScrollbarFadingEnabledMethod:Ljava/lang/reflect/Method;

    .line 186
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "setScrollbarFadingEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setScrollbarFadingEnabledMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 193
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 64
    const-string v0, "3H4296-5YPAGQUJK7"

    iput-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->appid:Ljava/lang/String;

    .line 78
    iput-boolean v1, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isPerformingQuery:Z

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpodView_scaleFactor:Ljava/util/HashMap;

    .line 114
    iput-boolean v2, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isOnline_before:Z

    .line 116
    iput-boolean v1, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isComputationTimedOutResultsAvailable:Z

    .line 117
    iput-boolean v1, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isLicenseChecked:Z

    .line 118
    iput-boolean v1, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isImageAcquisition:Z

    .line 119
    iput-boolean v1, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isRelatedQueriesView:Z

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->date_location_notification_shown:Ljava/util/Date;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->assumptions_text:Ljava/util/HashMap;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->prefsListeners:Ljava/util/List;

    .line 137
    iput-boolean v2, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isFirstTime:Z

    .line 194
    sput-object p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    .line 196
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->getInstance()Lcom/wolfram/android/alpha/WolframAlphaLocationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->locationManager:Lcom/wolfram/android/alpha/WolframAlphaLocationManager;

    .line 197
    return-void
.end method

.method public static apiParamsFromAppURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "appURL"

    .prologue
    .line 827
    const/16 v1, 0x3f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 828
    .local v0, questionMarkPos:I
    if-ltz v0, :cond_0

    .line 829
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 831
    :cond_0
    const-string v1, "&"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 832
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 834
    :cond_1
    const-string v1, "&i="

    const-string v2, "&input="

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "&a="

    const-string v3, "&assumption="

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static createBitmapFromFile(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "imageFile"

    .prologue
    .line 773
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 775
    .local v0, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 776
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;
    .locals 1

    .prologue
    .line 201
    sget-object v0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    return-object v0
.end method

.method public static queryToAppURI(Lcom/wolfram/alpha/WAQuery;)Ljava/lang/String;
    .locals 7
    .parameter "query"

    .prologue
    .line 811
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "wolframalpha:///?i="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 813
    .local v4, url:Ljava/lang/StringBuilder;
    :try_start_0
    invoke-interface {p0}, Lcom/wolfram/alpha/WAQuery;->getInput()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 815
    :goto_0
    invoke-interface {p0}, Lcom/wolfram/alpha/WAQuery;->getAssumptions()[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 816
    .local v0, a:Ljava/lang/String;
    const-string v5, "&a="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 820
    .end local v0           #a:Ljava/lang/String;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 814
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :catch_0
    move-exception v5

    goto :goto_0
.end method


# virtual methods
.method public addPreferenceChangeListener(Lcom/wolfram/android/alpha/PreferenceChangeListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 716
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->prefsListeners:Ljava/util/List;

    monitor-enter v0

    .line 717
    :try_start_0
    iget-object v1, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->prefsListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 718
    monitor-exit v0

    .line 719
    return-void

    .line 718
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public convertShortServerToFullName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "shortName"

    .prologue
    .line 787
    :try_start_0
    new-instance v3, Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/wolfram/android/alpha/Resources_modified;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    const/high16 v4, 0x7f09

    invoke-virtual {v3, v4}, Lcom/wolfram/android/alpha/Resources_modified;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 788
    .local v2, shortNames:[Ljava/lang/String;
    new-instance v3, Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/wolfram/android/alpha/Resources_modified;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    const v4, 0x7f090001

    invoke-virtual {v3, v4}, Lcom/wolfram/android/alpha/Resources_modified;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 789
    .local v1, longNames:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 790
    aget-object v3, v2, v0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 791
    aget-object v3, v1, v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 799
    .end local v0           #i:I
    .end local v1           #longNames:[Ljava/lang/String;
    .end local v2           #shortNames:[Ljava/lang/String;
    :goto_1
    return-object v3

    .line 789
    .restart local v0       #i:I
    .restart local v1       #longNames:[Ljava/lang/String;
    .restart local v2       #shortNames:[Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 793
    .end local v0           #i:I
    .end local v1           #longNames:[Ljava/lang/String;
    .end local v2           #shortNames:[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 796
    :cond_1
    const-string v3, "Wolfram|Alpha"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Short server name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cannot be converted to machine name; defaulting to production server"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    const-string v3, "api.wolframalpha.com"

    goto :goto_1
.end method

.method public declared-synchronized createWAEngine()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/high16 v8, 0x3f80

    const/4 v7, 0x1

    .line 483
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->server:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->convertShortServerToFullName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->serverMachineName:Ljava/lang/String;

    .line 484
    new-instance v0, Lcom/wolfram/alpha/WAEngine;

    iget-object v1, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->appid:Ljava/lang/String;

    iget-object v2, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->serverMachineName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getServerPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->downloadDir:Ljava/io/File;

    invoke-direct/range {v0 .. v5}, Lcom/wolfram/alpha/WAEngine;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wolfram/alpha/net/HttpProvider;Ljava/io/File;)V

    iput-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->alphaEngine:Lcom/wolfram/alpha/WAEngine;

    .line 485
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->alphaEngine:Lcom/wolfram/alpha/WAEngine;

    const-string v1, "png"

    iget-object v2, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->imageFormat:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "png"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/wolfram/alpha/WAEngine;->addFormat(Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->alphaEngine:Lcom/wolfram/alpha/WAEngine;

    const-string v1, "plaintext"

    invoke-virtual {v0, v1}, Lcom/wolfram/alpha/WAEngine;->addFormat(Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->alphaEngine:Lcom/wolfram/alpha/WAEngine;

    const-string v1, "imagemap"

    invoke-virtual {v0, v1}, Lcom/wolfram/alpha/WAEngine;->addFormat(Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->alphaEngine:Lcom/wolfram/alpha/WAEngine;

    const-string v1, "minput"

    invoke-virtual {v0, v1}, Lcom/wolfram/alpha/WAEngine;->addFormat(Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->alphaEngine:Lcom/wolfram/alpha/WAEngine;

    const-string v1, "sound"

    invoke-virtual {v0, v1}, Lcom/wolfram/alpha/WAEngine;->addFormat(Ljava/lang/String;)V

    .line 490
    iget v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->units:I

    if-ne v0, v7, :cond_1

    .line 491
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->alphaEngine:Lcom/wolfram/alpha/WAEngine;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/wolfram/alpha/WAEngine;->setMetric(Ljava/lang/Boolean;)V

    .line 497
    :goto_1
    iget v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->fontsize:I

    packed-switch v0, :pswitch_data_0

    .line 517
    :goto_2
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->alphaEngine:Lcom/wolfram/alpha/WAEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wolfram/alpha/WAEngine;->setRelatedLinks(Z)V

    .line 518
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->alphaEngine:Lcom/wolfram/alpha/WAEngine;

    iget v1, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->scanTimeout:F

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/wolfram/alpha/WAEngine;->setScanTimeout(D)V

    .line 519
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->alphaEngine:Lcom/wolfram/alpha/WAEngine;

    const-string v1, "image"

    invoke-virtual {v0, v1}, Lcom/wolfram/alpha/WAEngine;->setBanners(Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->alphaEngine:Lcom/wolfram/alpha/WAEngine;

    invoke-virtual {v0}, Lcom/wolfram/alpha/WAEngine;->getExtraParams()Ljava/util/List;

    move-result-object v6

    .line 522
    .local v6, extraParams:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 523
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "device"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Android"

    aput-object v2, v0, v1

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->alphaEngine:Lcom/wolfram/alpha/WAEngine;

    invoke-virtual {v0}, Lcom/wolfram/alpha/WAEngine;->getHttpProvider()Lcom/wolfram/alpha/net/HttpProvider;

    move-result-object v0

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/wolfram/alpha/net/HttpProvider;->setUserAgent(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    monitor-exit p0

    return-void

    .line 485
    .end local v6           #extraParams:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    const-string v1, "image"

    goto :goto_0

    .line 492
    :cond_1
    iget v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->units:I

    if-ne v0, v9, :cond_2

    .line 493
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->alphaEngine:Lcom/wolfram/alpha/WAEngine;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/wolfram/alpha/WAEngine;->setMetric(Ljava/lang/Boolean;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 483
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 495
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->alphaEngine:Lcom/wolfram/alpha/WAEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wolfram/alpha/WAEngine;->setMetric(Ljava/lang/Boolean;)V

    goto :goto_1

    .line 499
    :pswitch_0
    sget-object v0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getScreenDensity()F

    move-result v0

    cmpl-float v0, v0, v8

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->alphaEngine:Lcom/wolfram/alpha/WAEngine;

    const-wide/high16 v1, 0x3ff4

    sget-object v3, Lcom/wolfram/android/alpha/WolframAlphaApplication;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getScreenDensity()F

    move-result v3

    float-to-double v3, v3

    mul-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/wolfram/alpha/WAEngine;->setMagnification(D)V

    goto :goto_2

    .line 500
    :cond_3
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->alphaEngine:Lcom/wolfram/alpha/WAEngine;

    sget-object v1, Lcom/wolfram/android/alpha/WolframAlphaApplication;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v1}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getScreenDensity()F

    move-result v1

    mul-float/2addr v1, v8

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/wolfram/alpha/WAEngine;->setMagnification(D)V

    goto :goto_2

    .line 503
    :pswitch_1
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->alphaEngine:Lcom/wolfram/alpha/WAEngine;

    const-wide/high16 v1, 0x3ff8

    sget-object v3, Lcom/wolfram/android/alpha/WolframAlphaApplication;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getScreenDensity()F

    move-result v3

    float-to-double v3, v3

    mul-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/wolfram/alpha/WAEngine;->setMagnification(D)V

    goto/16 :goto_2

    .line 505
    :pswitch_2
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->alphaEngine:Lcom/wolfram/alpha/WAEngine;

    const/high16 v1, 0x4000

    sget-object v2, Lcom/wolfram/android/alpha/WolframAlphaApplication;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v2}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getScreenDensity()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/wolfram/alpha/WAEngine;->setMagnification(D)V

    goto/16 :goto_2

    .line 507
    :pswitch_3
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->alphaEngine:Lcom/wolfram/alpha/WAEngine;

    const-wide/high16 v1, 0x4004

    sget-object v3, Lcom/wolfram/android/alpha/WolframAlphaApplication;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getScreenDensity()F

    move-result v3

    float-to-double v3, v3

    mul-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/wolfram/alpha/WAEngine;->setMagnification(D)V

    goto/16 :goto_2

    .line 509
    :pswitch_4
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->alphaEngine:Lcom/wolfram/alpha/WAEngine;

    const/high16 v1, 0x4040

    sget-object v2, Lcom/wolfram/android/alpha/WolframAlphaApplication;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v2}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getScreenDensity()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/wolfram/alpha/WAEngine;->setMagnification(D)V

    goto/16 :goto_2

    .line 511
    :pswitch_5
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->alphaEngine:Lcom/wolfram/alpha/WAEngine;

    const-wide/high16 v1, 0x400c

    sget-object v3, Lcom/wolfram/android/alpha/WolframAlphaApplication;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v3}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getScreenDensity()F

    move-result v3

    float-to-double v3, v3

    mul-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/wolfram/alpha/WAEngine;->setMagnification(D)V

    goto/16 :goto_2

    .line 513
    :pswitch_6
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->alphaEngine:Lcom/wolfram/alpha/WAEngine;

    const/high16 v1, 0x4080

    sget-object v2, Lcom/wolfram/android/alpha/WolframAlphaApplication;->app:Lcom/wolfram/android/alpha/WolframAlphaApplication;

    invoke-virtual {v2}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getScreenDensity()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/wolfram/alpha/WAEngine;->setMagnification(D)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 497
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getAppid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->appid:Ljava/lang/String;

    return-object v0
.end method

.method public getAsync()F
    .locals 1

    .prologue
    .line 241
    iget v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->asyncTimeout:F

    return v0
.end method

.method public getComputationTimedOutResultsAvailable()Z
    .locals 1

    .prologue
    .line 424
    iget-boolean v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isComputationTimedOutResultsAvailable:Z

    return v0
.end method

.method public getDate_location_notification_shown()Ljava/util/Date;
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->date_location_notification_shown:Ljava/util/Date;

    return-object v0
.end method

.method public declared-synchronized getDebugQuery()Lcom/wolfram/alpha/WAQuery;
    .locals 1

    .prologue
    .line 343
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->debugQuery:Lcom/wolfram/alpha/WAQuery;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDebugQueryResult()Lcom/wolfram/alpha/WAQueryResult;
    .locals 1

    .prologue
    .line 357
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->debugQueryResult:Lcom/wolfram/alpha/WAQueryResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDownloadDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->downloadDir:Ljava/io/File;

    return-object v0
.end method

.method public getFavorites()Lcom/wolfram/android/alpha/Favorites;
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->favorites:Lcom/wolfram/android/alpha/Favorites;

    return-object v0
.end method

.method public getFontsize()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->fontsize:I

    return v0
.end method

.method public getHistory()Lcom/wolfram/android/alpha/History;
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->history:Lcom/wolfram/android/alpha/History;

    return-object v0
.end method

.method public getImageAcquisition()Z
    .locals 1

    .prologue
    .line 440
    iget-boolean v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isImageAcquisition:Z

    return v0
.end method

.method public getImageFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->imageFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getInstantmath_view()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->instantmath_view:Landroid/widget/TextView;

    return-object v0
.end method

.method public getLicenseChecked()Z
    .locals 1

    .prologue
    .line 598
    iget-boolean v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isLicenseChecked:Z

    return v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->locationManager:Lcom/wolfram/android/alpha/WolframAlphaLocationManager;

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->getLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getOldQueryResult()Lcom/wolfram/alpha/WAQueryResult;
    .locals 1

    .prologue
    .line 365
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->oldQueryResult:Lcom/wolfram/alpha/WAQueryResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPerformingQuery()Z
    .locals 1

    .prologue
    .line 430
    iget-boolean v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isPerformingQuery:Z

    return v0
.end method

.method public declared-synchronized getQuery()Lcom/wolfram/alpha/WAQuery;
    .locals 1

    .prologue
    .line 340
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->query:Lcom/wolfram/alpha/WAQuery;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getQueryResult()Lcom/wolfram/alpha/WAQueryResult;
    .locals 1

    .prologue
    .line 354
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->queryResult:Lcom/wolfram/alpha/WAQueryResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getQueryTask()Lcom/wolfram/android/alpha/QueryTask;
    .locals 1

    .prologue
    .line 373
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->queryTask:Lcom/wolfram/android/alpha/QueryTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getQuery_text_view_top_gap()Landroid/view/View;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->query_text_view_top_gap:Landroid/view/View;

    return-object v0
.end method

.method public getRelatedQueriesView()Z
    .locals 1

    .prologue
    .line 449
    iget-boolean v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isRelatedQueriesView:Z

    return v0
.end method

.method public getScanTimeout()F
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->scanTimeout:F

    return v0
.end method

.method public getScreenDensity()F
    .locals 3

    .prologue
    .line 764
    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 765
    .local v0, display:Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 766
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 767
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    return v2
.end method

.method public getScreenDimensions()[I
    .locals 5

    .prologue
    .line 755
    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 756
    .local v0, display:Landroid/view/Display;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 757
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 758
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    aput v4, v2, v3

    const/4 v3, 0x1

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    aput v4, v2, v3

    return-object v2
.end method

.method public getServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->server:Ljava/lang/String;

    return-object v0
.end method

.method public getServerMachineName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->serverMachineName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->serverMachineName:Ljava/lang/String;

    const-string v1, "api"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->serverMachineName:Ljava/lang/String;

    const-string v1, "140.177.205.210"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "/v2/query.jsp"

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "/api/v2/query.jsp"

    goto :goto_0
.end method

.method public getStateDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->stateDir:Ljava/io/File;

    return-object v0
.end method

.method public getSubpodView_scaleFactor()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpodView_scaleFactor:Ljava/util/HashMap;

    return-object v0
.end method

.method public getUnits()I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->units:I

    return v0
.end method

.method public getUpdateType()I
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->locationManager:Lcom/wolfram/android/alpha/WolframAlphaLocationManager;

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->getUpdateType()I

    move-result v0

    return v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 5

    .prologue
    .line 468
    iget-object v3, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->userAgent:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 470
    :try_start_0
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 471
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x40

    invoke-static {v2, v3, v4}, LjQaa7YP/GLtqH7G;->Osaa35GMvWmleJ6PA(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 472
    .local v1, info:Landroid/content/pm/PackageInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wolfram Android App/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->userAgent:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->userAgent:Ljava/lang/String;

    return-object v3

    .line 473
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 474
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "Wolfram Android App"

    iput-object v3, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->userAgent:Ljava/lang/String;

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 313
    new-instance v0, Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/wolfram/android/alpha/Resources_modified;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    const v1, 0x7f0c0091

    invoke-virtual {v0, v1}, Lcom/wolfram/android/alpha/Resources_modified;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getWAEngine()Lcom/wolfram/alpha/WAEngine;
    .locals 1

    .prologue
    .line 309
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->alphaEngine:Lcom/wolfram/alpha/WAEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isDrawRectImagemap()Z
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->drawRectImagemap:Z

    return v0
.end method

.method public isFirstTime()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isFirstTime:Z

    return v0
.end method

.method public isHoneycombDeviceandAbove()Z
    .locals 1

    .prologue
    .line 852
    iget-boolean v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isHoneycombDeviceandAbove:Z

    return v0
.end method

.method public isKindleFire()Z
    .locals 2

    .prologue
    .line 733
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Kindle Fire"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "D01E"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Amazon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 735
    const/4 v0, 0x1

    .line 739
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLargeDevice()Z
    .locals 1

    .prologue
    .line 848
    iget-boolean v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isLargeDevice:Z

    return v0
.end method

.method public isLargeHoneycombDevice()Z
    .locals 1

    .prologue
    .line 844
    iget-boolean v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isLargeHoneycombDevice:Z

    return v0
.end method

.method public isLocationEnabled()Z
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->locationManager:Lcom/wolfram/android/alpha/WolframAlphaLocationManager;

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->isLocationEnabled()Z

    move-result v0

    return v0
.end method

.method public isOnline()Z
    .locals 3

    .prologue
    .line 745
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 746
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 747
    .local v1, netInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 748
    const/4 v2, 0x1

    .line 750
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isOnline_before()Z
    .locals 1

    .prologue
    .line 628
    iget-boolean v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isOnline_before:Z

    return v0
.end method

.method public isPodStateChange()Z
    .locals 1

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isPodStateChange:Z

    return v0
.end method

.method public isRecalculate()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->useRecalc:Z

    return v0
.end method

.method public isUseCustomKeyboard()Z
    .locals 1

    .prologue
    .line 706
    iget-boolean v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->useCustomKeyboard:Z

    return v0
.end method

.method public isUseCustomKeyboardChanged()Z
    .locals 2

    .prologue
    .line 710
    iget-boolean v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->prevUseCustomKeyboard:Z

    iget-boolean v1, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->useCustomKeyboard:Z

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized mergeBannerStateResult(Lcom/wolfram/alpha/WAQueryResult;)V
    .locals 1
    .parameter "bannerstateQueryResult"

    .prologue
    .line 397
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    invoke-interface {v0, p1}, Lcom/wolfram/alpha/WAQueryResult;->mergeBannerStateResult(Lcom/wolfram/alpha/WAQueryResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    monitor-exit p0

    return-void

    .line 397
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized mergeGeneralizationResult(Lcom/wolfram/alpha/WAQueryResult;)V
    .locals 1
    .parameter "generalizationQueryResult"

    .prologue
    .line 407
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    invoke-interface {v0, p1}, Lcom/wolfram/alpha/WAQueryResult;->mergeGeneralizationResult(Lcom/wolfram/alpha/WAQueryResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    :cond_0
    monitor-exit p0

    return-void

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized mergePodStateResult(Lcom/wolfram/alpha/WAQueryResult;)V
    .locals 1
    .parameter "podstateQueryResult"

    .prologue
    .line 393
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    invoke-interface {v0, p1}, Lcom/wolfram/alpha/WAQueryResult;->mergePodstateResult(Lcom/wolfram/alpha/WAQueryResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    monitor-exit p0

    return-void

    .line 393
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized mergeRecalculateResult(Lcom/wolfram/alpha/WAQueryResult;)V
    .locals 1
    .parameter "recalcQueryResult"

    .prologue
    .line 401
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    invoke-interface {v0, p1}, Lcom/wolfram/alpha/WAQueryResult;->mergeRecalculateResult(Lcom/wolfram/alpha/WAQueryResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    :cond_0
    monitor-exit p0

    return-void

    .line 401
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized mergeRelatedQueriesResult(Lcom/wolfram/alpha/WAQueryResult;)V
    .locals 1
    .parameter "relatedQueriesResult"

    .prologue
    .line 413
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    invoke-interface {v0, p1}, Lcom/wolfram/alpha/WAQueryResult;->mergeRelatedQueriesResult(Lcom/wolfram/alpha/WAQueryResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    :cond_0
    monitor-exit p0

    return-void

    .line 413
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public notifyPreferenceChangeListeners()V
    .locals 4

    .prologue
    .line 722
    iget-object v2, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->prefsListeners:Ljava/util/List;

    monitor-enter v2

    .line 723
    :try_start_0
    iget-object v3, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->prefsListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wolfram/android/alpha/PreferenceChangeListener;

    .line 724
    .local v1, listener:Lcom/wolfram/android/alpha/PreferenceChangeListener;
    invoke-interface {v1}, Lcom/wolfram/android/alpha/PreferenceChangeListener;->preferenceChanged()V

    goto :goto_0

    .line 726
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/wolfram/android/alpha/PreferenceChangeListener;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 727
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 592
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 593
    return-void
.end method

.method public onCreate()V
    .locals 11

    .prologue
    const/16 v10, 0xb

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 533
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 535
    new-instance v4, Lcom/wolfram/android/alpha/Resources_modified;

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/wolfram/android/alpha/Resources_modified;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    invoke-virtual {v4}, Lcom/wolfram/android/alpha/Resources_modified;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x3

    if-lt v4, v5, :cond_0

    move v4, v9

    :goto_0
    iput-boolean v4, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isLargeDevice:Z

    .line 536
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v10, :cond_1

    iget-boolean v4, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isLargeDevice:Z

    if-eqz v4, :cond_1

    move v4, v9

    :goto_1
    iput-boolean v4, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isLargeHoneycombDevice:Z

    .line 537
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v10, :cond_2

    move v4, v9

    :goto_2
    iput-boolean v4, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isHoneycombDeviceandAbove:Z

    .line 540
    const-string v4, "downloads"

    invoke-virtual {p0, v4, v8}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->downloadDir:Ljava/io/File;

    .line 541
    const-string v4, "state"

    invoke-virtual {p0, v4, v8}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->stateDir:Ljava/io/File;

    .line 544
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 545
    .local v3, settings:Landroid/content/SharedPreferences;
    const-string v4, "location"

    invoke-interface {v3, v4, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->useLocation:Z

    .line 546
    iget-object v4, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->locationManager:Lcom/wolfram/android/alpha/WolframAlphaLocationManager;

    iget-boolean v5, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->useLocation:Z

    invoke-virtual {v4, v5}, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->setLocationEnabled(Z)V

    .line 547
    const-string v4, "location_interval"

    iget-object v5, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->locationManager:Lcom/wolfram/android/alpha/WolframAlphaLocationManager;

    invoke-virtual {v5}, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->getDefaultLocationInterval()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 548
    .local v2, locationInterval:Ljava/lang/String;
    const-string v4, "keyboard"

    invoke-interface {v3, v4, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->useCustomKeyboard:Z

    .line 549
    iget-boolean v4, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->useCustomKeyboard:Z

    iput-boolean v4, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->prevUseCustomKeyboard:Z

    .line 551
    const-string v4, "server"

    const-string v5, "production"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->server:Ljava/lang/String;

    .line 552
    const-string v4, "recalc"

    invoke-interface {v3, v4, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->useRecalc:Z

    .line 553
    const-string v4, "drawrect_imagemap"

    invoke-interface {v3, v4, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->drawRectImagemap:Z

    .line 554
    const-string v4, "imageformat"

    const-string v5, "gif"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->imageFormat:Ljava/lang/String;

    .line 560
    :try_start_0
    const-string v4, "scantimeout"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 564
    .local v1, f:Ljava/lang/Float;
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->scanTimeout:F

    .line 566
    :try_start_1
    const-string v4, "asynctimeout"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 570
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->asyncTimeout:F

    .line 572
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->createWAEngine()V

    .line 574
    new-instance v4, Lcom/wolfram/android/alpha/History;

    invoke-direct {v4, p0}, Lcom/wolfram/android/alpha/History;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->history:Lcom/wolfram/android/alpha/History;

    .line 575
    new-instance v4, Lcom/wolfram/android/alpha/Favorites;

    invoke-direct {v4, p0}, Lcom/wolfram/android/alpha/Favorites;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->favorites:Lcom/wolfram/android/alpha/Favorites;

    .line 577
    const-string v4, "Wolfram|Alpha"

    const-string v5, "App startup, reading prefs:"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    const-string v4, "Wolfram|Alpha"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "     server: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->server:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const-string v4, "Wolfram|Alpha"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "     async:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->scanTimeout:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const-string v4, "Wolfram|Alpha"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "     async:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->asyncTimeout:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v5, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->locationManager:Lcom/wolfram/android/alpha/WolframAlphaLocationManager;

    const-string v4, "location"

    invoke-virtual {p0, v4}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/LocationManager;

    invoke-virtual {v5, v4}, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->initialize(Landroid/location/LocationManager;)V

    .line 583
    iget-object v4, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->locationManager:Lcom/wolfram/android/alpha/WolframAlphaLocationManager;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->setUpdateType(I)V

    .line 584
    return-void

    .end local v1           #f:Ljava/lang/Float;
    .end local v2           #locationInterval:Ljava/lang/String;
    .end local v3           #settings:Landroid/content/SharedPreferences;
    :cond_0
    move v4, v8

    .line 535
    goto/16 :goto_0

    :cond_1
    move v4, v8

    .line 536
    goto/16 :goto_1

    :cond_2
    move v4, v8

    .line 537
    goto/16 :goto_2

    .line 561
    .restart local v2       #locationInterval:Ljava/lang/String;
    .restart local v3       #settings:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 562
    .local v0, e:Ljava/lang/NumberFormatException;
    const/high16 v4, 0x3f00

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .restart local v1       #f:Ljava/lang/Float;
    goto/16 :goto_3

    .line 567
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 568
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    const/high16 v4, 0x3e80

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto/16 :goto_4
.end method

.method public pauseLocationUpdates()V
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->locationManager:Lcom/wolfram/android/alpha/WolframAlphaLocationManager;

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->pauseLocationUpdates()V

    .line 684
    return-void
.end method

.method public resumeLocationUpdates()V
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->locationManager:Lcom/wolfram/android/alpha/WolframAlphaLocationManager;

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->resumeLocationUpdates()V

    .line 688
    return-void
.end method

.method public retrieveMonthsHistory()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wolfram/android/alpha/HistoryRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 652
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->monthsHistory:Ljava/util/List;

    .line 653
    .local v0, result:Ljava/util/List;,"Ljava/util/List<Lcom/wolfram/android/alpha/HistoryRecord;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->monthsHistory:Ljava/util/List;

    .line 654
    return-object v0
.end method

.method public setAppid(Ljava/lang/String;)V
    .locals 0
    .parameter "appid"

    .prologue
    .line 232
    iput-object p1, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->appid:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public setAsync(F)V
    .locals 0
    .parameter "asyncTimeout"

    .prologue
    .line 245
    iput p1, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->asyncTimeout:F

    .line 246
    return-void
.end method

.method public setComputationTimedOutResultsAvailable(Z)V
    .locals 0
    .parameter "isComputationTimedOutResultsAvailable"

    .prologue
    .line 419
    iput-boolean p1, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isComputationTimedOutResultsAvailable:Z

    .line 421
    return-void
.end method

.method public setDate_location_notification_shown(Ljava/util/Date;)V
    .locals 0
    .parameter "date_location_notification_shown"

    .prologue
    .line 614
    iput-object p1, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->date_location_notification_shown:Ljava/util/Date;

    .line 615
    return-void
.end method

.method public declared-synchronized setDebugQuery(Lcom/wolfram/alpha/WAQuery;)V
    .locals 1
    .parameter "query"

    .prologue
    .line 337
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->debugQuery:Lcom/wolfram/alpha/WAQuery;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    monitor-exit p0

    return-void

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDebugQueryResult(Lcom/wolfram/alpha/WAQueryResult;)V
    .locals 1
    .parameter "queryResult"

    .prologue
    .line 351
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->debugQueryResult:Lcom/wolfram/alpha/WAQueryResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    monitor-exit p0

    return-void

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDrawRectImagemap(Z)V
    .locals 0
    .parameter "drawRectImagemap"

    .prologue
    .line 262
    iput-boolean p1, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->drawRectImagemap:Z

    .line 263
    return-void
.end method

.method public setFirstTime(Z)V
    .locals 0
    .parameter "isFirstTime"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isFirstTime:Z

    .line 146
    return-void
.end method

.method public setFontsize(I)V
    .locals 2
    .parameter "fontsize"

    .prologue
    .line 302
    iget v1, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->fontsize:I

    if-eq p1, v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 303
    .local v0, needsNewEngine:Z
    :goto_0
    iput p1, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->fontsize:I

    .line 304
    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->createWAEngine()V

    .line 306
    :cond_0
    return-void

    .line 302
    .end local v0           #needsNewEngine:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public setImageAcquisition(Z)V
    .locals 0
    .parameter "isImageAcquistion"

    .prologue
    .line 445
    iput-boolean p1, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isImageAcquisition:Z

    .line 446
    return-void
.end method

.method public setImageFormat(Ljava/lang/String;)V
    .locals 2
    .parameter "fmt"

    .prologue
    .line 282
    iget-object v1, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->imageFormat:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 283
    .local v0, needsNewEngine:Z
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->imageFormat:Ljava/lang/String;

    .line 284
    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->createWAEngine()V

    .line 286
    :cond_0
    return-void

    .line 282
    .end local v0           #needsNewEngine:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public setInstantmath_view(Landroid/widget/TextView;)V
    .locals 0
    .parameter "instantmath_view"

    .prologue
    .line 324
    iput-object p1, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->instantmath_view:Landroid/widget/TextView;

    .line 325
    return-void
.end method

.method public setLicenseChecked(Z)V
    .locals 0
    .parameter "isLicenseChecked"

    .prologue
    .line 603
    iput-boolean p1, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isLicenseChecked:Z

    .line 604
    return-void
.end method

.method public setLocationEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 675
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->locationManager:Lcom/wolfram/android/alpha/WolframAlphaLocationManager;

    invoke-virtual {v0, p1}, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->setLocationEnabled(Z)V

    .line 676
    return-void
.end method

.method public declared-synchronized setOldQueryResult(Lcom/wolfram/alpha/WAQueryResult;)V
    .locals 1
    .parameter "queryResult"

    .prologue
    .line 362
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->oldQueryResult:Lcom/wolfram/alpha/WAQueryResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    monitor-exit p0

    return-void

    .line 362
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOnline_before(Z)V
    .locals 0
    .parameter "isOnline_before"

    .prologue
    .line 633
    iput-boolean p1, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isOnline_before:Z

    .line 634
    return-void
.end method

.method public setPerformingQuery(Z)V
    .locals 0
    .parameter "isPerformingQuery"

    .prologue
    .line 435
    iput-boolean p1, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isPerformingQuery:Z

    .line 436
    return-void
.end method

.method public setPodStateChange(Z)V
    .locals 0
    .parameter "isPodStateChange"

    .prologue
    .line 386
    iput-boolean p1, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isPodStateChange:Z

    .line 387
    return-void
.end method

.method public declared-synchronized setQuery(Lcom/wolfram/alpha/WAQuery;)V
    .locals 1
    .parameter "query"

    .prologue
    .line 333
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->query:Lcom/wolfram/alpha/WAQuery;

    .line 334
    iput-object p1, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->debugQuery:Lcom/wolfram/alpha/WAQuery;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    monitor-exit p0

    return-void

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setQueryResult(Lcom/wolfram/alpha/WAQueryResult;)V
    .locals 1
    .parameter "queryResult"

    .prologue
    .line 347
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->queryResult:Lcom/wolfram/alpha/WAQueryResult;

    .line 348
    iput-object p1, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->debugQueryResult:Lcom/wolfram/alpha/WAQueryResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    monitor-exit p0

    return-void

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setQueryTask(Lcom/wolfram/android/alpha/QueryTask;)V
    .locals 1
    .parameter "queryTask"

    .prologue
    .line 370
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->queryTask:Lcom/wolfram/android/alpha/QueryTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    monitor-exit p0

    return-void

    .line 370
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setQuery_text_view_top_gap(Landroid/view/View;)V
    .locals 0
    .parameter "query_text_view_top_gap"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->query_text_view_top_gap:Landroid/view/View;

    .line 97
    return-void
.end method

.method public setRecalculate(Z)V
    .locals 0
    .parameter "useRecalc"

    .prologue
    .line 253
    iput-boolean p1, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->useRecalc:Z

    .line 254
    return-void
.end method

.method public setRelatedQueriesView(Z)V
    .locals 0
    .parameter "isRelatedQueriesView"

    .prologue
    .line 454
    iput-boolean p1, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isRelatedQueriesView:Z

    .line 455
    return-void
.end method

.method public setScanTimeout(F)V
    .locals 2
    .parameter "scanTimeout"

    .prologue
    .line 267
    iget v1, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->scanTimeout:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 268
    .local v0, needsNewEngine:Z
    :goto_0
    iput p1, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->scanTimeout:F

    .line 269
    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->createWAEngine()V

    .line 271
    :cond_0
    return-void

    .line 267
    .end local v0           #needsNewEngine:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public setServer(Ljava/lang/String;)V
    .locals 2
    .parameter "server"

    .prologue
    .line 213
    iget-object v1, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->server:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 214
    .local v0, needsNewEngine:Z
    :goto_0
    iput-object p1, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->server:Ljava/lang/String;

    .line 215
    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->createWAEngine()V

    .line 217
    :cond_0
    return-void

    .line 213
    .end local v0           #needsNewEngine:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public setSubpodView_scaleFactor(Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, subpodView_scaleFactor:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Float;>;>;"
    iput-object p1, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpodView_scaleFactor:Ljava/util/HashMap;

    .line 112
    return-void
.end method

.method public setUnits(I)V
    .locals 2
    .parameter "units"

    .prologue
    .line 292
    iget v1, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->units:I

    if-eq p1, v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 293
    .local v0, needsNewEngine:Z
    :goto_0
    iput p1, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->units:I

    .line 294
    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->createWAEngine()V

    .line 296
    :cond_0
    return-void

    .line 292
    .end local v0           #needsNewEngine:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public setUpdateType(I)V
    .locals 1
    .parameter "updateType"

    .prologue
    .line 691
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->locationManager:Lcom/wolfram/android/alpha/WolframAlphaLocationManager;

    invoke-virtual {v0, p1}, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->setUpdateType(I)V

    .line 692
    return-void
.end method

.method public setUseCustomKeyboard(Z)V
    .locals 1
    .parameter "useKeyboard"

    .prologue
    .line 701
    iget-boolean v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->useCustomKeyboard:Z

    iput-boolean v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->prevUseCustomKeyboard:Z

    .line 702
    iput-boolean p1, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->useCustomKeyboard:Z

    .line 703
    return-void
.end method

.method public startLocationUpdates()V
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->locationManager:Lcom/wolfram/android/alpha/WolframAlphaLocationManager;

    invoke-virtual {v0}, Lcom/wolfram/android/alpha/WolframAlphaLocationManager;->startLocationUpdates()V

    .line 680
    return-void
.end method

.method public storeMonthsHistory(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wolfram/android/alpha/HistoryRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 647
    .local p1, monthsHistory:Ljava/util/List;,"Ljava/util/List<Lcom/wolfram/android/alpha/HistoryRecord;>;"
    iput-object p1, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->monthsHistory:Ljava/util/List;

    .line 648
    return-void
.end method

.method public subpod_imageview_resize()Lcom/wolfram/android/alpha/view/SubpodView;
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpod_imageview_resize:Lcom/wolfram/android/alpha/view/SubpodView;

    return-object v0
.end method

.method public subpod_imageview_resize(Lcom/wolfram/android/alpha/view/SubpodView;)V
    .locals 0
    .parameter "subpod_imageview_resize"

    .prologue
    .line 624
    iput-object p1, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->subpod_imageview_resize:Lcom/wolfram/android/alpha/view/SubpodView;

    .line 625
    return-void
.end method

.method public useDockedInputField()Z
    .locals 1

    .prologue
    .line 838
    iget-boolean v0, p0, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isLargeDevice:Z

    if-eqz v0, :cond_0

    .line 839
    const/4 v0, 0x1

    .line 840
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
