.class Lcom/scoreloop/client/android/core/server/ServerWorkerThread;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Lcom/scoreloop/client/android/core/server/BayeuxConnectionObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scoreloop/client/android/core/server/ServerWorkerThread$ServerWorkerHandler;
    }
.end annotation


# static fields
.field private static b:I


# instance fields
.field protected a:Lcom/scoreloop/client/android/core/server/Response;

.field private volatile c:Lcom/scoreloop/client/android/core/server/a$a;

.field private final d:Lcom/scoreloop/client/android/core/util/MainThreadHandler;

.field private final e:Lcom/scoreloop/client/android/core/server/a;

.field private f:Lcom/scoreloop/client/android/core/server/ServerWorkerThread$ServerWorkerHandler;

.field private g:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput v0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->b:I

    return-void
.end method

.method constructor <init>(Lcom/scoreloop/client/android/core/util/MainThreadHandler;Lcom/scoreloop/client/android/core/server/a;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->g:Lorg/json/JSONObject;

    .line 41
    iput-object p1, p0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->d:Lcom/scoreloop/client/android/core/util/MainThreadHandler;

    .line 43
    iput-object p2, p0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->e:Lcom/scoreloop/client/android/core/server/a;

    .line 44
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->e:Lcom/scoreloop/client/android/core/server/a;

    invoke-virtual {v0, p0}, Lcom/scoreloop/client/android/core/server/a;->a(Lcom/scoreloop/client/android/core/server/BayeuxConnectionObserver;)V

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->b:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->setName(Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->setDaemon(Z)V

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/server/ServerWorkerThread;Lcom/scoreloop/client/android/core/server/a$a;)Lcom/scoreloop/client/android/core/server/a$a;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->c:Lcom/scoreloop/client/android/core/server/a$a;

    return-object p1
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/server/ServerWorkerThread;)Lcom/scoreloop/client/android/core/server/a;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->e:Lcom/scoreloop/client/android/core/server/a;

    return-object v0
.end method

.method private a(Lcom/scoreloop/client/android/core/server/Request;Lcom/scoreloop/client/android/core/server/Response;ILjava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->c:Lcom/scoreloop/client/android/core/server/a$a;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 140
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/server/Request;->a()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/server/Request;->c()Lcom/scoreloop/client/android/core/server/RequestMethod;

    .line 143
    :cond_0
    new-instance v0, Lcom/scoreloop/client/android/core/server/Server$RequestResult;

    invoke-direct {v0, p1, p2, p4}, Lcom/scoreloop/client/android/core/server/Server$RequestResult;-><init>(Lcom/scoreloop/client/android/core/server/Request;Lcom/scoreloop/client/android/core/server/Response;Ljava/lang/Exception;)V

    .line 145
    iget-object v1, p0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->f:Lcom/scoreloop/client/android/core/server/ServerWorkerThread$ServerWorkerHandler;

    invoke-virtual {v1}, Lcom/scoreloop/client/android/core/server/ServerWorkerThread$ServerWorkerHandler;->a()V

    .line 146
    iget-object v1, p0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->d:Lcom/scoreloop/client/android/core/util/MainThreadHandler;

    invoke-virtual {v1, p3, v0}, Lcom/scoreloop/client/android/core/util/MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 147
    return-void
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/server/ServerWorkerThread;Lcom/scoreloop/client/android/core/server/Request;Lcom/scoreloop/client/android/core/server/Response;ILjava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->a(Lcom/scoreloop/client/android/core/server/Request;Lcom/scoreloop/client/android/core/server/Response;ILjava/lang/Exception;)V

    return-void
.end method

.method static synthetic b(Lcom/scoreloop/client/android/core/server/ServerWorkerThread;)Lcom/scoreloop/client/android/core/server/a$a;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->c:Lcom/scoreloop/client/android/core/server/a$a;

    return-object v0
.end method


# virtual methods
.method final a()Lcom/scoreloop/client/android/core/server/ServerWorkerThread$ServerWorkerHandler;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->f:Lcom/scoreloop/client/android/core/server/ServerWorkerThread$ServerWorkerHandler;

    return-object v0
.end method

.method public final a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 6
    .parameter

    .prologue
    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->g:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 117
    const-string v0, "ext"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 118
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->g:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v2

    .line 119
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 120
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 121
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 122
    iget-object v5, p0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->g:Lorg/json/JSONObject;

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Should never happen"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 129
    :cond_0
    return-object p1
.end method

.method final a(Lcom/scoreloop/client/android/core/server/Request;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-virtual {p1}, Lcom/scoreloop/client/android/core/server/Request;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->f:Lcom/scoreloop/client/android/core/server/ServerWorkerThread$ServerWorkerHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/scoreloop/client/android/core/server/ServerWorkerThread$ServerWorkerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 68
    :goto_0
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, p1, v1, v0, v1}, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->a(Lcom/scoreloop/client/android/core/server/Request;Lcom/scoreloop/client/android/core/server/Response;ILjava/lang/Exception;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Integer;Ljava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    new-instance v0, Lcom/scoreloop/client/android/core/server/Response;

    invoke-direct {v0, p2, p3, p1}, Lcom/scoreloop/client/android/core/server/Response;-><init>(Ljava/lang/Object;ILjava/lang/Integer;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->a:Lcom/scoreloop/client/android/core/server/Response;

    .line 98
    return-void
.end method

.method final a(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->f:Lcom/scoreloop/client/android/core/server/ServerWorkerThread$ServerWorkerHandler;

    invoke-virtual {v0, p1}, Lcom/scoreloop/client/android/core/server/ServerWorkerThread$ServerWorkerHandler;->post(Ljava/lang/Runnable;)Z

    .line 72
    return-void
.end method

.method final b()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->f:Lcom/scoreloop/client/android/core/server/ServerWorkerThread$ServerWorkerHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/scoreloop/client/android/core/server/ServerWorkerThread$ServerWorkerHandler;->sendEmptyMessage(I)Z

    .line 174
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->c:Lcom/scoreloop/client/android/core/server/a$a;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->c:Lcom/scoreloop/client/android/core/server/a$a;

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/server/a$a;->a()V

    .line 181
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b(Lorg/json/JSONObject;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->g:Lorg/json/JSONObject;

    .line 169
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 151
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 158
    new-instance v0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread$ServerWorkerHandler;

    invoke-direct {v0, p0}, Lcom/scoreloop/client/android/core/server/ServerWorkerThread$ServerWorkerHandler;-><init>(Lcom/scoreloop/client/android/core/server/ServerWorkerThread;)V

    iput-object v0, p0, Lcom/scoreloop/client/android/core/server/ServerWorkerThread;->f:Lcom/scoreloop/client/android/core/server/ServerWorkerThread$ServerWorkerHandler;

    .line 160
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 164
    return-void
.end method
