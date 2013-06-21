.class public abstract Lgr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lgr;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lgr;
    .locals 2

    .prologue
    .line 69
    sget-object v0, Lgr;->a:Lgr;

    if-nez v0, :cond_0

    .line 71
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 72
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 73
    new-instance v0, Lgs;

    invoke-direct {v0}, Lgs;-><init>()V

    sput-object v0, Lgr;->a:Lgr;

    .line 78
    :cond_0
    :goto_0
    sget-object v0, Lgr;->a:Lgr;

    return-object v0

    .line 75
    :cond_1
    new-instance v0, Lgt;

    invoke-direct {v0}, Lgt;-><init>()V

    sput-object v0, Lgr;->a:Lgr;

    goto :goto_0
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Landroid/net/Uri;)J
.end method

.method public final a(Landroid/content/Context;Ljava/lang/Long;)LeI;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lgr;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    .line 33
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lgr;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 34
    new-instance v0, LeI;

    const/4 v1, 0x2

    const v2, 0x7f020051

    const v3, 0x7f020052

    invoke-direct/range {v0 .. v5}, LeI;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public abstract a(Landroid/content/Context;J)Ljava/lang/String;
.end method

.method public abstract a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Set;
.end method

.method public final a(Landroid/content/Context;Ljava/util/Vector;)Ljava/util/Set;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 57
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 58
    invoke-virtual {p2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 60
    invoke-virtual {p0, p1, v3, v4}, Lgr;->d(Landroid/content/Context;J)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 62
    :cond_0
    return-object v1
.end method

.method public abstract a(Landroid/app/Activity;I)V
.end method

.method public abstract a(Landroid/content/Context;)V
.end method

.method protected abstract b(Landroid/content/Context;J)Ljava/lang/String;
.end method

.method public abstract b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract c(Landroid/content/Context;J)Z
.end method

.method public abstract d(Landroid/content/Context;J)Ljava/util/Set;
.end method
