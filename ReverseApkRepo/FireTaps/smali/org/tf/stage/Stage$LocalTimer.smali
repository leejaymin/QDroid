.class final Lorg/tf/stage/Stage$LocalTimer;
.super Ljava/lang/Object;
.source "Stage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/tf/stage/Stage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalTimer"
.end annotation


# instance fields
.field private m_duration:I

.field private m_startTime:I

.field final synthetic this$0:Lorg/tf/stage/Stage;


# direct methods
.method public constructor <init>(Lorg/tf/stage/Stage;)V
    .locals 0
    .parameter

    .prologue
    .line 1320
    iput-object p1, p0, Lorg/tf/stage/Stage$LocalTimer;->this$0:Lorg/tf/stage/Stage;

    .line 1318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1319
    invoke-virtual {p0}, Lorg/tf/stage/Stage$LocalTimer;->reset()V

    return-void
.end method


# virtual methods
.method public final getDuration()I
    .locals 1

    .prologue
    .line 1344
    iget v0, p0, Lorg/tf/stage/Stage$LocalTimer;->m_duration:I

    return v0
.end method

.method public final getElapsedTime()I
    .locals 3

    .prologue
    .line 1347
    invoke-virtual {p0}, Lorg/tf/stage/Stage$LocalTimer;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1348
    const/4 v0, 0x0

    .line 1350
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/tf/stage/Stage$LocalTimer;->m_duration:I

    iget-object v1, p0, Lorg/tf/stage/Stage$LocalTimer;->this$0:Lorg/tf/stage/Stage;

    #calls: Lorg/tf/stage/Stage;->getLocalTime()I
    invoke-static {v1}, Lorg/tf/stage/Stage;->access$0(Lorg/tf/stage/Stage;)I

    move-result v1

    iget v2, p0, Lorg/tf/stage/Stage$LocalTimer;->m_startTime:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public final getProgress()F
    .locals 2

    .prologue
    .line 1356
    invoke-virtual {p0}, Lorg/tf/stage/Stage$LocalTimer;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1357
    const/4 v0, 0x0

    .line 1359
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/tf/stage/Stage$LocalTimer;->getElapsedTime()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/tf/stage/Stage$LocalTimer;->m_duration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public final getRemainingTime()I
    .locals 2

    .prologue
    .line 1353
    iget v0, p0, Lorg/tf/stage/Stage$LocalTimer;->m_duration:I

    invoke-virtual {p0}, Lorg/tf/stage/Stage$LocalTimer;->getElapsedTime()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final isRunning()Z
    .locals 2

    .prologue
    .line 1362
    invoke-virtual {p0}, Lorg/tf/stage/Stage$LocalTimer;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/tf/stage/Stage$LocalTimer;->getElapsedTime()I

    move-result v0

    iget v1, p0, Lorg/tf/stage/Stage$LocalTimer;->m_duration:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isStarted()Z
    .locals 2

    .prologue
    .line 1338
    iget v0, p0, Lorg/tf/stage/Stage$LocalTimer;->m_startTime:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final reset()V
    .locals 1

    .prologue
    .line 1330
    const v0, 0x7fffffff

    iput v0, p0, Lorg/tf/stage/Stage$LocalTimer;->m_startTime:I

    .line 1331
    const/4 v0, 0x0

    iput v0, p0, Lorg/tf/stage/Stage$LocalTimer;->m_duration:I

    .line 1332
    return-void
.end method

.method public restore(Ljava/io/DataInputStream;)V
    .locals 1
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1326
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/tf/stage/Stage$LocalTimer;->m_startTime:I

    .line 1327
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/tf/stage/Stage$LocalTimer;->m_duration:I

    .line 1328
    return-void
.end method

.method public save(Ljava/io/DataOutputStream;)V
    .locals 1
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1322
    iget v0, p0, Lorg/tf/stage/Stage$LocalTimer;->m_startTime:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1323
    iget v0, p0, Lorg/tf/stage/Stage$LocalTimer;->m_duration:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1324
    return-void
.end method

.method public final start(I)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 1334
    iget-object v0, p0, Lorg/tf/stage/Stage$LocalTimer;->this$0:Lorg/tf/stage/Stage;

    #calls: Lorg/tf/stage/Stage;->getLocalTime()I
    invoke-static {v0}, Lorg/tf/stage/Stage;->access$0(Lorg/tf/stage/Stage;)I

    move-result v0

    iput v0, p0, Lorg/tf/stage/Stage$LocalTimer;->m_startTime:I

    .line 1335
    iput p1, p0, Lorg/tf/stage/Stage$LocalTimer;->m_duration:I

    .line 1336
    return-void
.end method

.method public final stop()V
    .locals 0

    .prologue
    .line 1341
    invoke-virtual {p0}, Lorg/tf/stage/Stage$LocalTimer;->reset()V

    .line 1342
    return-void
.end method
