.class public abstract Lorg/cocos2d/a/a/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Lorg/cocos2d/g/i;

.field private b:Lorg/cocos2d/g/i;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2d/a/a/a;->b:Lorg/cocos2d/g/i;

    iput-object v0, p0, Lorg/cocos2d/a/a/a;->a:Lorg/cocos2d/g/i;

    const/4 v0, -0x1

    iput v0, p0, Lorg/cocos2d/a/a/a;->c:I

    return-void
.end method


# virtual methods
.method public final a()Lorg/cocos2d/g/i;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/a/a/a;->b:Lorg/cocos2d/g/i;

    return-object v0
.end method

.method public abstract a(F)V
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lorg/cocos2d/a/a/a;->c:I

    return-void
.end method

.method public a(Lorg/cocos2d/g/i;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2d/a/a/a;->a:Lorg/cocos2d/g/i;

    iput-object p1, p0, Lorg/cocos2d/a/a/a;->b:Lorg/cocos2d/g/i;

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lorg/cocos2d/a/a/a;->c:I

    return v0
.end method

.method public abstract c()Lorg/cocos2d/a/a/a;
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
