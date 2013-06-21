.class Lcom/jellybus/fx/Activity_Border_Stamp_User$4;
.super Ljava/lang/Object;
.source "Activity_Border_Stamp_User.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Border_Stamp_User;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Border_Stamp_User;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$4;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$4;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    #getter for: Lcom/jellybus/fx/Activity_Border_Stamp_User;->isViewSet:Z
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->access$13(Lcom/jellybus/fx/Activity_Border_Stamp_User;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Stamp_User$4;->this$0:Lcom/jellybus/fx/Activity_Border_Stamp_User;

    #calls: Lcom/jellybus/fx/Activity_Border_Stamp_User;->goBack()V
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_Stamp_User;->access$14(Lcom/jellybus/fx/Activity_Border_Stamp_User;)V

    .line 333
    :cond_0
    return-void
.end method
