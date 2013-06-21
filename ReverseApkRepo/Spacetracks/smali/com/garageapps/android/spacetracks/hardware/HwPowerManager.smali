.class public Lcom/garageapps/android/spacetracks/hardware/HwPowerManager;
.super Ljava/lang/Object;
.source "HwPowerManager.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/garageapps/android/spacetracks/hardware/HwPowerManager;->mContext:Landroid/content/Context;

    .line 23
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPowerManager;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPowerManager;->mPowerManager:Landroid/os/PowerManager;

    .line 24
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPowerManager;->mPowerManager:Landroid/os/PowerManager;

    const/16 v1, 0xa

    const-string v2, "Tag_P"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPowerManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 25
    return-void
.end method


# virtual methods
.method public turnOff()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPowerManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 35
    return-void
.end method

.method public turnOn()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwPowerManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 30
    return-void
.end method
