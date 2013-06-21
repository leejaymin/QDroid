.class final Lccc71/pmw/lib/ft;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_event_apps;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_event_apps;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/ft;->a:Lccc71/pmw/lib/pmw_event_apps;

    .line 569
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 573
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lccc71/pmw/a/a;

    .line 574
    iget-boolean v1, v0, Lccc71/pmw/a/a;->a:Z

    if-nez v1, :cond_6

    .line 578
    iget-object v1, p0, Lccc71/pmw/lib/ft;->a:Lccc71/pmw/lib/pmw_event_apps;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_event_apps;->f(Lccc71/pmw/lib/pmw_event_apps;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v5, v3

    .line 579
    :goto_0
    if-lt v5, v6, :cond_1

    .line 621
    :cond_0
    return-void

    .line 581
    :cond_1
    iget-object v1, p0, Lccc71/pmw/lib/ft;->a:Lccc71/pmw/lib/pmw_event_apps;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_event_apps;->f(Lccc71/pmw/lib/pmw_event_apps;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccc71/pmw/lib/fv;

    .line 582
    iget-object v2, v1, Lccc71/pmw/lib/fv;->b:Ljava/lang/String;

    iget-object v4, v0, Lccc71/pmw/a/a;->e:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 584
    iget-object v2, v1, Lccc71/pmw/lib/fv;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v4, v3

    .line 585
    :goto_1
    if-lt v4, v7, :cond_3

    .line 579
    :cond_2
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    .line 587
    :cond_3
    iget-object v2, v1, Lccc71/pmw/lib/fv;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccc71/pmw/lib/fw;

    .line 588
    iget-object v8, v2, Lccc71/pmw/lib/fw;->d:Ljava/lang/String;

    iget-object v9, v0, Lccc71/pmw/a/a;->f:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 590
    iget-object v2, v2, Lccc71/pmw/lib/fw;->a:Landroid/widget/CheckBox;

    .line 591
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 593
    iget-object v8, v0, Lccc71/pmw/a/a;->c:Lccc71/pmw/a/b;

    sget-object v9, Lccc71/pmw/a/b;->f:Lccc71/pmw/a/b;

    if-ne v8, v9, :cond_5

    .line 594
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 598
    :goto_2
    iget-object v8, p0, Lccc71/pmw/lib/ft;->a:Lccc71/pmw/lib/pmw_event_apps;

    iget-object v8, v8, Lccc71/pmw/lib/pmw_event_apps;->c:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 585
    :cond_4
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    .line 596
    :cond_5
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    .line 608
    :cond_6
    iget-object v1, p0, Lccc71/pmw/lib/ft;->a:Lccc71/pmw/lib/pmw_event_apps;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_event_apps;->f(Lccc71/pmw/lib/pmw_event_apps;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v3

    .line 609
    :goto_3
    if-ge v2, v4, :cond_0

    .line 611
    iget-object v1, p0, Lccc71/pmw/lib/ft;->a:Lccc71/pmw/lib/pmw_event_apps;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_event_apps;->f(Lccc71/pmw/lib/pmw_event_apps;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccc71/pmw/lib/fv;

    .line 612
    iget-object v3, v1, Lccc71/pmw/lib/fv;->b:Ljava/lang/String;

    iget-object v5, v0, Lccc71/pmw/a/a;->e:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 616
    iget-object v3, p0, Lccc71/pmw/lib/ft;->a:Lccc71/pmw/lib/pmw_event_apps;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_event_apps;->g(Lccc71/pmw/lib/pmw_event_apps;)Landroid/view/View$OnClickListener;

    move-result-object v3

    iget-object v5, v1, Lccc71/pmw/lib/fv;->f:Landroid/widget/TableRow;

    invoke-interface {v3, v5}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 617
    iget-object v3, p0, Lccc71/pmw/lib/ft;->a:Lccc71/pmw/lib/pmw_event_apps;

    invoke-static {v3}, Lccc71/pmw/lib/pmw_event_apps;->g(Lccc71/pmw/lib/pmw_event_apps;)Landroid/view/View$OnClickListener;

    move-result-object v3

    iget-object v1, v1, Lccc71/pmw/lib/fv;->f:Landroid/widget/TableRow;

    invoke-interface {v3, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 609
    :cond_7
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3
.end method
