.class public final Lorg/a/a/o;
.super Lorg/a/a/a/b;

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/a/a/u;


# instance fields
.field private final a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lorg/a/a/a/b;-><init>()V

    invoke-static {}, Lorg/a/a/f;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/a/a/o;->a:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Lorg/a/a/a/b;-><init>()V

    iput-wide p1, p0, Lorg/a/a/o;->a:J

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lorg/a/a/o;->a:J

    return-wide v0
.end method

.method public final b()Lorg/a/a/a;
    .locals 1

    invoke-static {}, Lorg/a/a/b/t;->N()Lorg/a/a/b/t;

    move-result-object v0

    return-object v0
.end method
