.class public Lcom/lumensoft/ks/l;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public a:[I

.field public b:I

.field public b:[I

.field c:I

.field d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x41

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lumensoft/ks/l;->a:[I

    const/16 v0, 0x21

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lumensoft/ks/l;->b:[I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/lumensoft/ks/l;->a([B)V

    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 3

    new-instance v0, Lcom/lumensoft/ks/c;

    invoke-direct {v0}, Lcom/lumensoft/ks/c;-><init>()V

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance v0, Lcom/lumensoft/ks/i;

    const-string v1, "Input is null"

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0, p1, v1}, Lcom/lumensoft/ks/c;->h([BI)Lcom/lumensoft/ks/g;

    move-result-object v0

    iget v2, v0, Lcom/lumensoft/ks/g;->a:I

    add-int/2addr v1, v2

    iget v0, v0, Lcom/lumensoft/ks/g;->b:I

    add-int/2addr v0, v1

    array-length v2, p1

    if-eq v0, v2, :cond_1

    new-instance v0, Lcom/lumensoft/ks/i;

    const-string v1, "Invalid input length"

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/lumensoft/ks/l;->a([BI)[I

    move-result-object v0

    iput-object v0, p0, Lcom/lumensoft/ks/l;->a:[I

    iget v0, p0, Lcom/lumensoft/ks/l;->c:I

    iput v0, p0, Lcom/lumensoft/ks/l;->a:I

    iget v0, p0, Lcom/lumensoft/ks/l;->d:I

    add-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/lumensoft/ks/l;->a([BI)[I

    move-result-object v1

    iput-object v1, p0, Lcom/lumensoft/ks/l;->b:[I

    iget v1, p0, Lcom/lumensoft/ks/l;->c:I

    iput v1, p0, Lcom/lumensoft/ks/l;->b:I

    iget v1, p0, Lcom/lumensoft/ks/l;->d:I

    add-int/2addr v0, v1

    return-void
.end method

.method public a([BI)[I
    .locals 5

    new-instance v0, Lcom/lumensoft/ks/c;

    invoke-direct {v0}, Lcom/lumensoft/ks/c;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/lumensoft/ks/c;->c([BI)Lcom/lumensoft/ks/g;

    move-result-object v1

    iget v0, v1, Lcom/lumensoft/ks/g;->a:I

    add-int v2, p2, v0

    const/4 v0, 0x0

    :goto_0
    iget-object v3, v1, Lcom/lumensoft/ks/g;->a:[B

    aget-byte v3, v3, v0

    if-eqz v3, :cond_0

    iget v3, v1, Lcom/lumensoft/ks/g;->b:I

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/lumensoft/ks/l;->c:I

    iget v3, p0, Lcom/lumensoft/ks/l;->c:I

    const/16 v4, 0x40

    if-le v3, v4, :cond_1

    new-instance v0, Lcom/lumensoft/ks/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RSA key too large : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/lumensoft/ks/l;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lumensoft/ks/i;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sub-int/2addr v2, p2

    iput v2, p0, Lcom/lumensoft/ks/l;->d:I

    iget-object v1, v1, Lcom/lumensoft/ks/g;->a:[B

    invoke-static {v1, v0}, Lcom/lumensoft/ks/d;->a([BI)[I

    move-result-object v0

    return-object v0
.end method
