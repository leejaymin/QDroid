.class Lcom/dakkhin/android/bhadram/App$2;
.super Ljava/util/TimerTask;
.source "App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dakkhin/android/bhadram/App;->startAppTimeout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dakkhin/android/bhadram/App;


# direct methods
.method constructor <init>(Lcom/dakkhin/android/bhadram/App;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/dakkhin/android/bhadram/App$2;->this$0:Lcom/dakkhin/android/bhadram/App;

    .line 49
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/dakkhin/android/bhadram/App$2;->this$0:Lcom/dakkhin/android/bhadram/App;

    #getter for: Lcom/dakkhin/android/bhadram/App;->redirectHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/dakkhin/android/bhadram/App;->access$0(Lcom/dakkhin/android/bhadram/App;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 53
    return-void
.end method