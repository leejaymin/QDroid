.class public Lcom/feelingk/lguiab/util/PackageInfoUtil;
.super Ljava/lang/Object;
.source "PackageInfoUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPackgaeName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, strPackageName:Ljava/lang/String;
    return-object v0
.end method

.method public static isAvailablePermission(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    .line 22
    const/4 v0, 0x1

    .line 24
    .local v0, checkPermission:Z
    sget-object v3, Lcom/feelingk/lguiab/common/Defines;->SDK_PERMISSIONS:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 34
    return v0

    .line 24
    :cond_0
    aget-object v1, v3, v2

    .line 26
    .local v1, permission:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 26
    if-eqz v5, :cond_1

    .line 29
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " permission does not exist in manifest."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/feelingk/lguiab/util/Logger;->i(Ljava/lang/String;)V

    .line 30
    const/4 v0, 0x0

    .line 24
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
