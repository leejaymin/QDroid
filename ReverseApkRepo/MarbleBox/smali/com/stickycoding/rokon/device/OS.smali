.class public Lcom/stickycoding/rokon/device/OS;
.super Ljava/lang/Object;
.source "OS.java"


# static fields
.field public static API_LEVEL:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput v0, Lcom/stickycoding/rokon/device/OS;->API_LEVEL:I

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static determineAPI()V
    .locals 2

    .prologue
    .line 19
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/stickycoding/rokon/device/OS;->API_LEVEL:I

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "API LEVEL "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " int="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/stickycoding/rokon/device/OS;->API_LEVEL:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stickycoding/rokon/Debug;->print(Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/stickycoding/rokon/device/OS;->hackBrokenDevices()V

    .line 22
    return-void
.end method

.method public static hackBrokenDevices()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method
