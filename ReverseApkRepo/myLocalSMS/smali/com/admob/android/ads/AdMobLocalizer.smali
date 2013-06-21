.class Lcom/admob/android/ads/AdMobLocalizer;
.super Ljava/lang/Object;
.source "AdMobLocalizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/admob/android/ads/AdMobLocalizer$1;,
        Lcom/admob/android/ads/AdMobLocalizer$InitLocalizerThread;
    }
.end annotation


# static fields
.field private static ADMOB_LOCALIZATION_CACHE_DIR:Ljava/lang/String;

.field private static ADMOB_LOCALIZATION_URL_STRING:Ljava/lang/String;

.field private static DEFAULT_LANGUAGE:Ljava/lang/String;

.field private static PROPS_FILE_SUFFIX:Ljava/lang/String;

.field private static singleton:Lcom/admob/android/ads/AdMobLocalizer;

.field private static staticContext:Landroid/content/Context;


# instance fields
.field private context:Landroid/content/Context;

.field private language:Ljava/lang/String;

.field private strings:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    sput-object v0, Lcom/admob/android/ads/AdMobLocalizer;->singleton:Lcom/admob/android/ads/AdMobLocalizer;

    .line 26
    sput-object v0, Lcom/admob/android/ads/AdMobLocalizer;->staticContext:Landroid/content/Context;

    .line 67
    const-string v0, "admob_cache"

    sput-object v0, Lcom/admob/android/ads/AdMobLocalizer;->ADMOB_LOCALIZATION_CACHE_DIR:Ljava/lang/String;

    .line 69
    const-string v0, "http://mm.admob.com/static/android/i18n/20090728"

    sput-object v0, Lcom/admob/android/ads/AdMobLocalizer;->ADMOB_LOCALIZATION_URL_STRING:Ljava/lang/String;

    .line 72
    const-string v0, "en"

    sput-object v0, Lcom/admob/android/ads/AdMobLocalizer;->DEFAULT_LANGUAGE:Ljava/lang/String;

    .line 73
    const-string v0, ".properties"

    sput-object v0, Lcom/admob/android/ads/AdMobLocalizer;->PROPS_FILE_SUFFIX:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/admob/android/ads/AdMobLocalizer;->context:Landroid/content/Context;

    .line 83
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 84
    .local v1, locale:Ljava/util/Locale;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/admob/android/ads/AdMobLocalizer;->language:Ljava/lang/String;

    .line 85
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, langCode:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/admob/android/ads/AdMobLocalizer;->setLanguage(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/admob/android/ads/AdMobLocalizer;->ADMOB_LOCALIZATION_URL_STRING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/admob/android/ads/AdMobLocalizer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/admob/android/ads/AdMobLocalizer;->language:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/admob/android/ads/AdMobLocalizer;->PROPS_FILE_SUFFIX:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/admob/android/ads/AdMobLocalizer;->ADMOB_LOCALIZATION_CACHE_DIR:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/admob/android/ads/AdMobLocalizer;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/admob/android/ads/AdMobLocalizer;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 33
    sget-object v0, Lcom/admob/android/ads/AdMobLocalizer;->staticContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 35
    sput-object p0, Lcom/admob/android/ads/AdMobLocalizer;->staticContext:Landroid/content/Context;

    .line 38
    :cond_0
    invoke-static {}, Lcom/admob/android/ads/AdMobLocalizer;->initSingleton()V

    .line 39
    return-void
.end method

.method private static initSingleton()V
    .locals 2

    .prologue
    .line 43
    sget-object v0, Lcom/admob/android/ads/AdMobLocalizer;->singleton:Lcom/admob/android/ads/AdMobLocalizer;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/admob/android/ads/AdMobLocalizer;

    sget-object v1, Lcom/admob/android/ads/AdMobLocalizer;->staticContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/admob/android/ads/AdMobLocalizer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/admob/android/ads/AdMobLocalizer;->singleton:Lcom/admob/android/ads/AdMobLocalizer;

    .line 47
    :cond_0
    return-void
.end method

.method private internalLocalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/admob/android/ads/AdMobLocalizer;->loadStrings()Z

    .line 157
    move-object v0, p1

    .line 158
    .local v0, localizedString:Ljava/lang/String;
    iget-object v1, p0, Lcom/admob/android/ads/AdMobLocalizer;->strings:Ljava/util/Properties;

    if-eqz v1, :cond_1

    .line 160
    iget-object v1, p0, Lcom/admob/android/ads/AdMobLocalizer;->strings:Ljava/util/Properties;

    invoke-virtual {v1, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    :cond_0
    move-object v0, p1

    .line 166
    :cond_1
    return-object v0
.end method

.method private loadStrings()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 121
    iget-object v6, p0, Lcom/admob/android/ads/AdMobLocalizer;->strings:Ljava/util/Properties;

    if-nez v6, :cond_1

    .line 126
    :try_start_0
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 129
    .local v4, temp:Ljava/util/Properties;
    iget-object v6, p0, Lcom/admob/android/ads/AdMobLocalizer;->context:Landroid/content/Context;

    sget-object v7, Lcom/admob/android/ads/AdMobLocalizer;->ADMOB_LOCALIZATION_CACHE_DIR:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 131
    .local v0, dir:Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string v6, "20090728"

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 132
    .local v5, versionedDir:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 134
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 137
    :cond_0
    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/admob/android/ads/AdMobLocalizer;->language:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/admob/android/ads/AdMobLocalizer;->PROPS_FILE_SUFFIX:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 138
    .local v3, propsFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 140
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 141
    .local v2, is:Ljava/io/InputStream;
    invoke-virtual {v4, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 142
    iput-object v4, p0, Lcom/admob/android/ads/AdMobLocalizer;->strings:Ljava/util/Properties;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v0           #dir:Ljava/io/File;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #propsFile:Ljava/io/File;
    .end local v4           #temp:Ljava/util/Properties;
    .end local v5           #versionedDir:Ljava/io/File;
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/admob/android/ads/AdMobLocalizer;->strings:Ljava/util/Properties;

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    :goto_1
    return v6

    .line 145
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 148
    .local v1, e:Ljava/io/IOException;
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/admob/android/ads/AdMobLocalizer;->strings:Ljava/util/Properties;

    goto :goto_0

    .end local v1           #e:Ljava/io/IOException;
    :cond_2
    move v6, v9

    .line 151
    goto :goto_1
.end method

.method public static localize(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 63
    sget-object v0, Lcom/admob/android/ads/AdMobLocalizer;->staticContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/admob/android/ads/AdMobLocalizer;->init(Landroid/content/Context;)V

    .line 64
    sget-object v0, Lcom/admob/android/ads/AdMobLocalizer;->singleton:Lcom/admob/android/ads/AdMobLocalizer;

    invoke-direct {v0, p0}, Lcom/admob/android/ads/AdMobLocalizer;->internalLocalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static singleton()Lcom/admob/android/ads/AdMobLocalizer;
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/admob/android/ads/AdMobLocalizer;->initSingleton()V

    .line 52
    sget-object v0, Lcom/admob/android/ads/AdMobLocalizer;->singleton:Lcom/admob/android/ads/AdMobLocalizer;

    return-object v0
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/admob/android/ads/AdMobLocalizer;->language:Ljava/lang/String;

    return-object v0
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 3
    .parameter "langCode"

    .prologue
    const/4 v2, 0x0

    .line 93
    iget-object v0, p0, Lcom/admob/android/ads/AdMobLocalizer;->language:Ljava/lang/String;

    if-eq p1, v0, :cond_2

    .line 96
    iput-object v2, p0, Lcom/admob/android/ads/AdMobLocalizer;->strings:Ljava/util/Properties;

    .line 97
    iput-object p1, p0, Lcom/admob/android/ads/AdMobLocalizer;->language:Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/admob/android/ads/AdMobLocalizer;->language:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admob/android/ads/AdMobLocalizer;->language:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    :cond_0
    sget-object v0, Lcom/admob/android/ads/AdMobLocalizer;->DEFAULT_LANGUAGE:Ljava/lang/String;

    iput-object v0, p0, Lcom/admob/android/ads/AdMobLocalizer;->language:Ljava/lang/String;

    .line 102
    :cond_1
    invoke-direct {p0}, Lcom/admob/android/ads/AdMobLocalizer;->loadStrings()Z

    move-result v0

    if-nez v0, :cond_2

    .line 106
    new-instance v0, Lcom/admob/android/ads/AdMobLocalizer$InitLocalizerThread;

    invoke-direct {v0, p0, v2}, Lcom/admob/android/ads/AdMobLocalizer$InitLocalizerThread;-><init>(Lcom/admob/android/ads/AdMobLocalizer;Lcom/admob/android/ads/AdMobLocalizer$1;)V

    invoke-virtual {v0}, Lcom/admob/android/ads/AdMobLocalizer$InitLocalizerThread;->start()V

    .line 109
    :cond_2
    return-void
.end method
