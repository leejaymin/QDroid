.class public abstract Lorg/cocos2d/m/c/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lorg/cocos2d/m/a/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/cocos2d/m/a/c;

    invoke-direct {v0}, Lorg/cocos2d/m/a/c;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/m/c/a;->a:Lorg/cocos2d/m/a/c;

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/Object;
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/m/c/a;->a:Lorg/cocos2d/m/a/c;

    invoke-virtual {v0, p1}, Lorg/cocos2d/m/a/c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/m/c/a;->a:Lorg/cocos2d/m/a/c;

    invoke-virtual {v0}, Lorg/cocos2d/m/a/c;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/cocos2d/m/c/a;->a()Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method
