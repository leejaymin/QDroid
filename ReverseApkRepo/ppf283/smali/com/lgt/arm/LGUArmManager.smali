.class public Lcom/lgt/arm/LGUArmManager;
.super Ljava/lang/Object;
.source "LGUArmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lgt/arm/LGUArmManager$ArmConnection;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LGUArmManger"

.field protected static mArmListener:Lcom/lgt/arm/LGUArmListener;


# instance fields
.field private AID:Ljava/lang/String;

.field public armCon:Lcom/lgt/arm/LGUArmManager$ArmConnection;

.field public bSevice:Z

.field private countryName:Ljava/lang/String;

.field private ctx:Landroid/content/Context;

.field public netState:I

.field private providerName:Ljava/lang/String;

.field private pvName:Ljava/lang/String;

.field public resCode:I

.field public resMsg:Ljava/lang/String;

.field public service:Lcom/lgt/arm/ArmInterface;

.field private serviceName:Ljava/lang/String;

.field private vName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "ctx"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "KR"

    iput-object v0, p0, Lcom/lgt/arm/LGUArmManager;->countryName:Ljava/lang/String;

    .line 28
    const-string v0, "LGU"

    iput-object v0, p0, Lcom/lgt/arm/LGUArmManager;->providerName:Ljava/lang/String;

    .line 29
    const-string v0, "OZS"

    iput-object v0, p0, Lcom/lgt/arm/LGUArmManager;->serviceName:Ljava/lang/String;

    .line 30
    const-string v0, "000001"

    iput-object v0, p0, Lcom/lgt/arm/LGUArmManager;->pvName:Ljava/lang/String;

    .line 32
    const-string v0, "LGUArmManger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " Create"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iput-object p1, p0, Lcom/lgt/arm/LGUArmManager;->ctx:Landroid/content/Context;

    .line 34
    return-void
.end method

.method private ARMServiceCheck()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    .line 152
    iget-object v3, p0, Lcom/lgt/arm/LGUArmManager;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 153
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 155
    .local v1, pi:Landroid/content/pm/PackageInfo;
    :try_start_0
    const-string v3, "com.lgt.arm"

    const/16 v4, 0x80

    invoke-static {v2, v3, v4}, Lt3SkSFUAg5/gVgwes9xi;->oKRxKPwdvXnfKK(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 156
    const-string v3, "LGUArmManger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " OZStoreARM is found : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v3, p0, Lcom/lgt/arm/LGUArmManager;->vName:Ljava/lang/String;

    .line 158
    iget-object v3, p0, Lcom/lgt/arm/LGUArmManager;->vName:Ljava/lang/String;

    const-string v4, "10.0.0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/lgt/arm/LGUArmManager;->vName:Ljava/lang/String;

    const-string v4, "1.0.0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/lgt/arm/LGUArmManager;->vName:Ljava/lang/String;

    const-string v4, "1.0.1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 160
    :cond_0
    const-string v3, "\uc0ac\uc6a9\uad8c\ud55c\uc744 \ud655\uc778\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4. \ud734\ub300\ud3f0\uc758 \ucee8\ud150\uce20\uad00\ub9ac\uc790\u2192\uc5b4\ud50c\ub9ac\ucf00\uc774\uc158 \uba54\ub274\uc5d0\uc11c com.lgt.arm\uc744 \ub2e4\uc2dc \uc124\uce58\ud574 \uc8fc\uc138\uc694.(14)"

    iput-object v3, p0, Lcom/lgt/arm/LGUArmManager;->resMsg:Ljava/lang/String;

    .line 161
    const/4 v3, 0x3

    iput v3, p0, Lcom/lgt/arm/LGUArmManager;->netState:I

    .line 164
    :cond_1
    iget-object v3, p0, Lcom/lgt/arm/LGUArmManager;->vName:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1.0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 177
    :cond_2
    :goto_0
    return-void

    .line 167
    :cond_3
    iget-object v3, p0, Lcom/lgt/arm/LGUArmManager;->vName:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xb

    if-lt v3, v4, :cond_2

    .line 168
    const-string v3, "LGUArmManger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " VersionName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lgt/arm/LGUArmManager;->vName:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-direct {p0}, Lcom/lgt/arm/LGUArmManager;->advancedAID()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "LGUArmManger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " OZStoreARM is not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const-string v3, "\uc0ac\uc6a9\uad8c\ud55c\uc744 \ud655\uc778\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4. \ud734\ub300\ud3f0\uc758 \ucee8\ud150\uce20\uad00\ub9ac\uc790\u2192\uc5b4\ud50c\ub9ac\ucf00\uc774\uc158 \uba54\ub274\uc5d0\uc11c com.lgt.arm\uc744 \ub2e4\uc2dc \uc124\uce58\ud574 \uc8fc\uc138\uc694.(14)"

    iput-object v3, p0, Lcom/lgt/arm/LGUArmManager;->resMsg:Ljava/lang/String;

    .line 175
    iput v8, p0, Lcom/lgt/arm/LGUArmManager;->netState:I

    goto :goto_0
.end method

.method private DisconnectService()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 75
    const-string v0, "LGUArmManger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " ARMPlugin DisconnectService"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/lgt/arm/LGUArmManager;->armCon:Lcom/lgt/arm/LGUArmManager$ArmConnection;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/lgt/arm/LGUArmManager;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/lgt/arm/LGUArmManager;->armCon:Lcom/lgt/arm/LGUArmManager$ArmConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 78
    iput-object v3, p0, Lcom/lgt/arm/LGUArmManager;->armCon:Lcom/lgt/arm/LGUArmManager$ArmConnection;

    .line 79
    iput-object v3, p0, Lcom/lgt/arm/LGUArmManager;->service:Lcom/lgt/arm/ArmInterface;

    .line 81
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lgt/arm/LGUArmManager;->bSevice:Z

    .line 82
    const-string v0, "LGUArmManger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " Destroy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void
.end method

.method static synthetic access$0(Lcom/lgt/arm/LGUArmManager;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lgt/arm/LGUArmManager;->AID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lgt/arm/LGUArmManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/lgt/arm/LGUArmManager;->getLicenseStatus(Ljava/lang/String;)V

    return-void
.end method

.method private advancedAID()V
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/lgt/arm/LGUArmManager;->AID:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lgt/arm/LGUArmManager;->countryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lgt/arm/LGUArmManager;->providerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lgt/arm/LGUArmManager;->serviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lgt/arm/LGUArmManager;->vName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lgt/arm/LGUArmManager;->pvName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lgt/arm/LGUArmManager;->AID:Ljava/lang/String;

    .line 181
    const-string v0, "LGUArmManger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " AID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lgt/arm/LGUArmManager;->AID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void
.end method

.method private getLicenseStatus(Ljava/lang/String;)V
    .locals 4
    .parameter "AID"

    .prologue
    .line 91
    const/4 v1, -0x1

    iput v1, p0, Lcom/lgt/arm/LGUArmManager;->resCode:I

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/lgt/arm/LGUArmManager;->service:Lcom/lgt/arm/ArmInterface;

    invoke-interface {v1, p1}, Lcom/lgt/arm/ArmInterface;->executeArm(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/lgt/arm/LGUArmManager;->resCode:I

    .line 94
    iget v1, p0, Lcom/lgt/arm/LGUArmManager;->resCode:I

    sparse-switch v1, :sswitch_data_0

    .line 136
    const v1, -0xffffff8

    iput v1, p0, Lcom/lgt/arm/LGUArmManager;->resCode:I

    .line 137
    const-string v1, "\uc0ac\uc6a9\uad8c\ud55c\uc774 \ud655\uc778\ub418\uc9c0 \uc54a\uc558\uc2b5\ub2c8\ub2e4. \ub2e4\uc2dc \uc2dc\ub3c4\ud574 \uc8fc\uc138\uc694.(8)"

    iput-object v1, p0, Lcom/lgt/arm/LGUArmManager;->resMsg:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    const-string v1, "LGUArmManger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " checkLicense Result ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lgt/arm/LGUArmManager;->resCode:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    sget-object v1, Lcom/lgt/arm/LGUArmManager;->mArmListener:Lcom/lgt/arm/LGUArmListener;

    invoke-interface {v1}, Lcom/lgt/arm/LGUArmListener;->onArmResult()V

    .line 145
    invoke-direct {p0}, Lcom/lgt/arm/LGUArmManager;->DisconnectService()V

    .line 146
    return-void

    .line 97
    :sswitch_0
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/lgt/arm/LGUArmManager;->resMsg:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 100
    .end local v0           #e:Ljava/lang/Exception;
    :sswitch_1
    :try_start_2
    const-string v1, "\uc0ac\uc6a9\uad8c\ud55c\uc744 \ud655\uc778\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4. \ud734\ub300\ud3f0\uc758 \ucee8\ud150\uce20\uad00\ub9ac\uc790->\uc5b4\ud50c\ub9ac\ucf00\uc774\uc158 \uba54\ub274\uc5d0\uc11c com.lgt.arm\uc744 \ub2e4\uc2dc \uc124\uce58\ud574 \uc8fc\uc138\uc694.(4)"

    iput-object v1, p0, Lcom/lgt/arm/LGUArmManager;->resMsg:Ljava/lang/String;

    goto :goto_0

    .line 103
    :sswitch_2
    const-string v1, "\uc0ac\uc6a9\uad8c\ud55c\uc774 \ud655\uc778\ub418\uc9c0 \uc54a\uc558\uc2b5\ub2c8\ub2e4. \ub2e4\uc2dc \uc2dc\ub3c4\ud574 \uc8fc\uc138\uc694.(8)"

    iput-object v1, p0, Lcom/lgt/arm/LGUArmManager;->resMsg:Ljava/lang/String;

    goto :goto_0

    .line 106
    :sswitch_3
    const-string v1, "\uad6c\ub9e4\uc774\ub825\uc774 \ud655\uc778\ub418\uc9c0 \uc54a\uc558\uc2b5\ub2c8\ub2e4. \uace0\uac1d\uc13c\ud130(019114)\ub85c \ubb38\uc758\ud558\uc138\uc694.(9)"

    iput-object v1, p0, Lcom/lgt/arm/LGUArmManager;->resMsg:Ljava/lang/String;

    goto :goto_0

    .line 109
    :sswitch_4
    const-string v1, "OZ \uc2a4\ud1a0\uc5b4 \uc0ac\uc6a9\uad8c\ud55c\uc774 \ub4f1\ub85d\ub418\uc9c0 \uc54a\uc558\uc2b5\ub2c8\ub2e4. \uac00\uc785 \ud6c4 \uc774\uc6a9\ud574 \uc8fc\uc138\uc694.(A)"

    iput-object v1, p0, Lcom/lgt/arm/LGUArmManager;->resMsg:Ljava/lang/String;

    goto :goto_0

    .line 112
    :sswitch_5
    const-string v1, "\uc0ac\uc6a9\uad8c\ud55c \ud655\uc778 \uc2dc\uac04\uc744 \ucd08\uacfc\ud558\uc600\uc2b5\ub2c8\ub2e4. \ub2e4\uc2dc \uc2dc\ub3c4\ud574\uc8fc\uc138\uc694.(C)"

    iput-object v1, p0, Lcom/lgt/arm/LGUArmManager;->resMsg:Ljava/lang/String;

    goto :goto_0

    .line 115
    :sswitch_6
    const-string v1, "\uc5b4\ud50c\ub9ac\ucf00\uc774\uc158\uc758 \uc0ac\uc6a9\uad8c\ud55c\uc774 \ub4f1\ub85d\ub418\uc9c0 \uc54a\uc558\uc2b5\ub2c8\ub2e4. \uace0\uac1d\uc13c\ud130(019114)\ub85c \ubb38\uc758\ud558\uc138\uc694(D)."

    iput-object v1, p0, Lcom/lgt/arm/LGUArmManager;->resMsg:Ljava/lang/String;

    goto :goto_0

    .line 118
    :sswitch_7
    const-string v1, "\uc0ac\uc6a9\uad8c\ud55c\uc744 \ud655\uc778\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4. \ub2e4\uc2dc \uc2dc\ub3c4\ud574 \uc8fc\uc138\uc694.(E)"

    iput-object v1, p0, Lcom/lgt/arm/LGUArmManager;->resMsg:Ljava/lang/String;

    goto :goto_0

    .line 121
    :sswitch_8
    const-string v1, "\ub2e8\ub9d0\uc758 \uc0ac\uc6a9\uad8c\ud55c\uc744 \ud655\uc778\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4.(11)"

    iput-object v1, p0, Lcom/lgt/arm/LGUArmManager;->resMsg:Ljava/lang/String;

    goto :goto_0

    .line 124
    :sswitch_9
    const-string v1, "\uc5b4\ud50c\ub9ac\ucf00\uc774\uc158\uc758 \uc0ac\uc6a9\uad8c\ud55c\uc744 \ud655\uc778\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4. \uace0\uac1d\uc13c\ud130(019114)\ub85c \ubb38\uc758\ud558\uc138\uc694.(12)"

    iput-object v1, p0, Lcom/lgt/arm/LGUArmManager;->resMsg:Ljava/lang/String;

    goto :goto_0

    .line 127
    :sswitch_a
    const-string v1, "\uc11c\ube44\uc2a4 \uc5f0\uacb0\uc774 \uc5b4\ub835\uc2b5\ub2c8\ub2e4. \ub124\ud2b8\uc6cc\ud06c \uc124\uc815\uc744 WiFi\ub610\ub294 3G\ub85c \uc124\uc815\ud558\uc2dc\uace0 \uc7a0\uc2dc \ud6c4 \ub2e4\uc2dc \uc2dc\ub3c4\ud574 \uc8fc\uc138\uc694.(13)"

    iput-object v1, p0, Lcom/lgt/arm/LGUArmManager;->resMsg:Ljava/lang/String;

    goto :goto_0

    .line 130
    :sswitch_b
    const-string v1, "\uc0ac\uc6a9\uad8c\ud55c\uc744 \ud655\uc778\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4. \ud734\ub300\ud3f0\uc758 \ucee8\ud150\uce20\uad00\ub9ac\uc790\u2192\uc5b4\ud50c\ub9ac\ucf00\uc774\uc158 \uba54\ub274\uc5d0\uc11c com.lgt.arm\uc744 \ub2e4\uc2dc \uc124\uce58\ud574 \uc8fc\uc138\uc694.(14)"

    iput-object v1, p0, Lcom/lgt/arm/LGUArmManager;->resMsg:Ljava/lang/String;

    goto :goto_0

    .line 133
    :sswitch_c
    const-string v1, "\uc5d0\ubbac\ub808\uc774\ud130\uac00 \uc544\ub2cc \uacbd\uc6b0 \uc0ac\uc6a9\ud558\uc2e4 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4.(36)"

    iput-object v1, p0, Lcom/lgt/arm/LGUArmManager;->resMsg:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 94
    nop

    :sswitch_data_0
    .sparse-switch
        -0xffffffc -> :sswitch_1
        -0xffffff8 -> :sswitch_2
        -0xffffff7 -> :sswitch_3
        -0xffffff6 -> :sswitch_4
        -0xffffff4 -> :sswitch_5
        -0xffffff3 -> :sswitch_6
        -0xffffff2 -> :sswitch_7
        -0xfffffef -> :sswitch_8
        -0xfffffee -> :sswitch_9
        -0xfffffed -> :sswitch_a
        -0xfffffec -> :sswitch_b
        -0xfffffca -> :sswitch_c
        0x1 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public ARM_Plugin_ExecuteARM(Ljava/lang/String;)Z
    .locals 8
    .parameter "AppID"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    const-string v4, "LGUArmManger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " ARMPlugin ConnectService - bSevice ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/lgt/arm/LGUArmManager;->bSevice:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :try_start_0
    iget-boolean v4, p0, Lcom/lgt/arm/LGUArmManager;->bSevice:Z

    if-eqz v4, :cond_0

    .line 68
    :goto_0
    return v2

    .line 45
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/lgt/arm/LGUArmManager;->bSevice:Z

    .line 46
    iget-object v4, p0, Lcom/lgt/arm/LGUArmManager;->armCon:Lcom/lgt/arm/LGUArmManager$ArmConnection;

    if-nez v4, :cond_1

    .line 47
    new-instance v4, Lcom/lgt/arm/LGUArmManager$ArmConnection;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/lgt/arm/LGUArmManager$ArmConnection;-><init>(Lcom/lgt/arm/LGUArmManager;Lcom/lgt/arm/LGUArmManager$ArmConnection;)V

    iput-object v4, p0, Lcom/lgt/arm/LGUArmManager;->armCon:Lcom/lgt/arm/LGUArmManager$ArmConnection;

    .line 48
    iput-object p1, p0, Lcom/lgt/arm/LGUArmManager;->AID:Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Lcom/lgt/arm/LGUArmManager;->ARMServiceCheck()V

    .line 51
    iget v4, p0, Lcom/lgt/arm/LGUArmManager;->netState:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 52
    sget-object v3, Lcom/lgt/arm/LGUArmManager;->mArmListener:Lcom/lgt/arm/LGUArmListener;

    invoke-interface {v3}, Lcom/lgt/arm/LGUArmListener;->onArmResult()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    invoke-direct {p0}, Lcom/lgt/arm/LGUArmManager;->DisconnectService()V

    .line 65
    const-string v3, "\uc0ac\uc6a9\uad8c\ud55c\uc744 \ud655\uc778\ud560 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4. \ud734\ub300\ud3f0\uc758 \ucee8\ud150\uce20\uad00\ub9ac\uc790\u2192\uc5b4\ud50c\ub9ac\ucf00\uc774\uc158 \uba54\ub274\uc5d0\uc11c com.lgt.arm\uc744 \ub2e4\uc2dc \uc124\uce58\ud574 \uc8fc\uc138\uc694.(14)"

    iput-object v3, p0, Lcom/lgt/arm/LGUArmManager;->resMsg:Ljava/lang/String;

    .line 66
    const/4 v3, 0x2

    iput v3, p0, Lcom/lgt/arm/LGUArmManager;->netState:I

    .line 67
    sget-object v3, Lcom/lgt/arm/LGUArmManager;->mArmListener:Lcom/lgt/arm/LGUArmListener;

    invoke-interface {v3}, Lcom/lgt/arm/LGUArmListener;->onArmResult()V

    goto :goto_0

    .line 56
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/lgt/arm/LGUArmManager;->ctx:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/lgt/arm/ArmInterface;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/lgt/arm/LGUArmManager;->armCon:Lcom/lgt/arm/LGUArmManager$ArmConnection;

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 57
    .local v1, res:Z
    const-string v4, "LGUArmManger"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " bindService ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], AID ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lgt/arm/LGUArmManager;->AID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    if-eqz v1, :cond_1

    move v2, v3

    goto :goto_0
.end method

.method public setArmListener(Lcom/lgt/arm/LGUArmListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 189
    sput-object p1, Lcom/lgt/arm/LGUArmManager;->mArmListener:Lcom/lgt/arm/LGUArmListener;

    .line 190
    return-void
.end method
