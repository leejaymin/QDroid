.class abstract Lorg/cocos2d/tests/bq;
.super Lorg/cocos2d/e/b;


# instance fields
.field a:Lorg/cocos2d/g/o;

.field b:Lorg/cocos2d/g/o;

.field c:Lorg/cocos2d/g/o;


# direct methods
.method public constructor <init>()V
    .locals 10

    const/4 v6, 0x0

    const/high16 v3, 0x4270

    const/high16 v9, 0x41f0

    const/4 v8, 0x1

    const/high16 v7, 0x4000

    invoke-direct {p0}, Lorg/cocos2d/e/b;-><init>()V

    invoke-static {}, Lorg/cocos2d/g/s;->a()Lorg/cocos2d/g/s;

    move-result-object v0

    const-string v1, "grossini.png"

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/s;->a(Ljava/lang/String;)Lorg/cocos2d/opengl/i;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/opengl/i;)Lorg/cocos2d/g/o;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/tests/bq;->a:Lorg/cocos2d/g/o;

    const-string v0, "grossinis_sister1.png"

    invoke-static {v0}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/tests/bq;->b:Lorg/cocos2d/g/o;

    const-string v0, "grossinis_sister2.png"

    invoke-static {v0}, Lorg/cocos2d/g/o;->a(Ljava/lang/String;)Lorg/cocos2d/g/o;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/tests/bq;->c:Lorg/cocos2d/g/o;

    iget-object v0, p0, Lorg/cocos2d/tests/bq;->a:Lorg/cocos2d/g/o;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/tests/bq;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    iget-object v0, p0, Lorg/cocos2d/tests/bq;->c:Lorg/cocos2d/g/o;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/tests/bq;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    iget-object v0, p0, Lorg/cocos2d/tests/bq;->b:Lorg/cocos2d/g/o;

    invoke-virtual {p0, v0, v8}, Lorg/cocos2d/tests/bq;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    invoke-static {}, Lorg/cocos2d/g/c;->e()Lorg/cocos2d/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2d/g/c;->f()Lorg/cocos2d/l/g;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/tests/bq;->a:Lorg/cocos2d/g/o;

    const/high16 v2, 0x4248

    invoke-static {v3, v2}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    iget-object v1, p0, Lorg/cocos2d/tests/bq;->c:Lorg/cocos2d/g/o;

    const/high16 v2, 0x4316

    invoke-static {v3, v2}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    iget-object v1, p0, Lorg/cocos2d/tests/bq;->b:Lorg/cocos2d/g/o;

    const/high16 v2, 0x437a

    invoke-static {v3, v2}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    invoke-virtual {p0}, Lorg/cocos2d/tests/bq;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DroidSans"

    const/high16 v3, 0x41c0

    invoke-static {v1, v2, v3}, Lorg/cocos2d/g/d;->a(Ljava/lang/String;Ljava/lang/String;F)Lorg/cocos2d/g/d;

    move-result-object v1

    invoke-virtual {p0, v1, v8}, Lorg/cocos2d/tests/bq;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    iget v2, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v2, v7

    iget v3, v0, Lorg/cocos2d/l/g;->b:F

    const/high16 v4, 0x4248

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/cocos2d/g/d;->e(Lorg/cocos2d/l/e;)V

    const-string v1, "b1.png"

    const-string v2, "b2.png"

    const-string v3, "backCallback"

    invoke-static {v1, v2, p0, v3}, Lorg/cocos2d/f/e;->a(Ljava/lang/String;Ljava/lang/String;Lorg/cocos2d/g/i;Ljava/lang/String;)Lorg/cocos2d/f/e;

    move-result-object v1

    const-string v2, "r1.png"

    const-string v3, "r2.png"

    const-string v4, "restartCallback"

    invoke-static {v2, v3, p0, v4}, Lorg/cocos2d/f/e;->a(Ljava/lang/String;Ljava/lang/String;Lorg/cocos2d/g/i;Ljava/lang/String;)Lorg/cocos2d/f/e;

    move-result-object v2

    const-string v3, "f1.png"

    const-string v4, "f2.png"

    const-string v5, "nextCallback"

    invoke-static {v3, v4, p0, v5}, Lorg/cocos2d/f/e;->a(Ljava/lang/String;Ljava/lang/String;Lorg/cocos2d/g/i;Ljava/lang/String;)Lorg/cocos2d/f/e;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Lorg/cocos2d/f/c;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    aput-object v2, v4, v8

    const/4 v5, 0x2

    aput-object v3, v4, v5

    invoke-static {v4}, Lorg/cocos2d/f/a;->a([Lorg/cocos2d/f/c;)Lorg/cocos2d/f/a;

    move-result-object v4

    invoke-static {v6, v6}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/cocos2d/f/a;->e(Lorg/cocos2d/l/e;)V

    iget v5, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v5, v7

    const/high16 v6, 0x42c8

    sub-float/2addr v5, v6

    invoke-static {v5, v9}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/cocos2d/f/e;->e(Lorg/cocos2d/l/e;)V

    iget v1, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v1, v7

    invoke-static {v1, v9}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/cocos2d/f/e;->e(Lorg/cocos2d/l/e;)V

    iget v0, v0, Lorg/cocos2d/l/g;->a:F

    div-float/2addr v0, v7

    const/high16 v1, 0x42c8

    add-float/2addr v0, v1

    invoke-static {v0, v9}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/cocos2d/f/e;->e(Lorg/cocos2d/l/e;)V

    invoke-virtual {p0, v4, v8}, Lorg/cocos2d/tests/bq;->a(Lorg/cocos2d/g/i;I)Lorg/cocos2d/g/i;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "No Title"

    return-object v0
.end method

.method public final b()V
    .locals 3

    const/high16 v2, 0x4270

    iget-object v0, p0, Lorg/cocos2d/tests/bq;->a:Lorg/cocos2d/g/o;

    const/high16 v1, 0x42f0

    invoke-static {v2, v1}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    iget-object v0, p0, Lorg/cocos2d/tests/bq;->b:Lorg/cocos2d/g/o;

    const/high16 v1, 0x435c

    invoke-static {v2, v1}, Lorg/cocos2d/l/e;->a(FF)Lorg/cocos2d/l/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->e(Lorg/cocos2d/l/e;)V

    iget-object v0, p0, Lorg/cocos2d/tests/bq;->c:Lorg/cocos2d/g/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->c(Z)V

    return-void
.end method
