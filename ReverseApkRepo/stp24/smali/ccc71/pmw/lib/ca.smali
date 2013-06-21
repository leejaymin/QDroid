.class final Lccc71/pmw/lib/ca;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lccc71/pmw/lib/bz;

.field private final synthetic b:Landroid/widget/TableLayout;

.field private final synthetic c:Ljava/util/List;

.field private final synthetic d:I

.field private final synthetic e:Ljava/util/List;

.field private final synthetic f:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/bz;Landroid/widget/TableLayout;Ljava/util/List;ILjava/util/List;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ca;->a:Lccc71/pmw/lib/bz;

    iput-object p2, p0, Lccc71/pmw/lib/ca;->b:Landroid/widget/TableLayout;

    iput-object p3, p0, Lccc71/pmw/lib/ca;->c:Ljava/util/List;

    iput p4, p0, Lccc71/pmw/lib/ca;->d:I

    iput-object p5, p0, Lccc71/pmw/lib/ca;->e:Ljava/util/List;

    iput-object p6, p0, Lccc71/pmw/lib/ca;->f:Ljava/util/ArrayList;

    .line 1021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1026
    iget-object v0, p0, Lccc71/pmw/lib/ca;->a:Lccc71/pmw/lib/bz;

    invoke-static {v0}, Lccc71/pmw/lib/bz;->a(Lccc71/pmw/lib/bz;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->D(Lccc71/pmw/lib/pmw_applist;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1028
    iget-object v0, p0, Lccc71/pmw/lib/ca;->a:Lccc71/pmw/lib/bz;

    invoke-static {v0}, Lccc71/pmw/lib/bz;->a(Lccc71/pmw/lib/bz;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccc71/pmw/lib/pmw_applist;->a(Lccc71/pmw/lib/pmw_applist;Ljava/util/List;)V

    .line 1067
    :cond_0
    return-void

    .line 1032
    :cond_1
    iget-object v0, p0, Lccc71/pmw/lib/ca;->b:Landroid/widget/TableLayout;

    invoke-virtual {v0}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 1034
    iget-object v0, p0, Lccc71/pmw/lib/ca;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v3, v2

    .line 1035
    :goto_0
    if-lt v3, v4, :cond_3

    .line 1061
    :cond_2
    iget-object v0, p0, Lccc71/pmw/lib/ca;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v2

    .line 1062
    :goto_1
    if-ge v1, v3, :cond_0

    .line 1064
    iget-object v0, p0, Lccc71/pmw/lib/ca;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1065
    invoke-static {v2}, Lccc71/utils/ag;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1062
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1037
    :cond_3
    iget-object v0, p0, Lccc71/pmw/lib/ca;->a:Lccc71/pmw/lib/bz;

    invoke-static {v0}, Lccc71/pmw/lib/bz;->a(Lccc71/pmw/lib/bz;)Lccc71/pmw/lib/pmw_applist;

    move-result-object v0

    invoke-static {v0}, Lccc71/pmw/lib/pmw_applist;->D(Lccc71/pmw/lib/pmw_applist;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1038
    iget-object v0, p0, Lccc71/pmw/lib/ca;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    .line 1042
    iget-object v1, p0, Lccc71/pmw/lib/ca;->b:Landroid/widget/TableLayout;

    invoke-virtual {v1, v0}, Landroid/widget/TableLayout;->removeView(Landroid/view/View;)V

    .line 1043
    iget-object v1, p0, Lccc71/pmw/lib/ca;->b:Landroid/widget/TableLayout;

    invoke-virtual {v1, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 1045
    rem-int/lit8 v1, v3, 0x2

    if-nez v1, :cond_4

    .line 1047
    iget v1, p0, Lccc71/pmw/lib/ca;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->setBackgroundColor(I)V

    .line 1050
    :cond_4
    iget-object v1, p0, Lccc71/pmw/lib/ca;->e:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1052
    invoke-static {}, Lccc71/pmw/lib/pmw_applist;->h()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1053
    const-class v5, Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1055
    check-cast v0, Landroid/widget/TextView;

    .line 1056
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1057
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1035
    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0
.end method
