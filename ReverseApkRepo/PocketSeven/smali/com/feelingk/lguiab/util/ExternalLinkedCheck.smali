.class public Lcom/feelingk/lguiab/util/ExternalLinkedCheck;
.super Ljava/lang/Object;
.source "ExternalLinkedCheck.java"


# static fields
.field private static final NEW_PACKAGENAME:Ljava/lang/String; = "com.lguplus.appstore"

.field public static final NEW_VERSION_INSTALLED:I = 0x2

.field public static final NOT_INSTALLED:I = 0x0

.field public static final OLD_VERSION_INSTALLED:I = 0x1

.field private static final PRE_PACKAGENAME:Ljava/lang/String; = "android.lgt.appstore"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/feelingk/lguiab/util/ExternalLinkedCheck;->mContext:Landroid/content/Context;

    .line 39
    iput-object p1, p0, Lcom/feelingk/lguiab/util/ExternalLinkedCheck;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method


# virtual methods
.method public marketVersionCheck()I
    .locals 6

    .prologue
    .line 45
    const/4 v2, 0x0

    .line 47
    .local v2, maketVersion:I
    iget-object v4, p0, Lcom/feelingk/lguiab/util/ExternalLinkedCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 49
    .local v0, appinfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 75
    :goto_1
    return v2

    .line 51
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 52
    .local v3, pi:Landroid/content/pm/PackageInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PackageName : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " version :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/feelingk/lguiab/util/Logger;->d(Ljava/lang/String;)V

    .line 55
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v5, "android.lgt.appstore"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 57
    const/4 v2, 0x1

    .line 59
    goto :goto_1

    .line 61
    :cond_1
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.lguplus.appstore"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 63
    const/4 v2, 0x2

    .line 65
    goto :goto_1

    .line 69
    :cond_2
    const/4 v2, 0x0

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
