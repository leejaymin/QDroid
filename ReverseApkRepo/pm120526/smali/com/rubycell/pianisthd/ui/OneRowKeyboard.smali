.class public Lcom/rubycell/pianisthd/ui/OneRowKeyboard;
.super Lorg/cocos2d/e/b;


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/content/res/Resources;

.field c:Ljava/util/HashMap;

.field d:Ljava/util/ArrayList;

.field e:F

.field f:I

.field g:Lcom/rubycell/pianisthd/ui/b;

.field h:Z

.field i:Landroid/os/Vibrator;

.field j:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lorg/cocos2d/e/b;-><init>()V

    invoke-virtual {p0, v2}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->a(Z)V

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    invoke-static {}, Lorg/cocos2d/g/c;->b()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->b:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->a:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->i:Landroid/os/Vibrator;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->d:Ljava/util/ArrayList;

    sput-object p0, Lcom/rubycell/pianisthd/d/i;->s:Lcom/rubycell/pianisthd/ui/OneRowKeyboard;

    new-instance v0, Lcom/rubycell/pianisthd/ui/b;

    invoke-direct {v0}, Lcom/rubycell/pianisthd/ui/b;-><init>()V

    iput-object v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->g:Lcom/rubycell/pianisthd/ui/b;

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->g:Lcom/rubycell/pianisthd/ui/b;

    invoke-virtual {p0, v0, v2}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->g:Lcom/rubycell/pianisthd/ui/b;

    sput-object v0, Lcom/rubycell/pianisthd/d/i;->t:Lcom/rubycell/pianisthd/ui/b;

    invoke-static {p1}, Lcom/rubycell/pianisthd/d/i;->a(Ljava/lang/String;)V

    sget v0, Lcom/rubycell/pianisthd/d/i;->z:I

    add-int/lit8 v1, v0, 0x2

    invoke-virtual {p0, v1}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->e(I)Lorg/cocos2d/g/i;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/c;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/c;->c()Lorg/cocos2d/l/e;

    move-result-object v0

    iget v0, v0, Lorg/cocos2d/l/e;->a:F

    neg-float v2, v0

    invoke-virtual {p0, v1}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->e(I)Lorg/cocos2d/g/i;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/c;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/c;->e()Lorg/cocos2d/l/g;

    move-result-object v0

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    add-float/2addr v0, v2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->d(FF)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->h:Z

    return-void
.end method

.method private a(Lorg/cocos2d/l/e;)I
    .locals 11

    const/4 v10, -0x2

    const/high16 v5, 0x4270

    const/4 v4, 0x1

    :try_start_0
    sget v0, Lcom/rubycell/pianisthd/d/b;->n:F

    iget v1, p1, Lorg/cocos2d/l/e;->b:F

    sget-object v2, Lcom/rubycell/pianisthd/d/b;->j:Lorg/cocos2d/l/g;

    iget v2, v2, Lorg/cocos2d/l/g;->b:F

    sget v3, Lcom/rubycell/pianisthd/d/b;->h:F

    mul-float/2addr v3, v5

    sub-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    move v0, v10

    :goto_0
    return v0

    :cond_0
    iget v1, p1, Lorg/cocos2d/l/e;->b:F

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_1

    iget v0, p1, Lorg/cocos2d/l/e;->b:F

    sget-object v1, Lcom/rubycell/pianisthd/d/b;->j:Lorg/cocos2d/l/g;

    iget v1, v1, Lorg/cocos2d/l/g;->b:F

    sget v2, Lcom/rubycell/pianisthd/d/b;->h:F

    mul-float/2addr v2, v5

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget v0, p1, Lorg/cocos2d/l/e;->a:F

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->r()Lorg/cocos2d/l/e;

    move-result-object v1

    iget v1, v1, Lorg/cocos2d/l/e;->a:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float v2, v0, v1

    sget v0, Lcom/rubycell/pianisthd/d/b;->m:F

    div-float v0, v2, v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/rubycell/pianisthd/d/i;->i:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->h:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/rubycell/pianisthd/c/c;

    sub-int v0, v3, v4

    if-lez v0, :cond_2

    sub-int v0, v3, v4

    move v4, v0

    :cond_2
    add-int/lit8 v0, v3, 0x1

    sget-object v1, Lcom/rubycell/pianisthd/d/i;->h:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gt v0, v1, :cond_3

    add-int/lit8 v0, v3, 0x1

    move v5, v0

    :goto_1
    sget-object v0, Lcom/rubycell/pianisthd/d/i;->h:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/c;

    sget-object v1, Lcom/rubycell/pianisthd/d/i;->h:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rubycell/pianisthd/c/c;

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/c/c;->c()Lorg/cocos2d/l/e;

    move-result-object v6

    iget v6, v6, Lorg/cocos2d/l/e;->a:F

    sub-float v6, v2, v6

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/c/c;->c()Lorg/cocos2d/l/e;

    move-result-object v7

    iget v7, v7, Lorg/cocos2d/l/e;->a:F

    sub-float v7, v2, v7

    mul-float/2addr v6, v7

    iget v7, p1, Lorg/cocos2d/l/e;->b:F

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/c/c;->d()F

    move-result v8

    sub-float/2addr v7, v8

    iget v8, p1, Lorg/cocos2d/l/e;->b:F

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/c/c;->d()F

    move-result v9

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/c;->c()Lorg/cocos2d/l/e;

    move-result-object v7

    iget v7, v7, Lorg/cocos2d/l/e;->a:F

    sub-float v7, v2, v7

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/c;->c()Lorg/cocos2d/l/e;

    move-result-object v8

    iget v8, v8, Lorg/cocos2d/l/e;->a:F

    sub-float v8, v2, v8

    mul-float/2addr v7, v8

    iget v8, p1, Lorg/cocos2d/l/e;->b:F

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/c;->d()F

    move-result v9

    sub-float/2addr v8, v9

    iget v9, p1, Lorg/cocos2d/l/e;->b:F

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/c;->d()F

    move-result v0

    sub-float v0, v9, v0

    mul-float/2addr v0, v8

    add-float/2addr v0, v7

    invoke-virtual {v1}, Lcom/rubycell/pianisthd/c/c;->c()Lorg/cocos2d/l/e;

    move-result-object v7

    iget v7, v7, Lorg/cocos2d/l/e;->a:F

    sub-float v7, v2, v7

    invoke-virtual {v1}, Lcom/rubycell/pianisthd/c/c;->c()Lorg/cocos2d/l/e;

    move-result-object v8

    iget v8, v8, Lorg/cocos2d/l/e;->a:F

    sub-float/2addr v2, v8

    mul-float/2addr v2, v7

    iget v7, p1, Lorg/cocos2d/l/e;->b:F

    invoke-virtual {v1}, Lcom/rubycell/pianisthd/c/c;->d()F

    move-result v8

    sub-float/2addr v7, v8

    iget v8, p1, Lorg/cocos2d/l/e;->b:F

    invoke-virtual {v1}, Lcom/rubycell/pianisthd/c/c;->d()F

    move-result v1

    sub-float v1, v8, v1

    mul-float/2addr v1, v7

    add-float/2addr v1, v2

    cmpg-float v2, v0, v6

    if-gez v2, :cond_4

    cmpg-float v2, v0, v1

    if-gez v2, :cond_4

    move v0, v4

    goto/16 :goto_0

    :cond_3
    sget-object v0, Lcom/rubycell/pianisthd/d/i;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v5, v0

    goto/16 :goto_1

    :cond_4
    cmpg-float v2, v1, v6

    if-gez v2, :cond_5

    cmpg-float v0, v1, v0

    if-gez v0, :cond_5

    move v0, v5

    goto/16 :goto_0

    :cond_5
    move v0, v3

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move v0, v10

    goto/16 :goto_0
.end method

.method private b()V
    .locals 3

    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->B:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->i:Landroid/os/Vibrator;

    sget v1, Lcom/rubycell/pianisthd/d/b;->z:I

    div-int/lit8 v1, v1, 0x2

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_0
    return-void
.end method

.method private b(Ljava/util/ArrayList;)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/c;

    sget-object v2, Lcom/rubycell/pianisthd/c/d;->a:Lcom/rubycell/pianisthd/c/d;

    invoke-virtual {v0, v2}, Lcom/rubycell/pianisthd/c/c;->a(Lcom/rubycell/pianisthd/c/d;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private c(Ljava/util/ArrayList;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->k:Ljava/util/ArrayList;

    iget v1, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->f:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sget-object v1, Lcom/rubycell/pianisthd/d/i;->l:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v5

    move v1, v0

    :goto_1
    if-gez v1, :cond_2

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/c;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/c;->a()I

    move-result v0

    sget v2, Lcom/rubycell/pianisthd/d/b;->r:I

    sub-int v3, v0, v5

    add-int/lit8 v3, v3, 0x15

    const/high16 v4, 0x3f80

    invoke-static {v2, v3, v0, v4}, Lcom/rubycell/pianisthd/d/k;->a(IIIF)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/e;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/e;->g()I

    move-result v2

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/rubycell/pianisthd/d/b;->r:I

    sub-int v3, v2, v5

    add-int/lit8 v3, v3, 0x15

    const v4, 0x3f333333

    invoke-static {v0, v3, v2, v4}, Lcom/rubycell/pianisthd/d/k;->a(IIIF)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1
.end method

.method private static d(Ljava/util/ArrayList;)Z
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v1, v2

    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/e;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/e;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->f:I

    return v0
.end method

.method public final a(I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    iput p1, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->f:I

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/rubycell/pianisthd/d/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    if-le p1, v0, :cond_1

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->a:Landroid/content/Context;

    check-cast v0, Lcom/rubycell/pianisthd/SingleRowActivity;

    new-instance v1, Lcom/rubycell/pianisthd/ui/c;

    invoke-direct {v1, p0}, Lcom/rubycell/pianisthd/ui/c;-><init>(Lcom/rubycell/pianisthd/ui/OneRowKeyboard;)V

    invoke-virtual {v0, v1}, Lcom/rubycell/pianisthd/SingleRowActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    sput-boolean v3, Lcom/rubycell/pianisthd/d/i;->u:Z

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->k:Ljava/util/ArrayList;

    sub-int v1, p1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->k:Ljava/util/ArrayList;

    const/4 v2, 0x2

    sub-int v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Lcom/rubycell/pianisthd/d/b;->I:F

    div-float v1, v0, v1

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->g:Lcom/rubycell/pianisthd/ui/b;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/ui/b;->r()Lorg/cocos2d/l/e;

    move-result-object v0

    iget v2, v0, Lorg/cocos2d/l/e;->b:F

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->k:Ljava/util/ArrayList;

    sub-int v3, p1, v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr v0, v2

    invoke-static {v5, v0}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/cocos2d/a/f/m;->b(FLorg/cocos2d/l/e;)Lorg/cocos2d/a/f/m;

    move-result-object v0

    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->g:Lcom/rubycell/pianisthd/ui/b;

    invoke-virtual {v1, v0}, Lcom/rubycell/pianisthd/ui/b;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    invoke-static {}, Lcom/rubycell/pianisthd/d/i;->e()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/rubycell/pianisthd/d/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sget-object v1, Lcom/rubycell/pianisthd/d/i;->l:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    invoke-static {v0}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->d(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->a(Ljava/util/ArrayList;)V

    invoke-static {p1}, Lcom/rubycell/pianisthd/d/l;->b(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/e;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/rubycell/pianisthd/d/l;->a(Ljava/lang/String;)V

    :cond_2
    :goto_1
    sget-object v0, Lcom/rubycell/pianisthd/d/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->k:Ljava/util/ArrayList;

    sub-int v2, p1, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Lcom/rubycell/pianisthd/d/b;->I:F

    div-float v1, v0, v1

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v5, v0}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/cocos2d/a/f/m;->b(FLorg/cocos2d/l/e;)Lorg/cocos2d/a/f/m;

    move-result-object v0

    const-string v1, "onStopPos"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lorg/cocos2d/a/e/c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lorg/cocos2d/a/e/c;

    move-result-object v1

    new-array v2, v3, [Lorg/cocos2d/a/a/b;

    aput-object v1, v2, v4

    invoke-static {v0, v2}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v0

    iget-object v1, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->g:Lcom/rubycell/pianisthd/ui/b;

    invoke-virtual {v1, v0}, Lcom/rubycell/pianisthd/ui/b;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    goto/16 :goto_0

    :cond_3
    iget v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->f:I

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->l:Ljava/util/HashMap;

    sget-object v1, Lcom/rubycell/pianisthd/d/i;->k:Ljava/util/ArrayList;

    iget v2, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->f:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0

    :goto_2
    if-eqz v1, :cond_4

    invoke-static {v1}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->d(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->f:I

    sget-object v2, Lcom/rubycell/pianisthd/d/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    if-lt v0, v2, :cond_3

    :cond_5
    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->d(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->k:Ljava/util/ArrayList;

    iget v2, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->f:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    invoke-virtual {p0, v1}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->a(Ljava/util/ArrayList;)V

    iget v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->f:I

    invoke-static {v0}, Lcom/rubycell/pianisthd/d/l;->b(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/e;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/rubycell/pianisthd/d/l;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    move-object v1, v0

    goto :goto_2
.end method

.method public final a(Lcom/rubycell/pianisthd/c/c;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/rubycell/pianisthd/c/d;->a:Lcom/rubycell/pianisthd/c/d;

    invoke-virtual {p1, v0}, Lcom/rubycell/pianisthd/c/c;->a(Lcom/rubycell/pianisthd/c/d;)V

    :cond_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 11

    const v10, 0x3dcccccd

    const/4 v9, 0x0

    const/high16 v8, 0x4000

    const/4 v7, 0x0

    const/4 v6, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->r()Lorg/cocos2d/l/e;

    move-result-object v0

    iget v0, v0, Lorg/cocos2d/l/e;->a:F

    move v2, v9

    move v3, v9

    move v4, v0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->r()Lorg/cocos2d/l/e;

    move-result-object v0

    iget v0, v0, Lorg/cocos2d/l/e;->a:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float v2, v4, v1

    sget v3, Lcom/rubycell/pianisthd/d/b;->m:F

    div-float/2addr v3, v8

    sub-float/2addr v2, v3

    cmpg-float v2, v2, v7

    if-gez v2, :cond_8

    sub-float/2addr v1, v4

    add-float/2addr v1, v0

    sget v2, Lcom/rubycell/pianisthd/d/b;->m:F

    div-float/2addr v2, v8

    add-float/2addr v1, v2

    const/high16 v2, 0x3f80

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_2

    move v1, v7

    :cond_2
    :goto_2
    sget v2, Lcom/rubycell/pianisthd/d/b;->o:F

    add-float/2addr v2, v1

    cmpg-float v2, v0, v2

    if-lez v2, :cond_6

    iput-boolean v6, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->h:Z

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/e;

    sget-object v1, Lcom/rubycell/pianisthd/d/i;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/e;->g()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rubycell/pianisthd/c/c;

    sget-boolean v5, Lcom/rubycell/pianisthd/d/b;->u:Z

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/e;->a()Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lcom/rubycell/pianisthd/c/d;->c:Lcom/rubycell/pianisthd/c/d;

    invoke-virtual {v1, v5}, Lcom/rubycell/pianisthd/c/c;->a(Lcom/rubycell/pianisthd/c/d;)V

    :cond_4
    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/e;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v1}, Lcom/rubycell/pianisthd/c/c;->c()Lorg/cocos2d/l/e;

    move-result-object v0

    iget v0, v0, Lorg/cocos2d/l/e;->a:F

    iget-object v3, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    move v1, v0

    move v0, v6

    :goto_3
    add-int/lit8 v2, v2, 0x1

    move v3, v0

    move v4, v1

    goto :goto_1

    :cond_6
    cmpl-float v2, v0, v1

    if-lez v2, :cond_7

    move v2, v1

    :goto_4
    invoke-static {v2, v7}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-static {v10, v2}, Lorg/cocos2d/a/f/m;->b(FLorg/cocos2d/l/e;)Lorg/cocos2d/a/f/m;

    move-result-object v2

    const-string v3, "onMoveRightDone"

    invoke-static {p0, v3}, Lorg/cocos2d/a/e/b;->b(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/a/e/b;

    move-result-object v3

    new-array v4, v6, [Lorg/cocos2d/a/a/b;

    aput-object v3, v4, v9

    invoke-static {v2, v4}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    const/high16 v2, 0x4120

    sget v3, Lcom/rubycell/pianisthd/d/b;->g:F

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    goto :goto_2

    :cond_7
    move v2, v0

    goto :goto_4

    :cond_8
    sub-float v2, v4, v1

    sget v3, Lcom/rubycell/pianisthd/d/b;->m:F

    div-float/2addr v3, v8

    add-float/2addr v2, v3

    sget-object v3, Lcom/rubycell/pianisthd/d/b;->j:Lorg/cocos2d/l/g;

    iget v3, v3, Lorg/cocos2d/l/g;->a:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    sub-float v1, v4, v1

    sget-object v2, Lcom/rubycell/pianisthd/d/b;->j:Lorg/cocos2d/l/g;

    iget v2, v2, Lorg/cocos2d/l/g;->a:F

    sub-float/2addr v1, v2

    sget v2, Lcom/rubycell/pianisthd/d/b;->m:F

    div-float/2addr v2, v8

    add-float/2addr v1, v2

    sub-float v1, v0, v1

    sget-object v2, Lcom/rubycell/pianisthd/d/b;->j:Lorg/cocos2d/l/g;

    iget v2, v2, Lorg/cocos2d/l/g;->a:F

    sget v3, Lcom/rubycell/pianisthd/d/i;->x:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x3f80

    sub-float/2addr v2, v3

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_9

    sget-object v1, Lcom/rubycell/pianisthd/d/b;->j:Lorg/cocos2d/l/g;

    iget v1, v1, Lorg/cocos2d/l/g;->a:F

    sget v2, Lcom/rubycell/pianisthd/d/i;->x:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    :cond_9
    :goto_5
    sget v2, Lcom/rubycell/pianisthd/d/b;->o:F

    sub-float v2, v1, v2

    cmpl-float v2, v0, v2

    if-gez v2, :cond_a

    iput-boolean v6, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->h:Z

    goto/16 :goto_0

    :cond_a
    cmpg-float v2, v0, v1

    if-gez v2, :cond_b

    move v2, v1

    :goto_6
    invoke-static {v2, v7}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-static {v10, v2}, Lorg/cocos2d/a/f/m;->b(FLorg/cocos2d/l/e;)Lorg/cocos2d/a/f/m;

    move-result-object v2

    const-string v3, "onMoveLeftDone"

    invoke-static {p0, v3}, Lorg/cocos2d/a/e/b;->b(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/a/e/b;

    move-result-object v3

    new-array v4, v6, [Lorg/cocos2d/a/a/b;

    aput-object v3, v4, v9

    invoke-static {v2, v4}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    const/high16 v2, 0x4120

    sget v3, Lcom/rubycell/pianisthd/d/b;->g:F

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    goto :goto_5

    :cond_b
    move v2, v0

    goto :goto_6

    :cond_c
    move v0, v3

    move v1, v4

    goto/16 :goto_3
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    move v1, v8

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lt v1, v0, :cond_0

    move v0, v7

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    if-ne v0, v1, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_8

    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-static {v3, v4}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/cocos2d/g/c;->a(Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->a(Lorg/cocos2d/l/e;)I

    move-result v3

    if-ne v3, v9, :cond_2

    iget v0, v0, Lorg/cocos2d/l/e;->a:F

    iput v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->e:F

    move v0, v7

    goto :goto_1

    :cond_2
    sget v0, Lcom/rubycell/pianisthd/d/i;->z:I

    if-lt v3, v0, :cond_8

    sget v0, Lcom/rubycell/pianisthd/d/i;->y:I

    if-gt v3, v0, :cond_8

    invoke-virtual {p0, v3}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->e(I)Lorg/cocos2d/g/i;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/c;

    sget-object v4, Lcom/rubycell/pianisthd/c/d;->b:Lcom/rubycell/pianisthd/c/d;

    invoke-virtual {v0, v4}, Lcom/rubycell/pianisthd/c/c;->a(Lcom/rubycell/pianisthd/c/d;)V

    sget v4, Lcom/rubycell/pianisthd/d/b;->r:I

    sub-int v5, v3, v7

    add-int/lit8 v5, v5, 0x15

    const/high16 v6, 0x3f80

    invoke-static {v4, v5, v2, v6}, Lcom/rubycell/pianisthd/d/k;->a(IIIF)V

    invoke-direct {p0}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->b()V

    invoke-static {}, Lcom/rubycell/pianisthd/d/g;->a()Z

    move-result v4

    if-eqz v4, :cond_3

    sub-int v4, v3, v7

    add-int/lit8 v4, v4, 0x15

    invoke-static {v2, v4, v8, v7}, Lcom/rubycell/pianisthd/d/g;->a(IIIZ)V

    invoke-static {v9}, Lcom/rubycell/pianisthd/d/g;->a(I)V

    :cond_3
    iget-object v4, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->d:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->u:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->d:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->c(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->d:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->b(Ljava/util/ArrayList;)V

    :cond_4
    sget v0, Lcom/rubycell/pianisthd/d/i;->z:I

    if-lt v3, v0, :cond_7

    sget v0, Lcom/rubycell/pianisthd/d/i;->y:I

    if-gt v3, v0, :cond_7

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/rubycell/pianisthd/d/i;->u:Z

    if-nez v0, :cond_7

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->w:Lcom/rubycell/pianisthd/c/h;

    if-eqz v0, :cond_7

    :try_start_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->g:Lcom/rubycell/pianisthd/ui/b;

    invoke-static {}, Lorg/cocos2d/a/a;->a()Lorg/cocos2d/a/a;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/cocos2d/a/a;->a(Lorg/cocos2d/g/i;)V

    iget v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->f:I

    if-gez v0, :cond_5

    const/4 v0, 0x0

    iput v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->f:I

    :cond_5
    iget-object v4, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->g:Lcom/rubycell/pianisthd/ui/b;

    const/4 v5, 0x0

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->k:Ljava/util/ArrayList;

    iget v6, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->f:I

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v4, v5, v0}, Lcom/rubycell/pianisthd/ui/b;->d(FF)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/rubycell/pianisthd/d/i;->v:Z

    iget v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->f:I

    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcom/rubycell/pianisthd/d/i;->a(IZ)V

    iget v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->j:I

    sget v4, Lcom/rubycell/pianisthd/d/b;->K:I

    add-int/2addr v0, v4

    iget v4, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->f:I

    if-gt v0, v4, :cond_6

    invoke-static {}, Lcom/rubycell/pianisthd/d/i;->d()V

    :cond_6
    iget v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->f:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->c:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->f:I

    iput p1, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->j:I

    return-void
.end method

.method public final b(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    move v0, v4

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    move v0, v5

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    if-ne v2, v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v5, :cond_5

    :cond_1
    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->c:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v1}, Lcom/rubycell/pianisthd/d/k;->a(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->c:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->e(I)Lorg/cocos2d/g/i;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/c;

    :try_start_0
    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/c;->b()Lcom/rubycell/pianisthd/c/d;

    move-result-object v2

    sget-object v3, Lcom/rubycell/pianisthd/c/d;->c:Lcom/rubycell/pianisthd/c/d;

    if-eq v2, v3, :cond_2

    sget-object v2, Lcom/rubycell/pianisthd/c/d;->a:Lcom/rubycell/pianisthd/c/d;

    invoke-virtual {v0, v2}, Lcom/rubycell/pianisthd/c/c;->a(Lcom/rubycell/pianisthd/c/d;)V

    :cond_2
    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->c:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-static {}, Lcom/rubycell/pianisthd/d/g;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v1}, Lcom/rubycell/pianisthd/d/g;->a(I)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v6, v6, v4, v4}, Lcom/rubycell/pianisthd/d/g;->a(IIIZ)V

    :cond_3
    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_4

    iput-boolean v4, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->h:Z

    :cond_4
    move v0, v5

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public final c(Landroid/view/MotionEvent;)Z
    .locals 11

    const/high16 v10, 0x3f80

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    move v1, v9

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lt v1, v0, :cond_0

    move v0, v7

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-static {v3, v4}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/cocos2d/g/c;->a(Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->a(Lorg/cocos2d/l/e;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    iget v1, v0, Lorg/cocos2d/l/e;->a:F

    iget v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->e:F

    sub-float v2, v1, v0

    invoke-virtual {p0}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->r()Lorg/cocos2d/l/e;

    move-result-object v0

    iget v0, v0, Lorg/cocos2d/l/e;->a:F

    add-float v3, v0, v2

    sget-object v0, Lcom/rubycell/pianisthd/d/b;->j:Lorg/cocos2d/l/g;

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    sget v4, Lcom/rubycell/pianisthd/d/i;->x:I

    int-to-float v4, v4

    sub-float/2addr v0, v4

    sub-float/2addr v0, v10

    cmpg-float v0, v3, v0

    if-gtz v0, :cond_1

    sget-object v0, Lcom/rubycell/pianisthd/d/b;->j:Lorg/cocos2d/l/g;

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    sget v3, Lcom/rubycell/pianisthd/d/i;->x:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    :goto_2
    invoke-virtual {p0, v0, v8}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->d(FF)V

    cmpg-float v0, v2, v8

    if-gez v0, :cond_4

    invoke-static {}, Lcom/rubycell/pianisthd/d/i;->c()V

    :goto_3
    iput v1, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->e:F

    move v0, v7

    goto :goto_1

    :cond_1
    cmpl-float v0, v3, v10

    if-ltz v0, :cond_2

    move v0, v8

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/rubycell/pianisthd/d/i;->h:Ljava/util/HashMap;

    sget v4, Lcom/rubycell/pianisthd/d/i;->z:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/c;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/c;->c()Lorg/cocos2d/l/e;

    move-result-object v0

    iget v0, v0, Lorg/cocos2d/l/e;->a:F

    neg-float v0, v0

    cmpl-float v0, v3, v0

    if-lez v0, :cond_3

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->h:Ljava/util/HashMap;

    sget v3, Lcom/rubycell/pianisthd/d/i;->z:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/c;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/c;->c()Lorg/cocos2d/l/e;

    move-result-object v0

    iget v0, v0, Lorg/cocos2d/l/e;->a:F

    neg-float v0, v0

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/rubycell/pianisthd/d/i;->h:Ljava/util/HashMap;

    sget v4, Lcom/rubycell/pianisthd/d/i;->y:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/c;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/c;->c()Lorg/cocos2d/l/e;

    move-result-object v0

    iget v0, v0, Lorg/cocos2d/l/e;->a:F

    neg-float v0, v0

    sget-object v4, Lcom/rubycell/pianisthd/d/b;->j:Lorg/cocos2d/l/g;

    iget v4, v4, Lorg/cocos2d/l/g;->a:F

    add-float/2addr v0, v4

    cmpg-float v0, v3, v0

    if-gez v0, :cond_b

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->h:Ljava/util/HashMap;

    sget v3, Lcom/rubycell/pianisthd/d/i;->y:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/c;

    invoke-virtual {v0}, Lcom/rubycell/pianisthd/c/c;->c()Lorg/cocos2d/l/e;

    move-result-object v0

    iget v0, v0, Lorg/cocos2d/l/e;->a:F

    neg-float v0, v0

    sget-object v3, Lcom/rubycell/pianisthd/d/b;->j:Lorg/cocos2d/l/g;

    iget v3, v3, Lorg/cocos2d/l/g;->a:F

    add-float/2addr v0, v3

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/rubycell/pianisthd/d/i;->b()V

    goto :goto_3

    :cond_5
    sget v0, Lcom/rubycell/pianisthd/d/i;->z:I

    if-lt v3, v0, :cond_a

    sget v0, Lcom/rubycell/pianisthd/d/i;->y:I

    if-gt v3, v0, :cond_a

    iget-boolean v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->h:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->c:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->c:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v3, v0, :cond_a

    :cond_6
    :try_start_0
    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->c:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->e(I)Lorg/cocos2d/g/i;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/c;

    sget-object v4, Lcom/rubycell/pianisthd/c/d;->a:Lcom/rubycell/pianisthd/c/d;

    invoke-virtual {v0, v4}, Lcom/rubycell/pianisthd/c/c;->a(Lcom/rubycell/pianisthd/c/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_4
    invoke-virtual {p0, v3}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->e(I)Lorg/cocos2d/g/i;

    move-result-object v0

    check-cast v0, Lcom/rubycell/pianisthd/c/c;

    sget-object v4, Lcom/rubycell/pianisthd/c/d;->b:Lcom/rubycell/pianisthd/c/d;

    invoke-virtual {v0, v4}, Lcom/rubycell/pianisthd/c/c;->a(Lcom/rubycell/pianisthd/c/d;)V

    iget-object v4, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->c:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/rubycell/pianisthd/d/k;->a(I)V

    sget v4, Lcom/rubycell/pianisthd/d/b;->r:I

    sub-int v5, v3, v7

    add-int/lit8 v5, v5, 0x15

    invoke-static {v4, v5, v2, v10}, Lcom/rubycell/pianisthd/d/k;->a(IIIF)V

    invoke-direct {p0}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->b()V

    invoke-static {}, Lcom/rubycell/pianisthd/d/g;->a()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v2}, Lcom/rubycell/pianisthd/d/g;->a(I)V

    sub-int v4, v3, v7

    add-int/lit8 v4, v4, 0x15

    invoke-static {v2, v4, v9, v9}, Lcom/rubycell/pianisthd/d/g;->a(IIIZ)V

    :cond_7
    iget-object v2, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/rubycell/pianisthd/d/b;->u:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->d:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->c(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->d:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->b(Ljava/util/ArrayList;)V

    :cond_8
    sget v0, Lcom/rubycell/pianisthd/d/i;->z:I

    if-lt v3, v0, :cond_a

    sget v0, Lcom/rubycell/pianisthd/d/i;->y:I

    if-gt v3, v0, :cond_a

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    sget-boolean v0, Lcom/rubycell/pianisthd/d/i;->u:Z

    if-nez v0, :cond_a

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->w:Lcom/rubycell/pianisthd/c/h;

    if-eqz v0, :cond_a

    :try_start_1
    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->g:Lcom/rubycell/pianisthd/ui/b;

    invoke-static {}, Lorg/cocos2d/a/a;->a()Lorg/cocos2d/a/a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/cocos2d/a/a;->a(Lorg/cocos2d/g/i;)V

    iget v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->f:I

    if-gez v0, :cond_9

    const/4 v0, 0x0

    iput v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->f:I

    :cond_9
    iget-object v2, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->g:Lcom/rubycell/pianisthd/ui/b;

    const/4 v3, 0x0

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->k:Ljava/util/ArrayList;

    iget v4, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->f:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v2, v3, v0}, Lcom/rubycell/pianisthd/ui/b;->d(FF)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/rubycell/pianisthd/d/i;->v:Z

    iget v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->f:I

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/rubycell/pianisthd/d/i;->a(IZ)V

    invoke-static {}, Lcom/rubycell/pianisthd/d/i;->d()V

    iget v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->f:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->a(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_a
    :goto_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catch_1
    move-exception v0

    goto/16 :goto_4

    :cond_b
    move v0, v3

    goto/16 :goto_2
.end method

.method public onMoveLeftDone(Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/rubycell/pianisthd/d/i;->c()V

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->h:Z

    :cond_0
    return-void
.end method

.method public onMoveRightDone(Ljava/lang/Object;)V
    .locals 1

    invoke-static {}, Lcom/rubycell/pianisthd/d/i;->b()V

    iget-object v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->h:Z

    :cond_0
    return-void
.end method

.method public onStopPos(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    const/4 v5, 0x0

    const/4 v8, 0x1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->f:I

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    :try_start_0
    sget-object v0, Lcom/rubycell/pianisthd/d/i;->n:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    move v4, v5

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lt v4, v1, :cond_1

    :cond_0
    :goto_1
    sget-object v0, Lcom/rubycell/pianisthd/d/i;->l:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->d(Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v0, :cond_7

    sget-boolean v1, Lcom/rubycell/pianisthd/d/b;->J:Z

    if-nez v1, :cond_2

    if-eqz v3, :cond_2

    sput-boolean v5, Lcom/rubycell/pianisthd/d/i;->v:Z

    :goto_2
    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/rubycell/pianisthd/d/k;->a(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    :cond_2
    move v4, v5

    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v4, v1, :cond_5

    if-nez v3, :cond_3

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->p:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-static {v2, v8}, Lcom/rubycell/pianisthd/d/i;->a(IZ)V

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->p:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_4
    :goto_4
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->a(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rubycell/pianisthd/c/e;

    invoke-virtual {v1}, Lcom/rubycell/pianisthd/c/e;->g()I

    move-result v5

    invoke-virtual {v1}, Lcom/rubycell/pianisthd/c/e;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    sget v1, Lcom/rubycell/pianisthd/d/b;->r:I

    sub-int v6, v5, v8

    add-int/lit8 v6, v6, 0x15

    const/high16 v7, 0x3f80

    invoke-static {v1, v6, v5, v7}, Lcom/rubycell/pianisthd/d/k;->a(IIIF)V

    sget-object v1, Lcom/rubycell/pianisthd/d/i;->h:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rubycell/pianisthd/c/c;

    invoke-virtual {p0, v1}, Lcom/rubycell/pianisthd/ui/OneRowKeyboard;->a(Lcom/rubycell/pianisthd/c/c;)V

    :goto_5
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_3

    :cond_6
    sget v1, Lcom/rubycell/pianisthd/d/b;->r:I

    sub-int v6, v5, v8

    add-int/lit8 v6, v6, 0x15

    const v7, 0x3f333333

    invoke-static {v1, v6, v5, v7}, Lcom/rubycell/pianisthd/d/k;->a(IIIF)V

    goto :goto_5

    :cond_7
    sget-object v0, Lcom/rubycell/pianisthd/d/i;->p:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v2, v8}, Lcom/rubycell/pianisthd/d/i;->a(IZ)V

    sget-object v0, Lcom/rubycell/pianisthd/d/i;->p:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    :catch_0
    move-exception v0

    goto/16 :goto_1
.end method
