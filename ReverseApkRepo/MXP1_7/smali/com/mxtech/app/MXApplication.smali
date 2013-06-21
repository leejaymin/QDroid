.class public abstract Lcom/mxtech/app/MXApplication;
.super Landroid/app/Application;


# static fields
.field public static 癤욱븳援:Ljava/lang/String;


# instance fields
.field private 궗:Z

.field private 먯꽌:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MX"

    sput-object v0, Lcom/mxtech/app/MXApplication;->癤욱븳援:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    iput-boolean v0, p0, Lcom/mxtech/app/MXApplication;->궗:Z

    iput-boolean v0, p0, Lcom/mxtech/app/MXApplication;->먯꽌:Z

    return-void
.end method


# virtual methods
.method public final onCreate()V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/mxtech/app/MXApplication;->궗:Z

    if-nez v0, :cond_0

    iput-boolean v4, p0, Lcom/mxtech/app/MXApplication;->궗:Z

    invoke-virtual {p0}, Lcom/mxtech/app/MXApplication;->궗()V

    :cond_0
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    :try_start_0
    invoke-virtual {p0}, Lcom/mxtech/app/MXApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mxtech/app/MXApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    sget-object v1, Lcom/mxtech/app/MXApplication;->癤욱븳援:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Application=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {p0, v3}, Lcom/mxtech/app/MXApplication;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] Version=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] Manufacturer=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] Model=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] Display=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] Brand=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] Product=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v0, p0, Lcom/mxtech/app/MXApplication;->먯꽌:Z

    if-nez v0, :cond_1

    iput-boolean v4, p0, Lcom/mxtech/app/MXApplication;->먯꽌:Z

    invoke-virtual {p0}, Lcom/mxtech/app/MXApplication;->먯꽌()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mxtech/app/MXApplication;->癤욱븳援:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->releaseMemory()I

    return-void
.end method

.method public final 癤욱븳援()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/mxtech/app/MXApplication;->궗:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/mxtech/app/MXApplication;->궗:Z

    invoke-virtual {p0}, Lcom/mxtech/app/MXApplication;->궗()V

    :cond_0
    iget-boolean v0, p0, Lcom/mxtech/app/MXApplication;->먯꽌:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/mxtech/app/MXApplication;->먯꽌:Z

    invoke-virtual {p0}, Lcom/mxtech/app/MXApplication;->먯꽌()V

    :cond_1
    return-void
.end method

.method public final 癤욱븳援(Landroid/app/Activity;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mxtech/app/MXApplication;->궗(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method protected 궗()V
    .locals 0

    return-void
.end method

.method protected 궗(Landroid/app/Activity;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected 먯꽌()V
    .locals 0

    return-void
.end method
