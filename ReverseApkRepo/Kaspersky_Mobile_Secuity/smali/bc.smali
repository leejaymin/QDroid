.class public final Lbc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LfK;)I
    .locals 3
    .parameter

    .prologue
    .line 16
    invoke-static {}, Lgr;->a()Lgr;

    move-result-object v0

    sget-object v1, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    iget-object v2, p0, LfK;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lgr;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 17
    const/16 v0, 0x8

    .line 19
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
