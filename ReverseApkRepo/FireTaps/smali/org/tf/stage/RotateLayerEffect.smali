.class Lorg/tf/stage/RotateLayerEffect;
.super Lorg/tf/stage/LayerEffect;
.source "StageEffects.java"


# static fields
.field private static final STREAM_TAG:I = 0x46584552


# instance fields
.field private m_angle:F


# direct methods
.method public constructor <init>(Lorg/tf/stage/StageEffects;Lorg/tf/util/IniFile$Section;)V
    .locals 2
    .parameter "stage"
    .parameter "iniSection"

    .prologue
    .line 907
    invoke-direct {p0, p1, p2}, Lorg/tf/stage/LayerEffect;-><init>(Lorg/tf/stage/StageEffects;Lorg/tf/util/IniFile$Section;)V

    .line 908
    const-string v0, "angle"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/tf/util/IniFile$Section;->getFloatValue(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lorg/tf/stage/RotateLayerEffect;->m_angle:F

    .line 909
    return-void
.end method


# virtual methods
.method public apply(Lorg/tf/stage/Layer;)V
    .locals 2
    .parameter "layer"

    .prologue
    .line 922
    invoke-virtual {p0}, Lorg/tf/stage/RotateLayerEffect;->trigger()F

    move-result v0

    .line 923
    .local v0, p:F
    iget v1, p0, Lorg/tf/stage/RotateLayerEffect;->m_angle:F

    mul-float/2addr v1, v0

    invoke-virtual {p1, v1}, Lorg/tf/stage/Layer;->rotate(F)V

    .line 924
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
    .line 917
    const v0, 0x46584552

    invoke-static {p1, v0}, Lorg/tf/util/DataStreamHelpers;->checkTag(Ljava/io/DataInput;I)V

    .line 918
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/tf/stage/RotateLayerEffect;->m_angle:F

    .line 919
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
    .line 912
    const v0, 0x46584552

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 913
    iget v0, p0, Lorg/tf/stage/RotateLayerEffect;->m_angle:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 914
    return-void
.end method
