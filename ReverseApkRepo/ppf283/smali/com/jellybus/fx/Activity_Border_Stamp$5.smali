.class Lcom/jellybus/fx/Activity_Border_Stamp$5;
.super Ljava/lang/Object;
.source "Activity_Border_Stamp.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Border_Stamp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Border_Stamp;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Border_Stamp;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Border_Stamp$5;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    .line 388
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp$5;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->touchView:Lcom/jellybus/fx_sub/StampControllView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$3(Lcom/jellybus/fx/Activity_Border_Stamp;)Lcom/jellybus/fx_sub/StampControllView;

    move-result-object v0

    iget-object v1, p0, Lcom/jellybus/fx/Activity_Border_Stamp$5;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->isTextStamp:Z
    invoke-static {v1}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$14(Lcom/jellybus/fx/Activity_Border_Stamp;)Z

    move-result v1

    invoke-virtual {v0, p3, v1}, Lcom/jellybus/fx_sub/StampControllView;->addStamp(IZ)V

    .line 389
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp$5;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    #calls: Lcom/jellybus/fx/Activity_Border_Stamp;->setInactiveResource()V
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$8(Lcom/jellybus/fx/Activity_Border_Stamp;)V

    .line 390
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp$5;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    #calls: Lcom/jellybus/fx/Activity_Border_Stamp;->mainButtonToggle(Z)V
    invoke-static {v0, v2}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$15(Lcom/jellybus/fx/Activity_Border_Stamp;Z)V

    .line 391
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp$5;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->stamp_pic:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$1(Lcom/jellybus/fx/Activity_Border_Stamp;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp$5;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp;->touchView:Lcom/jellybus/fx_sub/StampControllView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_Stamp;->access$3(Lcom/jellybus/fx/Activity_Border_Stamp;)Lcom/jellybus/fx_sub/StampControllView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/jellybus/fx_sub/StampControllView;->setVisibility(I)V

    .line 393
    return-void
.end method
