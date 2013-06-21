.class public final Lcom/rubycell/pianisthd/c/h;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Z

.field f:I

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:J

.field j:J

.field k:I

.field l:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JJI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/rubycell/pianisthd/c/h;->a:I

    iput-object p2, p0, Lcom/rubycell/pianisthd/c/h;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/rubycell/pianisthd/c/h;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/rubycell/pianisthd/c/h;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/rubycell/pianisthd/c/h;->e:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/rubycell/pianisthd/c/h;->f:I

    iput-object p6, p0, Lcom/rubycell/pianisthd/c/h;->g:Ljava/lang/String;

    iput-object p7, p0, Lcom/rubycell/pianisthd/c/h;->h:Ljava/lang/String;

    iput-wide p8, p0, Lcom/rubycell/pianisthd/c/h;->i:J

    iput-wide p10, p0, Lcom/rubycell/pianisthd/c/h;->j:J

    iput p12, p0, Lcom/rubycell/pianisthd/c/h;->k:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/rubycell/pianisthd/c/h;->k:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/rubycell/pianisthd/c/h;->a:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/c/h;->c:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/rubycell/pianisthd/c/h;->e:Z

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/pianisthd/c/h;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/c/h;->d:Ljava/lang/String;

    return-void
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lcom/rubycell/pianisthd/c/h;->i:J

    return-wide v0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, Lcom/rubycell/pianisthd/c/h;->j:J

    return-wide v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/pianisthd/c/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    check-cast p1, Lcom/rubycell/pianisthd/c/h;

    iget-object v0, p0, Lcom/rubycell/pianisthd/c/h;->h:Ljava/lang/String;

    iget-object v1, p1, Lcom/rubycell/pianisthd/c/h;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/pianisthd/c/h;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/rubycell/pianisthd/c/h;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/pianisthd/c/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/pianisthd/c/h;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/rubycell/pianisthd/c/h;->e:Z

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/pianisthd/c/h;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Lcom/rubycell/pianisthd/c/h;->a:I

    return v0
.end method

.method public final k()I
    .locals 1

    iget v0, p0, Lcom/rubycell/pianisthd/c/h;->l:I

    return v0
.end method
