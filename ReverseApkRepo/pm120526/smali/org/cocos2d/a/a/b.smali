.class public Lorg/cocos2d/a/a/b;
.super Lorg/cocos2d/a/a/a;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field protected b:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/cocos2d/a/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/a/a/b;->c:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2d/a/a/a;-><init>()V

    iput p1, p0, Lorg/cocos2d/a/a/b;->b:F

    return-void
.end method

.method public static f()Lorg/cocos2d/a/a/b;
    .locals 2

    new-instance v0, Lorg/cocos2d/a/a/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/cocos2d/a/a/b;-><init>(F)V

    return-object v0
.end method


# virtual methods
.method public a(F)V
    .locals 0

    return-void
.end method

.method public b(F)V
    .locals 0

    return-void
.end method

.method public final synthetic c()Lorg/cocos2d/a/a/a;
    .locals 1

    invoke-virtual {p0}, Lorg/cocos2d/a/a/b;->h()Lorg/cocos2d/a/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final g()F
    .locals 1

    iget v0, p0, Lorg/cocos2d/a/a/b;->b:F

    return v0
.end method

.method public h()Lorg/cocos2d/a/a/b;
    .locals 2

    new-instance v0, Lorg/cocos2d/a/a/b;

    iget v1, p0, Lorg/cocos2d/a/a/b;->b:F

    invoke-direct {v0, v1}, Lorg/cocos2d/a/a/b;-><init>(F)V

    return-object v0
.end method

.method public i()Lorg/cocos2d/a/a/b;
    .locals 2

    sget-object v0, Lorg/cocos2d/a/a/b;->c:Ljava/lang/String;

    const-string v1, "Override me"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method
