.class public final Lccc71/utils/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lccc71/utils/ai;->a:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lccc71/utils/ai;->b:Landroid/os/Handler;

    .line 19
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 20
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 21
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 22
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 27
    const/4 v0, 0x0

    .line 30
    :try_start_0
    const-string v1, "su"

    invoke-static {v1}, Lccc71/utils/ad;->a(Ljava/lang/String;)Lccc71/utils/ae;

    move-result-object v0

    .line 31
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Lccc71/utils/ae;->a()Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x40

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 32
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccc71/utils/ai;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\nexit\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 34
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 35
    invoke-virtual {v0}, Lccc71/utils/ae;->b()Ljava/io/FileInputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 36
    invoke-virtual {v0}, Lccc71/utils/ae;->c()Ljava/io/FileInputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 38
    invoke-virtual {v0}, Lccc71/utils/ae;->e()I

    .line 40
    iget-object v1, p0, Lccc71/utils/ai;->b:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 41
    iget-object v1, p0, Lccc71/utils/ai;->b:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v1

    .line 45
    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {v0}, Lccc71/utils/ae;->d()V

    .line 49
    :cond_1
    iget-object v0, p0, Lccc71/utils/ai;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lccc71/utils/ai;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
