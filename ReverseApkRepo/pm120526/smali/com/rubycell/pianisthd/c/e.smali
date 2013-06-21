.class public final Lcom/rubycell/pianisthd/c/e;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:F

.field c:F

.field d:Z

.field e:Z

.field f:Z

.field g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;FFZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rubycell/pianisthd/c/e;->a:Ljava/lang/String;

    iput p2, p0, Lcom/rubycell/pianisthd/c/e;->b:F

    iput p3, p0, Lcom/rubycell/pianisthd/c/e;->c:F

    iput-boolean p4, p0, Lcom/rubycell/pianisthd/c/e;->d:Z

    iput-boolean p5, p0, Lcom/rubycell/pianisthd/c/e;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rubycell/pianisthd/c/e;->f:Z

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 0

    iput p1, p0, Lcom/rubycell/pianisthd/c/e;->c:F

    return-void
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/rubycell/pianisthd/c/e;->g:I

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/rubycell/pianisthd/c/e;->f:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/rubycell/pianisthd/c/e;->f:Z

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/pianisthd/c/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()F
    .locals 1

    iget v0, p0, Lcom/rubycell/pianisthd/c/e;->b:F

    return v0
.end method

.method public final d()F
    .locals 1

    iget v0, p0, Lcom/rubycell/pianisthd/c/e;->c:F

    return v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/rubycell/pianisthd/c/e;->d:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/rubycell/pianisthd/c/e;->e:Z

    return v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/rubycell/pianisthd/c/e;->g:I

    return v0
.end method
