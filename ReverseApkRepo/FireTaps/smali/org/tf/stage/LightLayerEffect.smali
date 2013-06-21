.class Lorg/tf/stage/LightLayerEffect;
.super Lorg/tf/stage/LayerEffect;
.source "StageEffects.java"


# static fields
.field private static final STREAM_TAG:I = 0x4658454c


# instance fields
.field private m_ambient:F

.field private m_contrast:F

.field private m_lightIndex:I

.field private m_startBeat:I


# direct methods
.method public constructor <init>(Lorg/tf/stage/StageEffects;Lorg/tf/util/IniFile$Section;)V
    .locals 3
    .parameter "stage"
    .parameter "iniSection"

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f00

    .line 938
    invoke-direct {p0, p1, p2}, Lorg/tf/stage/LayerEffect;-><init>(Lorg/tf/stage/StageEffects;Lorg/tf/util/IniFile$Section;)V

    .line 939
    const-string v0, "light_index"

    invoke-virtual {p2, v0, v2}, Lorg/tf/util/IniFile$Section;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/tf/stage/LightLayerEffect;->m_lightIndex:I

    .line 940
    const-string v0, "start_beat"

    invoke-virtual {p2, v0, v2}, Lorg/tf/util/IniFile$Section;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/tf/stage/LightLayerEffect;->m_startBeat:I

    .line 941
    const-string v0, "ambient"

    invoke-virtual {p2, v0, v1}, Lorg/tf/util/IniFile$Section;->getFloatValue(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lorg/tf/stage/LightLayerEffect;->m_ambient:F

    .line 942
    const-string v0, "contrast"

    invoke-virtual {p2, v0, v1}, Lorg/tf/util/IniFile$Section;->getFloatValue(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lorg/tf/stage/LightLayerEffect;->m_contrast:F

    .line 943
    return-void
.end method

.method private static clamp255(F)I
    .locals 1
    .parameter "value"

    .prologue
    .line 1006
    const/high16 v0, 0x437f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    const/16 v0, 0xff

    :goto_0
    return v0

    :cond_0
    float-to-int v0, p0

    goto :goto_0
.end method

.method private static getColor(F)I
    .locals 10
    .parameter "averageString"

    .prologue
    const/high16 v9, 0x3f80

    .line 983
    const/high16 v8, 0x4000

    cmpl-float v8, p0, v8

    if-ltz v8, :cond_0

    .line 984
    const/4 v8, 0x2

    invoke-static {v8}, Lorg/tf/Config;->getStringColor(I)I

    move-result v8

    .line 1002
    :goto_0
    return v8

    .line 985
    :cond_0
    const/4 v8, 0x0

    cmpg-float v8, p0, v8

    if-gtz v8, :cond_1

    .line 986
    const/4 v8, 0x0

    invoke-static {v8}, Lorg/tf/Config;->getStringColor(I)I

    move-result v8

    goto :goto_0

    .line 988
    :cond_1
    float-to-int v7, p0

    .line 989
    .local v7, string:I
    rem-float v6, p0, v9

    .line 990
    .local v6, rightFraction:F
    sub-float v3, v9, v6

    .line 991
    .local v3, leftFraction:F
    invoke-static {v7}, Lorg/tf/Config;->getStringColor(I)I

    move-result v2

    .line 992
    .local v2, leftColor:I
    add-int/lit8 v8, v7, 0x1

    invoke-static {v8}, Lorg/tf/Config;->getStringColor(I)I

    move-result v5

    .line 994
    .local v5, rightColor:I
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v3

    .line 995
    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v6

    .line 993
    add-float/2addr v8, v9

    float-to-int v4, v8

    .line 997
    .local v4, red:I
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v3

    .line 998
    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v6

    .line 996
    add-float/2addr v8, v9

    float-to-int v1, v8

    .line 1000
    .local v1, green:I
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v3

    .line 1001
    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v6

    .line 999
    add-float/2addr v8, v9

    float-to-int v0, v8

    .line 1002
    .local v0, blue:I
    invoke-static {v4, v1, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    goto :goto_0
.end method


# virtual methods
.method public apply(Lorg/tf/stage/Layer;)V
    .locals 7
    .parameter "layer"

    .prologue
    .line 966
    invoke-virtual {p0}, Lorg/tf/stage/LightLayerEffect;->getStage()Lorg/tf/stage/StageEffects;

    move-result-object v3

    invoke-virtual {v3}, Lorg/tf/stage/StageEffects;->getBeats()I

    move-result v3

    iget v4, p0, Lorg/tf/stage/LightLayerEffect;->m_startBeat:I

    if-ge v3, v4, :cond_0

    .line 967
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lorg/tf/stage/Layer;->setColor(I)V

    .line 980
    :goto_0
    return-void

    .line 970
    :cond_0
    invoke-virtual {p0}, Lorg/tf/stage/LightLayerEffect;->trigger()F

    move-result v2

    .line 971
    .local v2, p:F
    iget v3, p0, Lorg/tf/stage/LightLayerEffect;->m_ambient:F

    iget v4, p0, Lorg/tf/stage/LightLayerEffect;->m_contrast:F

    mul-float/2addr v4, v2

    add-float v2, v3, v4

    .line 972
    invoke-virtual {p0}, Lorg/tf/stage/LightLayerEffect;->getStage()Lorg/tf/stage/StageEffects;

    move-result-object v3

    iget v4, p0, Lorg/tf/stage/LightLayerEffect;->m_lightIndex:I

    invoke-virtual {v3, v4}, Lorg/tf/stage/StageEffects;->getLightAverageString(I)F

    move-result v0

    .line 973
    .local v0, astring:F
    invoke-static {v0}, Lorg/tf/stage/LightLayerEffect;->getColor(F)I

    move-result v1

    .line 975
    .local v1, color:I
    invoke-virtual {p0}, Lorg/tf/stage/LightLayerEffect;->getIntensity()F

    move-result v3

    const/high16 v4, 0x437f

    mul-float/2addr v3, v4

    invoke-static {v3}, Lorg/tf/stage/LightLayerEffect;->clamp255(F)I

    move-result v3

    .line 976
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Lorg/tf/stage/LightLayerEffect;->clamp255(F)I

    move-result v4

    .line 977
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    invoke-static {v5}, Lorg/tf/stage/LightLayerEffect;->clamp255(F)I

    move-result v5

    .line 978
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v2

    invoke-static {v6}, Lorg/tf/stage/LightLayerEffect;->clamp255(F)I

    move-result v6

    .line 974
    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/tf/stage/Layer;->setColor(I)V

    goto :goto_0
.end method

.method public getLightIndex()I
    .locals 1

    .prologue
    .line 962
    iget v0, p0, Lorg/tf/stage/LightLayerEffect;->m_lightIndex:I

    return v0
.end method

.method public restoreState(Ljava/io/DataInputStream;)V
    .locals 1
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 954
    const v0, 0x4658454c

    invoke-static {p1, v0}, Lorg/tf/util/DataStreamHelpers;->checkTag(Ljava/io/DataInput;I)V

    .line 955
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/tf/stage/LightLayerEffect;->m_lightIndex:I

    .line 956
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/tf/stage/LightLayerEffect;->m_startBeat:I

    .line 957
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/tf/stage/LightLayerEffect;->m_ambient:F

    .line 958
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/tf/stage/LightLayerEffect;->m_contrast:F

    .line 959
    return-void
.end method

.method public saveState(Ljava/io/DataOutputStream;)V
    .locals 1
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 946
    const v0, 0x4658454c

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 947
    iget v0, p0, Lorg/tf/stage/LightLayerEffect;->m_lightIndex:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 948
    iget v0, p0, Lorg/tf/stage/LightLayerEffect;->m_startBeat:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 949
    iget v0, p0, Lorg/tf/stage/LightLayerEffect;->m_ambient:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 950
    iget v0, p0, Lorg/tf/stage/LightLayerEffect;->m_contrast:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 951
    return-void
.end method
