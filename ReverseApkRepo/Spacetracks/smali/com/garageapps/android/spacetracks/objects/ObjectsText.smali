.class public Lcom/garageapps/android/spacetracks/objects/ObjectsText;
.super Ljava/lang/Object;
.source "ObjectsText.java"


# instance fields
.field final CHAR_HEIGHT:F

.field final CHAR_SPACE:F

.field final CHAR_WIDTH:F

.field private texture:[F

.field private textureBuffer:Ljava/nio/FloatBuffer;

.field private vertex:[F

.field private vertexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const v0, 0x3f666666

    iput v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsText;->CHAR_SPACE:F

    .line 21
    const v0, 0x3da4dd2f

    iput v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsText;->CHAR_WIDTH:F

    .line 22
    const v0, 0x3dee978d

    iput v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsText;->CHAR_HEIGHT:F

    .line 25
    const/16 v0, 0xc

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 29
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsText;->vertex:[F

    .line 33
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    .line 37
    iput-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsText;->texture:[F

    .line 45
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsText;->vertex:[F

    invoke-static {v0}, Lcom/garageapps/android/spacetracks/glSpec;->initFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsText;->vertexBuffer:Ljava/nio/FloatBuffer;

    .line 46
    iget-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsText;->texture:[F

    invoke-static {v0}, Lcom/garageapps/android/spacetracks/glSpec;->initFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsText;->textureBuffer:Ljava/nio/FloatBuffer;

    .line 47
    return-void

    .line 25
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0xbft
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0xbft
        0x0t 0x0t 0x0t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0xbft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 33
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
.method public draw(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;FFFFFFF)V
    .locals 12
    .parameter "gl"
    .parameter "text"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "r"
    .parameter "g"
    .parameter "b"
    .parameter "a"

    .prologue
    .line 51
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 52
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 53
    move/from16 v0, p4

    move/from16 v1, p5

    invoke-interface {p1, p3, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 54
    const/16 v8, 0xb44

    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 55
    const/16 v8, 0xb71

    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 56
    const/16 v8, 0xbe2

    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 57
    const/16 v8, 0x302

    const/4 v9, 0x1

    invoke-interface {p1, v8, v9}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 58
    const/16 v8, 0xde1

    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 59
    const/16 v8, 0xde1

    sget-object v9, Lcom/garageapps/android/spacetracks/glSpec;->textureBuffer:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    invoke-interface {p1, v8, v9}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 60
    const/4 v8, 0x3

    const/16 v9, 0x1406

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsText;->vertexBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v8, v9, v10, v11}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 61
    const v8, 0x8074

    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 62
    move/from16 v0, p6

    move/from16 v1, p7

    move/from16 v2, p8

    move/from16 v3, p9

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 63
    const v8, 0x8076

    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 64
    const/4 v8, 0x2

    const/16 v9, 0x1406

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsText;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v8, v9, v10, v11}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 65
    const v8, 0x8078

    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 67
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v5, v8, :cond_0

    .line 91
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 92
    return-void

    .line 69
    :cond_0
    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 71
    .local v4, ch:C
    const/16 v8, 0x20

    if-eq v4, v8, :cond_1

    .line 72
    add-int/lit8 v8, v4, -0x20

    rem-int/lit8 v8, v8, 0xc

    int-to-float v8, v8

    const v9, 0x3da4dd2f

    mul-float v6, v8, v9

    .line 73
    .local v6, xoff:F
    add-int/lit8 v8, v4, -0x20

    div-int/lit8 v8, v8, 0xc

    int-to-float v8, v8

    const v9, 0x3dee978d

    mul-float v7, v8, v9

    .line 75
    .local v7, yoff:F
    iget-object v8, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsText;->textureBuffer:Ljava/nio/FloatBuffer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 76
    iget-object v8, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsText;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v8, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 77
    iget-object v8, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsText;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v8, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 78
    iget-object v8, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsText;->textureBuffer:Ljava/nio/FloatBuffer;

    const v9, 0x3da4dd2f

    add-float/2addr v9, v6

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 79
    iget-object v8, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsText;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v8, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 80
    iget-object v8, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsText;->textureBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v8, v6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 81
    iget-object v8, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsText;->textureBuffer:Ljava/nio/FloatBuffer;

    const v9, 0x3dee978d

    add-float/2addr v9, v7

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 82
    iget-object v8, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsText;->textureBuffer:Ljava/nio/FloatBuffer;

    const v9, 0x3da4dd2f

    add-float/2addr v9, v6

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 83
    iget-object v8, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsText;->textureBuffer:Ljava/nio/FloatBuffer;

    const v9, 0x3dee978d

    add-float/2addr v9, v7

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 84
    iget-object v8, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsText;->textureBuffer:Ljava/nio/FloatBuffer;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 86
    const/4 v8, 0x5

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/garageapps/android/spacetracks/objects/ObjectsText;->vertex:[F

    array-length v10, v10

    div-int/lit8 v10, v10, 0x3

    invoke-interface {p1, v8, v9, v10}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 89
    .end local v6           #xoff:F
    .end local v7           #yoff:F
    :cond_1
    const v8, 0x3f666666

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {p1, v8, v9, v10}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 67
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method
