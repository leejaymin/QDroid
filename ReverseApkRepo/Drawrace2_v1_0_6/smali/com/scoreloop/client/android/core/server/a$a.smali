.class final Lcom/scoreloop/client/android/core/server/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scoreloop/client/android/core/server/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Lorg/json/JSONObject;

.field protected c:Lorg/json/JSONObject;

.field protected d:I

.field private e:Lorg/apache/http/client/methods/HttpPost;

.field private synthetic f:Lcom/scoreloop/client/android/core/server/a;


# direct methods
.method synthetic constructor <init>(Lcom/scoreloop/client/android/core/server/a;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/scoreloop/client/android/core/server/a$a;-><init>(Lcom/scoreloop/client/android/core/server/a;B)V

    return-void
.end method

.method private constructor <init>(Lcom/scoreloop/client/android/core/server/a;B)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/scoreloop/client/android/core/server/a$a;->f:Lcom/scoreloop/client/android/core/server/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/server/a$a;->e:Lorg/apache/http/client/methods/HttpPost;

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/scoreloop/client/android/core/server/a$a;)Lorg/apache/http/client/methods/HttpPost;
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/scoreloop/client/android/core/server/a$a;->b()Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    return-object v0
.end method

.method private b()Lorg/apache/http/client/methods/HttpPost;
    .locals 1

    .prologue
    .line 56
    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/a$a;->f:Lcom/scoreloop/client/android/core/server/a;

    invoke-static {v0}, Lcom/scoreloop/client/android/core/server/a;->a(Lcom/scoreloop/client/android/core/server/a;)Lcom/scoreloop/client/android/core/server/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/scoreloop/client/android/core/server/e;->a()Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    iput-object v0, p0, Lcom/scoreloop/client/android/core/server/a$a;->e:Lorg/apache/http/client/methods/HttpPost;

    .line 58
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/a$a;->e:Lorg/apache/http/client/methods/HttpPost;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 48
    monitor-enter p0

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/a$a;->e:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/scoreloop/client/android/core/server/a$a;->e:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 52
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(ILjava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    iput p1, p0, Lcom/scoreloop/client/android/core/server/a$a;->d:I

    .line 64
    iput-object p2, p0, Lcom/scoreloop/client/android/core/server/a$a;->a:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/scoreloop/client/android/core/server/a$a;->b:Lorg/json/JSONObject;

    .line 66
    iput-object p4, p0, Lcom/scoreloop/client/android/core/server/a$a;->c:Lorg/json/JSONObject;

    .line 67
    return-void
.end method
