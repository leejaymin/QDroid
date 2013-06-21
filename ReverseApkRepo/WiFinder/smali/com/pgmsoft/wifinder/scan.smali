.class public Lcom/pgmsoft/wifinder/scan;
.super Landroid/app/ListActivity;
.source "scan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pgmsoft/wifinder/scan$MyCount;,
        Lcom/pgmsoft/wifinder/scan$WifiBroadcast;
    }
.end annotation


# static fields
.field private static final APP_ID:I = 0x0

.field private static final Menu_ABOUT:I = 0x1

.field private static final Menu_AutoScan:I = 0x4

.field private static final Menu_DeleteAll:I = 0x7

.field private static final Menu_KnownNetworks:I = 0x2

.field private static final Menu_LevelChoose:I = 0x5

.field private static final Menu_PREFERENCJE:I = 0x3

.field private static final Menu_ScanList:I = 0x6

.field private static startInfo:Z


# instance fields
.field private BnewScan:Landroid/widget/Button;

.field private attempt:I

.field private changeOrientation:Z

.field private connectNetworkId:I

.field private connected:Z

.field public counter:Lcom/pgmsoft/wifinder/scan$MyCount;

.field private counter_base:J

.field private counter_to_finish:J

.field private current_selected_position:I

.field private first_run:Z

.field private knownList:Lcom/pgmsoft/wifinder/KnownNetworks;

.field private level_choose:I

.field private mManager:Landroid/app/NotificationManager;

.field private mainMangerWifi:Landroid/net/wifi/WifiManager;

.field private menu_setup:Z

.field private netList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private netListaCheck:Lcom/pgmsoft/wifinder/RowList;

.field private networkPick:Ljava/lang/String;

.field private new_scan_menu:Z

.field private notification:Landroid/app/Notification;

.field private onlyAp:Landroid/widget/CheckBox;

.field private prevNetworkConnected:Ljava/lang/String;

.field private prevState:Landroid/net/NetworkInfo$DetailedState;

.field private receiverNetChange:Lcom/pgmsoft/wifinder/scan$WifiBroadcast;

.field private receiverScanResult:Lcom/pgmsoft/wifinder/scan$WifiBroadcast;

.field private rowList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pgmsoft/wifinder/RowList;",
            ">;"
        }
    .end annotation
.end field

.field private title_lewy:Landroid/widget/TextView;

.field private title_prawy:Landroid/widget/TextView;

.field private tmpSSID:Ljava/lang/String;

.field private version:Ljava/lang/String;

.field private w:Lcom/pgmsoft/wifinder/RowList;

.field private wifiAdapter:Lcom/pgmsoft/wifinder/WifiAdapter;

.field private wifiConf:Landroid/net/wifi/WifiConfiguration;

.field private wifiConfList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    sput-boolean v0, Lcom/pgmsoft/wifinder/scan;->startInfo:Z

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 59
    iput-object v1, p0, Lcom/pgmsoft/wifinder/scan;->rowList:Ljava/util/List;

    .line 60
    iput-object v1, p0, Lcom/pgmsoft/wifinder/scan;->wifiAdapter:Lcom/pgmsoft/wifinder/WifiAdapter;

    .line 61
    iput-object v1, p0, Lcom/pgmsoft/wifinder/scan;->mainMangerWifi:Landroid/net/wifi/WifiManager;

    .line 62
    new-instance v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;

    invoke-direct {v0, p0}, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;-><init>(Lcom/pgmsoft/wifinder/scan;)V

    iput-object v0, p0, Lcom/pgmsoft/wifinder/scan;->receiverScanResult:Lcom/pgmsoft/wifinder/scan$WifiBroadcast;

    .line 63
    new-instance v0, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;

    invoke-direct {v0, p0}, Lcom/pgmsoft/wifinder/scan$WifiBroadcast;-><init>(Lcom/pgmsoft/wifinder/scan;)V

    iput-object v0, p0, Lcom/pgmsoft/wifinder/scan;->receiverNetChange:Lcom/pgmsoft/wifinder/scan$WifiBroadcast;

    .line 64
    iput-object v1, p0, Lcom/pgmsoft/wifinder/scan;->w:Lcom/pgmsoft/wifinder/RowList;

    .line 65
    iput-object v1, p0, Lcom/pgmsoft/wifinder/scan;->BnewScan:Landroid/widget/Button;

    .line 66
    iput-boolean v2, p0, Lcom/pgmsoft/wifinder/scan;->changeOrientation:Z

    .line 67
    iput-object v1, p0, Lcom/pgmsoft/wifinder/scan;->onlyAp:Landroid/widget/CheckBox;

    .line 68
    iput-object v1, p0, Lcom/pgmsoft/wifinder/scan;->netListaCheck:Lcom/pgmsoft/wifinder/RowList;

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/pgmsoft/wifinder/scan;->connectNetworkId:I

    .line 70
    iput-object v1, p0, Lcom/pgmsoft/wifinder/scan;->networkPick:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Lcom/pgmsoft/wifinder/scan;->netList:Ljava/util/List;

    .line 72
    iput-object v1, p0, Lcom/pgmsoft/wifinder/scan;->prevState:Landroid/net/NetworkInfo$DetailedState;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/pgmsoft/wifinder/scan;->prevNetworkConnected:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/pgmsoft/wifinder/scan;->tmpSSID:Ljava/lang/String;

    .line 75
    iput v3, p0, Lcom/pgmsoft/wifinder/scan;->attempt:I

    .line 77
    iput-boolean v3, p0, Lcom/pgmsoft/wifinder/scan;->first_run:Z

    .line 78
    iput-object v1, p0, Lcom/pgmsoft/wifinder/scan;->wifiConfList:Ljava/util/List;

    .line 79
    iput-object v1, p0, Lcom/pgmsoft/wifinder/scan;->wifiConf:Landroid/net/wifi/WifiConfiguration;

    .line 82
    iput-object v1, p0, Lcom/pgmsoft/wifinder/scan;->notification:Landroid/app/Notification;

    .line 83
    iput-object v1, p0, Lcom/pgmsoft/wifinder/scan;->knownList:Lcom/pgmsoft/wifinder/KnownNetworks;

    .line 84
    iput-boolean v2, p0, Lcom/pgmsoft/wifinder/scan;->menu_setup:Z

    .line 85
    iput v2, p0, Lcom/pgmsoft/wifinder/scan;->current_selected_position:I

    .line 86
    const-string v0, "1.0"

    iput-object v0, p0, Lcom/pgmsoft/wifinder/scan;->version:Ljava/lang/String;

    .line 87
    iput-wide v4, p0, Lcom/pgmsoft/wifinder/scan;->counter_to_finish:J

    .line 88
    iput-wide v4, p0, Lcom/pgmsoft/wifinder/scan;->counter_base:J

    .line 98
    iput-boolean v2, p0, Lcom/pgmsoft/wifinder/scan;->new_scan_menu:Z

    .line 100
    iput-object v1, p0, Lcom/pgmsoft/wifinder/scan;->counter:Lcom/pgmsoft/wifinder/scan$MyCount;

    .line 102
    iput-object v1, p0, Lcom/pgmsoft/wifinder/scan;->title_lewy:Landroid/widget/TextView;

    .line 103
    iput-object v1, p0, Lcom/pgmsoft/wifinder/scan;->title_prawy:Landroid/widget/TextView;

    .line 105
    iput v2, p0, Lcom/pgmsoft/wifinder/scan;->level_choose:I

    .line 58
    return-void
.end method

.method private AboutDialog()V
    .locals 5

    .prologue
    .line 344
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 345
    const v1, 0x7f040013

    invoke-virtual {p0, v1}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 346
    const v1, 0x7f020002

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 347
    const v1, 0x7f040014

    invoke-virtual {p0, v1}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/pgmsoft/wifinder/scan;->version:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 348
    const v1, 0x7f040015

    invoke-virtual {p0, v1}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 349
    new-instance v2, Lcom/pgmsoft/wifinder/scan$6;

    invoke-direct {v2, p0}, Lcom/pgmsoft/wifinder/scan$6;-><init>(Lcom/pgmsoft/wifinder/scan;)V

    .line 348
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 353
    const v1, 0x7f040016

    invoke-virtual {p0, v1}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 354
    new-instance v2, Lcom/pgmsoft/wifinder/scan$7;

    invoke-direct {v2, p0}, Lcom/pgmsoft/wifinder/scan$7;-><init>(Lcom/pgmsoft/wifinder/scan;)V

    .line 353
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 360
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 362
    return-void
.end method

.method static synthetic access$0(Lcom/pgmsoft/wifinder/scan;)Lcom/pgmsoft/wifinder/scan$WifiBroadcast;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan;->receiverScanResult:Lcom/pgmsoft/wifinder/scan$WifiBroadcast;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pgmsoft/wifinder/scan;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan;->mainMangerWifi:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$10(Lcom/pgmsoft/wifinder/scan;)I
    .locals 1
    .parameter

    .prologue
    .line 69
    iget v0, p0, Lcom/pgmsoft/wifinder/scan;->connectNetworkId:I

    return v0
.end method

.method static synthetic access$11(Lcom/pgmsoft/wifinder/scan;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan;->tmpSSID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lcom/pgmsoft/wifinder/scan;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/pgmsoft/wifinder/scan;->networkPick:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$13(Lcom/pgmsoft/wifinder/scan;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput p1, p0, Lcom/pgmsoft/wifinder/scan;->attempt:I

    return-void
.end method

.method static synthetic access$14(Lcom/pgmsoft/wifinder/scan;)I
    .locals 1
    .parameter

    .prologue
    .line 75
    iget v0, p0, Lcom/pgmsoft/wifinder/scan;->attempt:I

    return v0
.end method

.method static synthetic access$15(Lcom/pgmsoft/wifinder/scan;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/pgmsoft/wifinder/scan;->prevState:Landroid/net/NetworkInfo$DetailedState;

    return-void
.end method

.method static synthetic access$16(Lcom/pgmsoft/wifinder/scan;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan;->rowList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$17(Lcom/pgmsoft/wifinder/scan;Ljava/lang/Object;ZI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 509
    invoke-direct {p0, p1, p2, p3}, Lcom/pgmsoft/wifinder/scan;->showDialogNetwork(Ljava/lang/Object;ZI)V

    return-void
.end method

.method static synthetic access$18(Lcom/pgmsoft/wifinder/scan;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/pgmsoft/wifinder/scan;->new_scan_menu:Z

    return-void
.end method

.method static synthetic access$19(Lcom/pgmsoft/wifinder/scan;Lcom/pgmsoft/wifinder/RowList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/pgmsoft/wifinder/scan;->w:Lcom/pgmsoft/wifinder/RowList;

    return-void
.end method

.method static synthetic access$2(Lcom/pgmsoft/wifinder/scan;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/pgmsoft/wifinder/scan;->netList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$20(Lcom/pgmsoft/wifinder/scan;)Lcom/pgmsoft/wifinder/RowList;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan;->w:Lcom/pgmsoft/wifinder/RowList;

    return-object v0
.end method

.method static synthetic access$21(Lcom/pgmsoft/wifinder/scan;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan;->BnewScan:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$22(Lcom/pgmsoft/wifinder/scan;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan;->onlyAp:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$23(Lcom/pgmsoft/wifinder/scan;)Z
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/pgmsoft/wifinder/scan;->changeOrientation:Z

    return v0
.end method

.method static synthetic access$24(Lcom/pgmsoft/wifinder/scan;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/pgmsoft/wifinder/scan;->changeOrientation:Z

    return-void
.end method

.method static synthetic access$25(Lcom/pgmsoft/wifinder/scan;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-wide p1, p0, Lcom/pgmsoft/wifinder/scan;->counter_to_finish:J

    return-void
.end method

.method static synthetic access$26(Lcom/pgmsoft/wifinder/scan;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan;->title_prawy:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$27(Lcom/pgmsoft/wifinder/scan;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 467
    invoke-direct {p0, p1}, Lcom/pgmsoft/wifinder/scan;->newScan(Z)V

    return-void
.end method

.method static synthetic access$28(Lcom/pgmsoft/wifinder/scan;)J
    .locals 2
    .parameter

    .prologue
    .line 88
    iget-wide v0, p0, Lcom/pgmsoft/wifinder/scan;->counter_base:J

    return-wide v0
.end method

.method static synthetic access$29(Lcom/pgmsoft/wifinder/scan;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 105
    iput p1, p0, Lcom/pgmsoft/wifinder/scan;->level_choose:I

    return-void
.end method

.method static synthetic access$3(Lcom/pgmsoft/wifinder/scan;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan;->netList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$30(Lcom/pgmsoft/wifinder/scan;)I
    .locals 1
    .parameter

    .prologue
    .line 105
    iget v0, p0, Lcom/pgmsoft/wifinder/scan;->level_choose:I

    return v0
.end method

.method static synthetic access$31(Lcom/pgmsoft/wifinder/scan;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1204
    invoke-direct {p0, p1}, Lcom/pgmsoft/wifinder/scan;->saveLevelChoose(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$32(Lcom/pgmsoft/wifinder/scan;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/pgmsoft/wifinder/scan;->wifiConf:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method

.method static synthetic access$33(Lcom/pgmsoft/wifinder/scan;)Lcom/pgmsoft/wifinder/KnownNetworks;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan;->knownList:Lcom/pgmsoft/wifinder/KnownNetworks;

    return-object v0
.end method

.method static synthetic access$34(Lcom/pgmsoft/wifinder/scan;)I
    .locals 1
    .parameter

    .prologue
    .line 85
    iget v0, p0, Lcom/pgmsoft/wifinder/scan;->current_selected_position:I

    return v0
.end method

.method static synthetic access$35(Lcom/pgmsoft/wifinder/scan;)Z
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/pgmsoft/wifinder/scan;->connected:Z

    return v0
.end method

.method static synthetic access$36(Lcom/pgmsoft/wifinder/scan;)Lcom/pgmsoft/wifinder/RowList;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan;->netListaCheck:Lcom/pgmsoft/wifinder/RowList;

    return-object v0
.end method

.method static synthetic access$37(Lcom/pgmsoft/wifinder/scan;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan;->networkPick:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$38(Lcom/pgmsoft/wifinder/scan;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan;->wifiConf:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$39(Lcom/pgmsoft/wifinder/scan;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan;->prevNetworkConnected:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pgmsoft/wifinder/scan;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 825
    invoke-direct {p0, p1}, Lcom/pgmsoft/wifinder/scan;->listScanResult(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method static synthetic access$40(Lcom/pgmsoft/wifinder/scan;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    iput-wide p1, p0, Lcom/pgmsoft/wifinder/scan;->counter_base:J

    return-void
.end method

.method static synthetic access$5(Lcom/pgmsoft/wifinder/scan;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/pgmsoft/wifinder/scan;->tmpSSID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/pgmsoft/wifinder/scan;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan;->title_lewy:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/pgmsoft/wifinder/scan;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput p1, p0, Lcom/pgmsoft/wifinder/scan;->connectNetworkId:I

    return-void
.end method

.method static synthetic access$8(Lcom/pgmsoft/wifinder/scan;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/pgmsoft/wifinder/scan;->wifiConfList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$9(Lcom/pgmsoft/wifinder/scan;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan;->wifiConfList:Ljava/util/List;

    return-object v0
.end method

.method private channel(I)I
    .locals 1
    .parameter "freq"

    .prologue
    .line 791
    sparse-switch p1, :sswitch_data_0

    .line 821
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 793
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 795
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 797
    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 799
    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 801
    :sswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 803
    :sswitch_5
    const/4 v0, 0x6

    goto :goto_0

    .line 805
    :sswitch_6
    const/4 v0, 0x7

    goto :goto_0

    .line 807
    :sswitch_7
    const/16 v0, 0x8

    goto :goto_0

    .line 809
    :sswitch_8
    const/16 v0, 0x9

    goto :goto_0

    .line 811
    :sswitch_9
    const/16 v0, 0xa

    goto :goto_0

    .line 813
    :sswitch_a
    const/16 v0, 0xb

    goto :goto_0

    .line 815
    :sswitch_b
    const/16 v0, 0xc

    goto :goto_0

    .line 817
    :sswitch_c
    const/16 v0, 0xd

    goto :goto_0

    .line 819
    :sswitch_d
    const/16 v0, 0xe

    goto :goto_0

    .line 791
    :sswitch_data_0
    .sparse-switch
        0x96c -> :sswitch_0
        0x971 -> :sswitch_1
        0x976 -> :sswitch_2
        0x97b -> :sswitch_3
        0x980 -> :sswitch_4
        0x985 -> :sswitch_5
        0x98a -> :sswitch_6
        0x98f -> :sswitch_7
        0x994 -> :sswitch_8
        0x999 -> :sswitch_9
        0x99e -> :sswitch_a
        0x9a3 -> :sswitch_b
        0x9a8 -> :sswitch_c
        0x9b4 -> :sswitch_d
    .end sparse-switch
.end method

.method private listScanResult(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 27
    .parameter "state"

    .prologue
    .line 826
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pgmsoft/wifinder/scan;->knownList:Lcom/pgmsoft/wifinder/KnownNetworks;

    if-eqz v2, :cond_2

    .line 827
    if-eqz p1, :cond_1

    .line 828
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 829
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 830
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pgmsoft/wifinder/scan;->knownList:Lcom/pgmsoft/wifinder/KnownNetworks;

    .line 831
    new-instance v2, Lcom/pgmsoft/wifinder/KnownNetworks;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pgmsoft/wifinder/scan;->mainMangerWifi:Landroid/net/wifi/WifiManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pgmsoft/wifinder/scan;->rowList:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4}, Lcom/pgmsoft/wifinder/KnownNetworks;-><init>(Lcom/pgmsoft/wifinder/scan;Landroid/net/wifi/WifiManager;Ljava/util/List;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pgmsoft/wifinder/scan;->knownList:Lcom/pgmsoft/wifinder/KnownNetworks;

    .line 965
    :cond_1
    :goto_0
    return-void

    .line 834
    :cond_2
    const/16 v25, 0x0

    .line 835
    .local v25, openNetwork:Z
    const/16 v20, 0x0

    .line 837
    .local v20, actionNetwork:Ljava/lang/String;
    const/16 v24, -0x1

    .line 839
    .local v24, idConnNetwork:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pgmsoft/wifinder/scan;->netList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v26

    .line 841
    .local v26, size:I
    if-nez p1, :cond_a

    .line 842
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pgmsoft/wifinder/scan;->prevState:Landroid/net/NetworkInfo$DetailedState;

    if-nez v2, :cond_9

    .line 843
    const/16 v20, 0x0

    .line 844
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pgmsoft/wifinder/scan;->networkPick:Ljava/lang/String;

    .line 855
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pgmsoft/wifinder/scan;->mainMangerWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v21

    .line 858
    .local v21, activeNet:Landroid/net/wifi/WifiInfo;
    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 859
    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v20

    .line 861
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pgmsoft/wifinder/scan;->rowList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 865
    if-nez v20, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pgmsoft/wifinder/scan;->networkPick:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 876
    :cond_5
    if-nez v20, :cond_b

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pgmsoft/wifinder/scan;->networkPick:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 881
    .local v22, compare:Ljava/lang/String;
    :goto_2
    const/16 v23, 0x0

    .local v23, i:I
    :goto_3
    move/from16 v0, v23

    move/from16 v1, v26

    if-lt v0, v1, :cond_c

    .line 934
    .end local v22           #compare:Ljava/lang/String;
    .end local v23           #i:I
    :cond_6
    :goto_4
    const/16 v23, 0x0

    .restart local v23       #i:I
    :goto_5
    move/from16 v0, v23

    move/from16 v1, v26

    if-lt v0, v1, :cond_16

    .line 959
    if-eqz v26, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pgmsoft/wifinder/scan;->onlyAp:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_8

    if-nez v25, :cond_8

    .line 960
    :cond_7
    new-instance v11, Lcom/pgmsoft/wifinder/RowList;

    const v2, 0x7f040035

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/16 v14, 0x2710

    const/4 v15, 0x2

    const-string v16, "ON"

    const/16 v17, 0x0

    const-string v18, ""

    const/16 v19, 0x0

    invoke-direct/range {v11 .. v19}, Lcom/pgmsoft/wifinder/RowList;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/pgmsoft/wifinder/scan;->w:Lcom/pgmsoft/wifinder/RowList;

    .line 961
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pgmsoft/wifinder/scan;->rowList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pgmsoft/wifinder/scan;->w:Lcom/pgmsoft/wifinder/RowList;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 963
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/pgmsoft/wifinder/scan;->update()V

    goto/16 :goto_0

    .line 846
    .end local v21           #activeNet:Landroid/net/wifi/WifiInfo;
    .end local v23           #i:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pgmsoft/wifinder/scan;->prevState:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 p1, v0

    goto :goto_1

    .line 849
    :cond_a
    if-nez v26, :cond_3

    .line 850
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pgmsoft/wifinder/scan;->mainMangerWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->startScan()Z

    goto/16 :goto_0

    .line 879
    .restart local v21       #activeNet:Landroid/net/wifi/WifiInfo;
    :cond_b
    move-object/from16 v22, v20

    .restart local v22       #compare:Ljava/lang/String;
    goto :goto_2

    .line 882
    .restart local v23       #i:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pgmsoft/wifinder/scan;->netList:Ljava/util/List;

    move/from16 v0, v23

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 884
    const v2, 0x7f04002c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 885
    .local v9, actState:Ljava/lang/String;
    move/from16 v24, v23

    .line 886
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pgmsoft/wifinder/scan;->netList:Ljava/util/List;

    move/from16 v0, v23

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 887
    const/4 v6, 0x0

    .line 888
    .local v6, checkOpen:I
    const/16 v25, 0x1

    .line 894
    :goto_6
    const/4 v10, 0x0

    .line 895
    .local v10, animation:Z
    if-eqz v20, :cond_12

    .line 896
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 897
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pgmsoft/wifinder/scan;->networkPick:Ljava/lang/String;

    .line 898
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pgmsoft/wifinder/scan;->prevNetworkConnected:Ljava/lang/String;

    .line 899
    const v2, 0x7f04002d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v20, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 900
    const/4 v10, 0x1

    .line 922
    :cond_d
    :goto_7
    new-instance v2, Lcom/pgmsoft/wifinder/RowList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pgmsoft/wifinder/scan;->netList:Ljava/util/List;

    move/from16 v0, v23

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 923
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pgmsoft/wifinder/scan;->netList:Ljava/util/List;

    move/from16 v0, v23

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget v4, v4, Landroid/net/wifi/ScanResult;->frequency:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/pgmsoft/wifinder/scan;->channel(I)I

    move-result v4

    .line 924
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pgmsoft/wifinder/scan;->netList:Ljava/util/List;

    move/from16 v0, v23

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    iget v5, v5, Landroid/net/wifi/ScanResult;->level:I

    .line 925
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pgmsoft/wifinder/scan;->netList:Ljava/util/List;

    move/from16 v0, v23

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    iget-object v7, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/pgmsoft/wifinder/scan;->netList:Ljava/util/List;

    move/from16 v0, v23

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanResult;

    iget-object v8, v8, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 926
    invoke-direct/range {v2 .. v10}, Lcom/pgmsoft/wifinder/RowList;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 922
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/pgmsoft/wifinder/scan;->w:Lcom/pgmsoft/wifinder/RowList;

    .line 927
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pgmsoft/wifinder/scan;->w:Lcom/pgmsoft/wifinder/RowList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/pgmsoft/wifinder/scan;->level_choose:I

    invoke-virtual {v2, v3}, Lcom/pgmsoft/wifinder/RowList;->setLevelChoose(I)V

    .line 928
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pgmsoft/wifinder/scan;->rowList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pgmsoft/wifinder/scan;->w:Lcom/pgmsoft/wifinder/RowList;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 890
    .end local v6           #checkOpen:I
    .end local v10           #animation:Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pgmsoft/wifinder/scan;->onlyAp:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 881
    .end local v9           #actState:Ljava/lang/String;
    :cond_f
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_3

    .line 892
    .restart local v9       #actState:Ljava/lang/String;
    :cond_10
    const/4 v6, 0x1

    .restart local v6       #checkOpen:I
    goto/16 :goto_6

    .line 901
    .restart local v10       #animation:Z
    :cond_11
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 902
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pgmsoft/wifinder/scan;->networkPick:Ljava/lang/String;

    .line 903
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pgmsoft/wifinder/scan;->prevNetworkConnected:Ljava/lang/String;

    .line 904
    const v2, 0x7f04002e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v20, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 905
    const/4 v10, 0x0

    goto/16 :goto_7

    .line 907
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pgmsoft/wifinder/scan;->networkPick:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 908
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 909
    const v2, 0x7f04002f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pgmsoft/wifinder/scan;->networkPick:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 910
    const/4 v10, 0x0

    goto/16 :goto_7

    .line 911
    :cond_13
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 912
    const v2, 0x7f040030

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pgmsoft/wifinder/scan;->networkPick:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 913
    const/4 v10, 0x0

    goto/16 :goto_7

    .line 914
    :cond_14
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 915
    const v2, 0x7f040031

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pgmsoft/wifinder/scan;->networkPick:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/pgmsoft/wifinder/scan;->attempt:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 916
    const/4 v10, 0x1

    goto/16 :goto_7

    .line 917
    :cond_15
    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 918
    const v2, 0x7f040032

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pgmsoft/wifinder/scan;->networkPick:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 919
    const/4 v10, 0x1

    goto/16 :goto_7

    .line 935
    .end local v6           #checkOpen:I
    .end local v9           #actState:Ljava/lang/String;
    .end local v10           #animation:Z
    .end local v22           #compare:Ljava/lang/String;
    :cond_16
    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_18

    .line 934
    :cond_17
    :goto_8
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_5

    .line 938
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pgmsoft/wifinder/scan;->netList:Ljava/util/List;

    move/from16 v0, v23

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 939
    new-instance v11, Lcom/pgmsoft/wifinder/RowList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pgmsoft/wifinder/scan;->netList:Ljava/util/List;

    move/from16 v0, v23

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v12, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 940
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pgmsoft/wifinder/scan;->netList:Ljava/util/List;

    move/from16 v0, v23

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget v2, v2, Landroid/net/wifi/ScanResult;->frequency:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/pgmsoft/wifinder/scan;->channel(I)I

    move-result v13

    .line 941
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pgmsoft/wifinder/scan;->netList:Ljava/util/List;

    move/from16 v0, v23

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget v14, v2, Landroid/net/wifi/ScanResult;->level:I

    const/4 v15, 0x0

    .line 942
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pgmsoft/wifinder/scan;->netList:Ljava/util/List;

    move/from16 v0, v23

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v0, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pgmsoft/wifinder/scan;->netList:Ljava/util/List;

    move/from16 v0, v23

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v0, v2, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 943
    const v2, 0x7f040033

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-direct/range {v11 .. v19}, Lcom/pgmsoft/wifinder/RowList;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 939
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/pgmsoft/wifinder/scan;->w:Lcom/pgmsoft/wifinder/RowList;

    .line 944
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pgmsoft/wifinder/scan;->rowList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pgmsoft/wifinder/scan;->w:Lcom/pgmsoft/wifinder/RowList;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 945
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pgmsoft/wifinder/scan;->w:Lcom/pgmsoft/wifinder/RowList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/pgmsoft/wifinder/scan;->level_choose:I

    invoke-virtual {v2, v3}, Lcom/pgmsoft/wifinder/RowList;->setLevelChoose(I)V

    .line 946
    const/16 v25, 0x1

    goto/16 :goto_8

    .line 948
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pgmsoft/wifinder/scan;->onlyAp:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_17

    .line 949
    new-instance v11, Lcom/pgmsoft/wifinder/RowList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pgmsoft/wifinder/scan;->netList:Ljava/util/List;

    move/from16 v0, v23

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v12, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 950
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pgmsoft/wifinder/scan;->netList:Ljava/util/List;

    move/from16 v0, v23

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget v2, v2, Landroid/net/wifi/ScanResult;->frequency:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/pgmsoft/wifinder/scan;->channel(I)I

    move-result v13

    .line 951
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pgmsoft/wifinder/scan;->netList:Ljava/util/List;

    move/from16 v0, v23

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget v14, v2, Landroid/net/wifi/ScanResult;->level:I

    const/4 v15, 0x1

    .line 952
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pgmsoft/wifinder/scan;->netList:Ljava/util/List;

    move/from16 v0, v23

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v0, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pgmsoft/wifinder/scan;->netList:Ljava/util/List;

    move/from16 v0, v23

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v0, v2, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 953
    const v2, 0x7f040034

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pgmsoft/wifinder/scan;->netList:Ljava/util/List;

    move/from16 v0, v23

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-direct/range {v11 .. v19}, Lcom/pgmsoft/wifinder/RowList;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 949
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/pgmsoft/wifinder/scan;->w:Lcom/pgmsoft/wifinder/RowList;

    .line 954
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pgmsoft/wifinder/scan;->w:Lcom/pgmsoft/wifinder/RowList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/pgmsoft/wifinder/scan;->level_choose:I

    invoke-virtual {v2, v3}, Lcom/pgmsoft/wifinder/RowList;->setLevelChoose(I)V

    .line 955
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pgmsoft/wifinder/scan;->rowList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pgmsoft/wifinder/scan;->w:Lcom/pgmsoft/wifinder/RowList;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8
.end method

.method private newScan(Z)V
    .locals 3
    .parameter "softScan"

    .prologue
    .line 469
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan;->receiverScanResult:Lcom/pgmsoft/wifinder/scan$WifiBroadcast;

    new-instance v1, Landroid/content/IntentFilter;

    .line 470
    const-string v2, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 469
    invoke-virtual {p0, v0, v1}, Lcom/pgmsoft/wifinder/scan;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 471
    if-nez p1, :cond_0

    .line 472
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan;->rowList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 473
    invoke-virtual {p0}, Lcom/pgmsoft/wifinder/scan;->update()V

    .line 474
    const v0, 0x7f04001f

    invoke-virtual {p0, v0}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pgmsoft/wifinder/scan;->niceToast(Ljava/lang/String;)Ljava/lang/String;

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan;->mainMangerWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 477
    return-void
.end method

.method private readTextFile(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .parameter "inputStream"

    .prologue
    .line 1339
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1340
    .local v2, outputStream:Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x400

    new-array v0, v3, [B

    .line 1343
    .local v0, buf:[B
    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, len:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 1346
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1347
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1350
    .end local v1           #len:I
    :goto_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1344
    .restart local v1       #len:I
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1348
    .end local v1           #len:I
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private saveLevelChoose(Ljava/lang/String;)V
    .locals 7
    .parameter "option"

    .prologue
    const/high16 v6, 0x7f04

    .line 1206
    :try_start_0
    const-string v4, "options"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/pgmsoft/wifinder/scan;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 1207
    .local v1, file:Ljava/io/FileOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1208
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 1210
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 1211
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 1212
    const/high16 v4, 0x7f04

    invoke-virtual {p0, v4}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "New option file created"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    .end local v1           #file:Ljava/io/FileOutputStream;
    .end local v2           #i:I
    .end local v3           #length:I
    :goto_1
    return-void

    .line 1209
    .restart local v1       #file:Ljava/io/FileOutputStream;
    .restart local v2       #i:I
    .restart local v3       #length:I
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1208
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1213
    .end local v1           #file:Ljava/io/FileOutputStream;
    .end local v2           #i:I
    .end local v3           #length:I
    :catch_0
    move-exception v0

    .line 1214
    .local v0, e1:Ljava/io/FileNotFoundException;
    invoke-virtual {p0, v6}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Cannot create option file"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1215
    .end local v0           #e1:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 1216
    .local v0, e1:Ljava/io/IOException;
    invoke-virtual {p0, v6}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Save file error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private showDialogNetwork(Ljava/lang/Object;ZI)V
    .locals 24
    .parameter "check"
    .parameter "bad_password"
    .parameter "position"

    .prologue
    .line 510
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pgmsoft/wifinder/scan;->current_selected_position:I

    .line 511
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/pgmsoft/wifinder/RowList;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 512
    check-cast p1, Lcom/pgmsoft/wifinder/RowList;

    .end local p1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pgmsoft/wifinder/scan;->netListaCheck:Lcom/pgmsoft/wifinder/RowList;

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pgmsoft/wifinder/scan;->netListaCheck:Lcom/pgmsoft/wifinder/RowList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/pgmsoft/wifinder/RowList;->getBessid()Ljava/lang/String;

    move-result-object v20

    const-string v21, "OFF"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 514
    invoke-direct/range {p0 .. p0}, Lcom/pgmsoft/wifinder/scan;->wifiDialog()V

    .line 788
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pgmsoft/wifinder/scan;->netListaCheck:Lcom/pgmsoft/wifinder/RowList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/pgmsoft/wifinder/RowList;->getBessid()Ljava/lang/String;

    move-result-object v20

    const-string v21, "LIST"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 517
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 518
    .local v4, builder:Landroid/app/AlertDialog$Builder;
    const v20, 0x7f040020

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pgmsoft/wifinder/scan;->netListaCheck:Lcom/pgmsoft/wifinder/RowList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/pgmsoft/wifinder/RowList;->getSSid()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 519
    const v20, 0x7f02000b

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 520
    const v20, 0x7f040041

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pgmsoft/wifinder/scan;->netListaCheck:Lcom/pgmsoft/wifinder/RowList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/pgmsoft/wifinder/RowList;->getSSid()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 521
    const v20, 0x7f040048

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 522
    new-instance v21, Lcom/pgmsoft/wifinder/scan$10;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/pgmsoft/wifinder/scan$10;-><init>(Lcom/pgmsoft/wifinder/scan;)V

    .line 521
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 531
    const v20, 0x7f040049

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 532
    new-instance v21, Lcom/pgmsoft/wifinder/scan$11;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/pgmsoft/wifinder/scan$11;-><init>(Lcom/pgmsoft/wifinder/scan;)V

    .line 531
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 537
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 538
    .end local v4           #builder:Landroid/app/AlertDialog$Builder;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pgmsoft/wifinder/scan;->netListaCheck:Lcom/pgmsoft/wifinder/RowList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/pgmsoft/wifinder/RowList;->getBessid()Ljava/lang/String;

    move-result-object v20

    const-string v21, "ON"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 540
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pgmsoft/wifinder/scan;->connected:Z

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pgmsoft/wifinder/scan;->mainMangerWifi:Landroid/net/wifi/WifiManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 546
    .local v3, activeNet:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    .line 547
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pgmsoft/wifinder/scan;->netListaCheck:Lcom/pgmsoft/wifinder/RowList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/pgmsoft/wifinder/RowList;->getSSid()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 548
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pgmsoft/wifinder/scan;->connected:Z

    .line 550
    :cond_3
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 554
    .local v9, factory:Landroid/view/LayoutInflater;
    const v20, 0x7f030001

    .line 555
    const/16 v21, 0x0

    .line 554
    move/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 557
    .local v7, dialogContent:Landroid/view/View;
    const v20, 0x7f05000c

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 556
    check-cast v14, Landroid/widget/EditText;

    .line 560
    .local v14, passwd:Landroid/widget/EditText;
    const v20, 0x7f05000d

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/CheckBox;

    .line 561
    .local v17, showPasswd:Landroid/widget/CheckBox;
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 562
    const v20, 0x7f050004

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 563
    .local v19, signal_strenth_text:Landroid/widget/TextView;
    const v20, 0x7f050003

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 564
    .local v18, signal_stregth:Landroid/widget/ImageView;
    const-string v8, "[OPEN]"

    .line 565
    .local v8, encrypt:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pgmsoft/wifinder/scan;->netListaCheck:Lcom/pgmsoft/wifinder/RowList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/pgmsoft/wifinder/RowList;->getLevelChoose()I

    move-result v20

    if-nez v20, :cond_9

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pgmsoft/wifinder/scan;->netListaCheck:Lcom/pgmsoft/wifinder/RowList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/pgmsoft/wifinder/RowList;->getLevelGraph()I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 576
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pgmsoft/wifinder/scan;->netListaCheck:Lcom/pgmsoft/wifinder/RowList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/pgmsoft/wifinder/RowList;->getEncrypt()Ljava/lang/String;

    move-result-object v20

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pgmsoft/wifinder/scan;->netListaCheck:Lcom/pgmsoft/wifinder/RowList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/pgmsoft/wifinder/RowList;->getEncrypt()Ljava/lang/String;

    move-result-object v8

    .line 578
    :cond_5
    const v20, 0x7f050005

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 579
    .local v16, security:Landroid/widget/TextView;
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    const v20, 0x7f050006

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 581
    .local v6, channel:Landroid/widget/TextView;
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "["

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pgmsoft/wifinder/scan;->netListaCheck:Lcom/pgmsoft/wifinder/RowList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/pgmsoft/wifinder/RowList;->getChanel()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    const v20, 0x7f050008

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 585
    .local v10, ip:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pgmsoft/wifinder/scan;->connected:Z

    move/from16 v20, v0

    if-eqz v20, :cond_b

    .line 586
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/pgmsoft/wifinder/scan;->translateIPaddress(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    const v20, 0x7f050007

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TableLayout;

    .line 588
    .local v11, ip_table:Landroid/widget/TableLayout;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 592
    .end local v11           #ip_table:Landroid/widget/TableLayout;
    :goto_2
    if-eqz p2, :cond_6

    .line 593
    const v20, 0x7f05000b

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 594
    .local v13, pass_info:Landroid/widget/TextView;
    const v20, 0x7f040026

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    .end local v13           #pass_info:Landroid/widget/TextView;
    :cond_6
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 603
    .restart local v4       #builder:Landroid/app/AlertDialog$Builder;
    const v20, 0x7f02000b

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 604
    const v20, 0x7f040020

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pgmsoft/wifinder/scan;->netListaCheck:Lcom/pgmsoft/wifinder/RowList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/pgmsoft/wifinder/RowList;->getSSid()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 614
    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 615
    new-instance v20, Lcom/pgmsoft/wifinder/scan$12;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v14}, Lcom/pgmsoft/wifinder/scan$12;-><init>(Lcom/pgmsoft/wifinder/scan;Landroid/widget/CheckBox;Landroid/widget/EditText;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 625
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pgmsoft/wifinder/scan;->connected:Z

    move/from16 v20, v0

    if-eqz v20, :cond_c

    .line 626
    const v20, 0x7f040029

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 630
    .local v5, button_title:Ljava/lang/String;
    :goto_3
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pgmsoft/wifinder/scan;->wifiConf:Landroid/net/wifi/WifiConfiguration;

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pgmsoft/wifinder/scan;->mainMangerWifi:Landroid/net/wifi/WifiManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pgmsoft/wifinder/scan;->wifiConfList:Ljava/util/List;

    .line 632
    const/4 v12, 0x0

    .local v12, j:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pgmsoft/wifinder/scan;->wifiConfList:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-lt v12, v0, :cond_d

    .line 638
    const-string v20, "[OPEN]"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pgmsoft/wifinder/scan;->wifiConf:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v20, v0

    if-nez v20, :cond_7

    .line 639
    const v20, 0x7f05000a

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TableLayout;

    .line 640
    .local v15, passwd_table:Landroid/widget/TableLayout;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 645
    .end local v15           #passwd_table:Landroid/widget/TableLayout;
    :cond_7
    new-instance v20, Lcom/pgmsoft/wifinder/scan$13;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14}, Lcom/pgmsoft/wifinder/scan$13;-><init>(Lcom/pgmsoft/wifinder/scan;Landroid/widget/EditText;)V

    .line 644
    move-object/from16 v0, v20

    invoke-virtual {v4, v5, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pgmsoft/wifinder/scan;->wifiConf:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v20, v0

    if-eqz v20, :cond_8

    .line 770
    const v20, 0x7f04002a

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 771
    new-instance v21, Lcom/pgmsoft/wifinder/scan$14;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/pgmsoft/wifinder/scan$14;-><init>(Lcom/pgmsoft/wifinder/scan;)V

    .line 770
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 778
    :cond_8
    const v20, 0x7f04001e

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 779
    new-instance v21, Lcom/pgmsoft/wifinder/scan$15;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/pgmsoft/wifinder/scan$15;-><init>(Lcom/pgmsoft/wifinder/scan;)V

    .line 778
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 785
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 568
    .end local v4           #builder:Landroid/app/AlertDialog$Builder;
    .end local v5           #button_title:Ljava/lang/String;
    .end local v6           #channel:Landroid/widget/TextView;
    .end local v10           #ip:Landroid/widget/TextView;
    .end local v12           #j:I
    .end local v16           #security:Landroid/widget/TextView;
    :cond_9
    const/16 v20, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 569
    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setVisibility(I)V

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pgmsoft/wifinder/scan;->netListaCheck:Lcom/pgmsoft/wifinder/RowList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/pgmsoft/wifinder/RowList;->getLevelChoose()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pgmsoft/wifinder/scan;->netListaCheck:Lcom/pgmsoft/wifinder/RowList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/pgmsoft/wifinder/RowList;->getLevelPercent()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 572
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pgmsoft/wifinder/scan;->netListaCheck:Lcom/pgmsoft/wifinder/RowList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/pgmsoft/wifinder/RowList;->getLevelChoose()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pgmsoft/wifinder/scan;->netListaCheck:Lcom/pgmsoft/wifinder/RowList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/pgmsoft/wifinder/RowList;->getLeveldBm()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 590
    .restart local v6       #channel:Landroid/widget/TextView;
    .restart local v10       #ip:Landroid/widget/TextView;
    .restart local v16       #security:Landroid/widget/TextView;
    :cond_b
    const-string v20, ""

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 628
    .restart local v4       #builder:Landroid/app/AlertDialog$Builder;
    :cond_c
    const v20, 0x7f040028

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #button_title:Ljava/lang/String;
    goto/16 :goto_3

    .line 633
    .restart local v12       #j:I
    :cond_d
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "\""

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pgmsoft/wifinder/scan;->netListaCheck:Lcom/pgmsoft/wifinder/RowList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/pgmsoft/wifinder/RowList;->getSSid()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pgmsoft/wifinder/scan;->wifiConfList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pgmsoft/wifinder/scan;->wifiConfList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pgmsoft/wifinder/scan;->wifiConf:Landroid/net/wifi/WifiConfiguration;

    .line 632
    :cond_e
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4
.end method

.method private translateIPaddress(I)Ljava/lang/String;
    .locals 8
    .parameter "toHex"

    .prologue
    const/4 v7, 0x7

    .line 1135
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 1136
    .local v2, hex:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v7, :cond_0

    .line 1137
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1138
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    .line 1139
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "#"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x6

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1140
    .local v0, first:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "#"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1141
    .local v3, second:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "#"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1142
    .local v4, third:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "#"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1143
    .local v1, fourth:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1144
    invoke-static {v4}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1143
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1147
    .end local v0           #first:Ljava/lang/String;
    .end local v1           #fourth:Ljava/lang/String;
    .end local v3           #second:Ljava/lang/String;
    .end local v4           #third:Ljava/lang/String;
    :goto_0
    return-object v5

    :cond_1
    const-string v5, "error"

    goto :goto_0
.end method

.method private wifiDialog()V
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/high16 v10, 0x7f04

    const/4 v2, 0x0

    .line 410
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan;->mainMangerWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 411
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan;->mainMangerWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 412
    iput-object v6, p0, Lcom/pgmsoft/wifinder/scan;->knownList:Lcom/pgmsoft/wifinder/KnownNetworks;

    .line 413
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan;->rowList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 414
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan;->netList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 415
    new-instance v0, Lcom/pgmsoft/wifinder/RowList;

    const v1, 0x7f040017

    invoke-virtual {p0, v1}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x2710

    const/4 v4, -0x1

    const-string v5, "OFF"

    .line 416
    const v7, 0x7f040018

    invoke-virtual {p0, v7}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v7

    move v8, v2

    invoke-direct/range {v0 .. v8}, Lcom/pgmsoft/wifinder/RowList;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 415
    iput-object v0, p0, Lcom/pgmsoft/wifinder/scan;->w:Lcom/pgmsoft/wifinder/RowList;

    .line 417
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan;->rowList:Ljava/util/List;

    iget-object v1, p0, Lcom/pgmsoft/wifinder/scan;->w:Lcom/pgmsoft/wifinder/RowList;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    invoke-virtual {p0}, Lcom/pgmsoft/wifinder/scan;->update()V

    .line 419
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 420
    .local v9, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0, v10}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 421
    const v0, 0x7f02000b

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 422
    const v0, 0x7f040019

    invoke-virtual {p0, v0}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 423
    const v0, 0x7f040048

    invoke-virtual {p0, v0}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 424
    new-instance v1, Lcom/pgmsoft/wifinder/scan$8;

    invoke-direct {v1, p0}, Lcom/pgmsoft/wifinder/scan$8;-><init>(Lcom/pgmsoft/wifinder/scan;)V

    .line 423
    invoke-virtual {v9, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 432
    const v0, 0x7f040049

    invoke-virtual {p0, v0}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 433
    new-instance v1, Lcom/pgmsoft/wifinder/scan$9;

    invoke-direct {v1, p0}, Lcom/pgmsoft/wifinder/scan$9;-><init>(Lcom/pgmsoft/wifinder/scan;)V

    .line 432
    invoke-virtual {v9, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 438
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 445
    .end local v9           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    iget-boolean v0, p0, Lcom/pgmsoft/wifinder/scan;->first_run:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/pgmsoft/wifinder/scan;->changeOrientation:Z

    if-nez v0, :cond_0

    .line 441
    invoke-virtual {p0, v10}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onResume: soft scan"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/pgmsoft/wifinder/scan;->newScan(Z)V

    goto :goto_0
.end method


# virtual methods
.method public AutoScan()V
    .locals 9

    .prologue
    const/4 v4, 0x5

    const v8, 0x7f04000c

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1167
    new-array v1, v4, [Ljava/lang/CharSequence;

    .line 1168
    invoke-virtual {p0, v8}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 1169
    invoke-virtual {p0, v8}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x2

    .line 1170
    invoke-virtual {p0, v8}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    const/16 v5, 0x14

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 1171
    invoke-virtual {p0, v8}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    const/16 v5, 0x1e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    .line 1172
    invoke-virtual {p0, v8}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    const/16 v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1174
    .local v1, items:[Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1175
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f04000d

    invoke-virtual {p0, v2}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1176
    new-instance v2, Lcom/pgmsoft/wifinder/scan$16;

    invoke-direct {v2, p0}, Lcom/pgmsoft/wifinder/scan$16;-><init>(Lcom/pgmsoft/wifinder/scan;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1201
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1202
    return-void
.end method

.method public GorneInfo(ILjava/lang/String;)V
    .locals 7
    .parameter "status_bar"
    .parameter "n"

    .prologue
    const/4 v3, 0x1

    const v5, 0x7f020002

    const/4 v6, 0x0

    .line 365
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pgmsoft/wifinder/scan;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 366
    .local v0, intent:Landroid/content/Intent;
    if-ne p1, v3, :cond_1

    .line 367
    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f040038

    invoke-virtual {p0, v2}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v1, p0, Lcom/pgmsoft/wifinder/scan;->notification:Landroid/app/Notification;

    .line 379
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/pgmsoft/wifinder/scan;->notification:Landroid/app/Notification;

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {p0}, Lcom/pgmsoft/wifinder/scan;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x1000

    invoke-static {v4, v6, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v1, p0, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 380
    iget-object v1, p0, Lcom/pgmsoft/wifinder/scan;->mManager:Landroid/app/NotificationManager;

    iget-object v2, p0, Lcom/pgmsoft/wifinder/scan;->notification:Landroid/app/Notification;

    invoke-virtual {v1, v6, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 381
    iget-object v1, p0, Lcom/pgmsoft/wifinder/scan;->mManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v6}, Landroid/app/NotificationManager;->cancel(I)V

    .line 382
    return-void

    .line 368
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 369
    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f040039

    invoke-virtual {p0, v2}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v1, p0, Lcom/pgmsoft/wifinder/scan;->notification:Landroid/app/Notification;

    goto :goto_0

    .line 370
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 371
    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f04003a

    invoke-virtual {p0, v2}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v1, p0, Lcom/pgmsoft/wifinder/scan;->notification:Landroid/app/Notification;

    goto :goto_0

    .line 372
    :cond_3
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    .line 373
    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f04003b

    invoke-virtual {p0, v2}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v1, p0, Lcom/pgmsoft/wifinder/scan;->notification:Landroid/app/Notification;

    goto :goto_0

    .line 374
    :cond_4
    const/4 v1, 0x5

    if-ne p1, v1, :cond_5

    .line 375
    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f04003c

    invoke-virtual {p0, v2}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v1, p0, Lcom/pgmsoft/wifinder/scan;->notification:Landroid/app/Notification;

    goto/16 :goto_0

    .line 376
    :cond_5
    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    .line 377
    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f04004a

    invoke-virtual {p0, v2}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v1, p0, Lcom/pgmsoft/wifinder/scan;->notification:Landroid/app/Notification;

    goto/16 :goto_0
.end method

.method public dialogCoNowego()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 1321
    invoke-virtual {p0}, Lcom/pgmsoft/wifinder/scan;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 1322
    .local v1, assetManager:Landroid/content/res/AssetManager;
    const/4 v3, 0x0

    .line 1324
    .local v3, inputStream:Ljava/io/InputStream;
    :try_start_0
    const-string v4, "newVersion"

    invoke-virtual {v1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1327
    :goto_0
    invoke-direct {p0, v3}, Lcom/pgmsoft/wifinder/scan;->readTextFile(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 1328
    .local v2, informacja:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1329
    .local v0, alertbox:Landroid/app/AlertDialog$Builder;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "WiFinder what\'s new in version : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pgmsoft/wifinder/scan;->version:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1330
    const v4, 0x7f020002

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1331
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1332
    const-string v4, "Ok"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1333
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1335
    return-void

    .line 1325
    .end local v0           #alertbox:Landroid/app/AlertDialog$Builder;
    .end local v2           #informacja:Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public forgetNerwork(ZIZ)V
    .locals 3
    .parameter "act_connected"
    .parameter "act_networkId"
    .parameter "delete_all"

    .prologue
    const/4 v2, 0x4

    .line 480
    if-eqz p3, :cond_2

    .line 481
    const v1, 0x7f040046

    invoke-virtual {p0, v1}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/pgmsoft/wifinder/scan;->GorneInfo(ILjava/lang/String;)V

    .line 484
    :goto_0
    if-eqz p1, :cond_1

    .line 485
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/pgmsoft/wifinder/scan;->wifiConfList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 489
    const/4 v1, -0x1

    iput v1, p0, Lcom/pgmsoft/wifinder/scan;->connectNetworkId:I

    .line 490
    if-nez p3, :cond_0

    iget-object v1, p0, Lcom/pgmsoft/wifinder/scan;->netListaCheck:Lcom/pgmsoft/wifinder/RowList;

    invoke-virtual {v1}, Lcom/pgmsoft/wifinder/RowList;->getSSid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pgmsoft/wifinder/scan;->networkPick:Ljava/lang/String;

    .line 491
    :cond_0
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v1}, Lcom/pgmsoft/wifinder/scan;->listScanResult(Landroid/net/NetworkInfo$DetailedState;)V

    .line 493
    .end local v0           #i:I
    :cond_1
    if-eqz p3, :cond_5

    .line 494
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v1, p0, Lcom/pgmsoft/wifinder/scan;->wifiConfList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 501
    .end local v0           #i:I
    :goto_3
    return-void

    .line 483
    :cond_2
    iget-object v1, p0, Lcom/pgmsoft/wifinder/scan;->netListaCheck:Lcom/pgmsoft/wifinder/RowList;

    invoke-virtual {v1}, Lcom/pgmsoft/wifinder/RowList;->getSSid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/pgmsoft/wifinder/scan;->GorneInfo(ILjava/lang/String;)V

    goto :goto_0

    .line 487
    .restart local v0       #i:I
    :cond_3
    iget-object v2, p0, Lcom/pgmsoft/wifinder/scan;->mainMangerWifi:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/pgmsoft/wifinder/scan;->wifiConfList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 485
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 496
    :cond_4
    iget-object v2, p0, Lcom/pgmsoft/wifinder/scan;->mainMangerWifi:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/pgmsoft/wifinder/scan;->wifiConfList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 494
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 499
    .end local v0           #i:I
    :cond_5
    iget-object v1, p0, Lcom/pgmsoft/wifinder/scan;->mainMangerWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p2}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    goto :goto_3
.end method

.method public infoNowaWersja()V
    .locals 9

    .prologue
    .line 1284
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1285
    .local v4, start_programu:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1286
    .local v1, editor_nowej_wersji:Landroid/content/SharedPreferences$Editor;
    iget-object v6, p0, Lcom/pgmsoft/wifinder/scan;->version:Ljava/lang/String;

    const-string v7, "."

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 1287
    .local v5, wersjaBezKropek:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1289
    .local v0, biezaca_wersja:F
    const-string v6, "start"

    const-string v7, "0"

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1290
    .local v3, informacje_nowa_wersja:Ljava/lang/String;
    const-string v6, "version"

    invoke-interface {v4, v6, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v2

    .line 1292
    .local v2, informacje_nowa_version:F
    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1294
    sget-boolean v6, Lcom/pgmsoft/wifinder/scan;->startInfo:Z

    if-eqz v6, :cond_0

    .line 1295
    invoke-virtual {p0}, Lcom/pgmsoft/wifinder/scan;->dialogCoNowego()V

    .line 1296
    const-string v6, "start"

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1297
    const-string v6, "start"

    const-string v7, "1"

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1298
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1303
    :cond_0
    const-string v6, "version"

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1304
    const-string v6, "version"

    invoke-interface {v1, v6, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1305
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1306
    const/4 v6, 0x0

    sput-boolean v6, Lcom/pgmsoft/wifinder/scan;->startInfo:Z

    .line 1309
    :cond_1
    cmpl-float v6, v0, v2

    if-lez v6, :cond_2

    .line 1311
    const-string v6, "version"

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1312
    const-string v6, "version"

    invoke-interface {v1, v6, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1313
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1314
    invoke-virtual {p0}, Lcom/pgmsoft/wifinder/scan;->dialogCoNowego()V

    .line 1318
    :cond_2
    return-void
.end method

.method public niceToast(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "n"

    .prologue
    const/4 v7, 0x0

    .line 1151
    invoke-virtual {p0}, Lcom/pgmsoft/wifinder/scan;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1152
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f030006

    const v5, 0x7f050013

    invoke-virtual {p0, v5}, Lcom/pgmsoft/wifinder/scan;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v1, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1153
    .local v2, layout:Landroid/view/View;
    const v5, 0x7f050001

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1154
    .local v0, image:Landroid/widget/ImageView;
    const v5, 0x7f02000b

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1155
    const v5, 0x7f050002

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1156
    .local v3, text:Landroid/widget/TextView;
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1158
    new-instance v4, Landroid/widget/Toast;

    invoke-virtual {p0}, Lcom/pgmsoft/wifinder/scan;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 1159
    .local v4, toast:Landroid/widget/Toast;
    const/16 v5, 0x50

    invoke-virtual {v4, v5, v7, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 1160
    invoke-virtual {v4, v7}, Landroid/widget/Toast;->setDuration(I)V

    .line 1161
    invoke-virtual {v4, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 1162
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1163
    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 19
    .parameter "savedInstanceState"

    .prologue
    .line 110
    invoke-super/range {p0 .. p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/pgmsoft/wifinder/scan;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 125
    .local v15, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/pgmsoft/wifinder/scan;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v15, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 126
    .local v12, info:Landroid/content/pm/PackageInfo;
    iget-object v1, v12, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/pgmsoft/wifinder/scan;->version:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 129
    .end local v12           #info:Landroid/content/pm/PackageInfo;
    :goto_0
    const/high16 v1, 0x7f04

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Welcome to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x7f04

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " v"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pgmsoft/wifinder/scan;->version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/pgmsoft/wifinder/scan;->infoNowaWersja()V

    .line 131
    const/4 v1, 0x7

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/pgmsoft/wifinder/scan;->requestWindowFeature(I)Z

    .line 133
    const v1, 0x7f030002

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/pgmsoft/wifinder/scan;->setContentView(I)V

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/pgmsoft/wifinder/scan;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x7

    const v3, 0x7f030005

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setFeatureInt(II)V

    .line 135
    const-string v1, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/pgmsoft/wifinder/scan;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/pgmsoft/wifinder/scan;->mManager:Landroid/app/NotificationManager;

    .line 136
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/pgmsoft/wifinder/scan;->rowList:Ljava/util/List;

    .line 137
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/pgmsoft/wifinder/scan;->netList:Ljava/util/List;

    .line 140
    const v1, 0x7f050011

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/pgmsoft/wifinder/scan;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/pgmsoft/wifinder/scan;->title_lewy:Landroid/widget/TextView;

    .line 141
    const v1, 0x7f050012

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/pgmsoft/wifinder/scan;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/pgmsoft/wifinder/scan;->title_prawy:Landroid/widget/TextView;

    .line 142
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan;->title_lewy:Landroid/widget/TextView;

    const/high16 v2, 0x7f04

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/pgmsoft/wifinder/scan;->getListView()Landroid/widget/ListView;

    move-result-object v13

    .line 149
    .local v13, lv:Landroid/widget/ListView;
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 150
    .local v8, factory:Landroid/view/LayoutInflater;
    const v1, 0x7f030004

    const/4 v2, 0x0

    invoke-virtual {v8, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 151
    .local v11, headerContent:Landroid/view/View;
    invoke-virtual {v13, v11}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 153
    const v1, 0x7f05000f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/pgmsoft/wifinder/scan;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/pgmsoft/wifinder/scan;->onlyAp:Landroid/widget/CheckBox;

    .line 154
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan;->onlyAp:Landroid/widget/CheckBox;

    new-instance v2, Lcom/pgmsoft/wifinder/scan$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/pgmsoft/wifinder/scan$1;-><init>(Lcom/pgmsoft/wifinder/scan;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    const-string v1, "wifi"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/pgmsoft/wifinder/scan;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/pgmsoft/wifinder/scan;->mainMangerWifi:Landroid/net/wifi/WifiManager;

    .line 161
    new-instance v1, Lcom/pgmsoft/wifinder/WifiAdapter;

    const v2, 0x7f030007

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pgmsoft/wifinder/scan;->rowList:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v3}, Lcom/pgmsoft/wifinder/WifiAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/pgmsoft/wifinder/scan;->wifiAdapter:Lcom/pgmsoft/wifinder/WifiAdapter;

    .line 162
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan;->wifiAdapter:Lcom/pgmsoft/wifinder/WifiAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/pgmsoft/wifinder/scan;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 163
    const v1, 0x7f05000e

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/pgmsoft/wifinder/scan;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/pgmsoft/wifinder/scan;->BnewScan:Landroid/widget/Button;

    .line 164
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan;->BnewScan:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 165
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan;->onlyAp:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 166
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan;->BnewScan:Landroid/widget/Button;

    new-instance v2, Lcom/pgmsoft/wifinder/scan$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/pgmsoft/wifinder/scan$2;-><init>(Lcom/pgmsoft/wifinder/scan;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/pgmsoft/wifinder/scan;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v17

    .line 180
    .local v17, saved_obj:Ljava/lang/Object;
    if-nez v17, :cond_1

    .line 181
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/pgmsoft/wifinder/scan;->changeOrientation:Z

    .line 196
    :cond_0
    :goto_1
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 197
    .local v10, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v10, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v10, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v10, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan;->receiverNetChange:Lcom/pgmsoft/wifinder/scan$WifiBroadcast;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v10}, Lcom/pgmsoft/wifinder/scan;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 203
    :try_start_1
    const-string v1, "options"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/pgmsoft/wifinder/scan;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v9

    .line 204
    .local v9, file:Ljava/io/FileInputStream;
    const/4 v14, 0x0

    .line 205
    .local v14, oneByte:I
    const-string v18, ""

    .line 206
    .local v18, tmp:Ljava/lang/String;
    :goto_2
    invoke-virtual {v9}, Ljava/io/FileInputStream;->read()I

    move-result v14

    const/4 v1, -0x1

    if-ne v14, v1, :cond_2

    .line 208
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/pgmsoft/wifinder/scan;->level_choose:I

    .line 209
    const/high16 v1, 0x7f04

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Read option file"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 215
    .end local v9           #file:Ljava/io/FileInputStream;
    .end local v14           #oneByte:I
    .end local v18           #tmp:Ljava/lang/String;
    :goto_3
    return-void

    .line 183
    .end local v10           #filter:Landroid/content/IntentFilter;
    :cond_1
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/pgmsoft/wifinder/scan;->changeOrientation:Z

    move-object/from16 v16, v17

    .line 184
    check-cast v16, Lcom/pgmsoft/wifinder/SaveRotate;

    .line 185
    .local v16, save_rotate:Lcom/pgmsoft/wifinder/SaveRotate;
    invoke-virtual/range {v16 .. v16}, Lcom/pgmsoft/wifinder/SaveRotate;->getScanList()Ljava/util/List;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/pgmsoft/wifinder/scan;->netList:Ljava/util/List;

    .line 186
    invoke-virtual/range {v16 .. v16}, Lcom/pgmsoft/wifinder/SaveRotate;->getCounterToFinish()J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/pgmsoft/wifinder/scan;->counter_to_finish:J

    .line 187
    invoke-virtual/range {v16 .. v16}, Lcom/pgmsoft/wifinder/SaveRotate;->getCounterBase()J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/pgmsoft/wifinder/scan;->counter_base:J

    .line 188
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/pgmsoft/wifinder/scan;->counter_to_finish:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 189
    new-instance v1, Lcom/pgmsoft/wifinder/scan$MyCount;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/pgmsoft/wifinder/scan;->counter_to_finish:J

    const-wide/16 v5, 0x64

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/pgmsoft/wifinder/scan$MyCount;-><init>(Lcom/pgmsoft/wifinder/scan;JJ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/pgmsoft/wifinder/scan;->counter:Lcom/pgmsoft/wifinder/scan$MyCount;

    .line 190
    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/pgmsoft/wifinder/scan;->counter_to_finish:J

    .line 191
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pgmsoft/wifinder/scan;->counter:Lcom/pgmsoft/wifinder/scan$MyCount;

    invoke-virtual {v1}, Lcom/pgmsoft/wifinder/scan$MyCount;->start()Landroid/os/CountDownTimer;

    goto/16 :goto_1

    .line 207
    .end local v16           #save_rotate:Lcom/pgmsoft/wifinder/SaveRotate;
    .restart local v9       #file:Ljava/io/FileInputStream;
    .restart local v10       #filter:Landroid/content/IntentFilter;
    .restart local v14       #oneByte:I
    .restart local v18       #tmp:Ljava/lang/String;
    :cond_2
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v2, v14

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v18

    goto :goto_2

    .line 210
    .end local v9           #file:Ljava/io/FileInputStream;
    .end local v14           #oneByte:I
    .end local v18           #tmp:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 211
    .local v7, e:Ljava/io/FileNotFoundException;
    const-string v1, "0"

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/pgmsoft/wifinder/scan;->saveLevelChoose(Ljava/lang/String;)V

    goto :goto_3

    .line 212
    .end local v7           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v7

    .line 213
    .local v7, e:Ljava/io/IOException;
    const/high16 v1, 0x7f04

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Read file error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 127
    .end local v7           #e:Ljava/io/IOException;
    .end local v8           #factory:Landroid/view/LayoutInflater;
    .end local v10           #filter:Landroid/content/IntentFilter;
    .end local v11           #headerContent:Landroid/view/View;
    .end local v13           #lv:Landroid/widget/ListView;
    .end local v17           #saved_obj:Ljava/lang/Object;
    :catch_2
    move-exception v1

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 219
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 220
    .local v0, result:Z
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 221
    invoke-interface {p1, v4}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 222
    iget-object v1, p0, Lcom/pgmsoft/wifinder/scan;->knownList:Lcom/pgmsoft/wifinder/KnownNetworks;

    if-nez v1, :cond_0

    .line 223
    iput-boolean v4, p0, Lcom/pgmsoft/wifinder/scan;->menu_setup:Z

    .line 224
    const v1, 0x7f04003d

    invoke-virtual {p0, v1}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v5, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108004f

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 225
    const/4 v1, 0x4

    const v2, 0x7f04000a

    invoke-virtual {p0, v2}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108004d

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 226
    const v1, 0x7f04000e

    invoke-virtual {p0, v1}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v6, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x1080042

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 227
    const/4 v1, 0x3

    const v2, 0x7f040012

    invoke-virtual {p0, v2}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x1080049

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 228
    const/high16 v1, 0x7f04

    invoke-virtual {p0, v1}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v5, v4, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x1080041

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 234
    :goto_0
    return v0

    .line 230
    :cond_0
    iput-boolean v3, p0, Lcom/pgmsoft/wifinder/scan;->menu_setup:Z

    .line 231
    const v1, 0x7f04003e

    invoke-virtual {p0, v1}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v6, v7, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108004f

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 232
    const/4 v1, 0x7

    const v2, 0x7f04003f

    invoke-virtual {p0, v2}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v7, v1, v3, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108003c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan;->receiverNetChange:Lcom/pgmsoft/wifinder/scan$WifiBroadcast;

    invoke-virtual {p0, v0}, Lcom/pgmsoft/wifinder/scan;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 460
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 461
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/high16 v3, 0x7f04

    const/4 v1, 0x1

    .line 1242
    const/4 v2, 0x4

    if-ne p1, v2, :cond_2

    .line 1243
    iget-object v2, p0, Lcom/pgmsoft/wifinder/scan;->mainMangerWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 1244
    iget-object v2, p0, Lcom/pgmsoft/wifinder/scan;->mainMangerWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    if-nez v2, :cond_1

    .line 1245
    :cond_0
    invoke-virtual {p0, v3}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Bye Bye"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    invoke-virtual {p0}, Lcom/pgmsoft/wifinder/scan;->finish()V

    .line 1278
    :goto_0
    return v1

    .line 1248
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1249
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0, v3}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1250
    const v2, 0x7f02000b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1251
    const v2, 0x7f040047

    invoke-virtual {p0, v2}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1252
    const v2, 0x7f040048

    invoke-virtual {p0, v2}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1253
    new-instance v3, Lcom/pgmsoft/wifinder/scan$17;

    invoke-direct {v3, p0}, Lcom/pgmsoft/wifinder/scan$17;-><init>(Lcom/pgmsoft/wifinder/scan;)V

    .line 1252
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1259
    const v2, 0x7f040049

    invoke-virtual {p0, v2}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1260
    new-instance v3, Lcom/pgmsoft/wifinder/scan$18;

    invoke-direct {v3, p0}, Lcom/pgmsoft/wifinder/scan$18;-><init>(Lcom/pgmsoft/wifinder/scan;)V

    .line 1259
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1268
    const v2, 0x7f04001e

    invoke-virtual {p0, v2}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1269
    new-instance v3, Lcom/pgmsoft/wifinder/scan$19;

    invoke-direct {v3, p0}, Lcom/pgmsoft/wifinder/scan$19;-><init>(Lcom/pgmsoft/wifinder/scan;)V

    .line 1268
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1274
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 1278
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "i"
    .parameter "id"

    .prologue
    .line 505
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 506
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p3}, Lcom/pgmsoft/wifinder/scan;->showDialogNetwork(Ljava/lang/Object;ZI)V

    .line 507
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .parameter "item"

    .prologue
    const v9, 0x7f040008

    const v8, 0x7f040007

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 262
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 340
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    return v4

    .line 264
    :pswitch_0
    invoke-direct {p0}, Lcom/pgmsoft/wifinder/scan;->AboutDialog()V

    goto :goto_0

    .line 267
    :pswitch_1
    iget-object v4, p0, Lcom/pgmsoft/wifinder/scan;->counter:Lcom/pgmsoft/wifinder/scan$MyCount;

    if-eqz v4, :cond_0

    .line 268
    iget-object v4, p0, Lcom/pgmsoft/wifinder/scan;->counter:Lcom/pgmsoft/wifinder/scan$MyCount;

    invoke-virtual {v4}, Lcom/pgmsoft/wifinder/scan$MyCount;->cancel()V

    .line 269
    iput-object v5, p0, Lcom/pgmsoft/wifinder/scan;->counter:Lcom/pgmsoft/wifinder/scan$MyCount;

    .line 270
    invoke-virtual {p0, v8}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/pgmsoft/wifinder/scan;->niceToast(Ljava/lang/String;)Ljava/lang/String;

    .line 271
    iget-object v4, p0, Lcom/pgmsoft/wifinder/scan;->title_prawy:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(I)V

    .line 273
    :cond_0
    iget-object v4, p0, Lcom/pgmsoft/wifinder/scan;->BnewScan:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 274
    iget-object v4, p0, Lcom/pgmsoft/wifinder/scan;->onlyAp:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 275
    new-instance v4, Lcom/pgmsoft/wifinder/KnownNetworks;

    iget-object v5, p0, Lcom/pgmsoft/wifinder/scan;->mainMangerWifi:Landroid/net/wifi/WifiManager;

    iget-object v6, p0, Lcom/pgmsoft/wifinder/scan;->rowList:Ljava/util/List;

    invoke-direct {v4, p0, v5, v6}, Lcom/pgmsoft/wifinder/KnownNetworks;-><init>(Lcom/pgmsoft/wifinder/scan;Landroid/net/wifi/WifiManager;Ljava/util/List;)V

    iput-object v4, p0, Lcom/pgmsoft/wifinder/scan;->knownList:Lcom/pgmsoft/wifinder/KnownNetworks;

    goto :goto_0

    .line 279
    :pswitch_2
    iget-object v4, p0, Lcom/pgmsoft/wifinder/scan;->counter:Lcom/pgmsoft/wifinder/scan$MyCount;

    if-nez v4, :cond_1

    .line 280
    invoke-virtual {p0}, Lcom/pgmsoft/wifinder/scan;->AutoScan()V

    goto :goto_0

    .line 282
    :cond_1
    iget-object v4, p0, Lcom/pgmsoft/wifinder/scan;->counter:Lcom/pgmsoft/wifinder/scan$MyCount;

    invoke-virtual {v4}, Lcom/pgmsoft/wifinder/scan$MyCount;->cancel()V

    .line 283
    iput-object v5, p0, Lcom/pgmsoft/wifinder/scan;->counter:Lcom/pgmsoft/wifinder/scan$MyCount;

    .line 284
    invoke-virtual {p0, v8}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/pgmsoft/wifinder/scan;->niceToast(Ljava/lang/String;)Ljava/lang/String;

    .line 285
    iget-object v4, p0, Lcom/pgmsoft/wifinder/scan;->title_prawy:Landroid/widget/TextView;

    invoke-virtual {p0, v9}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 290
    :pswitch_3
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.settings.WIFI_SETTINGS"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 291
    .local v2, config:Landroid/content/Intent;
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    invoke-virtual {p0, v2}, Lcom/pgmsoft/wifinder/scan;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 296
    .end local v2           #config:Landroid/content/Intent;
    :pswitch_4
    const/4 v4, 0x3

    new-array v3, v4, [Ljava/lang/CharSequence;

    const v4, 0x7f04000f

    invoke-virtual {p0, v4}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const v4, 0x7f040010

    invoke-virtual {p0, v4}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x2

    const v5, 0x7f040011

    invoke-virtual {p0, v5}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 297
    .local v3, items:[Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 298
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f04000e

    invoke-virtual {p0, v4}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 299
    iget v4, p0, Lcom/pgmsoft/wifinder/scan;->level_choose:I

    new-instance v5, Lcom/pgmsoft/wifinder/scan$3;

    invoke-direct {v5, p0}, Lcom/pgmsoft/wifinder/scan$3;-><init>(Lcom/pgmsoft/wifinder/scan;)V

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 307
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 310
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v3           #items:[Ljava/lang/CharSequence;
    :pswitch_5
    iput-object v5, p0, Lcom/pgmsoft/wifinder/scan;->knownList:Lcom/pgmsoft/wifinder/KnownNetworks;

    .line 311
    iget-object v4, p0, Lcom/pgmsoft/wifinder/scan;->BnewScan:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 312
    iget-object v4, p0, Lcom/pgmsoft/wifinder/scan;->onlyAp:Landroid/widget/CheckBox;

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 313
    invoke-direct {p0, v5}, Lcom/pgmsoft/wifinder/scan;->listScanResult(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    .line 317
    :pswitch_6
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 318
    .local v1, builder2:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f040044

    invoke-virtual {p0, v4}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 319
    const v4, 0x7f02000b

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 320
    const v4, 0x7f040045

    invoke-virtual {p0, v4}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 321
    const v4, 0x7f040048

    invoke-virtual {p0, v4}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 322
    new-instance v5, Lcom/pgmsoft/wifinder/scan$4;

    invoke-direct {v5, p0}, Lcom/pgmsoft/wifinder/scan$4;-><init>(Lcom/pgmsoft/wifinder/scan;)V

    .line 321
    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 331
    const v4, 0x7f040049

    invoke-virtual {p0, v4}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 332
    new-instance v5, Lcom/pgmsoft/wifinder/scan$5;

    invoke-direct {v5, p0}, Lcom/pgmsoft/wifinder/scan$5;-><init>(Lcom/pgmsoft/wifinder/scan;)V

    .line 331
    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 337
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 262
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan;->mainMangerWifi:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 399
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pgmsoft/wifinder/scan;->first_run:Z

    .line 400
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan;->counter:Lcom/pgmsoft/wifinder/scan$MyCount;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan;->counter:Lcom/pgmsoft/wifinder/scan$MyCount;

    invoke-virtual {v0}, Lcom/pgmsoft/wifinder/scan$MyCount;->cancel()V

    .line 402
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pgmsoft/wifinder/scan;->counter:Lcom/pgmsoft/wifinder/scan$MyCount;

    .line 403
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan;->title_prawy:Landroid/widget/TextView;

    const v1, 0x7f040008

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 405
    :cond_0
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 406
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 239
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 240
    .local v0, result:Z
    iget-object v1, p0, Lcom/pgmsoft/wifinder/scan;->knownList:Lcom/pgmsoft/wifinder/KnownNetworks;

    if-nez v1, :cond_4

    .line 241
    iget-boolean v1, p0, Lcom/pgmsoft/wifinder/scan;->menu_setup:Z

    if-nez v1, :cond_0

    .line 242
    invoke-virtual {p0, p1}, Lcom/pgmsoft/wifinder/scan;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 243
    :cond_0
    iget-boolean v1, p0, Lcom/pgmsoft/wifinder/scan;->new_scan_menu:Z

    if-eqz v1, :cond_2

    .line 244
    const/4 v1, 0x1

    invoke-interface {p1, v2, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 247
    :goto_0
    iget-object v1, p0, Lcom/pgmsoft/wifinder/scan;->counter:Lcom/pgmsoft/wifinder/scan$MyCount;

    if-nez v1, :cond_3

    .line 248
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f04000a

    invoke-virtual {p0, v2}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 257
    :cond_1
    :goto_1
    return v0

    .line 246
    :cond_2
    invoke-interface {p1, v2, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_0

    .line 250
    :cond_3
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f040008

    invoke-virtual {p0, v2}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_1

    .line 252
    :cond_4
    iget-object v1, p0, Lcom/pgmsoft/wifinder/scan;->knownList:Lcom/pgmsoft/wifinder/KnownNetworks;

    invoke-virtual {v1}, Lcom/pgmsoft/wifinder/KnownNetworks;->checkSetupMenu()Z

    move-result v1

    if-nez v1, :cond_1

    .line 253
    invoke-virtual {p0, p1}, Lcom/pgmsoft/wifinder/scan;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 254
    iget-object v1, p0, Lcom/pgmsoft/wifinder/scan;->knownList:Lcom/pgmsoft/wifinder/KnownNetworks;

    invoke-virtual {v1}, Lcom/pgmsoft/wifinder/KnownNetworks;->setupMenuComplete()V

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 392
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 393
    invoke-direct {p0}, Lcom/pgmsoft/wifinder/scan;->wifiDialog()V

    .line 394
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 386
    new-instance v0, Lcom/pgmsoft/wifinder/SaveRotate;

    iget-object v1, p0, Lcom/pgmsoft/wifinder/scan;->netList:Ljava/util/List;

    iget-wide v2, p0, Lcom/pgmsoft/wifinder/scan;->counter_to_finish:J

    iget-wide v4, p0, Lcom/pgmsoft/wifinder/scan;->counter_base:J

    invoke-direct/range {v0 .. v5}, Lcom/pgmsoft/wifinder/SaveRotate;-><init>(Ljava/util/List;JJ)V

    .line 387
    .local v0, save_conf:Lcom/pgmsoft/wifinder/SaveRotate;
    return-object v0
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 450
    :try_start_0
    iget-object v1, p0, Lcom/pgmsoft/wifinder/scan;->receiverScanResult:Lcom/pgmsoft/wifinder/scan$WifiBroadcast;

    invoke-virtual {p0, v1}, Lcom/pgmsoft/wifinder/scan;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    :goto_0
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 455
    return-void

    .line 451
    :catch_0
    move-exception v0

    .line 452
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const/high16 v1, 0x7f04

    invoke-virtual {p0, v1}, Lcom/pgmsoft/wifinder/scan;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "receiverScanResult not registered"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public update()V
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/pgmsoft/wifinder/scan;->wifiAdapter:Lcom/pgmsoft/wifinder/WifiAdapter;

    invoke-virtual {p0, v0}, Lcom/pgmsoft/wifinder/scan;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 465
    return-void
.end method
