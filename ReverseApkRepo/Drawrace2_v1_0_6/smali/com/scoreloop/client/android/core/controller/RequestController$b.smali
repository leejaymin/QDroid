.class final Lcom/scoreloop/client/android/core/controller/RequestController$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/controller/RequestController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field private synthetic a:Lcom/scoreloop/client/android/core/controller/RequestController;


# direct methods
.method synthetic constructor <init>(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    .locals 1
    .parameter

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scoreloop/client/android/core/controller/RequestController$b;-><init>(Lcom/scoreloop/client/android/core/controller/RequestController;B)V

    return-void
.end method

.method private constructor <init>(Lcom/scoreloop/client/android/core/controller/RequestController;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/scoreloop/client/android/core/controller/RequestController$b;->a:Lcom/scoreloop/client/android/core/controller/RequestController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/scoreloop/client/android/core/server/Request;)V
    .locals 2
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/RequestController$b;->a:Lcom/scoreloop/client/android/core/controller/RequestController;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/controller/RequestController;->j()V

    .line 64
    sget-object v0, Lcom/scoreloop/client/android/core/controller/RequestController$2;->a:[I

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/server/Request;->k()Lcom/scoreloop/client/android/core/server/Request$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/server/Request$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 85
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onRequestCompleted called for not completed request"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/RequestController$b;->a:Lcom/scoreloop/client/android/core/controller/RequestController;

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/server/Request;->j()Lcom/scoreloop/client/android/core/server/Response;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/scoreloop/client/android/core/controller/RequestController;->a(Lcom/scoreloop/client/android/core/server/Request;Lcom/scoreloop/client/android/core/server/Response;)Z

    move-result v0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/RequestController$b;->a:Lcom/scoreloop/client/android/core/controller/RequestController;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/controller/RequestController;->a(Lcom/scoreloop/client/android/core/controller/RequestController;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    iget-object v1, p0, Lcom/scoreloop/client/android/core/controller/RequestController$b;->a:Lcom/scoreloop/client/android/core/controller/RequestController;

    invoke-static {v1, v0}, Lcom/scoreloop/client/android/core/controller/RequestController;->a(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V

    goto :goto_0

    .line 77
    :pswitch_1
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/RequestController$b;->a:Lcom/scoreloop/client/android/core/controller/RequestController;

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/server/Request;->g()Ljava/lang/Exception;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/scoreloop/client/android/core/controller/RequestController;->a(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V

    goto :goto_0

    .line 81
    :pswitch_2
    iget-object v0, p0, Lcom/scoreloop/client/android/core/controller/RequestController$b;->a:Lcom/scoreloop/client/android/core/controller/RequestController;

    new-instance v1, Lcom/scoreloop/client/android/core/controller/RequestCancelledException;

    invoke-direct {v1}, Lcom/scoreloop/client/android/core/controller/RequestCancelledException;-><init>()V

    invoke-static {v0, v1}, Lcom/scoreloop/client/android/core/controller/RequestController;->a(Lcom/scoreloop/client/android/core/controller/RequestController;Ljava/lang/Exception;)V

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
