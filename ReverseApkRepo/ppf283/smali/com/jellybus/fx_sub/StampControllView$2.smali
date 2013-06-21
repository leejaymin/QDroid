.class Lcom/jellybus/fx_sub/StampControllView$2;
.super Landroid/os/Handler;
.source "StampControllView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx_sub/StampControllView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx_sub/StampControllView;


# direct methods
.method constructor <init>(Lcom/jellybus/fx_sub/StampControllView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx_sub/StampControllView$2;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    .line 428
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 431
    iget-object v0, p0, Lcom/jellybus/fx_sub/StampControllView$2;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/jellybus/fx_sub/StampControllView;->drawFlag:Z

    .line 432
    iget-object v0, p0, Lcom/jellybus/fx_sub/StampControllView$2;->this$0:Lcom/jellybus/fx_sub/StampControllView;

    invoke-virtual {v0}, Lcom/jellybus/fx_sub/StampControllView;->invalidate()V

    .line 433
    return-void
.end method
