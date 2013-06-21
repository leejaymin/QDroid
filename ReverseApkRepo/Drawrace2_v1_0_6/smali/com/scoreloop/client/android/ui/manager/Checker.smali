.class public Lcom/scoreloop/client/android/ui/manager/Checker;
.super Ljava/lang/Object;
.source "Checker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/ui/manager/Checker$1;,
        Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;,
        Lcom/scoreloop/client/android/ui/manager/Checker$CheckerException;
    }
.end annotation


# instance fields
.field private _activityInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final _configuration:Lcom/scoreloop/client/android/ui/component/base/Configuration;

.field private final _context:Landroid/content/Context;

.field private final _packageInfo:Landroid/content/pm/PackageInfo;

.field private _permissionInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/scoreloop/client/android/ui/component/base/Configuration;)V
    .locals 4
    .parameter "context"
    .parameter "configuration"

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p1, p0, Lcom/scoreloop/client/android/ui/manager/Checker;->_context:Landroid/content/Context;

    .line 188
    iput-object p2, p0, Lcom/scoreloop/client/android/ui/manager/Checker;->_configuration:Lcom/scoreloop/client/android/ui/component/base/Configuration;

    .line 190
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/manager/Checker;->_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 192
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v2, p0, Lcom/scoreloop/client/android/ui/manager/Checker;->_context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1001

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/scoreloop/client/android/ui/manager/Checker;->_packageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerException;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerException;-><init>(Lcom/scoreloop/client/android/ui/manager/Checker;Lcom/scoreloop/client/android/ui/manager/Checker$1;)V

    throw v2
.end method

.method static synthetic access$000(Lcom/scoreloop/client/android/ui/manager/Checker;)Lcom/scoreloop/client/android/ui/component/base/Configuration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/Checker;->_configuration:Lcom/scoreloop/client/android/ui/component/base/Configuration;

    return-object v0
.end method

.method static synthetic access$100(Lcom/scoreloop/client/android/ui/manager/Checker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/scoreloop/client/android/ui/manager/Checker;->_context:Landroid/content/Context;

    return-object v0
.end method

.method private getActivityInfo()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    iget-object v5, p0, Lcom/scoreloop/client/android/ui/manager/Checker;->_activityInfo:Ljava/util/Map;

    if-nez v5, :cond_5

    .line 209
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/scoreloop/client/android/ui/manager/Checker;->_activityInfo:Ljava/util/Map;

    .line 210
    iget-object v5, p0, Lcom/scoreloop/client/android/ui/manager/Checker;->_packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .local v0, arr$:[Landroid/content/pm/ActivityInfo;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_5

    aget-object v3, v0, v2

    .line 211
    .local v3, info:Landroid/content/pm/ActivityInfo;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 212
    .local v1, details:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget v5, v3, Landroid/content/pm/ActivityInfo;->theme:I

    if-eqz v5, :cond_0

    .line 213
    const-string v5, "theme"

    iget v6, v3, Landroid/content/pm/ActivityInfo;->theme:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :cond_0
    iget v5, v3, Landroid/content/pm/ActivityInfo;->configChanges:I

    if-eqz v5, :cond_1

    .line 216
    const-string v5, "configChanges"

    iget v6, v3, Landroid/content/pm/ActivityInfo;->configChanges:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_1
    iget v5, v3, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 219
    const-string v5, "screenOrientation"

    iget v6, v3, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    :cond_2
    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v5, :cond_3

    .line 222
    const-string v5, "label"

    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_3
    iget-object v5, p0, Lcom/scoreloop/client/android/ui/manager/Checker;->_activityInfo:Ljava/util/Map;

    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v1, 0x0

    .end local v1           #details:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 227
    .end local v0           #arr$:[Landroid/content/pm/ActivityInfo;
    .end local v2           #i$:I
    .end local v3           #info:Landroid/content/pm/ActivityInfo;
    .end local v4           #len$:I
    :cond_5
    iget-object v5, p0, Lcom/scoreloop/client/android/ui/manager/Checker;->_activityInfo:Ljava/util/Map;

    return-object v5
.end method

.method private getPermissionInfo()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    iget-object v5, p0, Lcom/scoreloop/client/android/ui/manager/Checker;->_permissionInfo:Ljava/util/Map;

    if-nez v5, :cond_0

    .line 232
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/scoreloop/client/android/ui/manager/Checker;->_permissionInfo:Ljava/util/Map;

    .line 233
    iget-object v5, p0, Lcom/scoreloop/client/android/ui/manager/Checker;->_packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 234
    .local v4, permissions:[Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 235
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 236
    .local v3, name:Ljava/lang/String;
    iget-object v5, p0, Lcom/scoreloop/client/android/ui/manager/Checker;->_permissionInfo:Ljava/util/Map;

    const/4 v6, 0x0

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 240
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #permissions:[Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/scoreloop/client/android/ui/manager/Checker;->_permissionInfo:Ljava/util/Map;

    return-object v5
.end method


# virtual methods
.method public createActivityRun()Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;
    .locals 4

    .prologue
    .line 200
    new-instance v0, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;

    const-string v1, "activity"

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/Checker;->getActivityInfo()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;-><init>(Lcom/scoreloop/client/android/ui/manager/Checker;Ljava/lang/String;Ljava/util/Map;Lcom/scoreloop/client/android/ui/manager/Checker$1;)V

    return-object v0
.end method

.method public createUsesPermissionRun()Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;
    .locals 4

    .prologue
    .line 204
    new-instance v0, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;

    const-string v1, "uses-permission"

    invoke-direct {p0}, Lcom/scoreloop/client/android/ui/manager/Checker;->getPermissionInfo()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/scoreloop/client/android/ui/manager/Checker$CheckerRun;-><init>(Lcom/scoreloop/client/android/ui/manager/Checker;Ljava/lang/String;Ljava/util/Map;Lcom/scoreloop/client/android/ui/manager/Checker$1;)V

    return-object v0
.end method
