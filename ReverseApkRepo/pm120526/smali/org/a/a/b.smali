.class public final Lorg/a/a/b;
.super Lorg/a/a/a/c;

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/a/a/t;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/a/a/a/c;-><init>()V

    return-void
.end method

.method public constructor <init>(JLorg/a/a/a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/a/a/a/c;-><init>(JLorg/a/a/a;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Lorg/a/a/d/b;)Lorg/a/a/b;
    .locals 1

    invoke-virtual {p1, p0}, Lorg/a/a/d/b;->b(Ljava/lang/String;)Lorg/a/a/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/a/a/i;)Lorg/a/a/b;
    .locals 4

    invoke-virtual {p0}, Lorg/a/a/b;->b()Lorg/a/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/a/a/a;->a(Lorg/a/a/i;)Lorg/a/a/a;

    move-result-object v0

    invoke-static {v0}, Lorg/a/a/f;->a(Lorg/a/a/a;)Lorg/a/a/a;

    move-result-object v0

    invoke-virtual {p0}, Lorg/a/a/b;->b()Lorg/a/a/a;

    move-result-object v1

    if-ne v0, v1, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lorg/a/a/b;

    invoke-virtual {p0}, Lorg/a/a/b;->a()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v0}, Lorg/a/a/b;-><init>(JLorg/a/a/a;)V

    move-object v0, v1

    goto :goto_0
.end method
