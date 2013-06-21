.class Lcom/jellybus/fx/Activity_Main$3;
.super Ljava/lang/Object;
.source "Activity_Main.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Main$3;->this$0:Lcom/jellybus/fx/Activity_Main;

    .line 571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 575
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main$3;->this$0:Lcom/jellybus/fx/Activity_Main;

    #getter for: Lcom/jellybus/fx/Activity_Main;->compare:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Main;->access$2(Lcom/jellybus/fx/Activity_Main;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Main$3;->this$0:Lcom/jellybus/fx/Activity_Main;

    const/4 v1, 0x1

    #calls: Lcom/jellybus/fx/Activity_Main;->createDialog(I)Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/jellybus/fx/Activity_Main;->access$4(Lcom/jellybus/fx/Activity_Main;I)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 577
    :cond_0
    return-void
.end method
