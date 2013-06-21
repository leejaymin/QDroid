.class public final Lccc71/utils/z;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Lccc71/utils/ab;
    .locals 3
    .parameter

    .prologue
    .line 18
    new-instance v0, Lccc71/utils/ab;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, " +"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    invoke-direct {v0, v1}, Lccc71/utils/ab;-><init>(Ljava/lang/Process;)V

    return-object v0
.end method
