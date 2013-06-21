.class Lorg/tf/gl/mesh/RotateTransform;
.super Ljava/lang/Object;
.source "RotateTransform.java"

# interfaces
.implements Lorg/tf/gl/mesh/Transform;


# instance fields
.field private m_values:[F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x4

    invoke-static {v0, p1}, Lorg/tf/gl/mesh/Util;->parseFloatArray(ILjava/lang/String;)[F

    move-result-object v0

    iput-object v0, p0, Lorg/tf/gl/mesh/RotateTransform;->m_values:[F

    .line 28
    return-void
.end method


# virtual methods
.method public apply(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .parameter "gl"

    .prologue
    .line 31
    iget-object v0, p0, Lorg/tf/gl/mesh/RotateTransform;->m_values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lorg/tf/gl/mesh/RotateTransform;->m_values:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lorg/tf/gl/mesh/RotateTransform;->m_values:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lorg/tf/gl/mesh/RotateTransform;->m_values:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 32
    return-void
.end method

.method public apply([F)V
    .locals 6
    .parameter "matrix"

    .prologue
    const/4 v1, 0x0

    .line 35
    iget-object v0, p0, Lorg/tf/gl/mesh/RotateTransform;->m_values:[F

    aget v2, v0, v1

    iget-object v0, p0, Lorg/tf/gl/mesh/RotateTransform;->m_values:[F

    const/4 v3, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lorg/tf/gl/mesh/RotateTransform;->m_values:[F

    const/4 v4, 0x2

    aget v4, v0, v4

    iget-object v0, p0, Lorg/tf/gl/mesh/RotateTransform;->m_values:[F

    const/4 v5, 0x3

    aget v5, v0, v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    .line 36
    return-void
.end method
