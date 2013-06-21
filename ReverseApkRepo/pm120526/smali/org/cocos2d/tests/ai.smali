.class Lorg/cocos2d/tests/ai;
.super Lorg/cocos2d/tests/aq;


# instance fields
.field a:Lorg/cocos2d/opengl/m;


# direct methods
.method public constructor <init>()V
    .locals 19

    invoke-direct/range {p0 .. p0}, Lorg/cocos2d/tests/aq;-><init>()V

    new-instance v2, Lorg/cocos2d/opengl/m;

    const-string v3, "atlastest.png"

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Lorg/cocos2d/opengl/m;-><init>(Ljava/lang/String;I)V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/cocos2d/tests/ai;->a:Lorg/cocos2d/opengl/m;

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v15

    const/4 v2, 0x3

    move v0, v2

    new-array v0, v0, [Lorg/cocos2d/l/n;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    new-instance v3, Lorg/cocos2d/l/n;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/cocos2d/l/n;-><init>(FFFF)V

    aput-object v3, v16, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/cocos2d/l/n;

    const v4, 0x3e4ccccd

    const/high16 v5, 0x3f00

    const v6, 0x3e4ccccd

    const/high16 v7, 0x3f00

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/cocos2d/l/n;-><init>(FFFF)V

    aput-object v3, v16, v2

    const/4 v2, 0x2

    new-instance v3, Lorg/cocos2d/l/n;

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/cocos2d/l/n;-><init>(FFFF)V

    aput-object v3, v16, v2

    const/4 v2, 0x3

    move v0, v2

    new-array v0, v0, [Lorg/cocos2d/l/o;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    new-instance v2, Lorg/cocos2d/l/o;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, v15, Lorg/cocos2d/l/g;->a:F

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, v15, Lorg/cocos2d/l/g;->b:F

    const/4 v11, 0x0

    iget v12, v15, Lorg/cocos2d/l/g;->a:F

    iget v13, v15, Lorg/cocos2d/l/g;->b:F

    const/4 v14, 0x0

    invoke-direct/range {v2 .. v14}, Lorg/cocos2d/l/o;-><init>(FFFFFFFFFFFF)V

    aput-object v2, v17, v18

    const/16 v18, 0x1

    new-instance v2, Lorg/cocos2d/l/o;

    const/high16 v3, 0x4220

    const/high16 v4, 0x4220

    const/4 v5, 0x0

    const/high16 v6, 0x42f0

    const/high16 v7, 0x42a0

    const/4 v8, 0x0

    const/high16 v9, 0x4220

    const/high16 v10, 0x4320

    const/4 v11, 0x0

    const/high16 v12, 0x4320

    const/high16 v13, 0x4320

    const/4 v14, 0x0

    invoke-direct/range {v2 .. v14}, Lorg/cocos2d/l/o;-><init>(FFFFFFFFFFFF)V

    aput-object v2, v17, v18

    const/16 v18, 0x2

    new-instance v2, Lorg/cocos2d/l/o;

    iget v3, v15, Lorg/cocos2d/l/g;->a:F

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    const/high16 v4, 0x4220

    const/4 v5, 0x0

    iget v6, v15, Lorg/cocos2d/l/g;->a:F

    const/high16 v7, 0x4220

    const/4 v8, 0x0

    iget v9, v15, Lorg/cocos2d/l/g;->a:F

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    const/high16 v10, 0x4248

    sub-float/2addr v9, v10

    const/high16 v10, 0x4348

    const/4 v11, 0x0

    iget v12, v15, Lorg/cocos2d/l/g;->a:F

    const/high16 v13, 0x42c8

    const/4 v14, 0x0

    invoke-direct/range {v2 .. v14}, Lorg/cocos2d/l/o;-><init>(FFFFFFFFFFFF)V

    aput-object v2, v17, v18

    const/4 v2, 0x3

    new-array v2, v2, [[Lorg/cocos2d/l/k;

    const/4 v3, 0x0

    const/4 v4, 0x4

    new-array v4, v4, [Lorg/cocos2d/l/k;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xff

    const/16 v9, 0xff

    invoke-static {v6, v7, v8, v9}, Lorg/cocos2d/l/k;->a(IIII)Lorg/cocos2d/l/k;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xff

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lorg/cocos2d/l/k;->a(IIII)Lorg/cocos2d/l/k;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xff

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lorg/cocos2d/l/k;->a(IIII)Lorg/cocos2d/l/k;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xff

    const/16 v9, 0xff

    invoke-static {v6, v7, v8, v9}, Lorg/cocos2d/l/k;->a(IIII)Lorg/cocos2d/l/k;

    move-result-object v6

    aput-object v6, v4, v5

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x4

    new-array v4, v4, [Lorg/cocos2d/l/k;

    const/4 v5, 0x0

    const/16 v6, 0xff

    const/16 v7, 0xff

    const/16 v8, 0xff

    const/16 v9, 0xff

    invoke-static {v6, v7, v8, v9}, Lorg/cocos2d/l/k;->a(IIII)Lorg/cocos2d/l/k;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xff

    invoke-static {v6, v7, v8, v9}, Lorg/cocos2d/l/k;->a(IIII)Lorg/cocos2d/l/k;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0xff

    const/16 v7, 0xff

    const/16 v8, 0xff

    const/16 v9, 0xff

    invoke-static {v6, v7, v8, v9}, Lorg/cocos2d/l/k;->a(IIII)Lorg/cocos2d/l/k;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/16 v7, 0xff

    const/4 v8, 0x0

    const/16 v9, 0xff

    invoke-static {v6, v7, v8, v9}, Lorg/cocos2d/l/k;->a(IIII)Lorg/cocos2d/l/k;

    move-result-object v6

    aput-object v6, v4, v5

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x4

    new-array v4, v4, [Lorg/cocos2d/l/k;

    const/4 v5, 0x0

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xff

    invoke-static {v6, v7, v8, v9}, Lorg/cocos2d/l/k;->a(IIII)Lorg/cocos2d/l/k;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0xff

    const/4 v8, 0x0

    const/16 v9, 0xff

    invoke-static {v6, v7, v8, v9}, Lorg/cocos2d/l/k;->a(IIII)Lorg/cocos2d/l/k;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xff

    const/16 v9, 0xff

    invoke-static {v6, v7, v8, v9}, Lorg/cocos2d/l/k;->a(IIII)Lorg/cocos2d/l/k;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const/16 v6, 0xff

    const/16 v7, 0xff

    const/4 v8, 0x0

    const/16 v9, 0xff

    invoke-static {v6, v7, v8, v9}, Lorg/cocos2d/l/k;->a(IIII)Lorg/cocos2d/l/k;

    move-result-object v6

    aput-object v6, v4, v5

    aput-object v4, v2, v3

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x3

    if-lt v3, v4, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/tests/ai;->a:Lorg/cocos2d/opengl/m;

    move-object v4, v0

    aget-object v5, v16, v3

    aget-object v6, v17, v3

    invoke-virtual {v4, v5, v6, v3}, Lorg/cocos2d/opengl/m;->a(Lorg/cocos2d/l/n;Lorg/cocos2d/l/o;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/tests/ai;->a:Lorg/cocos2d/opengl/m;

    move-object v4, v0

    aget-object v5, v2, v3

    invoke-virtual {v4, v5, v3}, Lorg/cocos2d/opengl/m;->a([Lorg/cocos2d/l/k;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "CCTextureAtlas Atlas1"

    return-object v0
.end method

.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/tests/ai;->a:Lorg/cocos2d/opengl/m;

    invoke-virtual {v0, p1}, Lorg/cocos2d/opengl/m;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "Manual creation of CCTextureAtlas"

    return-object v0
.end method
