.class public final Lcom/rubycell/pianisthd/c/g;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I

.field c:I

.field d:J

.field e:J

.field f:I

.field g:Z

.field h:Z


# direct methods
.method public constructor <init>(IIJIZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/rubycell/pianisthd/c/g;->a:I

    iput p2, p0, Lcom/rubycell/pianisthd/c/g;->b:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/rubycell/pianisthd/c/g;->c:I

    iput-wide p3, p0, Lcom/rubycell/pianisthd/c/g;->d:J

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/rubycell/pianisthd/c/g;->e:J

    iput p5, p0, Lcom/rubycell/pianisthd/c/g;->f:I

    iput-boolean p6, p0, Lcom/rubycell/pianisthd/c/g;->g:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rubycell/pianisthd/c/g;->h:Z

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/rubycell/pianisthd/c/g;->e:J

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/rubycell/pianisthd/c/g;->h:Z

    return v0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rubycell/pianisthd/c/g;->h:Z

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/rubycell/pianisthd/c/g;->g:Z

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/rubycell/pianisthd/c/g;->a:I

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/rubycell/pianisthd/c/g;->b:I

    return v0
.end method

.method public final f()J
    .locals 2

    iget-wide v0, p0, Lcom/rubycell/pianisthd/c/g;->d:J

    return-wide v0
.end method

.method public final g()J
    .locals 2

    iget-wide v0, p0, Lcom/rubycell/pianisthd/c/g;->e:J

    return-wide v0
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lcom/rubycell/pianisthd/c/g;->f:I

    return v0
.end method
