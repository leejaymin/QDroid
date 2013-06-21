.class Lcom/jellybus/fx/Activity_Color_Curve$2;
.super Ljava/lang/Object;
.source "Activity_Color_Curve.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_Color_Curve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Color_Curve;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Color_Curve;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Color_Curve$2;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 149
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve$2;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #calls: Lcom/jellybus/fx/Activity_Color_Curve;->setJNIPreview()V
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Color_Curve;->access$0(Lcom/jellybus/fx/Activity_Color_Curve;)V

    .line 150
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve$2;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->isBW:Z
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Color_Curve;->access$1(Lcom/jellybus/fx/Activity_Color_Curve;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve$2;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->curve_bw:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Color_Curve;->access$2(Lcom/jellybus/fx/Activity_Color_Curve;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020059

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 152
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve$2;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    const/4 v1, 0x0

    #setter for: Lcom/jellybus/fx/Activity_Color_Curve;->isBW:Z
    invoke-static {v0, v1}, Lcom/jellybus/fx/Activity_Color_Curve;->access$3(Lcom/jellybus/fx/Activity_Color_Curve;Z)V

    .line 153
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve$2;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #calls: Lcom/jellybus/fx/Activity_Color_Curve;->setCurveEffect(Z)V
    invoke-static {v0, v2}, Lcom/jellybus/fx/Activity_Color_Curve;->access$4(Lcom/jellybus/fx/Activity_Color_Curve;Z)V

    .line 159
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve$2;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #getter for: Lcom/jellybus/fx/Activity_Color_Curve;->curve_bw:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_Color_Curve;->access$2(Lcom/jellybus/fx/Activity_Color_Curve;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02005a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 156
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve$2;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #setter for: Lcom/jellybus/fx/Activity_Color_Curve;->isBW:Z
    invoke-static {v0, v2}, Lcom/jellybus/fx/Activity_Color_Curve;->access$3(Lcom/jellybus/fx/Activity_Color_Curve;Z)V

    .line 157
    iget-object v0, p0, Lcom/jellybus/fx/Activity_Color_Curve$2;->this$0:Lcom/jellybus/fx/Activity_Color_Curve;

    #calls: Lcom/jellybus/fx/Activity_Color_Curve;->setCurveEffect(Z)V
    invoke-static {v0, v2}, Lcom/jellybus/fx/Activity_Color_Curve;->access$4(Lcom/jellybus/fx/Activity_Color_Curve;Z)V

    goto :goto_0
.end method
