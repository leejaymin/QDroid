.class public Lcom/wolfram/android/alpha/activity/LicenseCheck;
.super Lcom/wolfram/android/alpha/activity/Activity_modified;
.source "LicenseCheck.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wolfram/android/alpha/activity/LicenseCheck$MyLicenseCheckerCallback;
    }
.end annotation


# static fields
.field private static final BASE64_PUBLIC_KEY:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAio8jcJsV3/6p1zRAOPn5JaHhY+jQ0hcwRFltti3bm6S4jevUijyw5d1dBci1XR/1jKCPhw47RDAhS95nBiQLkUXIVM9Hi8tY8Vx1kc6XG+JZIuFt4pInn8JyqFhLOmqcHiw3GLwBszqXSIkc6HvvLnI9H2ks2BJUR8khaE5PDsXAhCK0sJalgueoh2evwtK+q/nLRnje6FDL5h46y+/sOEugrsJPaCZyUdqteUSYVTtm49UHqvoDlcRERfDflPyFT28aI1XsnKOC64OF2qZeSp/ytJbKi46lCJRkNDB2YvT3a57/i9XVB3/1j4BoAaDBed2JhPQUTsp7ibFIHdk5SwIDAQAB"

.field public static final DO_QUERY_LICENSE_CHECK:Ljava/lang/String; = "com.wolfram.android.alpha.activity.licensecheck.DO_QUERY_LICENSE_CHECK"

.field private static final SALT:[B

.field private static logger:Ljava/util/logging/Logger;


# instance fields
.field private intent:Landroid/content/Intent;

.field private mChecker:Lcom/google/android/vending/licensing/LicenseChecker;

.field private mLicenseCheckerCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/wolfram/android/alpha/activity/LicenseCheck;->SALT:[B

    .line 166
    const-string v0, "com.wolfram.android.alpha.activity.LicenseCheck"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/wolfram/android/alpha/activity/LicenseCheck;->logger:Ljava/util/logging/Logger;

    return-void

    .line 87
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

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/wolfram/android/alpha/activity/Activity_modified;-><init>()V

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/wolfram/android/alpha/activity/LicenseCheck;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/wolfram/android/alpha/activity/LicenseCheck;->startMainActivity()V

    return-void
.end method

.method private doCheck()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/LicenseCheck;->mChecker:Lcom/google/android/vending/licensing/LicenseChecker;

    iget-object v1, p0, Lcom/wolfram/android/alpha/activity/LicenseCheck;->mLicenseCheckerCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    invoke-virtual {v0, v1}, Lcom/google/android/vending/licensing/LicenseChecker;->checkAccess(Lcom/google/android/vending/licensing/LicenseCheckerCallback;)V

    .line 102
    return-void
.end method

.method private startMainActivity()V
    .locals 3

    .prologue
    .line 170
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wolfram/android/alpha/activity/WolframAlpha;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    .local v0, new_intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/wolfram/android/alpha/activity/LicenseCheck;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.wolfram.android.alpha.activity.licensecheck.DO_QUERY_LICENSE_CHECK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.wolfram.android.alpha.activity.WolframAlpha.LICENSE_CHECK_ACTION_DO_QUERY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    :goto_0
    invoke-virtual {p0, v0}, Lcom/wolfram/android/alpha/activity/LicenseCheck;->startActivity(Landroid/content/Intent;)V

    .line 174
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/LicenseCheck;->finish()V

    .line 175
    return-void

    .line 172
    :cond_0
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/wolfram/android/alpha/activity/Activity_modified;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/LicenseCheck;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, deviceId:Ljava/lang/String;
    new-instance v1, Lcom/wolfram/android/alpha/activity/LicenseCheck$MyLicenseCheckerCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/wolfram/android/alpha/activity/LicenseCheck$MyLicenseCheckerCallback;-><init>(Lcom/wolfram/android/alpha/activity/LicenseCheck;Lcom/wolfram/android/alpha/activity/LicenseCheck$1;)V

    iput-object v1, p0, Lcom/wolfram/android/alpha/activity/LicenseCheck;->mLicenseCheckerCallback:Lcom/google/android/vending/licensing/LicenseCheckerCallback;

    .line 117
    new-instance v1, Lcom/google/android/vending/licensing/LicenseChecker;

    new-instance v2, Lcom/google/android/vending/licensing/ServerManagedPolicy;

    new-instance v3, Lcom/google/android/vending/licensing/AESObfuscator;

    sget-object v4, Lcom/wolfram/android/alpha/activity/LicenseCheck;->SALT:[B

    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/LicenseCheck;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0}, Lcom/google/android/vending/licensing/AESObfuscator;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, p0, v3}, Lcom/google/android/vending/licensing/ServerManagedPolicy;-><init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Obfuscator;)V

    const-string v3, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAio8jcJsV3/6p1zRAOPn5JaHhY+jQ0hcwRFltti3bm6S4jevUijyw5d1dBci1XR/1jKCPhw47RDAhS95nBiQLkUXIVM9Hi8tY8Vx1kc6XG+JZIuFt4pInn8JyqFhLOmqcHiw3GLwBszqXSIkc6HvvLnI9H2ks2BJUR8khaE5PDsXAhCK0sJalgueoh2evwtK+q/nLRnje6FDL5h46y+/sOEugrsJPaCZyUdqteUSYVTtm49UHqvoDlcRERfDflPyFT28aI1XsnKOC64OF2qZeSp/ytJbKi46lCJRkNDB2YvT3a57/i9XVB3/1j4BoAaDBed2JhPQUTsp7ibFIHdk5SwIDAQAB"

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/vending/licensing/LicenseChecker;-><init>(Landroid/content/Context;Lcom/google/android/vending/licensing/Policy;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/wolfram/android/alpha/activity/LicenseCheck;->mChecker:Lcom/google/android/vending/licensing/LicenseChecker;

    .line 119
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/LicenseCheck;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/wolfram/android/alpha/activity/LicenseCheck;->intent:Landroid/content/Intent;

    .line 122
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->isOnline()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/wolfram/android/alpha/activity/LicenseCheck;->doCheck()V

    .line 129
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-static {}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->getApplication()Lcom/wolfram/android/alpha/WolframAlphaApplication;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/wolfram/android/alpha/WolframAlphaApplication;->setLicenseChecked(Z)V

    .line 127
    invoke-virtual {p0}, Lcom/wolfram/android/alpha/activity/LicenseCheck;->finish()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    .line 134
    new-instance v2, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;

    invoke-direct {v2, p0}, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "Application Not Licensed"

    invoke-virtual {v2, v3}, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/wolfram/android/alpha/view/CustomDialog$Builder;

    move-result-object v2

    const-string v3, "This Wolfram|Alpha app has not been licensed. Please login to the phone using correct credentials or purchase it from the Android Market."

    invoke-virtual {v2, v3}, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/wolfram/android/alpha/view/CustomDialog$Builder;

    move-result-object v2

    const-string v3, "Buy App"

    new-instance v4, Lcom/wolfram/android/alpha/activity/LicenseCheck$2;

    invoke-direct {v4, p0}, Lcom/wolfram/android/alpha/activity/LicenseCheck$2;-><init>(Lcom/wolfram/android/alpha/activity/LicenseCheck;)V

    invoke-virtual {v2, v3, v4}, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/wolfram/android/alpha/view/CustomDialog$Builder;

    move-result-object v2

    const-string v3, "Exit"

    new-instance v4, Lcom/wolfram/android/alpha/activity/LicenseCheck$1;

    invoke-direct {v4, p0}, Lcom/wolfram/android/alpha/activity/LicenseCheck$1;-><init>(Lcom/wolfram/android/alpha/activity/LicenseCheck;)V

    invoke-virtual {v2, v3, v4}, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/wolfram/android/alpha/view/CustomDialog$Builder;

    move-result-object v0

    .line 156
    .local v0, customBuilder:Lcom/wolfram/android/alpha/view/CustomDialog$Builder;
    invoke-virtual {v0}, Lcom/wolfram/android/alpha/view/CustomDialog$Builder;->create()Lcom/wolfram/android/alpha/view/CustomDialog;

    move-result-object v1

    .line 157
    .local v1, dialog:Landroid/app/Dialog;
    return-object v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 162
    invoke-super {p0}, Lcom/wolfram/android/alpha/activity/Activity_modified;->onDestroy()V

    .line 163
    iget-object v0, p0, Lcom/wolfram/android/alpha/activity/LicenseCheck;->mChecker:Lcom/google/android/vending/licensing/LicenseChecker;

    invoke-virtual {v0}, Lcom/google/android/vending/licensing/LicenseChecker;->onDestroy()V

    .line 164
    return-void
.end method

.method public toast(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 179
    return-void
.end method
