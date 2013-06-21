.class final Lcom/scoreloop/client/android/core/server/Server$a;
.super Lcom/scoreloop/client/android/core/util/MainThreadHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/server/Server;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lcom/scoreloop/client/android/core/server/Server;


# direct methods
.method synthetic constructor <init>(Lcom/scoreloop/client/android/core/server/Server;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scoreloop/client/android/core/server/Server$a;-><init>(Lcom/scoreloop/client/android/core/server/Server;B)V

    return-void
.end method

.method private constructor <init>(Lcom/scoreloop/client/android/core/server/Server;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/scoreloop/client/android/core/server/Server$a;->a:Lcom/scoreloop/client/android/core/server/Server;

    invoke-direct {p0}, Lcom/scoreloop/client/android/core/util/MainThreadHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter

    .prologue
    .line 38
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/scoreloop/client/android/core/server/Server$RequestResult;

    .line 39
    iget-object v1, v0, Lcom/scoreloop/client/android/core/server/Server$RequestResult;->b:Lcom/scoreloop/client/android/core/server/Request;

    .line 40
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/server/Request;->k()Lcom/scoreloop/client/android/core/server/Request$State;

    move-result-object v2

    sget-object v3, Lcom/scoreloop/client/android/core/server/Request$State;->CANCELLED:Lcom/scoreloop/client/android/core/server/Request$State;

    if-eq v2, v3, :cond_0

    .line 41
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 69
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown message type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :pswitch_0
    iget-object v0, v0, Lcom/scoreloop/client/android/core/server/Server$RequestResult;->c:Lcom/scoreloop/client/android/core/server/Response;

    .line 44
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/server/Response;->b()Ljava/lang/Integer;

    move-result-object v2

    .line 45
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/server/Request;->i()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 46
    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/server/Request;->a(Lcom/scoreloop/client/android/core/server/Response;)V

    .line 75
    :goto_0
    :pswitch_1
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/server/Request;->e()Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;->a(Lcom/scoreloop/client/android/core/server/Request;)V

    .line 76
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/server/Request;->r()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 77
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/server/Request;->q()Ljava/lang/String;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/server/Request;->f()V

    .line 84
    iget-object v2, p0, Lcom/scoreloop/client/android/core/server/Server$a;->a:Lcom/scoreloop/client/android/core/server/Server;

    invoke-static {v2}, Lcom/scoreloop/client/android/core/server/Server;->a(Lcom/scoreloop/client/android/core/server/Server;)Lcom/scoreloop/client/android/core/util/Cache;

    move-result-object v2

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/server/Request;->r()J

    move-result-wide v3

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/scoreloop/client/android/core/util/Cache;->a(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/Server$a;->a:Lcom/scoreloop/client/android/core/server/Server;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/server/Server;->b(Lcom/scoreloop/client/android/core/server/Server;)Lcom/scoreloop/client/android/core/server/ServerWorkerThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->a()Lcom/scoreloop/client/android/core/server/ServerWorkerThread$ServerWorkerHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/server/ServerWorkerThread$ServerWorkerHandler;->b()V

    .line 95
    return-void

    .line 49
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid response ID, expected:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/server/Request;->i()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", but was:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/server/Request;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 55
    :pswitch_2
    iget-object v0, v0, Lcom/scoreloop/client/android/core/server/Server$RequestResult;->a:Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/server/Request;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 63
    :pswitch_3
    iget-object v0, v0, Lcom/scoreloop/client/android/core/server/Server$RequestResult;->a:Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Lcom/scoreloop/client/android/core/server/Request;->a(Ljava/lang/Exception;)V

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
