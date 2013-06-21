.class public Ledu/umich/PowerTutor/service/UidInfo;
.super Ljava/lang/Object;
.source "UidInfo.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# static fields
.field private static recycler:Ledu/umich/PowerTutor/util/Recycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ledu/umich/PowerTutor/util/Recycler",
            "<",
            "Ledu/umich/PowerTutor/service/UidInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public currentPower:I

.field public transient key:D

.field public transient percentage:D

.field public runtime:J

.field public totalEnergy:J

.field public uid:I

.field public transient unit:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ledu/umich/PowerTutor/util/Recycler;

    invoke-direct {v0}, Ledu/umich/PowerTutor/util/Recycler;-><init>()V

    sput-object v0, Ledu/umich/PowerTutor/service/UidInfo;->recycler:Ledu/umich/PowerTutor/util/Recycler;

    .line 26
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public static obtain()Ledu/umich/PowerTutor/service/UidInfo;
    .locals 2

    .prologue
    .line 30
    sget-object v1, Ledu/umich/PowerTutor/service/UidInfo;->recycler:Ledu/umich/PowerTutor/util/Recycler;

    invoke-virtual {v1}, Ledu/umich/PowerTutor/util/Recycler;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledu/umich/PowerTutor/service/UidInfo;

    .line 31
    .local v0, result:Ledu/umich/PowerTutor/service/UidInfo;
    if-eqz v0, :cond_0

    .line 32
    .end local v0           #result:Ledu/umich/PowerTutor/service/UidInfo;
    :goto_0
    return-object v0

    .restart local v0       #result:Ledu/umich/PowerTutor/service/UidInfo;
    :cond_0
    new-instance v0, Ledu/umich/PowerTutor/service/UidInfo;

    .end local v0           #result:Ledu/umich/PowerTutor/service/UidInfo;
    invoke-direct {v0}, Ledu/umich/PowerTutor/service/UidInfo;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 5
    .parameter "o"

    .prologue
    .line 60
    move-object v0, p1

    check-cast v0, Ledu/umich/PowerTutor/service/UidInfo;

    .line 61
    .local v0, x:Ledu/umich/PowerTutor/service/UidInfo;
    iget-wide v1, p0, Ledu/umich/PowerTutor/service/UidInfo;->key:D

    iget-wide v3, v0, Ledu/umich/PowerTutor/service/UidInfo;->key:D

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, -0x1

    .line 63
    :goto_0
    return v1

    .line 62
    :cond_0
    iget-wide v1, p0, Ledu/umich/PowerTutor/service/UidInfo;->key:D

    iget-wide v3, v0, Ledu/umich/PowerTutor/service/UidInfo;->key:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 63
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public init(IIJJ)V
    .locals 0
    .parameter "uid"
    .parameter "currentPower"
    .parameter "totalEnergy"
    .parameter "runtime"

    .prologue
    .line 53
    iput p1, p0, Ledu/umich/PowerTutor/service/UidInfo;->uid:I

    .line 54
    iput p2, p0, Ledu/umich/PowerTutor/service/UidInfo;->currentPower:I

    .line 55
    iput-wide p3, p0, Ledu/umich/PowerTutor/service/UidInfo;->totalEnergy:J

    .line 56
    iput-wide p5, p0, Ledu/umich/PowerTutor/service/UidInfo;->runtime:J

    .line 57
    return-void
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 36
    sget-object v0, Ledu/umich/PowerTutor/service/UidInfo;->recycler:Ledu/umich/PowerTutor/util/Recycler;

    invoke-virtual {v0, p0}, Ledu/umich/PowerTutor/util/Recycler;->recycle(Ljava/lang/Object;)V

    .line 37
    return-void
.end method
