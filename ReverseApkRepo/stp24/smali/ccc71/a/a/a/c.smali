.class final Lccc71/a/a/a/c;
.super Lccc71/utils/android/k;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/a/a/a/b;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lccc71/a/a/a/b;Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/a/a/a/c;->a:Lccc71/a/a/a/b;

    iput-object p2, p0, Lccc71/a/a/a/c;->b:Landroid/content/Context;

    iput-object p3, p0, Lccc71/a/a/a/c;->c:Ljava/lang/String;

    iput-object p4, p0, Lccc71/a/a/a/c;->d:Landroid/os/Handler;

    .line 28
    invoke-direct {p0}, Lccc71/utils/android/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 33
    const-string v0, "android_tuner"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Starting log reader "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v0, p0, Lccc71/a/a/a/c;->a:Lccc71/a/a/a/b;

    iget-object v1, p0, Lccc71/a/a/a/c;->b:Landroid/content/Context;

    iget-object v2, p0, Lccc71/a/a/a/c;->c:Ljava/lang/String;

    iget-object v3, p0, Lccc71/a/a/a/c;->d:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Lccc71/a/a/a/b;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    .line 35
    const-string v0, "android_tuner"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Stopping log reader "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return-void
.end method
