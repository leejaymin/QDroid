.class public Lorg/cocos2d/f/g;
.super Lorg/cocos2d/f/c;

# interfaces
.implements Lorg/cocos2d/i/c;


# static fields
.field static final synthetic j:Z


# instance fields
.field protected g:Lorg/cocos2d/g/i;

.field protected h:Lorg/cocos2d/g/i;

.field protected i:Lorg/cocos2d/g/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/cocos2d/f/g;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/f/g;->j:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/cocos2d/g/i;Lorg/cocos2d/g/i;Lorg/cocos2d/g/i;Lorg/cocos2d/g/i;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p4, p5}, Lorg/cocos2d/f/c;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lorg/cocos2d/f/g;->j:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Cann\'t set normalImage_ to be null!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/f/g;->g:Lorg/cocos2d/g/i;

    if-eq p1, v0, :cond_1

    invoke-virtual {p1, v1, v1}, Lorg/cocos2d/g/i;->c(FF)V

    invoke-virtual {p1, v2}, Lorg/cocos2d/g/i;->c(Z)V

    iget-object v0, p0, Lorg/cocos2d/f/g;->g:Lorg/cocos2d/g/i;

    invoke-virtual {p0, v0, v2}, Lorg/cocos2d/f/g;->a(Lorg/cocos2d/g/i;Z)V

    invoke-virtual {p0, p1}, Lorg/cocos2d/f/g;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    iput-object p1, p0, Lorg/cocos2d/f/g;->g:Lorg/cocos2d/g/i;

    :cond_1
    sget-boolean v0, Lorg/cocos2d/f/g;->j:Z

    if-nez v0, :cond_2

    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Cann\'t set selectedImage_ to be null!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lorg/cocos2d/f/g;->h:Lorg/cocos2d/g/i;

    if-eq p2, v0, :cond_3

    invoke-virtual {p2, v1, v1}, Lorg/cocos2d/g/i;->c(FF)V

    invoke-virtual {p2, v3}, Lorg/cocos2d/g/i;->c(Z)V

    iget-object v0, p0, Lorg/cocos2d/f/g;->h:Lorg/cocos2d/g/i;

    invoke-virtual {p0, v0, v2}, Lorg/cocos2d/f/g;->a(Lorg/cocos2d/g/i;Z)V

    invoke-virtual {p0, p2}, Lorg/cocos2d/f/g;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    iput-object p2, p0, Lorg/cocos2d/f/g;->h:Lorg/cocos2d/g/i;

    :cond_3
    iget-object v0, p0, Lorg/cocos2d/f/g;->i:Lorg/cocos2d/g/i;

    if-eq p3, v0, :cond_6

    iget-object v0, p0, Lorg/cocos2d/f/g;->i:Lorg/cocos2d/g/i;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/cocos2d/f/g;->i:Lorg/cocos2d/g/i;

    invoke-virtual {p0, v0, v2}, Lorg/cocos2d/f/g;->a(Lorg/cocos2d/g/i;Z)V

    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {p3, v1, v1}, Lorg/cocos2d/g/i;->c(FF)V

    invoke-virtual {p3, v3}, Lorg/cocos2d/g/i;->c(Z)V

    invoke-virtual {p0, p3}, Lorg/cocos2d/f/g;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    :cond_5
    iput-object p3, p0, Lorg/cocos2d/f/g;->i:Lorg/cocos2d/g/i;

    :cond_6
    iget-object v0, p0, Lorg/cocos2d/f/g;->g:Lorg/cocos2d/g/i;

    invoke-virtual {v0}, Lorg/cocos2d/g/i;->n()Lorg/cocos2d/l/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/f/g;->a(Lorg/cocos2d/l/g;)V

    return-void
.end method

.method public static a(Lorg/cocos2d/g/i;Lorg/cocos2d/g/i;Lorg/cocos2d/g/i;Lorg/cocos2d/g/i;Ljava/lang/String;)Lorg/cocos2d/f/g;
    .locals 6

    new-instance v0, Lorg/cocos2d/f/g;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/cocos2d/f/g;-><init>(Lorg/cocos2d/g/i;Lorg/cocos2d/g/i;Lorg/cocos2d/g/i;Lorg/cocos2d/g/i;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lorg/cocos2d/l/j;
    .locals 1

    iget-object p0, p0, Lorg/cocos2d/f/g;->g:Lorg/cocos2d/g/i;

    check-cast p0, Lorg/cocos2d/i/c;

    invoke-interface {p0}, Lorg/cocos2d/i/c;->a()Lorg/cocos2d/l/j;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/f/g;->g:Lorg/cocos2d/g/i;

    check-cast v0, Lorg/cocos2d/i/c;

    invoke-interface {v0, p1}, Lorg/cocos2d/i/c;->a(I)V

    iget-object v0, p0, Lorg/cocos2d/f/g;->h:Lorg/cocos2d/g/i;

    check-cast v0, Lorg/cocos2d/i/c;

    invoke-interface {v0, p1}, Lorg/cocos2d/i/c;->a(I)V

    iget-object v0, p0, Lorg/cocos2d/f/g;->i:Lorg/cocos2d/g/i;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/cocos2d/f/g;->i:Lorg/cocos2d/g/i;

    check-cast p0, Lorg/cocos2d/i/c;

    invoke-interface {p0, p1}, Lorg/cocos2d/i/c;->a(I)V

    :cond_0
    return-void
.end method

.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    iget-boolean v0, p0, Lorg/cocos2d/f/g;->c:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/cocos2d/f/g;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/f/g;->h:Lorg/cocos2d/g/i;

    invoke-virtual {v0, p1}, Lorg/cocos2d/g/i;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/f/g;->g:Lorg/cocos2d/g/i;

    invoke-virtual {v0, p1}, Lorg/cocos2d/g/i;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/cocos2d/f/g;->i:Lorg/cocos2d/g/i;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/cocos2d/f/g;->i:Lorg/cocos2d/g/i;

    invoke-virtual {v0, p1}, Lorg/cocos2d/g/i;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/cocos2d/f/g;->g:Lorg/cocos2d/g/i;

    invoke-virtual {v0, p1}, Lorg/cocos2d/g/i;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_0
.end method

.method public final a(Lorg/cocos2d/l/j;)V
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/f/g;->g:Lorg/cocos2d/g/i;

    check-cast v0, Lorg/cocos2d/i/c;

    invoke-interface {v0, p1}, Lorg/cocos2d/i/c;->a(Lorg/cocos2d/l/j;)V

    iget-object v0, p0, Lorg/cocos2d/f/g;->h:Lorg/cocos2d/g/i;

    check-cast v0, Lorg/cocos2d/i/c;

    invoke-interface {v0, p1}, Lorg/cocos2d/i/c;->a(Lorg/cocos2d/l/j;)V

    iget-object v0, p0, Lorg/cocos2d/f/g;->i:Lorg/cocos2d/g/i;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/cocos2d/f/g;->i:Lorg/cocos2d/g/i;

    check-cast p0, Lorg/cocos2d/i/c;

    invoke-interface {p0, p1}, Lorg/cocos2d/i/c;->a(Lorg/cocos2d/l/j;)V

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lorg/cocos2d/f/c;->a(Z)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/cocos2d/f/g;->g:Lorg/cocos2d/g/i;

    invoke-virtual {v0, v2}, Lorg/cocos2d/g/i;->c(Z)V

    iget-object v0, p0, Lorg/cocos2d/f/g;->h:Lorg/cocos2d/g/i;

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/i;->c(Z)V

    iget-object v0, p0, Lorg/cocos2d/f/g;->i:Lorg/cocos2d/g/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/f/g;->i:Lorg/cocos2d/g/i;

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/i;->c(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/cocos2d/f/g;->i:Lorg/cocos2d/g/i;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/cocos2d/f/g;->g:Lorg/cocos2d/g/i;

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/i;->c(Z)V

    iget-object v0, p0, Lorg/cocos2d/f/g;->h:Lorg/cocos2d/g/i;

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/i;->c(Z)V

    iget-object v0, p0, Lorg/cocos2d/f/g;->i:Lorg/cocos2d/g/i;

    invoke-virtual {v0, v2}, Lorg/cocos2d/g/i;->c(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/cocos2d/f/g;->g:Lorg/cocos2d/g/i;

    invoke-virtual {v0, v2}, Lorg/cocos2d/g/i;->c(Z)V

    iget-object v0, p0, Lorg/cocos2d/f/g;->h:Lorg/cocos2d/g/i;

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/i;->c(Z)V

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    iget-object p0, p0, Lorg/cocos2d/f/g;->g:Lorg/cocos2d/g/i;

    check-cast p0, Lorg/cocos2d/i/c;

    invoke-interface {p0}, Lorg/cocos2d/i/c;->b()I

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Lorg/cocos2d/f/c;->d()V

    iget-object v0, p0, Lorg/cocos2d/f/g;->h:Lorg/cocos2d/g/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/cocos2d/f/g;->g:Lorg/cocos2d/g/i;

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/i;->c(Z)V

    iget-object v0, p0, Lorg/cocos2d/f/g;->h:Lorg/cocos2d/g/i;

    invoke-virtual {v0, v2}, Lorg/cocos2d/g/i;->c(Z)V

    iget-object v0, p0, Lorg/cocos2d/f/g;->i:Lorg/cocos2d/g/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/f/g;->i:Lorg/cocos2d/g/i;

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/i;->c(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/cocos2d/f/g;->g:Lorg/cocos2d/g/i;

    invoke-virtual {v0, v2}, Lorg/cocos2d/g/i;->c(Z)V

    iget-object v0, p0, Lorg/cocos2d/f/g;->h:Lorg/cocos2d/g/i;

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/i;->c(Z)V

    iget-object v0, p0, Lorg/cocos2d/f/g;->i:Lorg/cocos2d/g/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/f/g;->i:Lorg/cocos2d/g/i;

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/i;->c(Z)V

    goto :goto_0
.end method

.method public final e()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lorg/cocos2d/f/c;->e()V

    iget-object v0, p0, Lorg/cocos2d/f/g;->g:Lorg/cocos2d/g/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/i;->c(Z)V

    iget-object v0, p0, Lorg/cocos2d/f/g;->h:Lorg/cocos2d/g/i;

    invoke-virtual {v0, v2}, Lorg/cocos2d/g/i;->c(Z)V

    iget-object v0, p0, Lorg/cocos2d/f/g;->i:Lorg/cocos2d/g/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/f/g;->i:Lorg/cocos2d/g/i;

    invoke-virtual {v0, v2}, Lorg/cocos2d/g/i;->c(Z)V

    :cond_0
    return-void
.end method
