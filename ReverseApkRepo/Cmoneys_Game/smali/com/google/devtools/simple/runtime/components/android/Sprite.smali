.class public abstract Lcom/google/devtools/simple/runtime/components/android/Sprite;
.super Lcom/google/devtools/simple/runtime/components/SpriteComponent;
.source "Sprite.java"

# interfaces
.implements Lcom/google/devtools/simple/runtime/components/android/Deleteable;


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation


# instance fields
.field protected final canvas:Lcom/google/devtools/simple/runtime/components/android/Canvas;

.field private inEvent:Z

.field protected initialized:Z

.field private pendingChanges:Z

.field private registeredCollisions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/devtools/simple/runtime/components/SpriteComponent;",
            ">;"
        }
    .end annotation
.end field

.field private timerInternal:Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;


# direct methods
.method public constructor <init>(Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;)V
    .locals 3
    .parameter "container"

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Lcom/google/devtools/simple/runtime/components/SpriteComponent;-><init>()V

    .line 46
    iput-boolean v1, p0, Lcom/google/devtools/simple/runtime/components/android/Sprite;->initialized:Z

    .line 55
    instance-of v0, p1, Lcom/google/devtools/simple/runtime/components/android/Canvas;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/google/devtools/simple/runtime/errors/IllegalArgumentError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sprite constructor called with container "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/devtools/simple/runtime/errors/IllegalArgumentError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    check-cast p1, Lcom/google/devtools/simple/runtime/components/android/Canvas;

    .end local p1
    iput-object p1, p0, Lcom/google/devtools/simple/runtime/components/android/Sprite;->canvas:Lcom/google/devtools/simple/runtime/components/android/Canvas;

    .line 59
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sprite;->canvas:Lcom/google/devtools/simple/runtime/components/android/Canvas;

    invoke-virtual {v0, p0}, Lcom/google/devtools/simple/runtime/components/android/Canvas;->addSprite(Lcom/google/devtools/simple/runtime/components/android/Sprite;)V

    .line 60
    new-instance v0, Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;

    invoke-direct {v0, p0}, Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;-><init>(Lcom/google/devtools/simple/runtime/components/AlarmHandler;)V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sprite;->timerInternal:Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;

    .line 61
    invoke-virtual {p0, v1}, Lcom/google/devtools/simple/runtime/components/android/Sprite;->Heading(I)V

    .line 62
    iput-boolean v1, p0, Lcom/google/devtools/simple/runtime/components/android/Sprite;->pendingChanges:Z

    .line 63
    iput-boolean v1, p0, Lcom/google/devtools/simple/runtime/components/android/Sprite;->inEvent:Z

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sprite;->registeredCollisions:Ljava/util/Set;

    .line 65
    return-void
.end method


# virtual methods
.method public CollidedWith(Lcom/google/devtools/simple/runtime/components/android/Sprite;)V
    .locals 3
    .parameter "other"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerEvent;
        argList = "other As Sprite"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sprite;->registeredCollisions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const-string v0, "Sprite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Collision between sprites "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " re-registered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sprite;->registeredCollisions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    const-string v0, "CollidedWith"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, p0, v0, v1}, Lcom/google/devtools/simple/runtime/components/android/Sprite;->requestEvent(Lcom/google/devtools/simple/runtime/components/SpriteComponent;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public CollidingWith(Lcom/google/devtools/simple/runtime/components/android/Sprite;)Z
    .locals 1
    .parameter "other"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sprite;->registeredCollisions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public Enabled(Z)V
    .locals 1
    .parameter "enabled"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sprite;->timerInternal:Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;

    invoke-virtual {v0, p1}, Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;->Enabled(Z)V

    .line 236
    return-void
.end method

.method public Enabled()Z
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sprite;->timerInternal:Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;

    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;->Enabled()Z

    move-result v0

    return v0
.end method

.method public Initialize()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sprite;->initialized:Z

    .line 85
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sprite;->canvas:Lcom/google/devtools/simple/runtime/components/android/Canvas;

    invoke-virtual {v0, p0}, Lcom/google/devtools/simple/runtime/components/android/Canvas;->registerChange(Lcom/google/devtools/simple/runtime/components/android/Sprite;)V

    .line 86
    return-void
.end method

.method public Interval()I
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sprite;->timerInternal:Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;

    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;->Interval()I

    move-result v0

    return v0
.end method

.method public Interval(I)V
    .locals 1
    .parameter "interval"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "1000"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sprite;->timerInternal:Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;

    invoke-virtual {v0, p1}, Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;->Interval(I)V

    .line 211
    return-void
.end method

.method public MoveIntoBounds()V
    .locals 8
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    .line 161
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sprite;->xLeft:D

    cmpg-double v0, v0, v4

    if-gez v0, :cond_2

    .line 162
    invoke-virtual {p0, v4, v5}, Lcom/google/devtools/simple/runtime/components/android/Sprite;->X(D)V

    .line 166
    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sprite;->yTop:D

    cmpg-double v0, v0, v4

    if-gez v0, :cond_3

    .line 167
    invoke-virtual {p0, v4, v5}, Lcom/google/devtools/simple/runtime/components/android/Sprite;->Y(D)V

    .line 171
    :cond_1
    :goto_1
    return-void

    .line 163
    :cond_2
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sprite;->xLeft:D

    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/Sprite;->Width()I

    move-result v2

    int-to-double v2, v2

    add-double/2addr v0, v2

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Sprite;->canvas:Lcom/google/devtools/simple/runtime/components/android/Canvas;

    invoke-virtual {v2}, Lcom/google/devtools/simple/runtime/components/android/Canvas;->Width()I

    move-result v2

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sprite;->canvas:Lcom/google/devtools/simple/runtime/components/android/Canvas;

    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/components/android/Canvas;->Width()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/Sprite;->Width()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v7

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/google/devtools/simple/runtime/components/android/Sprite;->X(D)V

    goto :goto_0

    .line 168
    :cond_3
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sprite;->yTop:D

    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/Sprite;->Height()I

    move-result v2

    int-to-double v2, v2

    add-double/2addr v0, v2

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Sprite;->canvas:Lcom/google/devtools/simple/runtime/components/android/Canvas;

    invoke-virtual {v2}, Lcom/google/devtools/simple/runtime/components/android/Canvas;->Height()I

    move-result v2

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sprite;->canvas:Lcom/google/devtools/simple/runtime/components/android/Canvas;

    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/components/android/Canvas;->Height()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/Sprite;->Height()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v7

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/google/devtools/simple/runtime/components/android/Sprite;->Y(D)V

    goto :goto_1
.end method

.method public NoLongerCollidingWith(Lcom/google/devtools/simple/runtime/components/android/Sprite;)V
    .locals 3
    .parameter "other"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerEvent;
        argList = "other As Sprite"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
        description = "Event indicating that a pair of sprites are no longer colliding."
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sprite;->registeredCollisions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    const-string v0, "Sprite"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Collision between sprites "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " removed but not present"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sprite;->registeredCollisions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method

.method public alarm()V
    .locals 2

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sprite;->initialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sprite;->speed:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/Sprite;->updateCoordinates()V

    .line 183
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/Sprite;->registerChange()V

    .line 185
    :cond_0
    return-void
.end method

.method protected hitEdge()I
    .locals 10

    .prologue
    const-wide/16 v6, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 271
    iget-object v4, p0, Lcom/google/devtools/simple/runtime/components/android/Sprite;->canvas:Lcom/google/devtools/simple/runtime/components/android/Canvas;

    invoke-virtual {v4}, Lcom/google/devtools/simple/runtime/components/android/Canvas;->ready()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v8

    .line 318
    :goto_0
    return v4

    .line 278
    :cond_0
    iget-wide v4, p0, Lcom/google/devtools/simple/runtime/components/android/Sprite;->xLeft:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1

    move v3, v9

    .line 279
    .local v3, west:Z
    :goto_1
    iget-wide v4, p0, Lcom/google/devtools/simple/runtime/components/android/Sprite;->yTop:D

    cmpg-double v4, v4, v6

    if-gez v4, :cond_2

    move v1, v9

    .line 280
    .local v1, north:Z
    :goto_2
    iget-wide v4, p0, Lcom/google/devtools/simple/runtime/components/android/Sprite;->xLeft:D

    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/Sprite;->Width()I

    move-result v6

    int-to-double v6, v6

    add-double/2addr v4, v6

    iget-object v6, p0, Lcom/google/devtools/simple/runtime/components/android/Sprite;->canvas:Lcom/google/devtools/simple/runtime/components/android/Canvas;

    invoke-virtual {v6}, Lcom/google/devtools/simple/runtime/components/android/Canvas;->Width()I

    move-result v6

    int-to-double v6, v6

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_3

    move v0, v9

    .line 281
    .local v0, east:Z
    :goto_3
    iget-wide v4, p0, Lcom/google/devtools/simple/runtime/components/android/Sprite;->yTop:D

    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/Sprite;->Height()I

    move-result v6

    int-to-double v6, v6

    add-double/2addr v4, v6

    iget-object v6, p0, Lcom/google/devtools/simple/runtime/components/android/Sprite;->canvas:Lcom/google/devtools/simple/runtime/components/android/Canvas;

    invoke-virtual {v6}, Lcom/google/devtools/simple/runtime/components/android/Canvas;->Height()I

    move-result v6

    int-to-double v6, v6

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_4

    move v2, v9

    .line 284
    .local v2, south:Z
    :goto_4
    if-nez v1, :cond_5

    if-nez v2, :cond_5

    if-nez v0, :cond_5

    if-nez v3, :cond_5

    move v4, v8

    .line 285
    goto :goto_0

    .end local v0           #east:Z
    .end local v1           #north:Z
    .end local v2           #south:Z
    .end local v3           #west:Z
    :cond_1
    move v3, v8

    .line 278
    goto :goto_1

    .restart local v3       #west:Z
    :cond_2
    move v1, v8

    .line 279
    goto :goto_2

    .restart local v1       #north:Z
    :cond_3
    move v0, v8

    .line 280
    goto :goto_3

    .restart local v0       #east:Z
    :cond_4
    move v2, v8

    .line 281
    goto :goto_4

    .line 291
    .restart local v2       #south:Z
    :cond_5
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/Sprite;->MoveIntoBounds()V

    .line 294
    if-eqz v3, :cond_8

    .line 295
    if-eqz v1, :cond_6

    .line 296
    const/4 v4, -0x4

    goto :goto_0

    .line 297
    :cond_6
    if-eqz v2, :cond_7

    .line 298
    const/4 v4, -0x2

    goto :goto_0

    .line 300
    :cond_7
    const/4 v4, -0x3

    goto :goto_0

    .line 304
    :cond_8
    if-eqz v0, :cond_b

    .line 305
    if-eqz v1, :cond_9

    .line 306
    const/4 v4, 0x2

    goto :goto_0

    .line 307
    :cond_9
    if-eqz v2, :cond_a

    .line 308
    const/4 v4, 0x4

    goto :goto_0

    .line 310
    :cond_a
    const/4 v4, 0x3

    goto :goto_0

    .line 314
    :cond_b
    if-eqz v1, :cond_c

    move v4, v9

    .line 315
    goto :goto_0

    .line 317
    :cond_c
    if-eqz v2, :cond_d

    .line 318
    const/4 v4, -0x1

    goto :goto_0

    .line 321
    :cond_d
    new-instance v4, Lcom/google/devtools/simple/runtime/errors/AssertionFailure;

    const-string v5, "Unreachable code hit in Sprite.hitEdge()"

    invoke-direct {v4, v5}, Lcom/google/devtools/simple/runtime/errors/AssertionFailure;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public onDelete()V
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sprite;->timerInternal:Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/devtools/simple/runtime/components/android/util/TimerInternal;->Enabled(Z)V

    .line 329
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sprite;->canvas:Lcom/google/devtools/simple/runtime/components/android/Canvas;

    invoke-virtual {v0, p0}, Lcom/google/devtools/simple/runtime/components/android/Canvas;->removeSprite(Lcom/google/devtools/simple/runtime/components/android/Sprite;)V

    .line 330
    return-void
.end method

.method protected abstract onDraw(Landroid/graphics/Canvas;)V
.end method

.method public registerChange()V
    .locals 2

    .prologue
    .line 244
    iget-boolean v1, p0, Lcom/google/devtools/simple/runtime/components/android/Sprite;->initialized:Z

    if-nez v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Sprite;->canvas:Lcom/google/devtools/simple/runtime/components/android/Canvas;

    invoke-virtual {v1}, Lcom/google/devtools/simple/runtime/components/android/Canvas;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 259
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-boolean v1, p0, Lcom/google/devtools/simple/runtime/components/android/Sprite;->inEvent:Z

    if-eqz v1, :cond_1

    .line 250
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/devtools/simple/runtime/components/android/Sprite;->pendingChanges:Z

    goto :goto_0

    .line 252
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/devtools/simple/runtime/components/android/Sprite;->pendingChanges:Z

    .line 253
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/Sprite;->hitEdge()I

    move-result v0

    .line 254
    .local v0, edge:I
    if-eqz v0, :cond_2

    .line 255
    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/Sprite;->EdgeReached(I)V

    .line 257
    :cond_2
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Sprite;->canvas:Lcom/google/devtools/simple/runtime/components/android/Canvas;

    invoke-virtual {v1, p0}, Lcom/google/devtools/simple/runtime/components/android/Canvas;->registerChange(Lcom/google/devtools/simple/runtime/components/android/Sprite;)V

    goto :goto_0
.end method

.method protected varargs requestEvent(Lcom/google/devtools/simple/runtime/components/SpriteComponent;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .parameter "sprite"
    .parameter "eventName"
    .parameter "args"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sprite;->inEvent:Z

    if-nez v0, :cond_1

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sprite;->inEvent:Z

    .line 71
    invoke-static {p1, p2, p3}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sprite;->inEvent:Z

    .line 73
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/Sprite;->pendingChanges:Z

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/Sprite;->registerChange()V

    .line 80
    :cond_0
    return-void

    .line 77
    :cond_1
    new-instance v0, Lcom/google/devtools/simple/runtime/errors/AssertionFailure;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request to raise "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " while processing previous event"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/devtools/simple/runtime/errors/AssertionFailure;-><init>(Ljava/lang/String;)V

    throw v0
.end method
