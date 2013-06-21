.class public Lcom/trafficStats/test/TrafficStatsTest;
.super Landroid/app/Activity;
.source "TrafficStatsTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/trafficStats/test/TrafficStatsTest$TrafficeTest;
    }
.end annotation


# static fields
.field private static AppInfo:Landroid/content/pm/PackageManager;

.field static THREAD_STATE:I


# instance fields
.field applicationInfo:Landroid/content/pm/ApplicationInfo;

.field mMyUid:Landroid/widget/TextView;

.field mPackageName:Landroid/widget/TextView;

.field mRxText:Landroid/widget/TextView;

.field mSockStartBtn:Landroid/widget/Button;

.field mSockStopBtn:Landroid/widget/Button;

.field mTxText:Landroid/widget/TextView;

.field mUidText:Landroid/widget/EditText;

.field socketTest:Lcom/trafficStats/test/TrafficStatsTest$TrafficeTest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/trafficStats/test/TrafficStatsTest;->AppInfo:Landroid/content/pm/PackageManager;

    .line 29
    const/4 v0, 0x1

    sput v0, Lcom/trafficStats/test/TrafficStatsTest;->THREAD_STATE:I

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/trafficStats/test/TrafficStatsTest;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 24
    return-void
.end method

.method static synthetic access$0()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/trafficStats/test/TrafficStatsTest;->AppInfo:Landroid/content/pm/PackageManager;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/trafficStats/test/TrafficStatsTest;->setContentView(I)V

    .line 49
    invoke-virtual {p0}, Lcom/trafficStats/test/TrafficStatsTest;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, Lcom/trafficStats/test/TrafficStatsTest;->AppInfo:Landroid/content/pm/PackageManager;

    .line 51
    const v0, 0x7f050006

    invoke-virtual {p0, v0}, Lcom/trafficStats/test/TrafficStatsTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 52
    .local v2, textMobileRxBytes:Landroid/widget/TextView;
    const v0, 0x7f050007

    invoke-virtual {p0, v0}, Lcom/trafficStats/test/TrafficStatsTest;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 53
    .local v3, textMobileRxPackets:Landroid/widget/TextView;
    const v0, 0x7f050008

    invoke-virtual {p0, v0}, Lcom/trafficStats/test/TrafficStatsTest;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 54
    .local v4, textMobileTxBytes:Landroid/widget/TextView;
    const v0, 0x7f050009

    invoke-virtual {p0, v0}, Lcom/trafficStats/test/TrafficStatsTest;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 55
    .local v5, textMobileTxPackets:Landroid/widget/TextView;
    const v0, 0x7f05000a

    invoke-virtual {p0, v0}, Lcom/trafficStats/test/TrafficStatsTest;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 56
    .local v6, textTotalRxBytes:Landroid/widget/TextView;
    const v0, 0x7f05000b

    invoke-virtual {p0, v0}, Lcom/trafficStats/test/TrafficStatsTest;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 57
    .local v7, textTotalRxPackets:Landroid/widget/TextView;
    const v0, 0x7f05000c

    invoke-virtual {p0, v0}, Lcom/trafficStats/test/TrafficStatsTest;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 58
    .local v8, textTotalTxBytes:Landroid/widget/TextView;
    const v0, 0x7f05000d

    invoke-virtual {p0, v0}, Lcom/trafficStats/test/TrafficStatsTest;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 61
    .local v9, textTotalTxPackets:Landroid/widget/TextView;
    const v0, 0x7f050004

    invoke-virtual {p0, v0}, Lcom/trafficStats/test/TrafficStatsTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/trafficStats/test/TrafficStatsTest;->mUidText:Landroid/widget/EditText;

    .line 62
    const v0, 0x7f05000e

    invoke-virtual {p0, v0}, Lcom/trafficStats/test/TrafficStatsTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/trafficStats/test/TrafficStatsTest;->mPackageName:Landroid/widget/TextView;

    .line 63
    const v0, 0x7f050010

    invoke-virtual {p0, v0}, Lcom/trafficStats/test/TrafficStatsTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/trafficStats/test/TrafficStatsTest;->mRxText:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f05000f

    invoke-virtual {p0, v0}, Lcom/trafficStats/test/TrafficStatsTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/trafficStats/test/TrafficStatsTest;->mTxText:Landroid/widget/TextView;

    .line 67
    const v0, 0x7f050005

    invoke-virtual {p0, v0}, Lcom/trafficStats/test/TrafficStatsTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/trafficStats/test/TrafficStatsTest;->mMyUid:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lcom/trafficStats/test/TrafficStatsTest;->mMyUid:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lcom/trafficStats/test/TrafficStatsTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/trafficStats/test/TrafficStatsTest;->mSockStartBtn:Landroid/widget/Button;

    .line 72
    iget-object v0, p0, Lcom/trafficStats/test/TrafficStatsTest;->mSockStartBtn:Landroid/widget/Button;

    new-instance v1, Lcom/trafficStats/test/TrafficStatsTest$1;

    invoke-direct {v1, p0}, Lcom/trafficStats/test/TrafficStatsTest$1;-><init>(Lcom/trafficStats/test/TrafficStatsTest;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const v0, 0x7f050003

    invoke-virtual {p0, v0}, Lcom/trafficStats/test/TrafficStatsTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/trafficStats/test/TrafficStatsTest;->mSockStopBtn:Landroid/widget/Button;

    .line 84
    iget-object v0, p0, Lcom/trafficStats/test/TrafficStatsTest;->mSockStopBtn:Landroid/widget/Button;

    new-instance v1, Lcom/trafficStats/test/TrafficStatsTest$2;

    invoke-direct {v1, p0}, Lcom/trafficStats/test/TrafficStatsTest$2;-><init>(Lcom/trafficStats/test/TrafficStatsTest;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/trafficStats/test/TrafficStatsTest;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 93
    .local v10, buttonLoadTrafficStats:Landroid/widget/Button;
    new-instance v0, Lcom/trafficStats/test/TrafficStatsTest$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/trafficStats/test/TrafficStatsTest$3;-><init>(Lcom/trafficStats/test/TrafficStatsTest;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 244
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 245
    const-string v0, "Application List"

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 246
    const/4 v0, 0x2

    const-string v1, "Activity Bug"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 256
    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 260
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 268
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 262
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/trafficStats/test/ApplicationList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/trafficStats/test/TrafficStatsTest;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 265
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/trafficStats/test/ActivityBug;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/trafficStats/test/TrafficStatsTest;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
