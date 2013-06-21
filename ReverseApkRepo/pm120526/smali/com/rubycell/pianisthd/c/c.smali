.class public final Lcom/rubycell/pianisthd/c/c;
.super Lorg/cocos2d/g/i;


# instance fields
.field protected a:Lorg/cocos2d/g/i;

.field protected b:Lorg/cocos2d/g/i;

.field protected c:Lorg/cocos2d/g/i;

.field protected d:Lcom/rubycell/pianisthd/c/d;

.field protected e:Z

.field protected f:Ljava/lang/String;

.field protected g:I

.field protected h:Lorg/cocos2d/l/e;

.field protected i:F

.field protected j:Lorg/cocos2d/l/g;


# direct methods
.method public constructor <init>(Lorg/cocos2d/g/i;Lorg/cocos2d/g/i;Lorg/cocos2d/g/i;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/high16 v1, 0x3f00

    invoke-direct {p0}, Lorg/cocos2d/g/i;-><init>()V

    iput-boolean v2, p0, Lcom/rubycell/pianisthd/c/c;->e:Z

    invoke-virtual {p0, v2}, Lcom/rubycell/pianisthd/c/c;->b(Z)V

    invoke-virtual {p0, v0, v0}, Lcom/rubycell/pianisthd/c/c;->c(FF)V

    iput-object p1, p0, Lcom/rubycell/pianisthd/c/c;->a:Lorg/cocos2d/g/i;

    iput-object p2, p0, Lcom/rubycell/pianisthd/c/c;->b:Lorg/cocos2d/g/i;

    iput-object p3, p0, Lcom/rubycell/pianisthd/c/c;->c:Lorg/cocos2d/g/i;

    iget-object v0, p0, Lcom/rubycell/pianisthd/c/c;->a:Lorg/cocos2d/g/i;

    invoke-virtual {v0, v2}, Lorg/cocos2d/g/i;->b(Z)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/c/c;->a:Lorg/cocos2d/g/i;

    invoke-virtual {v0, v1, v1}, Lorg/cocos2d/g/i;->c(FF)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/c/c;->b:Lorg/cocos2d/g/i;

    invoke-virtual {v0, v2}, Lorg/cocos2d/g/i;->b(Z)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/c/c;->b:Lorg/cocos2d/g/i;

    invoke-virtual {v0, v1, v1}, Lorg/cocos2d/g/i;->c(FF)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/c/c;->c:Lorg/cocos2d/g/i;

    invoke-virtual {v0, v2}, Lorg/cocos2d/g/i;->b(Z)V

    iget-object v0, p0, Lcom/rubycell/pianisthd/c/c;->c:Lorg/cocos2d/g/i;

    invoke-virtual {v0, v1, v1}, Lorg/cocos2d/g/i;->c(FF)V

    sget-object v0, Lcom/rubycell/pianisthd/c/d;->a:Lcom/rubycell/pianisthd/c/d;

    iput-object v0, p0, Lcom/rubycell/pianisthd/c/c;->d:Lcom/rubycell/pianisthd/c/d;

    iget-object v0, p0, Lcom/rubycell/pianisthd/c/c;->d:Lcom/rubycell/pianisthd/c/d;

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/c/c;->a(Lcom/rubycell/pianisthd/c/d;)V

    invoke-virtual {p1}, Lorg/cocos2d/g/i;->r()Lorg/cocos2d/l/e;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/c/c;->h:Lorg/cocos2d/l/e;

    invoke-virtual {p1}, Lorg/cocos2d/g/i;->n()Lorg/cocos2d/l/g;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/pianisthd/c/c;->j:Lorg/cocos2d/l/g;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/rubycell/pianisthd/c/c;->g:I

    return v0
.end method

.method public final a(F)V
    .locals 0

    iput p1, p0, Lcom/rubycell/pianisthd/c/c;->i:F

    return-void
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/rubycell/pianisthd/c/c;->g:I

    return-void
.end method

.method public final a(Lcom/rubycell/pianisthd/c/d;)V
    .locals 1

    iput-object p1, p0, Lcom/rubycell/pianisthd/c/c;->d:Lcom/rubycell/pianisthd/c/d;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/c/c;->d(Z)V

    sget-object v0, Lcom/rubycell/pianisthd/c/d;->b:Lcom/rubycell/pianisthd/c/d;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/c/c;->a:Lorg/cocos2d/g/i;

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/c/c;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/rubycell/pianisthd/c/d;->c:Lcom/rubycell/pianisthd/c/d;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/rubycell/pianisthd/c/c;->c:Lorg/cocos2d/g/i;

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/c/c;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/rubycell/pianisthd/c/c;->b:Lorg/cocos2d/g/i;

    invoke-virtual {p0, v0}, Lcom/rubycell/pianisthd/c/c;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/c/c;->f:Ljava/lang/String;

    return-void
.end method

.method public final b()Lcom/rubycell/pianisthd/c/d;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/pianisthd/c/c;->d:Lcom/rubycell/pianisthd/c/d;

    return-object v0
.end method

.method public final c()Lorg/cocos2d/l/e;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/pianisthd/c/c;->h:Lorg/cocos2d/l/e;

    return-object v0
.end method

.method public final d()F
    .locals 1

    iget v0, p0, Lcom/rubycell/pianisthd/c/c;->i:F

    return v0
.end method

.method public final e()Lorg/cocos2d/l/g;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/pianisthd/c/c;->j:Lorg/cocos2d/l/g;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    :try_start_0
    iget v2, p0, Lcom/rubycell/pianisthd/c/c;->g:I

    move-object v0, p1

    check-cast v0, Lcom/rubycell/pianisthd/c/c;

    move-object v1, v0

    iget v1, v1, Lcom/rubycell/pianisthd/c/c;->g:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v2, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/pianisthd/c/c;->f:Ljava/lang/String;

    return-object v0
.end method
