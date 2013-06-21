.class public Lcom/stickycoding/rokon/modifiers/Blink;
.super Lcom/stickycoding/rokon/Modifier;
.source "Blink.java"


# instance fields
.field private end:J

.field private nextFlash:J

.field private show:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/stickycoding/rokon/Modifier;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stickycoding/rokon/modifiers/Blink;->show:Z

    .line 16
    return-void
.end method


# virtual methods
.method public onEnd(Lcom/stickycoding/rokon/Sprite;)V
    .locals 0
    .parameter "sprite"

    .prologue
    .line 56
    return-void
.end method

.method public onStart(Lcom/stickycoding/rokon/Sprite;)V
    .locals 4
    .parameter "sprite"

    .prologue
    .line 27
    invoke-static {}, Lcom/stickycoding/rokon/Time;->getLoopTicks()J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/stickycoding/rokon/modifiers/Blink;->nextFlash:J

    .line 28
    invoke-static {}, Lcom/stickycoding/rokon/Time;->getLoopTicks()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/stickycoding/rokon/modifiers/Blink;->end:J

    .line 29
    return-void
.end method

.method public onUpdate(Lcom/stickycoding/rokon/Sprite;)V
    .locals 5
    .parameter "sprite"

    .prologue
    const/high16 v4, 0x3f80

    .line 36
    invoke-static {}, Lcom/stickycoding/rokon/Time;->getLoopTicks()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/stickycoding/rokon/modifiers/Blink;->end:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 37
    invoke-virtual {p1, v4}, Lcom/stickycoding/rokon/Sprite;->setAlpha(F)V

    .line 38
    invoke-virtual {p0}, Lcom/stickycoding/rokon/modifiers/Blink;->end()V

    .line 50
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    invoke-static {}, Lcom/stickycoding/rokon/Time;->getLoopTicks()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/stickycoding/rokon/modifiers/Blink;->nextFlash:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 42
    iget-boolean v0, p0, Lcom/stickycoding/rokon/modifiers/Blink;->show:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/stickycoding/rokon/modifiers/Blink;->show:Z

    .line 43
    iget-boolean v0, p0, Lcom/stickycoding/rokon/modifiers/Blink;->show:Z

    if-eqz v0, :cond_3

    .line 44
    invoke-virtual {p1, v4}, Lcom/stickycoding/rokon/Sprite;->setAlpha(F)V

    .line 48
    :goto_2
    invoke-static {}, Lcom/stickycoding/rokon/Time;->getLoopTicks()J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/stickycoding/rokon/modifiers/Blink;->nextFlash:J

    goto :goto_0

    .line 42
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 46
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/stickycoding/rokon/Sprite;->setAlpha(F)V

    goto :goto_2
.end method
