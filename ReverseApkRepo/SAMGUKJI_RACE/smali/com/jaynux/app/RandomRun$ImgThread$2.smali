.class Lcom/jaynux/app/RandomRun$ImgThread$2;
.super Ljava/util/TimerTask;
.source "RandomRun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jaynux/app/RandomRun$ImgThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jaynux/app/RandomRun$ImgThread;


# direct methods
.method constructor <init>(Lcom/jaynux/app/RandomRun$ImgThread;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jaynux/app/RandomRun$ImgThread$2;->this$1:Lcom/jaynux/app/RandomRun$ImgThread;

    .line 356
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/jaynux/app/RandomRun$ImgThread$2;->this$1:Lcom/jaynux/app/RandomRun$ImgThread;

    #calls: Lcom/jaynux/app/RandomRun$ImgThread;->doCountDown()V
    invoke-static {v0}, Lcom/jaynux/app/RandomRun$ImgThread;->access$0(Lcom/jaynux/app/RandomRun$ImgThread;)V

    .line 359
    return-void
.end method
