.class final Lorg/cocos2d/g/l;
.super Ljava/lang/Object;


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:Lorg/cocos2d/g/i;


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/cocos2d/g/l;->a:F

    iput p2, p0, Lorg/cocos2d/g/l;->b:F

    iput p3, p0, Lorg/cocos2d/g/l;->c:F

    iput p4, p0, Lorg/cocos2d/g/l;->d:F

    return-void
.end method


# virtual methods
.method public final a()Lorg/cocos2d/g/i;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/g/l;->e:Lorg/cocos2d/g/i;

    return-object v0
.end method

.method public final a(Lorg/cocos2d/g/i;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2d/g/l;->e:Lorg/cocos2d/g/i;

    return-void
.end method

.method public final b()F
    .locals 1

    iget v0, p0, Lorg/cocos2d/g/l;->a:F

    return v0
.end method

.method public final c()F
    .locals 1

    iget v0, p0, Lorg/cocos2d/g/l;->b:F

    return v0
.end method

.method public final d()F
    .locals 1

    iget v0, p0, Lorg/cocos2d/g/l;->c:F

    return v0
.end method

.method public final e()F
    .locals 1

    iget v0, p0, Lorg/cocos2d/g/l;->d:F

    return v0
.end method
