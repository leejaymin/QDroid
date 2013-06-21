.class public Lcom/scoreloop/client/android/ui/component/base/PackageManager;
.super Ljava/lang/Object;
.source "PackageManager.java"


# static fields
.field private static final SCORELOOP_APP_PACKAGE_NAMES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.scoreloop.android.slapp"

    aput-object v2, v0, v1

    sput-object v0, Lcom/scoreloop/client/android/ui/component/base/PackageManager;->SCORELOOP_APP_PACKAGE_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static download(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "downloadUrl"

    .prologue
    .line 37
    if-eqz p1, :cond_0

    .line 38
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 40
    :cond_0
    return-void
.end method

.method private static getLaunchIntentForPackage(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .parameter "context"
    .parameter "packageNames"

    .prologue
    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 52
    .local v4, pm:Landroid/content/pm/PackageManager;
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 54
    .local v3, packageName:Ljava/lang/String;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 55
    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 60
    .end local v3           #packageName:Ljava/lang/String;
    :goto_1
    return-object v5

    .line 57
    .restart local v3       #packageName:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 52
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    .end local v3           #packageName:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static installGame(Landroid/content/Context;Lcom/scoreloop/client/android/core/model/Game;)V
    .locals 1
    .parameter "context"
    .parameter "game"

    .prologue
    .line 47
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Game;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/scoreloop/client/android/ui/component/base/PackageManager;->download(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static installScoreloopApp(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 43
    invoke-static {}, Lcom/scoreloop/client/android/core/model/Session;->getCurrentSession()Lcom/scoreloop/client/android/core/model/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/model/Session;->getScoreloopAppDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/scoreloop/client/android/ui/component/base/PackageManager;->download(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static isGameInstalled(Landroid/content/Context;Lcom/scoreloop/client/android/core/model/Game;)Z
    .locals 1
    .parameter "context"
    .parameter "game"

    .prologue
    .line 75
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Game;->getPackageNames()[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/scoreloop/client/android/ui/component/base/PackageManager;->getLaunchIntentForPackage(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isScoreloopAppInstalled(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 71
    sget-object v0, Lcom/scoreloop/client/android/ui/component/base/PackageManager;->SCORELOOP_APP_PACKAGE_NAMES:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/scoreloop/client/android/ui/component/base/PackageManager;->getLaunchIntentForPackage(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static launchGame(Landroid/content/Context;Lcom/scoreloop/client/android/core/model/Game;)V
    .locals 2
    .parameter "context"
    .parameter "game"

    .prologue
    .line 64
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/model/Game;->getPackageNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/scoreloop/client/android/ui/component/base/PackageManager;->getLaunchIntentForPackage(Landroid/content/Context;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 65
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 68
    :cond_0
    return-void
.end method
