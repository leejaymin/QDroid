.class final Lccc71/utils/j;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/utils/h;

.field private final synthetic b:Ljava/io/File;


# direct methods
.method constructor <init>(Lccc71/utils/h;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/utils/j;->a:Lccc71/utils/h;

    iput-object p2, p0, Lccc71/utils/j;->b:Ljava/io/File;

    .line 114
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/utils/j;)Lccc71/utils/h;
    .locals 1
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lccc71/utils/j;->a:Lccc71/utils/h;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 119
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 120
    invoke-static {}, Lccc71/utils/h;->b()Ljava/lang/Process;

    move-result-object v0

    if-nez v0, :cond_0

    .line 121
    invoke-static {}, Lccc71/utils/h;->c()V

    .line 125
    :cond_0
    :try_start_0
    invoke-static {}, Lccc71/utils/h;->d()Ljava/io/BufferedWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ls -l "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lccc71/utils/j;->a:Lccc71/utils/h;

    invoke-static {v2}, Lccc71/utils/h;->a(Lccc71/utils/h;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/\necho \"OK\"\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lccc71/utils/h;->d()Ljava/io/BufferedWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    :goto_0
    invoke-static {}, Lccc71/utils/h;->e()Ljava/io/BufferedReader;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 137
    :cond_1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 138
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lccc71/utils/j;->a:Lccc71/utils/h;

    invoke-static {v0}, Lccc71/utils/h;->h(Lccc71/utils/h;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 162
    :goto_1
    return-void

    .line 132
    :cond_2
    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 133
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    invoke-static {}, Lccc71/utils/h;->b()Ljava/lang/Process;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 144
    invoke-static {}, Lccc71/utils/h;->b()Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    .line 145
    :cond_3
    invoke-static {}, Lccc71/utils/h;->f()V

    .line 149
    iget-object v0, p0, Lccc71/utils/j;->a:Lccc71/utils/h;

    invoke-static {v0}, Lccc71/utils/h;->d(Lccc71/utils/h;)V

    .line 153
    iget-object v0, p0, Lccc71/utils/j;->a:Lccc71/utils/h;

    invoke-static {v0}, Lccc71/utils/h;->h(Lccc71/utils/h;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lccc71/utils/k;

    iget-object v2, p0, Lccc71/utils/j;->b:Ljava/io/File;

    invoke-direct {v1, p0, v2}, Lccc71/utils/k;-><init>(Lccc71/utils/j;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
