.class public Lorg/cocos2d/a/f/a;
.super Lorg/cocos2d/a/f/i;


# static fields
.field static final synthetic c:Z


# instance fields
.field private d:Lorg/cocos2d/g/a;

.field private e:Lorg/cocos2d/g/p;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/cocos2d/a/f/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/a/f/a;->c:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(FLorg/cocos2d/g/a;Z)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/cocos2d/a/f/i;-><init>(F)V

    sget-boolean v0, Lorg/cocos2d/a/f/a;->c:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Animate: argument Animation must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    iput-boolean p3, p0, Lorg/cocos2d/a/f/a;->f:Z

    iput-object p2, p0, Lorg/cocos2d/a/f/a;->d:Lorg/cocos2d/g/a;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2d/a/f/a;->e:Lorg/cocos2d/g/p;

    return-void
.end method

.method public static a(FLorg/cocos2d/g/a;Z)Lorg/cocos2d/a/f/a;
    .locals 2

    sget-boolean v0, Lorg/cocos2d/a/f/a;->c:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Animate: argument anim must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/cocos2d/a/f/a;

    invoke-direct {v0, p0, p1, p2}, Lorg/cocos2d/a/f/a;-><init>(FLorg/cocos2d/g/a;Z)V

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/cocos2d/g/i;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/cocos2d/a/f/i;->a(Lorg/cocos2d/g/i;)V

    iget-object v0, p0, Lorg/cocos2d/a/f/a;->a:Lorg/cocos2d/g/i;

    check-cast v0, Lorg/cocos2d/g/o;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/cocos2d/a/f/a;->e:Lorg/cocos2d/g/p;

    iget-boolean v1, p0, Lorg/cocos2d/a/f/a;->f:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/cocos2d/g/o;->J()Lorg/cocos2d/g/p;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/a/f/a;->e:Lorg/cocos2d/g/p;

    :cond_0
    return-void
.end method

.method public final b(F)V
    .locals 3

    iget-object v0, p0, Lorg/cocos2d/a/f/a;->d:Lorg/cocos2d/g/a;

    invoke-virtual {v0}, Lorg/cocos2d/g/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v1, v0

    mul-float/2addr v1, p1

    float-to-int v1, v1

    if-lt v1, v0, :cond_0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v1, v0

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/a/f/a;->a:Lorg/cocos2d/g/i;

    check-cast v0, Lorg/cocos2d/g/o;

    iget-object v2, p0, Lorg/cocos2d/a/f/a;->d:Lorg/cocos2d/g/a;

    invoke-virtual {v2}, Lorg/cocos2d/g/a;->c()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/cocos2d/g/p;

    invoke-virtual {v0, p0}, Lorg/cocos2d/g/o;->b(Lorg/cocos2d/g/p;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p0}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/g/p;)V

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 2

    iget-boolean v0, p0, Lorg/cocos2d/a/f/a;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/a/f/a;->a:Lorg/cocos2d/g/i;

    check-cast v0, Lorg/cocos2d/g/o;

    iget-object v1, p0, Lorg/cocos2d/a/f/a;->e:Lorg/cocos2d/g/p;

    invoke-virtual {v0, v1}, Lorg/cocos2d/g/o;->a(Lorg/cocos2d/g/p;)V

    :cond_0
    invoke-super {p0}, Lorg/cocos2d/a/f/i;->d()V

    return-void
.end method

.method public final j()Lorg/cocos2d/a/f/a;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/cocos2d/a/f/a;->d:Lorg/cocos2d/g/a;

    invoke-virtual {v0}, Lorg/cocos2d/g/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/a/f/a;->d:Lorg/cocos2d/g/a;

    invoke-virtual {v0}, Lorg/cocos2d/g/a;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/cocos2d/a/f/a;->d:Lorg/cocos2d/g/a;

    invoke-virtual {v2}, Lorg/cocos2d/g/a;->b()F

    move-result v2

    invoke-static {v0, v2, v1}, Lorg/cocos2d/g/a;->a(Ljava/lang/String;FLjava/util/ArrayList;)Lorg/cocos2d/g/a;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/a/f/a;->b:F

    iget-boolean v2, p0, Lorg/cocos2d/a/f/a;->f:Z

    invoke-static {v1, v0, v2}, Lorg/cocos2d/a/f/a;->a(FLorg/cocos2d/g/a;Z)Lorg/cocos2d/a/f/a;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/g/p;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public final synthetic k()Lorg/cocos2d/a/f/i;
    .locals 1

    invoke-virtual {p0}, Lorg/cocos2d/a/f/a;->j()Lorg/cocos2d/a/f/a;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic l()Lorg/cocos2d/a/f/i;
    .locals 4

    new-instance v0, Lorg/cocos2d/a/f/a;

    iget v1, p0, Lorg/cocos2d/a/f/a;->b:F

    iget-object v2, p0, Lorg/cocos2d/a/f/a;->d:Lorg/cocos2d/g/a;

    iget-boolean v3, p0, Lorg/cocos2d/a/f/a;->f:Z

    invoke-direct {v0, v1, v2, v3}, Lorg/cocos2d/a/f/a;-><init>(FLorg/cocos2d/g/a;Z)V

    return-object v0
.end method
