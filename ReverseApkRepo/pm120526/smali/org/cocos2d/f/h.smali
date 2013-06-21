.class public final Lorg/cocos2d/f/h;
.super Lorg/cocos2d/f/c;


# instance fields
.field private g:I

.field private h:Ljava/util/ArrayList;


# direct methods
.method private varargs constructor <init>(Lorg/cocos2d/g/i;Ljava/lang/String;[Lorg/cocos2d/f/c;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lorg/cocos2d/f/c;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/cocos2d/f/h;->h:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/cocos2d/f/h;->h:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const v0, 0x7fffffff

    iput v0, p0, Lorg/cocos2d/f/h;->g:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/cocos2d/f/h;->a(I)V

    return-void
.end method

.method public static varargs a(Lorg/cocos2d/g/i;Ljava/lang/String;[Lorg/cocos2d/f/c;)Lorg/cocos2d/f/h;
    .locals 1

    new-instance v0, Lorg/cocos2d/f/h;

    invoke-direct {v0, p0, p1, p2}, Lorg/cocos2d/f/h;-><init>(Lorg/cocos2d/g/i;Ljava/lang/String;[Lorg/cocos2d/f/c;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/f/h;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/f/h;->h:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/f/h;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final a(I)V
    .locals 4

    const v2, -0x3f3fafff

    const/high16 v3, 0x4000

    iget v0, p0, Lorg/cocos2d/f/h;->g:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lorg/cocos2d/f/h;->g:I

    invoke-virtual {p0, v2}, Lorg/cocos2d/f/h;->d(I)V

    iget-object v0, p0, Lorg/cocos2d/f/h;->h:Ljava/util/ArrayList;

    iget v1, p0, Lorg/cocos2d/f/h;->g:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/f/c;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/cocos2d/f/h;->a(Lorg/cocos2d/g/i;II)Lorg/cocos2d/g/i;

    invoke-virtual {v0}, Lorg/cocos2d/f/c;->n()Lorg/cocos2d/l/g;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cocos2d/f/h;->a(Lorg/cocos2d/l/g;)V

    iget v2, v1, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v2, v3

    iget v1, v1, Lorg/cocos2d/l/g;->b:F

    div-float/2addr v1, v3

    invoke-static {v2, v1}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/f/c;->e(Lorg/cocos2d/l/e;)V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 2

    invoke-super {p0, p1}, Lorg/cocos2d/f/c;->a(Z)V

    iget-object v0, p0, Lorg/cocos2d/f/h;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/cocos2d/f/c;

    invoke-virtual {p0, p1}, Lorg/cocos2d/f/c;->a(Z)V

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    iget-boolean v0, p0, Lorg/cocos2d/f/h;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/cocos2d/f/h;->g:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/cocos2d/f/h;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/cocos2d/f/h;->a(I)V

    :cond_0
    invoke-super {p0}, Lorg/cocos2d/f/c;->c()V

    return-void
.end method

.method public final d()V
    .locals 2

    invoke-super {p0}, Lorg/cocos2d/f/c;->d()V

    iget-object v0, p0, Lorg/cocos2d/f/h;->h:Ljava/util/ArrayList;

    iget v1, p0, Lorg/cocos2d/f/h;->g:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/cocos2d/f/c;

    invoke-virtual {p0}, Lorg/cocos2d/f/c;->d()V

    return-void
.end method

.method public final e()V
    .locals 2

    invoke-super {p0}, Lorg/cocos2d/f/c;->e()V

    iget-object v0, p0, Lorg/cocos2d/f/h;->h:Ljava/util/ArrayList;

    iget v1, p0, Lorg/cocos2d/f/h;->g:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/cocos2d/f/c;

    invoke-virtual {p0}, Lorg/cocos2d/f/c;->e()V

    return-void
.end method
