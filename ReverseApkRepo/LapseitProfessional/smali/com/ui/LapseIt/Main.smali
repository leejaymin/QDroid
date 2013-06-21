.class public Lcom/ui/LapseIt/Main;
.super Landroid/app/Activity;
.source "Main.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static FULL_VERSION:Z

.field private static forAmazon:Z

.field private static isPro:Z

.field private static lapseItFolder:Ljava/io/File;

.field public static uncaughtHandler:Lui/utils/CustomUncaughtExceptionHandler;

.field private static versionName:Ljava/lang/String;


# instance fields
.field private final delay:I

.field private initTimer:Ljava/util/Timer;

.field private mBillingObserver:Lnet/robotmedia/billing/helper/AbstractBillingObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const-string v0, "3.0"

    sput-object v0, Lcom/ui/LapseIt/Main;->versionName:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ui/LapseIt/Main;->forAmazon:Z

    .line 31
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ui/LapseIt/Main;->isPro:Z

    .line 38
    new-instance v0, Lui/utils/CustomUncaughtExceptionHandler;

    const/4 v1, 0x0

    const-string v2, "http://www.lapseit.com/traces/log3.php"

    invoke-direct {v0, v1, v2}, Lui/utils/CustomUncaughtExceptionHandler;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ui/LapseIt/Main;->uncaughtHandler:Lui/utils/CustomUncaughtExceptionHandler;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    const/16 v0, 0x9c4

    iput v0, p0, Lcom/ui/LapseIt/Main;->delay:I

    .line 27
    return-void
.end method

.method static synthetic access$0()Z
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/ui/LapseIt/Main;->isPro:Z

    return v0
.end method

.method static synthetic access$1()Ljava/io/File;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/ui/LapseIt/Main;->lapseItFolder:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ui/LapseIt/Main;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/ui/LapseIt/Main;->restoreTransactions()V

    return-void
.end method

.method private checkCheck()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 101
    sget-boolean v2, Lcom/ui/LapseIt/Main;->isPro:Z

    if-nez v2, :cond_1

    .line 103
    new-instance v2, Lcom/ui/LapseIt/Main$3;

    invoke-direct {v2, p0}, Lcom/ui/LapseIt/Main$3;-><init>(Lcom/ui/LapseIt/Main;)V

    invoke-static {v2}, Lnet/robotmedia/billing/BillingController;->setConfiguration(Lnet/robotmedia/billing/BillingController$IConfiguration;)V

    .line 116
    new-instance v2, Lcom/ui/LapseIt/Main$4;

    invoke-direct {v2, p0, p0}, Lcom/ui/LapseIt/Main$4;-><init>(Lcom/ui/LapseIt/Main;Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/ui/LapseIt/Main;->mBillingObserver:Lnet/robotmedia/billing/helper/AbstractBillingObserver;

    .line 140
    iget-object v2, p0, Lcom/ui/LapseIt/Main;->mBillingObserver:Lnet/robotmedia/billing/helper/AbstractBillingObserver;

    invoke-static {v2}, Lnet/robotmedia/billing/BillingController;->registerObserver(Lnet/robotmedia/billing/IBillingObserver;)Z

    .line 141
    invoke-static {p0}, Lnet/robotmedia/billing/BillingController;->checkBillingSupported(Landroid/content/Context;)Lnet/robotmedia/billing/BillingController$BillingStatus;

    move-result-object v2

    sget-object v3, Lnet/robotmedia/billing/BillingController$BillingStatus;->SUPPORTED:Lnet/robotmedia/billing/BillingController$BillingStatus;

    invoke-virtual {v2, v3}, Lnet/robotmedia/billing/BillingController$BillingStatus;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-nez v2, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/ui/LapseIt/Main;->restoreTransactions()V

    .line 145
    :cond_0
    const-string v2, "proversion"

    invoke-static {p0, v2}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, fullSettings:Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 148
    sput-boolean v4, Lcom/ui/LapseIt/Main;->FULL_VERSION:Z

    .line 157
    .end local v0           #fullSettings:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 150
    .restart local v0       #fullSettings:Ljava/lang/String;
    :cond_2
    const-string v2, "fullversion"

    invoke-static {p0, v2}, Lnet/robotmedia/billing/BillingController;->isPurchased(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 151
    .local v1, wasPurchased:Z
    if-eqz v1, :cond_1

    .line 152
    const-string v2, "proversion"

    const-string v3, "true"

    invoke-static {p0, v2, v3}, Lcom/ui/LapseIt/settings/SettingsHelper;->updateSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    sput-boolean v4, Lcom/ui/LapseIt/Main;->FULL_VERSION:Z

    goto :goto_0
.end method

.method public static forAmazon()Z
    .locals 1

    .prologue
    .line 213
    sget-boolean v0, Lcom/ui/LapseIt/Main;->forAmazon:Z

    return v0
.end method

.method public static getFlurryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    sget-boolean v0, Lcom/ui/LapseIt/Main;->isPro:Z

    if-eqz v0, :cond_0

    .line 218
    const-string v0, "H3N88RVNI9NX8KPL44XC"

    .line 220
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "QIWUR5Y7V8F6KST9JRDU"

    goto :goto_0
.end method

.method public static isFullVersion()Z
    .locals 1

    .prologue
    .line 197
    sget-boolean v0, Lcom/ui/LapseIt/Main;->isPro:Z

    if-eqz v0, :cond_0

    .line 198
    const/4 v0, 0x1

    .line 200
    :goto_0
    return v0

    :cond_0
    sget-boolean v0, Lcom/ui/LapseIt/Main;->FULL_VERSION:Z

    goto :goto_0
.end method

.method public static isFullVersion(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 181
    sget-boolean v2, Lcom/ui/LapseIt/Main;->isPro:Z

    if-eqz v2, :cond_0

    .line 193
    :goto_0
    return v1

    .line 183
    :cond_0
    sget-boolean v2, Lcom/ui/LapseIt/Main;->FULL_VERSION:Z

    if-nez v2, :cond_2

    .line 184
    const-string v2, "proversion"

    invoke-static {p0, v2}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, fullSettings:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    sput-boolean v1, Lcom/ui/LapseIt/Main;->FULL_VERSION:Z

    goto :goto_0

    .line 188
    :cond_1
    const-string v2, "fullversion"

    invoke-static {p0, v2}, Lnet/robotmedia/billing/BillingController;->isPurchased(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 189
    sput-boolean v1, Lcom/ui/LapseIt/Main;->FULL_VERSION:Z

    goto :goto_0

    .line 193
    .end local v0           #fullSettings:Ljava/lang/String;
    :cond_2
    sget-boolean v1, Lcom/ui/LapseIt/Main;->FULL_VERSION:Z

    goto :goto_0
.end method

.method public static isPro()Z
    .locals 1

    .prologue
    .line 209
    sget-boolean v0, Lcom/ui/LapseIt/Main;->isPro:Z

    return v0
.end method

.method private restoreTransactions()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/ui/LapseIt/Main;->mBillingObserver:Lnet/robotmedia/billing/helper/AbstractBillingObserver;

    invoke-virtual {v0}, Lnet/robotmedia/billing/helper/AbstractBillingObserver;->isTransactionsRestored()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    invoke-static {p0}, Lnet/robotmedia/billing/BillingController;->restoreTransactions(Landroid/content/Context;)V

    .line 178
    :cond_0
    return-void
.end method

.method public static versionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    sget-object v0, Lcom/ui/LapseIt/Main;->versionName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 167
    iget-object v1, p0, Lcom/ui/LapseIt/Main;->initTimer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/ui/LapseIt/Main;->initTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 170
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/ui/LapseIt/Main;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/ui/LapseIt/StartView;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/Main;->startActivity(Landroid/content/Intent;)V

    .line 172
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    sget-object v2, Lcom/ui/LapseIt/Main;->uncaughtHandler:Lui/utils/CustomUncaughtExceptionHandler;

    invoke-static {v2}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 53
    new-instance v2, Ljava/io/File;

    const-string v3, "directory"

    invoke-static {p0, v3}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/ui/LapseIt/Main;->lapseItFolder:Ljava/io/File;

    .line 56
    :try_start_0
    invoke-direct {p0}, Lcom/ui/LapseIt/Main;->checkCheck()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030029

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, contentView:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    invoke-virtual {p0, v0}, Lcom/ui/LapseIt/Main;->setContentView(Landroid/view/View;)V

    .line 65
    const-string v2, "isFirstTime"

    invoke-static {p0, v2}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 66
    sget-object v2, Lcom/ui/LapseIt/Main;->lapseItFolder:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    const-string v2, "Renaming previous installation ..."

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 69
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/ui/LapseIt/Main$1;

    invoke-direct {v3, p0}, Lcom/ui/LapseIt/Main$1;-><init>(Lcom/ui/LapseIt/Main;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 82
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 84
    :cond_0
    const-string v2, "isFirstTime"

    const-string v3, "no"

    invoke-static {p0, v2, v3}, Lcom/ui/LapseIt/settings/SettingsHelper;->updateSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    sget-object v2, Lcom/ui/LapseIt/Main;->lapseItFolder:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 88
    :cond_1
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2, v5}, Ljava/util/Timer;-><init>(Z)V

    iput-object v2, p0, Lcom/ui/LapseIt/Main;->initTimer:Ljava/util/Timer;

    .line 89
    iget-object v2, p0, Lcom/ui/LapseIt/Main;->initTimer:Ljava/util/Timer;

    new-instance v3, Lcom/ui/LapseIt/Main$2;

    invoke-direct {v3, p0}, Lcom/ui/LapseIt/Main$2;-><init>(Lcom/ui/LapseIt/Main;)V

    .line 96
    const-wide/16 v4, 0x9c4

    .line 89
    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 97
    return-void

    .line 57
    .end local v0           #contentView:Landroid/view/View;
    :catch_0
    move-exception v1

    .line 58
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 44
    invoke-static {}, Lcom/ui/LapseIt/Main;->getFlurryId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 160
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 162
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 163
    return-void
.end method
