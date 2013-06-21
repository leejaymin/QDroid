.class Lcom/jellybus/fx/Activity_Main$13;
.super Ljava/lang/Object;
.source "Activity_Main.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jellybus/fx/Activity_Main;->createDialog(I)Landroid/app/Dialog;
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
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Main$13;->this$0:Lcom/jellybus/fx/Activity_Main;

    .line 656
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 661
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 662
    .local v0, flurry_value:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "Reset value"

    const-string v2, "Reset"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    const-string v1, "Reset"

    invoke-static {v1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 665
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main$13;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->bitmap_create_handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Main;->access$48(Lcom/jellybus/fx/Activity_Main;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 666
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main$13;->this$0:Lcom/jellybus/fx/Activity_Main;

    const/4 v2, 0x1

    #setter for: Lcom/jellybus/fx/Activity_Main;->isReset:Z
    invoke-static {v1, v2}, Lcom/jellybus/fx/Activity_Main;->access$39(Lcom/jellybus/fx/Activity_Main;Z)V

    .line 669
    iget-object v1, p0, Lcom/jellybus/fx/Activity_Main$13;->this$0:Lcom/jellybus/fx/Activity_Main;

    #calls: Lcom/jellybus/fx/Activity_Main;->undo_redo_reset()V
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Main;->access$49(Lcom/jellybus/fx/Activity_Main;)V

    .line 671
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 672
    return-void
.end method
