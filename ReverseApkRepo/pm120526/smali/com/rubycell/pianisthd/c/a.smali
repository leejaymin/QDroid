.class public final Lcom/rubycell/pianisthd/c/a;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:Ljava/util/ArrayList;

.field d:Z

.field e:I

.field f:Ljava/lang/String;

.field g:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/rubycell/pianisthd/c/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/rubycell/pianisthd/c/a;->c:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/rubycell/pianisthd/c/a;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rubycell/pianisthd/c/a;->d:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/pianisthd/c/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/rubycell/pianisthd/c/a;->b:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/c/a;->a:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/c/a;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/rubycell/pianisthd/c/a;->g:Z

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/rubycell/pianisthd/c/a;->b:I

    return v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/rubycell/pianisthd/c/a;->e:I

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rubycell/pianisthd/c/a;->f:Ljava/lang/String;

    return-void
.end method

.method public final c()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/pianisthd/c/a;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/rubycell/pianisthd/c/a;->d:Z

    return v0
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/rubycell/pianisthd/c/a;->d:Z

    return-void
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/rubycell/pianisthd/c/a;->e:I

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/pianisthd/c/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/rubycell/pianisthd/c/a;->g:Z

    return v0
.end method
