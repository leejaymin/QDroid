.class final Lccc71/pmw/lib/od;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/pmw/lib/pmw_startup_apps;


# direct methods
.method constructor <init>(Lccc71/pmw/lib/pmw_startup_apps;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/pmw/lib/od;->a:Lccc71/pmw/lib/pmw_startup_apps;

    .line 338
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 342
    iget-object v0, p0, Lccc71/pmw/lib/od;->a:Lccc71/pmw/lib/pmw_startup_apps;

    invoke-virtual {v0}, Lccc71/pmw/lib/pmw_startup_apps;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    :cond_0
    return-void

    .line 345
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lccc71/pmw/a/a;

    .line 346
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lccc71/pmw/a/a;->a:Z

    if-nez v1, :cond_0

    .line 350
    iget-object v1, p0, Lccc71/pmw/lib/od;->a:Lccc71/pmw/lib/pmw_startup_apps;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_startup_apps;->a(Lccc71/pmw/lib/pmw_startup_apps;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v3

    .line 351
    :goto_0
    if-ge v2, v4, :cond_0

    .line 353
    iget-object v1, p0, Lccc71/pmw/lib/od;->a:Lccc71/pmw/lib/pmw_startup_apps;

    invoke-static {v1}, Lccc71/pmw/lib/pmw_startup_apps;->a(Lccc71/pmw/lib/pmw_startup_apps;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccc71/pmw/lib/of;

    .line 354
    if-eqz v1, :cond_2

    iget-object v5, v1, Lccc71/pmw/lib/of;->b:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, v1, Lccc71/pmw/lib/of;->b:Ljava/lang/String;

    iget-object v6, v0, Lccc71/pmw/a/a;->e:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 356
    iget-object v1, v1, Lccc71/pmw/lib/of;->f:Landroid/widget/CheckBox;

    .line 357
    if-eqz v1, :cond_2

    .line 359
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 361
    iget-object v5, v0, Lccc71/pmw/a/a;->c:Lccc71/pmw/a/b;

    sget-object v6, Lccc71/pmw/a/b;->f:Lccc71/pmw/a/b;

    if-ne v5, v6, :cond_3

    .line 362
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 366
    :goto_1
    iget-object v5, p0, Lccc71/pmw/lib/od;->a:Lccc71/pmw/lib/pmw_startup_apps;

    iget-object v5, v5, Lccc71/pmw/lib/pmw_startup_apps;->b:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 351
    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 364
    :cond_3
    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method
