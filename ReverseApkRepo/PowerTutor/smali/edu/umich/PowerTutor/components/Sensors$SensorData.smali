.class public Ledu/umich/PowerTutor/components/Sensors$SensorData;
.super Ledu/umich/PowerTutor/service/PowerData;
.source "Sensors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/components/Sensors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SensorData"
.end annotation


# static fields
.field private static recycler:Ledu/umich/PowerTutor/util/Recycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ledu/umich/PowerTutor/util/Recycler",
            "<",
            "Ledu/umich/PowerTutor/components/Sensors$SensorData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public onTime:[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ledu/umich/PowerTutor/util/Recycler;

    invoke-direct {v0}, Ledu/umich/PowerTutor/util/Recycler;-><init>()V

    sput-object v0, Ledu/umich/PowerTutor/components/Sensors$SensorData;->recycler:Ledu/umich/PowerTutor/util/Recycler;

    .line 46
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ledu/umich/PowerTutor/service/PowerData;-><init>()V

    .line 63
    const/16 v0, 0xa

    new-array v0, v0, [D

    iput-object v0, p0, Ledu/umich/PowerTutor/components/Sensors$SensorData;->onTime:[D

    .line 64
    return-void
.end method

.method public static obtain()Ledu/umich/PowerTutor/components/Sensors$SensorData;
    .locals 2

    .prologue
    .line 50
    sget-object v1, Ledu/umich/PowerTutor/components/Sensors$SensorData;->recycler:Ledu/umich/PowerTutor/util/Recycler;

    invoke-virtual {v1}, Ledu/umich/PowerTutor/util/Recycler;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledu/umich/PowerTutor/components/Sensors$SensorData;

    .line 51
    .local v0, result:Ledu/umich/PowerTutor/components/Sensors$SensorData;
    if-eqz v0, :cond_0

    .line 52
    .end local v0           #result:Ledu/umich/PowerTutor/components/Sensors$SensorData;
    :goto_0
    return-object v0

    .restart local v0       #result:Ledu/umich/PowerTutor/components/Sensors$SensorData;
    :cond_0
    new-instance v0, Ledu/umich/PowerTutor/components/Sensors$SensorData;

    .end local v0           #result:Ledu/umich/PowerTutor/components/Sensors$SensorData;
    invoke-direct {v0}, Ledu/umich/PowerTutor/components/Sensors$SensorData;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public recycle()V
    .locals 1

    .prologue
    .line 57
    sget-object v0, Ledu/umich/PowerTutor/components/Sensors$SensorData;->recycler:Ledu/umich/PowerTutor/util/Recycler;

    invoke-virtual {v0, p0}, Ledu/umich/PowerTutor/util/Recycler;->recycle(Ljava/lang/Object;)V

    .line 58
    return-void
.end method

.method public writeLogDataInfo(Ljava/io/OutputStreamWriter;)V
    .locals 6
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .local v1, res:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0xa

    if-lt v0, v2, :cond_0

    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 75
    return-void

    .line 69
    :cond_0
    iget-object v2, p0, Ledu/umich/PowerTutor/components/Sensors$SensorData;->onTime:[D

    aget-wide v2, v2, v0

    const-wide v4, 0x3e7ad7f29abcaf48L

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 70
    const-string v2, "Sensors-time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 71
    iget-object v3, p0, Ledu/umich/PowerTutor/components/Sensors$SensorData;->onTime:[D

    aget-wide v3, v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
