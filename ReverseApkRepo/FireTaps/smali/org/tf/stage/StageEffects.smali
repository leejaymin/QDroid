.class Lorg/tf/stage/StageEffects;
.super Ljava/lang/Object;
.source "StageEffects.java"


# static fields
.field private static final MAX_LAYER:I = 0x20

.field private static final MAX_LAYER_EFFECT:I = 0x20

.field private static final STREAM_TAG:I = 0x53544658


# instance fields
.field private m_averageStringHistory:[F

.field private m_beatPeriod:F

.field private m_beatPosition:I

.field private m_beats:I

.field private m_layerAdjustmentPrecision:I

.field private m_layers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/tf/stage/Layer;",
            ">;"
        }
    .end annotation
.end field

.field private m_lightAverageStrings:[F

.field private m_notesMissPosition:I

.field private m_notesPickPosition:I

.field private m_position:I

.field private m_quarterbeatPosition:I

.field private m_quarterbeats:I

.field private m_readiness:F

.field private m_selectedLayer:Lorg/tf/stage/Layer;

.field private m_viewport:Lorg/tf/gl/GLRect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 13
    .parameter "context"
    .parameter "gl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x20

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    const/4 v10, 0x1

    iput v10, p0, Lorg/tf/stage/StageEffects;->m_layerAdjustmentPrecision:I

    .line 46
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lorg/tf/stage/StageEffects;->m_layers:Ljava/util/ArrayList;

    .line 47
    new-instance v4, Lorg/tf/util/IniFile;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    const-string v11, "stage.ini"

    invoke-virtual {v10, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v4, v10}, Lorg/tf/util/IniFile;-><init>(Ljava/io/InputStream;)V

    .line 48
    .local v4, ini:Lorg/tf/util/IniFile;
    const/4 v9, 0x0

    .line 49
    .local v9, maxLightIndex:I
    const/4 v7, 0x1

    .local v7, layerNumber:I
    :goto_0
    if-le v7, v12, :cond_0

    .line 75
    add-int/lit8 v10, v9, 0x1

    new-array v10, v10, [F

    iput-object v10, p0, Lorg/tf/stage/StageEffects;->m_lightAverageStrings:[F

    .line 76
    const/4 v10, 0x3

    new-array v10, v10, [F

    iput-object v10, p0, Lorg/tf/stage/StageEffects;->m_averageStringHistory:[F

    .line 77
    invoke-virtual {p0}, Lorg/tf/stage/StageEffects;->resetState()V

    .line 78
    return-void

    .line 50
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "layer"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 51
    .local v6, layerName:Ljava/lang/String;
    invoke-virtual {v4, v6}, Lorg/tf/util/IniFile;->getSection(Ljava/lang/String;)Lorg/tf/util/IniFile$Section;

    move-result-object v8

    .line 52
    .local v8, layerSection:Lorg/tf/util/IniFile$Section;
    if-nez v8, :cond_2

    .line 49
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 55
    :cond_2
    new-instance v5, Lorg/tf/stage/Layer;

    invoke-direct {v5, v7, p0}, Lorg/tf/stage/Layer;-><init>(ILorg/tf/stage/StageEffects;)V

    .line 56
    .local v5, layer:Lorg/tf/stage/Layer;
    invoke-virtual {v5, p1, p2, v8}, Lorg/tf/stage/Layer;->load(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;Lorg/tf/util/IniFile$Section;)V

    .line 57
    iget-object v10, p0, Lorg/tf/stage/StageEffects;->m_layers:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    const/4 v2, 0x1

    .local v2, effectNumber:I
    :goto_1
    if-gt v2, v12, :cond_1

    .line 59
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ":fx"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, effectName:Ljava/lang/String;
    invoke-virtual {v4, v1}, Lorg/tf/util/IniFile;->getSection(Ljava/lang/String;)Lorg/tf/util/IniFile$Section;

    move-result-object v3

    .line 61
    .local v3, effectSection:Lorg/tf/util/IniFile$Section;
    if-nez v3, :cond_4

    .line 58
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 64
    :cond_4
    invoke-static {p0, v3}, Lorg/tf/stage/LayerEffect;->create(Lorg/tf/stage/StageEffects;Lorg/tf/util/IniFile$Section;)Lorg/tf/stage/LayerEffect;

    move-result-object v0

    .line 65
    .local v0, effect:Lorg/tf/stage/LayerEffect;
    if-eqz v0, :cond_5

    .line 66
    invoke-virtual {v5, v0}, Lorg/tf/stage/Layer;->addEffect(Lorg/tf/stage/LayerEffect;)V

    .line 68
    :cond_5
    instance-of v10, v0, Lorg/tf/stage/LightLayerEffect;

    if-eqz v10, :cond_3

    .line 71
    check-cast v0, Lorg/tf/stage/LightLayerEffect;

    .end local v0           #effect:Lorg/tf/stage/LayerEffect;
    invoke-virtual {v0}, Lorg/tf/stage/LightLayerEffect;->getLightIndex()I

    move-result v10

    .line 69
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_2
.end method

.method private mixLightStrings()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 408
    iget-object v0, p0, Lorg/tf/stage/StageEffects;->m_lightAverageStrings:[F

    .line 409
    iget-object v1, p0, Lorg/tf/stage/StageEffects;->m_lightAverageStrings:[F

    const/4 v2, 0x0

    .line 410
    iget-object v3, p0, Lorg/tf/stage/StageEffects;->m_lightAverageStrings:[F

    array-length v3, v3

    sub-int/2addr v3, v4

    .line 407
    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 411
    return-void
.end method


# virtual methods
.method public destroy(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .parameter "gl"

    .prologue
    .line 81
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v2, p0, Lorg/tf/stage/StageEffects;->m_layers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, e:I
    :goto_0
    if-ne v1, v0, :cond_0

    .line 84
    iget-object v2, p0, Lorg/tf/stage/StageEffects;->m_layers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 85
    return-void

    .line 82
    :cond_0
    iget-object v2, p0, Lorg/tf/stage/StageEffects;->m_layers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/tf/stage/Layer;

    invoke-virtual {v2, p1}, Lorg/tf/stage/Layer;->destroy(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method getBeatPeriod()F
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lorg/tf/stage/StageEffects;->m_beatPeriod:F

    return v0
.end method

.method getBeatPosition()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lorg/tf/stage/StageEffects;->m_beatPosition:I

    return v0
.end method

.method getBeats()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lorg/tf/stage/StageEffects;->m_beats:I

    return v0
.end method

.method getLightAverageString(I)F
    .locals 1
    .parameter "index"

    .prologue
    .line 318
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/tf/stage/StageEffects;->m_lightAverageStrings:[F

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 319
    :cond_0
    const/4 v0, 0x0

    .line 321
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/tf/stage/StageEffects;->m_lightAverageStrings:[F

    aget v0, v0, p1

    goto :goto_0
.end method

.method getNotesMissPosition()I
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lorg/tf/stage/StageEffects;->m_notesMissPosition:I

    return v0
.end method

.method getNotesPickPosition()I
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lorg/tf/stage/StageEffects;->m_notesPickPosition:I

    return v0
.end method

.method getPosition()I
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lorg/tf/stage/StageEffects;->m_position:I

    return v0
.end method

.method getQuarterbeatPosition()I
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lorg/tf/stage/StageEffects;->m_quarterbeatPosition:I

    return v0
.end method

.method getQuarterbeats()I
    .locals 1

    .prologue
    .line 302
    iget v0, p0, Lorg/tf/stage/StageEffects;->m_quarterbeats:I

    return v0
.end method

.method onKeyPressed(II)V
    .locals 9
    .parameter "keyCode"
    .parameter "metaState"

    .prologue
    const/high16 v6, 0x3f80

    const v5, 0x3c23d70a

    const-string v8, ", "

    const-string v7, "******* Precision: "

    const-string v4, "TOF"

    .line 327
    const/4 v2, 0x7

    if-lt p1, v2, :cond_5

    const/16 v2, 0x10

    if-gt p1, v2, :cond_5

    .line 328
    const/16 v2, 0x8

    sub-int v0, p1, v2

    .line 329
    .local v0, index:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 330
    const/16 v0, 0x9

    .line 332
    :cond_0
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_1

    .line 333
    add-int/lit8 v0, v0, 0xa

    .line 335
    :cond_1
    if-ltz v0, :cond_2

    iget-object v2, p0, Lorg/tf/stage/StageEffects;->m_layers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_4

    .line 336
    :cond_2
    const-string v2, "TOF"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "******* Invalid layer index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/tf/stage/StageEffects;->m_selectedLayer:Lorg/tf/stage/Layer;

    .line 399
    .end local v0           #index:I
    :cond_3
    :goto_0
    return-void

    .line 339
    .restart local v0       #index:I
    :cond_4
    const-string v2, "TOF"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "******* Selected layer "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v2, p0, Lorg/tf/stage/StageEffects;->m_layers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/tf/stage/Layer;

    iput-object v2, p0, Lorg/tf/stage/StageEffects;->m_selectedLayer:Lorg/tf/stage/Layer;

    goto :goto_0

    .line 344
    .end local v0           #index:I
    :cond_5
    iget-object v2, p0, Lorg/tf/stage/StageEffects;->m_selectedLayer:Lorg/tf/stage/Layer;

    if-eqz v2, :cond_3

    .line 347
    iget v1, p0, Lorg/tf/stage/StageEffects;->m_layerAdjustmentPrecision:I

    .line 348
    .local v1, precision:I
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 356
    :pswitch_1
    iget-object v2, p0, Lorg/tf/stage/StageEffects;->m_selectedLayer:Lorg/tf/stage/Layer;

    iget v3, v2, Lorg/tf/stage/Layer;->m_originalY:F

    int-to-float v4, v1

    div-float v4, v5, v4

    sub-float/2addr v3, v4

    iput v3, v2, Lorg/tf/stage/Layer;->m_originalY:F

    goto :goto_0

    .line 350
    :pswitch_2
    iget-object v2, p0, Lorg/tf/stage/StageEffects;->m_selectedLayer:Lorg/tf/stage/Layer;

    iget v3, v2, Lorg/tf/stage/Layer;->m_originalX:F

    int-to-float v4, v1

    div-float v4, v5, v4

    sub-float/2addr v3, v4

    iput v3, v2, Lorg/tf/stage/Layer;->m_originalX:F

    goto :goto_0

    .line 353
    :pswitch_3
    iget-object v2, p0, Lorg/tf/stage/StageEffects;->m_selectedLayer:Lorg/tf/stage/Layer;

    iget v3, v2, Lorg/tf/stage/Layer;->m_originalX:F

    int-to-float v4, v1

    div-float v4, v5, v4

    add-float/2addr v3, v4

    iput v3, v2, Lorg/tf/stage/Layer;->m_originalX:F

    goto :goto_0

    .line 359
    :pswitch_4
    iget-object v2, p0, Lorg/tf/stage/StageEffects;->m_selectedLayer:Lorg/tf/stage/Layer;

    iget v3, v2, Lorg/tf/stage/Layer;->m_originalY:F

    int-to-float v4, v1

    div-float v4, v5, v4

    add-float/2addr v3, v4

    iput v3, v2, Lorg/tf/stage/Layer;->m_originalY:F

    goto :goto_0

    .line 362
    :pswitch_5
    iget-object v2, p0, Lorg/tf/stage/StageEffects;->m_selectedLayer:Lorg/tf/stage/Layer;

    iget v3, v2, Lorg/tf/stage/Layer;->m_originalScaleX:F

    int-to-float v4, v1

    div-float v4, v5, v4

    sub-float/2addr v3, v4

    iput v3, v2, Lorg/tf/stage/Layer;->m_originalScaleX:F

    goto :goto_0

    .line 365
    :pswitch_6
    iget-object v2, p0, Lorg/tf/stage/StageEffects;->m_selectedLayer:Lorg/tf/stage/Layer;

    iget v3, v2, Lorg/tf/stage/Layer;->m_originalScaleX:F

    int-to-float v4, v1

    div-float v4, v5, v4

    add-float/2addr v3, v4

    iput v3, v2, Lorg/tf/stage/Layer;->m_originalScaleX:F

    goto :goto_0

    .line 368
    :pswitch_7
    iget-object v2, p0, Lorg/tf/stage/StageEffects;->m_selectedLayer:Lorg/tf/stage/Layer;

    iget v3, v2, Lorg/tf/stage/Layer;->m_originalScaleY:F

    int-to-float v4, v1

    div-float v4, v5, v4

    sub-float/2addr v3, v4

    iput v3, v2, Lorg/tf/stage/Layer;->m_originalScaleY:F

    goto :goto_0

    .line 371
    :pswitch_8
    iget-object v2, p0, Lorg/tf/stage/StageEffects;->m_selectedLayer:Lorg/tf/stage/Layer;

    iget v3, v2, Lorg/tf/stage/Layer;->m_originalScaleY:F

    int-to-float v4, v1

    div-float v4, v5, v4

    add-float/2addr v3, v4

    iput v3, v2, Lorg/tf/stage/Layer;->m_originalScaleY:F

    goto/16 :goto_0

    .line 374
    :pswitch_9
    iget-object v2, p0, Lorg/tf/stage/StageEffects;->m_selectedLayer:Lorg/tf/stage/Layer;

    iget v3, v2, Lorg/tf/stage/Layer;->m_originalAngle:F

    sub-float/2addr v3, v6

    iput v3, v2, Lorg/tf/stage/Layer;->m_originalAngle:F

    goto/16 :goto_0

    .line 377
    :pswitch_a
    iget-object v2, p0, Lorg/tf/stage/StageEffects;->m_selectedLayer:Lorg/tf/stage/Layer;

    iget v3, v2, Lorg/tf/stage/Layer;->m_originalAngle:F

    add-float/2addr v3, v6

    iput v3, v2, Lorg/tf/stage/Layer;->m_originalAngle:F

    goto/16 :goto_0

    .line 380
    :pswitch_b
    add-int/lit8 v1, v1, -0x1

    .line 381
    const/4 v2, 0x1

    if-ge v1, v2, :cond_6

    .line 382
    const/4 v1, 0x1

    .line 384
    :cond_6
    iput v1, p0, Lorg/tf/stage/StageEffects;->m_layerAdjustmentPrecision:I

    .line 385
    const-string v2, "TOF"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "******* Precision: "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 388
    :pswitch_c
    add-int/lit8 v1, v1, 0x1

    .line 389
    iput v1, p0, Lorg/tf/stage/StageEffects;->m_layerAdjustmentPrecision:I

    .line 390
    const-string v2, "TOF"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "******* Precision: "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 394
    :pswitch_d
    const-string v2, "TOF"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "******* Position: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/tf/stage/StageEffects;->m_selectedLayer:Lorg/tf/stage/Layer;

    iget v3, v3, Lorg/tf/stage/Layer;->m_originalX:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/tf/stage/StageEffects;->m_selectedLayer:Lorg/tf/stage/Layer;

    iget v3, v3, Lorg/tf/stage/Layer;->m_originalY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const-string v2, "TOF"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "******* Scale: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/tf/stage/StageEffects;->m_selectedLayer:Lorg/tf/stage/Layer;

    iget v3, v3, Lorg/tf/stage/Layer;->m_originalScaleX:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/tf/stage/StageEffects;->m_selectedLayer:Lorg/tf/stage/Layer;

    iget v3, v3, Lorg/tf/stage/Layer;->m_originalScaleY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const-string v2, "TOF"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "******* Angle: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/tf/stage/StageEffects;->m_selectedLayer:Lorg/tf/stage/Layer;

    iget v3, v3, Lorg/tf/stage/Layer;->m_originalAngle:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 348
    nop

    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_5
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_2
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_a
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public onNotesMissed()V
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lorg/tf/stage/StageEffects;->m_position:I

    iput v0, p0, Lorg/tf/stage/StageEffects;->m_notesMissPosition:I

    .line 236
    return-void
.end method

.method public onNotesPicked([Lorg/tf/song/NoteEvent;I)V
    .locals 7
    .parameter "notes"
    .parameter "notesLength"

    .prologue
    const/4 v6, 0x1

    .line 206
    if-nez p2, :cond_0

    .line 232
    :goto_0
    return-void

    .line 210
    :cond_0
    const/4 v0, 0x0

    .line 211
    .local v0, average:F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ne v1, p2, :cond_1

    .line 214
    int-to-float v3, p2

    div-float/2addr v0, v3

    .line 215
    iget-object v3, p0, Lorg/tf/stage/StageEffects;->m_averageStringHistory:[F

    array-length v3, v3

    sub-int v2, v3, v6

    .line 217
    .local v2, lastIndex:I
    iget-object v3, p0, Lorg/tf/stage/StageEffects;->m_averageStringHistory:[F

    .line 218
    iget-object v4, p0, Lorg/tf/stage/StageEffects;->m_averageStringHistory:[F

    const/4 v5, 0x0

    .line 216
    invoke-static {v3, v6, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    iget-object v3, p0, Lorg/tf/stage/StageEffects;->m_averageStringHistory:[F

    aput v0, v3, v2

    .line 222
    iget v3, p0, Lorg/tf/stage/StageEffects;->m_position:I

    iput v3, p0, Lorg/tf/stage/StageEffects;->m_notesPickPosition:I

    .line 224
    const/4 v0, 0x0

    .line 225
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lorg/tf/stage/StageEffects;->m_averageStringHistory:[F

    array-length v3, v3

    if-ne v1, v3, :cond_2

    .line 228
    iget-object v3, p0, Lorg/tf/stage/StageEffects;->m_averageStringHistory:[F

    array-length v3, v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 229
    iget-object v3, p0, Lorg/tf/stage/StageEffects;->m_lightAverageStrings:[F

    array-length v3, v3

    sub-int v2, v3, v6

    .line 230
    iget-object v3, p0, Lorg/tf/stage/StageEffects;->m_lightAverageStrings:[F

    aput v0, v3, v2

    goto :goto_0

    .line 212
    .end local v2           #lastIndex:I
    :cond_1
    aget-object v3, p1, v1

    invoke-virtual {v3}, Lorg/tf/song/NoteEvent;->getString()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v0, v3

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 226
    .restart local v2       #lastIndex:I
    :cond_2
    iget-object v3, p0, Lorg/tf/stage/StageEffects;->m_averageStringHistory:[F

    aget v3, v3, v1

    add-float/2addr v0, v3

    .line 225
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public renderBackground(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter "gl"

    .prologue
    .line 241
    iget-object v3, p0, Lorg/tf/stage/StageEffects;->m_viewport:Lorg/tf/gl/GLRect;

    if-nez v3, :cond_1

    .line 250
    :cond_0
    return-void

    .line 244
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v3, p0, Lorg/tf/stage/StageEffects;->m_layers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, e:I
    :goto_0
    if-eq v1, v0, :cond_0

    .line 245
    iget-object v3, p0, Lorg/tf/stage/StageEffects;->m_layers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/tf/stage/Layer;

    .line 246
    .local v2, layer:Lorg/tf/stage/Layer;
    invoke-virtual {v2}, Lorg/tf/stage/Layer;->isForeground()Z

    move-result v3

    if-nez v3, :cond_2

    .line 247
    invoke-virtual {v2, p1}, Lorg/tf/stage/Layer;->render(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 244
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public renderForeground(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter "gl"

    .prologue
    .line 253
    iget-object v3, p0, Lorg/tf/stage/StageEffects;->m_viewport:Lorg/tf/gl/GLRect;

    if-nez v3, :cond_1

    .line 262
    :cond_0
    return-void

    .line 256
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v3, p0, Lorg/tf/stage/StageEffects;->m_layers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, e:I
    :goto_0
    if-eq v1, v0, :cond_0

    .line 257
    iget-object v3, p0, Lorg/tf/stage/StageEffects;->m_layers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/tf/stage/Layer;

    .line 258
    .local v2, layer:Lorg/tf/stage/Layer;
    invoke-virtual {v2}, Lorg/tf/stage/Layer;->isForeground()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 259
    invoke-virtual {v2, p1}, Lorg/tf/stage/Layer;->render(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 256
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public resetState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 90
    const/high16 v2, 0x3f80

    iput v2, p0, Lorg/tf/stage/StageEffects;->m_readiness:F

    .line 91
    iput v3, p0, Lorg/tf/stage/StageEffects;->m_position:I

    .line 92
    iput v4, p0, Lorg/tf/stage/StageEffects;->m_beatPeriod:F

    .line 93
    iput v3, p0, Lorg/tf/stage/StageEffects;->m_beatPosition:I

    .line 94
    iput v3, p0, Lorg/tf/stage/StageEffects;->m_beats:I

    .line 95
    iput v3, p0, Lorg/tf/stage/StageEffects;->m_quarterbeatPosition:I

    .line 96
    iput v3, p0, Lorg/tf/stage/StageEffects;->m_quarterbeats:I

    .line 97
    iput v3, p0, Lorg/tf/stage/StageEffects;->m_notesPickPosition:I

    .line 98
    iput v3, p0, Lorg/tf/stage/StageEffects;->m_notesMissPosition:I

    .line 99
    iget-object v2, p0, Lorg/tf/stage/StageEffects;->m_lightAverageStrings:[F

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([FF)V

    .line 100
    iget-object v2, p0, Lorg/tf/stage/StageEffects;->m_averageStringHistory:[F

    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([FF)V

    .line 101
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v2, p0, Lorg/tf/stage/StageEffects;->m_layers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, e:I
    :goto_0
    if-ne v1, v0, :cond_0

    .line 104
    return-void

    .line 102
    :cond_0
    iget-object v2, p0, Lorg/tf/stage/StageEffects;->m_layers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/tf/stage/Layer;

    invoke-virtual {v2}, Lorg/tf/stage/Layer;->resetState()V

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
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
    .line 136
    const v3, 0x53544658

    invoke-static {p1, v3}, Lorg/tf/util/DataStreamHelpers;->checkTag(Ljava/io/DataInput;I)V

    .line 137
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    iput v3, p0, Lorg/tf/stage/StageEffects;->m_beatPeriod:F

    .line 138
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lorg/tf/stage/StageEffects;->m_beatPosition:I

    .line 139
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lorg/tf/stage/StageEffects;->m_beats:I

    .line 140
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lorg/tf/stage/StageEffects;->m_quarterbeatPosition:I

    .line 141
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lorg/tf/stage/StageEffects;->m_quarterbeats:I

    .line 142
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lorg/tf/stage/StageEffects;->m_notesPickPosition:I

    .line 143
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, p0, Lorg/tf/stage/StageEffects;->m_notesMissPosition:I

    .line 145
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 146
    .local v1, length:I
    iget-object v3, p0, Lorg/tf/stage/StageEffects;->m_lightAverageStrings:[F

    array-length v3, v3

    if-eq v1, v3, :cond_0

    .line 147
    invoke-static {}, Lorg/tf/util/DataStreamHelpers;->inconsistentStateException()Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 149
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ne v0, v1, :cond_1

    .line 154
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 155
    iget-object v3, p0, Lorg/tf/stage/StageEffects;->m_averageStringHistory:[F

    array-length v3, v3

    if-eq v1, v3, :cond_2

    .line 156
    invoke-static {}, Lorg/tf/util/DataStreamHelpers;->inconsistentStateException()Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 150
    :cond_1
    iget-object v3, p0, Lorg/tf/stage/StageEffects;->m_lightAverageStrings:[F

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v4

    aput v4, v3, v0

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-ne v0, v1, :cond_3

    .line 163
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 164
    .local v2, size:I
    iget-object v3, p0, Lorg/tf/stage/StageEffects;->m_layers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 165
    invoke-static {}, Lorg/tf/util/DataStreamHelpers;->inconsistentStateException()Ljava/io/IOException;

    move-result-object v3

    throw v3

    .line 159
    .end local v2           #size:I
    :cond_3
    iget-object v3, p0, Lorg/tf/stage/StageEffects;->m_averageStringHistory:[F

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v4

    aput v4, v3, v0

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 167
    .restart local v2       #size:I
    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-ne v0, v2, :cond_5

    .line 171
    return-void

    .line 168
    :cond_5
    iget-object v3, p0, Lorg/tf/stage/StageEffects;->m_layers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/tf/stage/Layer;

    invoke-virtual {v3, p1}, Lorg/tf/stage/Layer;->restoreState(Ljava/io/DataInputStream;)V

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public saveState(Ljava/io/DataOutputStream;)V
    .locals 6
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 107
    const v2, 0x53544658

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 108
    iget v2, p0, Lorg/tf/stage/StageEffects;->m_beatPeriod:F

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 109
    iget v2, p0, Lorg/tf/stage/StageEffects;->m_beatPosition:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 110
    iget v2, p0, Lorg/tf/stage/StageEffects;->m_beats:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 111
    iget v2, p0, Lorg/tf/stage/StageEffects;->m_quarterbeatPosition:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 112
    iget v2, p0, Lorg/tf/stage/StageEffects;->m_quarterbeats:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 113
    iget v2, p0, Lorg/tf/stage/StageEffects;->m_notesPickPosition:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 114
    iget v2, p0, Lorg/tf/stage/StageEffects;->m_notesMissPosition:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 116
    iget-object v2, p0, Lorg/tf/stage/StageEffects;->m_lightAverageStrings:[F

    array-length v2, v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 117
    iget-object v2, p0, Lorg/tf/stage/StageEffects;->m_lightAverageStrings:[F

    array-length v3, v2

    move v4, v5

    :goto_0
    if-lt v4, v3, :cond_0

    .line 122
    iget-object v2, p0, Lorg/tf/stage/StageEffects;->m_averageStringHistory:[F

    array-length v2, v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 123
    iget-object v2, p0, Lorg/tf/stage/StageEffects;->m_averageStringHistory:[F

    array-length v3, v2

    move v4, v5

    :goto_1
    if-lt v4, v3, :cond_1

    .line 128
    iget-object v2, p0, Lorg/tf/stage/StageEffects;->m_layers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 129
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v2, p0, Lorg/tf/stage/StageEffects;->m_layers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 133
    return-void

    .line 117
    .end local v0           #i:I
    :cond_0
    aget v1, v2, v4

    .line 118
    .local v1, value:F
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 117
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 123
    .end local v1           #value:F
    :cond_1
    aget v1, v2, v4

    .line 124
    .restart local v1       #value:F
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 123
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 130
    .end local v1           #value:F
    .restart local v0       #i:I
    :cond_2
    iget-object v2, p0, Lorg/tf/stage/StageEffects;->m_layers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/tf/stage/Layer;

    invoke-virtual {v2, p1}, Lorg/tf/stage/Layer;->saveState(Ljava/io/DataOutputStream;)V

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public setPosition(IF)V
    .locals 4
    .parameter "position"
    .parameter "bpm"

    .prologue
    .line 188
    const v3, 0x476a6000

    div-float v0, v3, p2

    .line 189
    .local v0, beatPeriod:F
    iput p1, p0, Lorg/tf/stage/StageEffects;->m_position:I

    .line 190
    iput v0, p0, Lorg/tf/stage/StageEffects;->m_beatPeriod:F

    .line 192
    mul-int/lit8 v3, p1, 0x4

    int-to-float v3, v3

    div-float/2addr v3, v0

    float-to-int v2, v3

    .line 193
    .local v2, quarterbeats:I
    iget v3, p0, Lorg/tf/stage/StageEffects;->m_quarterbeats:I

    if-le v2, v3, :cond_0

    .line 194
    iput p1, p0, Lorg/tf/stage/StageEffects;->m_quarterbeatPosition:I

    .line 195
    iput v2, p0, Lorg/tf/stage/StageEffects;->m_quarterbeats:I

    .line 197
    :cond_0
    div-int/lit8 v1, v2, 0x4

    .line 198
    .local v1, beats:I
    iget v3, p0, Lorg/tf/stage/StageEffects;->m_beats:I

    if-le v1, v3, :cond_1

    .line 199
    iput p1, p0, Lorg/tf/stage/StageEffects;->m_beatPosition:I

    .line 200
    iput v1, p0, Lorg/tf/stage/StageEffects;->m_beats:I

    .line 201
    invoke-direct {p0}, Lorg/tf/stage/StageEffects;->mixLightStrings()V

    .line 203
    :cond_1
    return-void
.end method

.method setPosition(Lorg/tf/gl/sprite/Sprite;FF)V
    .locals 4
    .parameter "sprite"
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v3, 0x4000

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 267
    iget-object v0, p0, Lorg/tf/stage/StageEffects;->m_viewport:Lorg/tf/gl/GLRect;

    if-nez v0, :cond_0

    .line 268
    invoke-virtual {p1, v1, v1}, Lorg/tf/gl/sprite/Sprite;->setCenter(FF)V

    .line 283
    :goto_0
    return-void

    .line 271
    :cond_0
    iget v0, p0, Lorg/tf/stage/StageEffects;->m_readiness:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    .line 272
    cmpg-float v0, p2, v1

    if-gez v0, :cond_2

    .line 273
    const/high16 v0, -0x4080

    add-float v1, v2, p2

    iget v2, p0, Lorg/tf/stage/StageEffects;->m_readiness:F

    mul-float/2addr v1, v2

    add-float p2, v0, v1

    .line 278
    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/tf/stage/StageEffects;->m_viewport:Lorg/tf/gl/GLRect;

    iget v0, v0, Lorg/tf/gl/GLRect;->width:F

    div-float/2addr v0, v3

    mul-float/2addr p2, v0

    .line 279
    iget-object v0, p0, Lorg/tf/stage/StageEffects;->m_viewport:Lorg/tf/gl/GLRect;

    iget v0, v0, Lorg/tf/gl/GLRect;->height:F

    div-float/2addr v0, v3

    mul-float/2addr p3, v0

    .line 280
    iget-object v0, p0, Lorg/tf/stage/StageEffects;->m_viewport:Lorg/tf/gl/GLRect;

    invoke-virtual {v0}, Lorg/tf/gl/GLRect;->centerX()F

    move-result v0

    add-float/2addr p2, v0

    .line 281
    iget-object v0, p0, Lorg/tf/stage/StageEffects;->m_viewport:Lorg/tf/gl/GLRect;

    invoke-virtual {v0}, Lorg/tf/gl/GLRect;->centerY()F

    move-result v0

    add-float/2addr p3, v0

    .line 282
    invoke-virtual {p1, p2, p3}, Lorg/tf/gl/sprite/Sprite;->setCenter(FF)V

    goto :goto_0

    .line 274
    :cond_2
    cmpl-float v0, p2, v1

    if-lez v0, :cond_1

    .line 275
    sub-float v0, v2, p2

    iget v1, p0, Lorg/tf/stage/StageEffects;->m_readiness:F

    mul-float/2addr v0, v1

    sub-float p2, v2, v0

    goto :goto_1
.end method

.method public setReadiness(F)V
    .locals 0
    .parameter "readiness"

    .prologue
    .line 184
    iput p1, p0, Lorg/tf/stage/StageEffects;->m_readiness:F

    .line 185
    return-void
.end method

.method public setViewport(Lorg/tf/gl/GLRect;)V
    .locals 1
    .parameter "viewport"

    .prologue
    .line 176
    if-nez p1, :cond_0

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/tf/stage/StageEffects;->m_viewport:Lorg/tf/gl/GLRect;

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    new-instance v0, Lorg/tf/gl/GLRect;

    invoke-direct {v0, p1}, Lorg/tf/gl/GLRect;-><init>(Lorg/tf/gl/GLRect;)V

    iput-object v0, p0, Lorg/tf/stage/StageEffects;->m_viewport:Lorg/tf/gl/GLRect;

    goto :goto_0
.end method
