.class public abstract Lcom/google/devtools/simple/runtime/components/SpriteComponent;
.super Lcom/google/devtools/simple/runtime/components/VisibleComponent;
.source "SpriteComponent.java"

# interfaces
.implements Lcom/google/devtools/simple/runtime/components/AlarmHandler;


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation


# instance fields
.field private heading:I

.field private headingCos:D

.field private headingRadians:D

.field private headingSin:D

.field protected interval:I

.field protected speed:F

.field private userHeading:I

.field protected visible:Z

.field protected xLeft:D

.field protected yTop:D


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/devtools/simple/runtime/components/VisibleComponent;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->visible:Z

    return-void
.end method

.method public static colliding(Lcom/google/devtools/simple/runtime/components/SpriteComponent;Lcom/google/devtools/simple/runtime/components/SpriteComponent;)Z
    .locals 12
    .parameter "sprite1"
    .parameter "sprite2"

    .prologue
    const/4 v11, 0x0

    const-wide/high16 v9, 0x3ff0

    const/4 v8, 0x1

    .line 313
    invoke-virtual {p0, v8}, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->getBoundingBox(I)Lcom/google/devtools/simple/runtime/components/util/BoundingBox;

    move-result-object v0

    .line 314
    .local v0, rect1:Lcom/google/devtools/simple/runtime/components/util/BoundingBox;
    invoke-virtual {p1, v8}, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->getBoundingBox(I)Lcom/google/devtools/simple/runtime/components/util/BoundingBox;

    move-result-object v1

    .line 315
    .local v1, rect2:Lcom/google/devtools/simple/runtime/components/util/BoundingBox;
    invoke-virtual {v0, v1}, Lcom/google/devtools/simple/runtime/components/util/BoundingBox;->intersectDestructively(Lcom/google/devtools/simple/runtime/components/util/BoundingBox;)Z

    move-result v6

    if-nez v6, :cond_0

    move v6, v11

    .line 330
    :goto_0
    return v6

    .line 323
    :cond_0
    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/components/util/BoundingBox;->getLeft()D

    move-result-wide v2

    .local v2, x:D
    :goto_1
    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/components/util/BoundingBox;->getRight()D

    move-result-wide v6

    cmpg-double v6, v2, v6

    if-gtz v6, :cond_3

    .line 324
    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/components/util/BoundingBox;->getTop()D

    move-result-wide v4

    .local v4, y:D
    :goto_2
    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/components/util/BoundingBox;->getBottom()D

    move-result-wide v6

    cmpg-double v6, v4, v6

    if-gtz v6, :cond_2

    .line 325
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->containsPoint(DD)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->containsPoint(DD)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v8

    .line 326
    goto :goto_0

    .line 324
    :cond_1
    add-double/2addr v4, v9

    goto :goto_2

    .line 323
    :cond_2
    add-double/2addr v2, v9

    goto :goto_1

    .end local v4           #y:D
    :cond_3
    move v6, v11

    .line 330
    goto :goto_0
.end method

.method private static normalizeAngle(I)I
    .locals 0
    .parameter "angle"

    .prologue
    .line 391
    rem-int/lit16 p0, p0, 0x168

    .line 394
    if-gez p0, :cond_0

    .line 395
    add-int/lit16 p0, p0, 0x168

    .line 397
    :cond_0
    return p0
.end method


# virtual methods
.method public Bounce(I)V
    .locals 5
    .parameter "edge"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        description = "Makes this sprite bounce, as if off a wall specified by edge. For normal bouncing, the edge argument should be the one returned by EdgeReached."
    .end annotation

    .prologue
    const/16 v4, 0x10e

    const/16 v3, 0x5a

    const/16 v2, 0xb4

    .line 420
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->MoveIntoBounds()V

    .line 423
    iget v1, p0, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->userHeading:I

    invoke-static {v1}, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->normalizeAngle(I)I

    move-result v0

    .line 427
    .local v0, normalizedAngle:I
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    if-lt v0, v3, :cond_1

    if-gt v0, v4, :cond_1

    :cond_0
    const/4 v1, -0x3

    if-ne p1, v1, :cond_3

    if-le v0, v3, :cond_3

    if-ge v0, v4, :cond_3

    .line 431
    :cond_1
    sub-int v1, v2, v0

    invoke-virtual {p0, v1}, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->Heading(I)V

    .line 445
    :cond_2
    :goto_0
    return-void

    .line 432
    :cond_3
    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    if-lez v0, :cond_4

    if-lt v0, v2, :cond_5

    :cond_4
    const/4 v1, -0x1

    if-ne p1, v1, :cond_6

    if-le v0, v2, :cond_6

    .line 435
    :cond_5
    const/16 v1, 0x168

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->Heading(I)V

    goto :goto_0

    .line 436
    :cond_6
    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    if-lez v0, :cond_7

    if-lt v0, v3, :cond_a

    :cond_7
    const/4 v1, -0x4

    if-ne p1, v1, :cond_8

    if-le v0, v3, :cond_8

    if-lt v0, v2, :cond_a

    :cond_8
    const/4 v1, -0x2

    if-ne p1, v1, :cond_9

    if-le v0, v2, :cond_9

    if-lt v0, v4, :cond_a

    :cond_9
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    if-le v0, v4, :cond_2

    .line 443
    :cond_a
    add-int/lit16 v1, v0, 0xb4

    invoke-virtual {p0, v1}, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->Heading(I)V

    goto :goto_0
.end method

.method public Dragged(FFFFFF)V
    .locals 4
    .parameter "startX"
    .parameter "startY"
    .parameter "prevX"
    .parameter "prevY"
    .parameter "currentX"
    .parameter "currentY"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerEvent;
        argList = "startX As Single, startY As Single, prevX As Single, prevY As Single, currentX As Single, currentY As Single"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 144
    const-string v0, "Dragged"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, p0, v0, v1}, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->requestEvent(Lcom/google/devtools/simple/runtime/components/SpriteComponent;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    return-void
.end method

.method public EdgeReached(I)V
    .locals 4
    .parameter "edge"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerEvent;
        argList = "edge As Integer"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 100
    if-eqz p1, :cond_0

    const/4 v0, -0x4

    if-lt p1, v0, :cond_0

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal argument "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to SpriteComponent.EdgeReached()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_1
    const-string v0, "EdgeReached"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, p0, v0, v1}, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->requestEvent(Lcom/google/devtools/simple/runtime/components/SpriteComponent;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    return-void
.end method

.method public abstract Enabled(Z)V
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation
.end method

.method public abstract Enabled()Z
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation
.end method

.method public Heading()I
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 217
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->userHeading:I

    return v0
.end method

.method public Heading(I)V
    .locals 2
    .parameter "user_heading"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "0"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 202
    iput p1, p0, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->userHeading:I

    .line 204
    neg-int v0, p1

    iput v0, p0, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->heading:I

    .line 205
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->heading:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->headingRadians:D

    .line 206
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->headingRadians:D

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->headingCos:D

    .line 207
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->headingRadians:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->headingSin:D

    .line 208
    return-void
.end method

.method public abstract Interval()I
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation
.end method

.method public abstract Interval(I)V
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "1000"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation
.end method

.method public abstract MoveIntoBounds()V
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation
.end method

.method public MoveTo(DD)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
    .end annotation

    .prologue
    .line 263
    iput-wide p1, p0, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->xLeft:D

    .line 264
    iput-wide p3, p0, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->yTop:D

    .line 265
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->registerChange()V

    .line 266
    return-void
.end method

.method public Speed()F
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 242
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->speed:F

    return v0
.end method

.method public Speed(F)V
    .locals 0
    .parameter "speed"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->BEHAVIOR:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 231
    iput p1, p0, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->speed:F

    .line 232
    return-void
.end method

.method public Touched(FF)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerEvent;
        argList = "x As Single, y As Single"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
    .end annotation

    .prologue
    .line 118
    const-string v0, "Touched"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, p0, v0, v1}, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->requestEvent(Lcom/google/devtools/simple/runtime/components/SpriteComponent;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method public Visible(Z)V
    .locals 0
    .parameter "visible"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 498
    iput-boolean p1, p0, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->visible:Z

    .line 499
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->registerChange()V

    .line 500
    return-void
.end method

.method public Visible()Z
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 485
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->visible:Z

    return v0
.end method

.method public X()D
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 460
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->xLeft:D

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public X(D)V
    .locals 0
    .parameter "x"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 454
    iput-wide p1, p0, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->xLeft:D

    .line 455
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->registerChange()V

    .line 456
    return-void
.end method

.method public Y()D
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 474
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->yTop:D

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0
.end method

.method public Y(D)V
    .locals 0
    .parameter "y"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "0.0"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 468
    iput-wide p1, p0, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->yTop:D

    .line 469
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->registerChange()V

    .line 470
    return-void
.end method

.method public containsPoint(DD)Z
    .locals 4
    .parameter "qx"
    .parameter "qy"

    .prologue
    .line 368
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->xLeft:D

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->xLeft:D

    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->Width()I

    move-result v2

    int-to-double v2, v2

    add-double/2addr v0, v2

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->yTop:D

    cmpl-double v0, p3, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->yTop:D

    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->Height()I

    move-result v2

    int-to-double v2, v2

    add-double/2addr v0, v2

    cmpg-double v0, p3, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBoundingBox(I)Lcom/google/devtools/simple/runtime/components/util/BoundingBox;
    .locals 13
    .parameter "border"

    .prologue
    const-wide/high16 v11, 0x3ff0

    .line 298
    new-instance v0, Lcom/google/devtools/simple/runtime/components/util/BoundingBox;

    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->X()D

    move-result-wide v1

    int-to-double v3, p1

    sub-double/2addr v1, v3

    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->Y()D

    move-result-wide v3

    int-to-double v5, p1

    sub-double/2addr v3, v5

    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->X()D

    move-result-wide v5

    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->Width()I

    move-result v7

    int-to-double v7, v7

    add-double/2addr v5, v7

    sub-double/2addr v5, v11

    int-to-double v7, p1

    add-double/2addr v5, v7

    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->Y()D

    move-result-wide v7

    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->Height()I

    move-result v9

    int-to-double v9, v9

    add-double/2addr v7, v9

    sub-double/2addr v7, v11

    int-to-double v9, p1

    add-double/2addr v7, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/devtools/simple/runtime/components/util/BoundingBox;-><init>(DDDD)V

    return-object v0
.end method

.method getHeading()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->heading:I

    return v0
.end method

.method getHeadingCos()D
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->headingCos:D

    return-wide v0
.end method

.method getHeadingRadians()D
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->headingRadians:D

    return-wide v0
.end method

.method getHeadingSin()D
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->headingSin:D

    return-wide v0
.end method

.method getUserHeading()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->userHeading:I

    return v0
.end method

.method protected abstract hitEdge()I
.end method

.method public intersectsWith(Lcom/google/devtools/simple/runtime/components/util/BoundingBox;)Z
    .locals 10
    .parameter "rect"

    .prologue
    const-wide/high16 v8, 0x3ff0

    const/4 v7, 0x0

    .line 341
    invoke-virtual {p0, v7}, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->getBoundingBox(I)Lcom/google/devtools/simple/runtime/components/util/BoundingBox;

    move-result-object v0

    .line 342
    .local v0, rect1:Lcom/google/devtools/simple/runtime/components/util/BoundingBox;
    invoke-virtual {v0, p1}, Lcom/google/devtools/simple/runtime/components/util/BoundingBox;->intersectDestructively(Lcom/google/devtools/simple/runtime/components/util/BoundingBox;)Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v7

    .line 356
    :goto_0
    return v5

    .line 349
    :cond_0
    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/components/util/BoundingBox;->getLeft()D

    move-result-wide v1

    .local v1, x:D
    :goto_1
    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/components/util/BoundingBox;->getRight()D

    move-result-wide v5

    cmpg-double v5, v1, v5

    if-gez v5, :cond_3

    .line 350
    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/components/util/BoundingBox;->getTop()D

    move-result-wide v3

    .local v3, y:D
    :goto_2
    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/components/util/BoundingBox;->getBottom()D

    move-result-wide v5

    cmpg-double v5, v3, v5

    if-gez v5, :cond_2

    .line 351
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->containsPoint(DD)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 352
    const/4 v5, 0x1

    goto :goto_0

    .line 350
    :cond_1
    add-double/2addr v3, v8

    goto :goto_2

    .line 349
    :cond_2
    add-double/2addr v1, v8

    goto :goto_1

    .end local v3           #y:D
    :cond_3
    move v5, v7

    .line 356
    goto :goto_0
.end method

.method public abstract registerChange()V
.end method

.method protected varargs abstract requestEvent(Lcom/google/devtools/simple/runtime/components/SpriteComponent;Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method protected updateCoordinates()V
    .locals 6

    .prologue
    .line 273
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->xLeft:D

    iget v2, p0, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->speed:F

    float-to-double v2, v2

    iget-wide v4, p0, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->headingCos:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->xLeft:D

    .line 274
    iget-wide v0, p0, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->yTop:D

    iget v2, p0, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->speed:F

    float-to-double v2, v2

    iget-wide v4, p0, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->headingSin:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/devtools/simple/runtime/components/SpriteComponent;->yTop:D

    .line 275
    return-void
.end method
