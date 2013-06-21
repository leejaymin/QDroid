.class public abstract Lorg/a/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Lorg/a/a/i;

.field private static b:Lorg/a/a/e/k;

.field private static c:Lorg/a/a/e/j;

.field private static d:Ljava/util/Set;

.field private static volatile e:Lorg/a/a/i;

.field private static f:Lorg/a/a/d/b;

.field private static g:Ljava/util/Map;

.field private static h:Ljava/util/Map;


# instance fields
.field private final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lorg/a/a/e/i;

    const-string v1, "UTC"

    const-string v2, "UTC"

    invoke-direct {v0, v1, v2, v3, v3}, Lorg/a/a/e/i;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    sput-object v0, Lorg/a/a/i;->a:Lorg/a/a/i;

    invoke-static {}, Lorg/a/a/i;->e()Lorg/a/a/e/k;

    move-result-object v0

    invoke-interface {v0}, Lorg/a/a/e/k;->a()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The provider doesn\'t have any available ids"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v2, "UTC"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The provider doesn\'t support UTC"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v2, Lorg/a/a/i;->a:Lorg/a/a/i;

    const-string v3, "UTC"

    invoke-interface {v0, v3}, Lorg/a/a/e/k;->a(Ljava/lang/String;)Lorg/a/a/i;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/a/a/i;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid UTC zone provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    sput-object v0, Lorg/a/a/i;->b:Lorg/a/a/e/k;

    sput-object v1, Lorg/a/a/i;->d:Ljava/util/Set;

    invoke-static {}, Lorg/a/a/i;->f()Lorg/a/a/e/j;

    move-result-object v0

    sput-object v0, Lorg/a/a/i;->c:Lorg/a/a/e/j;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Id must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/a/a/i;->i:Ljava/lang/String;

    return-void
.end method

.method public static a()Lorg/a/a/i;
    .locals 7

    const/4 v5, 0x0

    sget-object v0, Lorg/a/a/i;->e:Lorg/a/a/i;

    if-nez v0, :cond_3

    const-class v0, Lorg/a/a/i;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/a/a/i;->e:Lorg/a/a/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    :try_start_1
    const-string v1, "user.timezone"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-static {v1}, Lorg/a/a/i;->a(Ljava/lang/String;)Lorg/a/a/i;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    :try_start_2
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-static {}, Lorg/a/a/i;->a()Lorg/a/a/i;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    :cond_0
    :goto_1
    if-nez v1, :cond_1

    :try_start_3
    sget-object v1, Lorg/a/a/i;->a:Lorg/a/a/i;

    :cond_1
    sput-object v1, Lorg/a/a/i;->e:Lorg/a/a/i;

    :cond_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    :cond_3
    return-object v0

    :catch_0
    move-exception v1

    move-object v1, v5

    goto :goto_0

    :cond_4
    :try_start_4
    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v1, Lorg/a/a/i;->a:Lorg/a/a/i;

    goto :goto_1

    :cond_5
    invoke-static {v3}, Lorg/a/a/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    sget-object v5, Lorg/a/a/i;->b:Lorg/a/a/e/k;

    invoke-interface {v5, v4}, Lorg/a/a/e/k;->a(Ljava/lang/String;)Lorg/a/a/i;

    move-result-object v5

    :cond_6
    if-nez v5, :cond_7

    sget-object v5, Lorg/a/a/i;->b:Lorg/a/a/e/k;

    invoke-interface {v5, v3}, Lorg/a/a/e/k;->a(Ljava/lang/String;)Lorg/a/a/i;

    move-result-object v5

    :cond_7
    if-eqz v5, :cond_8

    move-object v1, v5

    goto :goto_1

    :cond_8
    if-nez v4, :cond_b

    invoke-virtual {v2}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "GMT+"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "GMT-"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_9
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/a/a/i;->c(Ljava/lang/String;)I

    move-result v2

    int-to-long v3, v2

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_a

    sget-object v1, Lorg/a/a/i;->a:Lorg/a/a/i;

    goto :goto_1

    :cond_a
    invoke-static {v2}, Lorg/a/a/i;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lorg/a/a/i;->a(Ljava/lang/String;I)Lorg/a/a/i;

    move-result-object v1

    goto :goto_1

    :cond_b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "The datetime zone id \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is not recognised"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v2

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :catch_2
    move-exception v1

    move-object v1, v5

    goto/16 :goto_1

    :cond_c
    move-object v1, v5

    goto/16 :goto_0
.end method

.method public static a(I)Lorg/a/a/i;
    .locals 1

    invoke-static {p0}, Lorg/a/a/i;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/a/a/i;->a(Ljava/lang/String;I)Lorg/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lorg/a/a/i;
    .locals 5

    if-nez p0, :cond_1

    invoke-static {}, Lorg/a/a/i;->a()Lorg/a/a/i;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "UTC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/a/a/i;->a:Lorg/a/a/i;

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/a/a/i;->b:Lorg/a/a/e/k;

    invoke-interface {v0, p0}, Lorg/a/a/e/k;->a(Ljava/lang/String;)Lorg/a/a/i;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    invoke-static {p0}, Lorg/a/a/i;->c(Ljava/lang/String;)I

    move-result v0

    int-to-long v1, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    sget-object v0, Lorg/a/a/i;->a:Lorg/a/a/i;

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lorg/a/a/i;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/a/a/i;->a(Ljava/lang/String;I)Lorg/a/a/i;

    move-result-object v0

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The datetime zone id \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not recognised"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static declared-synchronized a(Ljava/lang/String;I)Lorg/a/a/i;
    .locals 4

    const-class v1, Lorg/a/a/i;

    monitor-enter v1

    if-nez p1, :cond_1

    :try_start_0
    sget-object v0, Lorg/a/a/i;->a:Lorg/a/a/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    sget-object v0, Lorg/a/a/i;->g:Ljava/util/Map;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/a/a/i;->g:Ljava/util/Map;

    :cond_2
    sget-object v0, Lorg/a/a/i;->g:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/i;

    if-nez v0, :cond_0

    :cond_3
    new-instance v0, Lorg/a/a/e/i;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, p1, p1}, Lorg/a/a/e/i;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    sget-object v2, Lorg/a/a/i;->g:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b(I)Ljava/lang/String;
    .locals 7

    const v6, 0x36ee80

    const v5, 0xea60

    const/16 v4, 0x3a

    const/4 v3, 0x2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-ltz p0, :cond_0

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v1, p0

    :goto_0
    div-int v2, v1, v6

    invoke-static {v0, v2, v3}, Lorg/a/a/d/t;->a(Ljava/lang/StringBuffer;II)V

    mul-int/2addr v2, v6

    sub-int/2addr v1, v2

    div-int v2, v1, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {v0, v2, v3}, Lorg/a/a/d/t;->a(Ljava/lang/StringBuffer;II)V

    mul-int/2addr v2, v5

    sub-int/2addr v1, v2

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    neg-int v1, p0

    goto :goto_0

    :cond_1
    div-int/lit16 v2, v1, 0x3e8

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-static {v0, v2, v3}, Lorg/a/a/d/t;->a(Ljava/lang/StringBuffer;II)V

    mul-int/lit16 v2, v2, 0x3e8

    sub-int/2addr v1, v2

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lorg/a/a/d/t;->a(Ljava/lang/StringBuffer;II)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static declared-synchronized b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-class v0, Lorg/a/a/i;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/a/a/i;->h:Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "GMT"

    const-string v3, "UTC"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "WET"

    const-string v3, "WET"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "CET"

    const-string v3, "CET"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "MET"

    const-string v3, "CET"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ECT"

    const-string v3, "CET"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "EET"

    const-string v3, "EET"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "MIT"

    const-string v3, "Pacific/Apia"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "HST"

    const-string v3, "Pacific/Honolulu"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "AST"

    const-string v3, "America/Anchorage"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "PST"

    const-string v3, "America/Los_Angeles"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "MST"

    const-string v3, "America/Denver"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "PNT"

    const-string v3, "America/Phoenix"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "CST"

    const-string v3, "America/Chicago"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "EST"

    const-string v3, "America/New_York"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "IET"

    const-string v3, "America/Indiana/Indianapolis"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "PRT"

    const-string v3, "America/Puerto_Rico"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "CNT"

    const-string v3, "America/St_Johns"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "AGT"

    const-string v3, "America/Argentina/Buenos_Aires"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "BET"

    const-string v3, "America/Sao_Paulo"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ART"

    const-string v3, "Africa/Cairo"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "CAT"

    const-string v3, "Africa/Harare"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "EAT"

    const-string v3, "Africa/Addis_Ababa"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "NET"

    const-string v3, "Asia/Yerevan"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "PLT"

    const-string v3, "Asia/Karachi"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "IST"

    const-string v3, "Asia/Kolkata"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "BST"

    const-string v3, "Asia/Dhaka"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "VST"

    const-string v3, "Asia/Ho_Chi_Minh"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "CTT"

    const-string v3, "Asia/Shanghai"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "JST"

    const-string v3, "Asia/Tokyo"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ACT"

    const-string v3, "Australia/Darwin"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "AET"

    const-string v3, "Australia/Sydney"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SST"

    const-string v3, "Pacific/Guadalcanal"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "NST"

    const-string v3, "Pacific/Auckland"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v1, Lorg/a/a/i;->h:Ljava/util/Map;

    :cond_0
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static b()Ljava/util/Set;
    .locals 1

    sget-object v0, Lorg/a/a/i;->d:Ljava/util/Set;

    return-object v0
.end method

.method private static c(Ljava/lang/String;)I
    .locals 2

    new-instance v0, Lorg/a/a/j;

    invoke-direct {v0}, Lorg/a/a/j;-><init>()V

    invoke-static {}, Lorg/a/a/i;->g()Lorg/a/a/d/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/a/a/d/b;->a(Lorg/a/a/a;)Lorg/a/a/d/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/a/a/d/b;->a(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    neg-int v0, v0

    return v0
.end method

.method private static e()Lorg/a/a/e/k;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "org.joda.time.DateTimeZone.Provider"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/e/k;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    if-nez v0, :cond_0

    :try_start_2
    new-instance v1, Lorg/a/a/e/m;

    const-string v2, "org/joda/time/tz/data"

    invoke-direct {v1, v2}, Lorg/a/a/e/m;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    :cond_0
    :goto_1
    if-nez v0, :cond_1

    new-instance v0, Lorg/a/a/e/l;

    invoke-direct {v0}, Lorg/a/a/e/l;-><init>()V

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Ljava/lang/ThreadGroup;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Ljava/lang/ThreadGroup;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static f()Lorg/a/a/e/j;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "org.joda.time.DateTimeZone.NameProvider"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/a/a/e/j;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Lorg/a/a/e/h;

    invoke-direct {v0}, Lorg/a/a/e/h;-><init>()V

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Ljava/lang/ThreadGroup;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method private static declared-synchronized g()Lorg/a/a/d/b;
    .locals 3

    const-class v0, Lorg/a/a/i;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/a/a/i;->f:Lorg/a/a/d/b;

    if-nez v1, :cond_0

    new-instance v1, Lorg/a/a/d/c;

    invoke-direct {v1}, Lorg/a/a/d/c;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/a/a/d/c;->b(Ljava/lang/String;)Lorg/a/a/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lorg/a/a/d/c;->a()Lorg/a/a/d/b;

    move-result-object v1

    sput-object v1, Lorg/a/a/i;->f:Lorg/a/a/d/b;

    :cond_0
    sget-object v1, Lorg/a/a/i;->f:Lorg/a/a/d/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(JJ)J
    .locals 8

    invoke-virtual {p0, p3, p4}, Lorg/a/a/i;->b(J)I

    move-result v0

    int-to-long v1, v0

    sub-long v1, p1, v1

    invoke-virtual {p0, v1, v2}, Lorg/a/a/i;->b(J)I

    move-result v3

    if-ne v3, v0, :cond_0

    move-wide v0, v1

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/a/a/i;->b(J)I

    move-result v0

    int-to-long v1, v0

    sub-long v1, p1, v1

    invoke-virtual {p0, v1, v2}, Lorg/a/a/i;->b(J)I

    move-result v1

    if-eq v0, v1, :cond_4

    if-gez v0, :cond_4

    int-to-long v2, v0

    sub-long v2, p1, v2

    invoke-virtual {p0, v2, v3}, Lorg/a/a/i;->e(J)J

    move-result-wide v2

    int-to-long v4, v0

    sub-long v4, p1, v4

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    const-wide v2, 0x7fffffffffffffffL

    :cond_1
    int-to-long v4, v1

    sub-long v4, p1, v4

    invoke-virtual {p0, v4, v5}, Lorg/a/a/i;->e(J)J

    move-result-wide v4

    int-to-long v6, v1

    sub-long v6, p1, v6

    cmp-long v6, v4, v6

    if-nez v6, :cond_2

    const-wide v4, 0x7fffffffffffffffL

    :cond_2
    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    :goto_1
    int-to-long v1, v0

    sub-long v1, p1, v1

    xor-long v3, p1, v1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    int-to-long v3, v0

    xor-long/2addr v3, p1

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gez v0, :cond_3

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Subtracting time zone offset caused overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-wide v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public abstract a(J)Ljava/lang/String;
.end method

.method public final a(JLjava/util/Locale;)Ljava/lang/String;
    .locals 4

    if-nez p3, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/a/a/i;->a(J)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lorg/a/a/i;->i:Ljava/lang/String;

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    sget-object v2, Lorg/a/a/i;->c:Lorg/a/a/e/j;

    iget-object v3, p0, Lorg/a/a/i;->i:Ljava/lang/String;

    invoke-interface {v2, v0, v3, v1}, Lorg/a/a/e/j;->a(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/a/a/i;->b(J)I

    move-result v0

    invoke-static {v0}, Lorg/a/a/i;->b(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, p3

    goto :goto_0
.end method

.method public abstract b(J)I
.end method

.method public final b(JLjava/util/Locale;)Ljava/lang/String;
    .locals 4

    if-nez p3, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/a/a/i;->a(J)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lorg/a/a/i;->i:Ljava/lang/String;

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    sget-object v2, Lorg/a/a/i;->c:Lorg/a/a/e/j;

    iget-object v3, p0, Lorg/a/a/i;->i:Ljava/lang/String;

    invoke-interface {v2, v0, v3, v1}, Lorg/a/a/e/j;->b(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/a/a/i;->b(J)I

    move-result v0

    invoke-static {v0}, Lorg/a/a/i;->b(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, p3

    goto :goto_0
.end method

.method public c(J)I
    .locals 7

    invoke-virtual {p0, p1, p2}, Lorg/a/a/i;->b(J)I

    move-result v0

    int-to-long v1, v0

    sub-long v1, p1, v1

    invoke-virtual {p0, v1, v2}, Lorg/a/a/i;->b(J)I

    move-result v3

    if-eq v0, v3, :cond_0

    sub-int v4, v0, v3

    if-gez v4, :cond_1

    invoke-virtual {p0, v1, v2}, Lorg/a/a/i;->e(J)J

    move-result-wide v1

    int-to-long v4, v3

    sub-long v4, p1, v4

    invoke-virtual {p0, v4, v5}, Lorg/a/a/i;->e(J)J

    move-result-wide v4

    cmp-long v1, v1, v4

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_0
    if-lez v0, :cond_1

    invoke-virtual {p0, v1, v2}, Lorg/a/a/i;->f(J)J

    move-result-wide v4

    cmp-long v6, v4, v1

    if-gez v6, :cond_1

    invoke-virtual {p0, v4, v5}, Lorg/a/a/i;->b(J)I

    move-result v6

    sub-int v0, v6, v0

    sub-long/2addr v1, v4

    int-to-long v4, v0

    cmp-long v0, v1, v4

    if-gtz v0, :cond_1

    move v0, v6

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/a/a/i;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final d(J)J
    .locals 7

    const-wide/16 v5, 0x0

    invoke-virtual {p0, p1, p2}, Lorg/a/a/i;->b(J)I

    move-result v0

    int-to-long v1, v0

    add-long/2addr v1, p1

    xor-long v3, p1, v1

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    int-to-long v3, v0

    xor-long/2addr v3, p1

    cmp-long v0, v3, v5

    if-ltz v0, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Adding time zone offset caused overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-wide v1
.end method

.method public abstract d()Z
.end method

.method public abstract e(J)J
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract f(J)J
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/a/a/i;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x39

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/a/a/i;->i:Ljava/lang/String;

    return-object v0
.end method
