.class public Lcom/pgmsoft/wifinder/Analyzer;
.super Landroid/app/Activity;
.source "Analyzer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pgmsoft/wifinder/Analyzer$MyCount;
    }
.end annotation


# instance fields
.field managerWifi:Landroid/net/wifi/WifiManager;

.field timer:Lcom/pgmsoft/wifinder/Analyzer$MyCount;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/pgmsoft/wifinder/Analyzer;->managerWifi:Landroid/net/wifi/WifiManager;

    .line 17
    iput-object v0, p0, Lcom/pgmsoft/wifinder/Analyzer;->timer:Lcom/pgmsoft/wifinder/Analyzer$MyCount;

    .line 14
    return-void
.end method

.method static synthetic access$0(Lcom/pgmsoft/wifinder/Analyzer;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/pgmsoft/wifinder/Analyzer;->drawCanvas(Ljava/util/List;)V

    return-void
.end method

.method private drawCanvas(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, resultList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 46
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 47
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v3, :cond_1

    .line 56
    .end local v2           #i:I
    .end local v3           #size:I
    :cond_0
    return-void

    .line 50
    .restart local v2       #i:I
    .restart local v3       #size:I
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget v1, v4, Landroid/net/wifi/ScanResult;->frequency:I

    .line 51
    .local v1, freq:I
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget v0, v4, Landroid/net/wifi/ScanResult;->level:I

    .line 52
    .local v0, dBm:I
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget-object v4, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 47
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 22
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/pgmsoft/wifinder/Analyzer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/pgmsoft/wifinder/Analyzer;->managerWifi:Landroid/net/wifi/WifiManager;

    .line 23
    new-instance v0, Lcom/pgmsoft/wifinder/Analyzer$1;

    invoke-direct {v0, p0}, Lcom/pgmsoft/wifinder/Analyzer$1;-><init>(Lcom/pgmsoft/wifinder/Analyzer;)V

    .line 30
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0, v0, v1}, Lcom/pgmsoft/wifinder/Analyzer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 32
    iget-object v0, p0, Lcom/pgmsoft/wifinder/Analyzer;->managerWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 34
    new-instance v0, Lcom/pgmsoft/wifinder/Analyzer$MyCount;

    const-wide/16 v2, 0x44c

    const-wide/16 v4, 0x64

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/pgmsoft/wifinder/Analyzer$MyCount;-><init>(Lcom/pgmsoft/wifinder/Analyzer;JJ)V

    iput-object v0, p0, Lcom/pgmsoft/wifinder/Analyzer;->timer:Lcom/pgmsoft/wifinder/Analyzer$MyCount;

    .line 35
    iget-object v0, p0, Lcom/pgmsoft/wifinder/Analyzer;->timer:Lcom/pgmsoft/wifinder/Analyzer$MyCount;

    invoke-virtual {v0}, Lcom/pgmsoft/wifinder/Analyzer$MyCount;->start()Landroid/os/CountDownTimer;

    .line 37
    return-void
.end method
