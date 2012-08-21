.class public Ledu/umich/PowerTutor/components/Threeg$ThreegData;
.super Ledu/umich/PowerTutor/service/PowerData;
.source "Threeg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ledu/umich/PowerTutor/components/Threeg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreegData"
.end annotation


# static fields
.field private static recycler:Ledu/umich/PowerTutor/util/Recycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ledu/umich/PowerTutor/util/Recycler",
            "<",
            "Ledu/umich/PowerTutor/components/Threeg$ThreegData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public downlinkBytes:J

.field public oper:Ljava/lang/String;

.field public packets:J

.field public powerState:I

.field public threegOn:Z

.field public uplinkBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Ledu/umich/PowerTutor/util/Recycler;

    invoke-direct {v0}, Ledu/umich/PowerTutor/util/Recycler;-><init>()V

    sput-object v0, Ledu/umich/PowerTutor/components/Threeg$ThreegData;->recycler:Ledu/umich/PowerTutor/util/Recycler;

    .line 44
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ledu/umich/PowerTutor/service/PowerData;-><init>()V

    .line 66
    return-void
.end method

.method public static obtain()Ledu/umich/PowerTutor/components/Threeg$ThreegData;
    .locals 2

    .prologue
    .line 48
    sget-object v1, Ledu/umich/PowerTutor/components/Threeg$ThreegData;->recycler:Ledu/umich/PowerTutor/util/Recycler;

    invoke-virtual {v1}, Ledu/umich/PowerTutor/util/Recycler;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledu/umich/PowerTutor/components/Threeg$ThreegData;

    .line 49
    .local v0, result:Ledu/umich/PowerTutor/components/Threeg$ThreegData;
    if-eqz v0, :cond_0

    .line 50
    .end local v0           #result:Ledu/umich/PowerTutor/components/Threeg$ThreegData;
    :goto_0
    return-object v0

    .restart local v0       #result:Ledu/umich/PowerTutor/components/Threeg$ThreegData;
    :cond_0
    new-instance v0, Ledu/umich/PowerTutor/components/Threeg$ThreegData;

    .end local v0           #result:Ledu/umich/PowerTutor/components/Threeg$ThreegData;
    invoke-direct {v0}, Ledu/umich/PowerTutor/components/Threeg$ThreegData;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public init()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegData;->threegOn:Z

    .line 70
    return-void
.end method

.method public init(JJJILjava/lang/String;)V
    .locals 1
    .parameter "packets"
    .parameter "uplinkBytes"
    .parameter "downlinkBytes"
    .parameter "powerState"
    .parameter "oper"

    .prologue
    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegData;->threegOn:Z

    .line 75
    iput-wide p1, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegData;->packets:J

    .line 76
    iput-wide p3, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegData;->uplinkBytes:J

    .line 77
    iput-wide p5, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegData;->downlinkBytes:J

    .line 78
    iput p7, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegData;->powerState:I

    .line 79
    iput-object p8, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegData;->oper:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 55
    sget-object v0, Ledu/umich/PowerTutor/components/Threeg$ThreegData;->recycler:Ledu/umich/PowerTutor/util/Recycler;

    invoke-virtual {v0, p0}, Ledu/umich/PowerTutor/util/Recycler;->recycle(Ljava/lang/Object;)V

    .line 56
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
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .local v0, res:Ljava/lang/StringBuilder;
    const-string v1, "3G-on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegData;->threegOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-boolean v1, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegData;->threegOn:Z

    if-eqz v1, :cond_0

    .line 86
    const-string v1, "3G-uplinkBytes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegData;->uplinkBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 87
    const-string v2, "\n3G-downlinkBytes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegData;->downlinkBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 88
    const-string v2, "\n3G-packets "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegData;->packets:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 89
    const-string v2, "\n3G-state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ledu/umich/PowerTutor/components/Threeg;->POWER_STATE_NAMES:[Ljava/lang/String;

    iget v3, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegData;->powerState:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 90
    const-string v2, "\n3G-oper "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ledu/umich/PowerTutor/components/Threeg$ThreegData;->oper:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 91
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 94
    return-void
.end method
