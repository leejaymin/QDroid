.class final Lorg/cocos2d/c/e;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/cocos2d/opengl/q;


# instance fields
.field final synthetic a:Lorg/cocos2d/c/d;

.field private final synthetic b:Ljava/util/ArrayList;

.field private final synthetic c:Lorg/cocos2d/c/i;


# direct methods
.method constructor <init>(Lorg/cocos2d/c/d;Ljava/util/ArrayList;Lorg/cocos2d/c/i;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2d/c/e;->a:Lorg/cocos2d/c/d;

    iput-object p2, p0, Lorg/cocos2d/c/e;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lorg/cocos2d/c/e;->c:Lorg/cocos2d/c/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lorg/cocos2d/c/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/c/e;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/cocos2d/c/e;->c:Lorg/cocos2d/c/i;

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/c/e;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/c/i;

    invoke-virtual {v0}, Lorg/cocos2d/c/i;->b()I

    move-result v3

    iget-object v4, p0, Lorg/cocos2d/c/e;->c:Lorg/cocos2d/c/i;

    invoke-virtual {v4}, Lorg/cocos2d/c/i;->b()I

    move-result v4

    if-ge v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    invoke-virtual {v0}, Lorg/cocos2d/c/i;->a()Lorg/cocos2d/i/d;

    move-result-object v0

    iget-object v3, p0, Lorg/cocos2d/c/e;->c:Lorg/cocos2d/c/i;

    invoke-virtual {v3}, Lorg/cocos2d/c/i;->a()Lorg/cocos2d/i/d;

    move-result-object v3

    if-ne v0, v3, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Delegate already added to touch dispatcher."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
