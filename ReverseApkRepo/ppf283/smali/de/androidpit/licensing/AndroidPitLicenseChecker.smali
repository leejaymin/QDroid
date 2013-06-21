.class public final Lde/androidpit/licensing/AndroidPitLicenseChecker;
.super Ljava/lang/Object;
.source "AndroidPitLicenseChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/androidpit/licensing/AndroidPitLicenseChecker$CheckLicenseThread;,
        Lde/androidpit/licensing/AndroidPitLicenseChecker$GoogleLicenseCheckerCallback;
    }
.end annotation


# static fields
.field private static final ANDROID_PIT_LICENSING_INTENT:Ljava/lang/String; = "de.androidpit.app.services.ILicenseService"

.field private static final LOG_TAG:Ljava/lang/String; = "AndroidPitLicenseChecker"


# instance fields
.field mAndroidPitLicenseCheckerCallback:Lde/androidpit/licensing/IAndroidPitLicenseCheckerCallback;

.field mAndroidPitLicenseService:Lde/androidpit/app/services/ILicenseService;

.field final mAndroidPitPublicKey:Ljava/lang/String;

.field final mAppPkgName:Ljava/lang/String;

.field mAutoDestroyAfterCheck:Z

.field mCheckLicenseThread:Lde/androidpit/licensing/AndroidPitLicenseChecker$CheckLicenseThread;

.field mContext:Landroid/content/Context;

.field mDebug:Z

.field private mGoogleLicenseChecker:Lcom/android/vending/licensing/LicenseChecker;

.field private mGoogleLicenseCheckerCallback:Lde/androidpit/licensing/AndroidPitLicenseChecker$GoogleLicenseCheckerCallback;

.field final mLicenseServiceMutex:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "appPkgName"
    .parameter "androidPitPublicKey"

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-string v0, "mutex"

    iput-object v0, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mLicenseServiceMutex:Ljava/lang/String;

    .line 86
    iput-boolean v1, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mDebug:Z

    .line 87
    iput-boolean v1, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mAutoDestroyAfterCheck:Z

    .line 105
    iput-object p1, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mContext:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mAppPkgName:Ljava/lang/String;

    .line 109
    const-string v0, "\n"

    const-string v1, ""

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 110
    const-string v1, "\r"

    .line 111
    const-string v2, ""

    .line 109
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mAndroidPitPublicKey:Ljava/lang/String;

    .line 113
    const-string v0, "AndroidPitLicenseChecker"

    const-string v1, "AndroidPitLicenseChecker created (1)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/vending/licensing/Policy;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "appPkgName"
    .parameter "androidPitPublicKey"
    .parameter "googlePolicy"
    .parameter "googlePublicKey"

    .prologue
    const/4 v1, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-string v0, "mutex"

    iput-object v0, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mLicenseServiceMutex:Ljava/lang/String;

    .line 86
    iput-boolean v1, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mDebug:Z

    .line 87
    iput-boolean v1, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mAutoDestroyAfterCheck:Z

    .line 142
    iput-object p1, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mContext:Landroid/content/Context;

    .line 143
    new-instance v0, Lcom/android/vending/licensing/LicenseChecker;

    .line 146
    invoke-direct {v0, p1, p4, p5}, Lcom/android/vending/licensing/LicenseChecker;-><init>(Landroid/content/Context;Lcom/android/vending/licensing/Policy;Ljava/lang/String;)V

    .line 143
    iput-object v0, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mGoogleLicenseChecker:Lcom/android/vending/licensing/LicenseChecker;

    .line 147
    new-instance v0, Lde/androidpit/licensing/AndroidPitLicenseChecker$GoogleLicenseCheckerCallback;

    invoke-direct {v0, p0}, Lde/androidpit/licensing/AndroidPitLicenseChecker$GoogleLicenseCheckerCallback;-><init>(Lde/androidpit/licensing/AndroidPitLicenseChecker;)V

    iput-object v0, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mGoogleLicenseCheckerCallback:Lde/androidpit/licensing/AndroidPitLicenseChecker$GoogleLicenseCheckerCallback;

    .line 148
    iput-object p2, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mAppPkgName:Ljava/lang/String;

    .line 151
    const-string v0, "\n"

    const-string v1, ""

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 152
    const-string v1, "\r"

    .line 153
    const-string v2, ""

    .line 151
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mAndroidPitPublicKey:Ljava/lang/String;

    .line 155
    const-string v0, "AndroidPitLicenseChecker"

    const-string v1, "AndroidPitLicenseChecker created (2)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void
.end method


# virtual methods
.method protected androidPitDoCheck()V
    .locals 1

    .prologue
    .line 188
    new-instance v0, Lde/androidpit/licensing/AndroidPitLicenseChecker$CheckLicenseThread;

    invoke-direct {v0, p0}, Lde/androidpit/licensing/AndroidPitLicenseChecker$CheckLicenseThread;-><init>(Lde/androidpit/licensing/AndroidPitLicenseChecker;)V

    iput-object v0, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mCheckLicenseThread:Lde/androidpit/licensing/AndroidPitLicenseChecker$CheckLicenseThread;

    .line 189
    iget-object v0, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mCheckLicenseThread:Lde/androidpit/licensing/AndroidPitLicenseChecker$CheckLicenseThread;

    invoke-virtual {v0}, Lde/androidpit/licensing/AndroidPitLicenseChecker$CheckLicenseThread;->start()V

    .line 190
    return-void
.end method

.method applicationError(Lde/androidpit/licensing/AndroidPitLicenseCheckCode;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .parameter "code"
    .parameter "msg"
    .parameter "ex"

    .prologue
    .line 247
    const-string v0, "AndroidPitLicenseChecker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "applicationError invoked; code = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";  msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 248
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    if-eqz p2, :cond_0

    .line 252
    if-eqz p3, :cond_2

    .line 254
    const-string v0, "AndroidPitLicenseChecker"

    invoke-static {v0, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    :cond_0
    :goto_0
    iget-object v0, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mAndroidPitLicenseCheckerCallback:Lde/androidpit/licensing/IAndroidPitLicenseCheckerCallback;

    invoke-interface {v0, p1}, Lde/androidpit/licensing/IAndroidPitLicenseCheckerCallback;->applicationError(Lde/androidpit/licensing/AndroidPitLicenseCheckCode;)V

    .line 264
    iget-boolean v0, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mAutoDestroyAfterCheck:Z

    if-eqz v0, :cond_1

    .line 266
    invoke-virtual {p0}, Lde/androidpit/licensing/AndroidPitLicenseChecker;->onDestroy()V

    .line 268
    :cond_1
    return-void

    .line 258
    :cond_2
    const-string v0, "AndroidPitLicenseChecker"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkAccess(Lde/androidpit/licensing/IAndroidPitLicenseCheckerCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 167
    iget-object v0, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You\'ve already called onDestroy()."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    iput-object p1, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mAndroidPitLicenseCheckerCallback:Lde/androidpit/licensing/IAndroidPitLicenseCheckerCallback;

    .line 173
    iget-object v0, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mGoogleLicenseChecker:Lcom/android/vending/licensing/LicenseChecker;

    if-eqz v0, :cond_1

    .line 175
    const-string v0, "AndroidPitLicenseChecker"

    const-string v1, "checkAccess invoked; delegating to Google\'s checkAccess..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mGoogleLicenseChecker:Lcom/android/vending/licensing/LicenseChecker;

    iget-object v1, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mGoogleLicenseCheckerCallback:Lde/androidpit/licensing/AndroidPitLicenseChecker$GoogleLicenseCheckerCallback;

    invoke-virtual {v0, v1}, Lcom/android/vending/licensing/LicenseChecker;->checkAccess(Lcom/android/vending/licensing/LicenseCheckerCallback;)V

    .line 184
    :goto_0
    return-void

    .line 181
    :cond_1
    const-string v0, "AndroidPitLicenseChecker"

    const-string v1, "checkAccess invoked; checking with AndroidPIT..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p0}, Lde/androidpit/licensing/AndroidPitLicenseChecker;->androidPitDoCheck()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 218
    const-string v0, "AndroidPitLicenseChecker"

    const-string v1, "Cleaning up..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mGoogleLicenseChecker:Lcom/android/vending/licensing/LicenseChecker;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mGoogleLicenseChecker:Lcom/android/vending/licensing/LicenseChecker;

    invoke-virtual {v0}, Lcom/android/vending/licensing/LicenseChecker;->onDestroy()V

    .line 223
    iput-object v2, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mGoogleLicenseChecker:Lcom/android/vending/licensing/LicenseChecker;

    .line 226
    :cond_0
    iput-object v2, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mAndroidPitLicenseService:Lde/androidpit/app/services/ILicenseService;

    .line 227
    iput-object v2, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mCheckLicenseThread:Lde/androidpit/licensing/AndroidPitLicenseChecker$CheckLicenseThread;

    .line 228
    iput-object v2, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mAndroidPitLicenseCheckerCallback:Lde/androidpit/licensing/IAndroidPitLicenseCheckerCallback;

    .line 229
    iput-object v2, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mContext:Landroid/content/Context;

    .line 230
    return-void
.end method

.method public setAutoDestroyAfterCheck(Z)V
    .locals 0
    .parameter "autoDestroyAfterCheck"

    .prologue
    .line 210
    iput-boolean p1, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mAutoDestroyAfterCheck:Z

    .line 211
    return-void
.end method

.method public setDebug(Z)V
    .locals 0
    .parameter "debug"

    .prologue
    .line 201
    iput-boolean p1, p0, Lde/androidpit/licensing/AndroidPitLicenseChecker;->mDebug:Z

    .line 202
    return-void
.end method
