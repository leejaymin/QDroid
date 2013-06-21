.class Lcom/jellybus/fx/Activity_Main$11;
.super Landroid/os/Handler;
.source "Activity_Main.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Main;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Main;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Main;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Main$11;->this$0:Lcom/jellybus/fx/Activity_Main;

    .line 2194
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 2196
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main$11;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->empty_view:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Main;->access$5(Lcom/jellybus/fx/Activity_Main;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2197
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jellybus/fx_sub/PictureController;->isAllow:Z

    .line 2198
    return-void
.end method
