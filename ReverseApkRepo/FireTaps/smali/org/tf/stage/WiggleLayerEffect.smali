.class Lorg/tf/stage/WiggleLayerEffect;
.super Lorg/tf/stage/LayerEffect;
.source "StageEffects.java"


# static fields
.field private static final STREAM_TAG:I = 0x46584557


# instance fields
.field private m_frequency:F

.field private m_xMagnitude:F

.field private m_yMagnitude:F


# direct methods
.method public constructor <init>(Lorg/tf/stage/StageEffects;Lorg/tf/util/IniFile$Section;)V
    .locals 4
    .parameter "stage"
    .parameter "iniSection"

    .prologue
    const v2, 0x3dcccccd

    const-string v3, "magnitude"

    .line 830
    invoke-direct {p0, p1, p2}, Lorg/tf/stage/LayerEffect;-><init>(Lorg/tf/stage/StageEffects;Lorg/tf/util/IniFile$Section;)V

    .line 831
    const-string v0, "frequency"

    const/high16 v1, 0x40c0

    invoke-virtual {p2, v0, v1}, Lorg/tf/util/IniFile$Section;->getFloatValue(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lorg/tf/stage/WiggleLayerEffect;->m_frequency:F

    .line 832
    const-string v0, "magnitude"

    invoke-virtual {p2, v3, v2}, Lorg/tf/util/IniFile$Section;->getFloatValue(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lorg/tf/stage/WiggleLayerEffect;->m_xMagnitude:F

    .line 833
    const-string v0, "magnitude"

    invoke-virtual {p2, v3, v2}, Lorg/tf/util/IniFile$Section;->getFloatValue(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lorg/tf/stage/WiggleLayerEffect;->m_yMagnitude:F

    .line 834
    return-void
.end method


# virtual methods
.method public apply(Lorg/tf/stage/Layer;)V
    .locals 6
    .parameter "layer"

    .prologue
    .line 851
    invoke-virtual {p0}, Lorg/tf/stage/WiggleLayerEffect;->trigger()F

    move-result v3

    .line 852
    .local v3, p:F
    const/high16 v4, 0x4000

    mul-float/2addr v4, v3

    const v5, 0x40490fdb

    mul-float/2addr v4, v5

    iget v5, p0, Lorg/tf/stage/WiggleLayerEffect;->m_frequency:F

    mul-float v0, v4, v5

    .line 853
    .local v0, angle:F
    invoke-static {v0}, Landroid/util/FloatMath;->sin(F)F

    move-result v4

    mul-float/2addr v4, v3

    iget v5, p0, Lorg/tf/stage/WiggleLayerEffect;->m_xMagnitude:F

    mul-float v1, v4, v5

    .line 854
    .local v1, dx:F
    invoke-static {v0}, Landroid/util/FloatMath;->cos(F)F

    move-result v4

    mul-float/2addr v4, v3

    iget v5, p0, Lorg/tf/stage/WiggleLayerEffect;->m_yMagnitude:F

    mul-float v2, v4, v5

    .line 855
    .local v2, dy:F
    invoke-virtual {p1, v1, v2}, Lorg/tf/stage/Layer;->translate(FF)V

    .line 856
    return-void
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
    .line 844
    const v0, 0x46584557

    invoke-static {p1, v0}, Lorg/tf/util/DataStreamHelpers;->checkTag(Ljava/io/DataInput;I)V

    .line 845
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/tf/stage/WiggleLayerEffect;->m_frequency:F

    .line 846
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/tf/stage/WiggleLayerEffect;->m_xMagnitude:F

    .line 847
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/tf/stage/WiggleLayerEffect;->m_yMagnitude:F

    .line 848
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
    .line 837
    const v0, 0x46584557

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 838
    iget v0, p0, Lorg/tf/stage/WiggleLayerEffect;->m_frequency:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 839
    iget v0, p0, Lorg/tf/stage/WiggleLayerEffect;->m_xMagnitude:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 840
    iget v0, p0, Lorg/tf/stage/WiggleLayerEffect;->m_yMagnitude:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 841
    return-void
.end method
