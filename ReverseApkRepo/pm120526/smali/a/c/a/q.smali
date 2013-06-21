.class public final La/c/a/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:La/c/a/q;

.field public static final b:La/c/a/q;

.field public static final c:La/c/a/q;

.field public static final d:La/c/a/q;

.field public static final e:La/c/a/q;

.field private static final g:Ljava/util/Map;


# instance fields
.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, La/c/a/q;->g:Ljava/util/Map;

    new-instance v0, La/c/a/q;

    const-string v1, "GET"

    invoke-direct {v0, v1}, La/c/a/q;-><init>(Ljava/lang/String;)V

    sput-object v0, La/c/a/q;->a:La/c/a/q;

    new-instance v0, La/c/a/q;

    const-string v1, "POST"

    invoke-direct {v0, v1}, La/c/a/q;-><init>(Ljava/lang/String;)V

    sput-object v0, La/c/a/q;->b:La/c/a/q;

    new-instance v0, La/c/a/q;

    const-string v1, "DELETE"

    invoke-direct {v0, v1}, La/c/a/q;-><init>(Ljava/lang/String;)V

    sput-object v0, La/c/a/q;->c:La/c/a/q;

    new-instance v0, La/c/a/q;

    const-string v1, "HEAD"

    invoke-direct {v0, v1}, La/c/a/q;-><init>(Ljava/lang/String;)V

    sput-object v0, La/c/a/q;->d:La/c/a/q;

    new-instance v0, La/c/a/q;

    const-string v1, "PUT"

    invoke-direct {v0, v1}, La/c/a/q;-><init>(Ljava/lang/String;)V

    sput-object v0, La/c/a/q;->e:La/c/a/q;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/c/a/q;->f:Ljava/lang/String;

    sget-object v0, La/c/a/q;->g:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/c/a/q;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, La/c/a/q;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    check-cast p1, La/c/a/q;

    iget-object v0, p0, La/c/a/q;->f:Ljava/lang/String;

    iget-object v1, p1, La/c/a/q;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, La/c/a/q;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "RequestMethod{name=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, La/c/a/q;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
