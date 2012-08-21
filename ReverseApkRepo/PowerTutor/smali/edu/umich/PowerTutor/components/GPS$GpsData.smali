.class public Ledu/umich/PowerTutor/components/GPS$GpsData;
.super Ledu/umich/PowerTutor/service/PowerData;
.source "GPS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/components/GPS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GpsData"
.end annotation


# static fields
.field private static recycler:Ledu/umich/PowerTutor/util/Recycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ledu/umich/PowerTutor/util/Recycler",
            "<",
            "Ledu/umich/PowerTutor/components/GPS$GpsData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public satellites:I

.field public stateTimes:[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Ledu/umich/PowerTutor/util/Recycler;

    invoke-direct {v0}, Ledu/umich/PowerTutor/util/Recycler;-><init>()V

    sput-object v0, Ledu/umich/PowerTutor/components/GPS$GpsData;->recycler:Ledu/umich/PowerTutor/util/Recycler;

    .line 48
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ledu/umich/PowerTutor/service/PowerData;-><init>()V

    .line 65
    const/4 v0, 0x3

    new-array v0, v0, [D

    iput-object v0, p0, Ledu/umich/PowerTutor/components/GPS$GpsData;->stateTimes:[D

    .line 66
    return-void
.end method

.method public static obtain()Ledu/umich/PowerTutor/components/GPS$GpsData;
    .locals 2

    .prologue
    .line 52
    sget-object v1, Ledu/umich/PowerTutor/components/GPS$GpsData;->recycler:Ledu/umich/PowerTutor/util/Recycler;

    invoke-virtual {v1}, Ledu/umich/PowerTutor/util/Recycler;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledu/umich/PowerTutor/components/GPS$GpsData;

    .line 53
    .local v0, result:Ledu/umich/PowerTutor/components/GPS$GpsData;
    if-eqz v0, :cond_0

    .line 54
    .end local v0           #result:Ledu/umich/PowerTutor/components/GPS$GpsData;
    :goto_0
    return-object v0

    .restart local v0       #result:Ledu/umich/PowerTutor/components/GPS$GpsData;
    :cond_0
    new-instance v0, Ledu/umich/PowerTutor/components/GPS$GpsData;

    .end local v0           #result:Ledu/umich/PowerTutor/components/GPS$GpsData;
    invoke-direct {v0}, Ledu/umich/PowerTutor/components/GPS$GpsData;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public init([DI)V
    .locals 4
    .parameter "stateTimes"
    .parameter "satellites"

    .prologue
    .line 69
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 72
    iput p2, p0, Ledu/umich/PowerTutor/components/GPS$GpsData;->satellites:I

    .line 73
    return-void

    .line 70
    :cond_0
    iget-object v1, p0, Ledu/umich/PowerTutor/components/GPS$GpsData;->stateTimes:[D

    aget-wide v2, p1, v0

    aput-wide v2, v1, v0

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 77
    sget-object v0, Ledu/umich/PowerTutor/components/GPS$GpsData;->recycler:Ledu/umich/PowerTutor/util/Recycler;

    invoke-virtual {v0, p0}, Ledu/umich/PowerTutor/util/Recycler;->recycle(Ljava/lang/Object;)V

    .line 78
    return-void
.end method

.method public writeLogDataInfo(Ljava/io/OutputStreamWriter;)V
    .locals 5
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .local v1, res:Ljava/lang/StringBuilder;
    const-string v2, "GPS-state-times"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    .line 87
    const-string v2, "\nGPS-sattelites "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ledu/umich/PowerTutor/components/GPS$GpsData;->satellites:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 89
    return-void

    .line 85
    :cond_0
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ledu/umich/PowerTutor/components/GPS$GpsData;->stateTimes:[D

    aget-wide v3, v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
