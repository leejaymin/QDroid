.class final Lccc71/pmw/lib/hf;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_main;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_main;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/hf;->a:Lccc71/pmw/lib/pmw_main;

    .line 683
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 688
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 690
    iget-object v0, p0, Lccc71/pmw/lib/hf;->a:Lccc71/pmw/lib/pmw_main;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_main;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 732
    :cond_0
    :goto_0
    return-void

    .line 693
    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/hf;->a:Lccc71/pmw/lib/pmw_main;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_main;->a(Lccc71/pmw/lib/pmw_main;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lccc71/pmw/lib/hf;->a:Lccc71/pmw/lib/pmw_main;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_main;->a(Lccc71/pmw/lib/pmw_main;)Landroid/app/Dialog;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/d;->E:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_1
    check-cast v0, Landroid/widget/Button;

    .line 695
    const-string v1, "process_monitor_widget"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "myDialog="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lccc71/pmw/lib/hf;->a:Lccc71/pmw/lib/pmw_main;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_main;->a(Lccc71/pmw/lib/pmw_main;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " b="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    if-eqz v0, :cond_2

    .line 698
    invoke-static {}, Lccc71/pmw/a/ah;->o()Z

    move-result v1

    if-nez v1, :cond_2

    .line 700
    sget-boolean v1, Lccc71/pmw/b/h;->c:Z

    if-eqz v1, :cond_5

    .line 701
    sget v1, Lccc71/pmw/lib/g;->bY:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 707
    :cond_2
    :goto_2
    iget-object v0, p0, Lccc71/pmw/lib/hf;->a:Lccc71/pmw/lib/pmw_main;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_main;->a(Lccc71/pmw/lib/pmw_main;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lccc71/pmw/lib/hf;->a:Lccc71/pmw/lib/pmw_main;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_main;->a(Lccc71/pmw/lib/pmw_main;)Landroid/app/Dialog;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/d;->at:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_3
    check-cast v0, Landroid/widget/Button;

    .line 708
    if-eqz v0, :cond_3

    .line 710
    invoke-static {}, Lccc71/pmw/a/ah;->w()Z

    move-result v1

    if-nez v1, :cond_7

    .line 712
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 720
    :cond_3
    :goto_4
    iget-object v0, p0, Lccc71/pmw/lib/hf;->a:Lccc71/pmw/lib/pmw_main;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_main;->a(Lccc71/pmw/lib/pmw_main;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lccc71/pmw/lib/hf;->a:Lccc71/pmw/lib/pmw_main;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_main;->a(Lccc71/pmw/lib/pmw_main;)Landroid/app/Dialog;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/d;->az:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_5
    check-cast v0, Landroid/widget/Button;

    .line 721
    if-eqz v0, :cond_0

    .line 723
    invoke-static {}, Lccc71/pmw/a/ah;->o()Z

    move-result v1

    if-nez v1, :cond_9

    .line 725
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 693
    :cond_4
    iget-object v0, p0, Lccc71/pmw/lib/hf;->a:Lccc71/pmw/lib/pmw_main;

    sget v1, Lccc71/pmw/lib/d;->E:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto/16 :goto_1

    .line 703
    :cond_5
    sget v1, Lccc71/pmw/lib/g;->by:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_2

    .line 707
    :cond_6
    iget-object v0, p0, Lccc71/pmw/lib/hf;->a:Lccc71/pmw/lib/pmw_main;

    sget v1, Lccc71/pmw/lib/d;->at:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_3

    .line 716
    :cond_7
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4

    .line 720
    :cond_8
    iget-object v0, p0, Lccc71/pmw/lib/hf;->a:Lccc71/pmw/lib/pmw_main;

    sget v1, Lccc71/pmw/lib/d;->az:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_main;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_5

    .line 729
    :cond_9
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0
.end method
