.class public final Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;
.super Ljava/lang/Object;
.source "AndroidPitSignedLicenseChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;,
        Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$GoogleLicenseCheckerCallback;
    }
.end annotation


# static fields
.field private static final ANDROID_PIT_SIGNEDLICENSING_INTENT:Ljava/lang/String; = "de.androidpit.app.services.ISignedLicenseService"

.field private static final LOG_TAG:Ljava/lang/String; = "AndroidPitSignedLicenseChecker"


# instance fields
.field mAndroidPitLicenseCheckerCallback:Lde/androidpit/licensing/IAndroidPitLicenseCheckerCallback;

.field mAndroidPitLicenseService:Lde/androidpit/app/services/ISignedLicenseService;

.field final mAndroidPitPublicKey:Ljava/lang/String;

.field final mAppPkgName:Ljava/lang/String;

.field mAutoDestroyAfterCheck:Z

.field mCheckLicenseThread:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;

.field mContext:Landroid/content/Context;

.field mDebug:Z

.field private mGoogleLicenseChecker:Lcom/android/vending/licensing/LicenseChecker;

.field private mGoogleLicenseCheckerCallback:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$GoogleLicenseCheckerCallback;

.field final mLicenseServiceMutex:Ljava/lang/String;

.field mValidator:Lde/androidpit/licensing/ILicensingResponseValidator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "appPkgName"
    .parameter "androidPitPublicKey"

    .prologue
    .line 107
    .line 111
    new-instance v0, Lde/androidpit/licensing/AndroidPitLicensingResponseValidator;

    invoke-direct {v0, p2}, Lde/androidpit/licensing/AndroidPitLicensingResponseValidator;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lde/androidpit/licensing/ILicensingResponseValidator;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/licensing/Policy;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "appPkgName"
    .parameter "androidPitPublicKey"
    .parameter "googlePolicy"
    .parameter "googlePublicKey"

    .prologue
    .line 175
    .line 179
    new-instance v4, Lde/androidpit/licensing/AndroidPitLicensingResponseValidator;

    invoke-direct {v4, p2}, Lde/androidpit/licensing/AndroidPitLicensingResponseValidator;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    .line 181
    invoke-direct/range {v0 .. v6}, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lde/androidpit/licensing/ILicensingResponseValidator;Lcom/android/vending/licensing/Policy;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lde/androidpit/licensing/ILicensingResponseValidator;)V
    .locals 3
    .parameter "context"
    .parameter "appPkgName"
    .parameter "androidPitPublicKey"
    .parameter "validator"

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const-string v0, "mutex"

    iput-object v0, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mLicenseServiceMutex:Ljava/lang/String;

    .line 88
    iput-boolean v1, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mDebug:Z

    .line 89
    iput-boolean v1, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mAutoDestroyAfterCheck:Z

    .line 135
    iput-object p1, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mContext:Landroid/content/Context;

    .line 136
    iput-object p2, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mAppPkgName:Ljava/lang/String;

    .line 139
    const-string v0, "\n"

    const-string v1, ""

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 140
    const-string v1, "\r"

    .line 141
    const-string v2, ""

    .line 139
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mAndroidPitPublicKey:Ljava/lang/String;

    .line 143
    iput-object p4, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mValidator:Lde/androidpit/licensing/ILicensingResponseValidator;

    .line 145
    const-string v0, "AndroidPitSignedLicenseChecker"

    const-string v1, "AndroidPitSignedLicenseChecker created (1)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lde/androidpit/licensing/ILicensingResponseValidator;Lcom/android/vending/licensing/Policy;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "appPkgName"
    .parameter "androidPitPublicKey"
    .parameter "validator"
    .parameter "googlePolicy"
    .parameter "googlePublicKey"

    .prologue
    const/4 v1, 0x0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const-string v0, "mutex"

    iput-object v0, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mLicenseServiceMutex:Ljava/lang/String;

    .line 88
    iput-boolean v1, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mDebug:Z

    .line 89
    iput-boolean v1, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mAutoDestroyAfterCheck:Z

    .line 211
    iput-object p1, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mContext:Landroid/content/Context;

    .line 212
    new-instance v0, Lcom/android/vending/licensing/LicenseChecker;

    .line 215
    invoke-direct {v0, p1, p5, p6}, Lcom/android/vending/licensing/LicenseChecker;-><init>(Landroid/content/Context;Lcom/android/vending/licensing/Policy;Ljava/lang/String;)V

    .line 212
    iput-object v0, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mGoogleLicenseChecker:Lcom/android/vending/licensing/LicenseChecker;

    .line 216
    new-instance v0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$GoogleLicenseCheckerCallback;

    invoke-direct {v0, p0}, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$GoogleLicenseCheckerCallback;-><init>(Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;)V

    iput-object v0, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mGoogleLicenseCheckerCallback:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$GoogleLicenseCheckerCallback;

    .line 217
    iput-object p2, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mAppPkgName:Ljava/lang/String;

    .line 220
    const-string v0, "\n"

    const-string v1, ""

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 221
    const-string v1, "\r"

    .line 222
    const-string v2, ""

    .line 220
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mAndroidPitPublicKey:Ljava/lang/String;

    .line 224
    iput-object p4, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mValidator:Lde/androidpit/licensing/ILicensingResponseValidator;

    .line 226
    const-string v0, "AndroidPitSignedLicenseChecker"

    const-string v1, "AndroidPitSignedLicenseChecker created (2)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return-void
.end method


# virtual methods
.method protected androidPitDoCheck()V
    .locals 1

    .prologue
    .line 260
    new-instance v0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;

    invoke-direct {v0, p0}, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;-><init>(Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;)V

    iput-object v0, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mCheckLicenseThread:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;

    .line 261
    iget-object v0, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mCheckLicenseThread:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;

    invoke-virtual {v0}, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;->start()V

    .line 262
    return-void
.end method

.method applicationError(Lde/androidpit/licensing/AndroidPitLicenseCheckCode;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .parameter "code"
    .parameter "msg"
    .parameter "ex"

    .prologue
    .line 319
    const-string v0, "AndroidPitSignedLicenseChecker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "applicationError invoked; code = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";  msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 320
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 319
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    if-eqz p2, :cond_0

    .line 324
    if-eqz p3, :cond_2

    .line 326
    const-string v0, "AndroidPitSignedLicenseChecker"

    invoke-static {v0, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 334
    :cond_0
    :goto_0
    iget-object v0, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mAndroidPitLicenseCheckerCallback:Lde/androidpit/licensing/IAndroidPitLicenseCheckerCallback;

    invoke-interface {v0, p1}, Lde/androidpit/licensing/IAndroidPitLicenseCheckerCallback;->applicationError(Lde/androidpit/licensing/AndroidPitLicenseCheckCode;)V

    .line 336
    iget-boolean v0, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mAutoDestroyAfterCheck:Z

    if-eqz v0, :cond_1

    .line 338
    invoke-virtual {p0}, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->onDestroy()V

    .line 340
    :cond_1
    return-void

    .line 330
    :cond_2
    const-string v0, "AndroidPitSignedLicenseChecker"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkAccess(Lde/androidpit/licensing/IAndroidPitLicenseCheckerCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 239
    iget-object v0, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You\'ve already called onDestroy()."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_0
    iput-object p1, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mAndroidPitLicenseCheckerCallback:Lde/androidpit/licensing/IAndroidPitLicenseCheckerCallback;

    .line 245
    iget-object v0, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mGoogleLicenseChecker:Lcom/android/vending/licensing/LicenseChecker;

    if-eqz v0, :cond_1

    .line 247
    const-string v0, "AndroidPitSignedLicenseChecker"

    const-string v1, "checkAccess invoked; delegating to Google\'s checkAccess..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mGoogleLicenseChecker:Lcom/android/vending/licensing/LicenseChecker;

    iget-object v1, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mGoogleLicenseCheckerCallback:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$GoogleLicenseCheckerCallback;

    invoke-virtual {v0, v1}, Lcom/android/vending/licensing/LicenseChecker;->checkAccess(Lcom/android/vending/licensing/LicenseCheckerCallback;)V

    .line 256
    :goto_0
    return-void

    .line 253
    :cond_1
    const-string v0, "AndroidPitSignedLicenseChecker"

    const-string v1, "checkAccess invoked; checking with AndroidPIT..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {p0}, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->androidPitDoCheck()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 290
    const-string v0, "AndroidPitSignedLicenseChecker"

    const-string v1, "Cleaning up..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mGoogleLicenseChecker:Lcom/android/vending/licensing/LicenseChecker;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mGoogleLicenseChecker:Lcom/android/vending/licensing/LicenseChecker;

    invoke-virtual {v0}, Lcom/android/vending/licensing/LicenseChecker;->onDestroy()V

    .line 295
    iput-object v2, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mGoogleLicenseChecker:Lcom/android/vending/licensing/LicenseChecker;

    .line 298
    :cond_0
    iput-object v2, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mAndroidPitLicenseService:Lde/androidpit/app/services/ISignedLicenseService;

    .line 299
    iput-object v2, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mCheckLicenseThread:Lde/androidpit/licensing/AndroidPitSignedLicenseChecker$CheckLicenseThread;

    .line 300
    iput-object v2, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mAndroidPitLicenseCheckerCallback:Lde/androidpit/licensing/IAndroidPitLicenseCheckerCallback;

    .line 301
    iput-object v2, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mContext:Landroid/content/Context;

    .line 302
    return-void
.end method

.method public setAutoDestroyAfterCheck(Z)V
    .locals 0
    .parameter "autoDestroyAfterCheck"

    .prologue
    .line 282
    iput-boolean p1, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mAutoDestroyAfterCheck:Z

    .line 283
    return-void
.end method

.method public setDebug(Z)V
    .locals 0
    .parameter "debug"

    .prologue
    .line 273
    iput-boolean p1, p0, Lde/androidpit/licensing/AndroidPitSignedLicenseChecker;->mDebug:Z

    .line 274
    return-void
.end method
