.class final Lorg/a/a/e/b;
.super Ljava/lang/Object;


# instance fields
.field public final a:J

.field public final b:Lorg/a/a/i;

.field c:Lorg/a/a/e/b;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I


# direct methods
.method constructor <init>(Lorg/a/a/i;J)V
    .locals 1

    const/high16 v0, -0x8000

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/a/a/e/b;->e:I

    iput v0, p0, Lorg/a/a/e/b;->f:I

    iput-wide p2, p0, Lorg/a/a/e/b;->a:J

    iput-object p1, p0, Lorg/a/a/e/b;->b:Lorg/a/a/i;

    return-void
.end method


# virtual methods
.method public final a(J)Ljava/lang/String;
    .locals 4

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lorg/a/a/e/b;->c:Lorg/a/a/e/b;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/a/a/e/b;->c:Lorg/a/a/e/b;

    iget-wide v1, v1, Lorg/a/a/e/b;->a:J

    cmp-long v1, p1, v1

    if-gez v1, :cond_2

    :cond_0
    iget-object v1, v0, Lorg/a/a/e/b;->d:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, v0, Lorg/a/a/e/b;->b:Lorg/a/a/i;

    iget-wide v2, v0, Lorg/a/a/e/b;->a:J

    invoke-virtual {v1, v2, v3}, Lorg/a/a/i;->a(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/a/a/e/b;->d:Ljava/lang/String;

    :cond_1
    iget-object v0, v0, Lorg/a/a/e/b;->d:Ljava/lang/String;

    return-object v0

    :cond_2
    iget-object v0, v0, Lorg/a/a/e/b;->c:Lorg/a/a/e/b;

    goto :goto_0
.end method

.method public final b(J)I
    .locals 4

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lorg/a/a/e/b;->c:Lorg/a/a/e/b;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/a/a/e/b;->c:Lorg/a/a/e/b;

    iget-wide v1, v1, Lorg/a/a/e/b;->a:J

    cmp-long v1, p1, v1

    if-gez v1, :cond_2

    :cond_0
    iget v1, v0, Lorg/a/a/e/b;->e:I

    const/high16 v2, -0x8000

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lorg/a/a/e/b;->b:Lorg/a/a/i;

    iget-wide v2, v0, Lorg/a/a/e/b;->a:J

    invoke-virtual {v1, v2, v3}, Lorg/a/a/i;->b(J)I

    move-result v1

    iput v1, v0, Lorg/a/a/e/b;->e:I

    :cond_1
    iget v0, v0, Lorg/a/a/e/b;->e:I

    return v0

    :cond_2
    iget-object v0, v0, Lorg/a/a/e/b;->c:Lorg/a/a/e/b;

    goto :goto_0
.end method
