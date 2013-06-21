.class public Lorg/tf/gl/mesh/Mesh;
.super Ljava/lang/Object;
.source "Mesh.java"


# instance fields
.field private m_geometry:Lorg/tf/gl/mesh/Geometry;

.field private m_lights:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/tf/gl/mesh/Light;",
            ">;"
        }
    .end annotation
.end field

.field private m_transforms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/tf/gl/mesh/Transform;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL10;Ljava/io/InputStream;)V
    .locals 4
    .parameter "gl"
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/tf/gl/mesh/Mesh;->m_lights:Ljava/util/ArrayList;

    .line 32
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/tf/gl/mesh/Mesh;->m_transforms:Ljava/util/ArrayList;

    .line 33
    new-instance v1, Ljava/io/BufferedReader;

    .line 34
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 35
    const/16 v3, 0x400

    .line 33
    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 38
    .local v1, reader:Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, line:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 55
    iget-object v2, p0, Lorg/tf/gl/mesh/Mesh;->m_geometry:Lorg/tf/gl/mesh/Geometry;

    if-nez v2, :cond_4

    .line 56
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid mesh: no geometry."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 42
    :cond_1
    const-string v2, "Geometry"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 43
    new-instance v2, Lorg/tf/gl/mesh/Geometry;

    invoke-direct {v2, p1, v1}, Lorg/tf/gl/mesh/Geometry;-><init>(Ljavax/microedition/khronos/opengles/GL10;Ljava/io/BufferedReader;)V

    iput-object v2, p0, Lorg/tf/gl/mesh/Mesh;->m_geometry:Lorg/tf/gl/mesh/Geometry;

    goto :goto_0

    .line 46
    :cond_2
    const-string v2, "Lights"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 47
    invoke-direct {p0, v1}, Lorg/tf/gl/mesh/Mesh;->readLights(Ljava/io/BufferedReader;)V

    goto :goto_0

    .line 50
    :cond_3
    const-string v2, "Transforms"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    invoke-direct {p0, v1}, Lorg/tf/gl/mesh/Mesh;->readTransforms(Ljava/io/BufferedReader;)V

    goto :goto_0

    .line 58
    :cond_4
    invoke-direct {p0}, Lorg/tf/gl/mesh/Mesh;->applyTransforms()V

    .line 59
    return-void
.end method

.method private applyTransforms()V
    .locals 4

    .prologue
    .line 114
    const/16 v3, 0x10

    new-array v2, v3, [F

    .line 115
    .local v2, matrix:[F
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 116
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v3, p0, Lorg/tf/gl/mesh/Mesh;->m_transforms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, e:I
    :goto_0
    if-ne v1, v0, :cond_0

    .line 119
    iget-object v3, p0, Lorg/tf/gl/mesh/Mesh;->m_geometry:Lorg/tf/gl/mesh/Geometry;

    invoke-virtual {v3, v2}, Lorg/tf/gl/mesh/Geometry;->transform([F)V

    .line 120
    iget-object v3, p0, Lorg/tf/gl/mesh/Mesh;->m_transforms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 121
    return-void

    .line 117
    :cond_0
    iget-object v3, p0, Lorg/tf/gl/mesh/Mesh;->m_transforms:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/tf/gl/mesh/Transform;

    invoke-interface {v3, v2}, Lorg/tf/gl/mesh/Transform;->apply([F)V

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private readLights(Ljava/io/BufferedReader;)V
    .locals 3
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    :cond_0
    :goto_0
    invoke-static {p1}, Lorg/tf/gl/mesh/Util;->nextLine(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, line:Ljava/lang/String;
    const-string v2, "EndLights"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    return-void

    .line 129
    :cond_1
    const-string v2, "Light"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    new-instance v0, Lorg/tf/gl/mesh/Light;

    invoke-direct {v0}, Lorg/tf/gl/mesh/Light;-><init>()V

    .line 131
    .local v0, light:Lorg/tf/gl/mesh/Light;
    invoke-virtual {v0, p1}, Lorg/tf/gl/mesh/Light;->read(Ljava/io/BufferedReader;)V

    .line 132
    iget-object v2, p0, Lorg/tf/gl/mesh/Mesh;->m_lights:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private readTransforms(Ljava/io/BufferedReader;)V
    .locals 4
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    :cond_0
    :goto_0
    invoke-static {p1}, Lorg/tf/gl/mesh/Util;->nextLine(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, line:Ljava/lang/String;
    const-string v1, "EndTransforms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    return-void

    .line 143
    :cond_1
    const-string v1, "Translate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 144
    iget-object v1, p0, Lorg/tf/gl/mesh/Mesh;->m_transforms:Ljava/util/ArrayList;

    new-instance v2, Lorg/tf/gl/mesh/TranslateTransform;

    invoke-static {v0}, Lorg/tf/gl/mesh/Util;->getColonValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/tf/gl/mesh/TranslateTransform;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    :cond_2
    const-string v1, "Rotate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 148
    iget-object v1, p0, Lorg/tf/gl/mesh/Mesh;->m_transforms:Ljava/util/ArrayList;

    new-instance v2, Lorg/tf/gl/mesh/RotateTransform;

    invoke-static {v0}, Lorg/tf/gl/mesh/Util;->getColonValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/tf/gl/mesh/RotateTransform;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 151
    :cond_3
    const-string v1, "Scale"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lorg/tf/gl/mesh/Mesh;->m_transforms:Ljava/util/ArrayList;

    new-instance v2, Lorg/tf/gl/mesh/ScaleTransform;

    invoke-static {v0}, Lorg/tf/gl/mesh/Util;->getColonValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/tf/gl/mesh/ScaleTransform;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public beginRender(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .parameter "gl"

    .prologue
    .line 72
    iget-object v2, p0, Lorg/tf/gl/mesh/Mesh;->m_lights:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    const/16 v2, 0xb50

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 74
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v2, p0, Lorg/tf/gl/mesh/Mesh;->m_lights:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, e:I
    :goto_0
    if-ne v1, v0, :cond_1

    .line 79
    .end local v0           #e:I
    .end local v1           #i:I
    :cond_0
    iget-object v2, p0, Lorg/tf/gl/mesh/Mesh;->m_geometry:Lorg/tf/gl/mesh/Geometry;

    invoke-virtual {v2, p1}, Lorg/tf/gl/mesh/Geometry;->beginRender(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 80
    return-void

    .line 75
    .restart local v0       #e:I
    .restart local v1       #i:I
    :cond_1
    add-int/lit16 v2, v1, 0x4000

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 76
    iget-object v2, p0, Lorg/tf/gl/mesh/Mesh;->m_lights:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/tf/gl/mesh/Light;

    invoke-virtual {v2, v1, p1}, Lorg/tf/gl/mesh/Light;->apply(ILjavax/microedition/khronos/opengles/GL10;)V

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public bind(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter "gl"

    .prologue
    .line 62
    iget-object v0, p0, Lorg/tf/gl/mesh/Mesh;->m_geometry:Lorg/tf/gl/mesh/Geometry;

    invoke-virtual {v0, p1}, Lorg/tf/gl/mesh/Geometry;->bind(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 63
    return-void
.end method

.method public endRender(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .parameter "gl"

    .prologue
    .line 96
    iget-object v1, p0, Lorg/tf/gl/mesh/Mesh;->m_geometry:Lorg/tf/gl/mesh/Geometry;

    invoke-virtual {v1, p1}, Lorg/tf/gl/mesh/Geometry;->endRender(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 97
    iget-object v1, p0, Lorg/tf/gl/mesh/Mesh;->m_lights:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lorg/tf/gl/mesh/Mesh;->m_lights:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 101
    const/16 v1, 0xb50

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 103
    .end local v0           #i:I
    :cond_0
    return-void

    .line 99
    .restart local v0       #i:I
    :cond_1
    add-int/lit16 v1, v0, 0x4000

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public render(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .parameter "gl"

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lorg/tf/gl/mesh/Mesh;->beginRender(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 107
    invoke-virtual {p0, p1}, Lorg/tf/gl/mesh/Mesh;->renderGeometry(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 108
    invoke-virtual {p0, p1}, Lorg/tf/gl/mesh/Mesh;->endRender(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 109
    return-void
.end method

.method public renderGeometry(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .parameter "gl"

    .prologue
    .line 83
    iget-object v2, p0, Lorg/tf/gl/mesh/Mesh;->m_transforms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 85
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v2, p0, Lorg/tf/gl/mesh/Mesh;->m_transforms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, e:I
    :goto_0
    if-ne v1, v0, :cond_2

    .line 89
    .end local v0           #e:I
    .end local v1           #i:I
    :cond_0
    iget-object v2, p0, Lorg/tf/gl/mesh/Mesh;->m_geometry:Lorg/tf/gl/mesh/Geometry;

    invoke-virtual {v2, p1}, Lorg/tf/gl/mesh/Geometry;->doRender(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 90
    iget-object v2, p0, Lorg/tf/gl/mesh/Mesh;->m_transforms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 93
    :cond_1
    return-void

    .line 86
    .restart local v0       #e:I
    .restart local v1       #i:I
    :cond_2
    iget-object v2, p0, Lorg/tf/gl/mesh/Mesh;->m_transforms:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/tf/gl/mesh/Transform;

    invoke-interface {v2, p1}, Lorg/tf/gl/mesh/Transform;->apply(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public unbind(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter "gl"

    .prologue
    .line 66
    iget-object v0, p0, Lorg/tf/gl/mesh/Mesh;->m_geometry:Lorg/tf/gl/mesh/Geometry;

    invoke-virtual {v0, p1}, Lorg/tf/gl/mesh/Geometry;->unbind(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 67
    return-void
.end method
