.class public Lorg/cocos2d/opengl/a;
.super Lorg/cocos2d/g/r;

# interfaces
.implements Lorg/cocos2d/i/b;
.implements Lorg/cocos2d/i/c;


# static fields
.field static b:Lorg/cocos2d/opengl/b;

.field public static g:Ljava/util/HashMap;


# instance fields
.field a:Lorg/cocos2d/m/b/b;

.field c:Lorg/cocos2d/opengl/b;

.field d:I

.field e:Lorg/cocos2d/l/j;

.field f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lorg/cocos2d/opengl/a;->g:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 3

    const/high16 v2, 0x3f00

    sget-object v0, Lorg/cocos2d/opengl/a;->g:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/cocos2d/opengl/a;->g:Ljava/util/HashMap;

    :cond_0
    sget-object v0, Lorg/cocos2d/opengl/a;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/opengl/b;

    if-nez v0, :cond_1

    invoke-static {p2}, Lorg/cocos2d/opengl/b;->a(Ljava/lang/String;)Lorg/cocos2d/opengl/b;

    move-result-object v0

    sget-object v1, Lorg/cocos2d/opengl/a;->g:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sput-object v0, Lorg/cocos2d/opengl/a;->b:Lorg/cocos2d/opengl/b;

    iget-object v0, v0, Lorg/cocos2d/opengl/b;->c:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/cocos2d/g/r;-><init>(Ljava/lang/String;I)V

    sget-object v0, Lorg/cocos2d/opengl/a;->b:Lorg/cocos2d/opengl/b;

    iput-object v0, p0, Lorg/cocos2d/opengl/a;->c:Lorg/cocos2d/opengl/b;

    const/16 v0, 0xff

    iput v0, p0, Lorg/cocos2d/opengl/a;->d:I

    new-instance v0, Lorg/cocos2d/l/j;

    sget-object v1, Lorg/cocos2d/l/j;->a:Lorg/cocos2d/l/j;

    invoke-direct {v0, v1}, Lorg/cocos2d/l/j;-><init>(Lorg/cocos2d/l/j;)V

    iput-object v0, p0, Lorg/cocos2d/opengl/a;->e:Lorg/cocos2d/l/j;

    invoke-static {}, Lorg/cocos2d/l/g;->a()Lorg/cocos2d/l/g;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/opengl/a;->w:Lorg/cocos2d/l/g;

    iget-object v0, p0, Lorg/cocos2d/opengl/a;->q:Lorg/cocos2d/opengl/m;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/m;->d()Lorg/cocos2d/opengl/i;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/opengl/i;->g()Z

    move-result v0

    iput-boolean v0, p0, Lorg/cocos2d/opengl/a;->f:Z

    invoke-static {v2, v2}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/opengl/a;->v:Lorg/cocos2d/l/e;

    new-instance v0, Lorg/cocos2d/m/b/b;

    invoke-direct {v0}, Lorg/cocos2d/m/b/b;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/opengl/a;->a:Lorg/cocos2d/m/b/b;

    invoke-virtual {p0, p1}, Lorg/cocos2d/opengl/a;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static a(Ljava/lang/CharSequence;Ljava/lang/String;)Lorg/cocos2d/opengl/a;
    .locals 1

    new-instance v0, Lorg/cocos2d/opengl/a;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/opengl/a;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0
.end method

.method private e()V
    .locals 20

    const/4 v4, 0x0

    const v5, 0xffff

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/opengl/a;->a:Lorg/cocos2d/m/b/b;

    move-object v8, v0

    invoke-virtual {v8}, Lorg/cocos2d/m/b/b;->length()I

    move-result v8

    if-nez v8, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v9, 0x0

    move/from16 v19, v9

    move v9, v7

    move/from16 v7, v19

    :goto_1
    const/4 v10, 0x1

    sub-int v10, v8, v10

    if-lt v7, v10, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/opengl/a;->c:Lorg/cocos2d/opengl/b;

    move-object v7, v0

    iget v7, v7, Lorg/cocos2d/opengl/b;->b:I

    mul-int/2addr v7, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/opengl/a;->c:Lorg/cocos2d/opengl/b;

    move-object v10, v0

    iget v10, v10, Lorg/cocos2d/opengl/b;->b:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/opengl/a;->c:Lorg/cocos2d/opengl/b;

    move-object v11, v0

    iget v11, v11, Lorg/cocos2d/opengl/b;->b:I

    mul-int/2addr v9, v11

    sub-int v9, v10, v9

    neg-int v9, v9

    const/4 v10, 0x0

    move v11, v4

    move/from16 v19, v6

    move v6, v10

    move v10, v9

    move/from16 v9, v19

    :goto_2
    if-lt v6, v8, :cond_3

    int-to-float v4, v9

    int-to-float v5, v7

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/opengl/a;->b(FF)V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/opengl/a;->a:Lorg/cocos2d/m/b/b;

    move-object v10, v0

    invoke-virtual {v10, v7}, Lorg/cocos2d/m/b/b;->charAt(I)C

    move-result v10

    const/16 v11, 0xa

    if-ne v10, v11, :cond_2

    add-int/lit8 v9, v9, 0x1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/opengl/a;->a:Lorg/cocos2d/m/b/b;

    move-object v4, v0

    invoke-virtual {v4, v6}, Lorg/cocos2d/m/b/b;->charAt(I)C

    move-result v12

    const/16 v4, 0xa

    if-ne v12, v4, :cond_4

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/opengl/a;->c:Lorg/cocos2d/opengl/b;

    move-object v11, v0

    iget v11, v11, Lorg/cocos2d/opengl/b;->b:I

    sub-int/2addr v10, v11

    move/from16 v19, v9

    move v9, v10

    move v10, v4

    move/from16 v4, v19

    :goto_3
    add-int/lit8 v6, v6, 0x1

    move v11, v10

    move v10, v9

    move v9, v4

    goto :goto_2

    :cond_4
    and-int/lit16 v4, v5, 0xff

    and-int/lit16 v13, v12, 0xff

    const/4 v14, 0x0

    shl-int/lit8 v4, v4, 0x10

    const v15, 0xffff

    and-int/2addr v13, v15

    or-int/2addr v4, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/opengl/a;->c:Lorg/cocos2d/opengl/b;

    move-object v13, v0

    iget-object v13, v13, Lorg/cocos2d/opengl/b;->d:Lorg/cocos2d/m/a/h;

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/opengl/a;->c:Lorg/cocos2d/opengl/b;

    move-object v13, v0

    iget-object v13, v13, Lorg/cocos2d/opengl/b;->d:Lorg/cocos2d/m/a/h;

    invoke-virtual {v13, v4}, Lorg/cocos2d/m/a/h;->a(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/cocos2d/opengl/d;

    if-eqz v4, :cond_9

    iget v4, v4, Lorg/cocos2d/opengl/d;->b:I

    move v13, v4

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/opengl/a;->c:Lorg/cocos2d/opengl/b;

    move-object v4, v0

    iget-object v4, v4, Lorg/cocos2d/opengl/b;->a:Lorg/cocos2d/m/a/h;

    invoke-virtual {v4, v12}, Lorg/cocos2d/m/a/h;->a(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/cocos2d/opengl/c;

    if-eqz v4, :cond_8

    iget-object v14, v4, Lorg/cocos2d/opengl/c;->b:Lorg/cocos2d/l/f;

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/cocos2d/opengl/a;->e(I)Lorg/cocos2d/g/i;

    move-result-object v5

    check-cast v5, Lorg/cocos2d/g/o;

    if-nez v5, :cond_6

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-static {v0, v1}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/g/r;Lorg/cocos2d/l/f;)Lorg/cocos2d/g/o;

    move-result-object v5

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v15

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lorg/cocos2d/opengl/a;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/opengl/a;->c:Lorg/cocos2d/opengl/b;

    move-object v15, v0

    iget v15, v15, Lorg/cocos2d/opengl/b;->b:I

    move-object v0, v4

    iget v0, v0, Lorg/cocos2d/opengl/c;->d:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    int-to-float v15, v15

    move v0, v11

    int-to-float v0, v0

    move/from16 v16, v0

    move-object v0, v4

    iget v0, v0, Lorg/cocos2d/opengl/c;->c:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v16, v16, v17

    move-object v0, v4

    iget-object v0, v0, Lorg/cocos2d/opengl/c;->b:Lorg/cocos2d/l/f;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/cocos2d/l/f;->b:Lorg/cocos2d/l/g;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    move/from16 v17, v0

    const/high16 v18, 0x3f00

    mul-float v17, v17, v18

    add-float v16, v16, v17

    move v0, v13

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v16, v16, v17

    move v0, v10

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v15, v15, v17

    iget-object v14, v14, Lorg/cocos2d/l/f;->b:Lorg/cocos2d/l/g;

    iget v14, v14, Lorg/cocos2d/l/g;->b:F

    const/high16 v17, 0x3f00

    mul-float v14, v14, v17

    sub-float v14, v15, v14

    move-object v0, v5

    move/from16 v1, v16

    move v2, v14

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/g/o;->d(FF)V

    iget v4, v4, Lorg/cocos2d/opengl/c;->e:I

    add-int/2addr v4, v13

    add-int/2addr v4, v11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/cocos2d/opengl/a;->f:Z

    move v11, v0

    invoke-virtual {v5, v11}, Lorg/cocos2d/g/o;->a(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/cocos2d/opengl/a;->e:Lorg/cocos2d/l/j;

    move-object v11, v0

    invoke-virtual {v5, v11}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/l/j;)V

    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/opengl/a;->d:I

    move v11, v0

    const/16 v13, 0xff

    if-eq v11, v13, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lorg/cocos2d/opengl/a;->d:I

    move v11, v0

    invoke-virtual {v5, v11}, Lorg/cocos2d/g/o;->a(I)V

    :cond_5
    if-ge v9, v4, :cond_7

    move v5, v12

    move v9, v10

    move v10, v4

    goto/16 :goto_3

    :cond_6
    invoke-virtual {v5, v14}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/l/f;)V

    const/4 v15, 0x1

    invoke-virtual {v5, v15}, Lorg/cocos2d/g/o;->c(Z)V

    const/16 v15, 0xff

    invoke-virtual {v5, v15}, Lorg/cocos2d/g/o;->a(I)V

    goto/16 :goto_5

    :cond_7
    move v5, v12

    move/from16 v19, v9

    move v9, v10

    move v10, v4

    move/from16 v4, v19

    goto/16 :goto_3

    :cond_8
    move v4, v9

    move v9, v10

    move v10, v11

    goto/16 :goto_3

    :cond_9
    move v13, v14

    goto/16 :goto_4
.end method


# virtual methods
.method public final a()Lorg/cocos2d/l/j;
    .locals 2

    new-instance v0, Lorg/cocos2d/l/j;

    iget-object v1, p0, Lorg/cocos2d/opengl/a;->e:Lorg/cocos2d/l/j;

    invoke-direct {v0, v1}, Lorg/cocos2d/l/j;-><init>(Lorg/cocos2d/l/j;)V

    return-object v0
.end method

.method public final a(I)V
    .locals 4

    iput p1, p0, Lorg/cocos2d/opengl/a;->d:I

    iget-object v0, p0, Lorg/cocos2d/opengl/a;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-lt v2, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/opengl/a;->C:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/g/i;

    check-cast v0, Lorg/cocos2d/i/c;

    iget v3, p0, Lorg/cocos2d/opengl/a;->d:I

    invoke-interface {v0, v3}, Lorg/cocos2d/i/c;->a(I)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/cocos2d/opengl/a;->a:Lorg/cocos2d/m/b/b;

    invoke-virtual {v0}, Lorg/cocos2d/m/b/b;->a()V

    iget-object v0, p0, Lorg/cocos2d/opengl/a;->a:Lorg/cocos2d/m/b/b;

    invoke-virtual {v0, p1}, Lorg/cocos2d/m/b/b;->a(Ljava/lang/CharSequence;)Lorg/cocos2d/m/b/b;

    iget-object v0, p0, Lorg/cocos2d/opengl/a;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v2, v3

    :goto_0
    if-lt v2, v1, :cond_0

    invoke-direct {p0}, Lorg/cocos2d/opengl/a;->e()V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/opengl/a;->C:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/g/i;

    invoke-virtual {v0, v3}, Lorg/cocos2d/g/i;->c(Z)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method public final a(Lorg/cocos2d/l/j;)V
    .locals 3

    iget-object v0, p0, Lorg/cocos2d/opengl/a;->e:Lorg/cocos2d/l/j;

    invoke-virtual {v0, p1}, Lorg/cocos2d/l/j;->a(Lorg/cocos2d/l/j;)V

    iget-object v0, p0, Lorg/cocos2d/opengl/a;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-lt v2, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/opengl/a;->C:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/g/i;

    check-cast v0, Lorg/cocos2d/i/c;

    invoke-interface {v0, p1}, Lorg/cocos2d/i/c;->a(Lorg/cocos2d/l/j;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lorg/cocos2d/opengl/a;->d:I

    return v0
.end method

.method public final d(Lorg/cocos2d/l/e;)V
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/opengl/a;->v:Lorg/cocos2d/l/e;

    invoke-static {p1, v0}, Lorg/cocos2d/l/e;->a(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lorg/cocos2d/g/r;->d(Lorg/cocos2d/l/e;)V

    invoke-direct {p0}, Lorg/cocos2d/opengl/a;->e()V

    :cond_0
    return-void
.end method
