.class Lorg/tf/stage/Layer;
.super Ljava/lang/Object;
.source "StageEffects.java"


# static fields
.field private static final STREAM_TAG:I = 0x5346584c


# instance fields
.field private m_color:I

.field private m_effects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/tf/stage/LayerEffect;",
            ">;"
        }
    .end annotation
.end field

.field private m_foreground:Z

.field private m_glowing:Z

.field private m_number:I

.field m_originalAngle:F

.field private m_originalColor:I

.field m_originalScaleX:F

.field m_originalScaleY:F

.field m_originalX:F

.field m_originalY:F

.field private m_sprite:Lorg/tf/gl/sprite/Sprite;

.field private m_stage:Lorg/tf/stage/StageEffects;

.field private m_x:F

.field private m_y:F


# direct methods
.method public constructor <init>(ILorg/tf/stage/StageEffects;)V
    .locals 1
    .parameter "number"
    .parameter "stage"

    .prologue
    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    iput p1, p0, Lorg/tf/stage/Layer;->m_number:I

    .line 443
    iput-object p2, p0, Lorg/tf/stage/Layer;->m_stage:Lorg/tf/stage/StageEffects;

    .line 444
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/tf/stage/Layer;->m_effects:Ljava/util/ArrayList;

    .line 445
    return-void
.end method

.method private applyEffects()V
    .locals 3

    .prologue
    .line 611
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v2, p0, Lorg/tf/stage/Layer;->m_effects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, e:I
    :goto_0
    if-ne v1, v0, :cond_0

    .line 614
    return-void

    .line 612
    :cond_0
    iget-object v2, p0, Lorg/tf/stage/Layer;->m_effects:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/tf/stage/LayerEffect;

    invoke-virtual {v2, p0}, Lorg/tf/stage/LayerEffect;->apply(Lorg/tf/stage/Layer;)V

    .line 611
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addEffect(Lorg/tf/stage/LayerEffect;)V
    .locals 1
    .parameter "effect"

    .prologue
    .line 530
    iget-object v0, p0, Lorg/tf/stage/Layer;->m_effects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    return-void
.end method

.method public applyOriginalValues()V
    .locals 3

    .prologue
    .line 542
    iget v0, p0, Lorg/tf/stage/Layer;->m_originalX:F

    iput v0, p0, Lorg/tf/stage/Layer;->m_x:F

    .line 543
    iget v0, p0, Lorg/tf/stage/Layer;->m_originalY:F

    iput v0, p0, Lorg/tf/stage/Layer;->m_y:F

    .line 544
    iget-object v0, p0, Lorg/tf/stage/Layer;->m_sprite:Lorg/tf/gl/sprite/Sprite;

    iget v1, p0, Lorg/tf/stage/Layer;->m_originalScaleX:F

    iget v2, p0, Lorg/tf/stage/Layer;->m_originalScaleY:F

    invoke-virtual {v0, v1, v2}, Lorg/tf/gl/sprite/Sprite;->setScale(FF)V

    .line 545
    iget-object v0, p0, Lorg/tf/stage/Layer;->m_sprite:Lorg/tf/gl/sprite/Sprite;

    iget v1, p0, Lorg/tf/stage/Layer;->m_originalAngle:F

    invoke-virtual {v0, v1}, Lorg/tf/gl/sprite/Sprite;->setAngle(F)V

    .line 546
    iget v0, p0, Lorg/tf/stage/Layer;->m_originalColor:I

    iput v0, p0, Lorg/tf/stage/Layer;->m_color:I

    .line 547
    return-void
.end method

.method public destroy(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter "gl"

    .prologue
    .line 448
    iget-object v0, p0, Lorg/tf/stage/Layer;->m_sprite:Lorg/tf/gl/sprite/Sprite;

    invoke-virtual {v0, p1}, Lorg/tf/gl/sprite/Sprite;->destroy(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 449
    return-void
.end method

.method public getAngle()F
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lorg/tf/stage/Layer;->m_sprite:Lorg/tf/gl/sprite/Sprite;

    invoke-virtual {v0}, Lorg/tf/gl/sprite/Sprite;->getAngle()F

    move-result v0

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 550
    iget v0, p0, Lorg/tf/stage/Layer;->m_color:I

    return v0
.end method

.method public getNumber()I
    .locals 1

    .prologue
    .line 534
    iget v0, p0, Lorg/tf/stage/Layer;->m_number:I

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lorg/tf/stage/Layer;->m_sprite:Lorg/tf/gl/sprite/Sprite;

    invoke-virtual {v0}, Lorg/tf/gl/sprite/Sprite;->getScaleX()F

    move-result v0

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lorg/tf/stage/Layer;->m_sprite:Lorg/tf/gl/sprite/Sprite;

    invoke-virtual {v0}, Lorg/tf/gl/sprite/Sprite;->getScaleY()F

    move-result v0

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 557
    iget v0, p0, Lorg/tf/stage/Layer;->m_x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 560
    iget v0, p0, Lorg/tf/stage/Layer;->m_y:F

    return v0
.end method

.method public isForeground()Z
    .locals 1

    .prologue
    .line 538
    iget-boolean v0, p0, Lorg/tf/stage/Layer;->m_foreground:Z

    return v0
.end method

.method public load(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;Lorg/tf/util/IniFile$Section;)V
    .locals 7
    .parameter "context"
    .parameter "gl"
    .parameter "iniSection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v6, 0x3f80

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 510
    const-string v1, "texture"

    invoke-virtual {p3, v1}, Lorg/tf/util/IniFile$Section;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, texture:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 512
    new-instance v1, Ljava/io/IOException;

    .line 513
    const-string v2, "Invalid layer %d: no texture specified."

    new-array v3, v4, [Ljava/lang/Object;

    .line 514
    iget v4, p0, Lorg/tf/stage/Layer;->m_number:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 512
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 517
    :cond_0
    new-instance v1, Lorg/tf/gl/sprite/Sprite;

    invoke-direct {v1, p1, p2, v0}, Lorg/tf/gl/sprite/Sprite;-><init>(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/tf/stage/Layer;->m_sprite:Lorg/tf/gl/sprite/Sprite;

    .line 518
    const-string v1, "color"

    const/4 v2, -0x1

    invoke-virtual {p3, v1, v2}, Lorg/tf/util/IniFile$Section;->getColorValue(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lorg/tf/stage/Layer;->m_originalColor:I

    .line 519
    const-string v1, "xpos"

    invoke-virtual {p3, v1, v3}, Lorg/tf/util/IniFile$Section;->getFloatValue(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lorg/tf/stage/Layer;->m_originalX:F

    .line 520
    const-string v1, "ypos"

    invoke-virtual {p3, v1, v3}, Lorg/tf/util/IniFile$Section;->getFloatValue(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lorg/tf/stage/Layer;->m_originalY:F

    .line 521
    const-string v1, "xscale"

    invoke-virtual {p3, v1, v6}, Lorg/tf/util/IniFile$Section;->getFloatValue(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lorg/tf/stage/Layer;->m_originalScaleX:F

    .line 522
    const-string v1, "yscale"

    invoke-virtual {p3, v1, v6}, Lorg/tf/util/IniFile$Section;->getFloatValue(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lorg/tf/stage/Layer;->m_originalScaleY:F

    .line 523
    const-string v1, "angle"

    invoke-virtual {p3, v1, v3}, Lorg/tf/util/IniFile$Section;->getFloatValue(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lorg/tf/stage/Layer;->m_originalAngle:F

    .line 524
    const-string v1, "glowing"

    invoke-virtual {p3, v1}, Lorg/tf/util/IniFile$Section;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    move v1, v4

    :goto_0
    iput-boolean v1, p0, Lorg/tf/stage/Layer;->m_glowing:Z

    .line 525
    const-string v1, "foreground"

    invoke-virtual {p3, v1}, Lorg/tf/util/IniFile$Section;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    move v1, v4

    :goto_1
    iput-boolean v1, p0, Lorg/tf/stage/Layer;->m_foreground:Z

    .line 526
    invoke-virtual {p0}, Lorg/tf/stage/Layer;->applyOriginalValues()V

    .line 527
    return-void

    :cond_1
    move v1, v5

    .line 524
    goto :goto_0

    :cond_2
    move v1, v5

    .line 525
    goto :goto_1
.end method

.method public render(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .parameter "gl"

    .prologue
    const/4 v4, 0x1

    .line 595
    invoke-virtual {p0}, Lorg/tf/stage/Layer;->applyOriginalValues()V

    .line 596
    invoke-direct {p0}, Lorg/tf/stage/Layer;->applyEffects()V

    .line 597
    iget-object v0, p0, Lorg/tf/stage/Layer;->m_stage:Lorg/tf/stage/StageEffects;

    iget-object v1, p0, Lorg/tf/stage/Layer;->m_sprite:Lorg/tf/gl/sprite/Sprite;

    iget v2, p0, Lorg/tf/stage/Layer;->m_x:F

    iget v3, p0, Lorg/tf/stage/Layer;->m_y:F

    invoke-virtual {v0, v1, v2, v3}, Lorg/tf/stage/StageEffects;->setPosition(Lorg/tf/gl/sprite/Sprite;FF)V

    .line 598
    iget-boolean v0, p0, Lorg/tf/stage/Layer;->m_glowing:Z

    if-eqz v0, :cond_0

    .line 599
    invoke-interface {p1, v4, v4}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 601
    :cond_0
    iget v0, p0, Lorg/tf/stage/Layer;->m_color:I

    const/high16 v1, 0x3f80

    invoke-static {p1, v0, v1}, Lorg/tf/gl/GLHelpers;->setColor(Ljavax/microedition/khronos/opengles/GL10;IF)V

    .line 602
    iget-object v0, p0, Lorg/tf/stage/Layer;->m_sprite:Lorg/tf/gl/sprite/Sprite;

    invoke-virtual {v0, p1}, Lorg/tf/gl/sprite/Sprite;->render(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 603
    iget-boolean v0, p0, Lorg/tf/stage/Layer;->m_glowing:Z

    if-eqz v0, :cond_1

    .line 604
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 606
    :cond_1
    return-void
.end method

.method public resetState()V
    .locals 0

    .prologue
    .line 454
    invoke-virtual {p0}, Lorg/tf/stage/Layer;->applyOriginalValues()V

    .line 455
    return-void
.end method

.method public restoreState(Ljava/io/DataInputStream;)V
    .locals 5
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 482
    const v2, 0x5346584c

    invoke-static {p1, v2}, Lorg/tf/util/DataStreamHelpers;->checkTag(Ljava/io/DataInput;I)V

    .line 483
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lorg/tf/stage/Layer;->m_originalColor:I

    .line 484
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lorg/tf/stage/Layer;->m_originalX:F

    .line 485
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lorg/tf/stage/Layer;->m_originalY:F

    .line 486
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lorg/tf/stage/Layer;->m_originalScaleX:F

    .line 487
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lorg/tf/stage/Layer;->m_originalScaleY:F

    .line 488
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lorg/tf/stage/Layer;->m_originalAngle:F

    .line 489
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lorg/tf/stage/Layer;->m_glowing:Z

    .line 490
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lorg/tf/stage/Layer;->m_foreground:Z

    .line 492
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p0, Lorg/tf/stage/Layer;->m_color:I

    .line 493
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lorg/tf/stage/Layer;->m_x:F

    .line 494
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    iput v2, p0, Lorg/tf/stage/Layer;->m_y:F

    .line 495
    iget-object v2, p0, Lorg/tf/stage/Layer;->m_sprite:Lorg/tf/gl/sprite/Sprite;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/tf/gl/sprite/Sprite;->setScale(FF)V

    .line 496
    iget-object v2, p0, Lorg/tf/stage/Layer;->m_sprite:Lorg/tf/gl/sprite/Sprite;

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    invoke-virtual {v2, v3}, Lorg/tf/gl/sprite/Sprite;->setAngle(F)V

    .line 498
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 499
    .local v0, effectsSize:I
    iget-object v2, p0, Lorg/tf/stage/Layer;->m_effects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 500
    invoke-static {}, Lorg/tf/util/DataStreamHelpers;->inconsistentStateException()Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 502
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ne v1, v0, :cond_1

    .line 505
    return-void

    .line 503
    :cond_1
    iget-object v2, p0, Lorg/tf/stage/Layer;->m_effects:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/tf/stage/LayerEffect;

    invoke-virtual {v2, p1}, Lorg/tf/stage/LayerEffect;->restoreState(Ljava/io/DataInputStream;)V

    .line 502
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public rotate(F)V
    .locals 1
    .parameter "angle"

    .prologue
    .line 591
    iget-object v0, p0, Lorg/tf/stage/Layer;->m_sprite:Lorg/tf/gl/sprite/Sprite;

    invoke-virtual {v0, p1}, Lorg/tf/gl/sprite/Sprite;->rotate(F)V

    .line 592
    return-void
.end method

.method public saveState(Ljava/io/DataOutputStream;)V
    .locals 2
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 458
    const v1, 0x5346584c

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 459
    iget v1, p0, Lorg/tf/stage/Layer;->m_originalColor:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 460
    iget v1, p0, Lorg/tf/stage/Layer;->m_originalX:F

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 461
    iget v1, p0, Lorg/tf/stage/Layer;->m_originalY:F

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 462
    iget v1, p0, Lorg/tf/stage/Layer;->m_originalScaleX:F

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 463
    iget v1, p0, Lorg/tf/stage/Layer;->m_originalScaleY:F

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 464
    iget v1, p0, Lorg/tf/stage/Layer;->m_originalAngle:F

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 465
    iget-boolean v1, p0, Lorg/tf/stage/Layer;->m_glowing:Z

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 466
    iget-boolean v1, p0, Lorg/tf/stage/Layer;->m_foreground:Z

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 468
    iget v1, p0, Lorg/tf/stage/Layer;->m_color:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 469
    iget v1, p0, Lorg/tf/stage/Layer;->m_x:F

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 470
    iget v1, p0, Lorg/tf/stage/Layer;->m_y:F

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 471
    iget-object v1, p0, Lorg/tf/stage/Layer;->m_sprite:Lorg/tf/gl/sprite/Sprite;

    invoke-virtual {v1}, Lorg/tf/gl/sprite/Sprite;->getScaleX()F

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 472
    iget-object v1, p0, Lorg/tf/stage/Layer;->m_sprite:Lorg/tf/gl/sprite/Sprite;

    invoke-virtual {v1}, Lorg/tf/gl/sprite/Sprite;->getScaleY()F

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 473
    iget-object v1, p0, Lorg/tf/stage/Layer;->m_sprite:Lorg/tf/gl/sprite/Sprite;

    invoke-virtual {v1}, Lorg/tf/gl/sprite/Sprite;->getAngle()F

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 475
    iget-object v1, p0, Lorg/tf/stage/Layer;->m_effects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 476
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lorg/tf/stage/Layer;->m_effects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 479
    return-void

    .line 477
    :cond_0
    iget-object v1, p0, Lorg/tf/stage/Layer;->m_effects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/tf/stage/LayerEffect;

    invoke-virtual {v1, p1}, Lorg/tf/stage/LayerEffect;->saveState(Ljava/io/DataOutputStream;)V

    .line 476
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public scale(FF)V
    .locals 1
    .parameter "scaleX"
    .parameter "scaleY"

    .prologue
    .line 581
    iget-object v0, p0, Lorg/tf/stage/Layer;->m_sprite:Lorg/tf/gl/sprite/Sprite;

    invoke-virtual {v0, p1, p2}, Lorg/tf/gl/sprite/Sprite;->scale(FF)V

    .line 582
    return-void
.end method

.method public setAngle(F)V
    .locals 1
    .parameter "angle"

    .prologue
    .line 588
    iget-object v0, p0, Lorg/tf/stage/Layer;->m_sprite:Lorg/tf/gl/sprite/Sprite;

    invoke-virtual {v0, p1}, Lorg/tf/gl/sprite/Sprite;->setAngle(F)V

    .line 589
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 553
    iput p1, p0, Lorg/tf/stage/Layer;->m_color:I

    .line 554
    return-void
.end method

.method public setPosition(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 563
    iput p1, p0, Lorg/tf/stage/Layer;->m_x:F

    .line 564
    iput p2, p0, Lorg/tf/stage/Layer;->m_y:F

    .line 565
    return-void
.end method

.method public setScale(FF)V
    .locals 1
    .parameter "scaleX"
    .parameter "scaleY"

    .prologue
    .line 578
    iget-object v0, p0, Lorg/tf/stage/Layer;->m_sprite:Lorg/tf/gl/sprite/Sprite;

    invoke-virtual {v0, p1, p2}, Lorg/tf/gl/sprite/Sprite;->setScale(FF)V

    .line 579
    return-void
.end method

.method public translate(FF)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 567
    iget v0, p0, Lorg/tf/stage/Layer;->m_x:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/tf/stage/Layer;->m_x:F

    .line 568
    iget v0, p0, Lorg/tf/stage/Layer;->m_y:F

    add-float/2addr v0, p2

    iput v0, p0, Lorg/tf/stage/Layer;->m_y:F

    .line 569
    return-void
.end method
