.class public Lstericson/busybox/donate/domain/JobResult;
.super Ljava/lang/Object;
.source "JobResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private error:Ljava/lang/String;

.field private exception:Ljava/lang/Exception;

.field private obj:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .local p0, this:Lstericson/busybox/donate/domain/JobResult;,"Lstericson/busybox/donate/domain/JobResult<TE;>;"
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object v0, p0, Lstericson/busybox/donate/domain/JobResult;->obj:Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Lstericson/busybox/donate/domain/JobResult;->error:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lstericson/busybox/donate/domain/JobResult;->exception:Ljava/lang/Exception;

    .line 3
    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    .local p0, this:Lstericson/busybox/donate/domain/JobResult;,"Lstericson/busybox/donate/domain/JobResult<TE;>;"
    iget-object v0, p0, Lstericson/busybox/donate/domain/JobResult;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 31
    .local p0, this:Lstericson/busybox/donate/domain/JobResult;,"Lstericson/busybox/donate/domain/JobResult<TE;>;"
    iget-object v0, p0, Lstericson/busybox/donate/domain/JobResult;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getObj()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 11
    .local p0, this:Lstericson/busybox/donate/domain/JobResult;,"Lstericson/busybox/donate/domain/JobResult<TE;>;"
    iget-object v0, p0, Lstericson/busybox/donate/domain/JobResult;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 23
    .local p0, this:Lstericson/busybox/donate/domain/JobResult;,"Lstericson/busybox/donate/domain/JobResult<TE;>;"
    iput-object p1, p0, Lstericson/busybox/donate/domain/JobResult;->error:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setException(Ljava/lang/Exception;)V
    .locals 0
    .parameter "exception"

    .prologue
    .line 27
    .local p0, this:Lstericson/busybox/donate/domain/JobResult;,"Lstericson/busybox/donate/domain/JobResult<TE;>;"
    iput-object p1, p0, Lstericson/busybox/donate/domain/JobResult;->exception:Ljava/lang/Exception;

    .line 28
    return-void
.end method

.method public setObj(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p0, this:Lstericson/busybox/donate/domain/JobResult;,"Lstericson/busybox/donate/domain/JobResult<TE;>;"
    .local p1, obj:Ljava/lang/Object;,"TE;"
    iput-object p1, p0, Lstericson/busybox/donate/domain/JobResult;->obj:Ljava/lang/Object;

    .line 16
    return-void
.end method
