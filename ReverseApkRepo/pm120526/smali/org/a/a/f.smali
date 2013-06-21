.class public final Lorg/a/a/f;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lorg/a/a/h;

.field private static volatile b:Lorg/a/a/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/a/a/h;

    invoke-direct {v0}, Lorg/a/a/h;-><init>()V

    sput-object v0, Lorg/a/a/f;->a:Lorg/a/a/h;

    sput-object v0, Lorg/a/a/f;->b:Lorg/a/a/g;

    return-void
.end method

.method public static final a()J
    .locals 2

    sget-object v0, Lorg/a/a/f;->b:Lorg/a/a/g;

    invoke-interface {v0}, Lorg/a/a/g;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final a(Lorg/a/a/u;)J
    .locals 2

    if-nez p0, :cond_0

    invoke-static {}, Lorg/a/a/f;->a()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-interface {p0}, Lorg/a/a/u;->a()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static final a(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;
    .locals 6

    :try_start_0
    const-class v1, Ljava/text/DateFormatSymbols;

    const-string v2, "getInstance"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/util/Locale;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/text/DateFormatSymbols;

    move-object p0, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1, p0}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    goto :goto_0
.end method

.method public static final a(Lorg/a/a/a;)Lorg/a/a/a;
    .locals 1

    if-nez p0, :cond_0

    invoke-static {}, Lorg/a/a/b/t;->O()Lorg/a/a/b/t;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static final b(Lorg/a/a/u;)Lorg/a/a/a;
    .locals 1

    if-nez p0, :cond_1

    invoke-static {}, Lorg/a/a/b/t;->O()Lorg/a/a/b/t;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p0}, Lorg/a/a/u;->b()Lorg/a/a/a;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/a/a/b/t;->O()Lorg/a/a/b/t;

    move-result-object v0

    goto :goto_0
.end method
