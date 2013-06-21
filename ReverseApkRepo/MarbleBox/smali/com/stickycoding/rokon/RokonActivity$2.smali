.class Lcom/stickycoding/rokon/RokonActivity$2;
.super Landroid/os/Handler;
.source "RokonActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stickycoding/rokon/RokonActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stickycoding/rokon/RokonActivity;


# direct methods
.method constructor <init>(Lcom/stickycoding/rokon/RokonActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/stickycoding/rokon/RokonActivity$2;->this$0:Lcom/stickycoding/rokon/RokonActivity;

    .line 65
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 68
    sget-object v0, Lcom/stickycoding/rokon/RokonActivity;->surfaceView:Lcom/stickycoding/rokon/RokonSurfaceView;

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lcom/stickycoding/rokon/RokonActivity;->surfaceView:Lcom/stickycoding/rokon/RokonSurfaceView;

    iget-object v0, v0, Lcom/stickycoding/rokon/RokonSurfaceView;->renderer:Lcom/stickycoding/rokon/RokonRenderer;

    monitor-enter v0

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/stickycoding/rokon/RokonActivity$2;->this$0:Lcom/stickycoding/rokon/RokonActivity;

    invoke-virtual {v1}, Lcom/stickycoding/rokon/RokonActivity;->dispose()V

    .line 71
    iget-object v1, p0, Lcom/stickycoding/rokon/RokonActivity$2;->this$0:Lcom/stickycoding/rokon/RokonActivity;

    #calls: Landroid/app/Activity;->finish()V
    invoke-static {v1}, Lcom/stickycoding/rokon/RokonActivity;->access$0(Lcom/stickycoding/rokon/RokonActivity;)V

    .line 69
    monitor-exit v0

    .line 78
    :goto_0
    return-void

    .line 69
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/stickycoding/rokon/RokonActivity$2;->this$0:Lcom/stickycoding/rokon/RokonActivity;

    invoke-virtual {v0}, Lcom/stickycoding/rokon/RokonActivity;->dispose()V

    .line 76
    iget-object v0, p0, Lcom/stickycoding/rokon/RokonActivity$2;->this$0:Lcom/stickycoding/rokon/RokonActivity;

    #calls: Landroid/app/Activity;->finish()V
    invoke-static {v0}, Lcom/stickycoding/rokon/RokonActivity;->access$0(Lcom/stickycoding/rokon/RokonActivity;)V

    goto :goto_0
.end method
