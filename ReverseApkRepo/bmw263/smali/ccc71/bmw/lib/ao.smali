.class final Lccc71/bmw/lib/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/bmw_full_graph;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/bmw_full_graph;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/ao;->a:Lccc71/bmw/lib/bmw_full_graph;

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 297
    iget-object v0, p0, Lccc71/bmw/lib/ao;->a:Lccc71/bmw/lib/bmw_full_graph;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_full_graph;->a(Lccc71/bmw/lib/bmw_full_graph;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lccc71/bmw/lib/bmw_full_graph;->a(Lccc71/bmw/lib/bmw_full_graph;I)V

    .line 298
    iget-object v0, p0, Lccc71/bmw/lib/ao;->a:Lccc71/bmw/lib/bmw_full_graph;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_full_graph;->a(Lccc71/bmw/lib/bmw_full_graph;)I

    move-result v0

    invoke-static {}, Lccc71/bmw/lib/ak;->values()[Lccc71/bmw/lib/ak;

    move-result-object v1

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 299
    iget-object v0, p0, Lccc71/bmw/lib/ao;->a:Lccc71/bmw/lib/bmw_full_graph;

    invoke-static {v0, v2}, Lccc71/bmw/lib/bmw_full_graph;->a(Lccc71/bmw/lib/bmw_full_graph;I)V

    .line 301
    :cond_0
    iget-object v0, p0, Lccc71/bmw/lib/ao;->a:Lccc71/bmw/lib/bmw_full_graph;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_full_graph;->a(Lccc71/bmw/lib/bmw_full_graph;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lccc71/bmw/lib/ao;->a:Lccc71/bmw/lib/bmw_full_graph;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_settings;->V(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lccc71/bmw/lib/ao;->a:Lccc71/bmw/lib/bmw_full_graph;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_full_graph;->a(Lccc71/bmw/lib/bmw_full_graph;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lccc71/bmw/lib/bmw_full_graph;->a(Lccc71/bmw/lib/bmw_full_graph;I)V

    .line 303
    :cond_1
    iget-object v0, p0, Lccc71/bmw/lib/ao;->a:Lccc71/bmw/lib/bmw_full_graph;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_full_graph;->a(Lccc71/bmw/lib/bmw_full_graph;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lccc71/bmw/lib/ao;->a:Lccc71/bmw/lib/bmw_full_graph;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_settings;->Z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 304
    iget-object v0, p0, Lccc71/bmw/lib/ao;->a:Lccc71/bmw/lib/bmw_full_graph;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_full_graph;->a(Lccc71/bmw/lib/bmw_full_graph;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lccc71/bmw/lib/bmw_full_graph;->a(Lccc71/bmw/lib/bmw_full_graph;I)V

    .line 305
    :cond_2
    iget-object v0, p0, Lccc71/bmw/lib/ao;->a:Lccc71/bmw/lib/bmw_full_graph;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_full_graph;->a(Lccc71/bmw/lib/bmw_full_graph;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lccc71/bmw/lib/ao;->a:Lccc71/bmw/lib/bmw_full_graph;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_settings;->Y(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 306
    iget-object v0, p0, Lccc71/bmw/lib/ao;->a:Lccc71/bmw/lib/bmw_full_graph;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_full_graph;->a(Lccc71/bmw/lib/bmw_full_graph;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lccc71/bmw/lib/bmw_full_graph;->a(Lccc71/bmw/lib/bmw_full_graph;I)V

    .line 307
    :cond_3
    iget-object v0, p0, Lccc71/bmw/lib/ao;->a:Lccc71/bmw/lib/bmw_full_graph;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_full_graph;->a(Lccc71/bmw/lib/bmw_full_graph;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lccc71/bmw/lib/ao;->a:Lccc71/bmw/lib/bmw_full_graph;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_settings;->W(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 308
    iget-object v0, p0, Lccc71/bmw/lib/ao;->a:Lccc71/bmw/lib/bmw_full_graph;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_full_graph;->a(Lccc71/bmw/lib/bmw_full_graph;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lccc71/bmw/lib/bmw_full_graph;->a(Lccc71/bmw/lib/bmw_full_graph;I)V

    .line 309
    :cond_4
    iget-object v0, p0, Lccc71/bmw/lib/ao;->a:Lccc71/bmw/lib/bmw_full_graph;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_full_graph;->a(Lccc71/bmw/lib/bmw_full_graph;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lccc71/bmw/lib/ao;->a:Lccc71/bmw/lib/bmw_full_graph;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_settings;->X(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 310
    iget-object v0, p0, Lccc71/bmw/lib/ao;->a:Lccc71/bmw/lib/bmw_full_graph;

    invoke-static {v0, v2}, Lccc71/bmw/lib/bmw_full_graph;->a(Lccc71/bmw/lib/bmw_full_graph;I)V

    .line 312
    :cond_5
    invoke-static {}, Lccc71/bmw/lib/ak;->values()[Lccc71/bmw/lib/ak;

    move-result-object v0

    iget-object v1, p0, Lccc71/bmw/lib/ao;->a:Lccc71/bmw/lib/bmw_full_graph;

    invoke-static {v1}, Lccc71/bmw/lib/bmw_full_graph;->a(Lccc71/bmw/lib/bmw_full_graph;)I

    move-result v1

    aget-object v1, v0, v1

    move-object v0, p1

    .line 313
    check-cast v0, Lccc71/utils/ccc71_graph_view;

    .line 314
    iget-object v2, p0, Lccc71/bmw/lib/ao;->a:Lccc71/bmw/lib/bmw_full_graph;

    invoke-static {v2}, Lccc71/bmw/lib/bmw_settings;->J(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v1, v2}, Lccc71/bmw/lib/bi;->a(Lccc71/bmw/lib/ak;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 315
    iget-object v3, p0, Lccc71/bmw/lib/ao;->a:Lccc71/bmw/lib/bmw_full_graph;

    invoke-static {}, Lccc71/bmw/lib/bi;->i()Ljava/util/ArrayList;

    move-result-object v3

    .line 316
    iget-object v4, p0, Lccc71/bmw/lib/ao;->a:Lccc71/bmw/lib/bmw_full_graph;

    invoke-static {v4}, Lccc71/bmw/lib/bmw_settings;->o(Landroid/content/Context;)I

    move-result v4

    .line 317
    sget-object v5, Lccc71/bmw/lib/aj;->b:[I

    iget-object v6, p0, Lccc71/bmw/lib/ao;->a:Lccc71/bmw/lib/bmw_full_graph;

    invoke-static {v6}, Lccc71/bmw/lib/bmw_full_graph;->a(Lccc71/bmw/lib/bmw_full_graph;)I

    move-result v6

    aget v5, v5, v6

    invoke-static {}, Lccc71/bmw/lib/bi;->c()Ljava/util/Date;

    move-result-object v6

    .line 313
    invoke-virtual/range {v0 .. v6}, Lccc71/utils/ccc71_graph_view;->setData(Lccc71/bmw/lib/ak;Ljava/util/ArrayList;Ljava/util/ArrayList;IILjava/util/Date;)V

    .line 318
    return-void
.end method
