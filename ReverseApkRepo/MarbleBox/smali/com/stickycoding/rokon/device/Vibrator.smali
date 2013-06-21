.class public Lcom/stickycoding/rokon/device/Vibrator;
.super Ljava/lang/Object;
.source "Vibrator.java"


# static fields
.field protected static enabled:Z

.field protected static vibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    sput-boolean v0, Lcom/stickycoding/rokon/device/Vibrator;->enabled:Z

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disable()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/stickycoding/rokon/device/Vibrator;->enabled:Z

    .line 36
    return-void
.end method

.method public static enable()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    sput-boolean v0, Lcom/stickycoding/rokon/device/Vibrator;->enabled:Z

    .line 29
    return-void
.end method

.method private static prepareVibrator()V
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lcom/stickycoding/rokon/device/Vibrator;->vibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-static {}, Lcom/stickycoding/rokon/Rokon;->getActivity()Lcom/stickycoding/rokon/RokonActivity;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Lcom/stickycoding/rokon/RokonActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    sput-object v0, Lcom/stickycoding/rokon/device/Vibrator;->vibrator:Landroid/os/Vibrator;

    goto :goto_0
.end method

.method public static vibrate(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 50
    sget-boolean v0, Lcom/stickycoding/rokon/device/Vibrator;->enabled:Z

    if-nez v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-static {}, Lcom/stickycoding/rokon/device/Vibrator;->prepareVibrator()V

    .line 52
    sget-object v0, Lcom/stickycoding/rokon/device/Vibrator;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p0, p1}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method public static vibrate([JI)V
    .locals 1
    .parameter "pattern"
    .parameter "repeat"

    .prologue
    .line 63
    sget-boolean v0, Lcom/stickycoding/rokon/device/Vibrator;->enabled:Z

    if-nez v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-static {}, Lcom/stickycoding/rokon/device/Vibrator;->prepareVibrator()V

    .line 65
    sget-object v0, Lcom/stickycoding/rokon/device/Vibrator;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p0, p1}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_0
.end method
