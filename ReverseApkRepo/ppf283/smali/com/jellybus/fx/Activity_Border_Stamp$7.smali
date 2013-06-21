.class Lcom/jellybus/fx/Activity_Border_Stamp$7;
.super Ljava/lang/Object;
.source "Activity_Border_Stamp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jellybus/fx/Activity_Border_Stamp;->createDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Border_Stamp;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Border_Stamp;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Border_Stamp$7;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp$7;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->touchView:Lcom/jellybus/fx_sub/StampControllView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$3(Lcom/jellybus/fx/Activity_Border_Stamp;)Lcom/jellybus/fx_sub/StampControllView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jellybus/fx_sub/StampControllView;->clearStamp()V

    .line 349
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp$7;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp$7;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->imgPath:Ljava/lang/String;
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$18(Lcom/jellybus/fx/Activity_Border_Stamp;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/jellybus/fx/Activity_Border_Stamp;->removeFolder(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$19(Lcom/jellybus/fx/Activity_Border_Stamp;Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp$7;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    #calls: Lcom/jellybus/fx/Activity_Border_Stamp;->setUnactivityResource()V
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$13(Lcom/jellybus/fx/Activity_Border_Stamp;)V

    .line 351
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 352
    return-void
.end method
