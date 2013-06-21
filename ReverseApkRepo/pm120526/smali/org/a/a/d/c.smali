.class public final Lorg/a/a/d/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/a/a/d/c;->a:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Ljava/lang/Object;)Lorg/a/a/d/c;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/a/a/d/c;->b:Ljava/lang/Object;

    iget-object v0, p0, Lorg/a/a/d/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/a/a/d/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private a(Lorg/a/a/d/s;Lorg/a/a/d/p;)Lorg/a/a/d/c;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/a/a/d/c;->b:Ljava/lang/Object;

    iget-object v0, p0, Lorg/a/a/d/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/a/a/d/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method static a(Ljava/lang/StringBuffer;I)V
    .locals 2

    move v0, p1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    const v1, 0xfffd

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Lorg/a/a/d/b;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lorg/a/a/d/c;->b:Ljava/lang/Object;

    if-nez v1, :cond_3

    iget-object v2, p0, Lorg/a/a/d/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lorg/a/a/d/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/a/a/d/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v2, :cond_5

    if-eq v2, v3, :cond_0

    if-nez v3, :cond_1

    :cond_0
    move-object v1, v2

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    new-instance v1, Lorg/a/a/d/e;

    iget-object v2, p0, Lorg/a/a/d/c;->a:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lorg/a/a/d/e;-><init>(Ljava/util/List;)V

    :cond_2
    iput-object v1, p0, Lorg/a/a/d/c;->b:Ljava/lang/Object;

    :cond_3
    instance-of v2, v1, Lorg/a/a/d/s;

    if-eqz v2, :cond_7

    instance-of v2, v1, Lorg/a/a/d/e;

    if-eqz v2, :cond_6

    move-object v0, v1

    check-cast v0, Lorg/a/a/d/e;

    move-object p0, v0

    invoke-virtual {p0}, Lorg/a/a/d/e;->c()Z

    move-result v2

    :goto_1
    if-eqz v2, :cond_c

    move-object v0, v1

    check-cast v0, Lorg/a/a/d/s;

    move-object v2, v0

    move-object v3, v2

    :goto_2
    instance-of v2, v1, Lorg/a/a/d/p;

    if-eqz v2, :cond_9

    instance-of v2, v1, Lorg/a/a/d/e;

    if-eqz v2, :cond_8

    move-object v0, v1

    check-cast v0, Lorg/a/a/d/e;

    move-object v2, v0

    invoke-virtual {v2}, Lorg/a/a/d/e;->d()Z

    move-result v2

    :goto_3
    if-eqz v2, :cond_b

    check-cast v1, Lorg/a/a/d/p;

    :goto_4
    if-nez v3, :cond_4

    if-eqz v1, :cond_a

    :cond_4
    new-instance v2, Lorg/a/a/d/b;

    invoke-direct {v2, v3, v1}, Lorg/a/a/d/b;-><init>(Lorg/a/a/d/s;Lorg/a/a/d/p;)V

    return-object v2

    :cond_5
    move-object v1, v3

    goto :goto_0

    :cond_6
    move v2, v5

    goto :goto_1

    :cond_7
    move v2, v4

    goto :goto_1

    :cond_8
    move v2, v5

    goto :goto_3

    :cond_9
    move v2, v4

    goto :goto_3

    :cond_a
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Both printing and parsing not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    move-object v1, v6

    goto :goto_4

    :cond_c
    move-object v3, v6

    goto :goto_2
.end method

.method public final a(C)Lorg/a/a/d/c;
    .locals 1

    new-instance v0, Lorg/a/a/d/d;

    invoke-direct {v0, p1}, Lorg/a/a/d/d;-><init>(C)V

    invoke-direct {p0, v0}, Lorg/a/a/d/c;->a(Ljava/lang/Object;)Lorg/a/a/d/c;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lorg/a/a/d/c;
    .locals 2

    invoke-static {}, Lorg/a/a/d;->c()Lorg/a/a/d;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/a/a/d/c;->a(Lorg/a/a/d;II)Lorg/a/a/d/c;

    move-result-object v0

    return-object v0
.end method

.method public final a(II)Lorg/a/a/d/c;
    .locals 3

    invoke-static {}, Lorg/a/a/d;->d()Lorg/a/a/d;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field type must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ge p2, p1, :cond_3

    move v1, p1

    :goto_0
    if-ltz p1, :cond_1

    if-gtz v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2
    new-instance v2, Lorg/a/a/d/f;

    invoke-direct {v2, v0, p1, v1}, Lorg/a/a/d/f;-><init>(Lorg/a/a/d;II)V

    invoke-direct {p0, v2}, Lorg/a/a/d/c;->a(Ljava/lang/Object;)Lorg/a/a/d/c;

    move-result-object v0

    return-object v0

    :cond_3
    move v1, p2

    goto :goto_0
.end method

.method public final a(IZ)Lorg/a/a/d/c;
    .locals 2

    new-instance v0, Lorg/a/a/d/n;

    invoke-static {}, Lorg/a/a/d;->s()Lorg/a/a/d;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/a/a/d/n;-><init>(Lorg/a/a/d;IZ)V

    invoke-direct {p0, v0}, Lorg/a/a/d/c;->a(Ljava/lang/Object;)Lorg/a/a/d/c;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lorg/a/a/d/c;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Literal must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lorg/a/a/d/i;

    invoke-direct {v0, p1}, Lorg/a/a/d/i;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/a/a/d/c;->a(Ljava/lang/Object;)Lorg/a/a/d/c;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    move-object v0, p0

    goto :goto_0

    :pswitch_1
    new-instance v0, Lorg/a/a/d/d;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {v0, v1}, Lorg/a/a/d/d;-><init>(C)V

    invoke-direct {p0, v0}, Lorg/a/a/d/c;->a(Ljava/lang/Object;)Lorg/a/a/d/c;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;Z)Lorg/a/a/d/c;
    .locals 3

    new-instance v0, Lorg/a/a/d/m;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, v1, p1, p2, v2}, Lorg/a/a/d/m;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-direct {p0, v0}, Lorg/a/a/d/c;->a(Ljava/lang/Object;)Lorg/a/a/d/c;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/a/a/d/b;)Lorg/a/a/d/c;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No formatter supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lorg/a/a/d/b;->a()Lorg/a/a/d/s;

    move-result-object v0

    invoke-virtual {p1}, Lorg/a/a/d/b;->b()Lorg/a/a/d/p;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/a/a/d/c;->a(Lorg/a/a/d/s;Lorg/a/a/d/p;)Lorg/a/a/d/c;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/a/a/d;)Lorg/a/a/d/c;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field type must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/a/a/d/j;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/a/a/d/j;-><init>(Lorg/a/a/d;Z)V

    invoke-direct {p0, v0}, Lorg/a/a/d/c;->a(Ljava/lang/Object;)Lorg/a/a/d/c;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/a/a/d;II)Lorg/a/a/d/c;
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field type must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ge p3, p2, :cond_4

    move v0, p2

    :goto_0
    if-ltz p2, :cond_1

    if-gtz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2
    const/4 v1, 0x1

    if-gt p2, v1, :cond_3

    new-instance v1, Lorg/a/a/d/o;

    invoke-direct {v1, p1, v0, v2}, Lorg/a/a/d/o;-><init>(Lorg/a/a/d;IZ)V

    invoke-direct {p0, v1}, Lorg/a/a/d/c;->a(Ljava/lang/Object;)Lorg/a/a/d/c;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_3
    new-instance v1, Lorg/a/a/d/h;

    invoke-direct {v1, p1, v0, v2, p2}, Lorg/a/a/d/h;-><init>(Lorg/a/a/d;IZI)V

    invoke-direct {p0, v1}, Lorg/a/a/d/c;->a(Ljava/lang/Object;)Lorg/a/a/d/c;

    move-result-object v0

    goto :goto_1

    :cond_4
    move v0, p3

    goto :goto_0
.end method

.method public final b()Lorg/a/a/d/c;
    .locals 2

    new-instance v0, Lorg/a/a/d/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/a/a/d/l;-><init>(I)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/a/a/d/c;->a(Lorg/a/a/d/s;Lorg/a/a/d/p;)Lorg/a/a/d/c;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Lorg/a/a/d/c;
    .locals 2

    invoke-static {}, Lorg/a/a/d;->e()Lorg/a/a/d;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/a/a/d/c;->a(Lorg/a/a/d;II)Lorg/a/a/d/c;

    move-result-object v0

    return-object v0
.end method

.method public final b(II)Lorg/a/a/d/c;
    .locals 1

    invoke-static {}, Lorg/a/a/d;->s()Lorg/a/a/d;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/a/a/d/c;->b(Lorg/a/a/d;II)Lorg/a/a/d/c;

    move-result-object v0

    return-object v0
.end method

.method public final b(IZ)Lorg/a/a/d/c;
    .locals 2

    new-instance v0, Lorg/a/a/d/n;

    invoke-static {}, Lorg/a/a/d;->p()Lorg/a/a/d;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/a/a/d/n;-><init>(Lorg/a/a/d;IZ)V

    invoke-direct {p0, v0}, Lorg/a/a/d/c;->a(Ljava/lang/Object;)Lorg/a/a/d/c;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lorg/a/a/d/c;
    .locals 3

    new-instance v0, Lorg/a/a/d/m;

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-direct {v0, p1, p1, v1, v2}, Lorg/a/a/d/m;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-direct {p0, v0}, Lorg/a/a/d/c;->a(Ljava/lang/Object;)Lorg/a/a/d/c;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lorg/a/a/d;)Lorg/a/a/d/c;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field type must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/a/a/d/j;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lorg/a/a/d/j;-><init>(Lorg/a/a/d;Z)V

    invoke-direct {p0, v0}, Lorg/a/a/d/c;->a(Ljava/lang/Object;)Lorg/a/a/d/c;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lorg/a/a/d;II)Lorg/a/a/d/c;
    .locals 3

    const/4 v2, 0x1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Field type must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ge p3, p2, :cond_4

    move v0, p2

    :goto_0
    if-ltz p2, :cond_1

    if-gtz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2
    if-gt p2, v2, :cond_3

    new-instance v1, Lorg/a/a/d/o;

    invoke-direct {v1, p1, v0, v2}, Lorg/a/a/d/o;-><init>(Lorg/a/a/d;IZ)V

    invoke-direct {p0, v1}, Lorg/a/a/d/c;->a(Ljava/lang/Object;)Lorg/a/a/d/c;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_3
    new-instance v1, Lorg/a/a/d/h;

    invoke-direct {v1, p1, v0, v2, p2}, Lorg/a/a/d/h;-><init>(Lorg/a/a/d;IZI)V

    invoke-direct {p0, v1}, Lorg/a/a/d/c;->a(Ljava/lang/Object;)Lorg/a/a/d/c;

    move-result-object v0

    goto :goto_1

    :cond_4
    move v0, p3

    goto :goto_0
.end method

.method public final c()Lorg/a/a/d/c;
    .locals 2

    new-instance v0, Lorg/a/a/d/l;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/a/a/d/l;-><init>(I)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/a/a/d/c;->a(Lorg/a/a/d/s;Lorg/a/a/d/p;)Lorg/a/a/d/c;

    move-result-object v0

    return-object v0
.end method

.method public final c(I)Lorg/a/a/d/c;
    .locals 2

    invoke-static {}, Lorg/a/a/d;->g()Lorg/a/a/d;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/a/a/d/c;->a(Lorg/a/a/d;II)Lorg/a/a/d/c;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lorg/a/a/d/c;
    .locals 2

    sget-object v0, Lorg/a/a/d/k;->a:Lorg/a/a/d/k;

    sget-object v1, Lorg/a/a/d/k;->a:Lorg/a/a/d/k;

    invoke-direct {p0, v0, v1}, Lorg/a/a/d/c;->a(Lorg/a/a/d/s;Lorg/a/a/d/p;)Lorg/a/a/d/c;

    move-result-object v0

    return-object v0
.end method

.method public final d(I)Lorg/a/a/d/c;
    .locals 2

    invoke-static {}, Lorg/a/a/d;->m()Lorg/a/a/d;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/a/a/d/c;->a(Lorg/a/a/d;II)Lorg/a/a/d/c;

    move-result-object v0

    return-object v0
.end method

.method public final e(I)Lorg/a/a/d/c;
    .locals 2

    invoke-static {}, Lorg/a/a/d;->r()Lorg/a/a/d;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Lorg/a/a/d/c;->a(Lorg/a/a/d;II)Lorg/a/a/d/c;

    move-result-object v0

    return-object v0
.end method
