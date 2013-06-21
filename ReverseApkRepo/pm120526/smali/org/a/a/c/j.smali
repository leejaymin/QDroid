.class public final Lorg/a/a/c/j;
.super Lorg/a/a/k;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lorg/a/a/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/a/a/c/j;

    invoke-direct {v0}, Lorg/a/a/c/j;-><init>()V

    sput-object v0, Lorg/a/a/c/j;->a:Lorg/a/a/k;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/a/a/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(JI)J
    .locals 2

    int-to-long v0, p3

    invoke-static {p1, p2, v0, v1}, Lorg/a/a/c/g;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(JJ)J
    .locals 2

    invoke-static {p1, p2, p3, p4}, Lorg/a/a/c/g;->a(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a()Lorg/a/a/l;
    .locals 1

    invoke-static {}, Lorg/a/a/l;->a()Lorg/a/a/l;

    move-result-object v0

    return-object v0
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 5

    const-wide/16 v3, 0x1

    check-cast p1, Lorg/a/a/k;

    invoke-virtual {p1}, Lorg/a/a/k;->d()J

    move-result-wide v0

    cmp-long v2, v3, v0

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    cmp-long v0, v3, v0

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final d()J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const-wide/16 v2, 0x1

    const/4 v1, 0x0

    instance-of v0, p1, Lorg/a/a/c/j;

    if-eqz v0, :cond_1

    cmp-long v0, v2, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "DurationField[millis]"

    return-object v0
.end method
