.class Lorg/cocos2d/tests/em;
.super Lorg/cocos2d/tests/en;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2d/tests/en;-><init>()V

    return-void
.end method


# virtual methods
.method public final a_()V
    .locals 15

    const/16 v14, 0xa

    const/high16 v6, 0x437a

    const/high16 v4, 0x3f80

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-super {p0}, Lorg/cocos2d/tests/en;->a_()V

    iget-object v0, p0, Lorg/cocos2d/tests/em;->e:Lorg/cocos2d/g/o;

    invoke-virtual {v0}, Lorg/cocos2d/g/o;->w()Lorg/cocos2d/g/i;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/tests/em;->e:Lorg/cocos2d/g/o;

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/g/i;->a(Lorg/cocos2d/g/i;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2d/tests/em;->e:Lorg/cocos2d/g/o;

    invoke-static {}, Lorg/cocos2d/g/k;->a()Lorg/cocos2d/g/k;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/tests/em;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    const-string v1, "background3.png"

    invoke-static {v1}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/tests/em;->e:Lorg/cocos2d/g/o;

    const-string v3, "background3.png"

    invoke-static {v3}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v8

    const/high16 v3, 0x3f00

    invoke-virtual/range {v0 .. v6}, Lorg/cocos2d/g/k;->a(Lorg/cocos2d/g/i;IFFFF)Lorg/cocos2d/g/i;

    const/4 v9, 0x2

    const/high16 v10, 0x3fc0

    const/high16 v13, 0x4248

    move-object v7, v0

    move v11, v4

    move v12, v5

    invoke-virtual/range {v7 .. v13}, Lorg/cocos2d/g/k;->a(Lorg/cocos2d/g/i;IFFFF)Lorg/cocos2d/g/i;

    invoke-static {}, Lorg/cocos2d/h/d;->b()Lorg/cocos2d/h/d;

    move-result-object v3

    iput-object v3, p0, Lorg/cocos2d/tests/em;->d:Lorg/cocos2d/h/l;

    iget-object v3, p0, Lorg/cocos2d/tests/em;->d:Lorg/cocos2d/h/l;

    invoke-virtual {v1, v3, v14}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    iget-object v1, p0, Lorg/cocos2d/tests/em;->d:Lorg/cocos2d/h/l;

    const/high16 v3, 0x4348

    invoke-static {v6, v3}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/cocos2d/h/l;->e(Lorg/cocos2d/l/e;)V

    invoke-static {}, Lorg/cocos2d/h/k;->b()Lorg/cocos2d/h/k;

    move-result-object v1

    invoke-virtual {v8, v1, v14}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    const/high16 v1, 0x4080

    const/high16 v3, 0x4396

    invoke-static {v3, v5}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/cocos2d/a/f/l;->a(FLorg/cocos2d/l/e;)Lorg/cocos2d/a/f/l;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/a/f/l;->m()Lorg/cocos2d/a/f/l;

    move-result-object v3

    new-array v2, v2, [Lorg/cocos2d/a/a/b;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lorg/cocos2d/a/f/v;->a(Lorg/cocos2d/a/a/b;[Lorg/cocos2d/a/a/b;)Lorg/cocos2d/a/f/v;

    move-result-object v1

    invoke-static {v1}, Lorg/cocos2d/a/a/d;->a(Lorg/cocos2d/a/f/i;)Lorg/cocos2d/a/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/k;->a(Lorg/cocos2d/a/a/a;)Lorg/cocos2d/a/a/a;

    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    const-string v0, "Parallax + Particles"

    return-object v0
.end method
