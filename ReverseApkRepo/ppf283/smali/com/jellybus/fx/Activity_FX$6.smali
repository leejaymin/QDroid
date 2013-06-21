.class Lcom/jellybus/fx/Activity_FX$6;
.super Ljava/lang/Object;
.source "Activity_FX.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jellybus/fx/Activity_FX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_FX;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_FX;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_FX$6;->this$0:Lcom/jellybus/fx/Activity_FX;

    .line 662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 666
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0600cc

    if-ne v0, v1, :cond_1

    .line 667
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX$6;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->viewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_FX;->access$2(Lcom/jellybus/fx/Activity_FX;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 668
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0600cd

    if-ne v0, v1, :cond_2

    .line 669
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX$6;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->viewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_FX;->access$2(Lcom/jellybus/fx/Activity_FX;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 670
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0600ce

    if-ne v0, v1, :cond_0

    .line 671
    iget-object v0, p0, Lcom/jellybus/fx/Activity_FX$6;->this$0:Lcom/jellybus/fx/Activity_FX;

    #getter for: Lcom/jellybus/fx/Activity_FX;->viewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/jellybus/fx/Activity_FX;->access$2(Lcom/jellybus/fx/Activity_FX;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0
.end method
