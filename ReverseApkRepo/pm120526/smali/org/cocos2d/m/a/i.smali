.class public final Lorg/cocos2d/m/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field final a:I

.field b:Ljava/lang/Object;

.field c:Lorg/cocos2d/m/a/i;


# direct methods
.method constructor <init>(ILjava/lang/Object;Lorg/cocos2d/m/a/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/cocos2d/m/a/i;->a:I

    iput-object p2, p0, Lorg/cocos2d/m/a/i;->b:Ljava/lang/Object;

    iput-object p3, p0, Lorg/cocos2d/m/a/i;->c:Lorg/cocos2d/m/a/i;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/m/a/i;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final b()Lorg/cocos2d/m/a/i;
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/m/a/i;

    iget-object v1, p0, Lorg/cocos2d/m/a/i;->c:Lorg/cocos2d/m/a/i;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/cocos2d/m/a/i;->c:Lorg/cocos2d/m/a/i;

    invoke-virtual {v1}, Lorg/cocos2d/m/a/i;->b()Lorg/cocos2d/m/a/i;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lorg/cocos2d/m/a/i;->c:Lorg/cocos2d/m/a/i;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :cond_0
    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_1
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/cocos2d/m/a/i;->b()Lorg/cocos2d/m/a/i;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/cocos2d/m/a/i;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/m/a/i;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
