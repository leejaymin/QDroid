.class public Lorg/cocos2d/e/j;
.super Lorg/cocos2d/g/i;


# static fields
.field public static final a:Ljava/lang/String;

.field static final synthetic h:Z


# instance fields
.field b:Lorg/cocos2d/l/g;

.field c:Lorg/cocos2d/l/g;

.field d:I

.field public e:Ljava/util/ArrayList;

.field f:Ljava/util/HashMap;

.field g:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/cocos2d/e/j;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/e/j;->h:Z

    const-class v0, Lorg/cocos2d/e/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/e/j;->a:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    invoke-direct {p0}, Lorg/cocos2d/g/i;-><init>()V

    if-nez p1, :cond_1

    sget-object v0, Lorg/cocos2d/e/j;->a:Ljava/lang/String;

    const-string v1, "TMXTiledMap: tmx file should not bi nil"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lorg/cocos2d/l/g;->a()Lorg/cocos2d/l/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/e/j;->a(Lorg/cocos2d/l/g;)V

    invoke-static {p1}, Lorg/cocos2d/e/g;->a(Ljava/lang/String;)Lorg/cocos2d/e/g;

    move-result-object v1

    sget-boolean v0, Lorg/cocos2d/e/j;->h:Z

    if-nez v0, :cond_2

    iget-object v0, v1, Lorg/cocos2d/e/g;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "TMXTiledMap: Map not found. Please check the filename."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    iget-object v0, v1, Lorg/cocos2d/e/g;->i:Lorg/cocos2d/l/g;

    iput-object v0, p0, Lorg/cocos2d/e/j;->b:Lorg/cocos2d/l/g;

    iget-object v0, v1, Lorg/cocos2d/e/g;->j:Lorg/cocos2d/l/g;

    iput-object v0, p0, Lorg/cocos2d/e/j;->c:Lorg/cocos2d/l/g;

    iget v0, v1, Lorg/cocos2d/e/g;->h:I

    iput v0, p0, Lorg/cocos2d/e/j;->d:I

    iget-object v0, v1, Lorg/cocos2d/e/g;->m:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/cocos2d/e/j;->e:Ljava/util/ArrayList;

    iget-object v0, v1, Lorg/cocos2d/e/g;->n:Ljava/util/HashMap;

    iput-object v0, p0, Lorg/cocos2d/e/j;->f:Ljava/util/HashMap;

    iget-object v0, v1, Lorg/cocos2d/e/g;->o:Ljava/util/HashMap;

    iput-object v0, p0, Lorg/cocos2d/e/j;->g:Ljava/util/HashMap;

    iget-object v0, v1, Lorg/cocos2d/e/g;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v7

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/e/f;

    iget-boolean v4, v0, Lorg/cocos2d/e/f;->d:Z

    if-eqz v4, :cond_3

    invoke-static {v0, v1}, Lorg/cocos2d/e/j;->a(Lorg/cocos2d/e/f;Lorg/cocos2d/e/g;)Lorg/cocos2d/e/k;

    move-result-object v4

    invoke-static {v4, v0, v1}, Lorg/cocos2d/e/e;->a(Lorg/cocos2d/e/k;Lorg/cocos2d/e/f;Lorg/cocos2d/e/g;)Lorg/cocos2d/e/e;

    move-result-object v4

    iput-boolean v7, v0, Lorg/cocos2d/e/f;->f:Z

    invoke-virtual {v4}, Lorg/cocos2d/e/e;->b()V

    invoke-virtual {p0, v4, v3, v3}, Lorg/cocos2d/e/j;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

    invoke-virtual {v4}, Lorg/cocos2d/e/e;->n()Lorg/cocos2d/l/g;

    move-result-object v0

    invoke-virtual {p0}, Lorg/cocos2d/e/j;->n()Lorg/cocos2d/l/g;

    move-result-object v4

    iget v5, v4, Lorg/cocos2d/l/g;->a:F

    iget v6, v0, Lorg/cocos2d/l/g;->a:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    iget v5, v4, Lorg/cocos2d/l/g;->a:F

    :goto_1
    iput v5, v4, Lorg/cocos2d/l/g;->a:F

    iget v5, v4, Lorg/cocos2d/l/g;->b:F

    iget v6, v0, Lorg/cocos2d/l/g;->b:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_5

    iget v0, v4, Lorg/cocos2d/l/g;->b:F

    :goto_2
    iput v0, v4, Lorg/cocos2d/l/g;->b:F

    invoke-virtual {p0, v4}, Lorg/cocos2d/e/j;->a(Lorg/cocos2d/l/g;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_4
    iget v5, v0, Lorg/cocos2d/l/g;->a:F

    goto :goto_1

    :cond_5
    iget v0, v0, Lorg/cocos2d/l/g;->b:F

    goto :goto_2
.end method

.method public static a(Ljava/lang/String;)Lorg/cocos2d/e/j;
    .locals 1

    new-instance v0, Lorg/cocos2d/e/j;

    invoke-direct {v0, p0}, Lorg/cocos2d/e/j;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static a(Lorg/cocos2d/e/f;Lorg/cocos2d/e/g;)Lorg/cocos2d/e/k;
    .locals 9

    const/4 v8, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/cocos2d/e/f;->b:Lorg/cocos2d/l/g;

    iget-object v2, p1, Lorg/cocos2d/e/g;->l:Ljava/util/ArrayList;

    iget-object v3, p1, Lorg/cocos2d/e/g;->l:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v1, Lorg/cocos2d/e/j;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cocos2d: Warning: TMX Layer \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/cocos2d/e/f;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' has no tiles"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0

    :cond_2
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/e/k;

    move v3, v8

    :goto_0
    int-to-float v4, v3

    iget v5, v1, Lorg/cocos2d/l/g;->b:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    move v4, v8

    :goto_1
    int-to-float v5, v4

    iget v6, v1, Lorg/cocos2d/l/g;->a:F

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    int-to-float v5, v4

    iget v6, v1, Lorg/cocos2d/l/g;->a:F

    int-to-float v7, v3

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, p0, Lorg/cocos2d/e/f;->c:Ljava/nio/IntBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/IntBuffer;->get(I)I

    move-result v5

    invoke-static {v5}, Lorg/cocos2d/m/d;->a(I)I

    move-result v5

    if-eqz v5, :cond_4

    iget v6, v0, Lorg/cocos2d/e/k;->b:I

    if-ge v5, v6, :cond_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final a(I)Ljava/util/HashMap;
    .locals 2

    iget-object v0, p0, Lorg/cocos2d/e/j;->g:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    return-object p0
.end method

.method public final a()Lorg/cocos2d/l/g;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/e/j;->b:Lorg/cocos2d/l/g;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lorg/cocos2d/e/e;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/cocos2d/e/j;->C:Ljava/util/List;

    if-nez v0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/e/j;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    move-object v0, v2

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/cocos2d/g/i;

    check-cast p0, Lorg/cocos2d/e/e;

    if-eqz p0, :cond_1

    iget-object v1, p0, Lorg/cocos2d/e/e;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p0

    goto :goto_0
.end method

.method public final b()Lorg/cocos2d/l/g;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/e/j;->c:Lorg/cocos2d/l/g;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lorg/cocos2d/e/i;
    .locals 2

    iget-object v0, p0, Lorg/cocos2d/e/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/cocos2d/e/i;

    iget-object v1, p0, Lorg/cocos2d/e/i;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p0

    goto :goto_0
.end method
