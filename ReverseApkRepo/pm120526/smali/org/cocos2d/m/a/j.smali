.class final Lorg/cocos2d/m/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic a:Lorg/cocos2d/m/a/h;

.field private b:Lorg/cocos2d/m/a/i;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Lorg/cocos2d/m/a/h;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lorg/cocos2d/m/a/j;->a:Lorg/cocos2d/m/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lorg/cocos2d/m/a/j;->c:I

    iput v1, p0, Lorg/cocos2d/m/a/j;->d:I

    invoke-static {p1}, Lorg/cocos2d/m/a/h;->a(Lorg/cocos2d/m/a/h;)[Lorg/cocos2d/m/a/i;

    move-result-object v0

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/cocos2d/m/a/j;->b:Lorg/cocos2d/m/a/i;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lorg/cocos2d/m/a/j;->d:I

    iget-object v1, p0, Lorg/cocos2d/m/a/j;->a:Lorg/cocos2d/m/a/h;

    invoke-static {v1}, Lorg/cocos2d/m/a/h;->b(Lorg/cocos2d/m/a/h;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lorg/cocos2d/m/a/j;->d:I

    iget-object v1, p0, Lorg/cocos2d/m/a/j;->a:Lorg/cocos2d/m/a/h;

    invoke-static {v1}, Lorg/cocos2d/m/a/h;->b(Lorg/cocos2d/m/a/h;)I

    move-result v1

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No more elements!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/m/a/j;->b:Lorg/cocos2d/m/a/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/cocos2d/m/a/j;->b:Lorg/cocos2d/m/a/i;

    iget-object v1, p0, Lorg/cocos2d/m/a/j;->b:Lorg/cocos2d/m/a/i;

    iget-object v1, v1, Lorg/cocos2d/m/a/i;->c:Lorg/cocos2d/m/a/i;

    iput-object v1, p0, Lorg/cocos2d/m/a/j;->b:Lorg/cocos2d/m/a/i;

    iget v1, p0, Lorg/cocos2d/m/a/j;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/cocos2d/m/a/j;->d:I

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/cocos2d/m/a/j;->a:Lorg/cocos2d/m/a/h;

    invoke-static {v0}, Lorg/cocos2d/m/a/h;->a(Lorg/cocos2d/m/a/h;)[Lorg/cocos2d/m/a/i;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/m/a/j;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/cocos2d/m/a/j;->c:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/cocos2d/m/a/j;->b:Lorg/cocos2d/m/a/i;

    iget-object v0, p0, Lorg/cocos2d/m/a/j;->b:Lorg/cocos2d/m/a/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/cocos2d/m/a/j;->b:Lorg/cocos2d/m/a/i;

    iget-object v1, p0, Lorg/cocos2d/m/a/j;->b:Lorg/cocos2d/m/a/i;

    iget-object v1, v1, Lorg/cocos2d/m/a/i;->c:Lorg/cocos2d/m/a/i;

    iput-object v1, p0, Lorg/cocos2d/m/a/j;->b:Lorg/cocos2d/m/a/i;

    iget v1, p0, Lorg/cocos2d/m/a/j;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/cocos2d/m/a/j;->d:I

    goto :goto_0
.end method

.method public final remove()V
    .locals 0

    return-void
.end method
