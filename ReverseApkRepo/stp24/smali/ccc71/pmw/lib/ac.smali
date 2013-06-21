.class final Lccc71/pmw/lib/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_analyzer;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_analyzer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ac;->a:Lccc71/pmw/lib/pmw_analyzer;

    .line 754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    const/16 v2, -0x100

    .line 759
    iget-object v0, p0, Lccc71/pmw/lib/ac;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->a(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_batterygraphview;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 763
    iget-object v0, p0, Lccc71/pmw/lib/ac;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->a(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_batterygraphview;

    move-result-object v0

    iget-object v0, v0, Lccc71/utils/ccc71_batterygraphview;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 764
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 766
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 800
    :goto_0
    return-void

    .line 769
    :pswitch_0
    const-string v0, "process_monitor_widget"

    const-string v1, "Battery view set to temperature"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iget-object v0, p0, Lccc71/pmw/lib/ac;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->a(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_batterygraphview;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/ac;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_analyzer;->b(Lccc71/pmw/lib/pmw_analyzer;)Ljava/util/HashMap;

    move-result-object v1

    const/16 v2, -0x102

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccc71/pmw/b/t;

    iget-object v2, p0, Lccc71/pmw/lib/ac;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_analyzer;->c(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/pmw/lib/pmw_recorder;

    move-result-object v2

    invoke-virtual {v2}, Lccc71/pmw/lib/pmw_recorder;->h()I

    move-result v2

    iget-object v3, p0, Lccc71/pmw/lib/ac;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_analyzer;->d(Lccc71/pmw/lib/pmw_analyzer;)I

    move-result v3

    const-string v4, "temperature"

    iget-object v5, p0, Lccc71/pmw/lib/ac;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v5}, Lccc71/pmw/lib/pmw_analyzer;->c(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/pmw/lib/pmw_recorder;

    move-result-object v5

    invoke-virtual {v5}, Lccc71/pmw/lib/pmw_recorder;->k()Ljava/util/Date;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lccc71/utils/ccc71_batterygraphview;->setData(Lccc71/pmw/b/t;IILjava/lang/String;Ljava/util/Date;)V

    .line 771
    const-string v0, "process_monitor_widget"

    const-string v1, "Battery view ready"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 774
    :pswitch_1
    iget-object v0, p0, Lccc71/pmw/lib/ac;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->a(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_batterygraphview;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/ac;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_analyzer;->b(Lccc71/pmw/lib/pmw_analyzer;)Ljava/util/HashMap;

    move-result-object v1

    const/16 v2, -0x101

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccc71/pmw/b/t;

    iget-object v2, p0, Lccc71/pmw/lib/ac;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_analyzer;->c(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/pmw/lib/pmw_recorder;

    move-result-object v2

    invoke-virtual {v2}, Lccc71/pmw/lib/pmw_recorder;->h()I

    move-result v2

    iget-object v3, p0, Lccc71/pmw/lib/ac;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_analyzer;->d(Lccc71/pmw/lib/pmw_analyzer;)I

    move-result v3

    const-string v4, "(dis)charge (mA)"

    iget-object v5, p0, Lccc71/pmw/lib/ac;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v5}, Lccc71/pmw/lib/pmw_analyzer;->c(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/pmw/lib/pmw_recorder;

    move-result-object v5

    invoke-virtual {v5}, Lccc71/pmw/lib/pmw_recorder;->k()Ljava/util/Date;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lccc71/utils/ccc71_batterygraphview;->setData(Lccc71/pmw/b/t;IILjava/lang/String;Ljava/util/Date;)V

    goto :goto_0

    .line 777
    :pswitch_2
    iget-object v0, p0, Lccc71/pmw/lib/ac;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->c(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/pmw/lib/pmw_recorder;

    move-result-object v0

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_recorder;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccc71/pmw/lib/ac;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->e(Lccc71/pmw/lib/pmw_analyzer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 779
    iget-object v0, p0, Lccc71/pmw/lib/ac;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->a(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_batterygraphview;

    move-result-object v0

    invoke-virtual {v0, v7}, Lccc71/utils/ccc71_batterygraphview;->setVisibility(I)V

    .line 780
    iget-object v0, p0, Lccc71/pmw/lib/ac;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->f(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_multi_graph_view;

    move-result-object v0

    invoke-virtual {v0, v6}, Lccc71/utils/ccc71_multi_graph_view;->setVisibility(I)V

    goto/16 :goto_0

    .line 783
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/ac;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->a(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_batterygraphview;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/ac;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_analyzer;->b(Lccc71/pmw/lib/pmw_analyzer;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccc71/pmw/b/t;

    iget-object v2, p0, Lccc71/pmw/lib/ac;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_analyzer;->c(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/pmw/lib/pmw_recorder;

    move-result-object v2

    invoke-virtual {v2}, Lccc71/pmw/lib/pmw_recorder;->h()I

    move-result v2

    iget-object v3, p0, Lccc71/pmw/lib/ac;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_analyzer;->d(Lccc71/pmw/lib/pmw_analyzer;)I

    move-result v3

    const-string v4, "% available"

    iget-object v5, p0, Lccc71/pmw/lib/ac;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v5}, Lccc71/pmw/lib/pmw_analyzer;->c(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/pmw/lib/pmw_recorder;

    move-result-object v5

    invoke-virtual {v5}, Lccc71/pmw/lib/pmw_recorder;->k()Ljava/util/Date;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lccc71/utils/ccc71_batterygraphview;->setData(Lccc71/pmw/b/t;IILjava/lang/String;Ljava/util/Date;)V

    goto/16 :goto_0

    .line 789
    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/ac;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->a(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_batterygraphview;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/ac;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_analyzer;->b(Lccc71/pmw/lib/pmw_analyzer;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccc71/pmw/b/t;

    iget-object v2, p0, Lccc71/pmw/lib/ac;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_analyzer;->c(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/pmw/lib/pmw_recorder;

    move-result-object v2

    invoke-virtual {v2}, Lccc71/pmw/lib/pmw_recorder;->h()I

    move-result v2

    iget-object v3, p0, Lccc71/pmw/lib/ac;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_analyzer;->d(Lccc71/pmw/lib/pmw_analyzer;)I

    move-result v3

    const-string v4, "% available"

    iget-object v5, p0, Lccc71/pmw/lib/ac;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v5}, Lccc71/pmw/lib/pmw_analyzer;->c(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/pmw/lib/pmw_recorder;

    move-result-object v5

    invoke-virtual {v5}, Lccc71/pmw/lib/pmw_recorder;->k()Ljava/util/Date;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lccc71/utils/ccc71_batterygraphview;->setData(Lccc71/pmw/b/t;IILjava/lang/String;Ljava/util/Date;)V

    goto/16 :goto_0

    .line 796
    :cond_2
    iget-object v0, p0, Lccc71/pmw/lib/ac;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->a(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_batterygraphview;

    move-result-object v0

    iget-object v1, p0, Lccc71/pmw/lib/ac;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_analyzer;->b(Lccc71/pmw/lib/pmw_analyzer;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccc71/pmw/b/t;

    iget-object v2, p0, Lccc71/pmw/lib/ac;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v2}, Lccc71/pmw/lib/pmw_analyzer;->c(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/pmw/lib/pmw_recorder;

    move-result-object v2

    invoke-virtual {v2}, Lccc71/pmw/lib/pmw_recorder;->h()I

    move-result v2

    iget-object v3, p0, Lccc71/pmw/lib/ac;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_analyzer;->d(Lccc71/pmw/lib/pmw_analyzer;)I

    move-result v3

    const-string v4, "% available"

    iget-object v5, p0, Lccc71/pmw/lib/ac;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v5}, Lccc71/pmw/lib/pmw_analyzer;->c(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/pmw/lib/pmw_recorder;

    move-result-object v5

    invoke-virtual {v5}, Lccc71/pmw/lib/pmw_recorder;->k()Ljava/util/Date;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lccc71/utils/ccc71_batterygraphview;->setData(Lccc71/pmw/b/t;IILjava/lang/String;Ljava/util/Date;)V

    .line 797
    iget-object v0, p0, Lccc71/pmw/lib/ac;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->a(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_batterygraphview;

    move-result-object v0

    invoke-virtual {v0, v6}, Lccc71/utils/ccc71_batterygraphview;->setVisibility(I)V

    .line 798
    iget-object v0, p0, Lccc71/pmw/lib/ac;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->f(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_multi_graph_view;

    move-result-object v0

    invoke-virtual {v0, v7}, Lccc71/utils/ccc71_multi_graph_view;->setVisibility(I)V

    goto/16 :goto_0

    .line 766
    :pswitch_data_0
    .packed-switch -0x102
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
