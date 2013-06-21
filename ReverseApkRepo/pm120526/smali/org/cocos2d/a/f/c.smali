.class public final Lorg/cocos2d/a/f/c;
.super Lorg/cocos2d/a/f/b;


# instance fields
.field final e:Lorg/cocos2d/l/a;


# direct methods
.method private constructor <init>(FLorg/cocos2d/l/a;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lorg/cocos2d/a/f/b;-><init>(FLorg/cocos2d/l/a;)V

    new-instance v0, Lorg/cocos2d/l/a;

    invoke-direct {v0}, Lorg/cocos2d/l/a;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/a/f/c;->e:Lorg/cocos2d/l/a;

    iget-object v0, p0, Lorg/cocos2d/a/f/c;->e:Lorg/cocos2d/l/a;

    iget-object v1, p2, Lorg/cocos2d/l/a;->b:Lorg/cocos2d/l/e;

    iget v1, v1, Lorg/cocos2d/l/e;->a:F

    iget-object v2, p2, Lorg/cocos2d/l/a;->b:Lorg/cocos2d/l/e;

    iget v2, v2, Lorg/cocos2d/l/e;->b:F

    invoke-static {v1, v2}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    iput-object v1, v0, Lorg/cocos2d/l/a;->b:Lorg/cocos2d/l/e;

    iget-object v0, p0, Lorg/cocos2d/a/f/c;->e:Lorg/cocos2d/l/a;

    iget-object v1, p2, Lorg/cocos2d/l/a;->c:Lorg/cocos2d/l/e;

    iget v1, v1, Lorg/cocos2d/l/e;->a:F

    iget-object v2, p2, Lorg/cocos2d/l/a;->c:Lorg/cocos2d/l/e;

    iget v2, v2, Lorg/cocos2d/l/e;->b:F

    invoke-static {v1, v2}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    iput-object v1, v0, Lorg/cocos2d/l/a;->c:Lorg/cocos2d/l/e;

    iget-object v0, p0, Lorg/cocos2d/a/f/c;->e:Lorg/cocos2d/l/a;

    iget-object v1, p2, Lorg/cocos2d/l/a;->a:Lorg/cocos2d/l/e;

    iget v1, v1, Lorg/cocos2d/l/e;->a:F

    iget-object v2, p2, Lorg/cocos2d/l/a;->a:Lorg/cocos2d/l/e;

    iget v2, v2, Lorg/cocos2d/l/e;->b:F

    invoke-static {v1, v2}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    iput-object v1, v0, Lorg/cocos2d/l/a;->a:Lorg/cocos2d/l/e;

    return-void
.end method

.method public static b(Lorg/cocos2d/l/a;)Lorg/cocos2d/a/f/c;
    .locals 2

    new-instance v0, Lorg/cocos2d/a/f/c;

    const/high16 v1, 0x4000

    invoke-direct {v0, v1, p0}, Lorg/cocos2d/a/f/c;-><init>(FLorg/cocos2d/l/a;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/cocos2d/g/i;)V
    .locals 3

    invoke-super {p0, p1}, Lorg/cocos2d/a/f/b;->a(Lorg/cocos2d/g/i;)V

    iget-object v0, p0, Lorg/cocos2d/a/f/c;->c:Lorg/cocos2d/l/a;

    iget-object v1, p0, Lorg/cocos2d/a/f/c;->e:Lorg/cocos2d/l/a;

    iget-object v1, v1, Lorg/cocos2d/l/a;->b:Lorg/cocos2d/l/e;

    iget-object v2, p0, Lorg/cocos2d/a/f/c;->d:Lorg/cocos2d/l/e;

    invoke-static {v1, v2}, Lorg/cocos2d/l/e;->c(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v1

    iput-object v1, v0, Lorg/cocos2d/l/a;->b:Lorg/cocos2d/l/e;

    iget-object v0, p0, Lorg/cocos2d/a/f/c;->c:Lorg/cocos2d/l/a;

    iget-object v1, p0, Lorg/cocos2d/a/f/c;->e:Lorg/cocos2d/l/a;

    iget-object v1, v1, Lorg/cocos2d/l/a;->c:Lorg/cocos2d/l/e;

    iget-object v2, p0, Lorg/cocos2d/a/f/c;->d:Lorg/cocos2d/l/e;

    invoke-static {v1, v2}, Lorg/cocos2d/l/e;->c(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v1

    iput-object v1, v0, Lorg/cocos2d/l/a;->c:Lorg/cocos2d/l/e;

    iget-object v0, p0, Lorg/cocos2d/a/f/c;->c:Lorg/cocos2d/l/a;

    iget-object v1, p0, Lorg/cocos2d/a/f/c;->e:Lorg/cocos2d/l/a;

    iget-object v1, v1, Lorg/cocos2d/l/a;->a:Lorg/cocos2d/l/e;

    iget-object v2, p0, Lorg/cocos2d/a/f/c;->d:Lorg/cocos2d/l/e;

    invoke-static {v1, v2}, Lorg/cocos2d/l/e;->c(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v1

    iput-object v1, v0, Lorg/cocos2d/l/a;->a:Lorg/cocos2d/l/e;

    return-void
.end method

.method public final synthetic j()Lorg/cocos2d/a/f/b;
    .locals 3

    new-instance v0, Lorg/cocos2d/l/a;

    invoke-direct {v0}, Lorg/cocos2d/l/a;-><init>()V

    iget-object v1, p0, Lorg/cocos2d/a/f/c;->c:Lorg/cocos2d/l/a;

    iget-object v1, v1, Lorg/cocos2d/l/a;->a:Lorg/cocos2d/l/e;

    invoke-static {v1}, Lorg/cocos2d/l/e;->b(Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v1

    iput-object v1, v0, Lorg/cocos2d/l/a;->a:Lorg/cocos2d/l/e;

    iget-object v1, p0, Lorg/cocos2d/a/f/c;->c:Lorg/cocos2d/l/a;

    iget-object v1, v1, Lorg/cocos2d/l/a;->c:Lorg/cocos2d/l/e;

    iget-object v2, p0, Lorg/cocos2d/a/f/c;->c:Lorg/cocos2d/l/a;

    iget-object v2, v2, Lorg/cocos2d/l/a;->a:Lorg/cocos2d/l/e;

    invoke-static {v2}, Lorg/cocos2d/l/e;->b(Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/cocos2d/l/e;->b(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v1

    iput-object v1, v0, Lorg/cocos2d/l/a;->b:Lorg/cocos2d/l/e;

    iget-object v1, p0, Lorg/cocos2d/a/f/c;->c:Lorg/cocos2d/l/a;

    iget-object v1, v1, Lorg/cocos2d/l/a;->b:Lorg/cocos2d/l/e;

    iget-object v2, p0, Lorg/cocos2d/a/f/c;->c:Lorg/cocos2d/l/a;

    iget-object v2, v2, Lorg/cocos2d/l/a;->a:Lorg/cocos2d/l/e;

    invoke-static {v2}, Lorg/cocos2d/l/e;->b(Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/cocos2d/l/e;->b(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Lorg/cocos2d/l/e;

    move-result-object v1

    iput-object v1, v0, Lorg/cocos2d/l/a;->c:Lorg/cocos2d/l/e;

    new-instance v1, Lorg/cocos2d/a/f/c;

    iget v2, p0, Lorg/cocos2d/a/f/c;->b:F

    invoke-direct {v1, v2, v0}, Lorg/cocos2d/a/f/c;-><init>(FLorg/cocos2d/l/a;)V

    return-object v1
.end method

.method public final synthetic l()Lorg/cocos2d/a/f/i;
    .locals 3

    new-instance v0, Lorg/cocos2d/a/f/c;

    iget v1, p0, Lorg/cocos2d/a/f/c;->b:F

    iget-object v2, p0, Lorg/cocos2d/a/f/c;->c:Lorg/cocos2d/l/a;

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/a/f/c;-><init>(FLorg/cocos2d/l/a;)V

    return-object v0
.end method
