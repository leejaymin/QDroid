.class public Ledu/umich/PowerTutor/ui/MiscView;
.super Landroid/app/Activity;
.source "MiscView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ledu/umich/PowerTutor/ui/MiscView$AveragePowerItem;,
        Ledu/umich/PowerTutor/ui/MiscView$ChargeItem;,
        Ledu/umich/PowerTutor/ui/MiscView$CounterServiceConnection;,
        Ledu/umich/PowerTutor/ui/MiscView$CurrentItem;,
        Ledu/umich/PowerTutor/ui/MiscView$InfoItem;,
        Ledu/umich/PowerTutor/ui/MiscView$InstantPowerItem;,
        Ledu/umich/PowerTutor/ui/MiscView$OLEDItem;,
        Ledu/umich/PowerTutor/ui/MiscView$PackageItem;,
        Ledu/umich/PowerTutor/ui/MiscView$TempItem;,
        Ledu/umich/PowerTutor/ui/MiscView$UidItem;,
        Ledu/umich/PowerTutor/ui/MiscView$VoltageItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MiscView"


# instance fields
.field private batteryStats:Ledu/umich/PowerTutor/util/BatteryStats;

.field private collector:Ljava/lang/Runnable;

.field private componentNames:[Ljava/lang/String;

.field private conn:Ledu/umich/PowerTutor/ui/MiscView$CounterServiceConnection;

.field private counterService:Ledu/umich/PowerTutor/service/ICounterService;

.field private handler:Landroid/os/Handler;

.field private prefs:Landroid/content/SharedPreferences;

.field private serviceIntent:Landroid/content/Intent;

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ledu/umich/PowerTutor/ui/MiscView;Ledu/umich/PowerTutor/service/ICounterService;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/MiscView;->counterService:Ledu/umich/PowerTutor/service/ICounterService;

    return-void
.end method

.method static synthetic access$1(Ledu/umich/PowerTutor/ui/MiscView;)Ledu/umich/PowerTutor/service/ICounterService;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/MiscView;->counterService:Ledu/umich/PowerTutor/service/ICounterService;

    return-object v0
.end method

.method static synthetic access$2(Ledu/umich/PowerTutor/ui/MiscView;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Ledu/umich/PowerTutor/ui/MiscView;->componentNames:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Ledu/umich/PowerTutor/ui/MiscView;)Ledu/umich/PowerTutor/ui/MiscView$CounterServiceConnection;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/MiscView;->conn:Ledu/umich/PowerTutor/ui/MiscView$CounterServiceConnection;

    return-object v0
.end method

.method static synthetic access$4(Ledu/umich/PowerTutor/ui/MiscView;)Landroid/content/Intent;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/MiscView;->serviceIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$5(Ledu/umich/PowerTutor/ui/MiscView;)I
    .locals 1
    .parameter

    .prologue
    .line 70
    iget v0, p0, Ledu/umich/PowerTutor/ui/MiscView;->uid:I

    return v0
.end method

.method static synthetic access$6(Ledu/umich/PowerTutor/ui/MiscView;)Ledu/umich/PowerTutor/util/BatteryStats;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/MiscView;->batteryStats:Ledu/umich/PowerTutor/util/BatteryStats;

    return-object v0
.end method

.method static synthetic access$7(Ledu/umich/PowerTutor/ui/MiscView;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/MiscView;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 161
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/MiscView;->prefs:Landroid/content/SharedPreferences;

    .line 162
    invoke-virtual {p0}, Ledu/umich/PowerTutor/ui/MiscView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "uid"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Ledu/umich/PowerTutor/ui/MiscView;->uid:I

    .line 163
    if-eqz p1, :cond_0

    .line 164
    const-string v0, "componentNames"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/MiscView;->componentNames:[Ljava/lang/String;

    .line 166
    :cond_0
    invoke-static {}, Ledu/umich/PowerTutor/util/BatteryStats;->getInstance()Ledu/umich/PowerTutor/util/BatteryStats;

    move-result-object v0

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/MiscView;->batteryStats:Ledu/umich/PowerTutor/util/BatteryStats;

    .line 167
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ledu/umich/PowerTutor/service/UMLoggerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/MiscView;->serviceIntent:Landroid/content/Intent;

    .line 168
    new-instance v0, Ledu/umich/PowerTutor/ui/MiscView$CounterServiceConnection;

    invoke-direct {v0, p0}, Ledu/umich/PowerTutor/ui/MiscView$CounterServiceConnection;-><init>(Ledu/umich/PowerTutor/ui/MiscView;)V

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/MiscView;->conn:Ledu/umich/PowerTutor/ui/MiscView$CounterServiceConnection;

    .line 169
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 213
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 198
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 181
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 182
    invoke-virtual {p0}, Ledu/umich/PowerTutor/ui/MiscView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ledu/umich/PowerTutor/ui/MiscView;->conn:Ledu/umich/PowerTutor/ui/MiscView$CounterServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 183
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/MiscView;->collector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Ledu/umich/PowerTutor/ui/MiscView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Ledu/umich/PowerTutor/ui/MiscView;->collector:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 185
    iput-object v2, p0, Ledu/umich/PowerTutor/ui/MiscView;->collector:Ljava/lang/Runnable;

    .line 186
    iput-object v2, p0, Ledu/umich/PowerTutor/ui/MiscView;->handler:Landroid/os/Handler;

    .line 188
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 203
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 173
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 174
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Ledu/umich/PowerTutor/ui/MiscView;->handler:Landroid/os/Handler;

    .line 175
    invoke-virtual {p0}, Ledu/umich/PowerTutor/ui/MiscView;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ledu/umich/PowerTutor/ui/MiscView;->serviceIntent:Landroid/content/Intent;

    iget-object v2, p0, Ledu/umich/PowerTutor/ui/MiscView;->conn:Ledu/umich/PowerTutor/ui/MiscView$CounterServiceConnection;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 176
    invoke-virtual {p0}, Ledu/umich/PowerTutor/ui/MiscView;->refreshView()V

    .line 177
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 192
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 193
    const-string v0, "componentNames"

    iget-object v1, p0, Ledu/umich/PowerTutor/ui/MiscView;->componentNames:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public refreshView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 84
    new-instance v3, Landroid/widget/ListView;

    invoke-direct {v3, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 86
    .local v3, listView:Landroid/widget/ListView;
    new-instance v0, Ledu/umich/PowerTutor/ui/MiscView$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, p0, v4, v3}, Ledu/umich/PowerTutor/ui/MiscView$1;-><init>(Ledu/umich/PowerTutor/ui/MiscView;Landroid/content/Context;ILandroid/widget/ListView;)V

    .line 101
    .local v0, adapter:Landroid/widget/ArrayAdapter;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v1, allItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ledu/umich/PowerTutor/ui/MiscView$InfoItem;>;"
    new-instance v4, Ledu/umich/PowerTutor/ui/MiscView$UidItem;

    invoke-direct {v4, p0, v5}, Ledu/umich/PowerTutor/ui/MiscView$UidItem;-><init>(Ledu/umich/PowerTutor/ui/MiscView;Ledu/umich/PowerTutor/ui/MiscView$UidItem;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    new-instance v4, Ledu/umich/PowerTutor/ui/MiscView$PackageItem;

    invoke-direct {v4, p0, v5}, Ledu/umich/PowerTutor/ui/MiscView$PackageItem;-><init>(Ledu/umich/PowerTutor/ui/MiscView;Ledu/umich/PowerTutor/ui/MiscView$PackageItem;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v4, Ledu/umich/PowerTutor/ui/MiscView$OLEDItem;

    invoke-direct {v4, p0, v5}, Ledu/umich/PowerTutor/ui/MiscView$OLEDItem;-><init>(Ledu/umich/PowerTutor/ui/MiscView;Ledu/umich/PowerTutor/ui/MiscView$OLEDItem;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v4, Ledu/umich/PowerTutor/ui/MiscView$InstantPowerItem;

    invoke-direct {v4, p0, v5}, Ledu/umich/PowerTutor/ui/MiscView$InstantPowerItem;-><init>(Ledu/umich/PowerTutor/ui/MiscView;Ledu/umich/PowerTutor/ui/MiscView$InstantPowerItem;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v4, Ledu/umich/PowerTutor/ui/MiscView$AveragePowerItem;

    invoke-direct {v4, p0, v5}, Ledu/umich/PowerTutor/ui/MiscView$AveragePowerItem;-><init>(Ledu/umich/PowerTutor/ui/MiscView;Ledu/umich/PowerTutor/ui/MiscView$AveragePowerItem;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v4, Ledu/umich/PowerTutor/ui/MiscView$CurrentItem;

    invoke-direct {v4, p0, v5}, Ledu/umich/PowerTutor/ui/MiscView$CurrentItem;-><init>(Ledu/umich/PowerTutor/ui/MiscView;Ledu/umich/PowerTutor/ui/MiscView$CurrentItem;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v4, Ledu/umich/PowerTutor/ui/MiscView$ChargeItem;

    invoke-direct {v4, p0, v5}, Ledu/umich/PowerTutor/ui/MiscView$ChargeItem;-><init>(Ledu/umich/PowerTutor/ui/MiscView;Ledu/umich/PowerTutor/ui/MiscView$ChargeItem;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v4, Ledu/umich/PowerTutor/ui/MiscView$VoltageItem;

    invoke-direct {v4, p0, v5}, Ledu/umich/PowerTutor/ui/MiscView$VoltageItem;-><init>(Ledu/umich/PowerTutor/ui/MiscView;Ledu/umich/PowerTutor/ui/MiscView$VoltageItem;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    new-instance v4, Ledu/umich/PowerTutor/ui/MiscView$TempItem;

    invoke-direct {v4, p0, v5}, Ledu/umich/PowerTutor/ui/MiscView$TempItem;-><init>(Ledu/umich/PowerTutor/ui/MiscView;Ledu/umich/PowerTutor/ui/MiscView$TempItem;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 118
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 119
    invoke-virtual {p0, v3}, Ledu/umich/PowerTutor/ui/MiscView;->setContentView(Landroid/view/View;)V

    .line 121
    new-instance v4, Ledu/umich/PowerTutor/ui/MiscView$2;

    invoke-direct {v4, p0, v1}, Ledu/umich/PowerTutor/ui/MiscView$2;-><init>(Ledu/umich/PowerTutor/ui/MiscView;Ljava/util/ArrayList;)V

    iput-object v4, p0, Ledu/umich/PowerTutor/ui/MiscView;->collector:Ljava/lang/Runnable;

    .line 133
    iget-object v4, p0, Ledu/umich/PowerTutor/ui/MiscView;->handler:Landroid/os/Handler;

    if-eqz v4, :cond_1

    .line 134
    iget-object v4, p0, Ledu/umich/PowerTutor/ui/MiscView;->handler:Landroid/os/Handler;

    iget-object v5, p0, Ledu/umich/PowerTutor/ui/MiscView;->collector:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 136
    :cond_1
    return-void

    .line 112
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ledu/umich/PowerTutor/ui/MiscView$InfoItem;

    .line 113
    .local v2, inf:Ledu/umich/PowerTutor/ui/MiscView$InfoItem;
    invoke-virtual {v2}, Ledu/umich/PowerTutor/ui/MiscView$InfoItem;->available()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 114
    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method
