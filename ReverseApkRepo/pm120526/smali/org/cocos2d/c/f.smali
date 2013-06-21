.class final Lorg/cocos2d/c/f;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/cocos2d/opengl/q;


# instance fields
.field final synthetic a:Lorg/cocos2d/c/d;

.field private final synthetic b:Lorg/cocos2d/i/d;


# direct methods
.method constructor <init>(Lorg/cocos2d/c/d;Lorg/cocos2d/i/d;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2d/c/f;->a:Lorg/cocos2d/c/d;

    iput-object p2, p0, Lorg/cocos2d/c/f;->b:Lorg/cocos2d/i/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5

    const/4 v4, 0x0

    move v1, v4

    :goto_0
    iget-object v0, p0, Lorg/cocos2d/c/f;->a:Lorg/cocos2d/c/d;

    invoke-static {v0}, Lorg/cocos2d/c/d;->a(Lorg/cocos2d/c/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    :goto_1
    move v1, v4

    :goto_2
    iget-object v0, p0, Lorg/cocos2d/c/f;->a:Lorg/cocos2d/c/d;

    invoke-static {v0}, Lorg/cocos2d/c/d;->b(Lorg/cocos2d/c/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    :goto_3
    return-void

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/c/f;->a:Lorg/cocos2d/c/d;

    invoke-static {v0}, Lorg/cocos2d/c/d;->a(Lorg/cocos2d/c/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/c/i;

    invoke-virtual {v0}, Lorg/cocos2d/c/i;->a()Lorg/cocos2d/i/d;

    move-result-object v2

    iget-object v3, p0, Lorg/cocos2d/c/f;->b:Lorg/cocos2d/i/d;

    if-ne v2, v3, :cond_1

    iget-object v1, p0, Lorg/cocos2d/c/f;->a:Lorg/cocos2d/c/d;

    invoke-static {v1}, Lorg/cocos2d/c/d;->a(Lorg/cocos2d/c/d;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/cocos2d/c/f;->a:Lorg/cocos2d/c/d;

    invoke-static {v0}, Lorg/cocos2d/c/d;->b(Lorg/cocos2d/c/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/c/i;

    invoke-virtual {v0}, Lorg/cocos2d/c/i;->a()Lorg/cocos2d/i/d;

    move-result-object v2

    iget-object v3, p0, Lorg/cocos2d/c/f;->b:Lorg/cocos2d/i/d;

    if-ne v2, v3, :cond_3

    iget-object v1, p0, Lorg/cocos2d/c/f;->a:Lorg/cocos2d/c/d;

    invoke-static {v1}, Lorg/cocos2d/c/d;->b(Lorg/cocos2d/c/d;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method
