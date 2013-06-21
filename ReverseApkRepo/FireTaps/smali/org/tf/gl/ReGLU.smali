.class public Lorg/tf/gl/ReGLU;
.super Ljava/lang/Object;
.source "ReGLU.java"


# static fields
.field private static final MATRIX_BUFFER:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 197
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lorg/tf/gl/ReGLU;->MATRIX_BUFFER:[F

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static gluLookAt(Ljavax/microedition/khronos/opengles/GL10;FFFFFFFFF)V
    .locals 5
    .parameter "gl"
    .parameter "eyeX"
    .parameter "eyeY"
    .parameter "eyeZ"
    .parameter "centerX"
    .parameter "centerY"
    .parameter "centerZ"
    .parameter "upX"
    .parameter "upY"
    .parameter "upZ"

    .prologue
    .line 49
    sub-float/2addr p4, p1

    .line 50
    .local p4, fx:F
    sub-float/2addr p5, p2

    .line 51
    .local p5, fy:F
    sub-float/2addr p6, p3

    .line 54
    .local p6, fz:F
    const/high16 v0, 0x3f80

    invoke-static {p4, p5, p6}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v1

    div-float/2addr v0, v1

    .line 55
    .local v0, rlf:F
    mul-float/2addr p4, v0

    .line 56
    mul-float/2addr p5, v0

    .line 57
    mul-float/2addr p6, v0

    .line 60
    mul-float v0, p5, p9

    mul-float v1, p6, p8

    sub-float/2addr v0, v1

    .line 61
    .local v0, sx:F
    mul-float v1, p6, p7

    mul-float/2addr p9, p4

    sub-float p9, v1, p9

    .line 62
    .local p9, sy:F
    mul-float/2addr p8, p4

    mul-float/2addr p7, p5

    sub-float v1, p8, p7

    .line 65
    .local v1, sz:F
    const/high16 p7, 0x3f80

    invoke-static {v0, p9, v1}, Landroid/opengl/Matrix;->length(FFF)F

    .end local p7
    .end local p8
    move-result p8

    div-float/2addr p7, p8

    .line 66
    .local p7, rls:F
    mul-float p8, v0, p7

    .line 67
    .end local v0           #sx:F
    .local p8, sx:F
    mul-float/2addr p9, p7

    .line 68
    mul-float v0, v1, p7

    .line 71
    .end local v1           #sz:F
    .local v0, sz:F
    mul-float p7, p9, p6

    mul-float v1, v0, p5

    sub-float v1, p7, v1

    .line 72
    .local v1, ux:F
    mul-float p7, v0, p4

    mul-float v2, p8, p6

    sub-float v2, p7, v2

    .line 73
    .local v2, uy:F
    mul-float p7, p8, p5

    mul-float v3, p9, p4

    sub-float v3, p7, v3

    .line 75
    .local v3, uz:F
    sget-object p7, Lorg/tf/gl/ReGLU;->MATRIX_BUFFER:[F

    .line 76
    .local p7, m:[F
    const/4 v4, 0x0

    aput p8, p7, v4

    .line 77
    const/4 p8, 0x1

    aput v1, p7, p8

    .line 78
    .end local p8           #sx:F
    const/4 p8, 0x2

    neg-float p4, p4

    aput p4, p7, p8

    .line 79
    .end local p4           #fx:F
    const/4 p4, 0x3

    const/4 p8, 0x0

    aput p8, p7, p4

    .line 81
    const/4 p4, 0x4

    aput p9, p7, p4

    .line 82
    const/4 p4, 0x5

    aput v2, p7, p4

    .line 83
    const/4 p4, 0x6

    neg-float p5, p5

    aput p5, p7, p4

    .line 84
    .end local p5           #fy:F
    const/4 p4, 0x7

    const/4 p5, 0x0

    aput p5, p7, p4

    .line 86
    const/16 p4, 0x8

    aput v0, p7, p4

    .line 87
    const/16 p4, 0x9

    aput v3, p7, p4

    .line 88
    const/16 p4, 0xa

    neg-float p5, p6

    aput p5, p7, p4

    .line 89
    const/16 p4, 0xb

    const/4 p5, 0x0

    aput p5, p7, p4

    .line 91
    const/16 p4, 0xc

    const/4 p5, 0x0

    aput p5, p7, p4

    .line 92
    const/16 p4, 0xd

    const/4 p5, 0x0

    aput p5, p7, p4

    .line 93
    const/16 p4, 0xe

    const/4 p5, 0x0

    aput p5, p7, p4

    .line 94
    const/16 p4, 0xf

    const/high16 p5, 0x3f80

    aput p5, p7, p4

    .line 96
    const/4 p4, 0x0

    invoke-interface {p0, p7, p4}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    .line 97
    neg-float p1, p1

    neg-float p2, p2

    neg-float p3, p3

    invoke-interface {p0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 98
    .end local p1
    .end local p2
    .end local p3
    return-void
.end method

.method public static gluLookAt([FFFFFFFFFF)V
    .locals 4
    .parameter "matrix"
    .parameter "eyeX"
    .parameter "eyeY"
    .parameter "eyeZ"
    .parameter "centerX"
    .parameter "centerY"
    .parameter "centerZ"
    .parameter "upX"
    .parameter "upY"
    .parameter "upZ"

    .prologue
    .line 124
    sub-float/2addr p4, p1

    .line 125
    .local p4, fx:F
    sub-float/2addr p5, p2

    .line 126
    .local p5, fy:F
    sub-float/2addr p6, p3

    .line 129
    .local p6, fz:F
    const/high16 v0, 0x3f80

    invoke-static {p4, p5, p6}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v1

    div-float/2addr v0, v1

    .line 130
    .local v0, rlf:F
    mul-float/2addr p4, v0

    .line 131
    mul-float/2addr p5, v0

    .line 132
    mul-float/2addr p6, v0

    .line 135
    mul-float v0, p5, p9

    mul-float v1, p6, p8

    sub-float/2addr v0, v1

    .line 136
    .local v0, sx:F
    mul-float v1, p6, p7

    mul-float/2addr p9, p4

    sub-float p9, v1, p9

    .line 137
    .local p9, sy:F
    mul-float/2addr p8, p4

    mul-float/2addr p7, p5

    sub-float v1, p8, p7

    .line 140
    .local v1, sz:F
    const/high16 p7, 0x3f80

    invoke-static {v0, p9, v1}, Landroid/opengl/Matrix;->length(FFF)F

    .end local p7
    .end local p8
    move-result p8

    div-float/2addr p7, p8

    .line 141
    .local p7, rls:F
    mul-float p8, v0, p7

    .line 142
    .end local v0           #sx:F
    .local p8, sx:F
    mul-float/2addr p9, p7

    .line 143
    mul-float/2addr p7, v1

    .line 146
    .end local v1           #sz:F
    .local p7, sz:F
    mul-float v0, p9, p6

    mul-float v1, p7, p5

    sub-float/2addr v0, v1

    .line 147
    .local v0, ux:F
    mul-float v1, p7, p4

    mul-float v2, p8, p6

    sub-float/2addr v1, v2

    .line 148
    .local v1, uy:F
    mul-float v2, p8, p5

    mul-float v3, p9, p4

    sub-float/2addr v2, v3

    .line 150
    .local v2, uz:F
    move-object p0, p0

    .line 151
    .local p0, m:[F
    const/4 v3, 0x0

    aput p8, p0, v3

    .line 152
    const/4 p8, 0x1

    aput v0, p0, p8

    .line 153
    .end local p8           #sx:F
    const/4 p8, 0x2

    neg-float p4, p4

    aput p4, p0, p8

    .line 154
    .end local p4           #fx:F
    const/4 p4, 0x3

    const/4 p8, 0x0

    aput p8, p0, p4

    .line 156
    const/4 p4, 0x4

    aput p9, p0, p4

    .line 157
    const/4 p4, 0x5

    aput v1, p0, p4

    .line 158
    const/4 p4, 0x6

    neg-float p5, p5

    aput p5, p0, p4

    .line 159
    .end local p5           #fy:F
    const/4 p4, 0x7

    const/4 p5, 0x0

    aput p5, p0, p4

    .line 161
    const/16 p4, 0x8

    aput p7, p0, p4

    .line 162
    const/16 p4, 0x9

    aput v2, p0, p4

    .line 163
    const/16 p4, 0xa

    neg-float p5, p6

    aput p5, p0, p4

    .line 164
    const/16 p4, 0xb

    const/4 p5, 0x0

    aput p5, p0, p4

    .line 166
    const/16 p4, 0xc

    const/4 p5, 0x0

    aput p5, p0, p4

    .line 167
    const/16 p4, 0xd

    const/4 p5, 0x0

    aput p5, p0, p4

    .line 168
    const/16 p4, 0xe

    const/4 p5, 0x0

    aput p5, p0, p4

    .line 169
    const/16 p4, 0xf

    const/high16 p5, 0x3f80

    aput p5, p0, p4

    .line 171
    const/4 p4, 0x0

    neg-float p1, p1

    neg-float p2, p2

    neg-float p3, p3

    invoke-static {p0, p4, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 172
    .end local p1
    .end local p2
    .end local p3
    return-void
.end method

.method public static gluPerspective([FFFFF)V
    .locals 8
    .parameter "matrix"
    .parameter "fovy"
    .parameter "aspect"
    .parameter "zNear"
    .parameter "zFar"

    .prologue
    .line 190
    float-to-double v0, p1

    const-wide v6, 0x3f81df46a2529d39L

    mul-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v5, p3, v0

    .line 191
    .local v5, top:F
    neg-float v4, v5

    .line 192
    .local v4, bottom:F
    mul-float v2, v4, p2

    .line 193
    .local v2, left:F
    mul-float v3, v5, p2

    .line 194
    .local v3, right:F
    const/4 v1, 0x0

    move-object v0, p0

    move v6, p3

    move v7, p4

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 195
    return-void
.end method
