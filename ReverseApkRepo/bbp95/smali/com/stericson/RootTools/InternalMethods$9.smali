.class Lcom/stericson/RootTools/InternalMethods$9;
.super Lcom/stericson/RootTools/RootTools$Result;
.source "InternalMethods.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stericson/RootTools/InternalMethods;->hasUtil(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$box:Ljava/lang/String;

.field private final synthetic val$util:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/stericson/RootTools/InternalMethods$9;->val$box:Ljava/lang/String;

    iput-object p2, p0, Lcom/stericson/RootTools/InternalMethods$9;->val$util:Ljava/lang/String;

    .line 1197
    invoke-direct {p0}, Lcom/stericson/RootTools/RootTools$Result;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 0
    .parameter "diag"

    .prologue
    .line 1222
    return-void
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 1
    .parameter "ex"

    .prologue
    .line 1217
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/stericson/RootTools/InternalMethods$9;->setError(I)Lcom/stericson/RootTools/RootTools$Result;

    .line 1218
    return-void
.end method

.method public process(Ljava/lang/String;)V
    .locals 3
    .parameter "line"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1202
    iget-object v0, p0, Lcom/stericson/RootTools/InternalMethods$9;->val$box:Ljava/lang/String;

    const-string v1, "toolbox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1203
    const-string v0, "no such tool"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1204
    invoke-virtual {p0, v2}, Lcom/stericson/RootTools/InternalMethods$9;->setError(I)Lcom/stericson/RootTools/RootTools$Result;

    .line 1213
    :cond_0
    :goto_0
    return-void

    .line 1206
    :cond_1
    iget-object v0, p0, Lcom/stericson/RootTools/InternalMethods$9;->val$box:Ljava/lang/String;

    const-string v1, "busybox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1208
    iget-object v0, p0, Lcom/stericson/RootTools/InternalMethods$9;->val$util:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1209
    const-string v0, "Found util!"

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    .line 1210
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/stericson/RootTools/InternalMethods$9;->setData(Ljava/io/Serializable;)Lcom/stericson/RootTools/RootTools$Result;

    goto :goto_0
.end method

.method public processError(Ljava/lang/String;)V
    .locals 1
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1226
    invoke-virtual {p0}, Lcom/stericson/RootTools/InternalMethods$9;->getProcess()Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 1227
    return-void
.end method
