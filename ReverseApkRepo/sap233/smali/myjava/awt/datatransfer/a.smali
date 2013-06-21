.class final Lmyjava/awt/datatransfer/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lmyjava/awt/datatransfer/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;I)I
    .locals 1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lmyjava/awt/datatransfer/a;->b(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Lmyjava/awt/datatransfer/c;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p1, Lmyjava/awt/datatransfer/c;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lmyjava/awt/datatransfer/c;->a:I

    move v0, v1

    :cond_0
    iget v3, p1, Lmyjava/awt/datatransfer/c;->a:I

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-ne v3, v4, :cond_1

    if-eqz v0, :cond_1

    iget v0, p1, Lmyjava/awt/datatransfer/c;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lmyjava/awt/datatransfer/c;->a:I

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget v3, p1, Lmyjava/awt/datatransfer/c;->a:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p1, Lmyjava/awt/datatransfer/c;->a:I

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-nez v0, :cond_4

    move v0, v1

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    iget v3, p1, Lmyjava/awt/datatransfer/c;->a:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_4
    const/16 v4, 0x5c

    if-ne v3, v4, :cond_2

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Lmyjava/awt/datatransfer/b;
    .locals 4

    sget-object v0, Lmyjava/awt/datatransfer/a;->a:Lmyjava/awt/datatransfer/a;

    if-nez v0, :cond_0

    new-instance v0, Lmyjava/awt/datatransfer/a;

    invoke-direct {v0}, Lmyjava/awt/datatransfer/a;-><init>()V

    sput-object v0, Lmyjava/awt/datatransfer/a;->a:Lmyjava/awt/datatransfer/a;

    :cond_0
    new-instance v0, Lmyjava/awt/datatransfer/b;

    invoke-direct {v0}, Lmyjava/awt/datatransfer/b;-><init>()V

    if-eqz p0, :cond_3

    new-instance v1, Lmyjava/awt/datatransfer/c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmyjava/awt/datatransfer/c;-><init>(B)V

    invoke-static {p0, v1}, Lmyjava/awt/datatransfer/a;->b(Ljava/lang/String;Lmyjava/awt/datatransfer/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmyjava/awt/datatransfer/b;->a(Lmyjava/awt/datatransfer/b;Ljava/lang/String;)V

    iget v2, v1, Lmyjava/awt/datatransfer/c;->a:I

    invoke-static {p0, v2}, Lmyjava/awt/datatransfer/a;->a(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lmyjava/awt/datatransfer/c;->a:I

    iget v2, v1, Lmyjava/awt/datatransfer/c;->a:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget v2, v1, Lmyjava/awt/datatransfer/c;->a:I

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2
    iget v2, v1, Lmyjava/awt/datatransfer/c;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lmyjava/awt/datatransfer/c;->a:I

    invoke-static {p0, v1}, Lmyjava/awt/datatransfer/a;->b(Ljava/lang/String;Lmyjava/awt/datatransfer/c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmyjava/awt/datatransfer/b;->b(Lmyjava/awt/datatransfer/b;Ljava/lang/String;)V

    invoke-static {p0, v0, v1}, Lmyjava/awt/datatransfer/a;->a(Ljava/lang/String;Lmyjava/awt/datatransfer/b;Lmyjava/awt/datatransfer/c;)V

    :cond_3
    return-object v0
.end method

.method private static a(Ljava/lang/String;Lmyjava/awt/datatransfer/b;Lmyjava/awt/datatransfer/c;)V
    .locals 3

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    invoke-static {p1, v0}, Lmyjava/awt/datatransfer/b;->a(Lmyjava/awt/datatransfer/b;Ljava/util/Hashtable;)V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    invoke-static {p1, v0}, Lmyjava/awt/datatransfer/b;->b(Lmyjava/awt/datatransfer/b;Ljava/util/Hashtable;)V

    :goto_0
    iget v0, p2, Lmyjava/awt/datatransfer/c;->a:I

    invoke-static {p0, v0}, Lmyjava/awt/datatransfer/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p2, Lmyjava/awt/datatransfer/c;->a:I

    iget v0, p2, Lmyjava/awt/datatransfer/c;->a:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p2, Lmyjava/awt/datatransfer/c;->a:I

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iget v0, p2, Lmyjava/awt/datatransfer/c;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lmyjava/awt/datatransfer/c;->a:I

    invoke-static {p0, p2}, Lmyjava/awt/datatransfer/a;->b(Ljava/lang/String;Lmyjava/awt/datatransfer/c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget v0, p2, Lmyjava/awt/datatransfer/c;->a:I

    invoke-static {p0, v0}, Lmyjava/awt/datatransfer/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p2, Lmyjava/awt/datatransfer/c;->a:I

    iget v0, p2, Lmyjava/awt/datatransfer/c;->a:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget v0, p2, Lmyjava/awt/datatransfer/c;->a:I

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x3d

    if-eq v0, v2, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_3
    iget v0, p2, Lmyjava/awt/datatransfer/c;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lmyjava/awt/datatransfer/c;->a:I

    iget v0, p2, Lmyjava/awt/datatransfer/c;->a:I

    invoke-static {p0, v0}, Lmyjava/awt/datatransfer/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p2, Lmyjava/awt/datatransfer/c;->a:I

    iget v0, p2, Lmyjava/awt/datatransfer/c;->a:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_4
    iget v0, p2, Lmyjava/awt/datatransfer/c;->a:I

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x22

    if-ne v0, v2, :cond_5

    invoke-static {p0, p2}, Lmyjava/awt/datatransfer/a;->a(Ljava/lang/String;Lmyjava/awt/datatransfer/c;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {p1}, Lmyjava/awt/datatransfer/b;->b(Lmyjava/awt/datatransfer/b;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    invoke-static {p0, p2}, Lmyjava/awt/datatransfer/a;->b(Ljava/lang/String;Lmyjava/awt/datatransfer/c;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static a(C)Z
    .locals 1

    const/16 v0, 0x28

    if-eq p0, v0, :cond_0

    const/16 v0, 0x29

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x40

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x22

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3d

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Lmyjava/awt/datatransfer/c;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lmyjava/awt/datatransfer/c;->a:I

    invoke-static {p0, v1}, Lmyjava/awt/datatransfer/a;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Lmyjava/awt/datatransfer/c;->a:I

    iget v1, p1, Lmyjava/awt/datatransfer/c;->a:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget v1, p1, Lmyjava/awt/datatransfer/c;->a:I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lmyjava/awt/datatransfer/a;->a(C)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iget v1, p1, Lmyjava/awt/datatransfer/c;->a:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p1, Lmyjava/awt/datatransfer/c;->a:I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p1, Lmyjava/awt/datatransfer/c;->a:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget v1, p1, Lmyjava/awt/datatransfer/c;->a:I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lmyjava/awt/datatransfer/a;->b(C)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p1, Lmyjava/awt/datatransfer/c;->a:I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lmyjava/awt/datatransfer/a;->a(C)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(C)Z
    .locals 1

    const/16 v0, 0x21

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7e

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
