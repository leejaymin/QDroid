.class public final Lcom/mobclix/android/sdk/e;
.super Ljava/lang/Object;


# static fields
.field static final a:[Ljava/lang/String;

.field private static final ac:Lcom/mobclix/android/sdk/e;

.field static final b:[Ljava/lang/String;

.field static d:Ljava/util/HashMap;

.field static e:Ljava/util/HashMap;

.field static x:Z

.field static y:Z


# instance fields
.field private A:Lcom/mobclix/android/sdk/ce;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Landroid/os/Handler;

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Ljava/lang/String;

.field private S:I

.field private T:I

.field private U:Ljava/lang/String;

.field private V:Ljava/lang/String;

.field private W:Ljava/lang/String;

.field private X:Ljava/lang/String;

.field private Y:I

.field private Z:Z

.field private aa:Landroid/location/Criteria;

.field private ab:Landroid/content/Context;

.field c:Lorg/json/JSONObject;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Ljava/util/List;

.field m:I

.field n:I

.field o:Z

.field p:Ljava/lang/String;

.field q:Lcom/mobclix/android/sdk/ch;

.field r:Ljava/util/HashMap;

.field s:Ljava/lang/String;

.field t:Z

.field u:Ljava/lang/ref/SoftReference;

.field v:Ljava/lang/ref/SoftReference;

.field w:Ljava/lang/ref/SoftReference;

.field private z:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "320x50"

    aput-object v1, v0, v2

    const-string v1, "300x250"

    aput-object v1, v0, v3

    sput-object v0, Lcom/mobclix/android/sdk/e;->a:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "openmillennial"

    aput-object v1, v0, v2

    sput-object v0, Lcom/mobclix/android/sdk/e;->b:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mobclix/android/sdk/e;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mobclix/android/sdk/e;->e:Ljava/util/HashMap;

    new-instance v0, Lcom/mobclix/android/sdk/e;

    invoke-direct {v0}, Lcom/mobclix/android/sdk/e;-><init>()V

    sput-object v0, Lcom/mobclix/android/sdk/e;->ac:Lcom/mobclix/android/sdk/e;

    sput-boolean v2, Lcom/mobclix/android/sdk/e;->x:Z

    sput-boolean v2, Lcom/mobclix/android/sdk/e;->y:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/mobclix/android/sdk/e;->z:Landroid/content/SharedPreferences;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/e;->c:Lorg/json/JSONObject;

    const-string v0, "http://ads.mobclix.com/"

    iput-object v0, p0, Lcom/mobclix/android/sdk/e;->f:Ljava/lang/String;

    const-string v0, "http://data.mobclix.com/post/config"

    iput-object v0, p0, Lcom/mobclix/android/sdk/e;->g:Ljava/lang/String;

    const-string v0, "http://data.mobclix.com/post/sendData"

    iput-object v0, p0, Lcom/mobclix/android/sdk/e;->h:Ljava/lang/String;

    const-string v0, "http://vc.mobclix.com"

    iput-object v0, p0, Lcom/mobclix/android/sdk/e;->i:Ljava/lang/String;

    const-string v0, "http://data.mobclix.com/post/feedback"

    iput-object v0, p0, Lcom/mobclix/android/sdk/e;->j:Ljava/lang/String;

    const-string v0, "http://data.mobclix.com/post/debug"

    iput-object v0, p0, Lcom/mobclix/android/sdk/e;->k:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/e;->l:Ljava/util/List;

    const v0, 0x1d4c0

    iput v0, p0, Lcom/mobclix/android/sdk/e;->m:I

    iput v1, p0, Lcom/mobclix/android/sdk/e;->n:I

    invoke-static {}, Lcom/mobclix/android/sdk/ce;->a()Lcom/mobclix/android/sdk/ce;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/e;->A:Lcom/mobclix/android/sdk/ce;

    iput-boolean v1, p0, Lcom/mobclix/android/sdk/e;->o:Z

    const-string v0, "android"

    iput-object v0, p0, Lcom/mobclix/android/sdk/e;->B:Ljava/lang/String;

    const-string v0, "mcnative"

    iput-object v0, p0, Lcom/mobclix/android/sdk/e;->C:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/mobclix/android/sdk/e;->D:Ljava/lang/String;

    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/e;->E:Ljava/lang/String;

    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/e;->F:Ljava/lang/String;

    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/e;->p:Ljava/lang/String;

    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/e;->G:Ljava/lang/String;

    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/e;->H:Ljava/lang/String;

    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/e;->I:Ljava/lang/String;

    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/e;->J:Ljava/lang/String;

    new-instance v0, Lcom/mobclix/android/sdk/ch;

    invoke-direct {v0}, Lcom/mobclix/android/sdk/ch;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/e;->q:Lcom/mobclix/android/sdk/ch;

    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/e;->L:Ljava/lang/String;

    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/e;->M:Ljava/lang/String;

    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/e;->N:Ljava/lang/String;

    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/e;->O:Ljava/lang/String;

    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/e;->P:Ljava/lang/String;

    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/e;->Q:Ljava/lang/String;

    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/e;->R:Ljava/lang/String;

    iput v2, p0, Lcom/mobclix/android/sdk/e;->S:I

    iput v2, p0, Lcom/mobclix/android/sdk/e;->T:I

    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/e;->U:Ljava/lang/String;

    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/e;->V:Ljava/lang/String;

    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/e;->W:Ljava/lang/String;

    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/e;->X:Ljava/lang/String;

    const/16 v0, 0x10

    iput v0, p0, Lcom/mobclix/android/sdk/e;->Y:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/e;->r:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/mobclix/android/sdk/e;->Z:Z

    iput-object v3, p0, Lcom/mobclix/android/sdk/e;->s:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/mobclix/android/sdk/e;->t:Z

    return-void
.end method

.method public static C()Lcom/mobclix/android/sdk/e;
    .locals 1

    sget-object v0, Lcom/mobclix/android/sdk/e;->ac:Lcom/mobclix/android/sdk/e;

    return-object v0
.end method

.method static synthetic F()Lcom/mobclix/android/sdk/e;
    .locals 1

    sget-object v0, Lcom/mobclix/android/sdk/e;->ac:Lcom/mobclix/android/sdk/e;

    return-object v0
.end method

.method private G()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->L:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->L:Ljava/lang/String;

    goto :goto_0
.end method

.method private H()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->M:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->M:Ljava/lang/String;

    goto :goto_0
.end method

.method private declared-synchronized I()V
    .locals 10

    const-wide/16 v8, 0x3e8

    const-wide/16 v6, 0x0

    monitor-enter p0

    :try_start_0
    const-string v0, "firstSessionEvent"

    invoke-static {v0}, Lcom/mobclix/android/sdk/e;->i(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    if-eqz v0, :cond_4

    :try_start_1
    const-string v0, "firstSessionEvent"

    invoke-static {v0}, Lcom/mobclix/android/sdk/e;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v0

    :goto_0
    :try_start_2
    const-string v2, "lastSessionEvent"

    invoke-static {v2}, Lcom/mobclix/android/sdk/e;->i(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    if-eqz v2, :cond_5

    :try_start_3
    const-string v2, "lastSessionEvent"

    invoke-static {v2}, Lcom/mobclix/android/sdk/e;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-wide v2

    :goto_1
    sub-long v4, v2, v0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    cmp-long v0, v0, v6

    if-nez v0, :cond_6

    :cond_0
    move-wide v0, v8

    :goto_2
    :try_start_4
    const-string v2, "totalSessionTime"

    invoke-static {v2}, Lcom/mobclix/android/sdk/e;->i(Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result v2

    if-eqz v2, :cond_1

    :try_start_5
    const-string v2, "totalSessionTime"

    invoke-static {v2}, Lcom/mobclix/android/sdk/e;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-result-wide v2

    add-long/2addr v0, v2

    :cond_1
    :goto_3
    :try_start_6
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "totalSessionTime"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/mobclix/android/sdk/e;->o:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    const-string v1, "offlineSessions"

    invoke-static {v1}, Lcom/mobclix/android/sdk/e;->i(Ljava/lang/String;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-result v1

    if-eqz v1, :cond_2

    :try_start_7
    const-string v1, "offlineSessions"

    invoke-static {v1}, Lcom/mobclix/android/sdk/e;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :cond_2
    :goto_4
    :try_start_8
    const-string v1, "offlineSessions"

    int-to-long v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "firstSessionEvent"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v8

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "lastSessionEvent"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/mobclix/android/sdk/e;->a(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->A:Lcom/mobclix/android/sdk/ce;

    sget-object v1, Lcom/mobclix/android/sdk/ce;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/ce;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/e;->A:Lcom/mobclix/android/sdk/ce;

    const-string v2, "session"

    invoke-virtual {v1, v0, v2}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/e;->A:Lcom/mobclix/android/sdk/ce;

    const-string v2, "init"

    invoke-virtual {v1, v0, v2}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mobclix/android/sdk/e;->p:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mobclix/android/sdk/e;->m(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    move-result-object v1

    :try_start_9
    iget-object v2, p0, Lcom/mobclix/android/sdk/e;->c:Lorg/json/JSONObject;

    const-string v3, "id"

    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    :goto_5
    :try_start_a
    iget-object v1, p0, Lcom/mobclix/android/sdk/e;->A:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v1, v0}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/e;->A:Lcom/mobclix/android/sdk/ce;

    const-string v2, "config"

    invoke-virtual {v1, v0, v2}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/mobclix/android/sdk/e;->n:I

    new-instance v1, Lcom/mobclix/android/sdk/b;

    invoke-direct {v1}, Lcom/mobclix/android/sdk/b;-><init>()V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mobclix/android/sdk/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v1, p0, Lcom/mobclix/android/sdk/e;->A:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v1, v0}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/e;->A:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v1, v0}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    :goto_6
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :cond_4
    move-wide v0, v6

    goto/16 :goto_0

    :catch_1
    move-exception v2

    :cond_5
    move-wide v2, v6

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto/16 :goto_4

    :catch_5
    move-exception v2

    goto/16 :goto_3

    :cond_6
    move-wide v0, v4

    goto/16 :goto_2
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    sget-object v0, Lcom/mobclix/android/sdk/e;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method public static final declared-synchronized a(Landroid/app/Activity;)V
    .locals 2

    const-class v0, Lcom/mobclix/android/sdk/e;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/mobclix/android/sdk/e;->a(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final declared-synchronized a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/mobclix/android/sdk/e;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lcom/mobclix/android/sdk/e;->b(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lcom/mobclix/android/sdk/e;I)V
    .locals 0

    iput p1, p0, Lcom/mobclix/android/sdk/e;->T:I

    return-void
.end method

.method static synthetic a(Lcom/mobclix/android/sdk/e;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclix/android/sdk/e;->L:Ljava/lang/String;

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/mobclix/android/sdk/e;->ac:Lcom/mobclix/android/sdk/e;

    iget-object v0, v0, Lcom/mobclix/android/sdk/e;->z:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static a(Ljava/util/List;)V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/mobclix/android/sdk/e;->ac:Lcom/mobclix/android/sdk/e;

    iget-object v0, v0, Lcom/mobclix/android/sdk/e;->z:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_1
    return-void

    :cond_0
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static a(Ljava/util/Map;)V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/mobclix/android/sdk/e;->ac:Lcom/mobclix/android/sdk/e;

    iget-object v0, v0, Lcom/mobclix/android/sdk/e;->z:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_1
    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {v1, v0, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static a(Lorg/apache/http/client/CookieStore;Ljava/lang/String;)V
    .locals 7

    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-interface {p0}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_1

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/http/cookie/Cookie;

    invoke-interface {p0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-interface {p0}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p0}, Lorg/apache/http/cookie/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "E, dd-MMM-yyyy HH:mm:ss z"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v5, "GMT"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const-string v5, "; expires="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-interface {p0}, Lorg/apache/http/cookie/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-interface {p0}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string v4, "; path="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-interface {p0}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-interface {p0}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string v4, "; domain="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-interface {p0}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static declared-synchronized b(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4

    const-class v0, Lcom/mobclix/android/sdk/e;

    monitor-enter v0

    if-nez p0, :cond_0

    :try_start_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    const-string v2, "Activity not provided."

    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    sget-object v1, Lcom/mobclix/android/sdk/e;->ac:Lcom/mobclix/android/sdk/e;

    iget-object v1, v1, Lcom/mobclix/android/sdk/e;->W:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/mobclix/android/sdk/e;->ac:Lcom/mobclix/android/sdk/e;

    const/4 v2, 0x0

    iput v2, v1, Lcom/mobclix/android/sdk/e;->n:I

    const/4 v1, 0x0

    sput-boolean v1, Lcom/mobclix/android/sdk/e;->x:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    sget-object v1, Lcom/mobclix/android/sdk/e;->ac:Lcom/mobclix/android/sdk/e;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v1, Lcom/mobclix/android/sdk/e;->ab:Landroid/content/Context;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_0
    :try_start_3
    sget-boolean v1, Lcom/mobclix/android/sdk/e;->x:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/mobclix/android/sdk/e;->y:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_2

    :try_start_4
    sget-object v1, Lcom/mobclix/android/sdk/e;->ac:Lcom/mobclix/android/sdk/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".MCConfig"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, v1, Lcom/mobclix/android/sdk/e;->z:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/mobclix/android/sdk/e;->ac:Lcom/mobclix/android/sdk/e;

    iput-object p1, v1, Lcom/mobclix/android/sdk/e;->W:Ljava/lang/String;

    sget-object v1, Lcom/mobclix/android/sdk/e;->ac:Lcom/mobclix/android/sdk/e;

    invoke-direct {v1}, Lcom/mobclix/android/sdk/e;->I()V

    sget-object v1, Lcom/mobclix/android/sdk/e;->ac:Lcom/mobclix/android/sdk/e;

    new-instance v2, Lcom/mobclix/android/sdk/g;

    invoke-direct {v2}, Lcom/mobclix/android/sdk/g;-><init>()V

    iput-object v2, v1, Lcom/mobclix/android/sdk/e;->K:Landroid/os/Handler;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/mobclix/android/sdk/m; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :goto_1
    monitor-exit v0

    return-void

    :catch_0
    move-exception v1

    :try_start_5
    throw v1

    :cond_2
    sget-object v1, Lcom/mobclix/android/sdk/e;->ac:Lcom/mobclix/android/sdk/e;

    invoke-virtual {v1}, Lcom/mobclix/android/sdk/e;->E()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/mobclix/android/sdk/e;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclix/android/sdk/e;->M:Ljava/lang/String;

    return-void
.end method

.method static b(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    sget-object v0, Lcom/mobclix/android/sdk/e;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mobclix/android/sdk/o;

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/o;->a()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static c(Ljava/lang/String;)J
    .locals 2

    :try_start_0
    sget-object v0, Lcom/mobclix/android/sdk/e;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mobclix/android/sdk/o;

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/o;->d()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method static d(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    sget-object v0, Lcom/mobclix/android/sdk/e;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mobclix/android/sdk/o;

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/o;->b()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static e(Ljava/lang/String;)Z
    .locals 4

    sget-object v0, Lcom/mobclix/android/sdk/MobclixAdView;->n:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object v2, Lcom/mobclix/android/sdk/e;->ac:Lcom/mobclix/android/sdk/e;

    invoke-static {p0}, Lcom/mobclix/android/sdk/e;->l(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static f(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    sget-object v0, Lcom/mobclix/android/sdk/e;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mobclix/android/sdk/o;

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/o;->c()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/mobclix/android/sdk/e;->ac:Lcom/mobclix/android/sdk/e;

    iget-object v0, v0, Lcom/mobclix/android/sdk/e;->z:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method static i(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    sget-object v0, Lcom/mobclix/android/sdk/e;->ac:Lcom/mobclix/android/sdk/e;

    iget-object v0, v0, Lcom/mobclix/android/sdk/e;->z:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static j(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/mobclix/android/sdk/e;->ac:Lcom/mobclix/android/sdk/e;

    iget-object v0, v0, Lcom/mobclix/android/sdk/e;->z:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static k(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method private static l(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/mobclix/android/sdk/e;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mobclix/android/sdk/o;

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/o;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method private static m(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    move v2, v3

    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    aget-byte v3, v0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static n(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    :try_start_0
    const-string v0, "ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/mobclix/android/sdk/a;->a([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%x"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "ASCII"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/math/BigInteger;-><init>([B)V

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "null"

    goto :goto_0
.end method

.method static s()Ljava/lang/String;
    .locals 1

    const-string v0, "3.2.0"

    return-object v0
.end method


# virtual methods
.method final A()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->ab:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const-string v2, "u"

    iget-object v1, p0, Lcom/mobclix/android/sdk/e;->r:Ljava/util/HashMap;

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "WI_FI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "WIFI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    const-string v0, "wifi"

    iput-object v0, p0, Lcom/mobclix/android/sdk/e;->J:Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->J:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/e;->J:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    :try_start_1
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/e;->Z:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->K:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_2
    :goto_3
    :try_start_2
    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->c:Lorg/json/JSONObject;

    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/mobclix/android/sdk/e;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/mobclix/android/sdk/e;->c:Lorg/json/JSONObject;

    const-string v2, "ll"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_4
    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->c:Lorg/json/JSONObject;

    const-string v1, "g"

    iget-object v2, p0, Lcom/mobclix/android/sdk/e;->J:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_5
    return-void

    :cond_3
    :try_start_3
    const-string v1, "MOBILE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->ab:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/e;->J:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/e;->J:Ljava/lang/String;

    goto :goto_2

    :cond_4
    :try_start_4
    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/e;->J:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->c:Lorg/json/JSONObject;

    const-string v1, "ll"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_3

    :cond_6
    move-object v0, v2

    goto/16 :goto_0
.end method

.method final B()V
    .locals 3

    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->q:Lcom/mobclix/android/sdk/ch;

    iget-object v1, p0, Lcom/mobclix/android/sdk/e;->ab:Landroid/content/Context;

    new-instance v2, Lcom/mobclix/android/sdk/f;

    invoke-direct {v2, p0}, Lcom/mobclix/android/sdk/f;-><init>(Lcom/mobclix/android/sdk/e;)V

    invoke-virtual {v0, v1, v2}, Lcom/mobclix/android/sdk/ch;->a(Landroid/content/Context;Lcom/mobclix/android/sdk/cl;)Z

    return-void
.end method

.method final declared-synchronized D()V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x1

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/mobclix/android/sdk/e;->x:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/mobclix/android/sdk/e;->y:Z

    sget-object v0, Lcom/mobclix/android/sdk/ce;->c:[Ljava/lang/String;

    array-length v1, v0

    :goto_1
    if-lt v2, v1, :cond_3

    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->A:Lcom/mobclix/android/sdk/ce;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/mobclix/android/sdk/ce;->a()Lcom/mobclix/android/sdk/ce;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/e;->A:Lcom/mobclix/android/sdk/ce;

    :cond_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->A:Lcom/mobclix/android/sdk/ce;

    sget-object v1, Lcom/mobclix/android/sdk/ce;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/ce;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/e;->A:Lcom/mobclix/android/sdk/ce;

    const-string v2, "init"

    invoke-virtual {v1, v0, v2}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/e;->A:Lcom/mobclix/android/sdk/ce;

    const-string v2, "environment"

    invoke-virtual {v1, v0, v2}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/mobclix/android/sdk/e;->ab:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_f

    move-result-object v0

    :goto_2
    :try_start_3
    iget-object v2, p0, Lcom/mobclix/android/sdk/e;->ab:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    :goto_3
    :try_start_4
    iget-object v2, p0, Lcom/mobclix/android/sdk/e;->W:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v2, :cond_5

    :try_start_5
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.mobclix.APPLICATION_ID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_6
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    const-string v1, "com.mobclix.APPLICATION_ID not found in the Android Manifest xml."

    invoke-direct {v0, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_7
    aget-object v3, v0, v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "debug_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mobclix/android/sdk/e;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/mobclix/android/sdk/e;->e:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "debug_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mobclix/android/sdk/e;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string v0, "mobclix-controller"

    const-string v2, "Application Key Started"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    goto :goto_3

    :catch_1
    move-exception v0

    new-instance v0, Landroid/content/res/Resources$NotFoundException;

    const-string v1, "com.mobclix.APPLICATION_ID not found in the Android Manifest xml."

    invoke-direct {v0, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iput-object v2, p0, Lcom/mobclix/android/sdk/e;->W:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "ADMOB_PUBLISHER_ID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mobclix/android/sdk/e;->X:Ljava/lang/String;

    iget-object v2, p0, Lcom/mobclix/android/sdk/e;->X:Ljava/lang/String;

    if-nez v2, :cond_6

    const-string v2, "null"

    iput-object v2, p0, Lcom/mobclix/android/sdk/e;->X:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_6
    :goto_4
    :try_start_9
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.mobclix.LOG_LEVEL"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    move-result-object v0

    :goto_5
    const/16 v2, 0x10

    if-eqz v0, :cond_2d

    :try_start_a
    const-string v3, "debug"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v0, v7

    :goto_6
    iput v0, p0, Lcom/mobclix/android/sdk/e;->Y:I

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/mobclix/android/sdk/e;->E:Ljava/lang/String;

    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->E:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->E:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/e;->E:Ljava/lang/String;

    :cond_8
    const-string v0, ""

    iget-object v2, p0, Lcom/mobclix/android/sdk/e;->ab:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v2

    :try_start_b
    iget-object v3, p0, Lcom/mobclix/android/sdk/e;->ab:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    move-result-object v0

    move-object v3, v0

    :goto_7
    :try_start_c
    const-string v0, "android.permission.INTERNET"

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Lcom/mobclix/android/sdk/m;

    const-string v1, "Missing required permission INTERNET."

    invoke-direct {v0, p0, v1}, Lcom/mobclix/android/sdk/m;-><init>(Lcom/mobclix/android/sdk/e;Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v2

    const-string v2, "null"

    iput-object v2, p0, Lcom/mobclix/android/sdk/e;->X:Ljava/lang/String;

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v0, v8

    goto :goto_5

    :cond_9
    const-string v3, "info"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    move v0, v9

    goto :goto_6

    :cond_a
    const-string v3, "warn"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v0, 0x4

    goto :goto_6

    :cond_b
    const-string v3, "error"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/16 v0, 0x8

    goto :goto_6

    :cond_c
    const-string v3, "fatal"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/16 v0, 0x10

    goto :goto_6

    :catch_4
    move-exception v3

    move-object v3, v0

    goto :goto_7

    :cond_d
    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->r:Ljava/util/HashMap;

    const-string v4, "android.permission.INTERNET"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Lcom/mobclix/android/sdk/m;

    const-string v1, "Missing required permission READ_PHONE_STATE."

    invoke-direct {v0, p0, v1}, Lcom/mobclix/android/sdk/m;-><init>(Lcom/mobclix/android/sdk/e;Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->r:Ljava/util/HashMap;

    const-string v4, "android.permission.READ_PHONE_STATE"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    const-string v0, "android.permission.BATTERY_STATS"

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->ab:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Lcom/mobclix/android/sdk/h;

    invoke-direct {v4, p0}, Lcom/mobclix/android/sdk/h;-><init>(Lcom/mobclix/android/sdk/e;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_f
    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->r:Ljava/util/HashMap;

    const-string v4, "android.permission.BATTERY_STATS"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_e

    :goto_8
    :try_start_e
    const-string v0, "android.permission.CAMERA"

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->r:Ljava/util/HashMap;

    const-string v4, "android.permission.CAMERA"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    const-string v0, "android.permission.READ_CALENDAR"

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->r:Ljava/util/HashMap;

    const-string v4, "android.permission.READ_CALENDAR"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    const-string v0, "android.permission.WRITE_CALENDAR"

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->r:Ljava/util/HashMap;

    const-string v4, "android.permission.WRITE_CALENDAR"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    const-string v0, "android.permission.READ_CONTACTS"

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->r:Ljava/util/HashMap;

    const-string v4, "android.permission.READ_CONTACTS"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    const-string v0, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->r:Ljava/util/HashMap;

    const-string v4, "android.permission.WRITE_CONTACTS"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    const-string v0, "android.permission.GET_ACCOUNTS"

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->r:Ljava/util/HashMap;

    const-string v4, "android.permission.GET_ACCOUNTS"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    const-string v0, "android.permission.VIBRATE"

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->r:Ljava/util/HashMap;

    const-string v4, "android.permission.VIBRATE"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :cond_16
    :try_start_f
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_29

    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/e;->aa:Landroid/location/Criteria;

    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->aa:Landroid/location/Criteria;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/location/Criteria;->setAccuracy(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/e;->Z:Z

    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->r:Ljava/util/HashMap;

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->r:Ljava/util/HashMap;

    const-string v4, "android.permission.ACCESS_NETWORK_STATE"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    :cond_17
    :goto_a
    :try_start_10
    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->ab:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_6

    :goto_b
    const/4 v4, 0x0

    :try_start_11
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, p0, Lcom/mobclix/android/sdk/e;->F:Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_d

    :goto_c
    :try_start_12
    iget-object v2, p0, Lcom/mobclix/android/sdk/e;->F:Ljava/lang/String;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/mobclix/android/sdk/e;->F:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_18
    const-string v2, "null"

    iput-object v2, p0, Lcom/mobclix/android/sdk/e;->F:Ljava/lang/String;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :cond_19
    :try_start_13
    iget-object v2, p0, Lcom/mobclix/android/sdk/e;->ab:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mobclix/android/sdk/e;->G:Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_c

    :goto_d
    :try_start_14
    iget-object v2, p0, Lcom/mobclix/android/sdk/e;->G:Ljava/lang/String;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/mobclix/android/sdk/e;->G:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    :cond_1a
    const-string v2, "null"

    iput-object v2, p0, Lcom/mobclix/android/sdk/e;->G:Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    :goto_e
    :try_start_15
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mobclix/android/sdk/e;->p:Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_b

    :goto_f
    :try_start_16
    iget-object v2, p0, Lcom/mobclix/android/sdk/e;->p:Ljava/lang/String;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/mobclix/android/sdk/e;->p:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    :cond_1b
    iget-object v2, p0, Lcom/mobclix/android/sdk/e;->G:Ljava/lang/String;

    iput-object v2, p0, Lcom/mobclix/android/sdk/e;->p:Ljava/lang/String;

    iget-object v2, p0, Lcom/mobclix/android/sdk/e;->U:Ljava/lang/String;

    iput-object v2, p0, Lcom/mobclix/android/sdk/e;->V:Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    :goto_10
    :try_start_17
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v2, p0, Lcom/mobclix/android/sdk/e;->H:Ljava/lang/String;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_a

    :goto_11
    :try_start_18
    iget-object v2, p0, Lcom/mobclix/android/sdk/e;->H:Ljava/lang/String;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/mobclix/android/sdk/e;->H:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    :cond_1c
    const-string v2, "null"

    iput-object v2, p0, Lcom/mobclix/android/sdk/e;->H:Ljava/lang/String;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    :cond_1d
    :try_start_19
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v2, p0, Lcom/mobclix/android/sdk/e;->I:Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_9

    :goto_12
    :try_start_1a
    iget-object v2, p0, Lcom/mobclix/android/sdk/e;->I:Ljava/lang/String;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/mobclix/android/sdk/e;->I:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    :cond_1e
    const-string v2, "null"

    iput-object v2, p0, Lcom/mobclix/android/sdk/e;->I:Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    :cond_1f
    :try_start_1b
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_20

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mobclix/android/sdk/e;->P:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/e;->Q:Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_8

    :cond_20
    :goto_13
    :try_start_1c
    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->P:Ljava/lang/String;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->P:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_21
    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/e;->P:Ljava/lang/String;

    :cond_22
    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->Q:Ljava/lang/String;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->Q:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_23
    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/e;->Q:Ljava/lang/String;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    :cond_24
    :try_start_1d
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mobclix/android/sdk/e;->N:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/e;->O:Ljava/lang/String;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_7

    :goto_14
    :try_start_1e
    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->N:Ljava/lang/String;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->N:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_25
    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/e;->N:Ljava/lang/String;

    :cond_26
    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->O:Ljava/lang/String;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->O:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_27
    const-string v0, "null"

    iput-object v0, p0, Lcom/mobclix/android/sdk/e;->O:Ljava/lang/String;

    :cond_28
    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->A:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/e;->A:Lcom/mobclix/android/sdk/ce;

    const-string v2, "session"

    invoke-virtual {v1, v0, v2}, Lcom/mobclix/android/sdk/ce;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/mobclix/android/sdk/e;->x:Z

    const/4 v1, 0x0

    sput-boolean v1, Lcom/mobclix/android/sdk/e;->y:Z

    iget-object v1, p0, Lcom/mobclix/android/sdk/e;->A:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v1, v0}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/e;->A:Lcom/mobclix/android/sdk/ce;

    invoke-virtual {v1, v0}, Lcom/mobclix/android/sdk/ce;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    goto/16 :goto_0

    :cond_29
    :try_start_1f
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2a

    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/e;->aa:Landroid/location/Criteria;

    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->aa:Landroid/location/Criteria;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/location/Criteria;->setAccuracy(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/e;->Z:Z

    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->r:Ljava/util/HashMap;

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    :catch_5
    move-exception v0

    goto/16 :goto_a

    :cond_2a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobclix/android/sdk/e;->Z:Z
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_5

    goto/16 :goto_9

    :catch_6
    move-exception v0

    move-object v0, v8

    goto/16 :goto_b

    :cond_2b
    :try_start_20
    iget-object v2, p0, Lcom/mobclix/android/sdk/e;->G:Ljava/lang/String;

    invoke-static {v2}, Lcom/mobclix/android/sdk/e;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mobclix/android/sdk/e;->U:Ljava/lang/String;

    goto/16 :goto_e

    :cond_2c
    iget-object v2, p0, Lcom/mobclix/android/sdk/e;->p:Ljava/lang/String;

    invoke-static {v2}, Lcom/mobclix/android/sdk/e;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mobclix/android/sdk/e;->V:Ljava/lang/String;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    goto/16 :goto_10

    :catch_7
    move-exception v0

    goto/16 :goto_14

    :catch_8
    move-exception v0

    goto/16 :goto_13

    :catch_9
    move-exception v2

    goto/16 :goto_12

    :catch_a
    move-exception v2

    goto/16 :goto_11

    :catch_b
    move-exception v2

    goto/16 :goto_f

    :catch_c
    move-exception v2

    goto/16 :goto_d

    :catch_d
    move-exception v2

    goto/16 :goto_c

    :catch_e
    move-exception v0

    goto/16 :goto_8

    :catch_f
    move-exception v2

    goto/16 :goto_2

    :cond_2d
    move v0, v2

    goto/16 :goto_6
.end method

.method final declared-synchronized E()V
    .locals 6

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    const-string v2, "lastSessionEvent"

    invoke-static {v2}, Lcom/mobclix/android/sdk/e;->i(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    :try_start_1
    const-string v2, "lastSessionEvent"

    invoke-static {v2}, Lcom/mobclix/android/sdk/e;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    :cond_0
    :goto_0
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v4, p0, Lcom/mobclix/android/sdk/e;->m:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/mobclix/android/sdk/e;->I()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    :try_start_3
    const-string v0, "lastSessionEvent"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mobclix/android/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method final a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->ab:Landroid/content/Context;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->W:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->W:Ljava/lang/String;

    goto :goto_0
.end method

.method final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->X:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->X:Ljava/lang/String;

    goto :goto_0
.end method

.method final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->B:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->B:Ljava/lang/String;

    goto :goto_0
.end method

.method final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->C:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->C:Ljava/lang/String;

    goto :goto_0
.end method

.method final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->D:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->D:Ljava/lang/String;

    goto :goto_0
.end method

.method final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->E:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->E:Ljava/lang/String;

    goto :goto_0
.end method

.method final g(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/mobclix/android/sdk/e;->R:Ljava/lang/String;

    const-string v0, "UserAgent"

    invoke-static {v0, p1}, Lcom/mobclix/android/sdk/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->F:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->F:Ljava/lang/String;

    goto :goto_0
.end method

.method final i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->p:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->p:Ljava/lang/String;

    goto :goto_0
.end method

.method final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->V:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->V:Ljava/lang/String;

    goto :goto_0
.end method

.method final k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->U:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->U:Ljava/lang/String;

    goto :goto_0
.end method

.method final l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->H:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->H:Ljava/lang/String;

    goto :goto_0
.end method

.method final m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->I:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->I:Ljava/lang/String;

    goto :goto_0
.end method

.method final n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->J:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->J:Ljava/lang/String;

    goto :goto_0
.end method

.method final o()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/mobclix/android/sdk/e;->G()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mobclix/android/sdk/e;->H()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/mobclix/android/sdk/e;->G()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/mobclix/android/sdk/e;->H()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method final p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->N:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->N:Ljava/lang/String;

    goto :goto_0
.end method

.method final q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->P:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->P:Ljava/lang/String;

    goto :goto_0
.end method

.method final r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->Q:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->Q:Ljava/lang/String;

    goto :goto_0
.end method

.method final t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->k:Ljava/lang/String;

    return-object v0
.end method

.method final u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->f:Ljava/lang/String;

    return-object v0
.end method

.method final v()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->l:Ljava/util/List;

    return-object v0
.end method

.method final w()I
    .locals 1

    iget v0, p0, Lcom/mobclix/android/sdk/e;->n:I

    return v0
.end method

.method final x()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->R:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UserAgent"

    invoke-static {v0}, Lcom/mobclix/android/sdk/e;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "UserAgent"

    invoke-static {v0}, Lcom/mobclix/android/sdk/e;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/e;->R:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/e;->R:Ljava/lang/String;

    return-object v0
.end method

.method final y()Z
    .locals 2

    iget v0, p0, Lcom/mobclix/android/sdk/e;->S:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final z()Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v0, p0, Lcom/mobclix/android/sdk/e;->S:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/mobclix/android/sdk/e;->S:I

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "su"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    const/4 v0, 0x1

    iput v0, p0, Lcom/mobclix/android/sdk/e;->S:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget v0, p0, Lcom/mobclix/android/sdk/e;->S:I

    if-ne v0, v2, :cond_2

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    iput v3, p0, Lcom/mobclix/android/sdk/e;->S:I

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_0
.end method
