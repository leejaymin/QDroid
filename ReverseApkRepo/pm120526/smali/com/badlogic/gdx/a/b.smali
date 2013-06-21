.class public final Lcom/badlogic/gdx/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lcom/badlogic/gdx/a/b;

.field public static final b:Lcom/badlogic/gdx/a/b;

.field public static final c:Lcom/badlogic/gdx/a/b;

.field public static final d:Lcom/badlogic/gdx/a/b;


# instance fields
.field public e:F

.field public f:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    new-instance v0, Lcom/badlogic/gdx/a/b;

    invoke-direct {v0}, Lcom/badlogic/gdx/a/b;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/a/b;->a:Lcom/badlogic/gdx/a/b;

    new-instance v0, Lcom/badlogic/gdx/a/b;

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/a/b;-><init>(FF)V

    sput-object v0, Lcom/badlogic/gdx/a/b;->b:Lcom/badlogic/gdx/a/b;

    new-instance v0, Lcom/badlogic/gdx/a/b;

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/a/b;-><init>(FF)V

    sput-object v0, Lcom/badlogic/gdx/a/b;->c:Lcom/badlogic/gdx/a/b;

    new-instance v0, Lcom/badlogic/gdx/a/b;

    invoke-direct {v0, v1, v1}, Lcom/badlogic/gdx/a/b;-><init>(FF)V

    sput-object v0, Lcom/badlogic/gdx/a/b;->d:Lcom/badlogic/gdx/a/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/badlogic/gdx/a/b;->e:F

    iput p2, p0, Lcom/badlogic/gdx/a/b;->f:F

    return-void
.end method


# virtual methods
.method public final a(FF)Lcom/badlogic/gdx/a/b;
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/a/b;->e:F

    iput p2, p0, Lcom/badlogic/gdx/a/b;->f:F

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/badlogic/gdx/a/b;

    iget v0, p0, Lcom/badlogic/gdx/a/b;->e:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/badlogic/gdx/a/b;->e:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/badlogic/gdx/a/b;->f:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    iget v1, p1, Lcom/badlogic/gdx/a/b;->f:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    if-eq v0, v1, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/a/b;->e:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/badlogic/gdx/a/b;->f:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/badlogic/gdx/a/b;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/badlogic/gdx/a/b;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
