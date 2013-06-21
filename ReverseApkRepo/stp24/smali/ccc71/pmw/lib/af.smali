.class final Lccc71/pmw/lib/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lccc71/utils/v;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_analyzer;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_analyzer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    .line 915
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;F)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 961
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->h(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_multi_graph_view;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 963
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->a(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_batterygraphview;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 964
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->a(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_batterygraphview;

    move-result-object v0

    invoke-virtual {v0, p2}, Lccc71/utils/ccc71_batterygraphview;->setZoomFactor(F)V

    .line 965
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->p(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_state_graph_view;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 966
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->p(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_state_graph_view;

    move-result-object v0

    invoke-virtual {v0, p2}, Lccc71/utils/ccc71_state_graph_view;->setZoomFactor(F)V

    .line 967
    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->f(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_multi_graph_view;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 968
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->f(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_multi_graph_view;

    move-result-object v0

    invoke-virtual {v0, p2}, Lccc71/utils/ccc71_multi_graph_view;->setZoomFactor(F)V

    .line 998
    :cond_2
    :goto_0
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0, p2}, Lccc71/pmw/lib/pmw_settings;->a(Landroid/content/Context;F)V

    .line 999
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_analyzer;->e()V

    .line 1000
    return-void

    .line 970
    :cond_3
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->a(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_batterygraphview;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 972
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->h(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_multi_graph_view;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 973
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->h(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_multi_graph_view;

    move-result-object v0

    invoke-virtual {v0, p2}, Lccc71/utils/ccc71_multi_graph_view;->setZoomFactor(F)V

    .line 974
    :cond_4
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->f(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_multi_graph_view;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 975
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->f(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_multi_graph_view;

    move-result-object v0

    invoke-virtual {v0, p2}, Lccc71/utils/ccc71_multi_graph_view;->setZoomFactor(F)V

    .line 976
    :cond_5
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->p(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_state_graph_view;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 977
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->p(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_state_graph_view;

    move-result-object v0

    invoke-virtual {v0, p2}, Lccc71/utils/ccc71_state_graph_view;->setZoomFactor(F)V

    goto :goto_0

    .line 979
    :cond_6
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->f(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_multi_graph_view;

    move-result-object v0

    if-ne p1, v0, :cond_9

    .line 981
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->h(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_multi_graph_view;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 982
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->h(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_multi_graph_view;

    move-result-object v0

    invoke-virtual {v0, p2}, Lccc71/utils/ccc71_multi_graph_view;->setZoomFactor(F)V

    .line 983
    :cond_7
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->p(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_state_graph_view;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 984
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->p(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_state_graph_view;

    move-result-object v0

    invoke-virtual {v0, p2}, Lccc71/utils/ccc71_state_graph_view;->setZoomFactor(F)V

    .line 985
    :cond_8
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->a(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_batterygraphview;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 986
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->a(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_batterygraphview;

    move-result-object v0

    invoke-virtual {v0, p2}, Lccc71/utils/ccc71_batterygraphview;->setZoomFactor(F)V

    goto/16 :goto_0

    .line 990
    :cond_9
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->h(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_multi_graph_view;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 991
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->h(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_multi_graph_view;

    move-result-object v0

    invoke-virtual {v0, p2}, Lccc71/utils/ccc71_multi_graph_view;->setZoomFactor(F)V

    .line 992
    :cond_a
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->f(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_multi_graph_view;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 993
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->f(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_multi_graph_view;

    move-result-object v0

    invoke-virtual {v0, p2}, Lccc71/utils/ccc71_multi_graph_view;->setZoomFactor(F)V

    .line 994
    :cond_b
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->a(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_batterygraphview;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 995
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->a(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_batterygraphview;

    move-result-object v0

    invoke-virtual {v0, p2}, Lccc71/utils/ccc71_batterygraphview;->setZoomFactor(F)V

    goto/16 :goto_0
.end method

.method public final a(Landroid/view/View;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 920
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->h(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_multi_graph_view;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 922
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->a(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_batterygraphview;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 923
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->a(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_batterygraphview;

    move-result-object v0

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_batterygraphview;->c(F)F

    .line 924
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->p(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_state_graph_view;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 925
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->p(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_state_graph_view;

    move-result-object v0

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_state_graph_view;->c(F)F

    .line 926
    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->f(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_multi_graph_view;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 927
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->f(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_multi_graph_view;

    move-result-object v0

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_multi_graph_view;->c(F)F

    .line 956
    :cond_2
    :goto_0
    return-void

    .line 929
    :cond_3
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->a(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_batterygraphview;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 931
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->h(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_multi_graph_view;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 932
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->h(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_multi_graph_view;

    move-result-object v0

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_multi_graph_view;->c(F)F

    .line 933
    :cond_4
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->p(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_state_graph_view;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 934
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->p(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_state_graph_view;

    move-result-object v0

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_state_graph_view;->c(F)F

    .line 935
    :cond_5
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->f(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_multi_graph_view;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 936
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->f(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_multi_graph_view;

    move-result-object v0

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_multi_graph_view;->c(F)F

    goto :goto_0

    .line 938
    :cond_6
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->f(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_multi_graph_view;

    move-result-object v0

    if-ne p1, v0, :cond_9

    .line 940
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->h(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_multi_graph_view;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 941
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->h(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_multi_graph_view;

    move-result-object v0

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_multi_graph_view;->c(F)F

    .line 942
    :cond_7
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->p(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_state_graph_view;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 943
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->p(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_state_graph_view;

    move-result-object v0

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_state_graph_view;->c(F)F

    .line 944
    :cond_8
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->a(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_batterygraphview;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 945
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->a(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_batterygraphview;

    move-result-object v0

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_batterygraphview;->c(F)F

    goto :goto_0

    .line 949
    :cond_9
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->a(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_batterygraphview;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 950
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->a(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_batterygraphview;

    move-result-object v0

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_batterygraphview;->c(F)F

    .line 951
    :cond_a
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->h(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_multi_graph_view;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 952
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->h(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_multi_graph_view;

    move-result-object v0

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_multi_graph_view;->c(F)F

    .line 953
    :cond_b
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->f(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_multi_graph_view;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 954
    iget-object v0, p0, Lccc71/pmw/lib/af;->a:Lccc71/pmw/lib/pmw_analyzer;

    invoke-static {v0}, Lccc71/pmw/lib/pmw_analyzer;->f(Lccc71/pmw/lib/pmw_analyzer;)Lccc71/utils/ccc71_multi_graph_view;

    move-result-object v0

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Lccc71/utils/ccc71_multi_graph_view;->c(F)F

    goto/16 :goto_0
.end method
