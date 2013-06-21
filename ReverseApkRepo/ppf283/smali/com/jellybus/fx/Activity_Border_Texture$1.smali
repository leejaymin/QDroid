.class Lcom/jellybus/fx/Activity_Border_Texture$1;
.super Landroid/os/Handler;
.source "Activity_Border_Texture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Border_Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Border_Texture;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Border_Texture;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Border_Texture$1;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    .line 149
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Border_Texture$1;->this$0:Lcom/jellybus/fx/Activity_Border_Texture;

    #getter for: Lcom/jellybus/fx/Activity_Border_Texture;->texture_value:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Border_Texture;->access$0(Lcom/jellybus/fx/Activity_Border_Texture;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    return-void
.end method
