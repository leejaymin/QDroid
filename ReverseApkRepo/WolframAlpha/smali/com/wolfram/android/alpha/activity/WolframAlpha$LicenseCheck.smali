.class Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;
.super Ljava/lang/Object;
.source "WolframAlpha.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wolfram/android/alpha/activity/WolframAlpha;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LicenseCheck"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck$MyLicenseCheckerCallback;
    }
.end annotation


# instance fields
.field private BASE64_PUBLIC_KEY:Ljava/lang/String;

.field private SALT:[B

.field WolframAlpha:Landroid/content/Context;

.field private mLicenseCheckerCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

.field final synthetic this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;


# direct methods
.method private constructor <init>(Lcom/wolfram/android/alpha/activity/WolframAlpha;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter "WolframAlpha"

    .prologue
    .line 285
    iput-object p1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;->this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    const-string v1, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAio8jcJsV3/6p1zRAOPn5JaHhY+jQ0hcwRFltti3bm6S4jevUijyw5d1dBci1XR/1jKCPhw47RDAhS95nBiQLkUXIVM9Hi8tY8Vx1kc6XG+JZIuFt4pInn8JyqFhLOmqcHiw3GLwBszqXSIkc6HvvLnI9H2ks2BJUR8khaE5PDsXAhCK0sJalgueoh2evwtK+q/nLRnje6FDL5h46y+/sOEugrsJPaCZyUdqteUSYVTtm49UHqvoDlcRERfDflPyFT28aI1XsnKOC64OF2qZeSp/ytJbKi46lCJRkNDB2YvT3a57/i9XVB3/1j4BoAaDBed2JhPQUTsp7ibFIHdk5SwIDAQAB"

    iput-object v1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;->BASE64_PUBLIC_KEY:Ljava/lang/String;

    .line 268
    const/16 v1, 0x14

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;->SALT:[B

    .line 287
    iput-object p2, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;->WolframAlpha:Landroid/content/Context;

    .line 292
    invoke-virtual {p1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, deviceId:Ljava/lang/String;
    new-instance v1, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck$MyLicenseCheckerCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck$MyLicenseCheckerCallback;-><init>(Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;Lcom/wolfram/android/alpha/activity/WolframAlpha$1;)V

    iput-object v1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;->mLicenseCheckerCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    .line 301
    new-instance v1, Lcom/google/android/vending/licensing/LicenseChecker;

    new-instance v2, Lcom/google/android/vending/licensing/ServerManagedPolicy;

    new-instance v3, Lcom/google/android/vending/licensing/AESObfuscator;

    iget-object v4, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;->SALT:[B

    invoke-virtual {p1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0}, Lcom/google/android/vending/licensing/AESObfuscator;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, p2, v3}, Lcom/google/android/vending/licensing/ServerManagedPolicy;-><init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Obfuscator;)V

    iget-object v3, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;->BASE64_PUBLIC_KEY:Ljava/lang/String;

    invoke-direct {v1, p2, v2, v3}, Lcom/google/android/vending/licensing/LicenseChecker;-><init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Policy;Ljava/lang/String;)V

    #setter for: Lcom/wolfram/android/alpha/activity/WolframAlpha;->mChecker:Lcom/google/android/vending/licensing/LicenseChecker;
    invoke-static {p1, v1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->access$002(Lcom/wolfram/android/alpha/activity/WolframAlpha;Lcom/google/android/vending/licensing/LicenseChecker;)Lcom/google/android/vending/licensing/LicenseChecker;

    .line 308
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isOnline()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    invoke-direct {p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;->doCheck()V

    .line 324
    :goto_0
    return-void

    .line 313
    :cond_0
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setLicenseChecked(Z)V

    .line 320
    invoke-virtual {p1}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->finish()V

    goto :goto_0

    .line 268
    :array_0
    .array-data 0x1
        0xe7t
        0x32t
        0x14t
        0x9bt
        0xfft
        0xb5t
        0x2ct
        0x31t
        0xc3t
        0x26t
        0xcbt
        0x15t
        0xc7t
        0xe8t
        0x3et
        0x63t
        0xf1t
        0xe7t
        0x2dt
        0x61t
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/wolfram/android/alpha/activity/WolframAlpha;Landroid/content/Context;Lcom/wolfram/android/alpha/activity/WolframAlpha$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 264
    invoke-direct {p0, p1, p2}, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;-><init>(Lcom/wolfram/android/alpha/activity/WolframAlpha;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;->doCheck()V

    return-void
.end method

.method static synthetic access$500(Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;->displayDialog(Z)V

    return-void
.end method

.method private displayDialog(Z)V
    .locals 2
    .parameter "showRetry"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;->this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    #getter for: Lcom/wolfram/android/alpha/activity/WolframAlpha;->mainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->access$300(Lcom/wolfram/android/alpha/activity/WolframAlpha;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck$3;

    invoke-direct {v1, p0, p1}, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck$3;-><init>(Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 368
    return-void
.end method

.method private doCheck()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;->this$0:Lcom/wolfram/android/alpha/activity/WolframAlpha;

    #getter for: Lcom/wolfram/android/alpha/activity/WolframAlpha;->mChecker:Lcom/google/android/vending/licensing/LicenseChecker;
    invoke-static {v0}, Lcom/wolfram/android/alpha/activity/WolframAlpha;->access$000(Lcom/wolfram/android/alpha/activity/WolframAlpha;)Lcom/google/android/vending/licensing/LicenseChecker;

    move-result-object v0

    iget-object v1, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;->mLicenseCheckerCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    invoke-virtual {v0, v1}, Lcom/google/android/vending/licensing/LicenseChecker;->checkAccess(Lcom/google/android/vending/licensing/LicenseCheckerCallback;)V

    .line 283
    return-void
.end method


# virtual methods
.method protected showDialog(I)V
    .locals 6
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    .line 327
    if-ne p1, v3, :cond_0

    move v0, v3

    .line 329
    .local v0, bRetry:Z
    :goto_0
    new-instance v3, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;

    iget-object v4, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;->WolframAlpha:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c0037

    invoke-virtual {v3, v4}, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->setTitle(I)Lcom/wolfram/android/alpha/view/CustomDialog$Builder;

    move-result-object v3

    if-eqz v0, :cond_1

    const v4, 0x7f0c0038

    :goto_1
    invoke-virtual {v3, v4}, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->setMessage(I)Lcom/wolfram/android/alpha/view/CustomDialog$Builder;

    move-result-object v3

    if-eqz v0, :cond_2

    const v4, 0x7f0c003b

    :goto_2
    new-instance v5, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck$2;

    invoke-direct {v5, p0, v0}, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck$2;-><init>(Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;Z)V

    invoke-virtual {v3, v4, v5}, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/wolfram/android/alpha/view/CustomDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c003c

    new-instance v5, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck$1;

    invoke-direct {v5, p0}, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck$1;-><init>(Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;)V

    invoke-virtual {v3, v4, v5}, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/wolfram/android/alpha/view/CustomDialog$Builder;

    move-result-object v1

    .line 354
    .local v1, customBuilder:Lcom/wolfram/android/alpha/view/CustomDialog$Builder;
    invoke-virtual {v1}, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->create()Lcom/wolfram/android/alpha/view/CustomDialog;

    move-result-object v2

    .line 355
    .local v2, dialog:Landroid/app/Dialog;
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 356
    return-void

    .line 327
    .end local v0           #bRetry:Z
    .end local v1           #customBuilder:Lcom/wolfram/android/alpha/view/CustomDialog$Builder;
    .end local v2           #dialog:Landroid/app/Dialog;
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 329
    .restart local v0       #bRetry:Z
    :cond_1
    const v4, 0x7f0c0039

    goto :goto_1

    :cond_2
    const v4, 0x7f0c003a

    goto :goto_2
.end method

.method public toast(Ljava/lang/String;)V
    .locals 2
    .parameter "string"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/WolframAlpha$LicenseCheck;->WolframAlpha:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 360
    return-void
.end method
