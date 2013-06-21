.class final enum Lorg/a/a/d/k;
.super Ljava/lang/Enum;

# interfaces
.implements Lorg/a/a/d/p;
.implements Lorg/a/a/d/s;


# static fields
.field public static final enum a:Lorg/a/a/d/k;

.field static final b:Ljava/util/Set;

.field static final c:I

.field private static final synthetic d:[Lorg/a/a/d/k;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lorg/a/a/d/k;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Lorg/a/a/d/k;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/a/a/d/k;->a:Lorg/a/a/d/k;

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/a/a/d/k;

    sget-object v1, Lorg/a/a/d/k;->a:Lorg/a/a/d/k;

    aput-object v1, v0, v2

    sput-object v0, Lorg/a/a/d/k;->d:[Lorg/a/a/d/k;

    invoke-static {}, Lorg/a/a/i;->b()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/a/a/d/k;->b:Ljava/util/Set;

    sget-object v0, Lorg/a/a/d/k;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v2, v0

    goto :goto_0

    :cond_0
    sput v2, Lorg/a/a/d/k;->c:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    sget v0, Lorg/a/a/d/k;->c:I

    return v0
.end method

.method public final a(Lorg/a/a/d/q;Ljava/lang/String;I)I
    .locals 3

    invoke-virtual {p2, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/a/a/d/k;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lorg/a/a/i;->a(Ljava/lang/String;)Lorg/a/a/i;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/a/a/d/q;->a(Lorg/a/a/i;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p3

    :goto_0
    return v0

    :cond_1
    xor-int/lit8 v0, p3, -0x1

    goto :goto_0
.end method

.method public final a(Ljava/lang/StringBuffer;JLorg/a/a/a;ILorg/a/a/i;Ljava/util/Locale;)V
    .locals 1

    if-eqz p6, :cond_0

    invoke-virtual {p6}, Lorg/a/a/i;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    sget v0, Lorg/a/a/d/k;->c:I

    return v0
.end method
