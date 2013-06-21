.class public final Lorg/a/a/d/t;
.super Ljava/lang/Object;


# static fields
.field private static final a:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x4024

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lorg/a/a/d/t;->a:D

    return-void
.end method

.method static a(Ljava/lang/String;I)I
    .locals 3

    const/16 v2, 0x30

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sub-int/2addr v0, v2

    shl-int/lit8 v1, v0, 0x3

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, v2

    return v0
.end method

.method public static a(Ljava/lang/StringBuffer;I)V
    .locals 3

    if-gez p1, :cond_3

    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/high16 v0, -0x8000

    if-eq p1, v0, :cond_0

    neg-int v0, p1

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    return-void

    :cond_0
    const-string v0, "2147483648"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    const/16 v1, 0x64

    if-ge v0, v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    const v2, 0xcccccc

    mul-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1b

    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    shl-int/lit8 v2, v1, 0x3

    sub-int/2addr v0, v2

    shl-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    move v0, p1

    goto :goto_0
.end method

.method public static a(Ljava/lang/StringBuffer;II)V
    .locals 6

    const/16 v1, 0xa

    const/16 v5, 0x30

    if-gez p1, :cond_9

    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/high16 v0, -0x8000

    if-eq p1, v0, :cond_8

    neg-int v0, p1

    :goto_0
    if-ge v0, v1, :cond_2

    move v1, p2

    :goto_1
    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :goto_2
    if-le v0, v1, :cond_0

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_0
    const-string v0, "2147483648"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_2
    const/16 v1, 0x64

    if-ge v0, v1, :cond_4

    move v1, p2

    :goto_4
    const/4 v2, 0x2

    if-le v1, v2, :cond_3

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v1, v0, 0x1

    const v2, 0xcccccc

    mul-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1b

    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    shl-int/lit8 v2, v1, 0x3

    sub-int/2addr v0, v2

    shl-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_4
    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_5

    const/4 v1, 0x3

    move v2, p2

    :goto_5
    if-le v2, v1, :cond_7

    invoke-virtual {p0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_5
    const/16 v1, 0x2710

    if-ge v0, v1, :cond_6

    const/4 v1, 0x4

    move v2, p2

    goto :goto_5

    :cond_6
    int-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    sget-wide v3, Lorg/a/a/d/t;->a:D

    div-double/2addr v1, v3

    double-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    move v2, p2

    goto :goto_5

    :cond_7
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_8
    move v0, p2

    goto :goto_2

    :cond_9
    move v0, p1

    goto :goto_0
.end method

.method static b(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x22

    add-int/lit8 v0, p1, 0x20

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v0, 0x3

    if-gt v1, v2, :cond_0

    move-object v0, p0

    :goto_0
    if-gtz p1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid format: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt p1, v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid format: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" is too short"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid format: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is malformed at \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
