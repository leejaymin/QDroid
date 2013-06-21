.class Lorg/tf/stage/ScaleLayerEffect;
.super Lorg/tf/stage/LayerEffect;
.source "StageEffects.java"


# static fields
.field private static final STREAM_TAG:I = 0x46584553


# instance fields
.field private m_xMagnitude:F

.field private m_yMagnitude:F


# direct methods
.method public constructor <init>(Lorg/tf/stage/StageEffects;Lorg/tf/util/IniFile$Section;)V
    .locals 3
    .parameter "stage"
    .parameter "iniSection"

    .prologue
    const v1, 0x3dcccccd

    const-string v2, "magnitude"

    .line 872
    invoke-direct {p0, p1, p2}, Lorg/tf/stage/LayerEffect;-><init>(Lorg/tf/stage/StageEffects;Lorg/tf/util/IniFile$Section;)V

    .line 873
    const-string v0, "magnitude"

    invoke-virtual {p2, v2, v1}, Lorg/tf/util/IniFile$Section;->getFloatValue(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lorg/tf/stage/ScaleLayerEffect;->m_xMagnitude:F

    .line 874
    const-string v0, "magnitude"

    invoke-virtual {p2, v2, v1}, Lorg/tf/util/IniFile$Section;->getFloatValue(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lorg/tf/stage/ScaleLayerEffect;->m_yMagnitude:F

    .line 875
    return-void
.end method


# virtual methods
.method public apply(Lorg/tf/stage/Layer;)V
    .locals 4
    .parameter "layer"

    .prologue
    const/high16 v3, 0x3f80

    .line 890
    invoke-virtual {p0}, Lorg/tf/stage/ScaleLayerEffect;->trigger()F

    move-result v0

    .line 891
    .local v0, p:F
    iget v1, p0, Lorg/tf/stage/ScaleLayerEffect;->m_xMagnitude:F

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    iget v2, p0, Lorg/tf/stage/ScaleLayerEffect;->m_yMagnitude:F

    mul-float/2addr v2, v0

    add-float/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Lorg/tf/stage/Layer;->scale(FF)V

    .line 892
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
    .line 884
    const v0, 0x46584553

    invoke-static {p1, v0}, Lorg/tf/util/DataStreamHelpers;->checkTag(Ljava/io/DataInput;I)V

    .line 885
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/tf/stage/ScaleLayerEffect;->m_xMagnitude:F

    .line 886
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/tf/stage/ScaleLayerEffect;->m_yMagnitude:F

    .line 887
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
    .line 878
    const v0, 0x46584553

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 879
    iget v0, p0, Lorg/tf/stage/ScaleLayerEffect;->m_xMagnitude:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 880
    iget v0, p0, Lorg/tf/stage/ScaleLayerEffect;->m_yMagnitude:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 881
    return-void
.end method
