.class public Lcom/garageapps/android/spacetracks/hardware/HwVibrationManager;
.super Ljava/lang/Object;
.source "HwVibrationManager.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mVibrationManager:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/garageapps/android/spacetracks/hardware/HwVibrationManager;->mContext:Landroid/content/Context;

    .line 25
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwVibrationManager;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwVibrationManager;->mVibrationManager:Landroid/os/Vibrator;

    .line 26
    return-void
.end method


# virtual methods
.method public vibrate(J)V
    .locals 2
    .parameter "miliseconds"

    .prologue
    .line 30
    sget-object v0, Lcom/garageapps/android/spacetracks/main;->cMain:Lcom/garageapps/android/spacetracks/main;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/main;->mApplication:Lcom/garageapps/android/spacetracks/mainApplication;

    iget-object v0, v0, Lcom/garageapps/android/spacetracks/mainApplication;->mPrefs:Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;

    iget v0, v0, Lcom/garageapps/android/spacetracks/hardware/HwPrefsManager;->controlsVibration:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 31
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/hardware/HwVibrationManager;->mVibrationManager:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 32
    :cond_0
    return-void
.end method
