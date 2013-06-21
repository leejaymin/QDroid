.class public Lcom/stickycoding/rokon/FPSCounter;
.super Ljava/lang/Object;
.source "FPSCounter.java"


# static fields
.field protected static final FPS_AVG:I = 0x5

.field protected static frameCount:I

.field protected static loopCount:I

.field protected static loopSecondStart:J

.field protected static secondStart:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 14
    sput v0, Lcom/stickycoding/rokon/FPSCounter;->frameCount:I

    .line 15
    sput-wide v1, Lcom/stickycoding/rokon/FPSCounter;->secondStart:J

    .line 17
    sput v0, Lcom/stickycoding/rokon/FPSCounter;->loopCount:I

    .line 18
    sput-wide v1, Lcom/stickycoding/rokon/FPSCounter;->loopSecondStart:J

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static onFrame()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1388

    .line 21
    sget-wide v0, Lcom/stickycoding/rokon/FPSCounter;->secondStart:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 22
    sget-wide v0, Lcom/stickycoding/rokon/Time;->drawTicks:J

    sput-wide v0, Lcom/stickycoding/rokon/FPSCounter;->secondStart:J

    .line 23
    sget v0, Lcom/stickycoding/rokon/FPSCounter;->frameCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/stickycoding/rokon/FPSCounter;->frameCount:I

    .line 33
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    sget v0, Lcom/stickycoding/rokon/FPSCounter;->frameCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/stickycoding/rokon/FPSCounter;->frameCount:I

    .line 27
    sget-wide v0, Lcom/stickycoding/rokon/Time;->drawTicks:J

    sget-wide v2, Lcom/stickycoding/rokon/FPSCounter;->secondStart:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    .line 28
    sget-wide v0, Lcom/stickycoding/rokon/FPSCounter;->secondStart:J

    add-long/2addr v0, v4

    sput-wide v0, Lcom/stickycoding/rokon/FPSCounter;->secondStart:J

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Render FPS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/stickycoding/rokon/FPSCounter;->frameCount:I

    div-int/lit8 v1, v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stickycoding/rokon/Debug;->print(Ljava/lang/String;)V

    .line 30
    const/4 v0, 0x0

    sput v0, Lcom/stickycoding/rokon/FPSCounter;->frameCount:I

    goto :goto_0
.end method

.method protected static onLoop()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1388

    .line 36
    sget-wide v0, Lcom/stickycoding/rokon/FPSCounter;->loopSecondStart:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 37
    sget-wide v0, Lcom/stickycoding/rokon/Time;->loopTicks:J

    sput-wide v0, Lcom/stickycoding/rokon/FPSCounter;->loopSecondStart:J

    .line 38
    sget v0, Lcom/stickycoding/rokon/FPSCounter;->loopCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/stickycoding/rokon/FPSCounter;->loopCount:I

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    sget v0, Lcom/stickycoding/rokon/FPSCounter;->loopCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/stickycoding/rokon/FPSCounter;->loopCount:I

    .line 42
    sget-wide v0, Lcom/stickycoding/rokon/Time;->loopTicks:J

    sget-wide v2, Lcom/stickycoding/rokon/FPSCounter;->loopSecondStart:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    .line 43
    sget-wide v0, Lcom/stickycoding/rokon/FPSCounter;->loopSecondStart:J

    add-long/2addr v0, v4

    sput-wide v0, Lcom/stickycoding/rokon/FPSCounter;->loopSecondStart:J

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Logic FPS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/stickycoding/rokon/FPSCounter;->loopCount:I

    div-int/lit8 v1, v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stickycoding/rokon/Debug;->print(Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    sput v0, Lcom/stickycoding/rokon/FPSCounter;->loopCount:I

    goto :goto_0
.end method
