.class public final Lorg/a/a/d/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lorg/a/a/d/s;

.field private final b:Lorg/a/a/d/p;

.field private final c:Ljava/util/Locale;

.field private final d:Z

.field private final e:Lorg/a/a/a;

.field private final f:Lorg/a/a/i;

.field private final g:Ljava/lang/Integer;

.field private final h:I


# direct methods
.method public constructor <init>(Lorg/a/a/d/s;Lorg/a/a/d/p;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/a/a/d/b;->a:Lorg/a/a/d/s;

    iput-object p2, p0, Lorg/a/a/d/b;->b:Lorg/a/a/d/p;

    iput-object v1, p0, Lorg/a/a/d/b;->c:Ljava/util/Locale;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/a/a/d/b;->d:Z

    iput-object v1, p0, Lorg/a/a/d/b;->e:Lorg/a/a/a;

    iput-object v1, p0, Lorg/a/a/d/b;->f:Lorg/a/a/i;

    iput-object v1, p0, Lorg/a/a/d/b;->g:Ljava/lang/Integer;

    const/16 v0, 0x7d0

    iput v0, p0, Lorg/a/a/d/b;->h:I

    return-void
.end method

.method private constructor <init>(Lorg/a/a/d/s;Lorg/a/a/d/p;Ljava/util/Locale;ZLorg/a/a/a;Lorg/a/a/i;Ljava/lang/Integer;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/a/a/d/b;->a:Lorg/a/a/d/s;

    iput-object p2, p0, Lorg/a/a/d/b;->b:Lorg/a/a/d/p;

    iput-object p3, p0, Lorg/a/a/d/b;->c:Ljava/util/Locale;

    iput-boolean p4, p0, Lorg/a/a/d/b;->d:Z

    iput-object p5, p0, Lorg/a/a/d/b;->e:Lorg/a/a/a;

    iput-object p6, p0, Lorg/a/a/d/b;->f:Lorg/a/a/i;

    iput-object p7, p0, Lorg/a/a/d/b;->g:Ljava/lang/Integer;

    iput p8, p0, Lorg/a/a/d/b;->h:I

    return-void
.end method

.method private b(Lorg/a/a/a;)Lorg/a/a/a;
    .locals 2

    invoke-static {p1}, Lorg/a/a/f;->a(Lorg/a/a/a;)Lorg/a/a/a;

    move-result-object v0

    iget-object v1, p0, Lorg/a/a/d/b;->e:Lorg/a/a/a;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/a/a/d/b;->e:Lorg/a/a/a;

    :cond_0
    iget-object v1, p0, Lorg/a/a/d/b;->f:Lorg/a/a/i;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/a/a/d/b;->f:Lorg/a/a/i;

    invoke-virtual {v0, v1}, Lorg/a/a/a;->a(Lorg/a/a/i;)Lorg/a/a/a;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private c()Lorg/a/a/d/s;
    .locals 2

    iget-object v0, p0, Lorg/a/a/d/b;->a:Lorg/a/a/d/s;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Printing not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method private d()Lorg/a/a/d/p;
    .locals 2

    iget-object v0, p0, Lorg/a/a/d/b;->b:Lorg/a/a/d/p;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Parsing not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)J
    .locals 6

    invoke-direct {p0}, Lorg/a/a/d/b;->d()Lorg/a/a/d/p;

    move-result-object v0

    iget-object v1, p0, Lorg/a/a/d/b;->e:Lorg/a/a/a;

    invoke-direct {p0, v1}, Lorg/a/a/d/b;->b(Lorg/a/a/a;)Lorg/a/a/a;

    move-result-object v1

    new-instance v2, Lorg/a/a/d/q;

    iget-object v3, p0, Lorg/a/a/d/b;->c:Ljava/util/Locale;

    iget-object v4, p0, Lorg/a/a/d/b;->g:Ljava/lang/Integer;

    iget v5, p0, Lorg/a/a/d/b;->h:I

    invoke-direct {v2, v1, v3, v4, v5}, Lorg/a/a/d/q;-><init>(Lorg/a/a/a;Ljava/util/Locale;Ljava/lang/Integer;I)V

    const/4 v1, 0x0

    invoke-interface {v0, v2, p1, v1}, Lorg/a/a/d/p;->a(Lorg/a/a/d/q;Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_1

    invoke-virtual {v2, p1}, Lorg/a/a/d/q;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    xor-int/lit8 v0, v0, -0x1

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, v0}, Lorg/a/a/d/t;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final a(Lorg/a/a/u;)Ljava/lang/String;
    .locals 14

    const-wide/16 v11, 0x0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Lorg/a/a/d/b;->c()Lorg/a/a/d/s;

    move-result-object v0

    invoke-interface {v0}, Lorg/a/a/d/s;->a()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-static {p1}, Lorg/a/a/f;->a(Lorg/a/a/u;)J

    move-result-wide v2

    invoke-static {p1}, Lorg/a/a/f;->b(Lorg/a/a/u;)Lorg/a/a/a;

    move-result-object v4

    invoke-direct {p0}, Lorg/a/a/d/b;->c()Lorg/a/a/d/s;

    move-result-object v0

    invoke-direct {p0, v4}, Lorg/a/a/d/b;->b(Lorg/a/a/a;)Lorg/a/a/a;

    move-result-object v4

    invoke-virtual {v4}, Lorg/a/a/a;->a()Lorg/a/a/i;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lorg/a/a/i;->b(J)I

    move-result v6

    int-to-long v7, v6

    add-long/2addr v7, v2

    xor-long v9, v2, v7

    cmp-long v9, v9, v11

    if-gez v9, :cond_0

    int-to-long v9, v6

    xor-long/2addr v9, v2

    cmp-long v9, v9, v11

    if-ltz v9, :cond_0

    sget-object v5, Lorg/a/a/i;->a:Lorg/a/a/i;

    const/4 v6, 0x0

    move v13, v6

    move-object v6, v5

    move v5, v13

    :goto_0
    invoke-virtual {v4}, Lorg/a/a/a;->b()Lorg/a/a/a;

    move-result-object v4

    iget-object v7, p0, Lorg/a/a/d/b;->c:Ljava/util/Locale;

    invoke-interface/range {v0 .. v7}, Lorg/a/a/d/s;->a(Ljava/lang/StringBuffer;JLorg/a/a/a;ILorg/a/a/i;Ljava/util/Locale;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move-wide v2, v7

    move v13, v6

    move-object v6, v5

    move v5, v13

    goto :goto_0
.end method

.method public final a(Lorg/a/a/a;)Lorg/a/a/d/b;
    .locals 9

    iget-object v0, p0, Lorg/a/a/d/b;->e:Lorg/a/a/a;

    if-ne v0, p1, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/a/a/d/b;

    iget-object v1, p0, Lorg/a/a/d/b;->a:Lorg/a/a/d/s;

    iget-object v2, p0, Lorg/a/a/d/b;->b:Lorg/a/a/d/p;

    iget-object v3, p0, Lorg/a/a/d/b;->c:Ljava/util/Locale;

    iget-boolean v4, p0, Lorg/a/a/d/b;->d:Z

    iget-object v6, p0, Lorg/a/a/d/b;->f:Lorg/a/a/i;

    iget-object v7, p0, Lorg/a/a/d/b;->g:Ljava/lang/Integer;

    iget v8, p0, Lorg/a/a/d/b;->h:I

    move-object v5, p1

    invoke-direct/range {v0 .. v8}, Lorg/a/a/d/b;-><init>(Lorg/a/a/d/s;Lorg/a/a/d/p;Ljava/util/Locale;ZLorg/a/a/a;Lorg/a/a/i;Ljava/lang/Integer;I)V

    goto :goto_0
.end method

.method public final a()Lorg/a/a/d/s;
    .locals 1

    iget-object v0, p0, Lorg/a/a/d/b;->a:Lorg/a/a/d/s;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lorg/a/a/b;
    .locals 6

    invoke-direct {p0}, Lorg/a/a/d/b;->d()Lorg/a/a/d/p;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/a/a/d/b;->b(Lorg/a/a/a;)Lorg/a/a/a;

    move-result-object v1

    new-instance v2, Lorg/a/a/d/q;

    iget-object v3, p0, Lorg/a/a/d/b;->c:Ljava/util/Locale;

    iget-object v4, p0, Lorg/a/a/d/b;->g:Ljava/lang/Integer;

    iget v5, p0, Lorg/a/a/d/b;->h:I

    invoke-direct {v2, v1, v3, v4, v5}, Lorg/a/a/d/q;-><init>(Lorg/a/a/a;Ljava/util/Locale;Ljava/lang/Integer;I)V

    const/4 v3, 0x0

    invoke-interface {v0, v2, p1, v3}, Lorg/a/a/d/p;->a(Lorg/a/a/d/q;Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_2

    invoke-virtual {v2, p1}, Lorg/a/a/d/q;->a(Ljava/lang/String;)J

    move-result-wide v3

    iget-boolean v0, p0, Lorg/a/a/d/b;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lorg/a/a/d/q;->d()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lorg/a/a/d/q;->d()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/a/a/i;->a(I)Lorg/a/a/i;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/a/a/a;->a(Lorg/a/a/i;)Lorg/a/a/a;

    move-result-object v0

    :goto_0
    new-instance v1, Lorg/a/a/b;

    invoke-direct {v1, v3, v4, v0}, Lorg/a/a/b;-><init>(JLorg/a/a/a;)V

    iget-object v0, p0, Lorg/a/a/d/b;->f:Lorg/a/a/i;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/a/a/d/b;->f:Lorg/a/a/i;

    invoke-virtual {v1, v0}, Lorg/a/a/b;->a(Lorg/a/a/i;)Lorg/a/a/b;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {v2}, Lorg/a/a/d/q;->c()Lorg/a/a/i;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Lorg/a/a/d/q;->c()Lorg/a/a/i;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/a/a/a;->a(Lorg/a/a/i;)Lorg/a/a/a;

    move-result-object v0

    goto :goto_0

    :cond_1
    xor-int/lit8 v0, v0, -0x1

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, v0}, Lorg/a/a/d/t;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    move-object v0, v1

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public final b()Lorg/a/a/d/p;
    .locals 1

    iget-object v0, p0, Lorg/a/a/d/b;->b:Lorg/a/a/d/p;

    return-object v0
.end method
