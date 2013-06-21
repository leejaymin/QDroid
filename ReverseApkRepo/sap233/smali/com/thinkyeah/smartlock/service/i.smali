.class final Lcom/thinkyeah/smartlock/service/i;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/service/g;


# direct methods
.method private constructor <init>(Lcom/thinkyeah/smartlock/service/g;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/service/i;->a:Lcom/thinkyeah/smartlock/service/g;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/thinkyeah/smartlock/service/g;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/thinkyeah/smartlock/service/i;-><init>(Lcom/thinkyeah/smartlock/service/g;)V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 4

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/i;->a:Lcom/thinkyeah/smartlock/service/g;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/service/g;->a(Lcom/thinkyeah/smartlock/service/g;)Ljava/io/BufferedReader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/i;->a:Lcom/thinkyeah/smartlock/service/g;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/service/g;->a(Lcom/thinkyeah/smartlock/service/g;)Ljava/io/BufferedReader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Lcom/thinkyeah/smartlock/service/g;->c()Lcom/thinkyeah/common/c;

    move-result-object v0

    const-string v1, "LogReceiveAsyncTask exit"

    invoke-virtual {v0, v1}, Lcom/thinkyeah/common/c;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_1
    :try_start_1
    const-string v1, "Starting"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "START"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/thinkyeah/smartlock/service/i;->a:Lcom/thinkyeah/smartlock/service/g;

    invoke-static {v1}, Lcom/thinkyeah/smartlock/service/g;->b(Lcom/thinkyeah/smartlock/service/g;)Lcom/thinkyeah/smartlock/service/j;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/thinkyeah/smartlock/service/j;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/thinkyeah/smartlock/service/i;->a:Lcom/thinkyeah/smartlock/service/g;

    const-string v2, "cmp="

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_3

    const-string v0, ""

    :goto_2
    invoke-static {v1, v0}, Lcom/thinkyeah/smartlock/service/g;->a(Lcom/thinkyeah/smartlock/service/g;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/thinkyeah/smartlock/service/g;->c()Lcom/thinkyeah/common/c;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/thinkyeah/common/c;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x4

    :try_start_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_4

    const-string v0, ""

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/thinkyeah/smartlock/service/i;->a:Lcom/thinkyeah/smartlock/service/g;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/service/g;->c(Lcom/thinkyeah/smartlock/service/g;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/thinkyeah/smartlock/service/i;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
