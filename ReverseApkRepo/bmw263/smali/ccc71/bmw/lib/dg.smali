.class final Lccc71/bmw/lib/dg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lccc71/bmw/lib/bmw_status;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/bmw_status;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/dg;->a:Lccc71/bmw/lib/bmw_status;

    .line 1319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    .line 1324
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lccc71/bmw/lib/d;->bM:I

    if-ne v0, v1, :cond_0

    .line 1326
    iget-object v0, p0, Lccc71/bmw/lib/dg;->a:Lccc71/bmw/lib/bmw_status;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_settings;->ad(Landroid/content/Context;)I

    move-result v0

    .line 1327
    iget-object v1, p0, Lccc71/bmw/lib/dg;->a:Lccc71/bmw/lib/bmw_status;

    invoke-static {v1}, Lccc71/bmw/lib/bmw_settings;->ae(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lccc71/bmw/lib/dg;->a:Lccc71/bmw/lib/bmw_status;

    invoke-static {v1}, Lccc71/bmw/lib/bmw_settings;->U(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1328
    iget-object v0, p0, Lccc71/bmw/lib/dg;->a:Lccc71/bmw/lib/bmw_status;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_settings;->ad(Landroid/content/Context;)I

    move-result v0

    move v5, v0

    .line 1337
    :goto_0
    invoke-static {}, Lccc71/bmw/lib/ak;->values()[Lccc71/bmw/lib/ak;

    move-result-object v0

    aget-object v1, v0, v5

    move-object v0, p1

    .line 1338
    check-cast v0, Lccc71/utils/ccc71_graph_view;

    .line 1340
    iget-object v2, p0, Lccc71/bmw/lib/dg;->a:Lccc71/bmw/lib/bmw_status;

    invoke-static {v2}, Lccc71/bmw/lib/bmw_settings;->J(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v1, v2}, Lccc71/bmw/lib/bi;->a(Lccc71/bmw/lib/ak;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 1341
    iget-object v3, p0, Lccc71/bmw/lib/dg;->a:Lccc71/bmw/lib/bmw_status;

    invoke-static {}, Lccc71/bmw/lib/bi;->i()Ljava/util/ArrayList;

    move-result-object v3

    .line 1342
    iget-object v4, p0, Lccc71/bmw/lib/dg;->a:Lccc71/bmw/lib/bmw_status;

    invoke-static {v4}, Lccc71/bmw/lib/bmw_settings;->o(Landroid/content/Context;)I

    move-result v4

    .line 1343
    sget-object v6, Lccc71/bmw/lib/aj;->b:[I

    aget v5, v6, v5

    .line 1344
    invoke-static {}, Lccc71/bmw/lib/bi;->c()Ljava/util/Date;

    move-result-object v6

    .line 1338
    invoke-virtual/range {v0 .. v6}, Lccc71/utils/ccc71_graph_view;->setData(Lccc71/bmw/lib/ak;Ljava/util/ArrayList;Ljava/util/ArrayList;IILjava/util/Date;)V

    .line 1345
    return-void

    .line 1332
    :cond_0
    iget-object v0, p0, Lccc71/bmw/lib/dg;->a:Lccc71/bmw/lib/bmw_status;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_settings;->ah(Landroid/content/Context;)I

    move-result v0

    .line 1333
    iget-object v1, p0, Lccc71/bmw/lib/dg;->a:Lccc71/bmw/lib/bmw_status;

    invoke-static {v1}, Lccc71/bmw/lib/bmw_settings;->ac(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1334
    iget-object v0, p0, Lccc71/bmw/lib/dg;->a:Lccc71/bmw/lib/bmw_status;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_settings;->ah(Landroid/content/Context;)I

    move-result v0

    move v5, v0

    goto :goto_0

    :cond_1
    move v5, v0

    goto :goto_0
.end method
