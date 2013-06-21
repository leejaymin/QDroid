.class public final Lorg/cocos2d/l/g;
.super Ljava/lang/Object;


# static fields
.field private static c:Lorg/cocos2d/l/g;


# instance fields
.field public a:F

.field public b:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lorg/cocos2d/l/g;->a()Lorg/cocos2d/l/g;

    move-result-object v0

    sput-object v0, Lorg/cocos2d/l/g;->c:Lorg/cocos2d/l/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/cocos2d/l/g;-><init>(FF)V

    return-void
.end method

.method private constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/cocos2d/l/g;->a:F

    iput p2, p0, Lorg/cocos2d/l/g;->b:F

    return-void
.end method

.method public static a()Lorg/cocos2d/l/g;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lorg/cocos2d/l/g;

    invoke-direct {v0, v1, v1}, Lorg/cocos2d/l/g;-><init>(FF)V

    return-object v0
.end method

.method public static a(FF)Lorg/cocos2d/l/g;
    .locals 1

    new-instance v0, Lorg/cocos2d/l/g;

    invoke-direct {v0, p0, p1}, Lorg/cocos2d/l/g;-><init>(FF)V

    return-object v0
.end method

.method public static a(Lorg/cocos2d/l/g;Lorg/cocos2d/l/g;)Z
    .locals 2

    iget v0, p0, Lorg/cocos2d/l/g;->a:F

    iget v1, p1, Lorg/cocos2d/l/g;->a:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/cocos2d/l/g;->b:F

    iget v1, p1, Lorg/cocos2d/l/g;->b:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lorg/cocos2d/l/g;)V
    .locals 1

    iget v0, p1, Lorg/cocos2d/l/g;->a:F

    iput v0, p0, Lorg/cocos2d/l/g;->a:F

    iget v0, p1, Lorg/cocos2d/l/g;->b:F

    iput v0, p0, Lorg/cocos2d/l/g;->b:F

    return-void
.end method

.method public final b(FF)V
    .locals 0

    iput p1, p0, Lorg/cocos2d/l/g;->a:F

    iput p2, p0, Lorg/cocos2d/l/g;->b:F

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/cocos2d/l/g;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/l/g;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
