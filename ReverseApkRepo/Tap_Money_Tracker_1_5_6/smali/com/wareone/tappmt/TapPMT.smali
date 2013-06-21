.class public Lcom/wareone/tappmt/TapPMT;
.super Landroid/app/Activity;
.source "TapPMT.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wareone/tappmt/TapPMT$TransactionAdapter;
    }
.end annotation


# static fields
.field private static final GET_ACCOUNT_REQUEST:I = 0x1

.field private static final NEW_TRANSACTION:I = 0x2

.field private static final TAG:Ljava/lang/String; = null

.field private static final ZEROES:Ljava/lang/String; = "000000000000"


# instance fields
.field private final TRANS_MODE:[I

.field private curDate:Ljava/util/Calendar;

.field private handler:Landroid/os/Handler;

.field private lastUpdateTime:Ljava/util/Date;

.field private m_SyncThread:Ljava/lang/Thread;

.field private m_account:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_actions:[Ljava/lang/String;

.field private m_adapter:Lcom/wareone/tappmt/TapPMT$TransactionAdapter;

.field private m_data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

.field private m_dlg:Landroid/app/ProgressDialog;

.field private m_due:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_due_adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_due_index:I

.field private m_filter_account:J

.field private m_group:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_id:J

.field private m_nf:Ljava/text/NumberFormat;

.field private m_range:[Ljava/lang/String;

.field private m_real_account:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_remote_id:J

.field private m_sm:Landroid/hardware/SensorManager;

.field private m_sort:Ljava/lang/String;

.field private m_templates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private previousAcceleration:F

.field private shak_cnt:I

.field private show_me:Z

.field private velocityFinal:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const-class v0, Lcom/wareone/tappmt/TapPMT;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wareone/tappmt/TapPMT;->TAG:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 85
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 1769
    new-instance v0, Lcom/wareone/tappmt/TapPMT$1;

    invoke-direct {v0, p0}, Lcom/wareone/tappmt/TapPMT$1;-><init>(Lcom/wareone/tappmt/TapPMT;)V

    iput-object v0, p0, Lcom/wareone/tappmt/TapPMT;->handler:Landroid/os/Handler;

    .line 1848
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wareone/tappmt/TapPMT;->m_data:Ljava/util/List;

    .line 1849
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wareone/tappmt/TapPMT;->m_account:Ljava/util/List;

    .line 1850
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wareone/tappmt/TapPMT;->m_real_account:Ljava/util/List;

    .line 1851
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wareone/tappmt/TapPMT;->m_templates:Ljava/util/List;

    .line 1852
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wareone/tappmt/TapPMT;->m_group:Ljava/util/List;

    .line 1853
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wareone/tappmt/TapPMT;->m_due:Ljava/util/List;

    .line 1855
    iput-wide v3, p0, Lcom/wareone/tappmt/TapPMT;->m_id:J

    iput-wide v3, p0, Lcom/wareone/tappmt/TapPMT;->m_remote_id:J

    .line 1856
    iput v2, p0, Lcom/wareone/tappmt/TapPMT;->m_due_index:I

    .line 1857
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, -0x1

    aput v1, v0, v2

    aput v6, v0, v6

    iput-object v0, p0, Lcom/wareone/tappmt/TapPMT;->TRANS_MODE:[I

    .line 1858
    iput-object v7, p0, Lcom/wareone/tappmt/TapPMT;->m_sort:Ljava/lang/String;

    .line 1859
    iput-wide v3, p0, Lcom/wareone/tappmt/TapPMT;->m_filter_account:J

    .line 1860
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/wareone/tappmt/TapPMT;->m_range:[Ljava/lang/String;

    .line 1865
    iput-boolean v2, p0, Lcom/wareone/tappmt/TapPMT;->show_me:Z

    .line 1868
    iput v5, p0, Lcom/wareone/tappmt/TapPMT;->velocityFinal:F

    .line 1869
    iput v5, p0, Lcom/wareone/tappmt/TapPMT;->previousAcceleration:F

    .line 1870
    iput v2, p0, Lcom/wareone/tappmt/TapPMT;->shak_cnt:I

    .line 1873
    iput-object v7, p0, Lcom/wareone/tappmt/TapPMT;->m_SyncThread:Ljava/lang/Thread;

    .line 85
    return-void
.end method

.method private _agreement()V
    .locals 6

    .prologue
    .line 1428
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/wareone/tappmt/TapPMT;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1429
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v3, 0x7f030045

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1431
    .local v1, view:Landroid/view/View;
    const v3, 0x7f0c00c0

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    .line 1432
    .local v2, wv:Landroid/webkit/WebView;
    const-string v3, "file:///android_asset/agreement.htm"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1434
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1435
    const v4, 0x7f090086

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1436
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1437
    const v4, 0x7f090054

    new-instance v5, Lcom/wareone/tappmt/TapPMT$25;

    invoke-direct {v5, p0}, Lcom/wareone/tappmt/TapPMT$25;-><init>(Lcom/wareone/tappmt/TapPMT;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1448
    const v4, 0x7f090055

    new-instance v5, Lcom/wareone/tappmt/TapPMT$26;

    invoke-direct {v5, p0}, Lcom/wareone/tappmt/TapPMT$26;-><init>(Lcom/wareone/tappmt/TapPMT;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1457
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1459
    return-void
.end method

.method private _checkAccount()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1405
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/wareone/tappmt/TapPMT;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1406
    .local v0, mConnMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_0

    .line 1407
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_1

    .line 1409
    :cond_0
    sget-object v2, Lcom/wareone/tappmt/TapPMT;->TAG:Ljava/lang/String;

    const-string v3, "show progress"

    invoke-static {v2, v3}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1410
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/wareone/tappmt/TapPMT;->m_dlg:Landroid/app/ProgressDialog;

    .line 1411
    iget-object v2, p0, Lcom/wareone/tappmt/TapPMT;->m_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/wareone/tappmt/TapPMT;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09007c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1412
    iget-object v2, p0, Lcom/wareone/tappmt/TapPMT;->m_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/wareone/tappmt/TapPMT;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900b9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1413
    iget-object v2, p0, Lcom/wareone/tappmt/TapPMT;->m_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1414
    iget-object v2, p0, Lcom/wareone/tappmt/TapPMT;->m_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1415
    iget-object v2, p0, Lcom/wareone/tappmt/TapPMT;->m_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 1417
    sget-object v2, Lcom/wareone/tappmt/TapPMT;->TAG:Ljava/lang/String;

    const-string v3, "doSync"

    invoke-static {v2, v3}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/wareone/tappmt/SyncRunner;

    iget-object v3, p0, Lcom/wareone/tappmt/TapPMT;->handler:Landroid/os/Handler;

    const/16 v4, 0x1771

    invoke-direct {v2, p0, v3, v4}, Lcom/wareone/tappmt/SyncRunner;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1419
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1425
    .end local v1           #thread:Ljava/lang/Thread;
    :goto_0
    return-void

    .line 1422
    :cond_1
    const v2, 0x7f0900a9

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private _checkPermission()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1277
    const/4 v0, 0x1

    .line 1278
    .local v0, permission:Z
    const-string v2, "TapPMTPrefs"

    invoke-virtual {p0, v2, v4}, Lcom/wareone/tappmt/TapPMT;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1279
    .local v1, settings:Landroid/content/SharedPreferences;
    const-string v2, "authorized"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1280
    iget-object v2, p0, Lcom/wareone/tappmt/TapPMT;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v2}, Lcom/wareone/tappmt/PmtDbAdapter;->getTransactionCount()I

    move-result v2

    const-string v3, "trans_max"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ge v2, v3, :cond_2

    const/4 v2, 0x1

    move v0, v2

    .line 1282
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 1283
    const v2, 0x7f09007b

    const v3, 0x7f0900a3

    invoke-direct {p0, v2, v3}, Lcom/wareone/tappmt/TapPMT;->_showRegister(II)V

    .line 1310
    :cond_1
    return v0

    :cond_2
    move v0, v4

    .line 1280
    goto :goto_0
.end method

.method private _createAccount()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1462
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/wareone/tappmt/TapPMT;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1463
    .local v1, mConnMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_0

    .line 1464
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_1

    .line 1466
    :cond_0
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/wareone/tappmt/TapPMT;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1467
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v3, 0x7f03000e

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1469
    .local v2, view:Landroid/view/View;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1470
    const v4, 0x7f090087

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1471
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1472
    const v4, 0x7f09004c

    new-instance v5, Lcom/wareone/tappmt/TapPMT$27;

    invoke-direct {v5, p0, v2}, Lcom/wareone/tappmt/TapPMT$27;-><init>(Lcom/wareone/tappmt/TapPMT;Landroid/view/View;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1537
    const v4, 0x7f09004b

    new-instance v5, Lcom/wareone/tappmt/TapPMT$28;

    invoke-direct {v5, p0}, Lcom/wareone/tappmt/TapPMT$28;-><init>(Lcom/wareone/tappmt/TapPMT;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1546
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1552
    .end local v0           #inflate:Landroid/view/LayoutInflater;
    .end local v2           #view:Landroid/view/View;
    :goto_0
    return-void

    .line 1549
    :cond_1
    const v3, 0x7f0900a9

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private _doSendMail()V
    .locals 5

    .prologue
    .line 1392
    const-string v3, "TapPMTPrefs"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/wareone/tappmt/TapPMT;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1393
    .local v2, settings:Landroid/content/SharedPreferences;
    const-string v3, "google_account"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1394
    .local v0, email:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1395
    .local v1, sendIntent:Landroid/content/Intent;
    const-string v3, "text/csv"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1396
    const-string v3, "android.intent.extra.EMAIL"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1397
    const-string v3, "android.intent.extra.SUBJECT"

    const-string v4, "Tap Money Tracker export"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1398
    const-string v3, "android.intent.extra.STREAM"

    const-string v4, "file:///sdcard/tappmt/export.csv"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1399
    const-string v3, "android.intent.extra.TEXT"

    const-string v4, "Attached is your file "

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1401
    invoke-virtual {p0}, Lcom/wareone/tappmt/TapPMT;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09008a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/wareone/tappmt/TapPMT;->startActivity(Landroid/content/Intent;)V

    .line 1402
    return-void
.end method

.method private _doSync()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1711
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/wareone/tappmt/TapPMT;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1712
    .local v0, mConnMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_0

    .line 1713
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_1

    .line 1715
    :cond_0
    sget-object v2, Lcom/wareone/tappmt/TapPMT;->TAG:Ljava/lang/String;

    const-string v3, "show progress"

    invoke-static {v2, v3}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1716
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/wareone/tappmt/TapPMT;->m_dlg:Landroid/app/ProgressDialog;

    .line 1717
    iget-object v2, p0, Lcom/wareone/tappmt/TapPMT;->m_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/wareone/tappmt/TapPMT;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09007c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1718
    iget-object v2, p0, Lcom/wareone/tappmt/TapPMT;->m_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/wareone/tappmt/TapPMT;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900bc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1719
    iget-object v2, p0, Lcom/wareone/tappmt/TapPMT;->m_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1720
    iget-object v2, p0, Lcom/wareone/tappmt/TapPMT;->m_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1721
    iget-object v2, p0, Lcom/wareone/tappmt/TapPMT;->m_dlg:Landroid/app/ProgressDialog;

    new-instance v3, Lcom/wareone/tappmt/TapPMT$32;

    invoke-direct {v3, p0}, Lcom/wareone/tappmt/TapPMT$32;-><init>(Lcom/wareone/tappmt/TapPMT;)V

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1730
    iget-object v2, p0, Lcom/wareone/tappmt/TapPMT;->m_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 1732
    sget-object v2, Lcom/wareone/tappmt/TapPMT;->TAG:Ljava/lang/String;

    const-string v3, "doSync"

    invoke-static {v2, v3}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1733
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/wareone/tappmt/SyncRunner;

    iget-object v3, p0, Lcom/wareone/tappmt/TapPMT;->handler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, v5}, Lcom/wareone/tappmt/SyncRunner;-><init>(Landroid/content/Context;Landroid/os/Handler;Z)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1734
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1746
    .end local v1           #thread:Ljava/lang/Thread;
    :goto_0
    return-void

    .line 1743
    :cond_1
    const v2, 0x7f0900a9

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private _downloadAll()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1655
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/wareone/tappmt/TapPMT;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1656
    .local v0, mConnMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_0

    .line 1657
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_1

    .line 1659
    :cond_0
    sget-object v2, Lcom/wareone/tappmt/TapPMT;->TAG:Ljava/lang/String;

    const-string v3, "show progress"

    invoke-static {v2, v3}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1660
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/wareone/tappmt/TapPMT;->m_dlg:Landroid/app/ProgressDialog;

    .line 1661
    iget-object v2, p0, Lcom/wareone/tappmt/TapPMT;->m_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/wareone/tappmt/TapPMT;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09007c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1662
    iget-object v2, p0, Lcom/wareone/tappmt/TapPMT;->m_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/wareone/tappmt/TapPMT;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900bb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1663
    iget-object v2, p0, Lcom/wareone/tappmt/TapPMT;->m_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1664
    iget-object v2, p0, Lcom/wareone/tappmt/TapPMT;->m_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1666
    iget-object v2, p0, Lcom/wareone/tappmt/TapPMT;->m_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 1668
    sget-object v2, Lcom/wareone/tappmt/TapPMT;->TAG:Ljava/lang/String;

    const-string v3, "doSync"

    invoke-static {v2, v3}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/wareone/tappmt/SyncRunner;

    iget-object v3, p0, Lcom/wareone/tappmt/TapPMT;->handler:Landroid/os/Handler;

    const/16 v4, 0x1776

    invoke-direct {v2, p0, v3, v4}, Lcom/wareone/tappmt/SyncRunner;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1670
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1676
    .end local v1           #thread:Ljava/lang/Thread;
    :goto_0
    return-void

    .line 1673
    :cond_1
    const v2, 0x7f0900a9

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private _getDueIndex(Ljava/lang/String;)I
    .locals 7
    .parameter "datestr"

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x0

    .line 895
    const/4 v1, -0x1

    .line 896
    .local v1, result:I
    sget-object v3, Lcom/wareone/tappmt/TapPMT;->TAG:Ljava/lang/String;

    const-string v4, "_getDueIndex"

    invoke-static {v3, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 899
    .local v0, df:Ljava/text/SimpleDateFormat;
    iget-object v3, p0, Lcom/wareone/tappmt/TapPMT;->curDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 900
    .local v2, s_date:Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 901
    const/4 v1, 0x0

    .line 911
    :goto_0
    return v1

    .line 903
    :cond_0
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 904
    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 905
    const/4 v1, 0x1

    goto :goto_0

    .line 907
    :cond_1
    iget-object v3, p0, Lcom/wareone/tappmt/TapPMT;->m_due:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0
.end method

.method private _getList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1141
    .local p1, data:Ljava/util/List;,"Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1143
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 1146
    return-object v1

    .line 1144
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private _getTemplate()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-string v4, "mode"

    const-string v3, "_id"

    const-string v5, "template_name"

    .line 1238
    iget-object v2, p0, Lcom/wareone/tappmt/TapPMT;->m_templates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1240
    iget-object v2, p0, Lcom/wareone/tappmt/TapPMT;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v2}, Lcom/wareone/tappmt/PmtDbAdapter;->getTemplates()Landroid/database/Cursor;

    move-result-object v0

    .line 1241
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 1242
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1245
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1246
    .local v1, curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/wareone/tappmt/TapPMT;->m_templates:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1247
    const-string v2, "_id"

    const-string v2, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1248
    const-string v2, "template_name"

    const-string v2, "template_name"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    const-string v2, "mode"

    const-string v2, "mode"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    .line 1243
    if-nez v2, :cond_0

    .line 1253
    .end local v1           #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1256
    :cond_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1257
    iget-object v2, p0, Lcom/wareone/tappmt/TapPMT;->m_templates:Ljava/util/List;

    const-string v4, "template_name"

    invoke-direct {p0, v2, v5}, Lcom/wareone/tappmt/TapPMT;->_getList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    new-array v4, v6, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    .line 1258
    new-instance v4, Lcom/wareone/tappmt/TapPMT$19;

    invoke-direct {v4, p0}, Lcom/wareone/tappmt/TapPMT$19;-><init>(Lcom/wareone/tappmt/TapPMT;)V

    .line 1257
    invoke-virtual {v3, v2, v6, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1272
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1274
    return-void
.end method

.method private _inputPassword()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1555
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/wareone/tappmt/TapPMT;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1556
    .local v1, mConnMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_0

    .line 1557
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_1

    .line 1559
    :cond_0
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/wareone/tappmt/TapPMT;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1560
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v3, 0x7f030018

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1562
    .local v2, view:Landroid/view/View;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1563
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1564
    const v4, 0x7f09004c

    new-instance v5, Lcom/wareone/tappmt/TapPMT$29;

    invoke-direct {v5, p0, v2}, Lcom/wareone/tappmt/TapPMT$29;-><init>(Lcom/wareone/tappmt/TapPMT;Landroid/view/View;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1614
    const v4, 0x7f09004b

    new-instance v5, Lcom/wareone/tappmt/TapPMT$30;

    invoke-direct {v5, p0}, Lcom/wareone/tappmt/TapPMT$30;-><init>(Lcom/wareone/tappmt/TapPMT;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1623
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1629
    .end local v0           #inflate:Landroid/view/LayoutInflater;
    .end local v2           #view:Landroid/view/View;
    :goto_0
    return-void

    .line 1626
    :cond_1
    const v3, 0x7f0900a9

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private _loadAccount()V
    .locals 6

    .prologue
    const-string v5, "acc_name"

    const-string v4, "_id"

    .line 1080
    sget-object v2, Lcom/wareone/tappmt/TapPMT;->TAG:Ljava/lang/String;

    const-string v3, "_loadAccount"

    invoke-static {v2, v3}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    iget-object v2, p0, Lcom/wareone/tappmt/TapPMT;->m_account:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1083
    iget-object v2, p0, Lcom/wareone/tappmt/TapPMT;->m_real_account:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1085
    iget-object v2, p0, Lcom/wareone/tappmt/TapPMT;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v2}, Lcom/wareone/tappmt/PmtDbAdapter;->getAccounts()Landroid/database/Cursor;

    move-result-object v0

    .line 1086
    .local v0, c:Landroid/database/Cursor;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1087
    .local v1, curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/wareone/tappmt/TapPMT;->m_real_account:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1088
    const-string v2, "_id"

    const-string v2, "0"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    const-string v2, "acc_name"

    invoke-virtual {p0}, Lcom/wareone/tappmt/TapPMT;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090031

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    if-eqz v0, :cond_3

    .line 1092
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1095
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1096
    .restart local v1       #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/wareone/tappmt/TapPMT;->m_account:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1097
    const-string v2, "acc_rv"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_1

    .line 1098
    iget-object v2, p0, Lcom/wareone/tappmt/TapPMT;->m_real_account:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1100
    :cond_1
    const-string v2, "_id"

    const-string v2, "_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    const-string v2, "acc_name"

    const-string v2, "acc_name"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    .line 1093
    if-nez v2, :cond_0

    .line 1105
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1107
    :cond_3
    return-void
.end method

.method private _loadData()V
    .locals 24

    .prologue
    .line 916
    const-wide/16 v9, 0x0

    .local v9, expense:D
    const-wide/16 v12, 0x0

    .line 918
    .local v12, income:D
    sget-object v19, Lcom/wareone/tappmt/TapPMT;->TAG:Ljava/lang/String;

    const-string v20, "_loadData"

    invoke-static/range {v19 .. v20}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    const/4 v6, 0x0

    .line 923
    .local v6, c:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->m_data:Ljava/util/List;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    .line 924
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wareone/tappmt/TapPMT;->m_due_index:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->m_due:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    const/16 v21, 0x2

    sub-int v20, v20, v21

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->m_range:[Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->m_range:[Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-object v21, v21, v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/wareone/tappmt/TapPMT;->m_filter_account:J

    move-wide/from16 v22, v0

    invoke-virtual/range {v19 .. v23}, Lcom/wareone/tappmt/PmtDbAdapter;->getTransactionByRange(Ljava/lang/String;Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v6

    .line 941
    :goto_0
    if-eqz v6, :cond_8

    .line 942
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 944
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v19, v0

    const-string v20, "currency"

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move-object v0, v6

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/wareone/tappmt/PmtDbAdapter;->getPaterntByCurrency(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 945
    .local v15, pattern:Ljava/lang/String;
    new-instance v4, Ljava/text/DecimalFormat;

    invoke-direct {v4, v15}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 947
    .local v4, _nf:Ljava/text/DecimalFormat;
    const-string v19, "amount"

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move-object v0, v6

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v19

    move-object v0, v4

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    .line 948
    .local v5, amount:Ljava/lang/String;
    sget-object v19, Lcom/wareone/tappmt/TapPMT;->TAG:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v19, v0

    const-string v20, "currency"

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move-object v0, v6

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/wareone/tappmt/PmtDbAdapter;->getSymbolByCurrency(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 951
    .local v16, symbol:Ljava/lang/String;
    const-string v19, "mode"

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move-object v0, v6

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    if-nez v19, :cond_10

    .line 953
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/wareone/tappmt/TapPMT;->m_filter_account:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/wareone/tappmt/TapPMT;->m_filter_account:J

    move-wide/from16 v19, v0

    const-string v21, "account"

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move-object v0, v6

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    cmp-long v19, v19, v21

    if-nez v19, :cond_2

    .line 954
    :cond_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 955
    .local v7, curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->m_data:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 956
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    sget-object v19, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->FIELDS:[Ljava/lang/String;

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move v0, v11

    move/from16 v1, v19

    if-lt v0, v1, :cond_a

    .line 960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->m_account:Ljava/util/List;

    move-object/from16 v19, v0

    const-string v20, "_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/wareone/tappmt/TapPMT;->_getList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v19

    const-string v20, "category"

    move-object v0, v7

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v14

    .line 962
    .local v14, index:I
    const-string v19, "category"

    invoke-virtual/range {p0 .. p0}, Lcom/wareone/tappmt/TapPMT;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f090032

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object v0, v7

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->m_account:Ljava/util/List;

    move-object/from16 v19, v0

    const-string v20, "_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/wareone/tappmt/TapPMT;->_getList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v19

    const-string v20, "account"

    move-object v0, v7

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v14

    .line 964
    const-string v19, "account"

    if-gez v14, :cond_b

    const-string v20, ""

    .end local v4           #_nf:Ljava/text/DecimalFormat;
    :goto_2
    move-object v0, v7

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->m_group:Ljava/util/List;

    move-object/from16 v19, v0

    const-string v20, "_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/wareone/tappmt/TapPMT;->_getList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v19

    const-string v20, "group_name"

    move-object v0, v7

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v14

    .line 966
    const-string v19, "group_name"

    if-gez v14, :cond_c

    const-string v20, ""

    :goto_3
    move-object v0, v7

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    const-string v19, "amount"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object v0, v7

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 972
    .end local v7           #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11           #i:I
    .end local v14           #index:I
    :cond_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/wareone/tappmt/TapPMT;->m_filter_account:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x0

    cmp-long v19, v19, v21

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/wareone/tappmt/TapPMT;->m_filter_account:J

    move-wide/from16 v19, v0

    const-string v21, "category"

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move-object v0, v6

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    cmp-long v19, v19, v21

    if-nez v19, :cond_4

    .line 973
    :cond_3
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 974
    .restart local v7       #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->m_data:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 975
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_4
    sget-object v19, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->FIELDS:[Ljava/lang/String;

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move v0, v11

    move/from16 v1, v19

    if-lt v0, v1, :cond_d

    .line 978
    const-string v19, "amount"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "-"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object v0, v7

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    const-string v19, "category"

    const-string v20, "account"

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move-object v0, v6

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object v0, v7

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    const-string v19, "account"

    const-string v20, "category"

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move-object v0, v6

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object v0, v7

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->m_account:Ljava/util/List;

    move-object/from16 v19, v0

    const-string v20, "_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/wareone/tappmt/TapPMT;->_getList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v19

    const-string v20, "category"

    move-object v0, v7

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v14

    .line 984
    .restart local v14       #index:I
    const-string v19, "category"

    invoke-virtual/range {p0 .. p0}, Lcom/wareone/tappmt/TapPMT;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f090032

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object v0, v7

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->m_account:Ljava/util/List;

    move-object/from16 v19, v0

    const-string v20, "_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/wareone/tappmt/TapPMT;->_getList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v19

    const-string v20, "account"

    move-object v0, v7

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v14

    .line 986
    const-string v19, "account"

    if-gez v14, :cond_e

    const-string v20, ""

    :goto_5
    move-object v0, v7

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->m_group:Ljava/util/List;

    move-object/from16 v19, v0

    const-string v20, "_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/wareone/tappmt/TapPMT;->_getList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v19

    const-string v20, "group_name"

    move-object v0, v7

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v14

    .line 988
    const-string v19, "group_name"

    if-gez v14, :cond_f

    const-string v20, ""

    :goto_6
    move-object v0, v7

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    .end local v7           #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11           #i:I
    .end local v14           #index:I
    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/wareone/tappmt/TapPMT;->m_filter_account:J

    move-wide/from16 v19, v0

    const-string v21, "category"

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move-object v0, v6

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    cmp-long v19, v19, v21

    if-nez v19, :cond_5

    .line 993
    const-string v19, "ex_amount"

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move-object v0, v6

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v19

    add-double v9, v9, v19

    .line 995
    :cond_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/wareone/tappmt/TapPMT;->m_filter_account:J

    move-wide/from16 v19, v0

    const-string v21, "account"

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    move-object v0, v6

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    cmp-long v19, v19, v21

    if-nez v19, :cond_6

    .line 996
    const-string v19, "ex_amount"

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move-object v0, v6

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v19

    add-double v12, v12, v19

    .line 1021
    :cond_6
    :goto_7
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v19

    .line 943
    if-nez v19, :cond_0

    .line 1023
    .end local v5           #amount:Ljava/lang/String;
    .end local v15           #pattern:Ljava/lang/String;
    .end local v16           #symbol:Ljava/lang/String;
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1026
    :cond_8
    const v19, 0x7f0c005b

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/TapPMT;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 1027
    .local v17, tv_expense:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->m_nf:Ljava/text/NumberFormat;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-wide v1, v9

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1028
    const v19, 0x7f0c005c

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/TapPMT;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 1029
    .local v18, tv_income:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->m_nf:Ljava/text/NumberFormat;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-wide v1, v12

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1030
    return-void

    .line 927
    .end local v17           #tv_expense:Landroid/widget/TextView;
    .end local v18           #tv_income:Landroid/widget/TextView;
    :cond_9
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v19, "yyyy-MM-dd"

    move-object v0, v8

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 928
    .local v8, df:Ljava/text/SimpleDateFormat;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wareone/tappmt/TapPMT;->m_due_index:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    .line 936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->m_due:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wareone/tappmt/TapPMT;->m_due_index:I

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/wareone/tappmt/TapPMT;->m_filter_account:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v19

    move-object v1, v4

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/wareone/tappmt/PmtDbAdapter;->getTransactionByMonth(Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v6

    goto/16 :goto_0

    .line 930
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->curDate:Ljava/util/Calendar;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v20

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/wareone/tappmt/TapPMT;->m_filter_account:J

    move-wide/from16 v21, v0

    invoke-virtual/range {v19 .. v22}, Lcom/wareone/tappmt/PmtDbAdapter;->getTransactionByDate(Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v6

    .line 931
    goto/16 :goto_0

    .line 933
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->curDate:Ljava/util/Calendar;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v20

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x7

    invoke-virtual/range {v20 .. v22}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/wareone/tappmt/TapPMT;->m_filter_account:J

    move-wide/from16 v21, v0

    invoke-virtual/range {v19 .. v22}, Lcom/wareone/tappmt/PmtDbAdapter;->getTransactionByMonth(Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v6

    .line 934
    goto/16 :goto_0

    .line 957
    .end local v8           #df:Ljava/text/SimpleDateFormat;
    .restart local v4       #_nf:Ljava/text/DecimalFormat;
    .restart local v5       #amount:Ljava/lang/String;
    .restart local v7       #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11       #i:I
    .restart local v15       #pattern:Ljava/lang/String;
    .restart local v16       #symbol:Ljava/lang/String;
    :cond_a
    sget-object v19, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->FIELDS:[Ljava/lang/String;

    aget-object v19, v19, v11

    sget-object v20, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->FIELDS:[Ljava/lang/String;

    aget-object v20, v20, v11

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move-object v0, v6

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object v0, v7

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 964
    .restart local v14       #index:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->m_account:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v14

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #_nf:Ljava/text/DecimalFormat;
    check-cast v4, Ljava/util/Map;

    const-string v20, "acc_name"

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v20, v4

    goto/16 :goto_2

    .line 966
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->m_group:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v14

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v20, "group_name"

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v20, v4

    goto/16 :goto_3

    .line 976
    .end local v14           #index:I
    :cond_d
    sget-object v19, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->FIELDS:[Ljava/lang/String;

    aget-object v19, v19, v11

    sget-object v20, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->FIELDS:[Ljava/lang/String;

    aget-object v20, v20, v11

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move-object v0, v6

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object v0, v7

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .line 986
    .restart local v14       #index:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->m_account:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v14

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v20, "acc_name"

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v20, v4

    goto/16 :goto_5

    .line 988
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->m_group:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v14

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v20, "group_name"

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v20, v4

    goto/16 :goto_6

    .line 999
    .end local v7           #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11           #i:I
    .end local v14           #index:I
    .restart local v4       #_nf:Ljava/text/DecimalFormat;
    :cond_10
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1000
    .restart local v7       #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->m_data:Ljava/util/List;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1001
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_8
    sget-object v19, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->FIELDS:[Ljava/lang/String;

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move v0, v11

    move/from16 v1, v19

    if-lt v0, v1, :cond_11

    .line 1004
    const-string v19, "amount"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object v0, v7

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    const-string v19, "mode"

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move-object v0, v6

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_12

    .line 1006
    const-string v19, "amount"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "-"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object v0, v7

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    const-string v19, "ex_amount"

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move-object v0, v6

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v19

    add-double v9, v9, v19

    .line 1012
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->m_account:Ljava/util/List;

    move-object/from16 v19, v0

    const-string v20, "_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/wareone/tappmt/TapPMT;->_getList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v19

    const-string v20, "category"

    move-object v0, v7

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v14

    .line 1013
    .restart local v14       #index:I
    const-string v19, "category"

    if-gez v14, :cond_13

    const-string v20, ""

    .end local v4           #_nf:Ljava/text/DecimalFormat;
    :goto_a
    move-object v0, v7

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->m_account:Ljava/util/List;

    move-object/from16 v19, v0

    const-string v20, "_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/wareone/tappmt/TapPMT;->_getList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v19

    const-string v20, "account"

    move-object v0, v7

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v14

    .line 1015
    const-string v19, "account"

    if-gez v14, :cond_14

    const-string v20, ""

    :goto_b
    move-object v0, v7

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->m_group:Ljava/util/List;

    move-object/from16 v19, v0

    const-string v20, "_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/wareone/tappmt/TapPMT;->_getList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v19

    const-string v20, "group_name"

    move-object v0, v7

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v14

    .line 1017
    const-string v19, "group_name"

    if-gez v14, :cond_15

    const-string v20, ""

    :goto_c
    move-object v0, v7

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 1002
    .end local v14           #index:I
    .restart local v4       #_nf:Ljava/text/DecimalFormat;
    :cond_11
    sget-object v19, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->FIELDS:[Ljava/lang/String;

    aget-object v19, v19, v11

    sget-object v20, Lcom/wareone/tappmt/PmtDbAdapter$Transaction;->FIELDS:[Ljava/lang/String;

    aget-object v20, v20, v11

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    move-object v0, v6

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object v0, v7

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_8

    .line 1009
    :cond_12
    const-string v19, "ex_amount"

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    move-object v0, v6

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v19

    add-double v12, v12, v19

    goto/16 :goto_9

    .line 1013
    .restart local v14       #index:I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->m_account:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v14

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #_nf:Ljava/text/DecimalFormat;
    check-cast v4, Ljava/util/Map;

    const-string v20, "acc_name"

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v20, v4

    goto/16 :goto_a

    .line 1015
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->m_account:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v14

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v20, "acc_name"

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v20, v4

    goto/16 :goto_b

    .line 1017
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->m_group:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v14

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v20, "group_name"

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v20, v4

    goto/16 :goto_c

    .line 928
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private _loadDue()V
    .locals 13

    .prologue
    const/4 v11, 0x7

    const/4 v10, 0x5

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v12, "-"

    .line 1033
    sget-object v5, Lcom/wareone/tappmt/TapPMT;->TAG:Ljava/lang/String;

    const-string v6, "_loadDue"

    invoke-static {v5, v6}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd"

    invoke-direct {v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1036
    .local v3, df:Ljava/text/SimpleDateFormat;
    iget-object v5, p0, Lcom/wareone/tappmt/TapPMT;->curDate:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1038
    .local v4, yrmn:Ljava/lang/String;
    iget-object v5, p0, Lcom/wareone/tappmt/TapPMT;->curDate:Ljava/util/Calendar;

    invoke-virtual {v5, v10}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 1043
    iget-object v5, p0, Lcom/wareone/tappmt/TapPMT;->m_range:[Ljava/lang/String;

    aget-object v5, v5, v8

    if-nez v5, :cond_0

    .line 1044
    iget-object v5, p0, Lcom/wareone/tappmt/TapPMT;->m_range:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "-"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "01"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 1046
    :cond_0
    iget-object v5, p0, Lcom/wareone/tappmt/TapPMT;->m_range:[Ljava/lang/String;

    aget-object v5, v5, v9

    if-nez v5, :cond_1

    .line 1047
    iget-object v5, p0, Lcom/wareone/tappmt/TapPMT;->m_range:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "-"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/wareone/tappmt/TapPMT;->curDate:Ljava/util/Calendar;

    invoke-virtual {v7, v10}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    .line 1049
    :cond_1
    iget-object v5, p0, Lcom/wareone/tappmt/TapPMT;->m_due:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1052
    iget-object v5, p0, Lcom/wareone/tappmt/TapPMT;->m_due:Ljava/util/List;

    invoke-virtual {p0}, Lcom/wareone/tappmt/TapPMT;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090023

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1053
    iget-object v5, p0, Lcom/wareone/tappmt/TapPMT;->m_due:Ljava/util/List;

    invoke-virtual {p0}, Lcom/wareone/tappmt/TapPMT;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090024

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1055
    iget-object v5, p0, Lcom/wareone/tappmt/TapPMT;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v5}, Lcom/wareone/tappmt/PmtDbAdapter;->getAllMonths()Landroid/database/Cursor;

    move-result-object v1

    .line 1057
    .local v1, c:Landroid/database/Cursor;
    if-eqz v1, :cond_5

    .line 1058
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1060
    :cond_2
    iget-object v5, p0, Lcom/wareone/tappmt/TapPMT;->curDate:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1061
    .local v2, datStr:Ljava/lang/String;
    const-string v5, "yrmn"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1062
    .local v0, Yrmn:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_3

    .line 1063
    iget-object v5, p0, Lcom/wareone/tappmt/TapPMT;->m_due:Ljava/util/List;

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1066
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    .line 1059
    if-nez v5, :cond_2

    .line 1068
    .end local v0           #Yrmn:Ljava/lang/String;
    .end local v2           #datStr:Ljava/lang/String;
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1070
    :cond_5
    iget-object v5, p0, Lcom/wareone/tappmt/TapPMT;->m_due:Ljava/util/List;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/wareone/tappmt/TapPMT;->m_range:[Ljava/lang/String;

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " ~ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/wareone/tappmt/TapPMT;->m_range:[Ljava/lang/String;

    aget-object v7, v7, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1071
    iget-object v5, p0, Lcom/wareone/tappmt/TapPMT;->m_due:Ljava/util/List;

    invoke-virtual {p0}, Lcom/wareone/tappmt/TapPMT;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090030

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1073
    iget-object v5, p0, Lcom/wareone/tappmt/TapPMT;->m_due_adapter:Landroid/widget/ArrayAdapter;

    if-eqz v5, :cond_6

    .line 1074
    iget-object v5, p0, Lcom/wareone/tappmt/TapPMT;->m_due_adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 1076
    :cond_6
    return-void
.end method

.method private _loadGroup()V
    .locals 6

    .prologue
    const-string v5, "group_name"

    const-string v4, "_id"

    .line 1111
    sget-object v2, Lcom/wareone/tappmt/TapPMT;->TAG:Ljava/lang/String;

    const-string v3, "_loadGroup"

    invoke-static {v2, v3}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    iget-object v2, p0, Lcom/wareone/tappmt/TapPMT;->m_group:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1115
    iget-object v2, p0, Lcom/wareone/tappmt/TapPMT;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v2}, Lcom/wareone/tappmt/PmtDbAdapter;->getGroups()Landroid/database/Cursor;

    move-result-object v0

    .line 1117
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 1118
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1121
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1122
    .local v1, curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/wareone/tappmt/TapPMT;->m_group:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1123
    const-string v2, "_id"

    const-string v2, "_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    const-string v2, "group_name"

    const-string v2, "group_name"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    .line 1119
    if-nez v2, :cond_0

    .line 1128
    .end local v1           #curMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1130
    :cond_2
    return-void
.end method

.method private _login()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1679
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/wareone/tappmt/TapPMT;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1680
    .local v0, mConnMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_0

    .line 1681
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_1

    .line 1683
    :cond_0
    sget-object v2, Lcom/wareone/tappmt/TapPMT;->TAG:Ljava/lang/String;

    const-string v3, "show progress"

    invoke-static {v2, v3}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1684
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/wareone/tappmt/TapPMT;->m_dlg:Landroid/app/ProgressDialog;

    .line 1685
    iget-object v2, p0, Lcom/wareone/tappmt/TapPMT;->m_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/wareone/tappmt/TapPMT;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09007c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1686
    iget-object v2, p0, Lcom/wareone/tappmt/TapPMT;->m_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/wareone/tappmt/TapPMT;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900bd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1687
    iget-object v2, p0, Lcom/wareone/tappmt/TapPMT;->m_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1688
    iget-object v2, p0, Lcom/wareone/tappmt/TapPMT;->m_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1689
    iget-object v2, p0, Lcom/wareone/tappmt/TapPMT;->m_dlg:Landroid/app/ProgressDialog;

    new-instance v3, Lcom/wareone/tappmt/TapPMT$31;

    invoke-direct {v3, p0}, Lcom/wareone/tappmt/TapPMT$31;-><init>(Lcom/wareone/tappmt/TapPMT;)V

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1698
    iget-object v2, p0, Lcom/wareone/tappmt/TapPMT;->m_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 1700
    sget-object v2, Lcom/wareone/tappmt/TapPMT;->TAG:Ljava/lang/String;

    const-string v3, "doSync"

    invoke-static {v2, v3}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1701
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/wareone/tappmt/SyncRunner;

    iget-object v3, p0, Lcom/wareone/tappmt/TapPMT;->handler:Landroid/os/Handler;

    const/16 v4, 0x1773

    invoke-direct {v2, p0, v3, v4}, Lcom/wareone/tappmt/SyncRunner;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1702
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1708
    .end local v1           #thread:Ljava/lang/Thread;
    :goto_0
    return-void

    .line 1705
    :cond_1
    const v2, 0x7f0900a9

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private _setFilter()V
    .locals 4

    .prologue
    .line 1221
    iget-object v1, p0, Lcom/wareone/tappmt/TapPMT;->m_real_account:Ljava/util/List;

    const-string v2, "_id"

    invoke-direct {p0, v1, v2}, Lcom/wareone/tappmt/TapPMT;->_getList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iget-wide v2, p0, Lcom/wareone/tappmt/TapPMT;->m_filter_account:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1222
    .local v0, index:I
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1223
    iget-object v1, p0, Lcom/wareone/tappmt/TapPMT;->m_real_account:Ljava/util/List;

    const-string v3, "acc_name"

    invoke-direct {p0, v1, v3}, Lcom/wareone/tappmt/TapPMT;->_getList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    .line 1224
    new-instance v3, Lcom/wareone/tappmt/TapPMT$18;

    invoke-direct {v3, p0}, Lcom/wareone/tappmt/TapPMT$18;-><init>(Lcom/wareone/tappmt/TapPMT;)V

    .line 1223
    invoke-virtual {v2, v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1233
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1235
    return-void
.end method

.method private _showRegister(II)V
    .locals 3
    .parameter "titleId"
    .parameter "messageId"

    .prologue
    .line 1342
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1343
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1344
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1345
    const v1, 0x7f090053

    .line 1346
    new-instance v2, Lcom/wareone/tappmt/TapPMT$22;

    invoke-direct {v2, p0}, Lcom/wareone/tappmt/TapPMT$22;-><init>(Lcom/wareone/tappmt/TapPMT;)V

    .line 1345
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1356
    const v1, 0x7f090051

    .line 1357
    new-instance v2, Lcom/wareone/tappmt/TapPMT$23;

    invoke-direct {v2, p0}, Lcom/wareone/tappmt/TapPMT$23;-><init>(Lcom/wareone/tappmt/TapPMT;)V

    .line 1356
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1364
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1365
    return-void
.end method

.method private _showRegister(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "title"
    .parameter "message"

    .prologue
    .line 1315
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1316
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1317
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1318
    const v1, 0x7f090053

    .line 1319
    new-instance v2, Lcom/wareone/tappmt/TapPMT$20;

    invoke-direct {v2, p0}, Lcom/wareone/tappmt/TapPMT$20;-><init>(Lcom/wareone/tappmt/TapPMT;)V

    .line 1318
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1329
    const v1, 0x7f090051

    .line 1330
    new-instance v2, Lcom/wareone/tappmt/TapPMT$21;

    invoke-direct {v2, p0}, Lcom/wareone/tappmt/TapPMT$21;-><init>(Lcom/wareone/tappmt/TapPMT;)V

    .line 1329
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1337
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1338
    return-void
.end method

.method private _showWhatsNew()V
    .locals 6

    .prologue
    .line 1369
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/wareone/tappmt/TapPMT;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1370
    .local v0, inflate:Landroid/view/LayoutInflater;
    const v3, 0x7f030045

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1372
    .local v1, view:Landroid/view/View;
    const v3, 0x7f0c00c0

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    .line 1373
    .local v2, wv:Landroid/webkit/WebView;
    const-string v3, "file:///android_asset/whats-new.htm"

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1375
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1376
    const v4, 0x7f0900fc

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1377
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1378
    const v4, 0x7f09004c

    new-instance v5, Lcom/wareone/tappmt/TapPMT$24;

    invoke-direct {v5, p0}, Lcom/wareone/tappmt/TapPMT$24;-><init>(Lcom/wareone/tappmt/TapPMT;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1387
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1388
    return-void
.end method

.method private _uploadAll()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1632
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/wareone/tappmt/TapPMT;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1633
    .local v0, mConnMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_0

    .line 1634
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_1

    .line 1636
    :cond_0
    sget-object v2, Lcom/wareone/tappmt/TapPMT;->TAG:Ljava/lang/String;

    const-string v3, "show progress"

    invoke-static {v2, v3}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1637
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/wareone/tappmt/TapPMT;->m_dlg:Landroid/app/ProgressDialog;

    .line 1638
    iget-object v2, p0, Lcom/wareone/tappmt/TapPMT;->m_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/wareone/tappmt/TapPMT;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09007c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1639
    iget-object v2, p0, Lcom/wareone/tappmt/TapPMT;->m_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/wareone/tappmt/TapPMT;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900ba

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1640
    iget-object v2, p0, Lcom/wareone/tappmt/TapPMT;->m_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1641
    iget-object v2, p0, Lcom/wareone/tappmt/TapPMT;->m_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1642
    iget-object v2, p0, Lcom/wareone/tappmt/TapPMT;->m_dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 1644
    sget-object v2, Lcom/wareone/tappmt/TapPMT;->TAG:Ljava/lang/String;

    const-string v3, "doSync"

    invoke-static {v2, v3}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1645
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/wareone/tappmt/SyncRunner;

    iget-object v3, p0, Lcom/wareone/tappmt/TapPMT;->handler:Landroid/os/Handler;

    const/16 v4, 0x1775

    invoke-direct {v2, p0, v3, v4}, Lcom/wareone/tappmt/SyncRunner;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1646
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1652
    .end local v1           #thread:Ljava/lang/Thread;
    :goto_0
    return-void

    .line 1649
    :cond_1
    const v2, 0x7f0900a9

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/wareone/tappmt/TapPMT;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 1872
    iget-object v0, p0, Lcom/wareone/tappmt/TapPMT;->m_dlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/wareone/tappmt/TapPMT;)V
    .locals 0
    .parameter

    .prologue
    .line 1427
    invoke-direct {p0}, Lcom/wareone/tappmt/TapPMT;->_agreement()V

    return-void
.end method

.method static synthetic access$10(Lcom/wareone/tappmt/TapPMT;)Lcom/wareone/tappmt/PmtDbAdapter;
    .locals 1
    .parameter

    .prologue
    .line 1845
    iget-object v0, p0, Lcom/wareone/tappmt/TapPMT;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    return-object v0
.end method

.method static synthetic access$11(Lcom/wareone/tappmt/TapPMT;)J
    .locals 2
    .parameter

    .prologue
    .line 1855
    iget-wide v0, p0, Lcom/wareone/tappmt/TapPMT;->m_id:J

    return-wide v0
.end method

.method static synthetic access$12(Lcom/wareone/tappmt/TapPMT;)J
    .locals 2
    .parameter

    .prologue
    .line 1855
    iget-wide v0, p0, Lcom/wareone/tappmt/TapPMT;->m_remote_id:J

    return-wide v0
.end method

.method static synthetic access$13(Lcom/wareone/tappmt/TapPMT;)V
    .locals 0
    .parameter

    .prologue
    .line 1220
    invoke-direct {p0}, Lcom/wareone/tappmt/TapPMT;->_setFilter()V

    return-void
.end method

.method static synthetic access$14(Lcom/wareone/tappmt/TapPMT;)V
    .locals 0
    .parameter

    .prologue
    .line 1237
    invoke-direct {p0}, Lcom/wareone/tappmt/TapPMT;->_getTemplate()V

    return-void
.end method

.method static synthetic access$15(Lcom/wareone/tappmt/TapPMT;)[I
    .locals 1
    .parameter

    .prologue
    .line 1857
    iget-object v0, p0, Lcom/wareone/tappmt/TapPMT;->TRANS_MODE:[I

    return-object v0
.end method

.method static synthetic access$16(Lcom/wareone/tappmt/TapPMT;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 1853
    iget-object v0, p0, Lcom/wareone/tappmt/TapPMT;->m_due:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$17(Lcom/wareone/tappmt/TapPMT;)V
    .locals 0
    .parameter

    .prologue
    .line 1149
    invoke-direct {p0}, Lcom/wareone/tappmt/TapPMT;->setBeginDate()V

    return-void
.end method

.method static synthetic access$18(Lcom/wareone/tappmt/TapPMT;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1856
    iput p1, p0, Lcom/wareone/tappmt/TapPMT;->m_due_index:I

    return-void
.end method

.method static synthetic access$19(Lcom/wareone/tappmt/TapPMT;)V
    .locals 0
    .parameter

    .prologue
    .line 1390
    invoke-direct {p0}, Lcom/wareone/tappmt/TapPMT;->_doSendMail()V

    return-void
.end method

.method static synthetic access$2(Lcom/wareone/tappmt/TapPMT;)V
    .locals 0
    .parameter

    .prologue
    .line 1631
    invoke-direct {p0}, Lcom/wareone/tappmt/TapPMT;->_uploadAll()V

    return-void
.end method

.method static synthetic access$20(Lcom/wareone/tappmt/TapPMT;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1860
    iget-object v0, p0, Lcom/wareone/tappmt/TapPMT;->m_range:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$21(Lcom/wareone/tappmt/TapPMT;)V
    .locals 0
    .parameter

    .prologue
    .line 1184
    invoke-direct {p0}, Lcom/wareone/tappmt/TapPMT;->setEndDate()V

    return-void
.end method

.method static synthetic access$22(Lcom/wareone/tappmt/TapPMT;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 1850
    iget-object v0, p0, Lcom/wareone/tappmt/TapPMT;->m_real_account:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$23(Lcom/wareone/tappmt/TapPMT;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1859
    iput-wide p1, p0, Lcom/wareone/tappmt/TapPMT;->m_filter_account:J

    return-void
.end method

.method static synthetic access$24(Lcom/wareone/tappmt/TapPMT;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 1851
    iget-object v0, p0, Lcom/wareone/tappmt/TapPMT;->m_templates:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$25(Lcom/wareone/tappmt/TapPMT;)V
    .locals 0
    .parameter

    .prologue
    .line 1461
    invoke-direct {p0}, Lcom/wareone/tappmt/TapPMT;->_createAccount()V

    return-void
.end method

.method static synthetic access$26(Lcom/wareone/tappmt/TapPMT;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1872
    iput-object p1, p0, Lcom/wareone/tappmt/TapPMT;->m_dlg:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$27(Lcom/wareone/tappmt/TapPMT;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 1769
    iget-object v0, p0, Lcom/wareone/tappmt/TapPMT;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/wareone/tappmt/TapPMT;)V
    .locals 0
    .parameter

    .prologue
    .line 1554
    invoke-direct {p0}, Lcom/wareone/tappmt/TapPMT;->_inputPassword()V

    return-void
.end method

.method static synthetic access$4(Lcom/wareone/tappmt/TapPMT;)V
    .locals 0
    .parameter

    .prologue
    .line 1710
    invoke-direct {p0}, Lcom/wareone/tappmt/TapPMT;->_doSync()V

    return-void
.end method

.method static synthetic access$5(Lcom/wareone/tappmt/TapPMT;)V
    .locals 0
    .parameter

    .prologue
    .line 1654
    invoke-direct {p0}, Lcom/wareone/tappmt/TapPMT;->_downloadAll()V

    return-void
.end method

.method static synthetic access$6(Lcom/wareone/tappmt/TapPMT;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 1848
    iget-object v0, p0, Lcom/wareone/tappmt/TapPMT;->m_data:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/wareone/tappmt/TapPMT;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/wareone/tappmt/TapPMT;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1855
    iput-wide p1, p0, Lcom/wareone/tappmt/TapPMT;->m_id:J

    return-void
.end method

.method static synthetic access$9(Lcom/wareone/tappmt/TapPMT;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1855
    iput-wide p1, p0, Lcom/wareone/tappmt/TapPMT;->m_remote_id:J

    return-void
.end method

.method private setBeginDate()V
    .locals 10

    .prologue
    .line 1150
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 1151
    .local v6, curDate:Ljava/util/Calendar;
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v7, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1154
    .local v7, df:Ljava/text/SimpleDateFormat;
    :try_start_0
    iget-object v1, p0, Lcom/wareone/tappmt/TapPMT;->m_range:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v7, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 1158
    .local v8, during_date:Ljava/util/Date;
    :goto_0
    invoke-virtual {v6, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1160
    new-instance v0, Landroid/app/DatePickerDialog;

    .line 1161
    new-instance v2, Lcom/wareone/tappmt/TapPMT$16;

    invoke-direct {v2, p0}, Lcom/wareone/tappmt/TapPMT$16;-><init>(Lcom/wareone/tappmt/TapPMT;)V

    .line 1176
    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v1, 0x5

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v1, p0

    .line 1160
    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 1179
    .local v0, dlg:Landroid/app/DatePickerDialog;
    const v1, 0x7f09007e

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setTitle(I)V

    .line 1180
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 1182
    return-void

    .line 1155
    .end local v0           #dlg:Landroid/app/DatePickerDialog;
    .end local v8           #during_date:Ljava/util/Date;
    :catch_0
    move-exception v1

    move-object v9, v1

    .line 1156
    .local v9, e:Ljava/lang/Exception;
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .restart local v8       #during_date:Ljava/util/Date;
    goto :goto_0
.end method

.method private setEndDate()V
    .locals 10

    .prologue
    const/4 v3, 0x1

    .line 1185
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 1186
    .local v6, curDate:Ljava/util/Calendar;
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v7, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1189
    .local v7, df:Ljava/text/SimpleDateFormat;
    :try_start_0
    iget-object v1, p0, Lcom/wareone/tappmt/TapPMT;->m_range:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v7, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 1193
    .local v8, during_date:Ljava/util/Date;
    :goto_0
    invoke-virtual {v6, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1195
    new-instance v0, Landroid/app/DatePickerDialog;

    .line 1196
    new-instance v2, Lcom/wareone/tappmt/TapPMT$17;

    invoke-direct {v2, p0}, Lcom/wareone/tappmt/TapPMT$17;-><init>(Lcom/wareone/tappmt/TapPMT;)V

    .line 1212
    invoke-virtual {v6, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v1, 0x5

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v1, p0

    .line 1195
    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 1215
    .local v0, dlg:Landroid/app/DatePickerDialog;
    const v1, 0x7f09007f

    invoke-virtual {v0, v1}, Landroid/app/DatePickerDialog;->setTitle(I)V

    .line 1216
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 1218
    return-void

    .line 1190
    .end local v0           #dlg:Landroid/app/DatePickerDialog;
    .end local v8           #during_date:Ljava/util/Date;
    :catch_0
    move-exception v1

    move-object v9, v1

    .line 1191
    .local v9, e:Ljava/lang/Exception;
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .restart local v8       #during_date:Ljava/util/Date;
    goto :goto_0
.end method

.method private static showDownloadDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "activity"
    .parameter "stringTitle"
    .parameter "stringMessage"
    .parameter "stringButtonYes"
    .parameter "stringButtonNo"

    .prologue
    .line 1753
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1754
    .local v0, downloadDialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1755
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1756
    new-instance v1, Lcom/wareone/tappmt/TapPMT$33;

    invoke-direct {v1, p0}, Lcom/wareone/tappmt/TapPMT$33;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1763
    new-instance v1, Lcom/wareone/tappmt/TapPMT$34;

    invoke-direct {v1}, Lcom/wareone/tappmt/TapPMT$34;-><init>()V

    invoke-virtual {v0, p4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1766
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1767
    return-void
.end method


# virtual methods
.method protected _refresh()V
    .locals 2

    .prologue
    .line 1133
    sget-object v0, Lcom/wareone/tappmt/TapPMT;->TAG:Ljava/lang/String;

    const-string v1, "_refresh"

    invoke-static {v0, v1}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    invoke-direct {p0}, Lcom/wareone/tappmt/TapPMT;->_loadDue()V

    .line 1136
    invoke-direct {p0}, Lcom/wareone/tappmt/TapPMT;->_loadData()V

    .line 1137
    iget-object v0, p0, Lcom/wareone/tappmt/TapPMT;->m_adapter:Lcom/wareone/tappmt/TapPMT$TransactionAdapter;

    invoke-virtual {v0}, Lcom/wareone/tappmt/TapPMT$TransactionAdapter;->notifyDataSetChanged()V

    .line 1138
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 775
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v9, -0x1

    .line 554
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 556
    sget-object v7, Lcom/wareone/tappmt/TapPMT;->TAG:Ljava/lang/String;

    const-string v8, "onActivityResult"

    invoke-static {v7, v8}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    packed-switch p1, :pswitch_data_0

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 560
    :pswitch_0
    if-ne p2, v9, :cond_0

    .line 561
    if-eqz p3, :cond_0

    .line 562
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 563
    .local v3, extras:Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 565
    const-string v7, "authAccount"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 566
    .local v1, account:Ljava/lang/String;
    const-string v7, "TapPMTPrefs"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/wareone/tappmt/TapPMT;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 567
    .local v6, settings:Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 568
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "google_account"

    invoke-interface {v2, v7, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 569
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 575
    .end local v1           #account:Ljava/lang/String;
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v3           #extras:Landroid/os/Bundle;
    .end local v6           #settings:Landroid/content/SharedPreferences;
    :pswitch_1
    if-ne p2, v9, :cond_0

    .line 576
    if-eqz p3, :cond_0

    .line 577
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 578
    .restart local v3       #extras:Landroid/os/Bundle;
    if-eqz v3, :cond_0

    .line 579
    const-string v7, "DATE"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 580
    .local v0, _date:Ljava/lang/String;
    invoke-direct {p0}, Lcom/wareone/tappmt/TapPMT;->_loadDue()V

    .line 581
    const/4 v4, 0x0

    .line 582
    .local v4, index:I
    invoke-direct {p0, v0}, Lcom/wareone/tappmt/TapPMT;->_getDueIndex(Ljava/lang/String;)I

    move-result v4

    if-le v4, v9, :cond_1

    .line 583
    iput v4, p0, Lcom/wareone/tappmt/TapPMT;->m_due_index:I

    .line 586
    :cond_1
    const v7, 0x7f0c0031

    invoke-virtual {p0, v7}, Lcom/wareone/tappmt/TapPMT;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    .line 587
    .local v5, s1:Landroid/widget/Spinner;
    iget v7, p0, Lcom/wareone/tappmt/TapPMT;->m_due_index:I

    invoke-virtual {v5, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 589
    invoke-virtual {p0}, Lcom/wareone/tappmt/TapPMT;->_refresh()V

    goto :goto_0

    .line 558
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 28
    .parameter "savedInstanceState"

    .prologue
    .line 229
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/wareone/tappmt/TapPMT;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    .line 237
    .local v18, extra:Landroid/os/Bundle;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/TapPMT;->requestWindowFeature(I)Z

    .line 238
    const v4, 0x7f030013

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/TapPMT;->setContentView(I)V

    .line 240
    const-string v4, "sensor"

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/TapPMT;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/hardware/SensorManager;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wareone/tappmt/TapPMT;->m_sm:Landroid/hardware/SensorManager;

    .line 241
    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wareone/tappmt/TapPMT;->lastUpdateTime:Ljava/util/Date;

    .line 243
    const-string v4, "TapPMTPrefs"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/wareone/tappmt/TapPMT;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v24

    .line 251
    .local v24, settings:Landroid/content/SharedPreferences;
    const/16 v27, 0x1

    .line 253
    .local v27, ver_code:I
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/wareone/tappmt/TapPMT;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/wareone/tappmt/TapPMT;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    move-object v0, v4

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v27, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_0
    const-string v4, "ver_code"

    move-object/from16 v0, v24

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 257
    invoke-interface/range {v24 .. v24}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    .line 258
    .local v17, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "ver_code"

    move-object/from16 v0, v17

    move-object v1, v4

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 259
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 261
    invoke-direct/range {p0 .. p0}, Lcom/wareone/tappmt/TapPMT;->_showWhatsNew()V

    .line 272
    .end local v17           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/wareone/tappmt/TapPMT;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wareone/tappmt/TapPMT;->m_actions:[Ljava/lang/String;

    .line 274
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wareone/tappmt/TapPMT;->curDate:Ljava/util/Calendar;

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->curDate:Ljava/util/Calendar;

    move-object v4, v0

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 278
    sget-object v4, Lcom/wareone/tappmt/TapPMT;->TAG:Ljava/lang/String;

    const-string v5, "create PmtDbAdapter"

    invoke-static {v4, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    new-instance v4, Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wareone/tappmt/PmtDbAdapter;-><init>(Landroid/content/Context;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wareone/tappmt/TapPMT;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    .line 280
    sget-object v4, Lcom/wareone/tappmt/TapPMT;->TAG:Ljava/lang/String;

    const-string v5, "open database"

    invoke-static {v4, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/wareone/tappmt/PmtDbAdapter;->open()Lcom/wareone/tappmt/PmtDbAdapter;

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/wareone/tappmt/PmtDbAdapter;->deleteUncompleted()V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/wareone/tappmt/PmtDbAdapter;->getDefaultCurrency()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wareone/tappmt/PmtDbAdapter;->getDigitsByCurrency(Ljava/lang/String;)I

    move-result v16

    .line 285
    .local v16, digits:I
    const-string v21, "#,###,##0"

    .line 286
    .local v21, pattern:Ljava/lang/String;
    if-lez v16, :cond_1

    .line 287
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "000000000000"

    const/4 v6, 0x0

    move-object v0, v5

    move v1, v6

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 289
    :cond_1
    new-instance v4, Ljava/text/DecimalFormat;

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wareone/tappmt/TapPMT;->m_nf:Ljava/text/NumberFormat;

    .line 291
    invoke-direct/range {p0 .. p0}, Lcom/wareone/tappmt/TapPMT;->_loadAccount()V

    .line 292
    invoke-direct/range {p0 .. p0}, Lcom/wareone/tappmt/TapPMT;->_loadGroup()V

    .line 293
    invoke-direct/range {p0 .. p0}, Lcom/wareone/tappmt/TapPMT;->_loadDue()V

    .line 294
    invoke-direct/range {p0 .. p0}, Lcom/wareone/tappmt/TapPMT;->_loadData()V

    .line 296
    const v4, 0x7f0c005a

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/TapPMT;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ListView;

    .line 297
    .local v20, lv:Landroid/widget/ListView;
    new-instance v4, Lcom/wareone/tappmt/TapPMT$TransactionAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->m_data:Ljava/util/List;

    move-object v5, v0

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/wareone/tappmt/TapPMT$TransactionAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wareone/tappmt/TapPMT;->m_adapter:Lcom/wareone/tappmt/TapPMT$TransactionAdapter;

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->m_adapter:Lcom/wareone/tappmt/TapPMT$TransactionAdapter;

    move-object v4, v0

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 300
    new-instance v4, Lcom/wareone/tappmt/TapPMT$2;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wareone/tappmt/TapPMT$2;-><init>(Lcom/wareone/tappmt/TapPMT;)V

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 312
    new-instance v4, Lcom/wareone/tappmt/TapPMT$3;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wareone/tappmt/TapPMT$3;-><init>(Lcom/wareone/tappmt/TapPMT;)V

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 343
    const v4, 0x7f0c0059

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/TapPMT;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/Button;

    .line 345
    .local v13, btn_filter:Landroid/widget/Button;
    new-instance v4, Lcom/wareone/tappmt/TapPMT$4;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wareone/tappmt/TapPMT$4;-><init>(Lcom/wareone/tappmt/TapPMT;)V

    .line 344
    invoke-virtual {v13, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    const v4, 0x7f0c005d

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/TapPMT;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    .line 354
    .local v14, btn_template:Landroid/widget/Button;
    new-instance v4, Lcom/wareone/tappmt/TapPMT$5;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wareone/tappmt/TapPMT$5;-><init>(Lcom/wareone/tappmt/TapPMT;)V

    .line 353
    invoke-virtual {v14, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    const v4, 0x7f0c005e

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/TapPMT;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    .line 363
    .local v11, btn_addNew:Landroid/widget/Button;
    new-instance v4, Lcom/wareone/tappmt/TapPMT$6;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wareone/tappmt/TapPMT$6;-><init>(Lcom/wareone/tappmt/TapPMT;)V

    .line 362
    invoke-virtual {v11, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    const v4, 0x7f0c0058

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/TapPMT;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    .line 381
    .local v12, btn_balance:Landroid/widget/Button;
    new-instance v4, Lcom/wareone/tappmt/TapPMT$7;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wareone/tappmt/TapPMT$7;-><init>(Lcom/wareone/tappmt/TapPMT;)V

    .line 380
    invoke-virtual {v12, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    const v4, 0x7f0c0031

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/TapPMT;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/Spinner;

    .line 390
    .local v22, s1:Landroid/widget/Spinner;
    new-instance v4, Landroid/widget/ArrayAdapter;

    .line 391
    const v5, 0x1090008

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->m_due:Ljava/util/List;

    move-object v6, v0

    move-object v0, v4

    move-object/from16 v1, p0

    move v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 390
    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wareone/tappmt/TapPMT;->m_due_adapter:Landroid/widget/ArrayAdapter;

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->m_due_adapter:Landroid/widget/ArrayAdapter;

    move-object v4, v0

    const v5, 0x1090009

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->m_due_adapter:Landroid/widget/ArrayAdapter;

    move-object v4, v0

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 395
    if-eqz v18, :cond_2

    .line 396
    const-string v4, "DATE"

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 397
    const-string v4, "DATE"

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 398
    .local v10, _date:Ljava/lang/String;
    new-instance v15, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    invoke-direct {v15, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 399
    .local v15, df:Ljava/text/SimpleDateFormat;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->curDate:Ljava/util/Calendar;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v23

    .line 400
    .local v23, s_date:Ljava/lang/String;
    move-object/from16 v0, v23

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_7

    .line 401
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/wareone/tappmt/TapPMT;->m_due_index:I

    .line 412
    .end local v10           #_date:Ljava/lang/String;
    .end local v15           #df:Ljava/text/SimpleDateFormat;
    .end local v23           #s_date:Ljava/lang/String;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wareone/tappmt/TapPMT;->m_due_index:I

    move v4, v0

    move-object/from16 v0, v22

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 414
    new-instance v4, Lcom/wareone/tappmt/TapPMT$8;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/wareone/tappmt/TapPMT$8;-><init>(Lcom/wareone/tappmt/TapPMT;Landroid/widget/Spinner;)V

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 437
    const v4, 0x7f0c005f

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/TapPMT;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/Spinner;

    .line 438
    .local v25, spn_type:Landroid/widget/Spinner;
    new-instance v26, Landroid/widget/ArrayAdapter;

    .line 439
    const v4, 0x1090008

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->m_actions:[Ljava/lang/String;

    move-object v5, v0

    .line 438
    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move v2, v4

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 440
    .local v26, tm_adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v4, 0x1090009

    move-object/from16 v0, v26

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 441
    invoke-virtual/range {v25 .. v26}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 442
    const/4 v4, 0x0

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 444
    if-eqz v18, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/wareone/tappmt/TapPMT;->_checkPermission()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 445
    const-string v4, "SOURCE"

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 446
    new-instance v19, Landroid/content/Intent;

    const-class v4, Lcom/wareone/tappmt/Transaction;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 447
    .local v19, it:Landroid/content/Intent;
    const-string v4, "ACTION"

    const v5, 0x7f09005b

    move-object/from16 v0, v19

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 448
    const-string v4, "MODE"

    const/4 v5, -0x1

    move-object/from16 v0, v19

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 449
    const-string v4, "_id"

    const/4 v5, 0x0

    move-object/from16 v0, v19

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 450
    const-string v4, "SOURCE"

    const-string v5, "SOURCE"

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    const-string v4, "SOURCE_ID"

    const-string v5, "SOURCE_ID"

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    move-object/from16 v0, v19

    move-object v1, v4

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 452
    const-string v4, "AMOUNT"

    const-string v5, "AMOUNT"

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    move-object/from16 v0, v19

    move-object v1, v4

    move-wide v2, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 453
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/TapPMT;->startActivity(Landroid/content/Intent;)V

    .line 455
    .end local v19           #it:Landroid/content/Intent;
    :cond_3
    const-string v4, "REMINDER_ID"

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 456
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 457
    invoke-virtual/range {p0 .. p0}, Lcom/wareone/tappmt/TapPMT;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070007

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 458
    new-instance v7, Lcom/wareone/tappmt/TapPMT$9;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/wareone/tappmt/TapPMT$9;-><init>(Lcom/wareone/tappmt/TapPMT;Landroid/os/Bundle;)V

    .line 457
    invoke-virtual {v4, v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 496
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 500
    :cond_4
    const-string v4, "google_account"

    move-object/from16 v0, v24

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 501
    const/4 v5, 0x1

    .line 502
    const/4 v6, 0x0

    .line 504
    const/4 v7, 0x0

    .line 505
    const/4 v8, 0x0

    .line 506
    const/4 v9, 0x0

    move-object/from16 v4, p0

    .line 501
    invoke-static/range {v4 .. v9}, Lcom/google/android/googlelogin/GoogleLoginServiceHelper;->getCredentials(Landroid/app/Activity;ILandroid/os/Bundle;ZLjava/lang/String;Z)V

    .line 509
    :cond_5
    const v4, 0x7f0900bf

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 510
    return-void

    .line 263
    .end local v11           #btn_addNew:Landroid/widget/Button;
    .end local v12           #btn_balance:Landroid/widget/Button;
    .end local v13           #btn_filter:Landroid/widget/Button;
    .end local v14           #btn_template:Landroid/widget/Button;
    .end local v16           #digits:I
    .end local v20           #lv:Landroid/widget/ListView;
    .end local v21           #pattern:Ljava/lang/String;
    .end local v22           #s1:Landroid/widget/Spinner;
    .end local v25           #spn_type:Landroid/widget/Spinner;
    .end local v26           #tm_adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_6
    const-string v4, "ver_code"

    const/4 v5, 0x1

    move-object/from16 v0, v24

    move-object v1, v4

    move v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    move/from16 v1, v27

    if-ge v0, v1, :cond_0

    .line 264
    invoke-interface/range {v24 .. v24}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    .line 265
    .restart local v17       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "ver_code"

    move-object/from16 v0, v17

    move-object v1, v4

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 266
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 268
    invoke-direct/range {p0 .. p0}, Lcom/wareone/tappmt/TapPMT;->_showWhatsNew()V

    goto/16 :goto_1

    .line 403
    .end local v17           #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v10       #_date:Ljava/lang/String;
    .restart local v11       #btn_addNew:Landroid/widget/Button;
    .restart local v12       #btn_balance:Landroid/widget/Button;
    .restart local v13       #btn_filter:Landroid/widget/Button;
    .restart local v14       #btn_template:Landroid/widget/Button;
    .restart local v15       #df:Ljava/text/SimpleDateFormat;
    .restart local v16       #digits:I
    .restart local v20       #lv:Landroid/widget/ListView;
    .restart local v21       #pattern:Ljava/lang/String;
    .restart local v22       #s1:Landroid/widget/Spinner;
    .restart local v23       #s_date:Ljava/lang/String;
    :cond_7
    const/4 v4, 0x0

    const/4 v5, 0x7

    invoke-virtual {v10, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 404
    const/4 v4, 0x0

    const/4 v5, 0x7

    move-object/from16 v0, v23

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_8

    .line 405
    const/4 v4, 0x1

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/wareone/tappmt/TapPMT;->m_due_index:I

    goto/16 :goto_2

    .line 407
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->m_due:Ljava/util/List;

    move-object v4, v0

    invoke-interface {v4, v10}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/wareone/tappmt/TapPMT;->m_due_index:I

    goto/16 :goto_2

    .line 254
    .end local v10           #_date:Ljava/lang/String;
    .end local v11           #btn_addNew:Landroid/widget/Button;
    .end local v12           #btn_balance:Landroid/widget/Button;
    .end local v13           #btn_filter:Landroid/widget/Button;
    .end local v14           #btn_template:Landroid/widget/Button;
    .end local v15           #df:Ljava/text/SimpleDateFormat;
    .end local v16           #digits:I
    .end local v20           #lv:Landroid/widget/ListView;
    .end local v21           #pattern:Ljava/lang/String;
    .end local v22           #s1:Landroid/widget/Spinner;
    .end local v23           #s_date:Ljava/lang/String;
    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/wareone/tappmt/TapPMT;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 600
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0b0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 602
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/wareone/tappmt/TapPMT;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v0}, Lcom/wareone/tappmt/PmtDbAdapter;->close()V

    .line 516
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 517
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .parameter "menu"

    .prologue
    const v11, 0x7f09009e

    const v9, 0x7f09007b

    const/4 v8, 0x0

    const-string v10, "authorized"

    .line 609
    const-string v7, "TapPMTPrefs"

    invoke-virtual {p0, v7, v8}, Lcom/wareone/tappmt/TapPMT;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 610
    .local v4, settings:Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    .line 612
    .local v2, it:Landroid/content/Intent;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 767
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v7

    return v7

    .line 619
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    .end local v2           #it:Landroid/content/Intent;
    const-class v7, Lcom/wareone/tappmt/ReportList;

    invoke-direct {v2, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 621
    .restart local v2       #it:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/wareone/tappmt/TapPMT;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 625
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    const-string v7, "com.wareone.tapshopper.SHOPPING"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 626
    .local v1, intent:Landroid/content/Intent;
    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 628
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v7}, Lcom/wareone/tappmt/TapPMT;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 629
    :catch_0
    move-exception v0

    .line 630
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v7, "Install Tap Shopper"

    const-string v8, "This function requires Tap Shopper.Would you like to install it?"

    const-string v9, "Yes"

    const-string v10, "No"

    invoke-static {p0, v7, v8, v9, v10}, Lcom/wareone/tappmt/TapPMT;->showDownloadDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 634
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_3
    new-instance v2, Landroid/content/Intent;

    .end local v2           #it:Landroid/content/Intent;
    const-class v7, Lcom/wareone/tappmt/Settings;

    invoke-direct {v2, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 635
    .restart local v2       #it:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/wareone/tappmt/TapPMT;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 648
    :pswitch_4
    iget-object v7, p0, Lcom/wareone/tappmt/TapPMT;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v7}, Lcom/wareone/tappmt/PmtDbAdapter;->export()V

    goto :goto_0

    .line 651
    :pswitch_5
    const-string v7, "authorized"

    invoke-interface {v4, v10, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 652
    iget-object v7, p0, Lcom/wareone/tappmt/TapPMT;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v7}, Lcom/wareone/tappmt/PmtDbAdapter;->backup()V

    goto :goto_0

    .line 654
    :cond_0
    invoke-direct {p0, v9, v11}, Lcom/wareone/tappmt/TapPMT;->_showRegister(II)V

    goto :goto_0

    .line 659
    :pswitch_6
    const-string v7, "authorized"

    invoke-interface {v4, v10, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 660
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 661
    const v8, 0x7f090075

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 662
    const v8, 0x7f090091

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 663
    const v8, 0x7f09004e

    .line 664
    new-instance v9, Lcom/wareone/tappmt/TapPMT$10;

    invoke-direct {v9, p0}, Lcom/wareone/tappmt/TapPMT$10;-><init>(Lcom/wareone/tappmt/TapPMT;)V

    .line 663
    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 674
    const v8, 0x7f09004f

    .line 675
    new-instance v9, Lcom/wareone/tappmt/TapPMT$11;

    invoke-direct {v9, p0}, Lcom/wareone/tappmt/TapPMT$11;-><init>(Lcom/wareone/tappmt/TapPMT;)V

    .line 674
    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 682
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 684
    :cond_1
    const v7, 0x7f09009f

    invoke-direct {p0, v9, v7}, Lcom/wareone/tappmt/TapPMT;->_showRegister(II)V

    goto/16 :goto_0

    .line 689
    :pswitch_7
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 690
    .local v3, mInflater:Landroid/view/LayoutInflater;
    const/high16 v7, 0x7f03

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 691
    .local v6, vw:Landroid/view/View;
    const v7, 0x7f0c0001

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 693
    .local v5, tv_version:Landroid/widget/TextView;
    :try_start_1
    invoke-virtual {p0}, Lcom/wareone/tappmt/TapPMT;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/wareone/tappmt/TapPMT;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 696
    :goto_1
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 697
    const-string v8, "About"

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 698
    invoke-virtual {v7, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 699
    const v8, 0x7f090050

    .line 700
    new-instance v9, Lcom/wareone/tappmt/TapPMT$12;

    invoke-direct {v9, p0}, Lcom/wareone/tappmt/TapPMT$12;-><init>(Lcom/wareone/tappmt/TapPMT;)V

    .line 699
    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 710
    const v8, 0x7f090051

    .line 711
    new-instance v9, Lcom/wareone/tappmt/TapPMT$13;

    invoke-direct {v9, p0}, Lcom/wareone/tappmt/TapPMT$13;-><init>(Lcom/wareone/tappmt/TapPMT;)V

    .line 710
    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 719
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 723
    .end local v3           #mInflater:Landroid/view/LayoutInflater;
    .end local v5           #tv_version:Landroid/widget/TextView;
    .end local v6           #vw:Landroid/view/View;
    :pswitch_8
    const-string v7, "authorized"

    invoke-interface {v4, v10, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 724
    iget-object v7, p0, Lcom/wareone/tappmt/TapPMT;->m_data:Ljava/util/List;

    invoke-static {v7}, Lcom/wareone/tappmt/PmtDbAdapter;->exportCSV(Ljava/util/List;)V

    .line 725
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 726
    const-string v8, "Send Mail"

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 727
    const-string v8, "send mail with export csv file."

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 728
    const v8, 0x7f09004c

    .line 729
    new-instance v9, Lcom/wareone/tappmt/TapPMT$14;

    invoke-direct {v9, p0}, Lcom/wareone/tappmt/TapPMT$14;-><init>(Lcom/wareone/tappmt/TapPMT;)V

    .line 728
    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 738
    const v8, 0x7f09004b

    .line 739
    new-instance v9, Lcom/wareone/tappmt/TapPMT$15;

    invoke-direct {v9, p0}, Lcom/wareone/tappmt/TapPMT$15;-><init>(Lcom/wareone/tappmt/TapPMT;)V

    .line 738
    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 746
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 749
    :cond_2
    const v7, 0x7f0900a5

    invoke-direct {p0, v9, v7}, Lcom/wareone/tappmt/TapPMT;->_showRegister(II)V

    goto/16 :goto_0

    .line 754
    :pswitch_9
    const-string v7, "authorized"

    invoke-interface {v4, v10, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 755
    const-string v7, "sync_password"

    const-string v8, ""

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_3

    .line 756
    invoke-direct {p0}, Lcom/wareone/tappmt/TapPMT;->_checkAccount()V

    goto/16 :goto_0

    .line 758
    :cond_3
    invoke-direct {p0}, Lcom/wareone/tappmt/TapPMT;->_login()V

    goto/16 :goto_0

    .line 761
    :cond_4
    invoke-direct {p0, v9, v11}, Lcom/wareone/tappmt/TapPMT;->_showRegister(II)V

    goto/16 :goto_0

    .line 694
    .restart local v3       #mInflater:Landroid/view/LayoutInflater;
    .restart local v5       #tv_version:Landroid/widget/TextView;
    .restart local v6       #vw:Landroid/view/View;
    :catch_1
    move-exception v7

    goto/16 :goto_1

    .line 612
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c00c1
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_3
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 546
    iget-boolean v0, p0, Lcom/wareone/tappmt/TapPMT;->show_me:Z

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/wareone/tappmt/TapPMT;->m_sm:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 549
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 550
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 521
    sget-object v3, Lcom/wareone/tappmt/TapPMT;->TAG:Ljava/lang/String;

    const-string v4, "onResume ------ "

    invoke-static {v3, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iget-object v3, p0, Lcom/wareone/tappmt/TapPMT;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    iget-object v4, p0, Lcom/wareone/tappmt/TapPMT;->m_dbadapter:Lcom/wareone/tappmt/PmtDbAdapter;

    invoke-virtual {v4}, Lcom/wareone/tappmt/PmtDbAdapter;->getDefaultCurrency()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wareone/tappmt/PmtDbAdapter;->getDigitsByCurrency(Ljava/lang/String;)I

    move-result v0

    .line 524
    .local v0, digits:I
    const-string v1, "#,###,##0"

    .line 525
    .local v1, pattern:Ljava/lang/String;
    if-lez v0, :cond_0

    .line 526
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "000000000000"

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 528
    :cond_0
    new-instance v3, Ljava/text/DecimalFormat;

    invoke-direct {v3, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/wareone/tappmt/TapPMT;->m_nf:Ljava/text/NumberFormat;

    .line 530
    invoke-direct {p0}, Lcom/wareone/tappmt/TapPMT;->_loadAccount()V

    .line 531
    invoke-direct {p0}, Lcom/wareone/tappmt/TapPMT;->_loadGroup()V

    .line 532
    invoke-direct {p0}, Lcom/wareone/tappmt/TapPMT;->_loadDue()V

    .line 533
    invoke-virtual {p0}, Lcom/wareone/tappmt/TapPMT;->_refresh()V

    .line 535
    const-string v3, "TapPMTPrefs"

    invoke-virtual {p0, v3, v5}, Lcom/wareone/tappmt/TapPMT;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 536
    .local v2, settings:Landroid/content/SharedPreferences;
    const-string v3, "show_me"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/wareone/tappmt/TapPMT;->show_me:Z

    .line 537
    iget-boolean v3, p0, Lcom/wareone/tappmt/TapPMT;->show_me:Z

    if-eqz v3, :cond_1

    .line 538
    iget-object v3, p0, Lcom/wareone/tappmt/TapPMT;->m_sm:Landroid/hardware/SensorManager;

    iget-object v4, p0, Lcom/wareone/tappmt/TapPMT;->m_sm:Landroid/hardware/SensorManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v3, p0, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 541
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 542
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 23
    .parameter "event"

    .prologue
    .line 781
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Sensor;->getType()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 783
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget v16, v19, v20

    .line 784
    .local v16, x:F
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v17, v19, v20

    .line 785
    .local v17, y:F
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v19, v0

    const/16 v20, 0x2

    aget v18, v19, v20

    .line 790
    .local v18, z:F
    const-wide v8, 0x3ff6666660000000L

    .line 791
    .local v8, forceThreshHold:D
    const-wide/16 v3, 0x0

    .line 793
    .local v3, appliedAcceleration:D
    move/from16 v0, v16

    float-to-double v0, v0

    move-wide v3, v0

    .line 795
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wareone/tappmt/TapPMT;->previousAcceleration:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    sub-double v19, v3, v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    .line 796
    .local v5, diff:D
    const-wide/high16 v19, 0x4012

    cmpl-double v19, v5, v19

    if-lez v19, :cond_4

    .line 797
    new-instance v13, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-object v0, v13

    move-wide/from16 v1, v19

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 798
    .local v13, timeNow:Ljava/util/Date;
    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->lastUpdateTime:Ljava/util/Date;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Date;->getTime()J

    move-result-wide v21

    sub-long v14, v19, v21

    .line 799
    .local v14, timePeriod:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wareone/tappmt/TapPMT;->shak_cnt:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/wareone/tappmt/TapPMT;->shak_cnt:I

    .line 800
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wareone/tappmt/TapPMT;->shak_cnt:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_1

    .line 801
    sget-object v19, Lcom/wareone/tappmt/TapPMT;->TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "shak count = "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wareone/tappmt/TapPMT;->shak_cnt:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/wareone/tappmt/TapPMT;->shak_cnt:I

    .line 803
    const/4 v12, 0x0

    .line 804
    .local v12, show_cnt:I
    const-string v19, "TapPMTPrefs"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/wareone/tappmt/TapPMT;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 805
    .local v11, settings:Landroid/content/SharedPreferences;
    const-string v19, "authorized"

    const/16 v20, 0x0

    move-object v0, v11

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    if-nez v19, :cond_0

    .line 806
    const-string v19, "show_count"

    const/16 v20, 0x0

    move-object v0, v11

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 808
    :cond_0
    const/16 v19, 0x14

    move v0, v12

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    .line 809
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 810
    .local v7, editor:Landroid/content/SharedPreferences$Editor;
    const-string v19, "show_count"

    add-int/lit8 v20, v12, 0x1

    move-object v0, v7

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 811
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 813
    new-instance v10, Landroid/content/Intent;

    const-class v19, Lcom/wareone/tappmt/ShowMe;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 814
    .local v10, it:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/wareone/tappmt/TapPMT;->startActivity(Landroid/content/Intent;)V

    .line 888
    .end local v7           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v10           #it:Landroid/content/Intent;
    .end local v11           #settings:Landroid/content/SharedPreferences;
    .end local v12           #show_cnt:I
    :cond_1
    :goto_0
    move-wide v0, v3

    double-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/wareone/tappmt/TapPMT;->previousAcceleration:F

    .line 892
    .end local v3           #appliedAcceleration:D
    .end local v5           #diff:D
    .end local v8           #forceThreshHold:D
    .end local v13           #timeNow:Ljava/util/Date;
    .end local v14           #timePeriod:J
    .end local v16           #x:F
    .end local v17           #y:F
    .end local v18           #z:F
    :cond_2
    return-void

    .line 816
    .restart local v3       #appliedAcceleration:D
    .restart local v5       #diff:D
    .restart local v8       #forceThreshHold:D
    .restart local v11       #settings:Landroid/content/SharedPreferences;
    .restart local v12       #show_cnt:I
    .restart local v13       #timeNow:Ljava/util/Date;
    .restart local v14       #timePeriod:J
    .restart local v16       #x:F
    .restart local v17       #y:F
    .restart local v18       #z:F
    :cond_3
    const v19, 0x7f09007b

    const v20, 0x7f0900a4

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/wareone/tappmt/TapPMT;->_showRegister(II)V

    goto :goto_0

    .line 846
    .end local v11           #settings:Landroid/content/SharedPreferences;
    .end local v12           #show_cnt:I
    .end local v13           #timeNow:Ljava/util/Date;
    .end local v14           #timePeriod:J
    :cond_4
    new-instance v13, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-object v0, v13

    move-wide/from16 v1, v19

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 848
    .restart local v13       #timeNow:Ljava/util/Date;
    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->lastUpdateTime:Ljava/util/Date;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/Date;->getTime()J

    move-result-wide v21

    sub-long v14, v19, v21

    .line 850
    .restart local v14       #timePeriod:J
    const-wide/16 v19, 0x190

    cmp-long v19, v14, v19

    if-lez v19, :cond_1

    .line 851
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/wareone/tappmt/TapPMT;->shak_cnt:I

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wareone/tappmt/TapPMT;->lastUpdateTime:Ljava/util/Date;

    move-object/from16 v19, v0

    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/util/Date;->setTime(J)V

    goto :goto_0
.end method
