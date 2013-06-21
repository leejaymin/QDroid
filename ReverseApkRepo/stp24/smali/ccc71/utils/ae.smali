.class public final Lccc71/utils/ae;
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
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lccc71/utils/ae;->a:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lccc71/utils/ae;->b:Landroid/os/Handler;

    .line 15
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 16
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 17
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 18
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 23
    const/4 v0, 0x0

    .line 26
    :try_start_0
    iget-object v2, p0, Lccc71/utils/ae;->a:Ljava/lang/String;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 27
    :goto_0
    array-length v3, v2

    if-lt v1, v3, :cond_1

    .line 36
    iget-object v1, p0, Lccc71/utils/ae;->b:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 46
    :cond_0
    :goto_1
    return-void

    .line 29
    :cond_1
    aget-object v3, v2, v1

    invoke-static {v3}, Lccc71/utils/z;->a(Ljava/lang/String;)Lccc71/utils/ab;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lccc71/utils/ab;->b()Ljava/io/FileInputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 31
    invoke-virtual {v0}, Lccc71/utils/ab;->c()Ljava/io/FileInputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 32
    invoke-virtual {v0}, Lccc71/utils/ab;->a()Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 33
    invoke-virtual {v0}, Lccc71/utils/ab;->e()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 40
    :catch_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 41
    invoke-virtual {v0}, Lccc71/utils/ab;->d()V

    .line 43
    :cond_2
    iget-object v0, p0, Lccc71/utils/ae;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lccc71/utils/ae;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method
