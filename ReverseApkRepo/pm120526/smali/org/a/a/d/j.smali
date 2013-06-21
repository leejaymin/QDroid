.class final Lorg/a/a/d/j;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/a/a/d/p;
.implements Lorg/a/a/d/s;


# static fields
.field private static a:Ljava/util/Map;


# instance fields
.field private final b:Lorg/a/a/d;

.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/a/a/d/j;->a:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lorg/a/a/d;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/a/a/d/j;->b:Lorg/a/a/d;

    iput-boolean p2, p0, Lorg/a/a/d/j;->c:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-boolean v0, p0, Lorg/a/a/d/j;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x14

    goto :goto_0
.end method

.method public final a(Lorg/a/a/d/q;Ljava/lang/String;I)I
    .locals 9

    const/16 v8, 0x20

    invoke-virtual {p1}, Lorg/a/a/d/q;->b()Ljava/util/Locale;

    move-result-object v2

    sget-object v3, Lorg/a/a/d/j;->a:Ljava/util/Map;

    monitor-enter v3

    :try_start_0
    sget-object v0, Lorg/a/a/d/j;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lorg/a/a/d/j;->a:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lorg/a/a/d/j;->b:Lorg/a/a/d;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashSet;

    const/16 v4, 0x20

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(I)V

    new-instance v4, Lorg/a/a/p;

    sget-object v5, Lorg/a/a/i;->a:Lorg/a/a/i;

    invoke-direct {v4, v5}, Lorg/a/a/p;-><init>(Lorg/a/a/i;)V

    iget-object v5, p0, Lorg/a/a/d/j;->b:Lorg/a/a/d;

    invoke-virtual {v4, v5}, Lorg/a/a/p;->a(Lorg/a/a/d;)Lorg/a/a/q;

    move-result-object v4

    invoke-virtual {v4}, Lorg/a/a/q;->d()I

    move-result v5

    invoke-virtual {v4}, Lorg/a/a/q;->e()I

    move-result v6

    sub-int v7, v6, v5

    if-le v7, v8, :cond_0

    xor-int/lit8 v0, p3, -0x1

    monitor-exit v3

    :goto_1
    return v0

    :cond_0
    invoke-virtual {v4, v2}, Lorg/a/a/q;->c(Ljava/util/Locale;)I

    move-result v7

    :goto_2
    if-gt v5, v6, :cond_1

    invoke-virtual {v4, v5}, Lorg/a/a/q;->a(I)Lorg/a/a/p;

    invoke-virtual {v4, v2}, Lorg/a/a/q;->b(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v2}, Lorg/a/a/q;->b(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v2}, Lorg/a/a/q;->b(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v2}, Lorg/a/a/q;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v2}, Lorg/a/a/q;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v2}, Lorg/a/a/q;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    const-string v4, "en"

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/a/a/d/j;->b:Lorg/a/a/d;

    invoke-static {}, Lorg/a/a/d;->w()Lorg/a/a/d;

    move-result-object v5

    if-ne v4, v5, :cond_5

    const-string v4, "BCE"

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v4, "bce"

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v4, "CE"

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v4, "ce"

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x3

    :goto_3
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    iget-object v6, p0, Lorg/a/a/d/j;->b:Lorg/a/a/d;

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    move v0, v4

    :goto_4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, p3

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_5
    if-le v0, p3, :cond_4

    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v1, p0, Lorg/a/a/d/j;->b:Lorg/a/a/d;

    invoke-virtual {p1, v1, v3, v2}, Lorg/a/a/d/q;->a(Lorg/a/a/d;Ljava/lang/String;Ljava/util/Locale;)V

    goto/16 :goto_1

    :cond_2
    const/4 v1, 0x0

    :try_start_1
    aget-object v1, v0, v1

    check-cast v1, Ljava/util/Set;

    const/4 v4, 0x1

    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_4
    xor-int/lit8 v0, p3, -0x1

    goto/16 :goto_1

    :cond_5
    move v4, v7

    goto :goto_3

    :cond_6
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/StringBuffer;JLorg/a/a/a;ILorg/a/a/i;Ljava/util/Locale;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/a/a/d/j;->b:Lorg/a/a/d;

    invoke-virtual {v0, p4}, Lorg/a/a/d;->a(Lorg/a/a/a;)Lorg/a/a/c;

    move-result-object v0

    iget-boolean v1, p0, Lorg/a/a/d/j;->c:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, p2, p3, p7}, Lorg/a/a/c;->b(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    return-void

    :cond_0
    invoke-virtual {v0, p2, p3, p7}, Lorg/a/a/c;->a(JLjava/util/Locale;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const v0, 0xfffd

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public final b()I
    .locals 1

    invoke-virtual {p0}, Lorg/a/a/d/j;->a()I

    move-result v0

    return v0
.end method
