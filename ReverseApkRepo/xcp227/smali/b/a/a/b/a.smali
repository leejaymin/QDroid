.class public final Lb/a/a/b/a;
.super Ljava/lang/Object;


# static fields
.field private static f:Ljava/util/Hashtable;


# instance fields
.field private a:Lb/a/a/b;

.field private b:I

.field private c:I

.field private d:[B

.field private e:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v5, 0x80

    const/16 v4, 0x40

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lb/a/a/b/a;->f:Ljava/util/Hashtable;

    const-string v1, "GOST3411"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lb/a/a/b/a;->f:Ljava/util/Hashtable;

    const-string v1, "MD2"

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lb/a/a/b/a;->f:Ljava/util/Hashtable;

    const-string v1, "MD4"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lb/a/a/b/a;->f:Ljava/util/Hashtable;

    const-string v1, "MD5"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lb/a/a/b/a;->f:Ljava/util/Hashtable;

    const-string v1, "RIPEMD128"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lb/a/a/b/a;->f:Ljava/util/Hashtable;

    const-string v1, "RIPEMD160"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lb/a/a/b/a;->f:Ljava/util/Hashtable;

    const-string v1, "SHA-1"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lb/a/a/b/a;->f:Ljava/util/Hashtable;

    const-string v1, "SHA-224"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lb/a/a/b/a;->f:Ljava/util/Hashtable;

    const-string v1, "SHA-256"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lb/a/a/b/a;->f:Ljava/util/Hashtable;

    const-string v1, "SHA-384"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lb/a/a/b/a;->f:Ljava/util/Hashtable;

    const-string v1, "SHA-512"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lb/a/a/b/a;->f:Ljava/util/Hashtable;

    const-string v1, "Tiger"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lb/a/a/b/a;->f:Ljava/util/Hashtable;

    const-string v1, "Whirlpool"

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lb/a/a/b;)V
    .locals 3

    instance-of v0, p1, Lb/a/a/c;

    if-eqz v0, :cond_0

    const/16 v0, 0x40

    :goto_0
    invoke-direct {p0, p1, v0}, Lb/a/a/b/a;-><init>(Lb/a/a/b;I)V

    return-void

    :cond_0
    sget-object v0, Lb/a/a/b/a;->f:Ljava/util/Hashtable;

    invoke-interface {p1}, Lb/a/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown digest passed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lb/a/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private constructor <init>(Lb/a/a/b;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/a/b/a;->a:Lb/a/a/b;

    const/16 v0, 0x14

    iput v0, p0, Lb/a/a/b/a;->b:I

    iput p2, p0, Lb/a/a/b/a;->c:I

    iget v0, p0, Lb/a/a/b/a;->c:I

    new-array v0, v0, [B

    iput-object v0, p0, Lb/a/a/b/a;->d:[B

    iget v0, p0, Lb/a/a/b/a;->c:I

    new-array v0, v0, [B

    iput-object v0, p0, Lb/a/a/b/a;->e:[B

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lb/a/a/b/a;->b:I

    return v0
.end method

.method public final a([B)I
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lb/a/a/b/a;->b:I

    new-array v0, v0, [B

    iget-object v1, p0, Lb/a/a/b/a;->a:Lb/a/a/b;

    invoke-interface {v1, v0}, Lb/a/a/b;->a([B)I

    iget-object v1, p0, Lb/a/a/b/a;->a:Lb/a/a/b;

    iget-object v2, p0, Lb/a/a/b/a;->e:[B

    iget-object v3, p0, Lb/a/a/b/a;->e:[B

    array-length v3, v3

    invoke-interface {v1, v2, v4, v3}, Lb/a/a/b;->a([BII)V

    iget-object v1, p0, Lb/a/a/b/a;->a:Lb/a/a/b;

    array-length v2, v0

    invoke-interface {v1, v0, v4, v2}, Lb/a/a/b;->a([BII)V

    iget-object v0, p0, Lb/a/a/b/a;->a:Lb/a/a/b;

    invoke-interface {v0, p1}, Lb/a/a/b;->a([B)I

    iget-object v0, p0, Lb/a/a/b/a;->a:Lb/a/a/b;

    invoke-interface {v0}, Lb/a/a/b;->b()V

    iget-object v0, p0, Lb/a/a/b/a;->a:Lb/a/a/b;

    iget-object v1, p0, Lb/a/a/b/a;->d:[B

    iget-object v2, p0, Lb/a/a/b/a;->d:[B

    array-length v2, v2

    invoke-interface {v0, v1, v4, v2}, Lb/a/a/b;->a([BII)V

    const/16 v0, 0x14

    return v0
.end method

.method public final a(Lb/a/a/a;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lb/a/a/b/a;->a:Lb/a/a/b;

    invoke-interface {v0}, Lb/a/a/b;->b()V

    check-cast p1, Lb/a/a/c/a;

    invoke-virtual {p1}, Lb/a/a/c/a;->a()[B

    move-result-object v0

    array-length v2, v0

    iget v3, p0, Lb/a/a/b/a;->c:I

    if-le v2, v3, :cond_2

    iget-object v2, p0, Lb/a/a/b/a;->a:Lb/a/a/b;

    array-length v3, v0

    invoke-interface {v2, v0, v1, v3}, Lb/a/a/b;->a([BII)V

    iget-object v0, p0, Lb/a/a/b/a;->a:Lb/a/a/b;

    iget-object v2, p0, Lb/a/a/b/a;->d:[B

    invoke-interface {v0, v2}, Lb/a/a/b;->a([B)I

    iget v0, p0, Lb/a/a/b/a;->b:I

    :goto_0
    iget-object v2, p0, Lb/a/a/b/a;->d:[B

    array-length v2, v2

    if-lt v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lb/a/a/b/a;->d:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lb/a/a/b/a;->e:[B

    iget-object v0, p0, Lb/a/a/b/a;->d:[B

    iget-object v2, p0, Lb/a/a/b/a;->e:[B

    iget-object v3, p0, Lb/a/a/b/a;->d:[B

    array-length v3, v3

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v1

    :goto_1
    iget-object v2, p0, Lb/a/a/b/a;->d:[B

    array-length v2, v2

    if-lt v0, v2, :cond_3

    move v0, v1

    :goto_2
    iget-object v2, p0, Lb/a/a/b/a;->e:[B

    array-length v2, v2

    if-lt v0, v2, :cond_4

    iget-object v0, p0, Lb/a/a/b/a;->a:Lb/a/a/b;

    iget-object v2, p0, Lb/a/a/b/a;->d:[B

    iget-object v3, p0, Lb/a/a/b/a;->d:[B

    array-length v3, v3

    invoke-interface {v0, v2, v1, v3}, Lb/a/a/b;->a([BII)V

    return-void

    :cond_1
    iget-object v2, p0, Lb/a/a/b/a;->d:[B

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lb/a/a/b/a;->d:[B

    array-length v3, v0

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    :goto_3
    iget-object v2, p0, Lb/a/a/b/a;->d:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lb/a/a/b/a;->d:[B

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lb/a/a/b/a;->d:[B

    aget-byte v3, v2, v0

    xor-int/lit8 v3, v3, 0x36

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lb/a/a/b/a;->e:[B

    aget-byte v3, v2, v0

    xor-int/lit8 v3, v3, 0x5c

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public final a([BI)V
    .locals 2

    iget-object v0, p0, Lb/a/a/b/a;->a:Lb/a/a/b;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Lb/a/a/b;->a([BII)V

    return-void
.end method
