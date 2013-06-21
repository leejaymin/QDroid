.class public abstract Lorg/a/a/a/c;
.super Lorg/a/a/a/a;

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/a/a/t;


# instance fields
.field private volatile a:J

.field private volatile b:Lorg/a/a/a;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lorg/a/a/f;->a()J

    move-result-wide v0

    invoke-static {}, Lorg/a/a/b/t;->O()Lorg/a/a/b/t;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/a/a/a/c;-><init>(JLorg/a/a/a;)V

    return-void
.end method

.method public constructor <init>(JLorg/a/a/a;)V
    .locals 1

    invoke-direct {p0}, Lorg/a/a/a/a;-><init>()V

    invoke-static {p3}, Lorg/a/a/f;->a(Lorg/a/a/a;)Lorg/a/a/a;

    move-result-object v0

    iput-object v0, p0, Lorg/a/a/a/c;->b:Lorg/a/a/a;

    iget-object v0, p0, Lorg/a/a/a/c;->b:Lorg/a/a/a;

    iput-wide p1, p0, Lorg/a/a/a/c;->a:J

    return-void
.end method

.method public constructor <init>(Lorg/a/a/i;)V
    .locals 3

    const-wide/16 v0, 0x0

    invoke-static {p1}, Lorg/a/a/b/t;->b(Lorg/a/a/i;)Lorg/a/a/b/t;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/a/a/a/c;-><init>(JLorg/a/a/a;)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lorg/a/a/a/c;->a:J

    return-wide v0
.end method

.method protected a(J)V
    .locals 1

    iget-object v0, p0, Lorg/a/a/a/c;->b:Lorg/a/a/a;

    iput-wide p1, p0, Lorg/a/a/a/c;->a:J

    return-void
.end method

.method public final b()Lorg/a/a/a;
    .locals 1

    iget-object v0, p0, Lorg/a/a/a/c;->b:Lorg/a/a/a;

    return-object v0
.end method
