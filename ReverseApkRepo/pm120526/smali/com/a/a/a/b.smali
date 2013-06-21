.class public abstract Lcom/a/a/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field private static a:I

.field private static b:I

.field private static c:I


# instance fields
.field protected e:J

.field protected f:Lcom/a/a/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/a/a/a/b;->a:I

    sput v0, Lcom/a/a/a/b;->b:I

    sput v0, Lcom/a/a/a/b;->c:I

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/a/a/a/b;->e:J

    new-instance v0, Lcom/a/a/b/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/a/a/b/b;-><init>(I)V

    iput-object v0, p0, Lcom/a/a/a/b;->f:Lcom/a/a/b/b;

    return-void
.end method


# virtual methods
.method protected abstract a()I
.end method

.method public final a(J)V
    .locals 2

    iget-object v0, p0, Lcom/a/a/a/b;->f:Lcom/a/a/b/b;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/a/a/b/b;->a(I)V

    return-void
.end method

.method public a(Ljava/io/OutputStream;Z)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/b;->f:Lcom/a/a/b/b;

    invoke-virtual {v0}, Lcom/a/a/b/b;->c()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public a(Lcom/a/a/a/b;)Z
    .locals 3

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    instance-of v0, p0, Lcom/a/a/a/a/b;

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lcom/a/a/a/b;->e:J

    return-wide v0
.end method

.method public final c()J
    .locals 2

    iget-object v0, p0, Lcom/a/a/a/b;->f:Lcom/a/a/b/b;

    invoke-virtual {v0}, Lcom/a/a/b/b;->a()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final d()I
    .locals 2

    invoke-virtual {p0}, Lcom/a/a/a/b;->a()I

    move-result v0

    iget-object v1, p0, Lcom/a/a/a/b;->f:Lcom/a/a/b/b;

    invoke-virtual {v1}, Lcom/a/a/b/b;->b()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/a/a/a/b;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/a/b;->f:Lcom/a/a/b/b;

    invoke-virtual {v1}, Lcom/a/a/b/b;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
