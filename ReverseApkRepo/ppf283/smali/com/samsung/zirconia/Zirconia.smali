.class public Lcom/samsung/zirconia/Zirconia;
.super Ljava/lang/Object;
.source "Zirconia.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/zirconia/Zirconia$CheckerRunnable;
    }
.end annotation


# static fields
.field public static final EZIRCONIA_APPLICATION_MODIFIED:I = 0x52

.field public static final EZIRCONIA_CANNOT_CHECK:I = 0x1f

.field public static final EZIRCONIA_CLIENT_MISMATCH:I = 0x15

.field public static final EZIRCONIA_INVALID_VALUE:I = 0x17

.field public static final EZIRCONIA_KEY_CREATION_FAILED:I = 0x51

.field public static final EZIRCONIA_LICENSE_MISMATCH:I = 0x32

.field public static final EZIRCONIA_NOT_PURCHASED:I = 0xb

.field public static final EZIRCONIA_RECEIVE_FAILED:I = 0x3d

.field public static final EZIRCONIA_SEND_FAILED:I = 0x3e

.field public static final EZIRCONIA_SERVER_MISMATCH:I = 0x47

.field public static final EZIRCONIA_SUCCESS:I = 0x0

.field public static final EZIRCONIA_VERSION_MISMATCH:I = 0x16


# instance fields
.field private applicationID:Ljava/lang/String;

.field private checkLocalOnly:Z

.field private currentActivity:Landroid/app/Activity;

.field private deviceIMEI:Ljava/lang/String;

.field private deviceIMSI:Ljava/lang/String;

.field private deviceMIN:Ljava/lang/String;

.field private deviceModel:Ljava/lang/String;

.field private isApplicationHacked:Z

.field private isEmulator:Z

.field private isWorking:Z

.field private licenseCheckListener:Lcom/samsung/zirconia/LicenseCheckListener;

.field private licenseFilePath:Ljava/lang/String;

.field private threadPriority:I

.field private zirconiaError:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6
    .parameter "activity"

    .prologue
    const/4 v5, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/samsung/zirconia/Zirconia;->currentActivity:Landroid/app/Activity;

    .line 75
    new-instance v0, Lcom/samsung/zirconia/DevInfoRetriever;

    iget-object v3, p0, Lcom/samsung/zirconia/Zirconia;->currentActivity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Lcom/samsung/zirconia/DevInfoRetriever;-><init>(Landroid/app/Activity;)V

    .line 77
    .local v0, devInfoRetriever:Lcom/samsung/zirconia/DevInfoRetriever;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/zirconia/Zirconia;->licenseCheckListener:Lcom/samsung/zirconia/LicenseCheckListener;

    .line 78
    invoke-virtual {v0}, Lcom/samsung/zirconia/DevInfoRetriever;->isEmulator()Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/zirconia/Zirconia;->isEmulator:Z

    .line 79
    iput-boolean v5, p0, Lcom/samsung/zirconia/Zirconia;->isApplicationHacked:Z

    .line 80
    const/4 v3, 0x5

    iput v3, p0, Lcom/samsung/zirconia/Zirconia;->threadPriority:I

    .line 81
    iput v5, p0, Lcom/samsung/zirconia/Zirconia;->zirconiaError:I

    .line 82
    iput-boolean v5, p0, Lcom/samsung/zirconia/Zirconia;->checkLocalOnly:Z

    .line 83
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/zirconia/Zirconia;->applicationID:Ljava/lang/String;

    .line 84
    invoke-virtual {v0}, Lcom/samsung/zirconia/DevInfoRetriever;->getIMEI()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/zirconia/Zirconia;->deviceIMEI:Ljava/lang/String;

    .line 85
    invoke-virtual {v0}, Lcom/samsung/zirconia/DevInfoRetriever;->getIMSI()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/zirconia/Zirconia;->deviceIMSI:Ljava/lang/String;

    .line 86
    invoke-virtual {v0}, Lcom/samsung/zirconia/DevInfoRetriever;->getModel()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/zirconia/Zirconia;->deviceModel:Ljava/lang/String;

    .line 87
    invoke-virtual {v0}, Lcom/samsung/zirconia/DevInfoRetriever;->getMIN()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/zirconia/Zirconia;->deviceMIN:Ljava/lang/String;

    .line 89
    const-string v3, "zirconia"

    invoke-virtual {p1, v3, v5}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 90
    .local v1, fileNewDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, newDir:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "zirconia.dat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/zirconia/Zirconia;->licenseFilePath:Ljava/lang/String;

    .line 93
    iput-boolean v5, p0, Lcom/samsung/zirconia/Zirconia;->isWorking:Z

    .line 94
    return-void
.end method

.method static synthetic access$0(Lcom/samsung/zirconia/Zirconia;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 240
    iput p1, p0, Lcom/samsung/zirconia/Zirconia;->zirconiaError:I

    return-void
.end method

.method static synthetic access$1(Lcom/samsung/zirconia/Zirconia;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 238
    iput-boolean p1, p0, Lcom/samsung/zirconia/Zirconia;->isApplicationHacked:Z

    return-void
.end method

.method static synthetic access$10(Lcom/samsung/zirconia/Zirconia;)I
    .locals 1
    .parameter

    .prologue
    .line 240
    iget v0, p0, Lcom/samsung/zirconia/Zirconia;->zirconiaError:I

    return v0
.end method

.method static synthetic access$11(Lcom/samsung/zirconia/Zirconia;)Lcom/samsung/zirconia/LicenseCheckListener;
    .locals 1
    .parameter

    .prologue
    .line 236
    iget-object v0, p0, Lcom/samsung/zirconia/Zirconia;->licenseCheckListener:Lcom/samsung/zirconia/LicenseCheckListener;

    return-object v0
.end method

.method static synthetic access$12(Lcom/samsung/zirconia/Zirconia;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 248
    iput-boolean p1, p0, Lcom/samsung/zirconia/Zirconia;->isWorking:Z

    return-void
.end method

.method static synthetic access$2(Lcom/samsung/zirconia/Zirconia;)Z
    .locals 1
    .parameter

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/samsung/zirconia/Zirconia;->checkLocalOnly:Z

    return v0
.end method

.method static synthetic access$3(Lcom/samsung/zirconia/Zirconia;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 235
    iget-object v0, p0, Lcom/samsung/zirconia/Zirconia;->currentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$4(Lcom/samsung/zirconia/Zirconia;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 243
    iget-object v0, p0, Lcom/samsung/zirconia/Zirconia;->deviceIMEI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/samsung/zirconia/Zirconia;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 242
    iget-object v0, p0, Lcom/samsung/zirconia/Zirconia;->applicationID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/samsung/zirconia/Zirconia;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 244
    iget-object v0, p0, Lcom/samsung/zirconia/Zirconia;->deviceIMSI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/samsung/zirconia/Zirconia;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Lcom/samsung/zirconia/Zirconia;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/samsung/zirconia/Zirconia;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 246
    iget-object v0, p0, Lcom/samsung/zirconia/Zirconia;->deviceMIN:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/samsung/zirconia/Zirconia;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 247
    iget-object v0, p0, Lcom/samsung/zirconia/Zirconia;->licenseFilePath:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public checkLicense(ZZ)V
    .locals 3
    .parameter "checkLocalOnly"
    .parameter "dontUseThread"

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/samsung/zirconia/Zirconia;->isWorking()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    :goto_0
    return-void

    .line 170
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/zirconia/Zirconia;->isWorking:Z

    .line 171
    iput-boolean p1, p0, Lcom/samsung/zirconia/Zirconia;->checkLocalOnly:Z

    .line 173
    new-instance v0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;-><init>(Lcom/samsung/zirconia/Zirconia;Lcom/samsung/zirconia/Zirconia$CheckerRunnable;)V

    .line 175
    .local v0, checkerRunnable:Lcom/samsung/zirconia/Zirconia$CheckerRunnable;
    if-eqz p2, :cond_1

    .line 176
    invoke-virtual {v0}, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->run()V

    goto :goto_0

    .line 179
    :cond_1
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 180
    .local v1, checkerThread:Ljava/lang/Thread;
    iget v2, p0, Lcom/samsung/zirconia/Zirconia;->threadPriority:I

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 181
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public deleteLicense()Z
    .locals 3

    .prologue
    .line 192
    const/4 v1, 0x0

    .line 193
    .local v1, isSuccess:Z
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/zirconia/Zirconia;->licenseFilePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 198
    :cond_0
    return v1
.end method

.method public doVariablesTest()V
    .locals 3

    .prologue
    .line 346
    const-string v0, "Zirconia"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isEmulator: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/zirconia/Zirconia;->isEmulator:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const-string v0, "Zirconia"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isApplicationHacked: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/zirconia/Zirconia;->isApplicationHacked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const-string v0, "Zirconia"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "threadPriority :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/zirconia/Zirconia;->threadPriority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    const-string v0, "Zirconia"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "zirconiaError :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/zirconia/Zirconia;->zirconiaError:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const-string v0, "Zirconia"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkLocalOnly :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/zirconia/Zirconia;->checkLocalOnly:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const-string v0, "Zirconia"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "applicationID :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/zirconia/Zirconia;->applicationID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const-string v0, "Zirconia"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deviceIMEI :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/zirconia/Zirconia;->deviceIMEI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const-string v0, "Zirconia"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deviceIMSI :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/zirconia/Zirconia;->deviceIMSI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const-string v0, "Zirconia"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deviceModel :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/zirconia/Zirconia;->deviceModel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const-string v0, "Zirconia"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deviceMIN :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/zirconia/Zirconia;->deviceMIN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const-string v0, "Zirconia"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "licenseFilePath :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/zirconia/Zirconia;->licenseFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    return-void
.end method

.method public getError()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/samsung/zirconia/Zirconia;->zirconiaError:I

    return v0
.end method

.method public isWorking()Z
    .locals 1

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/samsung/zirconia/Zirconia;->isWorking:Z

    return v0
.end method

.method public setBogusIMEI(Ljava/lang/String;)V
    .locals 1
    .parameter "bogusIMEI"

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/samsung/zirconia/Zirconia;->isEmulator:Z

    if-eqz v0, :cond_0

    .line 137
    iput-object p1, p0, Lcom/samsung/zirconia/Zirconia;->deviceIMEI:Ljava/lang/String;

    .line 145
    :cond_0
    return-void
.end method

.method public setLicenseCheckListener(Lcom/samsung/zirconia/LicenseCheckListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/samsung/zirconia/Zirconia;->licenseCheckListener:Lcom/samsung/zirconia/LicenseCheckListener;

    .line 108
    return-void
.end method

.method public setThreadPriority(I)V
    .locals 1
    .parameter "newPriority"

    .prologue
    .line 116
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 117
    const/4 p1, 0x1

    .line 118
    :cond_0
    const/16 v0, 0xa

    if-ge p1, v0, :cond_1

    .line 119
    const/4 p1, 0x1

    .line 121
    :cond_1
    iput p1, p0, Lcom/samsung/zirconia/Zirconia;->threadPriority:I

    .line 124
    return-void
.end method

.method public version()Lcom/samsung/zirconia/ZirconiaVersion;
    .locals 4

    .prologue
    .line 228
    new-instance v0, Lcom/samsung/zirconia/ZirconiaVersion;

    .line 229
    const/4 v1, 0x1

    .line 230
    const/16 v2, 0x78

    .line 231
    const/4 v3, 0x0

    .line 228
    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/zirconia/ZirconiaVersion;-><init>(III)V

    return-object v0
.end method
