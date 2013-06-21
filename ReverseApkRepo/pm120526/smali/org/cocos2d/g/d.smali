.class public Lorg/cocos2d/g/d;
.super Lorg/cocos2d/g/o;

# interfaces
.implements Lorg/cocos2d/i/b;


# instance fields
.field private I:Lorg/cocos2d/l/g;

.field private J:Lorg/cocos2d/g/f;

.field private K:Ljava/lang/String;

.field private L:F

.field private M:Ljava/lang/String;

.field private N:I


# direct methods
.method private constructor <init>(Ljava/lang/CharSequence;Lorg/cocos2d/l/g;Lorg/cocos2d/g/f;Ljava/lang/String;F)V
    .locals 2

    invoke-direct {p0}, Lorg/cocos2d/g/o;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/g/d;->N:I

    iput-object p2, p0, Lorg/cocos2d/g/d;->I:Lorg/cocos2d/l/g;

    iput-object p3, p0, Lorg/cocos2d/g/d;->J:Lorg/cocos2d/g/f;

    iput-object p4, p0, Lorg/cocos2d/g/d;->K:Ljava/lang/String;

    iput p5, p0, Lorg/cocos2d/g/d;->L:F

    iget-object v0, p0, Lorg/cocos2d/g/d;->M:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/g/d;->M:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/g/d;->M:Ljava/lang/String;

    new-instance v0, Lorg/cocos2d/opengl/i;

    invoke-direct {v0}, Lorg/cocos2d/opengl/i;-><init>()V

    invoke-virtual {p0, v0}, Lorg/cocos2d/g/d;->b(Lorg/cocos2d/opengl/i;)V

    new-instance v1, Lorg/cocos2d/g/e;

    invoke-direct {v1, p0}, Lorg/cocos2d/g/e;-><init>(Lorg/cocos2d/g/d;)V

    invoke-virtual {v0, v1}, Lorg/cocos2d/opengl/i;->a(Lorg/cocos2d/opengl/r;)V

    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;F)Lorg/cocos2d/g/d;
    .locals 6

    const/4 v1, 0x0

    new-instance v0, Lorg/cocos2d/g/d;

    invoke-static {v1, v1}, Lorg/cocos2d/l/g;->a(FF)Lorg/cocos2d/l/g;

    move-result-object v2

    sget-object v3, Lorg/cocos2d/g/f;->b:Lorg/cocos2d/g/f;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/cocos2d/g/d;-><init>(Ljava/lang/CharSequence;Lorg/cocos2d/l/g;Lorg/cocos2d/g/f;Ljava/lang/String;F)V

    return-object v0
.end method

.method static synthetic a(Lorg/cocos2d/g/d;)Lorg/cocos2d/l/g;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/g/d;->I:Lorg/cocos2d/l/g;

    return-object v0
.end method

.method static synthetic b(Lorg/cocos2d/g/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/g/d;->M:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lorg/cocos2d/g/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/g/d;->K:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lorg/cocos2d/g/d;)F
    .locals 1

    iget v0, p0, Lorg/cocos2d/g/d;->L:F

    return v0
.end method

.method static synthetic e(Lorg/cocos2d/g/d;)I
    .locals 1

    iget v0, p0, Lorg/cocos2d/g/d;->N:I

    return v0
.end method

.method static synthetic f(Lorg/cocos2d/g/d;)Lorg/cocos2d/g/f;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/g/d;->J:Lorg/cocos2d/g/f;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CCLabel <"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lorg/cocos2d/g/d;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | FontName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2d/g/d;->K:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", FontSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/cocos2d/g/d;->L:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
