.class public Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;
.super Ljava/lang/Object;
.source "ObjectsPlane.java"


# instance fields
.field private texture:[F

.field private textureBuffer:Ljava/nio/FloatBuffer;

.field private vertex:[F

.field private vertexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 24
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->vertex:[F

    .line 28
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    .line 32
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->texture:[F

    .line 40
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->vertex:[F

    invoke-static {v0}, Lcom/garageapps/android/spacetracks/glSpec;->initFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 41
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->texture:[F

    invoke-static {v0}, Lcom/garageapps/android/spacetracks/glSpec;->initFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->textureBuffer:Ljava/nio/FloatBuffer;

    .line 42
    return-void

    .line 20
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 28
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>(II)V
    .locals 3
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 24
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->vertex:[F

    .line 28
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    .line 32
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->texture:[F

    .line 46
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->vertex:[F

    array-length v0, v0

    invoke-static {v0}, Lcom/garageapps/android/spacetracks/glSpec;->allocateFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 47
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 48
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 49
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 50
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->vertexBuffer:Ljava/nio/FloatBuffer;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 51
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 52
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 53
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 54
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->vertexBuffer:Ljava/nio/FloatBuffer;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 55
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 56
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->vertexBuffer:Ljava/nio/FloatBuffer;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 57
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->vertexBuffer:Ljava/nio/FloatBuffer;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 58
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 59
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 60
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->texture:[F

    invoke-static {v0}, Lcom/garageapps/android/spacetracks/glSpec;->initFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->textureBuffer:Ljava/nio/FloatBuffer;

    .line 61
    return-void

    .line 20
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 28
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter "gl"

    .prologue
    const/16 v3, 0x1406

    const/4 v2, 0x0

    .line 129
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v3, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 130
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 131
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v3, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 132
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 133
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->vertex:[F

    array-length v1, v1

    div-int/lit8 v1, v1, 0x3

    invoke-interface {p1, v0, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 134
    return-void
.end method

.method public shiftTextureUV(FFFF)V
    .locals 4
    .parameter "x1"
    .parameter "y1"
    .parameter "xoff"
    .parameter "yoff"

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 116
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->textureBuffer:Ljava/nio/FloatBuffer;

    add-float v1, v2, p3

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 117
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 118
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->textureBuffer:Ljava/nio/FloatBuffer;

    add-float v1, v3, p3

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 119
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 120
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->textureBuffer:Ljava/nio/FloatBuffer;

    add-float v1, v2, p3

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 121
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 122
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->textureBuffer:Ljava/nio/FloatBuffer;

    add-float v1, v3, p3

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 123
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 124
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->textureBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 125
    return-void
.end method

.method public updateTextureUV(FF)V
    .locals 2
    .parameter "x1"
    .parameter "y1"

    .prologue
    const/4 v1, 0x0

    .line 90
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 91
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 92
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 93
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 94
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 95
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 96
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 97
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 98
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->textureBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 99
    return-void
.end method

.method public updateTextureUV(FFFF)V
    .locals 2
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 104
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 105
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 106
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 107
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 108
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 109
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 110
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 111
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->textureBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 112
    return-void
.end method

.method public updateVertex2d(II)V
    .locals 3
    .parameter "w"
    .parameter "h"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x3

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 83
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x7

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 84
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v1, 0x9

    int-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 85
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v1, 0xa

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 86
    return-void
.end method

.method public updateVertexXY(FF)V
    .locals 3
    .parameter "x1"
    .parameter "y1"

    .prologue
    const/4 v2, 0x0

    .line 65
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->vertexBuffer:Ljava/nio/FloatBuffer;

    neg-float v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 66
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 67
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 68
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 69
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 70
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 71
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->vertexBuffer:Ljava/nio/FloatBuffer;

    neg-float v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 72
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->vertexBuffer:Ljava/nio/FloatBuffer;

    neg-float v1, p2

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 73
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 74
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 75
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->vertexBuffer:Ljava/nio/FloatBuffer;

    neg-float v1, p2

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 76
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 77
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsPlane;->vertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 78
    return-void
.end method
