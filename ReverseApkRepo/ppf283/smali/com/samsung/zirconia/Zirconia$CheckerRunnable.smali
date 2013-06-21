.class Lcom/samsung/zirconia/Zirconia$CheckerRunnable;
.super Ljava/lang/Object;
.source "Zirconia.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/zirconia/Zirconia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckerRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/zirconia/Zirconia;


# direct methods
.method private constructor <init>(Lcom/samsung/zirconia/Zirconia;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/zirconia/Zirconia;Lcom/samsung/zirconia/Zirconia$CheckerRunnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;-><init>(Lcom/samsung/zirconia/Zirconia;)V

    return-void
.end method


# virtual methods
.method checkLicenseFile()Z
    .locals 3

    .prologue
    .line 316
    iget-object v0, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    #getter for: Lcom/samsung/zirconia/Zirconia;->licenseFilePath:Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/zirconia/Zirconia;->access$9(Lcom/samsung/zirconia/Zirconia;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    #getter for: Lcom/samsung/zirconia/Zirconia;->deviceIMEI:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/zirconia/Zirconia;->access$4(Lcom/samsung/zirconia/Zirconia;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    #getter for: Lcom/samsung/zirconia/Zirconia;->applicationID:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/zirconia/Zirconia;->access$5(Lcom/samsung/zirconia/Zirconia;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/zirconia/NativeInterface;->checkLicenseFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method checkLicenseFilePhase2()Z
    .locals 2

    .prologue
    .line 325
    iget-object v1, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    #getter for: Lcom/samsung/zirconia/Zirconia;->currentActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/samsung/zirconia/Zirconia;->access$3(Lcom/samsung/zirconia/Zirconia;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageCodePath()Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, packageCode:Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    #getter for: Lcom/samsung/zirconia/Zirconia;->licenseFilePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/zirconia/Zirconia;->access$9(Lcom/samsung/zirconia/Zirconia;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/zirconia/NativeInterface;->checkLicenseFile2(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method checkerThreadWorker()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 256
    const/4 v8, 0x0

    .line 257
    .local v8, unlocked:Z
    iget-object v1, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    const/16 v2, 0xb

    #setter for: Lcom/samsung/zirconia/Zirconia;->zirconiaError:I
    invoke-static {v1, v2}, Lcom/samsung/zirconia/Zirconia;->access$0(Lcom/samsung/zirconia/Zirconia;I)V

    .line 259
    invoke-virtual {p0}, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->checkLicenseFile()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 263
    invoke-virtual {p0}, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->checkLicenseFilePhase2()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 264
    iget-object v1, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    #setter for: Lcom/samsung/zirconia/Zirconia;->zirconiaError:I
    invoke-static {v1, v9}, Lcom/samsung/zirconia/Zirconia;->access$0(Lcom/samsung/zirconia/Zirconia;I)V

    .line 265
    const/4 v8, 0x1

    .line 299
    :cond_0
    :goto_0
    if-eqz v8, :cond_4

    .line 300
    iget-object v1, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    #getter for: Lcom/samsung/zirconia/Zirconia;->licenseCheckListener:Lcom/samsung/zirconia/LicenseCheckListener;
    invoke-static {v1}, Lcom/samsung/zirconia/Zirconia;->access$11(Lcom/samsung/zirconia/Zirconia;)Lcom/samsung/zirconia/LicenseCheckListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 301
    iget-object v1, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    #getter for: Lcom/samsung/zirconia/Zirconia;->licenseCheckListener:Lcom/samsung/zirconia/LicenseCheckListener;
    invoke-static {v1}, Lcom/samsung/zirconia/Zirconia;->access$11(Lcom/samsung/zirconia/Zirconia;)Lcom/samsung/zirconia/LicenseCheckListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/zirconia/LicenseCheckListener;->licenseCheckedAsValid()V

    .line 310
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    #setter for: Lcom/samsung/zirconia/Zirconia;->isWorking:Z
    invoke-static {v1, v9}, Lcom/samsung/zirconia/Zirconia;->access$12(Lcom/samsung/zirconia/Zirconia;Z)V

    .line 311
    return-void

    .line 268
    :cond_2
    iget-object v1, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    const/16 v2, 0x52

    #setter for: Lcom/samsung/zirconia/Zirconia;->zirconiaError:I
    invoke-static {v1, v2}, Lcom/samsung/zirconia/Zirconia;->access$0(Lcom/samsung/zirconia/Zirconia;I)V

    .line 269
    iget-object v1, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    const/4 v2, 0x1

    #setter for: Lcom/samsung/zirconia/Zirconia;->isApplicationHacked:Z
    invoke-static {v1, v2}, Lcom/samsung/zirconia/Zirconia;->access$1(Lcom/samsung/zirconia/Zirconia;Z)V

    goto :goto_0

    .line 272
    :cond_3
    iget-object v1, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    #getter for: Lcom/samsung/zirconia/Zirconia;->checkLocalOnly:Z
    invoke-static {v1}, Lcom/samsung/zirconia/Zirconia;->access$2(Lcom/samsung/zirconia/Zirconia;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    #getter for: Lcom/samsung/zirconia/Zirconia;->currentActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/samsung/zirconia/Zirconia;->access$3(Lcom/samsung/zirconia/Zirconia;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageCodePath()Ljava/lang/String;

    move-result-object v7

    .line 277
    .local v7, packageCode:Ljava/lang/String;
    new-instance v0, Lcom/samsung/zirconia/LicenseRetriever;

    iget-object v1, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    #getter for: Lcom/samsung/zirconia/Zirconia;->deviceIMEI:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/zirconia/Zirconia;->access$4(Lcom/samsung/zirconia/Zirconia;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    #getter for: Lcom/samsung/zirconia/Zirconia;->applicationID:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/zirconia/Zirconia;->access$5(Lcom/samsung/zirconia/Zirconia;)Ljava/lang/String;

    move-result-object v2

    .line 278
    iget-object v3, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    #getter for: Lcom/samsung/zirconia/Zirconia;->deviceIMSI:Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/zirconia/Zirconia;->access$6(Lcom/samsung/zirconia/Zirconia;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    #getter for: Lcom/samsung/zirconia/Zirconia;->deviceModel:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/zirconia/Zirconia;->access$7(Lcom/samsung/zirconia/Zirconia;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    #getter for: Lcom/samsung/zirconia/Zirconia;->deviceMIN:Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/zirconia/Zirconia;->access$8(Lcom/samsung/zirconia/Zirconia;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    #getter for: Lcom/samsung/zirconia/Zirconia;->licenseFilePath:Ljava/lang/String;
    invoke-static {v6}, Lcom/samsung/zirconia/Zirconia;->access$9(Lcom/samsung/zirconia/Zirconia;)Ljava/lang/String;

    move-result-object v6

    .line 277
    invoke-direct/range {v0 .. v7}, Lcom/samsung/zirconia/LicenseRetriever;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .local v0, licenseRetriever:Lcom/samsung/zirconia/LicenseRetriever;
    iget-object v1, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    invoke-virtual {v0}, Lcom/samsung/zirconia/LicenseRetriever;->retrieveLicense()I

    move-result v2

    #setter for: Lcom/samsung/zirconia/Zirconia;->zirconiaError:I
    invoke-static {v1, v2}, Lcom/samsung/zirconia/Zirconia;->access$0(Lcom/samsung/zirconia/Zirconia;I)V

    .line 282
    iget-object v1, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    #getter for: Lcom/samsung/zirconia/Zirconia;->zirconiaError:I
    invoke-static {v1}, Lcom/samsung/zirconia/Zirconia;->access$10(Lcom/samsung/zirconia/Zirconia;)I

    move-result v1

    const/16 v2, 0x32

    if-ne v1, v2, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->checkLicenseFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    #setter for: Lcom/samsung/zirconia/Zirconia;->zirconiaError:I
    invoke-static {v1, v9}, Lcom/samsung/zirconia/Zirconia;->access$0(Lcom/samsung/zirconia/Zirconia;I)V

    .line 289
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 305
    .end local v0           #licenseRetriever:Lcom/samsung/zirconia/LicenseRetriever;
    .end local v7           #packageCode:Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    #getter for: Lcom/samsung/zirconia/Zirconia;->licenseCheckListener:Lcom/samsung/zirconia/LicenseCheckListener;
    invoke-static {v1}, Lcom/samsung/zirconia/Zirconia;->access$11(Lcom/samsung/zirconia/Zirconia;)Lcom/samsung/zirconia/LicenseCheckListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 306
    iget-object v1, p0, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->this$0:Lcom/samsung/zirconia/Zirconia;

    #getter for: Lcom/samsung/zirconia/Zirconia;->licenseCheckListener:Lcom/samsung/zirconia/LicenseCheckListener;
    invoke-static {v1}, Lcom/samsung/zirconia/Zirconia;->access$11(Lcom/samsung/zirconia/Zirconia;)Lcom/samsung/zirconia/LicenseCheckListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/zirconia/LicenseCheckListener;->licenseCheckedAsInvalid()V

    goto/16 :goto_1
.end method

.method public run()V
    .locals 0

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/samsung/zirconia/Zirconia$CheckerRunnable;->checkerThreadWorker()V

    .line 253
    return-void
.end method
