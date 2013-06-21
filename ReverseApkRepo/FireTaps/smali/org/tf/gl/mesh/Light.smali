.class Lorg/tf/gl/mesh/Light;
.super Ljava/lang/Object;
.source "Light.java"


# instance fields
.field private m_ambient:[F

.field private m_diffuse:[F

.field private m_position:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method


# virtual methods
.method public apply(ILjavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter "index"
    .parameter "gl"

    .prologue
    const/4 v3, 0x0

    .line 30
    iget-object v0, p0, Lorg/tf/gl/mesh/Light;->m_position:[F

    if-eqz v0, :cond_0

    .line 31
    add-int/lit16 v0, p1, 0x4000

    const/16 v1, 0x1203

    iget-object v2, p0, Lorg/tf/gl/mesh/Light;->m_position:[F

    invoke-interface {p2, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    .line 33
    :cond_0
    iget-object v0, p0, Lorg/tf/gl/mesh/Light;->m_diffuse:[F

    if-eqz v0, :cond_1

    .line 34
    add-int/lit16 v0, p1, 0x4000

    const/16 v1, 0x1201

    iget-object v2, p0, Lorg/tf/gl/mesh/Light;->m_diffuse:[F

    invoke-interface {p2, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    .line 36
    :cond_1
    iget-object v0, p0, Lorg/tf/gl/mesh/Light;->m_ambient:[F

    if-eqz v0, :cond_2

    .line 37
    add-int/lit16 v0, p1, 0x4000

    const/16 v1, 0x1200

    iget-object v2, p0, Lorg/tf/gl/mesh/Light;->m_ambient:[F

    invoke-interface {p2, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    .line 39
    :cond_2
    return-void
.end method

.method public read(Ljava/io/BufferedReader;)V
    .locals 3
    .parameter "reader"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x4

    .line 43
    :cond_0
    :goto_0
    invoke-static {p1}, Lorg/tf/gl/mesh/Util;->nextLine(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, line:Ljava/lang/String;
    const-string v1, "EndLight"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    return-void

    .line 47
    :cond_1
    const-string v1, "Position"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 48
    invoke-static {v0}, Lorg/tf/gl/mesh/Util;->getColonValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/tf/gl/mesh/Util;->parseFloatArray(ILjava/lang/String;)[F

    move-result-object v1

    iput-object v1, p0, Lorg/tf/gl/mesh/Light;->m_position:[F

    goto :goto_0

    .line 51
    :cond_2
    const-string v1, "Diffuse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 52
    invoke-static {v0}, Lorg/tf/gl/mesh/Util;->getColonValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/tf/gl/mesh/Util;->parseFloatArray(ILjava/lang/String;)[F

    move-result-object v1

    iput-object v1, p0, Lorg/tf/gl/mesh/Light;->m_diffuse:[F

    goto :goto_0

    .line 55
    :cond_3
    const-string v1, "Ambient"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-static {v0}, Lorg/tf/gl/mesh/Util;->getColonValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/tf/gl/mesh/Util;->parseFloatArray(ILjava/lang/String;)[F

    move-result-object v1

    iput-object v1, p0, Lorg/tf/gl/mesh/Light;->m_ambient:[F

    goto :goto_0
.end method
