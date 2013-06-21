.class public abstract Lfj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lfj;

.field private static b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lfj;->a:Lfj;

    .line 19
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lfj;->b:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lfj;
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lfj;->a:Lfj;

    if-nez v0, :cond_0

    .line 37
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 38
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 39
    new-instance v0, Lfk;

    invoke-direct {v0}, Lfk;-><init>()V

    sput-object v0, Lfj;->a:Lfj;

    .line 44
    :cond_0
    :goto_0
    sget-object v0, Lfj;->a:Lfj;

    return-object v0

    .line 41
    :cond_1
    new-instance v0, Lfl;

    invoke-direct {v0}, Lfl;-><init>()V

    sput-object v0, Lfj;->a:Lfj;

    goto :goto_0
.end method

.method public static a(JIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    .line 24
    sget-object v0, Lfj;->b:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfi;

    .line 25
    if-eqz v0, :cond_0

    .line 26
    invoke-interface {v0, p3}, Lfi;->a(I)Z

    .line 27
    sget-object v0, Lfj;->b:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;Ljava/lang/String;Lfi;)J
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const-wide/16 v2, 0x0

    .line 49
    .line 50
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-wide v0, v2

    .line 85
    :cond_1
    :goto_0
    return-wide v0

    .line 57
    :cond_2
    if-eqz p3, :cond_7

    .line 59
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 60
    const-wide/16 v4, 0x3e8

    rem-long v4, v0, v4

    sub-long/2addr v0, v4

    .line 61
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    rem-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 62
    sget-object v4, Lfj;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    .line 63
    sget-object v4, Lfj;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :goto_1
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    move-wide v0, v2

    .line 67
    goto :goto_0

    .line 70
    :cond_5
    invoke-virtual {p0, p2}, Lfj;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 71
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v6, :cond_6

    .line 76
    invoke-virtual {p0, p1, p2, v0, v1}, Lfj;->a(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 78
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v6, :cond_1

    .line 83
    invoke-virtual {p0, p1, v2}, Lfj;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_7
    move-wide v0, v2

    goto :goto_1
.end method

.method protected abstract a(Ljava/lang/String;)Ljava/util/ArrayList;
.end method

.method protected abstract a(Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method protected abstract a(Ljava/lang/String;Ljava/util/ArrayList;)V
.end method
