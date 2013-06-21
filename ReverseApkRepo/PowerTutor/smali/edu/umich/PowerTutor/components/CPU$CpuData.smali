.class public Ledu/umich/PowerTutor/components/CPU$CpuData;
.super Ledu/umich/PowerTutor/service/PowerData;
.source "CPU.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/components/CPU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CpuData"
.end annotation


# static fields
.field private static recycler:Ledu/umich/PowerTutor/util/Recycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ledu/umich/PowerTutor/util/Recycler",
            "<",
            "Ledu/umich/PowerTutor/components/CPU$CpuData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public freq:D

.field public sysPerc:D

.field public usrPerc:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ledu/umich/PowerTutor/util/Recycler;

    invoke-direct {v0}, Ledu/umich/PowerTutor/util/Recycler;-><init>()V

    sput-object v0, Ledu/umich/PowerTutor/components/CPU$CpuData;->recycler:Ledu/umich/PowerTutor/util/Recycler;

    .line 42
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

.method public static obtain()Ledu/umich/PowerTutor/components/CPU$CpuData;
    .locals 2

    .prologue
    .line 46
    sget-object v1, Ledu/umich/PowerTutor/components/CPU$CpuData;->recycler:Ledu/umich/PowerTutor/util/Recycler;

    invoke-virtual {v1}, Ledu/umich/PowerTutor/util/Recycler;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledu/umich/PowerTutor/components/CPU$CpuData;

    .line 47
    .local v0, result:Ledu/umich/PowerTutor/components/CPU$CpuData;
    if-eqz v0, :cond_0

    .line 48
    .end local v0           #result:Ledu/umich/PowerTutor/components/CPU$CpuData;
    :goto_0
    return-object v0

    .restart local v0       #result:Ledu/umich/PowerTutor/components/CPU$CpuData;
    :cond_0
    new-instance v0, Ledu/umich/PowerTutor/components/CPU$CpuData;

    .end local v0           #result:Ledu/umich/PowerTutor/components/CPU$CpuData;
    invoke-direct {v0}, Ledu/umich/PowerTutor/components/CPU$CpuData;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public init(DDD)V
    .locals 0
    .parameter "sysPerc"
    .parameter "usrPerc"
    .parameter "freq"

    .prologue
    .line 64
    iput-wide p1, p0, Ledu/umich/PowerTutor/components/CPU$CpuData;->sysPerc:D

    .line 65
    iput-wide p3, p0, Ledu/umich/PowerTutor/components/CPU$CpuData;->usrPerc:D

    .line 66
    iput-wide p5, p0, Ledu/umich/PowerTutor/components/CPU$CpuData;->freq:D

    .line 67
    return-void
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 53
    sget-object v0, Ledu/umich/PowerTutor/components/CPU$CpuData;->recycler:Ledu/umich/PowerTutor/util/Recycler;

    invoke-virtual {v0, p0}, Ledu/umich/PowerTutor/util/Recycler;->recycle(Ljava/lang/Object;)V

    .line 54
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
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .local v0, res:Ljava/lang/StringBuilder;
    const-string v1, "CPU-sys "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ledu/umich/PowerTutor/components/CPU$CpuData;->sysPerc:D

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 72
    const-string v2, "\nCPU-usr "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ledu/umich/PowerTutor/components/CPU$CpuData;->usrPerc:D

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 73
    const-string v2, "\nCPU-freq "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ledu/umich/PowerTutor/components/CPU$CpuData;->freq:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 74
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 76
    return-void
.end method
