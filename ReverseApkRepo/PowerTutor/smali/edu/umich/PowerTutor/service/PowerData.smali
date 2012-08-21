.class public abstract Ledu/umich/PowerTutor/service/PowerData;
.super Ljava/lang/Object;
.source "PowerData.java"


# instance fields
.field private cachedPower:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public getCachedPower()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Ledu/umich/PowerTutor/service/PowerData;->cachedPower:I

    return v0
.end method

.method public recycle()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public setCachedPower(I)V
    .locals 0
    .parameter "power"

    .prologue
    .line 33
    iput p1, p0, Ledu/umich/PowerTutor/service/PowerData;->cachedPower:I

    .line 34
    return-void
.end method

.method public abstract writeLogDataInfo(Ljava/io/OutputStreamWriter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
