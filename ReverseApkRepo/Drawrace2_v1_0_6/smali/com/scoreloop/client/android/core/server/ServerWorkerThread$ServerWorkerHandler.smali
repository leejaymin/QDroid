.class public Lcom/scoreloop/client/android/core/server/ServerWorkerThread$ServerWorkerHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/server/ServerWorkerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServerWorkerHandler"
.end annotation


# static fields
.field private static synthetic b:Z


# instance fields
.field private volatile a:Z

.field private synthetic c:Lcom/scoreloop/client/android/core/server/ServerWorkerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 187
    const-class v0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread$ServerWorkerHandler;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/scoreloop/client/android/core/server/ServerWorkerThread;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread$ServerWorkerHandler;->c:Lcom/scoreloop/client/android/core/server/ServerWorkerThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 192
    sget-boolean v0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread$ServerWorkerHandler;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread$ServerWorkerHandler;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 193
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread$ServerWorkerHandler;->a:Z

    .line 194
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 197
    sget-boolean v0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread$ServerWorkerHandler;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread$ServerWorkerHandler;->a:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 198
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread$ServerWorkerHandler;->a:Z

    .line 199
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 204
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_4

    .line 205
    :goto_0
    iget-boolean v0, p0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread$ServerWorkerHandler;->a:Z

    if-eqz v0, :cond_0

    .line 207
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 208
    const-wide/16 v0, 0x32

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    goto :goto_0

    .line 214
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/scoreloop/client/android/core/server/Request;

    .line 216
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/server/Request;->m()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 217
    iget-object v1, p0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread$ServerWorkerHandler;->c:Lcom/scoreloop/client/android/core/server/ServerWorkerThread;

    const/4 v2, 0x4

    invoke-static {v1, v0, v6, v2, v6}, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->a(Lcom/scoreloop/client/android/core/server/ServerWorkerThread;Lcom/scoreloop/client/android/core/server/Request;Lcom/scoreloop/client/android/core/server/Response;ILjava/lang/Exception;)V

    .line 265
    :cond_1
    :goto_1
    return-void

    .line 221
    :cond_2
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/server/Request;->e()Lcom/scoreloop/client/android/core/server/RequestCompletionCallback;

    .line 222
    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/server/Request;->p()V

    .line 231
    :try_start_1
    iget-object v1, p0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread$ServerWorkerHandler;->c:Lcom/scoreloop/client/android/core/server/ServerWorkerThread;

    iget-object v2, p0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread$ServerWorkerHandler;->c:Lcom/scoreloop/client/android/core/server/ServerWorkerThread;

    invoke-static {v2}, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->a(Lcom/scoreloop/client/android/core/server/ServerWorkerThread;)Lcom/scoreloop/client/android/core/server/a;

    move-result-object v2

    new-instance v3, Lcom/scoreloop/client/android/core/server/a$a;

    invoke-direct {v3, v2}, Lcom/scoreloop/client/android/core/server/a$a;-><init>(Lcom/scoreloop/client/android/core/server/a;)V

    invoke-static {v1, v3}, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->a(Lcom/scoreloop/client/android/core/server/ServerWorkerThread;Lcom/scoreloop/client/android/core/server/a$a;)Lcom/scoreloop/client/android/core/server/a$a;

    .line 232
    iget-object v1, p0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread$ServerWorkerHandler;->c:Lcom/scoreloop/client/android/core/server/ServerWorkerThread;

    invoke-static {v1}, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->b(Lcom/scoreloop/client/android/core/server/ServerWorkerThread;)Lcom/scoreloop/client/android/core/server/a$a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/server/Request;->i()I

    move-result v2

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/server/Request;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/server/Request;->b()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/server/Request;->h()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/scoreloop/client/android/core/server/a$a;->a(ILjava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 235
    iget-object v1, p0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread$ServerWorkerHandler;->c:Lcom/scoreloop/client/android/core/server/ServerWorkerThread;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->a:Lcom/scoreloop/client/android/core/server/Response;

    .line 236
    iget-object v1, p0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread$ServerWorkerHandler;->c:Lcom/scoreloop/client/android/core/server/ServerWorkerThread;

    invoke-static {v1}, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->a(Lcom/scoreloop/client/android/core/server/ServerWorkerThread;)Lcom/scoreloop/client/android/core/server/a;

    move-result-object v1

    iget-object v2, p0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread$ServerWorkerHandler;->c:Lcom/scoreloop/client/android/core/server/ServerWorkerThread;

    invoke-static {v2}, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->b(Lcom/scoreloop/client/android/core/server/ServerWorkerThread;)Lcom/scoreloop/client/android/core/server/a$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/scoreloop/client/android/core/server/a;->a(Lcom/scoreloop/client/android/core/server/a$a;)V

    .line 239
    iget-object v1, p0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread$ServerWorkerHandler;->c:Lcom/scoreloop/client/android/core/server/ServerWorkerThread;

    iget-object v1, v1, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->a:Lcom/scoreloop/client/android/core/server/Response;

    if-nez v1, :cond_3

    .line 240
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "callback not called"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/scoreloop/client/android/core/server/c; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/scoreloop/client/android/core/server/b; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 249
    :catch_1
    move-exception v1

    .line 250
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run(): Request processing was interrupted\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 251
    iget-object v2, p0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread$ServerWorkerHandler;->c:Lcom/scoreloop/client/android/core/server/ServerWorkerThread;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v2, v0, v3, v4, v1}, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->a(Lcom/scoreloop/client/android/core/server/ServerWorkerThread;Lcom/scoreloop/client/android/core/server/Request;Lcom/scoreloop/client/android/core/server/Response;ILjava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 260
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread$ServerWorkerHandler;->c:Lcom/scoreloop/client/android/core/server/ServerWorkerThread;

    invoke-static {v0, v6}, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->a(Lcom/scoreloop/client/android/core/server/ServerWorkerThread;Lcom/scoreloop/client/android/core/server/a$a;)Lcom/scoreloop/client/android/core/server/a$a;

    goto :goto_1

    .line 243
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread$ServerWorkerHandler;->c:Lcom/scoreloop/client/android/core/server/ServerWorkerThread;

    iget-object v2, p0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread$ServerWorkerHandler;->c:Lcom/scoreloop/client/android/core/server/ServerWorkerThread;

    iget-object v2, v2, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->a:Lcom/scoreloop/client/android/core/server/Response;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v0, v2, v3, v4}, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->a(Lcom/scoreloop/client/android/core/server/ServerWorkerThread;Lcom/scoreloop/client/android/core/server/Request;Lcom/scoreloop/client/android/core/server/Response;ILjava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/scoreloop/client/android/core/server/c; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/scoreloop/client/android/core/server/b; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 260
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread$ServerWorkerHandler;->c:Lcom/scoreloop/client/android/core/server/ServerWorkerThread;

    invoke-static {v0, v6}, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->a(Lcom/scoreloop/client/android/core/server/ServerWorkerThread;Lcom/scoreloop/client/android/core/server/a$a;)Lcom/scoreloop/client/android/core/server/a$a;

    goto :goto_1

    .line 252
    :catch_2
    move-exception v1

    .line 253
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run(): publish() failed\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 254
    iget-object v2, p0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread$ServerWorkerHandler;->c:Lcom/scoreloop/client/android/core/server/ServerWorkerThread;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v2, v0, v3, v4, v1}, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->a(Lcom/scoreloop/client/android/core/server/ServerWorkerThread;Lcom/scoreloop/client/android/core/server/Request;Lcom/scoreloop/client/android/core/server/Response;ILjava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 260
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread$ServerWorkerHandler;->c:Lcom/scoreloop/client/android/core/server/ServerWorkerThread;

    invoke-static {v0, v6}, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->a(Lcom/scoreloop/client/android/core/server/ServerWorkerThread;Lcom/scoreloop/client/android/core/server/a$a;)Lcom/scoreloop/client/android/core/server/a$a;

    goto/16 :goto_1

    .line 255
    :catch_3
    move-exception v1

    .line 257
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "run(): publish() failed\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 258
    iget-object v2, p0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread$ServerWorkerHandler;->c:Lcom/scoreloop/client/android/core/server/ServerWorkerThread;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v2, v0, v3, v4, v1}, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->a(Lcom/scoreloop/client/android/core/server/ServerWorkerThread;Lcom/scoreloop/client/android/core/server/Request;Lcom/scoreloop/client/android/core/server/Response;ILjava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 260
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread$ServerWorkerHandler;->c:Lcom/scoreloop/client/android/core/server/ServerWorkerThread;

    invoke-static {v0, v6}, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->a(Lcom/scoreloop/client/android/core/server/ServerWorkerThread;Lcom/scoreloop/client/android/core/server/a$a;)Lcom/scoreloop/client/android/core/server/a$a;

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread$ServerWorkerHandler;->c:Lcom/scoreloop/client/android/core/server/ServerWorkerThread;

    invoke-static {v1, v6}, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->a(Lcom/scoreloop/client/android/core/server/ServerWorkerThread;Lcom/scoreloop/client/android/core/server/a$a;)Lcom/scoreloop/client/android/core/server/a$a;

    throw v0

    .line 262
    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 263
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto/16 :goto_1
.end method
