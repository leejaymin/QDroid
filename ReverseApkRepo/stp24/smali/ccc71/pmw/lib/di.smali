.class final Lccc71/pmw/lib/di;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/dh;

.field private final synthetic b:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/dh;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/di;->a:Lccc71/pmw/lib/dh;

    iput-object p2, p0, Lccc71/pmw/lib/di;->b:Ljava/util/ArrayList;

    .line 1139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1144
    iget-object v0, p0, Lccc71/pmw/lib/di;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1145
    invoke-static {}, Lccc71/pmw/lib/pmw_backuplist;->f()Landroid/app/ProgressDialog;

    move-result-object v1

    iget-object v0, p0, Lccc71/pmw/lib/di;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1147
    :cond_0
    iget-object v0, p0, Lccc71/pmw/lib/di;->a:Lccc71/pmw/lib/dh;

    invoke-static {v0}, Lccc71/pmw/lib/dh;->a(Lccc71/pmw/lib/dh;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v0

    sget v1, Lccc71/pmw/lib/d;->a:I

    invoke-virtual {v0, v1}, Lccc71/pmw/lib/pmw_backuplist;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    .line 1148
    invoke-virtual {v0}, Landroid/widget/TableLayout;->getChildCount()I

    move-result v3

    move v1, v2

    .line 1149
    :goto_0
    if-lt v1, v3, :cond_1

    .line 1158
    iget-object v0, p0, Lccc71/pmw/lib/di;->a:Lccc71/pmw/lib/dh;

    invoke-static {v0}, Lccc71/pmw/lib/dh;->a(Lccc71/pmw/lib/dh;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_backuplist;->a(Lccc71/pmw/lib/pmw_backuplist;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1159
    return-void

    .line 1151
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1152
    iget-object v5, p0, Lccc71/pmw/lib/di;->a:Lccc71/pmw/lib/dh;

    invoke-static {v5}, Lccc71/pmw/lib/dh;->a(Lccc71/pmw/lib/dh;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v5

    invoke-static {v5}, Lccc71/pmw/lib/pmw_backuplist;->a(Lccc71/pmw/lib/pmw_backuplist;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1154
    iget-object v5, p0, Lccc71/pmw/lib/di;->a:Lccc71/pmw/lib/dh;

    invoke-static {v5}, Lccc71/pmw/lib/dh;->a(Lccc71/pmw/lib/dh;)Lccc71/pmw/lib/pmw_backuplist;

    move-result-object v5

    invoke-static {v5}, Lccc71/pmw/lib/pmw_backuplist;->a(Lccc71/pmw/lib/pmw_backuplist;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1155
    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1149
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
