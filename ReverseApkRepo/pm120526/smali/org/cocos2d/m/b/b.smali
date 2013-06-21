.class public final Lorg/cocos2d/m/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/lang/CharSequence;


# static fields
.field private static final e:[C

.field private static final f:[J


# instance fields
.field private a:[C

.field private b:[[C

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x24

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/cocos2d/m/b/b;->e:[C

    const/16 v0, 0x13

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    sput-object v0, Lorg/cocos2d/m/b/b;->f:[J

    return-void

    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x6bt 0x0t
        0x6ct 0x0t
        0x6dt 0x0t
        0x6et 0x0t
        0x6ft 0x0t
        0x70t 0x0t
        0x71t 0x0t
        0x72t 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
    .end array-data

    :array_1
    .array-data 0x8
        0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x10t 0x27t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x86t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0x42t 0xft 0x0t 0x0t 0x0t 0x0t 0x0t
        0x80t 0x96t 0x98t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0xe1t 0xf5t 0x5t 0x0t 0x0t 0x0t 0x0t
        0x0t 0xcat 0x9at 0x3bt 0x0t 0x0t 0x0t 0x0t
        0x0t 0xe4t 0xbt 0x54t 0x2t 0x0t 0x0t 0x0t
        0x0t 0xe8t 0x76t 0x48t 0x17t 0x0t 0x0t 0x0t
        0x0t 0x10t 0xa5t 0xd4t 0xe8t 0x0t 0x0t 0x0t
        0x0t 0xa0t 0x72t 0x4et 0x18t 0x9t 0x0t 0x0t
        0x0t 0x40t 0x7at 0x10t 0xf3t 0x5at 0x0t 0x0t
        0x0t 0x80t 0xc6t 0xa4t 0x7et 0x8dt 0x3t 0x0t
        0x0t 0x0t 0xc1t 0x6ft 0xf2t 0x86t 0x23t 0x0t
        0x0t 0x0t 0x8at 0x5dt 0x78t 0x45t 0x63t 0x1t
        0x0t 0x0t 0x64t 0xa7t 0xb3t 0xb6t 0xe0t 0xdt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x20

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/cocos2d/m/b/b;->d:I

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/cocos2d/m/b/b;->a:[C

    const/4 v0, 0x1

    new-array v0, v0, [[C

    iput-object v0, p0, Lorg/cocos2d/m/b/b;->b:[[C

    iget-object v0, p0, Lorg/cocos2d/m/b/b;->b:[[C

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/cocos2d/m/b/b;->a:[C

    aput-object v2, v0, v1

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lorg/cocos2d/m/b/b;-><init>()V

    :goto_0
    iget v0, p0, Lorg/cocos2d/m/b/b;->d:I

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/cocos2d/m/b/b;->b()V

    goto :goto_0
.end method

.method private a(Ljava/lang/CharSequence;II)Lorg/cocos2d/m/b/b;
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "null"

    invoke-direct {p0, v0}, Lorg/cocos2d/m/b/b;->a(Ljava/lang/String;)Lorg/cocos2d/m/b/b;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    if-gt p2, p3, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le p3, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_2
    move v0, p2

    :goto_1
    if-lt v0, p3, :cond_3

    move-object v0, p0

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/m/b/b;->a(C)Lorg/cocos2d/m/b/b;

    move v0, v1

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)Lorg/cocos2d/m/b/b;
    .locals 10

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    :goto_0
    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v0, :cond_1

    const-string v0, "null"

    goto :goto_0

    :cond_1
    if-ltz v2, :cond_2

    if-ltz v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "start: 0, end: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", str.length(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget v3, v1, Lorg/cocos2d/m/b/b;->c:I

    add-int/2addr v3, v2

    sub-int/2addr v3, v5

    :goto_1
    iget v4, v1, Lorg/cocos2d/m/b/b;->d:I

    if-lt v4, v3, :cond_4

    iget v4, v1, Lorg/cocos2d/m/b/b;->c:I

    :goto_2
    if-lt v5, v2, :cond_5

    iput v3, v1, Lorg/cocos2d/m/b/b;->c:I

    return-object v1

    :cond_4
    invoke-direct {v1}, Lorg/cocos2d/m/b/b;->b()V

    goto :goto_1

    :cond_5
    iget-object v6, v1, Lorg/cocos2d/m/b/b;->b:[[C

    shr-int/lit8 v7, v4, 0xa

    aget-object v6, v6, v7

    and-int/lit16 v7, v4, 0x3ff

    const/16 v8, 0x400

    sub-int/2addr v8, v7

    sub-int v9, v2, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int v9, v5, v8

    invoke-virtual {v0, v5, v9, v6, v7}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr v4, v8

    move v5, v9

    goto :goto_2
.end method

.method private a(II[C)V
    .locals 6

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    iget v0, p0, Lorg/cocos2d/m/b/b;->c:I

    if-le p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    const/4 v0, 0x0

    move v1, p1

    :goto_0
    if-lt v1, p2, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lorg/cocos2d/m/b/b;->b:[[C

    shr-int/lit8 v3, v1, 0xa

    aget-object v2, v2, v3

    and-int/lit16 v3, v1, 0x3ff

    const/16 v4, 0x400

    sub-int/2addr v4, v3

    sub-int v5, p2, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v2, v3, p3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v4

    add-int/2addr v0, v4

    goto :goto_0
.end method

.method private b()V
    .locals 6

    const/16 v5, 0x400

    const/4 v4, 0x0

    iget v0, p0, Lorg/cocos2d/m/b/b;->d:I

    if-ge v0, v5, :cond_0

    iget v0, p0, Lorg/cocos2d/m/b/b;->d:I

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/cocos2d/m/b/b;->d:I

    iget v0, p0, Lorg/cocos2d/m/b/b;->d:I

    new-array v0, v0, [C

    iget-object v1, p0, Lorg/cocos2d/m/b/b;->a:[C

    iget v2, p0, Lorg/cocos2d/m/b/b;->c:I

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/cocos2d/m/b/b;->a:[C

    iget-object v1, p0, Lorg/cocos2d/m/b/b;->b:[[C

    aput-object v0, v1, v4

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/cocos2d/m/b/b;->d:I

    shr-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lorg/cocos2d/m/b/b;->b:[[C

    array-length v1, v1

    if-lt v0, v1, :cond_1

    iget-object v1, p0, Lorg/cocos2d/m/b/b;->b:[[C

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [[C

    iget-object v2, p0, Lorg/cocos2d/m/b/b;->b:[[C

    iget-object v3, p0, Lorg/cocos2d/m/b/b;->b:[[C

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/cocos2d/m/b/b;->b:[[C

    :cond_1
    iget-object v1, p0, Lorg/cocos2d/m/b/b;->b:[[C

    new-array v2, v5, [C

    aput-object v2, v1, v0

    iget v0, p0, Lorg/cocos2d/m/b/b;->d:I

    add-int/lit16 v0, v0, 0x400

    iput v0, p0, Lorg/cocos2d/m/b/b;->d:I

    goto :goto_0
.end method


# virtual methods
.method public final a(C)Lorg/cocos2d/m/b/b;
    .locals 2

    iget v0, p0, Lorg/cocos2d/m/b/b;->c:I

    iget v1, p0, Lorg/cocos2d/m/b/b;->d:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lorg/cocos2d/m/b/b;->b()V

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/m/b/b;->b:[[C

    iget v1, p0, Lorg/cocos2d/m/b/b;->c:I

    shr-int/lit8 v1, v1, 0xa

    aget-object v0, v0, v1

    iget v1, p0, Lorg/cocos2d/m/b/b;->c:I

    and-int/lit16 v1, v1, 0x3ff

    aput-char p1, v0, v1

    iget v0, p0, Lorg/cocos2d/m/b/b;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/cocos2d/m/b/b;->c:I

    return-object p0
.end method

.method public final a(I)Lorg/cocos2d/m/b/b;
    .locals 7

    if-gtz p1, :cond_4

    if-nez p1, :cond_0

    const-string v0, "0"

    invoke-direct {p0, v0}, Lorg/cocos2d/m/b/b;->a(Ljava/lang/String;)Lorg/cocos2d/m/b/b;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/high16 v0, -0x8000

    if-ne p1, v0, :cond_1

    const-string v0, "-2147483648"

    invoke-direct {p0, v0}, Lorg/cocos2d/m/b/b;->a(Ljava/lang/String;)Lorg/cocos2d/m/b/b;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Lorg/cocos2d/m/b/b;->a(C)Lorg/cocos2d/m/b/b;

    neg-int v0, p1

    :goto_1
    invoke-static {v0}, Lorg/cocos2d/m/b/a;->a(I)I

    move-result v1

    iget v2, p0, Lorg/cocos2d/m/b/b;->d:I

    iget v3, p0, Lorg/cocos2d/m/b/b;->c:I

    add-int/2addr v3, v1

    if-ge v2, v3, :cond_2

    invoke-direct {p0}, Lorg/cocos2d/m/b/b;->b()V

    :cond_2
    iget v2, p0, Lorg/cocos2d/m/b/b;->c:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/cocos2d/m/b/b;->c:I

    iget v1, p0, Lorg/cocos2d/m/b/b;->c:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    move v6, v1

    move v1, v0

    move v0, v6

    :goto_2
    div-int/lit8 v2, v1, 0xa

    iget-object v3, p0, Lorg/cocos2d/m/b/b;->b:[[C

    shr-int/lit8 v4, v0, 0xa

    aget-object v3, v3, v4

    and-int/lit16 v4, v0, 0x3ff

    add-int/lit8 v1, v1, 0x30

    mul-int/lit8 v5, v2, 0xa

    sub-int/2addr v1, v5

    int-to-char v1, v1

    aput-char v1, v3, v4

    if-nez v2, :cond_3

    move-object v0, p0

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    move v1, v2

    goto :goto_2

    :cond_4
    move v0, p1

    goto :goto_1
.end method

.method public final a(Ljava/lang/CharSequence;)Lorg/cocos2d/m/b/b;
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "null"

    invoke-direct {p0, v0}, Lorg/cocos2d/m/b/b;->a(Ljava/lang/String;)Lorg/cocos2d/m/b/b;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lorg/cocos2d/m/b/b;->a(Ljava/lang/CharSequence;II)Lorg/cocos2d/m/b/b;

    move-result-object v0

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/cocos2d/m/b/b;->c:I

    return-void
.end method

.method public final synthetic append(C)Ljava/lang/Appendable;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/cocos2d/m/b/b;->a(C)Lorg/cocos2d/m/b/b;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/cocos2d/m/b/b;->a(Ljava/lang/CharSequence;)Lorg/cocos2d/m/b/b;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lorg/cocos2d/m/b/b;->a(Ljava/lang/CharSequence;II)Lorg/cocos2d/m/b/b;

    move-result-object v0

    return-object v0
.end method

.method public final charAt(I)C
    .locals 2

    iget v0, p0, Lorg/cocos2d/m/b/b;->c:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    const/16 v0, 0x400

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lorg/cocos2d/m/b/b;->a:[C

    aget-char v0, v0, p1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/cocos2d/m/b/b;->b:[[C

    shr-int/lit8 v1, p1, 0xa

    aget-object v0, v0, v1

    and-int/lit16 v1, p1, 0x3ff

    aget-char v0, v0, v1

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lorg/cocos2d/m/b/b;

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/cocos2d/m/b/b;

    iget v0, p0, Lorg/cocos2d/m/b/b;->c:I

    iget v1, p1, Lorg/cocos2d/m/b/b;->c:I

    if-eq v0, v1, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_1
    iget v1, p0, Lorg/cocos2d/m/b/b;->c:I

    if-lt v0, v1, :cond_3

    move v0, v4

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lorg/cocos2d/m/b/b;->charAt(I)C

    move-result v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/cocos2d/m/b/b;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/cocos2d/m/b/b;->c:I

    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    mul-int/lit8 v1, v1, 0x1f

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/cocos2d/m/b/b;->charAt(I)C

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    move v0, v2

    goto :goto_0
.end method

.method public final length()I
    .locals 1

    iget v0, p0, Lorg/cocos2d/m/b/b;->c:I

    return v0
.end method

.method public final subSequence(II)Ljava/lang/CharSequence;
    .locals 2

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-gt p1, p2, :cond_0

    iget v0, p0, Lorg/cocos2d/m/b/b;->c:I

    if-le p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    sub-int v0, p2, p1

    new-array v0, v0, [C

    invoke-direct {p0, p1, p2, v0}, Lorg/cocos2d/m/b/b;->a(II[C)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lorg/cocos2d/m/b/b;->c:I

    new-array v0, v0, [C

    iget v1, p0, Lorg/cocos2d/m/b/b;->c:I

    invoke-direct {p0, v3, v1, v0}, Lorg/cocos2d/m/b/b;->a(II[C)V

    new-instance v1, Ljava/lang/String;

    iget v2, p0, Lorg/cocos2d/m/b/b;->c:I

    invoke-direct {v1, v0, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v1
.end method
