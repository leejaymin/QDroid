.class public Ledu/umich/PowerTutor/components/Wifi$WifiData;
.super Ledu/umich/PowerTutor/service/PowerData;
.source "Wifi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/components/Wifi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiData"
.end annotation


# static fields
.field private static recycler:Ledu/umich/PowerTutor/util/Recycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ledu/umich/PowerTutor/util/Recycler",
            "<",
            "Ledu/umich/PowerTutor/components/Wifi$WifiData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public downlinkBytes:J

.field public linkSpeed:D

.field public packets:D

.field public powerState:I

.field public uplinkBytes:J

.field public uplinkRate:D

.field public wifiOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ledu/umich/PowerTutor/util/Recycler;

    invoke-direct {v0}, Ledu/umich/PowerTutor/util/Recycler;-><init>()V

    sput-object v0, Ledu/umich/PowerTutor/components/Wifi$WifiData;->recycler:Ledu/umich/PowerTutor/util/Recycler;

    .line 38
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ledu/umich/PowerTutor/service/PowerData;-><init>()V

    .line 61
    return-void
.end method

.method public static obtain()Ledu/umich/PowerTutor/components/Wifi$WifiData;
    .locals 2

    .prologue
    .line 42
    sget-object v1, Ledu/umich/PowerTutor/components/Wifi$WifiData;->recycler:Ledu/umich/PowerTutor/util/Recycler;

    invoke-virtual {v1}, Ledu/umich/PowerTutor/util/Recycler;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledu/umich/PowerTutor/components/Wifi$WifiData;

    .line 43
    .local v0, result:Ledu/umich/PowerTutor/components/Wifi$WifiData;
    if-eqz v0, :cond_0

    .line 44
    .end local v0           #result:Ledu/umich/PowerTutor/components/Wifi$WifiData;
    :goto_0
    return-object v0

    .restart local v0       #result:Ledu/umich/PowerTutor/components/Wifi$WifiData;
    :cond_0
    new-instance v0, Ledu/umich/PowerTutor/components/Wifi$WifiData;

    .end local v0           #result:Ledu/umich/PowerTutor/components/Wifi$WifiData;
    invoke-direct {v0}, Ledu/umich/PowerTutor/components/Wifi$WifiData;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public init()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Ledu/umich/PowerTutor/components/Wifi$WifiData;->wifiOn:Z

    .line 76
    return-void
.end method

.method public init(DJJDDI)V
    .locals 1
    .parameter "packets"
    .parameter "uplinkBytes"
    .parameter "downlinkBytes"
    .parameter "uplinkRate"
    .parameter "linkSpeed"
    .parameter "powerState"

    .prologue
    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Ledu/umich/PowerTutor/components/Wifi$WifiData;->wifiOn:Z

    .line 66
    iput-wide p1, p0, Ledu/umich/PowerTutor/components/Wifi$WifiData;->packets:D

    .line 67
    iput-wide p3, p0, Ledu/umich/PowerTutor/components/Wifi$WifiData;->uplinkBytes:J

    .line 68
    iput-wide p5, p0, Ledu/umich/PowerTutor/components/Wifi$WifiData;->downlinkBytes:J

    .line 69
    iput-wide p7, p0, Ledu/umich/PowerTutor/components/Wifi$WifiData;->uplinkRate:D

    .line 70
    iput-wide p9, p0, Ledu/umich/PowerTutor/components/Wifi$WifiData;->linkSpeed:D

    .line 71
    iput p11, p0, Ledu/umich/PowerTutor/components/Wifi$WifiData;->powerState:I

    .line 72
    return-void
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 49
    sget-object v0, Ledu/umich/PowerTutor/components/Wifi$WifiData;->recycler:Ledu/umich/PowerTutor/util/Recycler;

    invoke-virtual {v0, p0}, Ledu/umich/PowerTutor/util/Recycler;->recycle(Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method public writeLogDataInfo(Ljava/io/OutputStreamWriter;)V
    .locals 4
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .local v0, res:Ljava/lang/StringBuilder;
    const-string v1, "Wifi-on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ledu/umich/PowerTutor/components/Wifi$WifiData;->wifiOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-boolean v1, p0, Ledu/umich/PowerTutor/components/Wifi$WifiData;->wifiOn:Z

    if-eqz v1, :cond_0

    .line 82
    const-string v1, "Wifi-packets "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ledu/umich/PowerTutor/components/Wifi$WifiData;->packets:D

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 83
    const-string v2, "\nWifi-uplinkBytes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ledu/umich/PowerTutor/components/Wifi$WifiData;->uplinkBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 84
    const-string v2, "\nWifi-downlinkBytes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ledu/umich/PowerTutor/components/Wifi$WifiData;->downlinkBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 85
    const-string v2, "\nWifi-uplink "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ledu/umich/PowerTutor/components/Wifi$WifiData;->uplinkRate:D

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 86
    const-string v2, "\nWifi-speed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ledu/umich/PowerTutor/components/Wifi$WifiData;->linkSpeed:D

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 87
    const-string v2, "\nWifi-state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ledu/umich/PowerTutor/components/Wifi;->POWER_STATE_NAMES:[Ljava/lang/String;

    iget v3, p0, Ledu/umich/PowerTutor/components/Wifi$WifiData;->powerState:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 88
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 91
    return-void
.end method
