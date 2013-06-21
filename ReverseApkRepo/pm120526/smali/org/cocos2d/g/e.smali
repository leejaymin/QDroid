.class final Lorg/cocos2d/g/e;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/cocos2d/opengl/r;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lorg/cocos2d/g/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/cocos2d/g/e;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a(Lorg/cocos2d/opengl/s;)V
    .locals 9

    const/4 v8, 0x0

    iget-object v1, p0, Lorg/cocos2d/g/e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/cocos2d/g/d;

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lorg/cocos2d/g/d;->a(Lorg/cocos2d/g/d;)Lorg/cocos2d/l/g;

    move-result-object v1

    invoke-static {}, Lorg/cocos2d/l/g;->a()Lorg/cocos2d/l/g;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/cocos2d/l/g;->a(Lorg/cocos2d/l/g;Lorg/cocos2d/l/g;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast p1, Lorg/cocos2d/opengl/i;

    invoke-static {p0}, Lorg/cocos2d/g/d;->b(Lorg/cocos2d/g/d;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lorg/cocos2d/g/d;->c(Lorg/cocos2d/g/d;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lorg/cocos2d/g/d;->d(Lorg/cocos2d/g/d;)F

    move-result v3

    invoke-static {p0}, Lorg/cocos2d/g/d;->e(Lorg/cocos2d/g/d;)I

    move-result v4

    invoke-virtual {p1, v1, v2, v3, v4}, Lorg/cocos2d/opengl/i;->a(Ljava/lang/String;Ljava/lang/String;FI)V

    :goto_1
    iget-object v1, p0, Lorg/cocos2d/g/d;->g:Lorg/cocos2d/opengl/i;

    invoke-virtual {v1}, Lorg/cocos2d/opengl/i;->h()Lorg/cocos2d/l/g;

    move-result-object v1

    iget v2, v1, Lorg/cocos2d/l/g;->a:F

    iget v1, v1, Lorg/cocos2d/l/g;->b:F

    invoke-static {v8, v8, v2, v1}, Lorg/cocos2d/l/f;->a(FFFF)Lorg/cocos2d/l/f;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cocos2d/g/d;->a(Lorg/cocos2d/l/f;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/cocos2d/opengl/i;

    move-object v1, v0

    invoke-static {p0}, Lorg/cocos2d/g/d;->b(Lorg/cocos2d/g/d;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lorg/cocos2d/g/d;->a(Lorg/cocos2d/g/d;)Lorg/cocos2d/l/g;

    move-result-object v3

    invoke-static {p0}, Lorg/cocos2d/g/d;->f(Lorg/cocos2d/g/d;)Lorg/cocos2d/g/f;

    move-result-object v4

    invoke-static {p0}, Lorg/cocos2d/g/d;->c(Lorg/cocos2d/g/d;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0}, Lorg/cocos2d/g/d;->d(Lorg/cocos2d/g/d;)F

    move-result v6

    invoke-static {p0}, Lorg/cocos2d/g/d;->e(Lorg/cocos2d/g/d;)I

    move-result v7

    invoke-virtual/range {v1 .. v7}, Lorg/cocos2d/opengl/i;->a(Ljava/lang/String;Lorg/cocos2d/l/g;Lorg/cocos2d/g/f;Ljava/lang/String;FI)V

    goto :goto_1
.end method
