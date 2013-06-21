.class public Lorg/cocos2d/l/f;
.super Ljava/lang/Object;


# static fields
.field private static final c:Lorg/cocos2d/l/f;

.field private static d:Lorg/cocos2d/l/f;

.field private static e:Lorg/cocos2d/l/f;


# instance fields
.field public a:Lorg/cocos2d/l/e;

.field public b:Lorg/cocos2d/l/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lorg/cocos2d/l/f;

    invoke-direct {v0, v1, v1, v1, v1}, Lorg/cocos2d/l/f;-><init>(FFFF)V

    sput-object v0, Lorg/cocos2d/l/f;->c:Lorg/cocos2d/l/f;

    new-instance v0, Lorg/cocos2d/l/f;

    invoke-direct {v0}, Lorg/cocos2d/l/f;-><init>()V

    sput-object v0, Lorg/cocos2d/l/f;->d:Lorg/cocos2d/l/f;

    new-instance v0, Lorg/cocos2d/l/f;

    invoke-direct {v0}, Lorg/cocos2d/l/f;-><init>()V

    sput-object v0, Lorg/cocos2d/l/f;->e:Lorg/cocos2d/l/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, v0}, Lorg/cocos2d/l/f;-><init>(FFFF)V

    return-void
.end method

.method private constructor <init>(FFFF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lorg/cocos2d/l/e;->c(FF)Lorg/cocos2d/l/e;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/l/f;->a:Lorg/cocos2d/l/e;

    invoke-static {p3, p4}, Lorg/cocos2d/l/g;->a(FF)Lorg/cocos2d/l/g;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/l/f;->b:Lorg/cocos2d/l/g;

    return-void
.end method

.method public static a()Lorg/cocos2d/l/f;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lorg/cocos2d/l/f;

    invoke-direct {v0, v1, v1, v1, v1}, Lorg/cocos2d/l/f;-><init>(FFFF)V

    return-object v0
.end method

.method public static a(FFFF)Lorg/cocos2d/l/f;
    .locals 1

    new-instance v0, Lorg/cocos2d/l/f;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/cocos2d/l/f;-><init>(FFFF)V

    return-object v0
.end method

.method public static a(Lorg/cocos2d/l/e;Lorg/cocos2d/l/g;)Lorg/cocos2d/l/f;
    .locals 5

    new-instance v0, Lorg/cocos2d/l/f;

    iget v1, p0, Lorg/cocos2d/l/e;->a:F

    iget v2, p0, Lorg/cocos2d/l/e;->b:F

    iget v3, p1, Lorg/cocos2d/l/g;->a:F

    iget v4, p1, Lorg/cocos2d/l/g;->b:F

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/cocos2d/l/f;-><init>(FFFF)V

    return-object v0
.end method

.method public static a(Lorg/cocos2d/l/f;Lorg/cocos2d/l/e;)Z
    .locals 3

    iget v0, p1, Lorg/cocos2d/l/e;->a:F

    iget-object v1, p0, Lorg/cocos2d/l/f;->a:Lorg/cocos2d/l/e;

    iget v1, v1, Lorg/cocos2d/l/e;->a:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p1, Lorg/cocos2d/l/e;->b:F

    iget-object v1, p0, Lorg/cocos2d/l/f;->a:Lorg/cocos2d/l/e;

    iget v1, v1, Lorg/cocos2d/l/e;->b:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p1, Lorg/cocos2d/l/e;->a:F

    iget-object v1, p0, Lorg/cocos2d/l/f;->a:Lorg/cocos2d/l/e;

    iget v1, v1, Lorg/cocos2d/l/e;->a:F

    iget-object v2, p0, Lorg/cocos2d/l/f;->b:Lorg/cocos2d/l/g;

    iget v2, v2, Lorg/cocos2d/l/g;->a:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Lorg/cocos2d/l/e;->b:F

    iget-object v1, p0, Lorg/cocos2d/l/f;->a:Lorg/cocos2d/l/e;

    iget v1, v1, Lorg/cocos2d/l/e;->b:F

    iget-object v2, p0, Lorg/cocos2d/l/f;->b:Lorg/cocos2d/l/g;

    iget v2, v2, Lorg/cocos2d/l/g;->b:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lorg/cocos2d/l/f;Lorg/cocos2d/l/f;)Z
    .locals 2

    iget-object v0, p0, Lorg/cocos2d/l/f;->a:Lorg/cocos2d/l/e;

    iget-object v1, p1, Lorg/cocos2d/l/f;->a:Lorg/cocos2d/l/e;

    invoke-static {v0, v1}, Lorg/cocos2d/l/e;->a(Lorg/cocos2d/l/e;Lorg/cocos2d/l/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/l/f;->b:Lorg/cocos2d/l/g;

    iget-object v1, p1, Lorg/cocos2d/l/f;->b:Lorg/cocos2d/l/g;

    invoke-static {v0, v1}, Lorg/cocos2d/l/g;->a(Lorg/cocos2d/l/g;Lorg/cocos2d/l/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final b(FFFF)V
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/l/f;->a:Lorg/cocos2d/l/e;

    invoke-virtual {v0, p1, p2}, Lorg/cocos2d/l/e;->b(FF)V

    iget-object v0, p0, Lorg/cocos2d/l/f;->b:Lorg/cocos2d/l/g;

    invoke-virtual {v0, p3, p4}, Lorg/cocos2d/l/g;->b(FF)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/cocos2d/l/f;->a:Lorg/cocos2d/l/e;

    iget v1, v1, Lorg/cocos2d/l/e;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/l/f;->a:Lorg/cocos2d/l/e;

    iget v1, v1, Lorg/cocos2d/l/e;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "),("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/l/f;->b:Lorg/cocos2d/l/g;

    iget v1, v1, Lorg/cocos2d/l/g;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/l/f;->b:Lorg/cocos2d/l/g;

    iget v1, v1, Lorg/cocos2d/l/g;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
