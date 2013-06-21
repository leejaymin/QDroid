.class public Lcom/bugsense/trace/BugSenseHandler;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bugsense/trace/BugSenseHandler$Processor;
    }
.end annotation


# static fields
.field private static extraData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static gContext:Landroid/content/Context;

.field private static sMinDelay:I

.field private static sSetupCalled:Z

.field private static sStackTraces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sTask:Lcom/bugsense/trace/ActivityAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bugsense/trace/ActivityAsyncTask",
            "<",
            "Lcom/bugsense/trace/BugSenseHandler$Processor;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sTimeout:I

.field private static sVerbose:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    sput-object v2, Lcom/bugsense/trace/BugSenseHandler;->sStackTraces:Ljava/util/ArrayList;

    sput-boolean v1, Lcom/bugsense/trace/BugSenseHandler;->sVerbose:Z

    sput v1, Lcom/bugsense/trace/BugSenseHandler;->sMinDelay:I

    const/4 v0, 0x1

    sput v0, Lcom/bugsense/trace/BugSenseHandler;->sTimeout:I

    sput-boolean v1, Lcom/bugsense/trace/BugSenseHandler;->sSetupCalled:Z

    sput-object v2, Lcom/bugsense/trace/BugSenseHandler;->gContext:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bugsense/trace/BugSenseHandler;->extraData:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static CheckNetworkConnection(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v1, "false"

    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->gContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    sget-object v3, Lcom/bugsense/trace/G;->APP_PACKAGE:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->gContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v6, v0

    move-object v0, v1

    move v1, v6

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v2, v1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v0, "true"

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "not available [permissions]"

    :cond_2
    return-object v0
.end method

.method public static ScreenProperties()[Ljava/lang/String;
    .locals 12

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/String;

    const-string v0, "Not available"

    aput-object v0, v1, v7

    const-string v0, "Not available"

    aput-object v0, v1, v8

    const-string v0, "Not available"

    aput-object v0, v1, v9

    const-string v0, "Not available"

    aput-object v0, v1, v10

    const-string v0, "Not available"

    aput-object v0, v1, v11

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->gContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->gContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v4

    sget-object v5, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/view/Display;->getOrientation()I

    move-result v5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v8

    const-string v0, ""

    packed-switch v5, :pswitch_data_0

    :goto_0
    aput-object v0, v1, v9

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v2, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v10

    iget v0, v2, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v11

    return-object v1

    :pswitch_0
    const-string v0, "normal"

    goto :goto_0

    :pswitch_1
    const-string v0, "180"

    goto :goto_0

    :pswitch_2
    const-string v0, "270"

    goto :goto_0

    :pswitch_3
    const-string v0, "90"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$000(Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0}, Lcom/bugsense/trace/BugSenseHandler;->submitStackTraces(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    sget v0, Lcom/bugsense/trace/BugSenseHandler;->sMinDelay:I

    return v0
.end method

.method public static addExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->extraData:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bugsense/trace/BugSenseHandler;->extraData:Ljava/util/Map;

    :cond_0
    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->extraData:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static addExtras(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->extraData:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bugsense/trace/BugSenseHandler;->extraData:Ljava/util/Map;

    :cond_0
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    sget-object v2, Lcom/bugsense/trace/BugSenseHandler;->extraData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static checkForRoot()Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "/sbin/"

    aput-object v2, v3, v1

    const-string v2, "/system/bin/"

    aput-object v2, v3, v0

    const/4 v2, 0x2

    const-string v4, "/system/xbin/"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string v4, "/data/local/xbin/"

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string v4, "/data/local/bin/"

    aput-object v4, v3, v2

    const/4 v2, 0x5

    const-string v4, "/system/sd/xbin/"

    aput-object v4, v3, v2

    const/4 v2, 0x6

    const-string v4, "/system/bin/failsafe/"

    aput-object v4, v3, v2

    const/4 v2, 0x7

    const-string v4, "/data/local/"

    aput-object v4, v3, v2

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "su"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static clearExtras()V
    .locals 1

    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->extraData:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bugsense/trace/BugSenseHandler;->extraData:Ljava/util/Map;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->extraData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_0
.end method

.method public static getExtraData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->extraData:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bugsense/trace/BugSenseHandler;->extraData:Ljava/util/Map;

    :cond_0
    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->extraData:Ljava/util/Map;

    return-object v0
.end method

.method private static getStackTraces()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x0

    sget-object v1, Lcom/bugsense/trace/BugSenseHandler;->sStackTraces:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->sStackTraces:Ljava/util/ArrayList;

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Looking for exceptions in: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/bugsense/trace/G;->FILES_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/bugsense/trace/G;->FILES_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_1
    new-instance v3, Lcom/bugsense/trace/BugSenseHandler$4;

    invoke-direct {v3}, Lcom/bugsense/trace/BugSenseHandler$4;-><init>()V

    invoke-virtual {v1, v3}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v6

    sget-object v1, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " stacktrace(s)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/bugsense/trace/BugSenseHandler;->sStackTraces:Ljava/util/ArrayList;

    move v5, v0

    :goto_1
    array-length v1, v6

    if-ge v5, v1, :cond_2

    sget-object v1, Lcom/bugsense/trace/BugSenseHandler;->sStackTraces:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x5

    if-lt v1, v3, :cond_3

    :cond_2
    sget-object v1, Lcom/bugsense/trace/BugSenseHandler;->sStackTraces:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_2
    array-length v2, v6

    if-ge v0, v2, :cond_7

    :try_start_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/bugsense/trace/G;->FILES_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v6, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/bugsense/trace/G;->FILES_PATH:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v6, v5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    :try_start_3
    aget-object v3, v6, v5

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v7, v3, v4

    sget-object v3, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Stacktrace in file \'"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "\' belongs to version "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v9, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v1, v2

    move-object v4, v2

    :goto_4
    :try_start_4
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    if-nez v4, :cond_4

    move-object v4, v3

    goto :goto_4

    :cond_4
    if-nez v1, :cond_5

    move-object v1, v3

    goto :goto_4

    :cond_5
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v1

    :try_start_5
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :catch_0
    move-exception v1

    :try_start_6
    sget-object v3, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    const-string v4, "Failed to load stack trace"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_5
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto/16 :goto_1

    :cond_6
    :try_start_7
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v8, Lcom/bugsense/trace/BugSenseHandler;->sStackTraces:Ljava/util/ArrayList;

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    const/4 v7, 0x1

    aput-object v4, v9, v7

    const/4 v4, 0x2

    aput-object v1, v9, v4

    const/4 v1, 0x3

    aput-object v3, v9, v1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_5

    :catch_1
    move-exception v1

    :try_start_8
    sget-object v3, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    const-string v4, "Failed to load stack trace"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v1

    :goto_6
    array-length v2, v6

    if-ge v0, v2, :cond_8

    :try_start_9
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/bugsense/trace/G;->FILES_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v6, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :catch_2
    move-exception v2

    sget-object v3, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error deleting trace file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v6, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :cond_7
    move-object v0, v1

    goto/16 :goto_0

    :catch_3
    move-exception v2

    sget-object v3, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error deleting trace file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v6, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :cond_8
    throw v1
.end method

.method private static hasStrackTraces()Z
    .locals 1

    invoke-static {}, Lcom/bugsense/trace/BugSenseHandler;->getStackTraces()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static installHandler()V
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/bugsense/trace/BugSenseHandler;->sVerbose:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current handler class="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    instance-of v1, v0, Lcom/bugsense/trace/DefaultExceptionHandler;

    if-nez v1, :cond_1

    new-instance v1, Lcom/bugsense/trace/DefaultExceptionHandler;

    invoke-direct {v1, v0}, Lcom/bugsense/trace/DefaultExceptionHandler;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_1
    return-void
.end method

.method public static isGPSOn()Ljava/lang/String;
    .locals 4

    const-string v1, "true"

    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->gContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    sget-object v3, Lcom/bugsense/trace/G;->APP_PACKAGE:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->gContext:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "false"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "not available [permissions]"

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static isMobileNetworkOn()Ljava/lang/String;
    .locals 1

    const-string v0, "MOBILE"

    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->CheckNetworkConnection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isWifiOn()Ljava/lang/String;
    .locals 1

    const-string v0, "WIFI"

    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->CheckNetworkConnection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static log(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/bugsense/trace/BugSenseHandler;->log(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Exception;)V

    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Exception;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    sget-object v1, Lcom/bugsense/trace/G;->API_KEY:Ljava/lang/String;

    if-nez v1, :cond_0

    sget-object v0, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    const-string v1, "Could not send: API KEY is missing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    const-string v2, "Transmitting log data"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p2, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->gContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LOG_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/bugsense/trace/BugSense;->submitError(Landroid/content/Context;ILjava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    const-string v1, "Failed to transmit log data:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static readLogs()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bugsense/trace/G;->SEND_LOG:Z

    return-void
.end method

.method public static readLogs(I)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bugsense/trace/G;->SEND_LOG:Z

    sput p0, Lcom/bugsense/trace/G;->LOG_LINES:I

    return-void
.end method

.method public static readLogs(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bugsense/trace/G;->SEND_LOG:Z

    sput p0, Lcom/bugsense/trace/G;->LOG_LINES:I

    sput-object p1, Lcom/bugsense/trace/G;->LOG_FILTER:Ljava/lang/String;

    return-void
.end method

.method public static readLogs(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bugsense/trace/G;->SEND_LOG:Z

    sput-object p0, Lcom/bugsense/trace/G;->LOG_FILTER:Ljava/lang/String;

    return-void
.end method

.method public static removeExtra(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->extraData:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bugsense/trace/BugSenseHandler;->extraData:Ljava/util/Map;

    :cond_0
    sget-object v0, Lcom/bugsense/trace/BugSenseHandler;->extraData:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static setup(Landroid/content/Context;Lcom/bugsense/trace/BugSenseHandler$Processor;Ljava/lang/String;Z)Z
    .locals 3

    const/4 v0, 0x0

    sput-object p2, Lcom/bugsense/trace/G;->API_KEY:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bugsense/trace/G;->ANALYTICS_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/bugsense/trace/G;->ANALYTICS_URL:Ljava/lang/String;

    sput-object p0, Lcom/bugsense/trace/BugSenseHandler;->gContext:Landroid/content/Context;

    sget-boolean v1, Lcom/bugsense/trace/BugSenseHandler;->sSetupCalled:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/bugsense/trace/BugSenseHandler;->sTask:Lcom/bugsense/trace/ActivityAsyncTask;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/bugsense/trace/BugSenseHandler;->sTask:Lcom/bugsense/trace/ActivityAsyncTask;

    invoke-virtual {v1}, Lcom/bugsense/trace/ActivityAsyncTask;->postProcessingDone()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/bugsense/trace/BugSenseHandler;->sTask:Lcom/bugsense/trace/ActivityAsyncTask;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/bugsense/trace/ActivityAsyncTask;->connectTo(Ljava/lang/Object;)V

    sget-object v1, Lcom/bugsense/trace/BugSenseHandler;->sTask:Lcom/bugsense/trace/ActivityAsyncTask;

    invoke-virtual {v1, p1}, Lcom/bugsense/trace/ActivityAsyncTask;->connectTo(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bugsense/trace/BugSenseHandler;->sSetupCalled:Z

    sget-object v0, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    const-string v1, "Registering default exceptions handler"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bugsense/trace/G;->FILES_PATH:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/bugsense/trace/G;->PHONE_MODEL:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/bugsense/trace/G;->ANDROID_VERSION:Ljava/lang/String;

    invoke-static {}, Lcom/bugsense/trace/BugSenseHandler;->checkForRoot()Z

    move-result v0

    sput-boolean v0, Lcom/bugsense/trace/G;->HAS_ROOT:Z

    sput-boolean p3, Lcom/bugsense/trace/G;->SEND_ANALYTICS:Z

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcom/bugsense/trace/G;->APP_VERSION:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    sput-object v0, Lcom/bugsense/trace/G;->APP_PACKAGE:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-boolean v0, Lcom/bugsense/trace/BugSenseHandler;->sVerbose:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TRACE_VERSION: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/bugsense/trace/G;->TraceVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APP_VERSION: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/bugsense/trace/G;->APP_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APP_PACKAGE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/bugsense/trace/G;->APP_PACKAGE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FILES_PATH: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/bugsense/trace/G;->FILES_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/bugsense/trace/G;->URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Lcom/bugsense/trace/BugSenseHandler;->getStackTraces()Ljava/util/ArrayList;

    invoke-static {}, Lcom/bugsense/trace/BugSenseHandler;->installHandler()V

    invoke-interface {p1}, Lcom/bugsense/trace/BugSenseHandler$Processor;->handlerInstalled()V

    invoke-static {p1}, Lcom/bugsense/trace/BugSenseHandler;->submit(Lcom/bugsense/trace/BugSenseHandler$Processor;)Z

    move-result v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    const-string v2, "Error collecting trace information"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method public static setup(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Lcom/bugsense/trace/BugSenseHandler$1;

    invoke-direct {v0}, Lcom/bugsense/trace/BugSenseHandler$1;-><init>()V

    sget-boolean v1, Lcom/bugsense/trace/G;->SEND_ANALYTICS:Z

    invoke-static {p0, v0, p1, v1}, Lcom/bugsense/trace/BugSenseHandler;->setup(Landroid/content/Context;Lcom/bugsense/trace/BugSenseHandler$Processor;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static showUpgradeNotification(Ljava/lang/String;)V
    .locals 10

    :try_start_0
    sget-object v1, Lcom/bugsense/trace/BugSenseHandler;->gContext:Landroid/content/Context;

    const-string v0, "notification"

    sget-object v2, Lcom/bugsense/trace/BugSenseHandler;->gContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v3, Lorg/json/JSONObject;

    const-string v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "tickerText"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v6, Lcom/bugsense/trace/BugSenseHandler;->gContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "icon"

    const-string v8, "drawable"

    sget-object v9, Lcom/bugsense/trace/BugSenseHandler;->gContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7, v6, v2, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    const/16 v2, 0x10

    iput v2, v7, Landroid/app/Notification;->flags:I

    const-string v2, "contentTitle"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "contentText"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    const-string v8, "url"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v5, v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v3, 0x0

    const/high16 v6, 0x1000

    invoke-static {v1, v3, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v7, v1, v2, v4, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    const-string v2, "Error starting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static submit()Z
    .locals 1

    new-instance v0, Lcom/bugsense/trace/BugSenseHandler$3;

    invoke-direct {v0}, Lcom/bugsense/trace/BugSenseHandler$3;-><init>()V

    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->submit(Lcom/bugsense/trace/BugSenseHandler$Processor;)Z

    move-result v0

    return v0
.end method

.method private static submit(Lcom/bugsense/trace/BugSenseHandler$Processor;)Z
    .locals 3

    sget-boolean v0, Lcom/bugsense/trace/BugSenseHandler;->sSetupCalled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "you need to call setup() first"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/bugsense/trace/BugSenseHandler;->hasStrackTraces()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/bugsense/trace/BugSenseHandler$Processor;->beginSubmit()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/bugsense/trace/BugSenseHandler;->sStackTraces:Ljava/util/ArrayList;

    const/4 v2, 0x0

    sput-object v2, Lcom/bugsense/trace/BugSenseHandler;->sStackTraces:Ljava/util/ArrayList;

    new-instance v2, Lcom/bugsense/trace/BugSenseHandler$2;

    invoke-direct {v2, p0, v1}, Lcom/bugsense/trace/BugSenseHandler$2;-><init>(Lcom/bugsense/trace/BugSenseHandler$Processor;Ljava/util/ArrayList;)V

    sput-object v2, Lcom/bugsense/trace/BugSenseHandler;->sTask:Lcom/bugsense/trace/ActivityAsyncTask;

    sget-object v1, Lcom/bugsense/trace/BugSenseHandler;->sTask:Lcom/bugsense/trace/ActivityAsyncTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/bugsense/trace/ActivityAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return v0
.end method

.method private static submitStackTraces(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move v1, v0

    :goto_1
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v2, 0x1

    aget-object v2, v0, v2

    const/4 v2, 0x2

    aget-object v2, v0, v2

    const/4 v2, 0x3

    aget-object v0, v0, v2

    sget-object v2, Lcom/bugsense/trace/BugSenseHandler;->gContext:Landroid/content/Context;

    sget v3, Lcom/bugsense/trace/BugSenseHandler;->sTimeout:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v0}, Lcom/bugsense/trace/BugSense;->submitError(Landroid/content/Context;ILjava/util/Date;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    const-string v2, "Error submitting trace"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method