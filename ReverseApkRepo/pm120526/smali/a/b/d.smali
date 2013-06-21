.class public final La/b/d;
.super Ljava/lang/Object;

# interfaces
.implements La/b/b;
.implements Ljava/io/Serializable;


# static fields
.field private static a:La/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La/b/d;

    invoke-direct {v0}, La/b/d;-><init>()V

    sput-object v0, La/b/d;->a:La/b/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()La/b/d;
    .locals 1

    sget-object v0, La/b/d;->a:La/b/d;

    return-object v0
.end method


# virtual methods
.method public final a(La/c/a/k;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    sget-object v0, La/b/d;->a:La/b/d;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "NullAuthentication{SINGLETON}"

    return-object v0
.end method
