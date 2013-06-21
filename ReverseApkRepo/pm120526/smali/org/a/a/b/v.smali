.class public final Lorg/a/a/b/v;
.super Lorg/a/a/b/a;


# direct methods
.method private constructor <init>(Lorg/a/a/a;Lorg/a/a/i;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/a/a/b/a;-><init>(Lorg/a/a/a;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Lorg/a/a/a;Lorg/a/a/i;)Lorg/a/a/b/v;
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply a chronology"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/a/a/a;->b()Lorg/a/a/a;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "UTC chronology must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DateTimeZone must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v1, Lorg/a/a/b/v;

    invoke-direct {v1, v0, p1}, Lorg/a/a/b/v;-><init>(Lorg/a/a/a;Lorg/a/a/i;)V

    return-object v1
.end method

.method private a(Lorg/a/a/c;Ljava/util/HashMap;)Lorg/a/a/c;
    .locals 6

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/a/a/c;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/a/a/c;

    move-object v0, p0

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/a/a/b/w;

    invoke-virtual {p0}, Lorg/a/a/b/v;->M()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/a/a/i;

    invoke-virtual {p1}, Lorg/a/a/c;->d()Lorg/a/a/k;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/a/a/b/v;->a(Lorg/a/a/k;Ljava/util/HashMap;)Lorg/a/a/k;

    move-result-object v3

    invoke-virtual {p1}, Lorg/a/a/c;->e()Lorg/a/a/k;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/a/a/b/v;->a(Lorg/a/a/k;Ljava/util/HashMap;)Lorg/a/a/k;

    move-result-object v4

    invoke-virtual {p1}, Lorg/a/a/c;->f()Lorg/a/a/k;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/a/a/b/v;->a(Lorg/a/a/k;Ljava/util/HashMap;)Lorg/a/a/k;

    move-result-object v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/a/a/b/w;-><init>(Lorg/a/a/c;Lorg/a/a/i;Lorg/a/a/k;Lorg/a/a/k;Lorg/a/a/k;)V

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(Lorg/a/a/k;Ljava/util/HashMap;)Lorg/a/a/k;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/a/a/k;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/a/a/k;

    move-object v0, p0

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/a/a/b/x;

    invoke-virtual {p0}, Lorg/a/a/b/v;->M()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/a/a/i;

    invoke-direct {v0, p1, p0}, Lorg/a/a/b/x;-><init>(Lorg/a/a/k;Lorg/a/a/i;)V

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static a(Lorg/a/a/k;)Z
    .locals 4

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/a/a/k;->d()J

    move-result-wide v0

    const-wide/32 v2, 0x2932e00

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lorg/a/a/i;)Lorg/a/a/a;
    .locals 3

    if-nez p1, :cond_2

    invoke-static {}, Lorg/a/a/i;->a()Lorg/a/a/i;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lorg/a/a/b/v;->M()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    move-object v0, p0

    :goto_1
    return-object v0

    :cond_0
    sget-object v1, Lorg/a/a/i;->a:Lorg/a/a/i;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/a/a/b/v;->L()Lorg/a/a/a;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v1, Lorg/a/a/b/v;

    invoke-virtual {p0}, Lorg/a/a/b/v;->L()Lorg/a/a/a;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/a/a/b/v;-><init>(Lorg/a/a/a;Lorg/a/a/i;)V

    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, p1

    goto :goto_0
.end method

.method public final a()Lorg/a/a/i;
    .locals 0

    invoke-virtual {p0}, Lorg/a/a/b/v;->M()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/a/a/i;

    return-object p0
.end method

.method protected final a(Lorg/a/a/b/b;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p1, Lorg/a/a/b/b;->l:Lorg/a/a/k;

    invoke-direct {p0, v1, v0}, Lorg/a/a/b/v;->a(Lorg/a/a/k;Ljava/util/HashMap;)Lorg/a/a/k;

    move-result-object v1

    iput-object v1, p1, Lorg/a/a/b/b;->l:Lorg/a/a/k;

    iget-object v1, p1, Lorg/a/a/b/b;->k:Lorg/a/a/k;

    invoke-direct {p0, v1, v0}, Lorg/a/a/b/v;->a(Lorg/a/a/k;Ljava/util/HashMap;)Lorg/a/a/k;

    move-result-object v1

    iput-object v1, p1, Lorg/a/a/b/b;->k:Lorg/a/a/k;

    iget-object v1, p1, Lorg/a/a/b/b;->j:Lorg/a/a/k;

    invoke-direct {p0, v1, v0}, Lorg/a/a/b/v;->a(Lorg/a/a/k;Ljava/util/HashMap;)Lorg/a/a/k;

    move-result-object v1

    iput-object v1, p1, Lorg/a/a/b/b;->j:Lorg/a/a/k;

    iget-object v1, p1, Lorg/a/a/b/b;->i:Lorg/a/a/k;

    invoke-direct {p0, v1, v0}, Lorg/a/a/b/v;->a(Lorg/a/a/k;Ljava/util/HashMap;)Lorg/a/a/k;

    move-result-object v1

    iput-object v1, p1, Lorg/a/a/b/b;->i:Lorg/a/a/k;

    iget-object v1, p1, Lorg/a/a/b/b;->h:Lorg/a/a/k;

    invoke-direct {p0, v1, v0}, Lorg/a/a/b/v;->a(Lorg/a/a/k;Ljava/util/HashMap;)Lorg/a/a/k;

    move-result-object v1

    iput-object v1, p1, Lorg/a/a/b/b;->h:Lorg/a/a/k;

    iget-object v1, p1, Lorg/a/a/b/b;->g:Lorg/a/a/k;

    invoke-direct {p0, v1, v0}, Lorg/a/a/b/v;->a(Lorg/a/a/k;Ljava/util/HashMap;)Lorg/a/a/k;

    move-result-object v1

    iput-object v1, p1, Lorg/a/a/b/b;->g:Lorg/a/a/k;

    iget-object v1, p1, Lorg/a/a/b/b;->f:Lorg/a/a/k;

    invoke-direct {p0, v1, v0}, Lorg/a/a/b/v;->a(Lorg/a/a/k;Ljava/util/HashMap;)Lorg/a/a/k;

    move-result-object v1

    iput-object v1, p1, Lorg/a/a/b/b;->f:Lorg/a/a/k;

    iget-object v1, p1, Lorg/a/a/b/b;->e:Lorg/a/a/k;

    invoke-direct {p0, v1, v0}, Lorg/a/a/b/v;->a(Lorg/a/a/k;Ljava/util/HashMap;)Lorg/a/a/k;

    move-result-object v1

    iput-object v1, p1, Lorg/a/a/b/b;->e:Lorg/a/a/k;

    iget-object v1, p1, Lorg/a/a/b/b;->d:Lorg/a/a/k;

    invoke-direct {p0, v1, v0}, Lorg/a/a/b/v;->a(Lorg/a/a/k;Ljava/util/HashMap;)Lorg/a/a/k;

    move-result-object v1

    iput-object v1, p1, Lorg/a/a/b/b;->d:Lorg/a/a/k;

    iget-object v1, p1, Lorg/a/a/b/b;->c:Lorg/a/a/k;

    invoke-direct {p0, v1, v0}, Lorg/a/a/b/v;->a(Lorg/a/a/k;Ljava/util/HashMap;)Lorg/a/a/k;

    move-result-object v1

    iput-object v1, p1, Lorg/a/a/b/b;->c:Lorg/a/a/k;

    iget-object v1, p1, Lorg/a/a/b/b;->b:Lorg/a/a/k;

    invoke-direct {p0, v1, v0}, Lorg/a/a/b/v;->a(Lorg/a/a/k;Ljava/util/HashMap;)Lorg/a/a/k;

    move-result-object v1

    iput-object v1, p1, Lorg/a/a/b/b;->b:Lorg/a/a/k;

    iget-object v1, p1, Lorg/a/a/b/b;->a:Lorg/a/a/k;

    invoke-direct {p0, v1, v0}, Lorg/a/a/b/v;->a(Lorg/a/a/k;Ljava/util/HashMap;)Lorg/a/a/k;

    move-result-object v1

    iput-object v1, p1, Lorg/a/a/b/b;->a:Lorg/a/a/k;

    iget-object v1, p1, Lorg/a/a/b/b;->E:Lorg/a/a/c;

    invoke-direct {p0, v1, v0}, Lorg/a/a/b/v;->a(Lorg/a/a/c;Ljava/util/HashMap;)Lorg/a/a/c;

    move-result-object v1

    iput-object v1, p1, Lorg/a/a/b/b;->E:Lorg/a/a/c;

    iget-object v1, p1, Lorg/a/a/b/b;->F:Lorg/a/a/c;

    invoke-direct {p0, v1, v0}, Lorg/a/a/b/v;->a(Lorg/a/a/c;Ljava/util/HashMap;)Lorg/a/a/c;

    move-result-object v1

    iput-object v1, p1, Lorg/a/a/b/b;->F:Lorg/a/a/c;

    iget-object v1, p1, Lorg/a/a/b/b;->G:Lorg/a/a/c;

    invoke-direct {p0, v1, v0}, Lorg/a/a/b/v;->a(Lorg/a/a/c;Ljava/util/HashMap;)Lorg/a/a/c;

    move-result-object v1

    iput-object v1, p1, Lorg/a/a/b/b;->G:Lorg/a/a/c;

    iget-object v1, p1, Lorg/a/a/b/b;->H:Lorg/a/a/c;

    invoke-direct {p0, v1, v0}, Lorg/a/a/b/v;->a(Lorg/a/a/c;Ljava/util/HashMap;)Lorg/a/a/c;

    move-result-object v1

    iput-object v1, p1, Lorg/a/a/b/b;->H:Lorg/a/a/c;

    iget-object v1, p1, Lorg/a/a/b/b;->I:Lorg/a/a/c;

    invoke-direct {p0, v1, v0}, Lorg/a/a/b/v;->a(Lorg/a/a/c;Ljava/util/HashMap;)Lorg/a/a/c;

    move-result-object v1

    iput-object v1, p1, Lorg/a/a/b/b;->I:Lorg/a/a/c;

    iget-object v1, p1, Lorg/a/a/b/b;->x:Lorg/a/a/c;

    invoke-direct {p0, v1, v0}, Lorg/a/a/b/v;->a(Lorg/a/a/c;Ljava/util/HashMap;)Lorg/a/a/c;

    move-result-object v1

    iput-object v1, p1, Lorg/a/a/b/b;->x:Lorg/a/a/c;

    iget-object v1, p1, Lorg/a/a/b/b;->y:Lorg/a/a/c;

    invoke-direct {p0, v1, v0}, Lorg/a/a/b/v;->a(Lorg/a/a/c;Ljava/util/HashMap;)Lorg/a/a/c;

    move-result-object v1

    iput-object v1, p1, Lorg/a/a/b/b;->y:Lorg/a/a/c;

    iget-object v1, p1, Lorg/a/a/b/b;->z:Lorg/a/a/c;

    invoke-direct {p0, v1, v0}, Lorg/a/a/b/v;->a(Lorg/a/a/c;Ljava/util/HashMap;)Lorg/a/a/c;

    move-result-object v1

    iput-object v1, p1, Lorg/a/a/b/b;->z:Lorg/a/a/c;

    iget-object v1, p1, Lorg/a/a/b/b;->D:Lorg/a/a/c;

    invoke-direct {p0, v1, v0}, Lorg/a/a/b/v;->a(Lorg/a/a/c;Ljava/util/HashMap;)Lorg/a/a/c;

    move-result-object v1

    iput-object v1, p1, Lorg/a/a/b/b;->D:Lorg/a/a/c;

    iget-object v1, p1, Lorg/a/a/b/b;->A:Lorg/a/a/c;

    invoke-direct {p0, v1, v0}, Lorg/a/a/b/v;->a(Lorg/a/a/c;Ljava/util/HashMap;)Lorg/a/a/c;

    move-result-object v1

    iput-object v1, p1, Lorg/a/a/b/b;->A:Lorg/a/a/c;

    iget-object v1, p1, Lorg/a/a/b/b;->B:Lorg/a/a/c;

    invoke-direct {p0, v1, v0}, Lorg/a/a/b/v;->a(Lorg/a/a/c;Ljava/util/HashMap;)Lorg/a/a/c;

    move-result-object v1

    iput-object v1, p1, Lorg/a/a/b/b;->B:Lorg/a/a/c;

    iget-object v1, p1, Lorg/a/a/b/b;->C:Lorg/a/a/c;

    invoke-direct {p0, v1, v0}, Lorg/a/a/b/v;->a(Lorg/a/a/c;Ljava/util/HashMap;)Lorg/a/a/c;

    move-result-object v1

    iput-object v1, p1, Lorg/a/a/b/b;->C:Lorg/a/a/c;

    iget-object v1, p1, Lorg/a/a/b/b;->m:Lorg/a/a/c;

    invoke-direct {p0, v1, v0}, Lorg/a/a/b/v;->a(Lorg/a/a/c;Ljava/util/HashMap;)Lorg/a/a/c;

    move-result-object v1

    iput-object v1, p1, Lorg/a/a/b/b;->m:Lorg/a/a/c;

    iget-object v1, p1, Lorg/a/a/b/b;->n:Lorg/a/a/c;

    invoke-direct {p0, v1, v0}, Lorg/a/a/b/v;->a(Lorg/a/a/c;Ljava/util/HashMap;)Lorg/a/a/c;

    move-result-object v1

    iput-object v1, p1, Lorg/a/a/b/b;->n:Lorg/a/a/c;

    iget-object v1, p1, Lorg/a/a/b/b;->o:Lorg/a/a/c;

    invoke-direct {p0, v1, v0}, Lorg/a/a/b/v;->a(Lorg/a/a/c;Ljava/util/HashMap;)Lorg/a/a/c;

    move-result-object v1

    iput-object v1, p1, Lorg/a/a/b/b;->o:Lorg/a/a/c;

    iget-object v1, p1, Lorg/a/a/b/b;->p:Lorg/a/a/c;

    invoke-direct {p0, v1, v0}, Lorg/a/a/b/v;->a(Lorg/a/a/c;Ljava/util/HashMap;)Lorg/a/a/c;

    move-result-object v1

    iput-object v1, p1, Lorg/a/a/b/b;->p:Lorg/a/a/c;

    iget-object v1, p1, Lorg/a/a/b/b;->q:Lorg/a/a/c;

    invoke-direct {p0, v1, v0}, Lorg/a/a/b/v;->a(Lorg/a/a/c;Ljava/util/HashMap;)Lorg/a/a/c;

    move-result-object v1

    iput-object v1, p1, Lorg/a/a/b/b;->q:Lorg/a/a/c;

    iget-object v1, p1, Lorg/a/a/b/b;->r:Lorg/a/a/c;

    invoke-direct {p0, v1, v0}, Lorg/a/a/b/v;->a(Lorg/a/a/c;Ljava/util/HashMap;)Lorg/a/a/c;

    move-result-object v1

    iput-object v1, p1, Lorg/a/a/b/b;->r:Lorg/a/a/c;

    iget-object v1, p1, Lorg/a/a/b/b;->s:Lorg/a/a/c;

    invoke-direct {p0, v1, v0}, Lorg/a/a/b/v;->a(Lorg/a/a/c;Ljava/util/HashMap;)Lorg/a/a/c;

    move-result-object v1

    iput-object v1, p1, Lorg/a/a/b/b;->s:Lorg/a/a/c;

    iget-object v1, p1, Lorg/a/a/b/b;->u:Lorg/a/a/c;

    invoke-direct {p0, v1, v0}, Lorg/a/a/b/v;->a(Lorg/a/a/c;Ljava/util/HashMap;)Lorg/a/a/c;

    move-result-object v1

    iput-object v1, p1, Lorg/a/a/b/b;->u:Lorg/a/a/c;

    iget-object v1, p1, Lorg/a/a/b/b;->t:Lorg/a/a/c;

    invoke-direct {p0, v1, v0}, Lorg/a/a/b/v;->a(Lorg/a/a/c;Ljava/util/HashMap;)Lorg/a/a/c;

    move-result-object v1

    iput-object v1, p1, Lorg/a/a/b/b;->t:Lorg/a/a/c;

    iget-object v1, p1, Lorg/a/a/b/b;->v:Lorg/a/a/c;

    invoke-direct {p0, v1, v0}, Lorg/a/a/b/v;->a(Lorg/a/a/c;Ljava/util/HashMap;)Lorg/a/a/c;

    move-result-object v1

    iput-object v1, p1, Lorg/a/a/b/b;->v:Lorg/a/a/c;

    iget-object v1, p1, Lorg/a/a/b/b;->w:Lorg/a/a/c;

    invoke-direct {p0, v1, v0}, Lorg/a/a/b/v;->a(Lorg/a/a/c;Ljava/util/HashMap;)Lorg/a/a/c;

    move-result-object v0

    iput-object v0, p1, Lorg/a/a/b/b;->w:Lorg/a/a/c;

    return-void
.end method

.method public final b()Lorg/a/a/a;
    .locals 1

    invoke-virtual {p0}, Lorg/a/a/b/v;->L()Lorg/a/a/a;

    move-result-object v0

    return-object v0
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
    instance-of v0, p1, Lorg/a/a/b/v;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/a/a/b/v;

    invoke-virtual {p0}, Lorg/a/a/b/v;->L()Lorg/a/a/a;

    move-result-object v0

    invoke-virtual {p1}, Lorg/a/a/b/v;->L()Lorg/a/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/a/a/b/v;->M()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/a/a/i;

    invoke-virtual {p1}, Lorg/a/a/b/v;->M()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/i;

    invoke-virtual {p0, v0}, Lorg/a/a/i;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    const v1, 0x4fba5

    invoke-virtual {p0}, Lorg/a/a/b/v;->M()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/i;

    invoke-virtual {v0}, Lorg/a/a/i;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0xb

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/a/a/b/v;->L()Lorg/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZonedChronology["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/a/a/b/v;->L()Lorg/a/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/a/a/b/v;->M()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/a/a/i;

    invoke-virtual {p0}, Lorg/a/a/i;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
