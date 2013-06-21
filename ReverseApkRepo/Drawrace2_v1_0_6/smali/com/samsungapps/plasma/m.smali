.class final Lcom/samsungapps/plasma/m;
.super Lcom/samsungapps/plasma/j;


# instance fields
.field protected d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:I

.field protected i:I

.field protected j:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/samsungapps/plasma/j;-><init>()V

    iput-object v1, p0, Lcom/samsungapps/plasma/m;->d:Ljava/util/ArrayList;

    iput v0, p0, Lcom/samsungapps/plasma/m;->e:I

    iput v0, p0, Lcom/samsungapps/plasma/m;->f:I

    iput v0, p0, Lcom/samsungapps/plasma/m;->g:I

    iput v0, p0, Lcom/samsungapps/plasma/m;->h:I

    iput v0, p0, Lcom/samsungapps/plasma/m;->i:I

    iput-object v1, p0, Lcom/samsungapps/plasma/m;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsungapps/plasma/m;->d:Ljava/util/ArrayList;

    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsungapps/plasma/m;->j:Ljava/lang/String;

    return-void
.end method

.method c(I)V
    .locals 0

    iput p1, p0, Lcom/samsungapps/plasma/m;->e:I

    return-void
.end method

.method d()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsungapps/plasma/m;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method d(I)V
    .locals 0

    iput p1, p0, Lcom/samsungapps/plasma/m;->f:I

    return-void
.end method

.method e()I
    .locals 1

    iget v0, p0, Lcom/samsungapps/plasma/m;->e:I

    return v0
.end method

.method e(I)V
    .locals 0

    iput p1, p0, Lcom/samsungapps/plasma/m;->g:I

    return-void
.end method

.method f()I
    .locals 1

    iget v0, p0, Lcom/samsungapps/plasma/m;->f:I

    return v0
.end method

.method f(I)V
    .locals 0

    iput p1, p0, Lcom/samsungapps/plasma/m;->h:I

    return-void
.end method

.method g()I
    .locals 1

    iget v0, p0, Lcom/samsungapps/plasma/m;->g:I

    return v0
.end method

.method g(I)V
    .locals 0

    iput p1, p0, Lcom/samsungapps/plasma/m;->i:I

    return-void
.end method

.method h()I
    .locals 1

    iget v0, p0, Lcom/samsungapps/plasma/m;->h:I

    return v0
.end method

.method i()I
    .locals 1

    iget v0, p0, Lcom/samsungapps/plasma/m;->i:I

    return v0
.end method

.method j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsungapps/plasma/m;->j:Ljava/lang/String;

    return-object v0
.end method
